(*branch parallel scheduling, 分岐の兄弟で共通しているコードを可能なら移動させよう*)
open Datagraph
open Ssa
open Dfa
open Asm

module Dom = Graph.Dominator.Make(G)
let cfg = ref G.empty 

module MapInt = Map.Make
  (struct
    type t = int
    let compare = compare
  end)

(* 値番号 -> それを定義するブロック defenv*)
(* dfs沿いに自然に定義されているものと, そうでない場合に検証するためのグローバルなもの両方を持つ必要があるか? *)
(* let global_defenv = ref M.empty グローバルといえど, 同じ関数内だけの情報でいい *)
let cvexp_env = ref M.empty 
let init_env = M.add vexp_zero 0 M.empty (* 最初にdefenvに #0 = 0 / 0.0 を追加しておく, 定義しているブロック番号はダミーでいい? *)

(*ブロック名 -> 新しい命令列*)
let block2moveddef = ref MapInt.empty
let move_top_insn move_bnum ssa = 
  let acc_list = (try MapInt.find move_bnum !block2moveddef with | Not_found -> []) in 
  block2moveddef := MapInt.add move_bnum (ssa::acc_list) !block2moveddef

let move_bottom_insn move_bnum ssa = 
  let acc_list = (try MapInt.find move_bnum !block2moveddef with | Not_found -> []) in 
  block2moveddef := MapInt.add move_bnum (acc_list@[ssa]) !block2moveddef

(* let ht_block2insts2 = Hashtbl.create 1024  *)

(* let check_insn ssa acc_env = 
  match scrutinee with
  | pattern -> pattern

let check_block bnum acc_env = 
 let insnlist = (try Hashtbl.find ht_block2insts bnum with |  Not_found -> failwith (Printf.sprintf "block %d not found" bnum)) in 
 List.fold_left (fun acc_env' insn -> check_insn insn acc_env') acc_env insnlist

let check_bf_commonvexp bfset = 
  let cvexp_env = 
  SetInt.fold (fun acc_env bnum -> check_block bnum acc_env) M.empty bfset in 

let check_bf_commonvexp_all = 
  SetSetInt.iter (fun sint -> check_bf_commonvexp sin) !branch_oneof *)



(*rnum : ブロックの中の行番号(0-indexed) *)
let scan_insn (bnum,rnum) ssa (acc,defenv) : ssa list * int M.t = 
  match ssa with
  | Copy(var,vexp) when M.mem vexp defenv -> (acc@[Copy(var,vexp)]), defenv (*dominatorで定義済みなのでそのまま利用可能*)
  | Copy(var,vexp) when Hashtbl.mem newv2def var -> (*ここで新しく定義, この挙動怪しい*)
      (match (Hashtbl.find newv2def var) with 
      | Copy(vexpi,dest) when is_reg dest -> acc@[Copy(vexpi,(remove_alpha dest))], (M.add vexp bnum defenv)
      | e -> acc@[e], (M.add vexp bnum defenv))
  | CondJ(x,relop,yi) -> (acc@[CondJ(x,relop,yi)]),defenv
  | Memacc(x,y,memacc,zi) when is_memacc_store memacc -> (acc@[Memacc(x,y,memacc,zi)]),defenv
  | Copy(var,vexp) -> 
      let d_vexp = (try Hashtbl.find vexp2instid vexp with Not_found -> failwith (Printf.sprintf "definition of %s not found" vexp)) in 
      let set1 = si_of_list [(fst d_vexp); bnum] in 

      (*ここの処理見直し*)
      if (SetSetInt.exists (fun set_i -> SetInt.subset set1 set_i) !branch_oneof) (*とりあえず並列な分岐の候補か調べるために, oneofの部分集合か見ている. 本当は集合群みたいな構造でやるのがいい. *)
        then (*定義の位置を移動させられるかチェック, だめなら個別に定義?*)
          ((try  
            let acc_list = (M.find vexp !cvexp_env) in (* こっちに定義しているブロックはすでに入っているはず? *)
            cvexp_env := M.add vexp (acc_list@[(bnum,rnum)])  !cvexp_env
          with | Not_found -> cvexp_env := M.add vexp [d_vexp;(bnum,rnum)]  !cvexp_env); 
          (acc@[ssa]),defenv)
        else (*この場合は別の値番号として置き直す? いったん起きないケースになっている気がするが*)
          (Printf.eprintf "B%d : %s has unexpected pattern\n" bnum (to_string ssa);
          ((try  
            let acc_list = (M.find vexp !cvexp_env) in (* こっちに定義しているブロックはすでに入っているはず? *)
            cvexp_env := M.add vexp (acc_list@[(bnum,rnum)])  !cvexp_env
          with | Not_found -> cvexp_env := M.add vexp [d_vexp;(bnum,rnum)]  !cvexp_env); 
          
          (acc@[ssa]),defenv)) (*いったん*)
  | Phi_r(x) -> acc@[ssa],defenv
  | Phi_w(x) -> acc@[ssa],(M.add x bnum defenv)
  | _ -> failwith (Printf.sprintf "not expected ssa form : %s" (to_string ssa) )

let rec scan_block bnum defenv = 
  let insnlist = (try Hashtbl.find ht_bnum2gvnlist bnum with |  Not_found -> failwith (Printf.sprintf "block %d not found" bnum)) in
  let _,(newinsnlist, newenv) = List.fold_left (fun (rnum,(acc_list,acc_env)) insn -> (rnum+1,scan_insn (bnum,rnum) insn (acc_list,acc_env)) ) (0,([],defenv)) insnlist in 
  (*newinsnlistに対するハッシュ追加処理?*)
  newenv 


let rec dfs_domtree get_domlist from search_func acc_0 = (*なんか抽象的なdfs*)
  let acc_1 = search_func from acc_0 in (* ここで訪れたノードに対する処理 *)
  let domlist = get_domlist from in 
  List.iter (fun v -> (*Printf.eprintf "search B%d\n" v;*) dfs_domtree get_domlist v search_func acc_1) domlist (*foldではなくiterが正しい?*)

let rec set_argument fentry insn_list acc_env =
  match insn_list with 
  | [] -> acc_env
  | Copy(vexpi,dest)::ls when is_reg dest -> set_argument fentry ls (M.add vexpi fentry acc_env) 
  | _ -> assert(false)

let moved_defv = Hashtbl.create 64

let inner_can_move get_idom bto vexp = 
  let d_vexp,_ = Hashtbl.find vexp2instid vexp in 
    let is_dom = (d_vexp = bto ) || Dom.idom_to_dom get_idom d_vexp bto in 
    (* Printf.printf "dom %d %d ? : %b\n" d_vexp bto is_dom; *)
      if is_dom then true (*dom x y <=> x dominates y*)
      else (*他の定義も動かさないといけなくなるのでいったんなし, もしほかの定義を動かしていたらにしよう*)
        (try 
          let moved = Hashtbl.find moved_defv vexp in 
          let is_dom = (moved = bto ) || Dom.idom_to_dom get_idom moved bto in 
          (* Printf.printf "dom %d %d ? : %b\n" moved bto is_dom; *)
          is_dom
          (*bto = movedでもtrueを返してほしい. これmovedを取得するためのテーブルが違くない? なぜうまく行っていたの? 判定が逆?*)
        with | Not_found -> false)

let rec can_move get_idom ssa (bfrom,bto) = 
  let g = inner_can_move get_idom bto in 
  let iori_can_move xi = 
    (match xi with 
      | C(_) -> true
      | V(x) -> g x) in 
  match ssa with 
  | Assign2(_,Li,_) | Assign2(_,FLi,_) | Assign2(_,SetL,_) -> true 
  | Assign2(_,Neg,C(_)) | Assign2(_,FNeg,C(_)) -> true
  | Copy(_,vexp) when vexp = "#0" -> true (*zero即値のための場合分け*)
  | Assign2(_,Neg,V(vexp)) | Assign2(_,FNeg,V(vexp)) | Copy(_,vexp)-> g vexp
  | Assign3(_,y,_,zi) | Memacc(_,y,Ld,zi) | Memacc(_,y,FLd,zi) -> (g y) && (iori_can_move zi) (*y , ziをチェック*)
  | Memacc(x,y,_,zi) -> (g x) && (g y) && (iori_can_move zi)
  | _ -> false (* それ以外は移動できないことにする *)

let get_bf_maxinter get_idom uselist = (*uselistはinstid = (bnum,rnum) list*) 
  let domsetlist = List.map (fun (v,_) -> let domlist = (Dom.idom_to_dominators get_idom v) in SetInt.of_list domlist ) uselist in (*uselistは長さ2以上の想定*)
    let inter = List.fold_left (fun acc_set s -> SetInt.inter acc_set s) (List.hd domsetlist) (List.tl domsetlist) in 
    (SetInt.max_elt inter)

let get_def (bnum,rnum) = 
  let ssa = List.nth (Hashtbl.find ht_bnum2gvnlist bnum) rnum in 
  match ssa with 
  | Copy(var,vexp) -> Hashtbl.find newv2def var (*ここでvexpが一致していることを確認するといい? *)
  | _ -> assert(false)

let rec get_dom_tree get_domlist (bnum,fend) acc_g : Datagraph.G.t = 
  if bnum > fend then acc_g else 
  let acc_g' = List.fold_left (fun g vto -> G.add_edge g bnum vto) acc_g (get_domlist bnum) in 
    get_dom_tree get_domlist (bnum+1,fend) acc_g'

module TopoG = Graph.Topological.Make(G)

let scan_func (fentry, fend) = 
  let get_idom = Dom.compute_idom !cfg fentry in 
  let get_domlist v = List.rev (Dom.idom_to_dom_tree !cfg get_idom v) in (*domlistはいったん降順で返ってくるぽい*)

  let entry_insnlist = (try Hashtbl.find ht_bnum2gvnlist fentry with |  Not_found -> failwith (Printf.sprintf "function (%d,%d) entry not found" fentry fend)) in 
    let argset_list = List.map (fun ssa -> 
      match ssa with 
      | Copy(argi,vexpi) -> 
        (try Hashtbl.find newv2def argi  with | Not_found -> failwith (Printf.sprintf "no defenition of %s = %s" argi vexpi))
      | _ -> assert(false)
      ) entry_insnlist in 
  let entryenv = set_argument fentry argset_list init_env in
  (* global_defenv := entryenv; 関数毎にdefenvを分ける *)
  cvexp_env := M.empty; (* 関数毎の分岐共通変数をチェックするように *)
  dfs_domtree get_domlist fentry scan_block entryenv;
  M.iter (fun vexp uselist -> 
    (
      Printf.printf "cv %s : { %s }\n" vexp (String.concat ", " (List.map (fun (b,r) ->  (string_of_int b)^"_r"^(string_of_int r) ) uselist));
    (let maxinter = get_bf_maxinter get_idom uselist in 
       (*こちらは値番号の定義位置を変えるので, レジスタに引数を代入するタイミングを変える以下のargset系と少し事情が違う.*)
      (*なんならこっちは定義を動かせるか確認するから, (bnum,rnum) の命令を見るわけじゃないな...そしてvexpから定義を確認するのが難しい? -> uselistの先頭が定義の命令なことを使える*)
      let (bnum,rnum) = List.hd uselist in 
      let ssa = get_def (bnum,rnum) in 
      if (can_move get_idom ssa (bnum,maxinter)) 
        then (if not(Hashtbl.mem moved_defv vexp) then Hashtbl.add moved_defv vexp maxinter;
              move_bottom_insn maxinter ssa) (*何行目のやつを動かすか決めないとダメな気がする*) (*追加されていない場合のみ追加?*)
        else Printf.printf "Cannot move %s\n" (to_string ssa)
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

let rec make_argset insnlist acc_set =
  match insnlist with 
  | [] -> acc_set
  | Copy(dest,vexp)::ls when (is_reg dest) -> 
      let regname = (remove_alpha (strip_branch_suffix dest)) in 
      make_argset ls (SetId2.add (regname,vexp) acc_set)
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

let moved_argset = Hashtbl.create 128 

let schedule_argsetting bflist = 
  let checklist = make_argset (Hashtbl.find ht_bnum2gvnlist (List.hd bflist)) SetId2.empty in 
  let commoncopyset = List.fold_left (fun acc_check bnum -> 
    let newcheck = make_argset (Hashtbl.find ht_bnum2gvnlist bnum) SetId2.empty in check_inter acc_check newcheck
  ) checklist (List.tl bflist) in 
  if (SetId2.is_empty commoncopyset) then ()
  else 
  SetId2.iter (fun (reg,vexp) -> Printf.printf "commonarg : %s = %s in %s\n" reg vexp (string_of_bf bflist);
    (let uselist = get_argset_uselist (reg,vexp) bflist in 
    let fentry = get_fentry (List.hd bflist) in 
    let get_idom = Dom.compute_idom !cfg fentry in (*ここでgがいる!*)
      (let maxinter = get_bf_maxinter get_idom uselist in 
      let ssa = Copy(reg,vexp) in 
      List.iter (fun (bnum,rnum) -> (*こちらは値番号の定義位置を変えるので, レジスタに引数を代入するタイミングを変える以下のargset系と少し事情が違う.*)
      (* let ssa = List.nth (Hashtbl.find ht_bnum2gvnlist bnum) rnum in  *) (*これもやる必要ない, reg = vexpという命令だとわかっている*)
      if not(Hashtbl.mem moved_argset (bnum,rnum)) then 
      ((Printf.printf "common argset %s :  (%d,%d) \n" vexp bnum rnum );
       if (can_move get_idom ssa (bnum,maxinter))
        then (Hashtbl.add moved_argset (bnum,rnum) maxinter;
              move_bottom_insn maxinter ssa) (*何行目のやつを動かすか決めないとダメな気がする*) (*追加されていない場合のみ追加?*)
        else Printf.printf "Cannot move %s\n" (to_string ssa) (*こっちはvexpじゃなくてinst_idが動かす対象のはず. *)
      )) uselist)
  )) commoncopyset

let schedule_argsetting_all _ =
  SetSetInt.iter (fun bf -> schedule_argsetting (SetInt.to_list bf)) !branch_oneof

let map_var ssa env = 
  Ssa.map (fun x -> try x^"_"^(M.find x env) with | Not_found -> x) ssa

let convert_insn bnum (acc_list,acc_env,rnum) ssa = 
  match ssa with 
  | Copy(var,vexp) when Hashtbl.mem newv2def var -> (**)
      (if Hashtbl.mem moved_defv vexp 
        then (acc_list,acc_env,rnum-1) (*移動済みの定義*)
        else 
          let ssa_def = (Hashtbl.find newv2def var) in 
          let ssa_new = map_var ssa_def acc_env in 
          (match ssa_def with
            | Call(_) -> ((ssa_new::acc_list),M.empty,rnum-1) (*環境をリセット*)
            | _ -> ((ssa_new::acc_list),acc_env,rnum-1))
      )
  | Copy(dest,vexp) when (is_reg dest) -> (*ここで引数を設定*)
  let env' = M.add vexp dest acc_env in 
    ((ssa::acc_list),env',rnum-1)
  | Copy(_) -> (acc_list,acc_env,rnum-1) (*無視できる?*)
  | CondJ(_) -> (*分岐を一番下にするにはこれでいい?*)
    let ssa_new = map_var ssa acc_env in 
      ((acc_list@[ssa_new]),acc_env,rnum-1)
  | _ ->  
    let ssa_new = map_var ssa acc_env in 
    ((ssa_new::acc_list),acc_env,rnum-1)
       


let convert_block bnum = 
  let insnlist = Hashtbl.find ht_bnum2gvnlist bnum in 
  let last_rnum = (List.length insnlist) - 1 in 
  let init_list = (try MapInt.find bnum !block2moveddef with | Not_found -> []) in 
  let newinsnlist,_,_ = List.fold_right (fun ssa (acc_list,acc_env,rnum) ->
    if (Hashtbl.mem moved_argset (bnum,rnum)) 
      then  (*移動済みの引数割当なのでとばす*)
        (acc_list,acc_env,rnum-1)
      else
        convert_insn bnum (acc_list,acc_env,rnum) ssa
    ) insnlist (init_list,M.empty,last_rnum) in
  block2moveddef := MapInt.add bnum newinsnlist !block2moveddef

let convert_func (fentry, fend) = 
  let get_idom = Dom.compute_idom !cfg fentry in 
  let get_domlist v = List.rev (Dom.idom_to_dom_tree !cfg get_idom v) in (*domlistはいったん降順で返ってくるぽい*)

  let g = get_dom_tree get_domlist (fentry,fend) G.empty in 
  let topolist =  TopoG.fold (fun v acc -> v::acc) g [] in 
  (* Printf.printf "topo (%d,%d) : {%s}\n" fentry fend (String.concat ", " (List.map string_of_int topolist)); *)
  List.iter convert_block topolist

(* 出力はほとんど同じなのですが, ハッシュテーブルだけ変えたい... *)
module Dot4 = Graph.Graphviz.Dot(struct
   include G (* use the graph module from above *)
   let edge_attributes _ = []
   let default_edge_attributes _ = []
   let get_subgraph bnum = 
    let fname = get_fname bnum in 
    let args,fargs = M.find fname !argenv in 
    let arg_string = process ("["^(Id.pp_list args)^"], ["^(Id.pp_list fargs)^"]") in 
    Some({Graph.Graphviz.DotAttributes.sg_name = (Str.global_replace r1 "" fname);Graph.Graphviz.DotAttributes.sg_attributes = [`Label ((Str.global_replace r4 "" fname)^" "^arg_string);`Fontsize 24];Graph.Graphviz.DotAttributes.sg_parent=None})
   let vertex_attributes bnum = 
    let inst_list = (try MapInt.find bnum !block2moveddef with Not_found -> []) in 
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


let f (g, Asm.Prog(data, fundefs, e),(fentry_list,fend_list)) = 
  cfg := g;
  (List.iter2 (fun fentry fend -> 
  if G.mem_vertex g fentry then scan_func (fentry,fend)) fentry_list fend_list);
  Hashtbl.iter (fun vexp bnum -> Printf.printf "%s moved to B%d\n" vexp bnum) moved_defv;
  schedule_argsetting_all ();
  Hashtbl.iter (fun (b,r) bnum -> Printf.printf "inst (%d,%d) moved to B%d\n" b r bnum) moved_argset;
  (List.iter2 (fun fentry fend -> 
    if G.mem_vertex g fentry then convert_func (fentry,fend)) fentry_list fend_list);
  (let oc = open_out_bin "movedgraph.dot" in Dot4.output_graph oc g;Out_channel.close oc);
  (g, Asm.Prog(data, fundefs, e),(fentry_list,fend_list))
