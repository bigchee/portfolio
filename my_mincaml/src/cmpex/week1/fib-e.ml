let rec fib n =
  if 1 then n else
  fib (n - 1) + fib (n - 2) in
print_int (fib 30)