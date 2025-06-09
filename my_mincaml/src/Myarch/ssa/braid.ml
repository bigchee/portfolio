open U
open Datagraph

let braid_num = ref []
let ext_num = ref []
let current_b = ref 0 
let current_instlist = ref []

let current_in_ext = ref SetInt.empty
let current_out_ext = ref SetInt.empty 

let get_id bnum rnum = bnum * 100 + rnum

let is_ext_v v = v < 0
let is_ext v1 v2 = (is_ext_v v1) || (is_ext_v v2)

module CommonDotArg2 = struct 
  include Gbraid (* use the graph module from above *)
  let edge_attributes (v1,label,v2) = 
    if SetInt.mem v1 !current_in_ext then [`Color(0xff0000);`Taillabel(label);`Labeldistance(0.0)]
    else if SetInt.mem v2 !current_out_ext then [`Color(0xff0000);`Headlabel(label);`Labeldistance(2.0)]
    else [`Taillabel(label)]
  let default_edge_attributes _ = []

  let get_subgraph _ = None
  let vertex_name rnum = Printf.sprintf "%d" (get_id !current_b rnum)
  let default_vertex_attributes _ = []
  let graph_attributes _ = []
end 

module Dot_braid = Graphviz2.Dot2(struct
  include CommonDotArg2
  let vertex_attributes rnum = 
    if rnum < 0 then [`Style(`Invis)]
    else 
      let opcode =  (try let ssa = List.nth !current_instlist rnum in Ssa.get_opcode ssa with | Not_found -> "") in 
      [`HtmlLabel((string_of_int rnum)^": "^opcode)]
    (* bnum2insttable (fun _ bnum -> (Printf.eprintf "is B%d in table? : %b\n" bnum (MapInt.mem bnum !block2moveddef) ;MapInt.find bnum !block2moveddef)) () Ssa.to_string *)
end)

let split_to_braid bnum = 
  let instlist = (try MapInt.find bnum !Bpschedule.block2moveddef with | Not_found -> []) in 
  current_instlist := instlist;
  let last_rnum = U.list_get_last_idx instlist in 
  let liveout_vars = (try Hashtbl.find Bpschedule.instid2livevars (bnum,last_rnum) with | Not_found -> Printf.eprintf  "livevars not found for (%d,%d)\n" bnum (U.list_get_last_idx instlist);raise Not_found) in 
  let counter = ref 0 in 
  let _,g,_ = List.fold_left (fun (rnum,acc_g,acc_env) ssa -> 
    let new_env,new_g = (try 
      let def_vexps = Ssa.get_defs ssa in 
      let inner_new_g = 
        (if List.for_all Asm.is_reg def_vexps 
          then (if (rnum < last_rnum && Ssa.is_call (List.nth instlist (rnum+1))) 
                  then let new_e = Gbraid.E.create rnum "argset" (rnum+1) in Gbraid.add_edge_e acc_g new_e
                  else if rnum = last_rnum then (let new_ext_v = (decr counter;!counter) in 
                  let new_e = Gbraid.E.create rnum "retv" new_ext_v in 
                  Gbraid.add_edge_e acc_g new_e)
                  else failwith "unexpected pattern in braid")
          else 
          (List.fold_left (fun inner_acc_g vexp -> 
          if S.mem vexp liveout_vars
            then (let new_ext_v = (decr counter;!counter) in 
                    let new_e = Gbraid.E.create rnum vexp new_ext_v in 
                    Gbraid.add_edge_e inner_acc_g new_e)
          else inner_acc_g 
          ) acc_g def_vexps)) in  
    let inner_new_g = 
      if Ssa.is_phiw ssa 
        then List.fold_left (fun acc_g _ -> 
          let new_ext_v = (decr counter;!counter) in 
            let new_e = Gbraid.E.create new_ext_v "" rnum in 
            Gbraid.add_edge_e acc_g new_e
          ) inner_new_g def_vexps
        else inner_new_g
      in  
      (M.add_list_same def_vexps rnum acc_env,inner_new_g)
      with | Ssa.NoDest -> acc_env,acc_g) in 
    let use_vexps = Ssa.get_use ssa in 
    let new_g' = 
      if Ssa.is_call ssa then new_g 
      else 
        (List.fold_left (fun inner_acc_g vexp -> 
          (try 
            (if Asm.is_reg vexp && vexp <> Asm.reg_zero then raise Not_found 
            else if vexp = "#0" || vexp.[0] <> '#' then inner_acc_g (*定数に対しては依存関係が発生しないことに?*)
            else 
            let def_rnum = M.find vexp acc_env in 
            let new_e = Gbraid.E.create def_rnum vexp rnum in 
            Gbraid.add_edge_e inner_acc_g new_e)
          with | Not_found -> 
            let new_ext_v = (decr counter;!counter) in 
            let new_e = Gbraid.E.create new_ext_v vexp rnum in 
            Gbraid.add_edge_e inner_acc_g new_e)
          ) new_g use_vexps) in
    let new_g' = 
      if Ssa.is_phir ssa then 
        List.fold_left (fun acc_g _ -> 
            (let new_ext_v = (decr counter;!counter) in 
              let new_e = Gbraid.E.create rnum "" new_ext_v in 
              Gbraid.add_edge_e acc_g new_e) ) new_g' use_vexps
      else new_g' in 
    (rnum+1,new_g',new_env)
    ) (0,Gbraid.empty,M.empty) instlist in 
  (* Printf.printf "\nB%d braid\n" bnum; *)
  let components = Braid_Components.components_list g in 
  (g,components)
  (* List.iter (fun v_list -> 
    Printf.printf "{%s}\n" (U.intlist_to_string v_list)) components;
  Datagraph.print_gbraid g *)

let fprint_braid oc bnum braidnum subgraph = 
  let sg_name = Printf.sprintf "B%d_%d" bnum braidnum in 
  let sg_label = sg_name in 
  Printf.fprintf oc "  subgraph cluster_%s {\n" sg_name;
  Printf.fprintf oc "    label = \"%s\";\n" sg_label;
  Printf.fprintf oc "    fontsize=\"24pt\""; (*これもちゃんとgraphvizを使ってやりたい*)
  Dot_braid.output_graph oc subgraph;
  Printf.fprintf oc "  }\n"

let split_to_subgraphs g components = 
  let ext_g,in_g_list = 
  Gbraid.fold_edges_e (fun e (acc_ext,acc_in_list) -> 
    let (v1,_,v2) = e in 
    if is_ext v1 v2 then (Gbraid.add_edge_e acc_ext e,acc_in_list)
    else 
      let idx = (try Option.get (List.find_index (fun vlist -> List.mem v1 vlist (*v2も同じcomponentにあるはず*)) components) with | Not_found -> failwith "component not found") in 
      (acc_ext,U.list_map_nth acc_in_list idx (fun old_g -> Gbraid.add_edge_e old_g e))
    ) g (Gbraid.empty,(List.map (fun _ -> Gbraid.empty) components)) in 
  let in_g_list' = 
    List.map2 (fun in_g vlist -> Datagraph.gbraid_add_vertices in_g (List.filter (fun v -> not(is_ext_v v)) vlist)
      ) in_g_list components in 
    (ext_g,in_g_list')

let calc_ext_reg_num ext_subg = 
  snd (Gbraid.fold_edges_e (fun (v1,label,_) (acc_set,(acc_in_regnum,acc_out_regnum)) ->
    if is_ext_v v1 
      then (if label = "" then  (acc_set,(acc_in_regnum + 1,acc_out_regnum))
            else if S.mem label acc_set then (acc_set,(acc_in_regnum,acc_out_regnum))
            else (S.add label acc_set,(acc_in_regnum + 1,acc_out_regnum)))
      else 
        (if label = "" then  (acc_set,(acc_in_regnum,acc_out_regnum + 1))
        else if S.mem label acc_set then (acc_set,(acc_in_regnum,acc_out_regnum))
        else (S.add label acc_set,(acc_in_regnum,acc_out_regnum + 1)))
    ) ext_subg (S.empty,(0,0)))


let fprint_braid_for_block oc bnum = 
  current_b := bnum;
  let sg_name = Printf.sprintf "B%d" bnum in 
  let sg_label = sg_name in 
  Printf.fprintf oc "  subgraph cluster_%s {\n" sg_name;
  Printf.fprintf oc "    label = \"%s\";\n" sg_label;
  Printf.fprintf oc "    fontsize=\"24pt\""; (*これもちゃんとgraphvizを使ってやりたい*)
  let (g,components) = split_to_braid bnum in 
  let components = List.map (fun vlist -> List.sort (fun v1 v2 -> - (compare v1 v2)) vlist) components in 
  let components = List.sort (fun vlist1 vlist2 -> compare (List.hd vlist1) (List.hd vlist2) ) components in 
  let ext_subg,in_subg_list = split_to_subgraphs g components in 
  let current_braid_num = (List.length components) in 
  let (current_in_ext_num,current_out_ext_num) = (calc_ext_reg_num ext_subg) in 
  braid_num := current_braid_num::!braid_num;
  ext_num := (current_in_ext_num,current_out_ext_num)::!ext_num;
  if current_braid_num > 90 then Printf.printf "many braid block B%d\n" bnum;
  if current_in_ext_num > 100 then Printf.printf "many in ext block B%d\n" bnum;
  if current_out_ext_num > 15 then Printf.printf "many out ext block B%d\n" bnum;
  let all_v = Datagraph.gbraid_all_vertices ext_subg in 
  let in_ext = List.filter (fun v -> is_ext_v v && (Gbraid.in_degree ext_subg v = 0)) all_v in 
  let out_ext = List.filter (fun v -> is_ext_v v && (Gbraid.out_degree ext_subg v = 0)) all_v in 
  current_in_ext := (SetInt.of_list in_ext);current_out_ext := (SetInt.of_list out_ext);
  ignore(List.fold_left (fun braid_num in_subg -> fprint_braid oc bnum braid_num in_subg;(braid_num + 1)) 0 in_subg_list );
  Dot_braid.output_graph oc ext_subg;
 
  Printf.fprintf oc "\t{rank = min; %s}\n" (String.concat " " (List.map (fun rnum -> Printf.sprintf "%d;" (get_id !current_b rnum)) in_ext));
  Printf.fprintf oc "\t{rank = max; %s}\n" (String.concat " " (List.map (fun rnum -> Printf.sprintf "%d;" (get_id !current_b rnum)) out_ext));
  Printf.fprintf oc "  }\n"


  let fprint_graphs oc =
    Printf.fprintf oc "digraph G {\n";
    (* [`Rankdir `LeftToRight;`Nodesep (0.1)] より一般的なやり方でできるようにしたい *)
    (* Printf.fprintf oc "\trankdir=LR;\n"; *)
    Printf.fprintf oc "\tnodesep=0.100000;\n\n";
    (*本当はhash iterにしたかったけど, それだと順番が固定されなくて困るのでfentrylistを使う*)
    Dfa.scan_blocks (fprint_braid_for_block oc) (1,!Dfa.counter);
    Printf.fprintf oc "}\n"
    (* close_out oc *)

let f _ = 
  let oc_braid = open_out_bin "braidgraph.dot" in
  fprint_graphs oc_braid;
  Printf.printf "braid num : ";
  U.list_print_stats !braid_num;
  let in_ext_num,out_ext_num = List.split !ext_num in 
  Printf.printf "in ext num : ";
  U.list_print_stats in_ext_num;
  Printf.printf "out ext num : ";
  U.list_print_stats out_ext_num;
  Out_channel.close oc_braid;
  
