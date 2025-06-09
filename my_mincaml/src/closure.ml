open Format

type closure = { entry : Id.l; actual_fv : Id.t list }
type t = (* クロージャ変換後の式 (caml2html: closure_t) *)
  ta * Mloc.t
and ta = 
  | Unit
  | Int of int
  | Float of float
  | Not of Id.t
  | Neg of Id.t
  | Add of Id.t * Id.t
  | Sub of Id.t * Id.t
  | Mul of Id.t * Id.t
  | Div of Id.t * Id.t
  | FNeg of Id.t
  | FAdd of Id.t * Id.t
  | FSub of Id.t * Id.t
  | FMul of Id.t * Id.t
  | FDiv of Id.t * Id.t
  | IfEq of Id.t * Id.t * t * t
  | IfLE of Id.t * Id.t * t * t
  | Let of (Id.t * Type.t) * t * t
  | Var of Id.t
  | MakeCls of (Id.t * Type.t) * closure * t
  | AppCls of Id.t * Id.t list
  | AppDir of Id.l * Id.t list
  | Tuple of Id.t list
  | LetTuple of (Id.t * Type.t) list * Id.t * t
  | Get of Id.t * Id.t
  | Put of Id.t * Id.t * Id.t
  | ExtSeq of Id.l
  | While of t * t * (Id.t list * Type.t)
  | Ret of Id.t list * t
  | Cont of Id.t list * Id.t list
type fundef = { name : Id.l * Type.t;
                args : (Id.t * Type.t) list;
                formal_fv : (Id.t * Type.t) list;
                body : t }
type prog = Prog of fundef list * t

let get_tag ta : string = 
  match ta with
  | Unit -> "UNIT"
  | Int _ -> "INT"
  | Float _ -> "FLOAT"
  | Not _ -> "NOT"
  | Neg _ -> "NEG"
  | Add _ -> "ADD"
  | Sub _ -> "SUB"
  | Mul _ -> "MUL"
  | Div _ -> "DIV"
  | FNeg _ -> "FNEG"
  | FAdd _ -> "FADD"
  | FSub _ -> "FSUB"
  | FMul _ -> "FMUL"
  | FDiv _ -> "FDIV"
  | IfEq _ -> "IFEQ"
  | IfLE _ -> "IFLE"
  | Let _ -> "LET"
  | Var _ -> "VAR"
  | MakeCls _ -> "MAKECLS"
  | AppCls _ -> "APPCLS"
  | AppDir _ -> "APPDIR"
  | Tuple _ -> "TUPLE"
  | LetTuple _ -> "LETTUPLE"
  | Get _ -> "GET"
  | Put _ -> "PUT"
  | ExtSeq _ -> "EXTSEQ"
  | While _ -> "WHILE"
  | Ret _ -> "RET"
  | Cont _ -> "CONT"

let rec print ppf (Prog(fundef,e)) : unit = 
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
and print_fundef ppf {name = (L(fname),_);args;formal_fv;body;_} = 
  let o n = pp_open_vbox ppf n in
  let sp = pp_print_space ppf in
  let cl = pp_close_box ppf in 

  let ident = pp_print_string ppf in
  o 2;
  ident (Id.to_string fname);sp();
  ident ("["^(String.concat ", " (List.map (fun (x,_) ->  Id.to_string x) args))^"]");sp();
  ident ("["^(String.concat ", " (List.map (fun (x,_) ->  Id.to_string x) formal_fv))^"]");sp();
  print_t ppf body;cl()
and print_t ppf e : unit = 
  let o n = pp_open_vbox ppf n in
  let sp = pp_print_space ppf in
  let cl = pp_close_box ppf in 

  let ident = pp_print_string ppf in
  (* let print_tag e : unit = ident (get_tag (fst e)) in *)
  let print_args_tag e args : unit = (ident (get_tag (fst e));ident (" ("^(String.concat ", " (List.map Id.to_string args))^")");ident  (" # "^(Mloc.to_string (snd e)))) in
match (fst e) with
| Unit -> ident "UNIT"
| Int i -> ident "INT(";pp_print_int ppf i;ident ")"
| Float f -> ident "FLOAT(";pp_print_float ppf f;ident ")"
| Not x | Neg x | FNeg x | Var x -> print_args_tag e [x]
| ExtSeq (Id.L(x)) ->  print_args_tag e [x]
| Add (x,y) | Sub (x,y) | Mul (x,y) | Div (x,y) | FAdd (x,y) | FSub (x,y) | FMul (x,y) | FDiv (x,y) | Get (x,y) -> print_args_tag e [x;y]
| Put (x,y,z) -> print_args_tag e [x;y;z]
| IfEq (x,y,e1,e2) | IfLE (x,y,e1,e2) -> 
  o 2;
  print_args_tag e [x;y];sp();
  print_t ppf e1;sp();
  print_t ppf e2;
  cl()
| Let ((x,_),e1,e2) -> 
  o 2;
  print_args_tag e [x];sp();
  print_t ppf e1;sp();
  print_t ppf e2;
  cl()
| MakeCls ((x,_),closure,e1) -> 
  o 2;
  print_args_tag e [x];sp();
  print_closure ppf closure;sp();
  print_t ppf e1;
  cl()
| AppCls (x,yl) -> 
  o 2;
  print_args_tag e [x];sp();
  ident ("["^(String.concat ", " (List.map Id.to_string yl))^"]");
  cl()
| AppDir (Id.L(x),yl) -> 
  o 2;
  print_args_tag e [x];sp();
  ident ("["^(String.concat ", " (List.map Id.to_string yl))^"]");
  cl()
| Tuple xl -> print_args_tag e xl
| Cont (args,xl) -> 
  o 2;
  print_args_tag e args;sp();
  ident ("["^(String.concat ", " (List.map Id.to_string xl))^"]");
  cl()
| LetTuple (xtl,y,e1) -> 
  o 2;
  print_args_tag e (List.map (fun (x,_) ->  Id.to_string x) xtl);sp();
  ident (Id.to_string y);sp();
  print_t ppf e1;
  cl()
| While(e1,e2,(args,_)) -> 
  o 2;
  print_args_tag e args;sp();
  print_t ppf e1;sp();
  print_t ppf e2;
  cl()
| Ret(args,e1) ->
  o 2;
  print_args_tag e args;sp();
  print_t ppf e1;
  cl()

and print_closure ppf {entry = Id.L(x);actual_fv;_} = 
  let o n = pp_open_vbox ppf n in
  (* let sp = pp_print_space ppf in *)
  let cl = pp_close_box ppf in 

  let ident = pp_print_string ppf in
  o 2;
  (*ident (Id.to_string x);sp();  クロージャ名の出力被りを避ける*)
  ident ("["^(String.concat ", " (List.map Id.to_string actual_fv))^"]");
  cl()

let rec fv e = 
match (fst e) with
  | Unit | Int(_) | Float(_) | ExtSeq(_) -> S.empty
  | Not(x) | Neg(x) | FNeg(x) -> S.singleton x
  | Get(x,y) when x = Asm.memory -> S.singleton y
  | Add(x, y) | Sub(x, y) | Mul (x,y) | Div (x,y) | FAdd(x, y) | FSub(x, y) | FMul(x, y) | FDiv(x, y) | Get(x, y) -> S.of_list [x; y]
  | IfEq(x, y, e1, e2)| IfLE(x, y, e1, e2) -> S.add x (S.add y (S.union (fv e1) (fv e2)))
  | Let((x, _(*t*)), e1, e2) -> S.union (fv e1) (S.remove x (fv e2))
  | Var(x) -> S.singleton x
  | MakeCls((x, _(*t*)), { entry = _(*l*); actual_fv = ys }, e) -> S.remove x (S.union (S.of_list ys) (fv e))
  | AppCls(x, ys) -> S.of_list (x :: ys)
  | AppDir(_, xs) | Tuple(xs) | Cont(_,xs) -> S.of_list xs
  | LetTuple(xts, y, e) -> S.add y (S.diff (fv e) (S.of_list (List.map fst xts)))
  | Put(x, y, z) -> S.of_list [x; y; z]
  | While(e1,e2,(args,_)) -> S.diff (S.union (fv e1) (fv e2)) (S.of_list args)
  | Ret(_,e1) -> fv e1

let toplevel : fundef list ref = ref []

let rec g env known e =  (* クロージャ変換ルーチン本体 (caml2html: closure_g) *)
match (fst e) with
  | KNormal.Unit -> Unit,(snd e)
  | KNormal.Int(i) -> Int(i),(snd e)
  | KNormal.Float(d) -> Float(d),(snd e)
  | KNormal.Not(x) -> Not(x),(snd e)
  | KNormal.Neg(x) -> Neg(x),(snd e)
  | KNormal.Add(x, y) -> Add(x, y),(snd e)
  | KNormal.Sub(x, y) -> Sub(x, y),(snd e)
  | KNormal.Mul(x, y) -> Mul(x, y),(snd e)
  | KNormal.Div(x, y) -> Div(x, y),(snd e)
  | KNormal.FNeg(x) -> FNeg(x),(snd e)
  | KNormal.FAdd(x, y) -> FAdd(x, y),(snd e)
  | KNormal.FSub(x, y) -> FSub(x, y),(snd e)
  | KNormal.FMul(x, y) -> FMul(x, y),(snd e)
  | KNormal.FDiv(x, y) -> FDiv(x, y),(snd e)
  | KNormal.IfEq(x, y, e1, e2) -> IfEq(x, y, g env known e1, g env known e2),(snd e)
  | KNormal.IfLE(x, y, e1, e2) -> IfLE(x, y, g env known e1, g env known e2),(snd e)
  | KNormal.Let((x, t), e1, e2) -> Let((x, t), g env known e1, g (M.add x t env) known e2),(snd e)
  | KNormal.Var(x) -> Var(x),(snd e)
  | KNormal.LetRec({ KNormal.name = (x, t); KNormal.args = yts; KNormal.body = e1 }, e2) -> (* 関数定義の場合 (caml2html: closure_letrec) *)
      (* 関数定義let rec x y1 ... yn = e1 in e2の場合は、
         xに自由変数がない(closureを介さずdirectに呼び出せる)
         と仮定し、knownに追加してe1をクロージャ変換してみる *)
      let toplevel_backup = !toplevel in
      let env' = M.add x t env in
      let known' = S.add x known in
      let e1' = g (M.add_list yts env') known' e1 in
      (* 本当に自由変数がなかったか、変換結果e1'を確認する *)
      (* 注意: e1'にx自身が変数として出現する場合はclosureが必要! 
         (thanks to nuevo-namasute and azounoman; test/cls-bug2.ml参照) *)
      let zs = S.diff (fv e1') (S.of_list (List.map fst yts)) in
      let known', e1' =
        if S.is_empty zs then known', e1' else
        (* 駄目だったら状態(toplevelの値)を戻して、クロージャ変換をやり直す *)
        (
          (* Format.eprintf "free variable(s) %s found in function %s@." (Id.pp_list (S.elements zs)) x;
         Format.eprintf "function %s cannot be directly applied in fact@." x; *)
         toplevel := toplevel_backup;
         let e1' = g (M.add_list yts env') known e1 in (*knownにxを入れない*)
         known, e1') in
      let zs = S.elements (S.diff (fv e1') (S.add x (S.of_list (List.map fst yts)))) in (* 自由変数のリスト *)
      let zts = List.map (fun z -> (z, (try M.find z env' with | e -> Printf.eprintf "free variable %s not found in module Closure\n" z;raise e))) zs in (* ここで自由変数zの型を引くために引数envが必要 *)
      toplevel := { name = (Id.L(x), t); args = yts; formal_fv = zts; body = e1' } :: !toplevel; (* トップレベル関数を追加 *)
      let e2' = g env' known' e2 in
      if S.mem x (fv e2') then (* xが変数としてe2'に出現するか *)
        MakeCls((x, t), { entry = Id.L(x); actual_fv = zs }, e2'),(snd e) (* 出現していたら削除しない *) (*ここのMloc合っているか不明*)
      else
        (
          (* Format.eprintf "eliminating closure(s) %s@." x; *)
         e2') (* 出現しなければMakeClsを削除 *)
  | KNormal.App(x, ys) when S.mem x known -> (* 関数適用の場合 (caml2html: closure_app) *)
      (* Format.eprintf "directly applying %s@." x; *)
      AppDir(Id.L(x), ys),(snd e)
  | KNormal.App(f, xs) -> AppCls(f, xs),(snd e)
  | KNormal.Tuple(xs) -> Tuple(xs),(snd e)
  | KNormal.LetTuple(xts, y, e) -> LetTuple(xts, y, g (M.add_list xts env) known e),(snd e)
  | KNormal.Get(x, y) -> Get(x, y),(snd e)
  | KNormal.Put(x, y, z) -> Put(x, y, z),(snd e)
  | KNormal.ExtSeq(x) -> ExtSeq(Id.L(x)),(snd e)
  | KNormal.ExtFunApp(x, ys) ->
    (* if List.mem x ["init_float_array";"init_array"] (*globals応急処置*)
      then 
        let t = Type.Unit in 
        let z = Id.gentmp t in Let ((z,t),Var(""),AppDir(Id.L("min_caml_" ^ x), z::ys)),(snd e) (*この型は嘘*)
      else  *)
        AppDir(Id.L("min_caml_" ^ x), ys),(snd e)
  | KNormal.While(e1,e2,t) -> While(g env known e1,g env known e2,t),(snd e)
  | KNormal.Ret(args,e1) -> Ret(args,g env known e1),(snd e)
  | KNormal.Cont(args,xs) -> Cont(args,xs),(snd e)

let f e =
  toplevel := [];
  let e' = g M.empty S.empty e in
  Printf.printf "fin closure\n";flush stdout;
  Prog(List.rev !toplevel, e')
