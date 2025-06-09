let f = 
    (let rec g h = 
        let rec i x = h x in
        i
    in g) in
let rec f0 x = x + 1 in
print_int ((f f0) 1)