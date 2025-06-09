(*Data Flow Analysis*)
open Asm
open Ssa
open Datagraph

exception NoHardLib

(*data flow graphの設定*)
let ht_cfg = Hashtbl.create 256
let cfg = ref G.empty 
(*浮動小数の確認用*)
let floatenv = ref M.empty
let vexp_zero = "#0" (*zeroにできる表現*)
(*ブロック番号のカウンタ*)
let counter = ref 0

(*three operand code, ssaのようなもの*)
(*レジスタと変数, アドレスの扱いをどうするか? 区別できた方がいい?*)
type block = ssa list
let interfuncgraph = G2.create ()

(*ブロック番号 -> 命令列のハッシュ*)
let ht_block2insts = Hashtbl.create 256
let ftop = ref (-1)

(* 関数毎のブロック番号の範囲を管理 *)
let fentry_list = ref [] (*i番目の関数のentryブロック番号*)
let fend_list = ref [] (*i番目の関数のexitブロック番号*)
let fname_list = ref [] (*i番目の関数の名前*)
(*c++のlower_boundと同じ仕様*)
(*ブロック番号 -> その関数の終了ブロック番号を探すのに用いる*)

(*ブロック番号 -> 関数名*)
let get_fname bnum = 
  let fidx = U.lower_bound !fend_list bnum in
    List.nth !fname_list fidx
  (*ここでout of rangeのリスク有?*)

let get_fentry bnum = 
  let fidx = U.lower_bound !fend_list bnum in
    List.nth !fentry_list fidx

(*分岐のブロック関係を管理*)
let bfrom_list = ref [] 
let bthen_list = ref [] 
let belse_list = ref [] 


(*変数名 -> それを定義している命令の集合　の環境, 到達定義解析のため*)
type inst_id = int * int (*命令id = (ブロック番号, ブロック内の行番号)*)
(* let ht_vname2inst_ids = Hashtbl.create 65536 *)
let rbegin = 1 (*あとで1-indexedから0-indexedに変えられるように*)

(*命令idの集合としてdef, killを表現する*)
module IidCmp = struct
  type t = inst_id
  let compare = compare
end
module IidSet = Set.Make(IidCmp)

(*関数名 -> 引数リストの環境*)
let argenv = ref M.empty


(* let get_args_setting args fargs is_callee = 
  if is_callee
    then 
      (let add_fargs,_ = List.fold_right (fun farg (acc_inst_list, acc_idx) -> ((Copy(farg,(get_alphareg Asm.fregs.(acc_idx))))::acc_inst_list,acc_idx - 1)) fargs ([], (List.length fargs) - 1) in 
      let add_args,_ = List.fold_right (fun arg (acc_inst_list, acc_idx) -> ((Copy(arg,(get_alphareg Asm.regs.(acc_idx)))::acc_inst_list,acc_idx - 1))) args (add_fargs, (List.length args) - 1) in 
      add_args)
    else  
      (let add_fargs,_ = List.fold_right (fun farg (acc_inst_list, acc_idx) -> ((Copy((get_alphareg Asm.fregs.(acc_idx)),farg))::acc_inst_list,acc_idx - 1)) fargs ([], (List.length fargs) - 1) in 
      let add_args,_ = List.fold_right (fun arg (acc_inst_list, acc_idx) -> ((Copy((get_alphareg Asm.regs.(acc_idx)),arg))::acc_inst_list,acc_idx - 1)) args (add_fargs, (List.length args) - 1) in 
      add_args) *)

let get_args_setting args fargs is_callee = 
  match args,fargs with 
    | [],[] -> []
    | _ ->   
      try 
        let fregs = Array.to_list (Array.sub Asm.caller_fregs 0 (List.length fargs)) in 
        let regs = Array.to_list (Array.sub Asm.caller_iregs 0 (List.length args)) in
        if is_callee
          then [Copy(args@fargs,regs@fregs)]
          else [Copy(regs@fregs,args@fargs)] 
      with | Invalid_argument(_) -> failwith "find function with too many argument"

type k = Acc of block | Merge of Id.t * Node.t list
(* module SetInt =
  Set.Make
    (struct
      type t = int
      let compare = compare
    end) *)

let si_of_list ls = List.fold_left (fun acc_set elem -> SetInt.add elem acc_set) SetInt.empty ls 
(* module SetSetInt = 
Set.Make
  (struct
    type t = SetInt.t
    let compare =  compare 
  end)*)
let branch_oneof = Hashtbl.create 256
  (* ref SetSetInt.empty  *)

let is_retvar x = is_reg x || (x.[0] = '%')
let is_loop = ref false
let v_convert_loop x = (x^"_loop_") 
let is_loopvar x = 
  let len = String.length x in 
  if len < 6 then false
  else let post6 = (String.sub x (len-6) 6) in (post6 = "_loop_")

let loopvars = ref S.empty
let loopentry = ref SetInt.empty
let loopblock = ref SetInt.empty
(*正規表現使うほうがきれいに書けそう*)


let v_convert_then x = (x^"_then_")
let v_convert_else x = (x^"_else_")
let is_branchvar x = 
  let len = String.length x in 
  if len < 6 then false
  else let post6 = (String.sub x (len-6) 6) in (post6 = "_then_") || (post6 = "_else_")

let check_hardlib dest fname ys zs = 
  let f =  (process_funcname fname) in 
  match f with 
  | "print_byte" ->  
    (assert((List.length zs) = 0);
    let tmp = Id.gentmp Type.Unit in [Assign2(tmp,OUT8,(List.nth ys 0))])
  | "print_float" -> 
    (assert((List.length ys) = 0); 
    let tmp = Id.gentmp Type.Unit in[Assign2(tmp,HLib("print_float"),(List.nth zs 0))])
  | _ when M.mem f finlib2op -> 
    (assert((List.length ys) = 0); [Assign2(dest,HLib(M.find f finlib2op),(List.nth zs 0))])
  | _ when M.mem f iinlib2op ->  
    (assert((List.length zs) = 0); [Assign2(dest,HLib(M.find f iinlib2op),(List.nth ys 0))])
  | "read_int" | "read_float" -> [Assign2(dest,IN32,C(0))] (*dummy argument*)
  | "fless" -> (*x < y <=> not(x >= y)*)
    let tmp = Id.gentmp Type.Bool in 
    [Assign3(tmp,get_var(List.nth zs 1),Fle,(List.nth zs 0));Assign3(dest,tmp,XOR,(C(1)))] 
  | "fequal" -> [Assign3(dest,get_var(List.nth zs 0),Feq,(List.nth zs 1))]
  | "fispos" -> (* x > 0 <=> not (x <= 0)*)
    let tmp = Id.gentmp Type.Bool in 
      [Assign3(tmp,get_var(List.nth zs 0),Fle,C(0));Assign3(dest,tmp,XOR,C(1))] 
         (*ここで即値を左に設定できない -> zeroにしておけば大丈夫なのか?*)
  | "fisneg" -> (* x < 0 <=> not (0 <= x) *)
    let tmp = Id.gentmp Type.Bool in 
    [Assign3(tmp,Asm.reg_zero,Fle,(List.nth zs 0));Assign3(dest,tmp,XOR,C(1))]
  | "fiszero" -> [Assign3(dest,get_var(List.nth zs 0),Feq,(C(0)))]
  | "fabs" -> (assert((List.length ys) = 0);[Assign2(dest,HLib("fabs"),(List.nth zs 0))])
      (* let tmp = Id.gentmp Type.Int in 
      [Assign2(tmp,Li,C(0x7fffffff));Assign3(dest,tmp,AND,(List.nth zs 0))] *)
  | _ -> raise NoHardLib (*hardlibなし*)  

let branch2cont = Hashtbl.create 128
let blockconts = ref SetInt.empty
let args2loopentry = Hashtbl.create 128
let loopentry2ret = Hashtbl.create 128
let get_whileentry args = 
  (try Hashtbl.find args2loopentry args (*List.map remove_alpha args*)  with | Not_found -> failwith "loop entry not found")

let zero_vars = ref S.empty
  
let is_xor x yi e1 e2 = 
  (match yi with 
    | C(0) -> true
    | V(y) when S.mem y !zero_vars -> true
    | _ -> false (*reg_zeroを使っている可能性は?*)) && 
  (match (fst e1) with 
    | Ans(Mov(op2)) -> 
        (match (fst e2) with 
          | Ans(Not(op2')) when op2 = op2' -> true
          | _ -> false)
    | _ -> false)

let is_not x yi e1 e2 = 
  (match yi with 
    | C(0) -> true
    | V(y) when S.mem y !zero_vars -> true
    | _ -> false (*reg_zeroを使っている可能性は?*)) && 
  (match (fst e1) with 
    | Ans(Li(1)) -> 
        (match (fst e2) with 
          | Ans(Li(0))  -> true
          | _ -> false)
    | _ -> false)
  
let is_boolean_assign dest exp = 
  match exp with
  | IfFEq(x,y,e1,e2) -> 
      (match (fst e1), (fst e2) with 
        | Ans(Li(1)),Ans(Li(0)) -> Some([Assign3(dest,x,Feq,V(y))])
        | Ans(Li(0)),Ans(Li(1)) -> 
          (let tmp = Id.gentmp Type.Bool in 
          Some([Assign3(tmp,x,Feq,V(y));Assign3(dest,tmp,XOR,C(1))]))
        | _ -> None
      )      
  | IfFLE(x,y,e1,e2) -> 
    (match (fst e1), (fst e2) with 
        | Ans(Li(1)),Ans(Li(0)) -> (*dest = (x <= yi)*)
              Some([Assign3(dest,x,Fle,V(y))])
        | Ans(Li(0)),Ans(Li(1)) -> (*dest = not(x <= yi) = x > yi*)
              (let tmp = Id.gentmp Type.Bool in 
              Some([Assign3(tmp,x,Fle,V(y));Assign3(dest,tmp,XOR,C(1))]))
        | _ -> None
      )
  | _ -> assert(false)

let rec make_cfg g (fname,e,dest) (bnum,rnum,acc_block) : Datagraph.G.t * (int list) = 
  (if !is_loop then loopblock := SetInt.add bnum !loopblock); (*これ非効率なので要改善*)
  try 
  (match e with
  | Asm.Ans exp -> 
    let g', k = make_cfg_g g (fname,true, dest) exp (bnum,rnum,acc_block) in 
    (match k with 
    | Acc acc_block' -> 
      ((*acc_block'はここで終了? これはbnumでいいのか?*)
      (* (match acc_block' with
        | [] -> ()
        | _ -> Hashtbl.add ht_block2insts bnum acc_block'); これは空かどうかよりもmemかを調べた方がいいかも *)
      let acc_block' = if (is_branchvar dest) && (not(is_retvar dest)) && (not(Id.is_unit dest)) && not(List.exists (Ssa.is_phir) acc_block') then acc_block'@[Phi_r([dest])] else acc_block' in (*分岐ごとにassignが違う変数*)
      if not(Hashtbl.mem ht_block2insts bnum) then Hashtbl.add ht_block2insts bnum acc_block';
      (*fnameのブロック番号の範囲を記録*)
      g', [bnum] (*2項目は次にmergeすべきブロックのリスト*))
    | Merge (_,mlist) -> 
      (let s = (SetInt.of_list mlist) in if SetInt.cardinal s >=2 then Hashtbl.add branch_oneof fname s);
      g', mlist (*このmlistはハッシュテーブルに追加済みなのか?*)
    )
  | Asm.Let ((x,_),exp,e2) -> 
    let g', k = make_cfg_g g (fname,false,x) exp (bnum,rnum,acc_block) in 
    (match k with 
    | Acc acc_block' -> make_cfg g' (fname,fst e2,dest) (bnum,rnum+1,acc_block') 
    | Merge (olddest,mlist) -> 
      let cont_bnum = (incr counter;!counter) in 
      let g_cont = add_edges (add_vertices g' [cont_bnum]) (List.map (fun s -> (s,cont_bnum)) mlist) in (*分岐を統合*)
      List.iter (fun s -> (*Printf.printf "cont : %d -> %d\n" s cont_bnum;*)Hashtbl.add branch2cont s cont_bnum) mlist;
      (if List.length mlist > 0 then blockconts := SetInt.add cont_bnum !blockconts);
      (let s = (SetInt.of_list mlist) in if SetInt.cardinal s >=2 then Hashtbl.add branch_oneof fname s);
        if ((is_retvar olddest) || (Id.is_unit olddest)) then ((*Printf.eprintf "Don't do Phi_w for %s\n" olddest;*)make_cfg g_cont (fname,fst e2,dest) (cont_bnum,rbegin,[]))
        else make_cfg g_cont (fname,fst e2,dest) (cont_bnum,rbegin,[Phi_w([olddest])])
    )
  ) with e -> raise e

and make_cfg_g g (fname,is_ans,dest) exp (bnum,rnum,acc_block) = 
  match exp with
  | While(e1,e2,(args,_)) -> 
    ((match (fst e1) with 
      | Ans(Li(1)) -> ()
      | _ -> assert(false)); (*いまのところ無条件ループしか受け付けない? *)
      (* let _,_,func_allargs = (try M.find fname !argenv with | e -> Printf.eprintf "couldn't get func arg";raise e) in  *)
          (* Printf.printf "func_allargs = {%s}\nwhileargs = {%s}\n" (U.list_to_string func_allargs) (U.list_to_string args); *)
          let new_block = if (List.length acc_block = 0 || (let lastinst = U.list_get_last acc_block in not(Ssa.is_phir lastinst))) then acc_block@[Phi_r(args)] else acc_block in (*ブロックbnumはこの直前まで*)
      let bnum1,g' = 
      (match new_block with 
        | [] -> bnum,g
        | _ -> 
          (Hashtbl.add ht_block2insts bnum new_block;
          let bnum1 = (incr counter;!counter) in
          let g' = G.add_edge g bnum bnum1 in bnum1,g')) in 
      loopentry := SetInt.add bnum1 !loopentry;
      loopvars := S.add_list args !loopvars; 
      Hashtbl.add args2loopentry args bnum1;
      is_loop := true;
      let newg, mlist = make_cfg g' (fname,(fst e2),dest) (bnum1,rbegin,[Phi_w(args)]) in 
      is_loop := false;
      newg,Merge(dest,mlist) (*この場合にmlistがあってもいいの?*)
    )
  | Ret(args,e) -> 
    let newg,mlist = make_cfg g (fname,fst e,dest) (bnum,rnum,acc_block) in 
      let whileentry = get_whileentry args in 
      (* Printf.printf "loop ret B%d from B%d\n" bnum whileentry; *)
      Hashtbl.add loopentry2ret whileentry bnum;
      (newg,Merge(dest,mlist)) (*これであっているのか?　いったんこっちで制御の流れをもらいたいだけだけれども*)
  | Cont(args,xs) when not(List.exists (fun arg -> S.mem arg !loopvars) args) -> (*whileエントリ前の設定*)
    (*Copy((List.map v_convert_loop args),xs)*)
    let newblock = acc_block@[Phi_r(xs)] in  (*ここでsingle assignmentを壊しているので, \Phiにしないといけない *)
        (g, Acc(newblock))
  | Cont(args,xs) ->  (*これループ不変ならα変換も同じなのか?, コピー先の変数を知らないといけないが...? この環境どっかになかったっけ*)
      let g' = 
        (try let whileentry = get_whileentry args in 
        (* Printf.printf "B%d -> B%d ,args : %s\n" bnum whileentry (U.list_to_string args);flush stdout; *)
          add_edges g [bnum,whileentry] (*これで直前のwhileの入り口を指定?*)
          with | Failure _ -> failwith (Printf.sprintf "can't find while entry for args = {%s}" (U.list_to_string args)) (*なんでここわざわざnot found からfailureにしているんだ?*)) in 
      (* 末尾ならブロックbnumはここで終了 -> mergeリストに, 継続するならacc *)
      let block = acc_block@[Phi_r(xs)] in  (*ここでsingle assignmentを壊しているので, \Phiにしないといけない...? *)
        (Hashtbl.add ht_block2insts bnum block; (g', Merge(dest,[])) )
  | IfEq(x,yi,e1,e2) when is_xor x yi e1 e2 -> 
    (* Hashtbl.add ht_vname2inst_ids dest (bnum,rnum);  *)
    let op2 = (match (fst e1) with | Ans(Mov(op2)) -> op2 | _ -> failwith "this is not xor case") in 
    g, Acc(acc_block@[Assign3(dest,x,XOR,V(op2))])
  | IfEq(x,yi,e1,e2) when is_not x yi e1 e2 -> 
    (* Hashtbl.add ht_vname2inst_ids dest (bnum,rnum);  *)
    g, Acc(acc_block@[Assign3(dest,x,XOR,C(1))])
  | IfEq(x,yi,e1,e2) | IfLE(x,yi,e1,e2) | IfGE(x,yi,e1,e2) -> 
      let relop = convert_relop exp in
      let block = 
        (match acc_block with 
          | [] -> [CondJ(x,relop,yi)]
          | _ ->
            let beforelast,lastinst = U.list_split_last acc_block in 
            (match relop,lastinst with 
              | Eq,Assign3(dest,op1,XOR,C(1)) when dest = x -> 
                beforelast@[CondJ(op1,NEq,yi)]
              | NEq,Assign3(dest,op1,XOR,C(1)) when dest = x -> 
                beforelast@[CondJ(op1,Eq,yi)]
              | Eq,Assign3(dest,op1,XOR,C(1)) when V(dest) = yi -> 
                beforelast@[CondJ(x,NEq,V(op1))]
              | NEq,Assign3(dest,op1,XOR,C(1)) when V(dest) = yi -> 
                beforelast@[CondJ(x,Eq,V(op1))]
              | _ -> acc_block@[CondJ(x,relop,yi)])
        ) in (*ブロックbnumはこの命令まで*)
      Hashtbl.add ht_block2insts bnum block; 
      let bnum1 = (incr counter;!counter) in (*e1のブロック*)
      let bnum2 = (incr counter;!counter) in (*e2のブロック*)
      (*新しいグラフを作成*)
      let v = bnum in
      let v1 = bnum1 in 
      let v2 = bnum2 in 
      (*分岐のブロックを登録*)
      bfrom_list := v::!bfrom_list;
      bthen_list := v1::!bthen_list;
      belse_list := v2::!belse_list;
      (let s = (SetInt.of_list [v1;v2]) in Hashtbl.add branch_oneof fname s);
      let g' = add_edges (add_vertices g [v1;v2]) [(v,v1);(v,v2)] in
      (*部分構造について再帰*)
      let g'1,mlist1 = make_cfg g' (fname,(fst e1),v_convert_then dest) (bnum1,rbegin,[]) in 
      let g'2,mlist2 = make_cfg g'1 (fname,(fst e2),v_convert_else dest) (bnum2,rbegin,[]) in
        g'2 , Merge(dest,mlist1@mlist2)
    
  | IfFEq(x,y,e1,e2) ->  (*上記パターンとほぼ同じ*)
      (match (is_boolean_assign dest exp) with 
      | Some(instlist) -> g, Acc(acc_block@instlist)
      | None -> 
        ((* if x = y then e1 else e2 <=> if x \neq y then e2 else e1 <=> let flag = (x = y) in if flag = zero then e2 else e1 , 条件節が逆になってしまう *)
        (* let relop = Feq in
        let tmp = Id.gentmp Type.Bool in 
        let block = acc_block@[Assign3(tmp,x,relop,V(y));CondJ(tmp,Eq,V(reg_zero))] in  *)
        let block = acc_block@[CondJ(x,FNeq,V(y))] in 
        (* ブロックbnumはこの命令まで Assign3(tmp,x,relop,V(y));CondJ(tmp,Eq,V(reg_zero)) *)
        Hashtbl.add ht_block2insts bnum block; 
        let bnum1 = (incr counter;!counter) in (*e2のブロック*)
        let bnum2 = (incr counter;!counter) in (*e1のブロック*)
        (*新しいグラフを作成*)
        let v = bnum in
        let v1 = bnum1 in 
        let v2 = bnum2 in 
        (*分岐のブロックを登録*)
        bfrom_list := v::!bfrom_list;
        bthen_list := v1::!bthen_list;
        belse_list := v2::!belse_list;
        (let s = (SetInt.of_list [v1;v2]) in Hashtbl.add branch_oneof fname s);
        let g' = add_edges (add_vertices g [v1;v2]) [(v,v1);(v,v2)] in
        (*部分構造について再帰*)
        let g'1,mlist1 = make_cfg g' (fname,(fst e2),v_convert_then dest) (bnum1,rbegin,[]) in 
        let g'2,mlist2 = make_cfg g'1 (fname,(fst e1),v_convert_else dest) (bnum2,rbegin,[]) in
          g'2 , Merge(dest,mlist1@mlist2)))
  | IfFLE(x,y,e1,e2) ->
    (match (is_boolean_assign dest exp) with 
      | Some(instlist) -> g, Acc(acc_block@instlist)
      | None -> 
        ((* if x <= y then e1 else e2 <=> if x > y then e2 else e1 <=> let flag = x <= y in if flag = zero then e2 else e1 *) (*flt -> fleにしたので条件節が逆に*)
        (* let relop = Fle in (*< をもらう*)
        let tmp = Id.gentmp Type.Bool in  *)
        let block = acc_block@[CondJ(x,FGt,V(y))] in 
        (* ブロックbnumはこの命令まで Assign3(tmp,x,relop,V(y));CondJ(tmp,Eq,V(reg_zero)) *)
        (* let block = acc_block@[Assign3(tmp,x,relop,V(y));CondJ(tmp,Eq,V(reg_zero))] in  *)
        Hashtbl.add ht_block2insts bnum block; 
        let bnum1 = (incr counter;!counter) in (*e1のブロック*)
        let bnum2 = (incr counter;!counter) in (*e2のブロック*)
        (*新しいグラフを作成*)
        let v = bnum in
        let v1 = bnum1 in 
        let v2 = bnum2 in 
        (*分岐のブロックを登録*)
        bfrom_list := v::!bfrom_list;
        bthen_list := v1::!bthen_list;
        belse_list := v2::!belse_list;
        (let s = (SetInt.of_list [v1;v2]) in Hashtbl.add branch_oneof fname s);
        let g' = add_edges (add_vertices g [v1;v2]) [(v,v1);(v,v2)] in
        (*部分構造について再帰*)
        let g'1,mlist1 = make_cfg g' (fname,(fst e2),v_convert_then dest) (bnum1,rbegin,[]) in 
        let g'2,mlist2 = make_cfg g'1 (fname,(fst e1),v_convert_else dest) (bnum2,rbegin,[]) in
          g'2 , Merge(dest,mlist1@mlist2)))
  | CallCls(f,args,fargs) | CallDir(Id.L(f),args,fargs) when f = fname -> (*自己再帰*)
      (* Hashtbl.add ht_vname2inst_ids dest (bnum,rnum);  *)
      (* 末尾呼び出しならば関数の最初に戻る辺を追加, 継続するなら仕方ないので外部変数呼び出しを同じ扱い *)
      let g' = add_edges g [bnum,!ftop] in (*これで関数のトップを指定 *)
      (* 末尾ならブロックbnumはここで終了 -> mergeリストに, 継続するならacc *)
      let block = acc_block@(get_args_setting args fargs false)@[Call(dest,fname,args,fargs)] in 
      if is_ans 
        then (Hashtbl.add ht_block2insts bnum block; (g', Merge(dest,[])) )
        else (g,Acc(block))
    
  | CallCls(f,args,fargs) | CallDir(Id.L(f),args,fargs) -> (*他の関数を呼ぶ*)
      (* Hashtbl.add ht_vname2inst_ids dest (bnum,rnum); *)
        (*関数間呼び出しグラフも作ってみる*)
      (if not(List.mem (process_funcname f) Asm.all_hardlib) && not(List.mem (process_funcname f) Genoutlib.outlib) then G2.add_edge interfuncgraph (process_funcname fname) (process_funcname f));
         (*まずfがハードライブラリかチェックしなくては*)
      let converted_insts = (try check_hardlib dest f (List.map (fun x -> V(x)) args) (List.map (fun x -> V(x)) fargs) with NoHardLib -> (get_args_setting args fargs false)@[Call(dest,f,args,fargs)]) in 
        let acc_block' = acc_block@converted_insts in
        g, Acc(acc_block')
  | Save _ | Restore _ -> assert(false) (*regAllocの前だとこれらはない*)

  (*以下はブロックに命令を追加するだけのパターン*)
  | Nop | Comment _  -> g, Acc(acc_block)
  | Li(i) -> 
    (* Hashtbl.add ht_vname2inst_ids dest (bnum,rnum);  *)
    (if i = 0 then zero_vars := S.add dest !zero_vars;
    (g, Acc(acc_block@[Assign2(dest,Li,C(i))])))
  | FLi(Id.L(x)) -> 
    (* Hashtbl.add ht_vname2inst_ids dest (bnum,rnum);  *)
    g, Acc(acc_block@[Assign2(dest,FLi,V(x))])
  | SetL(Id.L(x)) -> 
    (* Hashtbl.add ht_vname2inst_ids dest (bnum,rnum);  *)
    g, Acc(acc_block@[Assign2(dest,SetL,V(x))])
  | Mov(x) | FMov(x) -> 
    (* Hashtbl.add ht_vname2inst_ids dest (bnum,rnum);  *)
    g, Acc(acc_block@[Copy([dest],[x])])
  | Neg(x) | FNeg(x) -> 
    (* Hashtbl.add ht_vname2inst_ids dest (bnum,rnum);  *)
    g, Acc(acc_block@[Assign2(dest,Neg,V(x))])
  | Not(x) -> 
    (* Hashtbl.add ht_vname2inst_ids dest (bnum,rnum);  *)
    g, Acc(acc_block@[Assign3(dest,x,XOR,C(1))])
  | Add(x,yi) | Sub(x,yi) | Mul(x,yi) | Div(x,yi) | SLL(x,yi) | SRA(x,yi) -> 
      let binop = convert_binop exp in 
      (* Hashtbl.add ht_vname2inst_ids dest (bnum,rnum);  *)
      g, Acc(acc_block@[Assign3(dest,x,binop,yi)])
  | Ld(x,yi) | FLd(x,yi) -> 
      let memacc = convert_memacc exp in 
      (* Hashtbl.add ht_vname2inst_ids dest (bnum,rnum);  *)
      g, Acc(acc_block@[Memacc(dest,x,memacc,yi)])
  | St(x,y,zi) | FSt(x,y,zi) -> 
      let memacc = convert_memacc exp in 
      (* Hashtbl.add ht_vname2inst_ids dest (bnum,rnum);  *)
      g, Acc(acc_block@[Memacc(x,y,memacc,zi)])
  | FAdd(x,y) | FSub(x,y) | FMul(x,y) | FDiv(x,y) -> 
      let binop = convert_binop exp in 
      (* Hashtbl.add ht_vname2inst_ids dest (bnum,rnum);  *)
      g, Acc(acc_block@[Assign3(dest,x,binop,V(y))])

(*出力まわりを整備*)
module CommonDotArg = struct 
  include G (* use the graph module from above *)
  let edge_attributes (_,v2) = 
    if List.mem v2 !belse_list then [`Color(0xff0000)]
    else []
  let default_edge_attributes _ = []

  let get_subgraph _ = None
  let vertex_name bnum = string_of_int bnum
  let default_vertex_attributes _ = []
  let graph_attributes _ = []
end 

let bnum2insttable getbind bindtable to_string bnum = 
  (* if (get_fname bnum) = "main" then [] else *)
  let inst_list = (try getbind bindtable bnum with Not_found -> []) in 
  let inst_string,_,_ = List.fold_left (*いったん簡略な出力を試す, 分岐以外出さない*)
    (fun (acc_string,acc_idx,acc_rnum) inst -> 
      match inst with 
      | CondJ _ | Call _  -> (add_row acc_string (to_string inst)  acc_idx acc_rnum,acc_idx+1,acc_rnum+1) (*本当は出力の列番号と命令の何行目かは別者*)
      | _ -> 
        (* (acc_string,acc_idx+1,acc_rnum) *)
        (add_row acc_string (to_string inst) acc_idx acc_rnum,acc_idx+1,acc_rnum+1)
    ) (make_header ("B"^(string_of_int bnum)),0,0) inst_list in
  [`Shape `Box; `HtmlLabel (add_footer (inst_string))] (*ここを命令列に*)

module Dot = Graphviz2.Dot2(struct
  include CommonDotArg
  let vertex_attributes = bnum2insttable Hashtbl.find ht_block2insts Ssa.to_string
end)

let fprint_graphs oc ht_cfgs specific_output_graph =
  Printf.fprintf oc "digraph G {\n";
  (* [`Rankdir `LeftToRight;`Nodesep (0.1)] より一般的なやり方でできるようにしたい *)
  Printf.fprintf oc "\trankdir=LR;\n";
  Printf.fprintf oc "\tnodesep=0.100000;\n\n";
  (*本当はhash iterにしたかったけど, それだと順番が固定されなくて困るのでfentrylistを使う*)
  List.iter (fun fentry -> 
    let cfg = (try Hashtbl.find ht_cfgs fentry with | Not_found -> G.empty) in 

    let fname = get_fname fentry in 
    let args,fargs,_ = M.find fname !argenv in 
    let arg_string = process ("["^(Id.pp_list args)^"], ["^(Id.pp_list fargs)^"]") in 

    let sg_name = (Str.global_replace r1 "" fname) in 
    let sg_label = ((Str.global_replace r4 "" fname)^" "^arg_string) in 
    Printf.fprintf oc "  subgraph cluster_%s {\n" sg_name;
    Printf.fprintf oc "    label = \"%s\";\n" sg_label;
    Printf.fprintf oc "    fontsize=\"24pt\""; (*これもちゃんとgraphvizを使ってやりたい*)
    specific_output_graph oc cfg;
    Printf.fprintf oc "  }\n"
    ) !fentry_list;
    Printf.fprintf oc "}\n"
    (* close_out oc *)
   
(*Global variable Numbering*)

module Mrhs =
Map.Make
  (struct
    type t = int * ssa_rhs
    let compare = compare
  end)

let vcounter = ref 0
let vend_list = ref [0]

let get_vrange bnum = 
  let fidx = U.lower_bound !fend_list bnum in
  ((List.nth !vend_list fidx) + 1,List.nth !vend_list (fidx+1))

let fcounter = ref 1

let rhs2vnum = ref Mrhs.empty (* 定義済みの式の右辺, oprandは値番号にしたもの (Dfa.ssa_rhs ?) -> 値番号 のマップ *)
(* let rhs2vnum_non_loop = ref Mrhs.empty *)

let id2vnum = Hashtbl.create 1024 (* 変数名 -> 値番号　のハッシュ *)

let newv2def = Hashtbl.create 1024 (*新しく値番号を置いている変数 -> その定義*)
let vexp2instid = Hashtbl.create 1024 (*値番号 -> その定義がある(ブロック * 行番号) *)


let vnum2vexp vnum = "#"^(string_of_int vnum) 
let vexp2vnum vexp = 
  try int_of_string (String.sub vexp 1 ((String.length vexp) - 1)) with | Failure(e) -> (Printf.eprintf "expected vexp but receive %s" vexp;raise (Failure(e)))

(*こういうのは全部Ssa.mapを使うように書き換えたい*)

let id2vexp (bnum,rnum) x = (*vexpが値番号による式の表現 #n ということにする*)
  try 
  let vexp = vnum2vexp (Hashtbl.find id2vnum x) in
  (* Hashtbl.add vexp2uselog vexp (bnum,rnum);  *)
  vexp
  with | Not_found -> ((*Printf.eprintf "variable %s not found in already defined value table\n" x;*) x) (*とりあえずxを返しておく*)

let iori2vexp (bnum,rnum) xi = 
  match xi with 
  | V x -> V(id2vexp (bnum,rnum) x)
  (* | C(0) -> V(vexp_zero) *)
  | _ -> xi 

let vexp2defssa vexp = 
  try let (b,r) = (Hashtbl.find vexp2instid vexp) in 
    List.nth (Hashtbl.find ht_block2insts b) r
  with | Not_found -> (Printf.eprintf "fail to find %s 's definition\n" vexp; raise Not_found)
  
(* let ssa2rhs ssa = 
  match ssa with 
    | Assign3(_,x,binop,yi) -> Binop(x,binop,yi)
    | Assign2(_,uniop,yi) -> Uniop(uniop,yi)
    | Memacc(_,y,memacc,zi) when not(Ssa.is_memacc_store memacc) -> Mem(y,zi)
    | _ -> Printf.eprintf "unexpected ssa : %s\n" (Ssa.to_string ssa);assert(false)  *)


(* let remove_from_rhs vexp = 
  try
  let rhs = ssa2rhs (vexp2defssa vexp) in 
  let vnum' = Mrhs.find (!fcounter,rhs) !rhs2vnum in
  let vexp' = vnum2vexp vnum' in 
  if vexp = vexp' then 
    rhs2vnum := Mrhs.remove (!fcounter,rhs) !rhs2vnum
  else raise Not_found
  with | Not_found -> failwith (Printf.sprintf "couldn't remove %s from rhs set" vexp) *)
let remove_from_rhs = ref S.empty

let id_rhs2ssa (bnum,rnum) x rhs' = 
  try 
    (match rhs' with 
      (*常に利用できる即値を判定, これらの場合でも変数の対応を追加下とまずいかも *)
      | Uniop(Li,C(0)) -> ((*Printf.printf "found zero %s\n" x;*)Hashtbl.add id2vnum x 0; Copy([x],[vexp_zero]))
      | Uniop(FLi,V(flabel)) when (M.find flabel !floatenv = 0.0) -> Hashtbl.add id2vnum x 0; Copy([x],[vexp_zero])
      (* | _ when (SetInt.mem bnum !loopblock) -> raise Not_found *)
      | _ when (S.mem x !Alpha.loopvars) || x.[0] = '_' -> raise Not_found (*ここで新しく左辺の値番号を置いておく必要がある*)
      | _ -> 
            (match rhs' with 
              | Uniop(IN32,_) | Uniop(OUT8,_) | Uniop(HLib("print_float"),_) -> raise Not_found (*副作用があると同じ値番号にできない*)
              | Mem(_) -> ((*Printf.printf "rhs mem found in (%d,%d)\n" bnum rnum;raise Not_found*))
              | _ -> ()
            );
            let vnum = Mrhs.find (!fcounter,rhs') !rhs2vnum in 
            let vexp = vnum2vexp vnum in 
            (match rhs' with 
              | Mem(y,zi) -> ((*Printf.printf "rhs common mem found in (%d,%d) : %s = %s(%s)\n" bnum rnum vexp (Asm.literal_to_string zi) y;*)raise Not_found)
              | _ -> ()
            );
            (if S.mem vexp !remove_from_rhs then (*Printf.printf "removed rhs %s\n" vexp;*)raise Not_found); 
            (* Hashtbl.add vexp2uselog vexp (bnum,rnum); *)
            Hashtbl.add id2vnum x vnum; (* 変数の対応を追加 *)
            (* Printf.printf "Already defined : %s = #%d\n" x vnum; *)
            Copy([x],[vexp]) (*すでに右辺が定義済みの場合*)
    )
     with | Not_found -> (* 新しく値番号を置く *)
      (let vnum = (incr vcounter; !vcounter) in 
      let vexp = vnum2vexp vnum in 
      let newdef = (match rhs' with 
        | Binop(y,binop,zi) -> Assign3(vexp,y,binop,zi)
        | Uniop(uniop, yi) -> Assign2(vexp,uniop, yi)
        | Mem(y,zi) -> Memacc(vexp,y,Ld,zi) (*もはやLdとFLdを区別する理由ないのか*)
        | _ -> assert(false)
      ) in 
      (if not(is_branchvar x || (*(SetInt.mem bnum !loopblock) ||*) (S.mem x !Alpha.loopvars) ) then rhs2vnum := Mrhs.add (!fcounter,rhs') vnum !rhs2vnum); (*式 -> 値番号*)
      Hashtbl.add newv2def x newdef;
      (* Hashtbl.add vexp2uselog vexp (bnum,rnum); *)
      Hashtbl.add vexp2instid vexp (bnum,rnum); 
      Hashtbl.add id2vnum x vnum; (* 変数の対応を追加 *)
      Copy([x],[vexp]))
(* 代入の右辺はいったん変数名を値番号にすべて置き換えたものに変換して考える!! *)
(* 本当は型を使って番号に代わっていることを保証すべきだけど, いったん実装をさぼる *)

let conj_group = ref M.empty

let make_conj_group_key x yi = 
  match yi with 
  | V(y) when y = Asm.reg_zero || y =  vexp_zero -> x
  | V(y) -> x^"_AND_"^y
  | C _ -> x

let append_map_list k v = 
  let new_list = 
    v::(try M.find k !conj_group with | Not_found -> []) in 
    conj_group := M.add k new_list !conj_group

let ht_bnum2gvnlist =  Hashtbl.create 256 

let scan_insn (bnum,rnum) (e : ssa) = 
  let id2vexp = id2vexp (bnum,rnum) in 
  let iori2vexp = iori2vexp (bnum,rnum) in 
  match e with 
  | CondJ(x,relop,yi) -> 
    (let key = make_conj_group_key (id2vexp x) (iori2vexp yi) in 
      append_map_list key (bnum,rnum);
      CondJ((id2vexp x),relop,iori2vexp(yi)))
  | Assign3(x,y,binop,zi) -> 
    let y', zi' = id2vexp y, iori2vexp zi in 
    let rhs' = Binop(y',binop,zi') in 
      id_rhs2ssa (bnum,rnum) x rhs' 
  | Assign2(x,uniop,yi) -> 
    let yi' = iori2vexp yi in 
    let rhs' = Uniop(uniop,yi') in 
      id_rhs2ssa (bnum,rnum) x rhs' 
  | Memacc(x,y,memacc,zi) -> 
    (match memacc with 
      | Ld | FLd -> (* 常に新しく値番号を置く *)
        (
          let y', zi' = id2vexp y, iori2vexp zi in 
          let rhs' = Mem(y',zi') in 
            id_rhs2ssa (bnum,rnum) x rhs' 
        (* let vnum = (incr vcounter; !vcounter) in 
        let vexp = vnum2vexp vnum in 
        let y' = (try id2vexp y with | Not_found -> y (*global配列?*)) in 
        let zi' = iori2vexp zi in 
        let rhs' = Mem(y',zi') in 
        let newdef = Memacc(vexp,y',memacc,zi') in 
        (if not(is_branchvar x) then rhs2vnum := Mrhs.add (!fcounter,rhs') vnum !rhs2vnum); (*式 -> 値番号 *)
        Hashtbl.add newv2def x newdef;
        Hashtbl.add vexp2instid vexp (bnum,rnum);
        Hashtbl.add id2vnum x vnum; (* 変数の対応を追加, xがレジスタなら例外処理をすることにする? *)
        Copy([x],[vexp]) *)
        )
      | St | FSt -> 
        (let x' = id2vexp x in 
        let y' = (try id2vexp y with | Not_found -> y (*global配列?*)) in 
        let zi' = iori2vexp zi in 
          Memacc(x',y',memacc,zi'))
    )
  | Copy(xs,ys) -> 
    let map_src x y = 
      if (is_reg y) (*ここで新しく左辺の値番号を置いておく必要がある*)
        then 
          (let vnum = (incr vcounter; !vcounter) in 
          let vexp = vnum2vexp vnum in (*ここでrhs2vnumにレジスタを登録する必要はないはず?*)
          let newdef = Copy([vexp],[y]) in 
          Hashtbl.add newv2def x newdef;
          Hashtbl.add vexp2instid vexp (bnum,rnum);
          Hashtbl.add id2vnum x vnum;vexp)
      else if (S.mem x !Alpha.loopvars) (*ここで新しく左辺の値番号を置いておく必要がある*)
          then 
            (
            let vnum = (incr vcounter; !vcounter) in 
            let vexp = vnum2vexp vnum in (*ここでrhs2vnumに登録する必要性は?*)
            let y' = id2vexp y in 
            let newdef = Copy([vexp],[y']) in (*ここで代入する右辺の値番号はループ後に別の値に代わるかもしれないので利用不可 -> 右辺集合から消去*)
            (* Printf.printf "remove %s %s\n" vexp y'; *)
            Hashtbl.add newv2def x newdef;
            Hashtbl.add vexp2instid vexp (bnum,rnum);
            (* Printf.printf "add id2vnum %s %d, newdef : %s = %s\n" x vnum vexp y'; *)
            Hashtbl.add id2vnum x vnum;vexp)
        else ((*定義済みの値番号を利用*)
          let yvnum = Hashtbl.find id2vnum y in 
          Hashtbl.add id2vnum x yvnum;
          (* Printf.printf "find id2vnum %s %d\n" x yvnum; *)
          let y' = id2vexp y in 
          remove_from_rhs := S.add y' !remove_from_rhs;y') in 
    Copy(xs,List.map2 map_src xs ys)   
  | Call(x,f,args,fargs)-> 
    let args' = List.map id2vexp args in 
    let fargs' = List.map id2vexp fargs in 
    (try 
      let vnum = Hashtbl.find id2vnum x in (*これは分岐で同じ変数を定義済みのパターン*)
        (match (Hashtbl.find newv2def x) with 
        | Call(_,f2,args2',fargs2') when (f = f2 (*&& args' = args2' && fargs' = fargs2'*)) -> Printf.eprintf "branch same value %s\n" x;Copy([x],[vnum2vexp vnum]) (* 分岐間で同じ値 -> 同じ値番号でいい? *)
        | _ -> raise Not_found (* 異なる値 -> 別の値番号で置く *))
    with | Not_found -> 
      let vnum = (incr vcounter; !vcounter) in 
      let vexp = vnum2vexp vnum in 
      let newdef = Call(vexp,f,args',fargs') in 
      Hashtbl.add newv2def x newdef;
      Hashtbl.add vexp2instid vexp (bnum,rnum);
      Hashtbl.add id2vnum x vnum;
        Copy([x],[vexp]))
  | Phi_r(xs) -> Phi_r(List.map id2vexp xs) (*すでに値番号があるはず*)
  | Phi_w(xs) when (List.length (G.pred !cfg bnum) = 1) -> (*これはループ変数の場合だとまずいのだが...?*)
      (let pred = (List.hd ((G.pred !cfg bnum))) in 
      let beforelast_instlist,lastinst = U.list_split_last (Hashtbl.find ht_bnum2gvnlist pred) in
      let vexps = (match lastinst with 
                    | Phi_r(vexps) -> vexps
                    | _ -> assert(false)) in 
      Hashtbl.replace ht_bnum2gvnlist pred beforelast_instlist;
      U.ht_add_list id2vnum xs (List.map vexp2vnum vexps);
      Copy(xs,vexps))
  | Phi_w(xs) -> (*新しく値番号を置く必要がある*)
    let vexps = List.map (fun x -> 
    (let vnum = (incr vcounter; !vcounter) in 
    let vexp = vnum2vexp vnum in 
     (*同じ右辺が出てくることはないので, rhs2vnumに式 -> 値番号の対応を追加する必要はない *)
    Hashtbl.add newv2def x (Phi_w([vexp])); (*これで合っているのか?*)
    Hashtbl.add vexp2instid vexp (bnum,rnum);
    Hashtbl.add id2vnum x vnum; (* 変数の対応を追加 *)
    vexp
    )) xs in 
    Copy(xs,vexps)
  | _ -> assert(false)

let scan_block bnum = 
  let insn_list = (try Hashtbl.find ht_block2insts bnum with |  Not_found -> Printf.eprintf "block %d not found\n" bnum;[] ) in
  let gvnlist = List.rev (snd (List.fold_left (fun (rnum,acc_gvnlist) e -> rnum+1,(scan_insn (bnum,rnum) e)::acc_gvnlist ) (0,[]) insn_list)) in
  Hashtbl.add ht_bnum2gvnlist bnum gvnlist;(if List.mem bnum !fend_list then ((incr fcounter);vend_list := !vcounter::!vend_list));(if List.mem bnum !fentry_list then cfg := Hashtbl.find ht_cfg bnum)

let rec scan_blocks scan_block ((bstart,bend) : int * int) = 
  if bstart > bend then ()
  else (scan_block bstart;scan_blocks scan_block ((bstart + 1),bend))


let gvninsn_to_string ssa = 
    match ssa with 
    | Copy(xs,ys) ->
      let map_copy x y = 
        (try 
          let newvdef_list = Hashtbl.find_all newv2def x in 
          let newvdef = List.find (fun def -> 
            let rdest = Ssa.get_def def in 
            (remove_alpha rdest) = (remove_alpha y)) newvdef_list 
          in ((Ssa.to_string (Copy([x],[y])))^" ("^(to_string newvdef)^")")
        with | Not_found -> Ssa.to_string (Copy([x],[y]))) in 
      String.concat "\n" (List.map2 map_copy xs ys)
    | _ -> Ssa.to_string ssa

(*gvnの出力*)
module Dot3 = Graphviz2.Dot2(struct
  include CommonDotArg
  let vertex_attributes = bnum2insttable Hashtbl.find ht_bnum2gvnlist gvninsn_to_string
end)

(*gvn end*)

let ret_reg t = 
  match t with
  | Type.Unit -> "$s0"
  | Type.Float -> Asm.fregs.(0)
  | _ -> Asm.regs.(0)

let is_arg_loopvar g bentry = 
  try 
  let bnext = List.hd (G.succ g bentry) in 
  let loopback_blocks = List.filter (fun b' -> b' > bnext ) (G.pred g bnext) in 
  List.length loopback_blocks > 0
  with Failure _ -> false 

let print_instids ls = 
  Printf.printf "%s" (String.concat "," (List.map (fun (b,r) -> Printf.sprintf "(%d,%d)" b r) ls))
let tostring_instids ls = 
  Printf.sprintf "%s" (String.concat "," (List.map (fun (b,r) -> Printf.sprintf "(%d,%d)" b r) ls))

let f maybe_oc (Prog(data, fundefs, e)) = (*最適化をかけるならprogを返す必要がある*)
  match maybe_oc with
  | None ->  Prog(data, fundefs, e)
  | Some(oc) ->
    (*各fundefに対して, data flow analysisを実施*)
    (*foldにしてgを更新するようにしないと一つに出力できないかな? -> 別々の部分グラフに変更できそうなのでする *)
    (*あとで最適化も実装*)
    floatenv := List.fold_left (fun acc_table (Id.L(flabel),fvalue) -> M.add flabel fvalue acc_table) !floatenv data; 
    let mainfunc = {Asm.name = Id.L("main");Asm.args = [];Asm.fargs = [];Asm.body = e;Asm.ret = Type.Unit} in 
      List.iter (fun {Asm.name = Id.L(fname);Asm.args = args;Asm.fargs = fargs;Asm.body = (e,_);Asm.ret = tret;_} ->
          (let allargs = Typing.interleave (remove_alpha fname) args fargs in 
          argenv := M.add fname (args,fargs,allargs) !argenv;
          let entry_bnum = (incr counter;!counter) in
          let entry_block = get_args_setting args fargs true in 
          let is_tail_rec = KNormal.is_tail_rec (remove_alpha fname) in 
          (* Printf.printf "is_tail_rec %s : %b\n" (remove_alpha fname) is_tail_rec; *)
          (* let entry_block = (if is_tail_rec  then entry_block@[Phi_r(args)] else entry_block) in  *)
          fentry_list := !fentry_list@[entry_bnum];
          Hashtbl.add ht_block2insts entry_bnum entry_block;
          ftop := entry_bnum;
          let begin_bnum = (incr counter;!counter) in
          let entry_g = add_edges (add_vertices G.empty [entry_bnum;begin_bnum]) [(entry_bnum,begin_bnum)] in (*ここで新しく関数ごとのcfgを作ることに*)
          let new_g,mlist = make_cfg entry_g (fname,e,(get_alphareg (ret_reg tret))) (begin_bnum,rbegin,[]) in
          (let s = (SetInt.of_list mlist) in if SetInt.cardinal s >=2 then Hashtbl.add branch_oneof fname s);
          fend_list := !fend_list@[!counter]; (*これは非効率的過ぎるので要変更*)
          fname_list := !fname_list@[fname];
          (* (if is_arg_loopvar new_g entry_bnum then 
            let allargs = Typing.interleave (remove_alpha fname) args fargs in 
            Hashtbl.replace ht_block2insts entry_bnum (entry_block@[Phi_r(allargs)])); *)
            Hashtbl.add ht_cfg entry_bnum new_g 
          )
        ) (fundefs@[mainfunc]);
      (*ブロックが一つしかない関数をとりあえず取り除いてみる*)
      
      (* let g = skip_empty_block g ht_block2insts in  *)
      fprint_graphs oc ht_cfg Dot.output_graph;
        (*gvnテスト出力*)
      (let oc_gvn = open_out_bin "gvngraph.dot" in
        (
          (* Printf.eprintf "counter = %d\n" !counter;  *)
        scan_blocks scan_block (1,!counter);
        vend_list := List.rev !vend_list;
        (* let g',_ = List.fold_left (fun (acc_g,start_bnum) end_bnum -> 
          if start_bnum + 1 = end_bnum then (*ブロックが一つしかない*)
              (G.remove_vertex (G.remove_vertex acc_g end_bnum) start_bnum, end_bnum + 1) (*remove_vertexもリストを扱えるようにしてもいいかも*)
          else (acc_g, end_bnum + 1) 
          ) (g,1) !fend_list in *)
        fprint_graphs oc_gvn ht_cfg Dot3.output_graph;
        (* 分岐の兄弟の確認 *)
        (* let oc_branch = open_out "branchfamily.txt" in *)
        (* SetSetInt.iter (fun sint -> Printf.fprintf oc_branch "{"; (SetInt.iter (fun elem -> Printf.fprintf oc_branch "B%d, " elem) sint); Printf.fprintf oc_branch "}\n") !branch_oneof; *)
        (*関数間呼び出しグラフのテスト用出力ファイル*)
        (let oc_func = open_out_bin "interfuncgraph.dot" in
          Dot2.output_graph oc_func interfuncgraph;Out_channel.close oc_func);
      (* とりあえずテスト用の出力ファイル*)
    Out_channel.close oc;Out_channel.close oc_gvn(*;Out_channel.close oc_branch*)));
    bfrom_list := List.rev !bfrom_list;
    bthen_list := List.rev !bthen_list;
    belse_list := List.rev !belse_list;
    loopvars := S.map (fun argname -> try let vnum = Hashtbl.find id2vnum argname in (*Printf.printf "loopvar : %s => #%d\n" argname vnum;*)vnum2vexp vnum with | Not_found -> failwith (Printf.sprintf "can't find args' vexp : %s" argname)) !loopvars;
    (* M.iter (fun xy instids -> 
      if List.length instids > 1 then 
      (Printf.printf "condj %s : " xy;print_instids instids;Printf.printf "\n")
    ) !conj_group; *)
    (* Printf.printf "bfromlist = {%s}\n" (U.intlist_to_string !bfrom_list); *)
     Prog(data, fundefs, e)
    (* (g, Prog(data, fundefs, e),(!fentry_list,!fend_list)) *)
