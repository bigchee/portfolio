let rec gcd x = 
  let (m,n) = x in
  if m = 0 then n else 
  if m <= n then gcd (m,n-m) else
  gcd (n,m-n) in 
print_int (gcd (21600,337500))