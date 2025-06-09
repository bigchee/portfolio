open Domainslib

(*雑多な関数を入れておくようにしたい*)

(*c++のlower_boundと同じ仕様*)
(*ブロック番号 -> その関数の終了ブロック番号を探すのに用いる*)
let rec lower_bound ls v = 
  let len first last = last - first in  
  let rec g first last = 
    let l = len first last in
    if l < 1 
      then first 
      else 
        let half = l / 2 in
        let mid = first + half in 
        let midv =  List.nth ls mid in 
        if (compare midv v) < 0 
          then g (mid + 1) last
          else g first mid
  in (g 0 (List.length ls))

let maybe_max_lower ls v = (*とりあえずさぼり実装, ls は降順, vより小さい中で一番大きな要素を返す*)
  List.fold_left (fun acc x -> 
    if Option.is_some acc then acc
    else if x < v then Some(x)
    else None) None ls 

let min_int = Int32.to_int (Int32.min_int)
let max_int = Int32.to_int (Int32.max_int)

(* list関連 *)
let list_diff l1 l2 = 
  List.filter (fun x -> not(List.mem x l2)) l1
let list_inter l1 l2 = 
  List.filter (fun x -> List.mem x l2) l1
let list_union l1 l2 = 
  List.fold_right (fun x acc_list -> 
    if List.mem x acc_list then acc_list
    else x::acc_list) l1 l2

let list_sub l idx1 idx2 = 
  let lastrnum = (List.length l) - 1 in 
  fst (List.fold_right (fun x (acc_list,rnum) -> 
    let newlist = if idx1 <= rnum && rnum <= idx2 then x::acc_list else acc_list in (newlist,rnum-1)
    ) l ([],lastrnum))

let list_split_last ls = 
  let ls_rev = List.rev ls in 
  (List.rev (List.tl ls_rev), List.hd ls_rev)

let list_split_last2 ls = 
  let ls_rev = List.rev ls in 
  let beforelast = List.tl ls_rev in 
  (List.rev (List.tl beforelast),(List.hd beforelast), (List.hd ls_rev))

let rec list_change_nth l n x = 
  match l with
  | [] -> failwith "list length is not enough"
  | _::ls when n = 0-> x :: ls
  | a::ls -> a::(list_change_nth ls (n-1) x) 

let rec list_map_nth l n map_f = 
  match l with
  | [] -> failwith "list length is not enough"
  | x::ls when n = 0-> (map_f x) :: ls
  | a::ls -> a::(list_map_nth ls (n-1) map_f) 

let rec list_remove_nth l n = 
  match l with
  | [] -> failwith "list length is not enough"
  | _::ls when n = 0 -> ls
  | a::ls -> a::(list_remove_nth ls (n-1)) 

let rec list_split_nth l n = 
  match l with
  | [] -> failwith "list length is not enough"
  | h::ls when n = 0 -> h,ls
  | a::ls -> 
    let x,lls = (list_split_nth ls (n-1)) in 
    x,(a::lls)

let rec list_replace_all oldvalue newvalue l = 
  match l with 
    | [] -> []
    | h::ls -> (if h = oldvalue then newvalue else h)::(list_replace_all oldvalue newvalue ls)

let list_before_last ls = 
  let len = (List.length ls) in 
  if len < 2 then failwith "list too short" 
  else List.nth ls (len -2)

let list_get_last ls = 
  let len = (List.length ls) in 
  if len < 1 then failwith "list too short" 
  else List.nth ls (len -1)

let list_get_last_idx ls = 
  max 0 ((List.length ls) - 1)

let intlist_to_string ls = 
  String.concat ", " (List.map string_of_int ls)
let list_to_string xlist = String.concat "," xlist
let id2list_to_string ls = 
  String.concat ", " (List.map (fun (x,y) -> Printf.sprintf "(%s,%s)" x y) ls)

let list_transpose ls = (*二次元リストを転置*)
  match ls with 
    | [] -> []
    | hd::_ -> 
      let emptylist = List.map (fun _ -> []) hd in (*外側の初期値は[]じゃなくて, ちゃんと次元分空リストを用意する必要がある. 2d ndarrayにappendするときと同じ.*)
      List.fold_right (fun lx acc_list -> 
        List.fold_right2 (fun hx accx inner_acc_list -> 
          (hx::accx)::inner_acc_list
          ) lx acc_list [] ) ls emptylist

let rec list_unique_rev_append l1 l2 = 
  match l1 with 
    | [] -> l2
    | h::ls -> 
        let new_l2 = if List.mem h l2 then l2 else (h::l2) in 
        list_unique_rev_append ls new_l2

let list_find_indices ls x = 
  let _,rev_index_list = List.fold_left (fun (idx,acc_list) y -> 
      let new_list = if x = y then idx::acc_list else acc_list in 
      (idx+1,new_list)) (0,[]) ls in 
  List.rev rev_index_list

let list_max ls = 
  match ls with 
   | [] -> failwith "list too short" 
   | hd::tl -> List.fold_left (fun acc_max x -> max acc_max x) hd tl

let list_mean ls = 
  let len = List.length ls in 
  if len = 0 then failwith "list too short"
  else 
    let sum = List.fold_left (fun acc_sum x -> acc_sum + x) 0 ls in 
    (float_of_int sum) /. (float_of_int len)

let list_print_stats ls = 
  Printf.printf "mean = %f, max = %d\n" (list_mean ls) (list_max ls)

let rec list_make len x = 
  if len = 0 then []
  else x::(list_make (len-1) x)

let rec list_range start stop = 
  if start >= stop then []
  else start::(list_range (start+1) stop)

(*並列化関連*)
let num_domains = 4
module T = Domainslib.Task
let list_parallel_iter_index ls iterfunc = 
  let n = (List.length ls) - 1 in 
  let pool =  T.setup_pool ~num_domains:(num_domains - 1) () in 
    (*とりあえずそれぞれpoolを作る, これも結構オーバーヘッドがあるはずなのでプログラムを通して使いまわすほうがいい*)
  T.run pool (fun _ -> T.parallel_for ~start:0 ~finish:n ~body:iterfunc pool);
  T.teardown_pool pool

let list_parallel_iter iterfunc ls = 
  list_parallel_iter_index ls (fun idx -> iterfunc (List.nth ls idx))

let list_parallel_iter2 iterfunc ls1 ls2 = 
  if (List.length ls1) <> (List.length ls2) then failwith "list length is different for parallel_iter2"
  else 
  list_parallel_iter_index ls1 (fun idx -> iterfunc (List.nth ls1 idx) (List.nth ls2 idx))

(*map関連*)
module MapInt = Map.Make
  (struct
    type t = int
    let compare = compare
  end)

let mapint_to_string mapint = 
  String.concat ", " (List.map (fun (k,v) -> Printf.sprintf "%d -> %d" k v) (MapInt.bindings mapint))


let get_key value mapenv = 
  let opt_key = M.fold (fun k v acc -> 
    if v = value then Some(k)
    else acc) mapenv None in 
  match opt_key with
  | Some(k) -> k
  | None -> raise Not_found

(*hashtbl関連*)
let ht_add_list ht xs ys = 
  List.iter2 (fun x y -> Hashtbl.add ht x y) xs ys 

(*string関連*)
let strncmp s1 s2 n =
  try 
    let s1n = String.sub s1 0 n in 
    let s2n = String.sub s2 0 n in 
    s1n = s2n
  with | Invalid_argument _ -> false 

let strncmp_tail s1 s2 n =
  try 
    let len1 = String.length s1 in 
    let len2 = String.length s2 in 
    let s1n = String.sub s1 (len1-n) n in 
    let s2n = String.sub s2 (len2-n) n in 
    s1n = s2n
  with | Invalid_argument _ -> false 