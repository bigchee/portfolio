(* open Datagraph
open Dfa
open Ssa
open Bpschedule

exception Not_precolored

let init_env = M.add vexp_zero Asm.reg_fzero M.empty 

module Dom = Graph.Dominator.Make(G)
(* let dom_tree g entry = 
  let {Dom.dom_functions.dom_tree;_} = Dom.compute_all g  entry *)

(* module Dot4 = struct
  include Graph.Dot.Make(G)
  let empty _ = G.empty
  let graph_to_dot id graph =
    Printf.sprintf "subgraph cluster_%s {\nlabel=\"Graph %s\";\n%s\n}\n"
      id id (string_of_graph graph)

  let string_of_graph g =
    let buf = Buffer.create 1024 in
    let out = Format.formatter_of_buffer buf in
    output_graph out g;
    Format.pp_print_flush out ();
    Buffer.contents buf
end *)

let f (g, Asm.Prog(data, fundefs, e),(fentry_list,fend_list)) = 
  (* let oc = open_out "dominator_tree.dot" in  *)
  (* Printf.fprintf oc "digraph G {\n"; *)
  (* Printf.fprintf oc "%s" (string_of_graph (Dom.dom_graph ())) *)
  (* Printf.printf "fentry\n";
  List.iter (fun n -> Printf.printf "%d " n) fentry_list;
  Printf.printf "\nfend\n";
  List.iter (fun n -> Printf.printf "%d " n) fend_list;
  Printf.printf "\nidom\n";
  (List.iter2 (fun fentry fend -> 
    if G.mem_vertex g fentry then 
    try 
    (let get_idom = Dom.compute_idom g fentry in 
    let get_domlist = Dom.idom_to_dom_tree g get_idom in 
    let rec step bnum = 
      (if bnum > fend then ()
      else if G.mem_vertex g bnum then (Printf.printf "B%d, " (get_idom bnum);flush stdout;step (bnum+1))) in
    let rec step2 bnum = 
      (if bnum > fend then ()
      else if G.mem_vertex g bnum then let domlist = get_domlist bnum in (Printf.printf "[B%d] : {%s}\n" bnum (String.concat "," (List.map (fun n -> Printf.sprintf "B%d" n ) domlist) );flush stdout;step2 (bnum+1))) in 
    Printf.printf "%d : {" (fentry);
    step (fentry+1);
    Printf.printf "}\n";
    Printf.printf "domlist\n";
    flush stdout;
    step2 (fentry);
    ) with | Not_found -> Printf.printf "B%d not found\n" fentry;flush stdout
  ) fentry_list fend_list); *)
  (* Printf.fprintf oc "}\n"; *)
  (* close_out oc; *)
  Asm.Prog(data, fundefs, e)

let scan_block bnum = 
  let insn_list = (try Hashtbl.find ht_block2insts bnum with |  Not_found -> Printf.eprintf "block %d not found\n" bnum;[] ) in
  let gvnlist = List.rev (List.fold_left (fun acc_gvnlist e -> (scan_insn e)::acc_gvnlist ) [] insn_list) in
  Hashtbl.add ht_bnum2gvnlist bnum gvnlist
  (* ;(if List.mem bnum !fend_list then incr fcounter) *)

let rec scan_blocks ((bstart,bend) : int * int) = 
  if bstart > bend then ()
  else (scan_block bstart;scan_blocks ((bstart + 1),bend))

let rec set_argument insn_list acc_env =
  match insn_list with 
  | [] -> acc_env
  | Copy(vexpi,dest)::ls when is_reg dest -> set_argument ls (M.add vexp (remove_alpha dest) acc_env) 
  | _ -> assert(false)

let regenv = ref M.empty

let map_op x = (try M.find x !regenv with | Not_found -> failwith "found undefined variable during ssa_regalloc")
(* let vori2reg xi regenv = 
  match xi with
    | V x -> vexp2reg x regenv
    | _ -> xi constはconstのまま *)

let map_dest x = 
  if is_reg x then (remove_alpha (strip_branch_suffix x))
  else try M.find x !regenv with | Not_found -> (*割当, レジスタを逆伝播させるなら間はなるべく関数の引数じゃないレジスタがいいかな?*)
    

let check_precolor ssa = 
  try let dest = get_dest ssa in
      let (vexp,reg) =split_vexp_reg dest in 
      if M.mem vexp !regenv then (failwith (Printf.sprintf "%s is allocated before definition ?" vexp))
      else regenv := M.add vexp reg !regenv; Some(Ssa.map2 (fun _ -> reg) (fun x -> x) ssa) (*destをregに変える, 1つ目のmapを変えればmapreg_insnと分ける必要がない気もする*)
  with
    | NoDest | Not_precolored -> mapreg_insn ssa

let mapreg_insn ssa = (* gvngraphのブロック内に書いてある命令を見ているはず? regenvをどう管理しよう *)
  match ssa with
  (*no new reg required*)
  | CondJ(x,relop,yi) -> Some(Ssa.map2 map_dest map_op ssa)
  | Memacc(x,y,memacc,zi) when (is_memacc_store memacc) -> Some(Ssa.map2 map_dest map_op ssa) 
  (*with constraint*)
  | Copy(dest,src) when (is_reg dest) -> (*引数設定, 同じレジスタで移動が不要な場合はどうする? Some, Noneにするのか*)  
    if (remove_alpha dest) = (vexp2reg src) then None else Some(Copy(remove_alpha dest,map_op src)) 
    (*返り値設定は? *)
    (*destに割り当て済みなら命令を無視したい, これだとdestをα変換込みで持たないといけない気がする? *)
  | _ ->
  
(*本当は厳密にレジスタのうち一つをとるべき*)
let reg = Str.regexp "\\(#[0-9]+\\)_\\(\\$[A-z0-9]+\\)\\.[0-9]+" 
let split_vexp_reg s = 
  let vexp,regname = (Str.global_replace reg "\\1" s), (Str.global_replace reg "\\2" s) in   (*ケースにマッチしないと全文"\\0"をかえす*)
  if (vexp = s || regenv == s) then raise Not_precolored
  else (vexp,regname)

let block2alloced_insts = Hashtbl.create 2048

let rec color_block bnum = 
  let insnlist = (try MapInt.find block2moveddef bnum with |  Not_found -> failwith (Printf.sprintf "block %d not found" bnum)) in
  let newinsnlist = List.rev (List.fold_left (fun acc_list ssa -> (check_precolor ssa)::acc_list ) insnlist) in 
  Hashtbl.add block2alloced_insts bnum newinsnlist

let set_argument list env = 
  List.fold_left (fun acc_env ssa -> 
    match ssa with 
    | Copy(vexp,reg) when (is_reg reg) -> M.add vexp (remove_alpha reg) acc_env
    | _ -> assert(false)
  ) init_env list 

let rec dfs_domtree get_domlist from search_func = (*なんか抽象的なdfs*)
search_func from; (* ここで訪れたノードに対する処理 *)
let domlist = get_domlist from in 
List.iter (fun v -> (*Printf.eprintf "search B%d\n" v;*) dfs_domtree get_domlist v search_func) domlist

let color_func g (fentry, fend) = 
  let entry_insnlist = (try MapInt.find block2moveddef fentry with |  Not_found -> failwith (Printf.sprintf "function (%d,%d) entry not found" fentry fend)) in 
  regenv := set_argument argset_list init_env; 
  let get_idom = Dom.compute_idom g fentry in 
  let get_domlist = Dom.idom_to_dom_tree g get_idom in 
  dfs_domtree get_domlist fentry color_block; *)

let f (g, Asm.Prog(data, fundefs, e),(fentry_list,fend_list)) = Asm.Prog(data, fundefs, e)