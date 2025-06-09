open Graph
open Ssa

module SetInt =
  Set.Make
    (struct
      type t = int
      let compare = compare
    end)

module SetSetInt = 
Set.Make
  (struct
    type t = SetInt.t
    let compare =  compare 
  end)
let setint_to_string setint = 
  String.concat "," (List.map string_of_int (SetInt.to_list setint))

module Node = struct                                                                
  type t = int (*頂点はブロック番号だけ, 命令列はハッシュかマッピングで持つ*)                                                                     
  let compare = compare                                                 
  let hash = Hashtbl.hash                                                          
  let equal = (=)                                                                  
end         
module G = Graph.Persistent.Digraph.ConcreteBidirectional(Node)
let add_vertices g vlist = List.fold_left (fun acc_g v  -> G.add_vertex acc_g (G.V.create v)) g vlist
let add_edges g vlist = List.fold_left (fun acc_g (s,t) -> G.add_edge acc_g s t) g vlist

let print_graph g = 
  G.iter_vertex (fun v-> 
    let succ = G.succ g v in 
    if List.length succ > 0 then 
    Printf.printf "%d -> {%s}\n" v (U.intlist_to_string succ)) g

let degenerate g v1 v2 = (*v1,v2を縮退*)
  let v2_pred = G.pred g v2 in 
  let v2_succ = G.succ g v2 in 
  let preds = SetInt.union (SetInt.of_list v2_pred) (SetInt.of_list (G.pred g v1)) in  
  let succs = SetInt.union (SetInt.of_list v2_succ) (SetInt.of_list (G.succ g v1)) in (*これだとサイズ4以上のサイクルが検知できないか?*)
  if  SetInt.cardinal (SetInt.inter preds succs) > 0 then ((*Printf.eprintf "pred succ inter = {%s}\n" (U.intlist_to_string (SetInt.to_list (SetInt.inter preds succs)));*)failwith "can't degenerate, otherwise dependency graph will have a cycle")
  else 
    let g1 = G.remove_vertex g v2 in 
    let g2 = add_edges g1 (List.map (fun pred -> (pred,v1)) v2_pred) in 
    let g3 = add_edges g2 (List.map (fun succ -> (v1,succ)) v2_succ) in
      g3

let change_dest g v1 v2 v3 = (*v1 -> v2をv1 -> v3に変える*)
    let g1 = G.remove_edge g v1 v2 in 
    G.add_edge g1 v1 v3

let g_all_vertices g = 
  G.fold_vertex (fun v acc -> v::acc ) g []

module Dom = Graph.Dominator.Make(G)

(*関数間呼び出しグラフの設定*)
module Node2 = struct                                                                
  type t = string (*頂点はブロック番号だけ, 命令列はハッシュかマッピングで持つ*)                                                                     
  let compare = compare                                                 
  let hash = Hashtbl.hash                                                          
  let equal = (=)                                                                  
end         
(* module Edge2 = struct (*呼び出し回数も出せるようにしたい. *)
  type t = int
  let compare = compare
  let default = 1
end *)
module G2 = Graph.Imperative.Digraph.Concrete(Node2)

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

module TopoG2 = Graph.Topological.Make(G2)
module CompoG2 = Graph.Components.Make(G2)

(*レジスタコピー用*)
module Node_st2 = struct                                                                
  type t = string * string                                                                    
  let compare = compare                                                 
  let hash = Hashtbl.hash                                                          
  let equal = (=)                                                                  
end    
module Gst2 = Graph.Imperative.Digraph.Concrete(Node_st2)
(* module TopoG2 = Graph.Topological.Make(G2) *)
module CompoGst2 = Graph.Components.Make(Gst2)



(* 干渉グラフ用 *)
module NI = struct                                                                
  type t = int * int (*頂点はinst id = (bnum, rnum)*)                                                                     
  let compare = compare                                                 
  let hash = Hashtbl.hash                                                          
  let equal = (=)                                                                  
end      
module GI = Graph.Persistent.Digraph.Concrete(NI)

let instid2def = Hashtbl.create 1024 
let instid2use = Hashtbl.create 1024 
(* let labelgraph = GI.create () *)

(*本当は厳密にレジスタのうち一つをとるべき*)
let r_reg = Str.regexp "\\(#[0-9]+\\)_\\(\\$[A-z0-9]+\\)\\(\\.[0-9]+\\)?" 
let split_vexp_reg s = 
  let vexp,regname = (Str.global_replace r_reg "\\1" s), (Str.global_replace r_reg "\\2" s) in   (*ケースにマッチしないと全文"\\0"をかえす*)
  if (vexp = s || regname == s) then raise Not_found
  else (vexp,regname)

let get_vexp vexp = 
  try fst (split_vexp_reg vexp)
  with | Not_found -> vexp (* さらに#[0-9]+ に一致するかassertしたほうがいい *)

let get_elem dest = if dest.[0] <> '#' then S.empty else 
  ( try let (vexp,_) = split_vexp_reg dest in  S.singleton vexp 
with | Not_found -> if Asm.is_reg dest then S.empty else S.singleton dest 
)

let zeros = (S.of_list [Asm.reg_zero;"#0"])

let add_insn_to_labellog (bnum,rnum) ssa = 
  (Hashtbl.add instid2def (bnum,rnum) (try List.fold_left (fun acc_set dest -> S.union acc_set (get_elem dest)) S.empty (Ssa.get_defs ssa) with | NoDest -> S.empty);
   Hashtbl.add instid2use (bnum,rnum) (S.diff ((List.fold_left (fun acc_s s -> S.union acc_s (get_elem s) ) S.empty (Ssa.get_use ssa))) zeros);
   )

let get_def (b,r) = 
  (try Hashtbl.find instid2def (b,r)
  with | Not_found -> S.empty) 

let get_use (b,r) = 
  (try Hashtbl.find instid2use (b,r)
  with | Not_found -> S.empty)

let get_data_for_block ht b = 
  let rec find_data_for_row ht b r acc_set = 
    (try 
      let local_data = Hashtbl.find ht (b,r) in 
      find_data_for_row ht b (r+1) (S.union local_data acc_set)
    with | Not_found -> acc_set) 
  in find_data_for_row ht b 0 S.empty

let get_use_for_block = get_data_for_block instid2use
let get_def_for_block = get_data_for_block instid2def

let get_true_use_for_block b = S.diff (get_use_for_block b) (get_def_for_block b)

module Liveness =  Graph.Fixpoint.Make(GI)
(struct
  type vertex = GI.E.vertex
  type edge = GI.E.t
  type g = GI.t
  type data = S.t
  let direction = Graph.Fixpoint.Backward
  let equal = S.equal
  let join = S.union
  let analyze (_,l) live_out = 
    S.union (S.diff live_out (get_def l)) (get_use l)
end) 

let get_live = Liveness.analyze (fun _ -> S.empty)  

module DotGI = Graph.Graphviz.Dot(struct
   include GI 
   let edge_attributes _ = []
   let default_edge_attributes _ = []
   let get_subgraph _ = None
   let vertex_attributes (b,r) = 
    [`Shape `Box; `Label (Printf.sprintf "(%d,%d)" b r)]
   let vertex_name (b,r) = (Printf.sprintf "B%d_r%d" b r)
   let default_vertex_attributes _ = []
  let graph_attributes _ = [`Rankdir `LeftToRight;`Nodesep (0.1)]
end) 

(* ここらへんは生存区間取得用 *)
let rec iter_range step (vacc,vend) = 
  if vacc > vend then ()
  else 
    (step vacc;iter_range step (vacc+1,vend))

let gi_all_vertices g = 
  GI.fold_vertex (fun v acc -> v::acc ) g []

module Edge = struct 
  type t = string 
  let compare = compare 
  let default = ""
end

module Gbraid = Graph.Persistent.Digraph.ConcreteBidirectionalLabeled(Node)(Edge)

let print_gbraid g = 
  Gbraid.iter_edges_e (fun (v1,label,v2) -> 
    Printf.printf "%d - {%s} -> %d\n" v1 label v2) g

module UGbraid = struct
  include Gbraid

  (* エッジを無向にする *)
  let iter_edges_e f g =
    G.iter_edges_e (fun (u, v) -> f (u, v); f (v, u)) g
end

module Braid_Components = Graph.Components.Undirected(UGbraid)

let gbraid_add_vertices g vlist = List.fold_left (fun acc_g v  -> Gbraid.add_vertex acc_g (Gbraid.V.create v)) g vlist

let gbraid_all_vertices g = 
  Gbraid.fold_vertex (fun v acc -> v::acc ) g []