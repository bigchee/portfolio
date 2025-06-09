type t = string (* 変数の名前 (caml2html: id_t) *)
type l = L of string (* トップレベル関数やグローバル配列のラベル (caml2html: id_l) *)

let rec pp_list = function
  | [] -> ""
  | [x] -> x
  | x :: xs -> x ^ " " ^ pp_list xs

(*α変換の処理*)
let r_tail_alpha = Str.regexp "\\.[1-9][0-9]*"
let remove_alpha s = Str.global_replace r_tail_alpha "" s

let counter = ref 0
let genid s =
  incr counter;
  Printf.sprintf "%s.%d" (remove_alpha s) !counter

let rec id_of_typ = function
  | Type.Unit -> "u"
  | Type.Bool -> "b"
  | Type.Int -> "i"
  | Type.Float -> "d"
  | Type.Fun _ -> "f"
  | Type.Tuple _ -> "t"
  | Type.Array _ -> "a" 
  | Type.Var _ -> assert false
let gentmp typ =
  incr counter;
  let newid = Printf.sprintf "T%s%d" (id_of_typ typ) !counter in 
  (match typ with 
    | Type.Fun _ -> Type.fin_env := M.add newid typ !Type.fin_env
    | _ -> ());newid 

let is_unit x = 
  if String.length x < 2 then false
  else (String.sub x 0 2) = "Tu" (*入力できる変数名はlowercaseから始まるのでこの判定は100%正しいはず*) 

let to_string x : string = x
let genids ls = 
  List.fold_left (fun acc_list s -> acc_list@[genid s]) [] ls