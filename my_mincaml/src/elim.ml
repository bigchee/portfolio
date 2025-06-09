open KNormal
(*let enable = ref true*)

let rec effect (e,_) = (* 副作用の有無 (caml2html: elim_effect) *)
  match e with
  | Let(_, e1, e2) | IfEq(_, _, e1, e2) | IfLE(_, _, e1, e2) | While(e1,e2,_) -> effect e1 || effect e2
  | LetRec(_, e) | LetTuple(_, _, e) | Ret(_,e) -> effect e
  | App _ | Put _ | ExtFunApp _  | Cont _ -> true
  | _ -> false

let rec f_original e =  (* 不要定義削除ルーチン本体 (caml2html: elim_f) *)
let first = 
(match fst e with
  | IfEq(x, y, e1, e2) -> IfEq(x, y, f_original e1, f_original e2)
  | IfLE(x, y, e1, e2) -> IfLE(x, y, f_original e1, f_original e2)
  | Let((x, t), e1, e2) -> (* letの場合 (caml2html: elim_let) *)
      let e1' = f_original e1 in
      let e2' = f_original e2 in
      if effect e1' || S.mem x (fv e2') then Let((x, t), e1', e2') else
      (
        (* Format.eprintf "eliminating variable %s@." x; *)
       fst e2') (*ここらへんで外側の位置を返すのは適切なの?とか後で調整*)
  | LetRec({ name = (x, t); args = yts; body = e1 }, e2) -> (* let recの場合 (caml2html: elim_letrec) *)
      let e2' = f_original e2 in
      if S.mem x (fv e2') then
        LetRec({ name = (x, t); args = yts; body = f_original e1 }, e2')
      else
        (
          (* Format.eprintf "eliminating function %s@." x; *)
         fst e2')
  | LetTuple(xts, y, e) ->
      let xs = List.map fst xts in
      let e' = f_original e in
      let live = fv e' in
      if List.exists (fun x -> S.mem x live) xs then LetTuple(xts, y, e') else
      (
        (* Format.eprintf "eliminating variables %s@." (Id.pp_list xs); *)
       fst e')
  | While(e1,e2,t) -> While(f_original e1,f_original e2,t)
  | Ret(args,e1) -> Ret(args,f_original e1)
  | e -> e
) in (first,snd e)

let f enable = if enable then f_original else fun x -> x