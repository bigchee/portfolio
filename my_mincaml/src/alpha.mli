val enable_in_inline : bool ref
val loopvars : S.t ref
val f : bool -> KNormal.t ->  KNormal.t
val g : Id.t M.t -> KNormal.t -> KNormal.t (* for Inline.g *)
