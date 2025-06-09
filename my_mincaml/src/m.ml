(* customized version of Map *)

module M =
  Map.Make
    (struct
      type t = string
      let compare = compare
    end)
include M

let add_list xys env = List.fold_left (fun env (x, y) -> add x y env) env xys
let add_list_same xs y env = List.fold_left (fun env x -> add x y env) env xs
let add_list2 xs ys env = List.fold_left2 (fun env x y -> add x y env) env xs ys

let val_mem value map = 
  M.exists (fun _ v -> v = value) map

let get_key value map = 
  let opt_key = M.fold (fun k v acc -> 
    if v = value then Some(k)
    else acc) map None in 
  match opt_key with
  | Some(k) -> k
  | None -> raise Not_found

let all_keys map = 
  List.map fst (M.bindings map)  

let to_string map = 
  String.concat ", " (List.map (fun (k,v) -> Printf.sprintf "%s -> %s" k v) (bindings map))

let add_cons x y env = 
  try 
    let current_bind = find x env in 
    add x (y::current_bind) env
  with
  | Not_found -> add x [y] env