open Emit

let counter = ref 0
let outlib = ["create_array";"create_float_array";"init_array";"init_float_array"]

let emit_label_with_comment oc label comment = 
  Printf.fprintf oc "%s:\t#%s\n" label comment

let emit_label_only_row oc label = (*with comment版もあるといいな*)
  Printf.fprintf oc "%s:\n" label

let emit_rows oc list = 
  List.iter (fun row -> Printf.fprintf oc "%s\n" row) list

let emit_op1 oc opcode dest op1 = 
  Printf.fprintf oc "\t%s %s, %s\n" opcode dest op1
let emit_op2 oc opcode dest op1 op2 = 
  Printf.fprintf oc "\t%s %s, %s, %s\n" opcode dest op1 op2
let emit_op2_imm oc opcode dest op1 op2 = 
  Printf.fprintf oc "\t%s %s, %s, %d\n" opcode dest op1 op2
let emit_nodest1 oc opcode op1 = 
  Printf.fprintf oc "\t%s %s\n" opcode op1
let emit_condj oc opcode op1 op2 jlabel = 
  Printf.fprintf oc "\t%s %s, %s, %s\n" opcode op1 op2 jlabel
let emit_memacc oc opcode dest op2 op1 = 
  Printf.fprintf oc "\t%s %s, %d(%s)\n" opcode dest op2 op1

let mv = "mv"
let j = "j"
let sw = "sw"
let add = "add"
let addi = "addi"
let ret = "ret"
let bne = "bne"

let emit_create_array oc lentry lcont lloop arg1 is_inline = 
  let loopreg = reg Asm.reg_tmp in 
  let retreg = reg Asm.regs.(0) in 
  (* let arg1 = Asm.regs.(1) in  *)
  let hp = reg Asm.reg_hp in 
  let emit_op1 = emit_op1 oc in 
  emit_label_only_row oc lentry;
  emit_op1 mv loopreg retreg;
  emit_op1 mv retreg hp;
  emit_nodest1 oc j lloop;
  emit_label_only_row oc lcont;
  emit_memacc oc sw arg1 0 hp;
  emit_op2_imm oc addi loopreg loopreg (-1);
  emit_op2_imm oc addi hp hp 1;
  emit_label_only_row oc lloop;
  emit_condj oc bne loopreg (reg Asm.reg_zero) lcont;
  (if not(is_inline) then emit_nodest1 oc ret "") 

let emit_init_array oc lentry lcont lloop arg2 is_inline = 
  let loopreg = reg Asm.reg_tmp in 
  let retreg = reg Asm.regs.(0) in 
  let arg1 = reg Asm.regs.(1) in 
  let loopfinreg = reg Asm.regs.(3) in 
  let emit_op1 = emit_op1 oc in 
  emit_label_only_row oc lentry;
  emit_op1 mv loopreg retreg;
  emit_op2 oc add loopfinreg retreg arg1;
  emit_nodest1 oc j lloop;
  emit_label_only_row oc lcont;
  emit_memacc oc sw arg2 0 loopreg;
  emit_op2_imm oc addi loopreg loopreg 1;
  emit_label_only_row oc lloop;
  emit_condj oc bne loopreg loopfinreg lcont;
  (if not(is_inline) then emit_nodest1 oc ret "")

let set_label_to_create_array emit_func oc fname arg1 is_inline = 
  let suffix = (if is_inline then (incr counter;Printf.sprintf ".%d" !counter) else "") in 
  let lentry = "min_caml_"^fname^suffix in 
  let lcont = fname^"_loop_cont"^suffix in 
  let lloop = fname^"_loop"^suffix in 
  emit_func oc lentry lcont lloop arg1 is_inline
  (* Printf.fprintf oc "\n" *)

let emit_int_create_array oc is_inline = 
  let fname = "create_array" in 
  set_label_to_create_array emit_create_array oc fname (reg Asm.regs.(1)) is_inline

let emit_float_create_array oc is_inline = 
  let fname = "create_float_array" in 
  set_label_to_create_array emit_create_array oc fname (reg Asm.fregs.(0)) is_inline

let emit_int_init_array oc is_inline = 
  let fname = "init_array" in 
  set_label_to_create_array emit_init_array oc fname (reg Asm.regs.(2)) is_inline
 
let emit_float_init_array oc is_inline = 
  let fname = "init_float_array" in 
  set_label_to_create_array emit_init_array oc fname (reg Asm.fregs.(0)) is_inline

let emit_outlibs oc = 
  emit_int_create_array oc false;
  emit_float_create_array oc false;
  emit_int_init_array oc false;
  emit_float_init_array oc false