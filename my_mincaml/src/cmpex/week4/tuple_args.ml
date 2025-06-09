let rec f a = 
  let (x,y) = a in
    x + y
in print_int( f (1, 2) )