open KNormal

exception MultipleCandidate

let multiple = "MULTI"
let multi_alias = ref S.empty

let local_array = ref S.empty
let tmp_local_array = ref S.empty
let calculated = ref S.empty

let arrayenv = ref M.empty

module SIM = 
  Map.Make(struct
    type t = string * int 
    let compare = compare
  end)

let tupleenv = ref SIM.empty

let fname2pos_write_array = Hashtbl.create 256 (*ある関数内で陽に書き込まれる, global配列*)
let fname2neg_write_array = Hashtbl.create 256 (*ある関数内で陰に書き込まれる, 配列引数*)
let fname2arg_ret_array = Hashtbl.create 256 (*返り値が配列の場合, それに関与する引数集合*)

type alias = Local of string | Arg of string | Global of string

let rec inner_array_alias array_args arrayenv visited aname = (*最後から二個前以前のanameのboundをseedの方へ変えたい*)
  (* Printf.eprintf "search %s\n" aname ; *)
  if S.mem aname visited then ((*Printf.eprintf "circular search %s, visited = {%s}\n" aname (S.to_string visited);*)Global(multiple))
  else if S.mem aname !local_array then Local(aname)
  else 
  try 
    inner_array_alias array_args arrayenv (S.add aname visited) (M.find aname arrayenv)
  with | Not_found -> (
    if S.mem aname array_args then Arg(aname)
    else if M.mem aname !Typing.gvalenv || aname = Asm.memory || aname = multiple then Global(aname)
    else (Printf.eprintf "couldn't resolve aname = %s with visited = {%s}\n" aname (S.to_string visited);raise Not_found)
  )
let print_array_env arrayenv = 
  M.iter (fun vname vpname -> 
    Printf.printf "%s -> %s\n" vname vpname) arrayenv

let resolve_array_alias array_args aname = 
    (try 
      let ans = inner_array_alias array_args !arrayenv S.empty aname in  (*集合群ぽくするためには本当は途中のノード全部の親を変えないといけないのか*)
      ans
    with | Not_found -> Printf.eprintf "found unknown array variable %s\nargs = %s\n" aname (S.to_string array_args);print_array_env !arrayenv;raise Not_found)


let list_filter_by_index ls indices = 
  snd (List.fold_left (fun (rnum,acc_list) x -> 
    let newlist = 
      if Datagraph.SetInt.mem rnum indices then acc_list@[x] else acc_list in 
      (rnum+1,newlist)
    ) (0,[]) ls )

let array_alias2seedaname aname = 
  (* Printf.eprintf "search(2) %s\n" aname; *)
  let rec f visited aname = 
  (if S.mem aname !multi_alias then multiple
  else if S.mem aname visited then ((*Printf.eprintf "circular search %s, visited = {%s}\n" aname (S.to_string visited);*)multiple)
  else 
    (try 
      f (S.add aname visited) (M.find aname !arrayenv)
    with | Not_found -> aname )) in 
  f S.empty aname 

let get_all_seedaname aname = 
  let rec f acc_set idx = 
    (try 
      let aname_i = SIM.find (aname,idx) !tupleenv in 
      let seed_name_i = (array_alias2seedaname aname_i) in 
      f (S.add seed_name_i acc_set) (idx+1) 
      with | Not_found -> if idx = 0 then S.singleton aname (*Printf.eprintf "tuple %s not found in tuple env(2)\n" aname;raise Not_found*) else acc_set)
  in f S.empty 0
    
let rec update_writes array_args aname (maywrite_array_args,maywrite_array_global) = 
  if SIM.mem (aname,0) !tupleenv && not(S.mem aname array_args) then 
    let get_all_seedaname = get_all_seedaname aname in 
    S.fold (fun aname_i (acc_maa,acc_mag)-> 
        update_writes array_args aname_i (acc_maa,acc_mag)
      ) get_all_seedaname  (maywrite_array_args,maywrite_array_global) 
  else 
    (match (resolve_array_alias array_args aname) with 
      | Local _  -> (maywrite_array_args,maywrite_array_global)
      | Arg(seed_aname) -> (S.add seed_aname maywrite_array_args,maywrite_array_global)
      | Global(seed_aname) -> (maywrite_array_args,S.add seed_aname maywrite_array_global))

let rec update_mara array_args aname old_mara = 
  if SIM.mem (aname,0) !tupleenv && not(S.mem aname array_args)  then 
    let get_all_seedaname = get_all_seedaname aname in 
    S.fold (fun aname_i acc_mara -> 
        update_mara array_args aname_i acc_mara
      ) get_all_seedaname old_mara
  else 
    match (resolve_array_alias array_args aname) with 
      | Arg(seed_aname) -> (S.add seed_aname old_mara)
      | _ -> old_mara

let rec get_pos_write_array fname = 
  try
    Hashtbl.find fname2pos_write_array fname 
  with | Not_found -> Printf.eprintf "%s should be defined before use\n" fname;raise Not_found

let rec get_neg_write_array fname = 
  try
    Hashtbl.find fname2neg_write_array fname 
  with | Not_found -> Printf.eprintf "%s should be defined before use(1)\n" fname;raise Not_found

let get_arg_ret_array fname = 
  try
    Hashtbl.find fname2arg_ret_array fname 
  with | Not_found -> Printf.eprintf "%s should be defined before use(2)\n" fname;raise Not_found

let filter_write_args fname args = 
  let target_indices = get_neg_write_array fname in 
  list_filter_by_index args target_indices 

let register_one_alias x yalias = 
  match yalias with 
  | Global(y) -> ((*Printf.printf "register alias %s -> %s\n" x y;*)arrayenv := M.add x y !arrayenv )
  | Local(y) when x = y -> ((*Printf.printf "register local array %s\n" x;*)local_array := S.add x !local_array)
  | Arg _ | Local _  -> assert(false)

let alias2string x = 
  match x with 
    | Local(y) -> Printf.sprintf "Local(%s)" y
    | Arg(y) -> Printf.sprintf "Arg(%s)" y
    | Global(y) -> Printf.sprintf "Global(%s)" y

let register_alias register_env = 
  M.iter (fun x ylist -> 
    match ylist with 
      | [] -> assert(false)
      | h::[] -> register_one_alias x h
      | _ -> (Printf.printf "seed_aname %s -> {%s}\n" x (U.list_to_string (List.map alias2string ylist));failwith "multiple seed array candidates")
  ) register_env

let r_newloopvar = Str.regexp "_\\([A-z0-9]+\\)_\\([A-z.0-9]+\\)" 

  
let split_newloopvar s = 
  let vexp,regname = (Str.global_replace r_newloopvar "\\1" s), (Str.global_replace r_newloopvar "\\2" s) in   (*ケースにマッチしないと全文"\\0"をかえす*)
  if (vexp = s || regname == s) then raise Not_found
  else (vexp,regname)


  let register_rhs_array current_fname (x,t) e1 = 
    let rec f env e1 = 
    (match (fst e1) with
      (* | Get(y,offset) when y = Asm.memory  -> 
        (
        let aname,_ =  (try split_newloopvar offset with | Not_found -> (Printf.eprintf "M should have offset which begins from '_', but received %s\n" offset;failwith "offset error")) in 
        M.add_cons x (Global(aname)) env) *)
         (* 配列引数の場合に *)
      | Var(y) | ExtSeq(y) | Get(y,_) -> M.add_cons x (Global(y)) env (*変数だとarg,globalどっちかわからないが, ここでは区別しなくていいのでglobalにまとめてある*)
      | ExtFunApp(fname,_) when List.mem fname Genoutlib.outlib -> M.add_cons x (Local(x)) env
      | App(fname,args) -> (
        (* flush stdout;Printf.printf "find array return \n";KNormal.print (Format.std_formatter) 2 e1;Format.pp_print_flush Format.std_formatter ();Printf.printf "\n";flush stdout; *)
          if current_fname = fname then M.add_cons x (Local(x)) env (*この場合にどうすればいいのか?*)
          else 
            let sub_arg_ret_array = get_arg_ret_array fname in
            (match (Datagraph.SetInt.to_list sub_arg_ret_array) with 
              | [] -> M.add_cons x (Local(x)) env
              | [idx] -> M.add_cons x (Global(List.nth args idx)) env 
              | _ -> failwith "subcall arg_ret array > 2" (*リストにしたのでこの場合も対応可能になっている, 要変更*)
            ))
      | Tuple xs -> (*tupleは何番目のフィールドかを気にしないといけないので, 暫定的にここで処理する*)
          (ignore(List.fold_left2 (fun idx y t1 -> 
            (if Type.contain_array t1 then 
              (
                (* Printf.printf "register tuple (%s,%d) -> %s\n" x idx y; *)
                tupleenv := SIM.add (x,idx) y !tupleenv));
            (idx+1)
            ) 0 xs (Type.get_tuple_tlist t));
            env)
        (* List.fold_left2 (fun acc_env y t1 -> 
        if Type.contain_array t1 then M.add_cons y (Global(x)) acc_env
        else acc_env
        ) env xs (Type.get_tuple_tlist t) *)
      | Ret(_,e1) -> f env e1
      | IfEq(_,_,e1,e2) | IfLE(_,_,e1,e2) -> f (try (f env e1) with | Failure _ -> env) e2
      | Let(_,_,e2) | LetTuple(_,_,e2) -> f env e2
      (* | While(_,e2,_) -> register  *)
      | _ -> (*Printf.printf "array rhs ";KNormal.print (Format.std_formatter) 2 false e1;failwith "unexpected pattern"*)env)
    in f M.empty e1

let rec find_maywrite_array_args current_fname array_args is_tail maywrite_array_args maywrite_array_global maybe_arg_ret_array e  = 
  match (fst e) with 
  (*add alias*)
    | Let ((x,t),e1,e2) when Type.contain_array t -> 
      (let registerenv = 
        (match (fst e1) with 
          | While(_,e12,_) -> register_rhs_array current_fname (x,t) e12
          | _ -> register_rhs_array current_fname (x,t) e1) 
           in 
        (if M.is_empty registerenv && not(Type.is_tuple t) then (Printf.eprintf "rhs not found for %s\n" x;KNormal.print (Format.std_formatter) 2 false e1;failwith "array rhs not found"));   
        register_alias registerenv;
        let maa1,mag1,mara1 = find_maywrite_array_args current_fname array_args false maywrite_array_args maywrite_array_global maybe_arg_ret_array e1 in
        find_maywrite_array_args current_fname array_args is_tail maa1 mag1 mara1 e2 
      (* find_maywrite_array_args current_fname array_args newenv maywrite_array_args maywrite_array_global e2 *)
      )
    | Cont (args,contargs) -> 
      (let newenv,multiple_args = List.fold_left2(fun (acc_env,acc_mult) arg contarg -> 
        try
        (let seed_aname = (if S.mem contarg !local_array || S.mem contarg array_args then contarg else M.find contarg !arrayenv) in 
          (try 
              (let current_v = M.find arg !arrayenv in 
              if arg = contarg || seed_aname = current_v || arg = seed_aname then (acc_env,acc_mult)
              else ((*Printf.printf "multiple seed array candidates %s <= %s : {%s,%s}\n" arg contarg current_v seed_aname ;KNormal.print (Format.std_formatter) 2 false e;Printf.printf "\n";*)raise MultipleCandidate))
            with | Not_found -> (if arg <> seed_aname then ((*Printf.printf "register cont %s <= %s : %s\n" arg contarg seed_aname;*)(M.add arg seed_aname acc_env,acc_mult)) else (acc_env,acc_mult)))
        ) with | Not_found -> (
          (* Printf.printf "cont not found %s <= %s, is_local = %b\n" arg contarg (S.mem contarg !local_array); *)
          (M.add arg contarg acc_env,acc_mult)) (*とりあえずarrayがらみじゃないと思うことに*)
               | MultipleCandidate -> (multi_alias := S.add arg (S.add contarg !multi_alias);(acc_env,S.add arg acc_mult))
        ) (!arrayenv,maywrite_array_args) args contargs in (arrayenv := newenv;(multiple_args,maywrite_array_global,maybe_arg_ret_array)))
  (*find write*)
    | Put(aname,_,_) -> 
        let (maa,mag) = update_writes array_args aname (maywrite_array_args,maywrite_array_global) in (maa,mag,maybe_arg_ret_array)

    | App(fname,_) when fname = current_fname ->  maywrite_array_args,maywrite_array_global,maybe_arg_ret_array (*再帰の場合は追わない?*)
  (*subroutine call*)
    | App(fname,app_args) -> 
      let sub_pos_writes = get_pos_write_array fname in 
      let sub_neg_writes = get_neg_write_array fname in 
      let sub_arg_ret_array = get_arg_ret_array fname in 
      let update_writes = update_writes array_args in 
      let _, (new_maa,new_mag) = List.fold_left (fun (idx,acc_write) app_arg -> 
        let new_write = 
          (if not(Datagraph.SetInt.mem idx sub_neg_writes) then acc_write
          else update_writes app_arg acc_write) in 
          (idx+1,new_write)
        ) (0,(maywrite_array_args,S.union sub_pos_writes maywrite_array_global)) app_args in 
      let new_mara = if not(is_tail) then maybe_arg_ret_array else 
        snd (List.fold_left (fun (idx,acc_mara) app_arg -> 
        let new_write = 
          (if not(Datagraph.SetInt.mem idx sub_arg_ret_array) then acc_mara
          else update_mara array_args app_arg acc_mara) in 
          (idx+1,new_write)
        ) (0,maybe_arg_ret_array) app_args) in 
        (new_maa,new_mag,new_mara)
    | ExtFunApp(fname,_) when List.mem (Ssa.remove_alpha fname) Asm.all_hardlib || List.mem fname Genoutlib.outlib -> 
        maywrite_array_args, maywrite_array_global,maybe_arg_ret_array
  (*deduction pattern*)
  | Let ((x,t),((Get(aname,_),_) as e1),e2)  -> (*配列読み込みの値, 仮*)
    (arrayenv := M.add x aname !arrayenv;
    let maa1,mag1,mara1 = find_maywrite_array_args current_fname array_args false maywrite_array_args maywrite_array_global maybe_arg_ret_array e1 in
      find_maywrite_array_args current_fname array_args is_tail maa1 mag1 mara1 e2) (*ここの環境は更新後のモノを使う必要があるのか?*)
    | Let (_,e1,e2) | IfEq(_,_,e1,e2) | IfLE(_,_,e1,e2) | While(e1,e2,_) -> 
      let maa1,mag1,mara1 = find_maywrite_array_args current_fname array_args false maywrite_array_args maywrite_array_global maybe_arg_ret_array e1 in
        find_maywrite_array_args current_fname array_args is_tail maa1 mag1 mara1 e2 (*ここの環境は更新後のモノを使う必要があるのか?*)
    | LetTuple(xts,y,e1) -> 
      let newenv,_ = List.fold_left (fun (acc_env,idx) (x,t) -> 
        let new_env = 
            (if Type.contain_array t then 
              (if S.mem y array_args then M.add x y acc_env
              else 
              (let y_seed = array_alias2seedaname y in 
                let y_idx = (try SIM.find (y_seed,idx) !tupleenv with | Not_found -> 
                (* Printf.printf "tuple %s -> %s not found in tuple_env\n" y y_seed; *)
                y_seed) in 
                M.add x y_idx acc_env))
            else acc_env) in 
          (new_env,idx+1)
        ) (!arrayenv,0) xts in 
        (arrayenv := newenv;
        find_maywrite_array_args current_fname array_args is_tail maywrite_array_args maywrite_array_global maybe_arg_ret_array e1)
    | Ret(_,e1) -> find_maywrite_array_args current_fname array_args is_tail maywrite_array_args maywrite_array_global maybe_arg_ret_array e1
  (*next function*)
    | LetRec ({name;args;body},e2) -> 
      calc_maywrite_array_args name args body;
      find_maywrite_array_args current_fname array_args is_tail maywrite_array_args maywrite_array_global maybe_arg_ret_array e2 (*このe2の扱いは?*)
  (*leaf that may return array*)
    | Var y  | Get(y,_)-> let new_mara = if is_tail then update_mara array_args y maybe_arg_ret_array else maybe_arg_ret_array in (maywrite_array_args,maywrite_array_global,new_mara)
    | ExtSeq _ | Tuple _ -> maywrite_array_args,maywrite_array_global,maybe_arg_ret_array
  (*leaf that never return array*)
    | Unit | Int _ | Float _ | Not _ | Neg _
    | Add _ | Sub _ | Mul _ | Div _
    | FNeg _ | FAdd _ | FSub _ | FMul _ | FDiv _  -> ((if (is_tail) then (Printf.printf "unexpected pattern in %s\n" current_fname;KNormal.print (Format.std_formatter) 2 false e) );maywrite_array_args,maywrite_array_global,maybe_arg_ret_array)
    | ExtFunApp(fname,_) -> Printf.printf "unexpected pattern\n";Printf.printf "is_outlib ? %b\n" (List.mem fname Genoutlib.outlib);KNormal.print (Format.std_formatter) 2 false e;assert(false) (*A正規化されていることを仮定していいか?*)

and calc_maywrite_array_args (fname,t) args body = 
  if S.mem fname !calculated then ()
  else 
    (calculated := S.add fname !calculated;
    (* Printf.printf "calc alias for %s\n" fname; *)
    (* tmp_local_array := !local_array;
    local_array := S.empty; *)
    (* let arg_tlist = Typing.get_args_type (Ssa.remove_alpha fname) in  *)
    let array_args = (*List.filter (fun (_,t) -> Type.contain_array t)*) args in  
    let is_ret_array = Type.contain_array (Type.get_ret_type t) in 
    let maywrite_array_args,maywrite_array_global,maybe_arg_ret_array = find_maywrite_array_args fname (S.of_list (List.map fst array_args)) is_ret_array S.empty S.empty S.empty body in (*本当は型情報もいるはず?*)
      Hashtbl.add fname2pos_write_array fname maywrite_array_global;
    let _,maywrite_array_arg_indices,maybe_arg_ret_indices = 
      (List.fold_left (fun (idx,acc_set1,acc_set2) (arg,_) -> 
              let new_set1 = if S.mem arg maywrite_array_args then Datagraph.SetInt.add idx acc_set1 else acc_set1 in 
              let new_set2 = if S.mem arg maybe_arg_ret_array then Datagraph.SetInt.add idx acc_set2 else acc_set2 in 
                (idx+1,new_set1,new_set2)) (0,Datagraph.SetInt.empty,Datagraph.SetInt.empty) args) in  
      Hashtbl.add fname2neg_write_array fname maywrite_array_arg_indices;
      Hashtbl.add fname2arg_ret_array fname maybe_arg_ret_indices;
      (* Printf.printf "%s : maywrite_array_global = {%s}\n" fname (S.to_string maywrite_array_global);
      Printf.printf "%s : maywrite_array_args = {%s}\n" fname (S.to_string maywrite_array_args);
      Printf.printf "%s : maybe_arg_ret_array = {%s}\n" fname (S.to_string maybe_arg_ret_array); *)
      (* local_array := !tmp_local_array *)
      )
    
let f e = 
  calculated := S.empty;
  (* arrayenv := M.empty;
  Hashtbl.clear fname2pos_write_array;
  Hashtbl.clear fname2neg_write_array;
  Hashtbl.clear fname2arg_ret_array; *)
  calc_maywrite_array_args ("main",Type.Fun([Type.Unit],Type.Unit)) [(Id.gentmp Type.Unit,Type.Unit)] e