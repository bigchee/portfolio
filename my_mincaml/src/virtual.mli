val data : ((Id.l * float) list) ref 
val separate : 
    (Id.t * Type.t) list -> (Id.t list) * (Id.t list)

val expand : 
    (Id.t * Type.t) list -> 
    (int * Asm.t) -> 
    (Id.t -> int -> Asm.t -> Asm.t ) -> 
    (Id.t -> Type.t -> int -> Asm.t -> Asm.t ) ->  int * Asm.t
    

val f : Closure.prog -> Asm.prog
exception Not_implemented of string