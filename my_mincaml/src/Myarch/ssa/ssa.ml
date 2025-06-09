open Asm 

exception NoDest
exception MultiDest

type ssa = 
  (*three-address instuction form*)
  | Assign3 of Id.t * Id.t * binop * id_or_imm (*x = y binop z*)
  | Assign2 of Id.t * uniop * id_or_imm (*x = uniop y*)
  | Memacc of Id.t * Id.t * memacc * id_or_imm
  | Copy of Id.t list * Id.t list (*x = y*)
  | CondJ of Id.t * relop * id_or_imm (*if x relop y goto L, relop : relational operator*)
    (* 分岐はグラフでしか表さない? できればブロック名を取りたい*)
  | Call of Id.t * fname * param * fparam (*y = call p(param), ??*)
  (* Phi 関数 , 今は分岐ブロックごとに割当られる値の異なる変数は一つずつのはず? より一般にはリストにすればよさそう *)
  | Phi_r of Id.t list 
  | Phi_w of Id.t list
  (*レジスタ割当用*)
  | Save of Id.t * Id.t (*vexp, reg*)
  | Reload of Id.t * Id.t (*reg, vexp*)
(*infixよりprefix operatorの方がいいか?*)
and ssa_rhs = 
  | Binop of Id.t * binop * id_or_imm
  | Uniop of uniop * id_or_imm
  | Mem of Id.t * id_or_imm (* メモリの値 *)

and binop = 
  | Add | Sub | Mul | Div 
  | SLL | SRA | XOR
  | FAdd | FSub | FMul | FDiv 
  | Fle | Feq
and uniop = 
  | Li | FLi 
  | SetL 
  | Neg 
  | FNeg
  | IN32 (*引数はdummy*)
  | OUT8
  | HLib of string (*追加命令用*)
and relop = 
  | Eq | NEq | LE | GE 
  | Lt | Gt 
  | FNeq  
  | FGt
and memacc = 
  | Ld | FLd
  | St | FSt
and fname = string 
and param = Id.t list
and fparam = Id.t list

(*補助関数たち*)
let convert_relop (exp : Asm.exp) = 
  match exp with
  | IfEq _ -> Eq
  | IfLE _ -> LE
  | IfGE _ -> GE
  | _ -> assert(false)

let convert_binop (exp : Asm.exp) = 
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

let convert_memacc (exp : Asm.exp) = 
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
let remove_mincaml s = Str.global_replace r3 "" s 
let process s = Str.global_replace r1 "&#46;" (*(Str.global_replace r2 "\\1"*) (remove_mincaml s)
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

let is_memacc_store memacc = 
  match memacc with
  | St | FSt -> true
  | _ -> false

let is_float_cmp binop = 
  match binop with 
  | Fle | Feq -> true
  | _ -> false

let get_def ssa = (*memaccの扱いは適当, あんまりmemaccでget_destすることは考えていない -> 生存解析のため, destというよりdef変数を返すように?*)
  match ssa with 
  (* | Assign2(_,OUT8,_) -> raise NoDest *)
  | Assign3(x,_,_,_) | Assign2(x,_,_) | Call(x,_,_,_) | Phi_w([x]) | Reload(x,_) -> x
  | Copy([x],_) -> x
  | Copy _ | Phi_w _ -> raise MultiDest (*複数返せるバージョンも多分必要?*)
  | Memacc(x,_,memacc,_) when not(is_memacc_store memacc) -> x
  | Memacc _ | CondJ _ | Phi_r _  | Save _ -> raise NoDest (*destとかない*) 

let get_defs ssa = 
  match ssa with 
  | Copy(xs,_) | Phi_w(xs) -> xs
  | _ -> [get_def ssa]

let get_use ssa = (*使用する変数集合をリストとして返す*) 
  let iori_get_src = function
    | V(x) -> [x]
    |_ -> [] in 
  let uselist = 
  (match ssa with 
  | Assign3(_,y,_,zi) -> [y]@(iori_get_src zi)
  | Assign2(_,IN32,_) -> []
  | Assign2(_,_,yi) -> (iori_get_src yi)
  | Memacc(x,y,memacc,zi) when is_memacc_store memacc -> [x;y]@(iori_get_src zi)
  | Memacc(_,y,memacc,zi) -> [y]@(iori_get_src zi)
  | Copy(_,ys) -> ys
  | Call(_,_,args,fargs) -> args@fargs
  | Phi_r(xs) -> xs
  | CondJ(x,_,yi) ->  [x]@(iori_get_src yi)
  | Phi_w(_) -> []
  | Save(x,_) -> [x]
  | Reload(_,x) -> [x]) in List.sort_uniq compare uselist

(* let rec to_string ssa = 
    match ssa with 
    | Assign3(x,y,binop,zi) -> Printf.sprintf "%s := %s %s %s" (remove_alpha x) (remove_alpha y) (to_string_binop binop) (literal_to_string zi)
    | Assign2(x,uniop,yi) -> Printf.sprintf "%s := %s" (remove_alpha x) (to_string_uniop uniop yi)
    | Memacc(x,y,memacc,zi) -> to_string_memacc (remove_alpha x) (remove_alpha y) memacc zi
    | Copy(x,y) -> Printf.sprintf "%s := %s" (remove_alpha x) (remove_alpha y)
    | CondJ(x,relop,yi) -> Printf.sprintf "if %s %s %s" (remove_alpha x) (to_string_relop relop) (literal_to_string yi)
    | Call(x,f,_,_) when not(x = "a0") -> Printf.sprintf "%s := call %s" (remove_alpha x) (process_funcname f) 
    | Call(_,f,_,_) -> Printf.sprintf "call %s" (process_funcname f) 関数呼び出しの返値の扱いについては精査が必要 *)

let rec to_string ssa = 
  match ssa with 
  | Assign3(x,y,binop,zi) -> Printf.sprintf "%s := %s %s %s" x y (to_string_binop binop) (literal_to_string zi)
  | Assign2(x,uniop,yi) -> Printf.sprintf "%s := %s" x (to_string_uniop uniop yi)
  | Memacc(x,y,memacc,zi) -> to_string_memacc x y memacc zi
  | Copy(xs,ys) -> String.concat ", " (List.map2 (fun x y -> Printf.sprintf "%s := %s" x y) xs ys)
  | CondJ(x,relop,yi) -> Printf.sprintf "if %s %s %s" x (to_string_relop relop) (literal_to_string yi)
  | Call(x,f,args,fargs)  -> Printf.sprintf "%s := call %s" x f 
  (* [ ] %g0, α変換にあとで対応*)
  (* | Call(_,f,_,_) -> Printf.sprintf "call %s" f 関数呼び出しの返値の扱いについては精査が必要 *)
  | Phi_r(xs) -> Printf.sprintf "&Phi;r (%s)" (U.list_to_string xs)
  | Phi_w(xs) -> Printf.sprintf "(%s) &lt;- &Phi;w" (U.list_to_string xs)
  | Save(vexp,reg) -> Printf.sprintf "save(%s,%s)" vexp reg
  | Reload(reg,vexp) -> Printf.sprintf "%s = reload(%s)" reg vexp

(*html特殊文字コードを<,>,.は使う必要がある*)
and to_string_binop binop =
  match binop with
  | Add -> "+"
  | Sub -> "-"
  | Mul -> "*"
  | Div -> "/"
  | SLL -> "&lt;&lt;"
  | SRA -> "&gt;&gt;&gt;"
  | XOR -> "^"
  | FAdd -> "+&#46;"
  | FSub -> "-&#46;"
  | FMul -> "*&#46;"
  | FDiv -> "/&#46;"
  | Fle -> "&le;"
  | Feq -> "=="
and to_string_uniop uniop yi = 
  match uniop with
  | Li -> literal_to_string yi
  | FLi -> Printf.sprintf "getF(%s)" (literal_to_string yi) (*やろうと思えば小数自体を表示させることもできるとは思う*)
  | SetL -> Printf.sprintf "getL(%s)" (literal_to_string yi) 
  | Neg | FNeg -> Printf.sprintf "-%s" (literal_to_string yi) 
  | OUT8 -> Printf.sprintf "out8 %s" (literal_to_string yi) 
  | IN32 -> Printf.sprintf "in32 ()" 
  | HLib opcode -> Printf.sprintf "%s %s" opcode (literal_to_string yi) 
and to_string_memacc x y memacc zi = 
  match memacc with
  | Ld | FLd -> Printf.sprintf "%s &larr; %s(%s)" x (literal_to_string zi) y
  | St | FSt -> Printf.sprintf "%s &rarr; %s(%s)" x (literal_to_string zi) y
and to_string_relop relop = 
  match relop with
  | Eq -> "=="
  | NEq -> "&ne;"
  | LE -> "&le;" 
  | GE -> "&ge;"
  | Lt -> "&lt;"
  | Gt -> "&gt;"
  | FNeq -> "&ne;&#46;"
  | FGt -> "&le;&#46;"

exception UnexpectedSsaPattern

let to_inst_binop_const binop = 
  match binop with 
  | Add -> "addi"
  | SLL -> "slli"
  | SRA -> "srai"
  | XOR -> "xori"
  | _ -> raise UnexpectedSsaPattern

and to_inst_binop binop = 
  match binop with 
  | Add -> "add"
  | Sub -> "sub"
  | SLL -> "sll"
  | XOR -> "xor"
  | FAdd -> "fadd"
  | FSub -> "fsub"
  | FMul -> "fmul"
  | FDiv -> "fdiv"
  | Fle -> "fle"
  | Feq -> "feq"
  | _ -> raise UnexpectedSsaPattern

and to_inst_uniop uniop = 
  match uniop with 
  | SetL -> "la"
  | OUT8 -> "out8"
  | HLib opcode -> opcode
  | _ -> raise UnexpectedSsaPattern

and to_inst_memacc memacc = 
  match memacc with 
  | Ld | FLd -> "lw"
  | St | FSt -> "sw"

let to_inst_relop_revert relop = 
  match relop with 
  | Eq -> "bne"
  | NEq -> "beq"
  | LE -> "bgt"
  | GE -> "blt"
  | Lt -> "bge"
  | Gt -> "ble"
  | FNeq -> "bfeq"
  | FGt -> "bfle"

let to_inst_relop relop = 
  match relop with 
  | Eq -> "beq"
  | NEq -> "bne"
  | LE -> "ble"
  | GE -> "bge"
  | Lt -> "blt"
  | Gt -> "bgt"
  | FNeq -> "bfneq"
  | FGt -> "bfgt"

let rec get_opcode ssa = 
  match ssa with 
  | Assign3(x,y,binop,C(i)) -> 
    (match binop with 
      | Sub -> "addi"
      | _ when i = 0 && is_float_cmp binop -> to_inst_binop binop
      | _ -> to_inst_binop_const binop ) 
  | Assign3(x,y,binop,V(z)) -> to_inst_binop binop
  | Assign2(x,uniop,yi) -> 
    (match uniop with 
      | Li -> "li"
      | FLi -> "fli"
      | Neg -> "neg"
      | FNeg -> "fneg"
      | IN32 -> "in32"
      | _ -> to_inst_uniop uniop)
  | Memacc(x,y,memacc,zi) -> to_inst_memacc memacc
  | Copy(xs,ys) -> "mv"
  | CondJ(x,relop,yi) -> (to_inst_relop relop)
  | Call(x,f,args,fargs)  -> "call"
  (* [ ] %g0, α変換にあとで対応*)
  (* | Call(_,f,_,_) -> Printf.sprintf "call %s" f 関数呼び出しの返値の扱いについては精査が必要 *)
  | Phi_r(xs) -> "&Phi;r"
  | Phi_w(xs) -> "&Phi;w" 
  | Save(vexp,reg) -> "save"
  | Reload(reg,vexp) -> "reload"


let calc_relop relop = 
  match relop with 
    | Eq -> (=)
    | NEq | FNeq -> (<>)
    | LE -> (<=)
    | GE -> (>=)
    | Lt -> (<)
    | Gt | FGt-> (>)

let list_to_string ssas = String.concat "\n" (List.map to_string ssas)  

let map2 map_dest map_op ssa = 
  let map_iori = function
    | V(x) -> V(map_op x)
    | e -> e in 
  try (
  match ssa with
  | Assign3(x,y,binop,zi) -> Assign3(map_dest x,map_op y,binop,map_iori zi) 
  | Assign2(x,uniop,yi) -> Assign2(map_dest x,uniop,map_iori yi)
  | Memacc(x,y,memacc,zi) when is_memacc_store memacc -> Memacc(map_op x,map_op y,memacc,map_iori zi)
  | Memacc(x,y,memacc,zi) -> Memacc(map_dest x,map_op y,memacc,map_iori zi)
  | Copy(xs,ys) -> Copy(List.map map_dest xs,List.map map_op ys)
  | CondJ(x,relop,yi) -> CondJ(map_dest x,relop,map_iori yi)
  | Call(x,f,args,fargs) -> Call(map_dest x, f, (List.map map_op args), (List.map map_op fargs)) 
  | Phi_r(xs) -> Phi_r(List.map map_op xs)
  | Phi_w(xs) -> Phi_w(List.map map_dest xs)
  | Save(vexp,reg) -> Save(vexp,reg)
  | Reload(reg,vexp) -> Reload(map_dest reg,vexp) (* この二つはmapしないのが正解? *)
  ) with | e -> raise e

let map map ssa = map2 map map ssa

exception No_revert_relop
let revert_relop relop = 
  match relop with 
  | Eq -> NEq
  | NEq -> Eq
  | LE -> Gt
  | GE -> Lt
  | Lt -> GE
  | Gt -> LE
  | _ -> raise No_revert_relop

let is_call ssa = 
  match ssa with 
  | Call _ -> true
  | _ -> false

let is_phiw ssa = 
  match ssa with 
  | Phi_w _ -> true
  | _ -> false

let is_phir ssa = 
  match ssa with 
  | Phi_r _ -> true
  | _ -> false

let is_condj ssa = 
  match ssa with 
  | CondJ _ -> true
  | _ -> false

let get_copy_src ssa = 
  match ssa with 
  | Copy(_,[y]) -> y
  | _ -> failwith (Printf.sprintf "expected copy instruction, but received %s" (to_string ssa)) 

let get_relop ssa = 
  match ssa with 
  | CondJ(_,relop,_) -> relop
  | _ -> failwith (Printf.sprintf "expected condj instruction, but received %s" (to_string ssa)) 

let get_latency ssa = 
  match ssa with 
  | Assign3(_,_,FAdd,_) | Assign3(_,_,FSub,_) -> 2
  | Assign3(_,_,FMul,_) | Assign2(_,HLib("itof"),_) -> 1
  | Memacc(_,_,memacc,_) when is_memacc_store memacc -> 2
  | Memacc(_,_,memacc,_) -> 1
  | Assign3(_,_,Div,_) -> 9
  | Assign2(_,HLib("floor"),_) -> 6 
  | _ -> 0

let map_call_ops ssa retreg = 
  match ssa with 
  | Call(x,fname,args,fargs) -> 
    let fregs = Array.to_list (Array.sub Asm.caller_fregs 0 (List.length fargs)) in 
    let regs = Array.to_list (Array.sub Asm.caller_iregs 0 (List.length args)) in
    Call(retreg,fname,regs,fregs)
  | _ -> assert(false)

let is_const_def ssa = 
  match ssa with
  (* | _ when (S.mem vexp !Dfa.loopvars) -> false *)
  | Assign2(_,Li,_) | Assign2(_,FLi,_) | Assign2(_,SetL,_) -> true
  | _ -> false