open Format

exception Error

type t = (* MinCamlの構文を表現するデータ型 (caml2html: syntax_t) *)
  ta * Mloc.t
and ta = 
  | Unit
  | Bool of bool
  | Int of int
  | Float of float
  | Not of t
  | Neg of t
  | Add of t * t
  | Sub of t * t
  | Mul of t * t
  | Div of t * t
  | FNeg of t
  | FAdd of t * t
  | FSub of t * t
  | FMul of t * t
  | FDiv of t * t
  | Eq of t * t
  | LE of t * t
  | If of t * t * t
  | Let of (Id.t * Type.t) * t * t
  | Var of Id.t
  | LetRec of fundef * t
  | App of t * t list
  | Tuple of t list
  | LetTuple of (Id.t * Type.t) list * t * t
  | Array of t * t
  | Get of t * t
  | Put of t * t * t
and fundef = { name : Id.t * Type.t; args : (Id.t * Type.t) list; body : t }

let get_tag t : string = 
  match t with
| Not _  -> "NOT"
| Neg _  -> "NEG"
| Add _  -> "ADD"
| Sub _  -> "SUB"
| Mul _ -> "MUL"
| Div _ -> "DIV"
| FNeg _ -> "FNEG"
| FAdd _ -> "FADD"
| FSub _ -> "FSUB"
| FMul _ -> "FMUL"
| FDiv _ -> "FDIV"
| Eq _ -> "EQ"
| LE _ -> "LE"
| If _ -> "IF"
| Let _ -> "LET"
| LetRec _ -> "LETREC"
| App _ -> "APP"
| Tuple _ -> "TUPLE"
| LetTuple _ -> "LETTUPLE"
| Array _ -> "ARRAY"
| Get _ -> "GET"
| Put _ -> "PUT"
| _ -> "DUMMY" 


let sident = 0
let dident = 2
let nident = 2


(*if,let の構造的なやつをキレイにフォーマットするのが大事.
  あとは普通に即値か変数くらいしか取らないので素朴な出力でもいい*)

let rec print ppf t : unit = 
  let o n = pp_open_vbox ppf n in
  let sp = pp_print_space ppf in
  let cl = pp_close_box ppf in 

  let ident = pp_print_string ppf in
  let print_tag t = ident ((*"\x1b[1m\x1b[36m"^*)((get_tag (fst t))^" # "^(Mloc.to_string (snd t))) (*^"\x1b[0m"*) ) in
  let print_tag2 t = ident ( (*"\x1b[32m"^*) ((get_tag (fst t))^" # "^(Mloc.to_string (snd t))) (*^"\x1b[0m"*) ) in

  match (fst t) with
| Unit -> ident "UNIT"
| Bool b -> ident "BOOL(";pp_print_bool ppf b;ident ")"
| Int i -> ident "INT(";pp_print_int ppf i;ident ")"
| Float f -> ident "FLOAT(";pp_print_float ppf f;ident ")"
| Not t1 | Neg t1 | FNeg t1 -> 
    o sident;
    print_tag2 t;sp();
    print ppf t1;cl()
| Add (t1,t2) | Sub (t1,t2) |  Mul (t1,t2) | Div (t1,t2) | FAdd (t1,t2) | FSub (t1,t2) | FMul (t1,t2) | FDiv (t1,t2) | Eq (t1,t2) | LE (t1,t2) | Array (t1,t2) | Get (t1,t2) ->
    o dident;
    print_tag2 t;sp();
    print ppf t1;sp();
    print ppf t2;cl()
| If (t1,t2,t3) | Put (t1,t2,t3) -> 
    o dident;
    print_tag2 t;sp();
    print ppf t1;sp();
    print ppf t2;sp();
    print ppf t3;cl()
| Let ((x1,_),t2,t3) ->
    o nident;
    print_tag t;sp();
    ident (Id.to_string x1);sp();
    print ppf t2;sp();
    print ppf t3;cl()
| Var x -> ident ("VAR("^(Id.to_string x)^")")
| LetRec ({ name; args; body }, t1) -> 
    o nident;
    print_tag t;sp();
    ident (Id.to_string (fst name));
    ident " [";
    ident ((String.concat ", " (List.map (fun p -> Id.to_string (fst p)) args))^"]");
    sp();
    print ppf body;
    sp();
    print ppf t1;
    cl()
| App (t1, args) ->
    o nident;
    print_tag t;sp();
    print ppf t1;sp();
    List.iter (fun t -> print ppf t;sp()) args;
    cl()
| Tuple args ->
    o dident;
    print_tag t;sp();
    List.iter (fun t -> print ppf t;sp()) args;
    cl()
| LetTuple (args, t1, t2) -> 
    o nident;
    print_tag t;sp();
    ident ("["^(String.concat ", " (List.map (fun p -> Id.to_string (fst p)) args))^"]");sp();
    print ppf t1;sp();
    print ppf t2;
    cl()
