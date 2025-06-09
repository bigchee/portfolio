open Asm



let separate = Virtual.separate
let expand = Virtual.expand 

let data = ref []
let env = ref M.empty
let intenv = ref M.empty

let rec insert_exp e_asm implement =
  match (fst e_asm) with 
  | Ans exp -> implement exp,snd e_asm 
  | Let ((x,t),exp,e2) -> Let ((x,t),exp,insert_exp e2 implement),snd e_asm

let rec g (e : KNormal.t) (k : Asm.t -> Asm.t) (label : string) : Asm.t = 
  match (fst e) with 
  | KNormal.Unit -> k (Ans(Nop),snd e) (*最後だけある*)
  | KNormal.Int(i) -> 
    (* Printf.printf "%s = %d\n" label i; *)
    intenv := M.add label i !intenv;
    k (Ans(Li(i)),snd e)
  | KNormal.Float(d) -> 
    let l =
      try
        (* 定数テーブルはvirtualから引継ぎ *)
        let (l, _) = List.find (fun (_, d') -> d = d') !data in
        l
      with Not_found ->
        let l = Id.L(Id.genid "l") in
        data := (l, d) :: !data;
        l in
    k (Ans(FLi(l)),snd e) 
  | KNormal.Neg(x) -> k (Ans(Neg(x)),snd e)
  | KNormal.Let ((x,t),e1,e2) ->
      env := M.add x t !env;
      fst (insert_exp (g e1 (fun w -> w) x) (fun exp -> Let((x,t),exp ,g e2 k "dummy"))),snd e
      (*本当はkだけでうまくできると思うが...*)
  | KNormal.Var(x) -> 
    (try (
    let first = 
    (match M.find x !env with
    | Type.Unit -> Ans(Nop)
    | Type.Float -> Ans(FMov(x))
    | _ -> Ans(Mov(x))) in k (first,snd e)) with | Not_found -> failwith (Printf.sprintf "var %s not found" x))
  | KNormal.Tuple(xs) -> 
    (try (
    let y = Id.genid "t" in
    let ts = List.map (fun x -> M.find x !env) xs in 
    (if not(M.mem label !Typing.gvalenv) then Typing.gvalenv := (M.add label (Type.Tuple(ts)) !Typing.gvalenv));
    let (offset, store) =
      expand
        (List.map2 (fun x t -> (x,t)) xs ts)
        (0, (Ans(Mov(y)),Mloc.dummy)) 
        (fun x offset store -> seq(FSt(x, y, C(offset)), store, snd e))
        (fun x _ offset store -> seq(St(x, y, C(offset)), store, snd e)) in
    Let((y, Type.Tuple(ts)), SetL(Id.L(("min_caml_"^label))),k store), snd e (*あっている気がしない*)
    ) with | Not_found -> failwith ((Printf.sprintf "var %s not found" (List.fold_left (fun acc x -> acc^", "^x) "" xs))))
  | KNormal.ExtFunApp (f,args) -> 
    (try (
    let (int, float) = separate (List.map (fun y -> (y, M.find y !env)) args) in
    let newf,t = (match f with 
      | "create_array" -> "init_array", Type.Int
      | "create_float_array" -> "init_float_array", Type.Float
      | _ -> assert(false)
    ) in let y = Id.genid "t" in (env := M.add y Type.Int !env);
    (* (Printf.printf "size of %s : %d\n" label (M.find (List.nth int 0) !intenv)); *)
    (Hashtbl.add Typing.arraysize_env label (M.find (List.nth int 0) !intenv));
    (if not(M.mem label !Typing.gvalenv) then 
      (Typing.gvalenv := M.add label t !Typing.gvalenv)); (*中間変数のspace確保, これをやるかどうかは暫定*)
    Let((y,Type.Int), SetL(Id.L(("min_caml_"^label))), k (Ans(CallDir(Id.L("min_caml_"^newf),y::int,float)), snd e)),snd e
    ) with | Not_found -> failwith ((Printf.sprintf "var %s not found" (List.fold_left (fun acc x -> acc^", "^x) "" args))))
  | KNormal.Get(x,y) -> 
    (let offset = Id.genid "o" in
    let first = 
      (match M.find x !env with
      | Type.Array(Type.Unit) -> Ans(Nop)
      | Type.Array(Type.Float) -> 
          Let((offset, Type.Int), SLL(y, C(2)), (*これは4倍*)
            (Ans(FLd(x, V(offset))), Mloc.d_virtual_remain)) 
      | Type.Array(_) -> 
          Let((offset, Type.Int), SLL(y, C(2)), 
            (Ans(Ld(x, V(offset))), Mloc.d_virtual_remain))
      | _ -> assert false)
      in k (first,snd e))
  | _ -> failwith (Printf.sprintf "not implemented : %s" (KNormal.get_tag e))

let rec insert_globals main_e e = 
  match (fst e) with
  | Ans e' -> let y = Id.gentmp Type.Unit in Let((y,Type.Unit),e',main_e),snd e
  | Let ((x,t),exp,e2) -> Let ((x,t),exp,insert_globals main_e e2), snd e

let f (e1:KNormal.t) (Asm.Prog(ftable,fundefs,main_e)) = 
  if Option.is_none (!Typing.global_chan) then Asm.Prog(ftable,fundefs,main_e)
  else 
    ((data := ftable);
    (let main_e' = g e1 (insert_globals main_e) "dummy" in
    Asm.Prog(!data,fundefs,main_e')))