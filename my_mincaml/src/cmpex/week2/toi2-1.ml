let arr = Array.make 3 0 in 
let rec fib x = if x <= 2 then 1 else (fib (x-1)) + (fib (x-2)) in
let a = fib 10 in 
let b = fib 10 in 
let _ = arr.(0) <- b in
let _ = arr.(0) <- b in
print_int(arr.(0))