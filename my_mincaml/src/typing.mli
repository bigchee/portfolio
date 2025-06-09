exception Error of  (Mloc.t * Mloc.t) * Syntax.t * Type.t * Type.t
val e_at : (Mloc.t * Mloc.t) -> string
exception Cannot_overload of string * string 

(* val extfun_float_in : string list
val extfun_float_out : string list *)
val get_ret_type : Id.t -> Type.t
val get_args_type : Id.t -> Type.t list
val interleave : Id.t -> Id.t list -> Id.t list -> Id.t list
val e_tmp : Syntax.t ref

val print : Format.formatter -> unit -> unit
val global_chan : (string option) ref 
(* val fin_env : Type.t M.t ref *)
val gvalenv : Type.t M.t ref
val arraysize_env : (Id.t,int) Hashtbl.t
val extenv : Type.t M.t ref
val f : Syntax.t -> Syntax.t
