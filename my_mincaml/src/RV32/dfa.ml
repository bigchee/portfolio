(*Data Flow Analysis*)
open Asm
open Ssa
open Datagraph

(*浮動小数の確認用*)
let ftable = ref M.empty
let vexp_zero = "#0" (*zeroにできる表現*)
exception Not_loop
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
let rec lower_bound ls v = 
  let len first last = last - first in  
  let rec g first last = 
    let l = len first last in
    if l < 1 
      then first 
      else 
        let half = l / 2 in
        let mid = first + half in 
        let midv =  List.nth ls mid in 
        if (compare midv v) < 0 
          then g (mid + 1) last
          else g first mid
  in (g 0 (List.length ls))

(*ブロック番号 -> 関数名*)
let get_fname bnum = 
  let fidx = lower_bound !fend_list bnum in
    List.nth !fname_list fidx
  (*ここでout of rangeのリスク有?*)

let get_fentry bnum = 
  let fidx = lower_bound !fend_list bnum in
    List.nth !fentry_list fidx


(*変数名 -> それを定義している命令の集合　の環境, 到達定義解析のため*)
type inst_id = int * int (*命令id = (ブロック番号, ブロック内の行番号)*)
let ht_vname2inst_ids = Hashtbl.create 65536
let rbegin = 1 (*あとで1-indexedから0-indexedに変えられるように*)

(*命令idの集合としてdef, killを表現する*)
module IidCmp = struct
  type t = inst_id
  let compare = compare
end
module IidSet = Set.Make(IidCmp)

(*関数名 -> 引数リストの環境*)
let argenv = ref M.empty


let get_args_setting args fargs is_callee = 
  if is_callee
    then 
      (let add_fargs,_ = List.fold_right (fun farg (acc_inst_list, acc_idx) -> ((Copy(farg,(get_alphareg Asm.fregs.(acc_idx))))::acc_inst_list,acc_idx - 1)) fargs ([], (List.length fargs) - 1) in 
      let add_args,_ = List.fold_right (fun arg (acc_inst_list, acc_idx) -> ((Copy(arg,(get_alphareg Asm.regs.(acc_idx)))::acc_inst_list,acc_idx - 1))) args (add_fargs, (List.length args) - 1) in 
      add_args)
    else  
      (let add_fargs,_ = List.fold_right (fun farg (acc_inst_list, acc_idx) -> ((Copy((get_alphareg Asm.fregs.(acc_idx)),farg))::acc_inst_list,acc_idx - 1)) fargs ([], (List.length fargs) - 1) in 
      let add_args,_ = List.fold_right (fun arg (acc_inst_list, acc_idx) -> ((Copy((get_alphareg Asm.regs.(acc_idx)),arg))::acc_inst_list,acc_idx - 1)) args (add_fargs, (List.length args) - 1) in 
      add_args)

type k = Acc of block | Merge of Id.t * Node.t list
module SetInt =
  Set.Make
    (struct
      type t = int
      let compare = compare
    end)

let si_of_list ls = List.fold_left (fun acc_set elem -> SetInt.add elem acc_set) SetInt.empty ls 
module SetSetInt = 
Set.Make
  (struct
    type t = SetInt.t
    let compare =  compare 
  end)
let branch_oneof = ref SetSetInt.empty

let is_retvar x = is_reg x || (x.[0] = '%')

(*正規表現使うほうがきれいに書けそう*)


let v_convert_then x = (x^"_then_")
let v_convert_else x = (x^"_else_")
let is_branchvar x = 
  let len = String.length x in 
  if len < 6 then false
  else let post6 = (String.sub x (len-6) 6) in (post6 = "_then_") || (post6 = "_else_")

let rec make_dfg g (fname,e,dest) (bnum,rnum,acc_block) : Datagraph.G.t * (int list) = 
  try 
  (match e with
  | Asm.Ans exp -> 
    let g', k = make_dfg_g g (fname,true, dest) exp (bnum,rnum,acc_block) in 
    (match k with 
    | Acc acc_block' -> 
      ((*acc_block'はここで終了? これはbnumでいいのか?*)
      (* (match acc_block' with
        | [] -> ()
        | _ -> Hashtbl.add ht_block2insts bnum acc_block'); これは空かどうかよりもmemかを調べた方がいいかも *)
      let acc_block' = if (is_branchvar dest) && (not(is_retvar dest)) then acc_block'@[Phi_r(dest)] else acc_block' in (*分岐ごとにassignが違う変数*)
      if not(Hashtbl.mem ht_block2insts bnum) then Hashtbl.add ht_block2insts bnum acc_block';
      (*fnameのブロック番号の範囲を記録*)
      g', [bnum] (*2項目は次にmergeすべきブロックのリスト*))
    | Merge (_,mlist) -> 
      (let s = (SetInt.of_list mlist) in if SetInt.cardinal s >=2 then branch_oneof := SetSetInt.add s !branch_oneof);
      g', mlist (*このmlistはハッシュテーブルに追加済みなのか?*)
    )
  | Asm.Let ((x,_),exp,e2) -> 
    let g', k = make_dfg_g g (fname,false,x) exp (bnum,rnum,acc_block) in 
    (match k with 
    | Acc acc_block' -> make_dfg g' (fname,fst e2,dest) (bnum,rnum+1,acc_block') 
    | Merge (olddest,mlist) -> 
      let cont_bnum = (incr counter;!counter) in 
      let g_cont = add_edges (add_vertices g' [cont_bnum]) (List.map (fun s -> (s,cont_bnum)) mlist) in (*分岐を統合*)
      (let s = (SetInt.of_list mlist) in if SetInt.cardinal s >=2 then branch_oneof := SetSetInt.add s !branch_oneof);
        make_dfg g_cont (fname,fst e2,dest) (cont_bnum,rbegin,[Phi_w(olddest)])
    )
  ) with e -> raise e

and make_dfg_g g (fname,is_ans,dest) exp (bnum,rnum,acc_block) = 
  match exp with
  | IfEq(x,yi,e1,e2) | IfLE(x,yi,e1,e2) | IfGE(x,yi,e1,e2) -> 
      let relop = get_relop exp in
      let block = acc_block@[CondJ(x,relop,yi)] in (*ブロックbnumはこの命令まで*)
      Hashtbl.add ht_block2insts bnum block; 
      let bnum1 = (incr counter;!counter) in (*e1のブロック*)
      let bnum2 = (incr counter;!counter) in (*e2のブロック*)
      (*新しいグラフを作成*)
      let v = bnum in
      let v1 = bnum1 in 
      let v2 = bnum2 in 
      (let s = (SetInt.of_list [v1;v2]) in branch_oneof := SetSetInt.add s !branch_oneof);
      let g' = add_edges (add_vertices g [v1;v2]) [(v,v1);(v,v2)] in
      (*部分構造について再帰*)
      let g'1,mlist1 = make_dfg g' (fname,(fst e1),v_convert_then dest) (bnum1,rbegin,[]) in 
      let g'2,mlist2 = make_dfg g'1 (fname,(fst e2),v_convert_else dest) (bnum2,rbegin,[]) in
        g'2 , Merge(dest,mlist1@mlist2)
    
  | IfFEq(x,y,e1,e2) | IfFLE(x,y,e1,e2) -> (*上記パターンとほぼ同じ*)
      let relop = get_relop exp in
      let block = acc_block@[CondJ(x,relop,V(y))] in (*ブロックbnumはこの命令まで*)
      Hashtbl.add ht_block2insts bnum block; 
      let bnum1 = (incr counter;!counter) in (*e1のブロック*)
      let bnum2 = (incr counter;!counter) in (*e2のブロック*)
      (*新しいグラフを作成*)
      let v = bnum in
      let v1 = bnum1 in 
      let v2 = bnum2 in 
      (let s = (SetInt.of_list [v1;v2]) in branch_oneof := SetSetInt.add s !branch_oneof);
      let g' = add_edges (add_vertices g [v1;v2]) [(v,v1);(v,v2)] in
      (*部分構造について再帰*)
      let g'1,mlist1 = make_dfg g' (fname,(fst e1),v_convert_then dest) (bnum1,rbegin,[]) in 
      let g'2,mlist2 = make_dfg g'1 (fname,(fst e2),v_convert_else dest) (bnum2,rbegin,[]) in
        g'2 , Merge(dest,mlist1@mlist2)
  | CallCls(f,args,fargs) | CallDir(Id.L(f),args,fargs) when f = fname -> (*自己再帰*)
      Hashtbl.add ht_vname2inst_ids dest (bnum,rnum); 
      (*関数の最初に戻る辺を追加*)
      let g' = add_edges g [bnum,!ftop] in (*これで関数のトップを指定 *)
      (*ブロックbnumはここで終了*)
      let block = acc_block@(get_args_setting args fargs false)@[Call(dest,fname,args,fargs)] in 
      Hashtbl.add ht_block2insts bnum block; 
      let mlist = [bnum] in  (*if is_ans then [] else *)
          g', Merge(dest,mlist) (*ここの設定??*) 
  | CallCls(f,args,fargs) | CallDir(Id.L(f),args,fargs) -> (*他の関数を呼ぶ*)
      Hashtbl.add ht_vname2inst_ids dest (bnum,rnum); 
        (*関数間呼び出しグラフも作ってみる*)
          (G2.add_edge interfuncgraph (process_funcname fname) (process_funcname f));
        let acc_block' = acc_block@(get_args_setting args fargs false)@[Call(dest,f,args,fargs)] in
        g, Acc(acc_block')
  | Save _ | Restore _ -> assert(false) (*regAllocの前だとこれらはない*)

  (*以下はブロックに命令を追加するだけのパターン*)
  | Nop | Comment _  -> g, Acc(acc_block)
  | Li(i) -> 
    Hashtbl.add ht_vname2inst_ids dest (bnum,rnum); 
    g, Acc(acc_block@[Assign2(dest,Li,C(i))])
  | FLi(Id.L(x)) -> 
    Hashtbl.add ht_vname2inst_ids dest (bnum,rnum); 
    g, Acc(acc_block@[Assign2(dest,FLi,V(x))])
  | SetL(Id.L(x)) -> 
    Hashtbl.add ht_vname2inst_ids dest (bnum,rnum); 
    g, Acc(acc_block@[Assign2(dest,SetL,V(x))])
  | Mov(x) | FMov(x) -> 
    Hashtbl.add ht_vname2inst_ids dest (bnum,rnum); 
    g, Acc(acc_block@[Copy(dest,x)])
  | Neg(x) | FNeg(x) -> 
    Hashtbl.add ht_vname2inst_ids dest (bnum,rnum); 
    g, Acc(acc_block@[Assign2(dest,Neg,V(x))])
  | Add(x,yi) | Sub(x,yi) | Mul(x,yi) | Div(x,yi) | SLL(x,yi) | SRA(x,yi) -> 
      let binop = get_binop exp in 
      Hashtbl.add ht_vname2inst_ids dest (bnum,rnum); 
      g, Acc(acc_block@[Assign3(dest,x,binop,yi)])
  | Ld(x,yi) | FLd(x,yi) -> 
      let memacc = get_memacc exp in 
      Hashtbl.add ht_vname2inst_ids dest (bnum,rnum); 
      g, Acc(acc_block@[Memacc(dest,x,memacc,yi)])
  | St(x,y,zi) | FSt(x,y,zi) -> 
      let memacc = get_memacc exp in 
      Hashtbl.add ht_vname2inst_ids dest (bnum,rnum); 
      g, Acc(acc_block@[Memacc(x,y,memacc,zi)])
  | FAdd(x,y) | FSub(x,y) | FMul(x,y) | FDiv(x,y) -> 
      let binop = get_binop exp in 
      Hashtbl.add ht_vname2inst_ids dest (bnum,rnum); 
      g, Acc(acc_block@[Assign3(dest,x,binop,V(y))])

(*出力まわりを整備*)
module Dot = Graph.Graphviz.Dot(struct
   include G (* use the graph module from above *)
   let edge_attributes _ = []
   let default_edge_attributes _ = []
   let get_subgraph bnum = 
    let fname = get_fname bnum in 
    let args,fargs = M.find fname !argenv in 
    let arg_string = process ("["^(Id.pp_list args)^"], ["^(Id.pp_list fargs)^"]") in 
    Some({Graph.Graphviz.DotAttributes.sg_name = (Str.global_replace r1 "" fname);Graph.Graphviz.DotAttributes.sg_attributes = [`Label ((Str.global_replace r4 "" fname)^" "^arg_string);`Fontsize 24];Graph.Graphviz.DotAttributes.sg_parent=None})
   let vertex_attributes bnum = 
    let inst_list = (try Hashtbl.find ht_block2insts bnum with Not_found -> []) in 
    let inst_string,_,_ = List.fold_left (*いったん簡略な出力を試す, 分岐以外出さない*)
      (fun (acc_string,acc_idx,acc_rnum) inst -> 
        match inst with 
        | CondJ _ | Call _  -> (add_row acc_string (to_string inst)  acc_idx acc_rnum,acc_idx+1,acc_rnum+1) (*本当は出力の列番号と命令の何行目かは別者*)
        | _ -> 
          (* (acc_string,acc_idx+1,acc_rnum) *)
          (add_row acc_string (to_string inst) acc_idx acc_rnum,acc_idx+1,acc_rnum+1)
      ) (make_header ("B"^(string_of_int bnum)),1,1) inst_list in
    [`Shape `Box; `HtmlLabel (add_footer (inst_string))] (*ここを命令列に*)
   let vertex_name bnum = string_of_int bnum
   let default_vertex_attributes _ = []
  let graph_attributes _ = [`Rankdir `LeftToRight;`Nodesep (0.1)]
end)

let print oc g =
   Dot.output_graph oc g

(*FixPointを使った各種解析をとりあえずここに実装?*)
let def bnum = (*Def集合 def[p] = ブロックpの定義分の内, pの出口で有効なものの集合*)
  let inst_list = (try Hashtbl.find ht_block2insts bnum with Not_found -> []) in 
  let _, def_list,_ =  (List.fold_right (fun inst (acc_set,acc_list,acc_idx) -> 
    match inst with 
      | Assign3 (x,_,_,_) | Assign2(x,_,_) | Memacc(x,_,_,_) | Copy(x,_) | Call(x,_,_,_) (*when not(x = "a0")*) -> (*いったんa0は除外*)
          if S.mem x acc_set then (acc_set,acc_list,acc_idx - 1)
          else (S.add x acc_set, (bnum,acc_idx)::acc_list,acc_idx - 1)
      | _ -> (acc_set,acc_list,acc_idx - 1)
      ) inst_list (S.empty,[],List.length inst_list)) in
      IidSet.of_list def_list

let kill bnum = (*Kill集合 kill[p] = ブロックpの出口で無効になる定義分の集合(フローは考慮しない) = このブロック内で定義されているのと同じ変数を定義している他のブロック内の命令の集合*)
  let inst_list = (try Hashtbl.find ht_block2insts bnum with Not_found -> []) in 
  let (defvs : S.t ) = List.fold_left (fun acc_set inst -> 
    match inst with
      | Assign3 (x,_,_,_) | Assign2(x,_,_) | Memacc(x,_,_,_) | Copy(x,_) | Call(x,_,_,_) (*when not(x = "a0")*)  -> S.add x acc_set (*いったんa0は除外*)
      | _ -> acc_set
    ) S.empty inst_list in
  let defset = S.fold (fun vname acc_set -> let new_kill = (try Hashtbl.find_all ht_vname2inst_ids vname with Not_found -> []) in IidSet.union acc_set (IidSet.of_list new_kill)) defvs IidSet.empty in
  IidSet.filter (fun (bn,_) -> not (bnum = bn)) defset

module Reachability = Graph.Fixpoint.Make(G)
    (struct
      type vertex = G.E.vertex
      type edge = G.E.t
      type g = G.t
      type data = IidSet.t
      let direction = Graph.Fixpoint.Forward
      let equal = IidSet.equal
      let join = IidSet.union
      let analyze (p,_) in_p = (*これがf_pということでいいんだろうか?*)
        IidSet.union (def p) (IidSet.diff in_p (kill p))
    end)

let get_reach g = Reachability.analyze (fun _(*v*) -> 
    (* if G.in_degree g v = 0 
      then (*関数のentry*) 
        let fname = fst v in
        let args, fargs = M.find fname !argenv in
        IidSet.union (IidSet.of_list args) (IidSet.of_list fargs)
      else *)
         IidSet.empty) g


(*関数間呼び出しグラフの方の出力*)
module Dot2 = Graph.Graphviz.Dot(struct
   include G2 
   let edge_attributes _ = []
   let default_edge_attributes _ = []
   let get_subgraph _ = None
   let vertex_attributes fname = 
    [`Label fname]
   let vertex_name fname = fname
   let default_vertex_attributes _ = [`Shape `Box]
  let graph_attributes _ = [] (*`Rankdir `LeftToRight*)
end)

let skip_empty_block g = (*空ブロックへのジャンプをスキップする*)
G.fold_vertex (fun bnum acc_g -> 
  try (match Hashtbl.find ht_block2insts bnum with
  | [] when (G.in_degree acc_g bnum = 1) && (G.out_degree acc_g bnum = 1)-> (*空ブロック, かつ入次数と出次数が1 *)
    (* Printf.eprintf "bnum = %d found but empty\n" bnum; *)
    (let bnum_before = List.nth (G.pred acc_g bnum) 0 in 
    let bnum_after = List.nth (G.succ acc_g bnum) 0 in
      G.add_edge_e (G.remove_vertex acc_g bnum) (bnum_before,bnum_after))
  | _ -> acc_g) with | Not_found -> 
    (if  (G.in_degree acc_g bnum = 1) && (G.out_degree acc_g bnum = 1) then 
        ((* Printf.eprintf "bnum = %d not found\n" bnum; *)
        (let bnum_before = List.nth (G.pred acc_g bnum) 0 in 
      let bnum_after = List.nth (G.succ acc_g bnum) 0 in
        G.add_edge_e (G.remove_vertex acc_g bnum) (bnum_before,bnum_after)))
    else acc_g
    )
  ) g g

(*Global variable Numbering*)

module Mrhs =
Map.Make
  (struct
    type t = int * ssa_rhs
    let compare = compare
  end)

let vcounter = ref 0
let fcounter = ref 1

let rhs2vnum = ref Mrhs.empty (* 定義済みの式の右辺, oprandは値番号にしたもの (Dfa.ssa_rhs ?) -> 値番号 のマップ *)

let id2vnum = Hashtbl.create 1024 (* 変数名 -> 値番号　のハッシュ *)

let newv2def = Hashtbl.create 1024 (*新しく値番号を置いている変数 -> その定義*)
let vexp2instid = Hashtbl.create 1024 (*値番号 -> その定義がある(ブロック * 行番号) *)

let vnum2vexp vnum = "#"^(string_of_int vnum) 
(* let vexp2vnum vexp = int_of_string (String.sub vexp 1 (String.length vexp) - 1) *)

let id2vexp x = (*vexpが値番号による式の表現 #n ということにする*)
  try 
  vnum2vexp (Hashtbl.find id2vnum x) 
  with | Not_found -> ((*Printf.eprintf "variable %s not found in already defined value table\n" x;*) x) (*とりあえずxを返しておく*)

let iori2vexp xi = 
  match xi with 
  | V x -> V(id2vexp x)
  | _ -> xi 

let id_rhs2ssa (bnum,rnum) x rhs' = 
  match rhs' with 
  (*常に利用できる即値を判定, これらの場合でも変数の対応を追加下とまずいかも *)
  | Uniop(Li,C(0)) -> Hashtbl.add id2vnum x 0; Copy(x,vexp_zero)
  | Uniop(FLi,V(flabel)) when (M.find flabel !ftable = 0.0) -> Hashtbl.add id2vnum x 0; Copy(x,vexp_zero)
  | _ -> 
      (try 
        let vnum = Mrhs.find (!fcounter,rhs') !rhs2vnum in 
        Hashtbl.add id2vnum x vnum; (* 変数の対応を追加 *)
        (* Printf.printf "Already defined : %s = #%d\n" x vnum; *)
        Copy(x,vnum2vexp vnum) (*すでに右辺が定義済みの場合*)
      with | Not_found -> (* 新しく値番号を置く *)
        (let vnum = (incr vcounter; !vcounter) in 
        let vexp = vnum2vexp vnum in 
        let newdef = (match rhs' with 
          | Binop(y,binop,zi) -> Assign3(vexp,y,binop,zi)
          | Uniop(uniop, yi) -> Assign2(vexp,uniop, yi)
          | _ -> assert(false)
        ) in 
        (if not(is_branchvar x) then rhs2vnum := Mrhs.add (!fcounter,rhs') vnum !rhs2vnum); (*式 -> 値番号 *)
        Hashtbl.add newv2def x newdef;
        Hashtbl.add vexp2instid vexp (bnum,rnum);
        Hashtbl.add id2vnum x vnum; (* 変数の対応を追加 *)
        Copy(x,vexp))
      ) 

(* 代入の右辺はいったん変数名を値番号にすべて置き換えたものに変換して考える!! *)
(* 本当は型を使って番号に代わっていることを保証すべきだけど, いったん実装をさぼる *)
let scan_insn (bnum,rnum) (e : ssa) = 
  match e with 
  | CondJ(x,relop,C(i)) -> CondJ((id2vexp x),relop,C(i))
  | CondJ(x,relop,V(y)) -> CondJ((id2vexp x),relop,V(id2vexp y))
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
        (let vnum = (incr vcounter; !vcounter) in 
        let vexp = vnum2vexp vnum in 
        let y' = (try id2vexp y with | Not_found -> y (*global配列?*)) in 
        let zi' = iori2vexp zi in 
        let rhs' = Mem(y',zi') in 
        let newdef = Memacc(vexp,y',memacc,zi') in 
        (if not(is_branchvar x) then rhs2vnum := Mrhs.add (!fcounter,rhs') vnum !rhs2vnum); (*式 -> 値番号 *)
        Hashtbl.add newv2def x newdef;
        Hashtbl.add vexp2instid vexp (bnum,rnum);
        Hashtbl.add id2vnum x vnum; (* 変数の対応を追加, xがレジスタなら例外処理をすることにする? *)
        Copy(x,vexp))
      | St | FSt -> 
        (let x' = id2vexp x in 
        let y' = (try id2vexp y with | Not_found -> y (*global配列?*)) in 
        let zi' = iori2vexp zi in 
          Memacc(x',y',memacc,zi'))
    )
  | Copy(x,y) when (is_reg y) -> 
    (let vnum = (incr vcounter; !vcounter) in 
    let vexp = vnum2vexp vnum in (*ここでrhs2vnumにレジスタを登録する必要はないはず?*)
    let newdef = Copy(vexp,y) in 
    Hashtbl.add newv2def x newdef;
    Hashtbl.add vexp2instid vexp (bnum,rnum);
    Hashtbl.add id2vnum x vnum;
    Copy(x,vexp))
  | Copy(x,y) -> (*定義済みの値番号を利用*)
    let yvnum = Hashtbl.find id2vnum y in 
    Hashtbl.add id2vnum x yvnum;
    let y' = id2vexp y in Copy(x,y')
  | Call(x,f,args,fargs)-> 
    let args' = List.map id2vexp args in 
    let fargs' = List.map id2vexp fargs in 
    (try 
      let vnum = Hashtbl.find id2vnum x in (*これは分岐で同じ変数を定義済みのパターン*)
        (match (Hashtbl.find newv2def x) with 
        | Call(_,f2,args2',fargs2') when (f = f2 (*&& args' = args2' && fargs' = fargs2'*)) -> Printf.eprintf "branch same value %s\n" x;Copy(x,vnum2vexp vnum) (* 分岐間で同じ値 -> 同じ値番号でいい? *)
        | _ -> raise Not_found (* 異なる値 -> 別の値番号で置く *))
    with | Not_found -> 
      let vnum = (incr vcounter; !vcounter) in 
      let vexp = vnum2vexp vnum in 
      let newdef = Call(vexp,f,args',fargs') in 
      Hashtbl.add newv2def x newdef;
      Hashtbl.add vexp2instid vexp (bnum,rnum);
      Hashtbl.add id2vnum x vnum;
        Copy(x,vexp))
  | Phi_r(x) -> Phi_r(id2vexp x) (*すでに値番号があるはず*)
  | Phi_w(x) -> (*新しく値番号を置く必要がある*)
    (let vnum = (incr vcounter; !vcounter) in 
    let vexp = vnum2vexp vnum in 
     (*同じ右辺が出てくることはないので, rhs2vnumに式 -> 値番号の対応を追加する必要はない *)
    Hashtbl.add newv2def x (Phi_w(vexp)); (*これで合っているのか?*)
    Hashtbl.add vexp2instid vexp (bnum,rnum);
    Hashtbl.add id2vnum x vnum; (* 変数の対応を追加 *)
    Copy(x,vexp))
      
        

let ht_bnum2gvnlist =  Hashtbl.create 256 

let scan_block bnum = 
  let insn_list = (try Hashtbl.find ht_block2insts bnum with |  Not_found -> Printf.eprintf "block %d not found\n" bnum;[] ) in
  let gvnlist = List.rev (snd (List.fold_left (fun (rnum,acc_gvnlist) e -> rnum+1,(scan_insn (bnum,rnum) e)::acc_gvnlist ) (0,[]) insn_list)) in
  Hashtbl.add ht_bnum2gvnlist bnum gvnlist;(if List.mem bnum !fend_list then incr fcounter)

let rec scan_blocks ((bstart,bend) : int * int) = 
  if bstart > bend then ()
  else (scan_block bstart;scan_blocks ((bstart + 1),bend))


let gvninsn_to_string ssa = 
  let insnstring = to_string ssa in 
    match ssa with 
    | Copy(x,y) ->
      (try 
      let newvdef_list = Hashtbl.find_all newv2def x in 
      let newvdef = List.find (fun def -> 
        let rdest = get_dest def in 
        (remove_alpha rdest) = (remove_alpha y)) newvdef_list 
      in (insnstring^" ("^(to_string newvdef)^")")
    with | Not_found -> insnstring)
    | _ -> insnstring 

    (*gvnの出力*)
module Dot3 = Graph.Graphviz.Dot(struct
include G (* use the graph module from above *)
let edge_attributes _ = []
let default_edge_attributes _ = []
let get_subgraph bnum = 
 let fname = get_fname bnum in 
 let args,fargs = M.find fname !argenv in 
 let arg_string = process ("["^(Id.pp_list args)^"], ["^(Id.pp_list fargs)^"]") in 
 Some({Graph.Graphviz.DotAttributes.sg_name = (Str.global_replace r1 "" fname);Graph.Graphviz.DotAttributes.sg_attributes = [`Label ((Str.global_replace r4 "" fname)^" "^arg_string);`Fontsize 24];Graph.Graphviz.DotAttributes.sg_parent=None})
let vertex_attributes bnum = 
 let inst_list = (try Hashtbl.find ht_bnum2gvnlist bnum with Not_found -> []) in 
 let inst_string,_,_ = List.fold_left 
   (fun (acc_string,acc_idx,acc_rnum) inst -> 
     match inst with 
     | CondJ _ | Call _  -> (add_row acc_string (gvninsn_to_string inst)  acc_idx acc_rnum,acc_idx+1,acc_rnum+1) (*本当は出力の列番号と命令の何行目かは別者*)
     | _ -> 
       (* (acc_string,acc_idx+1,acc_rnum) *)
       (add_row acc_string (gvninsn_to_string inst) acc_idx acc_rnum,acc_idx+1,acc_rnum+1)
   ) (make_header ("B"^(string_of_int bnum)),1,1) inst_list in
 [`Shape `Box; `HtmlLabel (add_footer (inst_string))] (*ここを命令列に*)
let vertex_name bnum = string_of_int bnum
let default_vertex_attributes _ = []
let graph_attributes _ = [`Rankdir `LeftToRight;`Nodesep (0.1)] (*`Rankdir `LeftToRight*)
end)

(*gvn end*)

let ret_reg t = 
  match t with
  | Type.Unit -> "%g0"
  | Type.Float -> Asm.fregs.(0)
  | _ -> Asm.regs.(0)

let f maybe_oc (Prog(data, fundefs, e)) = (*最適化をかけるならprogを返す必要がある*)
  match maybe_oc with
  | None ->  (G.empty,Prog(data, fundefs, e),([],[]))
  | Some(oc) ->
    (*各fundefに対して, data flow analysisを実施*)
    (*foldにしてgを更新するようにしないと一つに出力できないかな? -> 別々の部分グラフに変更できそうなのでする *)
    (*あとで最適化も実装*)
    ftable := List.fold_left (fun acc_table (Id.L(flabel),fvalue) -> M.add flabel fvalue acc_table) !ftable data; 
      let g = List.fold_left (fun acc_g {Asm.name = Id.L(fname);Asm.args = args;Asm.fargs = fargs;Asm.body = (e,_);Asm.ret = tret;_} ->
        try
          (argenv := M.add fname (args,fargs) !argenv;
          let entry_bnum = (incr counter;!counter) in
          let entry_block = get_args_setting args fargs true in 
          fentry_list := !fentry_list@[entry_bnum];
          Hashtbl.add ht_block2insts entry_bnum entry_block;
          ftop := entry_bnum;
          let begin_bnum = (incr counter;!counter) in
          let entry_g = add_edges (add_vertices acc_g [entry_bnum;begin_bnum]) [(entry_bnum,begin_bnum)] in 
          let new_g,mlist = make_dfg entry_g (fname,e,(get_alphareg (ret_reg tret))) (begin_bnum,rbegin,[]) in
          (let s = (SetInt.of_list mlist) in if SetInt.cardinal s >=2 then branch_oneof := SetSetInt.add s !branch_oneof);
          fend_list := !fend_list@[!counter]; (*これは非効率的過ぎるので要変更*)
          fname_list := !fname_list@[fname];
          new_g
          )
        with | Not_loop -> (Printf.eprintf "function %s couldn't be expressed with loop\n" fname;acc_g)
        ) G.empty fundefs in
      (*ブロックが一つしかない関数をとりあえず取り除いてみる*)
      
      let g = skip_empty_block g in 
      print oc g;
        (*gvnテスト出力*)
      (let oc_gvn = open_out_bin "gvngraph.dot" in
        (Printf.eprintf "counter = %d\n" !counter; 
        scan_blocks (1,!counter);
        let g',_ = List.fold_left (fun (acc_g,start_bnum) end_bnum -> 
          if start_bnum + 1 = end_bnum then (*ブロックが一つしかない*)
              (G.remove_vertex (G.remove_vertex acc_g end_bnum) start_bnum, end_bnum + 1) (*remove_vertexもリストを扱えるようにしてもいいかも*)
          else (acc_g, end_bnum + 1) 
          ) (g,1) !fend_list in
        Dot3.output_graph oc_gvn g';
        (* 分岐の兄弟の確認 *)
        let oc_branch = open_out "branchfamily.txt" in
        SetSetInt.iter (fun sint -> Printf.fprintf oc_branch "{"; (SetInt.iter (fun elem -> Printf.fprintf oc_branch "B%d, " elem) sint); Printf.fprintf oc_branch "}\n") !branch_oneof;
        (*関数間呼び出しグラフのテスト用出力ファイル*)
        (* (let oc_func = open_out_bin "funccallgraph.dot" in
          Dot2.output_graph oc_func interfuncgraph *)
      (* とりあえずテスト用の出力ファイル*)
      (* let oc2 = open_out_bin "reachtest.txt" in
      G.iter_vertex (fun bnum -> let reach_p_list = IidSet.elements (get_reach g bnum) in 
        (Printf.fprintf oc2 "reach[B%d] = {" bnum;
        List.iter (fun (bnum,rnum) -> Printf.fprintf oc2 "B%d[%d], " bnum rnum ) reach_p_list;
        Printf.fprintf oc2 "}\n")
        ) g;
      Printf.fprintf oc2 "\n--- def ---\n";
      G.iter_vertex (fun bnum ->  
        (Printf.fprintf oc2 "def[B%d] = {" bnum;
        IidSet.iter (fun (bnum,rnum) -> Printf.fprintf oc2 "B%d[%d], " bnum rnum ) (def bnum);
        Printf.fprintf oc2 "}\n")
        ) g;
      Printf.fprintf oc2 "\n--- kill ---\n";
      G.iter_vertex (fun bnum -> 
        (Printf.fprintf oc2 "kill[B%d] = {" bnum;
        IidSet.iter (fun (bnum,rnum) -> Printf.fprintf oc2 "B%d[%d], " bnum rnum ) (kill bnum);
        Printf.fprintf oc2 "}\n")
        ) g *)
    Out_channel.close oc;Out_channel.close oc_gvn;Out_channel.close oc_branch));
    (g, Prog(data, fundefs, e),(!fentry_list,!fend_list))
