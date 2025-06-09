let a = Array.make 3 5 in
let _ = a.(0) <- 4649 in
let _ = a.(1) <- 5963 in
let _ = a.(2) <- 246911 in
let p = 3.14 in
let b = (Array.make 4 1.23) in
let _ = print_float b.(0); print_newline () in
let _ = print_float b.(1); print_newline () in
let _ = print_float b.(2); print_newline () in
let _ = print_float b.(3); print_newline () in
let _ = b.(0) <- p in
let _ = b.(1) <- p *. p in
let _ = b.(2) <- p *. p *. p in
let _ = b.(3) <- p *. p *. p *. p in
(* print int array *)
print_int a.(0); (* => 4649 *)
print_newline ();
print_int a.(1); (* => 5963 *)
print_newline ();
print_int a.(2);(* => 249611 *)
print_newline (); 
(* print float array *)
print_float b.(0); (* => 3.14 *)
print_newline ();
print_float b.(1); (* => 9.859600 *)
print_newline ();
print_float b.(2); (* => 30.959144 *)
print_newline ();
print_float b.(3); (* => 97.21171216 *)
print_newline ()