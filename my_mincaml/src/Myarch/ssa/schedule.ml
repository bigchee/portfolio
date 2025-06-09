open Datagraph
open Ssa
open Regssa
open U 

let split_inst instlist = 
  let prev,rest = 
  (match instlist with
      | h::ls when Ssa.is_phiw h -> [h],ls 
      | _ -> [],instlist) in 
  (match rest with 
    | [] -> prev,rest,[]
    | _ -> let rest_beforelast,rest_last = U.list_split_last rest in 
      (match rest_last with 
        | CondJ _  | Call _ | Phi_r _  -> prev,rest_beforelast,[rest_last]
        | _ -> prev,rest,[]))

let update_io_edge (current_i,current_o) old_g row is_input = 
  if is_input then 
    (match current_i with 
      | h::_ -> (row::current_i,current_o),(G.add_edge old_g h row)
      | [] -> (row::current_i,current_o),old_g
    )
  else 
    (match current_o with 
      | h::_ -> (current_i,row::current_o),(G.add_edge old_g h row)
      | [] -> (current_i,row::current_o),old_g
    )
let update_mem_edge current_mem old_g row = 
  (match current_mem with 
      | h::_ -> row::current_mem,(G.add_edge old_g h row)
      | [] -> row::current_mem,old_g
    )

let rec update_nth currentlist idx new_idx = 
  match currentlist with 
    | h ::ls when idx = 0 -> (h@new_idx)::ls
    | [] ->(U.list_make idx [])@[new_idx]
    | h::ls -> h::(update_nth ls (idx-1) new_idx)

let chmax k v env = 
  try 
    let current_v = MapInt.find k env in 
    (if current_v < v then MapInt.add k v env else env)
  with | Not_found -> MapInt.add k v env
    
let rec get_path_weight g instlist visited vroot acc_weight env = 
  (* Printf.printf "vroot = %d, acc_weight = %d\n" vroot acc_weight; *)
  if SetInt.mem vroot visited then failwith (Printf.sprintf "cycle path found at v = %d" vroot)
  else 
  let new_env = chmax vroot acc_weight env in 
  let ssa = List.nth instlist vroot in 
  let new_weight = acc_weight + (Ssa.get_latency ssa) + 1 in 
  let new_visited = (SetInt.add vroot visited) in 
  List.fold_left (fun acc_env vnext -> get_path_weight g instlist new_visited vnext new_weight acc_env) new_env (G.succ g vroot)

let sort_by_priority ls = 
  List.sort (fun (_,p1) (_,p2) -> - (compare p1 p2)) ls
  (*sourceの優先度としては重い命令を優先するべきか? その命令自体のレイテンシとかで優先度をつけるといいかもしれない*)

let do_schedule bnum instlist dfg = 
  let source_nodes = G.fold_vertex (fun v acc -> if G.in_degree dfg v = 0 then v::acc else acc ) dfg [] in 
  (*並べ替え*)
  let latency_map = [List. map (fun vnext -> (vnext,0)) source_nodes] in 
  (* let pw_map = List.fold_left (fun acc_env vnext -> get_path_weight dfg instlist SetInt.empty vnext 0 acc_env) MapInt.empty source_nodes in  *)
  let rec f g latency_map acc_instlist cycle_num = 
    (if G.is_empty g then acc_instlist
    else 
      (match (try (sort_by_priority (List.nth latency_map 0)) with | e -> raise e) with
        | [] -> (*nop挿入*)
          f g (List.tl latency_map) acc_instlist (cycle_num+1)
        | (h,hp)::ls -> 
          let new_map = 
            (match (List.tl latency_map) with 
              | [] -> [ls]
              | h2::ls2 -> (ls@h2)::ls2) in 
          (* Printf.printf "h = %d, weight = %d\n" h hp; *)
          let succ = (try List.filter (fun v -> G.in_degree g v = 1) (G.succ g h) with | e -> Printf.eprintf "vertex %d not found at B%d\n" h bnum;raise e) in 
          let ssa = (List.nth instlist h) in 
          let latency = Ssa.get_latency ssa in 
          let new_map = update_nth new_map latency 
            (List.map (fun vnext -> (vnext,(cycle_num+latency))) succ) in 
          let new_g = (G.remove_vertex g h) in 
          let new_instlist = ssa::acc_instlist in 
          f new_g new_map new_instlist (cycle_num+1)
      ))
  in List.rev (f dfg latency_map [] 0)

let make_bb_dfg bnum instlist=   
  (* let instlist = (try Hashtbl.find block2alloced_insts bnum with | Not_found -> []) in  *)
  let prev_preserve,mid_instlist,post_preserve = split_inst instlist in 
  let defmap = Hashtbl.create 8 in (*reg -> row*)
  let usemap = Hashtbl.create 16 in  
  (*コピー元と依存関係のグラフ構築*)
  let lastcall = ref (-1) in 
  let _,_,g,_ = List.fold_left (fun (acc_io,acc_mem,acc_g,row) ssa -> 
    let new_io,acc_g' = 
    (match ssa with 
      | Assign2(_,IN32,_) -> update_io_edge acc_io acc_g row true
      | Assign2(_,OUT8,_) -> update_io_edge acc_io acc_g row false
      | _ -> (acc_io,acc_g)) in 
    let new_mem,acc_g' = 
    (match ssa with 
      | Memacc _ -> update_mem_edge acc_mem acc_g' row
      | _ -> (acc_mem,acc_g')) in 
    let new_g = 
        ((* if is_call ssa then (lastcall := row;Hashtbl.clear defmap;Hashtbl.clear usemap;([],G.empty,row+1))
        else  *)
        let def = (try Ssa.get_def ssa with | NoDest -> "") in (*NoDestの扱いは関係ないので適当でいい? *)
        let uses = List.map Ssa.remove_alpha (Ssa.get_use ssa) in 
        let defs,uses = (match ssa with 
          | Call(_,fname,_,_) when List.mem (Ssa.process_funcname fname) ["create_array";"create_float_array"] -> 
            ([def;Asm.reg_hp], (Asm.reg_hp::uses))
          | Save(_,reg) -> [def],[reg]
          | _ -> ([def],uses)) in 
        (*raw : def(most recent) -> use(here)*)
        (* Printf.printf "lastcall = %d\n" !lastcall; *)
        let g1 = List.fold_left (fun inner_acc_g use -> 
        (try 
          let defrow = Hashtbl.find defmap use in  
          G.add_edge inner_acc_g defrow row(*ついでにcalleeとraの復帰がある場合は前のfunccallの後にしかできないので依存関係を追加*)
            with | Not_found -> 
              (if (U.strncmp "#$" use 2) && (!lastcall <> (-1)) 
              then 
                  (
                    (* Printf.printf "reload dep. %s at (%d,%d)\n" use bnum row ; *)
                    G.add_edge inner_acc_g !lastcall row) 
              else inner_acc_g))) (G.add_vertex acc_g' row) uses in 
        (*war : use(all prev) -> def(here)*)
        let g2 = List.fold_left (fun inner_acc_g def -> 
          let prev_uses = Hashtbl.find_all usemap def in 
          Datagraph.add_edges inner_acc_g (List.map (fun prevrow -> (prevrow,row)) prev_uses)) g1 defs in 
        (*waw : def(most recent) -> def(here)*)
        let g3 = List.fold_left (fun inner_acc_g def -> 
          (try 
            let defrow = Hashtbl.find defmap def in 
            G.add_edge inner_acc_g defrow row 
          with | Not_found -> inner_acc_g)) g2 defs in 
        List.iter (fun def -> if def <> "" then Hashtbl.add defmap def row) defs;
        List.iter (fun use -> Hashtbl.add usemap use row) uses;
        (* (Printf.printf "(%d,%d) : defs = {%s}, uses = {%s}\n" bnum row (U.list_to_string defs)(U.list_to_string uses) ); *)
          g3) in 
        let new_g' = (if !lastcall <> (-1) then G.add_edge new_g !lastcall row else new_g) in 
        let new_g2 = (if Ssa.is_call ssa then (
        let before_call_inst = U.list_range (!lastcall+1) row in
        (* Printf.printf "call dep. {%s} -> %d\n" (U.intlist_to_string before_call_inst) row; *)
        let new_g2' = Datagraph.add_edges new_g' (List.map (fun prevrow -> (prevrow,row)) before_call_inst) in 
        lastcall := row;
        new_g2'
        ) else new_g') in 
    (new_io,new_mem,new_g2,row+1)
    ) (([],[]),[],G.empty,List.length prev_preserve) mid_instlist in 
  (* Printf.printf "BB dependency graph B%d\n" bnum; *)
  (* Datagraph.print_graph g;flush stdout; *)
  let mid_instlist' = (do_schedule bnum instlist g) in 
  prev_preserve@mid_instlist'@post_preserve
  