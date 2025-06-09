open Datagraph
open Dfa
open Ssa
open Bpschedule
open Asm
open U

exception NoAvailReg
exception Rematerial
exception Reload
exception NoSrc

(* let regenv = Hashtbl.create 32
let init_regenv _ = Hashtbl.clear regenv;Hashtbl.add vexp_zero reg_zero *)
let block2alloced_insts = Hashtbl.create 2048
let is_while = ref false

let to_color_block = ref SetInt.empty

let print_regenv regenv = 
  Printf.printf "{";
  M.iter (fun vexp reglist -> (*if vexp <> vexp_zero then*) Printf.printf "%s -> {%s} , " vexp (String.concat ", " reglist)) regenv;flush stdout;
  Printf.printf "}\n"

let add_bind key valuelist mapenv = (*常に単射になっていることを保証したい*)
  let killed_mapenv = M.fold (fun vexp reglist accenv -> 
    let newval = (U.list_diff reglist valuelist) in 
    (if reglist <> newval && !is_while then Printf.printf "reg bind stashed by new bind : %s = {%s}\n" vexp (String.concat ", " (U.list_diff reglist newval)));
    (if List.length newval > 0 then M.add vexp newval accenv else accenv) ) mapenv M.empty in
  M.add key ((try M.find key killed_mapenv with | Not_found -> [])@valuelist) killed_mapenv 

let is_not_caller x = 
  x = Asm.reg_zero || Array.mem x Asm.callee_regs

let get_env_after_call (b,r) regenv = (*callee save regだけ残す*)
  M.fold (fun vexp reglist accenv -> 
    let not_callers, callers = List.partition is_not_caller reglist in 
    (if List.length callers > 0 && !is_while then Printf.printf "reg bind stashed by funccall at (%d,%d) : %s = {%s}\n" b r vexp (U.list_to_string callers));
    M.add vexp not_callers accenv
  ) regenv M.empty

let get_key value mapenv = 
  let opt_key = M.fold (fun k vlist acc -> 
    if List.mem value vlist then Some(k)
    else acc) mapenv None in 
  match opt_key with
  | Some(k) -> k
  | None -> raise Not_found

let find key mapenv = (* valueが複数ある場合にどれを取り出すかの任意性がある, とりあえず最後に追加したものにする? *)
    try
      let valuelist =M.find key mapenv  in (*with | Not_found -> Printf.printf "bind not found for key = %s\nregenv = " key;print_regenv mapenv) ここは捕捉するとまずそうかも*)
      (* List.hd (List.rev valuelist) *)
      let callers,callees = List.partition (fun reg -> Array.mem reg (Asm.caller_regs)) (List.rev valuelist) in
      (* (Printf.printf "valuelist : {%s}, callers : {%s}, callees : {%s}\n" (U.list_to_string valuelist) (U.list_to_string callers) (U.list_to_string callees)); *)
      (if (*S.mem key !Dfa.loopvars*)true then (*callee優先で返す?*)
        (try List.hd callees with | Failure _ -> List.hd callers)
      else (*caller優先で返す*)
        (try List.hd callers with | Failure _ -> List.hd callees))
    with | Failure(_) -> (Printf.eprintf "find empty bind\n";raise Not_found )(*hdが失敗した場合を別で検知したほうがいいかも*)

let get_all_value m = 
  List.concat (List.map snd (M.bindings m))
let forward_merge m1 m2 = 
  let m2_values = get_all_value m2 in 
  M.merge (fun key x y -> 
    match x,y with
    | Some(xbind),None -> 
      let xbind' = List.filter (fun reg -> not(List.mem reg m2_values)) xbind in  
      if List.length xbind' > 0 then Some(xbind') else(Printf.eprintf "reg bind stashed(m) : %s = {%s}\n" key (U.list_to_string xbind);None)
    | None, Some _ -> y
    | None, None -> None
    (* | Some t1, Some t2 when t1 = t2 -> x *)
    | Some t1, Some t2 -> 
      let t1' = List.filter (fun reg -> not(List.mem reg m2_values)) t1 in  
      (if t1' <> t1 && !is_while then Printf.eprintf "reg bind stashed(m) : %s = {%s}\n" key (U.list_to_string (U.list_diff t1 t1')));
      Some(t1'@t2)
      (* assert(false) *)
      (* (Printf.eprintf "%s = %d or %d should be branch same value\n" key t1 t2;
        Some (min t1 t2)) *)
    ) m1 m2 

let diff_regenv m1 m2 = 
  M.merge (fun key x y -> 
    match x, y with 
      | Some _ , None -> x
      | None, _ -> None
      | Some(xbind),Some(ybind) -> 
        let newbind = U.list_diff xbind ybind in 
        if List.length newbind = 0 then None else Some(newbind)
  ) m1 m2

let val_unique_mem value map = 
  M.exists (fun _ vlist -> List.mem value vlist && List.length vlist = 1) map

let init_env = M.add vexp_zero [Asm.reg_fzero] M.empty 

module Dom = Graph.Dominator.Make(G)

(* let regenv = ref M.empty *)
let allreg = (S.of_list (allregs@allfregs))
let callee_reg = S.of_list (Array.to_list Asm.callee_regs)
let caller_reg = S.of_list (Array.to_list Asm.caller_regs)

(*再計算するvexp -> その式*)
let rematerial = ref M.empty
(*spillしたメモリ変数*)
let memvars = ref S.empty

(* 使用するcallee save reg (退避/復帰が必要) *)
let dirty_callee_reg = ref S.empty

let is_to_callee_save fentry vexp = 
  try 
  (* Printf.printf "begin is callee save\n";flush stdout; *)
  let calleesaves = (try Hashtbl.find Bpschedule.fentry2calleesaves fentry with | Not_found -> Printf.eprintf "calleesave not found for fentry %d" fentry;raise Not_found) in 
  let tmp = S.mem vexp calleesaves in
  (* Printf.printf "end is callee save\n";flush stdout; *)
  tmp
  with | Not_found -> false (*callee saveのない関数とみなす, 危なそう*)


let map_op regenv x =
  let x' = (strip_branch_suffix x) in 
  (* (if x <> x' then Printf.eprintf "strip branch suffix in %s (op)\n" x); *)
  let x = x' in 
  (try find x regenv with 
| Not_found ->  if x.[0] <> '#' then x (*global変数を想定*)
  else 
    (try let (vexp,_) = split_vexp_reg x in find vexp regenv with
      | Not_found -> raise Not_found 
        (* failwith (Printf.sprintf "found undefined variable %s during ssa_regalloc" x) *)
        )) (*ここから再計算とかreloadとかできるようにするべし*)

let map_op2 regenv2 regenv1 x = 
  try 
    map_op regenv1 x
  with | Not_found -> map_op regenv2 x

let map_dest regenv x = 
  let x' = (strip_branch_suffix x) in 
  (* (if x <> x' then Printf.eprintf "strip branch suffix in %s (dest)\n" x); *)
  let x = x' in 
  if is_reg x then (remove_alpha (strip_branch_suffix x))
  else (try find x regenv with | Not_found -> raise Not_found)

(* let wrap_map (dest_regenv,op_regenv) (map_dest,map_op) ssa = 
  try
    [Ssa.map2 map_dest map_op ssa] 
  with | Rematerial -> 
    | Reload ->  *)

let get_using_regs regenv = (M.fold (fun _ reglist acc -> S.add_list reglist acc) regenv S.empty)

let get_callee_newreg regenv = 
  try 
  let currentuse = get_using_regs regenv in 
    let newreg = S.choose (S.diff callee_reg currentuse) in 
    dirty_callee_reg := S.add newreg !dirty_callee_reg;
    newreg
  with | Not_found -> 
     (print_regenv regenv;Printf.eprintf "must find callee reg, but fail to get one\n";raise NoAvailReg) 
     
let to_free = ref S.empty

let get_take_priority_list (b,r) regenv = 
  let uses = Datagraph.get_use (b,r) in
  Printf.printf "(%d,%d) : use = {%s}\n before regenv = " b r (S.to_string uses);flush stdout;
  print_regenv regenv;flush stdout;
  let candidatelist = 
  M.fold (fun vexp reglist acc -> (*これはcallerのはず?*)
  try 
    (if (List.length (List.filter (fun reg -> S.mem reg caller_reg) reglist) > 1) && not(S.mem vexp uses) then 
      let caller = List.hd (List.filter (fun reg -> S.mem reg caller_reg) reglist) in (1,caller,vexp)::acc
    else if ( M.mem vexp !rematerial) && not(S.mem vexp uses) then (2,List.hd reglist,vexp)::acc 
    else if (S.mem vexp !memvars) && not(S.mem vexp uses) then (3,List.hd reglist,vexp)::acc 
    else if (S.mem vexp !to_free) && not(S.mem vexp uses) then (0,List.hd reglist,vexp)::acc
    else acc)
  with | e -> (Printf.eprintf "error in get take priority list at %s -> {%s}\n" vexp (U.list_to_string reglist);raise e)
  ) regenv [] in 
    candidatelist


let take_reg_from_memvar (b,r) regenv = 
  let candidatelist = get_take_priority_list (b,r) regenv in 
    (try 
      let _,reg,vexp = (List.hd (List.sort compare candidatelist)) in (Printf.printf "take away from %s -> %s\n" vexp reg;flush stdout;reg)
    with | Failure(_) -> ((*Printf.printf "memvars = {%s}\n" (S.to_string !memvars);*)raise Not_found)) 
     
let get_newreg (b,r) regenv = (*callerから優先してとりたい*)
  try 
  let currentuse = get_using_regs regenv in 
    S.choose (S.diff caller_reg currentuse)
  with | Not_found ->
    (try 
      take_reg_from_memvar (b,r) regenv
    with | Not_found -> 
      (* print_regenv regenv;Printf.eprintf "no caller reg available at (%d,%d)\n" b r; *)
      get_callee_newreg regenv)

let spill_const vexp = 
  rematerial := M.add vexp (Dfa.vexp2defssa vexp) !rematerial;[]

let spill_var regenv vexp = 
  try 
  if not(S.mem vexp !memvars) then 
  memvars := S.add vexp !memvars;
  [Ssa.Save(vexp,(find vexp regenv))]
  with | Not_found -> (Printf.eprintf "fail to spill %s\nregenv = " vexp;print_regenv regenv;exit(1))

(*これは挿入すべき命令リストを返す?*) 
let spill regenv vexp = 
Printf.printf "spill %s\n" vexp;
(if vexp = vexp_zero then [] else
if (Bpschedule.is_const vexp) then spill_const vexp
else spill_var regenv vexp )

let loopvnum2reg = Hashtbl.create 256

let check_loopvar regenv = 
  (try 
  M.iter (fun vexp regs -> 
    (if S.mem vexp !Dfa.loopvars && not(Hashtbl.mem loopvnum2reg vexp) then (
      Printf.printf "add loopvar %s -> %s\n" vexp (List.hd regs);
    Hashtbl.add loopvnum2reg vexp (List.hd regs))) (*ここでreplaceするとreloadしている場合にまずい?*)
  ) regenv
  with | Failure _ -> failwith "vexp not assigned to reg" )
  
let check_free_reg regenv (bnum,rnum) = 
try 
  (
  (* Printf.printf "check_free_reg (%d,%d)\n" bnum rnum; *)
    if SetInt.mem bnum !Dfa.loopentry then check_loopvar regenv;
  (* Printf.printf "fin check_loopvar (%d,%d)\n" bnum rnum; *)
  let livevars = (try Hashtbl.find instid2livevars (bnum,rnum) with | Not_found -> Printf.eprintf "livevars not found for (%d,%d)" bnum rnum;raise Not_found) in 
  let resenv = M.filter (fun vexp _ -> vexp = vexp_zero || S.mem vexp livevars) regenv in
  (* Printf.printf "vexp killed at (%d,%d) : {" bnum rnum; *)
  let killset = (S.diff (S.of_list (M.all_keys regenv)) (S.of_list (M.all_keys resenv))) in 
  (* S.iter (fun vexp -> Printf.printf "%s, " vexp) killset;
  Printf.printf "}\n"; *)
  to_free := killset;
  resenv)
with | Not_found -> (Printf.eprintf "livevars not found for (%d,%d)" bnum rnum;regenv)
(* (M.fold (fun vexp reg accenv ->
  if vexp <> vexp_zero 
    then 
      (let s = (try Hashtbl.find killpoint (vexp2vnum vexp) with | Not_found -> failwith (Printf.sprintf "kill point not found for %s - %s" vexp reg))
        in 
      (if (IidSet.mem (bnum,rnum) s) then (M.remove vexp accenv) else accenv))
    else accenv
  ) regenv regenv) *)

let r_loop = Str.regexp "_loop_"
let strip_loop_suffix s = Str.global_replace r_loop "" s
(*idを求めることと, 生きていないvexpのinterをとる作業が必要*)

let get_vexp_using_callee_regs regenv = 
  (M.fold (fun vexp reglist acc -> if not(S.is_empty (S.inter callee_reg (S.of_list reglist))) then (S.add vexp acc) else acc) regenv S.empty)
 
let maybe_find_subcall_in_block subcall_ids (b,r) = (*ブロックbでr行以降にあるsubcallのidを取得*)
    List.find_opt (fun (b2,r2) -> (b = b2) && r < r2 ) subcall_ids (* 条件を満たすものが複数あれば最もrが小さい, 近い呼び出しを返す *)

let rec find_nearest_subcalls subcall_ids (b,r)  = (*次に来る可能性のあるsubcall, 分岐があると複数になるのでリストを返す*)
  match (maybe_find_subcall_in_block subcall_ids (b,r)) with 
  | Some(instid) -> [instid]
  | None -> List.fold_left (fun acc_list v -> 
      if v < b then acc_list (*後退辺は追わない*)
      else acc_list@(find_nearest_subcalls subcall_ids  (v,0) )
    ) [] (G.succ !cfg b)

(* let find_nearest_subcalls subcall_ids (b,r) = 
  let reach_from_b = get_reachable b in 
  List.fold_left (fun acc_list (b',r') -> 
      if SetInt.mem b' reach_from_b then 
        (if List.exists (fun (b1,r1) -> SetInt.mem b'(get_reachable b1) || (b' = b1 && r1 < r')) acc_list then acc_list else (b',r')::acc_list)
        else acc_list)  [] subcall_ids *)

let get_instid2savevars (b,r) = 
  try 
  let livevars = (Hashtbl.find instid2livevars (b,r)) in
  livevars
   (* (try Hashtbl.find fentry2calleesaves (get_fentry b) with | Not_found -> S.empty) *)
  with | Not_found -> failwith "not found in instid2savevars" 

let get_next_insts (b,r) = (* 挿入する命令の都合などは...? *)
  if Hashtbl.mem instid2livevars (b,r+1) then [(b,r+1)]
  else List.fold_left (fun acc_list b2 -> 
    if b2 < b then acc_list
    else if Hashtbl.mem instid2livevars (b2,0) then acc_list
    else acc_list@[(b2,0)]
    ) [] (G.succ !cfg b)



let get_move_vexp subcall_ids (b,r) current_lives = 
  try 
  (* Printf.printf "begin get move vexp\n";flush stdout;
  Printf.printf "begin find_nearest_subcalls\n";flush stdout; *)
  (* Printf.printf "nearest_subcalls candidates for (%d,%d) are {%s}\n" b r (tostring_instids subcall_ids);flush stdout; *)
  let nearsubcalls = (find_nearest_subcalls subcall_ids (b,r)) in 
  (* Printf.printf "nearsubcalls for (%d,%d) are {%s}\n" b r (tostring_instids nearsubcalls);flush stdout; *)
  let call_livevars = List.fold_left (fun acc_set (b2,r2) -> 
    (* Printf.printf "nearest subcall : (%d,%d), " b2 r2; *)
    (* let nextinsts = get_next_insts instid in 
    Printf.printf "next insts : {%s}\n" (instlist_to_string nextinsts);
    let = savevars *)
    let savevars = (get_instid2savevars (b2,r2)) in 
    (* Printf.printf "savevars at (%d,%d) : {%s}\n" b2 r2 (S.to_string savevars); *)
    S.union acc_set savevars
  ) S.empty nearsubcalls in  
  (* Printf.printf "call_livevars : {%s}\n" (S.to_string call_livevars); *)
  (* Printf.printf "end get move vexp\n";flush stdout; *)
  (* Printf.printf "move candidate at (%d,%d) = {%s}\n" b r (S.to_string (S.diff current_lives call_livevars)); *)
  S.choose (S.diff current_lives call_livevars) (*liveのうち, callee save regにあるものを選ばないと意味ない*)
  with | Not_found -> 
    try S.choose (S.diff current_lives !memvars)
    with | Not_found ->  
    (Printf.eprintf "not found in get move vexp";raise Not_found)
  
let move_callee_to_caller fname current_instid regenv = 
  try 
  let subcall_ids = Hashtbl.find_all subroutine_id fname in 
  let subcall_ids = List.sort compare subcall_ids in 
  let move_vexp = get_move_vexp subcall_ids current_instid (get_vexp_using_callee_regs regenv) in 
  let newreg = get_newreg current_instid regenv in 
  (* Printf.printf "move callee %s to %s\n" move_vexp newreg;flush stdout;  *)
  let newenv = (M.add move_vexp [newreg] regenv) in 
  (* Printf.printf "newenv = ";print_regenv newenv;flush stdout; *)
  (newenv,[Copy([newreg],[map_op regenv move_vexp])])
  with | Not_found -> failwith "not found in move callee to caller"

let rec is_live_till vexp goals current_id =  (*これ要見直し*)
  (* Printf.eprintf "is_live_till (%d,%d)\n" (fst current_id) (snd current_id); *)
  if List.mem current_id goals then 
    let uses = Datagraph.get_use current_id in
      (S.mem vexp uses)
  else List.fold_left (fun acc' instid -> 
      acc' || ((let uses = Datagraph.get_use instid in
      (S.mem vexp uses))) || (is_live_till vexp goals instid )
    ) false (get_next_insts current_id) (*うまくブロックをまたいでくれていない*)


let is_live_till_next_call (b,r) vexp = 
  try 
  (* Printf.eprintf "is_live_till_next_call %s ? : from (%d,%d)\n" vexp b r;  *)
  let fname = get_fname b in 
  let subcall_ids = Hashtbl.find_all subroutine_id fname in
  let nearest_calls = find_nearest_subcalls subcall_ids (b,r) in 
  (* Printf.eprintf "nearest_calls : ";print_instids nearest_calls; *)
  let is_live = is_live_till vexp nearest_calls (b,r) in 
  (* Printf.eprintf ", is_live : %b\n" is_live; *)
  is_live
  with | e -> Printf.eprintf "is_live_till next fail\n";raise e

let solve_dest_occupied (b,r) (dest_regenv,op_regenv) (dest,src) =  (* ここのmap_opは失敗しないはず, 所属判定をしてから読んでいるので? *)
  try 
    let newreg = get_newreg (b,r) dest_regenv in 
    let move_vexp = get_key dest dest_regenv in 
    let to_move = is_live_till_next_call (b,r) move_vexp in 
    let moveinst = if to_move then [Copy([newreg],[dest])] else [] in 
    let movedenv = if to_move then (M.add move_vexp [newreg] dest_regenv) else dest_regenv in 
    let src_vexp = src in (*get_key src op_regenv*) 
    let newenv = add_bind src_vexp [dest] movedenv in (*ここM.addでまえの割り当てを隠さなくていいのか? 以降でこの割り当てを消されると困る*)
      (newenv,Copy([dest],[(map_op2 op_regenv dest_regenv src)])::moveinst)
    (* if 
      then
        let newenv =  in
           (newenv,[Copy([dest],[(map_op op_regenv src)])])
      else  
        let newenv = add_bind src [dest] dest_regenv in
           (newenv,[Copy([dest],[(map_op op_regenv src)])]) *)
    
  with | NoAvailReg -> (*空きレジスタがないのでspill*) 
    (Printf.eprintf "spill in solve_dest_occupied\n";
    let move_vexp = get_key dest dest_regenv in 
    let spill_inst = spill dest_regenv move_vexp in 
    let newenv = add_bind src [dest] dest_regenv in
    (newenv,[Copy([dest],[(map_op op_regenv src)])]@spill_inst))
  | Not_found -> (Printf.eprintf "key vexp not found";raise Not_found)

let saveenv_for_funccall regenv = 
  M.fold (fun vexp reg acc_list -> 
    if vexp = vexp_zero then acc_list
    else (spill regenv vexp)@acc_list
    ) regenv []

let get_rematerial_ssa newreg op = 
  try 
  let ssadef = M.find op !rematerial in
  let newssadef = Ssa.map2 (fun _ -> newreg) (fun x -> x) ssadef in
  newssadef
  with | Not_found -> Printf.eprintf "%s is not rematerial var, but trying to rematerial" op;raise Not_found  

let get_reload (b,r) op_regenv ssa = 
  let opes = Ssa.get_use ssa in 
  (* Printf.printf "%d : reload opes = {%s}\n" b (U.list_to_string opes); *)
  let resenv,reslist = List.fold_right (fun op (acc_env,acc_list) -> 
    try
    (
    let op_exists op = M.mem op (forward_merge op_regenv acc_env) in (*これacc_envにあったらじゃなくていいのか?*) 
    let op = strip_branch_suffix op in 
    let op = (try fst (split_vexp_reg op) with | Not_found -> op) in 
    if op.[0] <> '#' || op = "#0" then (acc_env,acc_list) (*外部変数, 小数の場合*)
    else 
    (
      (* (if (SetInt.mem b !Dfa.loopblock) &&  Bpschedule.is_const op then ignore(spill_const op)); 暫定処理 *)
      if S.mem op !memvars && (not(op_exists op) (*|| SetInt.mem b !Dfa.loopblock*)) then (*Reload*)
      let newreg = get_newreg (b,r) (forward_merge op_regenv acc_env) in 
        (* Printf.printf "reload %s\n" op; *)
        (add_bind op [newreg] acc_env ,(Ssa.Reload(newreg,op))::acc_list)
      else if M.mem op !rematerial && (not(op_exists op) (* || SetInt.mem b !Dfa.loopblock*)) then (
        (
          if SetInt.mem b !Dfa.loopblock then Printf.printf "loop rematerial %s\noldenv = " op;
        let ssadef = M.find op !rematerial in 
        let newreg = get_newreg (b,r) (forward_merge op_regenv acc_env) in (* ここでop_regenvで使っているレジスタから取るとまずい *)
        let newenv = add_bind op [newreg] acc_env in 
        let newssadef = Ssa.map2 (fun _ -> newreg) (fun x -> map_op newenv x) ssadef in (*この定義のuseは定数だけだから別にmap_opはいらないはず*)
        (* (if SetInt.mem b !Dfa.loopblock then 
          (print_regenv (forward_merge op_regenv acc_env);
            Printf.printf "newenv = ";print_regenv newenv;
            Printf.printf "newssadef = %s\n"(Ssa.to_string newssadef);)); *)
        (newenv,newssadef::acc_list)))
      else if (op_exists op) then (acc_env,acc_list)
      else raise Not_found)) (* vexpでないか, レジスタに割り当てられている場合 *)
  with | Not_found -> print_regenv op_regenv;flush stdout;failwith (Printf.sprintf "Fail to reload %s in %s at (%d,%d)" op (Ssa.to_string ssa) b r)
    ) opes (M.empty,[]) in 
    (* Printf.printf "vexp reload for %s : {" (Ssa.to_string ssa);
    S.iter (fun vexp -> Printf.printf "%s -> %s, " vexp (M.find vexp resenv) ) (S.diff (S.of_list (M.all_keys resenv)) (S.of_list (M.all_keys op_regenv)));
    Printf.printf "}\n"; *)
    (resenv,reslist)

let bnum2phiwreg = Hashtbl.create 256
let bnum2loopentry_env = Hashtbl.create 256

let make_movegraph g dests srcs = 
  List.iter2 (fun  dest src -> Printf.printf "%s <- %s\n" dest src;if src <> dest then G2.add_edge g src dest) dests srcs

let move_to_last dests srcs cycle_src = 
  let rec f d s new_d new_s = 
    match d,s with 
      | [],[] -> new_d,new_s
      | h1::ls1,h2::ls2 when h2 = cycle_src -> 
        let d',s' = f ls1 ls2 new_d new_s in (d'@[h1],d'@[h2])
      | h1::ls1,h2::ls2 -> f ls1 ls2 (new_d@[h1]) (new_s@[h2])
      | _ -> assert(false)
  in f dests srcs [] []

let rec resolve_cyclic_copies to_memvars op_regenv hd get_copys scc_set next_dest (acc_env,acc_list) is_dest_bind = 
  try 
  if S.is_empty scc_set then (acc_env,acc_list)
  else (let dests,srcs = get_copys next_dest in 
  if List.length srcs = 0 then failwith (Printf.sprintf "cycle node %s must have a source" next_dest)
  else 
    let cycle_src = (try List.find (fun x -> S.mem (map_op op_regenv x) scc_set) srcs with | Not_found -> (Printf.eprintf "cycle src not found : dst = %s, {%s} <= {%s}\n" next_dest (U.list_to_string dests) (U.list_to_string srcs);raise Not_found)) in 
    let cycle_src_reg = map_op op_regenv cycle_src in 
    let dests,srcs = move_to_last dests srcs cycle_src in 
    let new_pair = (
    List.fold_left2 (fun (in_acc_regenv,in_acc_list) dst_vexp src ->
      let src_reg = if src = hd then Asm.reg_tmp else (try map_op op_regenv src with | Not_found ->  Printf.eprintf "map_op fail for srcs = %s, regenv = " (U.list_to_string srcs);print_regenv op_regenv;raise Not_found) in 
      (if S.mem dst_vexp to_memvars then (Printf.printf "regcopy to %s <= %s spill\n" next_dest dst_vexp;
      let bind_vexp = (if is_dest_bind then dst_vexp else src) in 
      let newenv = add_bind src [next_dest] in_acc_regenv in 
      let spill_env = add_bind bind_vexp [next_dest] in_acc_regenv in 
      Printf.printf "spill inst : %s\n" (Ssa.list_to_string (spill_var spill_env bind_vexp));
      let newinst = (spill_var spill_env bind_vexp)@Copy([next_dest],[src_reg])::in_acc_list in 
      (newenv,newinst))
      else ((add_bind src [next_dest] in_acc_regenv,Copy([next_dest],[src_reg])::in_acc_list))
      )) (acc_env,acc_list) dests srcs ) in 
    resolve_cyclic_copies to_memvars op_regenv hd get_copys  (S.remove cycle_src_reg scc_set) cycle_src_reg new_pair is_dest_bind)
  with | e -> Printf.printf "something went wrong at resolve cyclic copy \n";raise e

let resolve_regcopys (b,r) (dest_regenv,op_regenv) reload_inst (dst_vexps,dests) srcs is_dest_bind = 
  (* Printf.printf "resolve regcopys at (%d,%d)\n{%s} <- {%s}\nregenv = " b r (U.list_to_string dests) (U.list_to_string srcs); *)
  let g = G2.create() in 
  (* Printf.printf "move graph for(%d,%d)\n" b r; *)
  let to_memvars = (try Hashtbl.find fentry2memvars (Dfa.get_fentry b) with | Not_found -> S.empty) in 
  (*恒等moveのmemvarの処理*)
  
  let dest_regenv',spill_inst = List.fold_left2 (fun (acc_regenv,acc_insts) (dst_vexp,dst_reg) src -> 
    if S.mem dst_vexp to_memvars && (dst_reg = (map_op op_regenv src)) then (Printf.printf "regcopy to %s <= %s spill at (%d,%d)\n" dst_reg dst_vexp b r;
      let bind_vexp = (if is_dest_bind then dst_vexp else src) in 
      let newenv = add_bind src [dst_reg] acc_regenv in 
      let spill_env = add_bind bind_vexp [dst_reg] acc_regenv in 
      Printf.printf "spill inst : %s\n" (Ssa.list_to_string (spill_var spill_env bind_vexp));
      let newinst = (spill_var spill_env bind_vexp)@acc_insts in 
      (newenv,newinst)
    )
    else (acc_regenv,acc_insts)
    
    ) (dest_regenv,reload_inst) (List.combine dst_vexps dests) srcs in
  let current_srcs = List.map (try map_op op_regenv with | Not_found -> Printf.eprintf "map_op fail for srcs = %s, regenv = " (U.list_to_string srcs);print_regenv op_regenv;raise Not_found) srcs in 
  make_movegraph g dests current_srcs;
  (* let oc_func = open_out_bin "resolve.dot" in
          Dot2.output_graph oc_func g;Out_channel.close oc_func; *)
  let get_src_vexp reg = 
    (* (try let idx = Option.get (List.find_index (fun v' -> v = v') dests) in List.nth srcs idx with | e -> (*Printf.eprintf "src %s not found in resolve regcopys" v ;*)raise NoSrc) in  *)
    List.fold_right2 (fun src reg' acc_list -> if reg = reg' then src::acc_list else acc_list ) srcs dests [] in
  let get_dst_vexp reg = 
    List.fold_right2 (fun vexp reg' acc_list -> if reg = reg' then vexp::acc_list else acc_list ) dst_vexps dests [] in
  (* let get_src_regs v = (let preds = (G2.pred g v) in if List.length preds = 0 then raise NoSrc else preds) in *)
  let scc_list = CompoG2.scc_list g in 
  List.fold_left (fun  (acc_destenv,acc_list) scc -> 
    (* Printf.printf "(%d,%d) scc : {%s}\n" b r (U.list_to_string scc); *)
      match scc with 
        | [] -> assert(false)
        | [v] -> (let srcs = get_src_vexp v in 
                      let dsts = get_dst_vexp v in 
                      List.fold_left2 (fun (in_acc_regenv,in_acc_list) dst_vexp src ->
                        (if S.mem dst_vexp to_memvars then (Printf.printf "regcopy to %s <= %s spill at (%d,%d)\n" v dst_vexp b r;
                        let bind_vexp = (if is_dest_bind then dst_vexp else src) in 
                        let newenv = add_bind src [v] in_acc_regenv in 
                        let spill_env = add_bind bind_vexp [v] in_acc_regenv in 
                        Printf.printf "spill inst : %s\n" (Ssa.list_to_string (spill_var spill_env bind_vexp));
                        let newinst = (spill_var spill_env bind_vexp)@Copy([v],[(try map_op op_regenv src with | Not_found ->  Printf.eprintf "map_op fail for srcs = %s, regenv = " (U.list_to_string srcs);print_regenv op_regenv;raise Not_found)])::in_acc_list in 
                        (newenv,newinst))
                        else ((add_bind src [v] in_acc_regenv,Copy([v],[(try map_op op_regenv src with | Not_found ->  Printf.eprintf "map_op fail for srcs = %s, regenv = " (U.list_to_string srcs);print_regenv op_regenv;raise Not_found)])::in_acc_list))
                        )) (acc_destenv,acc_list) dsts srcs 
                    (* Printf.printf "add bind %s -> %s\n" src v; *)
                    (* let may_spill = if G2.in_degree g v > 1 then (Printf.printf "regcopy to %s spill at (%d,%d)\n" v b r;)ここでdstがmem varなのか確かめたいけど, vexpをもらってない in  *)
                    (* let bind_vexp = (if is_dest_bind then dst_vexp else src) in  *)  
                  (* with | NoSrc -> (acc_destenv,acc_list) *)
                  )
        | hd::_ -> (*この場合は全部dstだしsrcでもある, 極大サイクルなので*)
            (let prev_inst = Copy([Asm.reg_tmp],[hd])::acc_list in 
            Printf.printf "regcopy at (%d,%d) component = {%s}\n" b r (U.list_to_string scc);
            let hd_vexp = List.hd (get_dst_vexp hd) in (*ここが正確ではないかも*)
            Printf.printf "hd_vexp = %s\n" hd_vexp;
            let newenv,mid_inst = resolve_cyclic_copies to_memvars op_regenv hd (fun v -> 
              let dsts = get_dst_vexp v in 
              let srcs = get_src_vexp v in 
              (dsts,srcs)
               ) (S.remove hd (S.of_list scc)) hd (acc_destenv,prev_inst) is_dest_bind in 
            let hd_dest = (try List.hd (G2.succ g hd) with | e -> Printf.eprintf "hd_dest not found\n";raise e) in 
            let newenv' =  (add_bind hd_vexp [hd_dest] newenv) in 
            let hd_dest_vexp = List.hd (get_dst_vexp hd_dest) in (*ここが正確ではないかも*)
            let spill_env = add_bind hd_dest_vexp [hd_dest] newenv in 
            Printf.printf "spill inst : %s\n" (Ssa.list_to_string (spill_var spill_env hd_dest_vexp));
            let maybe_spill_hd = if S.mem hd_dest_vexp to_memvars then (spill_var spill_env hd_dest_vexp) else [] in 
              newenv',maybe_spill_hd@(Copy([hd_dest],[Asm.reg_tmp])::mid_inst))
            (* List.fold_right (x (prev_x,inner_acc_list)) tl (hd,) in    *)
    ) (dest_regenv',spill_inst) scc_list
  (* let topolist =  (TopoG2.fold (fun v acc -> v::acc) g []) in 
  Printf.printf "resolve regcopy (%d,%d) : topo = {%s}\n" b r (String.concat "," topolist);
  List.fold_left(fun (acc_destenv,acc_list) v -> 
      if List.mem v dests 
      then (try 
        let src = get_src v in 
        Printf.printf "try %s <= %s\n" v src;
        if val_unique_mem v acc_destenv then 
          (
            Printf.printf "solve_dest occupied at (%d,%d) for  %s <- %s\n" b r v src;
        let (resenv,instlist) = solve_dest_occupied (b,r) (acc_destenv,op_regenv) (v,src) in (*移動先レジスタが開いていない*)
        Printf.printf "solve_dest_occupied resenv ="; print_regenv resenv;
        (resenv,instlist@acc_list))
        else (add_bind src [v] acc_destenv,Copy([v],[map_op2 op_regenv acc_destenv src])::acc_list) (*これあやしい*)
        with | Failure _ -> (acc_destenv,acc_list) (*destだけど, 移動が消えている場合(自己ループ)*) )
      else (acc_destenv,acc_list)
       ) (dest_regenv,reload_inst) topolist *)

let get_loopentry b = 
  try 
  List.find (fun b' -> b' < b) (G.succ !cfg b)
  with | e -> (Printf.eprintf  "loopentry not found for B%d\n" b;raise e)

let get_loop_frontier loopentry b = (*ここの処理が今のところ厳密じゃない*)
try 
  let frontiers = Hashtbl.find_all Dfa.loopentry2ret loopentry in 
  if List.length frontiers = 0 then raise Not_found
  else frontiers
with | Not_found -> Printf.eprintf "couldn't get loop frontier for loopentry B%d\n" loopentry;raise Not_found

let insert_reloads_to_loop_frontier loopentry b reload_insts = 
  let brets = get_loop_frontier loopentry b in 
  Printf.printf "ret blocks for loopentry B%d are {%s}\n" loopentry (U.intlist_to_string brets);
  Printf.printf "%s\n" (Ssa.list_to_string reload_insts);
  List.iter (fun bret -> 
  try 
    let old_instlist = Hashtbl.find block2alloced_insts bret in 
    Hashtbl.replace block2alloced_insts bret (U.list_unique_rev_append reload_insts old_instlist)
  with | Not_found -> Hashtbl.add block2alloced_insts bret reload_insts) brets



let get_true_use_for_loop g loopentry = (*これちゃんと無限ループ起きないようになっているのか? *)
try 
  let retblocks = Hashtbl.find_all Dfa.loopentry2ret loopentry in 
  let visited = ref SetInt.empty in 
  (if List.length retblocks = 0 then (Printf.eprintf "couldn't get loop frontier for loopentry B%d\n" loopentry;failwith "found loop withtout ret"));
  let rec find_true_use_for_loop g b acc_set = 
    (if List.mem b retblocks || SetInt.mem b !visited then acc_set
    else 
      (
        (* Printf.eprintf "get_true_use visited B%d\n" b; *)
      let new_use = get_true_use_for_block b in 
      visited := SetInt.add b !visited;
      List.fold_left (fun inner_acc_set bnext -> 
        if bnext > b && not(SetInt.mem bnext !visited) then find_true_use_for_loop g bnext inner_acc_set
        else inner_acc_set) (S.union acc_set new_use) (G.succ g b)))
  in find_true_use_for_loop g loopentry S.empty 
with | e -> Printf.eprintf "unexpected error occured in get true use for loop from B%d\n" loopentry;exit(1)
  

let map_knownreg_insn (b,r) regenv ssa = (* 新しい割当がない場合 *)
Printf.printf "mapknownreginsn at (%d,%d)\n" b r;
try
(let add_regenv,reload_inst = get_reload (b,r) regenv ssa in 
let new_regenv = forward_merge regenv add_regenv in 
(if not(M.is_empty add_regenv) then Printf.printf "add_regenv =";print_regenv add_regenv;Printf.printf "new_regenv =";print_regenv new_regenv);
let map_op_i = map_op new_regenv in 
let map_dest_i = map_dest new_regenv in 
  match ssa with 
    |  Phi_r(srcs) -> 
      (let loopcont_env, new_instlist = 
        (try (let (vexps,regs) = Hashtbl.find bnum2phiwreg b in
                (* print_regenv new_regenv;flush stdout; *)
                Printf.printf "regs = {%s}, srcs = {%s}\n" (U.list_to_string regs) (U.list_to_string srcs);
                resolve_regcopys (b,r) (new_regenv,new_regenv) reload_inst (vexps,regs) srcs true)
        with | Not_found -> 
          try (new_regenv,(Ssa.map2 map_dest_i map_op_i ssa)::reload_inst) with Not_found -> Printf.printf "regenv = " ;print_regenv new_regenv;Printf.printf "ssa = %s\n" (Ssa.to_string ssa); failwith "operands should be allocated before use"
          (* failwith (Printf.sprintf "phi_r fail at (%d,%d) for %s" b r (Ssa.to_string ssa)) *)
        ) in 
        Printf.printf "newinstlist\n%s\n" (Ssa.list_to_string new_instlist); 
        let new_instlist' = 
          (if not(Hashtbl.mem bnum2loopentry_env b) then new_instlist
            else  
            (let loopentry_env = (try Hashtbl.find bnum2loopentry_env b with | Not_found -> Printf.printf "loopentry env not found for B%d\n" b;raise Not_found) in 
              let loopentry = get_loopentry b in 
              let last_rnum = Bpschedule.get_last_row loopentry in
              Printf.printf "B%d loopentry env =" b;print_regenv loopentry_env;flush stdout;
              Printf.printf "B%d loopcont env =" b;print_regenv loopcont_env;flush stdout;
              let diffenv = (diff_regenv loopentry_env loopcont_env) in 
              Printf.printf "B%d env diff =" b;print_regenv diffenv;flush stdout;
              let loopliveoutvars = Bpschedule.get_livevars (loopentry,last_rnum) in 
              let fentry = Dfa.get_fentry b in 
              let memvars = (try Hashtbl.find fentry2memvars fentry with | Not_found -> Printf.eprintf "memvar not found for fentry = %d\n" fentry;raise Not_found) in 
              let rematerials = (try Hashtbl.find fentry2rematerials fentry with | Not_found -> Printf.eprintf "rematerials not found for fentry = %d\n" fentry;raise Not_found ) in 
              let calleesaves = (try Hashtbl.find fentry2calleesaves fentry with | Not_found -> Printf.eprintf "calleesaves not found for fentry = %d\n" fentry;raise Not_found ) in 
              let get_type x =  if S.mem x memvars then 3 else if S.mem x rematerials then 2 else if S.mem x calleesaves then 1 else 0 in 
              (* Printf.eprintf "begin get_true_use_for_loop for B%d\n" loopentry;flush stderr; *)
              let entry_uses = get_true_use_for_loop !cfg loopentry in (*ループの外からもらってくる値*)
              (* Printf.eprintf "end get_true_use_for_loop for B%d\n" loopentry;flush stderr; *)
              Printf.printf "loop entry B%d true uses : {%s}\n" loopentry (S.to_string entry_uses);
              let entry_insts = (try Hashtbl.find block2alloced_insts loopentry with | Not_found -> failwith "loopentry insts not found") in
              let entry_def_regs = List.fold_left (fun acc_set ssa -> (try S.union acc_set (S.of_list (Ssa.get_defs ssa)) with | NoDest -> acc_set)) S.empty entry_insts in 
              let mapped_ssa = (try Ssa.map2 (fun x -> x) (map_op_i) ssa with | Not_found -> Printf.printf  "fail map phir : %s\nloopcont_env = " (Ssa.to_string ssa);print_regenv loopcont_env;raise Not_found ) in 
              let loopdiffvars,frontier_reload_insts,entry_reload_insts = M.fold (fun vexp regs (acc_vars,acc_frontier_list,acc_entry_list) -> 
                if not(S.mem vexp loopliveoutvars) then (acc_vars,acc_frontier_list,acc_entry_list) 
                else 
                  let newdiffvars = vexp::acc_vars in 
                  let new_frontier_list, new_entry_list = 
                    (match (get_type vexp) with 
                      | 0 -> failwith "loopliveout diff vars must be memvar or rematerial"
                      | 1 -> if List.exists is_callee regs then failwith "callee assign is droped until a loop" else acc_frontier_list,acc_entry_list
                      | 2 -> (assert(List.length regs = 1);let newreg = (try List.hd regs with | e -> Printf.eprintf "error in map known phir\n";raise e) in  
                          if S.mem vexp entry_uses then (acc_frontier_list,(get_rematerial_ssa newreg vexp)::acc_entry_list) else
                          if not(S.mem newreg entry_def_regs) then ((get_rematerial_ssa newreg vexp)::acc_frontier_list,acc_entry_list)
                          else (acc_frontier_list,acc_entry_list))
                      | 3 -> (assert(List.length regs = 1);let newreg = (try List.hd regs with | e -> Printf.eprintf "error in map known phir\n";raise e) in 
                          if S.mem vexp entry_uses then (acc_frontier_list,Reload(newreg,vexp)::acc_entry_list)
                          else if not(S.mem newreg entry_def_regs) then (Reload(newreg,vexp)::acc_frontier_list,acc_entry_list)
                          else (acc_frontier_list,acc_entry_list))
                    ) 
                  in (newdiffvars,new_frontier_list,new_entry_list)
                ) diffenv ([],[],mapped_ssa::new_instlist) in 
              (if List.length loopdiffvars > 0 then 
              (Printf.printf "B%d find loopliveout vars\n" b;
              (* insert_reloads_to_loop_frontier loopentry b frontier_reload_insts; *)
              Bpschedule.print_categorized_livevars (b,r);flush stdout;
              Bpschedule.print_categorized_livevars (loopentry,last_rnum);flush stdout));
              entry_reload_insts (*reloadが追加されたnew_instlist*)
            )
          ) 
        in 
        (loopcont_env,new_instlist'))
    | _ -> 
         try (new_regenv,(Ssa.map2 map_dest_i map_op_i ssa)::reload_inst) with Not_found -> (Printf.printf "regenv = " ;print_regenv new_regenv;Printf.printf "ssa = %s\n" (Ssa.to_string ssa); failwith "operands should be allocated before use(2)")
) with | e -> (Printf.printf "error in map known reg insn at (%d,%d) : %s\n" b r (Ssa.to_string ssa);raise e)
let mapreg_insn (b,r) (dest_regenv,op_regenv) ssa = 
  (* Printf.printf "mapreginsn\n"; *)
  let add_regenv,reload_inst = get_reload (b,r) op_regenv ssa in 
  let op_regenv = forward_merge op_regenv add_regenv in 
  let dest_regenv = forward_merge dest_regenv add_regenv in 
  (match ssa with
  (*with constraint*)
  | Copy(dests,srcs) when List.for_all is_reg dests -> (*引数設定, 同じレジスタで移動が不要な場合は命令なし*)  
    let reg_dests = List.map (fun dest -> remove_alpha (strip_branch_suffix dest)) dests in 
    (* let srcs = List.map (map_op op_regenv) srcs in  *)
    resolve_regcopys (b,r) (dest_regenv,op_regenv) reload_inst (dests,reg_dests) srcs false (*ループ変数に関するコピーが起こらなかったら追加することにするか?*)
    (* (if dest = (map_op op_regenv src) 
      then (dest_regenv,reload_inst)
      else if val_unique_mem dest dest_regenv 
      then (
        (* Printf.printf "begin solve dest occupied\n";flush stdout; *)
        let (resenv,instlist) = solve_dest_occupied (b,r) (dest_regenv,op_regenv) (dest,src) in (*移動先レジスタが開いていない*)
        (* Printf.printf "end solve dest occupied\n";flush stdout; *)
          (resenv,instlist@reload_inst))
      else (add_bind src [dest] dest_regenv, (Copy(dest,map_op op_regenv src))::reload_inst)
    )  *)
  | Copy(dests,srcs) when List.for_all is_loopvar dests -> (*loop更新*)
      let regs = (try List.map (fun loopargname -> (*Printf.printf "looparg %s, %s\n" loopargname (strip_loop_suffix loopargname);*)
      let vnum = (Hashtbl.find Dfa.id2vnum (strip_loop_suffix loopargname)) in 
        let reg = Hashtbl.find loopvnum2reg (Dfa.vnum2vexp vnum) in 
        (* Printf.printf "%s %s #%d , reg = %s\n" (strip_loop_suffix loopargname) loopargname vnum reg; *)
        reg) dests with | Not_found -> failwith "can't find loopvars allocation") in
      (* let srcs = List.map (map_op op_regenv) srcs in  *)
      resolve_regcopys (b,r) (dest_regenv,op_regenv) reload_inst (dests,regs) srcs true (* この環境でいいのか? *)
  | Call(vexp,f,args,fargs) -> (*Printf.eprintf "%s in mapreg" (to_string ssa);print_regenv dest_regenv;flush stdout;print_regenv op_regenv;*)assert(false) (*precolor の方でやるはず?*) (*返り値設定*) 
    (* (Printf.printf "call %s livevars are : " f;print_regenv dest_regenv;
     (try 
      let newreg = get_newreg dest_regenv in 
      let new_destenv = M.add (get_def ssa) newreg dest_regenv in 
        (new_destenv,(Ssa.map2 (fun _ -> newreg) (fun x -> map_dest op_regenv x) ssa)::reload_inst)
    with Not_found -> failwith "spill occured" (* ここでspillがおきないように変えるはず *))) *)
  | Phi_w(_) -> map_knownreg_insn (b,r) op_regenv ssa
  | _ -> 
    (if (List.exists (fun vexp -> M.mem vexp op_regenv) (Ssa.get_defs ssa)) then (print_regenv op_regenv;flush stdout;(Printf.eprintf "%s is alloced before definition !?" (U.list_to_string (get_defs ssa)));failwith "unexpected pattern"));
    (*割当, レジスタを逆伝播させるなら間はなるべく関数の引数じゃないレジスタがいいかな?*)
    (try 
      let newreg = get_newreg (b,r) dest_regenv in 
      let new_destenv = add_bind (get_def ssa) [newreg] dest_regenv in 
        (new_destenv,(Ssa.map2 (fun _ -> newreg) (fun x -> map_op op_regenv x) ssa)::reload_inst)
    with | e -> (Printf.printf "fail in mapreg_insn at (%d,%d) for %s\n" b r (Ssa.to_string ssa);raise e)
      (* | NoAvailReg -> (*レジスタ負荷が最大で, destがmemvarの場合, いったんreg_tmpに入れて退避することにする?*)
          let newreg = Asm.reg_tmp in 
          let vexp = (get_def ssa) in (*これがvexpである保証は?*)
          let tmp_regenv = add_bind vexp [newreg] dest_regenv in 
          let spill_inst = spill_var tmp_regenv vexp in 
            (dest_regenv,spill_inst@(Ssa.map2 (fun _ -> newreg) (fun x -> map_op op_regenv x) ssa)::reload_inst) *)
    (* | Not_found -> (print_regenv dest_regenv;flush stdout;print_regenv op_regenv;failwith (Printf.sprintf "spill occured at inst : %s" (Ssa.to_string ssa)) ここでspillがおきないように変えるはず) *)
    )
    )

let check_precolor (b,r) (dest_regenv,op_regenv) ssa = 
  (* Printf.printf "check_precolor\n"; *)
  try let dest = get_def ssa in
      let dest' = (strip_branch_suffix dest) in 
      (* (if dest <> dest' then Printf.eprintf "strip branch suffix in %s (precolor)\n" dest); *)
      let dest = dest' in 
      let (vexp,reg) =split_vexp_reg dest in 
      if M.mem vexp dest_regenv then (failwith (Printf.sprintf "%s is allocated before definition ?" vexp))
      else (* call ではないはず *)
        let add_regenv,reload_inst = get_reload (b,r) op_regenv ssa in
          let op_regenv = forward_merge op_regenv add_regenv in 
          let dest_regenv = forward_merge dest_regenv add_regenv in 
          let is_not_live = (try let move_vexp = get_key reg dest_regenv in Printf.printf "move_vexp = %s, vexp = %s, reg = %s\n" move_vexp vexp reg;
          not(is_live_till_next_call (b,r) move_vexp) with | Not_found -> true) in 
        if is_not_live then (* 複数割り当てある場合は? *)
          (
            (* Printf.printf "vexp=%s, regenv =" vexp;print_regenv dest_regenv; *)
          (* let move_vexp = (try get_key reg dest_regenv with | Not_found -> "$none") in *)
          (* Printf.printf "move_vexp = %s\n" move_vexp;  *)
          let new_destenv = add_bind vexp [reg] dest_regenv in  
          (new_destenv, (Ssa.map2 (fun _ -> reg) (fun x -> try map_op op_regenv x with | Not_found -> Printf.printf  "fail map phir : %s\nloopcont_env = " (Ssa.to_string ssa);print_regenv op_regenv;raise Not_found) ssa)::reload_inst)) (*destをregに変える, 1つ目のmapを変えればmapreg_insnと分ける必要がない気もする*)
        (* if val_unique_mem reg dest_regenv then  *)
        else 
          let (newenv,newinst) = mapreg_insn (b,r) (dest_regenv,op_regenv) (Ssa.map2 (fun _ -> vexp) (fun x -> x) ssa) in (* ここでregがすでに使われている -> mapreg_insnに飛ばせばOK? *)
          (newenv,newinst@reload_inst) 
  with
    | NoDest -> map_knownreg_insn (b,r) op_regenv ssa
    | Not_found | MultiDest -> mapreg_insn (b,r) (dest_regenv,op_regenv) ssa (*ここでNot_precoloredを使わないことにしたのだった*)

let check_callee_save fentry (b,r) (dest_regenv,op_regenv) ssa = 
  try
    (let dest = get_def ssa in
    let dest' = (strip_branch_suffix dest) in 
    (* (if dest <> dest' then Printf.eprintf "strip branch suffix in %s (precolor)\n" dest); *)
    let dest = dest' in 
    let vexp = Datagraph.get_vexp dest in 
    (* Printf.printf "check callee save for : %s\n" vexp; *)
    if S.mem vexp (try Hashtbl.find fentry2memvars fentry with | Not_found -> S.empty) then 
      (Printf.eprintf "mem save at (%d,%d) : %s\n" b r vexp;
      let add_regenv,reload_inst = get_reload (b,r) op_regenv ssa in 
      let op_regenv = forward_merge op_regenv add_regenv in 
      let dest_regenv = forward_merge dest_regenv add_regenv in 
      (try 
        let newreg = get_newreg (b,r) dest_regenv in 
        let new_destenv = add_bind vexp [newreg] dest_regenv in 
        (new_destenv, (spill_var new_destenv vexp)@(Ssa.map2 (fun _ -> newreg) (fun x -> map_op op_regenv x) ssa)::reload_inst)
      with | NoAvailReg -> (*レジスタ負荷が最大で, destがmemvarの場合, いったんreg_tmpに入れて退避することにする?*)
          Printf.eprintf "use reg tmp for %s to save in memory\n" vexp;
          let newreg = Asm.reg_tmp in 
          let vexp = (get_def ssa) in (*これがvexpである保証は?*)
          let tmp_regenv = add_bind vexp [newreg] dest_regenv in 
          let spill_inst = spill_var tmp_regenv vexp in 
            (dest_regenv,spill_inst@(Ssa.map2 (fun _ -> newreg) (fun x -> map_op op_regenv x) ssa)::reload_inst))
      )
    else if is_to_callee_save fentry vexp then
      (
        (* Printf.printf "callee save %s\n" vexp; *)
      let add_regenv,reload_inst = get_reload (b,r) op_regenv ssa in 
      let op_regenv = forward_merge op_regenv add_regenv in 
      let dest_regenv = forward_merge dest_regenv add_regenv in 
      let newreg,dest_regenv,add_inst = (
          try
            get_callee_newreg dest_regenv,dest_regenv,[]
          with | NoAvailReg -> 
            let dest_regenv,add_inst = move_callee_to_caller (get_fname fentry) (b,r) dest_regenv in 
            get_callee_newreg dest_regenv, dest_regenv, add_inst
          )
      in 
      let new_destenv = add_bind vexp [newreg] dest_regenv in 
        (new_destenv, (Ssa.map2 (fun _ -> newreg) (fun x -> map_op op_regenv x) ssa)::add_inst@reload_inst))
    else
      (
        (* Printf.printf "not callee save %s\n" vexp; *)
      check_precolor (b,r) (dest_regenv,op_regenv) ssa))
  with 
    | NoDest-> map_knownreg_insn (b,r) op_regenv ssa
    | MultiDest -> mapreg_insn (b,r) (dest_regenv,op_regenv) ssa
    | Not_found -> 
      (print_regenv dest_regenv;flush stdout;
      print_regenv op_regenv;flush stdout;
      failwith "not found in check callee save" )

let check_funccall fentry (b,r) (dest_regenv,op_regenv) ssa = 
  try 
  (match ssa with 
    | Call(dest,f,_,_) -> 
      (
        (* Printf.printf "func call (%d,%d)\n" b r; *)
      let dest' = (strip_branch_suffix dest) in 
      (* (if dest <> dest' then Printf.eprintf "strip branch suffix in %s (precolor)\n" dest); *)
      let dest = dest' in 
      let (vexp,retreg) = (try split_vexp_reg dest with | Not_found -> failwith "return value of funccall must be precolored") in 
      if M.mem vexp dest_regenv then (failwith (Printf.sprintf "%s is allocated before definition ?" vexp))
      else 
      (* Printf.printf "precolor call %s\n" f;print_regenv op_regenv;flush stdout; *)
      (* Printf.printf "call %s livevars are : " f;print_regenv dest_regenv;  *)
      (*退避が必要*)
      let add_regenv,reload_inst = get_reload (b,r) op_regenv ssa in 
      let op_regenv = forward_merge op_regenv add_regenv in 
      let dest_regenv = forward_merge dest_regenv add_regenv in 
      (* let save = saveenv_for_funccall dest_regenv in  *)
      (* Printf.printf "saved\n"; *)
      let new_destenv = get_env_after_call (b,r) dest_regenv in 
      (* Printf.printf "is in op_regenv? : ";
      List.iter (fun x -> Printf.printf "%s = %b," x (M.mem x op_regenv)) (get_use ssa);
      Printf.printf "\n"; *)
      if S.mem vexp (try Hashtbl.find fentry2memvars fentry with | Not_found -> S.empty) then 
        (Printf.eprintf "mem save : %s\n" vexp;
        let new_destenv' = add_bind vexp [retreg] new_destenv in 
        let new_ssa = 
          (* Ssa.map_call_ops ssa retreg in  *)
        (Ssa.map2 (fun _ -> retreg) (fun x -> map_op op_regenv x) ssa) in 
        (new_destenv', (spill_var new_destenv' vexp)@new_ssa::reload_inst))
      else if is_to_callee_save fentry vexp then
        let newreg,new_destenv,add_inst = (
          try
            get_callee_newreg new_destenv,new_destenv,[]
          with | NoAvailReg -> 
            let new_destenv,add_inst = move_callee_to_caller (get_fname fentry) (b,r) new_destenv in 
            get_callee_newreg new_destenv, new_destenv,add_inst
          )
      in 
        let new_destenv' = add_bind vexp [newreg] new_destenv in 
        let new_ssa = 
          (* Ssa.map_call_ops ssa retreg in  *)
        (Ssa.map2 (fun _ -> retreg) (fun x -> map_op op_regenv x) ssa) in 
        (new_destenv', (Copy([newreg],[retreg]))::new_ssa::add_inst@reload_inst)
      else  
        let new_destenv' = add_bind vexp [retreg] new_destenv in 
        let new_ssa = 
          (* Ssa.map_call_ops ssa retreg in  *)
        (Ssa.map2 (fun _ -> retreg) (fun x -> map_op op_regenv x) ssa) in 
        (new_destenv', new_ssa::reload_inst))
    | _ -> check_callee_save fentry (b,r) (dest_regenv,op_regenv) ssa)
  with | Not_found -> (flush_all ();Printf.eprintf "not found check funccall : %s\n" (Ssa.to_string ssa);raise Not_found)

let cont2accinfo = Hashtbl.create 128

let merge_env envlist = 
  try 
  List.fold_left (fun acc_env env -> 
    M.merge (fun vexp some_reg1 some_reg2 ->
      match some_reg1,some_reg2 with
      | Some(reg1), Some(reg2)  -> 
        let inter = U.list_inter reg1 reg2 in 
        if List.length inter = 0 then None else Some(inter)
      | _ -> None
      ) acc_env env
    ) (List.hd envlist) (List.tl envlist)
  with | Failure _ -> List.iter (fun regenv -> print_regenv regenv) envlist;failwith "in merge_env, expected |envlist| > 0"

let get_phir_reg ssa = 
  match ssa with 
  | Phi_r(regs) -> Some(regs)
  | _ -> None

let list_stats ls = (*lsに含まれる要素とその数をソートして返す*)
  let maplist = List.fold_left (fun acc_map x -> 
    try 
      M.add x ((M.find x acc_map) + 1) acc_map
    with | Not_found ->  M.add x 1 acc_map
    ) (M.empty) ls in 
  List.sort (fun (x1,c1) (x2,c2) -> - (compare c1 c2)) (M.to_list maplist)
  
let choose_phiw_reg bnum regenv l = (* これ昇順で返ってくるから逆にしないといけないのでは? -> compareにマイナスをつけた *)
  let currentuse = get_using_regs regenv in 
  let free_caller_reg = (S.diff caller_reg currentuse) in 
  let l_t = U.list_transpose l in 
  let takeaway_priority_list = get_take_priority_list (bnum,0) regenv in
  let phiw_regs,_,_ = (List.fold_left (fun (acc_list,acc_use,acc_takeaway_list) ls -> (*あやしい*)
  let newreg,new_take_awaylist = 
    (let free_caller_reg = S.diff free_caller_reg acc_use in 
    let candidate_caller = List.fold_left (fun acc_some (reg,_) -> 
    if Option.is_some acc_some then acc_some
    else if S.mem reg free_caller_reg then Some(reg)
    else None
    ) None (list_stats ls) in 
  match candidate_caller with 
  | Some reg -> reg,acc_takeaway_list
  | None -> 
    let free_caller_reg = S.diff free_caller_reg acc_use in 
    try (S.choose free_caller_reg,acc_takeaway_list) with | Not_found -> 
    let free_callee_reg = (S.diff callee_reg acc_use) in
    let candidate_callee = List.fold_left (fun acc_some (reg,_) -> 
      if Option.is_some acc_some then acc_some
      else if S.mem reg free_callee_reg then Some(reg)
      else None
      ) None (list_stats ls) in 
      match candidate_callee with 
      | Some reg -> reg,acc_takeaway_list
      | None -> (try (S.choose free_callee_reg,acc_takeaway_list) with | Not_found -> 
          (match acc_takeaway_list with 
            | (_,reg,vexp)::new_takeaway_list -> 
              (Printf.printf "take away from %s -> %s\n" vexp reg;flush stdout;(reg,new_takeaway_list))
            | _ -> Printf.eprintf "B%d acc_use = {%s}\nregenv =" bnum (S.to_string acc_use);print_regenv regenv;failwith "couldn't get candidate regfor phiw"))) in 
      (acc_list@[newreg],S.add newreg acc_use,new_take_awaylist)
      ) ([],currentuse,takeaway_priority_list) l_t) in
      phiw_regs


let somestr2string x = 
  match x with 
    | Option.Some(y) -> Printf.sprintf "Some(%s)" (U.list_to_string y)
    | Option.None -> "None"

let process_accinfo bnum =
  try 
    let philist,envlist = List.split (Hashtbl.find_all cont2accinfo bnum) in 
    let newenv = merge_env envlist in 
    if List.for_all (fun x -> Option.is_none x) philist then (None,newenv) (*Phi_rがない*)
    else if List.for_all (fun x -> Option.is_some x) philist then (
      let phiw_regs = choose_phiw_reg bnum newenv (List.map Option.get philist) in 
      (* Printf.printf "B%d phiw_regs : {%s}\nnewenv = " bnum (U.list_to_string phiw_regs);print_regenv newenv;flush stdout; *)
      (Some(phiw_regs),newenv) )
    else (Printf.eprintf "philist = %s, preds =%s\n" (String.concat "," (List.map somestr2string philist)) (U.intlist_to_string (G.pred !cfg bnum));failwith (Printf.sprintf "unexpected case occured in process_accinfo at B%d" bnum))
  with | Not_found -> failwith "couldn't get accinfo" 
  


let rewrite_phir pred (vexps,destregs) loopentryenv = (*ここで書き直しのときに即値とかを巻き込みたい*)
  List.iter (fun bnum ->
    if not(Hashtbl.mem block2alloced_insts bnum) then 
      (Printf.printf "postpone phir at B%d\n" bnum;
      Hashtbl.add bnum2loopentry_env bnum loopentryenv;
      Hashtbl.add bnum2phiwreg bnum (vexps,destregs))
    else 
      (Printf.printf "rewrite phi_r at B%d\n" bnum;
        assert(List.length destregs >= 1);
    let destreg = (try List.hd destregs with | e -> Printf.eprintf "dest reg not found in rewrite phir\n";raise e) in 
    let newinsnlist = (try Hashtbl.find block2alloced_insts bnum with | Not_found -> Printf.eprintf "alloced inst not found for B%d\n" bnum;raise Not_found) in 
    let last_rnum = (List.length newinsnlist) - 1 in 
    let newinsnlist',_,_ = List.fold_right (fun ssa (acc_list,skip_next,rnum) ->
      if skip_next then (acc_list,false,rnum - 1)
      else 
        let is_next_loopentry = SetInt.mem (List.hd (G.succ !cfg bnum)) !Dfa.loopentry in  
        match ssa with
            | Phi_r([srcreg]) when srcreg = destreg -> ((if is_next_loopentry then [] else [Phi_r([destreg])])@acc_list,false,rnum-1)
           (* | Phi_r([srcreg]) when not(Asm.is_callee srcreg) -> 
          (try 
            (* Printf.printf "rewrite_phir : %s\n" (to_string (List.hd acc_list)); *)
            (match (U.list_before_last newinsnlist) with 
              | Assign2(srcreg',Li,C(n)) -> 
                ((*Printf.printf "%s, %s, %s\n" destreg srcreg srcreg';*)
                (if srcreg = srcreg' then (Assign2(destreg,Li,C(n))::(if is_next_loopentry then [] else [Phi_r([destreg])])@acc_list,true,rnum-1) else failwith "dummy"))
              | _ -> failwith "dummy"
            )
          with | Failure(_) ->  (Printf.printf "phir fail\n";(Copy([destreg],[srcreg]))::(if is_next_loopentry then [] else [Phi_r([destreg])])@acc_list,false,rnum-1)) ここのエラー処理怪しそう. *)
        | Phi_r(srcregs) -> (*ここでリロードしたレジスタ情報がほかに全く使えないのか? あと正確な行がわからない. そしてレジスタの空き情報もわからなくて困るね?? *)
        (*とりあえず順番に移動可能だと思っておくか*)
        (Printf.printf "rewrite phir at B%d , dest = {%s}, src = {%s}\n" bnum (U.list_to_string destregs) (U.list_to_string srcregs);
          (* (if not(List.length destregs = List.length srcregs) then (Printf.eprintf "dest = {%s}, src = {%s}\n" (U.list_to_string destregs) (U.list_to_string srcregs);flush stderr;failwith (Printf.sprintf "fail to rewrite phir at B%d" bnum)));
          let new_instlist = List.fold_right2 (fun dst src acc_list -> if dst = src then acc_list else Copy([dst],[src])::acc_list) destregs srcregs [] in (new_instlist@ssa::acc_list,false,rnum-1) *)
          let id_maps = List.fold_left (fun acc_env src -> M.add src [src] acc_env) M.empty srcregs in (*すでにレジスタ, かつマップ後の環境は無視するのでこれでいいか?*)
          let new_destenv,new_instlist =  (resolve_regcopys (bnum,rnum) (M.empty,id_maps) [] (vexps,destregs) srcregs true) (*dest_envはダミー*) in 
            ((if is_next_loopentry then [] else (let mapped_ssa = 
              (try Ssa.map2 (fun x -> x) (map_op new_destenv) ssa with | Not_found -> Printf.printf  "fail map in rewrite phir : %s\nnew_destenv = " (Ssa.to_string ssa);print_regenv new_destenv;raise Not_found) in 
              [mapped_ssa]))@(List.rev_append new_instlist (ssa::acc_list)),false,rnum-1))
        | _ -> (ssa::acc_list,false,rnum-1)
      ) newinsnlist ([],false,last_rnum) in 
    Hashtbl.add block2alloced_insts bnum newinsnlist')
    ) pred

(* let reg2definst = Hashtbl.create 128 *)
let arg_regs = ref S.empty

let rec color_block fentry regenv bnum = 
  (if SetInt.mem bnum !Dfa.loopblock then (is_while := true;Printf.printf "loopblock B%d\n" bnum) else is_while := false);
  Printf.printf "color B%d\n" bnum;flush stdout;
  (if bnum = 276 then print_regenv regenv);
  to_color_block := SetInt.remove bnum !to_color_block;
  let pred = G.pred !cfg bnum in 
    (*ここの条件見直し?*)
  let phiw_regs, regenv = if (((SetInt.mem bnum !Dfa.blockconts ) && List.length (List.filter (fun b' -> b' < bnum) pred) > 0) || SetInt.mem bnum !Dfa.loopentry)  then ((*Printf.printf "begin process accinfo\n" ;flush stdout;*)let tmp = process_accinfo bnum in(* Printf.printf "end process accinfo\n";flush stdout;*)tmp)else (None,regenv) in 
  (* (if List.length pred > 1 then
    (Printf.printf "cont at B%d : phiw = %s \n B%d = " bnum (match phiw_reg with | Some(reg) -> reg | _ -> "None") bnum; 
    print_regenv regenv;
    flush stdout)); *)
  let insnlist = (try U.MapInt.find bnum !block2moveddef with |  Not_found -> failwith (Printf.sprintf "block %d not found" bnum)) in
  let loop_reload_list = (try Hashtbl.find block2alloced_insts bnum with | Not_found -> []) in 
  let _,finenv,newinsnlist = (List.fold_left (fun (rnum,acc_regenv,acc_list) ssa -> 
    (* Printf.eprintf "(%d,%d)\n" bnum rnum;flush stderr; *)
    let newregenv = check_free_reg acc_regenv (bnum,rnum) in 
    match ssa with 
    | Ssa.Phi_w(vexps) when rnum = 0 && Option.is_some phiw_regs -> (*もう少し整理し直したい*)
      (Printf.printf "Phi_w at B%d\n" bnum;
      let phiw_regs = (Option.get phiw_regs) in 
      (if not(List.length phiw_regs = List.length vexps) then failwith (Printf.sprintf "color fail at B%d : phiw_reg = {%s}, vexps = {%s}\n" bnum (U.list_to_string phiw_regs) (U.list_to_string vexps)));
      let (post_inst,prev_inst),newregenv',regs = List.fold_left2 (fun ((acc_post_inst,acc_prev_inst),accenv,acc_regs) vexp phiw_reg -> 
      let vexp = strip_branch_suffix vexp in 
      if S.mem vexp (try Hashtbl.find fentry2memvars fentry with | Not_found -> S.empty) then 
        (let vexp = (get_vexp vexp) in 
          Printf.printf "mem save : %s\n" vexp; (*ここで使うレジスタはphiw_regを気にしなくていいのか?*)
          let newreg = get_newreg (bnum,rnum) accenv in 
          let newregenv' = add_bind vexp [newreg] accenv in 
          (((*(spill_var newregenv' vexp)@*)acc_post_inst,acc_prev_inst),newregenv',acc_regs@[newreg])
          (* rewrite_phir pred newreg; *)
          (* (rnum+1,newregenv',(spill_var newregenv' vexp)@(Phi_w([newreg]))::acc_list) *)
          )
      else if is_to_callee_save fentry (get_vexp vexp) 
        then (let newreg,newregenv,add_inst = (
                  try
                    (Printf.printf "try get_callee newreg\n";
                    get_callee_newreg accenv,accenv,[])
                  with | NoAvailReg -> 
                    (Printf.printf "callee newreg not found\n";
                    let newregenv,add_inst = move_callee_to_caller (get_fname fentry) (bnum,rnum) accenv in 
                    get_callee_newreg accenv,accenv,add_inst)
                  )
              in 
              (* let newreg = get_callee_newreg newregenv in  *)
              let newregenv' = add_bind (get_vexp vexp) [newreg] accenv in 
              ((acc_post_inst,add_inst@acc_prev_inst),newregenv',acc_regs@[newreg])
              (* rewrite_phir pred newreg;
              (rnum+1,newregenv',(Phi_w([newreg]))::add_inst@acc_list) *)
              )
        else 
          (try 
            let (vexp,reg) =split_vexp_reg vexp in 
            Printf.printf "precolor %s -> %s\n" vexp reg;
            let newregenv' = add_bind vexp [reg] accenv in 
            ((acc_post_inst,acc_prev_inst),newregenv',acc_regs@[reg])
            (* rewrite_phir pred reg;
            (rnum+1,newregenv',(Phi_w([reg]))::acc_list) *)
          with | Not_found ->  
            (* let reg = Option.get phiw_reg in  *)
            let newregenv' = add_bind vexp [phiw_reg] accenv in 
            Printf.printf "precolor not found use phiw_reg %s -> %s\n" vexp phiw_reg;
            ((acc_post_inst,acc_prev_inst),newregenv',acc_regs@[phiw_reg])
            (* rewrite_phir pred reg;
            (rnum+1,newregenv',(Phi_w([reg]))::acc_list)) *)
            )) (([],[]),newregenv,[]) vexps phiw_regs in 
            rewrite_phir pred (vexps,regs) regenv;
            (rnum+1,newregenv',post_inst@[Phi_w(regs)]@prev_inst@acc_list))
    | _ -> 
      let newregenv',colored_inst = (check_funccall fentry (bnum,rnum) (newregenv,acc_regenv) ssa) in 
      (rnum + 1,newregenv',colored_inst@acc_list)
    ) (0,regenv,[]) insnlist) in 
  let newinsnlist = List.rev_append loop_reload_list (List.rev newinsnlist) in 
  Hashtbl.add block2alloced_insts bnum newinsnlist;
  (try let cont = Hashtbl.find Dfa.branch2cont bnum in 
    let phir_info = (if List.length newinsnlist = 0 then None else get_phir_reg (List.nth newinsnlist ((List.length newinsnlist) - 1)) ) in 
    (* Printf.printf "cont2accinfo at B%d : phir = %s \n B%d :" bnum (match phir_info with | Some(reg) -> reg | _ -> "None") bnum; 
    print_regenv finenv;
    flush stdout; *)
    Hashtbl.add cont2accinfo cont (phir_info,finenv)
    with | Not_found -> (try 
    let succ = List.filter (fun b' -> b' > bnum && SetInt.mem b' !Dfa.loopentry) (G.succ !cfg bnum) in 
    if not(List.length succ = 1) then failwith "dummy"
    else
      let cont = List.hd succ in  
      let phir_info = (if List.length newinsnlist = 0 then None else get_phir_reg (List.nth newinsnlist ((List.length newinsnlist) - 1)) ) in 
    (* Printf.printf "cont2accinfo at B%d : phir = %s \n B%d :" bnum (match phir_info with | Some(reg) -> reg | _ -> "None") bnum; 
    print_regenv finenv;
    flush stdout; *)
    Hashtbl.add cont2accinfo cont (phir_info,finenv)
  with | Failure _ -> ()));
  finenv

let set_argument fentry list = 
  let to_memvars = (try Hashtbl.find fentry2memvars fentry with | Not_found -> Printf.eprintf "memvar not found for fentry = %d\n" fentry;raise Not_found) in 
  let entry_regenv, newinsnlist = 
  List.fold_left (fun (acc_env,acc_list) ssa -> 
    match ssa with 
    | Phi_r(vexps) -> (try (acc_env,(Ssa.map2 (fun x -> x) (map_op acc_env) ssa)::acc_list) with | Not_found -> Printf.printf  "fail map phir : %s\nacc_env = " (Ssa.to_string ssa);print_regenv acc_env;raise Not_found)
    | Copy(vexps,regs) -> 
      assert(List.length vexps = List.length regs);
      List.fold_left2 (fun (inner_acc_env,inner_acc_list) vexp reg -> 
        let (new_acc_env,new_acc_list) = 
        (assert(is_reg reg); 
        Printf.printf "%s := %s\n" vexp reg;
        arg_regs := S.add reg !arg_regs;
      (* Printf.printf "check callee save for : %s\n" (Datagraph.get_vexp vexp); *)
      if (is_to_callee_save fentry (Datagraph.get_vexp vexp)) then 
        (
          Printf.printf "%s to save\n" (Datagraph.get_vexp vexp);
        let newreg = get_callee_newreg inner_acc_env in
        (try let (vexp_stripped,reg_expected) = split_vexp_reg vexp in (*元のレジスタに対する束縛も残す*)
          (add_bind vexp_stripped [newreg;(remove_alpha reg)] inner_acc_env,inner_acc_list@[Copy([newreg],[(remove_alpha reg)])])
            with | Not_found -> (add_bind vexp [newreg;(remove_alpha reg)] inner_acc_env, inner_acc_list@[Copy([newreg],[(remove_alpha reg)])])))
      else 
      ((try let (vexp_stripped,reg_expected) = split_vexp_reg vexp in 
        (if (remove_alpha reg_expected) = (remove_alpha reg) then (add_bind vexp_stripped [(remove_alpha reg)] inner_acc_env)
        else (Printf.eprintf "Cannot assign expected register for %s\n" (to_string ssa);(add_bind vexp_stripped [(remove_alpha reg)] inner_acc_env) )) (*いずれにせよそういう引数をもらったからmapするしかない*)
      with | Not_found -> 
        add_bind vexp [(remove_alpha reg)] inner_acc_env),inner_acc_list)) in 
      let vexp = (Datagraph.get_vexp vexp) in 
      let spill_arg = (if S.mem vexp to_memvars then spill_var new_acc_env vexp else []) in
       (new_acc_env,spill_arg@new_acc_list))
        (acc_env,acc_list) vexps regs
    | _ -> assert(false)
  ) (init_env,[]) list in 
  let newinsnlist = List.rev newinsnlist in 
  Hashtbl.add block2alloced_insts fentry newinsnlist;
  (try 
    let succ = List.filter (fun b' -> b' > fentry && SetInt.mem b' !Dfa.loopentry) (G.succ !cfg fentry) in 
    if not(List.length succ = 1) then failwith "dummy"
    else
      let cont = List.hd succ in  
      let phir_info = (if List.length newinsnlist = 0 then None else get_phir_reg (List.nth newinsnlist ((List.length newinsnlist) - 1)) ) in 
    (* Printf.printf "cont2accinfo at B%d : phir = %s \n B%d :" bnum (match phir_info with | Some(reg) -> reg | _ -> "None") bnum; 
    print_regenv finenv;
    flush stdout; *)
    Hashtbl.add cont2accinfo cont (phir_info,entry_regenv)
  with | Failure _ -> ());entry_regenv

let rec dfs_domtree get_domlist root from search_func startenv = (*なんか抽象的なdfs*)
(let nextenv = (if root <> from then search_func startenv from else startenv) in  (* ここで訪れたノードに対する処理 *)
(let domlist = List.sort compare (try get_domlist from with | e -> Printf.eprintf "get_domlist fail for B%d" from;raise e) in (*ここで番号が昇順にならないといけない*)
Printf.printf "domlist from B%d = {%s}\n" from (U.intlist_to_string domlist);
List.iter (fun v ->  dfs_domtree get_domlist root v search_func nextenv) domlist))

let set_rematerial fentry = 
  try 
    let rematerials = (Hashtbl.find Bpschedule.fentry2rematerials fentry) in 
    S.iter (fun vexp -> ignore(spill_const vexp)) rematerials
  with | Not_found -> ()  

let fentry2dirtycallreg = Hashtbl.create 128 

let get_callee_reload reglist = 
  List.map (fun reg -> Ssa.Reload(reg,"#"^reg) ) (Asm.reg_ra::reglist)

let insert_callee_reload reloadlist bnum = 
  if G.out_degree !cfg bnum <> 0 then ()
  else 
    try 
      (let instlist = Hashtbl.find block2alloced_insts bnum in 
      try 
        let (instbeforelast,lastinst) = U.list_split_last instlist in 
        match lastinst with 
          | Call(_) -> Hashtbl.add block2alloced_insts bnum (instbeforelast@reloadlist@[lastinst])
          | _ -> raise (Failure("dummy"))
      with | Failure(_) -> 
        (* () *)
        Hashtbl.add block2alloced_insts bnum (instlist@reloadlist) 
      )
    with 
    | Not_found -> failwith (Printf.sprintf "block %d not found" bnum) 

let print_domtree oc g get_idom fentry = 
  Printf.fprintf oc "digraph G {\n";
  Printf.fprintf oc "\tnodesep=0.100000;\n\n";
  (G.iter_vertex (fun v -> 
    if fentry <> v then 
    Printf.fprintf oc "%d -> %d" (try get_idom v with | e -> Printf.printf "get_idom fail for %d\n" v;raise Not_found) v 
    ) g);
  Printf.fprintf oc "}\n"

let ht_callee_reload = Hashtbl.create 256


let color_func g (fentry, fend) = 
  dirty_callee_reg := S.empty;
  arg_regs := S.empty;
  (* Hashtbl.clear reg2definst; *)
  Printf.printf "func (%d,%d)\n" fentry fend; 
  flush stdout;
  let entry_insnlist = (try U.MapInt.find fentry !block2moveddef  with |  Not_found -> failwith (Printf.sprintf "function (%d,%d) entry not found" fentry fend)) in 
  let entry_regenv = set_argument fentry entry_insnlist in 
  to_color_block := SetInt.remove fentry !to_color_block;
  (* Hashtbl.add block2alloced_insts fentry entry_newinsnlist; *)
  let get_idom = (try Hashtbl.find Bpschedule.fentry2idom fentry with | e -> Printf.eprintf "idom not found for funciton from %d\n" fentry;raise e) in 
  let get_domlist = Dom.idom_to_dom_tree g get_idom in 
  (* Printf.printf "entry_regenv : ";
  print_regenv entry_regenv; *)
  (* (if fentry = 813 then 
    let oc = open_out_bin "domtree.dot" in (print_domtree oc g get_idom fentry;Out_channel.close oc)); *)
  set_rematerial fentry;
  dfs_domtree get_domlist fentry fentry (color_block fentry) entry_regenv;
  (* G.iter_vertex (fun bnum -> 
    let isntlist = (try Hashtbl.find block2alloced_insts bnum with | Not_found -> []) in 
    ignore(List.fold_left (fun rnum ssa -> 
      (try 
        let def_reg = Ssa.get_def ssa in 
        Hashtbl.add reg2definst def_reg (bnum,rnum) 
      with | NoDest | MultiDest -> () );(rnum+1)
      ) 0 isntlist)
    ) g;
  let fname = Dfa.get_fname fentry in 
  let map_erase_instids = 
  (List.fold_left (fun accenv reg -> 
    let use_insts = Hashtbl.find_all reg2definst reg in 
    if (List.length use_insts <> 1) then accenv
    else (
      Printf.printf "unique def reg in %s : %s\n" fname reg;
      let (bnum,rnum) = List.hd use_insts in 
      let instlist = (try Hashtbl.find block2alloced_insts bnum with | Not_found -> []) in 
      let ssa,_= U.list_split_nth instlist rnum in 
      if SetInt.mem bnum !Dfa.loopentry && Ssa.is_const_def ssa && not(S.mem reg !arg_regs) && (Asm.is_callee reg || ((G2.out_degree interfuncgraph (Ssa.remove_alpha fname) = 0) && not(KNormal.is_mid_rec (Ssa.remove_alpha fname)))) then
        (
        let fentry_insts = (try Hashtbl.find block2alloced_insts fentry with | Not_found -> []) in 
        Printf.printf "old fentry %d insts\n%s\n" fentry (Ssa.list_to_string fentry_insts);
        Printf.printf "add %s\n" (Ssa.to_string ssa);
        Hashtbl.replace block2alloced_insts fentry (fentry_insts@[ssa]);
        (try let current_bind = MapInt.find bnum accenv in MapInt.add bnum (rnum::current_bind) accenv with | Not_found -> MapInt.add bnum [rnum] accenv)
      ) else accenv
    )
    ) MapInt.empty Asm.allregs) in  *)
  (* (MapInt.iter (fun bnum rnums -> 
    let old_instlist =  (try Hashtbl.find block2alloced_insts bnum with | Not_found -> []) in 
    let new_instlist = fst (List.fold_left (fun (acc_list,rnum) ssa -> 
      if List.mem rnum rnums then (acc_list,rnum+1)
      else (acc_list@[ssa],rnum+1)) ([],0) old_instlist) in
    Printf.printf "B%d erase rnums = {%s}\n" bnum (U.intlist_to_string rnums);
    Printf.printf "old insts\n%s\n" (Ssa.list_to_string old_instlist);
    Printf.printf "new insts\n%s\n" (Ssa.list_to_string new_instlist);
    Hashtbl.replace block2alloced_insts bnum new_instlist
    ) map_erase_instids); *)
  let dirty_list = (S.to_list !dirty_callee_reg) in 
  (* (if List.length dirty_list > 0 then Printf.printf "dirty callee reg in func from %d : {%s}\n" fentry (String.concat ", " dirty_list);flush stdout); *)
  if not(S.is_empty !dirty_callee_reg) then (Hashtbl.add fentry2dirtycallreg fentry dirty_list;
  let callee_insts = (get_callee_reload dirty_list) in 
  Hashtbl.add ht_callee_reload fentry callee_insts;
  Datagraph.iter_range (insert_callee_reload callee_insts) (fentry,fend))

module Dot5 = Graphviz2.Dot2(struct
  include CommonDotArg
  let vertex_attributes = bnum2insttable Hashtbl.find block2alloced_insts Ssa.to_string
end)

let revert_branchcond ssa = 
  match ssa with
  | CondJ(x,relop,yi) -> [CondJ(x,(Ssa.revert_relop relop),yi)]
  | _ -> Printf.eprintf "%s\n" (Ssa.to_string ssa);failwith "this is not a conditional jump"

let revert_branch_thenelse hashtable bfrom bthen belse = 
  try 
  let branchid = Option.get (List.find_index (fun b -> b = bthen) !bthen_list) in 
  let instlist = (try Hashtbl.find hashtable bfrom with | Not_found -> Printf.eprintf "bfrom = %d, bthen = %d, belse = %d\n" bfrom bthen belse;failwith "branch block shouldn't be empty") in
  let beforelast,last = (try U.list_split_last instlist with | e -> (Printf.eprintf "doesn't have conditional branch in block %d ? " bfrom;raise e)) in 
  Hashtbl.add hashtable bfrom (beforelast@(revert_branchcond last));
  bthen_list := U.list_change_nth !bthen_list branchid belse;
  belse_list := U.list_change_nth !belse_list branchid bthen
  with | Ssa.No_revert_relop -> ()

let revert_branch_thenelse_from_bthen hashtable bthen = 
  let branchid = Option.get (List.find_index (fun b -> b = bthen) !bthen_list) in 
  let bfrom, belse = List.nth !bfrom_list branchid, List.nth !belse_list branchid in
  revert_branch_thenelse hashtable bfrom bthen belse 

let get_branch_other bsome = 
  match (List.find_index (fun b -> b = bsome) !bthen_list) with 
  | Some(bid) -> List.nth !belse_list bid
  | None -> 
    (match (List.find_index (fun b -> b = bsome) !belse_list) with 
      | Some(bid) -> List.nth !bthen_list bid
      | None -> failwith (Printf.sprintf "B%d is not a branch child block" bsome))

let replace_empty_block g hashtable = (*空ブロックへのジャンプをスキップする*)
G.iter_vertex (fun bnum -> 
  if (List.mem bnum !fentry_list) then ()
  else  
  match (try Hashtbl.find hashtable bnum with | Not_found -> []) with 
  | [] when (G.in_degree g bnum = 1) && (G.out_degree g bnum = 1)-> (*空ブロック, かつ入次数と出次数が1 *)
    (* Printf.eprintf "bnum = %d found but empty\n" bnum; *)
    if List.mem bnum !bthen_list 
      then (*then節が空 -> 条件分岐を逆にしてelse節の方を空に*)
        revert_branch_thenelse_from_bthen block2alloced_insts bnum
  | _ -> ()
  ) g

let check_branch_funcdirc _ =
  ignore(List.fold_left2 (fun bid bthen belse -> 
    (match (try Hashtbl.find block2alloced_insts belse with | Not_found -> []) with
    | [ssa] when Ssa.is_call ssa -> ()
    | _ -> (match (try Hashtbl.find block2alloced_insts bthen with | Not_found -> []) with
      | [ssa] when Ssa.is_call ssa && (get_fname bthen <> "main") -> (*elseとthenを交換すれば直接関数ラベルに飛べる*)
          (*が, これをmainのなかでやると末尾でendpに飛ぶ処理ができないのでやらない*)
          revert_branch_thenelse block2alloced_insts (List.nth !bfrom_list bid) bthen belse
      | _ -> ()) 
    );
    (bid + 1)
    ) 0 !bthen_list !belse_list)

module TopoGStable = Graph.Topological.Make_stable(G)

let loopcontblock_peephole bnum = 
  let instlist = (try Hashtbl.find block2alloced_insts bnum with | Not_found -> []) in 
  let preserved,instlist = 
    (match instlist with
      | h::ls when Ssa.is_phiw h -> [h],ls 
      | _ -> [],instlist) in 
  let defmap = Hashtbl.create 8 in (*reg -> row*)
  let usemap = Hashtbl.create 16 in  
  (*コピー元と依存関係のグラフ構築*)
  let lastcall = ref (-1) in 
  let mv_srcs,g,_ = List.fold_left (fun (acc_mv_src,acc_g,row) ssa -> 
    if is_call ssa then (lastcall := row;Hashtbl.clear defmap;Hashtbl.clear usemap;([],G.empty,row+1))
    else 
    let def = (try Ssa.get_def ssa with | NoDest -> "") in (*NoDestの扱いは関係ないので適当でいい? *)
    let uses = Ssa.get_use ssa in 
    (*raw : def(most recent) -> use(here)*)
    let g1 = List.fold_left (fun inner_acc_g use -> 
    (try 
      let defrow = Hashtbl.find defmap use in  
      G.add_edge inner_acc_g defrow row
        with | Not_found -> inner_acc_g)) (G.add_vertex acc_g row) uses in 
    (*war : use(all prev) -> def(here)*)
    let g2 = (
      let prev_uses = Hashtbl.find_all usemap def in 
       Datagraph.add_edges g1 (List.map (fun prevrow -> (prevrow,row)) prev_uses)) in 
    (*waw : def(most recent) -> def(here)*)
    let g3 = (try 
        let defrow = Hashtbl.find defmap def in 
        G.add_edge g2 defrow row 
      with | Not_found -> g2) in 
    Hashtbl.add defmap def row;
    List.iter (fun use -> Hashtbl.add usemap use row) uses;
    let new_mv_src = (match ssa with 
      | Copy([x],[y]) -> (y,row)::acc_mv_src
      | Copy _ -> assert(false)
      | _ -> acc_mv_src) in 
      (new_mv_src,g3,row+1)) ([],G.empty,0) instlist in 
    Printf.printf "peephole B%d\nmv_srcs = " bnum;
    List.iter (fun (srcreg,rnum) -> Printf.printf "(%s,%d)," srcreg rnum) mv_srcs;
    Printf.printf "\n";
    Datagraph.print_graph g;
    if (Option.is_some (Hashtbl.find_opt defmap Asm.reg_tmp)) then ()
    else 
    ((*縮退候補リスト*)
    let degeneratemap,g' = 
      List.fold_left (fun (acc_map,acc_g) (reg,mvrnum) -> 
        (try (*(acc_list@[List.nth instlist mvrnum],acc_map,acc_g)*)
        if is_callee reg then (Printf.printf "don't degenerate for callee %s\n" reg;raise Not_found) (*callee の場合は代入されないとまずい*)
        else 
          (match (U.maybe_max_lower (Hashtbl.find_all defmap reg) mvrnum) with 
            | None -> raise Not_found
            | Some(defrow) -> let defrow = Hashtbl.find defmap reg in 
              if defrow > mvrnum then (Printf.printf "can't degenerate for %s, because defrow = %d > mvrnum %d\n"reg defrow mvrnum;raise Not_found)
              else 
              let new_map = U.MapInt.add defrow mvrnum acc_map in 
              (new_map,Datagraph.degenerate acc_g defrow mvrnum))
        with | Not_found | Failure _  -> (acc_map,acc_g))
      ) (U.MapInt.empty,g) mv_srcs in 
    Printf.printf "degeneratemap B%d = %s\n" bnum (U.mapint_to_string degeneratemap);
    Datagraph.print_graph g';
    let topolist = TopoGStable.fold (fun v acc -> v::acc) g' [] in 
    (* Printf.printf "topolist = %s\n" (U.intlist_to_string topolist); *)
    let newinstlist = List.fold_left (fun acc_list rnum->
      if not(G.mem_vertex g' rnum) then acc_list else 
        (assert(rnum > !lastcall);
      let oldssa = List.nth instlist rnum in 
      let newssa = 
        (try 
          let mvrnum = (U.MapInt.find rnum degeneratemap) in 
          assert(mvrnum > !lastcall);
          let mvssa = List.nth instlist mvrnum in 
          let dstreg = Ssa.get_def mvssa in 
          Printf.printf "mvssa = %s, dstreg = %s\n" (Ssa.to_string mvssa) dstreg;
          Ssa.map2 (fun _ -> dstreg) (fun x -> x) oldssa
        with | Not_found -> oldssa) in 
        Printf.printf "%s\n" (Ssa.to_string newssa);
      newssa::acc_list)
      ) [] topolist in 
    let beforelastcall_instlist = U.list_sub instlist 0 !lastcall in 
    Hashtbl.replace block2alloced_insts bnum (preserved@beforelastcall_instlist@newinstlist))
  
let all_lpt_peephole _ = 
  List.iter (fun fentry -> 
    let g = Hashtbl.find ht_cfg fentry in 
    G.iter_vertex (fun bnum -> 
      if List.exists (fun b' -> b' < bnum) (G.succ g bnum) then 
        loopcontblock_peephole bnum) g
  ) !fentry_list

let get_bid_from_bfrom bfrom =
  try 
  let branchid = Option.get (List.find_index (fun b -> b = bfrom) !bfrom_list) in 
    branchid
with | e -> Printf.eprintf "couldn't find bid from B%d\n" bfrom;raise e
let get_bthen_from_bfrom bfrom = 
  let bid = get_bid_from_bfrom bfrom in List.nth !bthen_list bid
let get_belse_from_bfrom bfrom = 
  let bid = get_bid_from_bfrom bfrom in List.nth !belse_list bid

let remove_phir bnum instlist = 
  fst (List.fold_right (fun ssa (acc_list,maybe_phir_reg) ->
    (match maybe_phir_reg,ssa with 
      | None, Phi_r([srcreg]) -> (acc_list,Some(srcreg))
      | None, _ -> (ssa::acc_list,maybe_phir_reg)
      | Some(phir_reg),_ -> 
        (try let dst = Ssa.get_def ssa in 
          if phir_reg = dst then (Printf.printf "may be able to remove phir def at B%d : %s\n" bnum (Ssa.to_string ssa);((*ssa::*)acc_list,None))
          else (ssa::acc_list,maybe_phir_reg)
      with | MultiDest | NoDest -> (ssa::acc_list,maybe_phir_reg))
    ) 
    ) instlist ([],None))

let try_find_last_const_def bnum instlist dstreg = 
  Option.join (List.fold_right (fun ssa maybe_def -> 
    if Option.is_some maybe_def then maybe_def
    else 
      let flag = (try Ssa.get_def ssa = dstreg with | NoDest | MultiDest -> false) in 
      if flag then 
        (match ssa with 
          | Copy([_],[z])| Assign2(_,Li,V(z)) when z = Asm.reg_zero -> Some(Some(ssa,0))
          | Assign2(_,Li,C(i)) -> (Printf.printf "found non zero const phir at B%d\n" bnum;Some(Some(ssa,i)))
          | _ -> Some(None))
      else None
    ) instlist None)

let try_find_const_phir bnum pred_allocedlist = 
  let beforelast,lastinst = U.list_split_last pred_allocedlist in 
  match lastinst with 
  | Phi_r([z]) -> try_find_last_const_def bnum beforelast z
  | _ -> None

let try_bypass_condj acc_g bnum instlist lastrnum : G.t = 
try 
  if not(lastrnum > 0 && (Ssa.is_phiw (List.nth instlist 0))) then acc_g
  else 
    (let moved_list = (try U.MapInt.find bnum !block2moveddef with | Not_found -> failwith "moved def not found")  in 
    let moved_lastrnum = U.list_get_last_idx moved_list in 
      match (List.nth moved_list 0),(List.nth moved_list moved_lastrnum) with 
      | Phi_w([phidst]),CondJ(x,relop,V(y)) when phidst = x && y = vexp_zero -> 
        (
          let preds = G.pred acc_g bnum in 
        let inner_new_g = List.fold_left (fun inner_acc_g pred -> 
        let pred_allocedlist =  (try Hashtbl.find block2alloced_insts pred with | Not_found -> failwith "not found in try bypass condj(2)") in 
        (match (try_find_const_phir bnum pred_allocedlist) with 
          | None ->  inner_acc_g
          | Some(phir_def_ssa,phir_const) -> 
            let target_vexp = Ssa.get_def (List.nth moved_list 0) in 
            let block_liveoutvars = Bpschedule.get_livevars (bnum,moved_lastrnum) in
            let cond_flag = Ssa.calc_relop relop phir_const 0 in 
            let newdest = if cond_flag then (get_bthen_from_bfrom bnum) else (get_belse_from_bfrom bnum) in 
            let need_phiw_var = 
              (if S.mem target_vexp block_liveoutvars (*|| lastrnum > 1*) then (Printf.printf "need phiwvar to bypass condj from B%d, because %s live out condj block B%d\n" pred target_vexp bnum;true)
              else (
                (* Printf.printf "regssa can bypass condj from B%d, because %s doesn't live out condj block B%d\n" pred target_vexp bnum; *)
                false)) in 
            (* (if lastrnum > 1 then Printf.printf "regssa find phiw need to move before insts at B%d\n" bnum); *)
            let insert_insts = U.list_sub instlist 1 (lastrnum -1) in
            (*phidst -> zへmapする必要あり, ここではレジスタ上の関係. ０じゃない場合はその即値がすでにロードされているのかを考慮しないといけない*)
            (*同じブロック内でphidstが別のレジスタに移される可能性も一応考慮?*)
            let phi_dst_reg = Ssa.get_def (List.nth instlist 0) in 
            let mapped_insert_insts = List.map (Ssa.map2 (fun x -> x) (fun x -> if x = phidst then Asm.reg_zero else x)) insert_insts in 
            let mapped_insert_insts = if need_phiw_var then (Ssa.map2 (fun _ -> phi_dst_reg) (fun x -> x) phir_def_ssa)::mapped_insert_insts else mapped_insert_insts in 
            let beforelast = remove_phir pred (try Hashtbl.find block2alloced_insts pred with | Not_found -> failwith "not found in try bypass condj(2)") in
            Hashtbl.replace block2alloced_insts pred (beforelast@mapped_insert_insts);
            Hashtbl.remove Dfa.branch2cont pred;
            Datagraph.change_dest inner_acc_g pred bnum newdest
        )
          (* let pred_gvnlist = (try U.MapInt.find pred !block2moveddef with | Not_found -> failwith "not found in try bypass condj")
          (* (try Hashtbl.find block2alloced_insts pred with | Not_found -> failwith "not found in try bypass condj")  *)
          in 
          let _,lastinst = U.list_split_last pred_gvnlist in 
          (match lastinst with 
            | Phi_r([z]) when z = vexp_zero -> 
              (
              let target_vexp = Ssa.get_def (List.nth moved_list 0) in 
              let block_liveoutvars = Bpschedule.get_livevars (bnum,moved_lastrnum) in
              let cond_flag = Ssa.calc_relop relop 0 0 in 
              let newdest = if cond_flag then (get_bthen_from_bfrom bnum) else (get_belse_from_bfrom bnum) in 
              let need_phiw_var = 
                (if S.mem target_vexp block_liveoutvars (*|| lastrnum > 1*) then (Printf.printf "need phiwvar to bypass condj from B%d, because %s live out condj block B%d\n" pred target_vexp bnum;true)
                else (Printf.printf "regssa can bypass condj from B%d, because %s doesn't live out condj block B%d\n" pred target_vexp bnum;false)) in 
              (if lastrnum > 1 then Printf.printf "regssa find phiw need to move before insts at B%d\n" bnum);
              let insert_insts = U.list_sub instlist 1 (lastrnum -1) in
              (*phidst -> zへmapする必要あり, ここではレジスタ上の関係. ０じゃない場合はその即値がすでにロードされているのかを考慮しないといけない*)
              (*同じブロック内でphidstが別のレジスタに移される可能性も一応考慮?*)
              let phi_dst_reg = Ssa.get_def (List.nth instlist 0) in 
              let mapped_insert_insts = List.map (Ssa.map2 (fun x -> x) (fun x -> if x = phidst then Asm.reg_zero else x)) insert_insts in 
              let mapped_insert_insts = if need_phiw_var then (Copy([phi_dst_reg],[Asm.reg_zero]))::mapped_insert_insts else mapped_insert_insts in 
              let beforelast = remove_phir (try Hashtbl.find block2alloced_insts pred with | Not_found -> failwith "not found in try bypass condj(2)") in
              Hashtbl.replace block2alloced_insts pred (beforelast@mapped_insert_insts);
              Hashtbl.remove Dfa.branch2cont pred;
              Datagraph.change_dest inner_acc_g pred bnum newdest
              )
            | _ -> inner_acc_g) *)
          ) acc_g preds in 
            inner_new_g)
          (* let new_preds = G.pred inner_new_g bnum in 
          (match new_preds with 
            | [] -> Printf.printf "B%d's new pred is empty\n" bnum
            | [pred] -> (Printf.printf "B%d's sole new pred is B%d\n" bnum pred;
                let pred_gvnlist = (try U.MapInt.find pred !block2moveddef with | Not_found -> failwith "not found in try bypass condj") in 
                let beforelast,lastinst = U.list_split_last pred_gvnlist in 
                let headinst,tailinst = (match instlist with | h::ls -> h,ls | _ -> assert(false)) in 
                let new_headssa = 
                  (match lastinst,headinst with
                    | Phi_r([copy_src]),Phi_w([copy_dst]) ->  Copy([copy_dst],[copy_src])
                    | _ -> assert(false)
                  ) in 
                block2moveddef := (U.MapInt.add pred beforelast (U.MapInt.add bnum (new_headssa::tailinst) !block2moveddef)))
            | _ -> ());inner_new_g) *)
      | _ -> acc_g)
with | e -> (Printf.eprintf "error in try bypass condj\n";raise e)

let rec remove_unreachable_blocks g indegree_zero_vs = 
  try 
    let hd = SetInt.choose indegree_zero_vs in 
    let succ = G.succ g hd in 
    let new_g = G.remove_vertex g hd in 
    Printf.printf "remove unreachable B%d\n" hd;
    (match (List.find_index (fun b' -> hd = b') !bfrom_list) with 
      | None -> ()
      | Some(bid) -> 
        bfrom_list := U.list_remove_nth !bfrom_list bid;
        belse_list := U.list_remove_nth !belse_list bid;
        bthen_list := U.list_remove_nth !bthen_list bid
      );
    let new_indegree_zero = SetInt.filter (fun v -> G.in_degree new_g v = 0 && not(hd < v) ) (SetInt.of_list succ) in 
    remove_unreachable_blocks new_g (SetInt.remove hd (SetInt.union indegree_zero_vs new_indegree_zero))
  with | Not_found -> g 

let check_all_bypass_condj fentry g = 
  let all_v = Datagraph.g_all_vertices g in 
  let all_bfrom = U.list_inter !bfrom_list all_v in 
  let new_g = 
    List.fold_left (fun acc_g bnum -> 
      Printf.printf "check B%d\n" bnum;
      let instlist = (try Hashtbl.find block2alloced_insts bnum  with | Not_found -> []) in 
      let lastrnum = U.list_get_last_idx instlist in 
      try_bypass_condj acc_g bnum instlist lastrnum
      ) g all_bfrom in 
  let indegree_zero_vs = SetInt.filter (fun v -> G.in_degree new_g v = 0) (SetInt.of_list (Datagraph.g_all_vertices new_g)) in 
  let new_g' = remove_unreachable_blocks new_g (SetInt.remove fentry indegree_zero_vs) in 
  Hashtbl.replace ht_cfg fentry new_g';new_g'

let f _ = 
  Printf.eprintf "begin regssa\n";
  Dfa.scan_blocks (fun bnum -> to_color_block := SetInt.add bnum !to_color_block) (1,!Dfa.counter);
  (List.iter2 (fun fentry fend -> 

      let g = (try Hashtbl.find ht_cfg fentry  with | Not_found -> Printf.printf "function from %d not found\n" fentry;raise Not_found ) in 
      cfg := g;
      color_func g (fentry,fend)

  ) !fentry_list !fend_list);
  List.iter (fun fentry -> 
    try
      let g = Hashtbl.find ht_cfg fentry in 
      let new_g = check_all_bypass_condj fentry g in 
      replace_empty_block new_g block2alloced_insts
    with | Not_found -> Printf.eprintf "function from %d not found\n" fentry
    ) !fentry_list; 
  check_branch_funcdirc ();
  all_lpt_peephole ();
  (let oc = open_out_bin "allocgraph.dot" in fprint_graphs oc ht_cfg Dot5.output_graph;Out_channel.close oc);
  Printf.eprintf "end regssa\n";
  (if not(SetInt.is_empty !to_color_block) then Printf.printf "not colored block = {%s}\n" (Datagraph.setint_to_string !to_color_block));
  ()
  (* Asm.Prog(data, fundefs, e) *)