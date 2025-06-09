let rec f x y = 
  let (x1,x2) = x in
	let (x11,x12) = x1 in
	let (x21,x22) = x2 in
	let (y1,y2) = y in
	(x11 + x12 + x21 + x22 + y1 + y2)
in print_int (f ((5,6),(7,8)) (2,3))