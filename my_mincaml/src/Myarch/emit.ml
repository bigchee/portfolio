open Asm

let is_min_rt = ref false
let addr_step = 1 (*word addr*)

exception Not_implemented

external gethi : float -> int32 = "gethi"
external getlo : float -> int32 = "getlo"
external getf : float -> int32 = "getf"

let stackset = ref S.empty (* すでにSaveされた変数の集合 (caml2html: emit_stackset) *)
let stackmap = ref [] (* Saveされた変数の、スタックにおける位置 (caml2html: emit_stackmap) *)
let save x =
  stackset := S.add x !stackset;
  if not (List.mem x !stackmap) then
    stackmap := !stackmap @ [x]
let savef x =
  stackset := S.add x !stackset;
  if not (List.mem x !stackmap) then
    ( (* こんなpaddingはいらん, 2倍にする必要もない *)
    stackmap := !stackmap @ [x])
let locate x =
  let rec loc = function
    | [] -> []
    | y :: zs when x = y -> 0 :: List.map succ (loc zs)
    | y :: zs -> List.map succ (loc zs) in
  loc !stackmap
let offset x = 
  try 
  addr_step *  List.hd (locate x) with | e -> (Printf.eprintf "trying to reload %s before storing it?\n" x;raise e)
let stacksize () = align ((List.length !stackmap + 1) * addr_step) (*要確認*)
(* 使うかどうか未定
let pp_id_or_imm = function
  | V(x) -> x
  | C(i) -> string_of_int i*)
(*PPC仕様への変更を容易にするためのワンクッション*)
let reg r =  
  Ssa.remove_alpha (if is_reg r then String.sub r 1 (String.length r - 1) else r)
let ftable = Hashtbl.create 64
(*ハード実装の追加命令をライブラリ関数呼び出し -> 命令発行に変換するためのツール*)

let r2 = Str.regexp "min_caml_"
let strip_mincaml s = Str.global_replace r2 "" s

(* 関数呼び出しのために引数を並べ替える(register shuffling) (caml2html: emit_shuffle) *)
let rec shuffle sw xys =
  (* remove identical moves *)
  let _, xys = List.partition (fun (x, y) -> x = y) xys in
  (* find acyclic moves *)
  match List.partition (fun (_, y) -> List.mem_assoc y xys) xys with
  | [], [] -> []
  | (x, y) :: xys, [] -> (* no acyclic moves; resolve a cyclic move *)
      (y, sw) :: (x, y) :: shuffle sw (List.map
                                         (function
                                           | (y', z) when y = y' -> (sw, z)
                                           | yz -> yz)
                                         xys)
  | xys, acyc -> acyc @ shuffle sw xys

let split_upper20_lower12 i =  (*符号の問題でややこしい*)
  let n = i lsr 12 in (*上位ビットを符号拡張, [31:12]*)
  let m = i lxor (n lsl 12) in (*下位12ビット*)
  if -2048 <= m && m < 2047 then (n,m)
  else 
    let n = n + 1 in let m = (n lsl 12) - i in (n,-m)

type dest = Tail | NonTail of Id.t (* 末尾かどうかを表すデータ型 (caml2html: emit_dest) *)

let get_int_dest = function
  | Tail -> Asm.regs.(0)
  | NonTail(a) -> a

let is_tail = function
  | Tail -> true
  | _ -> false

let rec g oc (d,e) =  (* 命令列のアセンブリ生成 (caml2html: emit_g) *)
(match (d,fst e) with
| dest, Ans(exp) -> g' oc (dest, exp)
  | dest, Let((x, t), exp, e) ->
      g' oc (NonTail(x), exp);
      g oc (dest, e))
and g' oc (dest,exp) (*comment*) =  (* 各命令のアセンブリ生成 (caml2html: emit_gprime) *)
  (* 末尾でなかったら計算結果をdestにセット (caml2html: emit_nontail) *)
  
  (*SPARCを基にしている部分とPPCを基にしている部分が混ざってしまっているので注意*)
match (dest, exp) with 
  | NonTail(_), Nop -> ()
  | NonTail(x), SetL(Id.L(y)) -> Printf.fprintf oc "\tla\t%s, %s\n" (reg x) y
  | NonTail(x), Mov(y) when x = y -> ()
  | NonTail(x), Mov(y) -> Printf.fprintf oc "\tmv\t%s, %s\n" (reg x) (reg y)
  | NonTail(x), Neg(y) -> Printf.fprintf oc "\tneg\t%s, %s\n" (reg x) (reg y)
  | NonTail(x), Li(i) when i = 0 -> Printf.fprintf oc "\tmv\t%s, %s\n" (reg x) (reg reg_zero) (*zeroレジスタを使える場合は活用*)
  | NonTail(x), Li(i) when -2048 <= i && i < 2047 -> Printf.fprintf oc "\tli\t%s, %d\n" (reg x) i
  | NonTail(x), Li(i) -> (*12ビットに収まらない*)
      let upper20, lower12  = split_upper20_lower12 i in 
      assert(0 <= upper20 && upper20 <= 1048575);
      assert(-2048 <= lower12 && lower12 < 2047);
      let r = reg x in
      (Printf.fprintf oc "\tlui\t%s, %d\n" r upper20;
      (if lower12 <> 0 then Printf.fprintf oc "\taddi\t%s, %s, %d\n" r r lower12)) (*下位12ビットが0なら省略*)
  | NonTail(x), FLi(Id.L(l)) -> (*内部表現を使ってliに*)
    (try 
      let upper20, lower12 = Hashtbl.find ftable l in
      assert(0 <= upper20 && upper20 <= 1048575);
      assert(-2048 <= lower12 && lower12 < 2047);
      let r = reg x in
      ((if upper20 <> 0 then Printf.fprintf oc "\tlui\t%s, %d\n" r upper20 else Printf.fprintf oc "\tmv\t%s, zero\n" r); (*まだ0.0即値最適化ができていないので暫定*)
      (if lower12 <> 0 then Printf.fprintf oc "\taddi\t%s, %s, %d\n" r r lower12)) (*下位12ビットが0なら省略*)
      with | Not_found -> Printf.eprintf "float label %s not found\n" l;raise Not_found)
  | NonTail(x), Add(y, V(z)) -> Printf.fprintf oc "\tadd\t%s, %s, %s\n" (reg x) (reg y) (reg z)
  | NonTail(x), Add(y, C(z)) -> Printf.fprintf oc "\taddi\t%s, %s, %d\n" (reg x) (reg y) z
  | NonTail(x), Sub(y, V(z)) -> Printf.fprintf oc "\tsub\t%s, %s, %s\n" (reg x) (reg y) (reg z)
  | NonTail(x), Sub(y, C(z)) -> Printf.fprintf oc "\taddi\t%s, %s, %d\n" (reg x) (reg y) (-z)
  | NonTail(x), Mul(y, V(z)) -> Printf.fprintf oc "\tmul\t%s, %s, %s\n" (reg x) (reg y) (reg z)
  | NonTail(x), Mul(y, C(z)) -> (failwith "Not_implemented : const mul" )
  | NonTail(x), Div(y, V(z)) -> Printf.fprintf oc "\tdiv\t%s, %s, %s\n" (reg x) (reg y) (reg z)
  | NonTail(x), Div(y, C(z)) -> (failwith "Not_implemented : const div")
  | NonTail(x), Not(y) -> Printf.fprintf oc "\txori\t%s, %s, 1\n" (reg x) (reg y)
  | NonTail(x), SLL(y, V(z)) -> Printf.fprintf oc "\tsll\t%s, %s, %s\n" (reg x) (reg y) (reg z)
  | NonTail(x), SLL(y, C(z)) -> Printf.fprintf oc "\tslli\t%s, %s, %d\n" (reg x) (reg y) z (*要確認, zはunsignedとして解釈されることに注意が必要*)
  | NonTail(x), SRA(y, V(z)) -> Printf.fprintf oc "\tsra\t%s, %s, %s\n" (reg x) (reg y) (reg z)
  | NonTail(x), SRA(y, C(z)) -> Printf.fprintf oc "\tsrai\t%s, %s, %d\n" (reg x) (reg y) z
  | NonTail(x), Ld(y, V(z)) ->  (*add reg_tmp, y, z; lw x, 0(reg_tmp)とする*)
      Printf.fprintf oc "\tadd\t%s, %s, %s\n" (reg reg_tmp) (reg y) (reg z);
      Printf.fprintf oc "\tlw\t%s, 0(%s)\n" (reg x) (reg reg_tmp) (*これはregtmpじゃないのか?, y -> reg_tmp*)
  | NonTail(x), Ld(y, C(z)) -> Printf.fprintf oc "\tlw\t%s, %d(%s)\n" (reg x) z (reg y)
  | NonTail(_), St(x, y, V(z)) ->  (*add reg_tmp, y, z; sw x, 0(reg_tmp)とする*)
      Printf.fprintf oc "\tadd\t%s, %s, %s\n" (reg reg_tmp) (reg y) (reg z);
      Printf.fprintf oc "\tsw\t%s, 0(%s)\n" (reg x) (reg reg_tmp)
  | NonTail(_), St(x, y, C(z)) -> Printf.fprintf oc "\tsw\t%s, %d(%s)\n" (reg x) z (reg y)
  | NonTail(x), FMov(y) when x = y -> ()
  | NonTail(x), FMov(y) ->
      Printf.fprintf oc "\tmv\t%s, %s\n" (reg x) (reg y) (*ここの仕様は要見直し*)
  | NonTail(x), FNeg(y) ->
      Printf.fprintf oc "\tfsub\t%s, x0, %s\n" (reg x) (reg y)
  | NonTail(x), FAdd(y, z) -> Printf.fprintf oc "\tfadd\t%s, %s, %s\n" (reg x) (reg y) (reg z)
  | NonTail(x), FSub(y, z) -> Printf.fprintf oc "\tfsub\t%s, %s, %s\n" (reg x) (reg y) (reg z)
  | NonTail(x), FMul(y, z) -> Printf.fprintf oc "\tfmul\t%s, %s, %s\n" (reg x) (reg y) (reg z)
  | NonTail(x), FDiv(y, z) -> Printf.fprintf oc "\tfdiv\t%s, %s, %s\n" (reg x) (reg y) (reg z)
  | NonTail(x), FLd(y, V(z)) -> 
      Printf.fprintf oc "\tadd\t%s, %s, %s\n" (reg reg_tmp) (reg y) (reg z); (*ここのアドレス計算は整数のはず*)
      Printf.fprintf oc "\tlw\t%s, 0(%s)\n" (reg x) (reg reg_tmp) (*多分reg_tmp*)
  | NonTail(x), FLd(y, C(z)) -> Printf.fprintf oc "\tlw\t%s, %d(%s)\n" (reg x) z (reg y)
  | NonTail(_), FSt(x, y, V(z)) -> 
      Printf.fprintf oc "\tadd\t%s, %s, %s\n" (reg reg_tmp) (reg y) (reg z); (*ここのアドレス計算は整数のはず*)
      Printf.fprintf oc "\tsw\t%s, 0(%s)\n" (reg x) (reg reg_tmp)
  | NonTail(_), FSt(x, y, C(z)) -> Printf.fprintf oc "\tsw\t%s, %d(%s)\n" (reg x) z (reg y)
  | NonTail(_), Comment(s) -> Printf.fprintf oc "\t# %s\n" s
  (* 退避の仮想命令の実装 (caml2html: emit_save) *)
  | NonTail(_), Save(x, y) when List.mem x allregs && not (S.mem y !stackset) ->
      save y;
      Printf.fprintf oc "\tsw\t%s, %d(%s)\n" (reg x) (offset y) (reg reg_sp)
  | NonTail(_), Save(x, y) when List.mem x allfregs && not (S.mem y !stackset) ->
      savef y;
      Printf.fprintf oc "\tsw\t%s, %d(%s)\n" (reg x) (offset y) (reg reg_sp)
  | NonTail(_), Save(x, y) -> assert (S.mem y !stackset); ()
  (* 復帰の仮想命令の実装 (caml2html: emit_restore) *)
  | NonTail(x), Restore(y) when List.mem x allregs ->
      Printf.fprintf oc "\tlw\t%s, %d(%s)\n" (reg x) (offset y) (reg reg_sp)
  | NonTail(x), Restore(y) ->
      assert (List.mem x allfregs);
      Printf.fprintf oc "\tlw\t%s, %d(%s)\n" (reg x) (offset y) (reg reg_sp)
  (* 末尾だったら計算結果を第一レジスタにセットしてリターン (caml2html: emit_tailret) *)
  | Tail, (Nop | St _ | FSt _ | Comment _ | Save _ as exp) ->
      g' oc (NonTail(Id.gentmp Type.Unit), exp);
      Printf.fprintf oc "\tret\n";
  | Tail, (Li _ | SetL _ | Mov _ | Neg _ | Add _ | Sub _ | Mul _ | Div _ | Not _ | SLL _ | SRA _ | Ld _ as exp) ->
      g' oc (NonTail(regs.(0)), exp);
      Printf.fprintf oc "\tret\n"
  | Tail, (FLi _ | FMov _ | FNeg _ | FAdd _ | FSub _ | FMul _ | FDiv _ | FLd _ as exp) ->
      g' oc (NonTail(fregs.(0)), exp);
      Printf.fprintf oc "\tret\n" 
  | Tail, (Restore(x) as exp) ->
      (match locate x with
      | [i] -> g' oc (NonTail(regs.(0)), exp)
      | [i; j] when i + 1 = j -> g' oc (NonTail(fregs.(0)), exp)
      | _ -> assert false);
      Printf.fprintf oc "\tret\n"
  | Tail, IfEq(x, V(y), e1, e2) ->
      g'_tail_if oc e1 e2 "beq" "bne" (reg x) (reg y)
  | Tail, IfEq(x, C(y), e1, e2) ->
      g' oc (NonTail(reg_tmp), Li(y)); (*そのまま即値を比較対象にできないので, reg_tmpに入れる*)
      g'_tail_if oc e1 e2 "beq" "bne" (reg x) (reg reg_tmp)
  | Tail, IfLE(x, V(y), e1, e2) ->
      g'_tail_if oc e1 e2 "ble" "bgt" (reg x) (reg y)
  | Tail, IfLE(x, C(y), e1, e2) ->
      g' oc (NonTail(reg_tmp), Li(y)); (*そのまま即値を比較対象にできないので, reg_tmpに入れる*)
      g'_tail_if oc e1 e2 "ble" "bgt" (reg x) (reg reg_tmp)
  | Tail, IfGE(x, V(y), e1, e2) ->
      g'_tail_if oc e1 e2 "bge" "blt" (reg x) (reg y)
  | Tail, IfGE(x, C(y), e1, e2) ->
      g' oc (NonTail(reg_tmp), Li(y)); (*そのまま即値を比較対象にできないので, reg_tmpに入れる*)
      g'_tail_if oc e1 e2 "bge" "blt" (reg x) (reg reg_tmp)
  | Tail, IfFEq(x, y, e1, e2) ->
      Printf.fprintf oc "\tfeq\t%s, %s, %s\n" (reg reg_tmp) (reg x) (reg y);
      g' oc (Tail,IfEq(reg_tmp,V(reg_zero),e2,e1)) (*零比較にするためにe1,e2を反転*)
  | Tail, IfFLE(x, y, e1, e2) ->
      Printf.fprintf oc "\tfle\t%s, %s, %s\n" (reg reg_tmp) (reg x) (reg y);
      g' oc (Tail,IfEq(reg_tmp,V(reg_zero),e2,e1))
  | NonTail(z), IfEq(x, V(y), e1, e2) ->
      g'_non_tail_if oc (NonTail(z)) e1 e2 "beq" "bne" (reg x) (reg y)
  | NonTail(z), IfEq(x, C(y), e1, e2) ->
      g' oc (NonTail(reg_tmp), Li(y)); (*そのまま即値を比較対象にできないので, reg_tmpに入れる*)
      g'_non_tail_if oc (NonTail(z)) e1 e2 "beq" "bne" (reg x) (reg reg_tmp)
  | NonTail(z), IfLE(x, V(y), e1, e2) ->
      g'_non_tail_if oc (NonTail(z)) e1 e2 "ble" "bgt" (reg x) (reg y)
  | NonTail(z), IfLE(x, C(y), e1, e2) ->
      g' oc (NonTail(reg_tmp), Li(y)); (*そのまま即値を比較対象にできないので, reg_tmpに入れる*)
      g'_non_tail_if oc (NonTail(z)) e1 e2 "ble" "bgt" (reg x) (reg reg_tmp)
  | NonTail(z), IfGE(x, V(y), e1, e2) ->
      g'_non_tail_if oc (NonTail(z)) e1 e2 "bge" "blt" (reg x) (reg y)
  | NonTail(z), IfGE(x, C(y), e1, e2) ->
      g' oc (NonTail(reg_tmp), Li(y)); (*そのまま即値を比較対象にできないので, reg_tmpに入れる*)
      g'_non_tail_if oc (NonTail(z)) e1 e2 "bge" "blt" (reg x) (reg reg_tmp)
  | NonTail(z), IfFEq(x, y, e1, e2) ->
      (*g'_non_tail_if oc (NonTail(z)) e1 e2 "fbe" "fbne" (reg x) (reg y)*)
      Printf.fprintf oc "\tfeq\t%s, %s, %s\n" (reg reg_tmp) (reg x) (reg y);
      g' oc (NonTail(z),IfEq(reg_tmp,V(reg_zero),e2,e1)) (*零比較にするためにe1,e2を反転*)
  | NonTail(z), IfFLE(x, y, e1, e2) ->
      (*g'_non_tail_if oc (NonTail(z)) e1 e2 "fble" "fbg" (reg x) (reg y)*)
      Printf.fprintf oc "\tfle\t%s, %s, %s\n" (reg reg_tmp) (reg x) (reg y);
      g' oc (NonTail(z),IfEq(reg_tmp,V(reg_zero),e2,e1)) (*零比較にするためにe1,e2を反転*)

  (*ハード実装のライブラリ関数呼び出し*)
   | Tail, CallDir(Id.L(x), ys, zs) when (strip_mincaml x) = "print_byte" -> 
    (assert((List.length zs) = 0);
        Printf.fprintf oc "\t%s\t%s\n" "out8" (reg (List.nth ys 0));
        Printf.fprintf oc "\tret\n")
  | (NonTail(a), CallDir(Id.L(x), ys, zs)) when M.mem (strip_mincaml x) finlib2op (*fin_hardlibの場合*) -> (*これらもtailに対応できるようにしたほうがいい*)
    assert((List.length ys) = 0);
    Printf.fprintf oc "\t%s\t%s, %s\n" (M.find (strip_mincaml x) finlib2op) (reg a) (reg (List.nth zs 0))
  | (NonTail(a), CallDir(Id.L(x), ys, zs)) when M.mem (strip_mincaml x) iinlib2op (*iin_hardlibの場合*) -> 
      assert((List.length zs) = 0);
      Printf.fprintf oc "\t%s\t%s, %s\n" (M.find (strip_mincaml x) iinlib2op) (reg a) (reg (List.nth ys 0))
  | (NonTail(a), CallDir(Id.L(x), ys, zs)) when List.mem (strip_mincaml x) io_hardlib (*io_hardlibの場合*) -> 
      (match (strip_mincaml x) with 
        | "read_int" | "read_float" -> 
          (assert((List.length ys) = 0);assert((List.length zs) = 0);
            Printf.fprintf oc "\t%s\t%s\n" "in32" (reg a))
        | "print_byte" -> 
          (assert((List.length zs) = 0);
          Printf.fprintf oc "\t%s\t%s\n" "out8" (reg (List.nth ys 0)))
        | _ -> assert(false)
      ) 
  | (dest, CallDir(Id.L(x), ys, zs)) when List.mem (strip_mincaml x) ["fless";"fequal"] -> 
    assert((List.length ys) = 0);
    let a = (get_int_dest dest) in 
    let opcode = 
      (match (strip_mincaml x) with 
        | "fless" -> "fle" (*いったん嘘実装*)
        | "fequal" -> "feq"
        | _ -> assert(false)
      ) in 
    Printf.fprintf oc "\t%s\t%s, %s, %s\n" opcode (reg a) (reg (List.nth zs 0)) (reg (List.nth zs 1));
    (if is_tail dest then Printf.fprintf oc "\tret\n")
  | (dest, CallDir(Id.L(x), ys, zs)) when List.mem (strip_mincaml x) ["fispos";"fisneg";"fiszero"] -> 
      assert((List.length ys) = 0);
      let a = (get_int_dest dest) in 
      (match (strip_mincaml x) with 
        | "fispos" -> Printf.fprintf oc "\tfle\t%s, %s, %s\n" (reg a) (reg reg_fzero) (reg (List.nth zs 0))
        | "fisneg" -> Printf.fprintf oc "\tfle\t%s, %s, %s\n" (reg a) (reg (List.nth zs 0)) (reg reg_fzero)
        | "fiszero" -> Printf.fprintf oc "\tfeq\t%s, %s, %s\n" (reg a) (reg (List.nth zs 0)) (reg reg_fzero)
        | _ -> assert(false));
        (if is_tail dest then Printf.fprintf oc "\tret\n")
  (* 関数呼び出しの仮想命令の実装 (caml2html: emit_call) *)  
  | Tail, CallCls(x, ys, zs) -> (* 末尾呼び出し (caml2html: emit_tailcall) *)
      g'_args oc [(x, reg_cl)] ys zs;
      Printf.fprintf oc "\tlw\t%s, 0(%s)\n" (reg reg_tmp) (reg reg_cl); 
      Printf.fprintf oc "\tjr\t%s\n" (reg reg_tmp)
  | Tail, CallDir(Id.L(x), ys, zs) -> (* 末尾呼び出し *)
      g'_args oc [] ys zs;
      Printf.fprintf oc "\tj\t%s\n" x
  | NonTail(a), CallCls(x, ys, zs) ->
      g'_args oc [(x, reg_cl)] ys zs;
      let ss = stacksize () in
      Printf.fprintf oc "\tsw\t%s, %d(%s)\n" "ra" (ss - addr_step) (reg reg_sp); (*raをスタックに乗せる*) (*とりあえずreg_tmpを介さず直接やるように変更*)
      Printf.fprintf oc "\taddi\t%s, %s, %d\n" (reg reg_sp) (reg reg_sp) ss;
      Printf.fprintf oc "\tlw\t%s, 0(%s)\n" (reg reg_tmp) (reg reg_cl);
      Printf.fprintf oc "\tjalr\t%s\n" (reg reg_tmp); (*クロージャアドレスに飛ぶ*)
      Printf.fprintf oc "\taddi\t%s, %s, %d\n" (reg reg_sp) (reg reg_sp) (-ss);
      Printf.fprintf oc "\tlw\t%s, %d(%s)\n" "ra" (ss - addr_step) (reg reg_sp); (* raを復帰, 仮移動*)
      if List.mem a allregs && a <> regs.(0) then
        Printf.fprintf oc "\tmv\t%s, %s\n" (reg a) (reg regs.(0))
      else 
        (if List.mem a allfregs && a <> fregs.(0) then
        Printf.fprintf oc "\tmv\t%s, %s\n" (reg a) (reg fregs.(0)))
  | (NonTail(a), CallDir(Id.L(x), ys, zs)) ->
      (g'_args oc [] ys zs; (*引数の設定*)
      let ss = stacksize () in
      Printf.fprintf oc "\tsw\t%s, %d(%s)\n" "ra" (ss - addr_step) (reg reg_sp); (*raをスタックに乗せる*)
      Printf.fprintf oc "\taddi\t%s, %s, %d\n" (reg reg_sp) (reg reg_sp) ss;
      Printf.fprintf oc "\tjal\t%s\n" x;
      Printf.fprintf oc "\taddi\t%s, %s, %d\n" (reg reg_sp) (reg reg_sp) (-ss);
      Printf.fprintf oc "\tlw\t%s, %d(%s)\n" "ra" (ss - addr_step) (reg reg_sp);
      if List.mem a allregs && a <> regs.(0) then
        Printf.fprintf oc "\tmv\t%s, %s\n" (reg a)  (reg regs.(0))
      else 
        (if List.mem a allfregs && a <> fregs.(0) then
        Printf.fprintf oc "\tmv\t%s, %s\n" (reg a) (reg fregs.(0))))

and g'_tail_if oc e1 e2 b bn x1 x2 = (*比較対象x1,x2を取るように変更済み*)
  let b_else = Id.genid (b ^ "_else") in
  Printf.fprintf oc "\t%s\t%s, %s, %s\n" bn x1 x2 b_else;
  let stackset_back = !stackset in (*stacksetを保存*)
  g oc (Tail, e1);
  Printf.fprintf oc "%s:\n" b_else;
  stackset := stackset_back; (*stacksetを復帰*)
  g oc (Tail, e2)
and g'_non_tail_if oc dest e1 e2 b bn x1 x2 = (*比較対象x1,x2を取るように変更済み*)
  let b_else = Id.genid (b ^ "_else") in
  let b_cont = Id.genid (b ^ "_cont") in
  Printf.fprintf oc "\t%s\t%s, %s, %s\n" bn x1 x2 b_else;
  let stackset_back = !stackset in
  g oc (dest, e1);
  let stackset1 = !stackset in
  Printf.fprintf oc "\tj\t%s\n" b_cont;
  Printf.fprintf oc "%s:\n" b_else;
  stackset := stackset_back;
  g oc (dest, e2);
  Printf.fprintf oc "%s:\n" b_cont;
  let stackset2 = !stackset in
  stackset := S.inter stackset1 stackset2
and g'_args oc x_reg_cl ys zs = (*iter部分は修正済み, fold部分に修正が必要かは要確認*)
  let (i, yrs) =
    List.fold_left
      (fun (i, yrs) y -> (i + 1, (y, regs.(i)) :: yrs))
      (0, x_reg_cl)
      ys in
  List.iter
    (fun (y, r) -> Printf.fprintf oc "\tmv\t%s, %s\n" (reg r) (reg y))
    (shuffle reg_sw yrs);
  let (d, zfrs) =
    List.fold_left
      (fun (d, zfrs) z -> (d + 1, (z, fregs.(d)) :: zfrs))
      (0, [])
      zs in
  List.iter
    (fun (z, fr) -> Printf.fprintf oc "\tmv\t%s, %s\n" (reg fr) (reg z))
    (shuffle reg_fsw zfrs)

let h oc { name = Id.L(x); args = _; fargs = _; body = e; ret = _ } =
  Printf.fprintf oc "%s:\n" x;
  stackset := S.empty;
  stackmap := [];
  g oc (Tail, e)

let is_space = ["";"\n";"\t";"\r"]
let r = Str.regexp "#.*" 
let r_text = Str.regexp ".text"
let strip_comment s = Str.global_replace r_text "" (Str.global_replace r "" s) (*コメントと重複した.textを除去*)

  let rec cp_line ic oc = 
    try 
      let line = input_line ic in 
      let line = strip_comment line in 
      if not(List.mem line is_space) then( 
      output_string oc line;
      output_char oc '\n');
      cp_line ic oc
  with | End_of_file -> close_in ic;()

let output_lib oc file = 
  let inchan = open_in file in 
  cp_line inchan oc

let r1 = Str.regexp_string "."
let process s = Str.global_replace r1 "" s
let output_globals oc ic = 
  (*preprocess*)
  let _ = input_line ic in (*ignore .data*)
  let rec get_a_label _ = 
    let _ = input_line ic in (*ignore .align*)
    let _ = input_line ic in (*ignore .global label*)
    let label = input_line ic in (*label: *)
    let space = (input_line ic) in (*\t.space $size*)
    output_string oc (label^" "^(process space));
    output_char oc '\n';
    try get_a_label() with | End_of_file -> close_in ic;()
  in get_a_label()

let rec sizeof (gvname,t) =
  match t with 
  | Type.Unit | Type.Bool | Type.Int | Type.Float -> 1 (*Floatのサイズはアーキテクチャによるが...*)
  | Type.Fun _ -> assert(false)
  | Type.Tuple tl ->  (* いまはtupleがheap上にあるのでアドレスサイズの4 *)
      List.fold_left (fun acc t -> acc + (sizeof ("",t))) 0 tl (*ここの変数名はどうするのが正しいのか?*) 
  | Type.Array t -> 
    if gvname = "" then 1 (*再帰の内側なのでarrayはアドレスのサイズに*)
    else (try let len = Hashtbl.find Typing.arraysize_env gvname in len * (sizeof ("",t)) with | Not_found -> failwith (Format.sprintf "Could not calculate array size: %s" gvname))
  | Type.Var t -> 
    (match !t with 
      | None -> failwith (Format.sprintf "Could not calculate array size: %s" gvname)
      | Some t' -> sizeof (gvname,t')) 
  
let print_header oc _ =
  Printf.fprintf oc "\tlui\t%s, 1\n" (reg Asm.regs.(0)); (* word addr なので4分の1にしておく *)
  Printf.fprintf oc "\tlui\t%s, 128\n" (reg Asm.regs.(1));
  Printf.fprintf oc "\tj\tmin_caml_start\n"
      
let print_datasec oc data = 
   (*本当はここで判定じゃないか*)
   (if Option.is_some (!Typing.global_chan) then
    let gval_list = M.bindings !Typing.gvalenv in 
    Printf.fprintf oc "\t.data\n";
    List.iter (fun (gvname,t) -> Printf.fprintf oc "%s:\tspace %d\n" ("min_caml_"^gvname) (sizeof (gvname,t))) gval_list);
  (if data <> [] then
  List.iter
  (fun (Id.L(x), d) ->
    let innerexp32 = (getf d) in 
    (* let innerexpint = (Int32.to_int innerexp32) in  *)
    let innerunit = Int32.unsigned_to_int innerexp32 in 
    match innerunit with 
    | None -> failwith "cannot convert float to unsigned int"
    | Some ux -> 
      let upper20, lower12 = split_upper20_lower12 ux in  
      (* (Printf.printf "%s = %lx -> %016x\t%08x, %08x\t# %f\n" x innerexp32 ux upper20 lower12 d) ; *)
      (Hashtbl.add ftable x (upper20, lower12)) (*とりあえずlabel -> 内部表現の上位と下位の組を求められるハッシュ*))
      data)

let print_lib is_min_rt oc = 
   (*min-rt/globals.Sのようにspace確保を出力*)
   (if is_min_rt then output_globals oc (open_in "min-rt/globals.s"));
   (*headerを出力*)
   Printf.fprintf oc "\t.text\n";
   print_header oc ();
   (*libmincaml.Sを出力*)
   output_lib oc "Myarch/newlibmincaml.s"
   (*関数本体の出力*)

let f is_min_rt oc (Prog(data, fundefs, e)) =
  Format.eprintf "generating assembly...@.";
  
  print_datasec oc data;
  print_lib is_min_rt oc;

  List.iter (fun fundef -> h oc fundef) fundefs;
  Printf.fprintf oc "\t.globl min_caml_start\n"; 
  (* Printf.fprintf oc "\t.align 2\n"; *)
  Printf.fprintf oc "min_caml_start: # main entry point\n";
  Printf.fprintf oc "\tmv\t%s, %s\n" (reg reg_sp) (reg Asm.regs.(0));
  Printf.fprintf oc "\tmv\t%s, %s\n" (reg reg_hp) (reg Asm.regs.(1));

  (* Printf.fprintf oc "\taddi %s, %s, %d\n" (reg reg_sp) (reg reg_sp) 16;
  Printf.fprintf oc "\tsw\tra, -8(%s)\n" (reg reg_sp); *)
  (* Printf.fprintf oc "\tsw\ts0, -4(%s)\n" (reg reg_sp);*)
  (* Printf.fprintf oc "\taddi s0, %s, %d\n" (reg reg_sp) (-16);  新しいfpをs0に *)
  Printf.fprintf oc "#\tmain program starts\n";
  stackset := S.empty;
  stackmap := [];
  g oc (NonTail("_R_0"), e);
  Printf.fprintf oc "#\tmain program ends\n";
  (* Printf.fprintf oc "\tlw\tra, -8(%s)\n" (reg reg_sp);
  (* Printf.fprintf oc "\tlw\ts0, -4(%s)\n" (reg reg_sp); *)
  Printf.fprintf oc "\taddi %s, %s, %d\n" (reg reg_sp) (reg reg_sp) (-16); *)
  Printf.fprintf oc "endp:\n";
  Printf.fprintf oc "\tj endp\n"