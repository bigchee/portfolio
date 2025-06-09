#	create_array
	.globl	min_caml_create_array
min_caml_create_array:	
# a0 = 配列サイズ, a1 = 初期化要素 として, create_array_loopを呼ぶ
	mv t5, a0 # t5 = a0 からデクリメントしつつloopを回す
	mv a0, s11 # 返り値a0に配列をおくヒープの先頭アドレスを入れる
create_array_loop:
	beq t5, zero, create_array_exit # ループインデックスが0になったら終了
	sw a1, 0(s11)
	addi t5, t5, -1
	addi s11,s11, 1
	j create_array_loop
create_array_exit:
	ret
#	create_float_array
	.globl	min_caml_create_float_array
min_caml_create_float_array:
# a0 = 配列サイズ, fa0 = 初期化要素 として, create_array_loopを呼ぶ
	mv t5, a0 # t5 = a0 からデクリメントしつつloopを回す
	mv a0, s11 # 返り値a0に配列をおくヒープの先頭アドレスを入れる
create_float_array_loop:
	beq t5, zero, create_array_exit # ループインデックスが0になったら終了
	sw fa0, 0(s11)
	addi t5, t5, -1
	addi s11,s11, 1
	j create_float_array_loop
create_float_array_exit:
	ret
	.globl	min_caml_init_array 
min_caml_init_array:
	mv t5, a0 # loop-variantは次の要素を置くアドレスに
	add a4, a0, a1 # 配列の末尾アドレスを計算 word addr
	# 返り値a0は先頭アドレスのまま
init_array_loop:
	beq t5, a4, init_array_exit # 配列の末尾に達したら終了
	sw a2, 0(t5)
	addi t5, t5, 1
	j init_array_loop
init_array_exit:
	ret
#	init_float_array
	.globl	min_caml_init_float_array
min_caml_init_float_array:
# a0 = アドレス, a1 = 配列サイズ, fa0 = 初期化要素  として, init_array_loopを呼ぶ
	mv t5, a0 # loop-variantは次の要素を置くアドレスに
	add a4, a0, a1 # 配列の末尾アドレスを計算 word addr
	# 返り値a0は先頭アドレスのまま
init_float_array_loop:
	beq t5, a4, init_array_exit # 配列の末尾に達したら終了
	sw fa0, 0(t5)
	addi t5, t5, 1
	j init_float_array_loop
init_float_array_exit:
	ret
