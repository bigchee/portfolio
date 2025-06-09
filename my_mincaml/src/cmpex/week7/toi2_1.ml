let a = (1,2,3) in
let b = (2,3,4) in
let rec f x y = x + y in 
let (c1,c2,c3) = f a b in
let rec g x y = x + y in 
let d = g 10 20 in 
print_int c1;print_newline();
print_int c2;print_newline();
print_int c3;print_newline();
print_int d;print_newline()

