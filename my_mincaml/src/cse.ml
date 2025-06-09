(*KNormal.tの"副作用の無い", "CSE済み"の式 -> それを値として持つ変数名へのマップ環境*)
open KNormal
(*let enable = ref true*)

module Mdef =
  Map.Make
    (struct
      type t = KNormal.t
      let compare = KNormal.cmp
    end)

let array_enable = ref false

let is_label_with_effect label_env label = 
  try (let b = M.find label label_env in (*(Format.eprintf "label %s has effects??: %b\n" label b);*)b)
  with Not_found -> (*Format.eprintf "label %s not found\n" label;*)true

let rec effect label_env e = 
  match (fst e) with
| IfEq(_, _, e1, e2) | IfLE(_, _, e1, e2) | While(e1,e2,_) -> effect label_env e1 || effect label_env e2
| Let((x,_), e1, e2) -> if effect label_env e1 then true else effect (M.add x false label_env) e2
| LetRec(_, e) | LetTuple(_, _, e) | Ret(_,e) -> effect label_env e (*この場合も変数名を追加しないといけないのでは?*)
| App (x,yl) -> (is_label_with_effect label_env x) || (List.exists (is_label_with_effect label_env) yl)
| Put _  | ExtFunApp _ -> true
| Get _ -> 
  true
  (* not(!array_enable) *)
(* | Get _ -> true ./cmpex/week2/toi2-bug.mlの事例により追加 *)
| _ -> false

let maybe_write_array = ref (S.singleton Array_access.multiple)
let tmp_maybe_write_array = ref S.empty

let find e env getenv = 
  try 
    Mdef.find e getenv
  with Not_found -> Mdef.find e env 

(* let aname2rhsget = Hashtbl.create 256 *)
let const_env = ref M.empty
let type_env = ref M.empty

let get_type seed_aname = 
  try 
    M.find seed_aname !Typing.gvalenv
  with | Not_found -> M.find seed_aname !type_env

let update_getenv x idx e env = 
  try 
    let current_bind = M.find x env in 
    let new_bind = List.fold_left (fun acc_list (idx',e') -> 
      if idx <> idx' then acc_list@[(idx',e')]
      else acc_list) [] current_bind in 
    M.add x ((idx,e)::new_bind) env
  with
  | Not_found -> M.add x [(idx,e)] env

let getenv_list_to_string ls = 
  String.concat "," (List.map (fun (idx,v) -> Printf.sprintf "(%d,%s)" idx v) ls )

let remove_getenv x offset env = 
  try 
    let idx = M.find offset !const_env in 
    let current_bind = M.find x env in 
    let new_bind = List.fold_left (fun acc_list (idx',e') -> 
      if idx <> idx' then acc_list@[(idx',e')]
      else acc_list) [] current_bind in 
    (* Printf.printf "%s.(%d) : old_bind = {%s}, new_bind = {%s}\n" x idx (getenv_list_to_string current_bind) (getenv_list_to_string new_bind); *)
    M.add x new_bind env
  with | Not_found -> M.remove x env 

let replace_getenv x offset y env = 
  try 
    let idx = M.find offset !const_env in 
    let current_bind = (try M.find x env with | Not_found -> []) in 
    let new_bind = List.fold_left (fun acc_list (idx',e') -> 
      if idx <> idx' then acc_list@[(idx',e')]
      else acc_list@[(idx,y)]) [] current_bind in 
    (
      (* Printf.printf "%s.(%d) : old_bind = {%s}, new_bind = {%s}\n" x idx (getenv_list_to_string current_bind) (getenv_list_to_string new_bind); *)
      M.add x new_bind env)
with | Not_found -> M.remove x env

let inter_getenv env1 env2 = 
  M.merge (fun _ may1 may2 ->
    match may1,may2 with 
      | None, _ -> None
      | Some _ ,None -> None
      | Some(l1), Some(l2) -> 
        let l = U.list_inter l1 l2 in 
          if List.length l = 0 then None
          else Some(l)
    ) env1 env2

let mem_getenv x offset env = 
  try 
    let idx = M.find offset !const_env in 
    let current_bind = M.find x env in 
     List.fold_left (fun acc (idx',e') -> 
      if idx <> idx' then acc
      else true) false current_bind
  with | Not_found -> false

let find_getenv x offset env = 
  try 
    let idx = M.find offset !const_env in 
    let current_bind = M.find x env in 
    let maybe_e = List.fold_left (fun acc (idx',e') -> 
      if idx <> idx' then acc
      else (Some(e'))) None current_bind
    in Option.get maybe_e
  with | Not_found | Failure _ -> raise Not_found

let rec g env getenv label_env e = (*env : Mdef.t , label_env : M.t 関数名 -> 副作用の有無を持つ環境*)
match (fst e) with 
  | KNormal.Unit 
  | KNormal.Int _  
  | KNormal.Float _
  | KNormal.Neg _ 
  | KNormal.Not _ 
  | KNormal.Add _
  | KNormal.Sub _
  | KNormal.Mul _  
  | KNormal.Div _  
  | KNormal.FNeg _ 
  | KNormal.FAdd _  
  | KNormal.FSub _  
  | KNormal.FMul _  
  | KNormal.FDiv _  
  | KNormal.Var _
  | KNormal.Tuple _
  | KNormal.Get _  
  | KNormal.ExtSeq _
  | KNormal.ExtFunApp _
  | KNormal.Cont _ -> e,getenv
  | KNormal.Put(aname,offset,newy) when !array_enable -> 
    (let seed_aname = Array_access.array_alias2seedaname aname in 
      (* Printf.printf "write aname %s -> %s . (%s), newy = %s\n" aname seed_aname (try string_of_int (M.find offset !const_env) with | Not_found -> offset) newy; *)
      (* maybe_write_array := S.add seed_aname !maybe_write_array; *)
      let new_getenv = replace_getenv seed_aname offset newy getenv in 
      e,new_getenv)
  | KNormal.App(fname,args) when !array_enable -> 
    (let ts = Typing.get_args_type (Ssa.remove_alpha fname) in 
      let write_args = Array_access.filter_write_args fname (List.combine args ts) in 
    let added_seed_write_arrays = List.fold_left (fun acc_set (aname,t)-> 
      if Type.is_tuple t then (
        S.union (Array_access.get_all_seedaname aname) acc_set
      ) else 
      (let seed_aname = Array_access.array_alias2seedaname aname in 
      (* Printf.printf "may write arg  %s -> %s, through function %s\n" aname seed_aname fname; *)
      S.add seed_aname acc_set)) !maybe_write_array write_args in  
    let global_writes = Array_access.get_pos_write_array fname in 
    (* (if not(S.is_empty global_writes) then 
       Printf.printf "may write global arrays {%s}, through function %s\n" (S.to_string global_writes) fname
    ); *)
      let new_getenv = S.fold (fun x acc_env -> M.remove x acc_env) (S.union global_writes added_seed_write_arrays) getenv in 
      e,new_getenv
    ) 
  | KNormal.Put _ | KNormal.App _ -> e,getenv
  | KNormal.IfEq(x, y, e1, e2) -> 
      let e1',getenv1 =  (g env getenv label_env e1) in 
      let e2',getenv2 =  (g env getenv label_env e2) in
        ((IfEq(x, y, e1', e2'), (snd e)),(inter_getenv getenv1 getenv2)) 
  | KNormal.IfLE(x, y, e1, e2) -> 
      let e1',getenv1 = (g env getenv label_env e1) in 
      let e2',getenv2 = (g env getenv label_env e2) in
        ((IfLE(x, y, e1', e2'), (snd e)),(inter_getenv getenv1 getenv2)) 
  | KNormal.Let((x, t), e1, e2)  -> 
    let _ = (type_env := M.add x t !type_env) in 
    let _ = (match (fst e1) with 
      | Int(i) -> const_env := M.add x i !const_env
      | _ -> ()) in 
    let e1',getenv'(*,env1,label_env1*) = g env getenv label_env e1 in
      (match (fst e1') with 
        | Get(y,offset) -> (
          let seed_aname = Array_access.array_alias2seedaname y in 
          (* let seed_aname = if M.mem seed_aname !Typing.gvalenv then seed_aname else y in  *)
          (if (mem_getenv seed_aname offset getenv)
          then (*パターン1. e1に副作用がなく, かつすでに同じ式が定義済み -> CSE可能*)
            (
                (let e2',getenv2' = g env getenv' (M.add x false label_env) e2 in
                let y' = find_getenv seed_aname offset getenv in 
                Format.printf "can cse %s : %s = %s  .(%s) : %s\n" seed_aname x y (try string_of_int (M.find offset !const_env) with | Not_found -> offset) y';
                (KNormal.Let((x, t), (KNormal.Var(y'),Mloc.d_cse), e2'),snd e),getenv2')) (*yのMlocはダミー値*)
          else
            (
              (* Printf.printf "cse %s %b\n" x (S.mem x !Alpha.loopvars) ; *)
            if not(effect label_env e1') && not(S.mem x !Alpha.loopvars) (*ループ変数の場合もcseできない*)
              then (*パターン2. 副作用を持たないe1を, 値に持つ変数がまだないので定義すべき. そして以降のコードから同じ式があれば除去すべき*)
                ( let new_getenv = (try 
                  (* Printf.printf "seed_aname = %s, t = %s | var = %s, t = %s" seed_aname (try Type.to_string (get_type seed_aname) with | Not_found -> "None") y (try Type.to_string (get_type y) with | Not_found -> "None"); *)
                  (if get_type seed_aname = get_type y then 
                    (Printf.printf "add get %s = %s => %s .(%s)\n" x y seed_aname (try string_of_int (M.find offset !const_env) with | Not_found -> offset);
                      update_getenv seed_aname (M.find offset !const_env) x getenv')
                     else getenv')
                  with | Not_found -> getenv') in 
                let e2',getenv2' = g env new_getenv (M.add x false label_env) e2 in ((KNormal.Let((x, t), e1', e2'),snd e),getenv2'(*,env',label_env*)))
              else (*パターン3. e1は副作用を持っているので, e2に同じ式があっても定義を削除できない*)
                (
                  (* Format.eprintf "can't add variable %s to env because of side-effect\n" x; *)
                let e2',getenv2' = g env getenv' (M.add x true label_env) e2 in (* envのままなだけでこれはやる必要があるよね? *)
                  (KNormal.Let((x,t),e1',e2'),snd e),getenv2' (*e1 -> e1'に置き換えるのはOKなのか?*)
                ))))
        | _ -> (if Mdef.mem e1' env
          then (*パターン1. e1に副作用がなく, かつすでに同じ式が定義済み -> CSE可能*)
            (
              (* Format.eprintf "variable %s has an already defined value\n" x; *)
                (let e2',getenv2' = g env getenv' (M.add x false label_env) e2 in
                let y = Mdef.find e1' env in 
                (KNormal.Let((x, t), (KNormal.Var(y),Mloc.d_cse), e2'),snd e),getenv2')) (*yのMlocはダミー値*)
          else
            (
              (* Printf.printf "cse %s %b\n" x (S.mem x !Alpha.loopvars) ; *)
            if not(effect label_env e1') && not(S.mem x !Alpha.loopvars) (*ループ変数の場合もcseできない*)
              then (*パターン2. 副作用を持たないe1を, 値に持つ変数がまだないので定義すべき. そして以降のコードから同じ式があれば除去すべき*)
                (let env' = Mdef.add e1' x env in 
                let e2',getenv2' = g env' getenv' (M.add x false label_env) e2 in ((KNormal.Let((x, t), e1', e2'),snd e),getenv2'(*,env',label_env*)))
              else (*パターン3. e1は副作用を持っているので, e2に同じ式があっても定義を削除できない*)
                (
                  (* Format.eprintf "can't add variable %s to env because of side-effect\n" x; *)
                let e2',getenv2' = g env getenv' (M.add x true label_env) e2 in (* envのままなだけでこれはやる必要があるよね? *)
                  (KNormal.Let((x,t),e1',e2'),snd e),getenv2' (*e1 -> e1'に置き換えるのはOKなのか?*)
                ))))
  | KNormal.LetRec({ KNormal.name = (x, t); KNormal.args = yts; KNormal.body = e1 }, e2) -> 
      (
        (* tmp_maybe_write_array := !maybe_write_array; *)
      List.iter (fun (y,t) -> type_env := M.add y t !type_env) yts;
      let effect_e1 = effect (List.fold_left (fun env (z,_) -> M.add z false env) label_env ((x,t)::yts)) e1 in
      (*Format.eprintf "function %s has an effect??: %b\n" x effect_e1;*)
      let label_env' = M.add x effect_e1 label_env in
      (* maybe_write_array := S.empty; *)
      let e1',_ = g Mdef.empty M.empty label_env' e1 in (*こっちはenvじゃなくていいのか?*)
      (* maybe_write_array := !tmp_maybe_write_array; *)
      let e2',getenv' = g Mdef.empty getenv label_env' e2 in
      (KNormal.LetRec({ KNormal.name = (x, t); KNormal.args = yts; KNormal.body = e1' }, e2'), snd e),getenv' (*とりあえず関数はスルー?*))
  | KNormal.LetTuple(xts, y, e) -> 
      let e',getenv' = g env getenv label_env e in (KNormal.LetTuple(xts, y, e'), snd e),getenv'
  | KNormal.While(e1,e2,t) -> 
    let e1',getenv1 =  (g env M.empty label_env e1) in 
    let e2',getenv2 =  (g env M.empty label_env e2) in
      ((KNormal.While(e1', e2', t), (snd e)),inter_getenv getenv1 getenv2)
  | KNormal.Ret(args,e1) -> 
    let e1',getenv' = g env getenv label_env e1 in 
    (KNormal.Ret(args,e1'), snd e),getenv'

let f enable set_array_enable = 
 (array_enable := set_array_enable;
  if enable then (fun e -> fst (g Mdef.empty M.empty (M.empty) e)) else fun e -> e)