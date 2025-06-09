open Emit
open Datagraph
open Dfa
open Ssa
open Bpschedule
open Asm
open Genoutlib



let is_fundef = ref true
let emitted = ref SetInt.empty
let is_emit_moved = ref false
let loopback_then_jump = ref SetInt.empty

let reloaded = ref S.empty

let get_dom_frontier = ref (fun (s:int) -> ([] : int list))

(*reorderするとさきにreloadが来てしまう可能性がある*)
let reorder_save = ref S.empty 
let get_offset x = 
  try 
  Emit.addr_step *  List.hd (locate x) with 
    | Failure _ -> 
      (try
        if !is_emit_moved then 
          (
            save x;reorder_save := S.add x !reorder_save;let offset = offset x in 
            Printf.printf "reorder_save %s, %d\n" x offset;offset)
        else failwith "not emit moved"
        with | e -> (Printf.eprintf "trying to reload %s before storing it?\n" x;raise e)) 

let rec to_instruction oc ssa : unit = 
  try 
    (match ssa with 
    | Assign3(x,y,Sub,C(i)) -> Printf.fprintf oc "\t%s %s, %s, %d" (to_inst_binop_const Ssa.Add) (reg x) (reg y) (-i) 
    (* | Assign3(x,y,binop,C(i)) when Ssa.is_float_cmp binop -> 
        Printf.fprintf oc "";
        Printf.fprintf oc "" *)
    | Assign3(x,y,binop,C(0)) when Ssa.is_float_cmp binop -> 
      Printf.fprintf oc "\t%s %s, %s, %s" (to_inst_binop binop) (reg x) (reg y) (reg reg_zero)
    | Assign3(x,y,binop,C(i)) -> Printf.fprintf oc "\t%s %s, %s, %d" (to_inst_binop_const binop) (reg x) (reg y) i 
    | Assign3(x,y,binop,V(z)) -> Printf.fprintf oc "\t%s %s, %s, %s" (to_inst_binop binop) (reg x) (reg y) (reg z)
    | Assign2(x,IN32,_) -> Printf.fprintf oc "\tin32 %s" (reg x)
    | Assign2(_,OUT8,V(x)) -> Printf.fprintf oc "\tout8 %s" (reg x)
    | Assign2(_,HLib("print_float"),V(x)) -> Printf.fprintf oc "\tprint_float %s" (reg x)
    | Assign2(x,Li,V(y)) when y = Asm.reg_zero -> Printf.fprintf oc "\tmv\t%s, %s" (reg x) (reg reg_zero)
    | Assign2(x,Li,C(i)) -> 
      if i = 0 then Printf.fprintf oc "\tmv %s, %s" (reg x) (reg reg_zero)
      else if -2048 <= i && i < 2047 then Printf.fprintf oc "\tli %s, %d" (reg x) i
      else 
        let upper20, lower12  = split_upper20_lower12 i in 
        assert(0 <= upper20 && upper20 <= 1048575);
        assert(-2048 <= lower12 && lower12 < 2047);
        let r = reg x in
        (if lower12 <> 0 then
        (Printf.fprintf oc "\tlui %s, %d\n" r upper20;
        Printf.fprintf oc "\taddi %s, %s, %d" r r lower12)
        else Printf.fprintf oc "\tlui %s, %d" r upper20)
    | Assign2(x,FLi,V(l)) -> 
      (try 
        let upper20, lower12 = Hashtbl.find ftable l in
        assert(0 <= upper20 && upper20 <= 1048575);
        assert(-2048 <= lower12 && lower12 < 2047);
        let r = reg x in
        if lower12 <> 0 then (*下位12ビットが0なら省略*)
          ((if upper20 <> 0 then Printf.fprintf oc "\tlui %s, %d\n" r upper20 else Printf.fprintf oc "\tmv\t%s, zero\n" r); 
          Printf.fprintf oc "\taddi %s, %s, %d" r r lower12) 
        else (if upper20 <> 0 then Printf.fprintf oc "\tlui %s, %d" r upper20 else Printf.fprintf oc "\tmv\t%s, zero" r)
        with | Not_found -> Printf.eprintf "float label %s not found\n" l;raise Not_found)
    | Assign2(x,Neg,V(y)) ->  Printf.fprintf oc "\tsub %s, %s, %s" (reg x) (reg reg_zero) (reg y)
    | Assign2(x,FNeg,V(y)) ->  Printf.fprintf oc "\tfsub %s, %s, %s" (reg x) (reg reg_zero) (reg y)
    | Assign2(x,uniop,V(y)) -> Printf.fprintf oc "\t%s %s, %s" (to_inst_uniop uniop) (reg x) (reg y)
    | Memacc(x,y,memacc,C(offset)) -> Printf.fprintf oc "\t%s %s, %d(%s)" (to_inst_memacc memacc) (reg x) offset (reg y)
    | Memacc(x,y,memacc,V(z)) when z = Asm.reg_zero -> 
        Printf.fprintf oc "\t%s %s, 0(%s)" (to_inst_memacc memacc) (reg x) (reg y)
    | Memacc(x,y,memacc,V(z)) when y = Asm.memory ->
        Printf.fprintf oc "\t%s %s, 0(%s)" (to_inst_memacc memacc) (reg x) (reg z)
    | Memacc(x,y,memacc,V(z)) when not(Ssa.is_memacc_store memacc)-> 
      Printf.fprintf oc "\tlwr %s, %s, %s" (reg x) (reg y) (reg z)
    | Memacc(x,y,memacc,V(z)) -> 
        emit_inst oc (Assign3(reg_tmp,y,Ssa.Add,V(z)));
        Printf.fprintf oc "\t%s %s, 0(%s)" (to_inst_memacc memacc) (reg x) (reg reg_tmp)
    | Copy([x],[y]) when x = y -> ()
    | Copy([x],[y]) -> Printf.fprintf oc "\tmv %s, %s" (reg x) (reg y) (*ひとつずつに落とせてない?*)
    | Phi_r(_) -> ()
  ) with | UnexpectedSsaPattern -> Printf.eprintf "unexpected pattern : %s\n" (Ssa.to_string ssa);assert(false) (*CondJ, Callは別にしないといけないはず?*)

and emit_inst oc ssa = 
  to_instruction oc ssa;
  Printf.fprintf oc "\n"



let get_then_else_bnum bnum = 
  try 
  let branchid = Option.get (List.find_index (fun b -> b = bnum) !bfrom_list) in 
  List.nth !bthen_list branchid, List.nth !belse_list branchid (*ブロックを飛ばさないならこれでいいはず?*)
  with | e -> Printf.eprintf "branch from B%d is not registered\n" bnum;raise e 




let is_belse_and_bfrom belse bfrom = 
  let bid_belse = U.list_find_indices !belse_list belse in 
  let bid_bfrom = U.list_find_indices !bfrom_list bfrom in 
  (* Printf.printf "bid_belse of B%d = {%s}, bid_bfrom of B%d = {%s}\n" belse (U.intlist_to_string bid_belse) bfrom (U.intlist_to_string bid_bfrom); *)
  (match (U.list_inter bid_belse bid_bfrom) with 
    | [] -> false
    | _ -> true)

let is_bthen_and_bfrom bthen bfrom = 
  let bid_bthen = U.list_find_indices !bthen_list bthen in 
  let bid_bfrom = U.list_find_indices !bfrom_list bfrom in 
  (* Printf.printf "bid_belse of B%d = {%s}, bid_bfrom of B%d = {%s}\n" belse (U.intlist_to_string bid_belse) bfrom (U.intlist_to_string bid_bfrom); *)
  (match (U.list_inter bid_bthen bid_bfrom) with 
    | [] -> false
    | _ -> true)

let rec rec_get_cont blist = 
  match blist with 
  | [] -> raise Not_found
  | b::ls -> try Hashtbl.find Dfa.branch2cont b
    with Not_found -> rec_get_cont (ls@(List.filter (fun b' -> b < b') (G.succ !cfg b)))

let get_cont (b1,b2) = (*これ変更後の挙動があやしい*)
(* try 
  let b1_cont = rec_get_cont [b1] in 
  let b2_cont = rec_get_cont [b2] in 
  (* if b1_cont <> b2_cont then failwith (Printf.sprintf "branch (%d,%d) has different cont (%d,%d)" b1 b2 b1_cont b2_cont)
  else  *)
  max b1_cont b2_cont
with | Not_found -> raise Not_found *)
  try 
  let inter = SetInt.inter (get_reachable b1) (get_reachable b2) in 
  SetInt.min_elt inter 
  with | Not_found -> ((*Printf.eprintf "continue not found for (%d,%d)\n" b1 b2;*)raise Not_found)
  (* rec_get_cont [b1;b2] *)

let is_empty_block bnum = 
    try 
    let instlist = Hashtbl.find Regssa.block2alloced_insts bnum in 
      not(List.exists (fun ssa -> not(Ssa.is_phir ssa || Ssa.is_phiw ssa)) instlist)
    with | Not_found -> true 

let has_callee_save = ref false

let is_all_parent_emitted bnum = 
  try
  let pred = G.pred !cfg bnum in 
  let pred = List.filter (fun b' -> b' < bnum) pred in  
  List.for_all (fun v -> SetInt.mem v !emitted) pred
  with | e -> (Printf.eprintf "error in is_all_parent_emitted %d\n" bnum;raise e)

let is_tail bnum = 
  let succ = G.succ !cfg bnum in 
  List.length succ = 0 || (List.length succ = 1 && List.mem (List.hd succ) !fentry_list) 

let try_get_single_call_block_label bnum = (*末尾でないならとりあえずなし*)
  if not(is_tail bnum) then None
  else 
    match (try Hashtbl.find Regssa.block2alloced_insts bnum with | Not_found -> []) with
    | [ssa] -> (match ssa with
        | Call(_,flabel,_,_) -> Some(flabel)
        | _ -> None)
    | _ -> None

let get_else_label fname relop belse = 
  (remove_alpha fname)^"_"^(to_inst_relop relop)^"else_b"^(string_of_int belse)

let get_cont_label fname bcont =
  (remove_alpha fname)^"_"^"cont_b"^(string_of_int bcont)

let get_loop_label fname bnum = 
  (remove_alpha fname)^"_"^"loop_b"^(string_of_int bnum)

let get_ret_label fname = (remove_alpha fname)^"_ret"

let is_loop_entry bnum = 
  try 
  List.length (List.filter (fun b' -> bnum < b') (G.pred !cfg bnum)) > 0
  with | e -> Printf.eprintf "error in is_loop_entry %d\n" bnum;raise e 
let try_get_loop_entry bnum = 
  try 
    Some(List.hd (List.filter (fun b' -> bnum > b') (G.succ !cfg bnum)))
  with | Failure _ -> None

let rec isempty_between (bs,bt) = 
  if bs = bt then true
  else 
  (is_empty_block bs) && List.for_all (fun bnext -> 
    not(SetInt.mem bt (Bpschedule.get_reachable bs)) || isempty_between (bnext,bt)) (List.filter (fun b' -> b' > bs) (G.succ !cfg bs))
    
let isnot_cont_emitted_rightafter bnum = (*間に別のブロックが出力される, かつ合流はしない場合. さらに分岐する場合は気にしなくていい? *)
  match List.filter (fun b' -> b' > bnum) (G.succ !cfg bnum) with 
  | [v] when not(is_all_parent_emitted v) -> Some(v)
  | _ -> None

let adhoc_contblock = ref SetInt.empty 
let adhoc_contjump = ref SetInt.empty
let moved_loop_cont = ref SetInt.empty

let expected_next = ref None
let emit_adhoc_contjump oc fname bnum = 
  List.iter (fun b -> 
    if SetInt.mem b !adhoc_contjump then 
      let contlabel = get_cont_label fname b in 
      Printf.fprintf oc "\tj %s\n" contlabel
      ) (List.filter (fun b' -> b' > bnum) (G.succ !cfg bnum ))

(* let try_reorder_loop_blocks bnum = 
  try let ret_blocks = Hashtbl.find_add Dfa.loopentry2ret bnum in 
    if List.length ret_blocks = 0 then raise Not_found
    else 
      let b1,b2 = get_then_else_bnum bnum in 
      if (List.mem b1 ret_blocks = List.mem b2 ret_blocks) then raise Not_found (*reorderできない*) 
      else 
        let revert_cond = (if List.mem b1 ret_blocks && not(List.mem b2 ret_blocks) then true (*この形がそのままreorderできる, 分岐条件をflipする. b1 : then, b2 : else*)
                            else if (List.mem b2 ret_blocks && not(List.mem b1 ret_blocks)) (*then/elseをひっくり返せばできるが, reorderのために分岐をflipするので, 結果的にcondは順のまま. b2 : then, b1 : else*)
                              then (Regssa.revert_branch_thenelse_from_bthen Regssa.block2alloced_insts b1;false)
                            else assert(false)) in 

      let old_instlist = (try Hashtbl.find Regssa.block2alloced_insts bnum with | Not_found -> failwith "instlist not found") in 
      let new_instlist,_ = U.list_split_last old_instlist in 
      Hashtbl.replace Regssa.block2alloced_insts bnum new_instlist
  with | Not_found | Failure _ -> () *)
let bnum2branchlabel = Hashtbl.create 256

let rec not_need_adhoc_jump btarget = 
  let rec inner_not_need_adhoc_jump checked tobe_check =
    (try
    let hd = SetInt.choose tobe_check in 
    (* Printf.printf "check B%d at checked = {%s},tobe_check = {%s}\n" hd (Datagraph.setint_to_string checked) (Datagraph.setint_to_string tobe_check); *)
    if SetInt.mem hd checked then inner_not_need_adhoc_jump checked (SetInt.remove hd checked)
    else 
      let flag1 = SetInt.mem hd !emitted || hd >= btarget  in 
      let flag2 = is_empty_block hd in 
      let set1 = if flag1 then SetInt.empty else (SetInt.of_list (List.filter (fun b' -> b' < hd) (G.pred !cfg hd))) in
      (flag1 || flag2 ) && inner_not_need_adhoc_jump (SetInt.add hd checked) (SetInt.diff (SetInt.union tobe_check (SetInt.union set1 (SetInt.of_list (List.filter (fun b' -> b' > hd) (G.succ !cfg hd))))) (SetInt.add hd checked)) 
    with | Not_found -> true) in 
  inner_not_need_adhoc_jump SetInt.empty (SetInt.of_list (G.pred !cfg btarget))

    (* List.for_all (fun b -> 
    Printf.printf "need_adhoc_jump B%d : [%b,%b,%b]\n" b (SetInt.mem b !emitted) (b > btarget) (is_empty_block b && not_need_adhoc_jump b);
    SetInt.mem b !emitted || b > btarget || (is_empty_block b && not_need_adhoc_jump b)
  ) (try G.pred !cfg btarget with | e -> Printf.eprintf "error in not_need_adhoc_jump %d\nall_vertices = {%s}\n" btarget (U.intlist_to_string (Datagraph.g_all_vertices !cfg));raise e) *)
  
let check_back_condj fname bnum = 
  let greater_preds = List.filter (fun b' -> b' > bnum) (G.pred !cfg bnum) in 
  List.iter (fun bpred -> 
    let instlist = (try Hashtbl.find Regssa.block2alloced_insts bpred with | Not_found -> failwith (Printf.sprintf "error in check back condj at B%d" bnum)) in 
    try 
      (match (U.list_get_last instlist) with 
        | CondJ(_,relop,_) -> 
          (try let (b1,b2) = get_then_else_bnum bpred in 
            if b2 = bnum then 
              let elselabel = get_else_label fname relop b2 in 
              Hashtbl.add bnum2branchlabel bnum elselabel
            with | Failure _ -> ())
        | _ -> ())
    with Failure _ -> () 
    ) greater_preds

let reordered_loopentry = ref SetInt.empty

let rec check_branch_tail_rec_after oc (fname,fentry) vroot beforelabel = (*新エントリの名前の候補をとらないといけない. あと分岐命令を変える*)
  let pred_list = (try List.filter (fun v -> vroot < v) (G.pred !cfg vroot) with | e -> Printf.eprintf "error in check_branch_tail_rec_after %d\n" vroot;raise e) in 
  (* Printf.printf "check_branch_tail_rec after pred_list = %s\n" (U.intlist_to_string pred_list); *)
  (* match pred_list with 
    | [] -> (Printf.fprintf oc "%s:\n" beforelabel;
              emit_block oc (fname,fentry) vroot)
    | _ -> *)
      let _ = List.fold_right (fun bnum emitflag -> 
        if emitflag || G.in_degree !cfg bnum > 1 || SetInt.mem bnum !emitted || SetInt.mem vroot !reordered_loopentry then true
        else  
        ((
        (if List.mem bnum !bthen_list then (*出口の方にthenになってほしい*) (Regssa.revert_branch_thenelse_from_bthen Regssa.block2alloced_insts bnum));
        (if List.mem bnum !belse_list then
          (moved_loop_cont := SetInt.add bnum !moved_loop_cont;
            (* let old_instlist = (try Hashtbl.find Regssa.block2alloced_insts bnum with | Not_found -> failwith "instlist not found") in 
          let new_instlist,_ = U.list_split_last old_instlist in 
          Hashtbl.replace Regssa.block2alloced_insts bnum new_instlist; *)
          let branchid = Option.get (List.find_index (fun b -> b = bnum) !belse_list) in 
          let bfrom = List.nth !bfrom_list branchid in 
          let bfrom_instlist = (try Hashtbl.find Regssa.block2alloced_insts bfrom with | Not_found -> failwith "instlist not found") in
          let _,branchinst = U.list_split_last bfrom_instlist in 
          let relop = Ssa.get_relop branchinst in 
          let elselabel = (get_else_label fname relop bnum) in 
          reordered_loopentry := SetInt.add vroot !reordered_loopentry;
          emit_reorder_branch_tail_rec oc (fname,fentry) (vroot,(Regssa.get_branch_other bnum), bnum) elselabel beforelabel))) (*;Printf.printf "moved B%d\n" bnum*);true)
        ) ((*List.rev*) pred_list) false in ()
      (* (Printf.fprintf oc "%s:\n" beforelabel;
        emit_block oc (fname,fentry) vroot) に進む *)
      
and emit_reorder_branch_tail_rec oc (fname,fentry) (broot,bthen,belse) elselabel beforelabel = 
  (* Printf.printf "emit_reorder (%d,%d,%d)\n" broot bthen belse; *)
  (*新エントリ すでにジャンプ以外は出力済みとするか*)
  (* emit_label_only_row oc entrylabel;
  emit_entryinsts (); *)
  if not(is_empty_block belse) then 
    Printf.fprintf oc "\tj\t%s # %s\n" beforelabel "jumping over moved block";
  (*残り*)
  emit_label_with_comment oc elselabel "moved";
  (* check_branch_tail_rec_after oc (fname,fentry) belse; *) (*こっちは再帰できないということに*)
  is_emit_moved := true;
  (* Printf.printf  "reorder try emit belse = B%d\n" belse; *)
  emit_block oc (fname,fentry) belse;
  is_emit_moved := false;
  Hashtbl.add bnum2branchlabel belse elselabel
  (*以前, こっちの中に変形すべき末尾再帰はないはず?*)
  (* emit_label_only_row oc beforelabel;
  emit_block oc (fname,fentry) broot ここは区間をとらないとだめ? いやそのままemitの流れでいいんだろうか *)

and emit_block oc (fname,fentry) bnum : unit =
  (* Printf.printf "try emit B%d\n" bnum; *)
  if not(is_all_parent_emitted bnum) && not(!is_emit_moved && (G.in_degree !cfg bnum = 1)) then ()
    (* (if SetInt.mem bnum !adhoc_contjump then 
      let contlabel = get_cont_label fname bnum in 
      Printf.fprintf oc "\tj %s\t# adhoc jump(1)\n" contlabel)  *)
    (* (Printf.printf "postpone emitting B%d \n" bnum;flush stdout) *)
  else if SetInt.mem bnum !emitted then ()
    (* (Printf.printf "already emitted B%d \n" bnum;flush stdout) *)
  else 
  (flush oc;check_back_condj fname bnum;
   (* (Schedule.make_bb_dfg bnum); *)
    (* Printf.printf "emit B%d\n" bnum;flush oc; *)
  (if is_loop_entry bnum && !KNormal.enable_while then (check_branch_tail_rec_after oc (fname,fentry) bnum (get_loop_label fname bnum);expected_next := None) );
  let insnlist = (try Hashtbl.find Regssa.block2alloced_insts bnum with |  Not_found -> (Printf.eprintf "block %d not found\n" bnum;[])) in (*これでいいのか?*)
  (* let insnlist = Schedule.make_bb_dfg bnum insnlist in  *)
  (match !expected_next with 
    | None -> ()
    | Some(enext) -> 
        (if bnum <> enext then (if ((List.exists (fun ssa -> not(Ssa.is_phir ssa || Ssa.is_phiw ssa)) insnlist) || Option.is_some (try_get_loop_entry bnum) || not(not_need_adhoc_jump enext)) then (let contlabel = get_cont_label fname enext in 
        (* (if not((List.exists (fun ssa -> not(Ssa.is_phir ssa || Ssa.is_phiw ssa)) insnlist) || Option.is_some (try_get_loop_entry bnum)) && not(not_need_adhoc_jump enext) then Printf.printf "emit adhoc deg1 jump %d -> %d\n" bnum enext); *)
        Printf.fprintf oc "\tj %s # adhoc jump(2)\n" contlabel;
        adhoc_contblock := SetInt.add enext !adhoc_contblock) else (Printf.printf "not emit adhoc jump(2) for -> %d at %d [%b,%b,%b]\n" enext bnum (List.length insnlist <> 0) (Option.is_some (try_get_loop_entry bnum)) (not(not_need_adhoc_jump enext)))));expected_next := None);
  if SetInt.mem bnum !emitted then ()
  else 
  (emitted := SetInt.add bnum !emitted;
  (* Printf.printf "emitted B%d\n" bnum; *)
  (List.iter (fun label -> emit_label_only_row oc label) (List.sort_uniq compare (Hashtbl.find_all bnum2branchlabel bnum)));
  (* (match maybe_label with
  | Some(label) -> emit_label_only_row oc label
  | None -> ()); *)
  (if SetInt.mem bnum !adhoc_contblock then emit_label_only_row oc (get_cont_label fname bnum));
  (if is_loop_entry bnum && !KNormal.enable_while then emit_label_only_row oc (get_loop_label fname bnum));
  Printf.fprintf oc "# B%d\n" bnum;
  (* Printf.printf "begin succ\n";flush stdout; *)
  let succ = G.succ !cfg bnum in 
  (* Printf.printf "end succ\n";flush stdout; *)
  (* Printf.printf "B%d : succ = {%s}\n" bnum (String.concat ", " (List.map string_of_int succ));  *)
  let is_tail = List.length succ = 0 || (List.length succ = 1 && List.hd succ = fentry)  in 
  let jumped = ref false in 
  let moved_jump = ref false in 
  let last_rnum = (List.length insnlist) - 1 in 
  let _ = List.fold_left (fun rnum ssa -> 
    (match ssa with 
    | CondJ(x,relop,yi) -> 
      (
        (* Printf.printf "begin thenelse\n";flush stdout; *)
        let (b1,b2) = get_then_else_bnum bnum in 
        (* Printf.printf "end succ\n";flush stdout; *)
      let emit_b2,else_label = 
        (match (try_get_single_call_block_label b2) with 
          | Some(flabel) -> false, flabel
          | None -> true, (get_else_label fname relop b2)) in 
      (match yi with 
        | C(0) when (match relop with | Gt -> true | _ -> false) -> 
          Printf.fprintf oc "\t%s %s, %s, %s\n" "bge" (reg reg_zero) (reg x) else_label
        | C(0) -> 
          Printf.fprintf oc "\t%s %s, %s, %s\n" (to_inst_relop_revert relop) (reg x) (reg reg_zero) else_label
        | C(i) when (match relop with | Gt -> true | _ -> false) -> 
          emit_inst oc (Assign2(reg_tmp,Li,C(i)));
          Printf.fprintf oc "\t%s %s, %s, %s\n" "bge" (reg reg_tmp) (reg x) else_label
        | C(i) -> 
          emit_inst oc (Assign2(reg_tmp,Li,C(i)));
          Printf.fprintf oc "\t%s %s, %s, %s\n" (to_inst_relop_revert relop) (reg x) (reg reg_tmp) else_label
        | V(y) when (match relop with | Gt -> true | _ -> false) -> 
          Printf.fprintf oc "\t%s %s, %s, %s\n" "bge" (reg y) (reg x) else_label
        | V(y) -> Printf.fprintf oc "\t%s %s, %s, %s\n" (to_inst_relop_revert relop) (reg x) (reg y) else_label);
      
      let stackset_back = !stackset in 
      (try (*non tail*)
        let stackset1 = !stackset in 
        (* Printf.printf "begin cont\n";flush stdout; *)
        let block_cont = get_cont (b1,b2) in 
        (* Printf.printf "end cont\n";flush stdout; *)
        (* Printf.printf "b cont : (%d,%d) -> %d\n" b1 b2 block_cont; *)
        (* emit_block oc (fname,fentry) b1; *)
        let cont_label = get_cont_label fname block_cont in (*違う比較演算が同じcontになることがあるはず?*)
        (* (if not(is_empty_block b2) then Printf.fprintf oc "\tj\t%s\n" cont_label); *)
        (* (match isnot_cont_emitted_rightafter b1 with 
        | Some(bcont) ->
            ((if bcont <> block_cont then Printf.printf "bcont %d <> block_cont %d\n" bcont block_cont);
            if isempty_between (b2,block_cont) then ()(*Printf.printf "empty between %d %d\n" b2 block_cont*) else ((*Printf.printf "cont j emit j(some) (%d,%d) -> %d\n" b1 b2 block_cont;*)Printf.fprintf oc "\tj\t%s\n" cont_label;adhoc_contblock := SetInt.add block_cont !adhoc_contblock))
        | None when is_empty_block b2-> () (*Printf.printf "cont j don't emit j (%d,%d) -> %d\n" b1 b2 block_cont;*) (*これでいいのか?*)
        | None -> (*Printf.printf "cont j emit j(none) (%d,%d) -> %d\n" b1 b2 block_cont;*)Printf.fprintf oc "\tj\t%s\n" cont_label;adhoc_contblock := SetInt.add block_cont !adhoc_contblock);
        emit_block oc (fname,fentry) b1; *)
        (
          (* Printf.printf "maybe adhoc contjump %d\n" block_cont;     *)
        adhoc_contjump := SetInt.add block_cont !adhoc_contjump;
        Hashtbl.add bnum2branchlabel b2 else_label;
        (if SetInt.mem b1 !emitted then 
          let movedlabel = (try Hashtbl.find bnum2branchlabel b1 with | Not_found -> 
            if SetInt.mem b1 !Dfa.loopentry then get_loop_label fname b1 
            else  failwith (Printf.sprintf "moved label not found for B%d" b1)) in 
          (loopback_then_jump := SetInt.add bnum !loopback_then_jump;moved_jump := true;
          Printf.fprintf oc "\tj\t%s # %s for %d at B%d\n" movedlabel "moved need extra jump" b1 bnum)
        ); (*movedの場合*)
        emit_block oc (fname,fentry) b1;
        (if not(SetInt.mem b1 !emitted) then (adhoc_contblock := SetInt.add b1 !adhoc_contblock;
        let contlabel = get_cont_label fname b1 in 
        Printf.fprintf oc "\tj %s # adhoc jump(3)\n" contlabel) );
        adhoc_contjump := SetInt.remove block_cont !adhoc_contjump;
        adhoc_contblock := SetInt.add block_cont !adhoc_contblock);
        (* Printf.fprintf oc "%s:\n" else_label; *)
        stackset := stackset_back;
        emit_block oc (fname,fentry) b2;
        let stackset2 = !stackset in
        stackset := S.inter stackset1 stackset2;
        adhoc_contblock := SetInt.add block_cont !adhoc_contblock;
        (* Hashtbl.add bnum2branchlabel block_cont cont_label; *)
        emit_block oc (fname,fentry) block_cont
      with | Not_found  -> (* tail *)
        (* Printf.printf "b tail : (%d,%d)\n" b1 b2; *)
        (
          let fdoms = List.filter (fun b' -> b' > b1) (!get_dom_frontier b1) in 
        (* if List.length fdoms > 0 then Printf.printf "%d : {%s}\n" b1 (U.intlist_to_string fdoms); *)
        let (notemited_fdompreds : int list) = List.fold_left (fun acc_list fdom -> 
          let (fdompred : int list) = (try G.pred !cfg fdom with | e -> Printf.eprintf "error in fdompred %d <= %d\n" fdom b1;raise e)in 
          (* Printf.printf "fdom %d : {%s}\n" fdom (U.intlist_to_string (List.filter (fun b' -> not(SetInt.mem b' !emitted)) fdompred)); *)
          if List.length (List.filter (fun b' -> not(SetInt.mem b' !emitted)) fdompred) > 0 && not(List.mem fdom acc_list)
            then fdom::acc_list else acc_list) [] fdoms in 
        (Hashtbl.add bnum2branchlabel b2 else_label;
        (if SetInt.mem b1 !emitted then 
          let movedlabel = (try Hashtbl.find bnum2branchlabel b1 with | Not_found -> 
            if SetInt.mem b1 !Dfa.loopentry then get_loop_label fname b1 
            else  
            failwith (Printf.sprintf "moved label not found for B%d" b1)) in 
            (loopback_then_jump := SetInt.add b1 !loopback_then_jump;moved_jump := true;
            Printf.fprintf oc "\tj\t%s # %s for %d at B%d\n" movedlabel "moved need extra jump" b1 bnum)
        ); (*movedの場合*)
          emit_block oc (fname,fentry) b1;
        (if not(SetInt.mem b1 !emitted) then (adhoc_contblock := SetInt.add b1 !adhoc_contblock;
        let contlabel = get_cont_label fname b1 in 
        Printf.fprintf oc "\tj %s # adhoc jump(3)\n" contlabel) );
          (match notemited_fdompreds with
           | [bcont] -> ()
              (* (let contlabel = get_cont_label fname bcont in  
                (* Printf.printf "tail j emit j (%d,%d) -> %d\n" b1 b2 bcont; *)
                (* Printf.printf "maybe adhoc contjump %d\n" bcont;                 *)
                adhoc_contjump := SetInt.add bcont !adhoc_contjump;
                emit_block oc (fname,fentry) b1;
                adhoc_contjump := SetInt.remove bcont !adhoc_contjump;
                adhoc_contblock := SetInt.add bcont !adhoc_contblock) *)
            | [] -> ()
              (* emit_block oc (fname,fentry) b1
              (Printf.printf "tail j don't emit j (%d,%d)\n" b1 b2) *)
            | _ -> ()
              (* (Printf.printf "B%d multiple notemited fdompreds : %s\n" bnum (U.intlist_to_string notemited_fdompreds)) *)
            );
        (* (match isnot_cont_emitted_rightafter b1 with 
          | Some(bcont) -> 
            (let contlabel = get_cont_label fname bcont in 
              Printf.printf "tail j emit j (%d,%d) -> %d\n" b1 b2 bcont;
              Printf.fprintf oc "\tj\t%s\n" contlabel;
              adhoc_contblock := SetInt.add bcont !adhoc_contblock)
          | None -> (Printf.printf "tail j don't emit j (%d,%d)\n" b1 b2)); *)
        if emit_b2 && not(SetInt.mem b2 !emitted) then 
        (
          (* Printf.fprintf oc "%s:\t#tail\n" else_label; *)
        stackset := stackset_back;
        (* Hashtbl.add bnum2branchlabel b2 else_label; *)
        emit_block oc (fname,fentry) b2))) (*これコメントつけたかったら別途やらないといけないな*)
      ))
    | Call(_,f,_,_) when List.mem (process_funcname f) ["create_array";"create_float_array";"init_array";"init_float_array"] -> 
      (match (process_funcname f) with 
        | "create_array" -> Genoutlib.emit_int_create_array oc true
        | "create_float_array" -> Genoutlib.emit_float_create_array oc true
        | "init_array" -> Genoutlib.emit_int_init_array oc true
        | "init_float_array" -> Genoutlib.emit_float_init_array oc true
        | _ -> assert(false))
    | Call(_,f,_,_) when is_tail && rnum = last_rnum && !is_fundef -> 
          let f = (if !has_callee_save && (f = fname) then "body_"^f else f) in 
            (jumped := true;Printf.fprintf oc "\tj\t%s\n" f)
    | Call(_,f,_,_) -> 
        let ss = stacksize () in
        (if not(!has_callee_save) then Printf.fprintf oc "\tsw\t%s, %d(%s)\n" "ra" (ss - addr_step) (reg reg_sp)); (*raをスタックに乗せる*)
        Printf.fprintf oc "\taddi\t%s, %s, %d\n" (reg reg_sp) (reg reg_sp) ss;
        Printf.fprintf oc "\tjal\t%s\n" f;
        Printf.fprintf oc "\taddi\t%s, %s, %d\n" (reg reg_sp) (reg reg_sp) (-ss);
        (if not(!has_callee_save) then Printf.fprintf oc "\tlw\t%s, %d(%s)\n" "ra" (ss - addr_step) (reg reg_sp))
    | Phi_w(_) | Phi_r(_) -> () (*無視*)
    | Copy(xl,yl) when xl = yl -> ()
    | Save(vexp,x) -> 
      if S.mem vexp !Dfa.loopvars || not(S.mem vexp !stackset) || S.mem vexp !reorder_save then 
      (save(vexp);
      Printf.fprintf oc "\tsw\t%s, %d(%s)\n" (reg x) (get_offset vexp) (reg reg_sp))
    | Reload(x,vexp) -> 
      (reloaded := S.add vexp !reloaded;
      Printf.fprintf oc "\tlw\t%s, %d(%s)\n" (reg x) (get_offset vexp) (reg reg_sp))
    | _ -> emit_inst oc ssa);(rnum + 1)
  ) 0 insnlist in 
  (if List.length succ = 0 && not(!jumped) then (if !is_fundef then ((*if (Hashtbl.mem Regssa.ht_callee_reload fentry) then Printf.fprintf oc "\tj %s\n" (get_ret_label fname) else*) Printf.fprintf oc "\tret\n") else (Printf.fprintf oc "\tj endp\n")));
  (match try_get_loop_entry bnum with 
    (* | None -> () *)
    | Some(wentry) when !KNormal.enable_while && not(!moved_jump) && not(SetInt.mem bnum !moved_loop_cont) && not(is_belse_and_bfrom wentry bnum) && not(SetInt.mem bnum !loopback_then_jump) (*&& not(is_bthen_and_bfrom wentry bnum)*)-> (let whilelabel = get_loop_label fname wentry in 
      Printf.fprintf oc "\tj %s # loopback to while entry from B%d\n" whilelabel bnum)
    | _ -> ()
      );
  (* (emit_adhoc_contjump oc fname bnum); *)
  (if List.length succ = 1 then 
    let next = List.hd succ in 
    (* Printf.printf "is cont block %d -> %d? %b\n" bnum next  (Hashtbl.mem Regssa.cont2accinfo next); *)
    if bnum < next (*&& not(Hashtbl.mem Regssa.cont2accinfo next && G.in_degree !cfg next > 1)*) then (*後退辺と合流は追わない*)
    ((
      match isnot_cont_emitted_rightafter bnum with 
        | Some(bcont) -> ((*Printf.printf "adhoc deg1 jump %d -> %d\n" bnum bcont;*)expected_next := Some(bcont))
          (* (let otherpreds = U.list_diff (G.pred !cfg bcont) [bnum] in 
          Printf.printf "%d -> %d : otherpreds = %s\n" bnum bcont (U.intlist_to_string otherpreds);
          if List.for_all (fun b' -> let is_empty = isempty_between (b',bcont) in 
            Printf.printf "is_empty %d -> %d ? :%b\n" b' bcont is_empty;is_empty) otherpreds then (Printf.printf "not emit adhoc jump(2) for %d -> %d\n" bnum bcont)
          else 
            (let contlabel = get_cont_label fname bcont in 
            (* Printf.printf "adhoc deg1 jump %d -> %d\n" bnum bcont; *)
            Printf.fprintf oc "\tj %s # adhoc jump(2)\n" contlabel;
            adhoc_contblock := SetInt.add bcont !adhoc_contblock)) *)
        | _ -> ()
        );
    emit_block oc (fname,fentry) next))))
  
(* let emit_callee_reload oc instlist = 
  List.iter (fun ssa -> 
    match ssa with 
    | Reload(x,vexp) -> 
      (reloaded := S.add vexp !reloaded;
      Printf.fprintf oc "\tlw\t%s, %d(%s)\n" (reg x) (get_offset vexp) (reg reg_sp))
    | _ -> assert(false)
  ) instlist *)


let emit_func oc fentry = 
  let idom = Dom.compute_idom !cfg fentry in 
  let dom_tree v = Dom.idom_to_dom_tree !cfg idom v in 
  let f_get_dom_frontier v = Dom.compute_dom_frontier !cfg dom_tree idom v in 
  get_dom_frontier := f_get_dom_frontier;
  has_callee_save := false;
  let fname = get_fname fentry in 
  emit_label_only_row oc fname;
  stackset := S.empty;
  stackmap := [];
  expected_next := None;
  (try 
    let callee_save_regs = Asm.reg_ra::(Hashtbl.find Regssa.fentry2dirtycallreg fentry) in 
    has_callee_save := true;
    List.iter (fun x -> 
      let vexp = "#"^x in 
      (save(vexp);
      Printf.fprintf oc "\tsw\t%s, %d(%s)\n" (reg x) (get_offset vexp) (reg reg_sp))
    ) callee_save_regs;
    let bodylabel = ("body_"^fname) in  
    Printf.fprintf oc "%s:\n" bodylabel;
    emit_block oc (fname,fentry) fentry
    (* check_branch_tail_rec_after oc (fname,fentry) fentry bodylabel *)
  with | Not_found -> 
    let bodylabel = ("body_"^fname) in 
      (* check_branch_tail_rec_after oc (fname,fentry) fentry bodylabel *)
      emit_block oc (fname,fentry) fentry
  )
  (* ;(try let callee_save_insts = Hashtbl.find Regssa.ht_callee_reload fentry in 
    Printf.fprintf oc "%s:\n" (get_ret_label fname);
    emit_callee_reload oc callee_save_insts;
    Printf.fprintf oc "\tret\n"
    with | Not_found -> ()) *)
  

let erase_empty_block g = 
  let all_v = Datagraph.g_all_vertices g in 
  List.fold_left (fun acc_g v -> 
    if not(G.mem_vertex acc_g v) then (Printf.eprintf "found non mem vertex B%d\n" v;acc_g)
    else 
    (if is_empty_block v && (*G.in_degree acc_g v = 1 &&*) G.out_degree acc_g v = 1 && not(List.mem v !fentry_list) then
      (let v_next = List.hd (G.succ acc_g v) in 
      Hashtbl.remove branch2cont v;
      (* Printf.printf "remove empty B%d\n" v; *)
      let new_g =  List.fold_left (fun inner_acc_g v_before -> 
          G.add_edge inner_acc_g v_before v_next) (G.remove_vertex acc_g v) (G.pred acc_g v) in 

      bthen_list := U.list_replace_all v v_next !bthen_list;
      belse_list := U.list_replace_all v v_next !belse_list;
      new_g)
    else acc_g)
  ) g (List.sort_uniq compare all_v)

let erase_empty_block_all _ = 
  List.iter (fun fentry -> 
    try
      let g = Hashtbl.find ht_cfg fentry in 
      let new_g = erase_empty_block g in 
      Hashtbl.replace ht_cfg fentry new_g
    with | Not_found -> Printf.eprintf "function from %d not found\n" fentry
    ) !fentry_list
      
let swap_conj_branch _ = 
  ignore(List.fold_left2 (fun bid bthen belse -> 
    (if (get_fname bthen = "main") then ()
    else 
    let g = (try Hashtbl.find ht_cfg (Dfa.get_fentry bthen) with | Not_found -> failwith "cfg not found") in (*else がfall-through利用できるほうがいい*)
    if (G.in_degree g bthen > 1 && G.in_degree g belse = 1) then 
    (
      Printf.printf "swap conj (%d,%d) so that else block has in_degree = 1\n" bthen belse;
    (* Regssa.revert_branch_thenelse Regssa.block2alloced_insts (List.nth !bfrom_list bid) bthen belse) *)
    ));
    (bid + 1)
    ) 0 !bthen_list !belse_list)

let f is_min_rt oc = 
  Hashtbl.clear Bpschedule.block2reachable; 
  erase_empty_block_all ();
  (* swap_conj_branch (); *)
  (let oc = open_out_bin "emitgraph.dot" in fprint_graphs oc ht_cfg Regssa.Dot5.output_graph;Out_channel.close oc);
  Format.eprintf "generating assembly...@.";
  
  print_datasec oc !Virtual.data;
  (* print_lib is_min_rt oc; *)
  print_header oc ();
  (* Genoutlib.emit_outlibs oc; *)
  flush oc;
  (* Printf.printf "begin split last\n"; flush stdout; *)
  let fundef_entry_list, fentry_main = U.list_split_last !fentry_list in 
  (* Printf.printf "fin split last\n"; flush stdout; *)
  List.iter (fun fentry -> 
    try
      (* Printf.printf "fentry = %d\n" fentry; flush stdout; *)
      flush oc;
      cfg := Hashtbl.find ht_cfg fentry;
      emit_func oc fentry;
      let not_reload = S.diff !stackset !reloaded in 
      if not(S.is_empty not_reload) then Printf.eprintf "found not reloaded vars in %s: {%s}\n" (Dfa.get_fname fentry) (S.to_string not_reload)
    with | Not_found -> Printf.eprintf "function from %d not found\n" fentry
    ) fundef_entry_list;

  Printf.fprintf oc "\t.globl min_caml_start\n"; 
  Printf.fprintf oc "min_caml_start: # main entry point\n";
  Printf.fprintf oc "\tmv\t%s, %s\n" (reg Asm.reg_sp) (reg Asm.regs.(0));
  Printf.fprintf oc "\tmv\t%s, %s\n" (reg Asm.reg_hp) (reg Asm.regs.(1));

  Printf.fprintf oc "#\tmain program starts\n";
  stackset := S.empty;
  stackmap := [];
  is_fundef := false;
  cfg := Hashtbl.find ht_cfg fentry_main;
  emit_func oc fentry_main;
  Printf.fprintf oc "#\tmain program ends\n";
  Printf.fprintf oc "endp:\n";
  Printf.fprintf oc "\tj endp\n"
  (* (Prog(data, fundefs, e)) *)


  
