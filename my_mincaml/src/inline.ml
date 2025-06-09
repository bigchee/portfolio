open KNormal
(* インライン展開する関数の最大サイズ (caml2html: inline_threshold) *)
let threshold = ref 0 (* Mainで-inlineオプションによりセットされる *)

let rec is_int_outof_32bit e = (*即値が32bit整数外に出ているかを判定, そもそもmincamlの走るアーキテクチャが32bitなら不必要なはず? *)
if Sys.word_size = 32 then false (*実行環境が32bit*)
else 
  match (fst e) with
  | Int i when (i < U.min_int || i > U.max_int) -> true  
  | IfEq(_,_,e1,e2) | IfLE(_,_,e1,e2) | Let(_,e1,e2)-> (is_int_outof_32bit e1) || (is_int_outof_32bit e2)
  | LetRec({body;_ },e2) -> (is_int_outof_32bit body) || (is_int_outof_32bit e2)
  | LetTuple(_,_,e) -> is_int_outof_32bit e
  | _ -> false

let rec insert_cont_just_before_while fname args ys e2 = 
  match (fst e2) with 
    | While _  -> (*ここに挿入*)
        let tmp = Id.gentmp Type.Unit in 
        let newargs,new_ys = (try 
        let converter = Hashtbl.find KNormal.ht_loopvar_convert (fname,List.map (Ssa.remove_alpha) args) in 
        converter false ys
      with | Not_found -> (args,ys)) in 
        let e2' = Let((tmp,Type.Unit),(Cont(newargs,new_ys),Mloc.dummy),e2), Mloc.dummy in 
          e2'
    | Let(xt,e1,e2') -> 
      let new_e2' = insert_cont_just_before_while fname args ys e2' in 
        Let(xt,e1,new_e2'),snd e2
    | _ -> e2

let rec g env maybe_while_args e =  (* インライン展開ルーチン本体 (caml2html: inline_g) *)
match fst e with
  | IfEq(x, y, e1, e2) -> IfEq(x, y, g env maybe_while_args e1, g env maybe_while_args e2),snd e
  | IfLE(x, y, e1, e2) -> IfLE(x, y, g env maybe_while_args e1, g env maybe_while_args e2),snd e
  | Let(xt, e1, e2) -> Let(xt, g env maybe_while_args e1, g env maybe_while_args e2),snd e
  | LetRec({ name = (x, t); args = yts; body = e1 }, e2) -> (* 関数定義の場合 (caml2html: inline_letrec) *)
      (* (if is_rec then (Printf.printf "is_rec %s [%s]\n" x (U.list_to_string (List.map fst yts));flush stdout)); *)
      (* (let s = size e1 in if 75 < s && s <= 100 then Printf.printf "bug candidate : %s (%d)\n" x s); *)
      let is_mid_rec = KNormal.is_mid_rec (Ssa.remove_alpha x) in 
      let is_tailrec = KNormal.is_tail_rec (Ssa.remove_alpha x) in 
      let env = if (*not(List.mem (Ssa.remove_alpha x) ["solver_rect_fast"]) &&*) (size e1 > !threshold || is_mid_rec || (not(!KNormal.enable_while) && is_tailrec) (*|| (U.strncmp_tail (Ssa.remove_alpha x) "_fast" 5)*) (*|| (U.strncmp (Ssa.remove_alpha x) "trace_" 6) || (U.strncmp (Ssa.remove_alpha x) "create_" 7) || (U.strncmp (Ssa.remove_alpha x) "scan_" 5) || (U.strncmp (Ssa.remove_alpha x) "pretrace_" 9) || (U.strncmp (Ssa.remove_alpha x) "iter_" 5)  || (U.strncmp (Ssa.remove_alpha x) "calc_" 5)  || (U.strncmp (Ssa.remove_alpha x) "solve_" 6)*) (*|| (U.strncmp (Ssa.remove_alpha x) "shadow_" 7) *)(* || (U.strncmp (Ssa.remove_alpha x) "init_" 5) || (U.strncmp (Ssa.remove_alpha x) "setup_" 6) || List.mem (Ssa.remove_alpha x) ["iter_trace_diffuse_rays"(*;"trace_diffuse_ray"*)]*) || List.mem (Ssa.remove_alpha x) [(*"trace_or_matrix_fast";"shadow_check_one_or_group"*)] )then env else M.add x (yts, e1) env in
      (*if is_rec then M.add x (yts, recfunc2while x e1) env*)
      LetRec({ name = (x, t); args = yts; body = g env maybe_while_args e1}, g env maybe_while_args e2),snd e
  | App(x, ys) -> (* 関数適用の場合 (caml2html: inline_app) *)
    if not(M.mem x env) then e
    else  
      (
        (* Printf.printf "find funcapp to known %s\n" x;flush stdout; *)
      (let (zs, e2) = M.find x env in
      (match maybe_while_args with 
        | Some(args) when args = (List.map fst zs) -> e
        | _ -> 
          ((* Format.eprintf "try inlining %s@." x;Format.pp_print_flush Format.err_formatter (); *)
          let is_tailrec = KNormal.is_tail_rec (Ssa.remove_alpha x) in 
          (* Printf.printf "is_rec %s? %b\n" x is_rec;flush stdout; *)
          (if is_tailrec 
            then  (*ここで引数設定 -> loop? e2のなかの引数がα変換されてほしいのかな? *)
              (* let alpha_zs = Id.genids zs in  *)
              (* let tmp = Id.gentmp Type.Unit in 
              let e2' = Let((tmp,Type.Unit),(Cont((List.map fst zs),ys),Mloc.dummy),e2), Mloc.dummy in  *)
              let e2' = insert_cont_just_before_while (Ssa.remove_alpha x) (List.map fst zs) ys e2 in 
              let env' = 
                List.fold_left2
                  (fun env' (z, _(*t*)) y -> M.add z y env') (*xにwhileを使うなら, この引数は使えない*)
                  M.empty
                  zs
                  ys in
              (* let new_e2 = List.fold_right2 (fun zt y acc_e2 -> Let(zt,(Var(y),Mloc.dummy),acc_e2),Mloc.dummy ) zs ys e2' in *)
              Alpha.g env' e2'
              (* e2 *)
            else 
              (let env' = 
                List.fold_left2
                  (fun env' (z, _(*t*)) y -> M.add z y env') (*xにwhileを使うなら, この引数は使えない*)
                  M.empty
                  zs
                  ys in
                let e' = Alpha.g env' e2 in 
              if(is_int_outof_32bit e') 
                then e2
                else e'))))))
  | LetTuple(xts, y, e) -> LetTuple(xts, y, g env maybe_while_args e),snd e
  | While(e1,e2,(args,t)) -> While(g env maybe_while_args e1,g env (Some(args)) e2,(args,t)),snd e
  | Ret(args,e1) -> Ret(args,g env maybe_while_args e1), snd e
  | _ -> e
let f enable e = if enable then g M.empty None e else e
