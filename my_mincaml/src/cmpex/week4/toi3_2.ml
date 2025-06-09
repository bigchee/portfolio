let rec f x = 
  let (x1,x2) = x in
	let (x11,x12) = x1 in
	let (x21,x22) = x2 in
	let (x211,x212) = x21 in
	let (x221,x222) = x22 in
	(x11 + x12 + x211 + x212 + x221 + x222)
in print_int (f ((2,3),((5,6),(7,8))))