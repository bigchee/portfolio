open KNormal
(*let enable = ref true *)

let memi x env =
  try (match M.find x env with Int(_) -> true | _ -> false)
  with Not_found -> false
let memf x env =
  try (match M.find x env with Float(_) -> true | _ -> false)
  with Not_found -> false
let memt x env =
  try (match M.find x env with Tuple(_) -> true | _ -> false)
  with Not_found -> false

let findi x env = (match M.find x env with Int(i) -> i | _ -> raise Not_found)
let findf x env = (match M.find x env with Float(d) -> d | _ -> raise Not_found)
let findt x env = (match M.find x env with Tuple(ys) -> ys | _ -> raise Not_found)

let rec g env e =  (* 定数畳み込みルーチン本体 (caml2html: constfold_g) *)
let first = 
(match fst e with
  | Var(x) when memi x env -> Int(findi x env)
  | Var(x) when memf x env -> Float(findf x env)
  | Var(x) when memt x env -> Tuple(findt x env)
  | Not(x) when memi x env -> Int(1 - (findi x env))
  | Neg(x) when memi x env -> Int(-(findi x env))
  | Add(x, y) when memi x env && memi y env -> Int(findi x env + findi y env) (* 足し算のケース (caml2html: constfold_add) *)
  | Sub(x, y) when memi x env && memi y env -> Int(findi x env - findi y env)
  | Mul(x, y) when memi x env && memi y env -> Int(findi x env * findi y env)
  | Div(x, y) when memi x env && memi y env -> Int(findi x env / findi y env)
  | FNeg(x) when memf x env -> Float(-.(findf x env))
  | FAdd(x, y) when memf x env && memf y env -> Float(findf x env +. findf y env)
  | FSub(x, y) when memf x env && memf y env -> Float(findf x env -. findf y env)
  | FMul(x, y) when memf x env && memf y env -> Float(findf x env *. findf y env)
  | FDiv(x, y) when memf x env && memf y env -> Float(findf x env /. findf y env)
  | IfEq(x, y, e1, e2) when memi x env && memi y env -> fst (if findi x env = findi y env then g env e1 else g env e2)
  | IfEq(x, y, e1, e2) when memf x env && memf y env -> fst (if findf x env = findf y env then g env e1 else g env e2)
  | IfEq(x, y, e1, e2) -> IfEq(x, y, g env e1, g env e2)
  | IfLE(x, y, e1, e2) when memi x env && memi y env -> fst (if findi x env <= findi y env then g env e1 else g env e2)
  | IfLE(x, y, e1, e2) when memf x env && memf y env -> fst (if findf x env <= findf y env then g env e1 else g env e2)
  | IfLE(x, y, e1, e2) -> IfLE(x, y, g env e1, g env e2)
  | Let((y,Type.Unit),(Cont(args,xs),mloc),e2) ->  
    (match (fst e2) with 
    | While(e21,e22,(args',t)) -> 
      let ci,e22' = KNormal.split_loop_invariant (fun x -> x) (g env e22) in 
      let e2' = (While(g env e21,e22',(args',t)),snd e2) in 
      let e' = (Let((y,Type.Unit),(Cont(args,xs),mloc),e2'),snd e) in 
        fst (ci e')
    | Let(dest,(While(e21,e22,(args',t)),mloc2),e2_cont) -> 
      let ci,e22' = KNormal.split_loop_invariant (fun x -> x) (g env e22) in 
      let e2' = (While(g env e21,e22',(args',t)),mloc2) in 
      let e2_cont' = g env e2_cont in 
      let e2' = Let(dest,e2',e2_cont'),snd e2 in 
      let e' = (Let((y,Type.Unit),(Cont(args,xs),mloc),e2'),snd e) in 
        fst (ci e')
    | _ -> (KNormal.print Format.std_formatter 2 false e;assert(false))) 
  | Let((x, t), e1, e2) -> (* letのケース (caml2html: constfold_let) *)
      let e1' = g env e1 in
      let env' = if S.mem x !Alpha.loopvars then env else (M.add x (fst e1') env) in 
      let e2' = g env' e2 in
      Let((x, t), e1', e2')
  | LetRec({ name = x; args = ys; body = e1 }, e2) ->
      LetRec({ name = x; args = ys; body = g env e1 }, g env e2)
  | LetTuple(xts, y, e) when memt y env ->
      fst
      (List.fold_left2
        (fun e' xt z -> (Let(xt, (Var(z),snd e), e'),snd e))
        (g env e)
        xts
        (findt y env))
  | LetTuple(xts, y, e) -> LetTuple(xts, y, g env e)
  (* | While(e1,e2,t) -> 
    let ci,e2' = KNormal.split_loop_invariant (fun x -> x) (g env e2) in 
    fst (ci (While(g env e1,e2',t),snd e))
  | Ret(args,e1) -> Ret(args,g env e1) *)
  | e -> e
) in 
match first with (*32bitを超えないように展開を抑制, これがあると反って非効率なプログラムが生まれる可能性があるので暫定*)
  | Int i when  (i < U.min_int || i > U.max_int) -> e 
  | _ -> (first,snd e)

let f enable = if enable then g M.empty else fun x -> x
