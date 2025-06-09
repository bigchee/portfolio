(*branch parallel scheduling, 分岐の兄弟で共通しているコードを可能なら移動させよう*)
open Datagraph
open Ssa
open Dfa
open Asm
open U

exception Prespill
exception Phiw


let current_branch_oneof = ref SetSetInt.empty 

(* 値番号 -> それを定義するブロック defenv*)
(* dfs沿いに自然に定義されているものと, そうでない場合に検証するためのグローバルなもの両方を持つ必要があるか? *)
(* let global_defenv = ref M.empty グローバルといえど, 同じ関数内だけの情報でいい *)
let cvexp_env = ref MapInt.empty 
let init_env = M.add vexp_zero 0 M.empty (* 最初にdefenvに #0 = 0 / 0.0 を追加しておく, 定義しているブロック番号はダミーでいい? *)

(*ブロック名 -> 新しい命令列*)
let block2moveddef = ref MapInt.empty
let move_top_insn move_bnum ssa = 
  let acc_list = (try MapInt.find move_bnum !block2moveddef with | Not_found -> []) in 
  block2moveddef := MapInt.add move_bnum (ssa::acc_list) !block2moveddef

let move_bottom_insn move_bnum ssa = 
  let acc_list = (try MapInt.find move_bnum !block2moveddef with | Not_found -> []) in 
  block2moveddef := MapInt.add move_bnum (acc_list@[ssa]) !block2moveddef


(*rnum : ブロックの中の行番号(0-indexed) *)
let scan_insn (bnum,rnum) ssa (acc,defenv) : ssa list * int M.t = 
  match ssa with
  | Copy(vars,vexps) -> 
    let new_defs,new_copys,newenv = 
      List.fold_left2 (fun (acc_defs,acc_copys,accenv) var vexp -> 
        if M.mem vexp accenv then (*dominatorで定義済みなのでそのまま利用可能*)
          (acc_defs,(var,vexp)::acc_copys,accenv)
        else if Hashtbl.mem newv2def var then  (*ここで新しく定義, この挙動怪しい*)
          (match (Hashtbl.find newv2def var) with 
            | Copy([vexpi],[dest]) when is_reg dest -> (acc_defs,(vexpi,(remove_alpha dest))::acc_copys, (M.add vexp bnum accenv))
            | e -> e::acc_defs, acc_copys,(M.add vexp bnum defenv))
        else
          (* Printf.printf "try moving %s 's def : (%d,%d)\n" vexp bnum rnum;  *)
          let d_vexp = (try Hashtbl.find vexp2instid vexp with Not_found -> failwith (Printf.sprintf "definition of %s not found" vexp)) in 
          let set1 = si_of_list [(fst d_vexp); bnum] in 
          let vnum = Dfa.vexp2vnum vexp in 
    
          (*ここの処理見直し*)
          if (SetSetInt.exists (fun set_i -> SetInt.subset set1 set_i) !current_branch_oneof) (*&& not ((Hashtbl.find newv2def var)) *)(*とりあえず並列な分岐の候補か調べるために, oneofの部分集合か見ている. 本当は集合群みたいな構造でやるのがいい. *)
            then (*定義の位置を移動させられるかチェック, だめなら個別に定義?*)
              ((try  
                let acc_list = (MapInt.find vnum !cvexp_env) in (* こっちに定義しているブロックはすでに入っているはず? *)
                cvexp_env := MapInt.add vnum (acc_list@[(bnum,rnum)])  !cvexp_env
              with | Not_found -> cvexp_env := MapInt.add vnum [d_vexp;(bnum,rnum)]  !cvexp_env); 
              (acc_defs,(var,vexp)::acc_copys,defenv))
            else (*この場合は別の値番号として置き直す? *)
              (
                (* Printf.eprintf "B%d : %s has unexpected pattern\n" bnum (to_string ssa); *)
              ((try  
                let acc_list = (MapInt.find vnum !cvexp_env) in (* こっちに定義しているブロックはすでに入っているはず? *)
                cvexp_env := MapInt.add vnum (acc_list@[(bnum,rnum)])  !cvexp_env
              with | Not_found -> cvexp_env := MapInt.add vnum [d_vexp;(bnum,rnum)]  !cvexp_env); 
              (acc_defs,(var,vexp)::acc_copys,defenv))) (*いったん*)
        ) ([],[],defenv) vars vexps in 
    let new_dsts,new_srcs = List.split (List.rev new_copys) in 
    let new_copy = if List.length new_dsts = 0 then [] else [Copy(new_dsts,new_srcs)] in 
    (acc@(List.rev new_defs)@new_copy,newenv)
  (* | Copy(var,vexp) when M.mem vexp defenv -> 
    (acc@[Copy(var,vexp)]), defenv 
  | Copy(var,vexp) when Hashtbl.mem newv2def var ->
      (match (Hashtbl.find newv2def var) with 
      | Copy(vexpi,dest) when is_reg dest -> acc@[Copy(vexpi,(remove_alpha dest))], (M.add vexp bnum defenv)
      | e -> acc@[e], (M.add vexp bnum defenv)) *)
  | CondJ(x,relop,yi) -> (acc@[CondJ(x,relop,yi)]),defenv
  | Memacc(x,y,memacc,zi) when is_memacc_store memacc -> (acc@[Memacc(x,y,memacc,zi)]),defenv
  (* | Copy(var,vexp) -> 
      let d_vexp = (try Hashtbl.find vexp2instid vexp with Not_found -> failwith (Printf.sprintf "definition of %s not found" vexp)) in 
      let set1 = si_of_list [(fst d_vexp); bnum] in 
      let vnum = Dfa.vexp2vnum vexp in 

      (*ここの処理見直し*)
      if (SetSetInt.exists (fun set_i -> SetInt.subset set1 set_i) !current_branch_oneof) (*とりあえず並列な分岐の候補か調べるために, oneofの部分集合か見ている. 本当は集合群みたいな構造でやるのがいい. *)
        then (*定義の位置を移動させられるかチェック, だめなら個別に定義?*)
          ((try  
            let acc_list = (MapInt.find vnum !cvexp_env) in (* こっちに定義しているブロックはすでに入っているはず? *)
            cvexp_env := MapInt.add vnum (acc_list@[(bnum,rnum)])  !cvexp_env
          with | Not_found -> cvexp_env := MapInt.add vnum [d_vexp;(bnum,rnum)]  !cvexp_env); 
          (acc@[ssa]),defenv)
        else (*この場合は別の値番号として置き直す? *)
          (
            (* Printf.eprintf "B%d : %s has unexpected pattern\n" bnum (to_string ssa); *)
          ((try  
            let acc_list = (MapInt.find vnum !cvexp_env) in (* こっちに定義しているブロックはすでに入っているはず? *)
            cvexp_env := MapInt.add vnum (acc_list@[(bnum,rnum)])  !cvexp_env
          with | Not_found -> cvexp_env := MapInt.add vnum [d_vexp;(bnum,rnum)]  !cvexp_env); 
          
          (acc@[ssa]),defenv)) いったん *)
  | Phi_r(_) -> acc@[ssa],defenv
  | Phi_w(xs) -> acc@[ssa],(M.add_list_same xs bnum defenv)
  | _ -> failwith (Printf.sprintf "not expected ssa form : %s" (to_string ssa) )

let rec scan_block bnum defenv = 
  let insnlist = (try Hashtbl.find ht_bnum2gvnlist bnum with |  Not_found -> failwith (Printf.sprintf "block %d not found" bnum)) in
  let _,(newinsnlist, newenv) = List.fold_left (fun (rnum,(acc_list,acc_env)) insn -> (rnum+1,scan_insn (bnum,rnum) insn (acc_list,acc_env)) ) (0,([],defenv)) insnlist in 
  (*newinsnlistに対するハッシュ追加処理?*)
  newenv 


let rec dfs_domtree get_domlist from search_func acc_0 = (*なんか抽象的なdfs*)
  (let acc_1 = search_func from acc_0 in (* ここで訪れたノードに対する処理 *)
  let domlist = get_domlist from in 
  List.iter (fun v -> (
    (* Printf.printf "search B%d -> B%d\n" from v; *)
   dfs_domtree get_domlist v search_func acc_1)) domlist) (*foldではなくiterが正しい?*)

(* let rec set_argument fentry insn_list acc_env =
  match insn_list with 
  | [] -> acc_env
  | Copy(vexps,dests)::ls when is_reg dest -> set_argument fentry ls (M.add vexpi fentry acc_env) 
  | _ -> assert(false) *)

let moved_defv = Hashtbl.create 64

let inner_can_move get_idom bto vexp = 
  let d_vexp,_ = Hashtbl.find vexp2instid vexp in 
    let is_dom = (d_vexp = bto ) || Dom.idom_to_dom get_idom d_vexp bto in 
    (* Printf.printf "vexp = %s : dom %d %d ? : %b\n" vexp d_vexp bto is_dom; *)
      (if is_dom then true (*dom x y <=> x dominates y*)
      else (*他の定義も動かさないといけなくなるのでいったんなし, もしほかの定義を動かしていたらにしよう*)
        (try 
          let moved = Hashtbl.find moved_defv vexp in 
          let is_dom = (moved = bto ) || Dom.idom_to_dom get_idom moved bto in 
          (
            (* Printf.printf "vexp = %s :dom %d %d ? : %b\n" vexp moved bto is_dom; *)
          is_dom)
          (*bto = movedでもtrueを返してほしい. これmovedを取得するためのテーブルが違くない? なぜうまく行っていたの? 判定が逆?*)
        with | Not_found -> false))

let rec can_move get_idom ssa (bfrom,bto) = 
  let g = inner_can_move get_idom bto in 
  let iori_can_move xi = 
    (match xi with 
      | C(_) -> true
      | V(x) -> g x) in 
  match ssa with 
  | Assign2(_,Li,_) | Assign2(_,FLi,_) | Assign2(_,SetL,_) -> true 
  | Assign2(_,IN32,_) | Assign2(_,OUT8,_) -> false (*副作用はいったん動かさない*)
  | Assign2(_,_,yi) -> (iori_can_move yi)
  | Copy(_,vexps) -> List.for_all (fun vexp -> (vexp = "#0" || g vexp)) vexps
  (* | Copy(_,vexp) when vexp = "#0" -> true (*zero即値のための場合分け*)
  | Copy(_,vexp)-> g vexp *)
  | Assign3(_,y,_,zi) | Memacc(_,y,Ld,zi) | Memacc(_,y,FLd,zi) -> (g y) && (iori_can_move zi) (*y , ziをチェック*) 
  | Memacc(x,y,_,zi) -> (g x) && (g y) && (iori_can_move zi) 
  | Phi_r(xs) | Phi_w(xs) -> false
    (* (Printf.printf "can_move %s to %d?\n" x bto ;g x) \Phiを動かすことなんてできるのか? *)
  | CondJ(_) | Call(_) -> false (* それ以外は移動できないことにする *)
  | Save(_) | Reload(_) -> assert(false)

let get_bf_maxinter get_idom uselist = (*uselistはinstid = (bnum,rnum) list*) 
  let domsetlist = List.map (fun (v,_) -> let domlist = (Dom.idom_to_dominators get_idom v) in SetInt.of_list domlist ) uselist in (*uselistは長さ2以上の想定*)
    let inter = List.fold_left (fun acc_set s -> SetInt.inter acc_set s) (List.hd domsetlist) (List.tl domsetlist) in 
    (SetInt.max_elt inter)

let get_vexp_def (bnum,rnum) = 
  let ssa = List.nth (Hashtbl.find ht_bnum2gvnlist bnum) rnum in 
  match ssa with 
  | Copy([var],[vexp]) -> Hashtbl.find newv2def var (*ここでvexpが一致していることを確認するといい? *)
  (* | Phi_w _  *)
  | _ ->( Printf.eprintf "get_vexp_def fail at (%d,%d) : %s\nloopvars = {%s}\n" bnum rnum (Ssa.to_string ssa) (S.to_string !Dfa.loopvars);
        assert(false))

let rec get_dom_tree get_domlist (bnum,fend) acc_g : Datagraph.G.t = 
  if bnum > fend then acc_g else 
  let acc_g' = List.fold_left (fun g vto -> G.add_edge g bnum vto) acc_g (get_domlist bnum) in 
    get_dom_tree get_domlist (bnum+1,fend) acc_g'

module TopoG = Graph.Topological.Make(G)

let split_definition (b,r) ssa = 
  try 
  let old_instlist = Hashtbl.find ht_bnum2gvnlist b in 
  let inst = List.nth old_instlist r in
  let x = Ssa.get_def inst in 

  let vnum = (incr vcounter; !vcounter) in 
  let vexp = vnum2vexp vnum in 
  (* (if not(is_branchvar x) then rhs2vnum := Mrhs.add (!fcounter,rhs') vnum !rhs2vnum); 右辺集合にはもう追加しなくてもいいはず *)
  let newdef = Ssa.map2 (fun _ -> vexp) (fun z -> z) ssa in 
  Printf.printf "split newdef : %s\n" (Ssa.to_string newdef);
  let newinst = Ssa.map2 (fun z -> z) (fun _ -> vexp) inst in 
  Printf.printf "split newinst : %s\n" (Ssa.to_string newinst);
  flush stdout;
  Hashtbl.add newv2def x newdef;
  (* Hashtbl.add vexp2uselog vexp (bnum,rnum); *)
  Hashtbl.add vexp2instid vexp (b,r); 
  Hashtbl.add id2vnum x vnum; (* 変数の対応を追加 *)
  
  let new_instlist = U.list_change_nth old_instlist r newinst in 
  Hashtbl.add ht_bnum2gvnlist b new_instlist
  with | e -> (Printf.eprintf "instid (%d,%d) missmatch in split definition" b r;raise e) 


let rec replace_definition_by_block defids (oldvexp,newvexp) b = 
  (*このブロックについての処理*)
  (if oldvexp <> newvexp then 
  let instlist = Hashtbl.find ht_bnum2gvnlist b in 
  let new_instlist = List.map (Ssa.map2 (fun z -> z) (fun vexp -> if vexp = oldvexp then newvexp else vexp)) instlist in
  Hashtbl.replace ht_bnum2gvnlist b new_instlist);
  (*再帰処理*)
  List.iter (fun b' -> replace_definition defids (oldvexp,newvexp) b') (G.succ !cfg b)
and  replace_definition defids (oldvexp,newvexp) b = 
  if List.exists (fun (b2,_) -> b2 = b) defids
    then (*命令単位でステップ実行*)
      let rev_newinst,newvexp',_ = 
        List.fold_left (fun (acc_list,acc_newvexp,r) ssa -> 
          if List.mem (b,r) defids then 
            (ssa::acc_list,Ssa.get_copy_src ssa,r+1)
          else
          let newinst = (Ssa.map2 (fun z -> z) (fun vexp -> if vexp = oldvexp then acc_newvexp else vexp)) ssa in 
            (newinst::acc_list,acc_newvexp,r+1)
        ) ([],newvexp,0) (Hashtbl.find ht_bnum2gvnlist b ) in 
      Hashtbl.replace ht_bnum2gvnlist b (List.rev rev_newinst);
      (*再帰処理*)
      List.iter (fun b' -> replace_definition defids (oldvexp,newvexp') b') (G.succ !cfg b)
    else (*ブロックごとの処理でOK*)
      replace_definition_by_block defids (oldvexp,newvexp) b

let fentry2idom = Hashtbl.create 256


let scan_func (fentry, fend) = 
  let get_idom = Dom.compute_idom !cfg fentry in 
  Hashtbl.add fentry2idom fentry get_idom;
  let get_domlist v = List.rev (Dom.idom_to_dom_tree !cfg get_idom v) in (*domlistはいったん降順で返ってくるぽい*)

  let entry_insnlist = (try Hashtbl.find ht_bnum2gvnlist fentry with |  Not_found -> failwith (Printf.sprintf "function (%d,%d) entry not found" fentry fend)) in 
  let entryenv = List.fold_left (fun accenv ssa -> 
    match ssa with 
    | Copy(args,vexps) -> 
      M.add_list (List.map (fun vexp -> (vexp,fentry)) vexps) accenv
      (* List.fold_left2 (fun inner_accenv arg vexp ->
      (try Hashtbl.find newv2def argi  
    with | Not_found -> failwith (Printf.sprintf "no defenition of %s = %s" argi vexpi))) accenv args vexps *)
    | Phi_r _ -> accenv
    | _ -> assert(false)
    ) init_env entry_insnlist in 
  (* let entryenv = set_argument fentry argset_list init_env in *)
  (* global_defenv := entryenv; 関数毎にdefenvを分ける *)
  cvexp_env := MapInt.empty; (* 関数毎の分岐共通変数をチェックするように *)
  dfs_domtree get_domlist fentry scan_block entryenv;
  MapInt.iter (fun vnum uselist -> 
    (let vexp = Dfa.vnum2vexp vnum in 
      (* Printf.printf "cv %s : { %s }\n" vexp (String.concat ", " (List.map (fun (b,r) ->  (string_of_int b)^"_r"^(string_of_int r) ) uselist)); *)
    (let maxinter = get_bf_maxinter get_idom uselist in 
      (* Printf.printf "maxinter = B%d\n" maxinter; *)
       (*こちらは値番号の定義位置を変えるので, レジスタに引数を代入するタイミングを変える以下のargset系と少し事情が違う.*)
      (*なんならこっちは定義を動かせるか確認するから, (bnum,rnum) の命令を見るわけじゃないな...そしてvexpから定義を確認するのが難しい? -> uselistの先頭が定義の命令なことを使える*)
      let (bnum,rnum) = List.hd uselist in 
      if S.mem vexp !Dfa.loopvars then () (*Printf.printf "loopvar : %s\n" vexp*)
      else  
      let ssa = get_vexp_def (bnum,rnum) in 
      if (can_move get_idom ssa (bnum,maxinter)) 
        then (if not(Hashtbl.mem moved_defv vexp) then ((*Printf.printf "moved def : %s -> B%d\n" vexp maxinter;*)Hashtbl.add moved_defv vexp maxinter);
              move_bottom_insn maxinter ssa) (*何行目のやつを動かすか決めないとダメな気がする*) (*追加されていない場合のみ追加?*)
        else (Printf.printf "Cannot move %s\n" (to_string ssa);
        let replacelist = (List.tl uselist) in 
        List.iter (fun (b,r) -> split_definition (b,r) ssa) replacelist;
        let oldvexp = Ssa.get_def ssa in 
        replace_definition (List.tl uselist) (oldvexp,oldvexp) bnum (*bnum以下で置き換え処理が発生しうる*) 
        )
         (* どうする? -> 定義をコピーしてここでも計算し直すしかない, それをregallocでどう判定するか? *)
    )
    )) !cvexp_env

let r = Str.regexp "\\(_then_\\|_else_\\)+$"
let strip_branch_suffix s = Str.global_replace r "" s

module SetId2 = Set.Make
(struct
  type t = string * string 
  let compare =  compare 
end)
(* 
let rec make_argset insnlist acc_set =
  match insnlist with 
  | [] -> acc_set
  | Copy(dests,vexps)::ls ->
     List.fold_left2 (fun inner_acc_set dest vexp -> 
      if (is_reg dest) then 
        let regname = (remove_alpha (strip_branch_suffix dest)) in 
        (SetId2.add (regname,vexp) inner_acc_set)
      else inner_can_move
      ) acc_set dests vexps   
  | Call(_)::_ -> acc_set (* 関数呼び出しを超えて並べ替えはできない, 関数呼び出し自体を含めることはできる? *)
  | _ ::ls -> make_argset ls acc_set

let check_inter l1 l2 = (SetId2.inter l1 l2)

let string_of_bf bf = 
  String.concat ", " (List.map (fun bnum -> Printf.sprintf "B%d" bnum) bf)


let get_argset_useinsn (regname,vexp) bnum : inst_id  = 
  let insnlist = Hashtbl.find ht_bnum2gvnlist bnum in 
  let some_rnum =  List.find_index (fun ssa -> 
    match ssa with 
    | Copy(dest,vexp') when (is_reg dest) -> 
      let regname' = (remove_alpha (strip_branch_suffix dest)) in (regname = regname' && vexp = vexp')
    | _ -> false) insnlist in
  (bnum,(Option.get some_rnum))

let get_argset_uselist (regname,vexp) bflist = (*そもそもcopysetはregname * vexp か, *)
  List.map (fun bnum -> get_argset_useinsn (regname,vexp) bnum) bflist 

let moved_argset = Hashtbl.create 128  *)
let block2reachable = Hashtbl.create 1024

let rec inner_get_reachable b = 
  try Hashtbl.find block2reachable b 
  with | Not_found ->  
    let succ = (List.filter (fun b' -> b < b')(G.succ !cfg b)) in 
    let reachset_child = List.fold_left (fun acc_set v -> SetInt.union acc_set (inner_get_reachable v)) SetInt.empty succ in 
    let reachset = SetInt.union reachset_child (SetInt.of_list succ) in 
    Hashtbl.add block2reachable b reachset;reachset

let get_reachable b = 
  try inner_get_reachable b 
  with | e -> Printf.eprintf "get_reachable";raise e 

(* let check_funccall_in_block_inrange bnum (rbegin,rend) = 
  let instlist = (try Hashtbl.find ht_bnum2gvnlist bnum with | Not_found -> []) in 
  snd (List.fold_left (fun (rnum,acc) ssa -> 
    if rnum < rbegin || rend < rnum then (rnum+1,acc)
    else 
      let b = 
    (match ssa with 
    | Copy([var],[vexp]) when Hashtbl.mem newv2def var -> 
        (match (Hashtbl.find newv2def var) with 
          | Call(_) -> true
          | _ -> acc
        )
    | _ -> acc) in (rnum+1,b)
    ) (0,false) instlist)

let check_funccall_in_block bnum = 
  let instlist = (try Hashtbl.find ht_bnum2gvnlist bnum with | Not_found -> []) in 
  (List.fold_left (fun acc ssa -> 
    match ssa with 
    | Copy([var],[vexp]) when Hashtbl.mem newv2def var -> 
        (match (Hashtbl.find newv2def var) with 
          | Call(_) -> true
          | _ -> acc
        )
    | _ -> acc
    ) false instlist)

let rec check_interval_call bfrom bto originaldest = (*まだあやしい*)
  if not(SetInt.mem bfrom (get_reachable bto)) then false
  else if bfrom = bto then false
  else List.fold_left (fun acc v -> acc || (check_interval_call bfrom v originaldest) ) (if bto <> originaldest then check_funccall_in_block bto else false) (G.succ !cfg bto)

let schedule_argsetting fentry bflist = 
  let checklist = make_argset (Hashtbl.find ht_bnum2gvnlist (List.hd bflist)) SetId2.empty in 
  let commoncopyset = List.fold_left (fun acc_check bnum -> 
    let newcheck = make_argset (Hashtbl.find ht_bnum2gvnlist bnum) SetId2.empty in check_inter acc_check newcheck
  ) checklist (List.tl bflist) in 
  if (SetId2.is_empty commoncopyset) then ()
  else 
  SetId2.iter (fun (reg,vexp) -> (*copyの中身についてiterationする?*)
    (* Printf.printf "commonarg : %s = %s in %s\n" reg vexp (string_of_bf bflist); *)
    (let uselist = get_argset_uselist (reg,vexp) bflist in 
    let get_idom = (try Hashtbl.find fentry2idom fentry with | e -> Printf.eprintf "idom not found for funciton from %d\n" fentry;raise e) in 
    (* let get_idom = Dom.compute_idom !cfg fentry in ここでgがいる! *)
      (
        (* Printf.printf "begin maxinter\n";flush stdout;  *)
        let maxinter = get_bf_maxinter get_idom uselist in 
      (* Printf.printf "end maxinter\n";flush stdout;  *)
      let ssa = Copy(reg,vexp) in 
      let can_move = 
      List.fold_left (fun acc (bnum,rnum) -> (*こちらは値番号の定義位置を変えるので, レジスタに引数を代入するタイミングを変える以下のargset系と少し事情が違う.*)
      (* let ssa = List.nth (Hashtbl.find ht_bnum2gvnlist bnum) rnum in  *) (*これもやる必要ない, reg = vexpという命令だとわかっている*)
      if (Hashtbl.mem moved_argset (bnum,rnum)) then false (*移動済みなのでもう処理しない*)
      else 
      (
        (* (Printf.printf "common argset %s :  (%d,%d) \n" vexp bnum rnum ); *)
        (* Printf.printf "check_interval_call (%d,%d)  : %b\n" bnum maxinter (check_interval_call bnum maxinter maxinter); *) 
       if (can_move get_idom ssa (bnum,maxinter) && not(check_funccall_in_block_inrange bnum (0,rnum)) && not(check_interval_call bnum maxinter maxinter))
        then ((*Printf.printf "Can move %s\n" (to_string ssa);*)acc) (*何行目のやつを動かすか決めないとダメな気がする*) (*追加されていない場合のみ追加?*)
        else ((*Printf.printf "Cannot move %s\n" (to_string ssa);*)false) (*こっちはvexpじゃなくてinst_idが動かす対象のはず. *)
      )) true uselist in 
      if can_move then 
      (List.iter (fun (bnum,rnum) -> Hashtbl.add moved_argset (bnum,rnum) maxinter) uselist;
      move_bottom_insn maxinter ssa) else Printf.eprintf "Couldn't move %s\n" (to_string ssa))
  )) commoncopyset

let schedule_argsetting_all _ =
  List.iter (fun fentry -> 
    try  
    cfg := Hashtbl.find ht_cfg fentry;
    let branchoneof = SetSetInt.of_list (Hashtbl.find_all branch_oneof (get_fname fentry)) in 
    SetSetInt.iter (fun bf -> schedule_argsetting fentry (SetInt.to_list bf)) branchoneof
    with | Not_found -> failwith (Printf.sprintf "schedule argset funcion from %d" fentry) 
    ) !fentry_list   *)

let vexp2uselog = Hashtbl.create 1024 (* 値番号 -> それを使うinst_id(定義自体も含む) *)
let subroutine_id = Hashtbl.create 256 (*関数名 -> その中間での関数呼び出しをするinstid*)
let fentry2calleesaves = Hashtbl.create 256

let map_var ssa env = 
  Ssa.map (fun x -> (try x^"_"^(M.find x env) with | Not_found -> x)) ssa

let convert_insn bnum (acc_list,acc_env,rnum) ssa = 
  match ssa with 
  | Copy(lhs,rhs) when List.mem bnum !fentry_list -> (*エントリの引数を想定*)
    let copy_list = List.map (fun var -> 
    let ssa_def = (Hashtbl.find newv2def var) in 
    let ssa_new = map_var ssa_def acc_env in 
    (match ssa_new with 
      | Copy([x],[y]) -> (x,y)
      | _ -> 
        (match (List.nth (Hashtbl.find_all newv2def var) 1) with 
          | Copy([x],[y]) -> (x,y)
          | _ -> assert(false)))
    ) lhs in 
    let dsts,srcs = List.split copy_list in (Copy(dsts,srcs)::acc_list,acc_env,rnum-1)
  | Copy([lhs],[rhs]) when lhs.[0] = '_' && not(SetInt.mem bnum !Dfa.loopentry) 
      && (try let defb,_ = Hashtbl.find Dfa.vexp2instid rhs in defb = bnum with Not_found -> (Printf.eprintf "def instid not found for %s\n" rhs;raise Not_found) ) -> 
    (try 
    (let deflist = (Hashtbl.find_all newv2def lhs) in 
    (* List.iter (fun ssa -> Printf.printf "convert (%d,%d) : %s\n" bnum rnum (Ssa.to_string ssa)) deflist; *)
    let ssa_def = U.list_get_last deflist in 
    (* let ssa_new = Ssa.map2 (fun _ -> rhs) (fun x -> x) ssa_def in  *)
     (ssa_def::acc_list,acc_env,rnum-1))
     with | e -> (Phi_w([rhs])::acc_list,acc_env,rnum-1))
  | Copy(lhs,rhs) when List.for_all (fun var -> (try Ssa.is_phiw (Hashtbl.find newv2def var) with | Not_found -> false)) lhs -> 
    (Phi_w(rhs)::acc_list,acc_env,rnum-1)
  | Copy(lhs,rhs) when List.exists (fun var -> Hashtbl.mem newv2def var) lhs ->  (*これだと混ざっている場合に対応できなさそうだけど, 多分いまのところないのでいいや*)
    let newinstlist,newenv = 
      (List.fold_right2 (fun var vexp (inner_acc_list,inner_acc_env) ->
            (if Hashtbl.mem moved_defv vexp then (*移動済みの定義*) ((*Printf.printf "find moved def %s %s\n" var vexp;*)(inner_acc_list,inner_acc_env))
            else 
              (let ssa_def = (Hashtbl.find newv2def var) in 
            (*ここで左辺がレジスタの場合がある -> ? 右辺じゃなくて?*)
              (match ssa_def with
                | Call(_,f,_,_) -> 
                  let reg = Dfa.ret_reg (Typing.get_ret_type (remove_alpha f)) in
                  let newdest = (try (get_def ssa_def)^"_"^reg with | e -> Printf.eprintf "convert_insn ssa_def %s\n" (Ssa.to_string ssa_def);flush stderr;raise e ) in 
                  let ssa_new = Ssa.map2 (fun _ -> newdest) (fun x -> x) ssa_def in 
                  ((ssa_new::inner_acc_list),M.empty)
                | _ -> (
                  try (if (is_reg var) then 
                    (* (Printf.printf "lhs reg : %s for %s\n" var (to_string ssa_def); *)
                  let newdest = vexp^"_"^var in 
                  let ssa_new = Ssa.map2 (fun _ -> newdest) (fun x -> x) ssa_def in 
                  ((ssa_new::inner_acc_list),inner_acc_env)
                    else raise Not_found)
                with | Not_found ->   
                  let ssa_new = map_var ssa_def acc_env in 
                  ((ssa_new::inner_acc_list),inner_acc_env)))
              )
            )
        ) lhs rhs (acc_list,acc_env)) in (newinstlist,newenv,rnum-1)
  (* | Copy([var],[vexp]) when Hashtbl.mem newv2def var -> 
      (if Hashtbl.mem moved_defv vexp 
        then (acc_list,acc_env,rnum-1) (*移動済みの定義*)
        else 
          let ssa_def = (Hashtbl.find newv2def var) in 
          (*ここで左辺がレジスタの場合がある -> ? 右辺じゃなくて?*)
            (match ssa_def with
              | Call(_,f,_,_) -> 
                  let reg = Dfa.ret_reg (Typing.get_ret_type (remove_alpha f)) in
                  let newdest = (try (get_def ssa_def)^"_"^reg with | e -> Printf.eprintf "convert_insn ssa_def %s\n" (Ssa.to_string ssa_def);flush stderr;raise e ) in 
                  let ssa_new = Ssa.map2 (fun _ -> newdest) (fun x -> x) ssa_def in 
                ((ssa_new::acc_list),M.empty,rnum-1) (*環境をリセット*)
              | _ -> (
                try (if (is_reg var) then 
                  (* (Printf.printf "lhs reg : %s for %s\n" var (to_string ssa_def); *)
                let newdest = vexp^"_"^var in 
                let ssa_new = Ssa.map2 (fun _ -> newdest) (fun x -> x) ssa_def in 
                ((ssa_new::acc_list),acc_env,rnum-1)
                  else raise Not_found)
              with | Not_found ->   
                let ssa_new = map_var ssa_def acc_env in 
                ((ssa_new::acc_list),acc_env,rnum-1)))
      ) *)
  | Copy(dests,vexps) when List.for_all is_reg dests -> (*ここで引数を設定, copyだけの場合*)
    let env' = M.add_list2 vexps dests acc_env in 
      ((ssa::acc_list),env',rnum-1)
  | Copy(dests,vexps) when List.for_all is_loopvar dests -> (*ここでループ引数を設定, copyだけの場合 *) (* [ ] 後でこの場合にループ引数のレジスタに対するprecolrも実装 *)
    (* let env' = M.add_list2 vexps dests acc_env in  *) (*その場合のprecolorの環境はどうするか?*)
        ((ssa::acc_list),acc_env,rnum-1)
  | Copy(_) -> (acc_list,acc_env,rnum-1) (*無視できる?*)
  | CondJ(_) -> (*分岐を一番下にするにはこれでいい?*)
    let ssa_new = map_var ssa acc_env in 
      ((acc_list@[ssa_new]),acc_env,rnum-1)
  | _ ->  
    let ssa_new = map_var ssa acc_env in 
    ((ssa_new::acc_list),acc_env,rnum-1)

let get_parents_of_unique_child g bnum = 
  List.filter (fun p -> (G.out_degree g p) = 1 ) (G.pred g bnum) 

let bnum2propenv = Hashtbl.create 1024

(* let add_block_to_labelg bnum newinsnlist = 
  match newinsnlist with 
  | [] -> ()
  | h::tl -> 
    add_insn_to_labelg (bnum,0) h;
    ignore(List.fold_left (fun acc ssa -> add_insn_to_labelg (bnum,acc) ssa;GI.add_edge labelgraph (bnum,acc-1) (bnum,acc);(acc + 1) ) 1 newinsnlist) *)

let instlist_to_string instlist  = 
  (String.concat ", " (List.map (fun (b,r) -> Printf.sprintf "(%d,%d)" b r) instlist) ) 

let print_uselog (vstart,vend) = 
  let step vacc =  
    let uselist = (Hashtbl.find_all vexp2uselog (vnum2vexp vacc)) in
    (if List.length uselist  = 1 then
    Printf.printf "no use def? #%d : {%s}\n" vacc (instlist_to_string uselist)
    ) in
  iter_range step (vstart,vend)
    
let add_vexp (bnum,rnum) x = (*レジスタの場合は??*)
  try 
  let v = ( try let (vexp,_) = split_vexp_reg x in vexp
      with | Not_found -> if x.[0] = '#' then x else raise Not_found) in 
    Hashtbl.add vexp2uselog v (bnum,rnum)
  with | Not_found -> ()

let add_insn_to_uselog (bnum,rnum) ssa = (*useなのにdefも見ているね?*)
    (try let dests = (Ssa.get_defs ssa) in 
      List.iter (fun dest -> add_vexp (bnum,rnum) dest) dests   
    with | NoDest -> ());
    let arg = Ssa.get_use ssa in 
      List.iter (fun x -> add_vexp (bnum,rnum) x ) arg

let add_insn_to_subroutinelog fname (bnum,rnum) ssa  : unit = 
  (match ssa with 
  | Call(_) ->Hashtbl.add subroutine_id fname (bnum,rnum)
  | _ -> ())

let is_dom_inst get_idom (b1,r1) (b2,r2) = (* (b1,r1) dominates (b2,r2) を判定 *)
  if b1 = b2 then r1 < r2 (*番号が小さいほうが上*)
  else 
    let is_dom = Dom.idom_to_dom get_idom b1 b2 in  (* idom_to_dom get_idom x y <=> x dominates y *)
    (* Printf.printf "is dom %d %d ? : %b\n" b1 b2 is_dom; *)
    is_dom


let filter_lastuse get_idom instid_list = 
  List.fold_right (fun (b,r) acc_list -> 
    if (List.exists (fun (cb,cr) -> is_dom_inst get_idom (b,r) (cb,cr)) acc_list)
      then acc_list (* (b,r) は生存区間の端ではない *)
      else (b,r)::acc_list
    ) instid_list [] 

(* let killpoint = Hashtbl.create 1024  *)

let convert_block acc0_labelgraph cfg (fname,fentry) func_domtree bnum = 
  (* Printf.printf "convert_block %d\n" bnum; *)
  (let insnlist = (try Hashtbl.find ht_bnum2gvnlist bnum with | Not_found -> failwith (Printf.sprintf "B%d not found in gvnlist" bnum))in 
  let init_env = (try Hashtbl.find bnum2propenv bnum with | Not_found -> M.empty) in 
  let last_rnum = (List.length insnlist) - 1 in 
  let init_list = (try MapInt.find bnum !block2moveddef with | Not_found -> []) in 
  let newinsnlist,new_env,_ = List.fold_right (fun ssa (acc_list,acc_env,rnum) ->
    if false (*Hashtbl.mem moved_argset (bnum,rnum)*) 
      then  (*移動済みの引数割当なのでとばす*)
        ((*Printf.printf "skip (%d,%d)\n" bnum rnum;*)
        (acc_list,acc_env,rnum-1))
      else
        convert_insn bnum (acc_list,acc_env,rnum) ssa
    ) insnlist (init_list,init_env,last_rnum) in
    (* Printf.printf "begin get parent\n";flush stdout; *)
    let parents = (get_parents_of_unique_child func_domtree bnum) in 
    (* Printf.printf "end get parent\n";flush stdout; *)
  List.iter (fun up -> Hashtbl.add bnum2propenv up new_env) parents;
  let newlastrnum = (List.length newinsnlist) - 1 in 
  let _,new_labelgraph = List.fold_right (fun ssa (rnum,acc_labelgraph) -> 
  ((add_insn_to_uselog (bnum,rnum) ssa );
    (add_insn_to_labellog (bnum,rnum) ssa );
    (* (Printf.printf "(%d,%d) : def = {%s}, use = {%s}\n" bnum rnum (S.to_string (Datagraph.get_def (bnum,rnum))) (S.to_string (Datagraph.get_use (bnum,rnum)))); *)
    (
    (* if (not(G.mem_edge !cfg bnum fentry)) || rnum <> newlastrnum then 末尾再帰でない場合, 保存すべき生存変数をログに入れる *)
    add_insn_to_subroutinelog fname (bnum,rnum) ssa);
    let acc_labelgraph' = (*干渉グラフ用 *)
      (if rnum = newlastrnum 
        then acc_labelgraph
        else GI.add_edge acc_labelgraph (bnum,rnum) (bnum,rnum+1)) in 
    (rnum-1,acc_labelgraph'))) newinsnlist (newlastrnum,acc0_labelgraph) in 
  let new_labelgraph = List.fold_left (fun inner_acc_graph vto -> GI.add_edge inner_acc_graph (bnum,max 0 newlastrnum) (vto,0)) new_labelgraph (G.succ cfg bnum) in 
  (* add_block_to_labelg bnum newinsnlist; *)
  block2moveddef := MapInt.add bnum newinsnlist !block2moveddef;
  new_labelgraph)

let is_const vexp = 
  let vexp = strip_branch_suffix vexp in 
  try
  match (vexp2defssa vexp) with
  | _ when (S.mem vexp !Dfa.loopvars) -> false
  | Assign2(_,Li,_) | Assign2(_,FLi,_) | Assign2(_,SetL,_) -> true
  | _ -> false
  with |  Not_found -> (Printf.eprintf "fail to find %s 's definition\n" vexp; raise Not_found)

let reload_cost vexp = 
  let vexp = strip_branch_suffix vexp in 
  try
  match (vexp2defssa vexp) with
  | _ when (S.mem vexp !Dfa.loopvars) -> 1000
  | Assign2(_,Li,C(i)) when -2048 <=i && i < 2048 -> 1
  | Assign2(_,Li,_) | Assign2(_,FLi,_) | Assign2(_,SetL,_) -> 2 (*本当はhi,loに分けて0になっているかもみないと厳密な命令数には対応しない*)
  | _ -> 100 (*メモリ上に退避する, 数値は適当*)
  with |  Not_found -> (Printf.eprintf "fail to find %s 's definition\n" vexp; raise Not_found)

let instid2livevars = Hashtbl.create 2048

let incr_log key mapenv = 
  let current_count = (try M.find key mapenv with | Not_found -> 0) in 
  M.add key (current_count + 1) mapenv

let liverange_stats instidlist = 
  try 
  let livecount = 
    List.fold_right (fun (b,r) acc_livecount -> 
    let livevars = (try Hashtbl.find instid2livevars (b,r) with | Not_found -> failwith "couldnot get livevars") in 
    S.fold (fun vexp acc -> incr_log vexp acc) livevars acc_livecount 
    ) instidlist M.empty in 
    let lc = M.bindings livecount in 
    let sort_by_key ls = List.sort (fun (_,s1) (_,s2) -> - (compare s1 s2)) ls in 
    sort_by_key lc
  with | Not_found -> failwith "not found in liverange stats" 

let whole_liverange_stats labelgraph = 
  liverange_stats (Datagraph.gi_all_vertices labelgraph)

let print_liverange_stats lc = 
  let to_string ls = String.concat ", " (List.map (fun (v,c) -> Printf.sprintf "%s : %d" v c) ls ) in 
  Printf.printf "liverange stats : {%s} \n" (to_string lc) 
  (* Printf.printf "liverange const stats : {%s} \n" (to_string lcc) *)

let reg_pressure_stats is_subcall instidlist = 
  try 
  let loglist = 
  List.fold_right (fun (b,r) acc_list -> 
    let livevars = (try Hashtbl.find instid2livevars (b,r) with | Not_found -> failwith "couldnot get livevars") in 
    (* let livevars = S.diff livevars (Datagraph.get_def (b,r)) in　こっちでdiffとるのは間違い, destに対する割り当ても考えないといけない *)
    ((b,r),livevars)::acc_list
    ) instidlist [] in 
  let cmpfunc = 
    (if is_subcall then (fun (id1,_) (id2,_) -> compare id1 id2) (*本来instidlistが一定の順で並んでくるはずだからsortはいらないはず?*)
    else (fun (_,sv1) (_,sv2) -> - (compare (S.cardinal sv1) (S.cardinal sv2))) ) in 
  List.sort cmpfunc loglist
  with | Not_found -> failwith "not found in reg pressure stats" 

let whole_reg_pressure_stats labelgraph = 
  reg_pressure_stats false (Datagraph.gi_all_vertices labelgraph)


let is_high_pressure sv = 
  (S.cardinal sv) > Asm.callee_num

let print_regp_stats ls = (*要変更*)
  List.iter (fun ((b,r),sv) ->
    if is_high_pressure sv then
    Printf.printf "(%d,%d) : sv = {%s} (%d)\n" b r (S.to_string sv) (S.cardinal sv) 
    (*, sc = {%s} (%d) (S.to_string sc) (S.cardinal sc) *)
  ) ls 

(* let to_calleereg = ref S.empty 関数事にリセットしていい *)

(* let is_subcall fname instid = 
  S.mem (Hashtbl.find_all subroutine_id fname) この処理重そうでいやだね? *)
let subcall_livevars = ref S.empty

(*n以下になるようにregp_list ((b,r),sv) からspill対象を選ぶ, stas_listは|sv|でsortされている*)
(*lrange_listに(vexp,liverange)がliverangeの降順でソートされてはいっている*)
let get_pressure is_subcall sv to_memvars uses = 
  if is_subcall then 
    let s = (S.diff (S.inter sv !subcall_livevars) to_memvars) in 
  (* let tmp = (S.inter to_memvars (S.inter sv !to_calleereg)) in 
    if not(S.is_empty tmp) then failwith (Printf.sprintf "memvar and calleereg? : {%s}\n" (S.to_string tmp)); *)
  (* Printf.printf "pressure = {%s}\n" (S.to_string s); *)
  S.cardinal s
  else 
  let s = (S.union (S.diff sv to_memvars) uses) in 
  (* Printf.printf "pressure = {%s}\n" (S.to_string s); *)
  S.cardinal s
let add_some maybe elem = 
  match maybe with 
  | Some(ls) -> Some(ls@[elem])
  | None -> Some([elem]) 

let check_current_pressure is_subcall regp_list n to_memvars = 
  (*すべてのラベルで問題がないならばNone, pressureがnを超えているラベルがあればそのinstidと最大のpressureのsavevarをSome((instid, sv) list)として返す*)
  (*memvarsは現在メモリに退避している変数の集合*)
  List.fold_left (fun maybe_labellist (instid,sv) -> 
    let uses = 
      if is_subcall then S.empty else (Datagraph.get_use instid) in
    (* Printf.printf "uses = {%s}\n" (S.to_string uses);*)
    (* Printf.printf "(%d,%d) : %d <= %d ? %b\n" (fst instid) (snd instid) (get_pressure is_subcall sv to_memvars uses) n ((get_pressure is_subcall sv to_memvars uses) <= n);  *)
    if (get_pressure is_subcall sv to_memvars uses) <= n then maybe_labellist
    else add_some maybe_labellist (instid,sv)
    ) None regp_list 

let compare_reload (xrange,xcost) (yrange,ycost) = 
  let cmp1 = compare xrange yrange in
  if cmp1 <> 0 then -cmp1 (*こっちがマイナスで合っている?*)
  else compare xcost ycost

let choose_mem_vars_for_a_label n maprange candidate_set = 
  let candidate_list = S.fold (fun vexp acc_list -> (vexp,((M.find vexp maprange),reload_cost vexp))::acc_list) candidate_set [] in 
  (* Printf.printf "candidate : {%s} for n = %d\n" (S.to_string candidate_set) n; *)
  let sorted_list = List.sort compare_reload candidate_list in 
  let memvars,fin_rest_num = (List.fold_left (fun (acc_set,rest_num) (vexp,_) -> 
    if rest_num <= 0 then (acc_set,0)
    else (S.add vexp acc_set,rest_num-1)
    ) (S.empty,max 0 ((S.cardinal candidate_set)-n)) sorted_list) in 
  if fin_rest_num > 0 then failwith (Printf.sprintf "candidate {%s} is not enough for n = %d\n" (S.to_string candidate_set) n)
  else 
    memvars

let rec inner_choose_mem_vars is_subcall maprange regp_list n acc_memvars = 
  match (check_current_pressure is_subcall regp_list n acc_memvars) with 
  | None -> acc_memvars
  | Some(new_regp_list) -> 
    let hd_instid,hd_sv = List.hd new_regp_list in 
    let uses = 
      if is_subcall then S.empty else (Datagraph.get_use hd_instid) in
    let n_use =  S.cardinal uses in 
    (* Printf.printf "uses(%d) : {%s}\n" n_use (S.to_string uses); *)
    let candidates = S.diff (S.diff hd_sv acc_memvars) uses in  (*ここで空になっているとまずい*) (*かつこの命令で使う値はレジスタにないといけないのでspill候補じゃない*)
    (if S.is_empty candidates then 
      (Printf.printf "n = %d\n" n; 
        List.iter (fun ((b,r),sv) -> Printf.eprintf "new_regp_list (%d,%d) : sv = {%s}\n" b r (S.to_string sv)) new_regp_list;
      Printf.eprintf "current acc_memvars : {%s}\n" (S.to_string acc_memvars);
      failwith "no candidate for memvar"));
    (* assert(n_use <= n); *)
    (if not(is_subcall) && n_use > n then failwith (Printf.sprintf "cannot reduce reg pressure at (%d,%d) : n_use = %d, n = %d\n" (fst hd_instid) (snd hd_instid) n_use n));
    let new_memvar = 
      (* (if is_subcall then 
        (let current_callee = (S.inter hd_sv !to_calleereg) in 
        let n_reserved = S.cardinal current_callee in 
        let candidate = (S.diff (S.diff hd_sv acc_memvars) current_callee) in 
        assert(n_reserved <= n);
      (Printf.printf "(%d,%d) : current_callee = {%s}, candidate = {%s}\n" (fst hd_instid) (snd hd_instid) (S.to_string current_callee) (S.to_string candidate);
        choose_mem_vars_for_a_label (n-n_reserved) maprange candidate))
      else  *)
        choose_mem_vars_for_a_label (n-n_use) maprange candidates  in 
            (
              (* Printf.printf "new_memvars : {%s}\n" (S.to_string new_memvar); *)
            inner_choose_mem_vars is_subcall maprange new_regp_list n (S.union new_memvar acc_memvars))

(* let choose_mem_vars lrrange_list regp_list n = 
  try 
  inner_choose_mem_vars true (M.of_list lrrange_list) regp_list n S.empty  
  with | Not_found ->  failwith "maprange failed" *)

let check_subcall_vars calleenum subcalllist maprange regp_list rematerials  = 
  (* let sub_llrange_list = (liverange_stats subcalllist) in 
  let sub_regp_list = (reg_pressure_stats true subcalllist) in  *)
  let new_subcall_livevars = List.fold_right (fun (b,r) acc_set -> 
    let livevars = (try Hashtbl.find instid2livevars (b,r) with | Not_found -> failwith "couldnot get livevars") in 
    S.union livevars acc_set) subcalllist S.empty in
  subcall_livevars := new_subcall_livevars;
  (* print_liverange_stats sub_llrange_list;
  print_regp_stats sub_regp_list; *)
  let mem_callee = inner_choose_mem_vars true maprange regp_list calleenum rematerials in 
  (* Printf.printf "subcall mem callee : {%s}\n" (S.to_string mem_callee); *)
  mem_callee

let check_all_livevars fname labelgraph save_vars rematerials = 
  let subcalllist = Hashtbl.find_all subroutine_id fname in 
  (* Printf.printf "subcall\n"; *)
  let calleenum = 
    if KNormal.is_mid_rec (Ssa.remove_alpha fname) then (Printf.eprintf "don't use callee reg for mid rec func %s" fname;0) else
     (Asm.callee_num) in 
  let llrange_list = (whole_liverange_stats labelgraph) in
  let regp_list = (whole_reg_pressure_stats labelgraph) in 
  let maprange = M.of_list llrange_list in 
  let mem_callee = check_subcall_vars calleenum subcalllist maprange regp_list rematerials in 
  (* Printf.printf "all label\n"; *)
  
  (* print_liverange_stats llrange_list;
  print_regp_stats regp_list; *)
  let rest_callee_num = Asm.callee_num - (min (S.cardinal save_vars) Asm.callee_num) in (*これ実際にも保存するのがsave_varsというわけじゃないね...? Asm.callee_num - (S.cardinal save_vars) + (S.cardinal mem_callee) save_varsには定数も含まれるから変だったってことか? *)
  assert(rest_callee_num >= 0);
  let current_mem_vars = S.union save_vars rematerials in 
  let mem_caller = S.diff (inner_choose_mem_vars false maprange regp_list (Asm.caller_num + rest_callee_num) current_mem_vars) current_mem_vars in
  (* Printf.printf "subcall mem caller : {%s}\n" (S.to_string mem_caller); *)
  (mem_callee,mem_caller)

let fentry2memvars = Hashtbl.create 256
let fentry2rematerials = Hashtbl.create 256

let get_livevars (b,r) = 
  try  Hashtbl.find instid2livevars (b,r)
  with | Not_found -> Printf.eprintf "unable to get livevars for (%d,%d)" b r;raise Not_found

let type_name = [|"caller";"callee";"rematerial";"memvar";"use"|]


let get_bid_from_bfrom bfrom =
  try 
  let branchid = Option.get (List.find_index (fun b -> b = bfrom) !bfrom_list) in 
    branchid
with | e -> Printf.eprintf "couldn't find bid from B%d\n" bfrom;raise e
let get_bthen_from_bfrom bfrom = 
  let bid = get_bid_from_bfrom bfrom in List.nth !bthen_list bid
let get_belse_from_bfrom bfrom = 
  let bid = get_bid_from_bfrom bfrom in List.nth !belse_list bid



let try_bypass_condj acc_g bnum instlist lastrnum : G.t = 
  if not(lastrnum > 0 && (Ssa.is_phiw (List.nth instlist 0))) then acc_g
  else 
    (match (List.nth instlist 0),(List.nth instlist lastrnum) with 
      | Phi_w([phidst]),CondJ(x,relop,V(y)) when phidst = x && y = vexp_zero -> 
        (
          let preds = G.pred acc_g bnum in 
        let inner_new_g = List.fold_left (fun inner_acc_g pred -> 
          let pred_gvnlist = (try MapInt.find pred !block2moveddef with | Not_found -> failwith "not found in try bypass condj") in 
          let beforelast,lastinst = U.list_split_last pred_gvnlist in 
          (match lastinst with 
            | Phi_r([z]) when z = vexp_zero -> 
              (
              let target_vexp = Ssa.get_def (List.nth instlist 0) in 
              let block_liveoutvars = get_livevars (bnum,lastrnum) in
              if S.mem target_vexp block_liveoutvars || lastrnum > 1 then ((*Printf.printf "can't bypass condj, because %s live out condj block B%d\n" target_vexp bnum;*)inner_acc_g)
              else (
                (* Printf.printf "can bypass condj from B%d, because %s doesn't live out condj block B%d\n" pred target_vexp bnum;
              (if lastrnum > 1 then Printf.printf "find phiw need to move before insts at B%d\n" bnum); *)
              let insert_insts = U.list_sub instlist 1 (lastrnum -1) in
              (*phidst -> zへmapする必要あり*)
              let mapped_insert_insts = List.map (Ssa.map2 (fun x -> x) (fun x -> if x = phidst then z else x)) insert_insts in 
              let cond_flag = Ssa.calc_relop relop 0 0 in 
              block2moveddef := MapInt.add pred (beforelast@mapped_insert_insts) !block2moveddef;
              Hashtbl.remove Dfa.branch2cont pred;
              let newdest = if cond_flag then (get_bthen_from_bfrom bnum) else (get_belse_from_bfrom bnum) in 
              Datagraph.change_dest inner_acc_g pred bnum newdest
              ))
            | _ -> inner_acc_g)
          ) acc_g preds in 
            inner_new_g)
          (* let new_preds = G.pred inner_new_g bnum in 
          (match new_preds with 
            | [] -> Printf.printf "B%d's new pred is empty\n" bnum
            | [pred] -> (Printf.printf "B%d's sole new pred is B%d\n" bnum pred;
                let pred_gvnlist = (try MapInt.find pred !block2moveddef with | Not_found -> failwith "not found in try bypass condj") in 
                let beforelast,lastinst = U.list_split_last pred_gvnlist in 
                let headinst,tailinst = (match instlist with | h::ls -> h,ls | _ -> assert(false)) in 
                let new_headssa = 
                  (match lastinst,headinst with
                    | Phi_r([copy_src]),Phi_w([copy_dst]) ->  Copy([copy_dst],[copy_src])
                    | _ -> assert(false)
                  ) in 
                block2moveddef := (MapInt.add pred beforelast (MapInt.add bnum (new_headssa::tailinst) !block2moveddef)))
            | _ -> ());inner_new_g) *)
      | _ -> acc_g)

let check_all_bypass_condj fentry g = 
  let all_v = Datagraph.g_all_vertices g in 
  let all_bfrom = U.list_inter !bfrom_list all_v in 
  let new_g = 
    List.fold_left (fun acc_g bnum -> 
      let instlist = (try MapInt.find bnum !block2moveddef with | Not_found -> failwith "moved def not found") in 
      let lastrnum = U.list_get_last_idx instlist in 
      try_bypass_condj acc_g bnum instlist lastrnum
      ) g all_bfrom in 
  Hashtbl.replace ht_cfg fentry new_g

let print_categorized_livevars (b,r) = 
  try 
  let fentry = Dfa.get_fentry b in 
  let memvars = Hashtbl.find fentry2memvars fentry in 
  let rematerials = Hashtbl.find fentry2rematerials fentry in 
  let calleesaves = Hashtbl.find fentry2calleesaves fentry in 
  let get_type x =  if S.mem x memvars then 3 else if S.mem x rematerials then 2 else if S.mem x calleesaves then 1 else 0 in 
    (*caller :0, callee: 1, rematerial: 2, memvar: 3*)
    let livevars = get_livevars (b,r) in 
    let uses = Datagraph.get_use (b,r) in 
    let splitarray = [|[];[];[];[]|] in  
    S.iter (fun x -> let idx = get_type x in splitarray.(idx) <- x::splitarray.(idx) ) livevars;
    Printf.printf "livevars at (%d,%d) : " b r;
    List.iter (fun idx -> Printf.printf "%s(%d) = {%s} , " type_name.(idx) (List.length splitarray.(idx)) (U.list_to_string (List.sort (fun vexp1 vexp2 -> compare (Dfa.vexp2vnum (strip_branch_suffix vexp1)) (Dfa.vexp2vnum (strip_branch_suffix vexp2))) splitarray.(idx))) ) [0;1;2;3];
    Printf.printf "%s : {%s} \n" type_name.(4) (U.list_to_string (List.sort (fun vexp1 vexp2 -> compare (Dfa.vexp2vnum (strip_branch_suffix vexp1)) (Dfa.vexp2vnum (strip_branch_suffix vexp2))) (S.to_list uses)))
  with | e -> Printf.eprintf "unable to print categorized livevars for (%d,%d)" b r;raise e 
let get_last_row b = (*本当は二分探索で書くべき*)
  let rec find_last_row b r = 
    (if Hashtbl.mem instid2livevars (b,r) then find_last_row b (r+1)
    else max 0 (r-1))
  in find_last_row b 0

let convert_func (fentry, fend) = 
  (subcall_livevars := S.empty;
  (* Printf.eprintf "function from %d\n" fentry; *)
  let cfg = (try Hashtbl.find ht_cfg fentry with | Not_found -> failwith (Printf.sprintf "cfg not found for function from %d" fentry)) in 
  let get_idom = (try Hashtbl.find fentry2idom fentry with | e -> Printf.eprintf "idom not found for funciton from %d\n" fentry;raise e) in 
  let get_domlist v = List.rev (Dom.idom_to_dom_tree cfg get_idom v) in (*domlistはいったん降順で返ってくるぽい*)

  let g = get_dom_tree get_domlist (fentry,fend) G.empty in 
  let topolist =  TopoG.fold (fun v acc -> v::acc) g [] in 
  let fname = (get_fname fentry) in 
  (* Printf.printf "topo (%d,%d) : {%s}\n" fentry fend (String.concat ", " (List.map string_of_int topolist)); *)
  let labelgraph = List.fold_left (fun acc_labelgraph b -> convert_block acc_labelgraph cfg (fname,fentry) g b) GI.empty topolist in 
  (*干渉グラフをチェック*)
  let get_livevars = Datagraph.get_live labelgraph in
  let clique_size = 
  (GI.fold_vertex (fun (b,r) acc -> 
    let livevars = get_livevars (b,r) in 
    Hashtbl.add instid2livevars (b,r) livevars;
    (* Printf.printf "livevars at (%d,%d) are {%s}\n" b r (String.concat ", " (S.to_list livevars) ) ; *)
    max (S.cardinal livevars) acc
    ) labelgraph 0) in 
  (* (if clique_size > Asm.availreg_num then raise Prespill); *)
  let ((one_inst_reloads, funccall_savevars),maxsave) = List.fold_left (fun ((acc_one_inst_reloads, acc_funccall_savevars),accmax) (b,r) -> 
    let livevars = (try Hashtbl.find instid2livevars (b,r) with | Not_found -> failwith "couldnot get livevars") in
    (* Printf.printf "save livevars at (%d,%d) are {%s}\n" b r (String.concat ", " (S.to_list livevars) ) ; *)
    let livevars = S.diff livevars (Datagraph.get_def (b,r)) in
    let save_const,save_vars = S.partition is_const (S.diff livevars (Datagraph.get_def (b,r))) in
    (* Printf.printf "vars to save at (%d,%d) are {%s}, {%s}\n" b r (String.concat ", " (S.to_list save_const)) (String.concat ", " (S.to_list save_vars)); *)
    let add_one_inst_reloads, add_funccall_savevars = 
      if SetInt.mem b !Dfa.loopblock then S.empty,livevars else 
        S.partition (fun vexp -> reload_cost vexp <= 2) livevars in 
    (S.union acc_one_inst_reloads add_one_inst_reloads,S.union acc_funccall_savevars add_funccall_savevars),(max accmax (S.cardinal livevars))
    ) ((S.empty,S.empty),0) (Hashtbl.find_all subroutine_id fname) in 
    

    let callee_save_num = maxsave in 
    (
       if KNormal.is_mid_rec (Ssa.remove_alpha fname) then
      (*末尾じゃない再帰ではcallee save regを使うと反って命令数が増える傾向にある -> 退避はメモリにしたい*)
      (Printf.printf "%s : Mid rec func, save livevars in memory\n" fname;
        (if clique_size < Asm.caller_num then 
          (Hashtbl.add fentry2memvars fentry funccall_savevars;
          Hashtbl.add fentry2rematerials fentry one_inst_reloads;
          Hashtbl.add fentry2calleesaves fentry S.empty)
        else (*ここら辺の共通部分もまとめたい*)
          let (mem_callee,mem_caller) = (check_all_livevars fname labelgraph funccall_savevars S.empty) in 
          let callee_mem_consts,callee_mem_vars = S.partition is_const mem_callee in 
          let caller_mem_consts,caller_mem_vars = S.partition is_const mem_caller in 
          Hashtbl.add fentry2memvars fentry (S.union callee_mem_vars caller_mem_vars);
          Hashtbl.add fentry2rematerials fentry (S.union (S.union callee_mem_consts caller_mem_consts) one_inst_reloads);
          Hashtbl.add fentry2calleesaves fentry (S.diff (S.diff funccall_savevars callee_mem_consts) callee_mem_vars)
          ) )
    else 
      if callee_save_num > Asm.callee_num then (
      Printf.printf "%s : Can't save all livevars in callee save reg\n" fname;
    (* Printf.printf "vars to save in %s are {%s}, {%s}\n" fname (String.concat ", " (S.to_list rematerials)) (String.concat ", " (S.to_list savevars)); *)
       let (mem_callee,mem_caller) = (check_all_livevars fname labelgraph funccall_savevars S.empty) in 
       let callee_mem_consts,callee_mem_vars = S.partition is_const mem_callee in 
       let caller_mem_consts,caller_mem_vars = S.partition is_const mem_caller in 
       Hashtbl.add fentry2memvars fentry (S.union callee_mem_vars caller_mem_vars);
       Hashtbl.add fentry2rematerials fentry (S.union (S.union callee_mem_consts caller_mem_consts) one_inst_reloads);
       Hashtbl.add fentry2calleesaves fentry (S.diff (S.diff funccall_savevars callee_mem_consts) callee_mem_vars)
    )
    else 
       if clique_size < (Asm.caller_num + (max (Asm.callee_num - callee_save_num) 0)) then (* Printf.printf "%s : Can save all livevars in callee save reg\n" fname*)
      (Hashtbl.add fentry2memvars fentry S.empty;
      Hashtbl.add fentry2rematerials fentry one_inst_reloads;
      Hashtbl.add fentry2calleesaves fentry funccall_savevars)
    else (
      Printf.printf "%s : More precise analysis needed to save all livevars in callee save reg\n" fname;
      let (mem_callee,mem_caller) = (check_all_livevars fname labelgraph funccall_savevars S.empty) in 
      let callee_mem_consts,callee_mem_vars = S.partition is_const mem_callee in 
      let caller_mem_consts,caller_mem_vars = S.partition is_const mem_caller in 
      Hashtbl.add fentry2memvars fentry (S.union callee_mem_vars caller_mem_vars);
      Hashtbl.add fentry2rematerials fentry (S.union (S.union callee_mem_consts caller_mem_consts) one_inst_reloads);
      Hashtbl.add fentry2calleesaves fentry (S.diff (S.diff funccall_savevars callee_mem_consts) callee_mem_vars)
      ));
  flush stdout
  (* ;Printf.printf "func %s\n" fname; *)
  ;check_all_bypass_condj fentry cfg
  (* ;
  let memvars = Hashtbl.find fentry2memvars fentry in 
  let rematerials = Hashtbl.find fentry2rematerials fentry in 
  let calleesaves = Hashtbl.find fentry2calleesaves fentry in 
  let get_type x =  if S.mem x memvars then 3 else if S.mem x rematerials then 2 else if S.mem x calleesaves then 1 else 0 in  *)
    (*caller :0, callee: 1, rematerial: 2, memvar: 3*)
  (* (GI.iter_vertex (fun (b,r) -> 
    let livevars = Hashtbl.find instid2livevars (b,r) in 
    let uses = Datagraph.get_use (b,r) in 
    let splitarray = [|[];[];[];[]|] in  
    S.iter (fun x -> let idx = get_type x in splitarray.(idx) <- x::splitarray.(idx) ) livevars;
    Printf.printf "livevars at (%d,%d) : " b r;
    List.iter (fun idx -> Printf.printf "%d(%d) = {%s} , " idx (List.length splitarray.(idx)) (U.list_to_string (List.sort (fun vexp1 vexp2 -> compare (Dfa.vexp2vnum (strip_branch_suffix vexp1)) (Dfa.vexp2vnum (strip_branch_suffix vexp2))) splitarray.(idx))) ) [0;1;2;3];
    Printf.printf "4 : {%s} \n" (U.list_to_string (List.sort (fun vexp1 vexp2 -> compare (Dfa.vexp2vnum (strip_branch_suffix vexp1)) (Dfa.vexp2vnum (strip_branch_suffix vexp2))) (S.to_list uses)));
    ) labelgraph); *)
  (* Printf.printf "%s clique size : %d\n" (get_fname fentry) clique_size; *)
  (* let (vs,vt) = (get_vrange fend) in 
  Printf.printf "func (%d,%d) : vrange (%d,%d)\n" fentry fend vs vt; *)
  (* iter_range (fun vacc -> 
    let uselist = (Hashtbl.find_all vexp2uselog (vnum2vexp vacc)) in
    let filterlist = filter_lastuse get_idom uselist in 
    (* Printf.printf "#%d : {%s} -> {%s}\n" vacc (String.concat ", " (List.map (fun (b,r) -> Printf.sprintf "(%d,%d)" b r) uselist) ) (String.concat ", " (List.map (fun (b,r) -> Printf.sprintf "(%d,%d)" b r) filterlist)); *)
    Hashtbl.add killpoint vacc (IidSet.of_list filterlist)    
    ) (get_vrange fend) *)
    )


module Dot4 = Graphviz2.Dot2(struct
  include CommonDotArg
  let vertex_attributes = bnum2insttable (fun _ bnum -> ((*Printf.eprintf "is B%d in table? : %b\n" bnum (MapInt.mem bnum !block2moveddef) ;*)MapInt.find bnum !block2moveddef)) () Ssa.to_string
end)

let is_zero_iori z = 
  match z with 
  | C(0) -> true
  | V(z2) when (z2 = vexp_zero || z2 = Asm.reg_zero) -> true
  | _ -> false

let revert_branch_from_bfrom bfrom =
  let bid = Option.get (List.find_index (fun b -> b = bfrom) !bfrom_list) in 
  let bthen, belse = List.nth !bthen_list bid, List.nth !belse_list bid in
  bthen_list := U.list_change_nth !bthen_list bid belse;
  belse_list := U.list_change_nth !belse_list bid bthen

let peephole_fcmp bnum = 
  let instlist = MapInt.find bnum !block2moveddef in 
  let liveoutvars = get_livevars (bnum,U.list_get_last_idx instlist) in 
  try 
    let beforelast2,last2,last = U.list_split_last2 instlist in  
    (match last2,last with 
    | Assign3(vexpdst,op1,Fle,op2),CondJ(vexpdst',Eq,z) when vexpdst = vexpdst' && is_zero_iori z && not(S.mem vexpdst liveoutvars) -> 
      (let new_instlist = beforelast2@[CondJ(op1,FGt,op2)] in 
      block2moveddef := MapInt.add bnum new_instlist !block2moveddef)
    | Assign3(vexpdst,op1,Fle,op2),CondJ(vexpdst',NEq,z) when  vexpdst = vexpdst' && is_zero_iori z && not(S.mem vexpdst liveoutvars) -> 
      (let new_instlist = beforelast2@[CondJ(op1,FGt,op2)] in
      revert_branch_from_bfrom bnum; 
      block2moveddef := MapInt.add bnum new_instlist !block2moveddef)
    | Assign3(vexpdst,op1,Feq,op2),CondJ(vexpdst',Eq,z) when  vexpdst = vexpdst' && is_zero_iori z && not(S.mem vexpdst liveoutvars) -> 
      (let new_instlist = beforelast2@[CondJ(op1,FNeq,op2)] in
      block2moveddef := MapInt.add bnum new_instlist !block2moveddef)
    | Assign3(vexpdst,op1,Feq,op2),CondJ(vexpdst',NEq,z) when  vexpdst = vexpdst' &&  is_zero_iori z && not(S.mem vexpdst liveoutvars) -> 
      (let new_instlist = beforelast2@[CondJ(op1,FNeq,op2)] in
      revert_branch_from_bfrom bnum; 
      block2moveddef := MapInt.add bnum new_instlist !block2moveddef)
    | _ -> failwith "dummy"
    );(Printf.printf "reverted B%d for fcmp\n" bnum)
  with | Failure _ -> () 


let f _ = (*(g, Asm.Prog(data, fundefs, e),(fentry_list,fend_list)) = *)
  (* Printf.eprintf "fentrylist : {%s}\n" (String.concat ", " (List.map string_of_int fentry_list)); *)
  (List.iter2 (fun fentry fend -> 
    try 
      cfg := Hashtbl.find ht_cfg fentry;
      current_branch_oneof := SetSetInt.of_list (Hashtbl.find_all branch_oneof (get_fname fentry));
      (* Printf.eprintf "bps scan_func from %d not found\n" fentry; *)
      scan_func (fentry,fend)
    with | Not_found -> Printf.eprintf "function from %d not found\n" fentry 
  ) !fentry_list !fend_list);
  (* Hashtbl.iter (fun vexp bnum -> Printf.printf "%s moved to B%d\n" vexp bnum) moved_defv; *)
  Printf.eprintf "bpschedule : fin scan_func\n";
  flush stderr;
  (* schedule_argsetting_all (); *)
  Printf.eprintf "bpschedule : fin schedule argset\n";
  flush stderr;
  (* Hashtbl.iter (fun (b,r) bnum -> Printf.printf "inst (%d,%d) moved to B%d\n" b r bnum) moved_argset; *)
  (* (U.list_parallel_iter2 (fun fentry fend -> Printf.printf "func (%d,%d)\n" fentry fend) !fentry_list !fend_list); *)
  (
  List.iter2
  (* U.list_parallel_iter2  *)
  (fun fentry fend -> 
    try 
      (* cfg := Hashtbl.find ht_cfg fentry; *)
      convert_func (fentry,fend)
    with | Not_found -> Printf.eprintf "function from %d not found\n" fentry 
  ) !fentry_list !fend_list);
  Printf.eprintf "bpschedule : fin convert_func\n";
  flush stderr;
  Printf.eprintf "#block2moveddef = %d\n" (MapInt.cardinal !block2moveddef);
  Dfa.scan_blocks peephole_fcmp (1,!Dfa.counter);
  (let oc = open_out_bin "movedgraph.dot" in fprint_graphs oc ht_cfg Dot4.output_graph;Out_channel.close oc);
  (* print_uselog (1,!vcounter); *)
  (* Hashtbl.iter (fun (b,r) set -> Printf.printf "(%d,%d) : def = %s\n"b r (String.concat ", " (S.to_list set))) instid2def;
  Hashtbl.iter (fun (b,r) set -> Printf.printf "(%d,%d) : use = %s\n"b r (String.concat ", " (S.to_list set))) instid2use; *)
  (*  *)
  (* Hashtbl.iter (fun vacc set ->  Printf.printf "#%d : {%s}\n" vacc  (String.concat ", " (List.map (fun (b,r) -> Printf.sprintf "(%d,%d)" b r) (IidSet.to_list set)))) killpoint; *)
  (* Hashtbl.iter (fun fentry rematerials -> if not(S.is_empty rematerials) then Printf.printf "rematerials in function from %d : {%s} \n" fentry (S.to_string rematerials)) fentry2rematerials;
  Hashtbl.iter (fun fentry memvars -> if not(S.is_empty memvars) then Printf.printf "memvars in function from %d : {%s} \n" fentry (S.to_string memvars)) fentry2memvars;
  Hashtbl.iter (fun fentry callees -> if not(S.is_empty callees) then Printf.printf "callees in function from %d : {%s} \n" fentry (S.to_string callees)) fentry2calleesaves   *)
  (* (g, Asm.Prog(data, fundefs, e),(fentry_list,fend_list)) *)
