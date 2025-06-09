{
(* lexerが利用する変数、関数、型などの定義 *)
open Parser
(* open Type *)
let rcount = ref 1
}

(* 正規表現の略記 *)
let space = [' ' '\t']
let break = ['\n' '\r']
let digit = ['0'-'9']
let lower = ['a'-'z']
let upper = ['A'-'Z']


rule token = parse
| space+
    { token lexbuf }
| "(*"
    { comment lexbuf; (* ネストしたコメントのためのトリック *)
      token lexbuf }
| break
    { Lexing.new_line lexbuf; incr rcount;token lexbuf }
| '('
    { LPAREN(!rcount) }
| ')'
    { RPAREN(!rcount) }
| "true"
    { BOOL(true,!rcount) }
| "false"
    { BOOL(false,!rcount) }
| "not"
    { NOT(!rcount) }
| digit+ (* 整数を字句解析するルール (caml2html: lexer_int) *)
    { INT(int_of_string (Lexing.lexeme lexbuf),!rcount) }
| digit+ ('.' digit*)? (['e' 'E'] ['+' '-']? digit+)?
    { FLOAT(float_of_string (Lexing.lexeme lexbuf),!rcount) }
| '-' (* -.より後回しにしなくても良い? 最長一致? *)
    { MINUS(!rcount) }
| '+' (* +.より後回しにしなくても良い? 最長一致? *)
    { PLUS(!rcount) }
| '*'
    { AST(!rcount) }
| '/'
    {SLASH(!rcount) }
| "-."
    { MINUS_DOT(!rcount) }
| "+."
    { PLUS_DOT(!rcount) }
| "*."
    { AST_DOT(!rcount) }
| "/."
    { SLASH_DOT(!rcount) }
| '='
    { EQUAL(!rcount) }
| "<>"
    { LESS_GREATER(!rcount) }
| "<="
    { LESS_EQUAL(!rcount) }
| ">="
    { GREATER_EQUAL(!rcount) }
| '<'
    { LESS(!rcount) }
| '>'
    { GREATER(!rcount) }
| "if"
    { IF(!rcount) }
| "then"
    { THEN(!rcount) }
| "else"
    { ELSE(!rcount) }
| "let"
    { LET(!rcount) }
| "in"
    { IN(!rcount) }
| "rec"
    { REC(!rcount) }
| ','
    { COMMA(!rcount) }
| '_'
    { IDENT(Id.gentmp Type.Unit,!rcount) }
| "Array.create" | "Array.make" (* [XX] ad hoc *)
    { ARRAY_CREATE(!rcount) }
| '.'
    { DOT(!rcount) }
| "<-"
    { LESS_MINUS(!rcount) }
| ';'
    { SEMICOLON(!rcount) }
| eof
    { EOF(!rcount) }
| lower (digit|lower|upper|'_')* (* 他の「予約語」より後でないといけない *)
    { IDENT(Lexing.lexeme lexbuf,!rcount) }
| _
    { failwith
        (Printf.sprintf "unknown token %s near characters %d-%d"
           (Lexing.lexeme lexbuf)
           (Lexing.lexeme_start lexbuf)
           (Lexing.lexeme_end lexbuf)) }
and comment = parse
| break 
    { Lexing.new_line lexbuf; incr rcount; comment lexbuf }
| "*)"
    { () }
| "(*"
    { comment lexbuf;
      comment lexbuf }
| eof
    { Format.eprintf "warning: unterminated comment@." }
| _
    { comment lexbuf }
