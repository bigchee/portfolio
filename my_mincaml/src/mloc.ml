type t = int
let dummy = -1

let is_d x = (x < 0)
let is_eq = (=)
let compare = compare

let to_string x = 
  match x with
  | -2 -> "knormal"
  | -3 -> "external"
  | -4 -> "float_imm"
  | -5 -> "cls_heap"
  | -6 -> "tuple_heap"
  | -7 -> "make_cls"
  | -8 -> "make_array"
  | -9 -> "d_virtual_remain"
  | -10 -> "d_parser_remain"
  | -11 -> "cls_addr_set"
  | -12 -> "cls_args_set"
  | -13 -> "d_asm_fletd"
  | -14 -> "d_asm_seq"
  | -15 -> "d_cse"
  | -16 -> "d_regalloc"
  | -17 -> "d_regalloc_g'if"
  | -18 -> "d_regalloc_g'call"
  | -19 -> "d_tuple_args"
  | -20 -> "d_simm"
  | _ -> string_of_int x
(*dummies*)

(*d_{Mod}_{explain} *)
let d_knormal = -2
let d_external = -3 (*to_stringでこれらは文字列に変えた方がわかりやすいよね*)
let d_virtual_float_imm = -4
let d_virtual_cls_heap = -5
let d_virtual_tuple_heap = -6
let d_virtual_make_cls = -7
let d_knormal_make_array = -8
let d_virtual_remain = -9
let d_parser_remain = -10
let asm_seq_addr = -11
let asm_seq_args = -12
let d_asm_fletd = -13
let d_asm_seq = -14
let d_cse = -15
let d_regalloc = -16
let d_regalloc_g'if = -17
let d_regalloc_g'call = -18
let d_tuple_args = -19
let d_simm = -20


(*最適化情報を足す場合用. 使うかはまだ不明.
type t = T of (int * optinfos) | O of optinfos
and optinfos = optinfo list
and optinfo = KNormal of string |  

let dummy = T(-1,[])
let to_string : string = function
  | T (i,_) -> string_of_int i (*optinfoも場合によっては出力するように変更*)
  | O _ -> "opt"

let set (x:t) (opt:optinfo) = 
  match x with 
  | T (i,o) -> T(i,opt::o) (*必要があればopt情報の更新方法を変える*)
  | O (o) -> O(opt::o)*)