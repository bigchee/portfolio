(* flatten let-bindings (just for prettier printing) *)

open KNormal

let rec f e =  (* ネストしたletの簡約 (caml2html: assoc_f) *)
let first = 
( match fst e with
  | IfEq(x, y, e1, e2) -> IfEq(x, y, f e1, f e2)
  | IfLE(x, y, e1, e2) -> IfLE(x, y, f e1, f e2)
  | Let(xt, e1, e2) -> (* letの場合 (caml2html: assoc_let) *)
      let rec insert = function (*要チェック*)
        | Let(yt, e3, e4),m -> Let(yt, e3, insert e4),m
        | LetRec(fundefs, e),m -> LetRec(fundefs, insert e),m
        | LetTuple(yts, z, e),m -> LetTuple(yts, z, insert e),m
        | e,m -> Let(xt, (e,m), f e2),m in
      fst (insert (f e1))
  | LetRec({ name = xt; args = yts; body = e1 }, e2) ->
      LetRec({ name = xt; args = yts; body = f e1 }, f e2)
  | LetTuple(xts, y, e) -> LetTuple(xts, y, f e)
  | While(e1,e2,t) -> While(f e1, f e2, t)
  | Ret(args,e1) -> Ret(args,f e1)
  | e -> e
) in (first,snd e)