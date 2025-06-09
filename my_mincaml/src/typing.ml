(* type inference/reconstruction *)

open Syntax
exception Unify of (Type.t * Mloc.t) * (Type.t * Mloc.t)
exception Error of (Mloc.t * Mloc.t) * Syntax.t * Type.t * Type.t 
exception Cannot_overload of string * string 

let fin_env = Type.fin_env

let is_in_func = ref 0

let e_at (r1,r2) = 
    if (Mloc.is_d r1) then ("line "^(Mloc.to_string r2))
    else if (Mloc.is_d r2) || (Mloc.is_eq r1 r2) then ("line "^(Mloc.to_string r1))
    else if (Mloc.compare r1 r2) > 0 then ("line "^(Mloc.to_string r2)^"-"^(Mloc.to_string r1))
    else ("line "^(Mloc.to_string r1)^"-"^(Mloc.to_string r2))

(*グローバル変数用の環境*)
let gvalenv = ref M.empty
let global_chan = ref None
(*arrayの要素数の環境*)
let arraysize_env = Hashtbl.create 32

let is_global = ref (fun _ -> false)
(* let ht_mloc2label = Hashtbl.create 32
配列定義のmloc -> *)

(*外部関数のための設定*)
let extenv = ref M.empty
let extfun = [
    (*stub用*)
    ("print_int",Type.Fun([Type.Int],Type.Unit));
    ("print_float",Type.Fun([Type.Float],Type.Unit));
    ("print_newline",Type.Fun([Type.Unit],Type.Unit));

    ("float_of_int",Type.Fun([Type.Int],Type.Float));
    ("int_of_float",Type.Fun([Type.Float],Type.Int));
    ("truncate",Type.Fun([Type.Float],Type.Int));

    ("abs_float",Type.Fun([Type.Float],Type.Float));
    ("sqrt",Type.Fun([Type.Float],Type.Float));
    ("sin",Type.Fun([Type.Float],Type.Float));
    ("cos",Type.Fun([Type.Float],Type.Float));

    ("read_int",Type.Fun([Type.Unit],Type.Int));
    ("read_float",Type.Fun([Type.Unit],Type.Float));
    ("print_byte",Type.Fun([Type.Int],Type.Unit));
    ("floor",Type.Fun([Type.Float],Type.Float));
    ("atan",Type.Fun([Type.Float],Type.Float));

    (*miniMLRuntime用*)
    ("fabs",Type.Fun([Type.Float],Type.Float));
    ("print_char",Type.Fun([Type.Int],Type.Unit));
    
    ("fispos",Type.Fun([Type.Float],Type.Bool));
    ("fisneg",Type.Fun([Type.Float],Type.Bool));
    ("fiszero",Type.Fun([Type.Float],Type.Bool));
    ("fequal",Type.Fun([Type.Float;Type.Float],Type.Bool));
    ("fless",Type.Fun([Type.Float;Type.Float],Type.Bool));

    ("create_array",Type.Fun([Type.Int;Type.Int],Type.Int));
    ("init_array",Type.Fun([Type.Int;Type.Int;Type.Int],Type.Int));
    ("create_float_array",Type.Fun([Type.Int;Type.Float],Type.Int));
    ("init_float_array",Type.Fun([Type.Int;Type.Int;Type.Float],Type.Int));
    ]

(* for pretty printing (and type normalization) *)
let rec deref_typ = function (* 型変数を中身でおきかえる関数 (caml2html: typing_deref) *)
  | Type.Fun(t1s, t2) -> Type.Fun(List.map deref_typ t1s, deref_typ t2)
  | Type.Tuple(ts) -> Type.Tuple(List.map deref_typ ts)
  | Type.Array(t) -> Type.Array(deref_typ t)
  | Type.Var({ contents = None } as r) ->
      Format.eprintf "uninstantiated type variable detected; assuming int@.";
      r := Some(Type.Int);
      Type.Int
  | Type.Var({ contents = Some(t) } as r) ->
      let t' = deref_typ t in
      r := Some(t');
      t'
  | t -> t

let rec occur r1 = function (* occur check (caml2html: typing_occur) *)
  | Type.Fun(t2s, t2) -> List.exists (occur r1) t2s || occur r1 t2
  | Type.Tuple(t2s) -> List.exists (occur r1) t2s
  | Type.Array(t2) -> occur r1 t2
  | Type.Var(r2) when r1 == r2 -> true
  | Type.Var({ contents = None }) -> false
  | Type.Var({ contents = Some(t2) }) -> occur r1 t2
  | _ -> false

let sub_unify tl nrow = 
    List.map (fun t -> (t,nrow)) tl

let constructor e' e1 e2 = (*オーバーロード用*)
    match e' with
    | Add _ -> Add(e1,e2)
    | Sub _ -> Sub(e1,e2)
    | _ -> assert(false)

let rec strip_let e = (*arraysizeを求める用, 中途半端に一般化しようとした形跡*)
    match (fst e) with 
    | Let(_,_,e2) -> strip_let e2
    | e -> e

let rec unify t1 t2 = (* 型が合うように、型変数への代入をする (caml2html: typing_unify) *)
  match (fst t1), (fst t2) with
  (* | Type.Bool,Type.Int | Type.Int,Type.Bool -> () いったん *)
  | Type.Unit, Type.Unit | Type.Bool, Type.Bool | Type.Int, Type.Int | Type.Float, Type.Float -> ()
  | Type.Fun(t1s, t1'), Type.Fun(t2s, t2') ->
      (try List.iter2 unify (sub_unify t1s (snd t1)) (sub_unify t2s (snd t2))
      with Invalid_argument(_) -> raise (Unify(t1, t2)));
      unify (t1',snd t1) (t2',snd t2)
  | Type.Tuple(t1s), Type.Tuple(t2s) ->
      (try List.iter2 unify (sub_unify t1s (snd t1)) (sub_unify t2s (snd t2))
      with Invalid_argument(_) -> raise (Unify(t1, t2)))
  | Type.Array(t1'), Type.Array(t2') -> unify (t1',snd t1) (t2',snd t2)
  | Type.Var(r1), Type.Var(r2) when r1 == r2 -> ()
  | Type.Var({ contents = Some(t1') }), _ -> unify (t1',snd t1) t2
  | _, Type.Var({ contents = Some(t2') }) -> unify t1 (t2',snd t2)
  | Type.Var({ contents = None } as r1), _ -> (* 一方が未定義の型変数の場合 (caml2html: typing_undef) *)
      if occur r1 (fst t2) then raise (Unify(t1, t2));
      r1 := Some(fst t2)
  | _, Type.Var({ contents = None } as r2) ->
      if occur r2 (fst t1) then raise (Unify(t1, t2));
      r2 := Some(fst t1)
  | _, _ -> raise (Unify(t1, t2))

let rec g env e = (* 型推論ルーチン (caml2html: typing_g) *) 
  try
    match (fst e) with
    | Unit -> Type.Unit,snd e
    | Bool(_) -> Type.Bool,snd e
    | Int(_) -> Type.Int,snd e
    | Float(_) -> Type.Float,snd e
    | Not(e) ->
        unify (Type.Bool,Mloc.dummy) (g env e);
        Type.Bool,snd e
    | Neg(e) ->
        unify (Type.Int,Mloc.dummy) (g env e);
        Type.Int,snd e
    | Add(e1, e2) | Sub(e1, e2) -> (*オーバーロードする演算子*)
            (let t = Type.gentyp () in
            unify (t,Mloc.dummy) (g env e1);
            unify (t,Mloc.dummy) (g env e2);
            t,snd e)
    | Mul(e1, e2) | Div(e1, e2) -> (* 足し算（と引き算）の型推論 (caml2html: typing_add) *)
        unify (Type.Int,Mloc.dummy) (g env e1);
        unify (Type.Int,Mloc.dummy) (g env e2);
        Type.Int,snd e
    | FNeg(e) ->
        unify (Type.Float,Mloc.dummy) (g env e);
        Type.Float,snd e
    | FAdd(e1, e2) | FSub(e1, e2) | FMul(e1, e2) | FDiv(e1, e2) ->
        unify (Type.Float,Mloc.dummy) (g env e1);
        unify (Type.Float,Mloc.dummy) (g env e2);
        Type.Float,snd e
    | Eq(e1, e2) | LE(e1, e2) ->
        unify (g env e1) (g env e2);
        Type.Bool,snd e
    | If(e1, e2, e3) ->
        unify (g env e1) (Type.Bool,Mloc.dummy);
        let t2 = g env e2 in
        let t3 = g env e3 in
        unify t2 t3;
        t2
    | Let((x, t), e1, e2) -> (* letの型推論 (caml2html: typing_let) *)
        unify (t,snd e) (g env e1); 
        (* (Printf.printf "val %s, is_in_func = %d\n" x !is_in_func); *)
        (if !is_in_func <= 0 then fin_env := M.add x t !fin_env);
        (g (M.add x t env) e2)
    | Var(x) when M.mem x env -> M.find x env,snd e (* 変数の型推論 (caml2html: typing_var) *)
    | Var(x) when M.mem x !extenv -> M.find x !extenv,snd e
    | Var(x) -> (* 外部変数の型推論 (caml2html: typing_extvar) *)
        Format.eprintf "free variable %s assumed as external@." x;
        let t = Type.gentyp () in
        extenv := M.add x t !extenv;
        t,snd e
    | LetRec({ name = (x, t); args = yts; body = e1 }, e2) -> (* let recの型推論 (caml2html: typing_letrec) *)
        let env = M.add x t env in
        fin_env := M.add x t !fin_env;
        incr is_in_func;
        unify (t,snd e) ((Type.Fun(List.map snd yts, fst (g (M.add_list yts env) e1)),snd e));
        decr is_in_func;
        (g env e2)
    | App(e, es) -> (* 関数適用の型推論 (caml2html: typing_app) *)
        let t = Type.gentyp () in
        unify (g env e) ((Type.Fun(List.map (fun t -> fst (g env t)) es, t)),snd e);
        t,snd e
    | Tuple(es) -> Type.Tuple(List.map (fun t -> fst (g env t)) es),snd e
    | LetTuple(xts, e1, e2) ->
        unify ((Type.Tuple(List.map snd xts)),snd e1) (g env e1);
        (g (M.add_list xts env) e2)
    | Array(e1, e2) -> (* must be a primitive for "polymorphic" typing *)
        unify (g env e1) (Type.Int,Mloc.dummy);
        Type.Array(fst (g env e2)),snd e
    | Get(e1, e2) ->
        let t = Type.gentyp () in
        unify ((Type.Array(t)),Mloc.dummy) (g env e1);
        unify (Type.Int,Mloc.dummy) (g env e2);
        t,snd e
    | Put(e1, e2, e3) ->
        let t = g env e3 in
        unify ((Type.Array(fst t)),Mloc.dummy) (g env e1);
        unify (Type.Int,Mloc.dummy) (g env e2);
        Type.Unit,snd e
    (* fin_env := M.union (fun key t1 t2 -> Some t1) !fin_env env; *)
  with Unify((t1,r1), (t2,r2)) -> raise (Error((r1,r2),deref_term env e, deref_typ t1, deref_typ t2)) (*ここのeが外側だとうれしくない*)
and (*rec*) deref_id_typ (x, t) = (x, deref_typ t)
and deref_term env e' = 
    let first = 
    (match (fst e') with 
  | Not(e) -> Not(deref_term env e)
  | Neg(e) -> Neg(deref_term env e)
  | Add(e1, e2) -> Add(deref_term env e1, deref_term env e2)
  | Sub(e1,e2) -> Sub(deref_term env e1, deref_term env e2)
        (* (let t = deref_typ (fst (g env e1)) in 
        match t with
        | Type.Int -> constructor (fst e') (deref_term env e1) (deref_term env e2)
        | Type.Tuple t1 -> (
            if not(List.for_all (fun t -> match t with | Type.Int -> true | _ -> false ) t1) 
            then (raise (Cannot_overload ("+-","tuple of int")))
            else 
            Printf.eprintf "Overload +- in ";
            Syntax.print Format.err_formatter e1;
            Format.pp_print_flush Format.err_formatter ();
            Printf.eprintf " and ";
            Syntax.print Format.err_formatter e2;
            Format.pp_print_flush Format.err_formatter ();
            Printf.eprintf "\n";
            (let xas = List.map (fun _ -> (Id.gentmp Type.Int,Type.Int) ) t1 in 
            let xbs = List.map (fun _ -> (Id.gentmp Type.Int,Type.Int) ) t1 in 
            let newt = List.map2 (fun (a,_) (b,_) -> ( (constructor (fst e') (Var(a),Mloc.dummy) (Var(b),Mloc.dummy)) ,Mloc.dummy) ) xas xbs in
            let newe = LetTuple(xbs,e2,(Tuple(newt),Mloc.dummy)), Mloc.dummy in  
            LetTuple(xas,e1,newe)
            ))
        | _ -> 
            Syntax.print Format.err_formatter e1;
            Syntax.print Format.err_formatter e2;
            Printf.eprintf "line (%d,%d) %s\n" (snd e1) (snd e2) (Type.to_string t);
            Format.pp_print_flush Format.err_formatter ();
            raise (Cannot_overload ("+-","tuple of int"))
        ) *)
  | Mul(e1, e2) -> Mul(deref_term env e1, deref_term env e2)
  | Div(e1, e2) -> Div(deref_term env e1, deref_term env e2)
  | Eq(e1, e2) -> Eq(deref_term env e1, deref_term env e2)
  | LE(e1, e2) -> LE(deref_term env e1, deref_term env e2)
  | FNeg(e) -> FNeg(deref_term env e)
  | FAdd(e1, e2) -> FAdd(deref_term env e1, deref_term env e2)
  | FSub(e1, e2) -> FSub(deref_term env e1, deref_term env e2)
  | FMul(e1, e2) -> FMul(deref_term env e1, deref_term env e2)
  | FDiv(e1, e2) -> FDiv(deref_term env e1, deref_term env e2)
  | If(e1, e2, e3) -> If(deref_term env e1, deref_term env e2, deref_term env e3)
  | Let(xt, e1, e2) ->  (*ここでarraysizeを調べることに, オーバーロードしたいならこの後e2を書きかえるので, 先にxt,e1だけ調べる*)
        let (x',t') = deref_id_typ xt in 
        let e1' = deref_term env e1 in
        (* (match t' with 
            | Type.Array _ -> (*arraysize調査, とりあえずintならnとして追加, それ以外なら追加しない = 不明としておく*)
                (match strip_let e1' with 
                | Array ((Int(size),_),_) ->  Hashtbl.add arraysize_env x' size
                | Var alias when Hashtbl.mem arraysize_env alias -> Hashtbl.add arraysize_env x' (Hashtbl.find arraysize_env alias)
                | _ -> () )
            | _ -> ()
        ); *)
        Let((x',t'), e1', deref_term env e2)

  | LetRec({ name = xt; args = yts; body = e1 }, e2) ->
    let newargs = List.map deref_id_typ yts in 
      LetRec({ name = deref_id_typ xt;
               args = newargs;
               body = deref_term (M.add_list newargs env) e1 }, (*ここのbody評価にはargsを追加すべき*)
             deref_term env e2)
  | App(e, es) -> App(deref_term env e, List.map (deref_term env) es)
  | Tuple(es) -> Tuple(List.map (deref_term env) es)
  | LetTuple(xts, e1, e2) -> LetTuple(List.map deref_id_typ xts, deref_term env e1, deref_term env e2)
  | Array(e1, e2) -> Array(deref_term env e1, deref_term env e2)
  | Get(e1, e2) -> Get(deref_term env e1, deref_term env e2)
  | Put(e1, e2, e3) -> Put(deref_term env e1, deref_term env e2, deref_term env e3)
  | e -> e) in (first,snd e')


(*型環境を出力する関数*)  
let print ppf _ = 
    let map_list = M.bindings !fin_env in 
    let map_list2 = M.bindings !extenv in 
    let map_list3 = M.bindings !gvalenv in 
    List.iter (fun (k,v) -> Format.fprintf ppf "val %s : %s\n" k (Type.to_string v)) map_list;
    Format.pp_print_flush ppf ();
    Format.fprintf ppf "---extenv---\n";
    List.iter (fun (k,v) -> Format.fprintf ppf "val %s : %s\n" k (Type.to_string v)) map_list2;
    Format.pp_print_flush ppf ();
    Format.fprintf ppf "---globalenv---\n";
    List.iter (fun (k,v) -> Format.fprintf ppf "val %s : %s\n" k (Type.to_string v);
        match v with
        | Type.Array _ -> Format.fprintf ppf "arraysize : %d\n" (try Hashtbl.find arraysize_env k with | Not_found -> -1);
        | _ -> ()
    ) map_list3;()

let rec read_line ic acc_string = 
    try 
        let line = input_line ic in 
        read_line ic (acc_string^line^"\n")
    with | End_of_file -> close_in ic;acc_string

let get_type f  =
 match f with 
    | _ when M.mem (Ssa.remove_mincaml f) !extenv -> 
        (try (M.find (Ssa.remove_mincaml f) !extenv)
        with | Not_found -> failwith (Printf.sprintf "function %s doesn't have function type in extenv" f))
    | _ -> 
        (try M.find f !fin_env
        with | Not_found -> failwith (Printf.sprintf "function %s not found in type env" f))

let get_ret_type f = 
    (match (get_type f) with 
        | Type.Fun (_,t) -> t
        | _ -> raise Not_found)
let get_args_type f = 
    if f = "main" then []
    else 
    (match (get_type f) with 
    | Type.Fun (tlist,_) -> tlist
    | _ -> raise Not_found)

let interleave fname args fargs = 
try 
    let tlist = get_args_type fname in 
    let _,_,allargs = List.fold_left (fun (acc_args,acc_fargs,acc_allargs) t -> 
        (match t with 
            | Type.Unit -> (acc_args,acc_fargs,acc_allargs)
            | Type.Float -> 
                (match acc_fargs with 
                    | hd::tl -> (acc_args,tl,acc_allargs@[hd])
                    | _ -> failwith "can't get float arg in interleave")
            | _ -> (match acc_args with 
                    | hd::tl -> (tl,acc_fargs,acc_allargs@[hd])
                    | _ -> failwith "can't get int arg in interleave")))  (args,fargs,[]) tlist in
    allargs
with | e -> Printf.eprintf "fail interleave for %s [%s] [%s]\n" fname (U.list_to_string args) (U.list_to_string fargs);raise e

let e_tmp = ref (Unit,Mloc.dummy)

let rec init_gvalenv _ = 
    (match !global_chan with 
    | None -> ()
    | Some filename -> 
        let inchan = open_in filename in 
        let input_string = read_line inchan "" in 
        let input_string = input_string^"()" in 
        let e = Parser.exp Lexer.token (Lexing.from_string input_string) in 
        (* Syntax.print Format.std_formatter e; *)
        (try unify (Type.Unit,Mloc.dummy) (g M.empty e)
        with Unify _ -> failwith "global's top level does not have type unit");
        gvalenv := M.map deref_typ !fin_env;
        (* fin_env := M.empty; *)
        e_tmp := (deref_term !gvalenv e))
        (* Format.eprintf "---globalenv---\n";
        List.iter (fun (k,v) -> Format.eprintf "val %s : %s\n" k (Type.to_string v)) (M.bindings !gvalenv)) *)
and f e =
  extenv := M.empty;
  init_gvalenv();
  List.iter (fun (fname,t) -> extenv := M.add fname t !extenv) extfun;
(*
  (match deref_typ (g M.empty e) with
  | Type.Unit -> ()
  | _ -> Format.eprintf "warning: final result does not have type unit@.");
*)
  (try unify (Type.Unit,Mloc.dummy) (g !gvalenv e)
  with Unify _ -> failwith "top level does not have type unit");
  fin_env := M.map deref_typ !fin_env;
  extenv := M.map deref_typ !extenv;
  deref_term !fin_env e 
