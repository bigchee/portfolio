(* 
let rec fless x y = x < y in
let rec fispos x = x > 0.0 in
let rec fisneg x = x < 0.0 in 
let rec fiszero x = (x = 0.0) in  *)
(* let rec fequal x y = x = y in 
let rec fless x y = not(x >= y) in
let rec fispos x = not(x <= 0.0) in
let rec fisneg x = not(x >= 0.0) in  *)
let rec fhalf x = x *. 0.5 in 
let rec fsqr x = x *. x in 
let rec fneg x = 0.0 -. x in 
(* let rec fabs x = if fispos x then x else fneg x in  *)

(*三角関数まわり*)
(* let pi = 3.14159274 in  *)
(* let double_pi = 6.28318548  in *)
let rec max2pow a acc_p = 
  if a > acc_p then max2pow a (acc_p *. 2.0 ) 
  else acc_p in (*等号成立の場合は...??, そもそもあっているのか怪しい*)
let rec minus2powpi acc_a acc_p = 
  if acc_a < 6.28318548 then acc_a 
  else if acc_a > acc_p then minus2powpi (acc_a -. acc_p) (acc_p /. 2.0)
  else   minus2powpi acc_a (acc_p /. 2.0) in
let rec reduction_2pi a = 
  let p = max2pow a 6.28318548 in 
  minus2powpi a p in 

let rec kernel_sin a = 
  let aa = fsqr a in 
  a *. (1.0 +. aa *. (-0.16666668 +. aa *. (0.008332824  +. aa *. (-0.00019587841)))) in 
let rec kernel_cos a = 
  let aa = fsqr a in 
  1.0 +. aa *. (-0.5 +. aa *. ( 0.04166368  +. aa *. (-0.0013695068) )) in 
  
let rec sin a = 
  let flag = fispos a in 
  let a = reduction_2pi (fabs a) in (*ここでfabsを呼べないので仮*)
  let t1 = a >= 3.14159274 in 
  let a = (if t1 then a -. 3.14159274 else a ) in let flag = (if t1 then not(flag) else flag) in 
  let a = (if a >= 3.14159274 /. 2.0 then 3.14159274 -. a else a) in 
  let t2 = (if a < 3.14159274/. 4.0 then kernel_sin a else kernel_cos (3.14159274 /. 2.0 -. a)) in 
      if flag = (fispos t2) then t2 else fneg t2 (*これでadd flagになる?*)
in
let rec cos a = 
  let flag = true in 
  let a = reduction_2pi (fabs a) in
  let t1 = a >= 3.14159274 in 
  let a = (if t1 then a -. 3.14159274 else a ) in let flag = (if t1 then not(flag) else flag) in 
  let t2 = a >= 3.14159274 /. 2.0 in 
  let a = (if t2 then 3.14159274 -. a else a) in let flag = (if t2 then not(flag) else flag) in
  let t3 = (if a < 3.14159274/. 4.0 then kernel_cos a else kernel_sin (3.14159274 /. 2.0 -. a)) in 
  if flag = (fispos t3) then t3 else fneg t3 (*これでadd flagになる?*)
in

let rec kernel_atan a = 
  let aa = fsqr a in 
  a *. (1.0 +. aa *. (-0.3333333 +. aa *. (0.2 +. aa *. (-0.142857142 +. aa *. (0.111111104 +. aa *. (-0.08976446 +. aa *. 0.060035485 )))))) in 

let rec atan a = 
  let flag = fispos a in
  let aabs = fabs a in 
  if aabs < 0.4375 then kernel_atan a 
  else 
    let t = (if aabs < 2.4375 then 3.14159274 /. 4.0 +. kernel_atan ((aabs -. 1.0) /. (aabs +. 1.0)) 
  else 3.14159274 /. 2.0 -. kernel_atan (1.0/.aabs)) in 
    if flag then t else fneg t  (*符号のつじつまを合わせる*)
in 

(* I/O *)

let rec max10pow x ten_k ten_succk = (*x以下の最大の10べきten_k = 10^indexを求める, ten_k部分*)
  (*ten_k <= x, ten_k * 10 = ten_succkであることは保証*)
  if x >= ten_succk then max10pow x ten_succk (ten_succk * 8 + ten_succk * 2)
  else ten_k
in 
let rec log10 ten_k acc_x acc_index = (*index部分を求めるのに使う. log_10(ten_k / acc_x) = indexを計算 *)
  if acc_x >= ten_k then acc_index
  else log10 ten_k (acc_x * 8 + acc_x * 2) (acc_index + 1)
in 
let rec get_q x m10p q m10p_x_q = (* x / m10p = qとなる商qを求める *) (*本当は二分探索したほうが早い?*)
  (*m10p_x_q <= xを保証*)
  let next = m10p_x_q + m10p in
  if x >= next then get_q x m10p (q+1) next
  else q
in
let rec mul1digit m10q acc_sum q = (* (acc_sum = 0) + m10p * q = m10p_x_q を求める, ただしqは1~9. *)
  if q = 0 then acc_sum
  else mul1digit m10q (acc_sum + m10q) (q-1)
in 
let rec printzero n = (*0をn回出力*)
  if n <= 0 then ()
  else (print_byte 48; printzero (n-1))
in
let rec inner_print_int x old_index =  (*print_intをループで処理*)
  let m10p = max10pow x 1 10 in
  let new_index = log10 m10p 1 0 in 
  let innerzerocount = old_index - new_index -1 in (*非零だった桁の指数を使って, 間の0の数を求める*)
    printzero innerzerocount;
  (if new_index = 0 then print_byte (48+x) (*1桁まで落とせたのでこれで終了*)
  else 
    (let q = get_q x m10p 1 m10p in 
    let m10p_x_q = mul1digit m10p 0 q in 
    let rest = x - m10p_x_q in 
    (print_byte (48+q); (*非零の桁を出力*)
    inner_print_int rest new_index))) (*残りの桁を再帰処理*)
in

let rec print_int x = (*負の数にも対応*)
  if x < 0 then (print_byte(45) (* '-' *);inner_print_int (-x) 0)
  else inner_print_int x 0 (*ここの数値がformatter "%0n"のnに対応 *)
in 
let rec print_newline _ = print_byte 10
in 
(* let rec print_float x = 
  let int_sec = int_of_float x in 
  let float_sec = x -. (float_of_int int_sec) in 
  let float_sec_moved = int_of_float(float_sec *. 1000.0) in 
  (print_int int_sec;
  print_byte(46); (* '.' *)
  print_int(float_sec_moved))
in *)