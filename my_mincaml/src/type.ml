type t = (* MinCamlの型を表現するデータ型 (caml2html: type_t) *)
  | Unit
  | Bool
  | Int
  | Float
  | Fun of t list * t (* arguments are uncurried *)
  | Tuple of t list
  | Array of t
  | Var of t option ref

let gentyp () = Var(ref None) (* 新しい型変数を作る *)
let (fin_env : (t M.t) ref) = ref M.empty (*関数の型環境, 他のモジュールから参照する用*)

let rec to_string x = 
  match x with
  | Unit -> "Unit"
  | Bool -> "Bool"
  | Int -> "Int"
  | Float -> "Float"
  | Fun (tl, t)  -> 
      let stl = List.map to_string tl in 
        "fun ["^(String.concat ", " stl)^"] -> "^(to_string t)
  | Tuple tl -> 
      let stl = List.map to_string tl in 
        "("^(String.concat ", " stl)^")"
  | Array t -> (to_string t)^" Array"
  | Var t -> 
      (match !t with
        | None -> "None"
        | Some y -> (to_string y)
    )

let rec tuple_depth t = (*タプルを木構造と見たときの最大深さ = 高さを求める*)
  let max_list l = (*補助関数*)
    let rec f n l = 
      match l with  
      | [] -> n
      | h::ls -> f (max h n) ls
    in f 0 l in 
  (match t with 
  | Tuple tl -> 1 + max_list (List.map tuple_depth tl) 
  | _ -> 0)

let rec tuple_size_with_depth t maxdepth = (*タプルを木構造と見たとき, maxdepthより下のノードを縮退させたときの要素数*)
  if maxdepth <= 0 then 1
  else 
    match t with 
    | Tuple tl -> List.fold_left (fun acc t -> acc + (tuple_size_with_depth t (maxdepth - 1))) 0 tl
    | _ -> 1

let rec contain_array t = 
  match t with 
    | Array _ -> true
    | Var t1 -> 
      (match !t1 with
        | None -> false
        | Some t2 -> contain_array t2)
    | Tuple tl -> List.exists contain_array tl
    | _ -> false (*Funもここでいいのか?*)
  
let rec is_array t = 
  match t with 
    | Array _ -> true
    | Var t1 -> 
      (match !t1 with
        | None -> false
        | Some t2 -> is_array t2)
    | _ -> false (*Funもここでいいのか?*)

let is_tuple t = 
  match t with 
    | Tuple _ -> true
    | _ -> false

let get_ret_type t = 
  match t with 
    | Fun(_,t1) -> t1
    | _ -> failwith "this is not a function type"

let get_tuple_tlist t = 
  match t with 
    | Tuple tl -> tl
    | _ -> failwith "this is not a tuple type"