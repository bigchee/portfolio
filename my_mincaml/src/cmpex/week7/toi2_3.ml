let a = (1,0.01,3) in  (*浮動小数が混ざっているとオーバーロードできない*)
let b = (3,0.02,10) in
let (c1,c2,c3) = a + b in
print_int c1