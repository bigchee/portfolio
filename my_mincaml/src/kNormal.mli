type t =
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
  | IfEq of Id.t * Id.t * t * t
  | IfLE of Id.t * Id.t * t * t
  | Let of (Id.t * Type.t) * t * t
  | Var of Id.t
  | LetRec of fundef * t
  | App of Id.t * Id.t list
  | Tuple of Id.t list
  | LetTuple of (Id.t * Type.t) list * Id.t * t
  | Get of Id.t * Id.t
  | Put of Id.t * Id.t * Id.t
  | ExtSeq of Id.t
  | ExtFunApp of Id.t * Id.t list
  | While of t * t * (Id.t list * Type.t)
  | Ret of Id.t list * t
  | Cont of Id.t list * Id.t list
and fundef = { name : Id.t * Type.t; args : (Id.t * Type.t) list; body : t }

val enable_while : bool ref
val is_mid_rec : string -> bool
val is_tail_rec : string -> bool
val size : t -> int 

val is_const : t -> bool
val ht_loopvar_convert : ((Id.t * (Id.t list)),(bool -> (Id.t list) -> ((Id.t list) * (Id.t list)))) Hashtbl.t
val split_loop_invariant : (t -> t) -> t -> (t -> t) * t

val get_tag : t -> string
val cmp : t -> t -> int
val print : Format.formatter -> int -> bool -> t -> unit
val fv : t -> S.t
val f : Syntax.t -> t

