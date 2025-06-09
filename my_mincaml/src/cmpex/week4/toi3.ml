let rec id x = x in
let rec f a = 
  let (a1,a2) = a in
  let (a11,a12,a13) = a1 in
  let (a_11,a_12,a_13) = a1 in
  let (a121,a122) = a12 in 
  a121 +. a122
in print_float( f ((id 0.0,(id 1.0, id 2.0),id 3.0), id 4.0) )