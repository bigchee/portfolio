open Asm

let rec is_pow2 n = 
  if n < 0 then None
  else 
    let rec g (n,k) = 
      if n = (1 lsl k) then Some(k)
      else if n < (2 lsl k) then None
      else g (n,k+1) in 
    g (n,0)

let rec g env e = (* 命令列の12bit即値最適化 (caml2html: simm12_g) *)
let first = 
(match (fst e) with
  | Ans(exp) -> Ans(g' env exp)
  | Let((x, t), Li(i), e) when -2048 <= i && i < 2047 -> 
      (* Format.eprintf "found simm12 %s = %d@." x i; *)
      let env' = if S.mem x !Alpha.loopvars then env else (M.add x i env) in 
      let e' = g env' e in
      if List.mem x (fv e') then Let((x, t), Li(i), e') else
      ((* Format.eprintf "erased redundant Set to %s@." x; *)
       fst e')
  | Let(xt, SLL(y, C(i)), e) when M.mem y env -> (* for array access *)
      (* Format.eprintf "erased redundant SLL on %s@." x; *)
      fst (g env ((Let(xt, Li((M.find y env) lsl i), e)), Mloc.d_simm))
  | Let(xt, exp, e) -> Let(xt, g' env exp, g env e)
) in (first, snd e)
and g' env = function (* 各命令の12bit即値最適化 (caml2html: simm12_gprime) *)
  | Neg(x) when M.mem x env && M.find x env > -2048 -> Li(-(M.find x env)) (*-2048だとまずい*)
  | Add(x, V(y)) when M.mem y env -> Add(x, C(M.find y env)) (*交換可能なことを利用か*)
  | Add(x, V(y)) when M.mem x env -> Add(y, C(M.find x env))
  | Sub(x, V(y)) when M.mem y env -> Sub(x, C(M.find y env))
  | Mul(x, V(y)) when M.mem y env -> (let y' = M.find y env in (*交換可能*)
        match (is_pow2 y') with
        | None -> Mul(x, C(y')) 
        | Some(k) -> SLL(x, C(k))) (*2べきなのでシフトにできる*)
  | Mul(x, V(y)) when M.mem x env -> (let x' = M.find x env in (*交換可能*)
      match (is_pow2 x') with
      | None -> Mul(y, C(x')) 
      | Some(k) -> SLL(y, C(k))) (*2べきなのでシフトにできる*)
  | Div(x, V(y)) when M.mem y env -> (let y' = M.find y env in (*交換可能*)
        match (is_pow2 y') with
        | None -> Div(x, C(y')) 
        | Some(k) -> SRA(x, C(k))) (*2べきなのでシフトにできる*)
  | SLL(x, V(y)) when M.mem y env -> SLL(x, C(M.find y env))
  | SRA(x, V(y)) when M.mem y env -> SRA(x, C(M.find y env))
  | Ld(x, V(y)) when M.mem y env -> Ld(x, C(M.find y env))
  | St(x, y, V(z)) when M.mem z env -> St(x, y, C(M.find z env))
  | FLd(x, V(y)) when M.mem y env -> FLd(x, C(M.find y env))
  | FSt(x, y, V(z)) when M.mem z env -> FSt(x, y, C(M.find z env))
  (* | IfEq(x, V(y), e1, e2) when M.mem y env -> let i = M.find y env in if i = 0 then IfEq(x, C(i), g env e1, g env e2) else IfEq(x, V(y), g env e1, g env e2)
  | IfLE(x, V(y), e1, e2) when M.mem y env -> let i = M.find y env in if i = 0 then IfLE(x, C(i), g env e1, g env e2) else IfLE(x, V(y), g env e1, g env e2) 
  | IfGE(x, V(y), e1, e2) when M.mem y env -> let i = M.find y env in if i = 0 then IfGE(x, C(i), g env e1, g env e2) else IfGE(x, V(y), g env e1, g env e2) 
  | IfEq(x, V(y), e1, e2) when M.mem x env -> let i = M.find x env in if i = 0 then IfEq(y, C(i), g env e1, g env e2) else IfEq(x, V(y), g env e1, g env e2)
  | IfLE(x, V(y), e1, e2) when M.mem x env -> let i = M.find x env in if i = 0 then IfGE(y, C(i), g env e1, g env e2) else IfLE(x, V(y), g env e1, g env e2) 
  | IfGE(x, V(y), e1, e2) when M.mem x env -> let i = M.find x env in if i = 0 then IfLE(y, C(i), g env e1, g env e2) else IfGE(x, V(y), g env e1, g env e2)  *)
  | IfEq(x, y', e1, e2) -> IfEq(x, y', g env e1, g env e2)
  | IfLE(x, y', e1, e2) -> IfLE(x, y', g env e1, g env e2)
  | IfGE(x, y', e1, e2) -> IfGE(x, y', g env e1, g env e2)
  | IfFEq(x, y, e1, e2) -> IfFEq(x, y, g env e1, g env e2)
  | IfFLE(x, y, e1, e2) -> IfFLE(x, y, g env e1, g env e2)
  | While(e1,e2,t) -> While(g env e1, g env e2, t)
  | e -> e

let h { name = l; args = xs; fargs = ys; body = e; ret = t } = (* トップレベル関数の12bit即値最適化 *)
  { name = l; args = xs; fargs = ys; body = g M.empty e; ret = t }

let f (Prog(data, fundefs, e)) = (* プログラム全体の12bit即値最適化 *)
  Prog(data, List.map h fundefs, g M.empty e)
