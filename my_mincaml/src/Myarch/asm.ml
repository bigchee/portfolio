open Format

type id_or_imm = V of Id.t | C of int
type t = (* 命令の列 (caml2html: sparcasm_t) *)
  ta * Mloc.t
and ta = 
  | Ans of exp
  | Let of (Id.t * Type.t) * exp * t
and exp = (*こっちを書き換えたらmliも同じにしないとダメ*)
  | Nop
  | Li of int
  | FLi of Id.l
  | SetL of Id.l
  | Mov of Id.t
  | Neg of Id.t
  | Add of Id.t * id_or_imm
  | Sub of Id.t * id_or_imm
  | Mul of Id.t * id_or_imm 
  | Div of Id.t * id_or_imm 
  | Not of Id.t
  | SLL of Id.t * id_or_imm 
  | SRA of Id.t * id_or_imm 
  | Ld of Id.t * id_or_imm
  | St of Id.t * Id.t * id_or_imm
  | FMov of Id.t
  | FNeg of Id.t
  | FAdd of Id.t * Id.t
  | FSub of Id.t * Id.t
  | FMul of Id.t * Id.t
  | FDiv of Id.t * Id.t
  | FLd of Id.t * id_or_imm
  | FSt of Id.t * Id.t * id_or_imm
  | Comment of string
  (* virtual instructions *)
  | IfEq of Id.t * id_or_imm * t * t
  | IfLE of Id.t * id_or_imm * t * t
  | IfGE of Id.t * id_or_imm * t * t (* 左右対称ではないので必要 *)
  | IfFEq of Id.t * Id.t * t * t
  | IfFLE of Id.t * Id.t * t * t
  (* while expression*)
  | While of t * t * (Id.t list * Type.t)
  | Cont of Id.t list * Id.t list  
  | Ret of Id.t list * t
  (* closure address, integer arguments, and float arguments *)
  | CallCls of Id.t * Id.t list * Id.t list
  | CallDir of Id.l * Id.t list * Id.t list
  | Save of Id.t * Id.t (* レジスタ変数の値をスタック変数へ保存 (caml2html: sparcasm_save) *)
  | Restore of Id.t (* スタック変数から値を復元 (caml2html: sparcasm_restore) *)

type fundef = { name : Id.l; args : Id.t list; fargs : Id.t list; body : t; ret : Type.t }
(* プログラム全体 = 浮動小数点数テーブル + トップレベル関数 + メインの式 (caml2html: sparcasm_prog) *)
type prog = Prog of (Id.l * float) list * fundef list * t

let memory = "M"

let get_var xi = 
  match xi with
| V(x) -> x
| _ -> failwith "This is not a variable"


(*fletd, seqはそのままでOKなはず*)
let fletd(x, e1, e2, mloc) = Let((x, Type.Float), e1, e2) , mloc
let seq(e1, e2, mloc) = Let((Id.gentmp Type.Unit, Type.Unit), e1, e2) , mloc

 (*汎用レジスタ*) 

let regnum = [| 36;24;36;27 |] (*合計128 - 5 = 123まで36;24;36;27 6;2;6;2 12;4;12;4 18;12;18;11*)
(*(caller_regs),(callee_regs),(caller_fregs),(callee_fregs)*)
let offset = [|5;5+regnum.(0);5+regnum.(0)+regnum.(1);5+regnum.(0)+regnum.(1)+ regnum.(2)|] 

let caller_iregs = (Array.init regnum.(0) (fun i -> Printf.sprintf "$x%d" (i+offset.(0)) )) (*x5 - x40*)
let callee_iregs = (Array.init regnum.(1) (fun i -> Printf.sprintf "$x%d" (i+offset.(1)) )) (*x41 - x64*)
let caller_fregs = (Array.init regnum.(2) (fun i -> Printf.sprintf "$x%d" (i+offset.(2)) )) (*x65-x100*)
let callee_fregs = (Array.init regnum.(3) (fun i -> Printf.sprintf "$x%d" (i+offset.(3)) )) (*x101-x127*)
let regs = Array.append caller_iregs callee_iregs
  (* (Array.map (fun s -> "$"^s)
    [| "a0"; "a1"; "a2"; "a3"; "a4"; "a5"; "a6"; "a7";
      "t0"; "t1"; "t2"; "t3"; "t4"|]) *) (*元の比率は 8 : 5 : 8 : 6 = 0.296 : 0.185 : 0.296 : 0.222 ~ 3 : 2 : 3 : 2 *)

  (* let fregs = Array.append (Array.init 8 (fun i -> Printf.sprintf "$fa%d" i)) (Array.init 6 (fun i -> Printf.sprintf "$ft%d" i)) *)
let fregs = Array.append caller_fregs callee_fregs

(* let caller_regs = Array.append (Array.map (fun s -> "$"^s) [| "a0"; "a1"; "a2"; "a3"; "a4"; "a5"; "a6"; "a7"|]) (Array.init 8 (fun i -> Printf.sprintf "$fa%d" i)) *)
let caller_regs = Array.append caller_iregs caller_fregs
let caller_num = Array.length caller_regs (*72*)
let callee_regs = Array.append callee_iregs callee_fregs
let callee_num = Array.length callee_regs (*50*)
let is_callee reg = Array.mem reg callee_regs

  let allregs = Array.to_list regs
  let allfregs = Array.to_list fregs
  let reg_cl = regs.(Array.length regs - 1) (*ここを何に設定すべきかよくわかってない*) (* closure address (caml2html: sparcasm_regcl) *)
 
  let reg_sw = regs.(Array.length regs - 2) (* temporary for swap *)
  let reg_fsw = fregs.(Array.length fregs - 1) (* temporary for swap *)
  
  let availreg_num = Array.length regs + Array.length fregs

  let reg_sp = "$x2" (* stack pointer *)
  let reg_hp = "$x3" (* heap pointer *)
  let reg_ra = "$ra" (* return address *)

  let reg_tmp = "$x4" (*アドレッシングモードの変換に対応するため, 暫定的にアドレスオフセット計算専用のレジスタを用いる*)
  (* let reg_tmp2 = "t5" 浮動小数の比較結果を入れるための中間レジスタ *)
  let reg_zero = "$zero"
  let reg_fzero = "$zero"

  let reg_size = Array.length regs (*これ使っているのか?*)
  let is_reg x = (x.[0] = '$')
  
  let fin_hardlib = [("int_of_float","ftoi");("sqrt","fsqrt");("floor","floor");("fabs","fabs")] (*浮動小数入力の変換対象関数 -> 命令*)
  let iin_hardlib = [("float_of_int","itof")] (*整数入力の変換対象関数, とりあえずprint_intは別*)
  let io_hardlib = ["read_int";"read_float";"print_byte"] (*入出力系の関数*) (*;"print_int";"print_float"*)
  let cmp_hardlib = ["fless";"fequal";"fispos";"fisneg";"fiszero"]
  let hardlib_alias = ["print_char";"truncate";"abs_float"]
  let all_hardlib = (List.map fst fin_hardlib)@(List.map fst iin_hardlib)@io_hardlib@cmp_hardlib@hardlib_alias

  let finlib2op = List.fold_left (fun env (label,op) -> M.add label op env ) M.empty fin_hardlib
  let iinlib2op = List.fold_left (fun env (label,op) -> M.add label op env ) M.empty iin_hardlib

(*またprint関数を作らないといけない!!!!*)
let get_tag exp : string = 
  match exp with
  | Nop -> "NOP"
  | Li _ -> "LI"
  | FLi _ -> "FLI"
  | SetL _ -> "SETL"
  | Mov _ -> "MOV"
  | Neg _ -> "NEG"
  | Add _ -> "ADD"
  | Sub _ -> "SUB"
  | Mul _ -> "MUL"
  | Div _ -> "DIV"
  | Not _ -> "NOT"
  | SLL _ -> "SLL"
  | SRA _ -> "SRA"
  | Ld _ -> "LD"
  | St _ -> "ST"
  | FMov _ -> "FMOV"
  | FNeg _ -> "FNEG"
  | FAdd _ -> "FADD"
  | FSub _ -> "FSUB"
  | FMul _ -> "FMUL"
  | FDiv _ -> "FDIV"
  | FLd _ -> "FLD"
  | FSt _ -> "FST"
  | Comment _ -> "COMMENT"
  (* virtual instructions *)
  | IfEq _ -> "IFEQ"
  | IfLE _ -> "IFLE"
  | IfGE _ -> "IFGE"
  | IfFEq _ -> "IFFEQ"
  | IfFLE _ -> "IFFLE"
  (* while expression*)
  | While _ -> "WHILE"
  | Cont _ -> "CONT"
  | Ret _ -> "RET"
  (* closure address, integer arguments, and float arguments *)
  | CallCls _ -> "CALLCLS"
  | CallDir _ -> "CALLDIR"
  | Save _ -> "SAVE" (* レジスタ変数の値をスタック変数へ保存 *)
  | Restore _ -> "RESTORE" (* スタック変数から値を復元 *)

  let literal_to_string = function
  | V x -> Id.to_string x
  | C i -> string_of_int i 

let rec print_exp ppf exp : unit = 
  let o n = pp_open_vbox ppf n in
  let sp = pp_print_space ppf in
  let cl = pp_close_box ppf in 

  let ident = pp_print_string ppf in
  let print_tag exp : unit = ident (get_tag exp) in
  let print_args_tag exp args : unit = (ident ((get_tag exp)^("("^(String.concat ", " (List.map literal_to_string args))^")"))) in
  match exp with
  | Nop -> print_tag exp
  | Li i -> print_args_tag exp [C(i)] 
  | FLi(Id.L(x))  -> print_args_tag exp [V(x)] 
  | SetL (Id.L(x)) -> print_args_tag exp [V(x)]
  | Mov x | Neg x | Not x | FMov x | FNeg x | Restore x -> print_args_tag exp [V(x)]
  | Add (x,yi) | Sub (x,yi) | Mul(x,yi) | Div(x,yi) | SLL(x,yi) | SRA(x,yi) | Ld (x,yi) | FLd (x,yi) -> print_args_tag exp [V(x);yi]
  | St (x,y,zi) | FSt (x,y,zi) -> print_args_tag exp [V(x);V(y);zi]
  | FAdd (x,y) | FSub (x,y) | FMul (x,y) | FDiv (x,y) | Save (x,y) -> print_args_tag exp [V(x);V(y)]
  | Comment s -> ident "SET(";ident s;ident ")"
  (* virtual instructions *)
  | IfEq (x,yi,e1,e2) | IfLE (x,yi,e1,e2) | IfGE (x,yi,e1,e2) -> 
      o 2;
      print_args_tag exp [V(x);yi];sp();
      print_t ppf e1;sp();
      print_t ppf e2;
      cl()
  | IfFEq (x,y,e1,e2) | IfFLE (x,y,e1,e2) ->
      o 2;
      print_args_tag exp [V(x);V(y)];sp();
      print_t ppf e1;sp();
      print_t ppf e2;
      cl()
  | While(e1,e2,(args,_)) -> 
      o 2;
      print_args_tag exp (List.map (fun x -> V(x)) args);sp();
      print_t ppf e1;sp();
      print_t ppf e2;
      cl()
  | Cont(args,xs) -> 
      o 2;
      print_args_tag exp (List.map (fun x -> V(x)) args);sp();
      ident ("["^(String.concat ", " (List.map Id.to_string xs))^"]");
      cl()
  | Ret(args,e) -> 
    o 2;
    print_args_tag exp (List.map (fun x -> V(x)) args);sp();
    print_t ppf e;
    cl()
  (* closure address, integer arguments, and float arguments *)
  | CallCls (x,yl,zl) | CallDir (Id.L(x),yl,zl) ->
      o 2;
      print_args_tag exp [V(x)];sp();
      ident ("["^(String.concat ", " (List.map Id.to_string yl))^"]");sp();
      ident ("["^(String.concat ", " (List.map Id.to_string zl))^"]");
      cl()
and print_fundef ppf {name = L(fname);args;fargs;body;_} = 
  let o n = pp_open_vbox ppf n in
  let sp = pp_print_space ppf in
  let cl = pp_close_box ppf in 

  let ident = pp_print_string ppf in
  o 2;
  ident (Id.to_string fname);sp();
  ident ("["^(String.concat ", " (List.map Id.to_string args))^"]");sp();
  ident ("["^(String.concat ", " (List.map Id.to_string fargs))^"]");sp();
  print_t ppf body;cl()

and print ppf (Prog(_,fundef,e)) : unit = 
  let o n = pp_open_vbox ppf n in
  let sp = pp_print_space ppf in
  let cl = pp_close_box ppf in 

  let ident = pp_print_string ppf in
  o 2;
  ident "----- begin fundef -----";sp();
  (List.iter (fun fd -> (print_fundef ppf fd);sp()) fundef);sp();
  ident "----- end fundef -----";sp();
  print_t ppf e;
  cl()

and print_t ppf e : unit = 
  let o n = pp_open_vbox ppf n in
  let sp = pp_print_space ppf in
  let cl = pp_close_box ppf in 

  let ident = pp_print_string ppf in
  match (fst e) with
  | Ans exp -> 
      o 2; 
      ident ("ANS"^(" # "^(Mloc.to_string (snd e))));sp();
      print_exp ppf exp;
      cl()
  | Let ((x,_),exp,e2) -> 
      o 2;
      ident ("LET"^(" # "^(Mloc.to_string (snd e))));sp();
      ident ((Id.to_string x));sp();
      print_exp ppf exp;sp();
      print_t ppf e2;
      cl() 


  (* super-tenuki *)
  let rec remove_and_uniq xs = function
    | [] -> []
    | x :: ys when S.mem x xs -> remove_and_uniq xs ys
    | x :: ys -> x :: remove_and_uniq (S.add x xs) ys
  (*ソートしてユニーク化するライブラリ関数はあるけど, ソートするメリットがなければ遅くなるだけ? -> 使う順に並べるので辞書順ソートはできない*)
  (*remove_and_uniqはこのasm.ml内でしか使われていないので, まとめて改良すればいい?*)
  (*被らないように追加することはできないのか?*)
  
  (* free variables in the order of use (for spilling) (caml2html: sparcasm_fv) *)
  let fv_id_or_imm = function V(x) -> [x] | _ -> []
  let rec fv_exp = function
    | Nop | Li(_) | FLi(_) | SetL(_) | Comment(_) | Restore(_) -> []
    | Mov(x) | Neg(x) | Not(x) | FMov(x) | FNeg(x) | Save(x, _) -> [x]
    | Add(x, y') | Sub(x, y') | Mul(x, y') | Div(x, y') | SLL(x, y') | SRA(x,y') | Ld(x, y') | FLd(x, y') -> x :: fv_id_or_imm y'
    | St(x, y, z') | FSt(x, y, z') -> x :: y :: fv_id_or_imm z'
    | FAdd(x, y) | FSub(x, y) | FMul(x, y) | FDiv(x, y) -> [x; y]
    | IfEq(x, y', e1, e2) | IfLE(x, y', e1, e2) | IfGE(x, y', e1, e2) -> x :: fv_id_or_imm y' @ remove_and_uniq S.empty (fv e1 @ fv e2) (* uniq here just for efficiency *)
    | IfFEq(x, y, e1, e2) | IfFLE(x, y, e1, e2) -> x :: y :: remove_and_uniq S.empty (fv e1 @ fv e2) (* uniq here just for efficiency *)
    | CallCls(x, ys, zs) -> x :: ys @ zs
    | CallDir(_, ys, zs) -> ys @ zs
    | While(e1,e2,_) -> remove_and_uniq S.empty (fv e1 @ fv e2)
    | Cont(_,xs) -> xs
    | Ret(_,e) -> fv e
    
  and fv (*= function*) e = 
  match (fst e) with
    | Ans(exp) -> fv_exp exp
    | Let((x, _(*t*)), exp, e) ->
        fv_exp exp @ remove_and_uniq (S.singleton x) (fv e)
  let fv e = remove_and_uniq S.empty (fv e)
  
  let rec concat e1 xt e2 = 
   (* match e1 with
      | Ans(exp) -> Let(xt, exp, e2)
      | Let(yt, exp, e1') -> Let(yt, exp, concat e1' xt e2)*)
  let first = 
    (  match (fst e1) with
      | Ans(exp) -> Let(xt, exp, e2)
      | Let(yt, exp, e1') -> Let(yt, exp, concat e1' xt e2)
    ) in (first,snd e1)
  

(*alignの既約は変わるかも*)    
    let align i = i
      (* (if i mod 8 = 0 then i else i + 4) *)