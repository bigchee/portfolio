open KNormal
(*let enable = ref true*)
let find x env = try M.find x env with Not_found -> x (* 置換のための関数 (caml2html: beta_find) *)

let rec g env e =  (* β簡約ルーチン本体 (caml2html: beta_g) *)
let first = 
( match (fst e) with
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
  | IfEq(x, y, e1, e2) -> IfEq(find x env, find y env, g env e1, g env e2)
  | IfLE(x, y, e1, e2) -> IfLE(find x env, find y env, g env e1, g env e2)
  | Let((x, t), e1, e2) -> (* letのβ簡約 (caml2html: beta_let) *)
      (match (g env e1) with (*あとで上手くいっているかチェック*)
      | Var(y),_ when not(S.mem x !Alpha.loopvars) ->
          (* Format.eprintf "beta-reducing %s = %s@." x y; *)
          fst (g (M.add x y env) e2)
      | e1' ->
          let e2' = g env e2 in
          Let((x, t), e1', e2'))
  | LetRec({ name = xt; args = yts; body = e1 }, e2) ->
      LetRec({ name = xt; args = yts; body = g env e1 }, g env e2)
  | Var(x) -> Var(find x env) (* 変数を置換 (caml2html: beta_var) *)
  | Tuple(xs) -> Tuple(List.map (fun x -> find x env) xs)
  | Cont(args,xs) -> Cont(args,List.map (fun x -> find x env) xs)
  | LetTuple(xts, y, e) -> LetTuple(xts, find y env, g env e)
  | Get(x, y) -> Get(find x env, find y env)
  | Put(x, y, z) -> Put(find x env, find y env, find z env)
  | App(g, xs) -> App(find g env, List.map (fun x -> find x env) xs)
  | ExtSeq(x) -> ExtSeq(x)
  | ExtFunApp(x, ys) -> ExtFunApp(x, List.map (fun y -> find y env) ys)
  | While(e1,e2,t) -> 
    While(g env e1,g env e2, t)
  | Ret(args,e1) -> Ret(args,g env e1)
  
) in( first,snd e)

let f enable = if enable then g M.empty else fun x -> x
