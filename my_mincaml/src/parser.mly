%{
(* parserが利用する変数、関数、型などの定義 *)
open Syntax
let addtyp x = (x, Type.gentyp ())
%}

/* (* 字句を表すデータ型の定義 (caml2html: parser_token) *) */
%token <bool * Mloc.t> BOOL
%token <int * Mloc.t> INT
%token <float * Mloc.t> FLOAT
%token <Mloc.t> NOT
%token <Mloc.t> MINUS
%token <Mloc.t> PLUS
%token <Mloc.t> AST
%token <Mloc.t> SLASH
%token <Mloc.t> MINUS_DOT
%token <Mloc.t> PLUS_DOT
%token <Mloc.t> AST_DOT
%token <Mloc.t> SLASH_DOT
%token <Mloc.t> EQUAL
%token <Mloc.t> LESS_GREATER
%token <Mloc.t> LESS_EQUAL
%token <Mloc.t> GREATER_EQUAL
%token <Mloc.t> LESS
%token <Mloc.t> GREATER
%token <Mloc.t> IF
%token <Mloc.t> THEN
%token <Mloc.t> ELSE
%token <Id.t * Mloc.t> IDENT
%token <Mloc.t> LET
%token <Mloc.t> IN
%token <Mloc.t> REC
%token <Mloc.t> COMMA
%token <Mloc.t> ARRAY_CREATE
%token <Mloc.t> DOT
%token <Mloc.t> LESS_MINUS
%token <Mloc.t> SEMICOLON
%token <Mloc.t> LPAREN
%token <Mloc.t> RPAREN
%token <Mloc.t> EOF

/* (* 優先順位とassociativityの定義（低い方から高い方へ） (caml2html: parser_prior) *) */
%nonassoc IN
%right prec_let
%right SEMICOLON
%right prec_if
%right LESS_MINUS
%nonassoc prec_tuple
%left COMMA
%left EQUAL LESS_GREATER LESS GREATER LESS_EQUAL GREATER_EQUAL
%left PLUS MINUS PLUS_DOT MINUS_DOT
%left AST SLASH AST_DOT SLASH_DOT
%right prec_unary_minus
%left prec_app
%left DOT


/* (* 開始記号の定義 *) */
%type <Syntax.t> exp
%type <(Syntax.t list) * Mloc.t > elems
%start exp

%%


simple_exp: /* (* 括弧をつけなくても関数の引数になれる式 (caml2html: parser_simple) *) */
| LPAREN exp RPAREN
    { $2 }
| LPAREN RPAREN
    { (Unit,$1) }
| BOOL
    { (Bool(fst $1),snd $1) }
| INT
    { (Int(fst $1),snd $1) }
| FLOAT
    { (Float(fst $1),snd $1) }
| IDENT
    { (Var(fst $1),snd $1) }
| simple_exp DOT LPAREN exp RPAREN
    { (Get($1,$4),snd $1) }
;

exp: /* (* 一般の式 (caml2html: parser_exp) *) */
| simple_exp
    { $1 }
| NOT exp
    %prec prec_app
    { (Not($2),$1) }
| MINUS exp
    %prec prec_unary_minus
    { match (fst $2) with
    | Float(f) -> (Float(-.f),$1) (* -1.23などは型エラーではないので別扱い *)
    | e -> (Neg($2),$1) }
| exp PLUS exp /* (* 足し算を構文解析するルール (caml2html: parser_add) *) */
    { (Add($1, $3),$2) }
| exp MINUS exp
    { (Sub($1, $3),$2) }
| exp AST exp
    { Mul($1, $3),$2 }
| exp SLASH exp
    { Div($1, $3),$2 }
| exp EQUAL exp
    { (Eq($1, $3),$2) }
| exp LESS_GREATER exp
    { (Not(Eq($1, $3),snd $1),$2) (* some float comparisons differ from OCaml for NaN; see: https://github.com/esumii/min-caml/issues/13#issuecomment-1147032750 *) }
| exp LESS exp
    { (Not(LE($3, $1),snd $1),$2) }
| exp GREATER exp
    { (Not(LE($1, $3),snd $1),$2) }
| exp LESS_EQUAL exp
    { LE($1, $3),$2 }
| exp GREATER_EQUAL exp
    { LE($3, $1),$2 }
| IF exp THEN exp ELSE exp
    %prec prec_if
    { If($2, $4, $6),$1 }
| MINUS_DOT exp
    %prec prec_unary_minus
    { FNeg($2),$1 }
| exp PLUS_DOT exp
    { FAdd($1, $3),$2 }
| exp MINUS_DOT exp
    { FSub($1, $3),$2 }
| exp AST_DOT exp
    { FMul($1, $3),$2 }
| exp SLASH_DOT exp
    { FDiv($1, $3),$2 }
| LET IDENT EQUAL exp IN exp
    %prec prec_let
    { Let(addtyp (fst $2), $4, $6),$1 }
| LET REC fundef IN exp
    %prec prec_let
    { LetRec($3, $5),$1 }
| simple_exp actual_args
    %prec prec_app
    { App($1, $2),(snd $1) }
| elems
    %prec prec_tuple
    { Tuple(fst $1),snd $1 } (*あとで位置修正*)
| LET LPAREN pat RPAREN EQUAL exp IN exp
    { LetTuple($3, $6, $8),$1 }
| simple_exp DOT LPAREN exp RPAREN LESS_MINUS exp
    { Put($1, $4, $7),$2 }
| exp SEMICOLON exp
    { Let((Id.gentmp Type.Unit, Type.Unit), $1, $3),(snd $1) }
| ARRAY_CREATE simple_exp simple_exp
    %prec prec_app
    { Array($2, $3),$1 }
| error
    { raise Error
        (*failwith
        (Printf.sprintf "parse error near characters %d-%d"
           (Parsing.symbol_start ())
           (Parsing.symbol_end ()))*) }

fundef:
| IDENT formal_args EQUAL exp
    { { name = addtyp (fst $1); args = $2; body = $4 } }

formal_args:
| IDENT formal_args
    { addtyp (fst $1) :: $2 }
| IDENT
    { [addtyp (fst $1)] }

actual_args:
| actual_args simple_exp
    %prec prec_app
    { $1 @ [$2] }
| simple_exp
    %prec prec_app
    { [$1] }

elems:
| elems COMMA exp
    { ((fst $1) @ [$3]),snd $1 }
| exp COMMA exp
    { ([$1; $3],snd $1) }

pat:
| pat COMMA IDENT
    { $1 @ [addtyp (fst $3)] }
| IDENT COMMA IDENT
    { [addtyp (fst $1); addtyp (fst $3)] }
