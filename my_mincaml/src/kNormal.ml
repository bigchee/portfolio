(* give names to intermediate values (K-normalization) *)
open Format

let enable_while = ref true 
let call_g = Datagraph.G2.create()

type t = (* K正規化後の式 (caml2html: knormal_t) *)
  ta * Mloc.t
and ta = 
  | Unit
  | Int of int
  | Float of float
  | Not of Id.t
  | Neg of Id.t
  | Add of Id.t * Id.t
  | Sub of Id.t * Id.t
  | Mul of Id.t * Id.t
  | Div of Id.t * Id.t
  | FNeg of Id.t
  | FAdd of Id.t * Id.t
  | FSub of Id.t * Id.t
  | FMul of Id.t * Id.t
  | FDiv of Id.t * Id.t
  | IfEq of Id.t * Id.t * t * t (* 比較 + 分岐 (caml2html: knormal_branch) *)
  | IfLE of Id.t * Id.t * t * t (* 比較 + 分岐 *)
  | Let of (Id.t * Type.t) * t * t (* 変数の型情報が付いている *)
  | Var of Id.t
  | LetRec of fundef * t
  | App of Id.t * Id.t list
  | Tuple of Id.t list
  | LetTuple of (Id.t * Type.t) list * Id.t * t
  | Get of Id.t * Id.t
  | Put of Id.t * Id.t * Id.t
  | ExtSeq of Id.t
  | ExtFunApp of Id.t * Id.t list
  | While of t * t * (Id.t list * Type.t) (* while(cond)みたいな気持ち? , e2はletでつける形になるのだろうか. *)
  | Ret of Id.t list * t
  | Cont of Id.t list * Id.t list

and fundef = { name : Id.t * Type.t; args : (Id.t * Type.t) list; body : t }

(*比較関数 for CSE*)
let rec compare_list l = 
  match l with
  | [] -> 0
  | i::ls -> if i = 0 then compare_list ls else i

let rec cmp (e1 : t) (e2 : t) = 
  match (fst e1), (fst e2) with
  | Unit,Unit -> 0
  | Int(i), Int(j) -> compare i j
  | Float(i), Float(j) -> compare i j
  | Not(x), Not(y) | Neg(x), Neg(y) | FNeg(x), FNeg(y) | Var(x), Var(y) | ExtSeq(x), ExtSeq(y) -> compare x y
  | Add(x1,y1), Add(x2,y2) | Sub(x1,y1), Sub(x2,y2) | FAdd(x1,y1), FAdd(x2,y2) | Mul(x1,y1), Mul(x2,y2) | Div(x1,y1), Div(x2,y2)
  | FSub(x1,y1), FSub(x2,y2)| FMul(x1,y1), FMul(x2,y2) | FDiv(x1,y1), FDiv(x2,y2) | Get(x1,y1), Get(x2,y2) -> compare [x1;y1] [x2;y2]
  | App(f1,args1), App(f2,args2) -> compare (f1::args1) (f2::args2)
  | Tuple(l1), Tuple(l2) -> compare l1 l2
  | Cont(arg1,l1), Cont(arg2,l2) -> compare_list [compare arg1 arg2;compare l1 l2]
  | Put (x1,y1,z1), Put (x2,y2,z2) -> compare [x1;y1;z1] [x2;y2;z2]
  | ExtFunApp(f1,args1), ExtFunApp(f2,args2) -> compare (f1::args1) (f2::args2)
  | IfEq(x1,y1,e11,e12), IfEq(x2,y2,e21,e22) | IfLE(x1,y1,e11,e12), IfLE(x2,y2,e21,e22) -> compare_list [(compare [x1;y1] [x2;y2]);(cmp e11 e21); (cmp e12 e22)]
  | Let ((x1,_),e11,e12), Let ((x2,_),e21,e22) -> compare_list [compare x1 x2;cmp e11 e21; cmp e12 e22]
  | LetRec ({body = e1;_},e12), LetRec ({body = e2;_},e22) -> compare_list [cmp e1 e2; cmp e12 e22]
  | LetTuple(xtl1,y1,e1), LetTuple(xtl2,y2,e2) -> compare_list [compare (List.map fst xtl1) (List.map fst xtl2); compare y1 y2;cmp e1 e2]
  | Ret(args1,e1), Ret(args2,e2) -> compare_list [compare args1 args2;cmp e1 e2]
  | _ -> let tmp = compare (get_tag e1) (get_tag e2) in if tmp = 0 then 1 else tmp (*仮*)

(*begin プリント用*)
and get_tag t : string = 
  match (fst t) with
| IfEq _ -> "IFEQ"
| IfLE _ -> "IFLE"
| Let _ -> "LET"
| LetRec _ -> "LETREC"
| LetTuple _ -> "LETTUPLE"
| App _ -> "APP"
| Unit -> "UNIT"
| Float _ -> "FLOAT"
| Int _ -> "INT"
| Not _ -> "NOT"
| Neg _ -> "NEG"
| Add _  -> "ADD"
| Sub _  -> "SUB"
| Mul _ -> "MUL"
| Div _ -> "DIV"
| FNeg _ -> "FNEG"
| FAdd _ -> "FADD"
| FSub _ -> "FSUB"
| FMul _ -> "FMUL"
| FDiv _ -> "FDIV"
| Var _ -> "VAR"
| Tuple _ -> "TUPLE"
| Get _ -> "GET"
| Put _ -> "PUT"
| ExtSeq _ -> "EXTSEQ"
| ExtFunApp _ -> "EXFAPP"
| While _ -> "WHILE"
| Ret _ -> "RET"
| Cont _ -> "CONT"

(*if,let の構造的なやつをキレイにフォーマットするのが大事.
  あとは普通に即値か変数くらいしか取らないので素朴な出力でもいい*)
let rec print ppf nident is_anormal e : unit = 
  let o n = pp_open_vbox ppf n in
  let sp = pp_print_space ppf in
  let cl = pp_close_box ppf in 

  let ident = pp_print_string ppf in
  let print_tag e = ident ( (*"\x1b[1m\x1b[36m"^*) (get_tag e)^" # "^(Mloc.to_string (snd e)) (*^"\x1b[0m"*)) in
 
  match (fst e) with
| Unit -> ident "UNIT"
| Int i -> ident "INT(";pp_print_int ppf i;ident ")"
| Float f -> ident "FLOAT(";pp_print_float ppf f;ident ")"
| Not x -> ident ("NOT ("^(Id.to_string x)^")")
| Neg x -> ident ("NEG ("^(Id.to_string x)^")")
| Add (x,y) -> ident ("ADD ("^(Id.to_string x)^", "^(Id.to_string y)^")")
| Sub (x,y) -> ident ("SUB ("^(Id.to_string x)^", "^(Id.to_string y)^")")
| Mul (x, y) -> ident ("MUL ("^(Id.to_string x)^", "^(Id.to_string y)^")")
| Div (x, y) -> ident ("DIV ("^(Id.to_string x)^", "^(Id.to_string y)^")")
| FNeg x -> ident ("FNEG ("^(Id.to_string x)^")")
| FAdd (x, y) -> ident ("FADD ("^(Id.to_string x)^", "^(Id.to_string y)^")")
| FSub (x, y) -> ident ("FSUB ("^(Id.to_string x)^", "^(Id.to_string y)^")")
| FMul (x, y) -> ident ("FMUL ("^(Id.to_string x)^", "^(Id.to_string y)^")")
| FDiv (x, y) -> ident ("FDIV ("^(Id.to_string x)^", "^(Id.to_string y)^")")
| IfEq (x, y, e1, e2) ->  
    o nident;
    print_tag e;sp();
    ident ((Id.to_string x)^", "^(Id.to_string y));
    sp();
    print ppf nident is_anormal e1;sp();
    print ppf nident is_anormal e2;
    cl()
| IfLE (x, y, e1, e2) ->
    o nident;
    print_tag e;sp();
    ident ((Id.to_string x)^", "^(Id.to_string y));
    sp();
    print ppf nident is_anormal e1;sp();
    print ppf nident is_anormal e2;
    cl()
| Let ((x,_), e1, e2) -> 
    o nident;
    print_tag e;sp();
    ident (Id.to_string x);sp();
    (* if is_anormal then 
      (
      print ppf nident is_anormal e1;
      cl();sp();
      print ppf nident is_anormal e2;
      Format.fprintf ppf "@."
      )
    else *)
      (print ppf nident is_anormal e1;sp();
      print ppf nident is_anormal e2;cl())
| Var x -> ident ("VAR ("^(Id.to_string x)^")")
| LetRec ({ name; args; body }, e1) -> 
    o nident;
    print_tag e;sp();
    ident (Id.to_string (fst name));
    ident " [";
    ident ((String.concat ", " (List.map (fun p -> Id.to_string (fst p)) args))^"]");
    sp();
    cl();
    print ppf nident is_anormal body;
    Format.fprintf ppf "@.";
    print ppf nident is_anormal e1
| App (f, args) ->
    ident ("APP ("^(Id.to_string f)^", [");
    ident ((String.concat ", " (List.map Id.to_string args))^"] )")
| Tuple args ->
    ident "TUPLE (";
    ident ((String.concat ", " (List.map Id.to_string args))^")")
| LetTuple (args, x, e1) -> 
    o nident;
    print_tag e;sp();
    ident "[";
    ident ((String.concat ", " (List.map (fun p -> Id.to_string (fst p)) args))^"]");sp();
    ident (Id.to_string x);sp();
    print ppf nident is_anormal e1;
    cl()
| Get (x, y) -> ident ("GET ("^(Id.to_string x)^", "^(Id.to_string y)^")")
| Put (x, y, z) -> ident ("PUT ("^(Id.to_string x)^", "^(Id.to_string y)^", "^(Id.to_string z)^")")
| ExtSeq x -> ident ("EXTSEQ ("^(Id.to_string x)^")")
| ExtFunApp (f, args) -> 
    ident ("EXFAPP ("^(Id.to_string f)^", [");
    ident ((String.concat ", " (List.map Id.to_string args))^"] )")
| While(cond,wbody,(args,_)) -> 
    o nident;
    print_tag e;sp();
    ident "[";
    ident ((String.concat ", " args)^"]");sp();
    print ppf nident is_anormal cond;
    sp();
    print ppf nident is_anormal wbody;
    cl()
| Ret(args,e1) ->
  o nident;
  print_tag e;sp();
  ident "(";
  ident ((String.concat ", " args)^")");sp();
  print ppf nident is_anormal e1;
  cl()
| Cont(args,xlist) -> 
  ident "CONT (";
  ident ((String.concat ", " (List.map2 (fun arg x -> Printf.sprintf "%s = %s" arg x) args xlist))^")")

(*end プリント用*)
let fname2rectype = Hashtbl.create 256 (* 0 : not rec, 1 : tail rec, 2 : mid rec *)

let rec inner_get_rec_type fname is_mid e = 
  (match (fst e) with 
    | App(fname',_) when fname' = fname -> if is_mid then 2 else 1
    | IfEq(_,_,e1,e2) | IfLE(_,_,e1,e2) -> 
        let r1 = inner_get_rec_type fname is_mid e1 in 
        if r1 = 2 then r1 else 
          let r2 = inner_get_rec_type fname is_mid e2 in max r1 r2
    | Let(_,e1,e2) | While(e1,e2,_) -> 
        let r1 = inner_get_rec_type fname true e1 in 
        if r1 = 2 then r1 else 
          let r2 = inner_get_rec_type fname is_mid e2 in max r1 r2
    | LetTuple(_,_,e') | Ret(_,e') -> inner_get_rec_type fname is_mid e'
    | _ -> 0)

let get_rec_type fname e =
  try Hashtbl.find fname2rectype fname
  with Not_found -> 
    let rec_type = inner_get_rec_type fname false e in 
    (Hashtbl.add fname2rectype fname rec_type(*;(Printf.printf "%s rectype = %d\n" fname rec_type)*) ;rec_type)

let find_rec_type fname = 
  try Hashtbl.find fname2rectype fname
  with | Not_found -> failwith (Printf.sprintf "rec type info not found for %s" fname)

let is_mid_rec fname = if fname = "main" then false else (find_rec_type fname = 2)
let is_tail_rec fname = if fname = "main" then false else (find_rec_type fname = 1)

let rec fbody2whilebody fname args fbody =
let first = 
  (match (fst fbody) with 
  | App(fname',appargs) when fname' = fname -> Cont(args,appargs)
  | IfEq(x,y,e1,e2) -> IfEq(x,y,fbody2whilebody fname args e1,fbody2whilebody fname args e2)
  | IfLE(x,y,e1,e2) -> IfLE(x,y,fbody2whilebody fname args e1,fbody2whilebody fname args e2)
  | Let(xt,e1,e2) -> Let(xt,e1,fbody2whilebody fname args e2) (*e1に対する変換はなしでOK?*)
  | LetRec(fundef, e2) ->  LetRec(fundef, fbody2whilebody fname args e2)
  | LetTuple(xlist,y,e2) -> LetTuple(xlist,y,fbody2whilebody fname args e2)
  (*この中にwhileがあるとまずい? *)
  | While(cond,wbody,(_,t)) -> 
    let tmp = Id.gentmp t in 
      Let((tmp,t),fbody,(Ret(args,(Var(tmp),snd fbody)),snd fbody))
  (* | Var(x) -> Ret(x) *)
  | App(fname',_) | ExtFunApp(fname',_) ->  (*そのままだとretのcontもしなくてまずい?*)
    let t = Typing.get_ret_type (Ssa.remove_alpha fname') in
    let tmp = Id.gentmp t in 
      Let((tmp,t),fbody,(Ret(args,(Var(tmp),snd fbody)),snd fbody))
  | _ -> Ret(args,fbody) ) in 
  (first, snd fbody)

let rec size e =
  match fst e with 
  | IfEq(_, _, e1, e2) | IfLE(_, _, e1, e2)
  | Let(_, e1, e2) | LetRec({ body = e1;_ }, e2) -> 1 + size e1 + size e2
  | LetTuple(_, _, e) -> 1 + size e
  | While(e1,e2,_) -> size e1 + size e2
  | Ret(_,e1) -> size e1
  | _ -> 1

let is_const e = 
  match (fst e) with
  | Int _ | Float _ | ExtSeq _ -> true
  | _ -> false

let rec fv e =  (* 式に出現する（自由な）変数 (caml2html: knormal_fv) *)
match (fst e) with 
  | Unit | Int(_) | Float(_) | ExtSeq(_) -> S.empty
  | Not(x) | Neg(x) | FNeg(x)  -> S.singleton x
  | Add(x, y) | Sub(x, y) | Mul(x, y) | Div(x, y) | FAdd(x, y) | FSub(x, y) | FMul(x, y) | FDiv(x, y) | Get(x, y) -> S.of_list [x; y]
  | IfEq(x, y, e1, e2) | IfLE(x, y, e1, e2) -> S.add x (S.add y (S.union (fv e1) (fv e2)))
  | Let((x, _(*t*)), e1, e2) -> S.union (fv e1) (S.remove x (fv e2))
  | Var(x) -> S.singleton x
  | LetRec({ name = (x, _(*t*)); args = yts; body = e1 }, e2) ->
      let zs = S.diff (fv e1) (S.of_list (List.map fst yts)) in
      S.diff (S.union zs (fv e2)) (S.singleton x)
  | App(x, ys) -> S.of_list (x :: ys)
  | Tuple(xs) | ExtFunApp(_, xs) | Cont(_,xs) -> S.of_list xs
  | Put(x, y, z) -> S.of_list [x; y; z]
  | LetTuple(xs, y, e) -> S.add y (S.diff (fv e) (S.of_list (List.map fst xs)))
  | While(e1,e2,_) -> (S.union (fv e1) (fv e2))
  | Ret(_,e1) -> fv e1

let split_threshold = 100

let rec split_loop_invariant (calc_invariant: t -> t) wbody = 
  let mloc = snd wbody in 
  match (fst wbody) with 
  | _ when size wbody > split_threshold -> calc_invariant,wbody
  | Let((x,t),e1,e2) when x.[0] = 'T' && is_const e1 -> 
    split_loop_invariant (fun w -> calc_invariant (Let((x,t),e1,w),mloc)) e2
  | Let((x,t),e1,e2) -> 
    let ci1,e1' = split_loop_invariant calc_invariant e1 in 
    let ci2,e2' = split_loop_invariant ci1 e2 in 
      ci2,(Let((x,t),e1',e2'),mloc)
  | IfEq(x,y,e1,e2) -> 
    let ci1,e1' = split_loop_invariant calc_invariant e1 in 
    let ci2,e2' = split_loop_invariant ci1 e2 in 
      ci2,(IfEq(x,y,e1',e2'),mloc)
  | IfLE(x,y,e1,e2) -> 
    let ci1,e1' = split_loop_invariant calc_invariant e1 in 
    let ci2,e2' = split_loop_invariant ci1 e2 in 
      ci2,(IfLE(x,y,e1',e2'),mloc)
  | LetRec(fundef,e2) -> 
    let ci,e2' = split_loop_invariant calc_invariant e2 in 
      ci,(LetRec(fundef,e2'),mloc)
  | LetTuple(xlist,y,e2) -> 
    let ci,e2' = split_loop_invariant calc_invariant e2 in 
      ci,(LetTuple(xlist,y,e2'),mloc)
  | Ret(args,e) -> 
    let ci,e' = split_loop_invariant calc_invariant e in 
      ci,(Ret(args,e'),mloc)
  | _ -> calc_invariant,wbody (*内側のwhileへの対応は要検討*)


let make_args_converter args newargs x = (*args と newargs の長さは同じであるべき*)
  let maybe_idx = List.find_index (fun x' -> x' = x) args in 
  match maybe_idx with 
    | None -> x
    | Some(idx) -> List.nth newargs idx

let rec id_map map_f e = 
  let first = 
  (match (fst e) with
    | Unit | Int _ | Float _ | LetRec _ | ExtSeq _ -> fst e
    | Not(x) -> Not(map_f x)
    | Neg(x) -> Neg(map_f x)
    | Add(x,y) -> Add(map_f x,map_f y)
    | Sub(x,y) -> Sub(map_f x,map_f y)
    | Mul(x,y) -> Mul(map_f x,map_f y)
    | Div(x,y) -> Div(map_f x,map_f y)
    | FNeg(x) -> FNeg(map_f x)
    | FAdd(x,y) -> FAdd(map_f x,map_f y)
    | FSub(x,y) -> FSub(map_f x,map_f y)
    | FMul(x,y) -> FMul(map_f x,map_f y)
    | FDiv(x,y) -> FDiv(map_f x,map_f y)
    | IfEq(x,y,e1,e2) -> IfEq(map_f x,map_f y,id_map map_f e1,id_map map_f e2)
    | IfLE(x,y,e1,e2) -> IfLE(map_f x,map_f y,id_map map_f e1,id_map map_f e2)
    | Let(xt,e1,e2) -> Let(xt,id_map map_f e1,id_map map_f e2)
    | Var(x) -> Var(map_f x)
    | App(fname,args) -> App(fname,List.map map_f args)
    | Tuple(xs) -> Tuple(List.map map_f xs)
    | LetTuple(xts,y,e1) -> LetTuple(xts,map_f y,id_map map_f e1)
    | Get(x,y) -> Get(map_f x,map_f y)
    | Put(x,y,z) -> Put(map_f x,map_f y, map_f z)
    | ExtFunApp(fname,args) -> ExtFunApp(fname,List.map map_f args)
    | While(e1,e2,(args,t)) -> While(id_map map_f e1,id_map map_f e2,(List.map map_f args,t)) (*これでいいのか?*)
    | Ret(args,e1) -> Ret(List.map map_f args,id_map map_f e1)
    | Cont(args,contargs) -> Cont(List.map map_f args,List.map map_f contargs)
  ) in (first,snd e)

let rec map2 map_e map_leaf e = 
  match (fst e) with 
  | IfEq(x,y,e1,e2) -> IfEq(x,y,map_e e1,map_e e2),snd e
  | IfLE(x,y,e1,e2) -> IfLE(x,y,map_e e1,map_e e2),snd e 
  | Let(xt,e1,e2) -> Let(xt,map_e e1,map_e e2),snd e
  | LetRec(fundef,e2) -> LetRec(fundef,map_e e2),snd e
  | LetTuple(xts,y,e2) -> LetTuple(xts,y,map_e e2),snd e
  | While(e1,e2,argt) -> While(map_e e1,map_e e2,argt), snd e
  | Ret(args,e1) -> Ret(args,map_e e1),snd e 
  | _ -> id_map map_leaf e

(* let has_deduction e = 
  match (fst e) with 
  | IfEq _ | IfLE _ | Let _ | LetRec _ | LetTuple _ | While _ | Ret _  -> true
  | _ -> false *)
    
let dropped_args = ref S.empty
let contargs_list = ref []
let offset_contarg_vars = ref S.empty
exception Cannot_convert
let rec search_convert_loop_vars env args e : S.t * ((Id.t * Id.t) list) = 
  match (fst e) with 
  (*帰納パターン*)
    | IfEq(x,y,e1,e2) -> 
      (
      let preserve1,array_access1 = search_convert_loop_vars env args e1 in 
      let preserve2,array_access2 = search_convert_loop_vars env args e2 in 
      (S.union preserve1 preserve2,U.list_union array_access1 array_access2))
    | IfLE(x,y,e1,e2) -> 
      let preserve1,array_access1 = search_convert_loop_vars env args e1 in 
      let preserve2,array_access2 = search_convert_loop_vars env args e2 in 
      (S.union preserve1 preserve2,U.list_union array_access1 array_access2)
    | Let(xt,e1,e2) -> 
      let preserve1,array_access1 = search_convert_loop_vars env args e1 in 
      let preserve2,array_access2 = search_convert_loop_vars env args e2 in 
      (S.union preserve1 preserve2,U.list_union array_access1 array_access2)
    | LetTuple(xts,y,e1) -> 
      let preserve1,array_access1 = search_convert_loop_vars env args e1 in 
      (preserve1,array_access1)
    | While(e1,e2,(args,t)) -> 
      let preserve1,array_access1 = search_convert_loop_vars env args e1 in 
      let preserve2,array_access2 = search_convert_loop_vars env args e2 in 
      (S.union preserve1 preserve2,U.list_union array_access1 array_access2)
    | Ret(args,e1) -> 
      let preserve1,array_access1 = search_convert_loop_vars env args e1 in 
      (preserve1,array_access1)
    | LetRec _ -> assert(false) (*本当に?*)
  (*変換のための情報取得*)
    | App(_,fargs) -> (*fargs にargsが登場していると変換できないかも*)
        (S.of_list (List.filter (fun x -> List.mem x args) fargs),[])
    | Get(aname,offset) when List.mem aname args && List.mem offset args ->
      (S.empty,[(aname,offset)]) 
    | Get(aname,offset) when M.mem aname env && List.mem offset args ->
      let seed_aname = (try M.find aname env with | Not_found -> failwith (Printf.sprintf "aname %s not found" aname)) in 
        (S.empty,[(seed_aname,offset)])
    | Cont(args',contargs) when args = args' -> (contargs_list := contargs::!contargs_list;(S.empty,[]))
  (*あとはleafな気がする*)
    | _ -> (S.empty,[])
        
let zerovars = ref S.empty
let rec get_garray_env env e = 
  match (fst e) with 
    | Let((x,_),(ExtSeq(ganame),_),e2) -> 
      get_garray_env (M.add x ganame env) e2
    | Let((x,_),(Int(0),_),e2) -> (zerovars := S.add x !zerovars;get_garray_env env e2)
    | Let(_,_,e2) -> get_garray_env env e2
    | _ -> env

let get_new_args array_env args preserve array_access e = 
  let newargs,add_arg_env,offset2newaargdef_env,access_args = 
  List.fold_left (fun (acc_newargs,acc_env,acc_offset2newargdef,acc_access_args) (aname,offset) -> 
    let new_access_args = S.add aname (S.add offset acc_access_args) in 
    if (S.mem aname preserve && S.mem offset preserve) then (acc_newargs,acc_env,acc_offset2newargdef,new_access_args) (*引数の変換はできない*)
    else (let newarg = "_"^aname^"_"^offset in 
          let var_aname = (try U.get_key aname array_env with | Not_found -> aname) in 
          let newenv = M.add newarg (Add(var_aname,offset),Mloc.dummy) acc_env in 
          let newenv2 = M.add offset (aname,newarg) acc_offset2newargdef in 
          (S.add newarg acc_newargs,newenv,newenv2,new_access_args))
    ) (preserve,M.empty,M.empty,S.empty) array_access in 
  (* let fv_e = fv e in  *)
  (* Printf.printf "args = {%s}, used_args = {%s}\n" (U.list_to_string args) (S.to_string (S.inter (S.of_list args) fv_e)); *)
  let rest_args = S.diff ( (S.of_list args)) access_args in (*(S.inter (S.of_list args) fv_e)*)
  (S.union rest_args newargs,offset2newaargdef_env,add_arg_env)


let ht_loopvar_convert = Hashtbl.create 256

let rec convert_loop_args fname array_env offset2newargdef oldargs newargs e = 
  let do_rec map_e map_leaf e =
    match (fst e) with 
    | IfLE _ | Get _ | Ret _  | Cont _ | Let _ -> map_e e
    | _ -> map2 map_e map_leaf e 
  in 
  let rec f (dest:string) e = 
    (match (fst e) with 
    | IfLE(x,y,e1,e2) when S.mem x !zerovars && M.mem y offset2newargdef -> 
      let (aname,newarg) = M.find y offset2newargdef in 
      let var_aname = (try U.get_key aname array_env with | Not_found -> aname ) in 
        IfLE(var_aname,newarg,f dest e1, f dest e2),snd e  
    | Get(aname,offset) ->
        (try let (aname',newarg) = M.find offset offset2newargdef in 
          let seed_aname = (try M.find aname array_env with | Not_found -> aname) in 
          if seed_aname = aname' then (Get(Asm.memory,newarg),Mloc.dummy) else raise Not_found
        with | Not_found -> e)
    | Ret(args,e1) when args = oldargs -> Ret(newargs,f dest e1),snd e
    | Cont(args,contargs) when args = oldargs -> 
      (let converter = (try Hashtbl.find ht_loopvar_convert (fname,args)
        with | Not_found -> 
          let new_converter is_convert contargs  = 
            (let new_contargs_env = List.fold_left2 (fun acc_env x y -> 
              if List.mem x newargs then M.add x y acc_env
              else 
                (try let (_,newarg) = M.find x offset2newargdef in (*offsetの方*)
                    M.add newarg (if is_convert then y else newarg) acc_env
                  with | Not_found -> (*配列の方*) 
                    ((if x <> y then Printf.printf "array arg not invariant %s <> %s\n" x y);acc_env))
              ) M.empty args contargs  in 
              let new_contargs = List.fold_right (fun x acc_list -> 
                let newdef = (try M.find x new_contargs_env with | Not_found -> (Printf.eprintf "newdef of %s not found in %s\n" x fname;raise Not_found)) in 
                newdef::acc_list
                ) newargs [] in (newargs,new_contargs)) in 
          (Hashtbl.add ht_loopvar_convert (fname,args) new_converter;new_converter)) in 
      let newargs,new_contargs = converter true contargs in 
      Cont(newargs,new_contargs),snd e )
    | Let((x,t),(Int(0),mloc),e2) -> (zerovars := S.add x !zerovars;(Let((x,t),(Int(0),mloc),f dest e2),snd e)) 
    | Let ((x,t),e1,e2) -> 
        let e1' = do_rec (f x) (fun y -> if S.mem x !offset_contarg_vars then (try let (_,newarg) = M.find y offset2newargdef in newarg with | Not_found -> y) else y) e1 in 
        let e2' = f dest e2 in 
        Let((x,t),e1',e2'),snd e
    | _ -> map2 (f dest) (fun y -> if S.mem dest !offset_contarg_vars then (try let (_,newarg) = M.find y offset2newargdef in newarg with | Not_found -> y) else y) e
  )
  in f "RET" e

let add_newarg_let env e = 
  M.fold (fun newarg edef acc_e -> 
    Let((newarg,Type.Int),edef,acc_e),snd edef 
    ) env e

let tailrecfunc2while fname args fbody =
  zerovars := S.empty;
  contargs_list := [];
  offset_contarg_vars := S.empty;
  let t = Typing.get_ret_type (Ssa.remove_alpha fname) in  
  let wbody = fbody2whilebody fname args fbody in 
  let ci, wbody' = split_loop_invariant (fun x -> x) wbody in 
  (* let garray_env = get_garray_env M.empty (ci (Unit,Mloc.dummy)) in 
  let preseve,array_access = search_convert_loop_vars garray_env args wbody' in 
  let (newargs,offset2newaargdef_env,add_arg_env) = get_new_args garray_env args preseve array_access wbody in 
  (if (List.length array_access > 0) && (not (List.mem (Ssa.remove_alpha fname) ["iter_trace_diffuse_rays";"check_all_inside"])) && not(U.strncmp (Ssa.remove_alpha fname) "trace_" 6) && not(U.strncmp (Ssa.remove_alpha fname) "create_" 7) && not(U.strncmp (Ssa.remove_alpha fname) "scan_" 5) && not(U.strncmp (Ssa.remove_alpha fname) "pretrace_" 9) && not(U.strncmp (Ssa.remove_alpha fname) "iter_" 5)  && not(U.strncmp (Ssa.remove_alpha fname) "calc_" 5)  && not(U.strncmp (Ssa.remove_alpha fname) "solve_" 6) && not(U.strncmp (Ssa.remove_alpha fname) "shadow_" 7) && not(U.strncmp (Ssa.remove_alpha fname) "init_" 5) && not(U.strncmp (Ssa.remove_alpha fname) "setup_" 6) && not(U.strncmp_tail (Ssa.remove_alpha fname) "_fast" 5) then  (
    Printf.printf "%s preserve = {%s},array_access = {%s}\n" fname (S.to_string preseve) (U.id2list_to_string array_access);
    Printf.printf "newargs = {%s}\n def = "  (S.to_string newargs);
    M.iter (fun x e -> 
      Printf.printf "%s -> " x;flush stdout;
      print Format.std_formatter 2 false e;Format.pp_print_flush Format.std_formatter ();
      Printf.printf "\n"
      ) add_arg_env;
    M.iter (fun offset (aname,newargs) -> Printf.printf "%s, %s, %s\n" offset aname newargs) offset2newaargdef_env;
    let list_newargs = 
      (* args  *)
      (if S.equal (S.of_list args) newargs then args else (S.to_list newargs)) 
    in 
    (* let offset2newaargdef_env,add_arg_env = M.empty, M.empty in  *)
    dropped_args := S.diff (S.of_list args) newargs;
    let contargs_list_t = U.list_transpose !contargs_list in 
    let add_calc_old_args = 
    S.fold (fun arg acc_get_e -> 
      let idx = Option.get (List.find_index (fun x -> x = arg) args) in 
      let contargs_idx = List.nth contargs_list_t idx in 
      offset_contarg_vars := S.union (S.of_list contargs_idx) !offset_contarg_vars;
      (try let (aname,newarg) = M.find arg offset2newaargdef_env in 
      let var_aname = (try U.get_key aname garray_env with | Not_found -> aname ) in 
        (fun e2 -> Let((arg,Type.Int),(Sub(newarg,var_aname),Mloc.dummy),(acc_get_e e2)),Mloc.dummy)
      with | Not_found -> acc_get_e)
      ) !dropped_args (fun x -> x) in 
    let new_e = 
      convert_loop_args fname garray_env offset2newaargdef_env args list_newargs
     wbody' in 
    let new_e = (While((Int(1),Mloc.dummy),(add_calc_old_args new_e),(list_newargs,t)),snd fbody) in 
    let new_e = add_newarg_let add_arg_env new_e in 
    let new_e = ci new_e in 
    (* print Format.std_formatter 2 false new_e;Format.pp_print_flush Format.std_formatter ();
    Printf.printf "\n";flush stdout; *)
    new_e
  ) else  *)
    ci (While((Int(1),Mloc.dummy),wbody',(args,t)),snd fbody)
  
    
let insert_let (e, t) k = (* letを挿入する補助関数 (caml2html: knormal_insert) *)
(*kは新たにおく変数が入るべき場所がパラメータ化された式, 変数名を取ってlet挿入したしかるべき式を返す*)
(*kに渡す変数が直前でlet束縛される変数, ただし変数を新しい変数に束縛するだけのletは足さない*)
  match (fst e) with
  | Var(x) -> k x
  | _ ->
      let x = Id.gentmp t in
      let e', t' = k x in
      (Let((x, t), e, e'),snd e), t'

let rec g env e0 =  (* K正規化ルーチン本体 (caml2html: knormal_g) *)
match (fst e0) with
  | Syntax.Unit -> (Unit,snd e0), Type.Unit
  | Syntax.Bool(b) -> (Int(if b then 1 else 0),snd e0), Type.Int (* 論理値true, falseを整数1, 0に変換 (caml2html: knormal_bool) *)
  | Syntax.Int(i) -> (Int(i),snd e0), Type.Int
  | Syntax.Float(d) -> (Float(d),snd e0), Type.Float
  | Syntax.Not(e) -> 
    insert_let (g env e)
        (fun x -> (Not(x),snd e0), Type.Int)
      (* let (x1,t1) = (Id.gentmp Type.Bool,Type.Bool) in 
      let (x2,t2) = (Id.gentmp Type.Int,Type.Int) in 
      let env' = M.add x1 t1 env in 
      let e2 = Let((x2,t2),(Int(1),Mloc.dummy),(Sub(x2,x1),snd e)),snd e in 
      let e1 = fst (g env' e) in 
       (Let((x1,t1), e1, e2),snd e0), Type.Int *)
       (* これでknormalの性質を崩していないのか怪しい, のちの処理的には1を早めにロードしておくほうがうれしい? *)
    (* g env ((Syntax.If(e, (Syntax.Bool(false),Mloc.d_knormal), (Syntax.Bool(true),Mloc.d_knormal))),snd e0) *)
  | Syntax.Neg(e) ->
      insert_let (g env e)
        (fun x -> (Neg(x),snd e0), Type.Int)
  | Syntax.Add(e1, e2) -> (* 足し算のK正規化 (caml2html: knormal_add) *)
      insert_let (g env e1)
        (fun x -> insert_let (g env e2)
            (fun y -> (Add(x, y),snd e0), Type.Int))
  | Syntax.Sub(e1, e2) ->
      insert_let (g env e1)
        (fun x -> insert_let (g env e2)
            (fun y -> (Sub(x, y),snd e0), Type.Int))
  | Syntax.Mul(e1, e2) ->
    insert_let (g env e1)
      (fun x -> insert_let (g env e2)
          (fun y -> (Mul(x, y),snd e0), Type.Int))
  | Syntax.Div(e1, e2) ->
    insert_let (g env e1)
      (fun x -> insert_let (g env e2)
          (fun y -> (Div(x, y),snd e0), Type.Int))
  | Syntax.FNeg(e) ->
      insert_let (g env e)
        (fun x -> (FNeg(x),snd e0), Type.Float)
  | Syntax.FAdd(e1, e2) ->
      insert_let (g env e1)
        (fun x -> insert_let (g env e2)
            (fun y -> (FAdd(x, y),snd e0), Type.Float))
  | Syntax.FSub(e1, e2) ->
      insert_let (g env e1)
        (fun x -> insert_let (g env e2)
            (fun y -> (FSub(x, y),snd e0), Type.Float))
  | Syntax.FMul(e1, e2) ->
      insert_let (g env e1)
        (fun x -> insert_let (g env e2)
            (fun y -> (FMul(x, y),snd e0), Type.Float))
  | Syntax.FDiv(e1, e2) ->
      insert_let (g env e1)
        (fun x -> insert_let (g env e2)
            (fun y -> (FDiv(x, y),snd e0), Type.Float))
  | Syntax.Eq _ | Syntax.LE _ (*as cmp*) ->
    (g env ((Syntax.If(e0, (Syntax.Bool(true),Mloc.d_knormal), (Syntax.Bool(false),Mloc.d_knormal))),snd e0))
  | Syntax.If((Syntax.Not(e1),_), e2, e3) -> (g env ((Syntax.If(e1, e3, e2)),snd e0)) (* notによる分岐を変換 (caml2html: knormal_not) *)
  | Syntax.If((Syntax.Eq(e1, e2),_), e3, e4) ->
      insert_let (g env e1)
        (fun x -> insert_let (g env e2)
            (fun y ->
              let e3', t3 = g env e3 in
              let e4', _ (*t4*) = g env e4 in
              (IfEq(x, y, e3', e4'),snd e0), t3))
  | Syntax.If((Syntax.LE(e1, e2),_), e3, e4) ->
      insert_let (g env e1)
        (fun x -> insert_let (g env e2)
            (fun y ->
              let e3', t3 = g env e3 in
              let e4', _(*t4*) = g env e4 in
              (IfLE(x, y, e3', e4'),snd e0), t3))
  | Syntax.If(e1, e2, e3) -> (g env ((Syntax.If((Syntax.Eq(e1, (Syntax.Bool(false),Mloc.d_knormal)),Mloc.d_knormal), e3, e2)),snd e0)) (* 比較のない分岐を変換 (caml2html: knormal_if) *)
  | Syntax.Let((x, t), e1, e2) ->
      let e1', _(*t1*) = g env e1 in
      let e2', t2 = g (M.add x t env) e2 in
      (Let((x, t), e1', e2'),snd e0), t2
  | Syntax.Var(x) when M.mem x env -> (Var(x),snd e0), M.find x env
  | Syntax.Var(x) when M.mem x !Typing.gvalenv -> (*とりあえず追加*)
    (match M.find x !Typing.gvalenv with
      | Type.Array(_) as t -> (ExtSeq x,Mloc.d_external), t
      | Type.Tuple(_) as t -> (ExtSeq x,Mloc.d_external), t
      | _ -> failwith (Printf.sprintf "global variable %s does not have an array type nor a tuple type" x))
  | Syntax.Var(x) -> (* 外部配列の参照 (caml2html: knormal_extarray) *)
      (match M.find x !Typing.extenv with
      | Type.Array(_) as t -> (ExtSeq x,Mloc.d_external), t
      (* | Type.Tuple(_) as t -> (ExtSeq x,Mloc.d_external), t *)
      | _ -> failwith (Printf.sprintf "external variable %s does not have an array type" x))
  | Syntax.LetRec({ Syntax.name = (x, t); Syntax.args = yts; Syntax.body = e1 }, e2) ->
      (let env' = M.add x t env in
      let e2', t2 = g env' e2 in
      let yts' = yts in 
      let t' = t in 
        (* List.filter (fun (y,_) -> S.mem y fv) yts in 
      let t' = (match t with 
        | Type.Fun(tlist,tret) when tlist = (List.map snd yts)-> Type.Fun(List.map snd yts',tret)
        | _ -> assert(false)) in 
       *)
      let e1', _ (*t1*) =  g (M.add_list yts' env') e1 in (*ここの評価の順番...?*)
      let fv = fv e1' in 
      let fv_true = S.remove x (S.filter (fun x -> not(M.mem x !Typing.extenv)) (S.diff fv (S.of_list (List.map fst yts)))) in (*自身の関数名は除いてしまっても平気なのか?*)
      (* Printf.printf "fv %s = {%s}\n" x (S.to_string fv_true); *)
      (S.iter (fun f -> Datagraph.G2.add_edge call_g x f) fv_true);
      let is_tailrec = (get_rec_type x e1') = 1 in 
      let e1' = 
        if !enable_while && is_tailrec then tailrecfunc2while x (List.map fst yts') e1' else 
        e1' in 
      (LetRec({ name = (x, t'); args = yts'; body = e1' }, e2'),snd e0), t2)
  | Syntax.App((Syntax.Var(f),_), e2s) when not (M.mem f env) -> (* 外部関数の呼び出し (caml2html: knormal_extfunapp) *)
      (match M.find f !Typing.extenv with
      | Type.Fun(_, t) ->
          let rec bind xs = function (* "xs" are identifiers for the arguments *)
            | [] -> (ExtFunApp(f, xs),Mloc.d_external), t
            | e2 :: e2s ->
                insert_let (g env e2)
                  (fun x -> bind (xs @ [x]) e2s) in
          bind [] e2s (* left-to-right evaluation *)
      | _ -> assert false)
  | Syntax.App(e1, e2s) ->
      (match g env e1 with
      | _, Type.Fun(_, t) as g_e1 ->
          insert_let g_e1
            (fun f ->
              let rec bind xs = function (* "xs" are identifiers for the arguments *)
                | [] -> (App(f, xs),snd e0), t
                | e2 :: e2s ->
                    insert_let (g env e2)
                      (fun x -> bind (xs @ [x]) e2s) in
              bind [] e2s) (* left-to-right evaluation *)
      | _ -> assert false)
  | Syntax.Tuple(es) ->
      let rec bind xs ts = function (* "xs" and "ts" are identifiers and types for the elements *)
        | [] -> (Tuple(xs),snd e0), Type.Tuple(ts)
        | e :: es ->
            let _, t as g_e = g env e in
            insert_let g_e
              (fun x -> bind (xs @ [x]) (ts @ [t]) es) in
      bind [] [] es
  | Syntax.LetTuple(xts, e1, e2) ->
      insert_let (g env e1)
        (fun y ->
          let e2', t2 = g (M.add_list xts env) e2 in
          (LetTuple(xts, y, e2'),snd e0), t2)
  | Syntax.Array(e1, e2) ->
      insert_let (g env e1)
        (fun x ->
          let _, t2 as g_e2 = g env e2 in
          insert_let g_e2
            (fun y ->
              let l =
                match t2 with
                (* | Type.Float when !Typing.is_global (snd e0) -> "init_float_array"
                | _ when !Typing.is_global (snd e0) -> "init_array" *)
                | Type.Float -> "create_float_array"
                | _ -> "create_array" in
              (ExtFunApp(l, [x; y]),Mloc.d_knormal_make_array), Type.Array(t2))) (*ここのMlocの設定わからないので要修正*)
  | Syntax.Get(e1, e2) ->
      (match g env e1 with
      |        _, Type.Array(t) as g_e1 ->
          insert_let g_e1
            (fun x -> insert_let (g env e2)
                (fun y -> (Get(x, y),snd e0), t))
      | _ -> assert false)
  | Syntax.Put(e1, e2, e3) ->
      insert_let (g env e1)
        (fun x -> insert_let (g env e2)
            (fun y -> insert_let (g env e3)
                (fun z -> (Put(x, y, z),snd e0), Type.Unit)))

let f e = 
  let e' = fst (g M.empty e) in 
  (* let scc_list = Datagraph.CompoG2.scc_list call_g in 
  ignore(List.fold_left (fun idx scc -> 
    Printf.printf "scc %d : {%s}\n" idx (U.list_to_string scc);(idx+1)) 0 scc_list); 
  (let oc_func = open_out_bin "callgraph.dot" in
  Datagraph.Dot2.output_graph oc_func call_g;Out_channel.close oc_func); *)
  e'
