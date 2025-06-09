# a0 -> x5, a1 -> x6, a2 -> x7, a4 -> x8, fa0 -> x65
# t5 -> x4, s11 -> x3, 

#	create_array
	.globl	min_caml_create_array
min_caml_create_array:	
# x5 = 配列サイズ, x6 = 初期化要素 として, create_array_loopを呼ぶ
	mv x4, x5 # x4 = x5 からデクリメントしつつloopを回す
	mv x5, x3 # 返り値a0に配列をおくヒープの先頭アドレスを入れる
	j create_array_loop
create_array_loop_cont:
	sw x6, 0(x3)
	addi x4, x4, -1
	addi x3,x3, 1
create_array_loop:
	bne x4, zero, create_array_loop_cont # ループインデックスが0になったら終了
	ret
#	create_float_array
	.globl	min_caml_create_float_array
min_caml_create_float_array:
# x5 = 配列サイズ, x65 = 初期化要素 として, create_array_loopを呼ぶ
	mv x4, x5 # x4 = x5 からデクリメントしつつloopを回す
	mv x5, x3 # 返り値a0に配列をおくヒープの先頭アドレスを入れる
	j create_float_array_loop
create_float_array_loop_cont:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3,x3, 1
create_float_array_loop:
	bne x4, zero, create_float_array_loop_cont # ループインデックスが0になったら終了
	ret
	.globl	min_caml_init_array 
min_caml_init_array:
	mv x4, x5 # loop-variantは次の要素を置くアドレスに
	add x8, x5, x6 # 配列の末尾アドレスを計算 word addr
	# 返り値a0は先頭アドレスのまま
	j init_array_loop
init_array_loop_cont:
	sw x7, 0(x4)
	addi x4, x4, 1
init_array_loop:
	bne x4, x8, init_array_loop_cont # 配列の末尾に達したら終了
	ret
#	init_float_array
	.globl	min_caml_init_float_array
min_caml_init_float_array:
# x5 = アドレス, x6 = 配列サイズ, x65 = 初期化要素  として, init_array_loopを呼ぶ
	mv x4, x5 # loop-variantは次の要素を置くアドレスに
	add x8, x5, x6 # 配列の末尾アドレスを計算 word addr
	# 返り値a0は先頭アドレスのまま
	j init_float_array_loop
init_float_array_loop_cont:
	sw x65, 0(x4)
	addi x4, x4, 1
init_float_array_loop:
	bne x4, x8, init_float_array_loop_cont # 配列の末尾に達したら終了
	ret
