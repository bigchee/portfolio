(*パラメータ一覧*)
(* let max_elem = ref Asm.reg_size (*(入れ子を展開しない)要素数の上限*) 現在問題が見つかったため, 非対応*)
let max_size =  ref Asm.reg_size (*(入れ子を展開した)深さ付き全要素数の上限*)
let max_depth = ref 3 (*入れ子の深さの上限*)


exception Not_expandable
let counter = ref 0

type variable = Id.t * Type.t 
type vlist = variable list

type expand_tuple = (vlist * variable) list
type construct_tuple = (variable * vlist) list


let rec gen_tuple_arg (suffix : string) (x,t) maxdepth : vlist * variable * construct_tuple * expand_tuple = (*組型引数展開に必要な道具を生成, 1つの引数について*)
  match t with 
  | Type.Tuple tl when maxdepth > 0 -> (*新しい変数をおいて, タプルを展開*)
    let newargs,vl, postorder, preorder,_ = List.fold_left 
      (fun (acc_newargs, acc_vl, acc_postorder, acc_preorder, acc_idx) t_i -> 
          let newvname_i = x^"_"^(string_of_int acc_idx) in 
          let newargs_i,v_i,postorder_i,preorder_i = (gen_tuple_arg suffix (newvname_i,t_i) (maxdepth -1)) in 
            (* assert(v_i = (newvname_i,t_i)); *)
            (acc_newargs@newargs_i, acc_vl@[v_i], acc_postorder@postorder_i, acc_preorder@preorder_i, acc_idx + 1)
      ) ([],[],[],[],1) tl in 
    (newargs,(x,t),postorder@[((x,t),vl)],(vl,(x,t))::preorder) (*preorder, postorderで違うのはここで先頭/末尾に追加する点だけ*)
  | _ -> (*これ以上タプルは展開しないorできない*)
    let x = suffix^x in (*leafにだけsuffixをつける*)
      ([(x,t)],(x,t),[],[]) 
  
let gen_tuple_args args maxdepth : vlist * (KNormal.t -> KNormal.t) * (string -> KNormal.t -> KNormal.t) = (*組型引数展開に必要な道具を生成, 全ての引数について*)
  List.fold_left 
    (fun (acc_newargs,acc_apply_construct,acc_apply_expand) (x,t) -> 
      match t with 
      | Type.Tuple _ -> 
        let newargs,_,construct_list,expand_list= gen_tuple_arg "P_" (x,t) maxdepth in 
        let new_apply_construct e2 = List.fold_right (fun (v,vl) acc_e2 -> acc_apply_construct (KNormal.Let(v,(KNormal.Tuple(List.map fst vl),Mloc.d_tuple_args),acc_e2), Mloc.d_tuple_args)) construct_list e2 in   
        let new_apply_expand count e2 = 
          let trans_v (x,t) = (x^"."^count,t) in 
          List.fold_right (fun (vl,v) e2 -> acc_apply_expand count (KNormal.LetTuple((List.map trans_v vl),fst (trans_v v),e2), Mloc.d_tuple_args)) expand_list e2 in 
          (acc_newargs@newargs,new_apply_construct,new_apply_expand)
      | _ -> (acc_newargs@[(x,t)],acc_apply_construct,acc_apply_expand)
      ) ([],(fun e -> e),(fun _ e -> e)) args 

let rec generate_g args maxdepth = (*generateの補助関数*)
  if maxdepth <= 0 then (raise Not_expandable) 
  else 
    let size = List.fold_left (fun acc (_,t) -> acc + (Type.tuple_size_with_depth t maxdepth)) 0 args in
    if size > !max_size then (Format.eprintf "failed to expand tuple at depth = %d\n" maxdepth;generate_g args (maxdepth-1))
    else gen_tuple_args args maxdepth (* maxdepthのときにmax_sizeに収まる展開が可能なので, 変換関数の生成へGO!! *)

let generate args = (*組型引数を展開しようとし, 可能ならば変換に必要な道具を返す*)
  (*if List.length args > !max_elem then (Format.eprintf "tuple with too much element\n";(raise Not_expandable)) (*要素数を見て, 展開できるかどうかを調べる*)
  else 現在max_elemは改修中*)
  generate_g args (min !max_depth (List.fold_left (fun cmax (_,t) -> let d = Type.tuple_depth(t) in max cmax d) 0 args)) (*min(最大深さ,深さ上限)からデクリメントしつつ, max_sizeに収まる展開の深さを探す*)

let rec g env e : KNormal.t = 
  match (fst e) with
  | KNormal.LetRec ({name;args;body = e1;_}, e2) -> (*引数が組ならば, 展開しようとする*)
      (try let newargs, make_newbody, make_changeformat = generate args in
        let change_format x_args count e2 = 
          let beforeargs = List.map (fun (x,t) -> (x^"."^count,t)) args in
          let apply_set_args e2 = List.fold_right2 (fun (x,t) x_app acc_e2 -> KNormal.Let((x,t),(KNormal.Var(x_app),Mloc.d_tuple_args),acc_e2), snd e ) beforeargs x_args e2 in
            apply_set_args (make_changeformat count e2)
        in 
        let name' = "P_"^(fst name) in 
        let _,tbody = (match (snd name) with | Type.Fun (t1,t2) -> (t1,t2) | _ ->  failwith "Not Fun Type") in 
        let make_newargs count = List.map (fun (x,t) -> x^"."^count) newargs in
        let newenv = M.add name' (make_newargs,change_format) env in 
        let e1' = g newenv e1 in 
        let newbody = make_newbody e1' in (*e1についても再帰的に処理しないとダメでした*)
        let e2' = g newenv e2 in  
        (KNormal.LetRec({name = (name',Fun((List.map snd newargs),tbody)) ;args = newargs;body = newbody}, (KNormal.LetRec ({name = name;args = args;body = e1}, e2'),Mloc.d_tuple_args)),snd e)
      with 
      | Not_expandable -> 
          Format.eprintf "fail to expand tuples args in function %s\n" (fst name);
          let e1' = g env e1 in 
          let e2' = g env e2 in 
          KNormal.LetRec({name = name;args=args;body = e1'}, e2'), (snd e)
      )
  | KNormal.App (f,args) when M.mem ("P_"^f) env -> (* 関数fの引数の組が展開されているなら, 関数適用のフォーマットを変更*)
      Format.eprintf "Find function with tuple expanded version: %s\n" f;
      let count = string_of_int(incr counter;!counter) in 
      let make_newargs, change_format = (M.find ("P_"^f) env) in 
      let newargs = make_newargs count in 
      let e2' = (KNormal.App ("P_"^f, newargs), snd e) in 
      change_format args count e2'
  | KNormal.IfEq(x,y,e1,e2) -> (*以下は構造の中にKNormal.tを含むので再帰的な適用が必要*)
    let e1' = g env e1 in 
    let e2' = g env e2 in 
      (KNormal.IfEq(x,y,e1',e2'),snd e)
  | KNormal.IfLE(x,y,e1,e2) -> 
    let e1' = g env e1 in 
    let e2' = g env e2 in 
      (KNormal.IfLE(x,y,e1',e2'),snd e)
  | KNormal.Let(x,e1,e2) -> 
    let e1' = g env e1 in 
    let e2' = g env e2 in 
      (KNormal.Let(x,e1',e2'),snd e)
  | KNormal.LetTuple(xl,y,e2) -> 
    let e2' = g env e2 in 
      (KNormal.LetTuple(xl,y,e2'),snd e)
  | _ -> e


let f enable e : KNormal.t = if enable then g M.empty e else e