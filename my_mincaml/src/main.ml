(*オプション用パラメータ*)
let limit = ref 1000
let inrep = ["parser"; "typing"; "tuple_args"; "knormal"; "alpha"; "cse"; "iter"; "closure"; "virtual"; "simm"; "dfa"; "regalloc" ] (*出力できる中間表現一覧*)
let opt = ["tuple_args";"alpha"; "cse"; "beta"; "elim"; "inline"; "constfold";"while"] (*今ある最適化一覧*)
let lib = ref []
let is_min_rt = ref false
let minrt_lib = ["RV32/miniMLRuntime.ml"(*;"raytracer/globals.ml"*)]
let file_entrypoints = ref []

let bin_exec = (fun f -> Printf.sprintf "gcc -g -O2 -Wall -m32 %s.s x86/libmincaml.S stub.c -lm -o %s; ./%s" f f f)
let enable_exec = ref false
let enable_ssa = ref false

let inrep_env = ref (List.fold_left (fun inrep_env s -> M.add s None inrep_env) M.empty inrep)
let inrep_flag = ref false 
let opt_env = ref (List.fold_left (fun opt_env s -> M.add s true opt_env) M.empty opt)

let max_inline_threshold = ref 0


exception Known_error

let print_p msg maybe_logchan parse = (*print func for Parser.t*)
    match maybe_logchan with
  | None -> parse
  | Some(logchan) -> 
      let ppf = Format.formatter_of_out_channel logchan in
      Format.pp_print_string ppf ("----- "^msg^"-----");
      Format.pp_print_newline ppf ();
      Syntax.print ppf parse;
      Format.pp_print_newline ppf ();
      Format.pp_print_flush ppf ();
      parse

let print_t msg maybe_logchan parse = (*print func for Type env*)
  match maybe_logchan with
  | None -> parse
  | Some(logchan) -> 
    let ppf = Format.formatter_of_out_channel logchan in
    Format.pp_print_string ppf ("----- "^msg^"-----");
    Format.pp_print_newline ppf ();
    Typing.print ppf ();
    Format.pp_print_newline ppf ();
    Format.pp_print_newline ppf ();
    Format.pp_print_flush ppf ();
    parse

let print_k nident msg maybe_logchan is_anormal knormal = (*print func for KNormal.t*)
match maybe_logchan with
  | None -> knormal
  | Some(logchan) -> 
      let ppf = Format.formatter_of_out_channel logchan in
      Format.pp_print_string ppf ("----- "^msg^"-----");
      Format.pp_print_newline ppf ();
      KNormal.print ppf nident is_anormal knormal;
      Format.pp_print_newline ppf ();
      Format.pp_print_newline ppf ();
      Format.pp_print_flush ppf ();
      knormal

let print_c msg maybe_logchan closure = (*print func for Closure.prog*)
match maybe_logchan with
  | None -> closure
  | Some(logchan) -> 
      let ppf = Format.formatter_of_out_channel logchan in
      Format.pp_print_string ppf ("----- "^msg^"-----");
      Format.pp_print_newline ppf ();
      Closure.print ppf closure;
      Format.pp_print_newline ppf ();
      Format.pp_print_newline ppf ();
      Format.pp_print_flush ppf ();
      closure

let print_a msg maybe_logchan asm = (*print func for Asm.prog*)
match maybe_logchan with
  | None -> asm
  | Some(logchan) -> 
      let ppf = Format.formatter_of_out_channel logchan in
      Format.pp_print_string ppf ("----- "^msg^"-----");
      Format.pp_print_newline ppf ();
      Asm.print ppf asm;
      Format.pp_print_newline ppf ();
      Format.pp_print_newline ppf ();
      Format.pp_print_flush ppf ();
      asm



let rec iter n e = (* 最適化処理をくりかえす (caml2html: main_iter) *)
  flush_all ();
  Format.pp_print_flush Format.std_formatter ();
  Format.eprintf "iteration %d@." n;
  if n = 0 then e else
  let e2 =  (Assoc.f e) in 
  let e2 = (print_k 2 "After inline" (M.find "iter" !inrep_env) true e2) in 
  Array_access.f e2;
  let e' = 
    (ConstFold.f (M.find "constfold" !opt_env)
      (print_k 2 "After inline" (M.find "iter" !inrep_env) true
        (Inline.f (M.find "inline" !opt_env)
          (Elim.f (M.find "elim" !opt_env)
            (Beta.f (M.find "beta" !opt_env)
              (Cse.f (M.find "cse" !opt_env) true
                e2)))))) in (*従来の順番はElim.f (ConstFold.f (Inline.f ((Assoc.f (Beta.f e)))))*) (*試しに変更した順番は(ConstFold.f (Inline.f (Elim.f (Beta.f (Cse.f (Assoc.f e))))))*)
  if e = e' then e else (* 不動点に達したらそこでイテレーションを打ち切り *)
  iter (n - 1) e' 

let rec iter2 mag_list e = 
  match mag_list with 
    | [] -> e
    | h::ls -> 
      (let t = int_of_float (h *. (float_of_int !max_inline_threshold)) in 
      Format.eprintf "iteration with inline threshold = %d@." t;
      Inline.threshold := t;
      let e' = iter !limit e in 
      iter2 ls e'
      )


let lexbuf (outchan, _(*kadai_logchans*)) l = (* バッファをコンパイルしてチャンネルへ出力する (caml2html: main_lexbuf) *)
  try (*kadai_logchansは課題で指定された中間表現のために使うかもしれないので削除しないで*)
  (*let logchan_before_TACE, logchan_after_TACE = kadai_logchans.(0), kadai_logchans.(1) in*)
    Id.counter := 0;
    Typing.extenv := M.empty;
    Printf.eprintf "is_min_rt : %b\n" !is_min_rt; 
    let k = (print_t "Type env" (M.find "typing" !inrep_env)
    (Typing.f
      (print_p "After Parser" (M.find "parser" !inrep_env)
          (Parser.exp Lexer.token l )))) in 
      (* Format.eprintf "fin typing\n";*)
    Printf.eprintf "enable while : %b\n" !KNormal.enable_while;
    let k2 = 
      (print_k 2 "After CSE" (M.find "cse" !inrep_env) true 
        (Beta.f true
          (Cse.f (M.find "cse" !opt_env) false 
            (Assoc.f (print_k 2 "After Tuple_args" (M.find "tuple_args" !inrep_env) false 
              (Tuple_args.f (M.find "tuple_args" !opt_env)
                (print_k 2 "After Alpha" (M.find "alpha" !inrep_env) false 
                  (Alpha.f (M.find "alpha" !opt_env)
                    (print_k 2 "After KNormal" (M.find "knormal" !inrep_env) false 
                      (KNormal.f 
                        k)))))))))) in 
    Array_access.f k2;
    let Prog(ftable,fundefs,(e,_)) as k3 = (Virtual.f
    (print_c "After Closure" (M.find "closure" !inrep_env)
      (Closure.f
        (print_k 2 "After iter" (M.find "iter" !inrep_env) true 
          (iter2 [(*0.1;0.4;0.7;*)1.0]
            k2))))) in 
        
      let globals_knormal = (Assoc.f (Alpha.f false (KNormal.f !Typing.e_tmp))) in 
      (* KNormal.print Format.std_formatter 2 globals_knormal; *)
      Printf.printf "fin globals knormal\n";
      let k3 = GlobalsConvert.f globals_knormal k3 in 
      Printf.printf "fin globals convert\n";
      let normal_backend e = 
        Emit.f !is_min_rt outchan 
          (print_a "After Regalloc" (M.find "regalloc" !inrep_env)
            (RegAlloc.f e)) in 
      let ssa_backend _ = 
        Printf.eprintf "begin bpschedule\n";
        Bpschedule.f ();
        (* Printf.eprintf "begin braid\n";
        Braid.f (); *)
        Printf.eprintf "begin regssa\n";
        Regssa.f ();
        Printf.eprintf "begin emitssa\n";
        Emitssa.f !is_min_rt outchan in 
            
      let k4 = 
        (Dfa.f (M.find "dfa" !inrep_env)  
          (print_a "After Simm" (M.find "simm" !inrep_env)
            (Simm.f
              (print_a "After Virtual" (M.find "virtual" !inrep_env)
                k3)))) in 
      Printf.eprintf "enable_ssa ? : %b\n" !enable_ssa;
      if !enable_ssa then ssa_backend () else normal_backend k4
  with
  | Syntax.Error -> (*パースエラーを適切にフォーマットして出力*)
    (let pos = Lexing.lexeme_start_p l in 
      let col = pos.pos_cnum - pos.pos_bol in
      let pos2 = Lexing.lexeme_end_p l in 
      let col2 = pos2.pos_cnum - pos2.pos_bol in
      let nrow = pos.pos_lnum in 
      let rows = String.split_on_char '\n' (Bytes.to_string (Bytes.sub l.lex_buffer 0 l.lex_buffer_len)) in
        Printf.eprintf "%s%d%s%d%s%d\n%d%s%s\n%s\027[1m\027[31m%s\027[0m\n" "\027[1m\027[31mError\027[0m: Syntax error at line " nrow ", characters " col "-" col2
        nrow " | " (List.nth rows (max 0 (nrow - 1))) (String.make (col+(String.length (string_of_int nrow))+3) ' ') (String.make (max 0 (col2-col)) '^');raise Known_error)
  | Typing.Error ((r1,r2),_(*e1*),t1,t2) -> Printf.eprintf "Typing error at %s: fail to unify %s and %s\n" (Typing.e_at (r1,r2)) (Type.to_string t1) (Type.to_string t2); (*Syntax.print Format.std_formatter e1;*)raise Known_error
  | Typing.Cannot_overload (op,case) -> Printf.eprintf "Cannot overload %s unless it's %s\n" op case; raise Known_error
  | Virtual.Not_implemented(msg) -> Printf.eprintf "Virtual not implemented: case of %s\n" msg;raise Known_error
  | e -> raise(e)


  (*旧仕様 : 出力する中間表現の拡張子 let extentions = [|".parsed";".normalized";".before_CSE";".after_CSE";".closure";".myasm"|] *)
  (*新仕様 : 課題の指定以外ではすべて同じファイル(XXX.inrep)に中間表現を出力*)
  let inrep_ext = ".inrep"
  let extentions = [|(*".before_TACE";".after_TACE"*)|] (*ここでは特定の課題用の出力ファイルの拡張子を指定することに*)

  (*補助関数の定義*)
  let update_channel newchannel = 
    List.iter (fun x -> match (M.find x !inrep_env) with | None -> () | Some(_) -> inrep_env := M.add x (Some(newchannel)) !inrep_env) inrep
          
let string s = 
  let f = "from_string" in
  if !inrep_flag then let inrep_chan = open_out (f ^ inrep_ext) in (update_channel inrep_chan) ; (*出力すべき中間表現があれば, 出力ファイルのチャンネルを開き, stdoutではなくそのファイルに出力するように環境を上書き*)
    let kadai_logchans =  (Array.map (fun ext -> open_out (f ^ ext)) extentions) in
  lexbuf (stdout,kadai_logchans) (Lexing.from_string s) (* 文字列をコンパイルして標準出力に表示する (caml2html: main_string) *)

let rec read_line ic acc_string rnum = 
  try 
    let line = input_line ic in 
    read_line ic (acc_string^line^"\n") (rnum+1)
with | End_of_file -> close_in ic;Printf.eprintf "read_line count : %d\n" rnum;(file_entrypoints := !file_entrypoints@[rnum]);(acc_string,rnum)

(*pathからファイル名を取得して, minrtやmin-rtかを調べる*)
let r_slash = Str.regexp_string "/"
let get_filename s = 
  let path_list = Str.split r_slash s in 
  List.nth path_list (max 0 ((List.length path_list) - 1))

let file f = (* ファイルをコンパイルしてファイルに出力する (caml2html: main_file) *)
  Printf.eprintf "%s\n" f;
  (if (get_filename f) = "minrt" then (Printf.eprintf "case minrt\n";(lib := U.list_union minrt_lib !lib); Typing.global_chan := Some("raytracer/globals.ml"))
  else if (get_filename f) = "min-rt" then (Printf.eprintf "case min-rt\n";is_min_rt := true));
  let inchan = open_in (f ^ ".ml") in
  let input_string, rnum = List.fold_left (fun (acc_string,acc_rnum) file -> (read_line (open_in file) acc_string acc_rnum)) ("",0) !lib in 
  let input_string,_ = read_line inchan input_string rnum in 
  (* (try !Typing.is_global := (fun mloc -> ((List.nth !file_entrypoints 0 ) < mloc) && (mloc <= (List.nth !file_entrypoints 1))) with | Failure _ -> ()); globals判定の応急措置 *)
  let outchan = open_out (f ^(if !enable_ssa then "_ssa" else "")^".s") in
  (if !inrep_flag then let inrep_chan = open_out (f ^ inrep_ext) in (update_channel inrep_chan)) ; (*出力すべき中間表現があれば, 出力ファイルのチャンネルを開き, stdoutではなくそのファイルに出力するように環境を上書き*)
  Option.iter (fun _ -> let newchan = open_out_bin (f ^ ".dot") in inrep_env := M.add "dfa" (Some(newchan)) !inrep_env)  (M.find "dfa" !inrep_env);
  let kadai_logchans =  (Array.map (fun ext -> open_out (f ^ ext)) extentions) in
  try
    lexbuf (outchan,kadai_logchans) (Lexing.from_string input_string);
    close_in inchan;
    close_out outchan;
    Array.iter (fun oc -> close_out oc) kadai_logchans;
    (* Syntax.print Format.std_formatter !Typing.e_tmp; *)
    (* KNormal.print Format.std_formatter 2 (Assoc.f (Alpha.f true (KNormal.f !Typing.e_tmp))); *)
    if !enable_exec then ignore(Sys.command(bin_exec f));
    ()
  with 
  | Known_error -> (
    (* close_in inchan;  *)
    close_out outchan; 
    Array.iter (fun oc -> close_out oc) kadai_logchans;
    (*ここでいらない出力ファイルを削除すればよさそう*)
    (* Sys.remove (f ^(if !enable_ssa then "_ssa" else "")^ ".s");
    Array.iter (fun ext -> Sys.remove (f ^ ext)) extentions;  *)
    (*前の出力も同じファイル名だったら消えてしまう. それはしょうがない.*)
    (*エラー対処をlexbufでしているので, exit 1. fatal errorは起こらない.*) 
    exit 1)
  | e -> (
    (* close_in inchan;  *)
    close_out outchan; 
    Array.iter (fun oc -> close_out oc) kadai_logchans;
    (*ここでいらない出力ファイルを削除すればよさそう*)
    (* Sys.remove (f ^(if !enable_ssa then "_ssa" else "")^ ".s");
    Array.iter (fun ext -> Sys.remove (f ^ ext)) extentions;  *)
    (*前の出力も同じファイル名だったら消えてしまう. それはしょうがないかな.*)
    raise e (*lexbufでエラー処理をしていないので, エラーを送出. fatal errorが起こるかも.*) )

let () = (* ここからコンパイラの実行が開始される (caml2html: main_entry) *)
(List.iter (fun s -> inrep_env := M.add s (None) !inrep_env) inrep);
(List.iter (fun s -> opt_env := M.add s true !opt_env) opt);
is_min_rt := false;
  let files = ref [] in
  Arg.parse
    [("-inline", Arg.Int(fun i -> max_inline_threshold := i), "maximum size of functions inlined");
     ("-iter", Arg.Int(fun i -> limit := i), "maximum number of optimizations iterated");
     ("-inrep",Arg.Rest(fun s -> if M.mem s !inrep_env then (inrep_flag := true;inrep_env := M.add s (Some(stderr)) !inrep_env) else (Format.eprintf "Unknown intermediate representation: %s\n" s)), "specify intermediate representations to output"); (*ここでは仮にstderrに出力されるように登録*)
     ("-inrep_all",Arg.Unit(fun _ -> (inrep_flag := true; (List.iter (fun s -> if s <> "dfa" then  (inrep_env := M.add s (Some(stderr)) !inrep_env)) inrep))), "output all intermediate representations, except dfa");
     ("-optoff",Arg.Symbol(opt, (fun s -> (if s = "alpha" then Alpha.enable_in_inline := false else if s = "while" then KNormal.enable_while := false);opt_env := M.add s false !opt_env))," Disable specific optimization (only one argument are allowed to path to each optoff option)");
     ("-lib",Arg.String(fun s -> lib := s::!lib), "Use library") ;
     ("-minrt",Arg.Unit(fun _ -> (Printf.eprintf "case minrt\n";lib := minrt_lib@(!lib); Typing.global_chan := Some("raytracer/globals.ml"))),"In case of raytracer, use this option if the file name isn't minrt ");
     ("-exec",Arg.Unit(fun _ -> enable_exec := true),"Compile and Exec x86 program");
     ("-ssa",Arg.Unit(fun _ -> enable_ssa := true;(inrep_flag := true;inrep_env := M.add "dfa" (Some(stderr)) !inrep_env)),"Use ssa backend")
     ]
    (fun s -> files := !files @ [s])
    ("Mitou Min-Caml Compiler (C) Eijiro Sumii\n" ^
     Printf.sprintf "usage: %s [-inline m] [-iter n] ...filenames without \".ml\"..." Sys.argv.(0));
  List.iter
    (fun f -> ignore (file f))
    !files