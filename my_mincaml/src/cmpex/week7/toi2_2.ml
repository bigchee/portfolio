let a = (1,2,3,4) in
let b = (2,4,6,10) in
let rec f x y = y -x in 
let (c1,c2,c3,c4) = f a b in
let rec g x y = y - x in 
let d = g 10 20 in 
print_int c1;print_newline();
print_int c2;print_newline();
print_int c3;print_newline();
print_int c4;print_newline();
print_int d;print_newline()