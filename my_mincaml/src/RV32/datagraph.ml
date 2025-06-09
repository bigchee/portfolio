open Graph
open Ssa


(*data flow graphの設定*)

module Node = struct                                                                
  type t = int (*頂点はブロック番号だけ, 命令列はハッシュかマッピングで持つ*)                                                                     
  let compare = compare                                                 
  let hash = Hashtbl.hash                                                          
  let equal = (=)                                                                  
end         
module G = Graph.Persistent.Digraph.Concrete(Node)
let add_vertices g vlist = List.fold_left (fun acc_g v  -> G.add_vertex acc_g (G.V.create v)) g vlist
let add_edges g vlist = List.fold_left (fun acc_g (s,t) -> G.add_edge acc_g s t) g vlist

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