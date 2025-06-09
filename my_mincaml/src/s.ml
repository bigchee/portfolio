(* customized version of Set *)

module S =
  Set.Make
    (struct
      type t = Id.t
      let compare = compare
    end)
include S

let of_list l = List.fold_left (fun s e -> add e s) empty l
let add_list l env = List.fold_left (fun s e -> add e s) env l

let to_string s = String.concat ", " (S.to_list s)