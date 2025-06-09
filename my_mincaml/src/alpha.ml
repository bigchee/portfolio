(* rename identifiers to make them unique (alpha-conversion) *)

open KNormal
let enable_in_inline = ref true
let find x env = try M.find x env with Not_found -> x (**外部変数用?**)
let loopvars = ref S.empty
(* let inline_loopenv = ref M.empty  *)
let convert_loopvars = Hashtbl.create 256
let convert_contvars = Hashtbl. create 256
let from_alpha = ref false

let rec get_alpha_convert_loopvars args = 
  try 
    get_alpha_convert_loopvars (Hashtbl.find convert_loopvars args)
  with | Not_found -> args 

let rec g_original env loopvar_env e =  (* α変換ルーチン本体 (caml2html: alpha_g) *)
(let first = 
(match (fst e) with
  | Unit -> Unit
  | Int(i) -> Int(i)
  | Float(d) -> Float(d)
  | Not(x) -> Not(find x env)
  | Neg(x) -> Neg(find x env)
  | Add(x, y) -> Add(find x env, find y env)
  | Sub(x, y) -> Sub(find x env, find y env)
  | Mul(x, y) -> Mul(find x env, find y env)
  | Div(x, y) -> Div(find x env, find y env)
  | FNeg(x) -> FNeg(find x env)
  | FAdd(x, y) -> FAdd(find x env, find y env)
  | FSub(x, y) -> FSub(find x env, find y env)
  | FMul(x, y) -> FMul(find x env, find y env)
  | FDiv(x, y) -> FDiv(find x env, find y env)
  | IfEq(x, y, e1, e2) -> IfEq(find x env, find y env, g_original env loopvar_env e1, g_original env loopvar_env e2)
  | IfLE(x, y, e1, e2) -> IfLE(find x env, find y env, g_original env loopvar_env e1, g_original env loopvar_env e2)
  (* | Let((x, t), e1, e2) when M.mem x !Typing.gvalenv -> global変数はalpha変換しない *)
      (* Let((x, t), g_original env e1, g_original env e2) *)
  | Let((y,Type.Unit),(Cont(args,xs),mloc),e2) -> 
      (let newargs = List.map Id.genid args in 
      loopvars := S.add_list newargs !loopvars;
      let alpha_args = (match (fst e2) with 
         | While(_,_,(args',_)) -> args'
         | Let(_,(While(_,_,(args',_)),_),_) -> args'
         | _ -> (KNormal.print Format.std_formatter 2 false e;assert(false))) in 
      (* let alpha_args = get_alpha_convert_loopvars args in  *)
      let env' = M.add_list2 alpha_args newargs env in 
      (* Printf.printf "inline cont : args = {%s}, alpha_args = {%s}, newargs = {%s}\n" (U.list_to_string args) (U.list_to_string alpha_args) (U.list_to_string newargs); *)
      (* let newloopvar_env = M.add_list2 args newargs loopvar_env in *)
      let new_xs = List.map  (fun x -> 
        if x.[0] = '_' then (let alpha_arg = Hashtbl.find convert_contvars (Ssa.remove_alpha x) in Hashtbl.remove convert_contvars (Ssa.remove_alpha x);alpha_arg) else find x env) xs in 
      let e' = Let((y,Type.Unit),(Cont(newargs,new_xs),mloc),g_original env' loopvar_env e2) in 
      e')
  | Let((x, t), e1, e2) -> (* letのα変換 (caml2html: alpha_let) *)
      let x' = Id.genid x in
      (if x.[0] = '_' then Hashtbl.add convert_contvars (Ssa.remove_alpha x) x');
      Let((x', t), g_original env loopvar_env e1, g_original (M.add x x' env) loopvar_env e2)
  | Var(x) -> Var(find x env)
  | LetRec({ name = (x, t); args = yts; body = e1 }, e2) -> (* let recのα変換 (caml2html: alpha_letrec) *)
      let env = M.add x (Id.genid x) env in
      let ys = List.map fst yts in
      let env' = M.add_list2 ys (List.map Id.genid ys) env in
      LetRec({ name = (find x env, t);
               args = List.map (fun (y, t) -> (find y env', t)) yts;
               body = g_original env' loopvar_env e1 },
             g_original env loopvar_env e2)
  | App(x, ys) -> App(find x env, List.map (fun y -> find y env) ys)
  | Tuple(xs)  -> Tuple(List.map (fun x -> find x env) xs)
  | Cont(args,xs) -> 
    let newargs = List.map (fun x -> find x loopvar_env) args in 
    (* let newargs = List.map (fun x -> try M.find x loopvar_env with Not_found -> failwith (Printf.sprintf "loop args %s not found" (U.list_to_string args))) args in  *)
    (* loopvars := S.add_list newargs !loopvars; *)
    Cont(newargs,List.map (fun x -> find x env) xs)
  | LetTuple(xts, y, e) -> (* LetTupleのα変換 (caml2html: alpha_lettuple) *)
      let xs = List.map fst xts in
      let env' = M.add_list2 xs (List.map Id.genid xs) env in
      LetTuple(List.map (fun (x, t) -> (find x env', t)) xts,
               find y env,
               g_original env' loopvar_env e)
  | Get(x, y) -> Get(find x env, find y env)
  | Put(x, y, z) -> Put(find x env, find y env, find z env)
  | ExtSeq(x) -> ExtSeq(x)
  | ExtFunApp(x, ys) -> ExtFunApp(x, List.map (fun y -> find y env) ys)
  | While(e1,e2,(args,t)) -> 
    (let mapped_args = 
      (* args *)
      List.map (fun x -> find x env) args (*ここもloopvar_envから見るのでは? -> 関数引数がそのままループ変数になる場合があるのでだめだった*)
    in
    let newargs = 
      (* args *)
      List.map (fun x -> find x loopvar_env) mapped_args (*ここもloopvar_envから見るのでは?*)
    in 
    (* Printf.printf "args = {%s}, mapped_args = {%s}, newargs = {%s}\nloopvar_env = {%s}\n" (U.list_to_string args) (U.list_to_string mapped_args) (U.list_to_string newargs) (M.to_string loopvar_env);
    Printf.printf "loopargs {%s} -> {%s}\n" (U.list_to_string args) (U.list_to_string newargs);flush stdout; *)
      (
        let newloopvar_env = M.add_list2 args mapped_args loopvar_env in 
      (* inline_loopenv := newloopvar_env; *)
      (if not(!from_alpha) && List.exists (fun s -> s.[0] = '_' ) args then Hashtbl.add convert_loopvars args mapped_args);
    While(g_original env loopvar_env e1,g_original env newloopvar_env e2,(mapped_args,t))))
  | Ret(args,e1) -> 
    let newargs = List.map (fun x -> find x loopvar_env) args in 
      Ret(newargs,g_original env loopvar_env e1)
  
) in (first,snd e))
let g env e = 
  from_alpha := true;
  let ans = (if !enable_in_inline then g_original env M.empty e else e) in 
  from_alpha := false; (*こっちの場合のloopvar怪しいか?*)
  ans
let f enable e = if enable then g_original M.empty M.empty e else e
