(* translation into assembly with infinite number of virtual registers *)

open Asm
let addr_step = 1

exception Not_implemented of string
let alias_list = [("min_caml_print_char","min_caml_print_byte");("min_caml_truncate","min_caml_int_of_float");("min_caml_abs_float","min_caml_fabs")]

let aliasenv = M.add_list alias_list M.empty

let init_env = (M.add Asm.memory (Type.Array(Type.Int)) M.empty)

let data = ref [] (* 浮動小数点数の定数テーブル (caml2html: virtual_data) *)
let classify xts ini addf addi =
  List.fold_left
    (fun acc (x, t) ->
      match t with
      | Type.Unit -> acc
      | Type.Float -> addf acc x
      | _ -> addi acc x t)
    ini
    xts

let separate xts =
  classify
    xts
    ([], [])
    (fun (int, float) x -> (int, float @ [x]))
    (fun (int, float) x _ -> (int @ [x], float))

let expand xts ini addf addi =
  classify
    xts
    ini
    (fun (offset, acc) x ->
      let offset = align offset in
      (offset + addr_step, addf x offset acc))
    (fun (offset, acc) x t ->
      (offset + addr_step, addi x t offset acc))

let rec g env e : Asm.t =  (* 式の仮想マシンコード生成 (caml2html: virtual_g) *)
let first = ( 
match (fst e) with
  | Closure.Unit -> Ans(Nop)
  | Closure.Int(i) -> Ans(Li(i))
  | Closure.Float(d) ->
      let l =
        try
          (* すでに定数テーブルにあったら再利用 Cf. https://github.com/esumii/min-caml/issues/13 *)
          let (l, _) = List.find (fun (_, d') -> d = d') !data in
          l
        with Not_found ->
          let l = Id.L(Id.genid "l") in
          data := (l, d) :: !data;
          l in
      Ans(FLi(l)) (*要修正?*)
  | Closure.Neg(x) -> Ans(Neg(x))
  | Closure.Add(x, y) -> Ans(Add(x, V(y)))
  | Closure.Sub(x, y) -> Ans(Sub(x, V(y)))
  | Closure.Mul(x,y) -> Ans(Mul(x, V(y)))
  | Closure.Div(x, y) -> Ans(Div(x, V(y)))
  | Closure.Not(x) -> Ans(Not(x))
  | Closure.FNeg(x) -> Ans(FNeg(x))
  | Closure.FAdd(x, y) -> Ans(FAdd(x, y))
  | Closure.FSub(x, y) -> Ans(FSub(x, y))
  | Closure.FMul(x, y) -> Ans(FMul(x, y))
  | Closure.FDiv(x, y) -> Ans(FDiv(x, y))
  | Closure.IfEq(x, y, e1, e2) ->
      (match M.find x env with
      | Type.Bool | Type.Int -> Ans(IfEq(x, V(y), g env e1, g env e2))
      | Type.Float -> Ans(IfFEq(x, y, g env e1, g env e2))
      | _ -> failwith "equality supported only for bool, int, and float")
  | Closure.IfLE(x, y, e1, e2) ->
      (try (match M.find x env with
      | Type.Bool | Type.Int  | Type.Array _ -> Ans(IfLE(x, V(y), g env e1, g env e2))
      | Type.Float -> Ans(IfFLE(x, y, g env e1, g env e2))
      | _ -> (Printf.eprintf "%s <= %s" x y;failwith "inequality supported only for bool, int, and float"))
      with | Not_found -> Printf.eprintf "%s not found in env\n" x;raise Not_found)
  | Closure.Let((x,Type.Unit),(Cont(args,ys),mloc),e2) -> 
      let argtypes = List.map (fun y -> M.find y env) ys in 
      let e1' = (Ans(Cont(args,ys)),mloc) in
      let e2' = g (M.add_list2 args argtypes env) e2 in
      fst (concat e1' (x, Type.Unit) e2') (*要修正*)
  | Closure.Let((x, t1), e1, e2) ->
      let e1' = g env e1 in
      let e2' = g (M.add x t1 env) e2 in
      fst (concat e1' (x, t1) e2') (*要修正*)
  | Closure.Var(x) ->
      (match M.find x env with
      | Type.Unit -> Ans(Nop)
      | Type.Float -> Ans(FMov(x))
      | _ -> Ans(Mov(x)))
  | Closure.MakeCls((x, t), { Closure.entry = l; Closure.actual_fv = ys }, e2) -> (* クロージャの生成 (caml2html: virtual_makecls) *)
      (* Closureのアドレスをセットしてから、自由変数の値をストア *)
      let e2' = g (M.add x t env) e2 in
      let offset, store_fv =
        expand
          (List.map (fun y -> (y, M.find y env)) ys)
          (addr_step, e2') (*この4は?*)
          (fun y offset store_fv -> seq(FSt(y, x, C(offset)), store_fv,Mloc.asm_seq_args))
          (fun y _ offset store_fv -> seq(St(y, x, C(offset)), store_fv,Mloc.asm_seq_args)) in
        let heap = Id.genid reg_hp in 
      Let((x, t), Mov(heap),
          (Let((heap, Type.Int), Add(heap, C(align offset)),
              let z = Id.genid "l" in
              (Let((z, Type.Int), SetL(l),
                  seq(St(z, x, C(0)),
                      store_fv,Mloc.asm_seq_addr)),Mloc.d_virtual_cls_heap)),Mloc.d_virtual_cls_heap)) (*要修正, とりあえずMlocの場所にダミーを*)
  | Closure.AppCls(x, ys) ->
      let (int, float) = separate (List.map (fun y -> (y, M.find y env)) ys) in
      Ans(CallCls(x, int, float))
  | Closure.AppDir(Id.L(x), ys) ->
      let (int, float) = separate (List.map (fun y -> (y, M.find y env)) ys) in
      (try Ans(CallDir(Id.L(M.find x aliasenv), int, float))
        with | Not_found -> Ans(CallDir(Id.L(x), int, float)))
  | Closure.Tuple(xs) -> (* 組の生成 (caml2html: virtual_tuple) *)
      let y = Id.genid "t" in
      let (offset, store) =
        expand
          (List.map (fun x -> (x, M.find x env)) xs)
          (0, (Ans(Mov(y)),Mloc.d_virtual_tuple_heap)) (*ここをダミーにすればOKぽい, storeがta,t両方のパターンできる?*)
          (fun x offset store -> seq(FSt(x, y, C(offset)), store, snd e))
          (fun x _ offset store -> seq(St(x, y, C(offset)), store, snd e)) in
        let heap = Id.genid reg_hp in 
      Let((y, Type.Tuple(List.map (fun x -> M.find x env) xs)), Mov(heap),
          (Let((heap, Type.Int), Add(heap, C(align offset)),
              store), Mloc.d_virtual_tuple_heap)) (*要修正, とりあえずMlocの場所にダミーを*)
  | Closure.LetTuple(xts, y, e2) -> (*要修正, とりあえずMlocの場所にダミーを, tupleのケースと似ている. *)
      let s = Closure.fv e2 in
      let (_(*offset*), load) =
        expand
          xts
          (0, g (M.add_list xts env) e2)
          (fun x offset load ->
            if not (S.mem x s) then load else (* [XX] a little ad hoc optimization *)
            fletd(x, FLd(y, C(offset)), load, Mloc.d_asm_fletd))
          (fun x t offset load ->
            if not (S.mem x s) then load else (* [XX] a little ad hoc optimization *)
            (Let((x, t), Ld(y, C(offset)), load)), Mloc.d_virtual_remain) in (*ダミー追加*)
      fst load (*ここ大丈夫なのか?*)
  | Closure.Get(x, y) -> (* 配列の読み出し (caml2html: virtual_get) *)
      (match M.find x env with
      | Type.Array(Type.Unit) -> Ans(Nop)
      | Type.Array(_) -> (*word addr*)
          Ans(Ld(x, V(y))) (*これ実際には直接値にできるのでは? , ワードアドレッシングの恩恵として*)
      | _ -> assert false)
  | Closure.Put(x, y, z) ->
      (match M.find x env with
      | Type.Array(Type.Unit) -> Ans(Nop)
      | Type.Array(_) -> (*word addr*)
          Ans(St(z, x, V(y)))
      | _ -> assert false)
  | Closure.ExtSeq(Id.L(x)) -> Ans(SetL(Id.L("min_caml_" ^ x)))
  | Closure.While(e1,e2,t) -> Ans(While(g env e1, g env e2,t))
  | Closure.Ret(args,e1) -> Ans(Ret(args,(g env e1))) (*これ合っているのか?*)
  | Closure.Cont(args,xs) -> Ans(Cont(args,xs))
) in (first,snd e)

(* 関数の仮想マシンコード生成 (caml2html: virtual_h) *)
let h { Closure.name = (Id.L(x), t); Closure.args = yts; Closure.formal_fv = zts; Closure.body = e } =
  let (int, float) = separate yts in (*ここらへんのせいで上手くclosure.prog とasm.progを切り離せない?*)
  let (_(*offset*), load) =
    expand
      zts
      (addr_step, g (M.add x t (M.add_list yts (M.add_list zts init_env))) e)
      (fun z offset load -> fletd(z, FLd(x, C(offset)), load, Mloc.d_asm_fletd))
      (fun z t offset load ->  (Let((z, t), Ld(x, C(offset)), load)),Mloc.d_virtual_remain) in (*PPCととりあえず同じ*) (*これはlet tupleと同じ症状, ダミー追加でta -> tに*)
  match t with
  | Type.Fun(_, t2) ->
      { name = Id.L(x); args = int; fargs = float; body = load; ret = t2 }
  | _ -> assert false

(* プログラム全体の仮想マシンコード生成 (caml2html: virtual_f) *)
let f (Closure.Prog(fundefs, e)) =
  data := [];
  Printf.eprintf "start virtual\n";
  let fundefs = List.map h fundefs in
  let e = g init_env e in
  Printf.eprintf "fin virtual\n";
  Prog(!data, fundefs, e)
