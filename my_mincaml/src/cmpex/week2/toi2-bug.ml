(*参照は評価の度に値が変わりうるので, CSEするべきではなかった*)
let arr = Array.create 1 0 in
let i = 0 in
let x = arr.(i) in
let y = arr.(i) <- 3 in
let z = arr.(i) in 
print_int(z)