open Asm 

exception NoDest

type ssa = 
  (*three-address instuction form*)
  | Assign3 of Id.t * Id.t * binop * id_or_imm (*x = y binop z*)
  | Assign2 of Id.t * uniop * id_or_imm (*x = uniop y*)
  | Memacc of Id.t * Id.t * memacc * id_or_imm
  | Copy of Id.t * Id.t (*x = y*)
  | CondJ of Id.t * relop * id_or_imm (*if x relop y goto L, relop : relational operator*)
    (* 分岐はグラフでしか表さない? できればブロック名を取りたい*)
  | Call of Id.t * fname * param * fparam (*y = call p(param), ??*)
  (* Phi 関数 , 今は分岐ブロックごとに割当られる値の異なる変数は一つずつのはず? より一般にはリストにすればよさそう *)
  | Phi_r of Id.t 
  | Phi_w of Id.t 
(*infixよりprefix operatorの方がいいか?*)
and ssa_rhs = 
  | Binop of Id.t * binop * id_or_imm
  | Uniop of uniop * id_or_imm
  | Mem of Id.t * id_or_imm (* メモリの値 *)

and binop = 
  | Add | Sub | Mul | Div | SLL | SRA
  | FAdd | FSub | FMul | FDiv 
and uniop = 
  | Li | FLi (*あとで直接定数を扱えるように変更するかも?*)
  | SetL (*あとで直接ラベルを扱えるように変更するかも?*)
  | Neg 
  | FNeg
and relop = 
  | Eq | LE | GE 
  | FEq | FLE
and memacc = 
  | Ld | FLd
  | St | FSt
and fname = string 
and param = Id.t list
and fparam = Id.t list

(*補助関数たち*)
let get_relop (exp : Asm.exp) = 
  match exp with
  | IfEq _ -> Eq
  | IfLE _ -> LE
  | IfGE _ -> GE
  | IfFEq _ -> FEq
  | IfFLE _ -> FLE
  | _ -> assert(false)

let get_binop (exp : Asm.exp) = 
  match exp with
  | Add _ -> Add
  | Sub _ -> Sub
  | Mul _ -> Mul
  | Div _ -> Div
  | SLL _ -> SLL
  | SRA _ -> SRA
  | FAdd _ -> FAdd
  | FSub _ -> FSub
  | FMul _ -> FMul
  | FDiv _-> FDiv
  | _ -> assert(false)

let get_memacc (exp : Asm.exp) = 
  match exp with
  | Ld _ -> Ld
  | St _ -> St
  | FLd _ -> FLd
  | FSt _ -> FSt
  | _ -> assert(false)

(*ブロックの出力のための関数*)
(*表示できない文字を変換*)
let r1 = Str.regexp_string "."
let r2 = Str.regexp "\\([A-z]*[A-km-z][A-z0-9]*\\)\\.[1-9][0-9]*"
let r3 = Str.regexp_string "min_caml_"
let r4 = Str.regexp "\\.[1-9][0-9]*" 
let process s = Str.global_replace r1 "&#46;" (*(Str.global_replace r2 "\\1"*) (Str.global_replace r3 "" s)
let process_funcname s = Str.global_replace r4 "" (Str.global_replace r3 "" s) 
let make_header title = 
  let title = process title in 
  "<table border=\"0\" cellborder=\"0\" cellpadding=\"3\" bgcolor=\"white\"><tr><td bgcolor=\"black\" align=\"center\" colspan=\"2\"><font color=\"white\">"^title^"</font></td></tr>"
let add_row acc rowbody inst_num rnum= 
  let rowbody = process rowbody in
  acc^"<tr><td align=\"left\" port=\"r"^(string_of_int rnum)^"\">("^(string_of_int inst_num)^") "^rowbody^" </td></tr>"
let add_footer acc = acc^"</table>"

(*引数レジスタを考慮するための命令を生成*)
(*いったん引数レジスタをα変換しておく(表示はされないはず)*)
let rcounter = ref 0
let get_alphareg reg = (incr rcounter;reg^"."^(string_of_int !rcounter))
let remove_alpha s = (Str.global_replace r2 "\\1" s)
let is_reg s = Asm.is_reg (remove_alpha s)

let literal_to_string = function
  | V x -> remove_alpha (Id.to_string x)
  | C i -> string_of_int i 

let get_dest ssa = (*memaccの扱いは適当, あんまりmemaccでget_destすることは考えていない*)
  match ssa with 
  | Assign3(x,_,_,_) | Assign2(x,_,_) | Copy(x,_) | Call(x,_,_,_) | Memacc(x,_,_,_) | Phi_w(x)-> x
  | CondJ _ | Phi_r _ -> raise NoDest (*destとかない*) 

(* let rec to_string ssa = 
    match ssa with 
    | Assign3(x,y,binop,zi) -> Printf.sprintf "%s := %s %s %s" (remove_alpha x) (remove_alpha y) (to_string_binop binop) (literal_to_string zi)
    | Assign2(x,uniop,yi) -> Printf.sprintf "%s := %s" (remove_alpha x) (to_string_uniop uniop yi)
    | Memacc(x,y,memacc,zi) -> to_string_memacc (remove_alpha x) (remove_alpha y) memacc zi
    | Copy(x,y) -> Printf.sprintf "%s := %s" (remove_alpha x) (remove_alpha y)
    | CondJ(x,relop,yi) -> Printf.sprintf "if %s %s %s" (remove_alpha x) (to_string_relop relop) (literal_to_string yi)
    | Call(x,f,_,_) when not(x = "a0") -> Printf.sprintf "%s := call %s" (remove_alpha x) (process_funcname f) 
    | Call(_,f,_,_) -> Printf.sprintf "call %s" (process_funcname f) 関数呼び出しの返値の扱いについては精査が必要 *)

let rec to_string toc = 
  match toc with 
  | Assign3(x,y,binop,zi) -> Printf.sprintf "%s := %s %s %s" x y (to_string_binop binop) (literal_to_string zi)
  | Assign2(x,uniop,yi) -> Printf.sprintf "%s := %s" x (to_string_uniop uniop yi)
  | Memacc(x,y,memacc,zi) -> to_string_memacc x y memacc zi
  | Copy(x,y) -> Printf.sprintf "%s := %s" x y
  | CondJ(x,relop,yi) -> Printf.sprintf "if %s %s %s" x (to_string_relop relop) (literal_to_string yi)
  | Call(x,f,_,_) when not(x = "a0") -> Printf.sprintf "%s := call %s" x f (* [ ] %g0, α変換にあとで対応*)
  | Call(_,f,_,_) -> Printf.sprintf "call %s" f (*関数呼び出しの返値の扱いについては精査が必要*)
  | Phi_r(x) -> Printf.sprintf "&Phi;r (%s)" x
  | Phi_w(x) -> Printf.sprintf "(%s) &lt;- &Phi;w" x

(*html特殊文字コードを<,>,.は使う必要がある*)
and to_string_binop binop =
  match binop with
  | Add -> "+"
  | Sub -> "-"
  | Mul -> "*"
  | Div -> "/"
  | SLL -> "&lt;&lt;"
  | SRA -> "&gt;&gt;&gt;"
  | FAdd -> "+&#46;"
  | FSub -> "-&#46;"
  | FMul -> "*&#46;"
  | FDiv -> "/&#46;"
and to_string_uniop uniop yi = 
  match uniop with
  | Li -> literal_to_string yi
  | FLi -> Printf.sprintf "getF(%s)" (literal_to_string yi) (*やろうと思えば小数自体を表示させることもできるとは思う*)
  | SetL -> Printf.sprintf "getL(%s)" (literal_to_string yi) 
  | Neg | FNeg -> Printf.sprintf "-%s" (literal_to_string yi) 
and to_string_memacc x y memacc zi = 
  match memacc with
  | Ld | FLd -> Printf.sprintf "%s &lt;- %s(%s)" x (literal_to_string zi) y
  | St | FSt -> Printf.sprintf "%s -&gt; %s(%s)" x (literal_to_string zi) y
and to_string_relop relop = 
  match relop with
  | Eq | FEq -> "=="
  | LE | FLE -> "&lt;=" (*等号いる?*) 
  | GE -> "&gt;="

let is_memacc_store memacc = 
  match memacc with
  | St | FSt -> true
  | _ -> false

let map2 map_dest map_op ssa = 
  let map_iori = function
    | V(x) -> V(map_op x)
    | e -> e in 
  match ssa with
  | Assign3(x,y,binop,zi) -> Assign3(map_dest x,map_op y,binop,map_iori zi) 
  | Assign2(x,uniop,yi) -> Assign2(map_dest x,uniop,map_iori yi)
  | Memacc(x,y,memacc,zi) -> Memacc(map_dest x,map_op y,memacc,map_iori zi)
  | Copy(x,y) -> Copy(map_dest x,map_op y)
  | CondJ(x,relop,yi) -> CondJ(map_dest x,relop,map_iori yi)
  | Call(x,f,args,fargs) -> Call(map_dest x, f, (List.map map_op args), (List.map map_op fargs)) 
  | Phi_r(x) -> Phi_r(map_op x)
  | Phi_w(x) -> Phi_w(map_dest x)

let map map ssa = 
  (* map2 map map ssa*)
  let map_iori = function
    | V(x) -> V(map x)
    | e -> e in 
  match ssa with
  | Assign3(x,y,binop,zi) -> Assign3(map x,map y,binop,map_iori zi) 
  | Assign2(x,uniop,yi) -> Assign2(map x,uniop,map_iori yi)
  | Memacc(x,y,memacc,zi) -> Memacc(map x,map y,memacc,map_iori zi)
  | Copy(x,y) -> Copy(map x,map y)
  | CondJ(x,relop,yi) -> CondJ(map x,relop,map_iori yi)
  | Call(x,f,args,fargs) -> Call(map x, f, (List.map map args), (List.map map fargs)) 
  | Phi_r(x) -> Phi_r(map x)
  | Phi_w(x) -> Phi_w(map x)