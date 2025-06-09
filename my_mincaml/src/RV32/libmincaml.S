#	create_array
	.text
	.align	2
	.globl	min_caml_create_array
min_caml_create_array:
# a0 = 配列サイズ, a1 = 初期化要素 として, create_array_loopを呼ぶ
	mv t0, a0 # t0 = a0 からデクリメントしつつloopを回す
	mv a0, s11 # 返り値a0に配列をおくヒープの先頭アドレスを入れる
create_array_loop:
	beq t0, zero, create_array_exit # ループインデックスが0になったら終了
	sw a1, 0(s11)
	addi t0, t0, -1
	addi s11,s11, 4
	j create_array_loop
create_array_exit:
	ret
#	create_float_array
	.globl	min_caml_create_float_array
min_caml_create_float_array:
# a0 = 配列サイズ, fa0 = 初期化要素 として, create_array_loopを呼ぶ
	mv t0, a0 # t0 = a0 からデクリメントしつつloopを回す
	mv a0, s11 # 返り値a0に配列をおくヒープの先頭アドレスを入れる
create_float_array_loop:
	beq t0, zero, create_array_exit # ループインデックスが0になったら終了
	fsw fa0, 0(s11)
	addi t0, t0, -1
	addi s11,s11, 4
	j create_float_array_loop
create_float_array_exit:
	ret
# init_array : craete_arrayではヒープ上に配列を作るが, こちらはもらったアドレスの場所に配列を作る
	.globl	min_caml_init_array
min_caml_init_array:
# a0 = アドレス, a1 = 配列サイズ, a2 = 初期化要素  として, init_array_loopを呼ぶ
	mv t0, a0 # loop-variantは次の要素を置くアドレスに
	slli t1, a1, 2 # 配列のバイト数
	add t1, a0, t1 # 配列の末尾アドレスを計算
	# 返り値a0は先頭アドレスのまま
init_array_loop:
	beq t0, t1, init_array_exit # 配列の末尾に達したら終了
	sw a2, 0(t0)
	addi t0, t0, 4
	j init_array_loop
init_array_exit:
	ret
#	init_float_array
	.globl	min_caml_init_float_array
min_caml_init_float_array:
# a0 = アドレス, a1 = 配列サイズ, fa0 = 初期化要素  として, init_array_loopを呼ぶ
	mv t0, a0 # loop-variantは次の要素を置くアドレスに
	slli t1, a1, 2 # 配列のバイト数
	add t1, a0, t1 # 配列の末尾アドレスを計算
	# 返り値a0は先頭アドレスのまま
init_float_array_loop:
	beq t0, t1, init_array_exit # 配列の末尾に達したら終了
	fsw fa0, 0(t0)
	addi t0, t0, 4
	j init_array_loop
init_float_array_exit:
	ret

