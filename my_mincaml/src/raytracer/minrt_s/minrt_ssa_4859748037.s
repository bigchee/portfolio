	.data
min_caml_Ta79690:	space 1
min_caml_Ta79695:	space 1
min_caml_Tt79677:	space 11
min_caml_Tt79736:	space 2
min_caml_Tt79749:	space 4
min_caml_and_net:	space 50
min_caml_beam:	space 1
min_caml_consts:	space 60
min_caml_diffuse_ray:	space 3
min_caml_dirvecs:	space 5
min_caml_dummy:	space 0
min_caml_dummy_vs:	space 0
min_caml_dummydv:	space 2
min_caml_dummyf:	space 0
min_caml_dummyf2:	space 0
min_caml_dummyf3:	space 0
min_caml_dummyff:	space 0
min_caml_dummyff3:	space 0
min_caml_image_center:	space 2
min_caml_image_size:	space 2
min_caml_intersected_object_id:	space 1
min_caml_intersection_point:	space 3
min_caml_intsec_rectside:	space 1
min_caml_light:	space 3
min_caml_light_dirvec:	space 2
min_caml_n_objects:	space 1
min_caml_n_reflections:	space 1
min_caml_nvector:	space 3
min_caml_objects:	space 660
min_caml_or_net:	space 1
min_caml_ptrace_dirvec:	space 3
min_caml_reflections:	space 720
min_caml_rgb:	space 3
min_caml_scan_pitch:	space 1
min_caml_screen:	space 3
min_caml_screenx_dir:	space 3
min_caml_screeny_dir:	space 3
min_caml_screenz_dir:	space 3
min_caml_solver_dist:	space 1
min_caml_startp:	space 3
min_caml_startp_fast:	space 3
min_caml_texture_color:	space 3
min_caml_tmin:	space 1
min_caml_v3:	space 3
min_caml_viewpoint:	space 3
	lui	x5, 1
	lui	x6, 128
	j	min_caml_start
read_object.2872:
	sw	ra, 0(x2)
	sw	x101, 1(x2)
	sw	x102, 2(x2)
	sw	x103, 3(x2)
	sw	x104, 4(x2)
	sw	x105, 5(x2)
	sw	x106, 6(x2)
	sw	x107, 7(x2)
	sw	x108, 8(x2)
	sw	x109, 9(x2)
	sw	x110, 10(x2)
	sw	x111, 11(x2)
	sw	x112, 12(x2)
	sw	x113, 13(x2)
	sw	x114, 14(x2)
body_read_object.2872:
# B1
# B2
	mv x101, x5
read_object_loop_b3:
# B3
	li x10, 60
	bgt	x10, x101, read_object_bleelse_b5
# B4
	lw	ra, 0(x2)
	lw	x101, 1(x2)
	lw	x102, 2(x2)
	lw	x103, 3(x2)
	lw	x104, 4(x2)
	lw	x105, 5(x2)
	lw	x106, 6(x2)
	lw	x107, 7(x2)
	lw	x108, 8(x2)
	lw	x109, 9(x2)
	lw	x110, 10(x2)
	lw	x111, 11(x2)
	lw	x112, 12(x2)
	lw	x113, 13(x2)
	lw	x114, 14(x2)
	ret
read_object_bleelse_b5:
# B5
	in32 x102
	li x10, -1
	beq	x102, x10, read_object_bneelse_b6
# B7
	in32 x103
	in32 x104
	in32 x105
	li x106, 3
	mv x5, x106
	mv x65, zero
min_caml_create_float_array.1:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.1
create_float_array_loop_cont.1:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.1:
	bne x4, zero, create_float_array_loop_cont.1
	mv x107, x5
	in32 x10
	sw x10, 0(x107)
	in32 x10
	sw x10, 1(x107)
	li x108, 2
	in32 x10
	sw x10, 2(x107)
	mv x5, x106
	mv x65, zero
min_caml_create_float_array.2:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.2
create_float_array_loop_cont.2:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.2:
	bne x4, zero, create_float_array_loop_cont.2
	mv x109, x5
	in32 x10
	sw x10, 0(x109)
	in32 x10
	sw x10, 1(x109)
	in32 x10
	sw x10, 2(x109)
	in32 x10
	fle x10, zero, x10
	xori x110, x10, 1
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.3:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.3
create_float_array_loop_cont.3:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.3:
	bne x4, zero, create_float_array_loop_cont.3
	mv x111, x5
	in32 x10
	sw x10, 0(x111)
	in32 x10
	sw x10, 1(x111)
	mv x5, x106
	mv x65, zero
min_caml_create_float_array.4:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.4
create_float_array_loop_cont.4:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.4:
	bne x4, zero, create_float_array_loop_cont.4
	mv x112, x5
	in32 x10
	sw x10, 0(x112)
	in32 x10
	sw x10, 1(x112)
	in32 x10
	sw x10, 2(x112)
	mv x5, x106
	mv x65, zero
min_caml_create_float_array.5:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.5
create_float_array_loop_cont.5:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.5:
	bne x4, zero, create_float_array_loop_cont.5
	mv x113, x5
	beq	x105, zero, read_object_bneelse_b8
# B9
	in32 x10
	lui x100, 248048
	addi x100, x100, -1483
	fmul x10, x10, x100
	sw x10, 0(x113)
	in32 x10
	fmul x10, x10, x100
	sw x10, 1(x113)
	in32 x10
	fmul x10, x10, x100
	sw x10, 2(x113)
read_object_bneelse_b8:
# B8
read_object_cont_b10:
# B10
	bne	x103, x108, read_object_beqelse_b12
# B11
	li x114, 1
	j read_object_cont_b13 # adhoc jump(2)
read_object_beqelse_b12:
# B12
	mv x114, x110
read_object_cont_b13:
# B13
	li x5, 4
	mv x65, zero
min_caml_create_float_array.6:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.6
create_float_array_loop_cont.6:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.6:
	bne x4, zero, create_float_array_loop_cont.6
	mv x10, x3
	addi x3, x3, 11
	sw x5, 10(x10)
	sw x113, 9(x10)
	sw x112, 8(x10)
	sw x111, 7(x10)
	sw x114, 6(x10)
	sw x109, 5(x10)
	sw x107, 4(x10)
	sw x105, 3(x10)
	sw x104, 2(x10)
	sw x103, 1(x10)
	sw x102, 0(x10)
	la x100, min_caml_objects
	add x4, x100, x101
	sw x10, 0(x4)
	lui x10, 260096
	bne	x103, x106, read_object_beqelse_b15
# B14
	lw x100, 0(x107)
	feq x11, x100, zero
	bne	x11, zero, read_object_beqelse_b17
# B16
	feq x11, x100, zero
	bne	x11, zero, read_object_beqelse_b19
# B18
	fle x11, x100, zero
	beq	x11, zero, read_object_bneelse_b21
# B20
	lui x11, 784384
	j read_object_cont_b22 # adhoc jump(2)
read_object_bneelse_b21:
# B21
	lui x11, 260096
	j read_object_cont_b22 # adhoc jump(2)
read_object_beqelse_b19:
# B19
	mv x11, zero
read_object_cont_b22:
# B22
	fmul x100, x100, x100
	fdiv x100, x11, x100
	j read_object_cont_b23 # adhoc jump(2)
read_object_beqelse_b17:
# B17
	mv x100, zero
read_object_cont_b23:
# B23
	sw x100, 0(x107)
	lw x100, 1(x107)
	feq x11, x100, zero
	bne	x11, zero, read_object_beqelse_b25
# B24
	feq x11, x100, zero
	bne	x11, zero, read_object_beqelse_b27
# B26
	fle x11, x100, zero
	beq	x11, zero, read_object_bneelse_b29
# B28
	lui x11, 784384
	j read_object_cont_b30 # adhoc jump(2)
read_object_bneelse_b29:
# B29
	lui x11, 260096
	j read_object_cont_b30 # adhoc jump(2)
read_object_beqelse_b27:
# B27
	mv x11, zero
read_object_cont_b30:
# B30
	fmul x100, x100, x100
	fdiv x100, x11, x100
	j read_object_cont_b31 # adhoc jump(2)
read_object_beqelse_b25:
# B25
	mv x100, zero
read_object_cont_b31:
# B31
	sw x100, 1(x107)
	lw x100, 2(x107)
	feq x11, x100, zero
	bne	x11, zero, read_object_beqelse_b33
# B32
	feq x11, x100, zero
	bne	x11, zero, read_object_beqelse_b35
# B34
	fle x11, x100, zero
	beq	x11, zero, read_object_bneelse_b37
# B36
	lui x11, 784384
	j read_object_cont_b38 # adhoc jump(2)
read_object_bneelse_b37:
# B37
	lui x11, 260096
	j read_object_cont_b38 # adhoc jump(2)
read_object_beqelse_b35:
# B35
	mv x11, zero
read_object_cont_b38:
# B38
	fmul x100, x100, x100
	fdiv x100, x11, x100
	j read_object_cont_b39 # adhoc jump(2)
read_object_beqelse_b33:
# B33
	mv x100, zero
read_object_cont_b39:
# B39
	sw x100, 2(x107)
	j read_object_cont_b47 # adhoc jump(2)
read_object_beqelse_b15:
# B15
	bne	x103, x108, read_object_beqelse_b41
# B40
	xori x100, x110, 1
	lw x11, 0(x107)
	fmul x11, x11, x11
	lw x12, 1(x107)
	fmul x12, x12, x12
	fadd x11, x11, x12
	lw x12, 2(x107)
	fmul x12, x12, x12
	fadd x11, x11, x12
	fsqrt x11, x11
	feq x12, x11, zero
	bne	x12, zero, read_object_beqelse_b43
# B42
	bne	x100, zero, read_object_beqelse_b45
# B44
	fdiv x100, x10, x11
	j read_object_cont_b46 # adhoc jump(2)
read_object_beqelse_b45:
# B45
	lui x100, 784384
	fdiv x100, x100, x11
	j read_object_cont_b46 # adhoc jump(2)
read_object_beqelse_b43:
# B43
	lui x100, 260096
read_object_cont_b46:
# B46
	lw x11, 0(x107)
	fmul x11, x11, x100
	sw x11, 0(x107)
	lw x11, 1(x107)
	fmul x11, x11, x100
	sw x11, 1(x107)
	lw x11, 2(x107)
	fmul x100, x11, x100
	sw x100, 2(x107)
read_object_beqelse_b41:
# B41
read_object_cont_b47:
# B47
	beq	x105, zero, read_object_bneelse_b48
# B49
	lw x100, 0(x113)
	fabs x100, x100
	lui x11, 265361
	addi x11, x11, -37
	lui x12, 262144
	mv x14, x11
	mv x13, x100
	j	read_object_loop_b50
read_object_bneelse_b51:	#moved
# B51
	fmul x14, x14, x12
read_object_loop_b50:
# B50
	fle x15, x13, x14
	beq	x15, zero, read_object_bneelse_b51
# B52
# B53
	mv x16, x100
	mv x17, x14
	j	read_object_loop_b54
read_object_beqelse_b58:	#moved
# B58
	fdiv x17, x17, x12
read_object_loop_b54:
# B54
	fle x100, x11, x16
	beq	x100, zero, read_object_bneelse_b55
# B56
	fle x100, x16, x17
	bne	x100, zero, read_object_beqelse_b58
# B57
	fsub x16, x16, x17
	fdiv x17, x17, x12
	j	read_object_loop_b54
read_object_bneelse_b55:
# B55
# B59
	lui x100, 263313
	addi x100, x100, -37
	fle x13, x100, x16
	bne	x13, zero, read_object_beqelse_b61
# B60
	mv x14, x16
	j read_object_cont_b62 # adhoc jump(2)
read_object_beqelse_b61:
# B61
	fsub x14, x16, x100
read_object_cont_b62:
# B62
	bne	x13, zero, read_object_beqelse_b64
# B63
	li x13, 1
	j read_object_cont_b65 # adhoc jump(2)
read_object_beqelse_b64:
# B64
	mv x13, zero
read_object_cont_b65:
# B65
	lui x15, 261265
	addi x15, x15, -37
	fle x16, x15, x14
	bne	x16, zero, read_object_beqelse_b67
# B66
	j read_object_cont_b68 # adhoc jump(2)
read_object_beqelse_b67:
# B67
	fsub x14, x100, x14
read_object_cont_b68:
# B68
	bne	x16, zero, read_object_beqelse_b70
# B69
	j read_object_cont_b71 # adhoc jump(2)
read_object_beqelse_b70:
# B70
	xori x13, x13, 1
read_object_cont_b71:
# B71
	lui x16, 259217
	addi x16, x16, -37
	fle x17, x16, x14
	lui x18, 782336
	lui x19, 250538
	addi x19, x19, 1929
	lui x20, 764728
	addi x20, x20, 262
	lui x21, 778923
	addi x21, x21, -1364
	lui x22, 245896
	addi x22, x22, 1638
	lui x23, 758998
	addi x23, x23, 1206
	bne	x17, zero, read_object_beqelse_b73
# B72
	fmul x14, x14, x14
	fmul x17, x14, x20
	fadd x17, x19, x17
	fmul x17, x14, x17
	fadd x17, x18, x17
	fmul x14, x14, x17
	fadd x14, x10, x14
	j read_object_cont_b74 # adhoc jump(2)
read_object_beqelse_b73:
# B73
	fsub x14, x15, x14
	fmul x17, x14, x14
	fmul x24, x17, x23
	fadd x24, x22, x24
	fmul x24, x17, x24
	fadd x24, x21, x24
	fmul x17, x17, x24
	fadd x17, x10, x17
	fmul x14, x14, x17
read_object_cont_b74:
# B74
	fle x17, x14, zero
	beq	x13, x17, read_object_bneelse_b76
# B75
	mv x13, x14
	j read_object_cont_b77 # adhoc jump(2)
read_object_bneelse_b76:
# B76
	fsub x13, zero, x14
read_object_cont_b77:
# B77
	lw x14, 0(x113)
	fle x17, x14, zero
	xori x17, x17, 1
	fabs x14, x14
	mv x25, x11
	mv x24, x14
	j	read_object_loop_b78
read_object_bneelse_b79:	#moved
# B79
	fmul x25, x25, x12
read_object_loop_b78:
# B78
	fle x26, x24, x25
	beq	x26, zero, read_object_bneelse_b79
# B80
# B81
	mv x27, x14
	mv x28, x25
	j	read_object_loop_b82
read_object_beqelse_b86:	#moved
# B86
	fdiv x28, x28, x12
read_object_loop_b82:
# B82
	fle x14, x11, x27
	beq	x14, zero, read_object_bneelse_b83
# B84
	fle x14, x27, x28
	bne	x14, zero, read_object_beqelse_b86
# B85
	fsub x27, x27, x28
	fdiv x28, x28, x12
	j	read_object_loop_b82
read_object_bneelse_b83:
# B83
# B87
	fle x14, x100, x27
	bne	x14, zero, read_object_beqelse_b89
# B88
	mv x24, x27
	j read_object_cont_b90 # adhoc jump(2)
read_object_beqelse_b89:
# B89
	fsub x24, x27, x100
read_object_cont_b90:
# B90
	bne	x14, zero, read_object_beqelse_b92
# B91
	mv x14, x17
	j read_object_cont_b93 # adhoc jump(2)
read_object_beqelse_b92:
# B92
	xori x14, x17, 1
read_object_cont_b93:
# B93
	fle x17, x15, x24
	bne	x17, zero, read_object_beqelse_b95
# B94
	mv x17, x24
	j read_object_cont_b96 # adhoc jump(2)
read_object_beqelse_b95:
# B95
	fsub x17, x100, x24
read_object_cont_b96:
# B96
	fle x24, x16, x17
	bne	x24, zero, read_object_beqelse_b98
# B97
	fmul x24, x17, x17
	fmul x25, x24, x23
	fadd x25, x22, x25
	fmul x25, x24, x25
	fadd x25, x21, x25
	fmul x24, x24, x25
	fadd x24, x10, x24
	fmul x17, x17, x24
	j read_object_cont_b99 # adhoc jump(2)
read_object_beqelse_b98:
# B98
	fsub x17, x15, x17
	fmul x17, x17, x17
	fmul x24, x17, x20
	fadd x24, x19, x24
	fmul x24, x17, x24
	fadd x24, x18, x24
	fmul x17, x17, x24
	fadd x17, x10, x17
read_object_cont_b99:
# B99
	fle x24, x17, zero
	beq	x14, x24, read_object_bneelse_b101
# B100
	mv x14, x17
	j read_object_cont_b102 # adhoc jump(2)
read_object_bneelse_b101:
# B101
	fsub x14, zero, x17
read_object_cont_b102:
# B102
	lw x17, 1(x113)
	fabs x17, x17
	mv x25, x11
	mv x24, x17
	j	read_object_loop_b103
read_object_bneelse_b104:	#moved
# B104
	fmul x25, x25, x12
read_object_loop_b103:
# B103
	fle x26, x24, x25
	beq	x26, zero, read_object_bneelse_b104
# B105
# B106
	mv x27, x17
	mv x28, x25
	j	read_object_loop_b107
read_object_beqelse_b111:	#moved
# B111
	fdiv x28, x28, x12
read_object_loop_b107:
# B107
	fle x17, x11, x27
	beq	x17, zero, read_object_bneelse_b108
# B109
	fle x17, x27, x28
	bne	x17, zero, read_object_beqelse_b111
# B110
	fsub x27, x27, x28
	fdiv x28, x28, x12
	j	read_object_loop_b107
read_object_bneelse_b108:
# B108
# B112
	fle x17, x100, x27
	bne	x17, zero, read_object_beqelse_b114
# B113
	mv x24, x27
	j read_object_cont_b115 # adhoc jump(2)
read_object_beqelse_b114:
# B114
	fsub x24, x27, x100
read_object_cont_b115:
# B115
	bne	x17, zero, read_object_beqelse_b117
# B116
	li x17, 1
	j read_object_cont_b118 # adhoc jump(2)
read_object_beqelse_b117:
# B117
	mv x17, zero
read_object_cont_b118:
# B118
	fle x25, x15, x24
	bne	x25, zero, read_object_beqelse_b120
# B119
	j read_object_cont_b121 # adhoc jump(2)
read_object_beqelse_b120:
# B120
	fsub x24, x100, x24
read_object_cont_b121:
# B121
	bne	x25, zero, read_object_beqelse_b123
# B122
	j read_object_cont_b124 # adhoc jump(2)
read_object_beqelse_b123:
# B123
	xori x17, x17, 1
read_object_cont_b124:
# B124
	fle x25, x16, x24
	bne	x25, zero, read_object_beqelse_b126
# B125
	fmul x24, x24, x24
	fmul x25, x24, x20
	fadd x25, x19, x25
	fmul x25, x24, x25
	fadd x25, x18, x25
	fmul x24, x24, x25
	fadd x24, x10, x24
	j read_object_cont_b127 # adhoc jump(2)
read_object_beqelse_b126:
# B126
	fsub x24, x15, x24
	fmul x25, x24, x24
	fmul x26, x25, x23
	fadd x26, x22, x26
	fmul x26, x25, x26
	fadd x26, x21, x26
	fmul x25, x25, x26
	fadd x25, x10, x25
	fmul x24, x24, x25
read_object_cont_b127:
# B127
	fle x25, x24, zero
	beq	x17, x25, read_object_bneelse_b129
# B128
	mv x17, x24
	j read_object_cont_b130 # adhoc jump(2)
read_object_bneelse_b129:
# B129
	fsub x17, zero, x24
read_object_cont_b130:
# B130
	lw x24, 1(x113)
	fle x25, x24, zero
	xori x25, x25, 1
	fabs x24, x24
	mv x27, x11
	mv x26, x24
	j	read_object_loop_b131
read_object_bneelse_b132:	#moved
# B132
	fmul x27, x27, x12
read_object_loop_b131:
# B131
	fle x28, x26, x27
	beq	x28, zero, read_object_bneelse_b132
# B133
# B134
	mv x30, x27
	mv x29, x24
	j	read_object_loop_b135
read_object_beqelse_b139:	#moved
# B139
	fdiv x30, x30, x12
read_object_loop_b135:
# B135
	fle x24, x11, x29
	beq	x24, zero, read_object_bneelse_b136
# B137
	fle x24, x29, x30
	bne	x24, zero, read_object_beqelse_b139
# B138
	fsub x29, x29, x30
	fdiv x30, x30, x12
	j	read_object_loop_b135
read_object_bneelse_b136:
# B136
# B140
	fle x24, x100, x29
	bne	x24, zero, read_object_beqelse_b142
# B141
	mv x26, x29
	j read_object_cont_b143 # adhoc jump(2)
read_object_beqelse_b142:
# B142
	fsub x26, x29, x100
read_object_cont_b143:
# B143
	bne	x24, zero, read_object_beqelse_b145
# B144
	mv x24, x25
	j read_object_cont_b146 # adhoc jump(2)
read_object_beqelse_b145:
# B145
	xori x24, x25, 1
read_object_cont_b146:
# B146
	fle x25, x15, x26
	bne	x25, zero, read_object_beqelse_b148
# B147
	mv x25, x26
	j read_object_cont_b149 # adhoc jump(2)
read_object_beqelse_b148:
# B148
	fsub x25, x100, x26
read_object_cont_b149:
# B149
	fle x26, x16, x25
	bne	x26, zero, read_object_beqelse_b151
# B150
	fmul x26, x25, x25
	fmul x27, x26, x23
	fadd x27, x22, x27
	fmul x27, x26, x27
	fadd x27, x21, x27
	fmul x26, x26, x27
	fadd x26, x10, x26
	fmul x25, x25, x26
	j read_object_cont_b152 # adhoc jump(2)
read_object_beqelse_b151:
# B151
	fsub x25, x15, x25
	fmul x25, x25, x25
	fmul x26, x25, x20
	fadd x26, x19, x26
	fmul x26, x25, x26
	fadd x26, x18, x26
	fmul x25, x25, x26
	fadd x25, x10, x25
read_object_cont_b152:
# B152
	fle x26, x25, zero
	beq	x24, x26, read_object_bneelse_b154
# B153
	mv x24, x25
	j read_object_cont_b155 # adhoc jump(2)
read_object_bneelse_b154:
# B154
	fsub x24, zero, x25
read_object_cont_b155:
# B155
	lw x25, 2(x113)
	fabs x25, x25
	mv x27, x11
	mv x26, x25
	j	read_object_loop_b156
read_object_bneelse_b157:	#moved
# B157
	fmul x27, x27, x12
read_object_loop_b156:
# B156
	fle x28, x26, x27
	beq	x28, zero, read_object_bneelse_b157
# B158
# B159
	mv x30, x27
	mv x29, x25
	j	read_object_loop_b160
read_object_beqelse_b164:	#moved
# B164
	fdiv x30, x30, x12
read_object_loop_b160:
# B160
	fle x25, x11, x29
	beq	x25, zero, read_object_bneelse_b161
# B162
	fle x25, x29, x30
	bne	x25, zero, read_object_beqelse_b164
# B163
	fsub x29, x29, x30
	fdiv x30, x30, x12
	j	read_object_loop_b160
read_object_bneelse_b161:
# B161
# B165
	fle x25, x100, x29
	bne	x25, zero, read_object_beqelse_b167
# B166
	mv x26, x29
	j read_object_cont_b168 # adhoc jump(2)
read_object_beqelse_b167:
# B167
	fsub x26, x29, x100
read_object_cont_b168:
# B168
	bne	x25, zero, read_object_beqelse_b170
# B169
	li x25, 1
	j read_object_cont_b171 # adhoc jump(2)
read_object_beqelse_b170:
# B170
	mv x25, zero
read_object_cont_b171:
# B171
	fle x27, x15, x26
	bne	x27, zero, read_object_beqelse_b173
# B172
	j read_object_cont_b174 # adhoc jump(2)
read_object_beqelse_b173:
# B173
	fsub x26, x100, x26
read_object_cont_b174:
# B174
	bne	x27, zero, read_object_beqelse_b176
# B175
	j read_object_cont_b177 # adhoc jump(2)
read_object_beqelse_b176:
# B176
	xori x25, x25, 1
read_object_cont_b177:
# B177
	fle x27, x16, x26
	bne	x27, zero, read_object_beqelse_b179
# B178
	fmul x26, x26, x26
	fmul x27, x26, x20
	fadd x27, x19, x27
	fmul x27, x26, x27
	fadd x27, x18, x27
	fmul x26, x26, x27
	fadd x26, x10, x26
	j read_object_cont_b180 # adhoc jump(2)
read_object_beqelse_b179:
# B179
	fsub x26, x15, x26
	fmul x27, x26, x26
	fmul x28, x27, x23
	fadd x28, x22, x28
	fmul x28, x27, x28
	fadd x28, x21, x28
	fmul x27, x27, x28
	fadd x27, x10, x27
	fmul x26, x26, x27
read_object_cont_b180:
# B180
	fle x27, x26, zero
	beq	x25, x27, read_object_bneelse_b182
# B181
	mv x25, x26
	j read_object_cont_b183 # adhoc jump(2)
read_object_bneelse_b182:
# B182
	fsub x25, zero, x26
read_object_cont_b183:
# B183
	lw x26, 2(x113)
	fle x27, x26, zero
	xori x27, x27, 1
	fabs x26, x26
	mv x28, x26
	mv x29, x11
	j	read_object_loop_b184
read_object_bneelse_b185:	#moved
# B185
	fmul x29, x29, x12
read_object_loop_b184:
# B184
	fle x30, x28, x29
	beq	x30, zero, read_object_bneelse_b185
# B186
# B187
	mv x31, x26
	mv x32, x29
	j	read_object_loop_b188
read_object_beqelse_b192:	#moved
# B192
	fdiv x32, x32, x12
read_object_loop_b188:
# B188
	fle x26, x11, x31
	beq	x26, zero, read_object_bneelse_b189
# B190
	fle x26, x31, x32
	bne	x26, zero, read_object_beqelse_b192
# B191
	fsub x31, x31, x32
	fdiv x32, x32, x12
	j	read_object_loop_b188
read_object_bneelse_b189:
# B189
# B193
	fle x11, x100, x31
	bne	x11, zero, read_object_beqelse_b195
# B194
	mv x26, x31
	j read_object_cont_b196 # adhoc jump(2)
read_object_beqelse_b195:
# B195
	fsub x26, x31, x100
read_object_cont_b196:
# B196
	bne	x11, zero, read_object_beqelse_b198
# B197
	mv x11, x27
	j read_object_cont_b199 # adhoc jump(2)
read_object_beqelse_b198:
# B198
	xori x11, x27, 1
read_object_cont_b199:
# B199
	fle x27, x15, x26
	bne	x27, zero, read_object_beqelse_b201
# B200
	mv x100, x26
	j read_object_cont_b202 # adhoc jump(2)
read_object_beqelse_b201:
# B201
	fsub x100, x100, x26
read_object_cont_b202:
# B202
	fle x16, x16, x100
	bne	x16, zero, read_object_beqelse_b204
# B203
	fmul x15, x100, x100
	fmul x16, x15, x23
	fadd x16, x22, x16
	fmul x16, x15, x16
	fadd x16, x21, x16
	fmul x15, x15, x16
	fadd x10, x10, x15
	fmul x10, x100, x10
	j read_object_cont_b205 # adhoc jump(2)
read_object_beqelse_b204:
# B204
	fsub x100, x15, x100
	fmul x100, x100, x100
	fmul x15, x100, x20
	fadd x15, x19, x15
	fmul x15, x100, x15
	fadd x15, x18, x15
	fmul x100, x100, x15
	fadd x10, x10, x100
read_object_cont_b205:
# B205
	fle x100, x10, zero
	beq	x11, x100, read_object_bneelse_b207
# B206
	j read_object_cont_b208 # adhoc jump(2)
read_object_bneelse_b207:
# B207
	fsub x10, zero, x10
read_object_cont_b208:
# B208
	fmul x100, x17, x25
	fmul x11, x14, x24
	fmul x15, x11, x25
	fmul x16, x13, x10
	fsub x15, x15, x16
	fmul x16, x13, x24
	fmul x18, x16, x25
	fmul x19, x14, x10
	fadd x18, x18, x19
	fmul x19, x17, x10
	fmul x11, x11, x10
	fmul x20, x13, x25
	fadd x11, x11, x20
	fmul x10, x16, x10
	fmul x16, x14, x25
	fsub x10, x10, x16
	fsub x16, zero, x24
	fmul x14, x14, x17
	fmul x13, x13, x17
	lw x17, 0(x107)
	lw x20, 1(x107)
	lw x21, 2(x107)
	fmul x22, x100, x100
	fmul x22, x17, x22
	fmul x23, x19, x19
	fmul x23, x20, x23
	fadd x22, x22, x23
	fmul x23, x16, x16
	fmul x23, x21, x23
	fadd x22, x22, x23
	sw x22, 0(x107)
	fmul x22, x15, x15
	fmul x22, x17, x22
	fmul x23, x11, x11
	fmul x23, x20, x23
	fadd x22, x22, x23
	fmul x23, x14, x14
	fmul x23, x21, x23
	fadd x22, x22, x23
	sw x22, 1(x107)
	fmul x22, x18, x18
	fmul x22, x17, x22
	fmul x23, x10, x10
	fmul x23, x20, x23
	fadd x22, x22, x23
	fmul x23, x13, x13
	fmul x23, x21, x23
	fadd x22, x22, x23
	sw x22, 2(x107)
	fmul x22, x17, x15
	fmul x22, x22, x18
	fmul x23, x20, x11
	fmul x23, x23, x10
	fadd x22, x22, x23
	fmul x23, x21, x14
	fmul x23, x23, x13
	fadd x22, x22, x23
	fmul x22, x12, x22
	sw x22, 0(x113)
	fmul x100, x17, x100
	fmul x17, x100, x18
	fmul x18, x20, x19
	fmul x10, x18, x10
	fadd x10, x17, x10
	fmul x16, x21, x16
	fmul x13, x16, x13
	fadd x10, x10, x13
	fmul x10, x12, x10
	sw x10, 1(x113)
	fmul x10, x100, x15
	fmul x100, x18, x11
	fadd x10, x10, x100
	fmul x100, x16, x14
	fadd x10, x10, x100
	fmul x10, x12, x10
	sw x10, 2(x113)
read_object_bneelse_b48:
# B48
read_object_cont_b209:
# B209
# B212
	addi x101, x101, 1
	j	read_object_loop_b3
read_object_bneelse_b6:
# B6
# B211
	la x10, min_caml_n_objects
	sw x101, 0(x10)
	lw	ra, 0(x2)
	lw	x101, 1(x2)
	lw	x102, 2(x2)
	lw	x103, 3(x2)
	lw	x104, 4(x2)
	lw	x105, 5(x2)
	lw	x106, 6(x2)
	lw	x107, 7(x2)
	lw	x108, 8(x2)
	lw	x109, 9(x2)
	lw	x110, 10(x2)
	lw	x111, 11(x2)
	lw	x112, 12(x2)
	lw	x113, 13(x2)
	lw	x114, 14(x2)
	ret
read_net_item.2876:
# B213
	sw	x5, 0(x2)
# B214
	in32 x10
	sw	x10, 1(x2)
	li x100, -1
	bne	x10, x100, read_net_item_beqelse_b216
# B215
	addi x5, x5, 1
	mv x6, x100
min_caml_create_array.7:
	mv x4, x5
	mv x5, x3
	j create_array_loop.7
create_array_loop_cont.7:
	sw x6, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_array_loop.7:
	bne x4, zero, create_array_loop_cont.7
	ret
read_net_item_beqelse_b216:
# B216
	addi x5, x5, 1
	sw	ra, 2(x2)
	addi	x2, x2, 3
	jal	read_net_item.2876
	addi	x2, x2, -3
	lw	ra, 2(x2)
	lw	x10, 1(x2)
	lw	x100, 0(x2)
	add x4, x5, x100
	sw x10, 0(x4)
	ret
read_or_network.2878:
# B217
	sw	x5, 0(x2)
# B218
	mv x5, zero
	sw	ra, 1(x2)
	addi	x2, x2, 2
	jal	read_net_item.2876
	addi	x2, x2, -2
	lw	ra, 1(x2)
	sw	x5, 1(x2)
	lw x10, 0(x5)
	li x100, -1
	bne	x10, x100, read_or_network_beqelse_b220
# B219
	lw	x11, 0(x2)
	addi x10, x11, 1
	mv x6, x5
	mv x5, x10
min_caml_create_array.8:
	mv x4, x5
	mv x5, x3
	j create_array_loop.8
create_array_loop_cont.8:
	sw x6, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_array_loop.8:
	bne x4, zero, create_array_loop_cont.8
	ret
read_or_network_beqelse_b220:
# B220
	lw	x11, 0(x2)
	addi x5, x11, 1
	sw	ra, 2(x2)
	addi	x2, x2, 3
	jal	read_or_network.2878
	addi	x2, x2, -3
	lw	ra, 2(x2)
	lw	x10, 1(x2)
	lw	x100, 0(x2)
	add x4, x5, x100
	sw x10, 0(x4)
	ret
shadow_check_one_or_matrix.3019:
# B221
# B222
	mv x10, x5
	mv x100, x6
shadow_check_one_or_matrix_loop_b223:
# B223
	add x4, x100, x10
	lw x11, 0(x4)
	lw x12, 0(x11)
	li x13, 1
	li x14, -1
	bne	x12, x14, shadow_check_one_or_matrix_beqelse_b225
# B224
	mv x5, zero
	ret
shadow_check_one_or_matrix_beqelse_b225:
# B225
	li x15, 99
	bne	x12, x15, shadow_check_one_or_matrix_beqelse_b227
# B226
	addi x10, x10, 1
	j shadow_check_one_or_matrix_cont_b367 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b227:
# B227
	la x15, min_caml_light_dirvec
	la x16, min_caml_intersection_point
	la x17, min_caml_objects
	add x4, x17, x12
	lw x18, 0(x4)
	lw x19, 0(x16)
	lw x20, 5(x18)
	lw x20, 0(x20)
	fsub x19, x19, x20
	lw x20, 1(x16)
	lw x21, 5(x18)
	lw x21, 1(x21)
	fsub x20, x20, x21
	li x21, 2
	lw x22, 2(x16)
	lw x23, 5(x18)
	lw x23, 2(x23)
	fsub x22, x22, x23
	lw x23, 1(x15)
	add x4, x23, x12
	lw x12, 0(x4)
	lw x23, 1(x18)
	bne	x23, x13, shadow_check_one_or_matrix_beqelse_b229
# B228
	lw x23, 0(x15)
	lw x24, 0(x12)
	fsub x24, x24, x19
	lw x25, 1(x12)
	fmul x24, x24, x25
	lw x25, 1(x23)
	fmul x25, x24, x25
	fadd x25, x25, x20
	fabs x25, x25
	lw x26, 4(x18)
	lw x26, 1(x26)
	fle x25, x26, x25
	bne	x25, zero, shadow_check_one_or_matrix_beqelse_b230
# B231
	lw x25, 2(x23)
	fmul x25, x24, x25
	fadd x25, x25, x22
	fabs x25, x25
	lw x26, 4(x18)
	lw x26, 2(x26)
	fle x25, x26, x25
	bne	x25, zero, shadow_check_one_or_matrix_beqelse_b232
# B233
	lw x25, 1(x12)
	feq x25, x25, zero
	xori x25, x25, 1
	mv x26, x25
# B234
	bne	x26, zero, shadow_check_one_or_matrix_beqelse_b236
	j shadow_check_one_or_matrix_cont_b235 # adhoc jump(3)
shadow_check_one_or_matrix_beqelse_b236:
# B236
	la x12, min_caml_solver_dist
	sw x24, 0(x12)
	j shadow_check_one_or_matrix_cont_b270 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b232:
# B232
shadow_check_one_or_matrix_beqelse_b230:
# B230
shadow_check_one_or_matrix_cont_b235:
# B235
	lw x24, 2(x12)
	fsub x24, x24, x20
	lw x25, 3(x12)
	fmul x24, x24, x25
	lw x25, 0(x23)
	fmul x25, x24, x25
	fadd x25, x25, x19
	fabs x25, x25
	lw x26, 4(x18)
	lw x26, 0(x26)
	fle x25, x26, x25
	bne	x25, zero, shadow_check_one_or_matrix_beqelse_b237
# B238
	lw x25, 2(x23)
	fmul x25, x24, x25
	fadd x25, x25, x22
	fabs x25, x25
	lw x26, 4(x18)
	lw x26, 2(x26)
	fle x25, x26, x25
	bne	x25, zero, shadow_check_one_or_matrix_beqelse_b239
# B240
	lw x25, 3(x12)
	feq x25, x25, zero
	xori x25, x25, 1
	mv x26, x25
# B241
	bne	x26, zero, shadow_check_one_or_matrix_beqelse_b243
	j shadow_check_one_or_matrix_cont_b242 # adhoc jump(3)
shadow_check_one_or_matrix_beqelse_b243:
# B243
	la x12, min_caml_solver_dist
	sw x24, 0(x12)
	j shadow_check_one_or_matrix_cont_b270 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b239:
# B239
shadow_check_one_or_matrix_beqelse_b237:
# B237
shadow_check_one_or_matrix_cont_b242:
# B242
	lw x24, 4(x12)
	fsub x22, x24, x22
	lw x24, 5(x12)
	fmul x22, x22, x24
	lw x24, 0(x23)
	fmul x24, x22, x24
	fadd x19, x24, x19
	fabs x19, x19
	lw x24, 4(x18)
	lw x24, 0(x24)
	fle x19, x24, x19
	bne	x19, zero, shadow_check_one_or_matrix_beqelse_b244
# B245
	lw x19, 1(x23)
	fmul x19, x22, x19
	fadd x19, x19, x20
	fabs x19, x19
	lw x18, 4(x18)
	lw x18, 1(x18)
	fle x18, x18, x19
	bne	x18, zero, shadow_check_one_or_matrix_beqelse_b246
# B247
	lw x12, 5(x12)
	feq x12, x12, zero
	xori x12, x12, 1
	mv x18, x12
# B248
	bne	x18, zero, shadow_check_one_or_matrix_beqelse_b250
	j shadow_check_one_or_matrix_cont_b249 # adhoc jump(3)
shadow_check_one_or_matrix_beqelse_b250:
# B250
	la x12, min_caml_solver_dist
	sw x22, 0(x12)
	j shadow_check_one_or_matrix_cont_b270 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b246:
# B246
shadow_check_one_or_matrix_beqelse_b244:
# B244
shadow_check_one_or_matrix_cont_b249:
# B249
	j shadow_check_one_or_matrix_cont_b269 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b229:
# B229
	bne	x23, x21, shadow_check_one_or_matrix_beqelse_b252
# B251
	lw x18, 0(x12)
	fle x18, zero, x18
	bne	x18, zero, shadow_check_one_or_matrix_beqelse_b253
# B254
	la x18, min_caml_solver_dist
	lw x23, 1(x12)
	fmul x19, x23, x19
	lw x23, 2(x12)
	fmul x20, x23, x20
	fadd x19, x19, x20
	lw x12, 3(x12)
	fmul x12, x12, x22
	fadd x12, x19, x12
	sw x12, 0(x18)
	j shadow_check_one_or_matrix_cont_b270 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b253:
# B253
	j shadow_check_one_or_matrix_cont_b269 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b252:
# B252
	lw x23, 0(x12)
	feq x24, x23, zero
	bne	x24, zero, shadow_check_one_or_matrix_beqelse_b256
# B255
	lw x24, 1(x12)
	fmul x24, x24, x19
	lw x25, 2(x12)
	fmul x25, x25, x20
	fadd x24, x24, x25
	li x25, 3
	lw x26, 3(x12)
	fmul x26, x26, x22
	fadd x24, x24, x26
	fmul x26, x19, x19
	lw x27, 4(x18)
	lw x27, 0(x27)
	fmul x26, x26, x27
	fmul x27, x20, x20
	lw x28, 4(x18)
	lw x28, 1(x28)
	fmul x27, x27, x28
	fadd x26, x26, x27
	fmul x27, x22, x22
	lw x28, 4(x18)
	lw x28, 2(x28)
	fmul x27, x27, x28
	fadd x26, x26, x27
	lw x27, 3(x18)
	bne	x27, zero, shadow_check_one_or_matrix_beqelse_b258
# B257
	mv x19, x26
	j shadow_check_one_or_matrix_cont_b259 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b258:
# B258
	fmul x27, x20, x22
	lw x28, 9(x18)
	lw x28, 0(x28)
	fmul x27, x27, x28
	fadd x26, x26, x27
	fmul x22, x22, x19
	lw x27, 9(x18)
	lw x27, 1(x27)
	fmul x22, x22, x27
	fadd x22, x26, x22
	fmul x19, x19, x20
	lw x20, 9(x18)
	lw x20, 2(x20)
	fmul x19, x19, x20
	fadd x19, x22, x19
shadow_check_one_or_matrix_cont_b259:
# B259
	lw x20, 1(x18)
	bne	x20, x25, shadow_check_one_or_matrix_beqelse_b261
# B260
	lui x20, 260096
	fsub x19, x19, x20
shadow_check_one_or_matrix_beqelse_b261:
# B261
shadow_check_one_or_matrix_cont_b262:
# B262
	fmul x20, x24, x24
	fmul x19, x23, x19
	fsub x19, x20, x19
	fle x20, x19, zero
	bne	x20, zero, shadow_check_one_or_matrix_beqelse_b263
# B264
	lw x18, 6(x18)
	bne	x18, zero, shadow_check_one_or_matrix_beqelse_b266
# B265
	la x18, min_caml_solver_dist
	fsqrt x19, x19
	fsub x19, x24, x19
	lw x12, 4(x12)
	fmul x12, x19, x12
	sw x12, 0(x18)
	j shadow_check_one_or_matrix_cont_b267 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b266:
# B266
	la x18, min_caml_solver_dist
	fsqrt x19, x19
	fadd x19, x24, x19
	lw x12, 4(x12)
	fmul x12, x19, x12
	sw x12, 0(x18)
shadow_check_one_or_matrix_cont_b267:
# B267
shadow_check_one_or_matrix_cont_b270:
# B270
	la x12, min_caml_solver_dist
	lw x18, 0(x12)
	lui x19, 777421
	addi x19, x19, -819
	fle x18, x19, x18
	beq	x18, zero, shadow_check_one_or_matrix_bneelse_b272
# B271
	addi x10, x10, 1
	j shadow_check_one_or_matrix_cont_b366 # adhoc jump(2)
shadow_check_one_or_matrix_bneelse_b272:
# B272
	mv x20, x11
	mv x19, x13
shadow_check_one_or_matrix_loop_b273:
# B273
	add x4, x20, x19
	lw x18, 0(x4)
	beq	x18, x14, shadow_check_one_or_matrix_bneelse_b274
# B275
	la x22, min_caml_and_net
	add x4, x22, x18
	lw x18, 0(x4)
	mv x23, x18
	mv x22, zero
shadow_check_one_or_matrix_loop_b276:
# B276
	add x4, x23, x22
	lw x18, 0(x4)
	beq	x18, x14, shadow_check_one_or_matrix_bneelse_b277
# B278
	add x4, x23, x22
	lw x18, 0(x4)
	add x4, x17, x18
	lw x24, 0(x4)
	lw x25, 0(x16)
	lw x26, 5(x24)
	lw x26, 0(x26)
	fsub x25, x25, x26
	lw x26, 1(x16)
	lw x27, 5(x24)
	lw x27, 1(x27)
	fsub x26, x26, x27
	lw x27, 2(x16)
	lw x28, 5(x24)
	lw x28, 2(x28)
	fsub x27, x27, x28
	lw x28, 1(x15)
	add x4, x28, x18
	lw x28, 0(x4)
	lw x29, 1(x24)
	bne	x29, x13, shadow_check_one_or_matrix_beqelse_b280
# B279
	lw x29, 0(x15)
	lw x30, 0(x28)
	fsub x30, x30, x25
	lw x31, 1(x28)
	fmul x30, x30, x31
	lw x31, 1(x29)
	fmul x31, x30, x31
	fadd x31, x31, x26
	fabs x31, x31
	lw x32, 4(x24)
	lw x32, 1(x32)
	fle x31, x32, x31
	bne	x31, zero, shadow_check_one_or_matrix_beqelse_b281
# B282
	lw x31, 2(x29)
	fmul x31, x30, x31
	fadd x31, x31, x27
	fabs x31, x31
	lw x32, 4(x24)
	lw x32, 2(x32)
	fle x31, x32, x31
	bne	x31, zero, shadow_check_one_or_matrix_beqelse_b283
# B284
	lw x31, 1(x28)
	feq x31, x31, zero
	xori x31, x31, 1
	mv x32, x31
# B285
	bne	x32, zero, shadow_check_one_or_matrix_beqelse_b287
	j shadow_check_one_or_matrix_cont_b286 # adhoc jump(3)
shadow_check_one_or_matrix_beqelse_b287:
# B287
	sw x30, 0(x12)
	lw x25, 0(x12)
	j shadow_check_one_or_matrix_cont_b321 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b283:
# B283
shadow_check_one_or_matrix_beqelse_b281:
# B281
shadow_check_one_or_matrix_cont_b286:
# B286
	lw x30, 2(x28)
	fsub x30, x30, x26
	lw x31, 3(x28)
	fmul x30, x30, x31
	lw x31, 0(x29)
	fmul x31, x30, x31
	fadd x31, x31, x25
	fabs x31, x31
	lw x32, 4(x24)
	lw x32, 0(x32)
	fle x31, x32, x31
	bne	x31, zero, shadow_check_one_or_matrix_beqelse_b288
# B289
	lw x31, 2(x29)
	fmul x31, x30, x31
	fadd x31, x31, x27
	fabs x31, x31
	lw x32, 4(x24)
	lw x32, 2(x32)
	fle x31, x32, x31
	bne	x31, zero, shadow_check_one_or_matrix_beqelse_b290
# B291
	lw x31, 3(x28)
	feq x31, x31, zero
	xori x31, x31, 1
	mv x32, x31
# B292
	bne	x32, zero, shadow_check_one_or_matrix_beqelse_b294
	j shadow_check_one_or_matrix_cont_b293 # adhoc jump(3)
shadow_check_one_or_matrix_beqelse_b294:
# B294
	sw x30, 0(x12)
	lw x25, 0(x12)
	j shadow_check_one_or_matrix_cont_b321 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b290:
# B290
shadow_check_one_or_matrix_beqelse_b288:
# B288
shadow_check_one_or_matrix_cont_b293:
# B293
	lw x30, 4(x28)
	fsub x27, x30, x27
	lw x30, 5(x28)
	fmul x27, x27, x30
	lw x30, 0(x29)
	fmul x30, x27, x30
	fadd x25, x30, x25
	fabs x25, x25
	lw x30, 4(x24)
	lw x30, 0(x30)
	fle x25, x30, x25
	bne	x25, zero, shadow_check_one_or_matrix_beqelse_b295
# B296
	lw x25, 1(x29)
	fmul x25, x27, x25
	fadd x25, x25, x26
	fabs x25, x25
	lw x24, 4(x24)
	lw x24, 1(x24)
	fle x24, x24, x25
	bne	x24, zero, shadow_check_one_or_matrix_beqelse_b297
# B298
	lw x24, 5(x28)
	feq x24, x24, zero
	xori x24, x24, 1
	mv x25, x24
# B299
	bne	x25, zero, shadow_check_one_or_matrix_beqelse_b301
	j shadow_check_one_or_matrix_cont_b300 # adhoc jump(3)
shadow_check_one_or_matrix_beqelse_b301:
# B301
	sw x27, 0(x12)
	lw x25, 0(x12)
	j shadow_check_one_or_matrix_cont_b321 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b297:
# B297
shadow_check_one_or_matrix_beqelse_b295:
# B295
shadow_check_one_or_matrix_cont_b300:
# B300
	lw x25, 0(x12)
	j shadow_check_one_or_matrix_cont_b320 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b280:
# B280
	bne	x29, x21, shadow_check_one_or_matrix_beqelse_b303
# B302
	lw x24, 0(x28)
	fle x24, zero, x24
	beq	x24, zero, shadow_check_one_or_matrix_bneelse_b305
# B304
	lw x25, 0(x12)
	j shadow_check_one_or_matrix_cont_b320 # adhoc jump(2)
shadow_check_one_or_matrix_bneelse_b305:
# B305
	lw x24, 1(x28)
	fmul x24, x24, x25
	lw x25, 2(x28)
	fmul x25, x25, x26
	fadd x24, x24, x25
	lw x25, 3(x28)
	fmul x25, x25, x27
	fadd x24, x24, x25
	sw x24, 0(x12)
	lw x25, 0(x12)
	j shadow_check_one_or_matrix_cont_b321 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b303:
# B303
	lw x29, 0(x28)
	feq x30, x29, zero
	bne	x30, zero, shadow_check_one_or_matrix_beqelse_b307
# B306
	lw x30, 1(x28)
	fmul x30, x30, x25
	lw x31, 2(x28)
	fmul x31, x31, x26
	fadd x30, x30, x31
	li x31, 3
	lw x32, 3(x28)
	fmul x32, x32, x27
	fadd x30, x30, x32
	fmul x32, x25, x25
	lw x33, 4(x24)
	lw x33, 0(x33)
	fmul x32, x32, x33
	fmul x33, x26, x26
	lw x34, 4(x24)
	lw x34, 1(x34)
	fmul x33, x33, x34
	fadd x32, x32, x33
	fmul x33, x27, x27
	lw x34, 4(x24)
	lw x34, 2(x34)
	fmul x33, x33, x34
	fadd x32, x32, x33
	lw x33, 3(x24)
	bne	x33, zero, shadow_check_one_or_matrix_beqelse_b309
# B308
	mv x25, x32
	j shadow_check_one_or_matrix_cont_b310 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b309:
# B309
	fmul x33, x26, x27
	lw x34, 9(x24)
	lw x34, 0(x34)
	fmul x33, x33, x34
	fadd x32, x32, x33
	fmul x27, x27, x25
	lw x33, 9(x24)
	lw x33, 1(x33)
	fmul x27, x27, x33
	fadd x27, x32, x27
	fmul x25, x25, x26
	lw x26, 9(x24)
	lw x26, 2(x26)
	fmul x25, x25, x26
	fadd x25, x27, x25
shadow_check_one_or_matrix_cont_b310:
# B310
	lw x26, 1(x24)
	bne	x26, x31, shadow_check_one_or_matrix_beqelse_b312
# B311
	lui x26, 260096
	fsub x25, x25, x26
shadow_check_one_or_matrix_beqelse_b312:
# B312
shadow_check_one_or_matrix_cont_b313:
# B313
	fmul x26, x30, x30
	fmul x25, x29, x25
	fsub x25, x26, x25
	fle x26, x25, zero
	beq	x26, zero, shadow_check_one_or_matrix_bneelse_b315
# B314
	lw x25, 0(x12)
	j shadow_check_one_or_matrix_cont_b320 # adhoc jump(2)
shadow_check_one_or_matrix_bneelse_b315:
# B315
	lw x24, 6(x24)
	bne	x24, zero, shadow_check_one_or_matrix_beqelse_b317
# B316
	fsqrt x24, x25
	fsub x24, x30, x24
	lw x25, 4(x28)
	fmul x24, x24, x25
	sw x24, 0(x12)
	j shadow_check_one_or_matrix_cont_b318 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b317:
# B317
	fsqrt x24, x25
	fadd x24, x30, x24
	lw x25, 4(x28)
	fmul x24, x24, x25
	sw x24, 0(x12)
shadow_check_one_or_matrix_cont_b318:
# B318
	lw x25, 0(x12)
shadow_check_one_or_matrix_cont_b321:
# B321
	lui x24, 779469
	addi x24, x24, -819
	fle x24, x24, x25
	xori x24, x24, 1
# B322
	addi x22, x22, 1
	bne	x24, zero, shadow_check_one_or_matrix_beqelse_b324
	j shadow_check_one_or_matrix_cont_b323 # adhoc jump(3)
shadow_check_one_or_matrix_beqelse_b324:
# B324
	lui x18, 246333
	addi x18, x18, 1802
	fadd x18, x25, x18
	la x24, min_caml_light
	lw x25, 0(x24)
	fmul x25, x25, x18
	lw x26, 0(x16)
	fadd x25, x25, x26
	lw x26, 1(x24)
	fmul x26, x26, x18
	lw x27, 1(x16)
	fadd x26, x26, x27
	lw x24, 2(x24)
	fmul x18, x24, x18
	lw x24, 2(x16)
	fadd x18, x18, x24
	mv x27, x23
	mv x29, x26
	mv x28, x25
	mv x24, zero
	mv x30, x18
	j	shadow_check_one_or_matrix_loop_b327
shadow_check_one_or_matrix_bneelse_b354:	#moved
# B354
	addi x24, x24, 1
shadow_check_one_or_matrix_loop_b327:
# B327
	add x4, x27, x24
	lw x18, 0(x4)
	beq	x18, x14, shadow_check_one_or_matrix_bneelse_b328
# B329
	add x4, x17, x18
	lw x18, 0(x4)
	lw x25, 5(x18)
	lw x25, 0(x25)
	fsub x25, x28, x25
	lw x26, 5(x18)
	lw x26, 1(x26)
	fsub x26, x29, x26
	lw x31, 5(x18)
	lw x31, 2(x31)
	fsub x31, x30, x31
	lw x32, 1(x18)
	bne	x32, x13, shadow_check_one_or_matrix_beqelse_b331
# B330
	fabs x25, x25
	lw x32, 4(x18)
	lw x32, 0(x32)
	fle x25, x32, x25
	bne	x25, zero, shadow_check_one_or_matrix_beqelse_b332
# B333
	fabs x25, x26
	lw x26, 4(x18)
	lw x26, 1(x26)
	fle x25, x26, x25
	bne	x25, zero, shadow_check_one_or_matrix_beqelse_b334
# B335
	fabs x25, x31
	lw x26, 4(x18)
	lw x26, 2(x26)
	fle x25, x26, x25
	xori x25, x25, 1
	mv x26, x25
# B336
	bne	x26, zero, shadow_check_one_or_matrix_beqelse_b338
	j shadow_check_one_or_matrix_cont_b337 # adhoc jump(3)
shadow_check_one_or_matrix_beqelse_b338:
# B338
	lw x18, 6(x18)
	j shadow_check_one_or_matrix_cont_b353 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b334:
# B334
shadow_check_one_or_matrix_beqelse_b332:
# B332
shadow_check_one_or_matrix_cont_b337:
# B337
	lw x18, 6(x18)
	xori x18, x18, 1
	j shadow_check_one_or_matrix_cont_b353 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b331:
# B331
	bne	x32, x21, shadow_check_one_or_matrix_beqelse_b340
# B339
	lw x32, 4(x18)
	lw x33, 0(x32)
	fmul x25, x33, x25
	lw x33, 1(x32)
	fmul x26, x33, x26
	fadd x25, x25, x26
	lw x26, 2(x32)
	fmul x26, x26, x31
	fadd x25, x25, x26
	lw x18, 6(x18)
	fle x25, zero, x25
	xori x25, x25, 1
	bne	x18, zero, shadow_check_one_or_matrix_beqelse_b342
# B341
	mv x18, x25
	j shadow_check_one_or_matrix_cont_b343 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b342:
# B342
	xori x18, x25, 1
shadow_check_one_or_matrix_cont_b343:
# B343
	xori x18, x18, 1
	j shadow_check_one_or_matrix_cont_b353 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b340:
# B340
	fmul x32, x25, x25
	lw x33, 4(x18)
	lw x33, 0(x33)
	fmul x32, x32, x33
	fmul x33, x26, x26
	lw x34, 4(x18)
	lw x34, 1(x34)
	fmul x33, x33, x34
	fadd x32, x32, x33
	fmul x33, x31, x31
	lw x34, 4(x18)
	lw x34, 2(x34)
	fmul x33, x33, x34
	fadd x32, x32, x33
	lw x33, 3(x18)
	bne	x33, zero, shadow_check_one_or_matrix_beqelse_b345
# B344
	mv x25, x32
	j shadow_check_one_or_matrix_cont_b346 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b345:
# B345
	fmul x33, x26, x31
	lw x34, 9(x18)
	lw x34, 0(x34)
	fmul x33, x33, x34
	fadd x32, x32, x33
	fmul x31, x31, x25
	lw x33, 9(x18)
	lw x33, 1(x33)
	fmul x31, x31, x33
	fadd x31, x32, x31
	fmul x25, x25, x26
	lw x26, 9(x18)
	lw x26, 2(x26)
	fmul x25, x25, x26
	fadd x25, x31, x25
shadow_check_one_or_matrix_cont_b346:
# B346
	lw x26, 1(x18)
	li x31, 3
	bne	x26, x31, shadow_check_one_or_matrix_beqelse_b348
# B347
	lui x26, 260096
	fsub x25, x25, x26
shadow_check_one_or_matrix_beqelse_b348:
# B348
shadow_check_one_or_matrix_cont_b349:
# B349
	lw x18, 6(x18)
	fle x25, zero, x25
	xori x25, x25, 1
	bne	x18, zero, shadow_check_one_or_matrix_beqelse_b351
# B350
	mv x18, x25
	j shadow_check_one_or_matrix_cont_b352 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b351:
# B351
	xori x18, x25, 1
shadow_check_one_or_matrix_cont_b352:
# B352
	xori x18, x18, 1
shadow_check_one_or_matrix_cont_b353:
# B353
	beq	x18, zero, shadow_check_one_or_matrix_bneelse_b354
# B355
# B357
	j	shadow_check_one_or_matrix_loop_b276
shadow_check_one_or_matrix_bneelse_b328:
# B328
# B358
	mv x18, x13
# B359
	bne	x18, zero, shadow_check_one_or_matrix_beqelse_b361
	j shadow_check_one_or_matrix_cont_b360 # adhoc jump(3)
shadow_check_one_or_matrix_beqelse_b361:
# B361
	mv x22, x13
# B362
	bne	x22, zero, shadow_check_one_or_matrix_beqelse_b364
	j shadow_check_one_or_matrix_cont_b363 # adhoc jump(3)
shadow_check_one_or_matrix_beqelse_b364:
# B364
	mv x12, x13
# B365
	addi x10, x10, 1
	bne	x12, zero, shadow_check_one_or_matrix_beqelse_b367
	j shadow_check_one_or_matrix_cont_b366 # adhoc jump(3)
shadow_check_one_or_matrix_beqelse_b367:
shadow_check_one_or_matrix_cont_b367:
# B367
	mv x15, x13
	mv x16, x11
shadow_check_one_or_matrix_loop_b368:
# B368
	add x4, x16, x15
	lw x11, 0(x4)
	beq	x11, x14, shadow_check_one_or_matrix_bneelse_b369
# B370
	la x12, min_caml_and_net
	add x4, x12, x11
	lw x11, 0(x4)
	mv x12, zero
	mv x17, x11
shadow_check_one_or_matrix_loop_b371:
# B371
	add x4, x17, x12
	lw x11, 0(x4)
	beq	x11, x14, shadow_check_one_or_matrix_bneelse_b372
# B373
	add x4, x17, x12
	lw x11, 0(x4)
	la x18, min_caml_light_dirvec
	la x19, min_caml_intersection_point
	la x20, min_caml_objects
	add x4, x20, x11
	lw x21, 0(x4)
	lw x22, 0(x19)
	lw x23, 5(x21)
	lw x23, 0(x23)
	fsub x22, x22, x23
	lw x23, 1(x19)
	lw x24, 5(x21)
	lw x24, 1(x24)
	fsub x23, x23, x24
	li x24, 2
	lw x25, 2(x19)
	lw x26, 5(x21)
	lw x26, 2(x26)
	fsub x25, x25, x26
	lw x26, 1(x18)
	add x4, x26, x11
	lw x26, 0(x4)
	lw x27, 1(x21)
	bne	x27, x13, shadow_check_one_or_matrix_beqelse_b375
# B374
	lw x18, 0(x18)
	lw x27, 0(x26)
	fsub x27, x27, x22
	lw x28, 1(x26)
	fmul x27, x27, x28
	lw x28, 1(x18)
	fmul x28, x27, x28
	fadd x28, x28, x23
	fabs x28, x28
	lw x29, 4(x21)
	lw x29, 1(x29)
	fle x28, x29, x28
	bne	x28, zero, shadow_check_one_or_matrix_beqelse_b376
# B377
	lw x28, 2(x18)
	fmul x28, x27, x28
	fadd x28, x28, x25
	fabs x28, x28
	lw x29, 4(x21)
	lw x29, 2(x29)
	fle x28, x29, x28
	bne	x28, zero, shadow_check_one_or_matrix_beqelse_b378
# B379
	lw x28, 1(x26)
	feq x28, x28, zero
	xori x28, x28, 1
	mv x29, x28
# B380
	bne	x29, zero, shadow_check_one_or_matrix_beqelse_b382
	j shadow_check_one_or_matrix_cont_b381 # adhoc jump(3)
shadow_check_one_or_matrix_beqelse_b382:
# B382
	la x18, min_caml_solver_dist
	sw x27, 0(x18)
	la x21, min_caml_solver_dist
	lw x21, 0(x21)
	j shadow_check_one_or_matrix_cont_b416 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b378:
# B378
shadow_check_one_or_matrix_beqelse_b376:
# B376
shadow_check_one_or_matrix_cont_b381:
# B381
	lw x27, 2(x26)
	fsub x27, x27, x23
	lw x28, 3(x26)
	fmul x27, x27, x28
	lw x28, 0(x18)
	fmul x28, x27, x28
	fadd x28, x28, x22
	fabs x28, x28
	lw x29, 4(x21)
	lw x29, 0(x29)
	fle x28, x29, x28
	bne	x28, zero, shadow_check_one_or_matrix_beqelse_b383
# B384
	lw x28, 2(x18)
	fmul x28, x27, x28
	fadd x28, x28, x25
	fabs x28, x28
	lw x29, 4(x21)
	lw x29, 2(x29)
	fle x28, x29, x28
	bne	x28, zero, shadow_check_one_or_matrix_beqelse_b385
# B386
	lw x28, 3(x26)
	feq x28, x28, zero
	xori x28, x28, 1
	mv x29, x28
# B387
	bne	x29, zero, shadow_check_one_or_matrix_beqelse_b389
	j shadow_check_one_or_matrix_cont_b388 # adhoc jump(3)
shadow_check_one_or_matrix_beqelse_b389:
# B389
	la x18, min_caml_solver_dist
	sw x27, 0(x18)
	la x21, min_caml_solver_dist
	lw x21, 0(x21)
	j shadow_check_one_or_matrix_cont_b416 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b385:
# B385
shadow_check_one_or_matrix_beqelse_b383:
# B383
shadow_check_one_or_matrix_cont_b388:
# B388
	lw x27, 4(x26)
	fsub x25, x27, x25
	lw x27, 5(x26)
	fmul x25, x25, x27
	lw x27, 0(x18)
	fmul x27, x25, x27
	fadd x22, x27, x22
	fabs x22, x22
	lw x27, 4(x21)
	lw x27, 0(x27)
	fle x22, x27, x22
	bne	x22, zero, shadow_check_one_or_matrix_beqelse_b390
# B391
	lw x18, 1(x18)
	fmul x18, x25, x18
	fadd x18, x18, x23
	fabs x18, x18
	lw x21, 4(x21)
	lw x21, 1(x21)
	fle x18, x21, x18
	bne	x18, zero, shadow_check_one_or_matrix_beqelse_b392
# B393
	lw x18, 5(x26)
	feq x18, x18, zero
	xori x18, x18, 1
	mv x21, x18
# B394
	bne	x21, zero, shadow_check_one_or_matrix_beqelse_b396
	j shadow_check_one_or_matrix_cont_b395 # adhoc jump(3)
shadow_check_one_or_matrix_beqelse_b396:
# B396
	la x18, min_caml_solver_dist
	sw x25, 0(x18)
	la x21, min_caml_solver_dist
	lw x21, 0(x21)
	j shadow_check_one_or_matrix_cont_b416 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b392:
# B392
shadow_check_one_or_matrix_beqelse_b390:
# B390
shadow_check_one_or_matrix_cont_b395:
# B395
	la x21, min_caml_solver_dist
	lw x21, 0(x21)
	j shadow_check_one_or_matrix_cont_b415 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b375:
# B375
	bne	x27, x24, shadow_check_one_or_matrix_beqelse_b398
# B397
	lw x18, 0(x26)
	fle x18, zero, x18
	beq	x18, zero, shadow_check_one_or_matrix_bneelse_b400
# B399
	la x21, min_caml_solver_dist
	lw x21, 0(x21)
	j shadow_check_one_or_matrix_cont_b415 # adhoc jump(2)
shadow_check_one_or_matrix_bneelse_b400:
# B400
	la x18, min_caml_solver_dist
	lw x21, 1(x26)
	fmul x21, x21, x22
	lw x22, 2(x26)
	fmul x22, x22, x23
	fadd x21, x21, x22
	lw x22, 3(x26)
	fmul x22, x22, x25
	fadd x21, x21, x22
	sw x21, 0(x18)
	la x21, min_caml_solver_dist
	lw x21, 0(x21)
	j shadow_check_one_or_matrix_cont_b416 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b398:
# B398
	lw x18, 0(x26)
	feq x27, x18, zero
	bne	x27, zero, shadow_check_one_or_matrix_beqelse_b402
# B401
	lw x27, 1(x26)
	fmul x27, x27, x22
	lw x28, 2(x26)
	fmul x28, x28, x23
	fadd x27, x27, x28
	li x28, 3
	lw x29, 3(x26)
	fmul x29, x29, x25
	fadd x27, x27, x29
	fmul x29, x22, x22
	lw x30, 4(x21)
	lw x30, 0(x30)
	fmul x29, x29, x30
	fmul x30, x23, x23
	lw x31, 4(x21)
	lw x31, 1(x31)
	fmul x30, x30, x31
	fadd x29, x29, x30
	fmul x30, x25, x25
	lw x31, 4(x21)
	lw x31, 2(x31)
	fmul x30, x30, x31
	fadd x29, x29, x30
	lw x30, 3(x21)
	bne	x30, zero, shadow_check_one_or_matrix_beqelse_b404
# B403
	mv x22, x29
	j shadow_check_one_or_matrix_cont_b405 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b404:
# B404
	fmul x30, x23, x25
	lw x31, 9(x21)
	lw x31, 0(x31)
	fmul x30, x30, x31
	fadd x29, x29, x30
	fmul x25, x25, x22
	lw x30, 9(x21)
	lw x30, 1(x30)
	fmul x25, x25, x30
	fadd x25, x29, x25
	fmul x22, x22, x23
	lw x23, 9(x21)
	lw x23, 2(x23)
	fmul x22, x22, x23
	fadd x22, x25, x22
shadow_check_one_or_matrix_cont_b405:
# B405
	lw x23, 1(x21)
	bne	x23, x28, shadow_check_one_or_matrix_beqelse_b407
# B406
	lui x23, 260096
	fsub x22, x22, x23
shadow_check_one_or_matrix_beqelse_b407:
# B407
shadow_check_one_or_matrix_cont_b408:
# B408
	fmul x23, x27, x27
	fmul x18, x18, x22
	fsub x18, x23, x18
	fle x22, x18, zero
	beq	x22, zero, shadow_check_one_or_matrix_bneelse_b410
# B409
	la x21, min_caml_solver_dist
	lw x21, 0(x21)
	j shadow_check_one_or_matrix_cont_b415 # adhoc jump(2)
shadow_check_one_or_matrix_bneelse_b410:
# B410
	lw x21, 6(x21)
	bne	x21, zero, shadow_check_one_or_matrix_beqelse_b412
# B411
	la x21, min_caml_solver_dist
	fsqrt x18, x18
	fsub x18, x27, x18
	lw x22, 4(x26)
	fmul x18, x18, x22
	sw x18, 0(x21)
	j shadow_check_one_or_matrix_cont_b413 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b412:
# B412
	la x21, min_caml_solver_dist
	fsqrt x18, x18
	fadd x18, x27, x18
	lw x22, 4(x26)
	fmul x18, x18, x22
	sw x18, 0(x21)
shadow_check_one_or_matrix_cont_b413:
# B413
	la x21, min_caml_solver_dist
	lw x21, 0(x21)
shadow_check_one_or_matrix_cont_b416:
# B416
	lui x18, 779469
	addi x18, x18, -819
	fle x18, x18, x21
	xori x18, x18, 1
# B417
	addi x12, x12, 1
	bne	x18, zero, shadow_check_one_or_matrix_beqelse_b419
	j shadow_check_one_or_matrix_cont_b418 # adhoc jump(3)
shadow_check_one_or_matrix_beqelse_b419:
# B419
	lui x11, 246333
	addi x11, x11, 1802
	fadd x11, x21, x11
	la x18, min_caml_light
	lw x21, 0(x18)
	fmul x21, x21, x11
	lw x22, 0(x19)
	fadd x21, x21, x22
	lw x22, 1(x18)
	fmul x22, x22, x11
	lw x23, 1(x19)
	fadd x22, x22, x23
	lw x18, 2(x18)
	fmul x11, x18, x11
	lw x18, 2(x19)
	fadd x11, x11, x18
	mv x26, x11
	mv x25, x22
	mv x23, x21
	mv x19, x17
	mv x18, zero
	j	shadow_check_one_or_matrix_loop_b422
shadow_check_one_or_matrix_bneelse_b449:	#moved
# B449
	addi x18, x18, 1
shadow_check_one_or_matrix_loop_b422:
# B422
	add x4, x19, x18
	lw x11, 0(x4)
	beq	x11, x14, shadow_check_one_or_matrix_bneelse_b423
# B424
	add x4, x20, x11
	lw x11, 0(x4)
	lw x21, 5(x11)
	lw x21, 0(x21)
	fsub x21, x23, x21
	lw x22, 5(x11)
	lw x22, 1(x22)
	fsub x22, x25, x22
	lw x27, 5(x11)
	lw x27, 2(x27)
	fsub x27, x26, x27
	lw x28, 1(x11)
	bne	x28, x13, shadow_check_one_or_matrix_beqelse_b426
# B425
	fabs x21, x21
	lw x28, 4(x11)
	lw x28, 0(x28)
	fle x21, x28, x21
	bne	x21, zero, shadow_check_one_or_matrix_beqelse_b427
# B428
	fabs x21, x22
	lw x22, 4(x11)
	lw x22, 1(x22)
	fle x21, x22, x21
	bne	x21, zero, shadow_check_one_or_matrix_beqelse_b429
# B430
	fabs x21, x27
	lw x22, 4(x11)
	lw x22, 2(x22)
	fle x21, x22, x21
	xori x21, x21, 1
	mv x22, x21
# B431
	bne	x22, zero, shadow_check_one_or_matrix_beqelse_b433
	j shadow_check_one_or_matrix_cont_b432 # adhoc jump(3)
shadow_check_one_or_matrix_beqelse_b433:
# B433
	lw x11, 6(x11)
	j shadow_check_one_or_matrix_cont_b448 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b429:
# B429
shadow_check_one_or_matrix_beqelse_b427:
# B427
shadow_check_one_or_matrix_cont_b432:
# B432
	lw x11, 6(x11)
	xori x11, x11, 1
	j shadow_check_one_or_matrix_cont_b448 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b426:
# B426
	bne	x28, x24, shadow_check_one_or_matrix_beqelse_b435
# B434
	lw x28, 4(x11)
	lw x29, 0(x28)
	fmul x21, x29, x21
	lw x29, 1(x28)
	fmul x22, x29, x22
	fadd x21, x21, x22
	lw x22, 2(x28)
	fmul x22, x22, x27
	fadd x21, x21, x22
	lw x11, 6(x11)
	fle x21, zero, x21
	xori x21, x21, 1
	bne	x11, zero, shadow_check_one_or_matrix_beqelse_b437
# B436
	mv x11, x21
	j shadow_check_one_or_matrix_cont_b438 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b437:
# B437
	xori x11, x21, 1
shadow_check_one_or_matrix_cont_b438:
# B438
	xori x11, x11, 1
	j shadow_check_one_or_matrix_cont_b448 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b435:
# B435
	fmul x28, x21, x21
	lw x29, 4(x11)
	lw x29, 0(x29)
	fmul x28, x28, x29
	fmul x29, x22, x22
	lw x30, 4(x11)
	lw x30, 1(x30)
	fmul x29, x29, x30
	fadd x28, x28, x29
	fmul x29, x27, x27
	lw x30, 4(x11)
	lw x30, 2(x30)
	fmul x29, x29, x30
	fadd x28, x28, x29
	lw x29, 3(x11)
	bne	x29, zero, shadow_check_one_or_matrix_beqelse_b440
# B439
	mv x21, x28
	j shadow_check_one_or_matrix_cont_b441 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b440:
# B440
	fmul x29, x22, x27
	lw x30, 9(x11)
	lw x30, 0(x30)
	fmul x29, x29, x30
	fadd x28, x28, x29
	fmul x27, x27, x21
	lw x29, 9(x11)
	lw x29, 1(x29)
	fmul x27, x27, x29
	fadd x27, x28, x27
	fmul x21, x21, x22
	lw x22, 9(x11)
	lw x22, 2(x22)
	fmul x21, x21, x22
	fadd x21, x27, x21
shadow_check_one_or_matrix_cont_b441:
# B441
	lw x22, 1(x11)
	li x27, 3
	bne	x22, x27, shadow_check_one_or_matrix_beqelse_b443
# B442
	lui x22, 260096
	fsub x21, x21, x22
shadow_check_one_or_matrix_beqelse_b443:
# B443
shadow_check_one_or_matrix_cont_b444:
# B444
	lw x11, 6(x11)
	fle x21, zero, x21
	xori x21, x21, 1
	bne	x11, zero, shadow_check_one_or_matrix_beqelse_b446
# B445
	mv x11, x21
	j shadow_check_one_or_matrix_cont_b447 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b446:
# B446
	xori x11, x21, 1
shadow_check_one_or_matrix_cont_b447:
# B447
	xori x11, x11, 1
shadow_check_one_or_matrix_cont_b448:
# B448
	beq	x11, zero, shadow_check_one_or_matrix_bneelse_b449
# B450
# B452
	j	shadow_check_one_or_matrix_loop_b371
shadow_check_one_or_matrix_bneelse_b423:
# B423
# B453
	mv x11, x13
# B454
	bne	x11, zero, shadow_check_one_or_matrix_beqelse_b456
	j shadow_check_one_or_matrix_cont_b455 # adhoc jump(3)
shadow_check_one_or_matrix_beqelse_b456:
# B456
	mv x12, x13
# B457
	bne	x12, zero, shadow_check_one_or_matrix_beqelse_b459
	j shadow_check_one_or_matrix_cont_b458 # adhoc jump(3)
shadow_check_one_or_matrix_beqelse_b459:
# B459
	mv x5, x13
	ret
shadow_check_one_or_matrix_beqelse_b402:
# B402
	la x21, min_caml_solver_dist
	lw x21, 0(x21)
shadow_check_one_or_matrix_cont_b415:
# B415
	addi x12, x12, 1
shadow_check_one_or_matrix_cont_b418:
# B418
	add x4, x20, x11
	lw x11, 0(x4)
	lw x11, 6(x11)
	beq	x11, zero, shadow_check_one_or_matrix_bneelse_b420
# B421
	j	shadow_check_one_or_matrix_loop_b371
shadow_check_one_or_matrix_bneelse_b420:
# B420
shadow_check_one_or_matrix_bneelse_b372:
# B372
shadow_check_one_or_matrix_cont_b455:
# B455
	addi x15, x15, 1
	j	shadow_check_one_or_matrix_loop_b368
shadow_check_one_or_matrix_bneelse_b369:
# B369
shadow_check_one_or_matrix_cont_b458:
# B458
	j	shadow_check_one_or_matrix_loop_b223
shadow_check_one_or_matrix_beqelse_b307:
# B307
	lw x25, 0(x12)
shadow_check_one_or_matrix_cont_b320:
# B320
	addi x22, x22, 1
shadow_check_one_or_matrix_cont_b323:
# B323
	add x4, x17, x18
	lw x18, 0(x4)
	lw x18, 6(x18)
	beq	x18, zero, shadow_check_one_or_matrix_bneelse_b325
# B326
	j	shadow_check_one_or_matrix_loop_b276
shadow_check_one_or_matrix_bneelse_b325:
# B325
shadow_check_one_or_matrix_bneelse_b277:
# B277
shadow_check_one_or_matrix_cont_b360:
# B360
	addi x19, x19, 1
	j	shadow_check_one_or_matrix_loop_b273
shadow_check_one_or_matrix_bneelse_b274:
# B274
shadow_check_one_or_matrix_cont_b363:
# B363
	addi x10, x10, 1
	j shadow_check_one_or_matrix_cont_b366 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b263:
# B263
shadow_check_one_or_matrix_beqelse_b256:
# B256
shadow_check_one_or_matrix_cont_b269:
# B269
	addi x10, x10, 1
shadow_check_one_or_matrix_cont_b366:
# B366
	j	shadow_check_one_or_matrix_loop_b223
solve_each_element.3022:
# B460
# B461
	mv x10, x5
	mv x11, x7
	mv x100, x6
solve_each_element_beqelse_b539:	#moved
# B539
solve_each_element_loop_b462:
# B462
	add x4, x100, x10
	lw x12, 0(x4)
	li x13, 1
	li x14, -1
	bne	x12, x14, solve_each_element_beqelse_b464
# B463
	ret
solve_each_element_beqelse_b464:
# B464
	la x15, min_caml_startp
	la x16, min_caml_objects
	add x4, x16, x12
	lw x17, 0(x4)
	lw x18, 0(x15)
	lw x19, 5(x17)
	lw x19, 0(x19)
	fsub x18, x18, x19
	lw x19, 1(x15)
	lw x20, 5(x17)
	lw x20, 1(x20)
	fsub x19, x19, x20
	li x20, 2
	lw x21, 2(x15)
	lw x22, 5(x17)
	lw x22, 2(x22)
	fsub x21, x21, x22
	lw x22, 1(x17)
	bne	x22, x13, solve_each_element_beqelse_b466
# B465
	lw x22, 0(x11)
	feq x22, x22, zero
	bne	x22, zero, solve_each_element_beqelse_b468
# B467
	lw x22, 4(x17)
	lw x23, 6(x17)
	lw x24, 0(x11)
	fle x24, zero, x24
	xori x24, x24, 1
	bne	x23, zero, solve_each_element_beqelse_b470
# B469
	mv x23, x24
	j solve_each_element_cont_b471 # adhoc jump(2)
solve_each_element_beqelse_b470:
# B470
	xori x23, x24, 1
solve_each_element_cont_b471:
# B471
	lw x24, 0(x22)
	bne	x23, zero, solve_each_element_beqelse_b473
# B472
	fsub x23, zero, x24
	j solve_each_element_cont_b474 # adhoc jump(2)
solve_each_element_beqelse_b473:
# B473
	mv x23, x24
solve_each_element_cont_b474:
# B474
	fsub x23, x23, x18
	lw x24, 0(x11)
	fdiv x23, x23, x24
	lw x24, 1(x11)
	fmul x24, x23, x24
	fadd x24, x24, x19
	fabs x24, x24
	lw x25, 1(x22)
	fle x24, x25, x24
	bne	x24, zero, solve_each_element_beqelse_b475
# B476
	lw x24, 2(x11)
	fmul x24, x23, x24
	fadd x24, x24, x21
	fabs x24, x24
	lw x22, 2(x22)
	fle x22, x22, x24
	bne	x22, zero, solve_each_element_beqelse_b477
# B478
	la x22, min_caml_solver_dist
	sw x23, 0(x22)
# B481
	li x17, 1
	addi x10, x10, 1
	j solve_each_element_cont_b537 # adhoc jump(2)
solve_each_element_beqelse_b477:
# B477
solve_each_element_beqelse_b475:
# B475
solve_each_element_beqelse_b468:
# B468
solve_each_element_cont_b480:
# B480
	lw x22, 1(x11)
	feq x22, x22, zero
	bne	x22, zero, solve_each_element_beqelse_b483
# B482
	lw x22, 4(x17)
	lw x23, 6(x17)
	lw x24, 1(x11)
	fle x24, zero, x24
	xori x24, x24, 1
	bne	x23, zero, solve_each_element_beqelse_b485
# B484
	mv x23, x24
	j solve_each_element_cont_b486 # adhoc jump(2)
solve_each_element_beqelse_b485:
# B485
	xori x23, x24, 1
solve_each_element_cont_b486:
# B486
	lw x24, 1(x22)
	bne	x23, zero, solve_each_element_beqelse_b488
# B487
	fsub x23, zero, x24
	j solve_each_element_cont_b489 # adhoc jump(2)
solve_each_element_beqelse_b488:
# B488
	mv x23, x24
solve_each_element_cont_b489:
# B489
	fsub x23, x23, x19
	lw x24, 1(x11)
	fdiv x23, x23, x24
	lw x24, 2(x11)
	fmul x24, x23, x24
	fadd x24, x24, x21
	fabs x24, x24
	lw x25, 2(x22)
	fle x24, x25, x24
	bne	x24, zero, solve_each_element_beqelse_b490
# B491
	lw x24, 0(x11)
	fmul x24, x23, x24
	fadd x24, x24, x18
	fabs x24, x24
	lw x22, 0(x22)
	fle x22, x22, x24
	bne	x22, zero, solve_each_element_beqelse_b492
# B493
	la x22, min_caml_solver_dist
	sw x23, 0(x22)
# B496
	li x17, 2
	addi x10, x10, 1
	j solve_each_element_cont_b537 # adhoc jump(2)
solve_each_element_beqelse_b492:
# B492
solve_each_element_beqelse_b490:
# B490
solve_each_element_beqelse_b483:
# B483
solve_each_element_cont_b495:
# B495
	lw x22, 2(x11)
	feq x22, x22, zero
	bne	x22, zero, solve_each_element_beqelse_b498
# B497
	lw x22, 4(x17)
	lw x17, 6(x17)
	lw x23, 2(x11)
	fle x23, zero, x23
	xori x23, x23, 1
	bne	x17, zero, solve_each_element_beqelse_b500
# B499
	mv x17, x23
	j solve_each_element_cont_b501 # adhoc jump(2)
solve_each_element_beqelse_b500:
# B500
	xori x17, x23, 1
solve_each_element_cont_b501:
# B501
	lw x23, 2(x22)
	bne	x17, zero, solve_each_element_beqelse_b503
# B502
	fsub x17, zero, x23
	j solve_each_element_cont_b504 # adhoc jump(2)
solve_each_element_beqelse_b503:
# B503
	mv x17, x23
solve_each_element_cont_b504:
# B504
	fsub x17, x17, x21
	lw x21, 2(x11)
	fdiv x17, x17, x21
	lw x21, 0(x11)
	fmul x21, x17, x21
	fadd x18, x21, x18
	fabs x18, x18
	lw x21, 0(x22)
	fle x18, x21, x18
	bne	x18, zero, solve_each_element_beqelse_b505
# B506
	lw x18, 1(x11)
	fmul x18, x17, x18
	fadd x18, x18, x19
	fabs x18, x18
	lw x19, 1(x22)
	fle x18, x19, x18
	bne	x18, zero, solve_each_element_beqelse_b507
# B508
	la x18, min_caml_solver_dist
	sw x17, 0(x18)
# B511
	li x17, 3
	addi x10, x10, 1
	j solve_each_element_cont_b537 # adhoc jump(2)
solve_each_element_beqelse_b507:
# B507
solve_each_element_beqelse_b505:
# B505
solve_each_element_beqelse_b498:
# B498
solve_each_element_cont_b510:
# B510
	mv x17, zero
	addi x10, x10, 1
	j solve_each_element_cont_b536 # adhoc jump(2)
solve_each_element_beqelse_b466:
# B466
	bne	x22, x20, solve_each_element_beqelse_b513
# B512
	lw x17, 4(x17)
	lw x22, 0(x11)
	lw x23, 0(x17)
	fmul x22, x22, x23
	lw x23, 1(x11)
	lw x24, 1(x17)
	fmul x23, x23, x24
	fadd x22, x22, x23
	lw x23, 2(x11)
	lw x24, 2(x17)
	fmul x23, x23, x24
	fadd x22, x22, x23
	fle x23, x22, zero
	beq	x23, zero, solve_each_element_bneelse_b515
# B514
	mv x17, zero
	addi x10, x10, 1
	j solve_each_element_cont_b536 # adhoc jump(2)
solve_each_element_bneelse_b515:
# B515
	la x23, min_caml_solver_dist
	lw x24, 0(x17)
	fmul x18, x24, x18
	lw x24, 1(x17)
	fmul x19, x24, x19
	fadd x18, x18, x19
	lw x17, 2(x17)
	fmul x17, x17, x21
	fadd x17, x18, x17
	fsub x17, zero, x17
	fdiv x17, x17, x22
	sw x17, 0(x23)
	li x17, 1
	addi x10, x10, 1
	j solve_each_element_cont_b537 # adhoc jump(2)
solve_each_element_beqelse_b513:
# B513
	lw x22, 0(x11)
	lw x23, 1(x11)
	lw x24, 2(x11)
	fmul x25, x22, x22
	lw x26, 4(x17)
	lw x26, 0(x26)
	fmul x25, x25, x26
	fmul x26, x23, x23
	lw x27, 4(x17)
	lw x27, 1(x27)
	fmul x26, x26, x27
	fadd x25, x25, x26
	fmul x26, x24, x24
	lw x27, 4(x17)
	lw x27, 2(x27)
	fmul x26, x26, x27
	fadd x25, x25, x26
	lw x26, 3(x17)
	bne	x26, zero, solve_each_element_beqelse_b517
# B516
	mv x22, x25
	j solve_each_element_cont_b518 # adhoc jump(2)
solve_each_element_beqelse_b517:
# B517
	fmul x26, x23, x24
	lw x27, 9(x17)
	lw x27, 0(x27)
	fmul x26, x26, x27
	fadd x25, x25, x26
	fmul x24, x24, x22
	lw x26, 9(x17)
	lw x26, 1(x26)
	fmul x24, x24, x26
	fadd x24, x25, x24
	fmul x22, x22, x23
	lw x23, 9(x17)
	lw x23, 2(x23)
	fmul x22, x22, x23
	fadd x22, x24, x22
solve_each_element_cont_b518:
# B518
	feq x23, x22, zero
	bne	x23, zero, solve_each_element_beqelse_b520
# B519
	lw x23, 0(x11)
	lw x24, 1(x11)
	lw x25, 2(x11)
	fmul x26, x23, x18
	lw x27, 4(x17)
	lw x27, 0(x27)
	fmul x26, x26, x27
	fmul x27, x24, x19
	lw x28, 4(x17)
	lw x28, 1(x28)
	fmul x27, x27, x28
	fadd x26, x26, x27
	fmul x27, x25, x21
	lw x28, 4(x17)
	lw x28, 2(x28)
	fmul x27, x27, x28
	fadd x26, x26, x27
	lw x27, 3(x17)
	bne	x27, zero, solve_each_element_beqelse_b522
# B521
	mv x23, x26
	j solve_each_element_cont_b523 # adhoc jump(2)
solve_each_element_beqelse_b522:
# B522
	fmul x27, x25, x19
	fmul x28, x24, x21
	fadd x27, x27, x28
	lw x28, 9(x17)
	lw x28, 0(x28)
	fmul x27, x27, x28
	fmul x28, x23, x21
	fmul x25, x25, x18
	fadd x25, x28, x25
	lw x28, 9(x17)
	lw x28, 1(x28)
	fmul x25, x25, x28
	fadd x25, x27, x25
	fmul x23, x23, x19
	fmul x24, x24, x18
	fadd x23, x23, x24
	lw x24, 9(x17)
	lw x24, 2(x24)
	fmul x23, x23, x24
	fadd x23, x25, x23
	lui x24, 258048
	fmul x23, x23, x24
	fadd x23, x26, x23
solve_each_element_cont_b523:
# B523
	fmul x24, x18, x18
	lw x25, 4(x17)
	lw x25, 0(x25)
	fmul x24, x24, x25
	fmul x25, x19, x19
	lw x26, 4(x17)
	lw x26, 1(x26)
	fmul x25, x25, x26
	fadd x24, x24, x25
	fmul x25, x21, x21
	lw x26, 4(x17)
	lw x26, 2(x26)
	fmul x25, x25, x26
	fadd x24, x24, x25
	lw x25, 3(x17)
	bne	x25, zero, solve_each_element_beqelse_b525
# B524
	mv x18, x24
	j solve_each_element_cont_b526 # adhoc jump(2)
solve_each_element_beqelse_b525:
# B525
	fmul x25, x19, x21
	lw x26, 9(x17)
	lw x26, 0(x26)
	fmul x25, x25, x26
	fadd x24, x24, x25
	fmul x21, x21, x18
	lw x25, 9(x17)
	lw x25, 1(x25)
	fmul x21, x21, x25
	fadd x21, x24, x21
	fmul x18, x18, x19
	lw x19, 9(x17)
	lw x19, 2(x19)
	fmul x18, x18, x19
	fadd x18, x21, x18
solve_each_element_cont_b526:
# B526
	lw x19, 1(x17)
	li x21, 3
	bne	x19, x21, solve_each_element_beqelse_b528
# B527
	lui x19, 260096
	fsub x18, x18, x19
solve_each_element_beqelse_b528:
# B528
solve_each_element_cont_b529:
# B529
	fmul x19, x23, x23
	fmul x18, x22, x18
	fsub x18, x19, x18
	fle x19, x18, zero
	beq	x19, zero, solve_each_element_bneelse_b531
# B530
	mv x17, zero
	addi x10, x10, 1
	j solve_each_element_cont_b536 # adhoc jump(2)
solve_each_element_bneelse_b531:
# B531
	fsqrt x18, x18
	lw x17, 6(x17)
	bne	x17, zero, solve_each_element_beqelse_b533
# B532
	fsub x17, zero, x18
	j solve_each_element_cont_b534 # adhoc jump(2)
solve_each_element_beqelse_b533:
# B533
	mv x17, x18
solve_each_element_cont_b534:
# B534
	la x18, min_caml_solver_dist
	fsub x17, x17, x23
	fdiv x17, x17, x22
	sw x17, 0(x18)
	li x17, 1
	addi x10, x10, 1
solve_each_element_cont_b537:
# B537
	la x18, min_caml_solver_dist
	lw x18, 0(x18)
	fle x19, x18, zero
	bne	x19, zero, solve_each_element_beqelse_b540
# B541
	la x19, min_caml_tmin
	lw x21, 0(x19)
	fle x21, x21, x18
	bne	x21, zero, solve_each_element_beqelse_b542
# B543
	lui x21, 246333
	addi x21, x21, 1802
	fadd x18, x18, x21
	lw x21, 0(x11)
	fmul x21, x21, x18
	lw x22, 0(x15)
	fadd x21, x21, x22
	lw x22, 1(x11)
	fmul x22, x22, x18
	lw x23, 1(x15)
	fadd x22, x22, x23
	lw x23, 2(x11)
	fmul x23, x23, x18
	lw x15, 2(x15)
	fadd x15, x23, x15
	mv x27, x15
	mv x26, x22
	mv x25, x21
	mv x23, zero
	mv x24, x100
	j	solve_each_element_loop_b544
solve_each_element_bneelse_b571:	#moved
# B571
	addi x23, x23, 1
solve_each_element_loop_b544:
# B544
	add x4, x24, x23
	lw x28, 0(x4)
	beq	x28, x14, solve_each_element_bneelse_b545
# B546
	add x4, x16, x28
	lw x28, 0(x4)
	lw x29, 5(x28)
	lw x29, 0(x29)
	fsub x29, x25, x29
	lw x30, 5(x28)
	lw x30, 1(x30)
	fsub x30, x26, x30
	lw x31, 5(x28)
	lw x31, 2(x31)
	fsub x31, x27, x31
	lw x32, 1(x28)
	bne	x32, x13, solve_each_element_beqelse_b548
# B547
	fabs x29, x29
	lw x32, 4(x28)
	lw x32, 0(x32)
	fle x29, x32, x29
	bne	x29, zero, solve_each_element_beqelse_b549
# B550
	fabs x29, x30
	lw x30, 4(x28)
	lw x30, 1(x30)
	fle x29, x30, x29
	bne	x29, zero, solve_each_element_beqelse_b551
# B552
	fabs x29, x31
	lw x30, 4(x28)
	lw x30, 2(x30)
	fle x29, x30, x29
	xori x29, x29, 1
	mv x30, x29
# B553
	bne	x30, zero, solve_each_element_beqelse_b555
	j solve_each_element_cont_b554 # adhoc jump(3)
solve_each_element_beqelse_b555:
# B555
	lw x28, 6(x28)
	j solve_each_element_cont_b570 # adhoc jump(2)
solve_each_element_beqelse_b551:
# B551
solve_each_element_beqelse_b549:
# B549
solve_each_element_cont_b554:
# B554
	lw x28, 6(x28)
	xori x28, x28, 1
	j solve_each_element_cont_b570 # adhoc jump(2)
solve_each_element_beqelse_b548:
# B548
	bne	x32, x20, solve_each_element_beqelse_b557
# B556
	lw x32, 4(x28)
	lw x33, 0(x32)
	fmul x29, x33, x29
	lw x33, 1(x32)
	fmul x30, x33, x30
	fadd x29, x29, x30
	lw x30, 2(x32)
	fmul x30, x30, x31
	fadd x29, x29, x30
	lw x28, 6(x28)
	fle x29, zero, x29
	xori x29, x29, 1
	bne	x28, zero, solve_each_element_beqelse_b559
# B558
	mv x28, x29
	j solve_each_element_cont_b560 # adhoc jump(2)
solve_each_element_beqelse_b559:
# B559
	xori x28, x29, 1
solve_each_element_cont_b560:
# B560
	xori x28, x28, 1
	j solve_each_element_cont_b570 # adhoc jump(2)
solve_each_element_beqelse_b557:
# B557
	fmul x32, x29, x29
	lw x33, 4(x28)
	lw x33, 0(x33)
	fmul x32, x32, x33
	fmul x33, x30, x30
	lw x34, 4(x28)
	lw x34, 1(x34)
	fmul x33, x33, x34
	fadd x32, x32, x33
	fmul x33, x31, x31
	lw x34, 4(x28)
	lw x34, 2(x34)
	fmul x33, x33, x34
	fadd x32, x32, x33
	lw x33, 3(x28)
	bne	x33, zero, solve_each_element_beqelse_b562
# B561
	mv x29, x32
	j solve_each_element_cont_b563 # adhoc jump(2)
solve_each_element_beqelse_b562:
# B562
	fmul x33, x30, x31
	lw x34, 9(x28)
	lw x34, 0(x34)
	fmul x33, x33, x34
	fadd x32, x32, x33
	fmul x31, x31, x29
	lw x33, 9(x28)
	lw x33, 1(x33)
	fmul x31, x31, x33
	fadd x31, x32, x31
	fmul x29, x29, x30
	lw x30, 9(x28)
	lw x30, 2(x30)
	fmul x29, x29, x30
	fadd x29, x31, x29
solve_each_element_cont_b563:
# B563
	lw x30, 1(x28)
	li x31, 3
	bne	x30, x31, solve_each_element_beqelse_b565
# B564
	lui x30, 260096
	fsub x29, x29, x30
solve_each_element_beqelse_b565:
# B565
solve_each_element_cont_b566:
# B566
	lw x28, 6(x28)
	fle x29, zero, x29
	xori x29, x29, 1
	bne	x28, zero, solve_each_element_beqelse_b568
# B567
	mv x28, x29
	j solve_each_element_cont_b569 # adhoc jump(2)
solve_each_element_beqelse_b568:
# B568
	xori x28, x29, 1
solve_each_element_cont_b569:
# B569
	xori x28, x28, 1
solve_each_element_cont_b570:
# B570
	beq	x28, zero, solve_each_element_bneelse_b571
# B572
# B574
	j solve_each_element_cont_b576 # adhoc jump(2)
solve_each_element_bneelse_b545:
# B545
# B575
	sw x18, 0(x19)
	la x13, min_caml_intersection_point
	sw x21, 0(x13)
	sw x22, 1(x13)
	sw x15, 2(x13)
	la x13, min_caml_intersected_object_id
	sw x12, 0(x13)
	la x12, min_caml_intsec_rectside
	sw x17, 0(x12)
solve_each_element_beqelse_b542:
# B542
solve_each_element_beqelse_b540:
# B540
solve_each_element_cont_b576:
# B576
	j	solve_each_element_loop_b462
solve_each_element_beqelse_b520:
# B520
	mv x17, zero
	addi x10, x10, 1
solve_each_element_cont_b536:
# B536
	add x4, x16, x12
	lw x12, 0(x4)
	lw x12, 6(x12)
	bne	x12, zero, solve_each_element_beqelse_b539
# B538
	ret
judge_intersection_fast.3048:
# B577
# B578
	la x10, min_caml_tmin
	lui x100, 321255
	addi x100, x100, -1240
	sw x100, 0(x10)
	la x100, min_caml_or_net
	lw x100, 0(x100)
	mv x12, x100
	mv x11, zero
	mv x13, x5
judge_intersection_fast_loop_b579:
# B579
	add x4, x12, x11
	lw x100, 0(x4)
	lw x14, 0(x100)
	li x15, 1
	li x16, -1
	beq	x14, x16, judge_intersection_fast_bneelse_b580
# B581
	li x17, 99
	li x18, 2
	la x19, min_caml_solver_dist
	li x20, 3
	la x21, min_caml_intersection_point
	la x22, min_caml_intersected_object_id
	la x23, min_caml_intsec_rectside
	bne	x14, x17, judge_intersection_fast_beqelse_b583
# B582
	mv x24, x15
	mv x26, x13
	mv x25, x100
judge_intersection_fast_loop_b584:
# B584
	add x4, x25, x24
	lw x100, 0(x4)
	beq	x100, x16, judge_intersection_fast_bneelse_b585
# B586
	la x14, min_caml_and_net
	add x4, x14, x100
	lw x100, 0(x4)
	mv x27, x26
	mv x14, zero
	mv x17, x100
judge_intersection_fast_beqelse_b628:	#moved
# B628
judge_intersection_fast_loop_b587:
# B587
	lw x100, 0(x27)
	add x4, x17, x14
	lw x28, 0(x4)
	beq	x28, x16, judge_intersection_fast_bneelse_b588
# B589
	la x29, min_caml_objects
	add x4, x29, x28
	lw x30, 0(x4)
	lw x31, 10(x30)
	lw x32, 0(x31)
	lw x33, 1(x31)
	lw x34, 2(x31)
	lw x35, 1(x27)
	add x4, x35, x28
	lw x35, 0(x4)
	lw x36, 1(x30)
	bne	x36, x15, judge_intersection_fast_beqelse_b591
# B590
	lw x31, 0(x27)
	lw x36, 0(x35)
	fsub x36, x36, x32
	lw x37, 1(x35)
	fmul x36, x36, x37
	lw x37, 1(x31)
	fmul x37, x36, x37
	fadd x37, x37, x33
	fabs x37, x37
	lw x38, 4(x30)
	lw x38, 1(x38)
	fle x37, x38, x37
	bne	x37, zero, judge_intersection_fast_beqelse_b592
# B593
	lw x37, 2(x31)
	fmul x37, x36, x37
	fadd x37, x37, x34
	fabs x37, x37
	lw x38, 4(x30)
	lw x38, 2(x38)
	fle x37, x38, x37
	bne	x37, zero, judge_intersection_fast_beqelse_b594
# B595
	lw x37, 1(x35)
	feq x37, x37, zero
	xori x37, x37, 1
	mv x38, x37
# B596
	bne	x38, zero, judge_intersection_fast_beqelse_b598
	j judge_intersection_fast_cont_b597 # adhoc jump(3)
judge_intersection_fast_beqelse_b598:
# B598
	la x30, min_caml_solver_dist
	sw x36, 0(x30)
	li x30, 1
	addi x14, x14, 1
	j judge_intersection_fast_cont_b626 # adhoc jump(2)
judge_intersection_fast_beqelse_b594:
# B594
judge_intersection_fast_beqelse_b592:
# B592
judge_intersection_fast_cont_b597:
# B597
	lw x36, 2(x35)
	fsub x36, x36, x33
	lw x37, 3(x35)
	fmul x36, x36, x37
	lw x37, 0(x31)
	fmul x37, x36, x37
	fadd x37, x37, x32
	fabs x37, x37
	lw x38, 4(x30)
	lw x38, 0(x38)
	fle x37, x38, x37
	bne	x37, zero, judge_intersection_fast_beqelse_b599
# B600
	lw x37, 2(x31)
	fmul x37, x36, x37
	fadd x37, x37, x34
	fabs x37, x37
	lw x38, 4(x30)
	lw x38, 2(x38)
	fle x37, x38, x37
	bne	x37, zero, judge_intersection_fast_beqelse_b601
# B602
	lw x37, 3(x35)
	feq x37, x37, zero
	xori x37, x37, 1
	mv x38, x37
# B603
	bne	x38, zero, judge_intersection_fast_beqelse_b605
	j judge_intersection_fast_cont_b604 # adhoc jump(3)
judge_intersection_fast_beqelse_b605:
# B605
	la x30, min_caml_solver_dist
	sw x36, 0(x30)
	li x30, 2
	addi x14, x14, 1
	j judge_intersection_fast_cont_b626 # adhoc jump(2)
judge_intersection_fast_beqelse_b601:
# B601
judge_intersection_fast_beqelse_b599:
# B599
judge_intersection_fast_cont_b604:
# B604
	lw x36, 4(x35)
	fsub x34, x36, x34
	lw x36, 5(x35)
	fmul x34, x34, x36
	lw x36, 0(x31)
	fmul x36, x34, x36
	fadd x32, x36, x32
	fabs x32, x32
	lw x36, 4(x30)
	lw x36, 0(x36)
	fle x32, x36, x32
	bne	x32, zero, judge_intersection_fast_beqelse_b606
# B607
	lw x31, 1(x31)
	fmul x31, x34, x31
	fadd x31, x31, x33
	fabs x31, x31
	lw x30, 4(x30)
	lw x30, 1(x30)
	fle x30, x30, x31
	bne	x30, zero, judge_intersection_fast_beqelse_b608
# B609
	lw x30, 5(x35)
	feq x30, x30, zero
	xori x30, x30, 1
	mv x31, x30
# B610
	bne	x31, zero, judge_intersection_fast_beqelse_b612
	j judge_intersection_fast_cont_b611 # adhoc jump(3)
judge_intersection_fast_beqelse_b612:
# B612
	la x30, min_caml_solver_dist
	sw x34, 0(x30)
	li x30, 3
	addi x14, x14, 1
	j judge_intersection_fast_cont_b626 # adhoc jump(2)
judge_intersection_fast_beqelse_b608:
# B608
judge_intersection_fast_beqelse_b606:
# B606
judge_intersection_fast_cont_b611:
# B611
	mv x30, zero
	addi x14, x14, 1
	j judge_intersection_fast_cont_b625 # adhoc jump(2)
judge_intersection_fast_beqelse_b591:
# B591
	bne	x36, x18, judge_intersection_fast_beqelse_b614
# B613
	lw x30, 0(x35)
	fle x30, zero, x30
	beq	x30, zero, judge_intersection_fast_bneelse_b616
# B615
	mv x30, zero
	addi x14, x14, 1
	j judge_intersection_fast_cont_b625 # adhoc jump(2)
judge_intersection_fast_bneelse_b616:
# B616
	la x30, min_caml_solver_dist
	lw x32, 0(x35)
	lw x31, 3(x31)
	fmul x31, x32, x31
	sw x31, 0(x30)
	li x30, 1
	addi x14, x14, 1
	j judge_intersection_fast_cont_b626 # adhoc jump(2)
judge_intersection_fast_beqelse_b614:
# B614
	lw x36, 0(x35)
	feq x37, x36, zero
	bne	x37, zero, judge_intersection_fast_beqelse_b618
# B617
	lw x37, 1(x35)
	fmul x32, x37, x32
	lw x37, 2(x35)
	fmul x33, x37, x33
	fadd x32, x32, x33
	lw x33, 3(x35)
	fmul x33, x33, x34
	fadd x32, x32, x33
	lw x31, 3(x31)
	fmul x33, x32, x32
	fmul x31, x36, x31
	fsub x31, x33, x31
	fle x33, x31, zero
	beq	x33, zero, judge_intersection_fast_bneelse_b620
# B619
	mv x30, zero
	addi x14, x14, 1
	j judge_intersection_fast_cont_b625 # adhoc jump(2)
judge_intersection_fast_bneelse_b620:
# B620
	lw x30, 6(x30)
	bne	x30, zero, judge_intersection_fast_beqelse_b622
# B621
	la x30, min_caml_solver_dist
	fsqrt x31, x31
	fsub x31, x32, x31
	lw x32, 4(x35)
	fmul x31, x31, x32
	sw x31, 0(x30)
	j judge_intersection_fast_cont_b623 # adhoc jump(2)
judge_intersection_fast_beqelse_b622:
# B622
	la x30, min_caml_solver_dist
	fsqrt x31, x31
	fadd x31, x32, x31
	lw x32, 4(x35)
	fmul x31, x31, x32
	sw x31, 0(x30)
judge_intersection_fast_cont_b623:
# B623
	li x30, 1
	addi x14, x14, 1
judge_intersection_fast_cont_b626:
# B626
	lw x31, 0(x19)
	fle x32, x31, zero
	bne	x32, zero, judge_intersection_fast_beqelse_b629
# B630
	lw x32, 0(x10)
	fle x32, x32, x31
	bne	x32, zero, judge_intersection_fast_beqelse_b631
# B632
	lui x32, 246333
	addi x32, x32, 1802
	fadd x31, x31, x32
	lw x32, 0(x100)
	fmul x32, x32, x31
	la x33, min_caml_startp_fast
	lw x34, 0(x33)
	fadd x32, x32, x34
	lw x34, 1(x100)
	fmul x34, x34, x31
	lw x35, 1(x33)
	fadd x34, x34, x35
	lw x100, 2(x100)
	fmul x100, x100, x31
	lw x33, 2(x33)
	fadd x100, x100, x33
	mv x37, x34
	mv x35, x17
	mv x38, x100
	mv x33, zero
	mv x36, x32
	j	judge_intersection_fast_loop_b633
judge_intersection_fast_bneelse_b660:	#moved
# B660
	addi x33, x33, 1
judge_intersection_fast_loop_b633:
# B633
	add x4, x35, x33
	lw x39, 0(x4)
	beq	x39, x16, judge_intersection_fast_bneelse_b634
# B635
	add x4, x29, x39
	lw x39, 0(x4)
	lw x40, 5(x39)
	lw x40, 0(x40)
	fsub x40, x36, x40
	lw x5, 5(x39)
	lw x5, 1(x5)
	fsub x5, x37, x5
	lw x6, 5(x39)
	lw x6, 2(x6)
	fsub x6, x38, x6
	lw x65, 1(x39)
	bne	x65, x15, judge_intersection_fast_beqelse_b637
# B636
	fabs x40, x40
	lw x65, 4(x39)
	lw x65, 0(x65)
	fle x40, x65, x40
	bne	x40, zero, judge_intersection_fast_beqelse_b638
# B639
	fabs x40, x5
	lw x5, 4(x39)
	lw x5, 1(x5)
	fle x40, x5, x40
	bne	x40, zero, judge_intersection_fast_beqelse_b640
# B641
	fabs x40, x6
	lw x5, 4(x39)
	lw x5, 2(x5)
	fle x40, x5, x40
	xori x40, x40, 1
	mv x5, x40
# B642
	bne	x5, zero, judge_intersection_fast_beqelse_b644
	j judge_intersection_fast_cont_b643 # adhoc jump(3)
judge_intersection_fast_beqelse_b644:
# B644
	lw x39, 6(x39)
	j judge_intersection_fast_cont_b659 # adhoc jump(2)
judge_intersection_fast_beqelse_b640:
# B640
judge_intersection_fast_beqelse_b638:
# B638
judge_intersection_fast_cont_b643:
# B643
	lw x39, 6(x39)
	xori x39, x39, 1
	j judge_intersection_fast_cont_b659 # adhoc jump(2)
judge_intersection_fast_beqelse_b637:
# B637
	bne	x65, x18, judge_intersection_fast_beqelse_b646
# B645
	lw x65, 4(x39)
	lw x66, 0(x65)
	fmul x40, x66, x40
	lw x66, 1(x65)
	fmul x5, x66, x5
	fadd x40, x40, x5
	lw x5, 2(x65)
	fmul x5, x5, x6
	fadd x40, x40, x5
	lw x39, 6(x39)
	fle x40, zero, x40
	xori x40, x40, 1
	bne	x39, zero, judge_intersection_fast_beqelse_b648
# B647
	mv x39, x40
	j judge_intersection_fast_cont_b649 # adhoc jump(2)
judge_intersection_fast_beqelse_b648:
# B648
	xori x39, x40, 1
judge_intersection_fast_cont_b649:
# B649
	xori x39, x39, 1
	j judge_intersection_fast_cont_b659 # adhoc jump(2)
judge_intersection_fast_beqelse_b646:
# B646
	fmul x65, x40, x40
	lw x66, 4(x39)
	lw x66, 0(x66)
	fmul x65, x65, x66
	fmul x66, x5, x5
	lw x67, 4(x39)
	lw x67, 1(x67)
	fmul x66, x66, x67
	fadd x65, x65, x66
	fmul x66, x6, x6
	lw x67, 4(x39)
	lw x67, 2(x67)
	fmul x66, x66, x67
	fadd x65, x65, x66
	lw x66, 3(x39)
	bne	x66, zero, judge_intersection_fast_beqelse_b651
# B650
	mv x40, x65
	j judge_intersection_fast_cont_b652 # adhoc jump(2)
judge_intersection_fast_beqelse_b651:
# B651
	fmul x66, x5, x6
	lw x67, 9(x39)
	lw x67, 0(x67)
	fmul x66, x66, x67
	fadd x65, x65, x66
	fmul x6, x6, x40
	lw x66, 9(x39)
	lw x66, 1(x66)
	fmul x6, x6, x66
	fadd x6, x65, x6
	fmul x40, x40, x5
	lw x5, 9(x39)
	lw x5, 2(x5)
	fmul x40, x40, x5
	fadd x40, x6, x40
judge_intersection_fast_cont_b652:
# B652
	lw x5, 1(x39)
	bne	x5, x20, judge_intersection_fast_beqelse_b654
# B653
	lui x5, 260096
	fsub x40, x40, x5
judge_intersection_fast_beqelse_b654:
# B654
judge_intersection_fast_cont_b655:
# B655
	lw x39, 6(x39)
	fle x40, zero, x40
	xori x40, x40, 1
	bne	x39, zero, judge_intersection_fast_beqelse_b657
# B656
	mv x39, x40
	j judge_intersection_fast_cont_b658 # adhoc jump(2)
judge_intersection_fast_beqelse_b657:
# B657
	xori x39, x40, 1
judge_intersection_fast_cont_b658:
# B658
	xori x39, x39, 1
judge_intersection_fast_cont_b659:
# B659
	beq	x39, zero, judge_intersection_fast_bneelse_b660
# B661
# B663
	j judge_intersection_fast_cont_b665 # adhoc jump(2)
judge_intersection_fast_bneelse_b634:
# B634
# B664
	sw x31, 0(x10)
	sw x32, 0(x21)
	sw x34, 1(x21)
	sw x100, 2(x21)
	sw x28, 0(x22)
	sw x30, 0(x23)
judge_intersection_fast_beqelse_b631:
# B631
judge_intersection_fast_beqelse_b629:
# B629
judge_intersection_fast_cont_b665:
# B665
	j	judge_intersection_fast_loop_b587
judge_intersection_fast_beqelse_b618:
# B618
	mv x30, zero
	addi x14, x14, 1
judge_intersection_fast_cont_b625:
# B625
	add x4, x29, x28
	lw x100, 0(x4)
	lw x100, 6(x100)
	bne	x100, zero, judge_intersection_fast_beqelse_b628
# B627
judge_intersection_fast_bneelse_b588:
# B588
judge_intersection_fast_cont_b666:
# B666
	addi x24, x24, 1
	j	judge_intersection_fast_loop_b584
judge_intersection_fast_bneelse_b585:
# B585
	j judge_intersection_fast_cont_b789 # adhoc jump(2)
judge_intersection_fast_beqelse_b583:
# B583
	la x17, min_caml_objects
	add x4, x17, x14
	lw x24, 0(x4)
	lw x25, 10(x24)
	lw x26, 0(x25)
	lw x27, 1(x25)
	li x28, 2
	lw x29, 2(x25)
	lw x30, 1(x13)
	add x4, x30, x14
	lw x14, 0(x4)
	lw x30, 1(x24)
	bne	x30, x15, judge_intersection_fast_beqelse_b668
# B667
	lw x25, 0(x13)
	lw x30, 0(x14)
	fsub x30, x30, x26
	lw x31, 1(x14)
	fmul x30, x30, x31
	lw x31, 1(x25)
	fmul x31, x30, x31
	fadd x31, x31, x27
	fabs x31, x31
	lw x32, 4(x24)
	lw x32, 1(x32)
	fle x31, x32, x31
	bne	x31, zero, judge_intersection_fast_beqelse_b669
# B670
	lw x31, 2(x25)
	fmul x31, x30, x31
	fadd x31, x31, x29
	fabs x31, x31
	lw x32, 4(x24)
	lw x32, 2(x32)
	fle x31, x32, x31
	bne	x31, zero, judge_intersection_fast_beqelse_b671
# B672
	lw x31, 1(x14)
	feq x31, x31, zero
	xori x31, x31, 1
	mv x32, x31
# B673
	bne	x32, zero, judge_intersection_fast_beqelse_b675
	j judge_intersection_fast_cont_b674 # adhoc jump(3)
judge_intersection_fast_beqelse_b675:
# B675
	sw x30, 0(x19)
	mv x18, x15
	j judge_intersection_fast_cont_b701 # adhoc jump(2)
judge_intersection_fast_beqelse_b671:
# B671
judge_intersection_fast_beqelse_b669:
# B669
judge_intersection_fast_cont_b674:
# B674
	lw x30, 2(x14)
	fsub x30, x30, x27
	lw x31, 3(x14)
	fmul x30, x30, x31
	lw x31, 0(x25)
	fmul x31, x30, x31
	fadd x31, x31, x26
	fabs x31, x31
	lw x32, 4(x24)
	lw x32, 0(x32)
	fle x31, x32, x31
	bne	x31, zero, judge_intersection_fast_beqelse_b676
# B677
	lw x31, 2(x25)
	fmul x31, x30, x31
	fadd x31, x31, x29
	fabs x31, x31
	lw x32, 4(x24)
	lw x32, 2(x32)
	fle x31, x32, x31
	bne	x31, zero, judge_intersection_fast_beqelse_b678
# B679
	lw x31, 3(x14)
	feq x31, x31, zero
	xori x31, x31, 1
	mv x32, x31
# B680
	bne	x32, zero, judge_intersection_fast_beqelse_b682
	j judge_intersection_fast_cont_b681 # adhoc jump(3)
judge_intersection_fast_beqelse_b682:
# B682
	sw x30, 0(x19)
	j judge_intersection_fast_cont_b701 # adhoc jump(2)
judge_intersection_fast_beqelse_b678:
# B678
judge_intersection_fast_beqelse_b676:
# B676
judge_intersection_fast_cont_b681:
# B681
	lw x18, 4(x14)
	fsub x18, x18, x29
	lw x29, 5(x14)
	fmul x18, x18, x29
	lw x29, 0(x25)
	fmul x29, x18, x29
	fadd x26, x29, x26
	fabs x26, x26
	lw x29, 4(x24)
	lw x29, 0(x29)
	fle x26, x29, x26
	bne	x26, zero, judge_intersection_fast_beqelse_b683
# B684
	lw x25, 1(x25)
	fmul x25, x18, x25
	fadd x25, x25, x27
	fabs x25, x25
	lw x24, 4(x24)
	lw x24, 1(x24)
	fle x24, x24, x25
	bne	x24, zero, judge_intersection_fast_beqelse_b685
# B686
	lw x14, 5(x14)
	feq x14, x14, zero
	xori x14, x14, 1
	mv x24, x14
# B687
	bne	x24, zero, judge_intersection_fast_beqelse_b689
	j judge_intersection_fast_cont_b688 # adhoc jump(3)
judge_intersection_fast_beqelse_b689:
# B689
	sw x18, 0(x19)
	mv x18, x20
	j judge_intersection_fast_cont_b701 # adhoc jump(2)
judge_intersection_fast_beqelse_b685:
# B685
judge_intersection_fast_beqelse_b683:
# B683
judge_intersection_fast_cont_b688:
# B688
	j judge_intersection_fast_cont_b702 # adhoc jump(2)
judge_intersection_fast_beqelse_b668:
# B668
	bne	x30, x28, judge_intersection_fast_beqelse_b691
# B690
	lw x18, 0(x14)
	fle x18, zero, x18
	bne	x18, zero, judge_intersection_fast_beqelse_b692
# B693
	lw x14, 0(x14)
	lw x18, 3(x25)
	fmul x14, x14, x18
	sw x14, 0(x19)
	mv x18, x15
	j judge_intersection_fast_cont_b701 # adhoc jump(2)
judge_intersection_fast_beqelse_b692:
# B692
	j judge_intersection_fast_cont_b702 # adhoc jump(2)
judge_intersection_fast_beqelse_b691:
# B691
	lw x18, 0(x14)
	feq x20, x18, zero
	bne	x20, zero, judge_intersection_fast_beqelse_b695
# B694
	lw x20, 1(x14)
	fmul x20, x20, x26
	lw x26, 2(x14)
	fmul x26, x26, x27
	fadd x20, x20, x26
	lw x26, 3(x14)
	fmul x26, x26, x29
	fadd x20, x20, x26
	lw x25, 3(x25)
	fmul x26, x20, x20
	fmul x18, x18, x25
	fsub x18, x26, x18
	fle x25, x18, zero
	bne	x25, zero, judge_intersection_fast_beqelse_b696
# B697
	lw x24, 6(x24)
	fsqrt x18, x18
	bne	x24, zero, judge_intersection_fast_beqelse_b699
# B698
	fsub x18, x20, x18
	lw x14, 4(x14)
	fmul x14, x18, x14
	sw x14, 0(x19)
	j judge_intersection_fast_cont_b700 # adhoc jump(2)
judge_intersection_fast_beqelse_b699:
# B699
	fadd x18, x20, x18
	lw x14, 4(x14)
	fmul x14, x18, x14
	sw x14, 0(x19)
judge_intersection_fast_cont_b700:
# B700
	mv x18, x15
judge_intersection_fast_cont_b701:
# B701
	bne	x18, zero, judge_intersection_fast_beqelse_b703
	j judge_intersection_fast_cont_b702 # adhoc jump(3)
judge_intersection_fast_beqelse_b703:
# B703
	lw x14, 0(x19)
	lw x18, 0(x10)
	fle x14, x18, x14
	bne	x14, zero, judge_intersection_fast_beqelse_b704
# B705
	mv x18, x15
	mv x24, x13
	mv x20, x100
judge_intersection_fast_loop_b706:
# B706
	add x4, x20, x18
	lw x100, 0(x4)
	beq	x100, x16, judge_intersection_fast_bneelse_b707
# B708
	la x14, min_caml_and_net
	add x4, x14, x100
	lw x100, 0(x4)
	mv x26, x24
	mv x25, x100
	mv x14, zero
judge_intersection_fast_beqelse_b750:	#moved
# B750
judge_intersection_fast_loop_b709:
# B709
	lw x100, 0(x26)
	add x4, x25, x14
	lw x27, 0(x4)
	beq	x27, x16, judge_intersection_fast_bneelse_b710
# B711
	add x4, x17, x27
	lw x29, 0(x4)
	lw x30, 10(x29)
	lw x31, 0(x30)
	lw x32, 1(x30)
	lw x33, 2(x30)
	lw x34, 1(x26)
	add x4, x34, x27
	lw x34, 0(x4)
	lw x35, 1(x29)
	bne	x35, x15, judge_intersection_fast_beqelse_b713
# B712
	lw x30, 0(x26)
	lw x35, 0(x34)
	fsub x35, x35, x31
	lw x36, 1(x34)
	fmul x35, x35, x36
	lw x36, 1(x30)
	fmul x36, x35, x36
	fadd x36, x36, x32
	fabs x36, x36
	lw x37, 4(x29)
	lw x37, 1(x37)
	fle x36, x37, x36
	bne	x36, zero, judge_intersection_fast_beqelse_b714
# B715
	lw x36, 2(x30)
	fmul x36, x35, x36
	fadd x36, x36, x33
	fabs x36, x36
	lw x37, 4(x29)
	lw x37, 2(x37)
	fle x36, x37, x36
	bne	x36, zero, judge_intersection_fast_beqelse_b716
# B717
	lw x36, 1(x34)
	feq x36, x36, zero
	xori x36, x36, 1
	mv x37, x36
# B718
	bne	x37, zero, judge_intersection_fast_beqelse_b720
	j judge_intersection_fast_cont_b719 # adhoc jump(3)
judge_intersection_fast_beqelse_b720:
# B720
	sw x35, 0(x19)
	li x29, 1
	addi x14, x14, 1
	j judge_intersection_fast_cont_b748 # adhoc jump(2)
judge_intersection_fast_beqelse_b716:
# B716
judge_intersection_fast_beqelse_b714:
# B714
judge_intersection_fast_cont_b719:
# B719
	lw x35, 2(x34)
	fsub x35, x35, x32
	lw x36, 3(x34)
	fmul x35, x35, x36
	lw x36, 0(x30)
	fmul x36, x35, x36
	fadd x36, x36, x31
	fabs x36, x36
	lw x37, 4(x29)
	lw x37, 0(x37)
	fle x36, x37, x36
	bne	x36, zero, judge_intersection_fast_beqelse_b721
# B722
	lw x36, 2(x30)
	fmul x36, x35, x36
	fadd x36, x36, x33
	fabs x36, x36
	lw x37, 4(x29)
	lw x37, 2(x37)
	fle x36, x37, x36
	bne	x36, zero, judge_intersection_fast_beqelse_b723
# B724
	lw x36, 3(x34)
	feq x36, x36, zero
	xori x36, x36, 1
	mv x37, x36
# B725
	bne	x37, zero, judge_intersection_fast_beqelse_b727
	j judge_intersection_fast_cont_b726 # adhoc jump(3)
judge_intersection_fast_beqelse_b727:
# B727
	sw x35, 0(x19)
	li x29, 2
	addi x14, x14, 1
	j judge_intersection_fast_cont_b748 # adhoc jump(2)
judge_intersection_fast_beqelse_b723:
# B723
judge_intersection_fast_beqelse_b721:
# B721
judge_intersection_fast_cont_b726:
# B726
	lw x35, 4(x34)
	fsub x33, x35, x33
	lw x35, 5(x34)
	fmul x33, x33, x35
	lw x35, 0(x30)
	fmul x35, x33, x35
	fadd x31, x35, x31
	fabs x31, x31
	lw x35, 4(x29)
	lw x35, 0(x35)
	fle x31, x35, x31
	bne	x31, zero, judge_intersection_fast_beqelse_b728
# B729
	lw x30, 1(x30)
	fmul x30, x33, x30
	fadd x30, x30, x32
	fabs x30, x30
	lw x29, 4(x29)
	lw x29, 1(x29)
	fle x29, x29, x30
	bne	x29, zero, judge_intersection_fast_beqelse_b730
# B731
	lw x29, 5(x34)
	feq x29, x29, zero
	xori x29, x29, 1
	mv x30, x29
# B732
	bne	x30, zero, judge_intersection_fast_beqelse_b734
	j judge_intersection_fast_cont_b733 # adhoc jump(3)
judge_intersection_fast_beqelse_b734:
# B734
	sw x33, 0(x19)
	li x29, 3
	addi x14, x14, 1
	j judge_intersection_fast_cont_b748 # adhoc jump(2)
judge_intersection_fast_beqelse_b730:
# B730
judge_intersection_fast_beqelse_b728:
# B728
judge_intersection_fast_cont_b733:
# B733
	mv x29, zero
	addi x14, x14, 1
	j judge_intersection_fast_cont_b747 # adhoc jump(2)
judge_intersection_fast_beqelse_b713:
# B713
	bne	x35, x28, judge_intersection_fast_beqelse_b736
# B735
	lw x29, 0(x34)
	fle x29, zero, x29
	beq	x29, zero, judge_intersection_fast_bneelse_b738
# B737
	mv x29, zero
	addi x14, x14, 1
	j judge_intersection_fast_cont_b747 # adhoc jump(2)
judge_intersection_fast_bneelse_b738:
# B738
	lw x29, 0(x34)
	lw x30, 3(x30)
	fmul x29, x29, x30
	sw x29, 0(x19)
	li x29, 1
	addi x14, x14, 1
	j judge_intersection_fast_cont_b748 # adhoc jump(2)
judge_intersection_fast_beqelse_b736:
# B736
	lw x35, 0(x34)
	feq x36, x35, zero
	bne	x36, zero, judge_intersection_fast_beqelse_b740
# B739
	lw x36, 1(x34)
	fmul x31, x36, x31
	lw x36, 2(x34)
	fmul x32, x36, x32
	fadd x31, x31, x32
	lw x32, 3(x34)
	fmul x32, x32, x33
	fadd x31, x31, x32
	lw x30, 3(x30)
	fmul x32, x31, x31
	fmul x30, x35, x30
	fsub x30, x32, x30
	fle x32, x30, zero
	beq	x32, zero, judge_intersection_fast_bneelse_b742
# B741
	mv x29, zero
	addi x14, x14, 1
	j judge_intersection_fast_cont_b747 # adhoc jump(2)
judge_intersection_fast_bneelse_b742:
# B742
	lw x29, 6(x29)
	bne	x29, zero, judge_intersection_fast_beqelse_b744
# B743
	fsqrt x29, x30
	fsub x29, x31, x29
	lw x30, 4(x34)
	fmul x29, x29, x30
	sw x29, 0(x19)
	j judge_intersection_fast_cont_b745 # adhoc jump(2)
judge_intersection_fast_beqelse_b744:
# B744
	fsqrt x29, x30
	fadd x29, x31, x29
	lw x30, 4(x34)
	fmul x29, x29, x30
	sw x29, 0(x19)
judge_intersection_fast_cont_b745:
# B745
	li x29, 1
	addi x14, x14, 1
judge_intersection_fast_cont_b748:
# B748
	lw x30, 0(x19)
	fle x31, x30, zero
	bne	x31, zero, judge_intersection_fast_beqelse_b751
# B752
	lw x31, 0(x10)
	fle x31, x31, x30
	bne	x31, zero, judge_intersection_fast_beqelse_b753
# B754
	lui x31, 246333
	addi x31, x31, 1802
	fadd x30, x30, x31
	lw x31, 0(x100)
	fmul x31, x31, x30
	la x32, min_caml_startp_fast
	lw x33, 0(x32)
	fadd x31, x31, x33
	lw x33, 1(x100)
	fmul x33, x33, x30
	lw x34, 1(x32)
	fadd x33, x33, x34
	lw x100, 2(x100)
	fmul x100, x100, x30
	lw x32, 2(x32)
	fadd x100, x100, x32
	mv x37, x100
	mv x34, x25
	mv x35, x31
	mv x36, x33
	mv x32, zero
	j	judge_intersection_fast_loop_b755
judge_intersection_fast_bneelse_b782:	#moved
# B782
	addi x32, x32, 1
judge_intersection_fast_loop_b755:
# B755
	add x4, x34, x32
	lw x38, 0(x4)
	beq	x38, x16, judge_intersection_fast_bneelse_b756
# B757
	add x4, x17, x38
	lw x38, 0(x4)
	lw x39, 5(x38)
	lw x39, 0(x39)
	fsub x39, x35, x39
	lw x40, 5(x38)
	lw x40, 1(x40)
	fsub x40, x36, x40
	lw x5, 5(x38)
	lw x5, 2(x5)
	fsub x5, x37, x5
	lw x6, 1(x38)
	bne	x6, x15, judge_intersection_fast_beqelse_b759
# B758
	fabs x39, x39
	lw x6, 4(x38)
	lw x6, 0(x6)
	fle x39, x6, x39
	bne	x39, zero, judge_intersection_fast_beqelse_b760
# B761
	fabs x39, x40
	lw x40, 4(x38)
	lw x40, 1(x40)
	fle x39, x40, x39
	bne	x39, zero, judge_intersection_fast_beqelse_b762
# B763
	fabs x39, x5
	lw x40, 4(x38)
	lw x40, 2(x40)
	fle x39, x40, x39
	xori x39, x39, 1
	mv x40, x39
# B764
	bne	x40, zero, judge_intersection_fast_beqelse_b766
	j judge_intersection_fast_cont_b765 # adhoc jump(3)
judge_intersection_fast_beqelse_b766:
# B766
	lw x38, 6(x38)
	j judge_intersection_fast_cont_b781 # adhoc jump(2)
judge_intersection_fast_beqelse_b762:
# B762
judge_intersection_fast_beqelse_b760:
# B760
judge_intersection_fast_cont_b765:
# B765
	lw x38, 6(x38)
	xori x38, x38, 1
	j judge_intersection_fast_cont_b781 # adhoc jump(2)
judge_intersection_fast_beqelse_b759:
# B759
	bne	x6, x28, judge_intersection_fast_beqelse_b768
# B767
	lw x6, 4(x38)
	lw x65, 0(x6)
	fmul x39, x65, x39
	lw x65, 1(x6)
	fmul x40, x65, x40
	fadd x39, x39, x40
	lw x40, 2(x6)
	fmul x40, x40, x5
	fadd x39, x39, x40
	lw x38, 6(x38)
	fle x39, zero, x39
	xori x39, x39, 1
	bne	x38, zero, judge_intersection_fast_beqelse_b770
# B769
	mv x38, x39
	j judge_intersection_fast_cont_b771 # adhoc jump(2)
judge_intersection_fast_beqelse_b770:
# B770
	xori x38, x39, 1
judge_intersection_fast_cont_b771:
# B771
	xori x38, x38, 1
	j judge_intersection_fast_cont_b781 # adhoc jump(2)
judge_intersection_fast_beqelse_b768:
# B768
	fmul x6, x39, x39
	lw x65, 4(x38)
	lw x65, 0(x65)
	fmul x6, x6, x65
	fmul x65, x40, x40
	lw x66, 4(x38)
	lw x66, 1(x66)
	fmul x65, x65, x66
	fadd x6, x6, x65
	fmul x65, x5, x5
	lw x66, 4(x38)
	lw x66, 2(x66)
	fmul x65, x65, x66
	fadd x6, x6, x65
	lw x65, 3(x38)
	bne	x65, zero, judge_intersection_fast_beqelse_b773
# B772
	mv x39, x6
	j judge_intersection_fast_cont_b774 # adhoc jump(2)
judge_intersection_fast_beqelse_b773:
# B773
	fmul x65, x40, x5
	lw x66, 9(x38)
	lw x66, 0(x66)
	fmul x65, x65, x66
	fadd x6, x6, x65
	fmul x5, x5, x39
	lw x65, 9(x38)
	lw x65, 1(x65)
	fmul x5, x5, x65
	fadd x5, x6, x5
	fmul x39, x39, x40
	lw x40, 9(x38)
	lw x40, 2(x40)
	fmul x39, x39, x40
	fadd x39, x5, x39
judge_intersection_fast_cont_b774:
# B774
	lw x40, 1(x38)
	li x5, 3
	bne	x40, x5, judge_intersection_fast_beqelse_b776
# B775
	lui x40, 260096
	fsub x39, x39, x40
judge_intersection_fast_beqelse_b776:
# B776
judge_intersection_fast_cont_b777:
# B777
	lw x38, 6(x38)
	fle x39, zero, x39
	xori x39, x39, 1
	bne	x38, zero, judge_intersection_fast_beqelse_b779
# B778
	mv x38, x39
	j judge_intersection_fast_cont_b780 # adhoc jump(2)
judge_intersection_fast_beqelse_b779:
# B779
	xori x38, x39, 1
judge_intersection_fast_cont_b780:
# B780
	xori x38, x38, 1
judge_intersection_fast_cont_b781:
# B781
	beq	x38, zero, judge_intersection_fast_bneelse_b782
# B783
# B785
	j judge_intersection_fast_cont_b787 # adhoc jump(2)
judge_intersection_fast_bneelse_b756:
# B756
# B786
	sw x30, 0(x10)
	sw x31, 0(x21)
	sw x33, 1(x21)
	sw x100, 2(x21)
	sw x27, 0(x22)
	sw x29, 0(x23)
judge_intersection_fast_beqelse_b753:
# B753
judge_intersection_fast_beqelse_b751:
# B751
judge_intersection_fast_cont_b787:
# B787
	j	judge_intersection_fast_loop_b709
judge_intersection_fast_beqelse_b740:
# B740
	mv x29, zero
	addi x14, x14, 1
judge_intersection_fast_cont_b747:
# B747
	add x4, x17, x27
	lw x100, 0(x4)
	lw x100, 6(x100)
	bne	x100, zero, judge_intersection_fast_beqelse_b750
# B749
judge_intersection_fast_bneelse_b710:
# B710
judge_intersection_fast_cont_b788:
# B788
	addi x18, x18, 1
	j	judge_intersection_fast_loop_b706
judge_intersection_fast_bneelse_b707:
# B707
judge_intersection_fast_beqelse_b704:
# B704
judge_intersection_fast_beqelse_b696:
# B696
judge_intersection_fast_beqelse_b695:
# B695
judge_intersection_fast_cont_b702:
# B702
judge_intersection_fast_cont_b789:
# B789
	addi x11, x11, 1
	j	judge_intersection_fast_loop_b579
judge_intersection_fast_bneelse_b580:
# B580
# B790
	lw x10, 0(x10)
	lui x100, 777421
	addi x100, x100, -819
	fle x100, x10, x100
	beq	x100, zero, judge_intersection_fast_bneelse_b792
# B791
	mv x5, zero
	ret
judge_intersection_fast_bneelse_b792:
# B792
	lui x100, 314348
	addi x100, x100, -992
	fle x10, x100, x10
	xori x5, x10, 1
	ret
utexture.3059:
# B793
# B794
	lw x10, 0(x5)
	la x100, min_caml_texture_color
	lw x11, 8(x5)
	lw x11, 0(x11)
	sw x11, 0(x100)
	li x11, 1
	lw x12, 8(x5)
	lw x12, 1(x12)
	sw x12, 1(x100)
	li x12, 2
	lw x13, 8(x5)
	lw x13, 2(x13)
	sw x13, 2(x100)
	lui x13, 266752
	bne	x10, x11, utexture_beqelse_b796
# B795
	lw x10, 0(x6)
	lw x11, 5(x5)
	lw x11, 0(x11)
	fsub x10, x10, x11
	lui x11, 251085
	addi x11, x11, -819
	fmul x12, x10, x11
	floor x12, x12
	lui x14, 268800
	fmul x12, x12, x14
	fsub x10, x10, x12
	fle x10, x13, x10
	xori x10, x10, 1
	lw x12, 2(x6)
	lw x15, 5(x5)
	lw x15, 2(x15)
	fsub x12, x12, x15
	fmul x11, x12, x11
	floor x11, x11
	fmul x11, x11, x14
	fsub x11, x12, x11
	fle x11, x13, x11
	xori x11, x11, 1
	bne	x10, zero, utexture_beqelse_b798
# B797
	bne	x11, zero, utexture_beqelse_b800
# B799
	lui x10, 276464
	j utexture_cont_b803 # adhoc jump(2)
utexture_beqelse_b800:
# B800
	mv x10, zero
	j utexture_cont_b803 # adhoc jump(2)
utexture_beqelse_b798:
# B798
	bne	x11, zero, utexture_beqelse_b802
# B801
	mv x10, zero
	j utexture_cont_b803 # adhoc jump(2)
utexture_beqelse_b802:
# B802
	lui x10, 276464
utexture_cont_b803:
# B803
	sw x10, 1(x100)
	ret
utexture_beqelse_b796:
# B796
	lui x14, 265361
	addi x14, x14, -37
	lui x15, 262144
	lui x16, 263313
	addi x16, x16, -37
	lui x17, 261265
	addi x17, x17, -37
	lui x18, 259217
	addi x18, x18, -37
	lui x19, 260096
	lui x20, 778923
	addi x20, x20, -1364
	lui x21, 245896
	addi x21, x21, 1638
	lui x22, 758998
	addi x22, x22, 1206
	lui x23, 782336
	lui x24, 250538
	addi x24, x24, 1929
	lui x25, 764728
	addi x25, x25, 262
	lui x26, 276464
	bne	x10, x12, utexture_beqelse_b805
# B804
	lw x10, 1(x6)
	lui x11, 256000
	fmul x10, x10, x11
	fle x11, x10, zero
	xori x11, x11, 1
	fabs x10, x10
	mv x12, x10
	mv x13, x14
	j	utexture_loop_b806
utexture_bneelse_b807:	#moved
# B807
	fmul x13, x13, x15
utexture_loop_b806:
# B806
	fle x27, x12, x13
	beq	x27, zero, utexture_bneelse_b807
# B808
# B809
	mv x28, x10
	mv x29, x13
	j	utexture_loop_b810
utexture_beqelse_b814:	#moved
# B814
	fdiv x29, x29, x15
utexture_loop_b810:
# B810
	fle x10, x14, x28
	beq	x10, zero, utexture_bneelse_b811
# B812
	fle x10, x28, x29
	bne	x10, zero, utexture_beqelse_b814
# B813
	fsub x28, x28, x29
	fdiv x29, x29, x15
	j	utexture_loop_b810
utexture_bneelse_b811:
# B811
# B815
	fle x10, x16, x28
	bne	x10, zero, utexture_beqelse_b817
# B816
	mv x12, x28
	j utexture_cont_b818 # adhoc jump(2)
utexture_beqelse_b817:
# B817
	fsub x12, x28, x16
utexture_cont_b818:
# B818
	bne	x10, zero, utexture_beqelse_b820
# B819
	mv x10, x11
	j utexture_cont_b821 # adhoc jump(2)
utexture_beqelse_b820:
# B820
	xori x10, x11, 1
utexture_cont_b821:
# B821
	fle x11, x17, x12
	bne	x11, zero, utexture_beqelse_b823
# B822
	mv x11, x12
	j utexture_cont_b824 # adhoc jump(2)
utexture_beqelse_b823:
# B823
	fsub x11, x16, x12
utexture_cont_b824:
# B824
	fle x12, x18, x11
	bne	x12, zero, utexture_beqelse_b826
# B825
	fmul x12, x11, x11
	fmul x13, x12, x22
	fadd x13, x21, x13
	fmul x13, x12, x13
	fadd x13, x20, x13
	fmul x12, x12, x13
	fadd x12, x19, x12
	fmul x11, x11, x12
	j utexture_cont_b827 # adhoc jump(2)
utexture_beqelse_b826:
# B826
	fsub x11, x17, x11
	fmul x11, x11, x11
	fmul x12, x11, x25
	fadd x12, x24, x12
	fmul x12, x11, x12
	fadd x12, x23, x12
	fmul x11, x11, x12
	fadd x11, x19, x11
utexture_cont_b827:
# B827
	fle x12, x11, zero
	beq	x10, x12, utexture_bneelse_b829
# B828
	mv x10, x11
	j utexture_cont_b830 # adhoc jump(2)
utexture_bneelse_b829:
# B829
	fsub x10, zero, x11
utexture_cont_b830:
# B830
	fmul x10, x10, x10
	fmul x11, x26, x10
	sw x11, 0(x100)
	fsub x10, x19, x10
	fmul x10, x26, x10
	sw x10, 1(x100)
	ret
utexture_beqelse_b805:
# B805
	li x12, 3
	lui x27, 263313
	addi x27, x27, -37
	bne	x10, x12, utexture_beqelse_b832
# B831
	lw x10, 0(x6)
	lw x12, 5(x5)
	lw x12, 0(x12)
	fsub x10, x10, x12
	lw x12, 2(x6)
	lw x28, 5(x5)
	lw x28, 2(x28)
	fsub x12, x12, x28
	fmul x10, x10, x10
	fmul x12, x12, x12
	fadd x10, x10, x12
	fsqrt x10, x10
	fdiv x10, x10, x13
	floor x12, x10
	fsub x10, x10, x12
	fmul x10, x10, x27
	fabs x10, x10
	mv x12, x10
	mv x13, x14
	j	utexture_loop_b833
utexture_bneelse_b834:	#moved
# B834
	fmul x13, x13, x15
utexture_loop_b833:
# B833
	fle x27, x12, x13
	beq	x27, zero, utexture_bneelse_b834
# B835
# B836
	mv x28, x10
	mv x29, x13
	j	utexture_loop_b837
utexture_beqelse_b841:	#moved
# B841
	fdiv x29, x29, x15
utexture_loop_b837:
# B837
	fle x10, x14, x28
	beq	x10, zero, utexture_bneelse_b838
# B839
	fle x10, x28, x29
	bne	x10, zero, utexture_beqelse_b841
# B840
	fsub x28, x28, x29
	fdiv x29, x29, x15
	j	utexture_loop_b837
utexture_bneelse_b838:
# B838
# B842
	fle x10, x16, x28
	bne	x10, zero, utexture_beqelse_b844
# B843
	mv x12, x28
	j utexture_cont_b845 # adhoc jump(2)
utexture_beqelse_b844:
# B844
	fsub x12, x28, x16
utexture_cont_b845:
# B845
	bne	x10, zero, utexture_beqelse_b847
# B846
	mv x13, x11
	j utexture_cont_b848 # adhoc jump(2)
utexture_beqelse_b847:
# B847
	mv x13, zero
utexture_cont_b848:
# B848
	fle x10, x17, x12
	bne	x10, zero, utexture_beqelse_b850
# B849
	mv x11, x12
	j utexture_cont_b851 # adhoc jump(2)
utexture_beqelse_b850:
# B850
	fsub x11, x16, x12
utexture_cont_b851:
# B851
	bne	x10, zero, utexture_beqelse_b853
# B852
	mv x10, x13
	j utexture_cont_b854 # adhoc jump(2)
utexture_beqelse_b853:
# B853
	xori x10, x13, 1
utexture_cont_b854:
# B854
	fle x12, x18, x11
	bne	x12, zero, utexture_beqelse_b856
# B855
	fmul x11, x11, x11
	fmul x12, x11, x25
	fadd x12, x24, x12
	fmul x12, x11, x12
	fadd x12, x23, x12
	fmul x11, x11, x12
	fadd x11, x19, x11
	j utexture_cont_b857 # adhoc jump(2)
utexture_beqelse_b856:
# B856
	fsub x11, x17, x11
	fmul x12, x11, x11
	fmul x13, x12, x22
	fadd x13, x21, x13
	fmul x13, x12, x13
	fadd x13, x20, x13
	fmul x12, x12, x13
	fadd x12, x19, x12
	fmul x11, x11, x12
utexture_cont_b857:
# B857
	fle x12, x11, zero
	beq	x10, x12, utexture_bneelse_b859
# B858
	mv x10, x11
	j utexture_cont_b860 # adhoc jump(2)
utexture_bneelse_b859:
# B859
	fsub x10, zero, x11
utexture_cont_b860:
# B860
	fmul x10, x10, x10
	fmul x11, x10, x26
	sw x11, 1(x100)
	fsub x10, x19, x10
	fmul x10, x10, x26
	sw x10, 2(x100)
	ret
utexture_beqelse_b832:
# B832
	li x11, 4
	bne	x10, x11, utexture_beqelse_b862
# B861
	lw x10, 0(x6)
	lw x11, 5(x5)
	lw x11, 0(x11)
	fsub x10, x10, x11
	lw x11, 4(x5)
	lw x11, 0(x11)
	fsqrt x11, x11
	fmul x10, x10, x11
	lw x11, 2(x6)
	lw x12, 5(x5)
	lw x12, 2(x12)
	fsub x11, x11, x12
	lw x12, 4(x5)
	lw x12, 2(x12)
	fsqrt x12, x12
	fmul x11, x11, x12
	fmul x12, x10, x10
	fmul x13, x11, x11
	fadd x12, x12, x13
	fabs x13, x10
	lui x14, 232731
	addi x14, x14, 1815
	fle x13, x14, x13
	lui x15, 257536
	lui x16, 780971
	addi x16, x16, -1366
	lui x20, 255181
	addi x20, x20, -819
	lui x21, 778533
	addi x21, x21, -1755
	lui x22, 253497
	addi x22, x22, -456
	lui x23, 777085
	addi x23, x23, 1646
	lui x24, 251742
	addi x24, x24, 1989
	lui x25, 262592
	lui x28, 270080
	beq	x13, zero, utexture_bneelse_b864
# B863
	fdiv x10, x11, x10
	fabs x10, x10
	fle x11, x10, zero
	xori x11, x11, 1
	fabs x13, x10
	fle x29, x15, x13
	bne	x29, zero, utexture_beqelse_b866
# B865
	fmul x11, x10, x10
	fmul x13, x11, x24
	fadd x13, x23, x13
	fmul x13, x11, x13
	fadd x13, x22, x13
	fmul x13, x11, x13
	fadd x13, x21, x13
	fmul x13, x11, x13
	fadd x13, x20, x13
	fmul x13, x11, x13
	fadd x13, x16, x13
	fmul x11, x11, x13
	fadd x11, x19, x11
	fmul x10, x10, x11
	j utexture_cont_b872 # adhoc jump(2)
utexture_beqelse_b866:
# B866
	fle x10, x25, x13
	bne	x10, zero, utexture_beqelse_b868
# B867
	fsub x10, x13, x19
	fadd x13, x13, x19
	fdiv x10, x10, x13
	fmul x13, x10, x10
	fmul x29, x13, x24
	fadd x29, x23, x29
	fmul x29, x13, x29
	fadd x29, x22, x29
	fmul x29, x13, x29
	fadd x29, x21, x29
	fmul x29, x13, x29
	fadd x29, x20, x29
	fmul x29, x13, x29
	fadd x29, x16, x29
	fmul x13, x13, x29
	fadd x13, x19, x13
	fmul x10, x10, x13
	fadd x10, x18, x10
	j utexture_cont_b869 # adhoc jump(2)
utexture_beqelse_b868:
# B868
	fdiv x10, x19, x13
	fmul x13, x10, x10
	fmul x29, x13, x24
	fadd x29, x23, x29
	fmul x29, x13, x29
	fadd x29, x22, x29
	fmul x29, x13, x29
	fadd x29, x21, x29
	fmul x29, x13, x29
	fadd x29, x20, x29
	fmul x29, x13, x29
	fadd x29, x16, x29
	fmul x13, x13, x29
	fadd x13, x19, x13
	fmul x10, x10, x13
	fsub x10, x17, x10
utexture_cont_b869:
# B869
	bne	x11, zero, utexture_beqelse_b871
# B870
	fsub x10, zero, x10
utexture_beqelse_b871:
# B871
utexture_cont_b872:
# B872
	fmul x10, x10, x28
	fdiv x10, x10, x27
	j utexture_cont_b873 # adhoc jump(2)
utexture_bneelse_b864:
# B864
	lui x10, 268032
utexture_cont_b873:
# B873
	floor x11, x10
	fsub x10, x10, x11
	lw x11, 1(x6)
	lw x13, 5(x5)
	lw x13, 1(x13)
	fsub x11, x11, x13
	lw x13, 4(x5)
	lw x13, 1(x13)
	fsqrt x13, x13
	fmul x11, x11, x13
	fabs x13, x12
	fle x13, x14, x13
	beq	x13, zero, utexture_bneelse_b875
# B874
	fdiv x11, x11, x12
	fabs x11, x11
	fle x12, x11, zero
	xori x12, x12, 1
	fabs x13, x11
	fle x14, x15, x13
	bne	x14, zero, utexture_beqelse_b877
# B876
	fmul x12, x11, x11
	fmul x13, x12, x24
	fadd x13, x23, x13
	fmul x13, x12, x13
	fadd x13, x22, x13
	fmul x13, x12, x13
	fadd x13, x21, x13
	fmul x13, x12, x13
	fadd x13, x20, x13
	fmul x13, x12, x13
	fadd x13, x16, x13
	fmul x12, x12, x13
	fadd x12, x19, x12
	fmul x11, x11, x12
	j utexture_cont_b883 # adhoc jump(2)
utexture_beqelse_b877:
# B877
	fle x11, x25, x13
	bne	x11, zero, utexture_beqelse_b879
# B878
	fsub x11, x13, x19
	fadd x13, x13, x19
	fdiv x11, x11, x13
	fmul x13, x11, x11
	fmul x14, x13, x24
	fadd x14, x23, x14
	fmul x14, x13, x14
	fadd x14, x22, x14
	fmul x14, x13, x14
	fadd x14, x21, x14
	fmul x14, x13, x14
	fadd x14, x20, x14
	fmul x14, x13, x14
	fadd x14, x16, x14
	fmul x13, x13, x14
	fadd x13, x19, x13
	fmul x11, x11, x13
	fadd x11, x18, x11
	j utexture_cont_b880 # adhoc jump(2)
utexture_beqelse_b879:
# B879
	fdiv x11, x19, x13
	fmul x13, x11, x11
	fmul x14, x13, x24
	fadd x14, x23, x14
	fmul x14, x13, x14
	fadd x14, x22, x14
	fmul x14, x13, x14
	fadd x14, x21, x14
	fmul x14, x13, x14
	fadd x14, x20, x14
	fmul x14, x13, x14
	fadd x14, x16, x14
	fmul x13, x13, x14
	fadd x13, x19, x13
	fmul x11, x11, x13
	fsub x11, x17, x11
utexture_cont_b880:
# B880
	bne	x12, zero, utexture_beqelse_b882
# B881
	fsub x11, zero, x11
utexture_beqelse_b882:
# B882
utexture_cont_b883:
# B883
	fmul x11, x11, x28
	fdiv x11, x11, x27
	j utexture_cont_b884 # adhoc jump(2)
utexture_bneelse_b875:
# B875
	lui x11, 268032
utexture_cont_b884:
# B884
	floor x12, x11
	fsub x11, x11, x12
	lui x12, 254362
	addi x12, x12, -1638
	lui x13, 258048
	fsub x10, x13, x10
	fmul x10, x10, x10
	fsub x10, x12, x10
	fsub x11, x13, x11
	fmul x11, x11, x11
	fsub x10, x10, x11
	fle x11, zero, x10
	beq	x11, zero, utexture_bneelse_b886
# B885
	mv x12, x10
	j utexture_cont_b887 # adhoc jump(2)
utexture_bneelse_b886:
# B886
	mv x12, zero
utexture_cont_b887:
# B887
	fmul x10, x26, x12
	lui x11, 256410
	addi x11, x11, -1638
	fdiv x10, x10, x11
	sw x10, 2(x100)
	ret
utexture_beqelse_b862:
# B862
	ret
trace_ray.3071:
	sw	ra, 0(x2)
	sw	x101, 1(x2)
	sw	x102, 2(x2)
	sw	x103, 3(x2)
	sw	x104, 4(x2)
	sw	x105, 5(x2)
	sw	x106, 6(x2)
	sw	x107, 7(x2)
	sw	x108, 8(x2)
	sw	x109, 9(x2)
	sw	x110, 10(x2)
	sw	x111, 11(x2)
	sw	x112, 12(x2)
	sw	x113, 13(x2)
	sw	x114, 14(x2)
	sw	x115, 15(x2)
	sw	x116, 16(x2)
	sw	x117, 17(x2)
body_trace_ray.3071:
# B888
# B889
	mv x103, x6
	mv x105, x66
	mv x104, x7
	mv x101, x5
	mv x102, x65
	j	trace_ray_loop_b890
trace_ray_bneelse_b1840:	#moved
# B1840
	lw x100, 7(x21)
	lw x100, 0(x100)
	fsub x100, x16, x100
	lw x11, 0(x108)
	mv x101, x10
	fmul x102, x102, x100
	fadd x105, x105, x11
trace_ray_loop_b890:
# B890
	li x106, 4
	bgt	x101, x106, trace_ray_bleelse_b892
# B891
	lw x107, 2(x104)
	la x108, min_caml_tmin
	lui x109, 321255
	addi x109, x109, -1240
	sw x109, 0(x108)
	la x110, min_caml_or_net
	lw x10, 0(x110)
	mv x112, x10
	mv x113, x103
	mv x111, zero
trace_ray_loop_b893:
# B893
	add x4, x112, x111
	lw x10, 0(x4)
	lw x100, 0(x10)
	li x11, 1
	li x114, -1
	la x12, min_caml_startp
	la x13, min_caml_objects
	li x14, 2
	lui x15, 258048
	li x16, 3
	lui x17, 260096
	beq	x100, x114, trace_ray_bneelse_b894
# B895
	li x18, 99
	bne	x100, x18, trace_ray_beqelse_b897
# B896
	mv x116, x10
	mv x115, x11
	mv x117, x113
	j	trace_ray_loop_b898
trace_ray_beqelse_b900:	#moved
# B900
	la x100, min_caml_and_net
	add x4, x100, x10
	lw x6, 0(x4)
	mv x7, x117
	mv x5, zero
	addi	x2, x2, 19
	jal	solve_each_element.3022
	addi	x2, x2, -19
	addi x115, x115, 1
trace_ray_loop_b898:
# B898
	add x4, x116, x115
	lw x10, 0(x4)
	bne	x10, x114, trace_ray_beqelse_b900
# B899
	j trace_ray_cont_b979 # adhoc jump(2)
trace_ray_beqelse_b897:
# B897
	add x4, x13, x100
	lw x100, 0(x4)
	lw x13, 0(x12)
	lw x18, 5(x100)
	lw x18, 0(x18)
	fsub x13, x13, x18
	lw x18, 1(x12)
	lw x19, 5(x100)
	lw x19, 1(x19)
	fsub x18, x18, x19
	lw x12, 2(x12)
	lw x19, 5(x100)
	lw x19, 2(x19)
	fsub x12, x12, x19
	lw x19, 1(x100)
	la x20, min_caml_solver_dist
	bne	x19, x11, trace_ray_beqelse_b902
# B901
	lw x15, 0(x113)
	feq x15, x15, zero
	bne	x15, zero, trace_ray_beqelse_b904
# B903
	lw x15, 4(x100)
	lw x16, 6(x100)
	lw x17, 0(x113)
	fle x17, zero, x17
	xori x17, x17, 1
	bne	x16, zero, trace_ray_beqelse_b906
# B905
	mv x16, x17
	j trace_ray_cont_b907 # adhoc jump(2)
trace_ray_beqelse_b906:
# B906
	xori x16, x17, 1
trace_ray_cont_b907:
# B907
	lw x17, 0(x15)
	bne	x16, zero, trace_ray_beqelse_b909
# B908
	fsub x16, zero, x17
	j trace_ray_cont_b910 # adhoc jump(2)
trace_ray_beqelse_b909:
# B909
	mv x16, x17
trace_ray_cont_b910:
# B910
	fsub x16, x16, x13
	lw x17, 0(x113)
	fdiv x16, x16, x17
	lw x17, 1(x113)
	fmul x17, x16, x17
	fadd x17, x17, x18
	fabs x17, x17
	lw x19, 1(x15)
	fle x17, x19, x17
	bne	x17, zero, trace_ray_beqelse_b911
# B912
	lw x17, 2(x113)
	fmul x17, x16, x17
	fadd x17, x17, x12
	fabs x17, x17
	lw x15, 2(x15)
	fle x15, x15, x17
	bne	x15, zero, trace_ray_beqelse_b913
# B914
	sw x16, 0(x20)
	mv x17, x11
# B915
	bne	x17, zero, trace_ray_beqelse_b917
	j trace_ray_cont_b916 # adhoc jump(3)
trace_ray_beqelse_b917:
# B917
	mv x100, x11
	j trace_ray_cont_b971 # adhoc jump(2)
trace_ray_beqelse_b913:
# B913
trace_ray_beqelse_b911:
# B911
trace_ray_beqelse_b904:
# B904
trace_ray_cont_b916:
# B916
	lw x15, 1(x113)
	feq x15, x15, zero
	bne	x15, zero, trace_ray_beqelse_b919
# B918
	lw x15, 4(x100)
	lw x16, 6(x100)
	lw x17, 1(x113)
	fle x17, zero, x17
	xori x17, x17, 1
	bne	x16, zero, trace_ray_beqelse_b921
# B920
	mv x16, x17
	j trace_ray_cont_b922 # adhoc jump(2)
trace_ray_beqelse_b921:
# B921
	xori x16, x17, 1
trace_ray_cont_b922:
# B922
	lw x17, 1(x15)
	bne	x16, zero, trace_ray_beqelse_b924
# B923
	fsub x16, zero, x17
	j trace_ray_cont_b925 # adhoc jump(2)
trace_ray_beqelse_b924:
# B924
	mv x16, x17
trace_ray_cont_b925:
# B925
	fsub x16, x16, x18
	lw x17, 1(x113)
	fdiv x16, x16, x17
	lw x17, 2(x113)
	fmul x17, x16, x17
	fadd x17, x17, x12
	fabs x17, x17
	lw x19, 2(x15)
	fle x17, x19, x17
	bne	x17, zero, trace_ray_beqelse_b926
# B927
	lw x17, 0(x113)
	fmul x17, x16, x17
	fadd x17, x17, x13
	fabs x17, x17
	lw x15, 0(x15)
	fle x15, x15, x17
	bne	x15, zero, trace_ray_beqelse_b928
# B929
	sw x16, 0(x20)
	mv x17, x11
# B930
	bne	x17, zero, trace_ray_beqelse_b932
	j trace_ray_cont_b931 # adhoc jump(3)
trace_ray_beqelse_b932:
# B932
	mv x100, x14
	j trace_ray_cont_b971 # adhoc jump(2)
trace_ray_beqelse_b928:
# B928
trace_ray_beqelse_b926:
# B926
trace_ray_beqelse_b919:
# B919
trace_ray_cont_b931:
# B931
	lw x14, 2(x113)
	feq x14, x14, zero
	bne	x14, zero, trace_ray_beqelse_b934
# B933
	lw x14, 4(x100)
	lw x100, 6(x100)
	lw x15, 2(x113)
	fle x15, zero, x15
	xori x15, x15, 1
	bne	x100, zero, trace_ray_beqelse_b936
# B935
	mv x100, x15
	j trace_ray_cont_b937 # adhoc jump(2)
trace_ray_beqelse_b936:
# B936
	xori x100, x15, 1
trace_ray_cont_b937:
# B937
	lw x15, 2(x14)
	bne	x100, zero, trace_ray_beqelse_b939
# B938
	fsub x100, zero, x15
	j trace_ray_cont_b940 # adhoc jump(2)
trace_ray_beqelse_b939:
# B939
	mv x100, x15
trace_ray_cont_b940:
# B940
	fsub x100, x100, x12
	lw x12, 2(x113)
	fdiv x100, x100, x12
	lw x12, 0(x113)
	fmul x12, x100, x12
	fadd x12, x12, x13
	fabs x12, x12
	lw x13, 0(x14)
	fle x12, x13, x12
	bne	x12, zero, trace_ray_beqelse_b941
# B942
	lw x12, 1(x113)
	fmul x12, x100, x12
	fadd x12, x12, x18
	fabs x12, x12
	lw x13, 1(x14)
	fle x12, x13, x12
	bne	x12, zero, trace_ray_beqelse_b943
# B944
	sw x100, 0(x20)
	mv x13, x11
# B945
	bne	x13, zero, trace_ray_beqelse_b947
	j trace_ray_cont_b946 # adhoc jump(3)
trace_ray_beqelse_b947:
# B947
	j trace_ray_cont_b973 # adhoc jump(2)
trace_ray_beqelse_b943:
# B943
trace_ray_beqelse_b941:
# B941
trace_ray_beqelse_b934:
# B934
trace_ray_cont_b946:
# B946
	j trace_ray_cont_b972 # adhoc jump(2)
trace_ray_beqelse_b902:
# B902
	bne	x19, x14, trace_ray_beqelse_b949
# B948
	lw x100, 4(x100)
	lw x14, 0(x113)
	lw x15, 0(x100)
	fmul x14, x14, x15
	lw x15, 1(x113)
	lw x16, 1(x100)
	fmul x15, x15, x16
	fadd x14, x14, x15
	lw x15, 2(x113)
	lw x16, 2(x100)
	fmul x15, x15, x16
	fadd x14, x14, x15
	fle x15, x14, zero
	bne	x15, zero, trace_ray_beqelse_b950
# B951
	lw x15, 0(x100)
	fmul x13, x15, x13
	lw x15, 1(x100)
	fmul x15, x15, x18
	fadd x13, x13, x15
	lw x100, 2(x100)
	fmul x100, x100, x12
	fadd x100, x13, x100
	fsub x100, zero, x100
	fdiv x100, x100, x14
	sw x100, 0(x20)
	mv x100, x11
	j trace_ray_cont_b971 # adhoc jump(2)
trace_ray_beqelse_b950:
# B950
	j trace_ray_cont_b972 # adhoc jump(2)
trace_ray_beqelse_b949:
# B949
	lw x14, 0(x113)
	lw x19, 1(x113)
	lw x21, 2(x113)
	fmul x22, x14, x14
	lw x23, 4(x100)
	lw x23, 0(x23)
	fmul x22, x22, x23
	fmul x23, x19, x19
	lw x24, 4(x100)
	lw x24, 1(x24)
	fmul x23, x23, x24
	fadd x22, x22, x23
	fmul x23, x21, x21
	lw x24, 4(x100)
	lw x24, 2(x24)
	fmul x23, x23, x24
	fadd x22, x22, x23
	lw x23, 3(x100)
	bne	x23, zero, trace_ray_beqelse_b953
# B952
	mv x14, x22
	j trace_ray_cont_b954 # adhoc jump(2)
trace_ray_beqelse_b953:
# B953
	fmul x23, x19, x21
	lw x24, 9(x100)
	lw x24, 0(x24)
	fmul x23, x23, x24
	fadd x22, x22, x23
	fmul x21, x21, x14
	lw x23, 9(x100)
	lw x23, 1(x23)
	fmul x21, x21, x23
	fadd x21, x22, x21
	fmul x14, x14, x19
	lw x19, 9(x100)
	lw x19, 2(x19)
	fmul x14, x14, x19
	fadd x14, x21, x14
trace_ray_cont_b954:
# B954
	feq x19, x14, zero
	bne	x19, zero, trace_ray_beqelse_b956
# B955
	lw x19, 0(x113)
	lw x21, 1(x113)
	lw x22, 2(x113)
	fmul x23, x19, x13
	lw x24, 4(x100)
	lw x24, 0(x24)
	fmul x23, x23, x24
	fmul x24, x21, x18
	lw x25, 4(x100)
	lw x25, 1(x25)
	fmul x24, x24, x25
	fadd x23, x23, x24
	fmul x24, x22, x12
	lw x25, 4(x100)
	lw x25, 2(x25)
	fmul x24, x24, x25
	fadd x23, x23, x24
	lw x24, 3(x100)
	bne	x24, zero, trace_ray_beqelse_b958
# B957
	mv x15, x23
	j trace_ray_cont_b959 # adhoc jump(2)
trace_ray_beqelse_b958:
# B958
	fmul x24, x22, x18
	fmul x25, x21, x12
	fadd x24, x24, x25
	lw x25, 9(x100)
	lw x25, 0(x25)
	fmul x24, x24, x25
	fmul x25, x19, x12
	fmul x22, x22, x13
	fadd x22, x25, x22
	lw x25, 9(x100)
	lw x25, 1(x25)
	fmul x22, x22, x25
	fadd x22, x24, x22
	fmul x19, x19, x18
	fmul x21, x21, x13
	fadd x19, x19, x21
	lw x21, 9(x100)
	lw x21, 2(x21)
	fmul x19, x19, x21
	fadd x19, x22, x19
	fmul x15, x19, x15
	fadd x15, x23, x15
trace_ray_cont_b959:
# B959
	fmul x19, x13, x13
	lw x21, 4(x100)
	lw x21, 0(x21)
	fmul x19, x19, x21
	fmul x21, x18, x18
	lw x22, 4(x100)
	lw x22, 1(x22)
	fmul x21, x21, x22
	fadd x19, x19, x21
	fmul x21, x12, x12
	lw x22, 4(x100)
	lw x22, 2(x22)
	fmul x21, x21, x22
	fadd x19, x19, x21
	lw x21, 3(x100)
	bne	x21, zero, trace_ray_beqelse_b961
# B960
	mv x12, x19
	j trace_ray_cont_b962 # adhoc jump(2)
trace_ray_beqelse_b961:
# B961
	fmul x21, x18, x12
	lw x22, 9(x100)
	lw x22, 0(x22)
	fmul x21, x21, x22
	fadd x19, x19, x21
	fmul x12, x12, x13
	lw x21, 9(x100)
	lw x21, 1(x21)
	fmul x12, x12, x21
	fadd x12, x19, x12
	fmul x13, x13, x18
	lw x18, 9(x100)
	lw x18, 2(x18)
	fmul x13, x13, x18
	fadd x12, x12, x13
trace_ray_cont_b962:
# B962
	lw x13, 1(x100)
	bne	x13, x16, trace_ray_beqelse_b964
# B963
	fsub x12, x12, x17
trace_ray_beqelse_b964:
# B964
trace_ray_cont_b965:
# B965
	fmul x13, x15, x15
	fmul x12, x14, x12
	fsub x12, x13, x12
	fle x13, x12, zero
	bne	x13, zero, trace_ray_beqelse_b966
# B967
	fsqrt x12, x12
	lw x100, 6(x100)
	bne	x100, zero, trace_ray_beqelse_b969
# B968
	fsub x100, zero, x12
	j trace_ray_cont_b970 # adhoc jump(2)
trace_ray_beqelse_b969:
# B969
	mv x100, x12
trace_ray_cont_b970:
# B970
	fsub x100, x100, x15
	fdiv x100, x100, x14
	sw x100, 0(x20)
	mv x100, x11
trace_ray_cont_b971:
# B971
	bne	x100, zero, trace_ray_beqelse_b973
	j trace_ray_cont_b972 # adhoc jump(3)
trace_ray_beqelse_b973:
trace_ray_cont_b973:
# B973
	lw x100, 0(x20)
	lw x12, 0(x108)
	fle x100, x12, x100
	bne	x100, zero, trace_ray_beqelse_b974
# B975
	mv x116, x10
	mv x115, x11
	mv x117, x113
	j	trace_ray_loop_b976
trace_ray_beqelse_b978:	#moved
# B978
	la x100, min_caml_and_net
	add x4, x100, x10
	lw x6, 0(x4)
	mv x7, x117
	mv x5, zero
	addi	x2, x2, 19
	jal	solve_each_element.3022
	addi	x2, x2, -19
	addi x115, x115, 1
trace_ray_loop_b976:
# B976
	add x4, x116, x115
	lw x10, 0(x4)
	bne	x10, x114, trace_ray_beqelse_b978
# B977
trace_ray_beqelse_b974:
# B974
trace_ray_beqelse_b966:
# B966
trace_ray_beqelse_b956:
# B956
trace_ray_cont_b972:
# B972
trace_ray_cont_b979:
# B979
	addi x111, x111, 1
	j	trace_ray_loop_b893
trace_ray_bneelse_b894:
# B894
# B980
	lw x10, 0(x108)
	lui x100, 777421
	addi x100, x100, -819
	fle x18, x10, x100
	lui x19, 314348
	addi x19, x19, -992
	beq	x18, zero, trace_ray_bneelse_b982
# B981
	la x18, min_caml_rgb
	j trace_ray_cont_b984 # adhoc jump(2)
trace_ray_bneelse_b982:
# B982
	fle x10, x19, x10
	xori x10, x10, 1
# B983
	la x18, min_caml_rgb
	bne	x10, zero, trace_ray_beqelse_b985
trace_ray_cont_b984:
# B984
	add x4, x107, x101
	sw x114, 0(x4)
	bne	x101, zero, trace_ray_beqelse_b987
# B986
	lw	ra, 0(x2)
	lw	x101, 1(x2)
	lw	x102, 2(x2)
	lw	x103, 3(x2)
	lw	x104, 4(x2)
	lw	x105, 5(x2)
	lw	x106, 6(x2)
	lw	x107, 7(x2)
	lw	x108, 8(x2)
	lw	x109, 9(x2)
	lw	x110, 10(x2)
	lw	x111, 11(x2)
	lw	x112, 12(x2)
	lw	x113, 13(x2)
	lw	x114, 14(x2)
	lw	x115, 15(x2)
	lw	x116, 16(x2)
	lw	x117, 17(x2)
	ret
trace_ray_beqelse_b987:
# B987
	la x10, min_caml_light
	lw x100, 0(x103)
	lw x11, 0(x10)
	fmul x100, x100, x11
	lw x11, 1(x103)
	lw x12, 1(x10)
	fmul x11, x11, x12
	fadd x100, x100, x11
	lw x11, 2(x103)
	lw x10, 2(x10)
	fmul x10, x11, x10
	fadd x10, x100, x10
	fsub x10, zero, x10
	fle x100, x10, zero
	beq	x100, zero, trace_ray_bneelse_b989
# B988
	lw	ra, 0(x2)
	lw	x101, 1(x2)
	lw	x102, 2(x2)
	lw	x103, 3(x2)
	lw	x104, 4(x2)
	lw	x105, 5(x2)
	lw	x106, 6(x2)
	lw	x107, 7(x2)
	lw	x108, 8(x2)
	lw	x109, 9(x2)
	lw	x110, 10(x2)
	lw	x111, 11(x2)
	lw	x112, 12(x2)
	lw	x113, 13(x2)
	lw	x114, 14(x2)
	lw	x115, 15(x2)
	lw	x116, 16(x2)
	lw	x117, 17(x2)
	ret
trace_ray_bneelse_b989:
# B989
	fmul x100, x10, x10
	fmul x10, x100, x10
	fmul x10, x10, x102
	la x100, min_caml_beam
	lw x100, 0(x100)
	fmul x10, x10, x100
	lw x100, 0(x18)
	fadd x100, x100, x10
	sw x100, 0(x18)
	lw x100, 1(x18)
	fadd x100, x100, x10
	sw x100, 1(x18)
	lw x100, 2(x18)
	fadd x10, x100, x10
	add x4, x18, x14
	sw x10, 0(x4)
	lw	ra, 0(x2)
	lw	x101, 1(x2)
	lw	x102, 2(x2)
	lw	x103, 3(x2)
	lw	x104, 4(x2)
	lw	x105, 5(x2)
	lw	x106, 6(x2)
	lw	x107, 7(x2)
	lw	x108, 8(x2)
	lw	x109, 9(x2)
	lw	x110, 10(x2)
	lw	x111, 11(x2)
	lw	x112, 12(x2)
	lw	x113, 13(x2)
	lw	x114, 14(x2)
	lw	x115, 15(x2)
	lw	x116, 16(x2)
	lw	x117, 17(x2)
	ret
trace_ray_beqelse_b985:
# B985
	la x10, min_caml_intersected_object_id
	lw x20, 0(x10)
	add x4, x13, x20
	lw x21, 0(x4)
	lw x22, 2(x21)
	lw x23, 7(x21)
	lw x23, 0(x23)
	fmul x23, x23, x102
	lw x24, 1(x21)
	la x25, min_caml_intsec_rectside
	la x26, min_caml_nvector
	la x27, min_caml_intersection_point
	bne	x24, x11, trace_ray_beqelse_b991
# B990
	lw x24, 0(x25)
	sw zero, 0(x26)
	sw zero, 1(x26)
	sw zero, 2(x26)
	addi x24, x24, -1
	add x4, x103, x24
	lw x28, 0(x4)
	feq x29, x28, zero
	bne	x29, zero, trace_ray_beqelse_b993
# B992
	fle x28, x28, zero
	beq	x28, zero, trace_ray_bneelse_b995
# B994
	lui x28, 784384
	j trace_ray_cont_b996 # adhoc jump(2)
trace_ray_bneelse_b995:
# B995
	mv x28, x17
	j trace_ray_cont_b996 # adhoc jump(2)
trace_ray_beqelse_b993:
# B993
	mv x28, zero
trace_ray_cont_b996:
# B996
	fsub x28, zero, x28
	add x4, x26, x24
	sw x28, 0(x4)
	j trace_ray_cont_b1007 # adhoc jump(2)
trace_ray_beqelse_b991:
# B991
	bne	x24, x14, trace_ray_beqelse_b998
# B997
	lw x24, 4(x21)
	lw x24, 0(x24)
	fsub x24, zero, x24
	sw x24, 0(x26)
	lw x24, 4(x21)
	lw x24, 1(x24)
	fsub x24, zero, x24
	sw x24, 1(x26)
	lw x24, 4(x21)
	lw x24, 2(x24)
	fsub x24, zero, x24
	sw x24, 2(x26)
	j trace_ray_cont_b1007 # adhoc jump(2)
trace_ray_beqelse_b998:
# B998
	lw x24, 0(x27)
	lw x28, 5(x21)
	lw x28, 0(x28)
	fsub x24, x24, x28
	lw x28, 1(x27)
	lw x29, 5(x21)
	lw x29, 1(x29)
	fsub x28, x28, x29
	lw x29, 2(x27)
	lw x30, 5(x21)
	lw x30, 2(x30)
	fsub x29, x29, x30
	lw x30, 4(x21)
	lw x30, 0(x30)
	fmul x30, x24, x30
	lw x31, 4(x21)
	lw x31, 1(x31)
	fmul x31, x28, x31
	lw x32, 4(x21)
	lw x32, 2(x32)
	fmul x32, x29, x32
	lw x33, 3(x21)
	bne	x33, zero, trace_ray_beqelse_b1000
# B999
	sw x30, 0(x26)
	sw x31, 1(x26)
	sw x32, 2(x26)
	j trace_ray_cont_b1001 # adhoc jump(2)
trace_ray_beqelse_b1000:
# B1000
	lw x33, 9(x21)
	lw x33, 2(x33)
	fmul x33, x28, x33
	lw x34, 9(x21)
	lw x34, 1(x34)
	fmul x34, x29, x34
	fadd x33, x33, x34
	fmul x33, x33, x15
	fadd x30, x30, x33
	sw x30, 0(x26)
	lw x30, 9(x21)
	lw x30, 2(x30)
	fmul x30, x24, x30
	lw x33, 9(x21)
	lw x33, 0(x33)
	fmul x29, x29, x33
	fadd x29, x30, x29
	fmul x29, x29, x15
	fadd x29, x31, x29
	sw x29, 1(x26)
	lw x29, 9(x21)
	lw x29, 1(x29)
	fmul x24, x24, x29
	lw x29, 9(x21)
	lw x29, 0(x29)
	fmul x28, x28, x29
	fadd x24, x24, x28
	fmul x24, x24, x15
	fadd x24, x32, x24
	sw x24, 2(x26)
trace_ray_cont_b1001:
# B1001
	lw x24, 6(x21)
	lw x28, 0(x26)
	fmul x28, x28, x28
	lw x29, 1(x26)
	fmul x29, x29, x29
	fadd x28, x28, x29
	lw x29, 2(x26)
	fmul x29, x29, x29
	fadd x28, x28, x29
	fsqrt x28, x28
	feq x29, x28, zero
	bne	x29, zero, trace_ray_beqelse_b1003
# B1002
	bne	x24, zero, trace_ray_beqelse_b1005
# B1004
	fdiv x24, x17, x28
	j trace_ray_cont_b1006 # adhoc jump(2)
trace_ray_beqelse_b1005:
# B1005
	lui x24, 784384
	fdiv x24, x24, x28
	j trace_ray_cont_b1006 # adhoc jump(2)
trace_ray_beqelse_b1003:
# B1003
	mv x24, x17
trace_ray_cont_b1006:
# B1006
	lw x28, 0(x26)
	fmul x28, x28, x24
	sw x28, 0(x26)
	lw x28, 1(x26)
	fmul x28, x28, x24
	sw x28, 1(x26)
	lw x28, 2(x26)
	fmul x24, x28, x24
	sw x24, 2(x26)
trace_ray_cont_b1007:
# B1007
	lw x24, 0(x27)
	sw x24, 0(x12)
	lw x24, 1(x27)
	sw x24, 1(x12)
	lw x24, 2(x27)
	sw x24, 2(x12)
	lw x12, 0(x21)
	la x24, min_caml_texture_color
	lw x28, 8(x21)
	lw x28, 0(x28)
	sw x28, 0(x24)
	lw x28, 8(x21)
	lw x28, 1(x28)
	sw x28, 1(x24)
	lw x28, 8(x21)
	lw x28, 2(x28)
	sw x28, 2(x24)
	lui x28, 266752
	bne	x12, x11, trace_ray_beqelse_b1009
# B1008
	lw x12, 0(x27)
	lw x16, 5(x21)
	lw x16, 0(x16)
	fsub x12, x12, x16
	lui x16, 251085
	addi x16, x16, -819
	fmul x29, x12, x16
	floor x29, x29
	lui x30, 268800
	fmul x29, x29, x30
	fsub x12, x12, x29
	fle x12, x28, x12
	xori x12, x12, 1
	lw x29, 2(x27)
	lw x31, 5(x21)
	lw x31, 2(x31)
	fsub x29, x29, x31
	fmul x16, x29, x16
	floor x16, x16
	fmul x16, x16, x30
	fsub x16, x29, x16
	fle x16, x28, x16
	xori x16, x16, 1
	bne	x12, zero, trace_ray_beqelse_b1011
# B1010
	bne	x16, zero, trace_ray_beqelse_b1013
# B1012
	lui x12, 276464
	j trace_ray_cont_b1016 # adhoc jump(2)
trace_ray_beqelse_b1013:
# B1013
	mv x12, zero
	j trace_ray_cont_b1016 # adhoc jump(2)
trace_ray_beqelse_b1011:
# B1011
	bne	x16, zero, trace_ray_beqelse_b1015
# B1014
	mv x12, zero
	j trace_ray_cont_b1016 # adhoc jump(2)
trace_ray_beqelse_b1015:
# B1015
	lui x12, 276464
trace_ray_cont_b1016:
# B1016
	sw x12, 1(x24)
	j trace_ray_cont_b1101 # adhoc jump(2)
trace_ray_beqelse_b1009:
# B1009
	lui x29, 265361
	addi x29, x29, -37
	lui x30, 262144
	lui x31, 263313
	addi x31, x31, -37
	lui x32, 261265
	addi x32, x32, -37
	lui x33, 259217
	addi x33, x33, -37
	lui x34, 778923
	addi x34, x34, -1364
	lui x35, 245896
	addi x35, x35, 1638
	lui x36, 758998
	addi x36, x36, 1206
	lui x37, 782336
	lui x38, 250538
	addi x38, x38, 1929
	lui x39, 764728
	addi x39, x39, 262
	lui x40, 276464
	bne	x12, x14, trace_ray_beqelse_b1018
# B1017
	lw x12, 1(x27)
	lui x16, 256000
	fmul x12, x12, x16
	fle x16, x12, zero
	xori x16, x16, 1
	fabs x12, x12
	mv x28, x12
	mv x5, x29
	j	trace_ray_loop_b1019
trace_ray_bneelse_b1020:	#moved
# B1020
	fmul x5, x5, x30
trace_ray_loop_b1019:
# B1019
	fle x6, x28, x5
	beq	x6, zero, trace_ray_bneelse_b1020
# B1021
# B1022
	mv x65, x12
	mv x66, x5
	j	trace_ray_loop_b1023
trace_ray_beqelse_b1027:	#moved
# B1027
	fdiv x66, x66, x30
trace_ray_loop_b1023:
# B1023
	fle x12, x29, x65
	beq	x12, zero, trace_ray_bneelse_b1024
# B1025
	fle x12, x65, x66
	bne	x12, zero, trace_ray_beqelse_b1027
# B1026
	fsub x65, x65, x66
	fdiv x66, x66, x30
	j	trace_ray_loop_b1023
trace_ray_bneelse_b1024:
# B1024
# B1028
	fle x12, x31, x65
	bne	x12, zero, trace_ray_beqelse_b1030
# B1029
	mv x28, x65
	j trace_ray_cont_b1031 # adhoc jump(2)
trace_ray_beqelse_b1030:
# B1030
	fsub x28, x65, x31
trace_ray_cont_b1031:
# B1031
	bne	x12, zero, trace_ray_beqelse_b1033
# B1032
	mv x12, x16
	j trace_ray_cont_b1034 # adhoc jump(2)
trace_ray_beqelse_b1033:
# B1033
	xori x12, x16, 1
trace_ray_cont_b1034:
# B1034
	fle x16, x32, x28
	bne	x16, zero, trace_ray_beqelse_b1036
# B1035
	mv x16, x28
	j trace_ray_cont_b1037 # adhoc jump(2)
trace_ray_beqelse_b1036:
# B1036
	fsub x16, x31, x28
trace_ray_cont_b1037:
# B1037
	fle x28, x33, x16
	bne	x28, zero, trace_ray_beqelse_b1039
# B1038
	fmul x28, x16, x16
	fmul x29, x28, x36
	fadd x29, x35, x29
	fmul x29, x28, x29
	fadd x29, x34, x29
	fmul x28, x28, x29
	fadd x28, x17, x28
	fmul x16, x16, x28
	j trace_ray_cont_b1040 # adhoc jump(2)
trace_ray_beqelse_b1039:
# B1039
	fsub x16, x32, x16
	fmul x16, x16, x16
	fmul x28, x16, x39
	fadd x28, x38, x28
	fmul x28, x16, x28
	fadd x28, x37, x28
	fmul x16, x16, x28
	fadd x16, x17, x16
trace_ray_cont_b1040:
# B1040
	fle x28, x16, zero
	beq	x12, x28, trace_ray_bneelse_b1042
# B1041
	mv x12, x16
	j trace_ray_cont_b1043 # adhoc jump(2)
trace_ray_bneelse_b1042:
# B1042
	fsub x12, zero, x16
trace_ray_cont_b1043:
# B1043
	fmul x12, x12, x12
	fmul x16, x40, x12
	sw x16, 0(x24)
	fsub x12, x17, x12
	fmul x12, x40, x12
	sw x12, 1(x24)
	j trace_ray_cont_b1101 # adhoc jump(2)
trace_ray_beqelse_b1018:
# B1018
	lui x5, 263313
	addi x5, x5, -37
	bne	x12, x16, trace_ray_beqelse_b1045
# B1044
	lw x12, 0(x27)
	lw x16, 5(x21)
	lw x16, 0(x16)
	fsub x12, x12, x16
	lw x16, 2(x27)
	lw x6, 5(x21)
	lw x6, 2(x6)
	fsub x16, x16, x6
	fmul x12, x12, x12
	fmul x16, x16, x16
	fadd x12, x12, x16
	fsqrt x12, x12
	fdiv x12, x12, x28
	floor x16, x12
	fsub x12, x12, x16
	fmul x12, x12, x5
	fabs x12, x12
	mv x16, x12
	mv x28, x29
	j	trace_ray_loop_b1046
trace_ray_bneelse_b1047:	#moved
# B1047
	fmul x28, x28, x30
trace_ray_loop_b1046:
# B1046
	fle x5, x16, x28
	beq	x5, zero, trace_ray_bneelse_b1047
# B1048
# B1049
	mv x6, x12
	mv x65, x28
	j	trace_ray_loop_b1050
trace_ray_beqelse_b1054:	#moved
# B1054
	fdiv x65, x65, x30
trace_ray_loop_b1050:
# B1050
	fle x12, x29, x6
	beq	x12, zero, trace_ray_bneelse_b1051
# B1052
	fle x12, x6, x65
	bne	x12, zero, trace_ray_beqelse_b1054
# B1053
	fsub x6, x6, x65
	fdiv x65, x65, x30
	j	trace_ray_loop_b1050
trace_ray_bneelse_b1051:
# B1051
# B1055
	fle x12, x31, x6
	bne	x12, zero, trace_ray_beqelse_b1057
# B1056
	mv x16, x6
	j trace_ray_cont_b1058 # adhoc jump(2)
trace_ray_beqelse_b1057:
# B1057
	fsub x16, x6, x31
trace_ray_cont_b1058:
# B1058
	bne	x12, zero, trace_ray_beqelse_b1060
# B1059
	mv x28, x11
	j trace_ray_cont_b1061 # adhoc jump(2)
trace_ray_beqelse_b1060:
# B1060
	mv x28, zero
trace_ray_cont_b1061:
# B1061
	fle x12, x32, x16
	bne	x12, zero, trace_ray_beqelse_b1063
# B1062
	j trace_ray_cont_b1064 # adhoc jump(2)
trace_ray_beqelse_b1063:
# B1063
	fsub x16, x31, x16
trace_ray_cont_b1064:
# B1064
	bne	x12, zero, trace_ray_beqelse_b1066
# B1065
	mv x12, x28
	j trace_ray_cont_b1067 # adhoc jump(2)
trace_ray_beqelse_b1066:
# B1066
	xori x12, x28, 1
trace_ray_cont_b1067:
# B1067
	fle x28, x33, x16
	bne	x28, zero, trace_ray_beqelse_b1069
# B1068
	fmul x16, x16, x16
	fmul x28, x16, x39
	fadd x28, x38, x28
	fmul x28, x16, x28
	fadd x28, x37, x28
	fmul x16, x16, x28
	fadd x16, x17, x16
	j trace_ray_cont_b1070 # adhoc jump(2)
trace_ray_beqelse_b1069:
# B1069
	fsub x16, x32, x16
	fmul x28, x16, x16
	fmul x29, x28, x36
	fadd x29, x35, x29
	fmul x29, x28, x29
	fadd x29, x34, x29
	fmul x28, x28, x29
	fadd x28, x17, x28
	fmul x16, x16, x28
trace_ray_cont_b1070:
# B1070
	fle x28, x16, zero
	beq	x12, x28, trace_ray_bneelse_b1072
# B1071
	mv x12, x16
	j trace_ray_cont_b1073 # adhoc jump(2)
trace_ray_bneelse_b1072:
# B1072
	fsub x12, zero, x16
trace_ray_cont_b1073:
# B1073
	fmul x12, x12, x12
	fmul x16, x12, x40
	sw x16, 1(x24)
	fsub x12, x17, x12
	fmul x12, x12, x40
	sw x12, 2(x24)
	j trace_ray_cont_b1101 # adhoc jump(2)
trace_ray_beqelse_b1045:
# B1045
	bne	x12, x106, trace_ray_beqelse_b1075
# B1074
	lw x12, 0(x27)
	lw x16, 5(x21)
	lw x16, 0(x16)
	fsub x12, x12, x16
	lw x16, 4(x21)
	lw x16, 0(x16)
	fsqrt x16, x16
	fmul x12, x12, x16
	lw x16, 2(x27)
	lw x28, 5(x21)
	lw x28, 2(x28)
	fsub x16, x16, x28
	lw x28, 4(x21)
	lw x28, 2(x28)
	fsqrt x28, x28
	fmul x16, x16, x28
	fmul x28, x12, x12
	fmul x29, x16, x16
	fadd x28, x28, x29
	fabs x29, x12
	lui x30, 232731
	addi x30, x30, 1815
	fle x29, x30, x29
	lui x31, 257536
	lui x34, 780971
	addi x34, x34, -1366
	lui x35, 255181
	addi x35, x35, -819
	lui x36, 778533
	addi x36, x36, -1755
	lui x37, 253497
	addi x37, x37, -456
	lui x38, 777085
	addi x38, x38, 1646
	lui x39, 251742
	addi x39, x39, 1989
	lui x6, 262592
	lui x65, 270080
	beq	x29, zero, trace_ray_bneelse_b1077
# B1076
	fdiv x12, x16, x12
	fabs x12, x12
	fle x16, x12, zero
	xori x16, x16, 1
	fabs x29, x12
	fle x66, x31, x29
	bne	x66, zero, trace_ray_beqelse_b1079
# B1078
	fmul x16, x12, x12
	fmul x29, x16, x39
	fadd x29, x38, x29
	fmul x29, x16, x29
	fadd x29, x37, x29
	fmul x29, x16, x29
	fadd x29, x36, x29
	fmul x29, x16, x29
	fadd x29, x35, x29
	fmul x29, x16, x29
	fadd x29, x34, x29
	fmul x16, x16, x29
	fadd x16, x17, x16
	fmul x12, x12, x16
	j trace_ray_cont_b1085 # adhoc jump(2)
trace_ray_beqelse_b1079:
# B1079
	fle x12, x6, x29
	bne	x12, zero, trace_ray_beqelse_b1081
# B1080
	fsub x12, x29, x17
	fadd x29, x29, x17
	fdiv x12, x12, x29
	fmul x29, x12, x12
	fmul x66, x29, x39
	fadd x66, x38, x66
	fmul x66, x29, x66
	fadd x66, x37, x66
	fmul x66, x29, x66
	fadd x66, x36, x66
	fmul x66, x29, x66
	fadd x66, x35, x66
	fmul x66, x29, x66
	fadd x66, x34, x66
	fmul x29, x29, x66
	fadd x29, x17, x29
	fmul x12, x12, x29
	fadd x12, x33, x12
	j trace_ray_cont_b1082 # adhoc jump(2)
trace_ray_beqelse_b1081:
# B1081
	fdiv x12, x17, x29
	fmul x29, x12, x12
	fmul x66, x29, x39
	fadd x66, x38, x66
	fmul x66, x29, x66
	fadd x66, x37, x66
	fmul x66, x29, x66
	fadd x66, x36, x66
	fmul x66, x29, x66
	fadd x66, x35, x66
	fmul x66, x29, x66
	fadd x66, x34, x66
	fmul x29, x29, x66
	fadd x29, x17, x29
	fmul x12, x12, x29
	fsub x12, x32, x12
trace_ray_cont_b1082:
# B1082
	bne	x16, zero, trace_ray_beqelse_b1084
# B1083
	fsub x12, zero, x12
trace_ray_beqelse_b1084:
# B1084
trace_ray_cont_b1085:
# B1085
	fmul x12, x12, x65
	fdiv x12, x12, x5
	j trace_ray_cont_b1086 # adhoc jump(2)
trace_ray_bneelse_b1077:
# B1077
	lui x12, 268032
trace_ray_cont_b1086:
# B1086
	floor x16, x12
	fsub x12, x12, x16
	lw x16, 1(x27)
	lw x29, 5(x21)
	lw x29, 1(x29)
	fsub x16, x16, x29
	lw x29, 4(x21)
	lw x29, 1(x29)
	fsqrt x29, x29
	fmul x16, x16, x29
	fabs x29, x28
	fle x29, x30, x29
	beq	x29, zero, trace_ray_bneelse_b1088
# B1087
	fdiv x16, x16, x28
	fabs x16, x16
	fle x28, x16, zero
	xori x28, x28, 1
	fabs x29, x16
	fle x30, x31, x29
	bne	x30, zero, trace_ray_beqelse_b1090
# B1089
	fmul x28, x16, x16
	fmul x29, x28, x39
	fadd x29, x38, x29
	fmul x29, x28, x29
	fadd x29, x37, x29
	fmul x29, x28, x29
	fadd x29, x36, x29
	fmul x29, x28, x29
	fadd x29, x35, x29
	fmul x29, x28, x29
	fadd x29, x34, x29
	fmul x28, x28, x29
	fadd x28, x17, x28
	fmul x16, x16, x28
	j trace_ray_cont_b1096 # adhoc jump(2)
trace_ray_beqelse_b1090:
# B1090
	fle x16, x6, x29
	bne	x16, zero, trace_ray_beqelse_b1092
# B1091
	fsub x16, x29, x17
	fadd x29, x29, x17
	fdiv x16, x16, x29
	fmul x29, x16, x16
	fmul x30, x29, x39
	fadd x30, x38, x30
	fmul x30, x29, x30
	fadd x30, x37, x30
	fmul x30, x29, x30
	fadd x30, x36, x30
	fmul x30, x29, x30
	fadd x30, x35, x30
	fmul x30, x29, x30
	fadd x30, x34, x30
	fmul x29, x29, x30
	fadd x29, x17, x29
	fmul x16, x16, x29
	fadd x16, x33, x16
	j trace_ray_cont_b1093 # adhoc jump(2)
trace_ray_beqelse_b1092:
# B1092
	fdiv x16, x17, x29
	fmul x29, x16, x16
	fmul x30, x29, x39
	fadd x30, x38, x30
	fmul x30, x29, x30
	fadd x30, x37, x30
	fmul x30, x29, x30
	fadd x30, x36, x30
	fmul x30, x29, x30
	fadd x30, x35, x30
	fmul x30, x29, x30
	fadd x30, x34, x30
	fmul x29, x29, x30
	fadd x29, x17, x29
	fmul x16, x16, x29
	fsub x16, x32, x16
trace_ray_cont_b1093:
# B1093
	bne	x28, zero, trace_ray_beqelse_b1095
# B1094
	fsub x16, zero, x16
trace_ray_beqelse_b1095:
# B1095
trace_ray_cont_b1096:
# B1096
	fmul x16, x16, x65
	fdiv x16, x16, x5
	j trace_ray_cont_b1097 # adhoc jump(2)
trace_ray_bneelse_b1088:
# B1088
	lui x16, 268032
trace_ray_cont_b1097:
# B1097
	floor x28, x16
	fsub x16, x16, x28
	lui x28, 254362
	addi x28, x28, -1638
	fsub x12, x15, x12
	fmul x12, x12, x12
	fsub x12, x28, x12
	fsub x16, x15, x16
	fmul x16, x16, x16
	fsub x12, x12, x16
	fle x16, zero, x12
	beq	x16, zero, trace_ray_bneelse_b1099
# B1098
	mv x28, x12
	j trace_ray_cont_b1100 # adhoc jump(2)
trace_ray_bneelse_b1099:
# B1099
	mv x28, zero
trace_ray_cont_b1100:
# B1100
	fmul x12, x40, x28
	lui x16, 256410
	addi x16, x16, -1638
	fdiv x12, x12, x16
	sw x12, 2(x24)
trace_ray_beqelse_b1075:
# B1075
trace_ray_cont_b1101:
# B1101
	slli x12, x20, 2
	lw x16, 0(x25)
	add x12, x12, x16
	add x4, x107, x101
	sw x12, 0(x4)
	lw x12, 1(x104)
	add x4, x12, x101
	lw x12, 0(x4)
	lw x16, 0(x27)
	sw x16, 0(x12)
	lw x16, 1(x27)
	sw x16, 1(x12)
	lw x16, 2(x27)
	sw x16, 2(x12)
	lw x12, 3(x104)
	lw x16, 7(x21)
	lw x16, 0(x16)
	fle x15, x15, x16
	beq	x15, zero, trace_ray_bneelse_b1103
# B1102
	add x4, x12, x101
	sw x11, 0(x4)
	lw x12, 4(x104)
	add x4, x12, x101
	lw x15, 0(x4)
	lw x16, 0(x24)
	sw x16, 0(x15)
	lw x16, 1(x24)
	sw x16, 1(x15)
	lw x16, 2(x24)
	sw x16, 2(x15)
	add x4, x12, x101
	lw x12, 0(x4)
	lui x15, 276480
	fdiv x15, x17, x15
	fmul x15, x15, x23
	lw x16, 0(x12)
	fmul x16, x16, x15
	sw x16, 0(x12)
	lw x16, 1(x12)
	fmul x16, x16, x15
	sw x16, 1(x12)
	lw x16, 2(x12)
	fmul x15, x16, x15
	sw x15, 2(x12)
	lw x12, 7(x104)
	add x4, x12, x101
	lw x12, 0(x4)
	lw x15, 0(x26)
	sw x15, 0(x12)
	lw x15, 1(x26)
	sw x15, 1(x12)
	lw x15, 2(x26)
	sw x15, 2(x12)
	j trace_ray_cont_b1104 # adhoc jump(2)
trace_ray_bneelse_b1103:
# B1103
	add x4, x12, x101
	sw zero, 0(x4)
trace_ray_cont_b1104:
# B1104
	lui x12, 786432
	lw x15, 0(x103)
	lw x16, 0(x26)
	fmul x15, x15, x16
	lw x16, 1(x103)
	lw x17, 1(x26)
	fmul x16, x16, x17
	fadd x15, x15, x16
	lw x16, 2(x103)
	lw x17, 2(x26)
	fmul x16, x16, x17
	fadd x15, x15, x16
	fmul x12, x12, x15
	lw x15, 0(x103)
	lw x16, 0(x26)
	fmul x16, x12, x16
	fadd x15, x15, x16
	sw x15, 0(x103)
	lw x15, 1(x103)
	lw x16, 1(x26)
	fmul x16, x12, x16
	fadd x15, x15, x16
	sw x15, 1(x103)
	lw x15, 2(x103)
	lw x16, 2(x26)
	fmul x12, x12, x16
	fadd x12, x15, x12
	sw x12, 2(x103)
	lw x12, 7(x21)
	lw x12, 1(x12)
	fmul x12, x102, x12
	lw x15, 0(x110)
	mv x17, x15
	mv x16, zero
trace_ray_loop_b1105:
# B1105
	add x4, x17, x16
	lw x15, 0(x4)
	lw x20, 0(x15)
	li x28, -1
	la x29, min_caml_light
	beq	x20, x28, trace_ray_bneelse_b1106
# B1107
	li x30, 99
	bne	x20, x30, trace_ray_beqelse_b1109
# B1108
	addi x16, x16, 1
	j trace_ray_cont_b1249 # adhoc jump(2)
trace_ray_beqelse_b1109:
# B1109
	la x30, min_caml_light_dirvec
	add x4, x13, x20
	lw x31, 0(x4)
	lw x32, 0(x27)
	lw x33, 5(x31)
	lw x33, 0(x33)
	fsub x32, x32, x33
	lw x33, 1(x27)
	lw x34, 5(x31)
	lw x34, 1(x34)
	fsub x33, x33, x34
	lw x34, 2(x27)
	lw x35, 5(x31)
	lw x35, 2(x35)
	fsub x34, x34, x35
	lw x35, 1(x30)
	add x4, x35, x20
	lw x20, 0(x4)
	lw x35, 1(x31)
	bne	x35, x11, trace_ray_beqelse_b1111
# B1110
	lw x35, 0(x30)
	lw x36, 0(x20)
	fsub x36, x36, x32
	lw x37, 1(x20)
	fmul x36, x36, x37
	lw x37, 1(x35)
	fmul x37, x36, x37
	fadd x37, x37, x33
	fabs x37, x37
	lw x38, 4(x31)
	lw x38, 1(x38)
	fle x37, x38, x37
	bne	x37, zero, trace_ray_beqelse_b1112
# B1113
	lw x37, 2(x35)
	fmul x37, x36, x37
	fadd x37, x37, x34
	fabs x37, x37
	lw x38, 4(x31)
	lw x38, 2(x38)
	fle x37, x38, x37
	bne	x37, zero, trace_ray_beqelse_b1114
# B1115
	lw x37, 1(x20)
	feq x37, x37, zero
	xori x37, x37, 1
	mv x38, x37
# B1116
	bne	x38, zero, trace_ray_beqelse_b1118
	j trace_ray_cont_b1117 # adhoc jump(3)
trace_ray_beqelse_b1118:
# B1118
	la x20, min_caml_solver_dist
	sw x36, 0(x20)
	j trace_ray_cont_b1152 # adhoc jump(2)
trace_ray_beqelse_b1114:
# B1114
trace_ray_beqelse_b1112:
# B1112
trace_ray_cont_b1117:
# B1117
	lw x36, 2(x20)
	fsub x36, x36, x33
	lw x37, 3(x20)
	fmul x36, x36, x37
	lw x37, 0(x35)
	fmul x37, x36, x37
	fadd x37, x37, x32
	fabs x37, x37
	lw x38, 4(x31)
	lw x38, 0(x38)
	fle x37, x38, x37
	bne	x37, zero, trace_ray_beqelse_b1119
# B1120
	lw x37, 2(x35)
	fmul x37, x36, x37
	fadd x37, x37, x34
	fabs x37, x37
	lw x38, 4(x31)
	lw x38, 2(x38)
	fle x37, x38, x37
	bne	x37, zero, trace_ray_beqelse_b1121
# B1122
	lw x37, 3(x20)
	feq x37, x37, zero
	xori x37, x37, 1
	mv x38, x37
# B1123
	bne	x38, zero, trace_ray_beqelse_b1125
	j trace_ray_cont_b1124 # adhoc jump(3)
trace_ray_beqelse_b1125:
# B1125
	la x20, min_caml_solver_dist
	sw x36, 0(x20)
	j trace_ray_cont_b1152 # adhoc jump(2)
trace_ray_beqelse_b1121:
# B1121
trace_ray_beqelse_b1119:
# B1119
trace_ray_cont_b1124:
# B1124
	lw x36, 4(x20)
	fsub x34, x36, x34
	lw x36, 5(x20)
	fmul x34, x34, x36
	lw x36, 0(x35)
	fmul x36, x34, x36
	fadd x32, x36, x32
	fabs x32, x32
	lw x36, 4(x31)
	lw x36, 0(x36)
	fle x32, x36, x32
	bne	x32, zero, trace_ray_beqelse_b1126
# B1127
	lw x32, 1(x35)
	fmul x32, x34, x32
	fadd x32, x32, x33
	fabs x32, x32
	lw x31, 4(x31)
	lw x31, 1(x31)
	fle x31, x31, x32
	bne	x31, zero, trace_ray_beqelse_b1128
# B1129
	lw x20, 5(x20)
	feq x20, x20, zero
	xori x20, x20, 1
	mv x31, x20
# B1130
	bne	x31, zero, trace_ray_beqelse_b1132
	j trace_ray_cont_b1131 # adhoc jump(3)
trace_ray_beqelse_b1132:
# B1132
	la x20, min_caml_solver_dist
	sw x34, 0(x20)
	j trace_ray_cont_b1152 # adhoc jump(2)
trace_ray_beqelse_b1128:
# B1128
trace_ray_beqelse_b1126:
# B1126
trace_ray_cont_b1131:
# B1131
	j trace_ray_cont_b1151 # adhoc jump(2)
trace_ray_beqelse_b1111:
# B1111
	bne	x35, x14, trace_ray_beqelse_b1134
# B1133
	lw x31, 0(x20)
	fle x31, zero, x31
	bne	x31, zero, trace_ray_beqelse_b1135
# B1136
	la x31, min_caml_solver_dist
	lw x35, 1(x20)
	fmul x32, x35, x32
	lw x35, 2(x20)
	fmul x33, x35, x33
	fadd x32, x32, x33
	lw x20, 3(x20)
	fmul x20, x20, x34
	fadd x20, x32, x20
	sw x20, 0(x31)
	j trace_ray_cont_b1152 # adhoc jump(2)
trace_ray_beqelse_b1135:
# B1135
	j trace_ray_cont_b1151 # adhoc jump(2)
trace_ray_beqelse_b1134:
# B1134
	lw x35, 0(x20)
	feq x36, x35, zero
	bne	x36, zero, trace_ray_beqelse_b1138
# B1137
	lw x36, 1(x20)
	fmul x36, x36, x32
	lw x37, 2(x20)
	fmul x37, x37, x33
	fadd x36, x36, x37
	li x37, 3
	lw x38, 3(x20)
	fmul x38, x38, x34
	fadd x36, x36, x38
	fmul x38, x32, x32
	lw x39, 4(x31)
	lw x39, 0(x39)
	fmul x38, x38, x39
	fmul x39, x33, x33
	lw x40, 4(x31)
	lw x40, 1(x40)
	fmul x39, x39, x40
	fadd x38, x38, x39
	fmul x39, x34, x34
	lw x40, 4(x31)
	lw x40, 2(x40)
	fmul x39, x39, x40
	fadd x38, x38, x39
	lw x39, 3(x31)
	bne	x39, zero, trace_ray_beqelse_b1140
# B1139
	mv x32, x38
	j trace_ray_cont_b1141 # adhoc jump(2)
trace_ray_beqelse_b1140:
# B1140
	fmul x39, x33, x34
	lw x40, 9(x31)
	lw x40, 0(x40)
	fmul x39, x39, x40
	fadd x38, x38, x39
	fmul x34, x34, x32
	lw x39, 9(x31)
	lw x39, 1(x39)
	fmul x34, x34, x39
	fadd x34, x38, x34
	fmul x32, x32, x33
	lw x33, 9(x31)
	lw x33, 2(x33)
	fmul x32, x32, x33
	fadd x32, x34, x32
trace_ray_cont_b1141:
# B1141
	lw x33, 1(x31)
	bne	x33, x37, trace_ray_beqelse_b1143
# B1142
	lui x33, 260096
	fsub x32, x32, x33
trace_ray_beqelse_b1143:
# B1143
trace_ray_cont_b1144:
# B1144
	fmul x33, x36, x36
	fmul x32, x35, x32
	fsub x32, x33, x32
	fle x33, x32, zero
	bne	x33, zero, trace_ray_beqelse_b1145
# B1146
	lw x31, 6(x31)
	bne	x31, zero, trace_ray_beqelse_b1148
# B1147
	la x31, min_caml_solver_dist
	fsqrt x32, x32
	fsub x32, x36, x32
	lw x20, 4(x20)
	fmul x20, x32, x20
	sw x20, 0(x31)
	j trace_ray_cont_b1149 # adhoc jump(2)
trace_ray_beqelse_b1148:
# B1148
	la x31, min_caml_solver_dist
	fsqrt x32, x32
	fadd x32, x36, x32
	lw x20, 4(x20)
	fmul x20, x32, x20
	sw x20, 0(x31)
trace_ray_cont_b1149:
# B1149
trace_ray_cont_b1152:
# B1152
	la x20, min_caml_solver_dist
	lw x31, 0(x20)
	fle x31, x100, x31
	beq	x31, zero, trace_ray_bneelse_b1154
# B1153
	addi x16, x16, 1
	j trace_ray_cont_b1248 # adhoc jump(2)
trace_ray_bneelse_b1154:
# B1154
	mv x33, x15
	mv x32, x11
trace_ray_loop_b1155:
# B1155
	add x4, x33, x32
	lw x31, 0(x4)
	beq	x31, x28, trace_ray_bneelse_b1156
# B1157
	la x34, min_caml_and_net
	add x4, x34, x31
	lw x31, 0(x4)
	mv x35, x31
	mv x34, zero
trace_ray_loop_b1158:
# B1158
	add x4, x35, x34
	lw x31, 0(x4)
	beq	x31, x28, trace_ray_bneelse_b1159
# B1160
	add x4, x35, x34
	lw x31, 0(x4)
	add x4, x13, x31
	lw x36, 0(x4)
	lw x37, 0(x27)
	lw x38, 5(x36)
	lw x38, 0(x38)
	fsub x37, x37, x38
	lw x38, 1(x27)
	lw x39, 5(x36)
	lw x39, 1(x39)
	fsub x38, x38, x39
	lw x39, 2(x27)
	lw x40, 5(x36)
	lw x40, 2(x40)
	fsub x39, x39, x40
	lw x40, 1(x30)
	add x4, x40, x31
	lw x40, 0(x4)
	lw x5, 1(x36)
	bne	x5, x11, trace_ray_beqelse_b1162
# B1161
	lw x5, 0(x30)
	lw x6, 0(x40)
	fsub x6, x6, x37
	lw x65, 1(x40)
	fmul x6, x6, x65
	lw x65, 1(x5)
	fmul x65, x6, x65
	fadd x65, x65, x38
	fabs x65, x65
	lw x66, 4(x36)
	lw x66, 1(x66)
	fle x65, x66, x65
	bne	x65, zero, trace_ray_beqelse_b1163
# B1164
	lw x65, 2(x5)
	fmul x65, x6, x65
	fadd x65, x65, x39
	fabs x65, x65
	lw x66, 4(x36)
	lw x66, 2(x66)
	fle x65, x66, x65
	bne	x65, zero, trace_ray_beqelse_b1165
# B1166
	lw x65, 1(x40)
	feq x65, x65, zero
	xori x65, x65, 1
	mv x66, x65
# B1167
	bne	x66, zero, trace_ray_beqelse_b1169
	j trace_ray_cont_b1168 # adhoc jump(3)
trace_ray_beqelse_b1169:
# B1169
	sw x6, 0(x20)
	lw x37, 0(x20)
	j trace_ray_cont_b1203 # adhoc jump(2)
trace_ray_beqelse_b1165:
# B1165
trace_ray_beqelse_b1163:
# B1163
trace_ray_cont_b1168:
# B1168
	lw x6, 2(x40)
	fsub x6, x6, x38
	lw x65, 3(x40)
	fmul x6, x6, x65
	lw x65, 0(x5)
	fmul x65, x6, x65
	fadd x65, x65, x37
	fabs x65, x65
	lw x66, 4(x36)
	lw x66, 0(x66)
	fle x65, x66, x65
	bne	x65, zero, trace_ray_beqelse_b1170
# B1171
	lw x65, 2(x5)
	fmul x65, x6, x65
	fadd x65, x65, x39
	fabs x65, x65
	lw x66, 4(x36)
	lw x66, 2(x66)
	fle x65, x66, x65
	bne	x65, zero, trace_ray_beqelse_b1172
# B1173
	lw x65, 3(x40)
	feq x65, x65, zero
	xori x65, x65, 1
	mv x66, x65
# B1174
	bne	x66, zero, trace_ray_beqelse_b1176
	j trace_ray_cont_b1175 # adhoc jump(3)
trace_ray_beqelse_b1176:
# B1176
	sw x6, 0(x20)
	lw x37, 0(x20)
	j trace_ray_cont_b1203 # adhoc jump(2)
trace_ray_beqelse_b1172:
# B1172
trace_ray_beqelse_b1170:
# B1170
trace_ray_cont_b1175:
# B1175
	lw x6, 4(x40)
	fsub x39, x6, x39
	lw x6, 5(x40)
	fmul x39, x39, x6
	lw x6, 0(x5)
	fmul x6, x39, x6
	fadd x37, x6, x37
	fabs x37, x37
	lw x6, 4(x36)
	lw x6, 0(x6)
	fle x37, x6, x37
	bne	x37, zero, trace_ray_beqelse_b1177
# B1178
	lw x37, 1(x5)
	fmul x37, x39, x37
	fadd x37, x37, x38
	fabs x37, x37
	lw x36, 4(x36)
	lw x36, 1(x36)
	fle x36, x36, x37
	bne	x36, zero, trace_ray_beqelse_b1179
# B1180
	lw x36, 5(x40)
	feq x36, x36, zero
	xori x36, x36, 1
	mv x37, x36
# B1181
	bne	x37, zero, trace_ray_beqelse_b1183
	j trace_ray_cont_b1182 # adhoc jump(3)
trace_ray_beqelse_b1183:
# B1183
	sw x39, 0(x20)
	lw x37, 0(x20)
	j trace_ray_cont_b1203 # adhoc jump(2)
trace_ray_beqelse_b1179:
# B1179
trace_ray_beqelse_b1177:
# B1177
trace_ray_cont_b1182:
# B1182
	lw x37, 0(x20)
	j trace_ray_cont_b1202 # adhoc jump(2)
trace_ray_beqelse_b1162:
# B1162
	bne	x5, x14, trace_ray_beqelse_b1185
# B1184
	lw x36, 0(x40)
	fle x36, zero, x36
	beq	x36, zero, trace_ray_bneelse_b1187
# B1186
	lw x37, 0(x20)
	j trace_ray_cont_b1202 # adhoc jump(2)
trace_ray_bneelse_b1187:
# B1187
	lw x36, 1(x40)
	fmul x36, x36, x37
	lw x37, 2(x40)
	fmul x37, x37, x38
	fadd x36, x36, x37
	lw x37, 3(x40)
	fmul x37, x37, x39
	fadd x36, x36, x37
	sw x36, 0(x20)
	lw x37, 0(x20)
	j trace_ray_cont_b1203 # adhoc jump(2)
trace_ray_beqelse_b1185:
# B1185
	lw x5, 0(x40)
	feq x6, x5, zero
	bne	x6, zero, trace_ray_beqelse_b1189
# B1188
	lw x6, 1(x40)
	fmul x6, x6, x37
	lw x65, 2(x40)
	fmul x65, x65, x38
	fadd x6, x6, x65
	li x65, 3
	lw x66, 3(x40)
	fmul x66, x66, x39
	fadd x6, x6, x66
	fmul x66, x37, x37
	lw x67, 4(x36)
	lw x67, 0(x67)
	fmul x66, x66, x67
	fmul x67, x38, x38
	lw x68, 4(x36)
	lw x68, 1(x68)
	fmul x67, x67, x68
	fadd x66, x66, x67
	fmul x67, x39, x39
	lw x68, 4(x36)
	lw x68, 2(x68)
	fmul x67, x67, x68
	fadd x66, x66, x67
	lw x67, 3(x36)
	bne	x67, zero, trace_ray_beqelse_b1191
# B1190
	mv x37, x66
	j trace_ray_cont_b1192 # adhoc jump(2)
trace_ray_beqelse_b1191:
# B1191
	fmul x67, x38, x39
	lw x68, 9(x36)
	lw x68, 0(x68)
	fmul x67, x67, x68
	fadd x66, x66, x67
	fmul x39, x39, x37
	lw x67, 9(x36)
	lw x67, 1(x67)
	fmul x39, x39, x67
	fadd x39, x66, x39
	fmul x37, x37, x38
	lw x38, 9(x36)
	lw x38, 2(x38)
	fmul x37, x37, x38
	fadd x37, x39, x37
trace_ray_cont_b1192:
# B1192
	lw x38, 1(x36)
	bne	x38, x65, trace_ray_beqelse_b1194
# B1193
	lui x38, 260096
	fsub x37, x37, x38
trace_ray_beqelse_b1194:
# B1194
trace_ray_cont_b1195:
# B1195
	fmul x38, x6, x6
	fmul x37, x5, x37
	fsub x37, x38, x37
	fle x38, x37, zero
	beq	x38, zero, trace_ray_bneelse_b1197
# B1196
	lw x37, 0(x20)
	j trace_ray_cont_b1202 # adhoc jump(2)
trace_ray_bneelse_b1197:
# B1197
	lw x36, 6(x36)
	bne	x36, zero, trace_ray_beqelse_b1199
# B1198
	fsqrt x36, x37
	fsub x36, x6, x36
	lw x37, 4(x40)
	fmul x36, x36, x37
	sw x36, 0(x20)
	j trace_ray_cont_b1200 # adhoc jump(2)
trace_ray_beqelse_b1199:
# B1199
	fsqrt x36, x37
	fadd x36, x6, x36
	lw x37, 4(x40)
	fmul x36, x36, x37
	sw x36, 0(x20)
trace_ray_cont_b1200:
# B1200
	lw x37, 0(x20)
trace_ray_cont_b1203:
# B1203
	lui x36, 779469
	addi x36, x36, -819
	fle x36, x36, x37
	xori x36, x36, 1
# B1204
	addi x34, x34, 1
	bne	x36, zero, trace_ray_beqelse_b1206
	j trace_ray_cont_b1205 # adhoc jump(3)
trace_ray_beqelse_b1206:
# B1206
	lui x31, 246333
	addi x31, x31, 1802
	fadd x31, x37, x31
	la x36, min_caml_light
	lw x37, 0(x36)
	fmul x37, x37, x31
	lw x38, 0(x27)
	fadd x37, x37, x38
	lw x38, 1(x36)
	fmul x38, x38, x31
	lw x39, 1(x27)
	fadd x38, x38, x39
	lw x36, 2(x36)
	fmul x31, x36, x31
	lw x36, 2(x27)
	fadd x31, x31, x36
	mv x40, x37
	mv x6, x31
	mv x39, x35
	mv x5, x38
	mv x36, zero
	j	trace_ray_loop_b1209
trace_ray_bneelse_b1236:	#moved
# B1236
	addi x36, x36, 1
trace_ray_loop_b1209:
# B1209
	add x4, x39, x36
	lw x31, 0(x4)
	beq	x31, x28, trace_ray_bneelse_b1210
# B1211
	add x4, x13, x31
	lw x31, 0(x4)
	lw x37, 5(x31)
	lw x37, 0(x37)
	fsub x37, x40, x37
	lw x38, 5(x31)
	lw x38, 1(x38)
	fsub x38, x5, x38
	lw x65, 5(x31)
	lw x65, 2(x65)
	fsub x65, x6, x65
	lw x66, 1(x31)
	bne	x66, x11, trace_ray_beqelse_b1213
# B1212
	fabs x37, x37
	lw x66, 4(x31)
	lw x66, 0(x66)
	fle x37, x66, x37
	bne	x37, zero, trace_ray_beqelse_b1214
# B1215
	fabs x37, x38
	lw x38, 4(x31)
	lw x38, 1(x38)
	fle x37, x38, x37
	bne	x37, zero, trace_ray_beqelse_b1216
# B1217
	fabs x37, x65
	lw x38, 4(x31)
	lw x38, 2(x38)
	fle x37, x38, x37
	xori x37, x37, 1
	mv x38, x37
# B1218
	bne	x38, zero, trace_ray_beqelse_b1220
	j trace_ray_cont_b1219 # adhoc jump(3)
trace_ray_beqelse_b1220:
# B1220
	lw x31, 6(x31)
	j trace_ray_cont_b1235 # adhoc jump(2)
trace_ray_beqelse_b1216:
# B1216
trace_ray_beqelse_b1214:
# B1214
trace_ray_cont_b1219:
# B1219
	lw x31, 6(x31)
	xori x31, x31, 1
	j trace_ray_cont_b1235 # adhoc jump(2)
trace_ray_beqelse_b1213:
# B1213
	bne	x66, x14, trace_ray_beqelse_b1222
# B1221
	lw x66, 4(x31)
	lw x67, 0(x66)
	fmul x37, x67, x37
	lw x67, 1(x66)
	fmul x38, x67, x38
	fadd x37, x37, x38
	lw x38, 2(x66)
	fmul x38, x38, x65
	fadd x37, x37, x38
	lw x31, 6(x31)
	fle x37, zero, x37
	xori x37, x37, 1
	bne	x31, zero, trace_ray_beqelse_b1224
# B1223
	mv x31, x37
	j trace_ray_cont_b1225 # adhoc jump(2)
trace_ray_beqelse_b1224:
# B1224
	xori x31, x37, 1
trace_ray_cont_b1225:
# B1225
	xori x31, x31, 1
	j trace_ray_cont_b1235 # adhoc jump(2)
trace_ray_beqelse_b1222:
# B1222
	fmul x66, x37, x37
	lw x67, 4(x31)
	lw x67, 0(x67)
	fmul x66, x66, x67
	fmul x67, x38, x38
	lw x68, 4(x31)
	lw x68, 1(x68)
	fmul x67, x67, x68
	fadd x66, x66, x67
	fmul x67, x65, x65
	lw x68, 4(x31)
	lw x68, 2(x68)
	fmul x67, x67, x68
	fadd x66, x66, x67
	lw x67, 3(x31)
	bne	x67, zero, trace_ray_beqelse_b1227
# B1226
	mv x37, x66
	j trace_ray_cont_b1228 # adhoc jump(2)
trace_ray_beqelse_b1227:
# B1227
	fmul x67, x38, x65
	lw x68, 9(x31)
	lw x68, 0(x68)
	fmul x67, x67, x68
	fadd x66, x66, x67
	fmul x65, x65, x37
	lw x67, 9(x31)
	lw x67, 1(x67)
	fmul x65, x65, x67
	fadd x65, x66, x65
	fmul x37, x37, x38
	lw x38, 9(x31)
	lw x38, 2(x38)
	fmul x37, x37, x38
	fadd x37, x65, x37
trace_ray_cont_b1228:
# B1228
	lw x38, 1(x31)
	li x65, 3
	bne	x38, x65, trace_ray_beqelse_b1230
# B1229
	lui x38, 260096
	fsub x37, x37, x38
trace_ray_beqelse_b1230:
# B1230
trace_ray_cont_b1231:
# B1231
	lw x31, 6(x31)
	fle x37, zero, x37
	xori x37, x37, 1
	bne	x31, zero, trace_ray_beqelse_b1233
# B1232
	mv x31, x37
	j trace_ray_cont_b1234 # adhoc jump(2)
trace_ray_beqelse_b1233:
# B1233
	xori x31, x37, 1
trace_ray_cont_b1234:
# B1234
	xori x31, x31, 1
trace_ray_cont_b1235:
# B1235
	beq	x31, zero, trace_ray_bneelse_b1236
# B1237
# B1239
	j	trace_ray_loop_b1158
trace_ray_bneelse_b1210:
# B1210
# B1240
	mv x31, x11
# B1241
	bne	x31, zero, trace_ray_beqelse_b1243
	j trace_ray_cont_b1242 # adhoc jump(3)
trace_ray_beqelse_b1243:
# B1243
	mv x34, x11
# B1244
	bne	x34, zero, trace_ray_beqelse_b1246
	j trace_ray_cont_b1245 # adhoc jump(3)
trace_ray_beqelse_b1246:
# B1246
	mv x20, x11
# B1247
	addi x16, x16, 1
	bne	x20, zero, trace_ray_beqelse_b1249
	j trace_ray_cont_b1248 # adhoc jump(3)
trace_ray_beqelse_b1249:
trace_ray_cont_b1249:
# B1249
	mv x31, x15
	mv x30, x11
trace_ray_loop_b1250:
# B1250
	add x4, x31, x30
	lw x15, 0(x4)
	beq	x15, x28, trace_ray_bneelse_b1251
# B1252
	la x20, min_caml_and_net
	add x4, x20, x15
	lw x15, 0(x4)
	mv x32, x15
	mv x20, zero
trace_ray_loop_b1253:
# B1253
	add x4, x32, x20
	lw x15, 0(x4)
	beq	x15, x28, trace_ray_bneelse_b1254
# B1255
	add x4, x32, x20
	lw x15, 0(x4)
	la x33, min_caml_light_dirvec
	add x4, x13, x15
	lw x34, 0(x4)
	lw x35, 0(x27)
	lw x36, 5(x34)
	lw x36, 0(x36)
	fsub x35, x35, x36
	lw x36, 1(x27)
	lw x37, 5(x34)
	lw x37, 1(x37)
	fsub x36, x36, x37
	lw x37, 2(x27)
	lw x38, 5(x34)
	lw x38, 2(x38)
	fsub x37, x37, x38
	lw x38, 1(x33)
	add x4, x38, x15
	lw x38, 0(x4)
	lw x39, 1(x34)
	bne	x39, x11, trace_ray_beqelse_b1257
# B1256
	lw x33, 0(x33)
	lw x39, 0(x38)
	fsub x39, x39, x35
	lw x40, 1(x38)
	fmul x39, x39, x40
	lw x40, 1(x33)
	fmul x40, x39, x40
	fadd x40, x40, x36
	fabs x40, x40
	lw x5, 4(x34)
	lw x5, 1(x5)
	fle x40, x5, x40
	bne	x40, zero, trace_ray_beqelse_b1258
# B1259
	lw x40, 2(x33)
	fmul x40, x39, x40
	fadd x40, x40, x37
	fabs x40, x40
	lw x5, 4(x34)
	lw x5, 2(x5)
	fle x40, x5, x40
	bne	x40, zero, trace_ray_beqelse_b1260
# B1261
	lw x40, 1(x38)
	feq x40, x40, zero
	xori x40, x40, 1
	mv x5, x40
# B1262
	bne	x5, zero, trace_ray_beqelse_b1264
	j trace_ray_cont_b1263 # adhoc jump(3)
trace_ray_beqelse_b1264:
# B1264
	la x33, min_caml_solver_dist
	sw x39, 0(x33)
	la x34, min_caml_solver_dist
	lw x34, 0(x34)
	j trace_ray_cont_b1298 # adhoc jump(2)
trace_ray_beqelse_b1260:
# B1260
trace_ray_beqelse_b1258:
# B1258
trace_ray_cont_b1263:
# B1263
	lw x39, 2(x38)
	fsub x39, x39, x36
	lw x40, 3(x38)
	fmul x39, x39, x40
	lw x40, 0(x33)
	fmul x40, x39, x40
	fadd x40, x40, x35
	fabs x40, x40
	lw x5, 4(x34)
	lw x5, 0(x5)
	fle x40, x5, x40
	bne	x40, zero, trace_ray_beqelse_b1265
# B1266
	lw x40, 2(x33)
	fmul x40, x39, x40
	fadd x40, x40, x37
	fabs x40, x40
	lw x5, 4(x34)
	lw x5, 2(x5)
	fle x40, x5, x40
	bne	x40, zero, trace_ray_beqelse_b1267
# B1268
	lw x40, 3(x38)
	feq x40, x40, zero
	xori x40, x40, 1
	mv x5, x40
# B1269
	bne	x5, zero, trace_ray_beqelse_b1271
	j trace_ray_cont_b1270 # adhoc jump(3)
trace_ray_beqelse_b1271:
# B1271
	la x33, min_caml_solver_dist
	sw x39, 0(x33)
	la x34, min_caml_solver_dist
	lw x34, 0(x34)
	j trace_ray_cont_b1298 # adhoc jump(2)
trace_ray_beqelse_b1267:
# B1267
trace_ray_beqelse_b1265:
# B1265
trace_ray_cont_b1270:
# B1270
	lw x39, 4(x38)
	fsub x37, x39, x37
	lw x39, 5(x38)
	fmul x37, x37, x39
	lw x39, 0(x33)
	fmul x39, x37, x39
	fadd x35, x39, x35
	fabs x35, x35
	lw x39, 4(x34)
	lw x39, 0(x39)
	fle x35, x39, x35
	bne	x35, zero, trace_ray_beqelse_b1272
# B1273
	lw x33, 1(x33)
	fmul x33, x37, x33
	fadd x33, x33, x36
	fabs x33, x33
	lw x34, 4(x34)
	lw x34, 1(x34)
	fle x33, x34, x33
	bne	x33, zero, trace_ray_beqelse_b1274
# B1275
	lw x33, 5(x38)
	feq x33, x33, zero
	xori x33, x33, 1
	mv x34, x33
# B1276
	bne	x34, zero, trace_ray_beqelse_b1278
	j trace_ray_cont_b1277 # adhoc jump(3)
trace_ray_beqelse_b1278:
# B1278
	la x33, min_caml_solver_dist
	sw x37, 0(x33)
	la x34, min_caml_solver_dist
	lw x34, 0(x34)
	j trace_ray_cont_b1298 # adhoc jump(2)
trace_ray_beqelse_b1274:
# B1274
trace_ray_beqelse_b1272:
# B1272
trace_ray_cont_b1277:
# B1277
	la x34, min_caml_solver_dist
	lw x34, 0(x34)
	j trace_ray_cont_b1297 # adhoc jump(2)
trace_ray_beqelse_b1257:
# B1257
	bne	x39, x14, trace_ray_beqelse_b1280
# B1279
	lw x33, 0(x38)
	fle x33, zero, x33
	beq	x33, zero, trace_ray_bneelse_b1282
# B1281
	la x34, min_caml_solver_dist
	lw x34, 0(x34)
	j trace_ray_cont_b1297 # adhoc jump(2)
trace_ray_bneelse_b1282:
# B1282
	la x33, min_caml_solver_dist
	lw x34, 1(x38)
	fmul x34, x34, x35
	lw x35, 2(x38)
	fmul x35, x35, x36
	fadd x34, x34, x35
	lw x35, 3(x38)
	fmul x35, x35, x37
	fadd x34, x34, x35
	sw x34, 0(x33)
	la x34, min_caml_solver_dist
	lw x34, 0(x34)
	j trace_ray_cont_b1298 # adhoc jump(2)
trace_ray_beqelse_b1280:
# B1280
	lw x33, 0(x38)
	feq x39, x33, zero
	bne	x39, zero, trace_ray_beqelse_b1284
# B1283
	lw x39, 1(x38)
	fmul x39, x39, x35
	lw x40, 2(x38)
	fmul x40, x40, x36
	fadd x39, x39, x40
	li x40, 3
	lw x5, 3(x38)
	fmul x5, x5, x37
	fadd x39, x39, x5
	fmul x5, x35, x35
	lw x6, 4(x34)
	lw x6, 0(x6)
	fmul x5, x5, x6
	fmul x6, x36, x36
	lw x65, 4(x34)
	lw x65, 1(x65)
	fmul x6, x6, x65
	fadd x5, x5, x6
	fmul x6, x37, x37
	lw x65, 4(x34)
	lw x65, 2(x65)
	fmul x6, x6, x65
	fadd x5, x5, x6
	lw x6, 3(x34)
	bne	x6, zero, trace_ray_beqelse_b1286
# B1285
	mv x35, x5
	j trace_ray_cont_b1287 # adhoc jump(2)
trace_ray_beqelse_b1286:
# B1286
	fmul x6, x36, x37
	lw x65, 9(x34)
	lw x65, 0(x65)
	fmul x6, x6, x65
	fadd x5, x5, x6
	fmul x37, x37, x35
	lw x6, 9(x34)
	lw x6, 1(x6)
	fmul x37, x37, x6
	fadd x37, x5, x37
	fmul x35, x35, x36
	lw x36, 9(x34)
	lw x36, 2(x36)
	fmul x35, x35, x36
	fadd x35, x37, x35
trace_ray_cont_b1287:
# B1287
	lw x36, 1(x34)
	bne	x36, x40, trace_ray_beqelse_b1289
# B1288
	lui x36, 260096
	fsub x35, x35, x36
trace_ray_beqelse_b1289:
# B1289
trace_ray_cont_b1290:
# B1290
	fmul x36, x39, x39
	fmul x33, x33, x35
	fsub x33, x36, x33
	fle x35, x33, zero
	beq	x35, zero, trace_ray_bneelse_b1292
# B1291
	la x34, min_caml_solver_dist
	lw x34, 0(x34)
	j trace_ray_cont_b1297 # adhoc jump(2)
trace_ray_bneelse_b1292:
# B1292
	lw x34, 6(x34)
	bne	x34, zero, trace_ray_beqelse_b1294
# B1293
	la x34, min_caml_solver_dist
	fsqrt x33, x33
	fsub x33, x39, x33
	lw x35, 4(x38)
	fmul x33, x33, x35
	sw x33, 0(x34)
	j trace_ray_cont_b1295 # adhoc jump(2)
trace_ray_beqelse_b1294:
# B1294
	la x34, min_caml_solver_dist
	fsqrt x33, x33
	fadd x33, x39, x33
	lw x35, 4(x38)
	fmul x33, x33, x35
	sw x33, 0(x34)
trace_ray_cont_b1295:
# B1295
	la x34, min_caml_solver_dist
	lw x34, 0(x34)
trace_ray_cont_b1298:
# B1298
	lui x33, 779469
	addi x33, x33, -819
	fle x33, x33, x34
	xori x33, x33, 1
# B1299
	addi x20, x20, 1
	bne	x33, zero, trace_ray_beqelse_b1301
	j trace_ray_cont_b1300 # adhoc jump(3)
trace_ray_beqelse_b1301:
# B1301
	lui x15, 246333
	addi x15, x15, 1802
	fadd x15, x34, x15
	lw x33, 0(x29)
	fmul x33, x33, x15
	lw x34, 0(x27)
	fadd x33, x33, x34
	lw x34, 1(x29)
	fmul x34, x34, x15
	lw x35, 1(x27)
	fadd x34, x34, x35
	lw x35, 2(x29)
	fmul x15, x35, x15
	lw x35, 2(x27)
	fadd x15, x15, x35
	mv x39, x15
	mv x37, x33
	mv x35, zero
	mv x38, x34
	mv x36, x32
	j	trace_ray_loop_b1304
trace_ray_bneelse_b1331:	#moved
# B1331
	addi x35, x35, 1
trace_ray_loop_b1304:
# B1304
	add x4, x36, x35
	lw x15, 0(x4)
	beq	x15, x28, trace_ray_bneelse_b1305
# B1306
	add x4, x13, x15
	lw x15, 0(x4)
	lw x33, 5(x15)
	lw x33, 0(x33)
	fsub x33, x37, x33
	lw x34, 5(x15)
	lw x34, 1(x34)
	fsub x34, x38, x34
	lw x40, 5(x15)
	lw x40, 2(x40)
	fsub x40, x39, x40
	lw x5, 1(x15)
	bne	x5, x11, trace_ray_beqelse_b1308
# B1307
	fabs x33, x33
	lw x5, 4(x15)
	lw x5, 0(x5)
	fle x33, x5, x33
	bne	x33, zero, trace_ray_beqelse_b1309
# B1310
	fabs x33, x34
	lw x34, 4(x15)
	lw x34, 1(x34)
	fle x33, x34, x33
	bne	x33, zero, trace_ray_beqelse_b1311
# B1312
	fabs x33, x40
	lw x34, 4(x15)
	lw x34, 2(x34)
	fle x33, x34, x33
	xori x33, x33, 1
	mv x34, x33
# B1313
	bne	x34, zero, trace_ray_beqelse_b1315
	j trace_ray_cont_b1314 # adhoc jump(3)
trace_ray_beqelse_b1315:
# B1315
	lw x15, 6(x15)
	j trace_ray_cont_b1330 # adhoc jump(2)
trace_ray_beqelse_b1311:
# B1311
trace_ray_beqelse_b1309:
# B1309
trace_ray_cont_b1314:
# B1314
	lw x15, 6(x15)
	xori x15, x15, 1
	j trace_ray_cont_b1330 # adhoc jump(2)
trace_ray_beqelse_b1308:
# B1308
	bne	x5, x14, trace_ray_beqelse_b1317
# B1316
	lw x5, 4(x15)
	lw x6, 0(x5)
	fmul x33, x6, x33
	lw x6, 1(x5)
	fmul x34, x6, x34
	fadd x33, x33, x34
	lw x34, 2(x5)
	fmul x34, x34, x40
	fadd x33, x33, x34
	lw x15, 6(x15)
	fle x33, zero, x33
	xori x33, x33, 1
	bne	x15, zero, trace_ray_beqelse_b1319
# B1318
	mv x15, x33
	j trace_ray_cont_b1320 # adhoc jump(2)
trace_ray_beqelse_b1319:
# B1319
	xori x15, x33, 1
trace_ray_cont_b1320:
# B1320
	xori x15, x15, 1
	j trace_ray_cont_b1330 # adhoc jump(2)
trace_ray_beqelse_b1317:
# B1317
	fmul x5, x33, x33
	lw x6, 4(x15)
	lw x6, 0(x6)
	fmul x5, x5, x6
	fmul x6, x34, x34
	lw x65, 4(x15)
	lw x65, 1(x65)
	fmul x6, x6, x65
	fadd x5, x5, x6
	fmul x6, x40, x40
	lw x65, 4(x15)
	lw x65, 2(x65)
	fmul x6, x6, x65
	fadd x5, x5, x6
	lw x6, 3(x15)
	bne	x6, zero, trace_ray_beqelse_b1322
# B1321
	mv x33, x5
	j trace_ray_cont_b1323 # adhoc jump(2)
trace_ray_beqelse_b1322:
# B1322
	fmul x6, x34, x40
	lw x65, 9(x15)
	lw x65, 0(x65)
	fmul x6, x6, x65
	fadd x5, x5, x6
	fmul x40, x40, x33
	lw x6, 9(x15)
	lw x6, 1(x6)
	fmul x40, x40, x6
	fadd x40, x5, x40
	fmul x33, x33, x34
	lw x34, 9(x15)
	lw x34, 2(x34)
	fmul x33, x33, x34
	fadd x33, x40, x33
trace_ray_cont_b1323:
# B1323
	lw x34, 1(x15)
	li x40, 3
	bne	x34, x40, trace_ray_beqelse_b1325
# B1324
	lui x34, 260096
	fsub x33, x33, x34
trace_ray_beqelse_b1325:
# B1325
trace_ray_cont_b1326:
# B1326
	lw x15, 6(x15)
	fle x33, zero, x33
	xori x33, x33, 1
	bne	x15, zero, trace_ray_beqelse_b1328
# B1327
	mv x15, x33
	j trace_ray_cont_b1329 # adhoc jump(2)
trace_ray_beqelse_b1328:
# B1328
	xori x15, x33, 1
trace_ray_cont_b1329:
# B1329
	xori x15, x15, 1
trace_ray_cont_b1330:
# B1330
	beq	x15, zero, trace_ray_bneelse_b1331
# B1332
# B1334
	j	trace_ray_loop_b1253
trace_ray_bneelse_b1305:
# B1305
# B1335
	mv x15, x11
# B1336
	bne	x15, zero, trace_ray_beqelse_b1338
	j trace_ray_cont_b1337 # adhoc jump(3)
trace_ray_beqelse_b1338:
# B1338
	mv x20, x11
# B1339
	bne	x20, zero, trace_ray_beqelse_b1341
	j trace_ray_cont_b1340 # adhoc jump(3)
trace_ray_beqelse_b1341:
# B1341
	mv x15, x11
# B1342
	bne	x15, zero, trace_ray_beqelse_b1344
	j trace_ray_cont_b1343 # adhoc jump(3)
trace_ray_beqelse_b1344:
# B1344
	j trace_ray_cont_b1350 # adhoc jump(2)
trace_ray_beqelse_b1284:
# B1284
	la x34, min_caml_solver_dist
	lw x34, 0(x34)
trace_ray_cont_b1297:
# B1297
	addi x20, x20, 1
trace_ray_cont_b1300:
# B1300
	add x4, x13, x15
	lw x15, 0(x4)
	lw x15, 6(x15)
	beq	x15, zero, trace_ray_bneelse_b1302
# B1303
	j	trace_ray_loop_b1253
trace_ray_bneelse_b1302:
# B1302
trace_ray_bneelse_b1254:
# B1254
trace_ray_cont_b1337:
# B1337
	addi x30, x30, 1
	j	trace_ray_loop_b1250
trace_ray_bneelse_b1251:
# B1251
trace_ray_cont_b1340:
# B1340
	j	trace_ray_loop_b1105
trace_ray_beqelse_b1189:
# B1189
	lw x37, 0(x20)
trace_ray_cont_b1202:
# B1202
	addi x34, x34, 1
trace_ray_cont_b1205:
# B1205
	add x4, x13, x31
	lw x31, 0(x4)
	lw x31, 6(x31)
	beq	x31, zero, trace_ray_bneelse_b1207
# B1208
	j	trace_ray_loop_b1158
trace_ray_bneelse_b1207:
# B1207
trace_ray_bneelse_b1159:
# B1159
trace_ray_cont_b1242:
# B1242
	addi x32, x32, 1
	j	trace_ray_loop_b1155
trace_ray_bneelse_b1156:
# B1156
trace_ray_cont_b1245:
# B1245
	addi x16, x16, 1
	j trace_ray_cont_b1248 # adhoc jump(2)
trace_ray_beqelse_b1145:
# B1145
trace_ray_beqelse_b1138:
# B1138
trace_ray_cont_b1151:
# B1151
	addi x16, x16, 1
trace_ray_cont_b1248:
# B1248
	j	trace_ray_loop_b1105
trace_ray_bneelse_b1106:
# B1106
trace_ray_cont_b1343:
# B1343
	lw x15, 0(x26)
	lw x16, 0(x29)
	fmul x15, x15, x16
	lw x16, 1(x26)
	lw x17, 1(x29)
	fmul x16, x16, x17
	fadd x15, x15, x16
	lw x16, 2(x26)
	lw x17, 2(x29)
	fmul x16, x16, x17
	fadd x15, x15, x16
	fsub x15, zero, x15
	fmul x15, x15, x23
	lw x16, 0(x103)
	lw x17, 0(x29)
	fmul x16, x16, x17
	lw x17, 1(x103)
	lw x20, 1(x29)
	fmul x17, x17, x20
	fadd x16, x16, x17
	lw x17, 2(x103)
	lw x20, 2(x29)
	fmul x17, x17, x20
	fadd x16, x16, x17
	fsub x16, zero, x16
	fle x17, x15, zero
	bne	x17, zero, trace_ray_beqelse_b1345
# B1346
	lw x17, 0(x18)
	lw x20, 0(x24)
	fmul x20, x15, x20
	fadd x17, x17, x20
	sw x17, 0(x18)
	lw x17, 1(x18)
	lw x20, 1(x24)
	fmul x20, x15, x20
	fadd x17, x17, x20
	sw x17, 1(x18)
	lw x17, 2(x18)
	lw x20, 2(x24)
	fmul x15, x15, x20
	fadd x15, x17, x15
	sw x15, 2(x18)
trace_ray_beqelse_b1345:
# B1345
trace_ray_cont_b1347:
# B1347
	fle x15, x16, zero
	bne	x15, zero, trace_ray_beqelse_b1348
# B1349
	fmul x15, x16, x16
	fmul x15, x15, x15
	fmul x15, x15, x12
	lw x16, 0(x18)
	fadd x16, x16, x15
	sw x16, 0(x18)
	lw x16, 1(x18)
	fadd x16, x16, x15
	sw x16, 1(x18)
	lw x16, 2(x18)
	fadd x15, x16, x15
	sw x15, 2(x18)
trace_ray_beqelse_b1348:
# B1348
trace_ray_cont_b1350:
# B1350
	la x15, min_caml_startp_fast
	lw x16, 0(x27)
	sw x16, 0(x15)
	lw x16, 1(x27)
	sw x16, 1(x15)
	lw x16, 2(x27)
	sw x16, 2(x15)
	la x16, min_caml_n_objects
	lw x16, 0(x16)
	addi x16, x16, -1
	mv x20, x16
	mv x17, x27
trace_ray_loop_b1351:
# B1351
	bgt	zero, x20, trace_ray_bleelse_b1353
# B1352
	add x4, x13, x20
	lw x16, 0(x4)
	lw x28, 10(x16)
	lw x29, 1(x16)
	lw x30, 0(x17)
	lw x31, 5(x16)
	lw x31, 0(x31)
	fsub x30, x30, x31
	sw x30, 0(x28)
	lw x30, 1(x17)
	lw x31, 5(x16)
	lw x31, 1(x31)
	fsub x30, x30, x31
	sw x30, 1(x28)
	lw x30, 2(x17)
	lw x31, 5(x16)
	lw x31, 2(x31)
	fsub x30, x30, x31
	sw x30, 2(x28)
	bne	x29, x14, trace_ray_beqelse_b1355
# B1354
	lw x16, 4(x16)
	lw x29, 0(x28)
	lw x30, 1(x28)
	lw x31, 2(x28)
	lw x32, 0(x16)
	fmul x29, x32, x29
	lw x32, 1(x16)
	fmul x30, x32, x30
	fadd x29, x29, x30
	lw x16, 2(x16)
	fmul x16, x16, x31
	fadd x16, x29, x16
	sw x16, 3(x28)
	j trace_ray_cont_b1364 # adhoc jump(2)
trace_ray_beqelse_b1355:
# B1355
	bge	x14, x29, trace_ray_bgtelse_b1356
# B1357
	lw x30, 0(x28)
	lw x31, 1(x28)
	lw x32, 2(x28)
	fmul x33, x30, x30
	lw x34, 4(x16)
	lw x34, 0(x34)
	fmul x33, x33, x34
	fmul x34, x31, x31
	lw x35, 4(x16)
	lw x35, 1(x35)
	fmul x34, x34, x35
	fadd x33, x33, x34
	fmul x34, x32, x32
	lw x35, 4(x16)
	lw x35, 2(x35)
	fmul x34, x34, x35
	fadd x33, x33, x34
	lw x34, 3(x16)
	bne	x34, zero, trace_ray_beqelse_b1359
# B1358
	mv x16, x33
	j trace_ray_cont_b1360 # adhoc jump(2)
trace_ray_beqelse_b1359:
# B1359
	fmul x34, x31, x32
	lw x35, 9(x16)
	lw x35, 0(x35)
	fmul x34, x34, x35
	fadd x33, x33, x34
	fmul x32, x32, x30
	lw x34, 9(x16)
	lw x34, 1(x34)
	fmul x32, x32, x34
	fadd x32, x33, x32
	fmul x30, x30, x31
	lw x16, 9(x16)
	lw x16, 2(x16)
	fmul x16, x30, x16
	fadd x16, x32, x16
trace_ray_cont_b1360:
# B1360
	li x30, 3
	bne	x29, x30, trace_ray_beqelse_b1362
# B1361
	lui x29, 260096
	fsub x16, x16, x29
trace_ray_beqelse_b1362:
# B1362
trace_ray_cont_b1363:
# B1363
	sw x16, 3(x28)
trace_ray_bgtelse_b1356:
# B1356
trace_ray_cont_b1364:
# B1364
	addi x20, x20, -1
	j	trace_ray_loop_b1351
trace_ray_bleelse_b1353:
# B1353
# B1365
	la x16, min_caml_n_reflections
	lw x16, 0(x16)
	addi x16, x16, -1
	mv x17, x16
	mv x28, x12
	mv x20, x23
	mv x29, x103
trace_ray_loop_b1366:
# B1366
	li x12, -1
	lui x16, 260096
	bgt	zero, x17, trace_ray_bleelse_b1368
# B1367
	la x23, min_caml_reflections
	add x4, x23, x17
	lw x23, 0(x4)
	lw x30, 1(x23)
	sw x109, 0(x108)
	lw x31, 0(x110)
	mv x33, x31
	mv x34, x30
	mv x32, zero
trace_ray_loop_b1369:
# B1369
	add x4, x33, x32
	lw x31, 0(x4)
	lw x35, 0(x31)
	li x36, -1
	beq	x35, x36, trace_ray_bneelse_b1370
# B1371
	li x37, 99
	la x38, min_caml_solver_dist
	li x39, 3
	bne	x35, x37, trace_ray_beqelse_b1373
# B1372
	mv x40, x11
	mv x5, x31
	mv x6, x34
trace_ray_loop_b1374:
# B1374
	add x4, x5, x40
	lw x31, 0(x4)
	beq	x31, x36, trace_ray_bneelse_b1375
# B1376
	la x35, min_caml_and_net
	add x4, x35, x31
	lw x31, 0(x4)
	mv x37, x31
	mv x35, zero
	mv x65, x6
trace_ray_beqelse_b1418:	#moved
# B1418
trace_ray_loop_b1377:
# B1377
	lw x31, 0(x65)
	add x4, x37, x35
	lw x66, 0(x4)
	beq	x66, x36, trace_ray_bneelse_b1378
# B1379
	add x4, x13, x66
	lw x67, 0(x4)
	lw x68, 10(x67)
	lw x69, 0(x68)
	lw x7, 1(x68)
	lw x70, 2(x68)
	lw x71, 1(x65)
	add x4, x71, x66
	lw x71, 0(x4)
	lw x72, 1(x67)
	bne	x72, x11, trace_ray_beqelse_b1381
# B1380
	lw x68, 0(x65)
	lw x72, 0(x71)
	fsub x72, x72, x69
	lw x73, 1(x71)
	fmul x72, x72, x73
	lw x73, 1(x68)
	fmul x73, x72, x73
	fadd x73, x73, x7
	fabs x73, x73
	lw x74, 4(x67)
	lw x74, 1(x74)
	fle x73, x74, x73
	bne	x73, zero, trace_ray_beqelse_b1382
# B1383
	lw x73, 2(x68)
	fmul x73, x72, x73
	fadd x73, x73, x70
	fabs x73, x73
	lw x74, 4(x67)
	lw x74, 2(x74)
	fle x73, x74, x73
	bne	x73, zero, trace_ray_beqelse_b1384
# B1385
	lw x73, 1(x71)
	feq x73, x73, zero
	xori x73, x73, 1
	mv x74, x73
# B1386
	bne	x74, zero, trace_ray_beqelse_b1388
	j trace_ray_cont_b1387 # adhoc jump(3)
trace_ray_beqelse_b1388:
# B1388
	la x67, min_caml_solver_dist
	sw x72, 0(x67)
	li x67, 1
	addi x35, x35, 1
	j trace_ray_cont_b1416 # adhoc jump(2)
trace_ray_beqelse_b1384:
# B1384
trace_ray_beqelse_b1382:
# B1382
trace_ray_cont_b1387:
# B1387
	lw x72, 2(x71)
	fsub x72, x72, x7
	lw x73, 3(x71)
	fmul x72, x72, x73
	lw x73, 0(x68)
	fmul x73, x72, x73
	fadd x73, x73, x69
	fabs x73, x73
	lw x74, 4(x67)
	lw x74, 0(x74)
	fle x73, x74, x73
	bne	x73, zero, trace_ray_beqelse_b1389
# B1390
	lw x73, 2(x68)
	fmul x73, x72, x73
	fadd x73, x73, x70
	fabs x73, x73
	lw x74, 4(x67)
	lw x74, 2(x74)
	fle x73, x74, x73
	bne	x73, zero, trace_ray_beqelse_b1391
# B1392
	lw x73, 3(x71)
	feq x73, x73, zero
	xori x73, x73, 1
	mv x74, x73
# B1393
	bne	x74, zero, trace_ray_beqelse_b1395
	j trace_ray_cont_b1394 # adhoc jump(3)
trace_ray_beqelse_b1395:
# B1395
	la x67, min_caml_solver_dist
	sw x72, 0(x67)
	li x67, 2
	addi x35, x35, 1
	j trace_ray_cont_b1416 # adhoc jump(2)
trace_ray_beqelse_b1391:
# B1391
trace_ray_beqelse_b1389:
# B1389
trace_ray_cont_b1394:
# B1394
	lw x72, 4(x71)
	fsub x70, x72, x70
	lw x72, 5(x71)
	fmul x70, x70, x72
	lw x72, 0(x68)
	fmul x72, x70, x72
	fadd x69, x72, x69
	fabs x69, x69
	lw x72, 4(x67)
	lw x72, 0(x72)
	fle x69, x72, x69
	bne	x69, zero, trace_ray_beqelse_b1396
# B1397
	lw x68, 1(x68)
	fmul x68, x70, x68
	fadd x68, x68, x7
	fabs x68, x68
	lw x67, 4(x67)
	lw x67, 1(x67)
	fle x67, x67, x68
	bne	x67, zero, trace_ray_beqelse_b1398
# B1399
	lw x67, 5(x71)
	feq x67, x67, zero
	xori x67, x67, 1
	mv x68, x67
# B1400
	bne	x68, zero, trace_ray_beqelse_b1402
	j trace_ray_cont_b1401 # adhoc jump(3)
trace_ray_beqelse_b1402:
# B1402
	la x67, min_caml_solver_dist
	sw x70, 0(x67)
	li x67, 3
	addi x35, x35, 1
	j trace_ray_cont_b1416 # adhoc jump(2)
trace_ray_beqelse_b1398:
# B1398
trace_ray_beqelse_b1396:
# B1396
trace_ray_cont_b1401:
# B1401
	mv x67, zero
	addi x35, x35, 1
	j trace_ray_cont_b1415 # adhoc jump(2)
trace_ray_beqelse_b1381:
# B1381
	bne	x72, x14, trace_ray_beqelse_b1404
# B1403
	lw x67, 0(x71)
	fle x67, zero, x67
	beq	x67, zero, trace_ray_bneelse_b1406
# B1405
	mv x67, zero
	addi x35, x35, 1
	j trace_ray_cont_b1415 # adhoc jump(2)
trace_ray_bneelse_b1406:
# B1406
	la x67, min_caml_solver_dist
	lw x69, 0(x71)
	lw x68, 3(x68)
	fmul x68, x69, x68
	sw x68, 0(x67)
	li x67, 1
	addi x35, x35, 1
	j trace_ray_cont_b1416 # adhoc jump(2)
trace_ray_beqelse_b1404:
# B1404
	lw x72, 0(x71)
	feq x73, x72, zero
	bne	x73, zero, trace_ray_beqelse_b1408
# B1407
	lw x73, 1(x71)
	fmul x69, x73, x69
	lw x73, 2(x71)
	fmul x7, x73, x7
	fadd x69, x69, x7
	lw x7, 3(x71)
	fmul x7, x7, x70
	fadd x69, x69, x7
	lw x68, 3(x68)
	fmul x7, x69, x69
	fmul x68, x72, x68
	fsub x68, x7, x68
	fle x7, x68, zero
	beq	x7, zero, trace_ray_bneelse_b1410
# B1409
	mv x67, zero
	addi x35, x35, 1
	j trace_ray_cont_b1415 # adhoc jump(2)
trace_ray_bneelse_b1410:
# B1410
	lw x67, 6(x67)
	bne	x67, zero, trace_ray_beqelse_b1412
# B1411
	la x67, min_caml_solver_dist
	fsqrt x68, x68
	fsub x68, x69, x68
	lw x69, 4(x71)
	fmul x68, x68, x69
	sw x68, 0(x67)
	j trace_ray_cont_b1413 # adhoc jump(2)
trace_ray_beqelse_b1412:
# B1412
	la x67, min_caml_solver_dist
	fsqrt x68, x68
	fadd x68, x69, x68
	lw x69, 4(x71)
	fmul x68, x68, x69
	sw x68, 0(x67)
trace_ray_cont_b1413:
# B1413
	li x67, 1
	addi x35, x35, 1
trace_ray_cont_b1416:
# B1416
	lw x68, 0(x38)
	fle x69, x68, zero
	bne	x69, zero, trace_ray_beqelse_b1419
# B1420
	lw x69, 0(x108)
	fle x69, x69, x68
	bne	x69, zero, trace_ray_beqelse_b1421
# B1422
	lui x69, 246333
	addi x69, x69, 1802
	fadd x68, x68, x69
	lw x69, 0(x31)
	fmul x69, x69, x68
	lw x7, 0(x15)
	fadd x69, x69, x7
	lw x7, 1(x31)
	fmul x7, x7, x68
	lw x70, 1(x15)
	fadd x7, x7, x70
	lw x31, 2(x31)
	fmul x31, x31, x68
	lw x70, 2(x15)
	fadd x31, x31, x70
	mv x70, zero
	mv x71, x37
	mv x74, x31
	mv x72, x69
	mv x73, x7
	j	trace_ray_loop_b1423
trace_ray_bneelse_b1450:	#moved
# B1450
	addi x70, x70, 1
trace_ray_loop_b1423:
# B1423
	add x4, x71, x70
	lw x75, 0(x4)
	beq	x75, x36, trace_ray_bneelse_b1424
# B1425
	add x4, x13, x75
	lw x75, 0(x4)
	lw x76, 5(x75)
	lw x76, 0(x76)
	fsub x76, x72, x76
	lw x77, 5(x75)
	lw x77, 1(x77)
	fsub x77, x73, x77
	lw x78, 5(x75)
	lw x78, 2(x78)
	fsub x78, x74, x78
	lw x79, 1(x75)
	bne	x79, x11, trace_ray_beqelse_b1427
# B1426
	fabs x76, x76
	lw x79, 4(x75)
	lw x79, 0(x79)
	fle x76, x79, x76
	bne	x76, zero, trace_ray_beqelse_b1428
# B1429
	fabs x76, x77
	lw x77, 4(x75)
	lw x77, 1(x77)
	fle x76, x77, x76
	bne	x76, zero, trace_ray_beqelse_b1430
# B1431
	fabs x76, x78
	lw x77, 4(x75)
	lw x77, 2(x77)
	fle x76, x77, x76
	xori x76, x76, 1
	mv x77, x76
# B1432
	bne	x77, zero, trace_ray_beqelse_b1434
	j trace_ray_cont_b1433 # adhoc jump(3)
trace_ray_beqelse_b1434:
# B1434
	lw x75, 6(x75)
	j trace_ray_cont_b1449 # adhoc jump(2)
trace_ray_beqelse_b1430:
# B1430
trace_ray_beqelse_b1428:
# B1428
trace_ray_cont_b1433:
# B1433
	lw x75, 6(x75)
	xori x75, x75, 1
	j trace_ray_cont_b1449 # adhoc jump(2)
trace_ray_beqelse_b1427:
# B1427
	bne	x79, x14, trace_ray_beqelse_b1436
# B1435
	lw x79, 4(x75)
	lw x8, 0(x79)
	fmul x76, x8, x76
	lw x8, 1(x79)
	fmul x77, x8, x77
	fadd x76, x76, x77
	lw x77, 2(x79)
	fmul x77, x77, x78
	fadd x76, x76, x77
	lw x75, 6(x75)
	fle x76, zero, x76
	xori x76, x76, 1
	bne	x75, zero, trace_ray_beqelse_b1438
# B1437
	mv x75, x76
	j trace_ray_cont_b1439 # adhoc jump(2)
trace_ray_beqelse_b1438:
# B1438
	xori x75, x76, 1
trace_ray_cont_b1439:
# B1439
	xori x75, x75, 1
	j trace_ray_cont_b1449 # adhoc jump(2)
trace_ray_beqelse_b1436:
# B1436
	fmul x79, x76, x76
	lw x8, 4(x75)
	lw x8, 0(x8)
	fmul x79, x79, x8
	fmul x8, x77, x77
	lw x80, 4(x75)
	lw x80, 1(x80)
	fmul x8, x8, x80
	fadd x79, x79, x8
	fmul x8, x78, x78
	lw x80, 4(x75)
	lw x80, 2(x80)
	fmul x8, x8, x80
	fadd x79, x79, x8
	lw x8, 3(x75)
	bne	x8, zero, trace_ray_beqelse_b1441
# B1440
	mv x76, x79
	j trace_ray_cont_b1442 # adhoc jump(2)
trace_ray_beqelse_b1441:
# B1441
	fmul x8, x77, x78
	lw x80, 9(x75)
	lw x80, 0(x80)
	fmul x8, x8, x80
	fadd x79, x79, x8
	fmul x78, x78, x76
	lw x8, 9(x75)
	lw x8, 1(x8)
	fmul x78, x78, x8
	fadd x78, x79, x78
	fmul x76, x76, x77
	lw x77, 9(x75)
	lw x77, 2(x77)
	fmul x76, x76, x77
	fadd x76, x78, x76
trace_ray_cont_b1442:
# B1442
	lw x77, 1(x75)
	bne	x77, x39, trace_ray_beqelse_b1444
# B1443
	lui x77, 260096
	fsub x76, x76, x77
trace_ray_beqelse_b1444:
# B1444
trace_ray_cont_b1445:
# B1445
	lw x75, 6(x75)
	fle x76, zero, x76
	xori x76, x76, 1
	bne	x75, zero, trace_ray_beqelse_b1447
# B1446
	mv x75, x76
	j trace_ray_cont_b1448 # adhoc jump(2)
trace_ray_beqelse_b1447:
# B1447
	xori x75, x76, 1
trace_ray_cont_b1448:
# B1448
	xori x75, x75, 1
trace_ray_cont_b1449:
# B1449
	beq	x75, zero, trace_ray_bneelse_b1450
# B1451
# B1453
	j trace_ray_cont_b1455 # adhoc jump(2)
trace_ray_bneelse_b1424:
# B1424
# B1454
	sw x68, 0(x108)
	sw x69, 0(x27)
	sw x7, 1(x27)
	sw x31, 2(x27)
	sw x66, 0(x10)
	sw x67, 0(x25)
trace_ray_beqelse_b1421:
# B1421
trace_ray_beqelse_b1419:
# B1419
trace_ray_cont_b1455:
# B1455
	j	trace_ray_loop_b1377
trace_ray_beqelse_b1408:
# B1408
	mv x67, zero
	addi x35, x35, 1
trace_ray_cont_b1415:
# B1415
	add x4, x13, x66
	lw x31, 0(x4)
	lw x31, 6(x31)
	bne	x31, zero, trace_ray_beqelse_b1418
# B1417
trace_ray_bneelse_b1378:
# B1378
trace_ray_cont_b1456:
# B1456
	addi x40, x40, 1
	j	trace_ray_loop_b1374
trace_ray_bneelse_b1375:
# B1375
	j trace_ray_cont_b1579 # adhoc jump(2)
trace_ray_beqelse_b1373:
# B1373
	add x4, x13, x35
	lw x37, 0(x4)
	lw x40, 10(x37)
	lw x5, 0(x40)
	lw x6, 1(x40)
	lw x65, 2(x40)
	lw x66, 1(x34)
	add x4, x66, x35
	lw x35, 0(x4)
	lw x66, 1(x37)
	bne	x66, x11, trace_ray_beqelse_b1458
# B1457
	lw x40, 0(x34)
	lw x66, 0(x35)
	fsub x66, x66, x5
	lw x67, 1(x35)
	fmul x66, x66, x67
	lw x67, 1(x40)
	fmul x67, x66, x67
	fadd x67, x67, x6
	fabs x67, x67
	lw x68, 4(x37)
	lw x68, 1(x68)
	fle x67, x68, x67
	bne	x67, zero, trace_ray_beqelse_b1459
# B1460
	lw x67, 2(x40)
	fmul x67, x66, x67
	fadd x67, x67, x65
	fabs x67, x67
	lw x68, 4(x37)
	lw x68, 2(x68)
	fle x67, x68, x67
	bne	x67, zero, trace_ray_beqelse_b1461
# B1462
	lw x67, 1(x35)
	feq x67, x67, zero
	xori x67, x67, 1
	mv x68, x67
# B1463
	bne	x68, zero, trace_ray_beqelse_b1465
	j trace_ray_cont_b1464 # adhoc jump(3)
trace_ray_beqelse_b1465:
# B1465
	sw x66, 0(x38)
	mv x39, x11
	j trace_ray_cont_b1491 # adhoc jump(2)
trace_ray_beqelse_b1461:
# B1461
trace_ray_beqelse_b1459:
# B1459
trace_ray_cont_b1464:
# B1464
	lw x66, 2(x35)
	fsub x66, x66, x6
	lw x67, 3(x35)
	fmul x66, x66, x67
	lw x67, 0(x40)
	fmul x67, x66, x67
	fadd x67, x67, x5
	fabs x67, x67
	lw x68, 4(x37)
	lw x68, 0(x68)
	fle x67, x68, x67
	bne	x67, zero, trace_ray_beqelse_b1466
# B1467
	lw x67, 2(x40)
	fmul x67, x66, x67
	fadd x67, x67, x65
	fabs x67, x67
	lw x68, 4(x37)
	lw x68, 2(x68)
	fle x67, x68, x67
	bne	x67, zero, trace_ray_beqelse_b1468
# B1469
	lw x67, 3(x35)
	feq x67, x67, zero
	xori x67, x67, 1
	mv x68, x67
# B1470
	bne	x68, zero, trace_ray_beqelse_b1472
	j trace_ray_cont_b1471 # adhoc jump(3)
trace_ray_beqelse_b1472:
# B1472
	sw x66, 0(x38)
	mv x39, x14
	j trace_ray_cont_b1491 # adhoc jump(2)
trace_ray_beqelse_b1468:
# B1468
trace_ray_beqelse_b1466:
# B1466
trace_ray_cont_b1471:
# B1471
	lw x66, 4(x35)
	fsub x65, x66, x65
	lw x66, 5(x35)
	fmul x65, x65, x66
	lw x66, 0(x40)
	fmul x66, x65, x66
	fadd x5, x66, x5
	fabs x5, x5
	lw x66, 4(x37)
	lw x66, 0(x66)
	fle x5, x66, x5
	bne	x5, zero, trace_ray_beqelse_b1473
# B1474
	lw x40, 1(x40)
	fmul x40, x65, x40
	fadd x40, x40, x6
	fabs x40, x40
	lw x37, 4(x37)
	lw x37, 1(x37)
	fle x37, x37, x40
	bne	x37, zero, trace_ray_beqelse_b1475
# B1476
	lw x35, 5(x35)
	feq x35, x35, zero
	xori x35, x35, 1
	mv x37, x35
# B1477
	bne	x37, zero, trace_ray_beqelse_b1479
	j trace_ray_cont_b1478 # adhoc jump(3)
trace_ray_beqelse_b1479:
# B1479
	sw x65, 0(x38)
	j trace_ray_cont_b1491 # adhoc jump(2)
trace_ray_beqelse_b1475:
# B1475
trace_ray_beqelse_b1473:
# B1473
trace_ray_cont_b1478:
# B1478
	j trace_ray_cont_b1492 # adhoc jump(2)
trace_ray_beqelse_b1458:
# B1458
	bne	x66, x14, trace_ray_beqelse_b1481
# B1480
	lw x37, 0(x35)
	fle x37, zero, x37
	bne	x37, zero, trace_ray_beqelse_b1482
# B1483
	lw x35, 0(x35)
	lw x37, 3(x40)
	fmul x35, x35, x37
	sw x35, 0(x38)
	mv x39, x11
	j trace_ray_cont_b1491 # adhoc jump(2)
trace_ray_beqelse_b1482:
# B1482
	j trace_ray_cont_b1492 # adhoc jump(2)
trace_ray_beqelse_b1481:
# B1481
	lw x39, 0(x35)
	feq x66, x39, zero
	bne	x66, zero, trace_ray_beqelse_b1485
# B1484
	lw x66, 1(x35)
	fmul x5, x66, x5
	lw x66, 2(x35)
	fmul x6, x66, x6
	fadd x5, x5, x6
	lw x6, 3(x35)
	fmul x6, x6, x65
	fadd x5, x5, x6
	lw x40, 3(x40)
	fmul x6, x5, x5
	fmul x39, x39, x40
	fsub x39, x6, x39
	fle x40, x39, zero
	bne	x40, zero, trace_ray_beqelse_b1486
# B1487
	lw x37, 6(x37)
	fsqrt x39, x39
	bne	x37, zero, trace_ray_beqelse_b1489
# B1488
	fsub x37, x5, x39
	lw x35, 4(x35)
	fmul x35, x37, x35
	sw x35, 0(x38)
	j trace_ray_cont_b1490 # adhoc jump(2)
trace_ray_beqelse_b1489:
# B1489
	fadd x37, x5, x39
	lw x35, 4(x35)
	fmul x35, x37, x35
	sw x35, 0(x38)
trace_ray_cont_b1490:
# B1490
	mv x39, x11
trace_ray_cont_b1491:
# B1491
	bne	x39, zero, trace_ray_beqelse_b1493
	j trace_ray_cont_b1492 # adhoc jump(3)
trace_ray_beqelse_b1493:
# B1493
	lw x35, 0(x38)
	lw x37, 0(x108)
	fle x35, x37, x35
	bne	x35, zero, trace_ray_beqelse_b1494
# B1495
	mv x37, x11
	mv x40, x34
	mv x39, x31
trace_ray_loop_b1496:
# B1496
	add x4, x39, x37
	lw x31, 0(x4)
	beq	x31, x36, trace_ray_bneelse_b1497
# B1498
	la x35, min_caml_and_net
	add x4, x35, x31
	lw x31, 0(x4)
	mv x6, x40
	mv x5, x31
	mv x35, zero
trace_ray_beqelse_b1540:	#moved
# B1540
trace_ray_loop_b1499:
# B1499
	lw x31, 0(x6)
	add x4, x5, x35
	lw x65, 0(x4)
	beq	x65, x36, trace_ray_bneelse_b1500
# B1501
	add x4, x13, x65
	lw x66, 0(x4)
	lw x67, 10(x66)
	lw x68, 0(x67)
	lw x69, 1(x67)
	lw x7, 2(x67)
	lw x70, 1(x6)
	add x4, x70, x65
	lw x70, 0(x4)
	lw x71, 1(x66)
	bne	x71, x11, trace_ray_beqelse_b1503
# B1502
	lw x67, 0(x6)
	lw x71, 0(x70)
	fsub x71, x71, x68
	lw x72, 1(x70)
	fmul x71, x71, x72
	lw x72, 1(x67)
	fmul x72, x71, x72
	fadd x72, x72, x69
	fabs x72, x72
	lw x73, 4(x66)
	lw x73, 1(x73)
	fle x72, x73, x72
	bne	x72, zero, trace_ray_beqelse_b1504
# B1505
	lw x72, 2(x67)
	fmul x72, x71, x72
	fadd x72, x72, x7
	fabs x72, x72
	lw x73, 4(x66)
	lw x73, 2(x73)
	fle x72, x73, x72
	bne	x72, zero, trace_ray_beqelse_b1506
# B1507
	lw x72, 1(x70)
	feq x72, x72, zero
	xori x72, x72, 1
	mv x73, x72
# B1508
	bne	x73, zero, trace_ray_beqelse_b1510
	j trace_ray_cont_b1509 # adhoc jump(3)
trace_ray_beqelse_b1510:
# B1510
	sw x71, 0(x38)
	li x66, 1
	addi x35, x35, 1
	j trace_ray_cont_b1538 # adhoc jump(2)
trace_ray_beqelse_b1506:
# B1506
trace_ray_beqelse_b1504:
# B1504
trace_ray_cont_b1509:
# B1509
	lw x71, 2(x70)
	fsub x71, x71, x69
	lw x72, 3(x70)
	fmul x71, x71, x72
	lw x72, 0(x67)
	fmul x72, x71, x72
	fadd x72, x72, x68
	fabs x72, x72
	lw x73, 4(x66)
	lw x73, 0(x73)
	fle x72, x73, x72
	bne	x72, zero, trace_ray_beqelse_b1511
# B1512
	lw x72, 2(x67)
	fmul x72, x71, x72
	fadd x72, x72, x7
	fabs x72, x72
	lw x73, 4(x66)
	lw x73, 2(x73)
	fle x72, x73, x72
	bne	x72, zero, trace_ray_beqelse_b1513
# B1514
	lw x72, 3(x70)
	feq x72, x72, zero
	xori x72, x72, 1
	mv x73, x72
# B1515
	bne	x73, zero, trace_ray_beqelse_b1517
	j trace_ray_cont_b1516 # adhoc jump(3)
trace_ray_beqelse_b1517:
# B1517
	sw x71, 0(x38)
	li x66, 2
	addi x35, x35, 1
	j trace_ray_cont_b1538 # adhoc jump(2)
trace_ray_beqelse_b1513:
# B1513
trace_ray_beqelse_b1511:
# B1511
trace_ray_cont_b1516:
# B1516
	lw x71, 4(x70)
	fsub x7, x71, x7
	lw x71, 5(x70)
	fmul x7, x7, x71
	lw x71, 0(x67)
	fmul x71, x7, x71
	fadd x68, x71, x68
	fabs x68, x68
	lw x71, 4(x66)
	lw x71, 0(x71)
	fle x68, x71, x68
	bne	x68, zero, trace_ray_beqelse_b1518
# B1519
	lw x67, 1(x67)
	fmul x67, x7, x67
	fadd x67, x67, x69
	fabs x67, x67
	lw x66, 4(x66)
	lw x66, 1(x66)
	fle x66, x66, x67
	bne	x66, zero, trace_ray_beqelse_b1520
# B1521
	lw x66, 5(x70)
	feq x66, x66, zero
	xori x66, x66, 1
	mv x67, x66
# B1522
	bne	x67, zero, trace_ray_beqelse_b1524
	j trace_ray_cont_b1523 # adhoc jump(3)
trace_ray_beqelse_b1524:
# B1524
	sw x7, 0(x38)
	li x66, 3
	addi x35, x35, 1
	j trace_ray_cont_b1538 # adhoc jump(2)
trace_ray_beqelse_b1520:
# B1520
trace_ray_beqelse_b1518:
# B1518
trace_ray_cont_b1523:
# B1523
	mv x66, zero
	addi x35, x35, 1
	j trace_ray_cont_b1537 # adhoc jump(2)
trace_ray_beqelse_b1503:
# B1503
	bne	x71, x14, trace_ray_beqelse_b1526
# B1525
	lw x66, 0(x70)
	fle x66, zero, x66
	beq	x66, zero, trace_ray_bneelse_b1528
# B1527
	mv x66, zero
	addi x35, x35, 1
	j trace_ray_cont_b1537 # adhoc jump(2)
trace_ray_bneelse_b1528:
# B1528
	lw x66, 0(x70)
	lw x67, 3(x67)
	fmul x66, x66, x67
	sw x66, 0(x38)
	li x66, 1
	addi x35, x35, 1
	j trace_ray_cont_b1538 # adhoc jump(2)
trace_ray_beqelse_b1526:
# B1526
	lw x71, 0(x70)
	feq x72, x71, zero
	bne	x72, zero, trace_ray_beqelse_b1530
# B1529
	lw x72, 1(x70)
	fmul x68, x72, x68
	lw x72, 2(x70)
	fmul x69, x72, x69
	fadd x68, x68, x69
	lw x69, 3(x70)
	fmul x69, x69, x7
	fadd x68, x68, x69
	lw x67, 3(x67)
	fmul x69, x68, x68
	fmul x67, x71, x67
	fsub x67, x69, x67
	fle x69, x67, zero
	beq	x69, zero, trace_ray_bneelse_b1532
# B1531
	mv x66, zero
	addi x35, x35, 1
	j trace_ray_cont_b1537 # adhoc jump(2)
trace_ray_bneelse_b1532:
# B1532
	lw x66, 6(x66)
	bne	x66, zero, trace_ray_beqelse_b1534
# B1533
	fsqrt x66, x67
	fsub x66, x68, x66
	lw x67, 4(x70)
	fmul x66, x66, x67
	sw x66, 0(x38)
	j trace_ray_cont_b1535 # adhoc jump(2)
trace_ray_beqelse_b1534:
# B1534
	fsqrt x66, x67
	fadd x66, x68, x66
	lw x67, 4(x70)
	fmul x66, x66, x67
	sw x66, 0(x38)
trace_ray_cont_b1535:
# B1535
	li x66, 1
	addi x35, x35, 1
trace_ray_cont_b1538:
# B1538
	lw x67, 0(x38)
	fle x68, x67, zero
	bne	x68, zero, trace_ray_beqelse_b1541
# B1542
	lw x68, 0(x108)
	fle x68, x68, x67
	bne	x68, zero, trace_ray_beqelse_b1543
# B1544
	lui x68, 246333
	addi x68, x68, 1802
	fadd x67, x67, x68
	lw x68, 0(x31)
	fmul x68, x68, x67
	lw x69, 0(x15)
	fadd x68, x68, x69
	lw x69, 1(x31)
	fmul x69, x69, x67
	lw x7, 1(x15)
	fadd x69, x69, x7
	lw x31, 2(x31)
	fmul x31, x31, x67
	lw x7, 2(x15)
	fadd x31, x31, x7
	mv x70, x5
	mv x73, x31
	mv x72, x69
	mv x7, zero
	mv x71, x68
	j	trace_ray_loop_b1545
trace_ray_bneelse_b1572:	#moved
# B1572
	addi x7, x7, 1
trace_ray_loop_b1545:
# B1545
	add x4, x70, x7
	lw x74, 0(x4)
	beq	x74, x36, trace_ray_bneelse_b1546
# B1547
	add x4, x13, x74
	lw x74, 0(x4)
	lw x75, 5(x74)
	lw x75, 0(x75)
	fsub x75, x71, x75
	lw x76, 5(x74)
	lw x76, 1(x76)
	fsub x76, x72, x76
	lw x77, 5(x74)
	lw x77, 2(x77)
	fsub x77, x73, x77
	lw x78, 1(x74)
	bne	x78, x11, trace_ray_beqelse_b1549
# B1548
	fabs x75, x75
	lw x78, 4(x74)
	lw x78, 0(x78)
	fle x75, x78, x75
	bne	x75, zero, trace_ray_beqelse_b1550
# B1551
	fabs x75, x76
	lw x76, 4(x74)
	lw x76, 1(x76)
	fle x75, x76, x75
	bne	x75, zero, trace_ray_beqelse_b1552
# B1553
	fabs x75, x77
	lw x76, 4(x74)
	lw x76, 2(x76)
	fle x75, x76, x75
	xori x75, x75, 1
	mv x76, x75
# B1554
	bne	x76, zero, trace_ray_beqelse_b1556
	j trace_ray_cont_b1555 # adhoc jump(3)
trace_ray_beqelse_b1556:
# B1556
	lw x74, 6(x74)
	j trace_ray_cont_b1571 # adhoc jump(2)
trace_ray_beqelse_b1552:
# B1552
trace_ray_beqelse_b1550:
# B1550
trace_ray_cont_b1555:
# B1555
	lw x74, 6(x74)
	xori x74, x74, 1
	j trace_ray_cont_b1571 # adhoc jump(2)
trace_ray_beqelse_b1549:
# B1549
	bne	x78, x14, trace_ray_beqelse_b1558
# B1557
	lw x78, 4(x74)
	lw x79, 0(x78)
	fmul x75, x79, x75
	lw x79, 1(x78)
	fmul x76, x79, x76
	fadd x75, x75, x76
	lw x76, 2(x78)
	fmul x76, x76, x77
	fadd x75, x75, x76
	lw x74, 6(x74)
	fle x75, zero, x75
	xori x75, x75, 1
	bne	x74, zero, trace_ray_beqelse_b1560
# B1559
	mv x74, x75
	j trace_ray_cont_b1561 # adhoc jump(2)
trace_ray_beqelse_b1560:
# B1560
	xori x74, x75, 1
trace_ray_cont_b1561:
# B1561
	xori x74, x74, 1
	j trace_ray_cont_b1571 # adhoc jump(2)
trace_ray_beqelse_b1558:
# B1558
	fmul x78, x75, x75
	lw x79, 4(x74)
	lw x79, 0(x79)
	fmul x78, x78, x79
	fmul x79, x76, x76
	lw x8, 4(x74)
	lw x8, 1(x8)
	fmul x79, x79, x8
	fadd x78, x78, x79
	fmul x79, x77, x77
	lw x8, 4(x74)
	lw x8, 2(x8)
	fmul x79, x79, x8
	fadd x78, x78, x79
	lw x79, 3(x74)
	bne	x79, zero, trace_ray_beqelse_b1563
# B1562
	mv x75, x78
	j trace_ray_cont_b1564 # adhoc jump(2)
trace_ray_beqelse_b1563:
# B1563
	fmul x79, x76, x77
	lw x8, 9(x74)
	lw x8, 0(x8)
	fmul x79, x79, x8
	fadd x78, x78, x79
	fmul x77, x77, x75
	lw x79, 9(x74)
	lw x79, 1(x79)
	fmul x77, x77, x79
	fadd x77, x78, x77
	fmul x75, x75, x76
	lw x76, 9(x74)
	lw x76, 2(x76)
	fmul x75, x75, x76
	fadd x75, x77, x75
trace_ray_cont_b1564:
# B1564
	lw x76, 1(x74)
	li x77, 3
	bne	x76, x77, trace_ray_beqelse_b1566
# B1565
	lui x76, 260096
	fsub x75, x75, x76
trace_ray_beqelse_b1566:
# B1566
trace_ray_cont_b1567:
# B1567
	lw x74, 6(x74)
	fle x75, zero, x75
	xori x75, x75, 1
	bne	x74, zero, trace_ray_beqelse_b1569
# B1568
	mv x74, x75
	j trace_ray_cont_b1570 # adhoc jump(2)
trace_ray_beqelse_b1569:
# B1569
	xori x74, x75, 1
trace_ray_cont_b1570:
# B1570
	xori x74, x74, 1
trace_ray_cont_b1571:
# B1571
	beq	x74, zero, trace_ray_bneelse_b1572
# B1573
# B1575
	j trace_ray_cont_b1577 # adhoc jump(2)
trace_ray_bneelse_b1546:
# B1546
# B1576
	sw x67, 0(x108)
	sw x68, 0(x27)
	sw x69, 1(x27)
	sw x31, 2(x27)
	sw x65, 0(x10)
	sw x66, 0(x25)
trace_ray_beqelse_b1543:
# B1543
trace_ray_beqelse_b1541:
# B1541
trace_ray_cont_b1577:
# B1577
	j	trace_ray_loop_b1499
trace_ray_beqelse_b1530:
# B1530
	mv x66, zero
	addi x35, x35, 1
trace_ray_cont_b1537:
# B1537
	add x4, x13, x65
	lw x31, 0(x4)
	lw x31, 6(x31)
	bne	x31, zero, trace_ray_beqelse_b1540
# B1539
trace_ray_bneelse_b1500:
# B1500
trace_ray_cont_b1578:
# B1578
	addi x37, x37, 1
	j	trace_ray_loop_b1496
trace_ray_bneelse_b1497:
# B1497
trace_ray_beqelse_b1494:
# B1494
trace_ray_beqelse_b1486:
# B1486
trace_ray_beqelse_b1485:
# B1485
trace_ray_cont_b1492:
# B1492
trace_ray_cont_b1579:
# B1579
	addi x32, x32, 1
	j	trace_ray_loop_b1369
trace_ray_bneelse_b1370:
# B1370
# B1580
	lw x31, 0(x108)
	fle x32, x31, x100
	bne	x32, zero, trace_ray_beqelse_b1581
# B1582
	fle x31, x19, x31
	xori x31, x31, 1
	mv x32, x31
# B1583
	bne	x32, zero, trace_ray_beqelse_b1585
	j trace_ray_cont_b1584 # adhoc jump(3)
trace_ray_beqelse_b1585:
# B1585
	lw x31, 0(x10)
	slli x31, x31, 2
	lw x32, 0(x25)
	add x31, x31, x32
	lw x32, 0(x23)
	bne	x31, x32, trace_ray_beqelse_b1587
# B1586
	lw x31, 0(x110)
	mv x33, x31
	mv x32, zero
trace_ray_loop_b1588:
# B1588
	add x4, x33, x32
	lw x31, 0(x4)
	lw x34, 0(x31)
	beq	x34, x12, trace_ray_bneelse_b1589
# B1590
	li x35, 99
	bne	x34, x35, trace_ray_beqelse_b1592
# B1591
	addi x32, x32, 1
	j trace_ray_cont_b1732 # adhoc jump(2)
trace_ray_beqelse_b1592:
# B1592
	la x35, min_caml_light_dirvec
	add x4, x13, x34
	lw x36, 0(x4)
	lw x37, 0(x27)
	lw x38, 5(x36)
	lw x38, 0(x38)
	fsub x37, x37, x38
	lw x38, 1(x27)
	lw x39, 5(x36)
	lw x39, 1(x39)
	fsub x38, x38, x39
	lw x39, 2(x27)
	lw x40, 5(x36)
	lw x40, 2(x40)
	fsub x39, x39, x40
	lw x40, 1(x35)
	add x4, x40, x34
	lw x34, 0(x4)
	lw x40, 1(x36)
	bne	x40, x11, trace_ray_beqelse_b1594
# B1593
	lw x40, 0(x35)
	lw x5, 0(x34)
	fsub x5, x5, x37
	lw x6, 1(x34)
	fmul x5, x5, x6
	lw x6, 1(x40)
	fmul x6, x5, x6
	fadd x6, x6, x38
	fabs x6, x6
	lw x65, 4(x36)
	lw x65, 1(x65)
	fle x6, x65, x6
	bne	x6, zero, trace_ray_beqelse_b1595
# B1596
	lw x6, 2(x40)
	fmul x6, x5, x6
	fadd x6, x6, x39
	fabs x6, x6
	lw x65, 4(x36)
	lw x65, 2(x65)
	fle x6, x65, x6
	bne	x6, zero, trace_ray_beqelse_b1597
# B1598
	lw x6, 1(x34)
	feq x6, x6, zero
	xori x6, x6, 1
	mv x65, x6
# B1599
	bne	x65, zero, trace_ray_beqelse_b1601
	j trace_ray_cont_b1600 # adhoc jump(3)
trace_ray_beqelse_b1601:
# B1601
	la x34, min_caml_solver_dist
	sw x5, 0(x34)
	j trace_ray_cont_b1635 # adhoc jump(2)
trace_ray_beqelse_b1597:
# B1597
trace_ray_beqelse_b1595:
# B1595
trace_ray_cont_b1600:
# B1600
	lw x5, 2(x34)
	fsub x5, x5, x38
	lw x6, 3(x34)
	fmul x5, x5, x6
	lw x6, 0(x40)
	fmul x6, x5, x6
	fadd x6, x6, x37
	fabs x6, x6
	lw x65, 4(x36)
	lw x65, 0(x65)
	fle x6, x65, x6
	bne	x6, zero, trace_ray_beqelse_b1602
# B1603
	lw x6, 2(x40)
	fmul x6, x5, x6
	fadd x6, x6, x39
	fabs x6, x6
	lw x65, 4(x36)
	lw x65, 2(x65)
	fle x6, x65, x6
	bne	x6, zero, trace_ray_beqelse_b1604
# B1605
	lw x6, 3(x34)
	feq x6, x6, zero
	xori x6, x6, 1
	mv x65, x6
# B1606
	bne	x65, zero, trace_ray_beqelse_b1608
	j trace_ray_cont_b1607 # adhoc jump(3)
trace_ray_beqelse_b1608:
# B1608
	la x34, min_caml_solver_dist
	sw x5, 0(x34)
	j trace_ray_cont_b1635 # adhoc jump(2)
trace_ray_beqelse_b1604:
# B1604
trace_ray_beqelse_b1602:
# B1602
trace_ray_cont_b1607:
# B1607
	lw x5, 4(x34)
	fsub x39, x5, x39
	lw x5, 5(x34)
	fmul x39, x39, x5
	lw x5, 0(x40)
	fmul x5, x39, x5
	fadd x37, x5, x37
	fabs x37, x37
	lw x5, 4(x36)
	lw x5, 0(x5)
	fle x37, x5, x37
	bne	x37, zero, trace_ray_beqelse_b1609
# B1610
	lw x37, 1(x40)
	fmul x37, x39, x37
	fadd x37, x37, x38
	fabs x37, x37
	lw x36, 4(x36)
	lw x36, 1(x36)
	fle x36, x36, x37
	bne	x36, zero, trace_ray_beqelse_b1611
# B1612
	lw x34, 5(x34)
	feq x34, x34, zero
	xori x34, x34, 1
	mv x36, x34
# B1613
	bne	x36, zero, trace_ray_beqelse_b1615
	j trace_ray_cont_b1614 # adhoc jump(3)
trace_ray_beqelse_b1615:
# B1615
	la x34, min_caml_solver_dist
	sw x39, 0(x34)
	j trace_ray_cont_b1635 # adhoc jump(2)
trace_ray_beqelse_b1611:
# B1611
trace_ray_beqelse_b1609:
# B1609
trace_ray_cont_b1614:
# B1614
	j trace_ray_cont_b1634 # adhoc jump(2)
trace_ray_beqelse_b1594:
# B1594
	bne	x40, x14, trace_ray_beqelse_b1617
# B1616
	lw x36, 0(x34)
	fle x36, zero, x36
	bne	x36, zero, trace_ray_beqelse_b1618
# B1619
	la x36, min_caml_solver_dist
	lw x40, 1(x34)
	fmul x37, x40, x37
	lw x40, 2(x34)
	fmul x38, x40, x38
	fadd x37, x37, x38
	lw x34, 3(x34)
	fmul x34, x34, x39
	fadd x34, x37, x34
	sw x34, 0(x36)
	j trace_ray_cont_b1635 # adhoc jump(2)
trace_ray_beqelse_b1618:
# B1618
	j trace_ray_cont_b1634 # adhoc jump(2)
trace_ray_beqelse_b1617:
# B1617
	lw x40, 0(x34)
	feq x5, x40, zero
	bne	x5, zero, trace_ray_beqelse_b1621
# B1620
	lw x5, 1(x34)
	fmul x5, x5, x37
	lw x6, 2(x34)
	fmul x6, x6, x38
	fadd x5, x5, x6
	li x6, 3
	lw x65, 3(x34)
	fmul x65, x65, x39
	fadd x5, x5, x65
	fmul x65, x37, x37
	lw x66, 4(x36)
	lw x66, 0(x66)
	fmul x65, x65, x66
	fmul x66, x38, x38
	lw x67, 4(x36)
	lw x67, 1(x67)
	fmul x66, x66, x67
	fadd x65, x65, x66
	fmul x66, x39, x39
	lw x67, 4(x36)
	lw x67, 2(x67)
	fmul x66, x66, x67
	fadd x65, x65, x66
	lw x66, 3(x36)
	bne	x66, zero, trace_ray_beqelse_b1623
# B1622
	mv x37, x65
	j trace_ray_cont_b1624 # adhoc jump(2)
trace_ray_beqelse_b1623:
# B1623
	fmul x66, x38, x39
	lw x67, 9(x36)
	lw x67, 0(x67)
	fmul x66, x66, x67
	fadd x65, x65, x66
	fmul x39, x39, x37
	lw x66, 9(x36)
	lw x66, 1(x66)
	fmul x39, x39, x66
	fadd x39, x65, x39
	fmul x37, x37, x38
	lw x38, 9(x36)
	lw x38, 2(x38)
	fmul x37, x37, x38
	fadd x37, x39, x37
trace_ray_cont_b1624:
# B1624
	lw x38, 1(x36)
	bne	x38, x6, trace_ray_beqelse_b1626
# B1625
	lui x38, 260096
	fsub x37, x37, x38
trace_ray_beqelse_b1626:
# B1626
trace_ray_cont_b1627:
# B1627
	fmul x38, x5, x5
	fmul x37, x40, x37
	fsub x37, x38, x37
	fle x38, x37, zero
	bne	x38, zero, trace_ray_beqelse_b1628
# B1629
	lw x36, 6(x36)
	bne	x36, zero, trace_ray_beqelse_b1631
# B1630
	la x36, min_caml_solver_dist
	fsqrt x37, x37
	fsub x37, x5, x37
	lw x34, 4(x34)
	fmul x34, x37, x34
	sw x34, 0(x36)
	j trace_ray_cont_b1632 # adhoc jump(2)
trace_ray_beqelse_b1631:
# B1631
	la x36, min_caml_solver_dist
	fsqrt x37, x37
	fadd x37, x5, x37
	lw x34, 4(x34)
	fmul x34, x37, x34
	sw x34, 0(x36)
trace_ray_cont_b1632:
# B1632
trace_ray_cont_b1635:
# B1635
	la x34, min_caml_solver_dist
	lw x36, 0(x34)
	fle x36, x100, x36
	beq	x36, zero, trace_ray_bneelse_b1637
# B1636
	addi x32, x32, 1
	j trace_ray_cont_b1731 # adhoc jump(2)
trace_ray_bneelse_b1637:
# B1637
	mv x37, x11
	mv x38, x31
trace_ray_loop_b1638:
# B1638
	add x4, x38, x37
	lw x36, 0(x4)
	beq	x36, x12, trace_ray_bneelse_b1639
# B1640
	la x39, min_caml_and_net
	add x4, x39, x36
	lw x36, 0(x4)
	mv x40, x36
	mv x39, zero
trace_ray_loop_b1641:
# B1641
	add x4, x40, x39
	lw x36, 0(x4)
	beq	x36, x12, trace_ray_bneelse_b1642
# B1643
	add x4, x40, x39
	lw x36, 0(x4)
	add x4, x13, x36
	lw x5, 0(x4)
	lw x6, 0(x27)
	lw x65, 5(x5)
	lw x65, 0(x65)
	fsub x6, x6, x65
	lw x65, 1(x27)
	lw x66, 5(x5)
	lw x66, 1(x66)
	fsub x65, x65, x66
	lw x66, 2(x27)
	lw x67, 5(x5)
	lw x67, 2(x67)
	fsub x66, x66, x67
	lw x67, 1(x35)
	add x4, x67, x36
	lw x67, 0(x4)
	lw x68, 1(x5)
	bne	x68, x11, trace_ray_beqelse_b1645
# B1644
	lw x68, 0(x35)
	lw x69, 0(x67)
	fsub x69, x69, x6
	lw x7, 1(x67)
	fmul x69, x69, x7
	lw x7, 1(x68)
	fmul x7, x69, x7
	fadd x7, x7, x65
	fabs x7, x7
	lw x70, 4(x5)
	lw x70, 1(x70)
	fle x7, x70, x7
	bne	x7, zero, trace_ray_beqelse_b1646
# B1647
	lw x7, 2(x68)
	fmul x7, x69, x7
	fadd x7, x7, x66
	fabs x7, x7
	lw x70, 4(x5)
	lw x70, 2(x70)
	fle x7, x70, x7
	bne	x7, zero, trace_ray_beqelse_b1648
# B1649
	lw x7, 1(x67)
	feq x7, x7, zero
	xori x7, x7, 1
	mv x70, x7
# B1650
	bne	x70, zero, trace_ray_beqelse_b1652
	j trace_ray_cont_b1651 # adhoc jump(3)
trace_ray_beqelse_b1652:
# B1652
	sw x69, 0(x34)
	lw x6, 0(x34)
	j trace_ray_cont_b1686 # adhoc jump(2)
trace_ray_beqelse_b1648:
# B1648
trace_ray_beqelse_b1646:
# B1646
trace_ray_cont_b1651:
# B1651
	lw x69, 2(x67)
	fsub x69, x69, x65
	lw x7, 3(x67)
	fmul x69, x69, x7
	lw x7, 0(x68)
	fmul x7, x69, x7
	fadd x7, x7, x6
	fabs x7, x7
	lw x70, 4(x5)
	lw x70, 0(x70)
	fle x7, x70, x7
	bne	x7, zero, trace_ray_beqelse_b1653
# B1654
	lw x7, 2(x68)
	fmul x7, x69, x7
	fadd x7, x7, x66
	fabs x7, x7
	lw x70, 4(x5)
	lw x70, 2(x70)
	fle x7, x70, x7
	bne	x7, zero, trace_ray_beqelse_b1655
# B1656
	lw x7, 3(x67)
	feq x7, x7, zero
	xori x7, x7, 1
	mv x70, x7
# B1657
	bne	x70, zero, trace_ray_beqelse_b1659
	j trace_ray_cont_b1658 # adhoc jump(3)
trace_ray_beqelse_b1659:
# B1659
	sw x69, 0(x34)
	lw x6, 0(x34)
	j trace_ray_cont_b1686 # adhoc jump(2)
trace_ray_beqelse_b1655:
# B1655
trace_ray_beqelse_b1653:
# B1653
trace_ray_cont_b1658:
# B1658
	lw x69, 4(x67)
	fsub x66, x69, x66
	lw x69, 5(x67)
	fmul x66, x66, x69
	lw x69, 0(x68)
	fmul x69, x66, x69
	fadd x6, x69, x6
	fabs x6, x6
	lw x69, 4(x5)
	lw x69, 0(x69)
	fle x6, x69, x6
	bne	x6, zero, trace_ray_beqelse_b1660
# B1661
	lw x6, 1(x68)
	fmul x6, x66, x6
	fadd x6, x6, x65
	fabs x6, x6
	lw x5, 4(x5)
	lw x5, 1(x5)
	fle x5, x5, x6
	bne	x5, zero, trace_ray_beqelse_b1662
# B1663
	lw x5, 5(x67)
	feq x5, x5, zero
	xori x5, x5, 1
	mv x6, x5
# B1664
	bne	x6, zero, trace_ray_beqelse_b1666
	j trace_ray_cont_b1665 # adhoc jump(3)
trace_ray_beqelse_b1666:
# B1666
	sw x66, 0(x34)
	lw x6, 0(x34)
	j trace_ray_cont_b1686 # adhoc jump(2)
trace_ray_beqelse_b1662:
# B1662
trace_ray_beqelse_b1660:
# B1660
trace_ray_cont_b1665:
# B1665
	lw x6, 0(x34)
	j trace_ray_cont_b1685 # adhoc jump(2)
trace_ray_beqelse_b1645:
# B1645
	bne	x68, x14, trace_ray_beqelse_b1668
# B1667
	lw x5, 0(x67)
	fle x5, zero, x5
	beq	x5, zero, trace_ray_bneelse_b1670
# B1669
	lw x6, 0(x34)
	j trace_ray_cont_b1685 # adhoc jump(2)
trace_ray_bneelse_b1670:
# B1670
	lw x5, 1(x67)
	fmul x5, x5, x6
	lw x6, 2(x67)
	fmul x6, x6, x65
	fadd x5, x5, x6
	lw x6, 3(x67)
	fmul x6, x6, x66
	fadd x5, x5, x6
	sw x5, 0(x34)
	lw x6, 0(x34)
	j trace_ray_cont_b1686 # adhoc jump(2)
trace_ray_beqelse_b1668:
# B1668
	lw x68, 0(x67)
	feq x69, x68, zero
	bne	x69, zero, trace_ray_beqelse_b1672
# B1671
	lw x69, 1(x67)
	fmul x69, x69, x6
	lw x7, 2(x67)
	fmul x7, x7, x65
	fadd x69, x69, x7
	li x7, 3
	lw x70, 3(x67)
	fmul x70, x70, x66
	fadd x69, x69, x70
	fmul x70, x6, x6
	lw x71, 4(x5)
	lw x71, 0(x71)
	fmul x70, x70, x71
	fmul x71, x65, x65
	lw x72, 4(x5)
	lw x72, 1(x72)
	fmul x71, x71, x72
	fadd x70, x70, x71
	fmul x71, x66, x66
	lw x72, 4(x5)
	lw x72, 2(x72)
	fmul x71, x71, x72
	fadd x70, x70, x71
	lw x71, 3(x5)
	bne	x71, zero, trace_ray_beqelse_b1674
# B1673
	mv x6, x70
	j trace_ray_cont_b1675 # adhoc jump(2)
trace_ray_beqelse_b1674:
# B1674
	fmul x71, x65, x66
	lw x72, 9(x5)
	lw x72, 0(x72)
	fmul x71, x71, x72
	fadd x70, x70, x71
	fmul x66, x66, x6
	lw x71, 9(x5)
	lw x71, 1(x71)
	fmul x66, x66, x71
	fadd x66, x70, x66
	fmul x6, x6, x65
	lw x65, 9(x5)
	lw x65, 2(x65)
	fmul x6, x6, x65
	fadd x6, x66, x6
trace_ray_cont_b1675:
# B1675
	lw x65, 1(x5)
	bne	x65, x7, trace_ray_beqelse_b1677
# B1676
	lui x65, 260096
	fsub x6, x6, x65
trace_ray_beqelse_b1677:
# B1677
trace_ray_cont_b1678:
# B1678
	fmul x65, x69, x69
	fmul x6, x68, x6
	fsub x6, x65, x6
	fle x65, x6, zero
	beq	x65, zero, trace_ray_bneelse_b1680
# B1679
	lw x6, 0(x34)
	j trace_ray_cont_b1685 # adhoc jump(2)
trace_ray_bneelse_b1680:
# B1680
	lw x5, 6(x5)
	bne	x5, zero, trace_ray_beqelse_b1682
# B1681
	fsqrt x5, x6
	fsub x5, x69, x5
	lw x6, 4(x67)
	fmul x5, x5, x6
	sw x5, 0(x34)
	j trace_ray_cont_b1683 # adhoc jump(2)
trace_ray_beqelse_b1682:
# B1682
	fsqrt x5, x6
	fadd x5, x69, x5
	lw x6, 4(x67)
	fmul x5, x5, x6
	sw x5, 0(x34)
trace_ray_cont_b1683:
# B1683
	lw x6, 0(x34)
trace_ray_cont_b1686:
# B1686
	lui x5, 779469
	addi x5, x5, -819
	fle x5, x5, x6
	xori x5, x5, 1
# B1687
	addi x39, x39, 1
	bne	x5, zero, trace_ray_beqelse_b1689
	j trace_ray_cont_b1688 # adhoc jump(3)
trace_ray_beqelse_b1689:
# B1689
	lui x36, 246333
	addi x36, x36, 1802
	fadd x36, x6, x36
	la x5, min_caml_light
	lw x6, 0(x5)
	fmul x6, x6, x36
	lw x65, 0(x27)
	fadd x6, x6, x65
	lw x65, 1(x5)
	fmul x65, x65, x36
	lw x66, 1(x27)
	fadd x65, x65, x66
	lw x5, 2(x5)
	fmul x36, x5, x36
	lw x5, 2(x27)
	fadd x36, x36, x5
	mv x66, x40
	mv x67, x6
	mv x68, x65
	mv x69, x36
	mv x5, zero
	j	trace_ray_loop_b1692
trace_ray_bneelse_b1719:	#moved
# B1719
	addi x5, x5, 1
trace_ray_loop_b1692:
# B1692
	add x4, x66, x5
	lw x36, 0(x4)
	beq	x36, x12, trace_ray_bneelse_b1693
# B1694
	add x4, x13, x36
	lw x36, 0(x4)
	lw x6, 5(x36)
	lw x6, 0(x6)
	fsub x6, x67, x6
	lw x65, 5(x36)
	lw x65, 1(x65)
	fsub x65, x68, x65
	lw x7, 5(x36)
	lw x7, 2(x7)
	fsub x7, x69, x7
	lw x70, 1(x36)
	bne	x70, x11, trace_ray_beqelse_b1696
# B1695
	fabs x6, x6
	lw x70, 4(x36)
	lw x70, 0(x70)
	fle x6, x70, x6
	bne	x6, zero, trace_ray_beqelse_b1697
# B1698
	fabs x6, x65
	lw x65, 4(x36)
	lw x65, 1(x65)
	fle x6, x65, x6
	bne	x6, zero, trace_ray_beqelse_b1699
# B1700
	fabs x6, x7
	lw x65, 4(x36)
	lw x65, 2(x65)
	fle x6, x65, x6
	xori x6, x6, 1
	mv x65, x6
# B1701
	bne	x65, zero, trace_ray_beqelse_b1703
	j trace_ray_cont_b1702 # adhoc jump(3)
trace_ray_beqelse_b1703:
# B1703
	lw x36, 6(x36)
	j trace_ray_cont_b1718 # adhoc jump(2)
trace_ray_beqelse_b1699:
# B1699
trace_ray_beqelse_b1697:
# B1697
trace_ray_cont_b1702:
# B1702
	lw x36, 6(x36)
	xori x36, x36, 1
	j trace_ray_cont_b1718 # adhoc jump(2)
trace_ray_beqelse_b1696:
# B1696
	bne	x70, x14, trace_ray_beqelse_b1705
# B1704
	lw x70, 4(x36)
	lw x71, 0(x70)
	fmul x6, x71, x6
	lw x71, 1(x70)
	fmul x65, x71, x65
	fadd x6, x6, x65
	lw x65, 2(x70)
	fmul x65, x65, x7
	fadd x6, x6, x65
	lw x36, 6(x36)
	fle x6, zero, x6
	xori x6, x6, 1
	bne	x36, zero, trace_ray_beqelse_b1707
# B1706
	mv x36, x6
	j trace_ray_cont_b1708 # adhoc jump(2)
trace_ray_beqelse_b1707:
# B1707
	xori x36, x6, 1
trace_ray_cont_b1708:
# B1708
	xori x36, x36, 1
	j trace_ray_cont_b1718 # adhoc jump(2)
trace_ray_beqelse_b1705:
# B1705
	fmul x70, x6, x6
	lw x71, 4(x36)
	lw x71, 0(x71)
	fmul x70, x70, x71
	fmul x71, x65, x65
	lw x72, 4(x36)
	lw x72, 1(x72)
	fmul x71, x71, x72
	fadd x70, x70, x71
	fmul x71, x7, x7
	lw x72, 4(x36)
	lw x72, 2(x72)
	fmul x71, x71, x72
	fadd x70, x70, x71
	lw x71, 3(x36)
	bne	x71, zero, trace_ray_beqelse_b1710
# B1709
	mv x6, x70
	j trace_ray_cont_b1711 # adhoc jump(2)
trace_ray_beqelse_b1710:
# B1710
	fmul x71, x65, x7
	lw x72, 9(x36)
	lw x72, 0(x72)
	fmul x71, x71, x72
	fadd x70, x70, x71
	fmul x7, x7, x6
	lw x71, 9(x36)
	lw x71, 1(x71)
	fmul x7, x7, x71
	fadd x7, x70, x7
	fmul x6, x6, x65
	lw x65, 9(x36)
	lw x65, 2(x65)
	fmul x6, x6, x65
	fadd x6, x7, x6
trace_ray_cont_b1711:
# B1711
	lw x65, 1(x36)
	li x7, 3
	bne	x65, x7, trace_ray_beqelse_b1713
# B1712
	lui x65, 260096
	fsub x6, x6, x65
trace_ray_beqelse_b1713:
# B1713
trace_ray_cont_b1714:
# B1714
	lw x36, 6(x36)
	fle x6, zero, x6
	xori x6, x6, 1
	bne	x36, zero, trace_ray_beqelse_b1716
# B1715
	mv x36, x6
	j trace_ray_cont_b1717 # adhoc jump(2)
trace_ray_beqelse_b1716:
# B1716
	xori x36, x6, 1
trace_ray_cont_b1717:
# B1717
	xori x36, x36, 1
trace_ray_cont_b1718:
# B1718
	beq	x36, zero, trace_ray_bneelse_b1719
# B1720
# B1722
	j	trace_ray_loop_b1641
trace_ray_bneelse_b1693:
# B1693
# B1723
	mv x36, x11
# B1724
	bne	x36, zero, trace_ray_beqelse_b1726
	j trace_ray_cont_b1725 # adhoc jump(3)
trace_ray_beqelse_b1726:
# B1726
	mv x39, x11
# B1727
	bne	x39, zero, trace_ray_beqelse_b1729
	j trace_ray_cont_b1728 # adhoc jump(3)
trace_ray_beqelse_b1729:
# B1729
	mv x34, x11
# B1730
	addi x32, x32, 1
	bne	x34, zero, trace_ray_beqelse_b1732
	j trace_ray_cont_b1731 # adhoc jump(3)
trace_ray_beqelse_b1732:
trace_ray_cont_b1732:
# B1732
	mv x36, x31
	mv x35, x11
trace_ray_loop_b1733:
# B1733
	add x4, x36, x35
	lw x31, 0(x4)
	beq	x31, x12, trace_ray_bneelse_b1734
# B1735
	la x34, min_caml_and_net
	add x4, x34, x31
	lw x31, 0(x4)
	mv x37, x31
	mv x34, zero
trace_ray_loop_b1736:
# B1736
	add x4, x37, x34
	lw x31, 0(x4)
	beq	x31, x12, trace_ray_bneelse_b1737
# B1738
	add x4, x37, x34
	lw x31, 0(x4)
	la x38, min_caml_light_dirvec
	add x4, x13, x31
	lw x39, 0(x4)
	lw x40, 0(x27)
	lw x5, 5(x39)
	lw x5, 0(x5)
	fsub x40, x40, x5
	lw x5, 1(x27)
	lw x6, 5(x39)
	lw x6, 1(x6)
	fsub x5, x5, x6
	lw x6, 2(x27)
	lw x65, 5(x39)
	lw x65, 2(x65)
	fsub x6, x6, x65
	lw x65, 1(x38)
	add x4, x65, x31
	lw x65, 0(x4)
	lw x66, 1(x39)
	bne	x66, x11, trace_ray_beqelse_b1740
# B1739
	lw x38, 0(x38)
	lw x66, 0(x65)
	fsub x66, x66, x40
	lw x67, 1(x65)
	fmul x66, x66, x67
	lw x67, 1(x38)
	fmul x67, x66, x67
	fadd x67, x67, x5
	fabs x67, x67
	lw x68, 4(x39)
	lw x68, 1(x68)
	fle x67, x68, x67
	bne	x67, zero, trace_ray_beqelse_b1741
# B1742
	lw x67, 2(x38)
	fmul x67, x66, x67
	fadd x67, x67, x6
	fabs x67, x67
	lw x68, 4(x39)
	lw x68, 2(x68)
	fle x67, x68, x67
	bne	x67, zero, trace_ray_beqelse_b1743
# B1744
	lw x67, 1(x65)
	feq x67, x67, zero
	xori x67, x67, 1
	mv x68, x67
# B1745
	bne	x68, zero, trace_ray_beqelse_b1747
	j trace_ray_cont_b1746 # adhoc jump(3)
trace_ray_beqelse_b1747:
# B1747
	la x38, min_caml_solver_dist
	sw x66, 0(x38)
	la x39, min_caml_solver_dist
	lw x39, 0(x39)
	j trace_ray_cont_b1781 # adhoc jump(2)
trace_ray_beqelse_b1743:
# B1743
trace_ray_beqelse_b1741:
# B1741
trace_ray_cont_b1746:
# B1746
	lw x66, 2(x65)
	fsub x66, x66, x5
	lw x67, 3(x65)
	fmul x66, x66, x67
	lw x67, 0(x38)
	fmul x67, x66, x67
	fadd x67, x67, x40
	fabs x67, x67
	lw x68, 4(x39)
	lw x68, 0(x68)
	fle x67, x68, x67
	bne	x67, zero, trace_ray_beqelse_b1748
# B1749
	lw x67, 2(x38)
	fmul x67, x66, x67
	fadd x67, x67, x6
	fabs x67, x67
	lw x68, 4(x39)
	lw x68, 2(x68)
	fle x67, x68, x67
	bne	x67, zero, trace_ray_beqelse_b1750
# B1751
	lw x67, 3(x65)
	feq x67, x67, zero
	xori x67, x67, 1
	mv x68, x67
# B1752
	bne	x68, zero, trace_ray_beqelse_b1754
	j trace_ray_cont_b1753 # adhoc jump(3)
trace_ray_beqelse_b1754:
# B1754
	la x38, min_caml_solver_dist
	sw x66, 0(x38)
	la x39, min_caml_solver_dist
	lw x39, 0(x39)
	j trace_ray_cont_b1781 # adhoc jump(2)
trace_ray_beqelse_b1750:
# B1750
trace_ray_beqelse_b1748:
# B1748
trace_ray_cont_b1753:
# B1753
	lw x66, 4(x65)
	fsub x6, x66, x6
	lw x66, 5(x65)
	fmul x6, x6, x66
	lw x66, 0(x38)
	fmul x66, x6, x66
	fadd x40, x66, x40
	fabs x40, x40
	lw x66, 4(x39)
	lw x66, 0(x66)
	fle x40, x66, x40
	bne	x40, zero, trace_ray_beqelse_b1755
# B1756
	lw x38, 1(x38)
	fmul x38, x6, x38
	fadd x38, x38, x5
	fabs x38, x38
	lw x39, 4(x39)
	lw x39, 1(x39)
	fle x38, x39, x38
	bne	x38, zero, trace_ray_beqelse_b1757
# B1758
	lw x38, 5(x65)
	feq x38, x38, zero
	xori x38, x38, 1
	mv x39, x38
# B1759
	bne	x39, zero, trace_ray_beqelse_b1761
	j trace_ray_cont_b1760 # adhoc jump(3)
trace_ray_beqelse_b1761:
# B1761
	la x38, min_caml_solver_dist
	sw x6, 0(x38)
	la x39, min_caml_solver_dist
	lw x39, 0(x39)
	j trace_ray_cont_b1781 # adhoc jump(2)
trace_ray_beqelse_b1757:
# B1757
trace_ray_beqelse_b1755:
# B1755
trace_ray_cont_b1760:
# B1760
	la x39, min_caml_solver_dist
	lw x39, 0(x39)
	j trace_ray_cont_b1780 # adhoc jump(2)
trace_ray_beqelse_b1740:
# B1740
	bne	x66, x14, trace_ray_beqelse_b1763
# B1762
	lw x38, 0(x65)
	fle x38, zero, x38
	beq	x38, zero, trace_ray_bneelse_b1765
# B1764
	la x39, min_caml_solver_dist
	lw x39, 0(x39)
	j trace_ray_cont_b1780 # adhoc jump(2)
trace_ray_bneelse_b1765:
# B1765
	la x38, min_caml_solver_dist
	lw x39, 1(x65)
	fmul x39, x39, x40
	lw x40, 2(x65)
	fmul x40, x40, x5
	fadd x39, x39, x40
	lw x40, 3(x65)
	fmul x40, x40, x6
	fadd x39, x39, x40
	sw x39, 0(x38)
	la x39, min_caml_solver_dist
	lw x39, 0(x39)
	j trace_ray_cont_b1781 # adhoc jump(2)
trace_ray_beqelse_b1763:
# B1763
	lw x38, 0(x65)
	feq x66, x38, zero
	bne	x66, zero, trace_ray_beqelse_b1767
# B1766
	lw x66, 1(x65)
	fmul x66, x66, x40
	lw x67, 2(x65)
	fmul x67, x67, x5
	fadd x66, x66, x67
	li x67, 3
	lw x68, 3(x65)
	fmul x68, x68, x6
	fadd x66, x66, x68
	fmul x68, x40, x40
	lw x69, 4(x39)
	lw x69, 0(x69)
	fmul x68, x68, x69
	fmul x69, x5, x5
	lw x7, 4(x39)
	lw x7, 1(x7)
	fmul x69, x69, x7
	fadd x68, x68, x69
	fmul x69, x6, x6
	lw x7, 4(x39)
	lw x7, 2(x7)
	fmul x69, x69, x7
	fadd x68, x68, x69
	lw x69, 3(x39)
	bne	x69, zero, trace_ray_beqelse_b1769
# B1768
	mv x40, x68
	j trace_ray_cont_b1770 # adhoc jump(2)
trace_ray_beqelse_b1769:
# B1769
	fmul x69, x5, x6
	lw x7, 9(x39)
	lw x7, 0(x7)
	fmul x69, x69, x7
	fadd x68, x68, x69
	fmul x6, x6, x40
	lw x69, 9(x39)
	lw x69, 1(x69)
	fmul x6, x6, x69
	fadd x6, x68, x6
	fmul x40, x40, x5
	lw x5, 9(x39)
	lw x5, 2(x5)
	fmul x40, x40, x5
	fadd x40, x6, x40
trace_ray_cont_b1770:
# B1770
	lw x5, 1(x39)
	bne	x5, x67, trace_ray_beqelse_b1772
# B1771
	lui x5, 260096
	fsub x40, x40, x5
trace_ray_beqelse_b1772:
# B1772
trace_ray_cont_b1773:
# B1773
	fmul x5, x66, x66
	fmul x38, x38, x40
	fsub x38, x5, x38
	fle x40, x38, zero
	beq	x40, zero, trace_ray_bneelse_b1775
# B1774
	la x39, min_caml_solver_dist
	lw x39, 0(x39)
	j trace_ray_cont_b1780 # adhoc jump(2)
trace_ray_bneelse_b1775:
# B1775
	lw x39, 6(x39)
	bne	x39, zero, trace_ray_beqelse_b1777
# B1776
	la x39, min_caml_solver_dist
	fsqrt x38, x38
	fsub x38, x66, x38
	lw x40, 4(x65)
	fmul x38, x38, x40
	sw x38, 0(x39)
	j trace_ray_cont_b1778 # adhoc jump(2)
trace_ray_beqelse_b1777:
# B1777
	la x39, min_caml_solver_dist
	fsqrt x38, x38
	fadd x38, x66, x38
	lw x40, 4(x65)
	fmul x38, x38, x40
	sw x38, 0(x39)
trace_ray_cont_b1778:
# B1778
	la x39, min_caml_solver_dist
	lw x39, 0(x39)
trace_ray_cont_b1781:
# B1781
	lui x38, 779469
	addi x38, x38, -819
	fle x38, x38, x39
	xori x38, x38, 1
# B1782
	addi x34, x34, 1
	bne	x38, zero, trace_ray_beqelse_b1784
	j trace_ray_cont_b1783 # adhoc jump(3)
trace_ray_beqelse_b1784:
# B1784
	lui x31, 246333
	addi x31, x31, 1802
	fadd x31, x39, x31
	la x38, min_caml_light
	lw x39, 0(x38)
	fmul x39, x39, x31
	lw x40, 0(x27)
	fadd x39, x39, x40
	lw x40, 1(x38)
	fmul x40, x40, x31
	lw x5, 1(x27)
	fadd x40, x40, x5
	lw x38, 2(x38)
	fmul x31, x38, x31
	lw x38, 2(x27)
	fadd x31, x31, x38
	mv x5, x37
	mv x65, x40
	mv x66, x31
	mv x38, zero
	mv x6, x39
	j	trace_ray_loop_b1787
trace_ray_bneelse_b1814:	#moved
# B1814
	addi x38, x38, 1
trace_ray_loop_b1787:
# B1787
	add x4, x5, x38
	lw x31, 0(x4)
	beq	x31, x12, trace_ray_bneelse_b1788
# B1789
	add x4, x13, x31
	lw x31, 0(x4)
	lw x39, 5(x31)
	lw x39, 0(x39)
	fsub x39, x6, x39
	lw x40, 5(x31)
	lw x40, 1(x40)
	fsub x40, x65, x40
	lw x67, 5(x31)
	lw x67, 2(x67)
	fsub x67, x66, x67
	lw x68, 1(x31)
	bne	x68, x11, trace_ray_beqelse_b1791
# B1790
	fabs x39, x39
	lw x68, 4(x31)
	lw x68, 0(x68)
	fle x39, x68, x39
	bne	x39, zero, trace_ray_beqelse_b1792
# B1793
	fabs x39, x40
	lw x40, 4(x31)
	lw x40, 1(x40)
	fle x39, x40, x39
	bne	x39, zero, trace_ray_beqelse_b1794
# B1795
	fabs x39, x67
	lw x40, 4(x31)
	lw x40, 2(x40)
	fle x39, x40, x39
	xori x39, x39, 1
	mv x40, x39
# B1796
	bne	x40, zero, trace_ray_beqelse_b1798
	j trace_ray_cont_b1797 # adhoc jump(3)
trace_ray_beqelse_b1798:
# B1798
	lw x31, 6(x31)
	j trace_ray_cont_b1813 # adhoc jump(2)
trace_ray_beqelse_b1794:
# B1794
trace_ray_beqelse_b1792:
# B1792
trace_ray_cont_b1797:
# B1797
	lw x31, 6(x31)
	xori x31, x31, 1
	j trace_ray_cont_b1813 # adhoc jump(2)
trace_ray_beqelse_b1791:
# B1791
	bne	x68, x14, trace_ray_beqelse_b1800
# B1799
	lw x68, 4(x31)
	lw x69, 0(x68)
	fmul x39, x69, x39
	lw x69, 1(x68)
	fmul x40, x69, x40
	fadd x39, x39, x40
	lw x40, 2(x68)
	fmul x40, x40, x67
	fadd x39, x39, x40
	lw x31, 6(x31)
	fle x39, zero, x39
	xori x39, x39, 1
	bne	x31, zero, trace_ray_beqelse_b1802
# B1801
	mv x31, x39
	j trace_ray_cont_b1803 # adhoc jump(2)
trace_ray_beqelse_b1802:
# B1802
	xori x31, x39, 1
trace_ray_cont_b1803:
# B1803
	xori x31, x31, 1
	j trace_ray_cont_b1813 # adhoc jump(2)
trace_ray_beqelse_b1800:
# B1800
	fmul x68, x39, x39
	lw x69, 4(x31)
	lw x69, 0(x69)
	fmul x68, x68, x69
	fmul x69, x40, x40
	lw x7, 4(x31)
	lw x7, 1(x7)
	fmul x69, x69, x7
	fadd x68, x68, x69
	fmul x69, x67, x67
	lw x7, 4(x31)
	lw x7, 2(x7)
	fmul x69, x69, x7
	fadd x68, x68, x69
	lw x69, 3(x31)
	bne	x69, zero, trace_ray_beqelse_b1805
# B1804
	mv x39, x68
	j trace_ray_cont_b1806 # adhoc jump(2)
trace_ray_beqelse_b1805:
# B1805
	fmul x69, x40, x67
	lw x7, 9(x31)
	lw x7, 0(x7)
	fmul x69, x69, x7
	fadd x68, x68, x69
	fmul x67, x67, x39
	lw x69, 9(x31)
	lw x69, 1(x69)
	fmul x67, x67, x69
	fadd x67, x68, x67
	fmul x39, x39, x40
	lw x40, 9(x31)
	lw x40, 2(x40)
	fmul x39, x39, x40
	fadd x39, x67, x39
trace_ray_cont_b1806:
# B1806
	lw x40, 1(x31)
	li x67, 3
	bne	x40, x67, trace_ray_beqelse_b1808
# B1807
	fsub x39, x39, x16
trace_ray_beqelse_b1808:
# B1808
trace_ray_cont_b1809:
# B1809
	lw x31, 6(x31)
	fle x39, zero, x39
	xori x39, x39, 1
	bne	x31, zero, trace_ray_beqelse_b1811
# B1810
	mv x31, x39
	j trace_ray_cont_b1812 # adhoc jump(2)
trace_ray_beqelse_b1811:
# B1811
	xori x31, x39, 1
trace_ray_cont_b1812:
# B1812
	xori x31, x31, 1
trace_ray_cont_b1813:
# B1813
	beq	x31, zero, trace_ray_bneelse_b1814
# B1815
# B1817
	j	trace_ray_loop_b1736
trace_ray_bneelse_b1788:
# B1788
# B1818
	mv x31, x11
# B1819
	bne	x31, zero, trace_ray_beqelse_b1821
	j trace_ray_cont_b1820 # adhoc jump(3)
trace_ray_beqelse_b1821:
# B1821
	mv x34, x11
# B1822
	bne	x34, zero, trace_ray_beqelse_b1824
	j trace_ray_cont_b1823 # adhoc jump(3)
trace_ray_beqelse_b1824:
# B1824
	mv x31, x11
# B1825
	bne	x31, zero, trace_ray_beqelse_b1827
	j trace_ray_cont_b1826 # adhoc jump(3)
trace_ray_beqelse_b1827:
# B1827
	j trace_ray_cont_b1833 # adhoc jump(2)
trace_ray_beqelse_b1767:
# B1767
	la x39, min_caml_solver_dist
	lw x39, 0(x39)
trace_ray_cont_b1780:
# B1780
	addi x34, x34, 1
trace_ray_cont_b1783:
# B1783
	add x4, x13, x31
	lw x31, 0(x4)
	lw x31, 6(x31)
	beq	x31, zero, trace_ray_bneelse_b1785
# B1786
	j	trace_ray_loop_b1736
trace_ray_bneelse_b1785:
# B1785
trace_ray_bneelse_b1737:
# B1737
trace_ray_cont_b1820:
# B1820
	addi x35, x35, 1
	j	trace_ray_loop_b1733
trace_ray_bneelse_b1734:
# B1734
trace_ray_cont_b1823:
# B1823
	j	trace_ray_loop_b1588
trace_ray_beqelse_b1672:
# B1672
	lw x6, 0(x34)
trace_ray_cont_b1685:
# B1685
	addi x39, x39, 1
trace_ray_cont_b1688:
# B1688
	add x4, x13, x36
	lw x36, 0(x4)
	lw x36, 6(x36)
	beq	x36, zero, trace_ray_bneelse_b1690
# B1691
	j	trace_ray_loop_b1641
trace_ray_bneelse_b1690:
# B1690
trace_ray_bneelse_b1642:
# B1642
trace_ray_cont_b1725:
# B1725
	addi x37, x37, 1
	j	trace_ray_loop_b1638
trace_ray_bneelse_b1639:
# B1639
trace_ray_cont_b1728:
# B1728
	addi x32, x32, 1
	j trace_ray_cont_b1731 # adhoc jump(2)
trace_ray_beqelse_b1628:
# B1628
trace_ray_beqelse_b1621:
# B1621
trace_ray_cont_b1634:
# B1634
	addi x32, x32, 1
trace_ray_cont_b1731:
# B1731
	j	trace_ray_loop_b1588
trace_ray_bneelse_b1589:
# B1589
trace_ray_cont_b1826:
# B1826
	lw x12, 0(x30)
	lw x16, 0(x26)
	lw x31, 0(x12)
	fmul x16, x16, x31
	lw x31, 1(x26)
	lw x32, 1(x12)
	fmul x31, x31, x32
	fadd x16, x16, x31
	lw x31, 2(x26)
	lw x12, 2(x12)
	fmul x12, x31, x12
	fadd x12, x16, x12
	lw x16, 2(x23)
	fmul x23, x16, x20
	fmul x12, x23, x12
	lw x23, 0(x30)
	lw x30, 0(x29)
	lw x31, 0(x23)
	fmul x30, x30, x31
	lw x31, 1(x29)
	lw x32, 1(x23)
	fmul x31, x31, x32
	fadd x30, x30, x31
	lw x31, 2(x29)
	lw x23, 2(x23)
	fmul x23, x31, x23
	fadd x23, x30, x23
	fmul x16, x16, x23
	fle x23, x12, zero
	bne	x23, zero, trace_ray_beqelse_b1828
# B1829
	lw x23, 0(x18)
	lw x30, 0(x24)
	fmul x30, x12, x30
	fadd x23, x23, x30
	sw x23, 0(x18)
	lw x23, 1(x18)
	lw x30, 1(x24)
	fmul x30, x12, x30
	fadd x23, x23, x30
	sw x23, 1(x18)
	lw x23, 2(x18)
	lw x30, 2(x24)
	fmul x12, x12, x30
	fadd x12, x23, x12
	sw x12, 2(x18)
trace_ray_beqelse_b1828:
# B1828
trace_ray_cont_b1830:
# B1830
	fle x12, x16, zero
	bne	x12, zero, trace_ray_beqelse_b1831
# B1832
	fmul x12, x16, x16
	fmul x12, x12, x12
	fmul x12, x12, x28
	lw x16, 0(x18)
	fadd x16, x16, x12
	sw x16, 0(x18)
	lw x16, 1(x18)
	fadd x16, x16, x12
	sw x16, 1(x18)
	lw x16, 2(x18)
	fadd x12, x16, x12
	sw x12, 2(x18)
trace_ray_beqelse_b1831:
# B1831
trace_ray_beqelse_b1587:
# B1587
trace_ray_beqelse_b1581:
# B1581
trace_ray_cont_b1584:
# B1584
trace_ray_cont_b1833:
# B1833
	addi x17, x17, -1
	j	trace_ray_loop_b1366
trace_ray_bleelse_b1368:
# B1368
# B1834
	lui x10, 253133
	addi x10, x10, -819
	fle x10, x102, x10
	beq	x10, zero, trace_ray_bneelse_b1836
# B1835
	lw	ra, 0(x2)
	lw	x101, 1(x2)
	lw	x102, 2(x2)
	lw	x103, 3(x2)
	lw	x104, 4(x2)
	lw	x105, 5(x2)
	lw	x106, 6(x2)
	lw	x107, 7(x2)
	lw	x108, 8(x2)
	lw	x109, 9(x2)
	lw	x110, 10(x2)
	lw	x111, 11(x2)
	lw	x112, 12(x2)
	lw	x113, 13(x2)
	lw	x114, 14(x2)
	lw	x115, 15(x2)
	lw	x116, 16(x2)
	lw	x117, 17(x2)
	ret
trace_ray_bneelse_b1836:
# B1836
	addi x10, x101, 1
	bge	x101, x106, trace_ray_bgtelse_b1837
# B1838
	add x4, x107, x10
	sw x12, 0(x4)
trace_ray_bgtelse_b1837:
# B1837
trace_ray_cont_b1839:
# B1839
	beq	x22, x14, trace_ray_bneelse_b1840
# B1841
	lw	ra, 0(x2)
	lw	x101, 1(x2)
	lw	x102, 2(x2)
	lw	x103, 3(x2)
	lw	x104, 4(x2)
	lw	x105, 5(x2)
	lw	x106, 6(x2)
	lw	x107, 7(x2)
	lw	x108, 8(x2)
	lw	x109, 9(x2)
	lw	x110, 10(x2)
	lw	x111, 11(x2)
	lw	x112, 12(x2)
	lw	x113, 13(x2)
	lw	x114, 14(x2)
	lw	x115, 15(x2)
	lw	x116, 16(x2)
	lw	x117, 17(x2)
	ret
trace_ray_bleelse_b892:
# B892
	lw	ra, 0(x2)
	lw	x101, 1(x2)
	lw	x102, 2(x2)
	lw	x103, 3(x2)
	lw	x104, 4(x2)
	lw	x105, 5(x2)
	lw	x106, 6(x2)
	lw	x107, 7(x2)
	lw	x108, 8(x2)
	lw	x109, 9(x2)
	lw	x110, 10(x2)
	lw	x111, 11(x2)
	lw	x112, 12(x2)
	lw	x113, 13(x2)
	lw	x114, 14(x2)
	lw	x115, 15(x2)
	lw	x116, 16(x2)
	lw	x117, 17(x2)
	ret
trace_diffuse_ray.3077:
# B1842
# B1843
	la x10, min_caml_tmin
	lui x100, 321255
	addi x100, x100, -1240
	sw x100, 0(x10)
	la x100, min_caml_or_net
	lw x11, 0(x100)
	mv x12, zero
	mv x14, x5
	mv x13, x11
trace_diffuse_ray_loop_b1844:
# B1844
	add x4, x13, x12
	lw x11, 0(x4)
	lw x15, 0(x11)
	li x16, 1
	li x17, -1
	la x18, min_caml_objects
	li x19, 2
	la x20, min_caml_intersection_point
	la x21, min_caml_intersected_object_id
	la x22, min_caml_intsec_rectside
	li x23, 3
	lui x24, 260096
	beq	x15, x17, trace_diffuse_ray_bneelse_b1845
# B1846
	li x25, 99
	la x26, min_caml_solver_dist
	li x27, 3
	bne	x15, x25, trace_diffuse_ray_beqelse_b1848
# B1847
	mv x28, x16
	mv x30, x14
	mv x29, x11
trace_diffuse_ray_loop_b1849:
# B1849
	add x4, x29, x28
	lw x11, 0(x4)
	beq	x11, x17, trace_diffuse_ray_bneelse_b1850
# B1851
	la x15, min_caml_and_net
	add x4, x15, x11
	lw x11, 0(x4)
	mv x15, zero
	mv x23, x11
	mv x24, x30
trace_diffuse_ray_beqelse_b1893:	#moved
# B1893
trace_diffuse_ray_loop_b1852:
# B1852
	lw x11, 0(x24)
	add x4, x23, x15
	lw x25, 0(x4)
	beq	x25, x17, trace_diffuse_ray_bneelse_b1853
# B1854
	add x4, x18, x25
	lw x31, 0(x4)
	lw x32, 10(x31)
	lw x33, 0(x32)
	lw x34, 1(x32)
	lw x35, 2(x32)
	lw x36, 1(x24)
	add x4, x36, x25
	lw x36, 0(x4)
	lw x37, 1(x31)
	bne	x37, x16, trace_diffuse_ray_beqelse_b1856
# B1855
	lw x32, 0(x24)
	lw x37, 0(x36)
	fsub x37, x37, x33
	lw x38, 1(x36)
	fmul x37, x37, x38
	lw x38, 1(x32)
	fmul x38, x37, x38
	fadd x38, x38, x34
	fabs x38, x38
	lw x39, 4(x31)
	lw x39, 1(x39)
	fle x38, x39, x38
	bne	x38, zero, trace_diffuse_ray_beqelse_b1857
# B1858
	lw x38, 2(x32)
	fmul x38, x37, x38
	fadd x38, x38, x35
	fabs x38, x38
	lw x39, 4(x31)
	lw x39, 2(x39)
	fle x38, x39, x38
	bne	x38, zero, trace_diffuse_ray_beqelse_b1859
# B1860
	lw x38, 1(x36)
	feq x38, x38, zero
	xori x38, x38, 1
	mv x39, x38
# B1861
	bne	x39, zero, trace_diffuse_ray_beqelse_b1863
	j trace_diffuse_ray_cont_b1862 # adhoc jump(3)
trace_diffuse_ray_beqelse_b1863:
# B1863
	la x31, min_caml_solver_dist
	sw x37, 0(x31)
	li x31, 1
	addi x15, x15, 1
	j trace_diffuse_ray_cont_b1891 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1859:
# B1859
trace_diffuse_ray_beqelse_b1857:
# B1857
trace_diffuse_ray_cont_b1862:
# B1862
	lw x37, 2(x36)
	fsub x37, x37, x34
	lw x38, 3(x36)
	fmul x37, x37, x38
	lw x38, 0(x32)
	fmul x38, x37, x38
	fadd x38, x38, x33
	fabs x38, x38
	lw x39, 4(x31)
	lw x39, 0(x39)
	fle x38, x39, x38
	bne	x38, zero, trace_diffuse_ray_beqelse_b1864
# B1865
	lw x38, 2(x32)
	fmul x38, x37, x38
	fadd x38, x38, x35
	fabs x38, x38
	lw x39, 4(x31)
	lw x39, 2(x39)
	fle x38, x39, x38
	bne	x38, zero, trace_diffuse_ray_beqelse_b1866
# B1867
	lw x38, 3(x36)
	feq x38, x38, zero
	xori x38, x38, 1
	mv x39, x38
# B1868
	bne	x39, zero, trace_diffuse_ray_beqelse_b1870
	j trace_diffuse_ray_cont_b1869 # adhoc jump(3)
trace_diffuse_ray_beqelse_b1870:
# B1870
	la x31, min_caml_solver_dist
	sw x37, 0(x31)
	li x31, 2
	addi x15, x15, 1
	j trace_diffuse_ray_cont_b1891 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1866:
# B1866
trace_diffuse_ray_beqelse_b1864:
# B1864
trace_diffuse_ray_cont_b1869:
# B1869
	lw x37, 4(x36)
	fsub x35, x37, x35
	lw x37, 5(x36)
	fmul x35, x35, x37
	lw x37, 0(x32)
	fmul x37, x35, x37
	fadd x33, x37, x33
	fabs x33, x33
	lw x37, 4(x31)
	lw x37, 0(x37)
	fle x33, x37, x33
	bne	x33, zero, trace_diffuse_ray_beqelse_b1871
# B1872
	lw x32, 1(x32)
	fmul x32, x35, x32
	fadd x32, x32, x34
	fabs x32, x32
	lw x31, 4(x31)
	lw x31, 1(x31)
	fle x31, x31, x32
	bne	x31, zero, trace_diffuse_ray_beqelse_b1873
# B1874
	lw x31, 5(x36)
	feq x31, x31, zero
	xori x31, x31, 1
	mv x32, x31
# B1875
	bne	x32, zero, trace_diffuse_ray_beqelse_b1877
	j trace_diffuse_ray_cont_b1876 # adhoc jump(3)
trace_diffuse_ray_beqelse_b1877:
# B1877
	la x31, min_caml_solver_dist
	sw x35, 0(x31)
	li x31, 3
	addi x15, x15, 1
	j trace_diffuse_ray_cont_b1891 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1873:
# B1873
trace_diffuse_ray_beqelse_b1871:
# B1871
trace_diffuse_ray_cont_b1876:
# B1876
	mv x31, zero
	addi x15, x15, 1
	j trace_diffuse_ray_cont_b1890 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1856:
# B1856
	bne	x37, x19, trace_diffuse_ray_beqelse_b1879
# B1878
	lw x31, 0(x36)
	fle x31, zero, x31
	beq	x31, zero, trace_diffuse_ray_bneelse_b1881
# B1880
	mv x31, zero
	addi x15, x15, 1
	j trace_diffuse_ray_cont_b1890 # adhoc jump(2)
trace_diffuse_ray_bneelse_b1881:
# B1881
	la x31, min_caml_solver_dist
	lw x33, 0(x36)
	lw x32, 3(x32)
	fmul x32, x33, x32
	sw x32, 0(x31)
	li x31, 1
	addi x15, x15, 1
	j trace_diffuse_ray_cont_b1891 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1879:
# B1879
	lw x37, 0(x36)
	feq x38, x37, zero
	bne	x38, zero, trace_diffuse_ray_beqelse_b1883
# B1882
	lw x38, 1(x36)
	fmul x33, x38, x33
	lw x38, 2(x36)
	fmul x34, x38, x34
	fadd x33, x33, x34
	lw x34, 3(x36)
	fmul x34, x34, x35
	fadd x33, x33, x34
	lw x32, 3(x32)
	fmul x34, x33, x33
	fmul x32, x37, x32
	fsub x32, x34, x32
	fle x34, x32, zero
	beq	x34, zero, trace_diffuse_ray_bneelse_b1885
# B1884
	mv x31, zero
	addi x15, x15, 1
	j trace_diffuse_ray_cont_b1890 # adhoc jump(2)
trace_diffuse_ray_bneelse_b1885:
# B1885
	lw x31, 6(x31)
	bne	x31, zero, trace_diffuse_ray_beqelse_b1887
# B1886
	la x31, min_caml_solver_dist
	fsqrt x32, x32
	fsub x32, x33, x32
	lw x33, 4(x36)
	fmul x32, x32, x33
	sw x32, 0(x31)
	j trace_diffuse_ray_cont_b1888 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1887:
# B1887
	la x31, min_caml_solver_dist
	fsqrt x32, x32
	fadd x32, x33, x32
	lw x33, 4(x36)
	fmul x32, x32, x33
	sw x32, 0(x31)
trace_diffuse_ray_cont_b1888:
# B1888
	li x31, 1
	addi x15, x15, 1
trace_diffuse_ray_cont_b1891:
# B1891
	lw x32, 0(x26)
	fle x33, x32, zero
	bne	x33, zero, trace_diffuse_ray_beqelse_b1894
# B1895
	lw x33, 0(x10)
	fle x33, x33, x32
	bne	x33, zero, trace_diffuse_ray_beqelse_b1896
# B1897
	lui x33, 246333
	addi x33, x33, 1802
	fadd x32, x32, x33
	lw x33, 0(x11)
	fmul x33, x33, x32
	la x34, min_caml_startp_fast
	lw x35, 0(x34)
	fadd x33, x33, x35
	lw x35, 1(x11)
	fmul x35, x35, x32
	lw x36, 1(x34)
	fadd x35, x35, x36
	lw x11, 2(x11)
	fmul x11, x11, x32
	lw x34, 2(x34)
	fadd x11, x11, x34
	mv x37, x33
	mv x36, x23
	mv x38, x35
	mv x34, zero
	mv x39, x11
	j	trace_diffuse_ray_loop_b1898
trace_diffuse_ray_bneelse_b1925:	#moved
# B1925
	addi x34, x34, 1
trace_diffuse_ray_loop_b1898:
# B1898
	add x4, x36, x34
	lw x40, 0(x4)
	beq	x40, x17, trace_diffuse_ray_bneelse_b1899
# B1900
	add x4, x18, x40
	lw x40, 0(x4)
	lw x6, 5(x40)
	lw x6, 0(x6)
	fsub x6, x37, x6
	lw x66, 5(x40)
	lw x66, 1(x66)
	fsub x66, x38, x66
	lw x67, 5(x40)
	lw x67, 2(x67)
	fsub x67, x39, x67
	lw x68, 1(x40)
	bne	x68, x16, trace_diffuse_ray_beqelse_b1902
# B1901
	fabs x6, x6
	lw x68, 4(x40)
	lw x68, 0(x68)
	fle x6, x68, x6
	bne	x6, zero, trace_diffuse_ray_beqelse_b1903
# B1904
	fabs x6, x66
	lw x66, 4(x40)
	lw x66, 1(x66)
	fle x6, x66, x6
	bne	x6, zero, trace_diffuse_ray_beqelse_b1905
# B1906
	fabs x6, x67
	lw x66, 4(x40)
	lw x66, 2(x66)
	fle x6, x66, x6
	xori x6, x6, 1
	mv x66, x6
# B1907
	bne	x66, zero, trace_diffuse_ray_beqelse_b1909
	j trace_diffuse_ray_cont_b1908 # adhoc jump(3)
trace_diffuse_ray_beqelse_b1909:
# B1909
	lw x40, 6(x40)
	j trace_diffuse_ray_cont_b1924 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1905:
# B1905
trace_diffuse_ray_beqelse_b1903:
# B1903
trace_diffuse_ray_cont_b1908:
# B1908
	lw x40, 6(x40)
	xori x40, x40, 1
	j trace_diffuse_ray_cont_b1924 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1902:
# B1902
	bne	x68, x19, trace_diffuse_ray_beqelse_b1911
# B1910
	lw x68, 4(x40)
	lw x69, 0(x68)
	fmul x6, x69, x6
	lw x69, 1(x68)
	fmul x66, x69, x66
	fadd x6, x6, x66
	lw x66, 2(x68)
	fmul x66, x66, x67
	fadd x6, x6, x66
	lw x40, 6(x40)
	fle x6, zero, x6
	xori x6, x6, 1
	bne	x40, zero, trace_diffuse_ray_beqelse_b1913
# B1912
	mv x40, x6
	j trace_diffuse_ray_cont_b1914 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1913:
# B1913
	xori x40, x6, 1
trace_diffuse_ray_cont_b1914:
# B1914
	xori x40, x40, 1
	j trace_diffuse_ray_cont_b1924 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1911:
# B1911
	fmul x68, x6, x6
	lw x69, 4(x40)
	lw x69, 0(x69)
	fmul x68, x68, x69
	fmul x69, x66, x66
	lw x7, 4(x40)
	lw x7, 1(x7)
	fmul x69, x69, x7
	fadd x68, x68, x69
	fmul x69, x67, x67
	lw x7, 4(x40)
	lw x7, 2(x7)
	fmul x69, x69, x7
	fadd x68, x68, x69
	lw x69, 3(x40)
	bne	x69, zero, trace_diffuse_ray_beqelse_b1916
# B1915
	mv x6, x68
	j trace_diffuse_ray_cont_b1917 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1916:
# B1916
	fmul x69, x66, x67
	lw x7, 9(x40)
	lw x7, 0(x7)
	fmul x69, x69, x7
	fadd x68, x68, x69
	fmul x67, x67, x6
	lw x69, 9(x40)
	lw x69, 1(x69)
	fmul x67, x67, x69
	fadd x67, x68, x67
	fmul x6, x6, x66
	lw x66, 9(x40)
	lw x66, 2(x66)
	fmul x6, x6, x66
	fadd x6, x67, x6
trace_diffuse_ray_cont_b1917:
# B1917
	lw x66, 1(x40)
	bne	x66, x27, trace_diffuse_ray_beqelse_b1919
# B1918
	lui x66, 260096
	fsub x6, x6, x66
trace_diffuse_ray_beqelse_b1919:
# B1919
trace_diffuse_ray_cont_b1920:
# B1920
	lw x40, 6(x40)
	fle x6, zero, x6
	xori x6, x6, 1
	bne	x40, zero, trace_diffuse_ray_beqelse_b1922
# B1921
	mv x40, x6
	j trace_diffuse_ray_cont_b1923 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1922:
# B1922
	xori x40, x6, 1
trace_diffuse_ray_cont_b1923:
# B1923
	xori x40, x40, 1
trace_diffuse_ray_cont_b1924:
# B1924
	beq	x40, zero, trace_diffuse_ray_bneelse_b1925
# B1926
# B1928
	j trace_diffuse_ray_cont_b1930 # adhoc jump(2)
trace_diffuse_ray_bneelse_b1899:
# B1899
# B1929
	sw x32, 0(x10)
	sw x33, 0(x20)
	sw x35, 1(x20)
	sw x11, 2(x20)
	sw x25, 0(x21)
	sw x31, 0(x22)
trace_diffuse_ray_beqelse_b1896:
# B1896
trace_diffuse_ray_beqelse_b1894:
# B1894
trace_diffuse_ray_cont_b1930:
# B1930
	j	trace_diffuse_ray_loop_b1852
trace_diffuse_ray_beqelse_b1883:
# B1883
	mv x31, zero
	addi x15, x15, 1
trace_diffuse_ray_cont_b1890:
# B1890
	add x4, x18, x25
	lw x11, 0(x4)
	lw x11, 6(x11)
	bne	x11, zero, trace_diffuse_ray_beqelse_b1893
# B1892
trace_diffuse_ray_bneelse_b1853:
# B1853
trace_diffuse_ray_cont_b1931:
# B1931
	addi x28, x28, 1
	j	trace_diffuse_ray_loop_b1849
trace_diffuse_ray_bneelse_b1850:
# B1850
	j trace_diffuse_ray_cont_b2054 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1848:
# B1848
	la x18, min_caml_objects
	add x4, x18, x15
	lw x25, 0(x4)
	lw x28, 10(x25)
	lw x29, 0(x28)
	lw x30, 1(x28)
	li x31, 2
	lw x32, 2(x28)
	lw x33, 1(x14)
	add x4, x33, x15
	lw x15, 0(x4)
	lw x33, 1(x25)
	bne	x33, x16, trace_diffuse_ray_beqelse_b1933
# B1932
	lw x28, 0(x14)
	lw x33, 0(x15)
	fsub x33, x33, x29
	lw x34, 1(x15)
	fmul x33, x33, x34
	lw x34, 1(x28)
	fmul x34, x33, x34
	fadd x34, x34, x30
	fabs x34, x34
	lw x35, 4(x25)
	lw x35, 1(x35)
	fle x34, x35, x34
	bne	x34, zero, trace_diffuse_ray_beqelse_b1934
# B1935
	lw x34, 2(x28)
	fmul x34, x33, x34
	fadd x34, x34, x32
	fabs x34, x34
	lw x35, 4(x25)
	lw x35, 2(x35)
	fle x34, x35, x34
	bne	x34, zero, trace_diffuse_ray_beqelse_b1936
# B1937
	lw x34, 1(x15)
	feq x34, x34, zero
	xori x34, x34, 1
	mv x35, x34
# B1938
	bne	x35, zero, trace_diffuse_ray_beqelse_b1940
	j trace_diffuse_ray_cont_b1939 # adhoc jump(3)
trace_diffuse_ray_beqelse_b1940:
# B1940
	sw x33, 0(x26)
	mv x19, x16
	j trace_diffuse_ray_cont_b1966 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1936:
# B1936
trace_diffuse_ray_beqelse_b1934:
# B1934
trace_diffuse_ray_cont_b1939:
# B1939
	lw x33, 2(x15)
	fsub x33, x33, x30
	lw x34, 3(x15)
	fmul x33, x33, x34
	lw x34, 0(x28)
	fmul x34, x33, x34
	fadd x34, x34, x29
	fabs x34, x34
	lw x35, 4(x25)
	lw x35, 0(x35)
	fle x34, x35, x34
	bne	x34, zero, trace_diffuse_ray_beqelse_b1941
# B1942
	lw x34, 2(x28)
	fmul x34, x33, x34
	fadd x34, x34, x32
	fabs x34, x34
	lw x35, 4(x25)
	lw x35, 2(x35)
	fle x34, x35, x34
	bne	x34, zero, trace_diffuse_ray_beqelse_b1943
# B1944
	lw x34, 3(x15)
	feq x34, x34, zero
	xori x34, x34, 1
	mv x35, x34
# B1945
	bne	x35, zero, trace_diffuse_ray_beqelse_b1947
	j trace_diffuse_ray_cont_b1946 # adhoc jump(3)
trace_diffuse_ray_beqelse_b1947:
# B1947
	sw x33, 0(x26)
	j trace_diffuse_ray_cont_b1966 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1943:
# B1943
trace_diffuse_ray_beqelse_b1941:
# B1941
trace_diffuse_ray_cont_b1946:
# B1946
	lw x19, 4(x15)
	fsub x19, x19, x32
	lw x32, 5(x15)
	fmul x19, x19, x32
	lw x32, 0(x28)
	fmul x32, x19, x32
	fadd x29, x32, x29
	fabs x29, x29
	lw x32, 4(x25)
	lw x32, 0(x32)
	fle x29, x32, x29
	bne	x29, zero, trace_diffuse_ray_beqelse_b1948
# B1949
	lw x28, 1(x28)
	fmul x28, x19, x28
	fadd x28, x28, x30
	fabs x28, x28
	lw x25, 4(x25)
	lw x25, 1(x25)
	fle x25, x25, x28
	bne	x25, zero, trace_diffuse_ray_beqelse_b1950
# B1951
	lw x15, 5(x15)
	feq x15, x15, zero
	xori x15, x15, 1
	mv x25, x15
# B1952
	bne	x25, zero, trace_diffuse_ray_beqelse_b1954
	j trace_diffuse_ray_cont_b1953 # adhoc jump(3)
trace_diffuse_ray_beqelse_b1954:
# B1954
	sw x19, 0(x26)
	mv x19, x27
	j trace_diffuse_ray_cont_b1966 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1950:
# B1950
trace_diffuse_ray_beqelse_b1948:
# B1948
trace_diffuse_ray_cont_b1953:
# B1953
	j trace_diffuse_ray_cont_b1967 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1933:
# B1933
	bne	x33, x31, trace_diffuse_ray_beqelse_b1956
# B1955
	lw x19, 0(x15)
	fle x19, zero, x19
	bne	x19, zero, trace_diffuse_ray_beqelse_b1957
# B1958
	lw x15, 0(x15)
	lw x19, 3(x28)
	fmul x15, x15, x19
	sw x15, 0(x26)
	mv x19, x16
	j trace_diffuse_ray_cont_b1966 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1957:
# B1957
	j trace_diffuse_ray_cont_b1967 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1956:
# B1956
	lw x19, 0(x15)
	feq x27, x19, zero
	bne	x27, zero, trace_diffuse_ray_beqelse_b1960
# B1959
	lw x27, 1(x15)
	fmul x27, x27, x29
	lw x29, 2(x15)
	fmul x29, x29, x30
	fadd x27, x27, x29
	lw x29, 3(x15)
	fmul x29, x29, x32
	fadd x27, x27, x29
	lw x28, 3(x28)
	fmul x29, x27, x27
	fmul x19, x19, x28
	fsub x19, x29, x19
	fle x28, x19, zero
	bne	x28, zero, trace_diffuse_ray_beqelse_b1961
# B1962
	lw x25, 6(x25)
	fsqrt x19, x19
	bne	x25, zero, trace_diffuse_ray_beqelse_b1964
# B1963
	fsub x19, x27, x19
	lw x15, 4(x15)
	fmul x15, x19, x15
	sw x15, 0(x26)
	j trace_diffuse_ray_cont_b1965 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1964:
# B1964
	fadd x19, x27, x19
	lw x15, 4(x15)
	fmul x15, x19, x15
	sw x15, 0(x26)
trace_diffuse_ray_cont_b1965:
# B1965
	mv x19, x16
trace_diffuse_ray_cont_b1966:
# B1966
	bne	x19, zero, trace_diffuse_ray_beqelse_b1968
	j trace_diffuse_ray_cont_b1967 # adhoc jump(3)
trace_diffuse_ray_beqelse_b1968:
# B1968
	lw x15, 0(x26)
	lw x19, 0(x10)
	fle x15, x19, x15
	bne	x15, zero, trace_diffuse_ray_beqelse_b1969
# B1970
	mv x19, x16
	mv x27, x14
	mv x25, x11
trace_diffuse_ray_loop_b1971:
# B1971
	add x4, x25, x19
	lw x11, 0(x4)
	beq	x11, x17, trace_diffuse_ray_bneelse_b1972
# B1973
	la x15, min_caml_and_net
	add x4, x15, x11
	lw x11, 0(x4)
	mv x15, zero
	mv x29, x27
	mv x28, x11
trace_diffuse_ray_beqelse_b2015:	#moved
# B2015
trace_diffuse_ray_loop_b1974:
# B1974
	lw x11, 0(x29)
	add x4, x28, x15
	lw x30, 0(x4)
	beq	x30, x17, trace_diffuse_ray_bneelse_b1975
# B1976
	add x4, x18, x30
	lw x32, 0(x4)
	lw x33, 10(x32)
	lw x34, 0(x33)
	lw x35, 1(x33)
	lw x36, 2(x33)
	lw x37, 1(x29)
	add x4, x37, x30
	lw x37, 0(x4)
	lw x38, 1(x32)
	bne	x38, x16, trace_diffuse_ray_beqelse_b1978
# B1977
	lw x33, 0(x29)
	lw x38, 0(x37)
	fsub x38, x38, x34
	lw x39, 1(x37)
	fmul x38, x38, x39
	lw x39, 1(x33)
	fmul x39, x38, x39
	fadd x39, x39, x35
	fabs x39, x39
	lw x40, 4(x32)
	lw x40, 1(x40)
	fle x39, x40, x39
	bne	x39, zero, trace_diffuse_ray_beqelse_b1979
# B1980
	lw x39, 2(x33)
	fmul x39, x38, x39
	fadd x39, x39, x36
	fabs x39, x39
	lw x40, 4(x32)
	lw x40, 2(x40)
	fle x39, x40, x39
	bne	x39, zero, trace_diffuse_ray_beqelse_b1981
# B1982
	lw x39, 1(x37)
	feq x39, x39, zero
	xori x39, x39, 1
	mv x40, x39
# B1983
	bne	x40, zero, trace_diffuse_ray_beqelse_b1985
	j trace_diffuse_ray_cont_b1984 # adhoc jump(3)
trace_diffuse_ray_beqelse_b1985:
# B1985
	sw x38, 0(x26)
	li x32, 1
	addi x15, x15, 1
	j trace_diffuse_ray_cont_b2013 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1981:
# B1981
trace_diffuse_ray_beqelse_b1979:
# B1979
trace_diffuse_ray_cont_b1984:
# B1984
	lw x38, 2(x37)
	fsub x38, x38, x35
	lw x39, 3(x37)
	fmul x38, x38, x39
	lw x39, 0(x33)
	fmul x39, x38, x39
	fadd x39, x39, x34
	fabs x39, x39
	lw x40, 4(x32)
	lw x40, 0(x40)
	fle x39, x40, x39
	bne	x39, zero, trace_diffuse_ray_beqelse_b1986
# B1987
	lw x39, 2(x33)
	fmul x39, x38, x39
	fadd x39, x39, x36
	fabs x39, x39
	lw x40, 4(x32)
	lw x40, 2(x40)
	fle x39, x40, x39
	bne	x39, zero, trace_diffuse_ray_beqelse_b1988
# B1989
	lw x39, 3(x37)
	feq x39, x39, zero
	xori x39, x39, 1
	mv x40, x39
# B1990
	bne	x40, zero, trace_diffuse_ray_beqelse_b1992
	j trace_diffuse_ray_cont_b1991 # adhoc jump(3)
trace_diffuse_ray_beqelse_b1992:
# B1992
	sw x38, 0(x26)
	li x32, 2
	addi x15, x15, 1
	j trace_diffuse_ray_cont_b2013 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1988:
# B1988
trace_diffuse_ray_beqelse_b1986:
# B1986
trace_diffuse_ray_cont_b1991:
# B1991
	lw x38, 4(x37)
	fsub x36, x38, x36
	lw x38, 5(x37)
	fmul x36, x36, x38
	lw x38, 0(x33)
	fmul x38, x36, x38
	fadd x34, x38, x34
	fabs x34, x34
	lw x38, 4(x32)
	lw x38, 0(x38)
	fle x34, x38, x34
	bne	x34, zero, trace_diffuse_ray_beqelse_b1993
# B1994
	lw x33, 1(x33)
	fmul x33, x36, x33
	fadd x33, x33, x35
	fabs x33, x33
	lw x32, 4(x32)
	lw x32, 1(x32)
	fle x32, x32, x33
	bne	x32, zero, trace_diffuse_ray_beqelse_b1995
# B1996
	lw x32, 5(x37)
	feq x32, x32, zero
	xori x32, x32, 1
	mv x33, x32
# B1997
	bne	x33, zero, trace_diffuse_ray_beqelse_b1999
	j trace_diffuse_ray_cont_b1998 # adhoc jump(3)
trace_diffuse_ray_beqelse_b1999:
# B1999
	sw x36, 0(x26)
	li x32, 3
	addi x15, x15, 1
	j trace_diffuse_ray_cont_b2013 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1995:
# B1995
trace_diffuse_ray_beqelse_b1993:
# B1993
trace_diffuse_ray_cont_b1998:
# B1998
	mv x32, zero
	addi x15, x15, 1
	j trace_diffuse_ray_cont_b2012 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1978:
# B1978
	bne	x38, x31, trace_diffuse_ray_beqelse_b2001
# B2000
	lw x32, 0(x37)
	fle x32, zero, x32
	beq	x32, zero, trace_diffuse_ray_bneelse_b2003
# B2002
	mv x32, zero
	addi x15, x15, 1
	j trace_diffuse_ray_cont_b2012 # adhoc jump(2)
trace_diffuse_ray_bneelse_b2003:
# B2003
	lw x32, 0(x37)
	lw x33, 3(x33)
	fmul x32, x32, x33
	sw x32, 0(x26)
	li x32, 1
	addi x15, x15, 1
	j trace_diffuse_ray_cont_b2013 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2001:
# B2001
	lw x38, 0(x37)
	feq x39, x38, zero
	bne	x39, zero, trace_diffuse_ray_beqelse_b2005
# B2004
	lw x39, 1(x37)
	fmul x34, x39, x34
	lw x39, 2(x37)
	fmul x35, x39, x35
	fadd x34, x34, x35
	lw x35, 3(x37)
	fmul x35, x35, x36
	fadd x34, x34, x35
	lw x33, 3(x33)
	fmul x35, x34, x34
	fmul x33, x38, x33
	fsub x33, x35, x33
	fle x35, x33, zero
	beq	x35, zero, trace_diffuse_ray_bneelse_b2007
# B2006
	mv x32, zero
	addi x15, x15, 1
	j trace_diffuse_ray_cont_b2012 # adhoc jump(2)
trace_diffuse_ray_bneelse_b2007:
# B2007
	lw x32, 6(x32)
	bne	x32, zero, trace_diffuse_ray_beqelse_b2009
# B2008
	fsqrt x32, x33
	fsub x32, x34, x32
	lw x33, 4(x37)
	fmul x32, x32, x33
	sw x32, 0(x26)
	j trace_diffuse_ray_cont_b2010 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2009:
# B2009
	fsqrt x32, x33
	fadd x32, x34, x32
	lw x33, 4(x37)
	fmul x32, x32, x33
	sw x32, 0(x26)
trace_diffuse_ray_cont_b2010:
# B2010
	li x32, 1
	addi x15, x15, 1
trace_diffuse_ray_cont_b2013:
# B2013
	lw x33, 0(x26)
	fle x34, x33, zero
	bne	x34, zero, trace_diffuse_ray_beqelse_b2016
# B2017
	lw x34, 0(x10)
	fle x34, x34, x33
	bne	x34, zero, trace_diffuse_ray_beqelse_b2018
# B2019
	lui x34, 246333
	addi x34, x34, 1802
	fadd x33, x33, x34
	lw x34, 0(x11)
	fmul x34, x34, x33
	la x35, min_caml_startp_fast
	lw x36, 0(x35)
	fadd x34, x34, x36
	lw x36, 1(x11)
	fmul x36, x36, x33
	lw x37, 1(x35)
	fadd x36, x36, x37
	lw x11, 2(x11)
	fmul x11, x11, x33
	lw x35, 2(x35)
	fadd x11, x11, x35
	mv x37, x28
	mv x40, x11
	mv x35, zero
	mv x38, x34
	mv x39, x36
	j	trace_diffuse_ray_loop_b2020
trace_diffuse_ray_bneelse_b2047:	#moved
# B2047
	addi x35, x35, 1
trace_diffuse_ray_loop_b2020:
# B2020
	add x4, x37, x35
	lw x6, 0(x4)
	beq	x6, x17, trace_diffuse_ray_bneelse_b2021
# B2022
	add x4, x18, x6
	lw x6, 0(x4)
	lw x66, 5(x6)
	lw x66, 0(x66)
	fsub x66, x38, x66
	lw x67, 5(x6)
	lw x67, 1(x67)
	fsub x67, x39, x67
	lw x68, 5(x6)
	lw x68, 2(x68)
	fsub x68, x40, x68
	lw x69, 1(x6)
	bne	x69, x16, trace_diffuse_ray_beqelse_b2024
# B2023
	fabs x66, x66
	lw x69, 4(x6)
	lw x69, 0(x69)
	fle x66, x69, x66
	bne	x66, zero, trace_diffuse_ray_beqelse_b2025
# B2026
	fabs x66, x67
	lw x67, 4(x6)
	lw x67, 1(x67)
	fle x66, x67, x66
	bne	x66, zero, trace_diffuse_ray_beqelse_b2027
# B2028
	fabs x66, x68
	lw x67, 4(x6)
	lw x67, 2(x67)
	fle x66, x67, x66
	xori x66, x66, 1
	mv x67, x66
# B2029
	bne	x67, zero, trace_diffuse_ray_beqelse_b2031
	j trace_diffuse_ray_cont_b2030 # adhoc jump(3)
trace_diffuse_ray_beqelse_b2031:
# B2031
	lw x6, 6(x6)
	j trace_diffuse_ray_cont_b2046 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2027:
# B2027
trace_diffuse_ray_beqelse_b2025:
# B2025
trace_diffuse_ray_cont_b2030:
# B2030
	lw x6, 6(x6)
	xori x6, x6, 1
	j trace_diffuse_ray_cont_b2046 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2024:
# B2024
	bne	x69, x31, trace_diffuse_ray_beqelse_b2033
# B2032
	lw x69, 4(x6)
	lw x7, 0(x69)
	fmul x66, x7, x66
	lw x7, 1(x69)
	fmul x67, x7, x67
	fadd x66, x66, x67
	lw x67, 2(x69)
	fmul x67, x67, x68
	fadd x66, x66, x67
	lw x6, 6(x6)
	fle x66, zero, x66
	xori x66, x66, 1
	bne	x6, zero, trace_diffuse_ray_beqelse_b2035
# B2034
	mv x6, x66
	j trace_diffuse_ray_cont_b2036 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2035:
# B2035
	xori x6, x66, 1
trace_diffuse_ray_cont_b2036:
# B2036
	xori x6, x6, 1
	j trace_diffuse_ray_cont_b2046 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2033:
# B2033
	fmul x69, x66, x66
	lw x7, 4(x6)
	lw x7, 0(x7)
	fmul x69, x69, x7
	fmul x7, x67, x67
	lw x70, 4(x6)
	lw x70, 1(x70)
	fmul x7, x7, x70
	fadd x69, x69, x7
	fmul x7, x68, x68
	lw x70, 4(x6)
	lw x70, 2(x70)
	fmul x7, x7, x70
	fadd x69, x69, x7
	lw x7, 3(x6)
	bne	x7, zero, trace_diffuse_ray_beqelse_b2038
# B2037
	mv x66, x69
	j trace_diffuse_ray_cont_b2039 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2038:
# B2038
	fmul x7, x67, x68
	lw x70, 9(x6)
	lw x70, 0(x70)
	fmul x7, x7, x70
	fadd x69, x69, x7
	fmul x68, x68, x66
	lw x7, 9(x6)
	lw x7, 1(x7)
	fmul x68, x68, x7
	fadd x68, x69, x68
	fmul x66, x66, x67
	lw x67, 9(x6)
	lw x67, 2(x67)
	fmul x66, x66, x67
	fadd x66, x68, x66
trace_diffuse_ray_cont_b2039:
# B2039
	lw x67, 1(x6)
	bne	x67, x23, trace_diffuse_ray_beqelse_b2041
# B2040
	fsub x66, x66, x24
trace_diffuse_ray_beqelse_b2041:
# B2041
trace_diffuse_ray_cont_b2042:
# B2042
	lw x6, 6(x6)
	fle x66, zero, x66
	xori x66, x66, 1
	bne	x6, zero, trace_diffuse_ray_beqelse_b2044
# B2043
	mv x6, x66
	j trace_diffuse_ray_cont_b2045 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2044:
# B2044
	xori x6, x66, 1
trace_diffuse_ray_cont_b2045:
# B2045
	xori x6, x6, 1
trace_diffuse_ray_cont_b2046:
# B2046
	beq	x6, zero, trace_diffuse_ray_bneelse_b2047
# B2048
# B2050
	j trace_diffuse_ray_cont_b2052 # adhoc jump(2)
trace_diffuse_ray_bneelse_b2021:
# B2021
# B2051
	sw x33, 0(x10)
	sw x34, 0(x20)
	sw x36, 1(x20)
	sw x11, 2(x20)
	sw x30, 0(x21)
	sw x32, 0(x22)
trace_diffuse_ray_beqelse_b2018:
# B2018
trace_diffuse_ray_beqelse_b2016:
# B2016
trace_diffuse_ray_cont_b2052:
# B2052
	j	trace_diffuse_ray_loop_b1974
trace_diffuse_ray_beqelse_b2005:
# B2005
	mv x32, zero
	addi x15, x15, 1
trace_diffuse_ray_cont_b2012:
# B2012
	add x4, x18, x30
	lw x11, 0(x4)
	lw x11, 6(x11)
	bne	x11, zero, trace_diffuse_ray_beqelse_b2015
# B2014
trace_diffuse_ray_bneelse_b1975:
# B1975
trace_diffuse_ray_cont_b2053:
# B2053
	addi x19, x19, 1
	j	trace_diffuse_ray_loop_b1971
trace_diffuse_ray_bneelse_b1972:
# B1972
trace_diffuse_ray_beqelse_b1969:
# B1969
trace_diffuse_ray_beqelse_b1961:
# B1961
trace_diffuse_ray_beqelse_b1960:
# B1960
trace_diffuse_ray_cont_b1967:
# B1967
trace_diffuse_ray_cont_b2054:
# B2054
	addi x12, x12, 1
	j	trace_diffuse_ray_loop_b1844
trace_diffuse_ray_bneelse_b1845:
# B1845
# B2055
	lw x10, 0(x10)
	lui x11, 777421
	addi x11, x11, -819
	fle x12, x10, x11
	bne	x12, zero, trace_diffuse_ray_beqelse_b2056
# B2057
	lui x12, 314348
	addi x12, x12, -992
	fle x10, x12, x10
	xori x10, x10, 1
	mv x12, x10
# B2058
	bne	x12, zero, trace_diffuse_ray_beqelse_b2060
	j trace_diffuse_ray_cont_b2059 # adhoc jump(3)
trace_diffuse_ray_beqelse_b2060:
# B2060
	lw x10, 0(x21)
	add x4, x18, x10
	lw x10, 0(x4)
	lw x12, 0(x5)
	lw x13, 1(x10)
	la x14, min_caml_nvector
	lui x15, 258048
	bne	x13, x16, trace_diffuse_ray_beqelse_b2062
# B2061
	lw x13, 0(x22)
	sw zero, 0(x14)
	sw zero, 1(x14)
	sw zero, 2(x14)
	addi x13, x13, -1
	add x4, x12, x13
	lw x12, 0(x4)
	feq x17, x12, zero
	bne	x17, zero, trace_diffuse_ray_beqelse_b2064
# B2063
	fle x12, x12, zero
	beq	x12, zero, trace_diffuse_ray_bneelse_b2066
# B2065
	lui x12, 784384
	j trace_diffuse_ray_cont_b2067 # adhoc jump(2)
trace_diffuse_ray_bneelse_b2066:
# B2066
	mv x12, x24
	j trace_diffuse_ray_cont_b2067 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2064:
# B2064
	mv x12, zero
trace_diffuse_ray_cont_b2067:
# B2067
	fsub x12, zero, x12
	add x4, x14, x13
	sw x12, 0(x4)
	j trace_diffuse_ray_cont_b2078 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2062:
# B2062
	bne	x13, x19, trace_diffuse_ray_beqelse_b2069
# B2068
	lw x12, 4(x10)
	lw x12, 0(x12)
	fsub x12, zero, x12
	sw x12, 0(x14)
	lw x12, 4(x10)
	lw x12, 1(x12)
	fsub x12, zero, x12
	sw x12, 1(x14)
	lw x12, 4(x10)
	lw x12, 2(x12)
	fsub x12, zero, x12
	sw x12, 2(x14)
	j trace_diffuse_ray_cont_b2078 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2069:
# B2069
	lw x12, 0(x20)
	lw x13, 5(x10)
	lw x13, 0(x13)
	fsub x12, x12, x13
	lw x13, 1(x20)
	lw x17, 5(x10)
	lw x17, 1(x17)
	fsub x13, x13, x17
	lw x17, 2(x20)
	lw x21, 5(x10)
	lw x21, 2(x21)
	fsub x17, x17, x21
	lw x21, 4(x10)
	lw x21, 0(x21)
	fmul x21, x12, x21
	lw x22, 4(x10)
	lw x22, 1(x22)
	fmul x22, x13, x22
	lw x25, 4(x10)
	lw x25, 2(x25)
	fmul x25, x17, x25
	lw x26, 3(x10)
	bne	x26, zero, trace_diffuse_ray_beqelse_b2071
# B2070
	sw x21, 0(x14)
	sw x22, 1(x14)
	sw x25, 2(x14)
	j trace_diffuse_ray_cont_b2072 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2071:
# B2071
	lw x26, 9(x10)
	lw x26, 2(x26)
	fmul x26, x13, x26
	lw x27, 9(x10)
	lw x27, 1(x27)
	fmul x27, x17, x27
	fadd x26, x26, x27
	fmul x26, x26, x15
	fadd x21, x21, x26
	sw x21, 0(x14)
	lw x21, 9(x10)
	lw x21, 2(x21)
	fmul x21, x12, x21
	lw x26, 9(x10)
	lw x26, 0(x26)
	fmul x17, x17, x26
	fadd x17, x21, x17
	fmul x17, x17, x15
	fadd x17, x22, x17
	sw x17, 1(x14)
	lw x17, 9(x10)
	lw x17, 1(x17)
	fmul x12, x12, x17
	lw x17, 9(x10)
	lw x17, 0(x17)
	fmul x13, x13, x17
	fadd x12, x12, x13
	fmul x12, x12, x15
	fadd x12, x25, x12
	sw x12, 2(x14)
trace_diffuse_ray_cont_b2072:
# B2072
	lw x12, 6(x10)
	lw x13, 0(x14)
	fmul x13, x13, x13
	lw x17, 1(x14)
	fmul x17, x17, x17
	fadd x13, x13, x17
	lw x17, 2(x14)
	fmul x17, x17, x17
	fadd x13, x13, x17
	fsqrt x13, x13
	feq x17, x13, zero
	bne	x17, zero, trace_diffuse_ray_beqelse_b2074
# B2073
	bne	x12, zero, trace_diffuse_ray_beqelse_b2076
# B2075
	fdiv x12, x24, x13
	j trace_diffuse_ray_cont_b2077 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2076:
# B2076
	lui x12, 784384
	fdiv x12, x12, x13
	j trace_diffuse_ray_cont_b2077 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2074:
# B2074
	mv x12, x24
trace_diffuse_ray_cont_b2077:
# B2077
	lw x13, 0(x14)
	fmul x13, x13, x12
	sw x13, 0(x14)
	lw x13, 1(x14)
	fmul x13, x13, x12
	sw x13, 1(x14)
	lw x13, 2(x14)
	fmul x12, x13, x12
	sw x12, 2(x14)
trace_diffuse_ray_cont_b2078:
# B2078
	lw x12, 0(x10)
	la x13, min_caml_texture_color
	lw x17, 8(x10)
	lw x17, 0(x17)
	sw x17, 0(x13)
	lw x17, 8(x10)
	lw x17, 1(x17)
	sw x17, 1(x13)
	lw x17, 8(x10)
	lw x17, 2(x17)
	sw x17, 2(x13)
	lui x17, 266752
	bne	x12, x16, trace_diffuse_ray_beqelse_b2080
# B2079
	lw x12, 0(x20)
	lw x15, 5(x10)
	lw x15, 0(x15)
	fsub x12, x12, x15
	lui x15, 251085
	addi x15, x15, -819
	fmul x21, x12, x15
	floor x21, x21
	lui x22, 268800
	fmul x21, x21, x22
	fsub x12, x12, x21
	fle x12, x17, x12
	xori x12, x12, 1
	lw x21, 2(x20)
	lw x23, 5(x10)
	lw x23, 2(x23)
	fsub x21, x21, x23
	fmul x15, x21, x15
	floor x15, x15
	fmul x15, x15, x22
	fsub x15, x21, x15
	fle x15, x17, x15
	xori x15, x15, 1
	bne	x12, zero, trace_diffuse_ray_beqelse_b2082
# B2081
	bne	x15, zero, trace_diffuse_ray_beqelse_b2084
# B2083
	lui x12, 276464
	j trace_diffuse_ray_cont_b2087 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2084:
# B2084
	mv x12, zero
	j trace_diffuse_ray_cont_b2087 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2082:
# B2082
	bne	x15, zero, trace_diffuse_ray_beqelse_b2086
# B2085
	mv x12, zero
	j trace_diffuse_ray_cont_b2087 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2086:
# B2086
	lui x12, 276464
trace_diffuse_ray_cont_b2087:
# B2087
	sw x12, 1(x13)
	j trace_diffuse_ray_cont_b2172 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2080:
# B2080
	lui x21, 265361
	addi x21, x21, -37
	lui x22, 262144
	lui x25, 263313
	addi x25, x25, -37
	lui x26, 261265
	addi x26, x26, -37
	lui x27, 259217
	addi x27, x27, -37
	lui x28, 778923
	addi x28, x28, -1364
	lui x29, 245896
	addi x29, x29, 1638
	lui x30, 758998
	addi x30, x30, 1206
	lui x31, 782336
	lui x32, 250538
	addi x32, x32, 1929
	lui x33, 764728
	addi x33, x33, 262
	lui x34, 276464
	bne	x12, x19, trace_diffuse_ray_beqelse_b2089
# B2088
	lw x12, 1(x20)
	lui x15, 256000
	fmul x12, x12, x15
	fle x15, x12, zero
	xori x15, x15, 1
	fabs x12, x12
	mv x17, x12
	mv x23, x21
	j	trace_diffuse_ray_loop_b2090
trace_diffuse_ray_bneelse_b2091:	#moved
# B2091
	fmul x23, x23, x22
trace_diffuse_ray_loop_b2090:
# B2090
	fle x35, x17, x23
	beq	x35, zero, trace_diffuse_ray_bneelse_b2091
# B2092
# B2093
	mv x37, x23
	mv x36, x12
	j	trace_diffuse_ray_loop_b2094
trace_diffuse_ray_beqelse_b2098:	#moved
# B2098
	fdiv x37, x37, x22
trace_diffuse_ray_loop_b2094:
# B2094
	fle x12, x21, x36
	beq	x12, zero, trace_diffuse_ray_bneelse_b2095
# B2096
	fle x12, x36, x37
	bne	x12, zero, trace_diffuse_ray_beqelse_b2098
# B2097
	fsub x36, x36, x37
	fdiv x37, x37, x22
	j	trace_diffuse_ray_loop_b2094
trace_diffuse_ray_bneelse_b2095:
# B2095
# B2099
	fle x12, x25, x36
	bne	x12, zero, trace_diffuse_ray_beqelse_b2101
# B2100
	mv x17, x36
	j trace_diffuse_ray_cont_b2102 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2101:
# B2101
	fsub x17, x36, x25
trace_diffuse_ray_cont_b2102:
# B2102
	bne	x12, zero, trace_diffuse_ray_beqelse_b2104
# B2103
	mv x12, x15
	j trace_diffuse_ray_cont_b2105 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2104:
# B2104
	xori x12, x15, 1
trace_diffuse_ray_cont_b2105:
# B2105
	fle x15, x26, x17
	bne	x15, zero, trace_diffuse_ray_beqelse_b2107
# B2106
	mv x15, x17
	j trace_diffuse_ray_cont_b2108 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2107:
# B2107
	fsub x15, x25, x17
trace_diffuse_ray_cont_b2108:
# B2108
	fle x17, x27, x15
	bne	x17, zero, trace_diffuse_ray_beqelse_b2110
# B2109
	fmul x17, x15, x15
	fmul x21, x17, x30
	fadd x21, x29, x21
	fmul x21, x17, x21
	fadd x21, x28, x21
	fmul x17, x17, x21
	fadd x17, x24, x17
	fmul x15, x15, x17
	j trace_diffuse_ray_cont_b2111 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2110:
# B2110
	fsub x15, x26, x15
	fmul x15, x15, x15
	fmul x17, x15, x33
	fadd x17, x32, x17
	fmul x17, x15, x17
	fadd x17, x31, x17
	fmul x15, x15, x17
	fadd x15, x24, x15
trace_diffuse_ray_cont_b2111:
# B2111
	fle x17, x15, zero
	beq	x12, x17, trace_diffuse_ray_bneelse_b2113
# B2112
	mv x12, x15
	j trace_diffuse_ray_cont_b2114 # adhoc jump(2)
trace_diffuse_ray_bneelse_b2113:
# B2113
	fsub x12, zero, x15
trace_diffuse_ray_cont_b2114:
# B2114
	fmul x12, x12, x12
	fmul x15, x34, x12
	sw x15, 0(x13)
	fsub x12, x24, x12
	fmul x12, x34, x12
	sw x12, 1(x13)
	j trace_diffuse_ray_cont_b2172 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2089:
# B2089
	lui x35, 263313
	addi x35, x35, -37
	bne	x12, x23, trace_diffuse_ray_beqelse_b2116
# B2115
	lw x12, 0(x20)
	lw x15, 5(x10)
	lw x15, 0(x15)
	fsub x12, x12, x15
	lw x15, 2(x20)
	lw x23, 5(x10)
	lw x23, 2(x23)
	fsub x15, x15, x23
	fmul x12, x12, x12
	fmul x15, x15, x15
	fadd x12, x12, x15
	fsqrt x12, x12
	fdiv x12, x12, x17
	floor x15, x12
	fsub x12, x12, x15
	fmul x12, x12, x35
	fabs x12, x12
	mv x15, x12
	mv x17, x21
	j	trace_diffuse_ray_loop_b2117
trace_diffuse_ray_bneelse_b2118:	#moved
# B2118
	fmul x17, x17, x22
trace_diffuse_ray_loop_b2117:
# B2117
	fle x23, x15, x17
	beq	x23, zero, trace_diffuse_ray_bneelse_b2118
# B2119
# B2120
	mv x35, x12
	mv x36, x17
	j	trace_diffuse_ray_loop_b2121
trace_diffuse_ray_beqelse_b2125:	#moved
# B2125
	fdiv x36, x36, x22
trace_diffuse_ray_loop_b2121:
# B2121
	fle x12, x21, x35
	beq	x12, zero, trace_diffuse_ray_bneelse_b2122
# B2123
	fle x12, x35, x36
	bne	x12, zero, trace_diffuse_ray_beqelse_b2125
# B2124
	fsub x35, x35, x36
	fdiv x36, x36, x22
	j	trace_diffuse_ray_loop_b2121
trace_diffuse_ray_bneelse_b2122:
# B2122
# B2126
	fle x12, x25, x35
	bne	x12, zero, trace_diffuse_ray_beqelse_b2128
# B2127
	mv x15, x35
	j trace_diffuse_ray_cont_b2129 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2128:
# B2128
	fsub x15, x35, x25
trace_diffuse_ray_cont_b2129:
# B2129
	bne	x12, zero, trace_diffuse_ray_beqelse_b2131
# B2130
	mv x17, x16
	j trace_diffuse_ray_cont_b2132 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2131:
# B2131
	mv x17, zero
trace_diffuse_ray_cont_b2132:
# B2132
	fle x12, x26, x15
	bne	x12, zero, trace_diffuse_ray_beqelse_b2134
# B2133
	j trace_diffuse_ray_cont_b2135 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2134:
# B2134
	fsub x15, x25, x15
trace_diffuse_ray_cont_b2135:
# B2135
	bne	x12, zero, trace_diffuse_ray_beqelse_b2137
# B2136
	mv x12, x17
	j trace_diffuse_ray_cont_b2138 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2137:
# B2137
	xori x12, x17, 1
trace_diffuse_ray_cont_b2138:
# B2138
	fle x17, x27, x15
	bne	x17, zero, trace_diffuse_ray_beqelse_b2140
# B2139
	fmul x15, x15, x15
	fmul x17, x15, x33
	fadd x17, x32, x17
	fmul x17, x15, x17
	fadd x17, x31, x17
	fmul x15, x15, x17
	fadd x15, x24, x15
	j trace_diffuse_ray_cont_b2141 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2140:
# B2140
	fsub x15, x26, x15
	fmul x17, x15, x15
	fmul x21, x17, x30
	fadd x21, x29, x21
	fmul x21, x17, x21
	fadd x21, x28, x21
	fmul x17, x17, x21
	fadd x17, x24, x17
	fmul x15, x15, x17
trace_diffuse_ray_cont_b2141:
# B2141
	fle x17, x15, zero
	beq	x12, x17, trace_diffuse_ray_bneelse_b2143
# B2142
	mv x12, x15
	j trace_diffuse_ray_cont_b2144 # adhoc jump(2)
trace_diffuse_ray_bneelse_b2143:
# B2143
	fsub x12, zero, x15
trace_diffuse_ray_cont_b2144:
# B2144
	fmul x12, x12, x12
	fmul x15, x12, x34
	sw x15, 1(x13)
	fsub x12, x24, x12
	fmul x12, x12, x34
	sw x12, 2(x13)
	j trace_diffuse_ray_cont_b2172 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2116:
# B2116
	li x17, 4
	bne	x12, x17, trace_diffuse_ray_beqelse_b2146
# B2145
	lw x12, 0(x20)
	lw x17, 5(x10)
	lw x17, 0(x17)
	fsub x12, x12, x17
	lw x17, 4(x10)
	lw x17, 0(x17)
	fsqrt x17, x17
	fmul x12, x12, x17
	lw x17, 2(x20)
	lw x21, 5(x10)
	lw x21, 2(x21)
	fsub x17, x17, x21
	lw x21, 4(x10)
	lw x21, 2(x21)
	fsqrt x21, x21
	fmul x17, x17, x21
	fmul x21, x12, x12
	fmul x22, x17, x17
	fadd x21, x21, x22
	fabs x22, x12
	lui x23, 232731
	addi x23, x23, 1815
	fle x22, x23, x22
	lui x25, 257536
	lui x28, 780971
	addi x28, x28, -1366
	lui x29, 255181
	addi x29, x29, -819
	lui x30, 778533
	addi x30, x30, -1755
	lui x31, 253497
	addi x31, x31, -456
	lui x32, 777085
	addi x32, x32, 1646
	lui x33, 251742
	addi x33, x33, 1989
	lui x36, 262592
	lui x37, 270080
	beq	x22, zero, trace_diffuse_ray_bneelse_b2148
# B2147
	fdiv x12, x17, x12
	fabs x12, x12
	fle x17, x12, zero
	xori x17, x17, 1
	fabs x22, x12
	fle x38, x25, x22
	bne	x38, zero, trace_diffuse_ray_beqelse_b2150
# B2149
	fmul x17, x12, x12
	fmul x22, x17, x33
	fadd x22, x32, x22
	fmul x22, x17, x22
	fadd x22, x31, x22
	fmul x22, x17, x22
	fadd x22, x30, x22
	fmul x22, x17, x22
	fadd x22, x29, x22
	fmul x22, x17, x22
	fadd x22, x28, x22
	fmul x17, x17, x22
	fadd x17, x24, x17
	fmul x12, x12, x17
	j trace_diffuse_ray_cont_b2156 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2150:
# B2150
	fle x12, x36, x22
	bne	x12, zero, trace_diffuse_ray_beqelse_b2152
# B2151
	fsub x12, x22, x24
	fadd x22, x22, x24
	fdiv x12, x12, x22
	fmul x22, x12, x12
	fmul x38, x22, x33
	fadd x38, x32, x38
	fmul x38, x22, x38
	fadd x38, x31, x38
	fmul x38, x22, x38
	fadd x38, x30, x38
	fmul x38, x22, x38
	fadd x38, x29, x38
	fmul x38, x22, x38
	fadd x38, x28, x38
	fmul x22, x22, x38
	fadd x22, x24, x22
	fmul x12, x12, x22
	fadd x12, x27, x12
	j trace_diffuse_ray_cont_b2153 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2152:
# B2152
	fdiv x12, x24, x22
	fmul x22, x12, x12
	fmul x38, x22, x33
	fadd x38, x32, x38
	fmul x38, x22, x38
	fadd x38, x31, x38
	fmul x38, x22, x38
	fadd x38, x30, x38
	fmul x38, x22, x38
	fadd x38, x29, x38
	fmul x38, x22, x38
	fadd x38, x28, x38
	fmul x22, x22, x38
	fadd x22, x24, x22
	fmul x12, x12, x22
	fsub x12, x26, x12
trace_diffuse_ray_cont_b2153:
# B2153
	bne	x17, zero, trace_diffuse_ray_beqelse_b2155
# B2154
	fsub x12, zero, x12
trace_diffuse_ray_beqelse_b2155:
# B2155
trace_diffuse_ray_cont_b2156:
# B2156
	fmul x12, x12, x37
	fdiv x12, x12, x35
	j trace_diffuse_ray_cont_b2157 # adhoc jump(2)
trace_diffuse_ray_bneelse_b2148:
# B2148
	lui x12, 268032
trace_diffuse_ray_cont_b2157:
# B2157
	floor x17, x12
	fsub x12, x12, x17
	lw x17, 1(x20)
	lw x22, 5(x10)
	lw x22, 1(x22)
	fsub x17, x17, x22
	lw x22, 4(x10)
	lw x22, 1(x22)
	fsqrt x22, x22
	fmul x17, x17, x22
	fabs x22, x21
	fle x22, x23, x22
	beq	x22, zero, trace_diffuse_ray_bneelse_b2159
# B2158
	fdiv x17, x17, x21
	fabs x17, x17
	fle x21, x17, zero
	xori x21, x21, 1
	fabs x22, x17
	fle x23, x25, x22
	bne	x23, zero, trace_diffuse_ray_beqelse_b2161
# B2160
	fmul x21, x17, x17
	fmul x22, x21, x33
	fadd x22, x32, x22
	fmul x22, x21, x22
	fadd x22, x31, x22
	fmul x22, x21, x22
	fadd x22, x30, x22
	fmul x22, x21, x22
	fadd x22, x29, x22
	fmul x22, x21, x22
	fadd x22, x28, x22
	fmul x21, x21, x22
	fadd x21, x24, x21
	fmul x17, x17, x21
	j trace_diffuse_ray_cont_b2167 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2161:
# B2161
	fle x17, x36, x22
	bne	x17, zero, trace_diffuse_ray_beqelse_b2163
# B2162
	fsub x17, x22, x24
	fadd x22, x22, x24
	fdiv x17, x17, x22
	fmul x22, x17, x17
	fmul x23, x22, x33
	fadd x23, x32, x23
	fmul x23, x22, x23
	fadd x23, x31, x23
	fmul x23, x22, x23
	fadd x23, x30, x23
	fmul x23, x22, x23
	fadd x23, x29, x23
	fmul x23, x22, x23
	fadd x23, x28, x23
	fmul x22, x22, x23
	fadd x22, x24, x22
	fmul x17, x17, x22
	fadd x17, x27, x17
	j trace_diffuse_ray_cont_b2164 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2163:
# B2163
	fdiv x17, x24, x22
	fmul x22, x17, x17
	fmul x23, x22, x33
	fadd x23, x32, x23
	fmul x23, x22, x23
	fadd x23, x31, x23
	fmul x23, x22, x23
	fadd x23, x30, x23
	fmul x23, x22, x23
	fadd x23, x29, x23
	fmul x23, x22, x23
	fadd x23, x28, x23
	fmul x22, x22, x23
	fadd x22, x24, x22
	fmul x17, x17, x22
	fsub x17, x26, x17
trace_diffuse_ray_cont_b2164:
# B2164
	bne	x21, zero, trace_diffuse_ray_beqelse_b2166
# B2165
	fsub x17, zero, x17
trace_diffuse_ray_beqelse_b2166:
# B2166
trace_diffuse_ray_cont_b2167:
# B2167
	fmul x17, x17, x37
	fdiv x17, x17, x35
	j trace_diffuse_ray_cont_b2168 # adhoc jump(2)
trace_diffuse_ray_bneelse_b2159:
# B2159
	lui x17, 268032
trace_diffuse_ray_cont_b2168:
# B2168
	floor x21, x17
	fsub x17, x17, x21
	lui x21, 254362
	addi x21, x21, -1638
	fsub x12, x15, x12
	fmul x12, x12, x12
	fsub x12, x21, x12
	fsub x15, x15, x17
	fmul x15, x15, x15
	fsub x12, x12, x15
	fle x15, zero, x12
	beq	x15, zero, trace_diffuse_ray_bneelse_b2170
# B2169
	mv x17, x12
	j trace_diffuse_ray_cont_b2171 # adhoc jump(2)
trace_diffuse_ray_bneelse_b2170:
# B2170
	mv x17, zero
trace_diffuse_ray_cont_b2171:
# B2171
	fmul x12, x34, x17
	lui x15, 256410
	addi x15, x15, -1638
	fdiv x12, x12, x15
	sw x12, 2(x13)
trace_diffuse_ray_beqelse_b2146:
# B2146
trace_diffuse_ray_cont_b2172:
# B2172
	lw x100, 0(x100)
	mv x15, x100
	mv x12, zero
trace_diffuse_ray_loop_b2173:
# B2173
	add x4, x15, x12
	lw x100, 0(x4)
	lw x17, 0(x100)
	li x21, -1
	la x22, min_caml_light
	beq	x17, x21, trace_diffuse_ray_bneelse_b2174
# B2175
	li x23, 99
	bne	x17, x23, trace_diffuse_ray_beqelse_b2177
# B2176
	addi x12, x12, 1
	j trace_diffuse_ray_cont_b2317 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2177:
# B2177
	la x23, min_caml_light_dirvec
	add x4, x18, x17
	lw x24, 0(x4)
	lw x25, 0(x20)
	lw x26, 5(x24)
	lw x26, 0(x26)
	fsub x25, x25, x26
	lw x26, 1(x20)
	lw x27, 5(x24)
	lw x27, 1(x27)
	fsub x26, x26, x27
	lw x27, 2(x20)
	lw x28, 5(x24)
	lw x28, 2(x28)
	fsub x27, x27, x28
	lw x28, 1(x23)
	add x4, x28, x17
	lw x17, 0(x4)
	lw x28, 1(x24)
	bne	x28, x16, trace_diffuse_ray_beqelse_b2179
# B2178
	lw x28, 0(x23)
	lw x29, 0(x17)
	fsub x29, x29, x25
	lw x30, 1(x17)
	fmul x29, x29, x30
	lw x30, 1(x28)
	fmul x30, x29, x30
	fadd x30, x30, x26
	fabs x30, x30
	lw x31, 4(x24)
	lw x31, 1(x31)
	fle x30, x31, x30
	bne	x30, zero, trace_diffuse_ray_beqelse_b2180
# B2181
	lw x30, 2(x28)
	fmul x30, x29, x30
	fadd x30, x30, x27
	fabs x30, x30
	lw x31, 4(x24)
	lw x31, 2(x31)
	fle x30, x31, x30
	bne	x30, zero, trace_diffuse_ray_beqelse_b2182
# B2183
	lw x30, 1(x17)
	feq x30, x30, zero
	xori x30, x30, 1
	mv x31, x30
# B2184
	bne	x31, zero, trace_diffuse_ray_beqelse_b2186
	j trace_diffuse_ray_cont_b2185 # adhoc jump(3)
trace_diffuse_ray_beqelse_b2186:
# B2186
	la x17, min_caml_solver_dist
	sw x29, 0(x17)
	j trace_diffuse_ray_cont_b2220 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2182:
# B2182
trace_diffuse_ray_beqelse_b2180:
# B2180
trace_diffuse_ray_cont_b2185:
# B2185
	lw x29, 2(x17)
	fsub x29, x29, x26
	lw x30, 3(x17)
	fmul x29, x29, x30
	lw x30, 0(x28)
	fmul x30, x29, x30
	fadd x30, x30, x25
	fabs x30, x30
	lw x31, 4(x24)
	lw x31, 0(x31)
	fle x30, x31, x30
	bne	x30, zero, trace_diffuse_ray_beqelse_b2187
# B2188
	lw x30, 2(x28)
	fmul x30, x29, x30
	fadd x30, x30, x27
	fabs x30, x30
	lw x31, 4(x24)
	lw x31, 2(x31)
	fle x30, x31, x30
	bne	x30, zero, trace_diffuse_ray_beqelse_b2189
# B2190
	lw x30, 3(x17)
	feq x30, x30, zero
	xori x30, x30, 1
	mv x31, x30
# B2191
	bne	x31, zero, trace_diffuse_ray_beqelse_b2193
	j trace_diffuse_ray_cont_b2192 # adhoc jump(3)
trace_diffuse_ray_beqelse_b2193:
# B2193
	la x17, min_caml_solver_dist
	sw x29, 0(x17)
	j trace_diffuse_ray_cont_b2220 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2189:
# B2189
trace_diffuse_ray_beqelse_b2187:
# B2187
trace_diffuse_ray_cont_b2192:
# B2192
	lw x29, 4(x17)
	fsub x27, x29, x27
	lw x29, 5(x17)
	fmul x27, x27, x29
	lw x29, 0(x28)
	fmul x29, x27, x29
	fadd x25, x29, x25
	fabs x25, x25
	lw x29, 4(x24)
	lw x29, 0(x29)
	fle x25, x29, x25
	bne	x25, zero, trace_diffuse_ray_beqelse_b2194
# B2195
	lw x25, 1(x28)
	fmul x25, x27, x25
	fadd x25, x25, x26
	fabs x25, x25
	lw x24, 4(x24)
	lw x24, 1(x24)
	fle x24, x24, x25
	bne	x24, zero, trace_diffuse_ray_beqelse_b2196
# B2197
	lw x17, 5(x17)
	feq x17, x17, zero
	xori x17, x17, 1
	mv x24, x17
# B2198
	bne	x24, zero, trace_diffuse_ray_beqelse_b2200
	j trace_diffuse_ray_cont_b2199 # adhoc jump(3)
trace_diffuse_ray_beqelse_b2200:
# B2200
	la x17, min_caml_solver_dist
	sw x27, 0(x17)
	j trace_diffuse_ray_cont_b2220 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2196:
# B2196
trace_diffuse_ray_beqelse_b2194:
# B2194
trace_diffuse_ray_cont_b2199:
# B2199
	j trace_diffuse_ray_cont_b2219 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2179:
# B2179
	bne	x28, x19, trace_diffuse_ray_beqelse_b2202
# B2201
	lw x24, 0(x17)
	fle x24, zero, x24
	bne	x24, zero, trace_diffuse_ray_beqelse_b2203
# B2204
	la x24, min_caml_solver_dist
	lw x28, 1(x17)
	fmul x25, x28, x25
	lw x28, 2(x17)
	fmul x26, x28, x26
	fadd x25, x25, x26
	lw x17, 3(x17)
	fmul x17, x17, x27
	fadd x17, x25, x17
	sw x17, 0(x24)
	j trace_diffuse_ray_cont_b2220 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2203:
# B2203
	j trace_diffuse_ray_cont_b2219 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2202:
# B2202
	lw x28, 0(x17)
	feq x29, x28, zero
	bne	x29, zero, trace_diffuse_ray_beqelse_b2206
# B2205
	lw x29, 1(x17)
	fmul x29, x29, x25
	lw x30, 2(x17)
	fmul x30, x30, x26
	fadd x29, x29, x30
	li x30, 3
	lw x31, 3(x17)
	fmul x31, x31, x27
	fadd x29, x29, x31
	fmul x31, x25, x25
	lw x32, 4(x24)
	lw x32, 0(x32)
	fmul x31, x31, x32
	fmul x32, x26, x26
	lw x33, 4(x24)
	lw x33, 1(x33)
	fmul x32, x32, x33
	fadd x31, x31, x32
	fmul x32, x27, x27
	lw x33, 4(x24)
	lw x33, 2(x33)
	fmul x32, x32, x33
	fadd x31, x31, x32
	lw x32, 3(x24)
	bne	x32, zero, trace_diffuse_ray_beqelse_b2208
# B2207
	mv x25, x31
	j trace_diffuse_ray_cont_b2209 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2208:
# B2208
	fmul x32, x26, x27
	lw x33, 9(x24)
	lw x33, 0(x33)
	fmul x32, x32, x33
	fadd x31, x31, x32
	fmul x27, x27, x25
	lw x32, 9(x24)
	lw x32, 1(x32)
	fmul x27, x27, x32
	fadd x27, x31, x27
	fmul x25, x25, x26
	lw x26, 9(x24)
	lw x26, 2(x26)
	fmul x25, x25, x26
	fadd x25, x27, x25
trace_diffuse_ray_cont_b2209:
# B2209
	lw x26, 1(x24)
	bne	x26, x30, trace_diffuse_ray_beqelse_b2211
# B2210
	lui x26, 260096
	fsub x25, x25, x26
trace_diffuse_ray_beqelse_b2211:
# B2211
trace_diffuse_ray_cont_b2212:
# B2212
	fmul x26, x29, x29
	fmul x25, x28, x25
	fsub x25, x26, x25
	fle x26, x25, zero
	bne	x26, zero, trace_diffuse_ray_beqelse_b2213
# B2214
	lw x24, 6(x24)
	bne	x24, zero, trace_diffuse_ray_beqelse_b2216
# B2215
	la x24, min_caml_solver_dist
	fsqrt x25, x25
	fsub x25, x29, x25
	lw x17, 4(x17)
	fmul x17, x25, x17
	sw x17, 0(x24)
	j trace_diffuse_ray_cont_b2217 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2216:
# B2216
	la x24, min_caml_solver_dist
	fsqrt x25, x25
	fadd x25, x29, x25
	lw x17, 4(x17)
	fmul x17, x25, x17
	sw x17, 0(x24)
trace_diffuse_ray_cont_b2217:
# B2217
trace_diffuse_ray_cont_b2220:
# B2220
	la x17, min_caml_solver_dist
	lw x24, 0(x17)
	fle x24, x11, x24
	beq	x24, zero, trace_diffuse_ray_bneelse_b2222
# B2221
	addi x12, x12, 1
	j trace_diffuse_ray_cont_b2316 # adhoc jump(2)
trace_diffuse_ray_bneelse_b2222:
# B2222
	mv x25, x16
	mv x26, x100
trace_diffuse_ray_loop_b2223:
# B2223
	add x4, x26, x25
	lw x24, 0(x4)
	beq	x24, x21, trace_diffuse_ray_bneelse_b2224
# B2225
	la x27, min_caml_and_net
	add x4, x27, x24
	lw x24, 0(x4)
	mv x27, zero
	mv x28, x24
trace_diffuse_ray_loop_b2226:
# B2226
	add x4, x28, x27
	lw x24, 0(x4)
	beq	x24, x21, trace_diffuse_ray_bneelse_b2227
# B2228
	add x4, x28, x27
	lw x24, 0(x4)
	add x4, x18, x24
	lw x29, 0(x4)
	lw x30, 0(x20)
	lw x31, 5(x29)
	lw x31, 0(x31)
	fsub x30, x30, x31
	lw x31, 1(x20)
	lw x32, 5(x29)
	lw x32, 1(x32)
	fsub x31, x31, x32
	lw x32, 2(x20)
	lw x33, 5(x29)
	lw x33, 2(x33)
	fsub x32, x32, x33
	lw x33, 1(x23)
	add x4, x33, x24
	lw x33, 0(x4)
	lw x34, 1(x29)
	bne	x34, x16, trace_diffuse_ray_beqelse_b2230
# B2229
	lw x34, 0(x23)
	lw x35, 0(x33)
	fsub x35, x35, x30
	lw x36, 1(x33)
	fmul x35, x35, x36
	lw x36, 1(x34)
	fmul x36, x35, x36
	fadd x36, x36, x31
	fabs x36, x36
	lw x37, 4(x29)
	lw x37, 1(x37)
	fle x36, x37, x36
	bne	x36, zero, trace_diffuse_ray_beqelse_b2231
# B2232
	lw x36, 2(x34)
	fmul x36, x35, x36
	fadd x36, x36, x32
	fabs x36, x36
	lw x37, 4(x29)
	lw x37, 2(x37)
	fle x36, x37, x36
	bne	x36, zero, trace_diffuse_ray_beqelse_b2233
# B2234
	lw x36, 1(x33)
	feq x36, x36, zero
	xori x36, x36, 1
	mv x37, x36
# B2235
	bne	x37, zero, trace_diffuse_ray_beqelse_b2237
	j trace_diffuse_ray_cont_b2236 # adhoc jump(3)
trace_diffuse_ray_beqelse_b2237:
# B2237
	sw x35, 0(x17)
	lw x30, 0(x17)
	j trace_diffuse_ray_cont_b2271 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2233:
# B2233
trace_diffuse_ray_beqelse_b2231:
# B2231
trace_diffuse_ray_cont_b2236:
# B2236
	lw x35, 2(x33)
	fsub x35, x35, x31
	lw x36, 3(x33)
	fmul x35, x35, x36
	lw x36, 0(x34)
	fmul x36, x35, x36
	fadd x36, x36, x30
	fabs x36, x36
	lw x37, 4(x29)
	lw x37, 0(x37)
	fle x36, x37, x36
	bne	x36, zero, trace_diffuse_ray_beqelse_b2238
# B2239
	lw x36, 2(x34)
	fmul x36, x35, x36
	fadd x36, x36, x32
	fabs x36, x36
	lw x37, 4(x29)
	lw x37, 2(x37)
	fle x36, x37, x36
	bne	x36, zero, trace_diffuse_ray_beqelse_b2240
# B2241
	lw x36, 3(x33)
	feq x36, x36, zero
	xori x36, x36, 1
	mv x37, x36
# B2242
	bne	x37, zero, trace_diffuse_ray_beqelse_b2244
	j trace_diffuse_ray_cont_b2243 # adhoc jump(3)
trace_diffuse_ray_beqelse_b2244:
# B2244
	sw x35, 0(x17)
	lw x30, 0(x17)
	j trace_diffuse_ray_cont_b2271 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2240:
# B2240
trace_diffuse_ray_beqelse_b2238:
# B2238
trace_diffuse_ray_cont_b2243:
# B2243
	lw x35, 4(x33)
	fsub x32, x35, x32
	lw x35, 5(x33)
	fmul x32, x32, x35
	lw x35, 0(x34)
	fmul x35, x32, x35
	fadd x30, x35, x30
	fabs x30, x30
	lw x35, 4(x29)
	lw x35, 0(x35)
	fle x30, x35, x30
	bne	x30, zero, trace_diffuse_ray_beqelse_b2245
# B2246
	lw x30, 1(x34)
	fmul x30, x32, x30
	fadd x30, x30, x31
	fabs x30, x30
	lw x29, 4(x29)
	lw x29, 1(x29)
	fle x29, x29, x30
	bne	x29, zero, trace_diffuse_ray_beqelse_b2247
# B2248
	lw x29, 5(x33)
	feq x29, x29, zero
	xori x29, x29, 1
	mv x30, x29
# B2249
	bne	x30, zero, trace_diffuse_ray_beqelse_b2251
	j trace_diffuse_ray_cont_b2250 # adhoc jump(3)
trace_diffuse_ray_beqelse_b2251:
# B2251
	sw x32, 0(x17)
	lw x30, 0(x17)
	j trace_diffuse_ray_cont_b2271 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2247:
# B2247
trace_diffuse_ray_beqelse_b2245:
# B2245
trace_diffuse_ray_cont_b2250:
# B2250
	lw x30, 0(x17)
	j trace_diffuse_ray_cont_b2270 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2230:
# B2230
	bne	x34, x19, trace_diffuse_ray_beqelse_b2253
# B2252
	lw x29, 0(x33)
	fle x29, zero, x29
	beq	x29, zero, trace_diffuse_ray_bneelse_b2255
# B2254
	lw x30, 0(x17)
	j trace_diffuse_ray_cont_b2270 # adhoc jump(2)
trace_diffuse_ray_bneelse_b2255:
# B2255
	lw x29, 1(x33)
	fmul x29, x29, x30
	lw x30, 2(x33)
	fmul x30, x30, x31
	fadd x29, x29, x30
	lw x30, 3(x33)
	fmul x30, x30, x32
	fadd x29, x29, x30
	sw x29, 0(x17)
	lw x30, 0(x17)
	j trace_diffuse_ray_cont_b2271 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2253:
# B2253
	lw x34, 0(x33)
	feq x35, x34, zero
	bne	x35, zero, trace_diffuse_ray_beqelse_b2257
# B2256
	lw x35, 1(x33)
	fmul x35, x35, x30
	lw x36, 2(x33)
	fmul x36, x36, x31
	fadd x35, x35, x36
	li x36, 3
	lw x37, 3(x33)
	fmul x37, x37, x32
	fadd x35, x35, x37
	fmul x37, x30, x30
	lw x38, 4(x29)
	lw x38, 0(x38)
	fmul x37, x37, x38
	fmul x38, x31, x31
	lw x39, 4(x29)
	lw x39, 1(x39)
	fmul x38, x38, x39
	fadd x37, x37, x38
	fmul x38, x32, x32
	lw x39, 4(x29)
	lw x39, 2(x39)
	fmul x38, x38, x39
	fadd x37, x37, x38
	lw x38, 3(x29)
	bne	x38, zero, trace_diffuse_ray_beqelse_b2259
# B2258
	mv x30, x37
	j trace_diffuse_ray_cont_b2260 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2259:
# B2259
	fmul x38, x31, x32
	lw x39, 9(x29)
	lw x39, 0(x39)
	fmul x38, x38, x39
	fadd x37, x37, x38
	fmul x32, x32, x30
	lw x38, 9(x29)
	lw x38, 1(x38)
	fmul x32, x32, x38
	fadd x32, x37, x32
	fmul x30, x30, x31
	lw x31, 9(x29)
	lw x31, 2(x31)
	fmul x30, x30, x31
	fadd x30, x32, x30
trace_diffuse_ray_cont_b2260:
# B2260
	lw x31, 1(x29)
	bne	x31, x36, trace_diffuse_ray_beqelse_b2262
# B2261
	lui x31, 260096
	fsub x30, x30, x31
trace_diffuse_ray_beqelse_b2262:
# B2262
trace_diffuse_ray_cont_b2263:
# B2263
	fmul x31, x35, x35
	fmul x30, x34, x30
	fsub x30, x31, x30
	fle x31, x30, zero
	beq	x31, zero, trace_diffuse_ray_bneelse_b2265
# B2264
	lw x30, 0(x17)
	j trace_diffuse_ray_cont_b2270 # adhoc jump(2)
trace_diffuse_ray_bneelse_b2265:
# B2265
	lw x29, 6(x29)
	bne	x29, zero, trace_diffuse_ray_beqelse_b2267
# B2266
	fsqrt x29, x30
	fsub x29, x35, x29
	lw x30, 4(x33)
	fmul x29, x29, x30
	sw x29, 0(x17)
	j trace_diffuse_ray_cont_b2268 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2267:
# B2267
	fsqrt x29, x30
	fadd x29, x35, x29
	lw x30, 4(x33)
	fmul x29, x29, x30
	sw x29, 0(x17)
trace_diffuse_ray_cont_b2268:
# B2268
	lw x30, 0(x17)
trace_diffuse_ray_cont_b2271:
# B2271
	lui x29, 779469
	addi x29, x29, -819
	fle x29, x29, x30
	xori x29, x29, 1
# B2272
	addi x27, x27, 1
	bne	x29, zero, trace_diffuse_ray_beqelse_b2274
	j trace_diffuse_ray_cont_b2273 # adhoc jump(3)
trace_diffuse_ray_beqelse_b2274:
# B2274
	lui x24, 246333
	addi x24, x24, 1802
	fadd x24, x30, x24
	la x29, min_caml_light
	lw x30, 0(x29)
	fmul x30, x30, x24
	lw x31, 0(x20)
	fadd x30, x30, x31
	lw x31, 1(x29)
	fmul x31, x31, x24
	lw x32, 1(x20)
	fadd x31, x31, x32
	lw x29, 2(x29)
	fmul x24, x29, x24
	lw x29, 2(x20)
	fadd x24, x24, x29
	mv x34, x31
	mv x35, x24
	mv x32, x28
	mv x33, x30
	mv x29, zero
	j	trace_diffuse_ray_loop_b2277
trace_diffuse_ray_bneelse_b2304:	#moved
# B2304
	addi x29, x29, 1
trace_diffuse_ray_loop_b2277:
# B2277
	add x4, x32, x29
	lw x24, 0(x4)
	beq	x24, x21, trace_diffuse_ray_bneelse_b2278
# B2279
	add x4, x18, x24
	lw x24, 0(x4)
	lw x30, 5(x24)
	lw x30, 0(x30)
	fsub x30, x33, x30
	lw x31, 5(x24)
	lw x31, 1(x31)
	fsub x31, x34, x31
	lw x36, 5(x24)
	lw x36, 2(x36)
	fsub x36, x35, x36
	lw x37, 1(x24)
	bne	x37, x16, trace_diffuse_ray_beqelse_b2281
# B2280
	fabs x30, x30
	lw x37, 4(x24)
	lw x37, 0(x37)
	fle x30, x37, x30
	bne	x30, zero, trace_diffuse_ray_beqelse_b2282
# B2283
	fabs x30, x31
	lw x31, 4(x24)
	lw x31, 1(x31)
	fle x30, x31, x30
	bne	x30, zero, trace_diffuse_ray_beqelse_b2284
# B2285
	fabs x30, x36
	lw x31, 4(x24)
	lw x31, 2(x31)
	fle x30, x31, x30
	xori x30, x30, 1
	mv x31, x30
# B2286
	bne	x31, zero, trace_diffuse_ray_beqelse_b2288
	j trace_diffuse_ray_cont_b2287 # adhoc jump(3)
trace_diffuse_ray_beqelse_b2288:
# B2288
	lw x24, 6(x24)
	j trace_diffuse_ray_cont_b2303 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2284:
# B2284
trace_diffuse_ray_beqelse_b2282:
# B2282
trace_diffuse_ray_cont_b2287:
# B2287
	lw x24, 6(x24)
	xori x24, x24, 1
	j trace_diffuse_ray_cont_b2303 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2281:
# B2281
	bne	x37, x19, trace_diffuse_ray_beqelse_b2290
# B2289
	lw x37, 4(x24)
	lw x38, 0(x37)
	fmul x30, x38, x30
	lw x38, 1(x37)
	fmul x31, x38, x31
	fadd x30, x30, x31
	lw x31, 2(x37)
	fmul x31, x31, x36
	fadd x30, x30, x31
	lw x24, 6(x24)
	fle x30, zero, x30
	xori x30, x30, 1
	bne	x24, zero, trace_diffuse_ray_beqelse_b2292
# B2291
	mv x24, x30
	j trace_diffuse_ray_cont_b2293 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2292:
# B2292
	xori x24, x30, 1
trace_diffuse_ray_cont_b2293:
# B2293
	xori x24, x24, 1
	j trace_diffuse_ray_cont_b2303 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2290:
# B2290
	fmul x37, x30, x30
	lw x38, 4(x24)
	lw x38, 0(x38)
	fmul x37, x37, x38
	fmul x38, x31, x31
	lw x39, 4(x24)
	lw x39, 1(x39)
	fmul x38, x38, x39
	fadd x37, x37, x38
	fmul x38, x36, x36
	lw x39, 4(x24)
	lw x39, 2(x39)
	fmul x38, x38, x39
	fadd x37, x37, x38
	lw x38, 3(x24)
	bne	x38, zero, trace_diffuse_ray_beqelse_b2295
# B2294
	mv x30, x37
	j trace_diffuse_ray_cont_b2296 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2295:
# B2295
	fmul x38, x31, x36
	lw x39, 9(x24)
	lw x39, 0(x39)
	fmul x38, x38, x39
	fadd x37, x37, x38
	fmul x36, x36, x30
	lw x38, 9(x24)
	lw x38, 1(x38)
	fmul x36, x36, x38
	fadd x36, x37, x36
	fmul x30, x30, x31
	lw x31, 9(x24)
	lw x31, 2(x31)
	fmul x30, x30, x31
	fadd x30, x36, x30
trace_diffuse_ray_cont_b2296:
# B2296
	lw x31, 1(x24)
	li x36, 3
	bne	x31, x36, trace_diffuse_ray_beqelse_b2298
# B2297
	lui x31, 260096
	fsub x30, x30, x31
trace_diffuse_ray_beqelse_b2298:
# B2298
trace_diffuse_ray_cont_b2299:
# B2299
	lw x24, 6(x24)
	fle x30, zero, x30
	xori x30, x30, 1
	bne	x24, zero, trace_diffuse_ray_beqelse_b2301
# B2300
	mv x24, x30
	j trace_diffuse_ray_cont_b2302 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2301:
# B2301
	xori x24, x30, 1
trace_diffuse_ray_cont_b2302:
# B2302
	xori x24, x24, 1
trace_diffuse_ray_cont_b2303:
# B2303
	beq	x24, zero, trace_diffuse_ray_bneelse_b2304
# B2305
# B2307
	j	trace_diffuse_ray_loop_b2226
trace_diffuse_ray_bneelse_b2278:
# B2278
# B2308
	mv x24, x16
# B2309
	bne	x24, zero, trace_diffuse_ray_beqelse_b2311
	j trace_diffuse_ray_cont_b2310 # adhoc jump(3)
trace_diffuse_ray_beqelse_b2311:
# B2311
	mv x27, x16
# B2312
	bne	x27, zero, trace_diffuse_ray_beqelse_b2314
	j trace_diffuse_ray_cont_b2313 # adhoc jump(3)
trace_diffuse_ray_beqelse_b2314:
# B2314
	mv x17, x16
# B2315
	addi x12, x12, 1
	bne	x17, zero, trace_diffuse_ray_beqelse_b2317
	j trace_diffuse_ray_cont_b2316 # adhoc jump(3)
trace_diffuse_ray_beqelse_b2317:
trace_diffuse_ray_cont_b2317:
# B2317
	mv x23, x16
	mv x24, x100
trace_diffuse_ray_loop_b2318:
# B2318
	add x4, x24, x23
	lw x100, 0(x4)
	beq	x100, x21, trace_diffuse_ray_bneelse_b2319
# B2320
	la x17, min_caml_and_net
	add x4, x17, x100
	lw x100, 0(x4)
	mv x25, x100
	mv x17, zero
trace_diffuse_ray_loop_b2321:
# B2321
	add x4, x25, x17
	lw x100, 0(x4)
	beq	x100, x21, trace_diffuse_ray_bneelse_b2322
# B2323
	add x4, x25, x17
	lw x100, 0(x4)
	la x26, min_caml_light_dirvec
	add x4, x18, x100
	lw x27, 0(x4)
	lw x28, 0(x20)
	lw x29, 5(x27)
	lw x29, 0(x29)
	fsub x28, x28, x29
	lw x29, 1(x20)
	lw x30, 5(x27)
	lw x30, 1(x30)
	fsub x29, x29, x30
	lw x30, 2(x20)
	lw x31, 5(x27)
	lw x31, 2(x31)
	fsub x30, x30, x31
	lw x31, 1(x26)
	add x4, x31, x100
	lw x31, 0(x4)
	lw x32, 1(x27)
	bne	x32, x16, trace_diffuse_ray_beqelse_b2325
# B2324
	lw x26, 0(x26)
	lw x32, 0(x31)
	fsub x32, x32, x28
	lw x33, 1(x31)
	fmul x32, x32, x33
	lw x33, 1(x26)
	fmul x33, x32, x33
	fadd x33, x33, x29
	fabs x33, x33
	lw x34, 4(x27)
	lw x34, 1(x34)
	fle x33, x34, x33
	bne	x33, zero, trace_diffuse_ray_beqelse_b2326
# B2327
	lw x33, 2(x26)
	fmul x33, x32, x33
	fadd x33, x33, x30
	fabs x33, x33
	lw x34, 4(x27)
	lw x34, 2(x34)
	fle x33, x34, x33
	bne	x33, zero, trace_diffuse_ray_beqelse_b2328
# B2329
	lw x33, 1(x31)
	feq x33, x33, zero
	xori x33, x33, 1
	mv x34, x33
# B2330
	bne	x34, zero, trace_diffuse_ray_beqelse_b2332
	j trace_diffuse_ray_cont_b2331 # adhoc jump(3)
trace_diffuse_ray_beqelse_b2332:
# B2332
	la x26, min_caml_solver_dist
	sw x32, 0(x26)
	la x27, min_caml_solver_dist
	lw x27, 0(x27)
	j trace_diffuse_ray_cont_b2366 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2328:
# B2328
trace_diffuse_ray_beqelse_b2326:
# B2326
trace_diffuse_ray_cont_b2331:
# B2331
	lw x32, 2(x31)
	fsub x32, x32, x29
	lw x33, 3(x31)
	fmul x32, x32, x33
	lw x33, 0(x26)
	fmul x33, x32, x33
	fadd x33, x33, x28
	fabs x33, x33
	lw x34, 4(x27)
	lw x34, 0(x34)
	fle x33, x34, x33
	bne	x33, zero, trace_diffuse_ray_beqelse_b2333
# B2334
	lw x33, 2(x26)
	fmul x33, x32, x33
	fadd x33, x33, x30
	fabs x33, x33
	lw x34, 4(x27)
	lw x34, 2(x34)
	fle x33, x34, x33
	bne	x33, zero, trace_diffuse_ray_beqelse_b2335
# B2336
	lw x33, 3(x31)
	feq x33, x33, zero
	xori x33, x33, 1
	mv x34, x33
# B2337
	bne	x34, zero, trace_diffuse_ray_beqelse_b2339
	j trace_diffuse_ray_cont_b2338 # adhoc jump(3)
trace_diffuse_ray_beqelse_b2339:
# B2339
	la x26, min_caml_solver_dist
	sw x32, 0(x26)
	la x27, min_caml_solver_dist
	lw x27, 0(x27)
	j trace_diffuse_ray_cont_b2366 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2335:
# B2335
trace_diffuse_ray_beqelse_b2333:
# B2333
trace_diffuse_ray_cont_b2338:
# B2338
	lw x32, 4(x31)
	fsub x30, x32, x30
	lw x32, 5(x31)
	fmul x30, x30, x32
	lw x32, 0(x26)
	fmul x32, x30, x32
	fadd x28, x32, x28
	fabs x28, x28
	lw x32, 4(x27)
	lw x32, 0(x32)
	fle x28, x32, x28
	bne	x28, zero, trace_diffuse_ray_beqelse_b2340
# B2341
	lw x26, 1(x26)
	fmul x26, x30, x26
	fadd x26, x26, x29
	fabs x26, x26
	lw x27, 4(x27)
	lw x27, 1(x27)
	fle x26, x27, x26
	bne	x26, zero, trace_diffuse_ray_beqelse_b2342
# B2343
	lw x26, 5(x31)
	feq x26, x26, zero
	xori x26, x26, 1
	mv x27, x26
# B2344
	bne	x27, zero, trace_diffuse_ray_beqelse_b2346
	j trace_diffuse_ray_cont_b2345 # adhoc jump(3)
trace_diffuse_ray_beqelse_b2346:
# B2346
	la x26, min_caml_solver_dist
	sw x30, 0(x26)
	la x27, min_caml_solver_dist
	lw x27, 0(x27)
	j trace_diffuse_ray_cont_b2366 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2342:
# B2342
trace_diffuse_ray_beqelse_b2340:
# B2340
trace_diffuse_ray_cont_b2345:
# B2345
	la x27, min_caml_solver_dist
	lw x27, 0(x27)
	j trace_diffuse_ray_cont_b2365 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2325:
# B2325
	bne	x32, x19, trace_diffuse_ray_beqelse_b2348
# B2347
	lw x26, 0(x31)
	fle x26, zero, x26
	beq	x26, zero, trace_diffuse_ray_bneelse_b2350
# B2349
	la x27, min_caml_solver_dist
	lw x27, 0(x27)
	j trace_diffuse_ray_cont_b2365 # adhoc jump(2)
trace_diffuse_ray_bneelse_b2350:
# B2350
	la x26, min_caml_solver_dist
	lw x27, 1(x31)
	fmul x27, x27, x28
	lw x28, 2(x31)
	fmul x28, x28, x29
	fadd x27, x27, x28
	lw x28, 3(x31)
	fmul x28, x28, x30
	fadd x27, x27, x28
	sw x27, 0(x26)
	la x27, min_caml_solver_dist
	lw x27, 0(x27)
	j trace_diffuse_ray_cont_b2366 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2348:
# B2348
	lw x26, 0(x31)
	feq x32, x26, zero
	bne	x32, zero, trace_diffuse_ray_beqelse_b2352
# B2351
	lw x32, 1(x31)
	fmul x32, x32, x28
	lw x33, 2(x31)
	fmul x33, x33, x29
	fadd x32, x32, x33
	li x33, 3
	lw x34, 3(x31)
	fmul x34, x34, x30
	fadd x32, x32, x34
	fmul x34, x28, x28
	lw x35, 4(x27)
	lw x35, 0(x35)
	fmul x34, x34, x35
	fmul x35, x29, x29
	lw x36, 4(x27)
	lw x36, 1(x36)
	fmul x35, x35, x36
	fadd x34, x34, x35
	fmul x35, x30, x30
	lw x36, 4(x27)
	lw x36, 2(x36)
	fmul x35, x35, x36
	fadd x34, x34, x35
	lw x35, 3(x27)
	bne	x35, zero, trace_diffuse_ray_beqelse_b2354
# B2353
	mv x28, x34
	j trace_diffuse_ray_cont_b2355 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2354:
# B2354
	fmul x35, x29, x30
	lw x36, 9(x27)
	lw x36, 0(x36)
	fmul x35, x35, x36
	fadd x34, x34, x35
	fmul x30, x30, x28
	lw x35, 9(x27)
	lw x35, 1(x35)
	fmul x30, x30, x35
	fadd x30, x34, x30
	fmul x28, x28, x29
	lw x29, 9(x27)
	lw x29, 2(x29)
	fmul x28, x28, x29
	fadd x28, x30, x28
trace_diffuse_ray_cont_b2355:
# B2355
	lw x29, 1(x27)
	bne	x29, x33, trace_diffuse_ray_beqelse_b2357
# B2356
	lui x29, 260096
	fsub x28, x28, x29
trace_diffuse_ray_beqelse_b2357:
# B2357
trace_diffuse_ray_cont_b2358:
# B2358
	fmul x29, x32, x32
	fmul x26, x26, x28
	fsub x26, x29, x26
	fle x28, x26, zero
	beq	x28, zero, trace_diffuse_ray_bneelse_b2360
# B2359
	la x27, min_caml_solver_dist
	lw x27, 0(x27)
	j trace_diffuse_ray_cont_b2365 # adhoc jump(2)
trace_diffuse_ray_bneelse_b2360:
# B2360
	lw x27, 6(x27)
	bne	x27, zero, trace_diffuse_ray_beqelse_b2362
# B2361
	la x27, min_caml_solver_dist
	fsqrt x26, x26
	fsub x26, x32, x26
	lw x28, 4(x31)
	fmul x26, x26, x28
	sw x26, 0(x27)
	j trace_diffuse_ray_cont_b2363 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2362:
# B2362
	la x27, min_caml_solver_dist
	fsqrt x26, x26
	fadd x26, x32, x26
	lw x28, 4(x31)
	fmul x26, x26, x28
	sw x26, 0(x27)
trace_diffuse_ray_cont_b2363:
# B2363
	la x27, min_caml_solver_dist
	lw x27, 0(x27)
trace_diffuse_ray_cont_b2366:
# B2366
	lui x26, 779469
	addi x26, x26, -819
	fle x26, x26, x27
	xori x26, x26, 1
# B2367
	addi x17, x17, 1
	bne	x26, zero, trace_diffuse_ray_beqelse_b2369
	j trace_diffuse_ray_cont_b2368 # adhoc jump(3)
trace_diffuse_ray_beqelse_b2369:
# B2369
	lui x100, 246333
	addi x100, x100, 1802
	fadd x100, x27, x100
	lw x26, 0(x22)
	fmul x26, x26, x100
	lw x27, 0(x20)
	fadd x26, x26, x27
	lw x27, 1(x22)
	fmul x27, x27, x100
	lw x28, 1(x20)
	fadd x27, x27, x28
	lw x28, 2(x22)
	fmul x100, x28, x100
	lw x28, 2(x20)
	fadd x100, x100, x28
	mv x31, x27
	mv x30, x26
	mv x29, x25
	mv x28, zero
	mv x32, x100
	j	trace_diffuse_ray_loop_b2372
trace_diffuse_ray_bneelse_b2399:	#moved
# B2399
	addi x28, x28, 1
trace_diffuse_ray_loop_b2372:
# B2372
	add x4, x29, x28
	lw x100, 0(x4)
	beq	x100, x21, trace_diffuse_ray_bneelse_b2373
# B2374
	add x4, x18, x100
	lw x100, 0(x4)
	lw x26, 5(x100)
	lw x26, 0(x26)
	fsub x26, x30, x26
	lw x27, 5(x100)
	lw x27, 1(x27)
	fsub x27, x31, x27
	lw x33, 5(x100)
	lw x33, 2(x33)
	fsub x33, x32, x33
	lw x34, 1(x100)
	bne	x34, x16, trace_diffuse_ray_beqelse_b2376
# B2375
	fabs x26, x26
	lw x34, 4(x100)
	lw x34, 0(x34)
	fle x26, x34, x26
	bne	x26, zero, trace_diffuse_ray_beqelse_b2377
# B2378
	fabs x26, x27
	lw x27, 4(x100)
	lw x27, 1(x27)
	fle x26, x27, x26
	bne	x26, zero, trace_diffuse_ray_beqelse_b2379
# B2380
	fabs x26, x33
	lw x27, 4(x100)
	lw x27, 2(x27)
	fle x26, x27, x26
	xori x26, x26, 1
	mv x27, x26
# B2381
	bne	x27, zero, trace_diffuse_ray_beqelse_b2383
	j trace_diffuse_ray_cont_b2382 # adhoc jump(3)
trace_diffuse_ray_beqelse_b2383:
# B2383
	lw x100, 6(x100)
	j trace_diffuse_ray_cont_b2398 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2379:
# B2379
trace_diffuse_ray_beqelse_b2377:
# B2377
trace_diffuse_ray_cont_b2382:
# B2382
	lw x100, 6(x100)
	xori x100, x100, 1
	j trace_diffuse_ray_cont_b2398 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2376:
# B2376
	bne	x34, x19, trace_diffuse_ray_beqelse_b2385
# B2384
	lw x34, 4(x100)
	lw x35, 0(x34)
	fmul x26, x35, x26
	lw x35, 1(x34)
	fmul x27, x35, x27
	fadd x26, x26, x27
	lw x27, 2(x34)
	fmul x27, x27, x33
	fadd x26, x26, x27
	lw x100, 6(x100)
	fle x26, zero, x26
	xori x26, x26, 1
	bne	x100, zero, trace_diffuse_ray_beqelse_b2387
# B2386
	mv x100, x26
	j trace_diffuse_ray_cont_b2388 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2387:
# B2387
	xori x100, x26, 1
trace_diffuse_ray_cont_b2388:
# B2388
	xori x100, x100, 1
	j trace_diffuse_ray_cont_b2398 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2385:
# B2385
	fmul x34, x26, x26
	lw x35, 4(x100)
	lw x35, 0(x35)
	fmul x34, x34, x35
	fmul x35, x27, x27
	lw x36, 4(x100)
	lw x36, 1(x36)
	fmul x35, x35, x36
	fadd x34, x34, x35
	fmul x35, x33, x33
	lw x36, 4(x100)
	lw x36, 2(x36)
	fmul x35, x35, x36
	fadd x34, x34, x35
	lw x35, 3(x100)
	bne	x35, zero, trace_diffuse_ray_beqelse_b2390
# B2389
	mv x26, x34
	j trace_diffuse_ray_cont_b2391 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2390:
# B2390
	fmul x35, x27, x33
	lw x36, 9(x100)
	lw x36, 0(x36)
	fmul x35, x35, x36
	fadd x34, x34, x35
	fmul x33, x33, x26
	lw x35, 9(x100)
	lw x35, 1(x35)
	fmul x33, x33, x35
	fadd x33, x34, x33
	fmul x26, x26, x27
	lw x27, 9(x100)
	lw x27, 2(x27)
	fmul x26, x26, x27
	fadd x26, x33, x26
trace_diffuse_ray_cont_b2391:
# B2391
	lw x27, 1(x100)
	li x33, 3
	bne	x27, x33, trace_diffuse_ray_beqelse_b2393
# B2392
	lui x27, 260096
	fsub x26, x26, x27
trace_diffuse_ray_beqelse_b2393:
# B2393
trace_diffuse_ray_cont_b2394:
# B2394
	lw x100, 6(x100)
	fle x26, zero, x26
	xori x26, x26, 1
	bne	x100, zero, trace_diffuse_ray_beqelse_b2396
# B2395
	mv x100, x26
	j trace_diffuse_ray_cont_b2397 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2396:
# B2396
	xori x100, x26, 1
trace_diffuse_ray_cont_b2397:
# B2397
	xori x100, x100, 1
trace_diffuse_ray_cont_b2398:
# B2398
	beq	x100, zero, trace_diffuse_ray_bneelse_b2399
# B2400
# B2402
	j	trace_diffuse_ray_loop_b2321
trace_diffuse_ray_bneelse_b2373:
# B2373
# B2403
	mv x100, x16
# B2404
	bne	x100, zero, trace_diffuse_ray_beqelse_b2406
	j trace_diffuse_ray_cont_b2405 # adhoc jump(3)
trace_diffuse_ray_beqelse_b2406:
# B2406
	mv x17, x16
# B2407
	bne	x17, zero, trace_diffuse_ray_beqelse_b2409
	j trace_diffuse_ray_cont_b2408 # adhoc jump(3)
trace_diffuse_ray_beqelse_b2409:
# B2409
	mv x100, x16
# B2410
	bne	x100, zero, trace_diffuse_ray_beqelse_b2412
	j trace_diffuse_ray_cont_b2411 # adhoc jump(3)
trace_diffuse_ray_beqelse_b2412:
# B2412
	ret
trace_diffuse_ray_beqelse_b2352:
# B2352
	la x27, min_caml_solver_dist
	lw x27, 0(x27)
trace_diffuse_ray_cont_b2365:
# B2365
	addi x17, x17, 1
trace_diffuse_ray_cont_b2368:
# B2368
	add x4, x18, x100
	lw x100, 0(x4)
	lw x100, 6(x100)
	beq	x100, zero, trace_diffuse_ray_bneelse_b2370
# B2371
	j	trace_diffuse_ray_loop_b2321
trace_diffuse_ray_bneelse_b2370:
# B2370
trace_diffuse_ray_bneelse_b2322:
# B2322
trace_diffuse_ray_cont_b2405:
# B2405
	addi x23, x23, 1
	j	trace_diffuse_ray_loop_b2318
trace_diffuse_ray_bneelse_b2319:
# B2319
trace_diffuse_ray_cont_b2408:
# B2408
	j	trace_diffuse_ray_loop_b2173
trace_diffuse_ray_beqelse_b2257:
# B2257
	lw x30, 0(x17)
trace_diffuse_ray_cont_b2270:
# B2270
	addi x27, x27, 1
trace_diffuse_ray_cont_b2273:
# B2273
	add x4, x18, x24
	lw x24, 0(x4)
	lw x24, 6(x24)
	beq	x24, zero, trace_diffuse_ray_bneelse_b2275
# B2276
	j	trace_diffuse_ray_loop_b2226
trace_diffuse_ray_bneelse_b2275:
# B2275
trace_diffuse_ray_bneelse_b2227:
# B2227
trace_diffuse_ray_cont_b2310:
# B2310
	addi x25, x25, 1
	j	trace_diffuse_ray_loop_b2223
trace_diffuse_ray_bneelse_b2224:
# B2224
trace_diffuse_ray_cont_b2313:
# B2313
	addi x12, x12, 1
	j trace_diffuse_ray_cont_b2316 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2213:
# B2213
trace_diffuse_ray_beqelse_b2206:
# B2206
trace_diffuse_ray_cont_b2219:
# B2219
	addi x12, x12, 1
trace_diffuse_ray_cont_b2316:
# B2316
	j	trace_diffuse_ray_loop_b2173
trace_diffuse_ray_bneelse_b2174:
# B2174
trace_diffuse_ray_cont_b2411:
# B2411
	lw x100, 0(x14)
	lw x11, 0(x22)
	fmul x100, x100, x11
	lw x11, 1(x14)
	lw x12, 1(x22)
	fmul x11, x11, x12
	fadd x100, x100, x11
	lw x11, 2(x14)
	lw x12, 2(x22)
	fmul x11, x11, x12
	fadd x100, x100, x11
	fsub x100, zero, x100
	fle x11, x100, zero
	beq	x11, zero, trace_diffuse_ray_bneelse_b2414
# B2413
	mv x12, zero
	j trace_diffuse_ray_cont_b2415 # adhoc jump(2)
trace_diffuse_ray_bneelse_b2414:
# B2414
	mv x12, x100
trace_diffuse_ray_cont_b2415:
# B2415
	la x100, min_caml_diffuse_ray
	fmul x11, x65, x12
	lw x10, 7(x10)
	lw x10, 0(x10)
	fmul x10, x11, x10
	lw x11, 0(x100)
	lw x12, 0(x13)
	fmul x12, x10, x12
	fadd x11, x11, x12
	sw x11, 0(x100)
	lw x11, 1(x100)
	lw x12, 1(x13)
	fmul x12, x10, x12
	fadd x11, x11, x12
	sw x11, 1(x100)
	lw x11, 2(x100)
	lw x12, 2(x13)
	fmul x10, x10, x12
	fadd x10, x11, x10
	sw x10, 2(x100)
	ret
trace_diffuse_ray_beqelse_b2056:
# B2056
trace_diffuse_ray_cont_b2059:
# B2059
	ret
iter_trace_diffuse_rays.3080:
	sw	ra, 0(x2)
	sw	x101, 1(x2)
	sw	x102, 2(x2)
	sw	x103, 3(x2)
	sw	x104, 4(x2)
	sw	x105, 5(x2)
	sw	x106, 6(x2)
	sw	x107, 7(x2)
	sw	x108, 8(x2)
	sw	x109, 9(x2)
	sw	x110, 10(x2)
	sw	x111, 11(x2)
body_iter_trace_diffuse_rays.3080:
# B2416
# B2417
	mv x12, x8
	mv x10, x5
	mv x11, x7
	mv x100, x6
iter_trace_diffuse_rays_loop_b2418:
# B2418
	bgt	zero, x12, iter_trace_diffuse_rays_bleelse_b2420
# B2419
	add x4, x10, x12
	lw x13, 0(x4)
	lw x13, 0(x13)
	lw x14, 0(x13)
	lw x15, 0(x100)
	fmul x14, x14, x15
	li x15, 1
	lw x16, 1(x13)
	lw x17, 1(x100)
	fmul x16, x16, x17
	fadd x14, x14, x16
	li x16, 2
	lw x13, 2(x13)
	lw x17, 2(x100)
	fmul x13, x13, x17
	fadd x13, x14, x13
	fle x14, zero, x13
	la x17, min_caml_tmin
	lui x18, 321255
	addi x18, x18, -1240
	la x19, min_caml_or_net
	la x20, min_caml_objects
	la x21, min_caml_intersection_point
	la x22, min_caml_intersected_object_id
	la x23, min_caml_intsec_rectside
	lui x24, 777421
	addi x24, x24, -819
	lui x25, 314348
	addi x25, x25, -992
	la x26, min_caml_nvector
	lui x27, 258048
	lui x28, 784384
	la x29, min_caml_texture_color
	lui x30, 251085
	addi x30, x30, -819
	lui x31, 268800
	lui x32, 266752
	lui x33, 256000
	lui x34, 265361
	addi x34, x34, -37
	lui x35, 262144
	lui x36, 263313
	addi x36, x36, -37
	lui x37, 261265
	addi x37, x37, -37
	lui x38, 259217
	addi x38, x38, -37
	lui x39, 778923
	addi x39, x39, -1364
	lui x40, 245896
	addi x40, x40, 1638
	lui x5, 758998
	addi x5, x5, 1206
	lui x6, 782336
	lui x65, 250538
	addi x65, x65, 1929
	lui x66, 764728
	addi x66, x66, 262
	lui x67, 276464
	lui x68, 263313
	addi x68, x68, -37
	li x69, 4
	lui x7, 232731
	addi x7, x7, 1815
	lui x70, 257536
	lui x71, 780971
	addi x71, x71, -1366
	lui x72, 255181
	addi x72, x72, -819
	lui x73, 778533
	addi x73, x73, -1755
	lui x74, 253497
	addi x74, x74, -456
	lui x75, 777085
	addi x75, x75, 1646
	lui x76, 251742
	addi x76, x76, 1989
	lui x77, 262592
	lui x78, 270080
	lui x79, 254362
	addi x79, x79, -1638
	lui x8, 256410
	addi x8, x8, -1638
	la x80, min_caml_diffuse_ray
	beq	x14, zero, iter_trace_diffuse_rays_bneelse_b2422
# B2421
	add x4, x10, x12
	lw x14, 0(x4)
	lui x81, 274784
	fdiv x13, x13, x81
	sw x18, 0(x17)
	lw x18, 0(x19)
	mv x82, x18
	mv x83, x14
	mv x81, zero
iter_trace_diffuse_rays_loop_b2423:
# B2423
	add x4, x82, x81
	lw x18, 0(x4)
	lw x84, 0(x18)
	li x85, -1
	li x86, 3
	lui x87, 260096
	beq	x84, x85, iter_trace_diffuse_rays_bneelse_b2424
# B2425
	li x88, 99
	la x89, min_caml_solver_dist
	li x9, 3
	bne	x84, x88, iter_trace_diffuse_rays_beqelse_b2427
# B2426
	mv x90, x15
	mv x92, x83
	mv x91, x18
iter_trace_diffuse_rays_loop_b2428:
# B2428
	add x4, x91, x90
	lw x18, 0(x4)
	beq	x18, x85, iter_trace_diffuse_rays_bneelse_b2429
# B2430
	la x84, min_caml_and_net
	add x4, x84, x18
	lw x18, 0(x4)
	mv x87, x92
	mv x86, x18
	mv x84, zero
iter_trace_diffuse_rays_beqelse_b2472:	#moved
# B2472
iter_trace_diffuse_rays_loop_b2431:
# B2431
	lw x18, 0(x87)
	add x4, x86, x84
	lw x88, 0(x4)
	beq	x88, x85, iter_trace_diffuse_rays_bneelse_b2432
# B2433
	add x4, x20, x88
	lw x93, 0(x4)
	lw x94, 10(x93)
	lw x95, 0(x94)
	lw x96, 1(x94)
	lw x97, 2(x94)
	lw x98, 1(x87)
	add x4, x98, x88
	lw x98, 0(x4)
	lw x99, 1(x93)
	bne	x99, x15, iter_trace_diffuse_rays_beqelse_b2435
# B2434
	lw x94, 0(x87)
	lw x99, 0(x98)
	fsub x99, x99, x95
	lw x101, 1(x98)
	fmul x99, x99, x101
	lw x101, 1(x94)
	fmul x101, x99, x101
	fadd x101, x101, x96
	fabs x101, x101
	lw x102, 4(x93)
	lw x102, 1(x102)
	fle x101, x102, x101
	bne	x101, zero, iter_trace_diffuse_rays_beqelse_b2436
# B2437
	lw x101, 2(x94)
	fmul x101, x99, x101
	fadd x101, x101, x97
	fabs x101, x101
	lw x102, 4(x93)
	lw x102, 2(x102)
	fle x101, x102, x101
	bne	x101, zero, iter_trace_diffuse_rays_beqelse_b2438
# B2439
	lw x101, 1(x98)
	feq x101, x101, zero
	xori x101, x101, 1
	mv x102, x101
# B2440
	bne	x102, zero, iter_trace_diffuse_rays_beqelse_b2442
	j iter_trace_diffuse_rays_cont_b2441 # adhoc jump(3)
iter_trace_diffuse_rays_beqelse_b2442:
# B2442
	la x93, min_caml_solver_dist
	sw x99, 0(x93)
	li x93, 1
	addi x84, x84, 1
	j iter_trace_diffuse_rays_cont_b2470 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2438:
# B2438
iter_trace_diffuse_rays_beqelse_b2436:
# B2436
iter_trace_diffuse_rays_cont_b2441:
# B2441
	lw x99, 2(x98)
	fsub x99, x99, x96
	lw x101, 3(x98)
	fmul x99, x99, x101
	lw x101, 0(x94)
	fmul x101, x99, x101
	fadd x101, x101, x95
	fabs x101, x101
	lw x102, 4(x93)
	lw x102, 0(x102)
	fle x101, x102, x101
	bne	x101, zero, iter_trace_diffuse_rays_beqelse_b2443
# B2444
	lw x101, 2(x94)
	fmul x101, x99, x101
	fadd x101, x101, x97
	fabs x101, x101
	lw x102, 4(x93)
	lw x102, 2(x102)
	fle x101, x102, x101
	bne	x101, zero, iter_trace_diffuse_rays_beqelse_b2445
# B2446
	lw x101, 3(x98)
	feq x101, x101, zero
	xori x101, x101, 1
	mv x102, x101
# B2447
	bne	x102, zero, iter_trace_diffuse_rays_beqelse_b2449
	j iter_trace_diffuse_rays_cont_b2448 # adhoc jump(3)
iter_trace_diffuse_rays_beqelse_b2449:
# B2449
	la x93, min_caml_solver_dist
	sw x99, 0(x93)
	li x93, 2
	addi x84, x84, 1
	j iter_trace_diffuse_rays_cont_b2470 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2445:
# B2445
iter_trace_diffuse_rays_beqelse_b2443:
# B2443
iter_trace_diffuse_rays_cont_b2448:
# B2448
	lw x99, 4(x98)
	fsub x97, x99, x97
	lw x99, 5(x98)
	fmul x97, x97, x99
	lw x99, 0(x94)
	fmul x99, x97, x99
	fadd x95, x99, x95
	fabs x95, x95
	lw x99, 4(x93)
	lw x99, 0(x99)
	fle x95, x99, x95
	bne	x95, zero, iter_trace_diffuse_rays_beqelse_b2450
# B2451
	lw x94, 1(x94)
	fmul x94, x97, x94
	fadd x94, x94, x96
	fabs x94, x94
	lw x93, 4(x93)
	lw x93, 1(x93)
	fle x93, x93, x94
	bne	x93, zero, iter_trace_diffuse_rays_beqelse_b2452
# B2453
	lw x93, 5(x98)
	feq x93, x93, zero
	xori x93, x93, 1
	mv x94, x93
# B2454
	bne	x94, zero, iter_trace_diffuse_rays_beqelse_b2456
	j iter_trace_diffuse_rays_cont_b2455 # adhoc jump(3)
iter_trace_diffuse_rays_beqelse_b2456:
# B2456
	la x93, min_caml_solver_dist
	sw x97, 0(x93)
	li x93, 3
	addi x84, x84, 1
	j iter_trace_diffuse_rays_cont_b2470 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2452:
# B2452
iter_trace_diffuse_rays_beqelse_b2450:
# B2450
iter_trace_diffuse_rays_cont_b2455:
# B2455
	mv x93, zero
	addi x84, x84, 1
	j iter_trace_diffuse_rays_cont_b2469 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2435:
# B2435
	bne	x99, x16, iter_trace_diffuse_rays_beqelse_b2458
# B2457
	lw x93, 0(x98)
	fle x93, zero, x93
	beq	x93, zero, iter_trace_diffuse_rays_bneelse_b2460
# B2459
	mv x93, zero
	addi x84, x84, 1
	j iter_trace_diffuse_rays_cont_b2469 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2460:
# B2460
	la x93, min_caml_solver_dist
	lw x95, 0(x98)
	lw x94, 3(x94)
	fmul x94, x95, x94
	sw x94, 0(x93)
	li x93, 1
	addi x84, x84, 1
	j iter_trace_diffuse_rays_cont_b2470 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2458:
# B2458
	lw x99, 0(x98)
	feq x101, x99, zero
	bne	x101, zero, iter_trace_diffuse_rays_beqelse_b2462
# B2461
	lw x101, 1(x98)
	fmul x95, x101, x95
	lw x101, 2(x98)
	fmul x96, x101, x96
	fadd x95, x95, x96
	lw x96, 3(x98)
	fmul x96, x96, x97
	fadd x95, x95, x96
	lw x94, 3(x94)
	fmul x96, x95, x95
	fmul x94, x99, x94
	fsub x94, x96, x94
	fle x96, x94, zero
	beq	x96, zero, iter_trace_diffuse_rays_bneelse_b2464
# B2463
	mv x93, zero
	addi x84, x84, 1
	j iter_trace_diffuse_rays_cont_b2469 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2464:
# B2464
	lw x93, 6(x93)
	bne	x93, zero, iter_trace_diffuse_rays_beqelse_b2466
# B2465
	la x93, min_caml_solver_dist
	fsqrt x94, x94
	fsub x94, x95, x94
	lw x95, 4(x98)
	fmul x94, x94, x95
	sw x94, 0(x93)
	j iter_trace_diffuse_rays_cont_b2467 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2466:
# B2466
	la x93, min_caml_solver_dist
	fsqrt x94, x94
	fadd x94, x95, x94
	lw x95, 4(x98)
	fmul x94, x94, x95
	sw x94, 0(x93)
iter_trace_diffuse_rays_cont_b2467:
# B2467
	li x93, 1
	addi x84, x84, 1
iter_trace_diffuse_rays_cont_b2470:
# B2470
	lw x94, 0(x89)
	fle x95, x94, zero
	bne	x95, zero, iter_trace_diffuse_rays_beqelse_b2473
# B2474
	lw x95, 0(x17)
	fle x95, x95, x94
	bne	x95, zero, iter_trace_diffuse_rays_beqelse_b2475
# B2476
	lui x95, 246333
	addi x95, x95, 1802
	fadd x94, x94, x95
	lw x95, 0(x18)
	fmul x95, x95, x94
	la x96, min_caml_startp_fast
	lw x97, 0(x96)
	fadd x95, x95, x97
	lw x97, 1(x18)
	fmul x97, x97, x94
	lw x98, 1(x96)
	fadd x97, x97, x98
	lw x18, 2(x18)
	fmul x18, x18, x94
	lw x96, 2(x96)
	fadd x18, x18, x96
	mv x101, x97
	mv x98, x86
	mv x99, x95
	mv x102, x18
	mv x96, zero
	j	iter_trace_diffuse_rays_loop_b2477
iter_trace_diffuse_rays_bneelse_b2504:	#moved
# B2504
	addi x96, x96, 1
iter_trace_diffuse_rays_loop_b2477:
# B2477
	add x4, x98, x96
	lw x103, 0(x4)
	beq	x103, x85, iter_trace_diffuse_rays_bneelse_b2478
# B2479
	add x4, x20, x103
	lw x103, 0(x4)
	lw x104, 5(x103)
	lw x104, 0(x104)
	fsub x104, x99, x104
	lw x105, 5(x103)
	lw x105, 1(x105)
	fsub x105, x101, x105
	lw x106, 5(x103)
	lw x106, 2(x106)
	fsub x106, x102, x106
	lw x107, 1(x103)
	bne	x107, x15, iter_trace_diffuse_rays_beqelse_b2481
# B2480
	fabs x104, x104
	lw x107, 4(x103)
	lw x107, 0(x107)
	fle x104, x107, x104
	bne	x104, zero, iter_trace_diffuse_rays_beqelse_b2482
# B2483
	fabs x104, x105
	lw x105, 4(x103)
	lw x105, 1(x105)
	fle x104, x105, x104
	bne	x104, zero, iter_trace_diffuse_rays_beqelse_b2484
# B2485
	fabs x104, x106
	lw x105, 4(x103)
	lw x105, 2(x105)
	fle x104, x105, x104
	xori x104, x104, 1
	mv x105, x104
# B2486
	bne	x105, zero, iter_trace_diffuse_rays_beqelse_b2488
	j iter_trace_diffuse_rays_cont_b2487 # adhoc jump(3)
iter_trace_diffuse_rays_beqelse_b2488:
# B2488
	lw x103, 6(x103)
	j iter_trace_diffuse_rays_cont_b2503 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2484:
# B2484
iter_trace_diffuse_rays_beqelse_b2482:
# B2482
iter_trace_diffuse_rays_cont_b2487:
# B2487
	lw x103, 6(x103)
	xori x103, x103, 1
	j iter_trace_diffuse_rays_cont_b2503 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2481:
# B2481
	bne	x107, x16, iter_trace_diffuse_rays_beqelse_b2490
# B2489
	lw x107, 4(x103)
	lw x108, 0(x107)
	fmul x104, x108, x104
	lw x108, 1(x107)
	fmul x105, x108, x105
	fadd x104, x104, x105
	lw x105, 2(x107)
	fmul x105, x105, x106
	fadd x104, x104, x105
	lw x103, 6(x103)
	fle x104, zero, x104
	xori x104, x104, 1
	bne	x103, zero, iter_trace_diffuse_rays_beqelse_b2492
# B2491
	mv x103, x104
	j iter_trace_diffuse_rays_cont_b2493 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2492:
# B2492
	xori x103, x104, 1
iter_trace_diffuse_rays_cont_b2493:
# B2493
	xori x103, x103, 1
	j iter_trace_diffuse_rays_cont_b2503 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2490:
# B2490
	fmul x107, x104, x104
	lw x108, 4(x103)
	lw x108, 0(x108)
	fmul x107, x107, x108
	fmul x108, x105, x105
	lw x109, 4(x103)
	lw x109, 1(x109)
	fmul x108, x108, x109
	fadd x107, x107, x108
	fmul x108, x106, x106
	lw x109, 4(x103)
	lw x109, 2(x109)
	fmul x108, x108, x109
	fadd x107, x107, x108
	lw x108, 3(x103)
	bne	x108, zero, iter_trace_diffuse_rays_beqelse_b2495
# B2494
	mv x104, x107
	j iter_trace_diffuse_rays_cont_b2496 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2495:
# B2495
	fmul x108, x105, x106
	lw x109, 9(x103)
	lw x109, 0(x109)
	fmul x108, x108, x109
	fadd x107, x107, x108
	fmul x106, x106, x104
	lw x108, 9(x103)
	lw x108, 1(x108)
	fmul x106, x106, x108
	fadd x106, x107, x106
	fmul x104, x104, x105
	lw x105, 9(x103)
	lw x105, 2(x105)
	fmul x104, x104, x105
	fadd x104, x106, x104
iter_trace_diffuse_rays_cont_b2496:
# B2496
	lw x105, 1(x103)
	bne	x105, x9, iter_trace_diffuse_rays_beqelse_b2498
# B2497
	lui x105, 260096
	fsub x104, x104, x105
iter_trace_diffuse_rays_beqelse_b2498:
# B2498
iter_trace_diffuse_rays_cont_b2499:
# B2499
	lw x103, 6(x103)
	fle x104, zero, x104
	xori x104, x104, 1
	bne	x103, zero, iter_trace_diffuse_rays_beqelse_b2501
# B2500
	mv x103, x104
	j iter_trace_diffuse_rays_cont_b2502 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2501:
# B2501
	xori x103, x104, 1
iter_trace_diffuse_rays_cont_b2502:
# B2502
	xori x103, x103, 1
iter_trace_diffuse_rays_cont_b2503:
# B2503
	beq	x103, zero, iter_trace_diffuse_rays_bneelse_b2504
# B2505
# B2507
	j iter_trace_diffuse_rays_cont_b2509 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2478:
# B2478
# B2508
	sw x94, 0(x17)
	sw x95, 0(x21)
	sw x97, 1(x21)
	sw x18, 2(x21)
	sw x88, 0(x22)
	sw x93, 0(x23)
iter_trace_diffuse_rays_beqelse_b2475:
# B2475
iter_trace_diffuse_rays_beqelse_b2473:
# B2473
iter_trace_diffuse_rays_cont_b2509:
# B2509
	j	iter_trace_diffuse_rays_loop_b2431
iter_trace_diffuse_rays_beqelse_b2462:
# B2462
	mv x93, zero
	addi x84, x84, 1
iter_trace_diffuse_rays_cont_b2469:
# B2469
	add x4, x20, x88
	lw x18, 0(x4)
	lw x18, 6(x18)
	bne	x18, zero, iter_trace_diffuse_rays_beqelse_b2472
# B2471
iter_trace_diffuse_rays_bneelse_b2432:
# B2432
iter_trace_diffuse_rays_cont_b2510:
# B2510
	addi x90, x90, 1
	j	iter_trace_diffuse_rays_loop_b2428
iter_trace_diffuse_rays_bneelse_b2429:
# B2429
	j iter_trace_diffuse_rays_cont_b2633 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2427:
# B2427
	la x88, min_caml_objects
	add x4, x88, x84
	lw x90, 0(x4)
	lw x91, 10(x90)
	lw x92, 0(x91)
	lw x93, 1(x91)
	lw x94, 2(x91)
	lw x95, 1(x83)
	add x4, x95, x84
	lw x84, 0(x4)
	lw x95, 1(x90)
	bne	x95, x15, iter_trace_diffuse_rays_beqelse_b2512
# B2511
	lw x91, 0(x83)
	lw x95, 0(x84)
	fsub x95, x95, x92
	lw x96, 1(x84)
	fmul x95, x95, x96
	lw x96, 1(x91)
	fmul x96, x95, x96
	fadd x96, x96, x93
	fabs x96, x96
	lw x97, 4(x90)
	lw x97, 1(x97)
	fle x96, x97, x96
	bne	x96, zero, iter_trace_diffuse_rays_beqelse_b2513
# B2514
	lw x96, 2(x91)
	fmul x96, x95, x96
	fadd x96, x96, x94
	fabs x96, x96
	lw x97, 4(x90)
	lw x97, 2(x97)
	fle x96, x97, x96
	bne	x96, zero, iter_trace_diffuse_rays_beqelse_b2515
# B2516
	lw x96, 1(x84)
	feq x96, x96, zero
	xori x96, x96, 1
	mv x97, x96
# B2517
	bne	x97, zero, iter_trace_diffuse_rays_beqelse_b2519
	j iter_trace_diffuse_rays_cont_b2518 # adhoc jump(3)
iter_trace_diffuse_rays_beqelse_b2519:
# B2519
	sw x95, 0(x89)
	mv x9, x15
	j iter_trace_diffuse_rays_cont_b2545 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2515:
# B2515
iter_trace_diffuse_rays_beqelse_b2513:
# B2513
iter_trace_diffuse_rays_cont_b2518:
# B2518
	lw x95, 2(x84)
	fsub x95, x95, x93
	lw x96, 3(x84)
	fmul x95, x95, x96
	lw x96, 0(x91)
	fmul x96, x95, x96
	fadd x96, x96, x92
	fabs x96, x96
	lw x97, 4(x90)
	lw x97, 0(x97)
	fle x96, x97, x96
	bne	x96, zero, iter_trace_diffuse_rays_beqelse_b2520
# B2521
	lw x96, 2(x91)
	fmul x96, x95, x96
	fadd x96, x96, x94
	fabs x96, x96
	lw x97, 4(x90)
	lw x97, 2(x97)
	fle x96, x97, x96
	bne	x96, zero, iter_trace_diffuse_rays_beqelse_b2522
# B2523
	lw x96, 3(x84)
	feq x96, x96, zero
	xori x96, x96, 1
	mv x97, x96
# B2524
	bne	x97, zero, iter_trace_diffuse_rays_beqelse_b2526
	j iter_trace_diffuse_rays_cont_b2525 # adhoc jump(3)
iter_trace_diffuse_rays_beqelse_b2526:
# B2526
	sw x95, 0(x89)
	mv x9, x16
	j iter_trace_diffuse_rays_cont_b2545 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2522:
# B2522
iter_trace_diffuse_rays_beqelse_b2520:
# B2520
iter_trace_diffuse_rays_cont_b2525:
# B2525
	lw x95, 4(x84)
	fsub x94, x95, x94
	lw x95, 5(x84)
	fmul x94, x94, x95
	lw x95, 0(x91)
	fmul x95, x94, x95
	fadd x92, x95, x92
	fabs x92, x92
	lw x95, 4(x90)
	lw x95, 0(x95)
	fle x92, x95, x92
	bne	x92, zero, iter_trace_diffuse_rays_beqelse_b2527
# B2528
	lw x91, 1(x91)
	fmul x91, x94, x91
	fadd x91, x91, x93
	fabs x91, x91
	lw x90, 4(x90)
	lw x90, 1(x90)
	fle x90, x90, x91
	bne	x90, zero, iter_trace_diffuse_rays_beqelse_b2529
# B2530
	lw x84, 5(x84)
	feq x84, x84, zero
	xori x84, x84, 1
	mv x90, x84
# B2531
	bne	x90, zero, iter_trace_diffuse_rays_beqelse_b2533
	j iter_trace_diffuse_rays_cont_b2532 # adhoc jump(3)
iter_trace_diffuse_rays_beqelse_b2533:
# B2533
	sw x94, 0(x89)
	j iter_trace_diffuse_rays_cont_b2545 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2529:
# B2529
iter_trace_diffuse_rays_beqelse_b2527:
# B2527
iter_trace_diffuse_rays_cont_b2532:
# B2532
	j iter_trace_diffuse_rays_cont_b2546 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2512:
# B2512
	bne	x95, x16, iter_trace_diffuse_rays_beqelse_b2535
# B2534
	lw x9, 0(x84)
	fle x9, zero, x9
	bne	x9, zero, iter_trace_diffuse_rays_beqelse_b2536
# B2537
	lw x84, 0(x84)
	lw x9, 3(x91)
	fmul x84, x84, x9
	sw x84, 0(x89)
	mv x9, x15
	j iter_trace_diffuse_rays_cont_b2545 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2536:
# B2536
	j iter_trace_diffuse_rays_cont_b2546 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2535:
# B2535
	lw x9, 0(x84)
	feq x95, x9, zero
	bne	x95, zero, iter_trace_diffuse_rays_beqelse_b2539
# B2538
	lw x95, 1(x84)
	fmul x92, x95, x92
	lw x95, 2(x84)
	fmul x93, x95, x93
	fadd x92, x92, x93
	lw x93, 3(x84)
	fmul x93, x93, x94
	fadd x92, x92, x93
	lw x91, 3(x91)
	fmul x93, x92, x92
	fmul x9, x9, x91
	fsub x9, x93, x9
	fle x91, x9, zero
	bne	x91, zero, iter_trace_diffuse_rays_beqelse_b2540
# B2541
	lw x90, 6(x90)
	fsqrt x9, x9
	bne	x90, zero, iter_trace_diffuse_rays_beqelse_b2543
# B2542
	fsub x9, x92, x9
	lw x84, 4(x84)
	fmul x84, x9, x84
	sw x84, 0(x89)
	j iter_trace_diffuse_rays_cont_b2544 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2543:
# B2543
	fadd x9, x92, x9
	lw x84, 4(x84)
	fmul x84, x9, x84
	sw x84, 0(x89)
iter_trace_diffuse_rays_cont_b2544:
# B2544
	mv x9, x15
iter_trace_diffuse_rays_cont_b2545:
# B2545
	bne	x9, zero, iter_trace_diffuse_rays_beqelse_b2547
	j iter_trace_diffuse_rays_cont_b2546 # adhoc jump(3)
iter_trace_diffuse_rays_beqelse_b2547:
# B2547
	lw x84, 0(x89)
	lw x9, 0(x17)
	fle x84, x9, x84
	bne	x84, zero, iter_trace_diffuse_rays_beqelse_b2548
# B2549
	mv x9, x15
	mv x91, x83
	mv x90, x18
iter_trace_diffuse_rays_loop_b2550:
# B2550
	add x4, x90, x9
	lw x18, 0(x4)
	beq	x18, x85, iter_trace_diffuse_rays_bneelse_b2551
# B2552
	la x84, min_caml_and_net
	add x4, x84, x18
	lw x18, 0(x4)
	mv x92, x18
	mv x93, x91
	mv x84, zero
iter_trace_diffuse_rays_beqelse_b2594:	#moved
# B2594
iter_trace_diffuse_rays_loop_b2553:
# B2553
	lw x18, 0(x93)
	add x4, x92, x84
	lw x94, 0(x4)
	beq	x94, x85, iter_trace_diffuse_rays_bneelse_b2554
# B2555
	add x4, x88, x94
	lw x95, 0(x4)
	lw x96, 10(x95)
	lw x97, 0(x96)
	lw x98, 1(x96)
	lw x99, 2(x96)
	lw x101, 1(x93)
	add x4, x101, x94
	lw x101, 0(x4)
	lw x102, 1(x95)
	bne	x102, x15, iter_trace_diffuse_rays_beqelse_b2557
# B2556
	lw x96, 0(x93)
	lw x102, 0(x101)
	fsub x102, x102, x97
	lw x103, 1(x101)
	fmul x102, x102, x103
	lw x103, 1(x96)
	fmul x103, x102, x103
	fadd x103, x103, x98
	fabs x103, x103
	lw x104, 4(x95)
	lw x104, 1(x104)
	fle x103, x104, x103
	bne	x103, zero, iter_trace_diffuse_rays_beqelse_b2558
# B2559
	lw x103, 2(x96)
	fmul x103, x102, x103
	fadd x103, x103, x99
	fabs x103, x103
	lw x104, 4(x95)
	lw x104, 2(x104)
	fle x103, x104, x103
	bne	x103, zero, iter_trace_diffuse_rays_beqelse_b2560
# B2561
	lw x103, 1(x101)
	feq x103, x103, zero
	xori x103, x103, 1
	mv x104, x103
# B2562
	bne	x104, zero, iter_trace_diffuse_rays_beqelse_b2564
	j iter_trace_diffuse_rays_cont_b2563 # adhoc jump(3)
iter_trace_diffuse_rays_beqelse_b2564:
# B2564
	sw x102, 0(x89)
	li x95, 1
	addi x84, x84, 1
	j iter_trace_diffuse_rays_cont_b2592 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2560:
# B2560
iter_trace_diffuse_rays_beqelse_b2558:
# B2558
iter_trace_diffuse_rays_cont_b2563:
# B2563
	lw x102, 2(x101)
	fsub x102, x102, x98
	lw x103, 3(x101)
	fmul x102, x102, x103
	lw x103, 0(x96)
	fmul x103, x102, x103
	fadd x103, x103, x97
	fabs x103, x103
	lw x104, 4(x95)
	lw x104, 0(x104)
	fle x103, x104, x103
	bne	x103, zero, iter_trace_diffuse_rays_beqelse_b2565
# B2566
	lw x103, 2(x96)
	fmul x103, x102, x103
	fadd x103, x103, x99
	fabs x103, x103
	lw x104, 4(x95)
	lw x104, 2(x104)
	fle x103, x104, x103
	bne	x103, zero, iter_trace_diffuse_rays_beqelse_b2567
# B2568
	lw x103, 3(x101)
	feq x103, x103, zero
	xori x103, x103, 1
	mv x104, x103
# B2569
	bne	x104, zero, iter_trace_diffuse_rays_beqelse_b2571
	j iter_trace_diffuse_rays_cont_b2570 # adhoc jump(3)
iter_trace_diffuse_rays_beqelse_b2571:
# B2571
	sw x102, 0(x89)
	li x95, 2
	addi x84, x84, 1
	j iter_trace_diffuse_rays_cont_b2592 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2567:
# B2567
iter_trace_diffuse_rays_beqelse_b2565:
# B2565
iter_trace_diffuse_rays_cont_b2570:
# B2570
	lw x102, 4(x101)
	fsub x99, x102, x99
	lw x102, 5(x101)
	fmul x99, x99, x102
	lw x102, 0(x96)
	fmul x102, x99, x102
	fadd x97, x102, x97
	fabs x97, x97
	lw x102, 4(x95)
	lw x102, 0(x102)
	fle x97, x102, x97
	bne	x97, zero, iter_trace_diffuse_rays_beqelse_b2572
# B2573
	lw x96, 1(x96)
	fmul x96, x99, x96
	fadd x96, x96, x98
	fabs x96, x96
	lw x95, 4(x95)
	lw x95, 1(x95)
	fle x95, x95, x96
	bne	x95, zero, iter_trace_diffuse_rays_beqelse_b2574
# B2575
	lw x95, 5(x101)
	feq x95, x95, zero
	xori x95, x95, 1
	mv x96, x95
# B2576
	bne	x96, zero, iter_trace_diffuse_rays_beqelse_b2578
	j iter_trace_diffuse_rays_cont_b2577 # adhoc jump(3)
iter_trace_diffuse_rays_beqelse_b2578:
# B2578
	sw x99, 0(x89)
	li x95, 3
	addi x84, x84, 1
	j iter_trace_diffuse_rays_cont_b2592 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2574:
# B2574
iter_trace_diffuse_rays_beqelse_b2572:
# B2572
iter_trace_diffuse_rays_cont_b2577:
# B2577
	mv x95, zero
	addi x84, x84, 1
	j iter_trace_diffuse_rays_cont_b2591 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2557:
# B2557
	bne	x102, x16, iter_trace_diffuse_rays_beqelse_b2580
# B2579
	lw x95, 0(x101)
	fle x95, zero, x95
	beq	x95, zero, iter_trace_diffuse_rays_bneelse_b2582
# B2581
	mv x95, zero
	addi x84, x84, 1
	j iter_trace_diffuse_rays_cont_b2591 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2582:
# B2582
	lw x95, 0(x101)
	lw x96, 3(x96)
	fmul x95, x95, x96
	sw x95, 0(x89)
	li x95, 1
	addi x84, x84, 1
	j iter_trace_diffuse_rays_cont_b2592 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2580:
# B2580
	lw x102, 0(x101)
	feq x103, x102, zero
	bne	x103, zero, iter_trace_diffuse_rays_beqelse_b2584
# B2583
	lw x103, 1(x101)
	fmul x97, x103, x97
	lw x103, 2(x101)
	fmul x98, x103, x98
	fadd x97, x97, x98
	lw x98, 3(x101)
	fmul x98, x98, x99
	fadd x97, x97, x98
	lw x96, 3(x96)
	fmul x98, x97, x97
	fmul x96, x102, x96
	fsub x96, x98, x96
	fle x98, x96, zero
	beq	x98, zero, iter_trace_diffuse_rays_bneelse_b2586
# B2585
	mv x95, zero
	addi x84, x84, 1
	j iter_trace_diffuse_rays_cont_b2591 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2586:
# B2586
	lw x95, 6(x95)
	bne	x95, zero, iter_trace_diffuse_rays_beqelse_b2588
# B2587
	fsqrt x95, x96
	fsub x95, x97, x95
	lw x96, 4(x101)
	fmul x95, x95, x96
	sw x95, 0(x89)
	j iter_trace_diffuse_rays_cont_b2589 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2588:
# B2588
	fsqrt x95, x96
	fadd x95, x97, x95
	lw x96, 4(x101)
	fmul x95, x95, x96
	sw x95, 0(x89)
iter_trace_diffuse_rays_cont_b2589:
# B2589
	li x95, 1
	addi x84, x84, 1
iter_trace_diffuse_rays_cont_b2592:
# B2592
	lw x96, 0(x89)
	fle x97, x96, zero
	bne	x97, zero, iter_trace_diffuse_rays_beqelse_b2595
# B2596
	lw x97, 0(x17)
	fle x97, x97, x96
	bne	x97, zero, iter_trace_diffuse_rays_beqelse_b2597
# B2598
	lui x97, 246333
	addi x97, x97, 1802
	fadd x96, x96, x97
	lw x97, 0(x18)
	fmul x97, x97, x96
	la x98, min_caml_startp_fast
	lw x99, 0(x98)
	fadd x97, x97, x99
	lw x99, 1(x18)
	fmul x99, x99, x96
	lw x101, 1(x98)
	fadd x99, x99, x101
	lw x18, 2(x18)
	fmul x18, x18, x96
	lw x98, 2(x98)
	fadd x18, x18, x98
	mv x102, x97
	mv x101, x92
	mv x103, x99
	mv x98, zero
	mv x104, x18
	j	iter_trace_diffuse_rays_loop_b2599
iter_trace_diffuse_rays_bneelse_b2626:	#moved
# B2626
	addi x98, x98, 1
iter_trace_diffuse_rays_loop_b2599:
# B2599
	add x4, x101, x98
	lw x105, 0(x4)
	beq	x105, x85, iter_trace_diffuse_rays_bneelse_b2600
# B2601
	add x4, x88, x105
	lw x105, 0(x4)
	lw x106, 5(x105)
	lw x106, 0(x106)
	fsub x106, x102, x106
	lw x107, 5(x105)
	lw x107, 1(x107)
	fsub x107, x103, x107
	lw x108, 5(x105)
	lw x108, 2(x108)
	fsub x108, x104, x108
	lw x109, 1(x105)
	bne	x109, x15, iter_trace_diffuse_rays_beqelse_b2603
# B2602
	fabs x106, x106
	lw x109, 4(x105)
	lw x109, 0(x109)
	fle x106, x109, x106
	bne	x106, zero, iter_trace_diffuse_rays_beqelse_b2604
# B2605
	fabs x106, x107
	lw x107, 4(x105)
	lw x107, 1(x107)
	fle x106, x107, x106
	bne	x106, zero, iter_trace_diffuse_rays_beqelse_b2606
# B2607
	fabs x106, x108
	lw x107, 4(x105)
	lw x107, 2(x107)
	fle x106, x107, x106
	xori x106, x106, 1
	mv x107, x106
# B2608
	bne	x107, zero, iter_trace_diffuse_rays_beqelse_b2610
	j iter_trace_diffuse_rays_cont_b2609 # adhoc jump(3)
iter_trace_diffuse_rays_beqelse_b2610:
# B2610
	lw x105, 6(x105)
	j iter_trace_diffuse_rays_cont_b2625 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2606:
# B2606
iter_trace_diffuse_rays_beqelse_b2604:
# B2604
iter_trace_diffuse_rays_cont_b2609:
# B2609
	lw x105, 6(x105)
	xori x105, x105, 1
	j iter_trace_diffuse_rays_cont_b2625 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2603:
# B2603
	bne	x109, x16, iter_trace_diffuse_rays_beqelse_b2612
# B2611
	lw x109, 4(x105)
	lw x110, 0(x109)
	fmul x106, x110, x106
	lw x110, 1(x109)
	fmul x107, x110, x107
	fadd x106, x106, x107
	lw x107, 2(x109)
	fmul x107, x107, x108
	fadd x106, x106, x107
	lw x105, 6(x105)
	fle x106, zero, x106
	xori x106, x106, 1
	bne	x105, zero, iter_trace_diffuse_rays_beqelse_b2614
# B2613
	mv x105, x106
	j iter_trace_diffuse_rays_cont_b2615 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2614:
# B2614
	xori x105, x106, 1
iter_trace_diffuse_rays_cont_b2615:
# B2615
	xori x105, x105, 1
	j iter_trace_diffuse_rays_cont_b2625 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2612:
# B2612
	fmul x109, x106, x106
	lw x110, 4(x105)
	lw x110, 0(x110)
	fmul x109, x109, x110
	fmul x110, x107, x107
	lw x111, 4(x105)
	lw x111, 1(x111)
	fmul x110, x110, x111
	fadd x109, x109, x110
	fmul x110, x108, x108
	lw x111, 4(x105)
	lw x111, 2(x111)
	fmul x110, x110, x111
	fadd x109, x109, x110
	lw x110, 3(x105)
	bne	x110, zero, iter_trace_diffuse_rays_beqelse_b2617
# B2616
	mv x106, x109
	j iter_trace_diffuse_rays_cont_b2618 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2617:
# B2617
	fmul x110, x107, x108
	lw x111, 9(x105)
	lw x111, 0(x111)
	fmul x110, x110, x111
	fadd x109, x109, x110
	fmul x108, x108, x106
	lw x110, 9(x105)
	lw x110, 1(x110)
	fmul x108, x108, x110
	fadd x108, x109, x108
	fmul x106, x106, x107
	lw x107, 9(x105)
	lw x107, 2(x107)
	fmul x106, x106, x107
	fadd x106, x108, x106
iter_trace_diffuse_rays_cont_b2618:
# B2618
	lw x107, 1(x105)
	bne	x107, x86, iter_trace_diffuse_rays_beqelse_b2620
# B2619
	fsub x106, x106, x87
iter_trace_diffuse_rays_beqelse_b2620:
# B2620
iter_trace_diffuse_rays_cont_b2621:
# B2621
	lw x105, 6(x105)
	fle x106, zero, x106
	xori x106, x106, 1
	bne	x105, zero, iter_trace_diffuse_rays_beqelse_b2623
# B2622
	mv x105, x106
	j iter_trace_diffuse_rays_cont_b2624 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2623:
# B2623
	xori x105, x106, 1
iter_trace_diffuse_rays_cont_b2624:
# B2624
	xori x105, x105, 1
iter_trace_diffuse_rays_cont_b2625:
# B2625
	beq	x105, zero, iter_trace_diffuse_rays_bneelse_b2626
# B2627
# B2629
	j iter_trace_diffuse_rays_cont_b2631 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2600:
# B2600
# B2630
	sw x96, 0(x17)
	sw x97, 0(x21)
	sw x99, 1(x21)
	sw x18, 2(x21)
	sw x94, 0(x22)
	sw x95, 0(x23)
iter_trace_diffuse_rays_beqelse_b2597:
# B2597
iter_trace_diffuse_rays_beqelse_b2595:
# B2595
iter_trace_diffuse_rays_cont_b2631:
# B2631
	j	iter_trace_diffuse_rays_loop_b2553
iter_trace_diffuse_rays_beqelse_b2584:
# B2584
	mv x95, zero
	addi x84, x84, 1
iter_trace_diffuse_rays_cont_b2591:
# B2591
	add x4, x88, x94
	lw x18, 0(x4)
	lw x18, 6(x18)
	bne	x18, zero, iter_trace_diffuse_rays_beqelse_b2594
# B2593
iter_trace_diffuse_rays_bneelse_b2554:
# B2554
iter_trace_diffuse_rays_cont_b2632:
# B2632
	addi x9, x9, 1
	j	iter_trace_diffuse_rays_loop_b2550
iter_trace_diffuse_rays_bneelse_b2551:
# B2551
iter_trace_diffuse_rays_beqelse_b2548:
# B2548
iter_trace_diffuse_rays_beqelse_b2540:
# B2540
iter_trace_diffuse_rays_beqelse_b2539:
# B2539
iter_trace_diffuse_rays_cont_b2546:
# B2546
iter_trace_diffuse_rays_cont_b2633:
# B2633
	addi x81, x81, 1
	j	iter_trace_diffuse_rays_loop_b2423
iter_trace_diffuse_rays_bneelse_b2424:
# B2424
# B2634
	lw x17, 0(x17)
	fle x18, x17, x24
	bne	x18, zero, iter_trace_diffuse_rays_beqelse_b2635
# B2636
	fle x17, x25, x17
	xori x17, x17, 1
	mv x18, x17
# B2637
	bne	x18, zero, iter_trace_diffuse_rays_beqelse_b2639
	j iter_trace_diffuse_rays_cont_b2638 # adhoc jump(3)
iter_trace_diffuse_rays_beqelse_b2639:
# B2639
	lw x17, 0(x22)
	add x4, x20, x17
	lw x17, 0(x4)
	lw x14, 0(x14)
	lw x18, 1(x17)
	bne	x18, x15, iter_trace_diffuse_rays_beqelse_b2641
# B2640
	lw x18, 0(x23)
	sw zero, 0(x26)
	sw zero, 1(x26)
	sw zero, 2(x26)
	addi x18, x18, -1
	add x4, x14, x18
	lw x14, 0(x4)
	feq x22, x14, zero
	bne	x22, zero, iter_trace_diffuse_rays_beqelse_b2643
# B2642
	fle x14, x14, zero
	beq	x14, zero, iter_trace_diffuse_rays_bneelse_b2645
# B2644
	lui x14, 784384
	j iter_trace_diffuse_rays_cont_b2646 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2645:
# B2645
	mv x14, x87
	j iter_trace_diffuse_rays_cont_b2646 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2643:
# B2643
	mv x14, zero
iter_trace_diffuse_rays_cont_b2646:
# B2646
	fsub x14, zero, x14
	add x4, x26, x18
	sw x14, 0(x4)
	j iter_trace_diffuse_rays_cont_b2657 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2641:
# B2641
	bne	x18, x16, iter_trace_diffuse_rays_beqelse_b2648
# B2647
	lw x14, 4(x17)
	lw x14, 0(x14)
	fsub x14, zero, x14
	sw x14, 0(x26)
	lw x14, 4(x17)
	lw x14, 1(x14)
	fsub x14, zero, x14
	sw x14, 1(x26)
	lw x14, 4(x17)
	lw x14, 2(x14)
	fsub x14, zero, x14
	sw x14, 2(x26)
	j iter_trace_diffuse_rays_cont_b2657 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2648:
# B2648
	lw x14, 0(x21)
	lw x18, 5(x17)
	lw x18, 0(x18)
	fsub x14, x14, x18
	lw x18, 1(x21)
	lw x22, 5(x17)
	lw x22, 1(x22)
	fsub x18, x18, x22
	lw x22, 2(x21)
	lw x23, 5(x17)
	lw x23, 2(x23)
	fsub x22, x22, x23
	lw x23, 4(x17)
	lw x23, 0(x23)
	fmul x23, x14, x23
	lw x25, 4(x17)
	lw x25, 1(x25)
	fmul x25, x18, x25
	lw x81, 4(x17)
	lw x81, 2(x81)
	fmul x81, x22, x81
	lw x82, 3(x17)
	bne	x82, zero, iter_trace_diffuse_rays_beqelse_b2650
# B2649
	sw x23, 0(x26)
	sw x25, 1(x26)
	sw x81, 2(x26)
	j iter_trace_diffuse_rays_cont_b2651 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2650:
# B2650
	lw x82, 9(x17)
	lw x82, 2(x82)
	fmul x82, x18, x82
	lw x83, 9(x17)
	lw x83, 1(x83)
	fmul x83, x22, x83
	fadd x82, x82, x83
	fmul x82, x82, x27
	fadd x23, x23, x82
	sw x23, 0(x26)
	lw x23, 9(x17)
	lw x23, 2(x23)
	fmul x23, x14, x23
	lw x82, 9(x17)
	lw x82, 0(x82)
	fmul x22, x22, x82
	fadd x22, x23, x22
	fmul x22, x22, x27
	fadd x22, x25, x22
	sw x22, 1(x26)
	lw x22, 9(x17)
	lw x22, 1(x22)
	fmul x14, x14, x22
	lw x22, 9(x17)
	lw x22, 0(x22)
	fmul x18, x18, x22
	fadd x14, x14, x18
	fmul x14, x14, x27
	fadd x14, x81, x14
	sw x14, 2(x26)
iter_trace_diffuse_rays_cont_b2651:
# B2651
	lw x14, 6(x17)
	lw x18, 0(x26)
	fmul x18, x18, x18
	lw x22, 1(x26)
	fmul x22, x22, x22
	fadd x18, x18, x22
	lw x22, 2(x26)
	fmul x22, x22, x22
	fadd x18, x18, x22
	fsqrt x18, x18
	feq x22, x18, zero
	bne	x22, zero, iter_trace_diffuse_rays_beqelse_b2653
# B2652
	bne	x14, zero, iter_trace_diffuse_rays_beqelse_b2655
# B2654
	fdiv x14, x87, x18
	j iter_trace_diffuse_rays_cont_b2656 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2655:
# B2655
	fdiv x14, x28, x18
	j iter_trace_diffuse_rays_cont_b2656 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2653:
# B2653
	mv x14, x87
iter_trace_diffuse_rays_cont_b2656:
# B2656
	lw x18, 0(x26)
	fmul x18, x18, x14
	sw x18, 0(x26)
	lw x18, 1(x26)
	fmul x18, x18, x14
	sw x18, 1(x26)
	lw x18, 2(x26)
	fmul x14, x18, x14
	sw x14, 2(x26)
iter_trace_diffuse_rays_cont_b2657:
# B2657
	lw x14, 0(x17)
	lw x18, 8(x17)
	lw x18, 0(x18)
	sw x18, 0(x29)
	lw x18, 8(x17)
	lw x18, 1(x18)
	sw x18, 1(x29)
	lw x18, 8(x17)
	lw x18, 2(x18)
	sw x18, 2(x29)
	bne	x14, x15, iter_trace_diffuse_rays_beqelse_b2659
# B2658
	lw x14, 0(x21)
	lw x18, 5(x17)
	lw x18, 0(x18)
	fsub x14, x14, x18
	fmul x18, x14, x30
	floor x18, x18
	fmul x18, x18, x31
	fsub x14, x14, x18
	fle x14, x32, x14
	xori x14, x14, 1
	lw x18, 2(x21)
	lw x22, 5(x17)
	lw x22, 2(x22)
	fsub x18, x18, x22
	fmul x22, x18, x30
	floor x22, x22
	fmul x22, x22, x31
	fsub x18, x18, x22
	fle x18, x32, x18
	xori x18, x18, 1
	bne	x14, zero, iter_trace_diffuse_rays_beqelse_b2661
# B2660
	bne	x18, zero, iter_trace_diffuse_rays_beqelse_b2663
# B2662
	lui x14, 276464
	j iter_trace_diffuse_rays_cont_b2666 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2663:
# B2663
	mv x14, zero
	j iter_trace_diffuse_rays_cont_b2666 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2661:
# B2661
	bne	x18, zero, iter_trace_diffuse_rays_beqelse_b2665
# B2664
	mv x14, zero
	j iter_trace_diffuse_rays_cont_b2666 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2665:
# B2665
	lui x14, 276464
iter_trace_diffuse_rays_cont_b2666:
# B2666
	sw x14, 1(x29)
	j iter_trace_diffuse_rays_cont_b2751 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2659:
# B2659
	bne	x14, x16, iter_trace_diffuse_rays_beqelse_b2668
# B2667
	lw x14, 1(x21)
	fmul x14, x14, x33
	fle x18, x14, zero
	xori x18, x18, 1
	fabs x14, x14
	mv x23, x34
	mv x22, x14
	j	iter_trace_diffuse_rays_loop_b2669
iter_trace_diffuse_rays_bneelse_b2670:	#moved
# B2670
	fmul x23, x23, x35
iter_trace_diffuse_rays_loop_b2669:
# B2669
	fle x25, x22, x23
	beq	x25, zero, iter_trace_diffuse_rays_bneelse_b2670
# B2671
# B2672
	mv x27, x14
	mv x28, x23
	j	iter_trace_diffuse_rays_loop_b2673
iter_trace_diffuse_rays_beqelse_b2677:	#moved
# B2677
	fdiv x28, x28, x35
iter_trace_diffuse_rays_loop_b2673:
# B2673
	fle x14, x34, x27
	beq	x14, zero, iter_trace_diffuse_rays_bneelse_b2674
# B2675
	fle x14, x27, x28
	bne	x14, zero, iter_trace_diffuse_rays_beqelse_b2677
# B2676
	fsub x27, x27, x28
	fdiv x28, x28, x35
	j	iter_trace_diffuse_rays_loop_b2673
iter_trace_diffuse_rays_bneelse_b2674:
# B2674
# B2678
	fle x14, x36, x27
	bne	x14, zero, iter_trace_diffuse_rays_beqelse_b2680
# B2679
	mv x22, x27
	j iter_trace_diffuse_rays_cont_b2681 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2680:
# B2680
	fsub x22, x27, x36
iter_trace_diffuse_rays_cont_b2681:
# B2681
	bne	x14, zero, iter_trace_diffuse_rays_beqelse_b2683
# B2682
	mv x14, x18
	j iter_trace_diffuse_rays_cont_b2684 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2683:
# B2683
	xori x14, x18, 1
iter_trace_diffuse_rays_cont_b2684:
# B2684
	fle x18, x37, x22
	bne	x18, zero, iter_trace_diffuse_rays_beqelse_b2686
# B2685
	mv x18, x22
	j iter_trace_diffuse_rays_cont_b2687 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2686:
# B2686
	fsub x18, x36, x22
iter_trace_diffuse_rays_cont_b2687:
# B2687
	fle x22, x38, x18
	bne	x22, zero, iter_trace_diffuse_rays_beqelse_b2689
# B2688
	fmul x22, x18, x18
	fmul x23, x22, x5
	fadd x23, x40, x23
	fmul x23, x22, x23
	fadd x23, x39, x23
	fmul x22, x22, x23
	fadd x22, x87, x22
	fmul x18, x18, x22
	j iter_trace_diffuse_rays_cont_b2690 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2689:
# B2689
	fsub x18, x37, x18
	fmul x18, x18, x18
	fmul x22, x18, x66
	fadd x22, x65, x22
	fmul x22, x18, x22
	fadd x22, x6, x22
	fmul x18, x18, x22
	fadd x18, x87, x18
iter_trace_diffuse_rays_cont_b2690:
# B2690
	fle x22, x18, zero
	beq	x14, x22, iter_trace_diffuse_rays_bneelse_b2692
# B2691
	mv x14, x18
	j iter_trace_diffuse_rays_cont_b2693 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2692:
# B2692
	fsub x14, zero, x18
iter_trace_diffuse_rays_cont_b2693:
# B2693
	fmul x14, x14, x14
	fmul x18, x67, x14
	sw x18, 0(x29)
	fsub x14, x87, x14
	fmul x14, x67, x14
	sw x14, 1(x29)
	j iter_trace_diffuse_rays_cont_b2751 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2668:
# B2668
	bne	x14, x86, iter_trace_diffuse_rays_beqelse_b2695
# B2694
	lw x14, 0(x21)
	lw x18, 5(x17)
	lw x18, 0(x18)
	fsub x14, x14, x18
	lw x18, 2(x21)
	lw x22, 5(x17)
	lw x22, 2(x22)
	fsub x18, x18, x22
	fmul x14, x14, x14
	fmul x18, x18, x18
	fadd x14, x14, x18
	fsqrt x14, x14
	fdiv x14, x14, x32
	floor x18, x14
	fsub x14, x14, x18
	fmul x14, x14, x68
	fabs x14, x14
	mv x22, x34
	mv x18, x14
	j	iter_trace_diffuse_rays_loop_b2696
iter_trace_diffuse_rays_bneelse_b2697:	#moved
# B2697
	fmul x22, x22, x35
iter_trace_diffuse_rays_loop_b2696:
# B2696
	fle x23, x18, x22
	beq	x23, zero, iter_trace_diffuse_rays_bneelse_b2697
# B2698
# B2699
	mv x27, x22
	mv x25, x14
	j	iter_trace_diffuse_rays_loop_b2700
iter_trace_diffuse_rays_beqelse_b2704:	#moved
# B2704
	fdiv x27, x27, x35
iter_trace_diffuse_rays_loop_b2700:
# B2700
	fle x14, x34, x25
	beq	x14, zero, iter_trace_diffuse_rays_bneelse_b2701
# B2702
	fle x14, x25, x27
	bne	x14, zero, iter_trace_diffuse_rays_beqelse_b2704
# B2703
	fsub x25, x25, x27
	fdiv x27, x27, x35
	j	iter_trace_diffuse_rays_loop_b2700
iter_trace_diffuse_rays_bneelse_b2701:
# B2701
# B2705
	fle x14, x36, x25
	bne	x14, zero, iter_trace_diffuse_rays_beqelse_b2707
# B2706
	mv x18, x25
	j iter_trace_diffuse_rays_cont_b2708 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2707:
# B2707
	fsub x18, x25, x36
iter_trace_diffuse_rays_cont_b2708:
# B2708
	bne	x14, zero, iter_trace_diffuse_rays_beqelse_b2710
# B2709
	mv x22, x15
	j iter_trace_diffuse_rays_cont_b2711 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2710:
# B2710
	mv x22, zero
iter_trace_diffuse_rays_cont_b2711:
# B2711
	fle x14, x37, x18
	bne	x14, zero, iter_trace_diffuse_rays_beqelse_b2713
# B2712
	j iter_trace_diffuse_rays_cont_b2714 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2713:
# B2713
	fsub x18, x36, x18
iter_trace_diffuse_rays_cont_b2714:
# B2714
	bne	x14, zero, iter_trace_diffuse_rays_beqelse_b2716
# B2715
	mv x14, x22
	j iter_trace_diffuse_rays_cont_b2717 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2716:
# B2716
	xori x14, x22, 1
iter_trace_diffuse_rays_cont_b2717:
# B2717
	fle x22, x38, x18
	bne	x22, zero, iter_trace_diffuse_rays_beqelse_b2719
# B2718
	fmul x18, x18, x18
	fmul x22, x18, x66
	fadd x22, x65, x22
	fmul x22, x18, x22
	fadd x22, x6, x22
	fmul x18, x18, x22
	fadd x18, x87, x18
	j iter_trace_diffuse_rays_cont_b2720 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2719:
# B2719
	fsub x18, x37, x18
	fmul x22, x18, x18
	fmul x23, x22, x5
	fadd x23, x40, x23
	fmul x23, x22, x23
	fadd x23, x39, x23
	fmul x22, x22, x23
	fadd x22, x87, x22
	fmul x18, x18, x22
iter_trace_diffuse_rays_cont_b2720:
# B2720
	fle x22, x18, zero
	beq	x14, x22, iter_trace_diffuse_rays_bneelse_b2722
# B2721
	mv x14, x18
	j iter_trace_diffuse_rays_cont_b2723 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2722:
# B2722
	fsub x14, zero, x18
iter_trace_diffuse_rays_cont_b2723:
# B2723
	fmul x14, x14, x14
	fmul x18, x14, x67
	sw x18, 1(x29)
	fsub x14, x87, x14
	fmul x14, x14, x67
	sw x14, 2(x29)
	j iter_trace_diffuse_rays_cont_b2751 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2695:
# B2695
	bne	x14, x69, iter_trace_diffuse_rays_beqelse_b2725
# B2724
	lw x14, 0(x21)
	lw x18, 5(x17)
	lw x18, 0(x18)
	fsub x14, x14, x18
	lw x18, 4(x17)
	lw x18, 0(x18)
	fsqrt x18, x18
	fmul x14, x14, x18
	lw x18, 2(x21)
	lw x22, 5(x17)
	lw x22, 2(x22)
	fsub x18, x18, x22
	lw x22, 4(x17)
	lw x22, 2(x22)
	fsqrt x22, x22
	fmul x18, x18, x22
	fmul x22, x14, x14
	fmul x23, x18, x18
	fadd x22, x22, x23
	fabs x23, x14
	fle x23, x7, x23
	beq	x23, zero, iter_trace_diffuse_rays_bneelse_b2727
# B2726
	fdiv x14, x18, x14
	fabs x14, x14
	fle x18, x14, zero
	xori x18, x18, 1
	fabs x23, x14
	fle x25, x70, x23
	bne	x25, zero, iter_trace_diffuse_rays_beqelse_b2729
# B2728
	fmul x18, x14, x14
	fmul x23, x18, x76
	fadd x23, x75, x23
	fmul x23, x18, x23
	fadd x23, x74, x23
	fmul x23, x18, x23
	fadd x23, x73, x23
	fmul x23, x18, x23
	fadd x23, x72, x23
	fmul x23, x18, x23
	fadd x23, x71, x23
	fmul x18, x18, x23
	fadd x18, x87, x18
	fmul x14, x14, x18
	j iter_trace_diffuse_rays_cont_b2735 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2729:
# B2729
	fle x14, x77, x23
	bne	x14, zero, iter_trace_diffuse_rays_beqelse_b2731
# B2730
	fsub x14, x23, x87
	fadd x23, x23, x87
	fdiv x14, x14, x23
	fmul x23, x14, x14
	fmul x25, x23, x76
	fadd x25, x75, x25
	fmul x25, x23, x25
	fadd x25, x74, x25
	fmul x25, x23, x25
	fadd x25, x73, x25
	fmul x25, x23, x25
	fadd x25, x72, x25
	fmul x25, x23, x25
	fadd x25, x71, x25
	fmul x23, x23, x25
	fadd x23, x87, x23
	fmul x14, x14, x23
	fadd x14, x38, x14
	j iter_trace_diffuse_rays_cont_b2732 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2731:
# B2731
	fdiv x14, x87, x23
	fmul x23, x14, x14
	fmul x25, x23, x76
	fadd x25, x75, x25
	fmul x25, x23, x25
	fadd x25, x74, x25
	fmul x25, x23, x25
	fadd x25, x73, x25
	fmul x25, x23, x25
	fadd x25, x72, x25
	fmul x25, x23, x25
	fadd x25, x71, x25
	fmul x23, x23, x25
	fadd x23, x87, x23
	fmul x14, x14, x23
	fsub x14, x37, x14
iter_trace_diffuse_rays_cont_b2732:
# B2732
	bne	x18, zero, iter_trace_diffuse_rays_beqelse_b2734
# B2733
	fsub x14, zero, x14
iter_trace_diffuse_rays_beqelse_b2734:
# B2734
iter_trace_diffuse_rays_cont_b2735:
# B2735
	fmul x14, x14, x78
	fdiv x14, x14, x68
	j iter_trace_diffuse_rays_cont_b2736 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2727:
# B2727
	lui x14, 268032
iter_trace_diffuse_rays_cont_b2736:
# B2736
	floor x18, x14
	fsub x14, x14, x18
	lw x18, 1(x21)
	lw x23, 5(x17)
	lw x23, 1(x23)
	fsub x18, x18, x23
	lw x23, 4(x17)
	lw x23, 1(x23)
	fsqrt x23, x23
	fmul x18, x18, x23
	fabs x23, x22
	fle x23, x7, x23
	beq	x23, zero, iter_trace_diffuse_rays_bneelse_b2738
# B2737
	fdiv x18, x18, x22
	fabs x18, x18
	fle x22, x18, zero
	xori x22, x22, 1
	fabs x23, x18
	fle x25, x70, x23
	bne	x25, zero, iter_trace_diffuse_rays_beqelse_b2740
# B2739
	fmul x22, x18, x18
	fmul x23, x22, x76
	fadd x23, x75, x23
	fmul x23, x22, x23
	fadd x23, x74, x23
	fmul x23, x22, x23
	fadd x23, x73, x23
	fmul x23, x22, x23
	fadd x23, x72, x23
	fmul x23, x22, x23
	fadd x23, x71, x23
	fmul x22, x22, x23
	fadd x22, x87, x22
	fmul x18, x18, x22
	j iter_trace_diffuse_rays_cont_b2746 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2740:
# B2740
	fle x18, x77, x23
	bne	x18, zero, iter_trace_diffuse_rays_beqelse_b2742
# B2741
	fsub x18, x23, x87
	fadd x23, x23, x87
	fdiv x18, x18, x23
	fmul x23, x18, x18
	fmul x25, x23, x76
	fadd x25, x75, x25
	fmul x25, x23, x25
	fadd x25, x74, x25
	fmul x25, x23, x25
	fadd x25, x73, x25
	fmul x25, x23, x25
	fadd x25, x72, x25
	fmul x25, x23, x25
	fadd x25, x71, x25
	fmul x23, x23, x25
	fadd x23, x87, x23
	fmul x18, x18, x23
	fadd x18, x38, x18
	j iter_trace_diffuse_rays_cont_b2743 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2742:
# B2742
	fdiv x18, x87, x23
	fmul x23, x18, x18
	fmul x25, x23, x76
	fadd x25, x75, x25
	fmul x25, x23, x25
	fadd x25, x74, x25
	fmul x25, x23, x25
	fadd x25, x73, x25
	fmul x25, x23, x25
	fadd x25, x72, x25
	fmul x25, x23, x25
	fadd x25, x71, x25
	fmul x23, x23, x25
	fadd x23, x87, x23
	fmul x18, x18, x23
	fsub x18, x37, x18
iter_trace_diffuse_rays_cont_b2743:
# B2743
	bne	x22, zero, iter_trace_diffuse_rays_beqelse_b2745
# B2744
	fsub x18, zero, x18
iter_trace_diffuse_rays_beqelse_b2745:
# B2745
iter_trace_diffuse_rays_cont_b2746:
# B2746
	fmul x18, x18, x78
	fdiv x18, x18, x68
	j iter_trace_diffuse_rays_cont_b2747 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2738:
# B2738
	lui x18, 268032
iter_trace_diffuse_rays_cont_b2747:
# B2747
	floor x22, x18
	fsub x18, x18, x22
	fsub x14, x27, x14
	fmul x14, x14, x14
	fsub x14, x79, x14
	fsub x18, x27, x18
	fmul x18, x18, x18
	fsub x14, x14, x18
	fle x18, zero, x14
	beq	x18, zero, iter_trace_diffuse_rays_bneelse_b2749
# B2748
	mv x22, x14
	j iter_trace_diffuse_rays_cont_b2750 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2749:
# B2749
	mv x22, zero
iter_trace_diffuse_rays_cont_b2750:
# B2750
	fmul x14, x67, x22
	fdiv x14, x14, x8
	sw x14, 2(x29)
iter_trace_diffuse_rays_beqelse_b2725:
# B2725
iter_trace_diffuse_rays_cont_b2751:
# B2751
	lw x14, 0(x19)
	mv x19, x14
	mv x18, zero
iter_trace_diffuse_rays_loop_b2752:
# B2752
	add x4, x19, x18
	lw x14, 0(x4)
	lw x22, 0(x14)
	li x23, -1
	la x25, min_caml_light
	beq	x22, x23, iter_trace_diffuse_rays_bneelse_b2753
# B2754
	li x27, 99
	bne	x22, x27, iter_trace_diffuse_rays_beqelse_b2756
# B2755
	addi x18, x18, 1
	j iter_trace_diffuse_rays_cont_b2896 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2756:
# B2756
	la x27, min_caml_light_dirvec
	add x4, x20, x22
	lw x28, 0(x4)
	lw x30, 0(x21)
	lw x31, 5(x28)
	lw x31, 0(x31)
	fsub x30, x30, x31
	lw x31, 1(x21)
	lw x32, 5(x28)
	lw x32, 1(x32)
	fsub x31, x31, x32
	lw x32, 2(x21)
	lw x33, 5(x28)
	lw x33, 2(x33)
	fsub x32, x32, x33
	lw x33, 1(x27)
	add x4, x33, x22
	lw x22, 0(x4)
	lw x33, 1(x28)
	bne	x33, x15, iter_trace_diffuse_rays_beqelse_b2758
# B2757
	lw x33, 0(x27)
	lw x34, 0(x22)
	fsub x34, x34, x30
	lw x35, 1(x22)
	fmul x34, x34, x35
	lw x35, 1(x33)
	fmul x35, x34, x35
	fadd x35, x35, x31
	fabs x35, x35
	lw x36, 4(x28)
	lw x36, 1(x36)
	fle x35, x36, x35
	bne	x35, zero, iter_trace_diffuse_rays_beqelse_b2759
# B2760
	lw x35, 2(x33)
	fmul x35, x34, x35
	fadd x35, x35, x32
	fabs x35, x35
	lw x36, 4(x28)
	lw x36, 2(x36)
	fle x35, x36, x35
	bne	x35, zero, iter_trace_diffuse_rays_beqelse_b2761
# B2762
	lw x35, 1(x22)
	feq x35, x35, zero
	xori x35, x35, 1
	mv x36, x35
# B2763
	bne	x36, zero, iter_trace_diffuse_rays_beqelse_b2765
	j iter_trace_diffuse_rays_cont_b2764 # adhoc jump(3)
iter_trace_diffuse_rays_beqelse_b2765:
# B2765
	la x22, min_caml_solver_dist
	sw x34, 0(x22)
	j iter_trace_diffuse_rays_cont_b2799 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2761:
# B2761
iter_trace_diffuse_rays_beqelse_b2759:
# B2759
iter_trace_diffuse_rays_cont_b2764:
# B2764
	lw x34, 2(x22)
	fsub x34, x34, x31
	lw x35, 3(x22)
	fmul x34, x34, x35
	lw x35, 0(x33)
	fmul x35, x34, x35
	fadd x35, x35, x30
	fabs x35, x35
	lw x36, 4(x28)
	lw x36, 0(x36)
	fle x35, x36, x35
	bne	x35, zero, iter_trace_diffuse_rays_beqelse_b2766
# B2767
	lw x35, 2(x33)
	fmul x35, x34, x35
	fadd x35, x35, x32
	fabs x35, x35
	lw x36, 4(x28)
	lw x36, 2(x36)
	fle x35, x36, x35
	bne	x35, zero, iter_trace_diffuse_rays_beqelse_b2768
# B2769
	lw x35, 3(x22)
	feq x35, x35, zero
	xori x35, x35, 1
	mv x36, x35
# B2770
	bne	x36, zero, iter_trace_diffuse_rays_beqelse_b2772
	j iter_trace_diffuse_rays_cont_b2771 # adhoc jump(3)
iter_trace_diffuse_rays_beqelse_b2772:
# B2772
	la x22, min_caml_solver_dist
	sw x34, 0(x22)
	j iter_trace_diffuse_rays_cont_b2799 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2768:
# B2768
iter_trace_diffuse_rays_beqelse_b2766:
# B2766
iter_trace_diffuse_rays_cont_b2771:
# B2771
	lw x34, 4(x22)
	fsub x32, x34, x32
	lw x34, 5(x22)
	fmul x32, x32, x34
	lw x34, 0(x33)
	fmul x34, x32, x34
	fadd x30, x34, x30
	fabs x30, x30
	lw x34, 4(x28)
	lw x34, 0(x34)
	fle x30, x34, x30
	bne	x30, zero, iter_trace_diffuse_rays_beqelse_b2773
# B2774
	lw x30, 1(x33)
	fmul x30, x32, x30
	fadd x30, x30, x31
	fabs x30, x30
	lw x28, 4(x28)
	lw x28, 1(x28)
	fle x28, x28, x30
	bne	x28, zero, iter_trace_diffuse_rays_beqelse_b2775
# B2776
	lw x22, 5(x22)
	feq x22, x22, zero
	xori x22, x22, 1
	mv x28, x22
# B2777
	bne	x28, zero, iter_trace_diffuse_rays_beqelse_b2779
	j iter_trace_diffuse_rays_cont_b2778 # adhoc jump(3)
iter_trace_diffuse_rays_beqelse_b2779:
# B2779
	la x22, min_caml_solver_dist
	sw x32, 0(x22)
	j iter_trace_diffuse_rays_cont_b2799 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2775:
# B2775
iter_trace_diffuse_rays_beqelse_b2773:
# B2773
iter_trace_diffuse_rays_cont_b2778:
# B2778
	j iter_trace_diffuse_rays_cont_b2798 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2758:
# B2758
	bne	x33, x16, iter_trace_diffuse_rays_beqelse_b2781
# B2780
	lw x28, 0(x22)
	fle x28, zero, x28
	bne	x28, zero, iter_trace_diffuse_rays_beqelse_b2782
# B2783
	la x28, min_caml_solver_dist
	lw x33, 1(x22)
	fmul x30, x33, x30
	lw x33, 2(x22)
	fmul x31, x33, x31
	fadd x30, x30, x31
	lw x22, 3(x22)
	fmul x22, x22, x32
	fadd x22, x30, x22
	sw x22, 0(x28)
	j iter_trace_diffuse_rays_cont_b2799 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2782:
# B2782
	j iter_trace_diffuse_rays_cont_b2798 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2781:
# B2781
	lw x33, 0(x22)
	feq x34, x33, zero
	bne	x34, zero, iter_trace_diffuse_rays_beqelse_b2785
# B2784
	lw x34, 1(x22)
	fmul x34, x34, x30
	lw x35, 2(x22)
	fmul x35, x35, x31
	fadd x34, x34, x35
	li x35, 3
	lw x36, 3(x22)
	fmul x36, x36, x32
	fadd x34, x34, x36
	fmul x36, x30, x30
	lw x37, 4(x28)
	lw x37, 0(x37)
	fmul x36, x36, x37
	fmul x37, x31, x31
	lw x38, 4(x28)
	lw x38, 1(x38)
	fmul x37, x37, x38
	fadd x36, x36, x37
	fmul x37, x32, x32
	lw x38, 4(x28)
	lw x38, 2(x38)
	fmul x37, x37, x38
	fadd x36, x36, x37
	lw x37, 3(x28)
	bne	x37, zero, iter_trace_diffuse_rays_beqelse_b2787
# B2786
	mv x30, x36
	j iter_trace_diffuse_rays_cont_b2788 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2787:
# B2787
	fmul x37, x31, x32
	lw x38, 9(x28)
	lw x38, 0(x38)
	fmul x37, x37, x38
	fadd x36, x36, x37
	fmul x32, x32, x30
	lw x37, 9(x28)
	lw x37, 1(x37)
	fmul x32, x32, x37
	fadd x32, x36, x32
	fmul x30, x30, x31
	lw x31, 9(x28)
	lw x31, 2(x31)
	fmul x30, x30, x31
	fadd x30, x32, x30
iter_trace_diffuse_rays_cont_b2788:
# B2788
	lw x31, 1(x28)
	bne	x31, x35, iter_trace_diffuse_rays_beqelse_b2790
# B2789
	lui x31, 260096
	fsub x30, x30, x31
iter_trace_diffuse_rays_beqelse_b2790:
# B2790
iter_trace_diffuse_rays_cont_b2791:
# B2791
	fmul x31, x34, x34
	fmul x30, x33, x30
	fsub x30, x31, x30
	fle x31, x30, zero
	bne	x31, zero, iter_trace_diffuse_rays_beqelse_b2792
# B2793
	lw x28, 6(x28)
	bne	x28, zero, iter_trace_diffuse_rays_beqelse_b2795
# B2794
	la x28, min_caml_solver_dist
	fsqrt x30, x30
	fsub x30, x34, x30
	lw x22, 4(x22)
	fmul x22, x30, x22
	sw x22, 0(x28)
	j iter_trace_diffuse_rays_cont_b2796 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2795:
# B2795
	la x28, min_caml_solver_dist
	fsqrt x30, x30
	fadd x30, x34, x30
	lw x22, 4(x22)
	fmul x22, x30, x22
	sw x22, 0(x28)
iter_trace_diffuse_rays_cont_b2796:
# B2796
iter_trace_diffuse_rays_cont_b2799:
# B2799
	la x22, min_caml_solver_dist
	lw x28, 0(x22)
	fle x28, x24, x28
	beq	x28, zero, iter_trace_diffuse_rays_bneelse_b2801
# B2800
	addi x18, x18, 1
	j iter_trace_diffuse_rays_cont_b2895 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2801:
# B2801
	mv x30, x15
	mv x31, x14
iter_trace_diffuse_rays_loop_b2802:
# B2802
	add x4, x31, x30
	lw x28, 0(x4)
	beq	x28, x23, iter_trace_diffuse_rays_bneelse_b2803
# B2804
	la x32, min_caml_and_net
	add x4, x32, x28
	lw x28, 0(x4)
	mv x33, x28
	mv x32, zero
iter_trace_diffuse_rays_loop_b2805:
# B2805
	add x4, x33, x32
	lw x28, 0(x4)
	beq	x28, x23, iter_trace_diffuse_rays_bneelse_b2806
# B2807
	add x4, x33, x32
	lw x28, 0(x4)
	add x4, x20, x28
	lw x34, 0(x4)
	lw x35, 0(x21)
	lw x36, 5(x34)
	lw x36, 0(x36)
	fsub x35, x35, x36
	lw x36, 1(x21)
	lw x37, 5(x34)
	lw x37, 1(x37)
	fsub x36, x36, x37
	lw x37, 2(x21)
	lw x38, 5(x34)
	lw x38, 2(x38)
	fsub x37, x37, x38
	lw x38, 1(x27)
	add x4, x38, x28
	lw x38, 0(x4)
	lw x39, 1(x34)
	bne	x39, x15, iter_trace_diffuse_rays_beqelse_b2809
# B2808
	lw x39, 0(x27)
	lw x40, 0(x38)
	fsub x40, x40, x35
	lw x5, 1(x38)
	fmul x40, x40, x5
	lw x5, 1(x39)
	fmul x5, x40, x5
	fadd x5, x5, x36
	fabs x5, x5
	lw x6, 4(x34)
	lw x6, 1(x6)
	fle x5, x6, x5
	bne	x5, zero, iter_trace_diffuse_rays_beqelse_b2810
# B2811
	lw x5, 2(x39)
	fmul x5, x40, x5
	fadd x5, x5, x37
	fabs x5, x5
	lw x6, 4(x34)
	lw x6, 2(x6)
	fle x5, x6, x5
	bne	x5, zero, iter_trace_diffuse_rays_beqelse_b2812
# B2813
	lw x5, 1(x38)
	feq x5, x5, zero
	xori x5, x5, 1
	mv x6, x5
# B2814
	bne	x6, zero, iter_trace_diffuse_rays_beqelse_b2816
	j iter_trace_diffuse_rays_cont_b2815 # adhoc jump(3)
iter_trace_diffuse_rays_beqelse_b2816:
# B2816
	sw x40, 0(x22)
	lw x35, 0(x22)
	j iter_trace_diffuse_rays_cont_b2850 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2812:
# B2812
iter_trace_diffuse_rays_beqelse_b2810:
# B2810
iter_trace_diffuse_rays_cont_b2815:
# B2815
	lw x40, 2(x38)
	fsub x40, x40, x36
	lw x5, 3(x38)
	fmul x40, x40, x5
	lw x5, 0(x39)
	fmul x5, x40, x5
	fadd x5, x5, x35
	fabs x5, x5
	lw x6, 4(x34)
	lw x6, 0(x6)
	fle x5, x6, x5
	bne	x5, zero, iter_trace_diffuse_rays_beqelse_b2817
# B2818
	lw x5, 2(x39)
	fmul x5, x40, x5
	fadd x5, x5, x37
	fabs x5, x5
	lw x6, 4(x34)
	lw x6, 2(x6)
	fle x5, x6, x5
	bne	x5, zero, iter_trace_diffuse_rays_beqelse_b2819
# B2820
	lw x5, 3(x38)
	feq x5, x5, zero
	xori x5, x5, 1
	mv x6, x5
# B2821
	bne	x6, zero, iter_trace_diffuse_rays_beqelse_b2823
	j iter_trace_diffuse_rays_cont_b2822 # adhoc jump(3)
iter_trace_diffuse_rays_beqelse_b2823:
# B2823
	sw x40, 0(x22)
	lw x35, 0(x22)
	j iter_trace_diffuse_rays_cont_b2850 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2819:
# B2819
iter_trace_diffuse_rays_beqelse_b2817:
# B2817
iter_trace_diffuse_rays_cont_b2822:
# B2822
	lw x40, 4(x38)
	fsub x37, x40, x37
	lw x40, 5(x38)
	fmul x37, x37, x40
	lw x40, 0(x39)
	fmul x40, x37, x40
	fadd x35, x40, x35
	fabs x35, x35
	lw x40, 4(x34)
	lw x40, 0(x40)
	fle x35, x40, x35
	bne	x35, zero, iter_trace_diffuse_rays_beqelse_b2824
# B2825
	lw x35, 1(x39)
	fmul x35, x37, x35
	fadd x35, x35, x36
	fabs x35, x35
	lw x34, 4(x34)
	lw x34, 1(x34)
	fle x34, x34, x35
	bne	x34, zero, iter_trace_diffuse_rays_beqelse_b2826
# B2827
	lw x34, 5(x38)
	feq x34, x34, zero
	xori x34, x34, 1
	mv x35, x34
# B2828
	bne	x35, zero, iter_trace_diffuse_rays_beqelse_b2830
	j iter_trace_diffuse_rays_cont_b2829 # adhoc jump(3)
iter_trace_diffuse_rays_beqelse_b2830:
# B2830
	sw x37, 0(x22)
	lw x35, 0(x22)
	j iter_trace_diffuse_rays_cont_b2850 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2826:
# B2826
iter_trace_diffuse_rays_beqelse_b2824:
# B2824
iter_trace_diffuse_rays_cont_b2829:
# B2829
	lw x35, 0(x22)
	j iter_trace_diffuse_rays_cont_b2849 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2809:
# B2809
	bne	x39, x16, iter_trace_diffuse_rays_beqelse_b2832
# B2831
	lw x34, 0(x38)
	fle x34, zero, x34
	beq	x34, zero, iter_trace_diffuse_rays_bneelse_b2834
# B2833
	lw x35, 0(x22)
	j iter_trace_diffuse_rays_cont_b2849 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2834:
# B2834
	lw x34, 1(x38)
	fmul x34, x34, x35
	lw x35, 2(x38)
	fmul x35, x35, x36
	fadd x34, x34, x35
	lw x35, 3(x38)
	fmul x35, x35, x37
	fadd x34, x34, x35
	sw x34, 0(x22)
	lw x35, 0(x22)
	j iter_trace_diffuse_rays_cont_b2850 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2832:
# B2832
	lw x39, 0(x38)
	feq x40, x39, zero
	bne	x40, zero, iter_trace_diffuse_rays_beqelse_b2836
# B2835
	lw x40, 1(x38)
	fmul x40, x40, x35
	lw x5, 2(x38)
	fmul x5, x5, x36
	fadd x40, x40, x5
	li x5, 3
	lw x6, 3(x38)
	fmul x6, x6, x37
	fadd x40, x40, x6
	fmul x6, x35, x35
	lw x65, 4(x34)
	lw x65, 0(x65)
	fmul x6, x6, x65
	fmul x65, x36, x36
	lw x66, 4(x34)
	lw x66, 1(x66)
	fmul x65, x65, x66
	fadd x6, x6, x65
	fmul x65, x37, x37
	lw x66, 4(x34)
	lw x66, 2(x66)
	fmul x65, x65, x66
	fadd x6, x6, x65
	lw x65, 3(x34)
	bne	x65, zero, iter_trace_diffuse_rays_beqelse_b2838
# B2837
	mv x35, x6
	j iter_trace_diffuse_rays_cont_b2839 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2838:
# B2838
	fmul x65, x36, x37
	lw x66, 9(x34)
	lw x66, 0(x66)
	fmul x65, x65, x66
	fadd x6, x6, x65
	fmul x37, x37, x35
	lw x65, 9(x34)
	lw x65, 1(x65)
	fmul x37, x37, x65
	fadd x37, x6, x37
	fmul x35, x35, x36
	lw x36, 9(x34)
	lw x36, 2(x36)
	fmul x35, x35, x36
	fadd x35, x37, x35
iter_trace_diffuse_rays_cont_b2839:
# B2839
	lw x36, 1(x34)
	bne	x36, x5, iter_trace_diffuse_rays_beqelse_b2841
# B2840
	lui x36, 260096
	fsub x35, x35, x36
iter_trace_diffuse_rays_beqelse_b2841:
# B2841
iter_trace_diffuse_rays_cont_b2842:
# B2842
	fmul x36, x40, x40
	fmul x35, x39, x35
	fsub x35, x36, x35
	fle x36, x35, zero
	beq	x36, zero, iter_trace_diffuse_rays_bneelse_b2844
# B2843
	lw x35, 0(x22)
	j iter_trace_diffuse_rays_cont_b2849 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2844:
# B2844
	lw x34, 6(x34)
	bne	x34, zero, iter_trace_diffuse_rays_beqelse_b2846
# B2845
	fsqrt x34, x35
	fsub x34, x40, x34
	lw x35, 4(x38)
	fmul x34, x34, x35
	sw x34, 0(x22)
	j iter_trace_diffuse_rays_cont_b2847 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2846:
# B2846
	fsqrt x34, x35
	fadd x34, x40, x34
	lw x35, 4(x38)
	fmul x34, x34, x35
	sw x34, 0(x22)
iter_trace_diffuse_rays_cont_b2847:
# B2847
	lw x35, 0(x22)
iter_trace_diffuse_rays_cont_b2850:
# B2850
	lui x34, 779469
	addi x34, x34, -819
	fle x34, x34, x35
	xori x34, x34, 1
# B2851
	addi x32, x32, 1
	bne	x34, zero, iter_trace_diffuse_rays_beqelse_b2853
	j iter_trace_diffuse_rays_cont_b2852 # adhoc jump(3)
iter_trace_diffuse_rays_beqelse_b2853:
# B2853
	lui x28, 246333
	addi x28, x28, 1802
	fadd x28, x35, x28
	la x34, min_caml_light
	lw x35, 0(x34)
	fmul x35, x35, x28
	lw x36, 0(x21)
	fadd x35, x35, x36
	lw x36, 1(x34)
	fmul x36, x36, x28
	lw x37, 1(x21)
	fadd x36, x36, x37
	lw x34, 2(x34)
	fmul x28, x34, x28
	lw x34, 2(x21)
	fadd x28, x28, x34
	mv x37, x33
	mv x40, x28
	mv x38, x35
	mv x34, zero
	mv x39, x36
	j	iter_trace_diffuse_rays_loop_b2856
iter_trace_diffuse_rays_bneelse_b2883:	#moved
# B2883
	addi x34, x34, 1
iter_trace_diffuse_rays_loop_b2856:
# B2856
	add x4, x37, x34
	lw x28, 0(x4)
	beq	x28, x23, iter_trace_diffuse_rays_bneelse_b2857
# B2858
	add x4, x20, x28
	lw x28, 0(x4)
	lw x35, 5(x28)
	lw x35, 0(x35)
	fsub x35, x38, x35
	lw x36, 5(x28)
	lw x36, 1(x36)
	fsub x36, x39, x36
	lw x5, 5(x28)
	lw x5, 2(x5)
	fsub x5, x40, x5
	lw x6, 1(x28)
	bne	x6, x15, iter_trace_diffuse_rays_beqelse_b2860
# B2859
	fabs x35, x35
	lw x6, 4(x28)
	lw x6, 0(x6)
	fle x35, x6, x35
	bne	x35, zero, iter_trace_diffuse_rays_beqelse_b2861
# B2862
	fabs x35, x36
	lw x36, 4(x28)
	lw x36, 1(x36)
	fle x35, x36, x35
	bne	x35, zero, iter_trace_diffuse_rays_beqelse_b2863
# B2864
	fabs x35, x5
	lw x36, 4(x28)
	lw x36, 2(x36)
	fle x35, x36, x35
	xori x35, x35, 1
	mv x36, x35
# B2865
	bne	x36, zero, iter_trace_diffuse_rays_beqelse_b2867
	j iter_trace_diffuse_rays_cont_b2866 # adhoc jump(3)
iter_trace_diffuse_rays_beqelse_b2867:
# B2867
	lw x28, 6(x28)
	j iter_trace_diffuse_rays_cont_b2882 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2863:
# B2863
iter_trace_diffuse_rays_beqelse_b2861:
# B2861
iter_trace_diffuse_rays_cont_b2866:
# B2866
	lw x28, 6(x28)
	xori x28, x28, 1
	j iter_trace_diffuse_rays_cont_b2882 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2860:
# B2860
	bne	x6, x16, iter_trace_diffuse_rays_beqelse_b2869
# B2868
	lw x6, 4(x28)
	lw x65, 0(x6)
	fmul x35, x65, x35
	lw x65, 1(x6)
	fmul x36, x65, x36
	fadd x35, x35, x36
	lw x36, 2(x6)
	fmul x36, x36, x5
	fadd x35, x35, x36
	lw x28, 6(x28)
	fle x35, zero, x35
	xori x35, x35, 1
	bne	x28, zero, iter_trace_diffuse_rays_beqelse_b2871
# B2870
	mv x28, x35
	j iter_trace_diffuse_rays_cont_b2872 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2871:
# B2871
	xori x28, x35, 1
iter_trace_diffuse_rays_cont_b2872:
# B2872
	xori x28, x28, 1
	j iter_trace_diffuse_rays_cont_b2882 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2869:
# B2869
	fmul x6, x35, x35
	lw x65, 4(x28)
	lw x65, 0(x65)
	fmul x6, x6, x65
	fmul x65, x36, x36
	lw x66, 4(x28)
	lw x66, 1(x66)
	fmul x65, x65, x66
	fadd x6, x6, x65
	fmul x65, x5, x5
	lw x66, 4(x28)
	lw x66, 2(x66)
	fmul x65, x65, x66
	fadd x6, x6, x65
	lw x65, 3(x28)
	bne	x65, zero, iter_trace_diffuse_rays_beqelse_b2874
# B2873
	mv x35, x6
	j iter_trace_diffuse_rays_cont_b2875 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2874:
# B2874
	fmul x65, x36, x5
	lw x66, 9(x28)
	lw x66, 0(x66)
	fmul x65, x65, x66
	fadd x6, x6, x65
	fmul x5, x5, x35
	lw x65, 9(x28)
	lw x65, 1(x65)
	fmul x5, x5, x65
	fadd x5, x6, x5
	fmul x35, x35, x36
	lw x36, 9(x28)
	lw x36, 2(x36)
	fmul x35, x35, x36
	fadd x35, x5, x35
iter_trace_diffuse_rays_cont_b2875:
# B2875
	lw x36, 1(x28)
	li x5, 3
	bne	x36, x5, iter_trace_diffuse_rays_beqelse_b2877
# B2876
	lui x36, 260096
	fsub x35, x35, x36
iter_trace_diffuse_rays_beqelse_b2877:
# B2877
iter_trace_diffuse_rays_cont_b2878:
# B2878
	lw x28, 6(x28)
	fle x35, zero, x35
	xori x35, x35, 1
	bne	x28, zero, iter_trace_diffuse_rays_beqelse_b2880
# B2879
	mv x28, x35
	j iter_trace_diffuse_rays_cont_b2881 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2880:
# B2880
	xori x28, x35, 1
iter_trace_diffuse_rays_cont_b2881:
# B2881
	xori x28, x28, 1
iter_trace_diffuse_rays_cont_b2882:
# B2882
	beq	x28, zero, iter_trace_diffuse_rays_bneelse_b2883
# B2884
# B2886
	j	iter_trace_diffuse_rays_loop_b2805
iter_trace_diffuse_rays_bneelse_b2857:
# B2857
# B2887
	mv x28, x15
# B2888
	bne	x28, zero, iter_trace_diffuse_rays_beqelse_b2890
	j iter_trace_diffuse_rays_cont_b2889 # adhoc jump(3)
iter_trace_diffuse_rays_beqelse_b2890:
# B2890
	mv x32, x15
# B2891
	bne	x32, zero, iter_trace_diffuse_rays_beqelse_b2893
	j iter_trace_diffuse_rays_cont_b2892 # adhoc jump(3)
iter_trace_diffuse_rays_beqelse_b2893:
# B2893
	mv x22, x15
# B2894
	addi x18, x18, 1
	bne	x22, zero, iter_trace_diffuse_rays_beqelse_b2896
	j iter_trace_diffuse_rays_cont_b2895 # adhoc jump(3)
iter_trace_diffuse_rays_beqelse_b2896:
iter_trace_diffuse_rays_cont_b2896:
# B2896
	mv x27, x15
	mv x28, x14
iter_trace_diffuse_rays_loop_b2897:
# B2897
	add x4, x28, x27
	lw x14, 0(x4)
	beq	x14, x23, iter_trace_diffuse_rays_bneelse_b2898
# B2899
	la x22, min_caml_and_net
	add x4, x22, x14
	lw x14, 0(x4)
	mv x30, x14
	mv x22, zero
iter_trace_diffuse_rays_loop_b2900:
# B2900
	add x4, x30, x22
	lw x14, 0(x4)
	beq	x14, x23, iter_trace_diffuse_rays_bneelse_b2901
# B2902
	add x4, x30, x22
	lw x14, 0(x4)
	la x31, min_caml_light_dirvec
	add x4, x20, x14
	lw x32, 0(x4)
	lw x33, 0(x21)
	lw x34, 5(x32)
	lw x34, 0(x34)
	fsub x33, x33, x34
	lw x34, 1(x21)
	lw x35, 5(x32)
	lw x35, 1(x35)
	fsub x34, x34, x35
	lw x35, 2(x21)
	lw x36, 5(x32)
	lw x36, 2(x36)
	fsub x35, x35, x36
	lw x36, 1(x31)
	add x4, x36, x14
	lw x36, 0(x4)
	lw x37, 1(x32)
	bne	x37, x15, iter_trace_diffuse_rays_beqelse_b2904
# B2903
	lw x31, 0(x31)
	lw x37, 0(x36)
	fsub x37, x37, x33
	lw x38, 1(x36)
	fmul x37, x37, x38
	lw x38, 1(x31)
	fmul x38, x37, x38
	fadd x38, x38, x34
	fabs x38, x38
	lw x39, 4(x32)
	lw x39, 1(x39)
	fle x38, x39, x38
	bne	x38, zero, iter_trace_diffuse_rays_beqelse_b2905
# B2906
	lw x38, 2(x31)
	fmul x38, x37, x38
	fadd x38, x38, x35
	fabs x38, x38
	lw x39, 4(x32)
	lw x39, 2(x39)
	fle x38, x39, x38
	bne	x38, zero, iter_trace_diffuse_rays_beqelse_b2907
# B2908
	lw x38, 1(x36)
	feq x38, x38, zero
	xori x38, x38, 1
	mv x39, x38
# B2909
	bne	x39, zero, iter_trace_diffuse_rays_beqelse_b2911
	j iter_trace_diffuse_rays_cont_b2910 # adhoc jump(3)
iter_trace_diffuse_rays_beqelse_b2911:
# B2911
	la x31, min_caml_solver_dist
	sw x37, 0(x31)
	la x32, min_caml_solver_dist
	lw x32, 0(x32)
	j iter_trace_diffuse_rays_cont_b2945 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2907:
# B2907
iter_trace_diffuse_rays_beqelse_b2905:
# B2905
iter_trace_diffuse_rays_cont_b2910:
# B2910
	lw x37, 2(x36)
	fsub x37, x37, x34
	lw x38, 3(x36)
	fmul x37, x37, x38
	lw x38, 0(x31)
	fmul x38, x37, x38
	fadd x38, x38, x33
	fabs x38, x38
	lw x39, 4(x32)
	lw x39, 0(x39)
	fle x38, x39, x38
	bne	x38, zero, iter_trace_diffuse_rays_beqelse_b2912
# B2913
	lw x38, 2(x31)
	fmul x38, x37, x38
	fadd x38, x38, x35
	fabs x38, x38
	lw x39, 4(x32)
	lw x39, 2(x39)
	fle x38, x39, x38
	bne	x38, zero, iter_trace_diffuse_rays_beqelse_b2914
# B2915
	lw x38, 3(x36)
	feq x38, x38, zero
	xori x38, x38, 1
	mv x39, x38
# B2916
	bne	x39, zero, iter_trace_diffuse_rays_beqelse_b2918
	j iter_trace_diffuse_rays_cont_b2917 # adhoc jump(3)
iter_trace_diffuse_rays_beqelse_b2918:
# B2918
	la x31, min_caml_solver_dist
	sw x37, 0(x31)
	la x32, min_caml_solver_dist
	lw x32, 0(x32)
	j iter_trace_diffuse_rays_cont_b2945 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2914:
# B2914
iter_trace_diffuse_rays_beqelse_b2912:
# B2912
iter_trace_diffuse_rays_cont_b2917:
# B2917
	lw x37, 4(x36)
	fsub x35, x37, x35
	lw x37, 5(x36)
	fmul x35, x35, x37
	lw x37, 0(x31)
	fmul x37, x35, x37
	fadd x33, x37, x33
	fabs x33, x33
	lw x37, 4(x32)
	lw x37, 0(x37)
	fle x33, x37, x33
	bne	x33, zero, iter_trace_diffuse_rays_beqelse_b2919
# B2920
	lw x31, 1(x31)
	fmul x31, x35, x31
	fadd x31, x31, x34
	fabs x31, x31
	lw x32, 4(x32)
	lw x32, 1(x32)
	fle x31, x32, x31
	bne	x31, zero, iter_trace_diffuse_rays_beqelse_b2921
# B2922
	lw x31, 5(x36)
	feq x31, x31, zero
	xori x31, x31, 1
	mv x32, x31
# B2923
	bne	x32, zero, iter_trace_diffuse_rays_beqelse_b2925
	j iter_trace_diffuse_rays_cont_b2924 # adhoc jump(3)
iter_trace_diffuse_rays_beqelse_b2925:
# B2925
	la x31, min_caml_solver_dist
	sw x35, 0(x31)
	la x32, min_caml_solver_dist
	lw x32, 0(x32)
	j iter_trace_diffuse_rays_cont_b2945 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2921:
# B2921
iter_trace_diffuse_rays_beqelse_b2919:
# B2919
iter_trace_diffuse_rays_cont_b2924:
# B2924
	la x32, min_caml_solver_dist
	lw x32, 0(x32)
	j iter_trace_diffuse_rays_cont_b2944 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2904:
# B2904
	bne	x37, x16, iter_trace_diffuse_rays_beqelse_b2927
# B2926
	lw x31, 0(x36)
	fle x31, zero, x31
	beq	x31, zero, iter_trace_diffuse_rays_bneelse_b2929
# B2928
	la x32, min_caml_solver_dist
	lw x32, 0(x32)
	j iter_trace_diffuse_rays_cont_b2944 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2929:
# B2929
	la x31, min_caml_solver_dist
	lw x32, 1(x36)
	fmul x32, x32, x33
	lw x33, 2(x36)
	fmul x33, x33, x34
	fadd x32, x32, x33
	lw x33, 3(x36)
	fmul x33, x33, x35
	fadd x32, x32, x33
	sw x32, 0(x31)
	la x32, min_caml_solver_dist
	lw x32, 0(x32)
	j iter_trace_diffuse_rays_cont_b2945 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2927:
# B2927
	lw x31, 0(x36)
	feq x37, x31, zero
	bne	x37, zero, iter_trace_diffuse_rays_beqelse_b2931
# B2930
	lw x37, 1(x36)
	fmul x37, x37, x33
	lw x38, 2(x36)
	fmul x38, x38, x34
	fadd x37, x37, x38
	li x38, 3
	lw x39, 3(x36)
	fmul x39, x39, x35
	fadd x37, x37, x39
	fmul x39, x33, x33
	lw x40, 4(x32)
	lw x40, 0(x40)
	fmul x39, x39, x40
	fmul x40, x34, x34
	lw x5, 4(x32)
	lw x5, 1(x5)
	fmul x40, x40, x5
	fadd x39, x39, x40
	fmul x40, x35, x35
	lw x5, 4(x32)
	lw x5, 2(x5)
	fmul x40, x40, x5
	fadd x39, x39, x40
	lw x40, 3(x32)
	bne	x40, zero, iter_trace_diffuse_rays_beqelse_b2933
# B2932
	mv x33, x39
	j iter_trace_diffuse_rays_cont_b2934 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2933:
# B2933
	fmul x40, x34, x35
	lw x5, 9(x32)
	lw x5, 0(x5)
	fmul x40, x40, x5
	fadd x39, x39, x40
	fmul x35, x35, x33
	lw x40, 9(x32)
	lw x40, 1(x40)
	fmul x35, x35, x40
	fadd x35, x39, x35
	fmul x33, x33, x34
	lw x34, 9(x32)
	lw x34, 2(x34)
	fmul x33, x33, x34
	fadd x33, x35, x33
iter_trace_diffuse_rays_cont_b2934:
# B2934
	lw x34, 1(x32)
	bne	x34, x38, iter_trace_diffuse_rays_beqelse_b2936
# B2935
	lui x34, 260096
	fsub x33, x33, x34
iter_trace_diffuse_rays_beqelse_b2936:
# B2936
iter_trace_diffuse_rays_cont_b2937:
# B2937
	fmul x34, x37, x37
	fmul x31, x31, x33
	fsub x31, x34, x31
	fle x33, x31, zero
	beq	x33, zero, iter_trace_diffuse_rays_bneelse_b2939
# B2938
	la x32, min_caml_solver_dist
	lw x32, 0(x32)
	j iter_trace_diffuse_rays_cont_b2944 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2939:
# B2939
	lw x32, 6(x32)
	bne	x32, zero, iter_trace_diffuse_rays_beqelse_b2941
# B2940
	la x32, min_caml_solver_dist
	fsqrt x31, x31
	fsub x31, x37, x31
	lw x33, 4(x36)
	fmul x31, x31, x33
	sw x31, 0(x32)
	j iter_trace_diffuse_rays_cont_b2942 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2941:
# B2941
	la x32, min_caml_solver_dist
	fsqrt x31, x31
	fadd x31, x37, x31
	lw x33, 4(x36)
	fmul x31, x31, x33
	sw x31, 0(x32)
iter_trace_diffuse_rays_cont_b2942:
# B2942
	la x32, min_caml_solver_dist
	lw x32, 0(x32)
iter_trace_diffuse_rays_cont_b2945:
# B2945
	lui x31, 779469
	addi x31, x31, -819
	fle x31, x31, x32
	xori x31, x31, 1
# B2946
	addi x22, x22, 1
	bne	x31, zero, iter_trace_diffuse_rays_beqelse_b2948
	j iter_trace_diffuse_rays_cont_b2947 # adhoc jump(3)
iter_trace_diffuse_rays_beqelse_b2948:
# B2948
	lui x14, 246333
	addi x14, x14, 1802
	fadd x14, x32, x14
	lw x31, 0(x25)
	fmul x31, x31, x14
	lw x32, 0(x21)
	fadd x31, x31, x32
	lw x32, 1(x25)
	fmul x32, x32, x14
	lw x33, 1(x21)
	fadd x32, x32, x33
	lw x33, 2(x25)
	fmul x14, x33, x14
	lw x33, 2(x21)
	fadd x14, x14, x33
	mv x37, x14
	mv x35, x31
	mv x34, x30
	mv x33, zero
	mv x36, x32
	j	iter_trace_diffuse_rays_loop_b2951
iter_trace_diffuse_rays_bneelse_b2978:	#moved
# B2978
	addi x33, x33, 1
iter_trace_diffuse_rays_loop_b2951:
# B2951
	add x4, x34, x33
	lw x14, 0(x4)
	beq	x14, x23, iter_trace_diffuse_rays_bneelse_b2952
# B2953
	add x4, x20, x14
	lw x14, 0(x4)
	lw x31, 5(x14)
	lw x31, 0(x31)
	fsub x31, x35, x31
	lw x32, 5(x14)
	lw x32, 1(x32)
	fsub x32, x36, x32
	lw x38, 5(x14)
	lw x38, 2(x38)
	fsub x38, x37, x38
	lw x39, 1(x14)
	bne	x39, x15, iter_trace_diffuse_rays_beqelse_b2955
# B2954
	fabs x31, x31
	lw x39, 4(x14)
	lw x39, 0(x39)
	fle x31, x39, x31
	bne	x31, zero, iter_trace_diffuse_rays_beqelse_b2956
# B2957
	fabs x31, x32
	lw x32, 4(x14)
	lw x32, 1(x32)
	fle x31, x32, x31
	bne	x31, zero, iter_trace_diffuse_rays_beqelse_b2958
# B2959
	fabs x31, x38
	lw x32, 4(x14)
	lw x32, 2(x32)
	fle x31, x32, x31
	xori x31, x31, 1
	mv x32, x31
# B2960
	bne	x32, zero, iter_trace_diffuse_rays_beqelse_b2962
	j iter_trace_diffuse_rays_cont_b2961 # adhoc jump(3)
iter_trace_diffuse_rays_beqelse_b2962:
# B2962
	lw x14, 6(x14)
	j iter_trace_diffuse_rays_cont_b2977 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2958:
# B2958
iter_trace_diffuse_rays_beqelse_b2956:
# B2956
iter_trace_diffuse_rays_cont_b2961:
# B2961
	lw x14, 6(x14)
	xori x14, x14, 1
	j iter_trace_diffuse_rays_cont_b2977 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2955:
# B2955
	bne	x39, x16, iter_trace_diffuse_rays_beqelse_b2964
# B2963
	lw x39, 4(x14)
	lw x40, 0(x39)
	fmul x31, x40, x31
	lw x40, 1(x39)
	fmul x32, x40, x32
	fadd x31, x31, x32
	lw x32, 2(x39)
	fmul x32, x32, x38
	fadd x31, x31, x32
	lw x14, 6(x14)
	fle x31, zero, x31
	xori x31, x31, 1
	bne	x14, zero, iter_trace_diffuse_rays_beqelse_b2966
# B2965
	mv x14, x31
	j iter_trace_diffuse_rays_cont_b2967 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2966:
# B2966
	xori x14, x31, 1
iter_trace_diffuse_rays_cont_b2967:
# B2967
	xori x14, x14, 1
	j iter_trace_diffuse_rays_cont_b2977 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2964:
# B2964
	fmul x39, x31, x31
	lw x40, 4(x14)
	lw x40, 0(x40)
	fmul x39, x39, x40
	fmul x40, x32, x32
	lw x5, 4(x14)
	lw x5, 1(x5)
	fmul x40, x40, x5
	fadd x39, x39, x40
	fmul x40, x38, x38
	lw x5, 4(x14)
	lw x5, 2(x5)
	fmul x40, x40, x5
	fadd x39, x39, x40
	lw x40, 3(x14)
	bne	x40, zero, iter_trace_diffuse_rays_beqelse_b2969
# B2968
	mv x31, x39
	j iter_trace_diffuse_rays_cont_b2970 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2969:
# B2969
	fmul x40, x32, x38
	lw x5, 9(x14)
	lw x5, 0(x5)
	fmul x40, x40, x5
	fadd x39, x39, x40
	fmul x38, x38, x31
	lw x40, 9(x14)
	lw x40, 1(x40)
	fmul x38, x38, x40
	fadd x38, x39, x38
	fmul x31, x31, x32
	lw x32, 9(x14)
	lw x32, 2(x32)
	fmul x31, x31, x32
	fadd x31, x38, x31
iter_trace_diffuse_rays_cont_b2970:
# B2970
	lw x32, 1(x14)
	li x38, 3
	bne	x32, x38, iter_trace_diffuse_rays_beqelse_b2972
# B2971
	lui x32, 260096
	fsub x31, x31, x32
iter_trace_diffuse_rays_beqelse_b2972:
# B2972
iter_trace_diffuse_rays_cont_b2973:
# B2973
	lw x14, 6(x14)
	fle x31, zero, x31
	xori x31, x31, 1
	bne	x14, zero, iter_trace_diffuse_rays_beqelse_b2975
# B2974
	mv x14, x31
	j iter_trace_diffuse_rays_cont_b2976 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2975:
# B2975
	xori x14, x31, 1
iter_trace_diffuse_rays_cont_b2976:
# B2976
	xori x14, x14, 1
iter_trace_diffuse_rays_cont_b2977:
# B2977
	beq	x14, zero, iter_trace_diffuse_rays_bneelse_b2978
# B2979
# B2981
	j	iter_trace_diffuse_rays_loop_b2900
iter_trace_diffuse_rays_bneelse_b2952:
# B2952
# B2982
	mv x14, x15
# B2983
	bne	x14, zero, iter_trace_diffuse_rays_beqelse_b2985
	j iter_trace_diffuse_rays_cont_b2984 # adhoc jump(3)
iter_trace_diffuse_rays_beqelse_b2985:
# B2985
	mv x22, x15
# B2986
	bne	x22, zero, iter_trace_diffuse_rays_beqelse_b2988
	j iter_trace_diffuse_rays_cont_b2987 # adhoc jump(3)
iter_trace_diffuse_rays_beqelse_b2988:
# B2988
	mv x14, x15
# B2989
	bne	x14, zero, iter_trace_diffuse_rays_beqelse_b2991
	j iter_trace_diffuse_rays_cont_b2990 # adhoc jump(3)
iter_trace_diffuse_rays_beqelse_b2991:
# B2991
	j iter_trace_diffuse_rays_cont_b3567 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2931:
# B2931
	la x32, min_caml_solver_dist
	lw x32, 0(x32)
iter_trace_diffuse_rays_cont_b2944:
# B2944
	addi x22, x22, 1
iter_trace_diffuse_rays_cont_b2947:
# B2947
	add x4, x20, x14
	lw x14, 0(x4)
	lw x14, 6(x14)
	beq	x14, zero, iter_trace_diffuse_rays_bneelse_b2949
# B2950
	j	iter_trace_diffuse_rays_loop_b2900
iter_trace_diffuse_rays_bneelse_b2949:
# B2949
iter_trace_diffuse_rays_bneelse_b2901:
# B2901
iter_trace_diffuse_rays_cont_b2984:
# B2984
	addi x27, x27, 1
	j	iter_trace_diffuse_rays_loop_b2897
iter_trace_diffuse_rays_bneelse_b2898:
# B2898
iter_trace_diffuse_rays_cont_b2987:
# B2987
	j	iter_trace_diffuse_rays_loop_b2752
iter_trace_diffuse_rays_beqelse_b2836:
# B2836
	lw x35, 0(x22)
iter_trace_diffuse_rays_cont_b2849:
# B2849
	addi x32, x32, 1
iter_trace_diffuse_rays_cont_b2852:
# B2852
	add x4, x20, x28
	lw x28, 0(x4)
	lw x28, 6(x28)
	beq	x28, zero, iter_trace_diffuse_rays_bneelse_b2854
# B2855
	j	iter_trace_diffuse_rays_loop_b2805
iter_trace_diffuse_rays_bneelse_b2854:
# B2854
iter_trace_diffuse_rays_bneelse_b2806:
# B2806
iter_trace_diffuse_rays_cont_b2889:
# B2889
	addi x30, x30, 1
	j	iter_trace_diffuse_rays_loop_b2802
iter_trace_diffuse_rays_bneelse_b2803:
# B2803
iter_trace_diffuse_rays_cont_b2892:
# B2892
	addi x18, x18, 1
	j iter_trace_diffuse_rays_cont_b2895 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2792:
# B2792
iter_trace_diffuse_rays_beqelse_b2785:
# B2785
iter_trace_diffuse_rays_cont_b2798:
# B2798
	addi x18, x18, 1
iter_trace_diffuse_rays_cont_b2895:
# B2895
	j	iter_trace_diffuse_rays_loop_b2752
iter_trace_diffuse_rays_bneelse_b2753:
# B2753
iter_trace_diffuse_rays_cont_b2990:
# B2990
	lw x14, 0(x26)
	lw x15, 0(x25)
	fmul x14, x14, x15
	lw x15, 1(x26)
	lw x16, 1(x25)
	fmul x15, x15, x16
	fadd x14, x14, x15
	lw x15, 2(x26)
	lw x16, 2(x25)
	fmul x15, x15, x16
	fadd x14, x14, x15
	fsub x14, zero, x14
	fle x15, x14, zero
	beq	x15, zero, iter_trace_diffuse_rays_bneelse_b2993
# B2992
	mv x16, zero
	j iter_trace_diffuse_rays_cont_b2994 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2993:
# B2993
	mv x16, x14
iter_trace_diffuse_rays_cont_b2994:
# B2994
	fmul x13, x13, x16
	lw x14, 7(x17)
	lw x14, 0(x14)
	fmul x13, x13, x14
	lw x14, 0(x80)
	lw x15, 0(x29)
	fmul x15, x13, x15
	fadd x14, x14, x15
	sw x14, 0(x80)
	lw x14, 1(x80)
	lw x15, 1(x29)
	fmul x15, x13, x15
	fadd x14, x14, x15
	sw x14, 1(x80)
	lw x14, 2(x80)
	lw x15, 2(x29)
	fmul x13, x13, x15
	fadd x13, x14, x13
	sw x13, 2(x80)
	j iter_trace_diffuse_rays_cont_b3567 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2635:
# B2635
iter_trace_diffuse_rays_cont_b2638:
# B2638
	j iter_trace_diffuse_rays_cont_b3567 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2422:
# B2422
	addi x14, x12, 1
	add x4, x10, x14
	lw x14, 0(x4)
	lui x81, 799072
	fdiv x13, x13, x81
	sw x18, 0(x17)
	lw x18, 0(x19)
	mv x82, x18
	mv x83, x14
	mv x81, zero
iter_trace_diffuse_rays_loop_b2995:
# B2995
	add x4, x82, x81
	lw x18, 0(x4)
	lw x84, 0(x18)
	li x85, -1
	la x86, min_caml_objects
	li x87, 3
	lui x88, 260096
	beq	x84, x85, iter_trace_diffuse_rays_bneelse_b2996
# B2997
	li x89, 99
	la x9, min_caml_solver_dist
	li x90, 3
	bne	x84, x89, iter_trace_diffuse_rays_beqelse_b2999
# B2998
	mv x91, x15
	mv x93, x83
	mv x92, x18
iter_trace_diffuse_rays_loop_b3000:
# B3000
	add x4, x92, x91
	lw x18, 0(x4)
	beq	x18, x85, iter_trace_diffuse_rays_bneelse_b3001
# B3002
	la x84, min_caml_and_net
	add x4, x84, x18
	lw x18, 0(x4)
	mv x88, x93
	mv x87, x18
	mv x84, zero
iter_trace_diffuse_rays_beqelse_b3044:	#moved
# B3044
iter_trace_diffuse_rays_loop_b3003:
# B3003
	lw x18, 0(x88)
	add x4, x87, x84
	lw x89, 0(x4)
	beq	x89, x85, iter_trace_diffuse_rays_bneelse_b3004
# B3005
	add x4, x86, x89
	lw x94, 0(x4)
	lw x95, 10(x94)
	lw x96, 0(x95)
	lw x97, 1(x95)
	lw x98, 2(x95)
	lw x99, 1(x88)
	add x4, x99, x89
	lw x99, 0(x4)
	lw x101, 1(x94)
	bne	x101, x15, iter_trace_diffuse_rays_beqelse_b3007
# B3006
	lw x95, 0(x88)
	lw x101, 0(x99)
	fsub x101, x101, x96
	lw x102, 1(x99)
	fmul x101, x101, x102
	lw x102, 1(x95)
	fmul x102, x101, x102
	fadd x102, x102, x97
	fabs x102, x102
	lw x103, 4(x94)
	lw x103, 1(x103)
	fle x102, x103, x102
	bne	x102, zero, iter_trace_diffuse_rays_beqelse_b3008
# B3009
	lw x102, 2(x95)
	fmul x102, x101, x102
	fadd x102, x102, x98
	fabs x102, x102
	lw x103, 4(x94)
	lw x103, 2(x103)
	fle x102, x103, x102
	bne	x102, zero, iter_trace_diffuse_rays_beqelse_b3010
# B3011
	lw x102, 1(x99)
	feq x102, x102, zero
	xori x102, x102, 1
	mv x103, x102
# B3012
	bne	x103, zero, iter_trace_diffuse_rays_beqelse_b3014
	j iter_trace_diffuse_rays_cont_b3013 # adhoc jump(3)
iter_trace_diffuse_rays_beqelse_b3014:
# B3014
	la x94, min_caml_solver_dist
	sw x101, 0(x94)
	li x94, 1
	addi x84, x84, 1
	j iter_trace_diffuse_rays_cont_b3042 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3010:
# B3010
iter_trace_diffuse_rays_beqelse_b3008:
# B3008
iter_trace_diffuse_rays_cont_b3013:
# B3013
	lw x101, 2(x99)
	fsub x101, x101, x97
	lw x102, 3(x99)
	fmul x101, x101, x102
	lw x102, 0(x95)
	fmul x102, x101, x102
	fadd x102, x102, x96
	fabs x102, x102
	lw x103, 4(x94)
	lw x103, 0(x103)
	fle x102, x103, x102
	bne	x102, zero, iter_trace_diffuse_rays_beqelse_b3015
# B3016
	lw x102, 2(x95)
	fmul x102, x101, x102
	fadd x102, x102, x98
	fabs x102, x102
	lw x103, 4(x94)
	lw x103, 2(x103)
	fle x102, x103, x102
	bne	x102, zero, iter_trace_diffuse_rays_beqelse_b3017
# B3018
	lw x102, 3(x99)
	feq x102, x102, zero
	xori x102, x102, 1
	mv x103, x102
# B3019
	bne	x103, zero, iter_trace_diffuse_rays_beqelse_b3021
	j iter_trace_diffuse_rays_cont_b3020 # adhoc jump(3)
iter_trace_diffuse_rays_beqelse_b3021:
# B3021
	la x94, min_caml_solver_dist
	sw x101, 0(x94)
	li x94, 2
	addi x84, x84, 1
	j iter_trace_diffuse_rays_cont_b3042 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3017:
# B3017
iter_trace_diffuse_rays_beqelse_b3015:
# B3015
iter_trace_diffuse_rays_cont_b3020:
# B3020
	lw x101, 4(x99)
	fsub x98, x101, x98
	lw x101, 5(x99)
	fmul x98, x98, x101
	lw x101, 0(x95)
	fmul x101, x98, x101
	fadd x96, x101, x96
	fabs x96, x96
	lw x101, 4(x94)
	lw x101, 0(x101)
	fle x96, x101, x96
	bne	x96, zero, iter_trace_diffuse_rays_beqelse_b3022
# B3023
	lw x95, 1(x95)
	fmul x95, x98, x95
	fadd x95, x95, x97
	fabs x95, x95
	lw x94, 4(x94)
	lw x94, 1(x94)
	fle x94, x94, x95
	bne	x94, zero, iter_trace_diffuse_rays_beqelse_b3024
# B3025
	lw x94, 5(x99)
	feq x94, x94, zero
	xori x94, x94, 1
	mv x95, x94
# B3026
	bne	x95, zero, iter_trace_diffuse_rays_beqelse_b3028
	j iter_trace_diffuse_rays_cont_b3027 # adhoc jump(3)
iter_trace_diffuse_rays_beqelse_b3028:
# B3028
	la x94, min_caml_solver_dist
	sw x98, 0(x94)
	li x94, 3
	addi x84, x84, 1
	j iter_trace_diffuse_rays_cont_b3042 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3024:
# B3024
iter_trace_diffuse_rays_beqelse_b3022:
# B3022
iter_trace_diffuse_rays_cont_b3027:
# B3027
	mv x94, zero
	addi x84, x84, 1
	j iter_trace_diffuse_rays_cont_b3041 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3007:
# B3007
	bne	x101, x16, iter_trace_diffuse_rays_beqelse_b3030
# B3029
	lw x94, 0(x99)
	fle x94, zero, x94
	beq	x94, zero, iter_trace_diffuse_rays_bneelse_b3032
# B3031
	mv x94, zero
	addi x84, x84, 1
	j iter_trace_diffuse_rays_cont_b3041 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b3032:
# B3032
	la x94, min_caml_solver_dist
	lw x96, 0(x99)
	lw x95, 3(x95)
	fmul x95, x96, x95
	sw x95, 0(x94)
	li x94, 1
	addi x84, x84, 1
	j iter_trace_diffuse_rays_cont_b3042 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3030:
# B3030
	lw x101, 0(x99)
	feq x102, x101, zero
	bne	x102, zero, iter_trace_diffuse_rays_beqelse_b3034
# B3033
	lw x102, 1(x99)
	fmul x96, x102, x96
	lw x102, 2(x99)
	fmul x97, x102, x97
	fadd x96, x96, x97
	lw x97, 3(x99)
	fmul x97, x97, x98
	fadd x96, x96, x97
	lw x95, 3(x95)
	fmul x97, x96, x96
	fmul x95, x101, x95
	fsub x95, x97, x95
	fle x97, x95, zero
	beq	x97, zero, iter_trace_diffuse_rays_bneelse_b3036
# B3035
	mv x94, zero
	addi x84, x84, 1
	j iter_trace_diffuse_rays_cont_b3041 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b3036:
# B3036
	lw x94, 6(x94)
	bne	x94, zero, iter_trace_diffuse_rays_beqelse_b3038
# B3037
	la x94, min_caml_solver_dist
	fsqrt x95, x95
	fsub x95, x96, x95
	lw x96, 4(x99)
	fmul x95, x95, x96
	sw x95, 0(x94)
	j iter_trace_diffuse_rays_cont_b3039 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3038:
# B3038
	la x94, min_caml_solver_dist
	fsqrt x95, x95
	fadd x95, x96, x95
	lw x96, 4(x99)
	fmul x95, x95, x96
	sw x95, 0(x94)
iter_trace_diffuse_rays_cont_b3039:
# B3039
	li x94, 1
	addi x84, x84, 1
iter_trace_diffuse_rays_cont_b3042:
# B3042
	lw x95, 0(x9)
	fle x96, x95, zero
	bne	x96, zero, iter_trace_diffuse_rays_beqelse_b3045
# B3046
	lw x96, 0(x17)
	fle x96, x96, x95
	bne	x96, zero, iter_trace_diffuse_rays_beqelse_b3047
# B3048
	lui x96, 246333
	addi x96, x96, 1802
	fadd x95, x95, x96
	lw x96, 0(x18)
	fmul x96, x96, x95
	la x97, min_caml_startp_fast
	lw x98, 0(x97)
	fadd x96, x96, x98
	lw x98, 1(x18)
	fmul x98, x98, x95
	lw x99, 1(x97)
	fadd x98, x98, x99
	lw x18, 2(x18)
	fmul x18, x18, x95
	lw x97, 2(x97)
	fadd x18, x18, x97
	mv x97, zero
	mv x103, x18
	mv x102, x98
	mv x101, x96
	mv x99, x87
	j	iter_trace_diffuse_rays_loop_b3049
iter_trace_diffuse_rays_bneelse_b3076:	#moved
# B3076
	addi x97, x97, 1
iter_trace_diffuse_rays_loop_b3049:
# B3049
	add x4, x99, x97
	lw x104, 0(x4)
	beq	x104, x85, iter_trace_diffuse_rays_bneelse_b3050
# B3051
	add x4, x86, x104
	lw x104, 0(x4)
	lw x105, 5(x104)
	lw x105, 0(x105)
	fsub x105, x101, x105
	lw x106, 5(x104)
	lw x106, 1(x106)
	fsub x106, x102, x106
	lw x107, 5(x104)
	lw x107, 2(x107)
	fsub x107, x103, x107
	lw x108, 1(x104)
	bne	x108, x15, iter_trace_diffuse_rays_beqelse_b3053
# B3052
	fabs x105, x105
	lw x108, 4(x104)
	lw x108, 0(x108)
	fle x105, x108, x105
	bne	x105, zero, iter_trace_diffuse_rays_beqelse_b3054
# B3055
	fabs x105, x106
	lw x106, 4(x104)
	lw x106, 1(x106)
	fle x105, x106, x105
	bne	x105, zero, iter_trace_diffuse_rays_beqelse_b3056
# B3057
	fabs x105, x107
	lw x106, 4(x104)
	lw x106, 2(x106)
	fle x105, x106, x105
	xori x105, x105, 1
	mv x106, x105
# B3058
	bne	x106, zero, iter_trace_diffuse_rays_beqelse_b3060
	j iter_trace_diffuse_rays_cont_b3059 # adhoc jump(3)
iter_trace_diffuse_rays_beqelse_b3060:
# B3060
	lw x104, 6(x104)
	j iter_trace_diffuse_rays_cont_b3075 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3056:
# B3056
iter_trace_diffuse_rays_beqelse_b3054:
# B3054
iter_trace_diffuse_rays_cont_b3059:
# B3059
	lw x104, 6(x104)
	xori x104, x104, 1
	j iter_trace_diffuse_rays_cont_b3075 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3053:
# B3053
	bne	x108, x16, iter_trace_diffuse_rays_beqelse_b3062
# B3061
	lw x108, 4(x104)
	lw x109, 0(x108)
	fmul x105, x109, x105
	lw x109, 1(x108)
	fmul x106, x109, x106
	fadd x105, x105, x106
	lw x106, 2(x108)
	fmul x106, x106, x107
	fadd x105, x105, x106
	lw x104, 6(x104)
	fle x105, zero, x105
	xori x105, x105, 1
	bne	x104, zero, iter_trace_diffuse_rays_beqelse_b3064
# B3063
	mv x104, x105
	j iter_trace_diffuse_rays_cont_b3065 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3064:
# B3064
	xori x104, x105, 1
iter_trace_diffuse_rays_cont_b3065:
# B3065
	xori x104, x104, 1
	j iter_trace_diffuse_rays_cont_b3075 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3062:
# B3062
	fmul x108, x105, x105
	lw x109, 4(x104)
	lw x109, 0(x109)
	fmul x108, x108, x109
	fmul x109, x106, x106
	lw x110, 4(x104)
	lw x110, 1(x110)
	fmul x109, x109, x110
	fadd x108, x108, x109
	fmul x109, x107, x107
	lw x110, 4(x104)
	lw x110, 2(x110)
	fmul x109, x109, x110
	fadd x108, x108, x109
	lw x109, 3(x104)
	bne	x109, zero, iter_trace_diffuse_rays_beqelse_b3067
# B3066
	mv x105, x108
	j iter_trace_diffuse_rays_cont_b3068 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3067:
# B3067
	fmul x109, x106, x107
	lw x110, 9(x104)
	lw x110, 0(x110)
	fmul x109, x109, x110
	fadd x108, x108, x109
	fmul x107, x107, x105
	lw x109, 9(x104)
	lw x109, 1(x109)
	fmul x107, x107, x109
	fadd x107, x108, x107
	fmul x105, x105, x106
	lw x106, 9(x104)
	lw x106, 2(x106)
	fmul x105, x105, x106
	fadd x105, x107, x105
iter_trace_diffuse_rays_cont_b3068:
# B3068
	lw x106, 1(x104)
	bne	x106, x90, iter_trace_diffuse_rays_beqelse_b3070
# B3069
	lui x106, 260096
	fsub x105, x105, x106
iter_trace_diffuse_rays_beqelse_b3070:
# B3070
iter_trace_diffuse_rays_cont_b3071:
# B3071
	lw x104, 6(x104)
	fle x105, zero, x105
	xori x105, x105, 1
	bne	x104, zero, iter_trace_diffuse_rays_beqelse_b3073
# B3072
	mv x104, x105
	j iter_trace_diffuse_rays_cont_b3074 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3073:
# B3073
	xori x104, x105, 1
iter_trace_diffuse_rays_cont_b3074:
# B3074
	xori x104, x104, 1
iter_trace_diffuse_rays_cont_b3075:
# B3075
	beq	x104, zero, iter_trace_diffuse_rays_bneelse_b3076
# B3077
# B3079
	j iter_trace_diffuse_rays_cont_b3081 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b3050:
# B3050
# B3080
	sw x95, 0(x17)
	sw x96, 0(x21)
	sw x98, 1(x21)
	sw x18, 2(x21)
	sw x89, 0(x22)
	sw x94, 0(x23)
iter_trace_diffuse_rays_beqelse_b3047:
# B3047
iter_trace_diffuse_rays_beqelse_b3045:
# B3045
iter_trace_diffuse_rays_cont_b3081:
# B3081
	j	iter_trace_diffuse_rays_loop_b3003
iter_trace_diffuse_rays_beqelse_b3034:
# B3034
	mv x94, zero
	addi x84, x84, 1
iter_trace_diffuse_rays_cont_b3041:
# B3041
	add x4, x86, x89
	lw x18, 0(x4)
	lw x18, 6(x18)
	bne	x18, zero, iter_trace_diffuse_rays_beqelse_b3044
# B3043
iter_trace_diffuse_rays_bneelse_b3004:
# B3004
iter_trace_diffuse_rays_cont_b3082:
# B3082
	addi x91, x91, 1
	j	iter_trace_diffuse_rays_loop_b3000
iter_trace_diffuse_rays_bneelse_b3001:
# B3001
	j iter_trace_diffuse_rays_cont_b3205 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2999:
# B2999
	add x4, x20, x84
	lw x86, 0(x4)
	lw x89, 10(x86)
	lw x91, 0(x89)
	lw x92, 1(x89)
	lw x93, 2(x89)
	lw x94, 1(x83)
	add x4, x94, x84
	lw x84, 0(x4)
	lw x94, 1(x86)
	bne	x94, x15, iter_trace_diffuse_rays_beqelse_b3084
# B3083
	lw x89, 0(x83)
	lw x94, 0(x84)
	fsub x94, x94, x91
	lw x95, 1(x84)
	fmul x94, x94, x95
	lw x95, 1(x89)
	fmul x95, x94, x95
	fadd x95, x95, x92
	fabs x95, x95
	lw x96, 4(x86)
	lw x96, 1(x96)
	fle x95, x96, x95
	bne	x95, zero, iter_trace_diffuse_rays_beqelse_b3085
# B3086
	lw x95, 2(x89)
	fmul x95, x94, x95
	fadd x95, x95, x93
	fabs x95, x95
	lw x96, 4(x86)
	lw x96, 2(x96)
	fle x95, x96, x95
	bne	x95, zero, iter_trace_diffuse_rays_beqelse_b3087
# B3088
	lw x95, 1(x84)
	feq x95, x95, zero
	xori x95, x95, 1
	mv x96, x95
# B3089
	bne	x96, zero, iter_trace_diffuse_rays_beqelse_b3091
	j iter_trace_diffuse_rays_cont_b3090 # adhoc jump(3)
iter_trace_diffuse_rays_beqelse_b3091:
# B3091
	sw x94, 0(x9)
	mv x90, x15
	j iter_trace_diffuse_rays_cont_b3117 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3087:
# B3087
iter_trace_diffuse_rays_beqelse_b3085:
# B3085
iter_trace_diffuse_rays_cont_b3090:
# B3090
	lw x94, 2(x84)
	fsub x94, x94, x92
	lw x95, 3(x84)
	fmul x94, x94, x95
	lw x95, 0(x89)
	fmul x95, x94, x95
	fadd x95, x95, x91
	fabs x95, x95
	lw x96, 4(x86)
	lw x96, 0(x96)
	fle x95, x96, x95
	bne	x95, zero, iter_trace_diffuse_rays_beqelse_b3092
# B3093
	lw x95, 2(x89)
	fmul x95, x94, x95
	fadd x95, x95, x93
	fabs x95, x95
	lw x96, 4(x86)
	lw x96, 2(x96)
	fle x95, x96, x95
	bne	x95, zero, iter_trace_diffuse_rays_beqelse_b3094
# B3095
	lw x95, 3(x84)
	feq x95, x95, zero
	xori x95, x95, 1
	mv x96, x95
# B3096
	bne	x96, zero, iter_trace_diffuse_rays_beqelse_b3098
	j iter_trace_diffuse_rays_cont_b3097 # adhoc jump(3)
iter_trace_diffuse_rays_beqelse_b3098:
# B3098
	sw x94, 0(x9)
	mv x90, x16
	j iter_trace_diffuse_rays_cont_b3117 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3094:
# B3094
iter_trace_diffuse_rays_beqelse_b3092:
# B3092
iter_trace_diffuse_rays_cont_b3097:
# B3097
	lw x94, 4(x84)
	fsub x93, x94, x93
	lw x94, 5(x84)
	fmul x93, x93, x94
	lw x94, 0(x89)
	fmul x94, x93, x94
	fadd x91, x94, x91
	fabs x91, x91
	lw x94, 4(x86)
	lw x94, 0(x94)
	fle x91, x94, x91
	bne	x91, zero, iter_trace_diffuse_rays_beqelse_b3099
# B3100
	lw x89, 1(x89)
	fmul x89, x93, x89
	fadd x89, x89, x92
	fabs x89, x89
	lw x86, 4(x86)
	lw x86, 1(x86)
	fle x86, x86, x89
	bne	x86, zero, iter_trace_diffuse_rays_beqelse_b3101
# B3102
	lw x84, 5(x84)
	feq x84, x84, zero
	xori x84, x84, 1
	mv x86, x84
# B3103
	bne	x86, zero, iter_trace_diffuse_rays_beqelse_b3105
	j iter_trace_diffuse_rays_cont_b3104 # adhoc jump(3)
iter_trace_diffuse_rays_beqelse_b3105:
# B3105
	sw x93, 0(x9)
	j iter_trace_diffuse_rays_cont_b3117 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3101:
# B3101
iter_trace_diffuse_rays_beqelse_b3099:
# B3099
iter_trace_diffuse_rays_cont_b3104:
# B3104
	j iter_trace_diffuse_rays_cont_b3118 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3084:
# B3084
	bne	x94, x16, iter_trace_diffuse_rays_beqelse_b3107
# B3106
	lw x86, 0(x84)
	fle x86, zero, x86
	bne	x86, zero, iter_trace_diffuse_rays_beqelse_b3108
# B3109
	lw x84, 0(x84)
	lw x86, 3(x89)
	fmul x84, x84, x86
	sw x84, 0(x9)
	mv x90, x15
	j iter_trace_diffuse_rays_cont_b3117 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3108:
# B3108
	j iter_trace_diffuse_rays_cont_b3118 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3107:
# B3107
	lw x90, 0(x84)
	feq x94, x90, zero
	bne	x94, zero, iter_trace_diffuse_rays_beqelse_b3111
# B3110
	lw x94, 1(x84)
	fmul x91, x94, x91
	lw x94, 2(x84)
	fmul x92, x94, x92
	fadd x91, x91, x92
	lw x92, 3(x84)
	fmul x92, x92, x93
	fadd x91, x91, x92
	lw x89, 3(x89)
	fmul x92, x91, x91
	fmul x89, x90, x89
	fsub x89, x92, x89
	fle x90, x89, zero
	bne	x90, zero, iter_trace_diffuse_rays_beqelse_b3112
# B3113
	lw x86, 6(x86)
	fsqrt x89, x89
	bne	x86, zero, iter_trace_diffuse_rays_beqelse_b3115
# B3114
	fsub x86, x91, x89
	lw x84, 4(x84)
	fmul x84, x86, x84
	sw x84, 0(x9)
	j iter_trace_diffuse_rays_cont_b3116 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3115:
# B3115
	fadd x86, x91, x89
	lw x84, 4(x84)
	fmul x84, x86, x84
	sw x84, 0(x9)
iter_trace_diffuse_rays_cont_b3116:
# B3116
	mv x90, x15
iter_trace_diffuse_rays_cont_b3117:
# B3117
	bne	x90, zero, iter_trace_diffuse_rays_beqelse_b3119
	j iter_trace_diffuse_rays_cont_b3118 # adhoc jump(3)
iter_trace_diffuse_rays_beqelse_b3119:
# B3119
	lw x84, 0(x9)
	lw x86, 0(x17)
	fle x84, x86, x84
	bne	x84, zero, iter_trace_diffuse_rays_beqelse_b3120
# B3121
	mv x86, x15
	mv x90, x83
	mv x89, x18
iter_trace_diffuse_rays_loop_b3122:
# B3122
	add x4, x89, x86
	lw x18, 0(x4)
	beq	x18, x85, iter_trace_diffuse_rays_bneelse_b3123
# B3124
	la x84, min_caml_and_net
	add x4, x84, x18
	lw x18, 0(x4)
	mv x92, x90
	mv x91, x18
	mv x84, zero
iter_trace_diffuse_rays_beqelse_b3166:	#moved
# B3166
iter_trace_diffuse_rays_loop_b3125:
# B3125
	lw x18, 0(x92)
	add x4, x91, x84
	lw x93, 0(x4)
	beq	x93, x85, iter_trace_diffuse_rays_bneelse_b3126
# B3127
	add x4, x20, x93
	lw x94, 0(x4)
	lw x95, 10(x94)
	lw x96, 0(x95)
	lw x97, 1(x95)
	lw x98, 2(x95)
	lw x99, 1(x92)
	add x4, x99, x93
	lw x99, 0(x4)
	lw x101, 1(x94)
	bne	x101, x15, iter_trace_diffuse_rays_beqelse_b3129
# B3128
	lw x95, 0(x92)
	lw x101, 0(x99)
	fsub x101, x101, x96
	lw x102, 1(x99)
	fmul x101, x101, x102
	lw x102, 1(x95)
	fmul x102, x101, x102
	fadd x102, x102, x97
	fabs x102, x102
	lw x103, 4(x94)
	lw x103, 1(x103)
	fle x102, x103, x102
	bne	x102, zero, iter_trace_diffuse_rays_beqelse_b3130
# B3131
	lw x102, 2(x95)
	fmul x102, x101, x102
	fadd x102, x102, x98
	fabs x102, x102
	lw x103, 4(x94)
	lw x103, 2(x103)
	fle x102, x103, x102
	bne	x102, zero, iter_trace_diffuse_rays_beqelse_b3132
# B3133
	lw x102, 1(x99)
	feq x102, x102, zero
	xori x102, x102, 1
	mv x103, x102
# B3134
	bne	x103, zero, iter_trace_diffuse_rays_beqelse_b3136
	j iter_trace_diffuse_rays_cont_b3135 # adhoc jump(3)
iter_trace_diffuse_rays_beqelse_b3136:
# B3136
	sw x101, 0(x9)
	li x94, 1
	addi x84, x84, 1
	j iter_trace_diffuse_rays_cont_b3164 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3132:
# B3132
iter_trace_diffuse_rays_beqelse_b3130:
# B3130
iter_trace_diffuse_rays_cont_b3135:
# B3135
	lw x101, 2(x99)
	fsub x101, x101, x97
	lw x102, 3(x99)
	fmul x101, x101, x102
	lw x102, 0(x95)
	fmul x102, x101, x102
	fadd x102, x102, x96
	fabs x102, x102
	lw x103, 4(x94)
	lw x103, 0(x103)
	fle x102, x103, x102
	bne	x102, zero, iter_trace_diffuse_rays_beqelse_b3137
# B3138
	lw x102, 2(x95)
	fmul x102, x101, x102
	fadd x102, x102, x98
	fabs x102, x102
	lw x103, 4(x94)
	lw x103, 2(x103)
	fle x102, x103, x102
	bne	x102, zero, iter_trace_diffuse_rays_beqelse_b3139
# B3140
	lw x102, 3(x99)
	feq x102, x102, zero
	xori x102, x102, 1
	mv x103, x102
# B3141
	bne	x103, zero, iter_trace_diffuse_rays_beqelse_b3143
	j iter_trace_diffuse_rays_cont_b3142 # adhoc jump(3)
iter_trace_diffuse_rays_beqelse_b3143:
# B3143
	sw x101, 0(x9)
	li x94, 2
	addi x84, x84, 1
	j iter_trace_diffuse_rays_cont_b3164 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3139:
# B3139
iter_trace_diffuse_rays_beqelse_b3137:
# B3137
iter_trace_diffuse_rays_cont_b3142:
# B3142
	lw x101, 4(x99)
	fsub x98, x101, x98
	lw x101, 5(x99)
	fmul x98, x98, x101
	lw x101, 0(x95)
	fmul x101, x98, x101
	fadd x96, x101, x96
	fabs x96, x96
	lw x101, 4(x94)
	lw x101, 0(x101)
	fle x96, x101, x96
	bne	x96, zero, iter_trace_diffuse_rays_beqelse_b3144
# B3145
	lw x95, 1(x95)
	fmul x95, x98, x95
	fadd x95, x95, x97
	fabs x95, x95
	lw x94, 4(x94)
	lw x94, 1(x94)
	fle x94, x94, x95
	bne	x94, zero, iter_trace_diffuse_rays_beqelse_b3146
# B3147
	lw x94, 5(x99)
	feq x94, x94, zero
	xori x94, x94, 1
	mv x95, x94
# B3148
	bne	x95, zero, iter_trace_diffuse_rays_beqelse_b3150
	j iter_trace_diffuse_rays_cont_b3149 # adhoc jump(3)
iter_trace_diffuse_rays_beqelse_b3150:
# B3150
	sw x98, 0(x9)
	li x94, 3
	addi x84, x84, 1
	j iter_trace_diffuse_rays_cont_b3164 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3146:
# B3146
iter_trace_diffuse_rays_beqelse_b3144:
# B3144
iter_trace_diffuse_rays_cont_b3149:
# B3149
	mv x94, zero
	addi x84, x84, 1
	j iter_trace_diffuse_rays_cont_b3163 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3129:
# B3129
	bne	x101, x16, iter_trace_diffuse_rays_beqelse_b3152
# B3151
	lw x94, 0(x99)
	fle x94, zero, x94
	beq	x94, zero, iter_trace_diffuse_rays_bneelse_b3154
# B3153
	mv x94, zero
	addi x84, x84, 1
	j iter_trace_diffuse_rays_cont_b3163 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b3154:
# B3154
	lw x94, 0(x99)
	lw x95, 3(x95)
	fmul x94, x94, x95
	sw x94, 0(x9)
	li x94, 1
	addi x84, x84, 1
	j iter_trace_diffuse_rays_cont_b3164 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3152:
# B3152
	lw x101, 0(x99)
	feq x102, x101, zero
	bne	x102, zero, iter_trace_diffuse_rays_beqelse_b3156
# B3155
	lw x102, 1(x99)
	fmul x96, x102, x96
	lw x102, 2(x99)
	fmul x97, x102, x97
	fadd x96, x96, x97
	lw x97, 3(x99)
	fmul x97, x97, x98
	fadd x96, x96, x97
	lw x95, 3(x95)
	fmul x97, x96, x96
	fmul x95, x101, x95
	fsub x95, x97, x95
	fle x97, x95, zero
	beq	x97, zero, iter_trace_diffuse_rays_bneelse_b3158
# B3157
	mv x94, zero
	addi x84, x84, 1
	j iter_trace_diffuse_rays_cont_b3163 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b3158:
# B3158
	lw x94, 6(x94)
	bne	x94, zero, iter_trace_diffuse_rays_beqelse_b3160
# B3159
	fsqrt x94, x95
	fsub x94, x96, x94
	lw x95, 4(x99)
	fmul x94, x94, x95
	sw x94, 0(x9)
	j iter_trace_diffuse_rays_cont_b3161 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3160:
# B3160
	fsqrt x94, x95
	fadd x94, x96, x94
	lw x95, 4(x99)
	fmul x94, x94, x95
	sw x94, 0(x9)
iter_trace_diffuse_rays_cont_b3161:
# B3161
	li x94, 1
	addi x84, x84, 1
iter_trace_diffuse_rays_cont_b3164:
# B3164
	lw x95, 0(x9)
	fle x96, x95, zero
	bne	x96, zero, iter_trace_diffuse_rays_beqelse_b3167
# B3168
	lw x96, 0(x17)
	fle x96, x96, x95
	bne	x96, zero, iter_trace_diffuse_rays_beqelse_b3169
# B3170
	lui x96, 246333
	addi x96, x96, 1802
	fadd x95, x95, x96
	lw x96, 0(x18)
	fmul x96, x96, x95
	la x97, min_caml_startp_fast
	lw x98, 0(x97)
	fadd x96, x96, x98
	lw x98, 1(x18)
	fmul x98, x98, x95
	lw x99, 1(x97)
	fadd x98, x98, x99
	lw x18, 2(x18)
	fmul x18, x18, x95
	lw x97, 2(x97)
	fadd x18, x18, x97
	mv x97, zero
	mv x103, x18
	mv x102, x98
	mv x101, x96
	mv x99, x91
	j	iter_trace_diffuse_rays_loop_b3171
iter_trace_diffuse_rays_bneelse_b3198:	#moved
# B3198
	addi x97, x97, 1
iter_trace_diffuse_rays_loop_b3171:
# B3171
	add x4, x99, x97
	lw x104, 0(x4)
	beq	x104, x85, iter_trace_diffuse_rays_bneelse_b3172
# B3173
	add x4, x20, x104
	lw x104, 0(x4)
	lw x105, 5(x104)
	lw x105, 0(x105)
	fsub x105, x101, x105
	lw x106, 5(x104)
	lw x106, 1(x106)
	fsub x106, x102, x106
	lw x107, 5(x104)
	lw x107, 2(x107)
	fsub x107, x103, x107
	lw x108, 1(x104)
	bne	x108, x15, iter_trace_diffuse_rays_beqelse_b3175
# B3174
	fabs x105, x105
	lw x108, 4(x104)
	lw x108, 0(x108)
	fle x105, x108, x105
	bne	x105, zero, iter_trace_diffuse_rays_beqelse_b3176
# B3177
	fabs x105, x106
	lw x106, 4(x104)
	lw x106, 1(x106)
	fle x105, x106, x105
	bne	x105, zero, iter_trace_diffuse_rays_beqelse_b3178
# B3179
	fabs x105, x107
	lw x106, 4(x104)
	lw x106, 2(x106)
	fle x105, x106, x105
	xori x105, x105, 1
	mv x106, x105
# B3180
	bne	x106, zero, iter_trace_diffuse_rays_beqelse_b3182
	j iter_trace_diffuse_rays_cont_b3181 # adhoc jump(3)
iter_trace_diffuse_rays_beqelse_b3182:
# B3182
	lw x104, 6(x104)
	j iter_trace_diffuse_rays_cont_b3197 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3178:
# B3178
iter_trace_diffuse_rays_beqelse_b3176:
# B3176
iter_trace_diffuse_rays_cont_b3181:
# B3181
	lw x104, 6(x104)
	xori x104, x104, 1
	j iter_trace_diffuse_rays_cont_b3197 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3175:
# B3175
	bne	x108, x16, iter_trace_diffuse_rays_beqelse_b3184
# B3183
	lw x108, 4(x104)
	lw x109, 0(x108)
	fmul x105, x109, x105
	lw x109, 1(x108)
	fmul x106, x109, x106
	fadd x105, x105, x106
	lw x106, 2(x108)
	fmul x106, x106, x107
	fadd x105, x105, x106
	lw x104, 6(x104)
	fle x105, zero, x105
	xori x105, x105, 1
	bne	x104, zero, iter_trace_diffuse_rays_beqelse_b3186
# B3185
	mv x104, x105
	j iter_trace_diffuse_rays_cont_b3187 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3186:
# B3186
	xori x104, x105, 1
iter_trace_diffuse_rays_cont_b3187:
# B3187
	xori x104, x104, 1
	j iter_trace_diffuse_rays_cont_b3197 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3184:
# B3184
	fmul x108, x105, x105
	lw x109, 4(x104)
	lw x109, 0(x109)
	fmul x108, x108, x109
	fmul x109, x106, x106
	lw x110, 4(x104)
	lw x110, 1(x110)
	fmul x109, x109, x110
	fadd x108, x108, x109
	fmul x109, x107, x107
	lw x110, 4(x104)
	lw x110, 2(x110)
	fmul x109, x109, x110
	fadd x108, x108, x109
	lw x109, 3(x104)
	bne	x109, zero, iter_trace_diffuse_rays_beqelse_b3189
# B3188
	mv x105, x108
	j iter_trace_diffuse_rays_cont_b3190 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3189:
# B3189
	fmul x109, x106, x107
	lw x110, 9(x104)
	lw x110, 0(x110)
	fmul x109, x109, x110
	fadd x108, x108, x109
	fmul x107, x107, x105
	lw x109, 9(x104)
	lw x109, 1(x109)
	fmul x107, x107, x109
	fadd x107, x108, x107
	fmul x105, x105, x106
	lw x106, 9(x104)
	lw x106, 2(x106)
	fmul x105, x105, x106
	fadd x105, x107, x105
iter_trace_diffuse_rays_cont_b3190:
# B3190
	lw x106, 1(x104)
	bne	x106, x87, iter_trace_diffuse_rays_beqelse_b3192
# B3191
	fsub x105, x105, x88
iter_trace_diffuse_rays_beqelse_b3192:
# B3192
iter_trace_diffuse_rays_cont_b3193:
# B3193
	lw x104, 6(x104)
	fle x105, zero, x105
	xori x105, x105, 1
	bne	x104, zero, iter_trace_diffuse_rays_beqelse_b3195
# B3194
	mv x104, x105
	j iter_trace_diffuse_rays_cont_b3196 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3195:
# B3195
	xori x104, x105, 1
iter_trace_diffuse_rays_cont_b3196:
# B3196
	xori x104, x104, 1
iter_trace_diffuse_rays_cont_b3197:
# B3197
	beq	x104, zero, iter_trace_diffuse_rays_bneelse_b3198
# B3199
# B3201
	j iter_trace_diffuse_rays_cont_b3203 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b3172:
# B3172
# B3202
	sw x95, 0(x17)
	sw x96, 0(x21)
	sw x98, 1(x21)
	sw x18, 2(x21)
	sw x93, 0(x22)
	sw x94, 0(x23)
iter_trace_diffuse_rays_beqelse_b3169:
# B3169
iter_trace_diffuse_rays_beqelse_b3167:
# B3167
iter_trace_diffuse_rays_cont_b3203:
# B3203
	j	iter_trace_diffuse_rays_loop_b3125
iter_trace_diffuse_rays_beqelse_b3156:
# B3156
	mv x94, zero
	addi x84, x84, 1
iter_trace_diffuse_rays_cont_b3163:
# B3163
	add x4, x20, x93
	lw x18, 0(x4)
	lw x18, 6(x18)
	bne	x18, zero, iter_trace_diffuse_rays_beqelse_b3166
# B3165
iter_trace_diffuse_rays_bneelse_b3126:
# B3126
iter_trace_diffuse_rays_cont_b3204:
# B3204
	addi x86, x86, 1
	j	iter_trace_diffuse_rays_loop_b3122
iter_trace_diffuse_rays_bneelse_b3123:
# B3123
iter_trace_diffuse_rays_beqelse_b3120:
# B3120
iter_trace_diffuse_rays_beqelse_b3112:
# B3112
iter_trace_diffuse_rays_beqelse_b3111:
# B3111
iter_trace_diffuse_rays_cont_b3118:
# B3118
iter_trace_diffuse_rays_cont_b3205:
# B3205
	addi x81, x81, 1
	j	iter_trace_diffuse_rays_loop_b2995
iter_trace_diffuse_rays_bneelse_b2996:
# B2996
# B3206
	lw x17, 0(x17)
	fle x18, x17, x24
	bne	x18, zero, iter_trace_diffuse_rays_beqelse_b3207
# B3208
	fle x17, x25, x17
	xori x17, x17, 1
	mv x18, x17
# B3209
	bne	x18, zero, iter_trace_diffuse_rays_beqelse_b3211
	j iter_trace_diffuse_rays_cont_b3210 # adhoc jump(3)
iter_trace_diffuse_rays_beqelse_b3211:
# B3211
	lw x17, 0(x22)
	add x4, x86, x17
	lw x17, 0(x4)
	lw x14, 0(x14)
	lw x18, 1(x17)
	bne	x18, x15, iter_trace_diffuse_rays_beqelse_b3213
# B3212
	lw x18, 0(x23)
	sw zero, 0(x26)
	sw zero, 1(x26)
	sw zero, 2(x26)
	addi x18, x18, -1
	add x4, x14, x18
	lw x14, 0(x4)
	feq x20, x14, zero
	bne	x20, zero, iter_trace_diffuse_rays_beqelse_b3215
# B3214
	fle x14, x14, zero
	beq	x14, zero, iter_trace_diffuse_rays_bneelse_b3217
# B3216
	mv x14, x28
	j iter_trace_diffuse_rays_cont_b3218 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b3217:
# B3217
	mv x14, x88
	j iter_trace_diffuse_rays_cont_b3218 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3215:
# B3215
	mv x14, zero
iter_trace_diffuse_rays_cont_b3218:
# B3218
	fsub x14, zero, x14
	add x4, x26, x18
	sw x14, 0(x4)
	j iter_trace_diffuse_rays_cont_b3229 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3213:
# B3213
	bne	x18, x16, iter_trace_diffuse_rays_beqelse_b3220
# B3219
	lw x14, 4(x17)
	lw x14, 0(x14)
	fsub x14, zero, x14
	sw x14, 0(x26)
	lw x14, 4(x17)
	lw x14, 1(x14)
	fsub x14, zero, x14
	sw x14, 1(x26)
	lw x14, 4(x17)
	lw x14, 2(x14)
	fsub x14, zero, x14
	sw x14, 2(x26)
	j iter_trace_diffuse_rays_cont_b3229 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3220:
# B3220
	lw x14, 0(x21)
	lw x18, 5(x17)
	lw x18, 0(x18)
	fsub x14, x14, x18
	lw x18, 1(x21)
	lw x20, 5(x17)
	lw x20, 1(x20)
	fsub x18, x18, x20
	lw x20, 2(x21)
	lw x22, 5(x17)
	lw x22, 2(x22)
	fsub x20, x20, x22
	lw x22, 4(x17)
	lw x22, 0(x22)
	fmul x22, x14, x22
	lw x23, 4(x17)
	lw x23, 1(x23)
	fmul x23, x18, x23
	lw x25, 4(x17)
	lw x25, 2(x25)
	fmul x25, x20, x25
	lw x81, 3(x17)
	bne	x81, zero, iter_trace_diffuse_rays_beqelse_b3222
# B3221
	sw x22, 0(x26)
	sw x23, 1(x26)
	sw x25, 2(x26)
	j iter_trace_diffuse_rays_cont_b3223 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3222:
# B3222
	lw x81, 9(x17)
	lw x81, 2(x81)
	fmul x81, x18, x81
	lw x82, 9(x17)
	lw x82, 1(x82)
	fmul x82, x20, x82
	fadd x81, x81, x82
	fmul x81, x81, x27
	fadd x22, x22, x81
	sw x22, 0(x26)
	lw x22, 9(x17)
	lw x22, 2(x22)
	fmul x22, x14, x22
	lw x81, 9(x17)
	lw x81, 0(x81)
	fmul x20, x20, x81
	fadd x20, x22, x20
	fmul x20, x20, x27
	fadd x20, x23, x20
	sw x20, 1(x26)
	lw x20, 9(x17)
	lw x20, 1(x20)
	fmul x14, x14, x20
	lw x20, 9(x17)
	lw x20, 0(x20)
	fmul x18, x18, x20
	fadd x14, x14, x18
	fmul x14, x14, x27
	fadd x14, x25, x14
	sw x14, 2(x26)
iter_trace_diffuse_rays_cont_b3223:
# B3223
	lw x14, 6(x17)
	lw x18, 0(x26)
	fmul x18, x18, x18
	lw x20, 1(x26)
	fmul x20, x20, x20
	fadd x18, x18, x20
	lw x20, 2(x26)
	fmul x20, x20, x20
	fadd x18, x18, x20
	fsqrt x18, x18
	feq x20, x18, zero
	bne	x20, zero, iter_trace_diffuse_rays_beqelse_b3225
# B3224
	bne	x14, zero, iter_trace_diffuse_rays_beqelse_b3227
# B3226
	fdiv x14, x88, x18
	j iter_trace_diffuse_rays_cont_b3228 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3227:
# B3227
	fdiv x14, x28, x18
	j iter_trace_diffuse_rays_cont_b3228 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3225:
# B3225
	mv x14, x88
iter_trace_diffuse_rays_cont_b3228:
# B3228
	lw x18, 0(x26)
	fmul x18, x18, x14
	sw x18, 0(x26)
	lw x18, 1(x26)
	fmul x18, x18, x14
	sw x18, 1(x26)
	lw x18, 2(x26)
	fmul x14, x18, x14
	sw x14, 2(x26)
iter_trace_diffuse_rays_cont_b3229:
# B3229
	lw x14, 0(x17)
	lw x18, 8(x17)
	lw x18, 0(x18)
	sw x18, 0(x29)
	lw x18, 8(x17)
	lw x18, 1(x18)
	sw x18, 1(x29)
	lw x18, 8(x17)
	lw x18, 2(x18)
	sw x18, 2(x29)
	bne	x14, x15, iter_trace_diffuse_rays_beqelse_b3231
# B3230
	lw x14, 0(x21)
	lw x18, 5(x17)
	lw x18, 0(x18)
	fsub x14, x14, x18
	fmul x18, x14, x30
	floor x18, x18
	fmul x18, x18, x31
	fsub x14, x14, x18
	fle x14, x32, x14
	xori x14, x14, 1
	lw x18, 2(x21)
	lw x20, 5(x17)
	lw x20, 2(x20)
	fsub x18, x18, x20
	fmul x20, x18, x30
	floor x20, x20
	fmul x20, x20, x31
	fsub x18, x18, x20
	fle x18, x32, x18
	xori x18, x18, 1
	bne	x14, zero, iter_trace_diffuse_rays_beqelse_b3233
# B3232
	bne	x18, zero, iter_trace_diffuse_rays_beqelse_b3235
# B3234
	mv x20, x67
	j iter_trace_diffuse_rays_cont_b3238 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3235:
# B3235
	mv x20, zero
	j iter_trace_diffuse_rays_cont_b3238 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3233:
# B3233
	bne	x18, zero, iter_trace_diffuse_rays_beqelse_b3237
# B3236
	mv x20, zero
	j iter_trace_diffuse_rays_cont_b3238 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3237:
# B3237
	mv x20, x67
iter_trace_diffuse_rays_cont_b3238:
# B3238
	sw x20, 1(x29)
	j iter_trace_diffuse_rays_cont_b3323 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3231:
# B3231
	bne	x14, x16, iter_trace_diffuse_rays_beqelse_b3240
# B3239
	lw x14, 1(x21)
	fmul x14, x14, x33
	fle x18, x14, zero
	xori x18, x18, 1
	fabs x14, x14
	mv x22, x34
	mv x20, x14
	j	iter_trace_diffuse_rays_loop_b3241
iter_trace_diffuse_rays_bneelse_b3242:	#moved
# B3242
	fmul x22, x22, x35
iter_trace_diffuse_rays_loop_b3241:
# B3241
	fle x23, x20, x22
	beq	x23, zero, iter_trace_diffuse_rays_bneelse_b3242
# B3243
# B3244
	mv x27, x22
	mv x25, x14
	j	iter_trace_diffuse_rays_loop_b3245
iter_trace_diffuse_rays_beqelse_b3249:	#moved
# B3249
	fdiv x27, x27, x35
iter_trace_diffuse_rays_loop_b3245:
# B3245
	fle x14, x34, x25
	beq	x14, zero, iter_trace_diffuse_rays_bneelse_b3246
# B3247
	fle x14, x25, x27
	bne	x14, zero, iter_trace_diffuse_rays_beqelse_b3249
# B3248
	fsub x25, x25, x27
	fdiv x27, x27, x35
	j	iter_trace_diffuse_rays_loop_b3245
iter_trace_diffuse_rays_bneelse_b3246:
# B3246
# B3250
	fle x14, x36, x25
	bne	x14, zero, iter_trace_diffuse_rays_beqelse_b3252
# B3251
	mv x20, x25
	j iter_trace_diffuse_rays_cont_b3253 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3252:
# B3252
	fsub x20, x25, x36
iter_trace_diffuse_rays_cont_b3253:
# B3253
	bne	x14, zero, iter_trace_diffuse_rays_beqelse_b3255
# B3254
	mv x14, x18
	j iter_trace_diffuse_rays_cont_b3256 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3255:
# B3255
	xori x14, x18, 1
iter_trace_diffuse_rays_cont_b3256:
# B3256
	fle x18, x37, x20
	bne	x18, zero, iter_trace_diffuse_rays_beqelse_b3258
# B3257
	mv x18, x20
	j iter_trace_diffuse_rays_cont_b3259 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3258:
# B3258
	fsub x18, x36, x20
iter_trace_diffuse_rays_cont_b3259:
# B3259
	fle x20, x38, x18
	bne	x20, zero, iter_trace_diffuse_rays_beqelse_b3261
# B3260
	fmul x20, x18, x18
	fmul x22, x20, x5
	fadd x22, x40, x22
	fmul x22, x20, x22
	fadd x22, x39, x22
	fmul x20, x20, x22
	fadd x20, x88, x20
	fmul x18, x18, x20
	j iter_trace_diffuse_rays_cont_b3262 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3261:
# B3261
	fsub x18, x37, x18
	fmul x18, x18, x18
	fmul x20, x18, x66
	fadd x20, x65, x20
	fmul x20, x18, x20
	fadd x20, x6, x20
	fmul x18, x18, x20
	fadd x18, x88, x18
iter_trace_diffuse_rays_cont_b3262:
# B3262
	fle x20, x18, zero
	beq	x14, x20, iter_trace_diffuse_rays_bneelse_b3264
# B3263
	mv x14, x18
	j iter_trace_diffuse_rays_cont_b3265 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b3264:
# B3264
	fsub x14, zero, x18
iter_trace_diffuse_rays_cont_b3265:
# B3265
	fmul x14, x14, x14
	fmul x18, x67, x14
	sw x18, 0(x29)
	fsub x14, x88, x14
	fmul x14, x67, x14
	sw x14, 1(x29)
	j iter_trace_diffuse_rays_cont_b3323 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3240:
# B3240
	bne	x14, x87, iter_trace_diffuse_rays_beqelse_b3267
# B3266
	lw x14, 0(x21)
	lw x18, 5(x17)
	lw x18, 0(x18)
	fsub x14, x14, x18
	lw x18, 2(x21)
	lw x20, 5(x17)
	lw x20, 2(x20)
	fsub x18, x18, x20
	fmul x14, x14, x14
	fmul x18, x18, x18
	fadd x14, x14, x18
	fsqrt x14, x14
	fdiv x14, x14, x32
	floor x18, x14
	fsub x14, x14, x18
	fmul x14, x14, x68
	fabs x14, x14
	mv x20, x34
	mv x18, x14
	j	iter_trace_diffuse_rays_loop_b3268
iter_trace_diffuse_rays_bneelse_b3269:	#moved
# B3269
	fmul x20, x20, x35
iter_trace_diffuse_rays_loop_b3268:
# B3268
	fle x22, x18, x20
	beq	x22, zero, iter_trace_diffuse_rays_bneelse_b3269
# B3270
# B3271
	mv x25, x20
	mv x23, x14
	j	iter_trace_diffuse_rays_loop_b3272
iter_trace_diffuse_rays_beqelse_b3276:	#moved
# B3276
	fdiv x25, x25, x35
iter_trace_diffuse_rays_loop_b3272:
# B3272
	fle x14, x34, x23
	beq	x14, zero, iter_trace_diffuse_rays_bneelse_b3273
# B3274
	fle x14, x23, x25
	bne	x14, zero, iter_trace_diffuse_rays_beqelse_b3276
# B3275
	fsub x23, x23, x25
	fdiv x25, x25, x35
	j	iter_trace_diffuse_rays_loop_b3272
iter_trace_diffuse_rays_bneelse_b3273:
# B3273
# B3277
	fle x14, x36, x23
	bne	x14, zero, iter_trace_diffuse_rays_beqelse_b3279
# B3278
	mv x18, x23
	j iter_trace_diffuse_rays_cont_b3280 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3279:
# B3279
	fsub x18, x23, x36
iter_trace_diffuse_rays_cont_b3280:
# B3280
	bne	x14, zero, iter_trace_diffuse_rays_beqelse_b3282
# B3281
	mv x20, x15
	j iter_trace_diffuse_rays_cont_b3283 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3282:
# B3282
	mv x20, zero
iter_trace_diffuse_rays_cont_b3283:
# B3283
	fle x14, x37, x18
	bne	x14, zero, iter_trace_diffuse_rays_beqelse_b3285
# B3284
	j iter_trace_diffuse_rays_cont_b3286 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3285:
# B3285
	fsub x18, x36, x18
iter_trace_diffuse_rays_cont_b3286:
# B3286
	bne	x14, zero, iter_trace_diffuse_rays_beqelse_b3288
# B3287
	mv x14, x20
	j iter_trace_diffuse_rays_cont_b3289 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3288:
# B3288
	xori x14, x20, 1
iter_trace_diffuse_rays_cont_b3289:
# B3289
	fle x20, x38, x18
	bne	x20, zero, iter_trace_diffuse_rays_beqelse_b3291
# B3290
	fmul x18, x18, x18
	fmul x20, x18, x66
	fadd x20, x65, x20
	fmul x20, x18, x20
	fadd x20, x6, x20
	fmul x18, x18, x20
	fadd x18, x88, x18
	j iter_trace_diffuse_rays_cont_b3292 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3291:
# B3291
	fsub x18, x37, x18
	fmul x20, x18, x18
	fmul x22, x20, x5
	fadd x22, x40, x22
	fmul x22, x20, x22
	fadd x22, x39, x22
	fmul x20, x20, x22
	fadd x20, x88, x20
	fmul x18, x18, x20
iter_trace_diffuse_rays_cont_b3292:
# B3292
	fle x20, x18, zero
	beq	x14, x20, iter_trace_diffuse_rays_bneelse_b3294
# B3293
	mv x14, x18
	j iter_trace_diffuse_rays_cont_b3295 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b3294:
# B3294
	fsub x14, zero, x18
iter_trace_diffuse_rays_cont_b3295:
# B3295
	fmul x14, x14, x14
	fmul x18, x14, x67
	sw x18, 1(x29)
	fsub x14, x88, x14
	fmul x14, x14, x67
	sw x14, 2(x29)
	j iter_trace_diffuse_rays_cont_b3323 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3267:
# B3267
	bne	x14, x69, iter_trace_diffuse_rays_beqelse_b3297
# B3296
	lw x14, 0(x21)
	lw x18, 5(x17)
	lw x18, 0(x18)
	fsub x14, x14, x18
	lw x18, 4(x17)
	lw x18, 0(x18)
	fsqrt x18, x18
	fmul x14, x14, x18
	lw x18, 2(x21)
	lw x20, 5(x17)
	lw x20, 2(x20)
	fsub x18, x18, x20
	lw x20, 4(x17)
	lw x20, 2(x20)
	fsqrt x20, x20
	fmul x18, x18, x20
	fmul x20, x14, x14
	fmul x22, x18, x18
	fadd x20, x20, x22
	fabs x22, x14
	fle x22, x7, x22
	beq	x22, zero, iter_trace_diffuse_rays_bneelse_b3299
# B3298
	fdiv x14, x18, x14
	fabs x14, x14
	fle x18, x14, zero
	xori x18, x18, 1
	fabs x22, x14
	fle x23, x70, x22
	bne	x23, zero, iter_trace_diffuse_rays_beqelse_b3301
# B3300
	fmul x18, x14, x14
	fmul x22, x18, x76
	fadd x22, x75, x22
	fmul x22, x18, x22
	fadd x22, x74, x22
	fmul x22, x18, x22
	fadd x22, x73, x22
	fmul x22, x18, x22
	fadd x22, x72, x22
	fmul x22, x18, x22
	fadd x22, x71, x22
	fmul x18, x18, x22
	fadd x18, x88, x18
	fmul x14, x14, x18
	j iter_trace_diffuse_rays_cont_b3307 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3301:
# B3301
	fle x14, x77, x22
	bne	x14, zero, iter_trace_diffuse_rays_beqelse_b3303
# B3302
	fsub x14, x22, x88
	fadd x22, x22, x88
	fdiv x14, x14, x22
	fmul x22, x14, x14
	fmul x23, x22, x76
	fadd x23, x75, x23
	fmul x23, x22, x23
	fadd x23, x74, x23
	fmul x23, x22, x23
	fadd x23, x73, x23
	fmul x23, x22, x23
	fadd x23, x72, x23
	fmul x23, x22, x23
	fadd x23, x71, x23
	fmul x22, x22, x23
	fadd x22, x88, x22
	fmul x14, x14, x22
	fadd x14, x38, x14
	j iter_trace_diffuse_rays_cont_b3304 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3303:
# B3303
	fdiv x14, x88, x22
	fmul x22, x14, x14
	fmul x23, x22, x76
	fadd x23, x75, x23
	fmul x23, x22, x23
	fadd x23, x74, x23
	fmul x23, x22, x23
	fadd x23, x73, x23
	fmul x23, x22, x23
	fadd x23, x72, x23
	fmul x23, x22, x23
	fadd x23, x71, x23
	fmul x22, x22, x23
	fadd x22, x88, x22
	fmul x14, x14, x22
	fsub x14, x37, x14
iter_trace_diffuse_rays_cont_b3304:
# B3304
	bne	x18, zero, iter_trace_diffuse_rays_beqelse_b3306
# B3305
	fsub x14, zero, x14
iter_trace_diffuse_rays_beqelse_b3306:
# B3306
iter_trace_diffuse_rays_cont_b3307:
# B3307
	fmul x14, x14, x78
	fdiv x14, x14, x68
	j iter_trace_diffuse_rays_cont_b3308 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b3299:
# B3299
	lui x14, 268032
iter_trace_diffuse_rays_cont_b3308:
# B3308
	floor x18, x14
	fsub x14, x14, x18
	lw x18, 1(x21)
	lw x22, 5(x17)
	lw x22, 1(x22)
	fsub x18, x18, x22
	lw x22, 4(x17)
	lw x22, 1(x22)
	fsqrt x22, x22
	fmul x18, x18, x22
	fabs x22, x20
	fle x22, x7, x22
	beq	x22, zero, iter_trace_diffuse_rays_bneelse_b3310
# B3309
	fdiv x18, x18, x20
	fabs x18, x18
	fle x20, x18, zero
	xori x20, x20, 1
	fabs x22, x18
	fle x23, x70, x22
	bne	x23, zero, iter_trace_diffuse_rays_beqelse_b3312
# B3311
	fmul x20, x18, x18
	fmul x22, x20, x76
	fadd x22, x75, x22
	fmul x22, x20, x22
	fadd x22, x74, x22
	fmul x22, x20, x22
	fadd x22, x73, x22
	fmul x22, x20, x22
	fadd x22, x72, x22
	fmul x22, x20, x22
	fadd x22, x71, x22
	fmul x20, x20, x22
	fadd x20, x88, x20
	fmul x18, x18, x20
	j iter_trace_diffuse_rays_cont_b3318 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3312:
# B3312
	fle x18, x77, x22
	bne	x18, zero, iter_trace_diffuse_rays_beqelse_b3314
# B3313
	fsub x18, x22, x88
	fadd x22, x22, x88
	fdiv x18, x18, x22
	fmul x22, x18, x18
	fmul x23, x22, x76
	fadd x23, x75, x23
	fmul x23, x22, x23
	fadd x23, x74, x23
	fmul x23, x22, x23
	fadd x23, x73, x23
	fmul x23, x22, x23
	fadd x23, x72, x23
	fmul x23, x22, x23
	fadd x23, x71, x23
	fmul x22, x22, x23
	fadd x22, x88, x22
	fmul x18, x18, x22
	fadd x18, x38, x18
	j iter_trace_diffuse_rays_cont_b3315 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3314:
# B3314
	fdiv x18, x88, x22
	fmul x22, x18, x18
	fmul x23, x22, x76
	fadd x23, x75, x23
	fmul x23, x22, x23
	fadd x23, x74, x23
	fmul x23, x22, x23
	fadd x23, x73, x23
	fmul x23, x22, x23
	fadd x23, x72, x23
	fmul x23, x22, x23
	fadd x23, x71, x23
	fmul x22, x22, x23
	fadd x22, x88, x22
	fmul x18, x18, x22
	fsub x18, x37, x18
iter_trace_diffuse_rays_cont_b3315:
# B3315
	bne	x20, zero, iter_trace_diffuse_rays_beqelse_b3317
# B3316
	fsub x18, zero, x18
iter_trace_diffuse_rays_beqelse_b3317:
# B3317
iter_trace_diffuse_rays_cont_b3318:
# B3318
	fmul x18, x18, x78
	fdiv x18, x18, x68
	j iter_trace_diffuse_rays_cont_b3319 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b3310:
# B3310
	lui x18, 268032
iter_trace_diffuse_rays_cont_b3319:
# B3319
	floor x20, x18
	fsub x18, x18, x20
	fsub x14, x27, x14
	fmul x14, x14, x14
	fsub x14, x79, x14
	fsub x18, x27, x18
	fmul x18, x18, x18
	fsub x14, x14, x18
	fle x18, zero, x14
	beq	x18, zero, iter_trace_diffuse_rays_bneelse_b3321
# B3320
	mv x20, x14
	j iter_trace_diffuse_rays_cont_b3322 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b3321:
# B3321
	mv x20, zero
iter_trace_diffuse_rays_cont_b3322:
# B3322
	fmul x14, x67, x20
	fdiv x14, x14, x8
	sw x14, 2(x29)
iter_trace_diffuse_rays_beqelse_b3297:
# B3297
iter_trace_diffuse_rays_cont_b3323:
# B3323
	lw x14, 0(x19)
	mv x19, x14
	mv x18, zero
iter_trace_diffuse_rays_loop_b3324:
# B3324
	add x4, x19, x18
	lw x14, 0(x4)
	lw x20, 0(x14)
	li x22, -1
	la x23, min_caml_light
	beq	x20, x22, iter_trace_diffuse_rays_bneelse_b3325
# B3326
	li x25, 99
	bne	x20, x25, iter_trace_diffuse_rays_beqelse_b3328
# B3327
	addi x18, x18, 1
	j iter_trace_diffuse_rays_cont_b3468 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3328:
# B3328
	la x25, min_caml_light_dirvec
	add x4, x86, x20
	lw x27, 0(x4)
	lw x28, 0(x21)
	lw x30, 5(x27)
	lw x30, 0(x30)
	fsub x28, x28, x30
	lw x30, 1(x21)
	lw x31, 5(x27)
	lw x31, 1(x31)
	fsub x30, x30, x31
	lw x31, 2(x21)
	lw x32, 5(x27)
	lw x32, 2(x32)
	fsub x31, x31, x32
	lw x32, 1(x25)
	add x4, x32, x20
	lw x20, 0(x4)
	lw x32, 1(x27)
	bne	x32, x15, iter_trace_diffuse_rays_beqelse_b3330
# B3329
	lw x32, 0(x25)
	lw x33, 0(x20)
	fsub x33, x33, x28
	lw x34, 1(x20)
	fmul x33, x33, x34
	lw x34, 1(x32)
	fmul x34, x33, x34
	fadd x34, x34, x30
	fabs x34, x34
	lw x35, 4(x27)
	lw x35, 1(x35)
	fle x34, x35, x34
	bne	x34, zero, iter_trace_diffuse_rays_beqelse_b3331
# B3332
	lw x34, 2(x32)
	fmul x34, x33, x34
	fadd x34, x34, x31
	fabs x34, x34
	lw x35, 4(x27)
	lw x35, 2(x35)
	fle x34, x35, x34
	bne	x34, zero, iter_trace_diffuse_rays_beqelse_b3333
# B3334
	lw x34, 1(x20)
	feq x34, x34, zero
	xori x34, x34, 1
	mv x35, x34
# B3335
	bne	x35, zero, iter_trace_diffuse_rays_beqelse_b3337
	j iter_trace_diffuse_rays_cont_b3336 # adhoc jump(3)
iter_trace_diffuse_rays_beqelse_b3337:
# B3337
	la x20, min_caml_solver_dist
	sw x33, 0(x20)
	j iter_trace_diffuse_rays_cont_b3371 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3333:
# B3333
iter_trace_diffuse_rays_beqelse_b3331:
# B3331
iter_trace_diffuse_rays_cont_b3336:
# B3336
	lw x33, 2(x20)
	fsub x33, x33, x30
	lw x34, 3(x20)
	fmul x33, x33, x34
	lw x34, 0(x32)
	fmul x34, x33, x34
	fadd x34, x34, x28
	fabs x34, x34
	lw x35, 4(x27)
	lw x35, 0(x35)
	fle x34, x35, x34
	bne	x34, zero, iter_trace_diffuse_rays_beqelse_b3338
# B3339
	lw x34, 2(x32)
	fmul x34, x33, x34
	fadd x34, x34, x31
	fabs x34, x34
	lw x35, 4(x27)
	lw x35, 2(x35)
	fle x34, x35, x34
	bne	x34, zero, iter_trace_diffuse_rays_beqelse_b3340
# B3341
	lw x34, 3(x20)
	feq x34, x34, zero
	xori x34, x34, 1
	mv x35, x34
# B3342
	bne	x35, zero, iter_trace_diffuse_rays_beqelse_b3344
	j iter_trace_diffuse_rays_cont_b3343 # adhoc jump(3)
iter_trace_diffuse_rays_beqelse_b3344:
# B3344
	la x20, min_caml_solver_dist
	sw x33, 0(x20)
	j iter_trace_diffuse_rays_cont_b3371 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3340:
# B3340
iter_trace_diffuse_rays_beqelse_b3338:
# B3338
iter_trace_diffuse_rays_cont_b3343:
# B3343
	lw x33, 4(x20)
	fsub x31, x33, x31
	lw x33, 5(x20)
	fmul x31, x31, x33
	lw x33, 0(x32)
	fmul x33, x31, x33
	fadd x28, x33, x28
	fabs x28, x28
	lw x33, 4(x27)
	lw x33, 0(x33)
	fle x28, x33, x28
	bne	x28, zero, iter_trace_diffuse_rays_beqelse_b3345
# B3346
	lw x28, 1(x32)
	fmul x28, x31, x28
	fadd x28, x28, x30
	fabs x28, x28
	lw x27, 4(x27)
	lw x27, 1(x27)
	fle x27, x27, x28
	bne	x27, zero, iter_trace_diffuse_rays_beqelse_b3347
# B3348
	lw x20, 5(x20)
	feq x20, x20, zero
	xori x20, x20, 1
	mv x27, x20
# B3349
	bne	x27, zero, iter_trace_diffuse_rays_beqelse_b3351
	j iter_trace_diffuse_rays_cont_b3350 # adhoc jump(3)
iter_trace_diffuse_rays_beqelse_b3351:
# B3351
	la x20, min_caml_solver_dist
	sw x31, 0(x20)
	j iter_trace_diffuse_rays_cont_b3371 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3347:
# B3347
iter_trace_diffuse_rays_beqelse_b3345:
# B3345
iter_trace_diffuse_rays_cont_b3350:
# B3350
	j iter_trace_diffuse_rays_cont_b3370 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3330:
# B3330
	bne	x32, x16, iter_trace_diffuse_rays_beqelse_b3353
# B3352
	lw x27, 0(x20)
	fle x27, zero, x27
	bne	x27, zero, iter_trace_diffuse_rays_beqelse_b3354
# B3355
	la x27, min_caml_solver_dist
	lw x32, 1(x20)
	fmul x28, x32, x28
	lw x32, 2(x20)
	fmul x30, x32, x30
	fadd x28, x28, x30
	lw x20, 3(x20)
	fmul x20, x20, x31
	fadd x20, x28, x20
	sw x20, 0(x27)
	j iter_trace_diffuse_rays_cont_b3371 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3354:
# B3354
	j iter_trace_diffuse_rays_cont_b3370 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3353:
# B3353
	lw x32, 0(x20)
	feq x33, x32, zero
	bne	x33, zero, iter_trace_diffuse_rays_beqelse_b3357
# B3356
	lw x33, 1(x20)
	fmul x33, x33, x28
	lw x34, 2(x20)
	fmul x34, x34, x30
	fadd x33, x33, x34
	li x34, 3
	lw x35, 3(x20)
	fmul x35, x35, x31
	fadd x33, x33, x35
	fmul x35, x28, x28
	lw x36, 4(x27)
	lw x36, 0(x36)
	fmul x35, x35, x36
	fmul x36, x30, x30
	lw x37, 4(x27)
	lw x37, 1(x37)
	fmul x36, x36, x37
	fadd x35, x35, x36
	fmul x36, x31, x31
	lw x37, 4(x27)
	lw x37, 2(x37)
	fmul x36, x36, x37
	fadd x35, x35, x36
	lw x36, 3(x27)
	bne	x36, zero, iter_trace_diffuse_rays_beqelse_b3359
# B3358
	mv x28, x35
	j iter_trace_diffuse_rays_cont_b3360 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3359:
# B3359
	fmul x36, x30, x31
	lw x37, 9(x27)
	lw x37, 0(x37)
	fmul x36, x36, x37
	fadd x35, x35, x36
	fmul x31, x31, x28
	lw x36, 9(x27)
	lw x36, 1(x36)
	fmul x31, x31, x36
	fadd x31, x35, x31
	fmul x28, x28, x30
	lw x30, 9(x27)
	lw x30, 2(x30)
	fmul x28, x28, x30
	fadd x28, x31, x28
iter_trace_diffuse_rays_cont_b3360:
# B3360
	lw x30, 1(x27)
	bne	x30, x34, iter_trace_diffuse_rays_beqelse_b3362
# B3361
	lui x30, 260096
	fsub x28, x28, x30
iter_trace_diffuse_rays_beqelse_b3362:
# B3362
iter_trace_diffuse_rays_cont_b3363:
# B3363
	fmul x30, x33, x33
	fmul x28, x32, x28
	fsub x28, x30, x28
	fle x30, x28, zero
	bne	x30, zero, iter_trace_diffuse_rays_beqelse_b3364
# B3365
	lw x27, 6(x27)
	bne	x27, zero, iter_trace_diffuse_rays_beqelse_b3367
# B3366
	la x27, min_caml_solver_dist
	fsqrt x28, x28
	fsub x28, x33, x28
	lw x20, 4(x20)
	fmul x20, x28, x20
	sw x20, 0(x27)
	j iter_trace_diffuse_rays_cont_b3368 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3367:
# B3367
	la x27, min_caml_solver_dist
	fsqrt x28, x28
	fadd x28, x33, x28
	lw x20, 4(x20)
	fmul x20, x28, x20
	sw x20, 0(x27)
iter_trace_diffuse_rays_cont_b3368:
# B3368
iter_trace_diffuse_rays_cont_b3371:
# B3371
	la x20, min_caml_solver_dist
	lw x27, 0(x20)
	fle x27, x24, x27
	beq	x27, zero, iter_trace_diffuse_rays_bneelse_b3373
# B3372
	addi x18, x18, 1
	j iter_trace_diffuse_rays_cont_b3467 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b3373:
# B3373
	mv x28, x15
	mv x30, x14
iter_trace_diffuse_rays_loop_b3374:
# B3374
	add x4, x30, x28
	lw x27, 0(x4)
	beq	x27, x22, iter_trace_diffuse_rays_bneelse_b3375
# B3376
	la x31, min_caml_and_net
	add x4, x31, x27
	lw x27, 0(x4)
	mv x32, x27
	mv x31, zero
iter_trace_diffuse_rays_loop_b3377:
# B3377
	add x4, x32, x31
	lw x27, 0(x4)
	beq	x27, x22, iter_trace_diffuse_rays_bneelse_b3378
# B3379
	add x4, x32, x31
	lw x27, 0(x4)
	add x4, x86, x27
	lw x33, 0(x4)
	lw x34, 0(x21)
	lw x35, 5(x33)
	lw x35, 0(x35)
	fsub x34, x34, x35
	lw x35, 1(x21)
	lw x36, 5(x33)
	lw x36, 1(x36)
	fsub x35, x35, x36
	lw x36, 2(x21)
	lw x37, 5(x33)
	lw x37, 2(x37)
	fsub x36, x36, x37
	lw x37, 1(x25)
	add x4, x37, x27
	lw x37, 0(x4)
	lw x38, 1(x33)
	bne	x38, x15, iter_trace_diffuse_rays_beqelse_b3381
# B3380
	lw x38, 0(x25)
	lw x39, 0(x37)
	fsub x39, x39, x34
	lw x40, 1(x37)
	fmul x39, x39, x40
	lw x40, 1(x38)
	fmul x40, x39, x40
	fadd x40, x40, x35
	fabs x40, x40
	lw x5, 4(x33)
	lw x5, 1(x5)
	fle x40, x5, x40
	bne	x40, zero, iter_trace_diffuse_rays_beqelse_b3382
# B3383
	lw x40, 2(x38)
	fmul x40, x39, x40
	fadd x40, x40, x36
	fabs x40, x40
	lw x5, 4(x33)
	lw x5, 2(x5)
	fle x40, x5, x40
	bne	x40, zero, iter_trace_diffuse_rays_beqelse_b3384
# B3385
	lw x40, 1(x37)
	feq x40, x40, zero
	xori x40, x40, 1
	mv x5, x40
# B3386
	bne	x5, zero, iter_trace_diffuse_rays_beqelse_b3388
	j iter_trace_diffuse_rays_cont_b3387 # adhoc jump(3)
iter_trace_diffuse_rays_beqelse_b3388:
# B3388
	sw x39, 0(x20)
	lw x34, 0(x20)
	j iter_trace_diffuse_rays_cont_b3422 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3384:
# B3384
iter_trace_diffuse_rays_beqelse_b3382:
# B3382
iter_trace_diffuse_rays_cont_b3387:
# B3387
	lw x39, 2(x37)
	fsub x39, x39, x35
	lw x40, 3(x37)
	fmul x39, x39, x40
	lw x40, 0(x38)
	fmul x40, x39, x40
	fadd x40, x40, x34
	fabs x40, x40
	lw x5, 4(x33)
	lw x5, 0(x5)
	fle x40, x5, x40
	bne	x40, zero, iter_trace_diffuse_rays_beqelse_b3389
# B3390
	lw x40, 2(x38)
	fmul x40, x39, x40
	fadd x40, x40, x36
	fabs x40, x40
	lw x5, 4(x33)
	lw x5, 2(x5)
	fle x40, x5, x40
	bne	x40, zero, iter_trace_diffuse_rays_beqelse_b3391
# B3392
	lw x40, 3(x37)
	feq x40, x40, zero
	xori x40, x40, 1
	mv x5, x40
# B3393
	bne	x5, zero, iter_trace_diffuse_rays_beqelse_b3395
	j iter_trace_diffuse_rays_cont_b3394 # adhoc jump(3)
iter_trace_diffuse_rays_beqelse_b3395:
# B3395
	sw x39, 0(x20)
	lw x34, 0(x20)
	j iter_trace_diffuse_rays_cont_b3422 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3391:
# B3391
iter_trace_diffuse_rays_beqelse_b3389:
# B3389
iter_trace_diffuse_rays_cont_b3394:
# B3394
	lw x39, 4(x37)
	fsub x36, x39, x36
	lw x39, 5(x37)
	fmul x36, x36, x39
	lw x39, 0(x38)
	fmul x39, x36, x39
	fadd x34, x39, x34
	fabs x34, x34
	lw x39, 4(x33)
	lw x39, 0(x39)
	fle x34, x39, x34
	bne	x34, zero, iter_trace_diffuse_rays_beqelse_b3396
# B3397
	lw x34, 1(x38)
	fmul x34, x36, x34
	fadd x34, x34, x35
	fabs x34, x34
	lw x33, 4(x33)
	lw x33, 1(x33)
	fle x33, x33, x34
	bne	x33, zero, iter_trace_diffuse_rays_beqelse_b3398
# B3399
	lw x33, 5(x37)
	feq x33, x33, zero
	xori x33, x33, 1
	mv x34, x33
# B3400
	bne	x34, zero, iter_trace_diffuse_rays_beqelse_b3402
	j iter_trace_diffuse_rays_cont_b3401 # adhoc jump(3)
iter_trace_diffuse_rays_beqelse_b3402:
# B3402
	sw x36, 0(x20)
	lw x34, 0(x20)
	j iter_trace_diffuse_rays_cont_b3422 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3398:
# B3398
iter_trace_diffuse_rays_beqelse_b3396:
# B3396
iter_trace_diffuse_rays_cont_b3401:
# B3401
	lw x34, 0(x20)
	j iter_trace_diffuse_rays_cont_b3421 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3381:
# B3381
	bne	x38, x16, iter_trace_diffuse_rays_beqelse_b3404
# B3403
	lw x33, 0(x37)
	fle x33, zero, x33
	beq	x33, zero, iter_trace_diffuse_rays_bneelse_b3406
# B3405
	lw x34, 0(x20)
	j iter_trace_diffuse_rays_cont_b3421 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b3406:
# B3406
	lw x33, 1(x37)
	fmul x33, x33, x34
	lw x34, 2(x37)
	fmul x34, x34, x35
	fadd x33, x33, x34
	lw x34, 3(x37)
	fmul x34, x34, x36
	fadd x33, x33, x34
	sw x33, 0(x20)
	lw x34, 0(x20)
	j iter_trace_diffuse_rays_cont_b3422 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3404:
# B3404
	lw x38, 0(x37)
	feq x39, x38, zero
	bne	x39, zero, iter_trace_diffuse_rays_beqelse_b3408
# B3407
	lw x39, 1(x37)
	fmul x39, x39, x34
	lw x40, 2(x37)
	fmul x40, x40, x35
	fadd x39, x39, x40
	li x40, 3
	lw x5, 3(x37)
	fmul x5, x5, x36
	fadd x39, x39, x5
	fmul x5, x34, x34
	lw x6, 4(x33)
	lw x6, 0(x6)
	fmul x5, x5, x6
	fmul x6, x35, x35
	lw x65, 4(x33)
	lw x65, 1(x65)
	fmul x6, x6, x65
	fadd x5, x5, x6
	fmul x6, x36, x36
	lw x65, 4(x33)
	lw x65, 2(x65)
	fmul x6, x6, x65
	fadd x5, x5, x6
	lw x6, 3(x33)
	bne	x6, zero, iter_trace_diffuse_rays_beqelse_b3410
# B3409
	mv x34, x5
	j iter_trace_diffuse_rays_cont_b3411 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3410:
# B3410
	fmul x6, x35, x36
	lw x65, 9(x33)
	lw x65, 0(x65)
	fmul x6, x6, x65
	fadd x5, x5, x6
	fmul x36, x36, x34
	lw x6, 9(x33)
	lw x6, 1(x6)
	fmul x36, x36, x6
	fadd x36, x5, x36
	fmul x34, x34, x35
	lw x35, 9(x33)
	lw x35, 2(x35)
	fmul x34, x34, x35
	fadd x34, x36, x34
iter_trace_diffuse_rays_cont_b3411:
# B3411
	lw x35, 1(x33)
	bne	x35, x40, iter_trace_diffuse_rays_beqelse_b3413
# B3412
	lui x35, 260096
	fsub x34, x34, x35
iter_trace_diffuse_rays_beqelse_b3413:
# B3413
iter_trace_diffuse_rays_cont_b3414:
# B3414
	fmul x35, x39, x39
	fmul x34, x38, x34
	fsub x34, x35, x34
	fle x35, x34, zero
	beq	x35, zero, iter_trace_diffuse_rays_bneelse_b3416
# B3415
	lw x34, 0(x20)
	j iter_trace_diffuse_rays_cont_b3421 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b3416:
# B3416
	lw x33, 6(x33)
	bne	x33, zero, iter_trace_diffuse_rays_beqelse_b3418
# B3417
	fsqrt x33, x34
	fsub x33, x39, x33
	lw x34, 4(x37)
	fmul x33, x33, x34
	sw x33, 0(x20)
	j iter_trace_diffuse_rays_cont_b3419 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3418:
# B3418
	fsqrt x33, x34
	fadd x33, x39, x33
	lw x34, 4(x37)
	fmul x33, x33, x34
	sw x33, 0(x20)
iter_trace_diffuse_rays_cont_b3419:
# B3419
	lw x34, 0(x20)
iter_trace_diffuse_rays_cont_b3422:
# B3422
	lui x33, 779469
	addi x33, x33, -819
	fle x33, x33, x34
	xori x33, x33, 1
# B3423
	addi x31, x31, 1
	bne	x33, zero, iter_trace_diffuse_rays_beqelse_b3425
	j iter_trace_diffuse_rays_cont_b3424 # adhoc jump(3)
iter_trace_diffuse_rays_beqelse_b3425:
# B3425
	lui x27, 246333
	addi x27, x27, 1802
	fadd x27, x34, x27
	la x33, min_caml_light
	lw x34, 0(x33)
	fmul x34, x34, x27
	lw x35, 0(x21)
	fadd x34, x34, x35
	lw x35, 1(x33)
	fmul x35, x35, x27
	lw x36, 1(x21)
	fadd x35, x35, x36
	lw x33, 2(x33)
	fmul x27, x33, x27
	lw x33, 2(x21)
	fadd x27, x27, x33
	mv x39, x27
	mv x37, x34
	mv x38, x35
	mv x33, zero
	mv x36, x32
	j	iter_trace_diffuse_rays_loop_b3428
iter_trace_diffuse_rays_bneelse_b3455:	#moved
# B3455
	addi x33, x33, 1
iter_trace_diffuse_rays_loop_b3428:
# B3428
	add x4, x36, x33
	lw x27, 0(x4)
	beq	x27, x22, iter_trace_diffuse_rays_bneelse_b3429
# B3430
	add x4, x86, x27
	lw x27, 0(x4)
	lw x34, 5(x27)
	lw x34, 0(x34)
	fsub x34, x37, x34
	lw x35, 5(x27)
	lw x35, 1(x35)
	fsub x35, x38, x35
	lw x40, 5(x27)
	lw x40, 2(x40)
	fsub x40, x39, x40
	lw x5, 1(x27)
	bne	x5, x15, iter_trace_diffuse_rays_beqelse_b3432
# B3431
	fabs x34, x34
	lw x5, 4(x27)
	lw x5, 0(x5)
	fle x34, x5, x34
	bne	x34, zero, iter_trace_diffuse_rays_beqelse_b3433
# B3434
	fabs x34, x35
	lw x35, 4(x27)
	lw x35, 1(x35)
	fle x34, x35, x34
	bne	x34, zero, iter_trace_diffuse_rays_beqelse_b3435
# B3436
	fabs x34, x40
	lw x35, 4(x27)
	lw x35, 2(x35)
	fle x34, x35, x34
	xori x34, x34, 1
	mv x35, x34
# B3437
	bne	x35, zero, iter_trace_diffuse_rays_beqelse_b3439
	j iter_trace_diffuse_rays_cont_b3438 # adhoc jump(3)
iter_trace_diffuse_rays_beqelse_b3439:
# B3439
	lw x27, 6(x27)
	j iter_trace_diffuse_rays_cont_b3454 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3435:
# B3435
iter_trace_diffuse_rays_beqelse_b3433:
# B3433
iter_trace_diffuse_rays_cont_b3438:
# B3438
	lw x27, 6(x27)
	xori x27, x27, 1
	j iter_trace_diffuse_rays_cont_b3454 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3432:
# B3432
	bne	x5, x16, iter_trace_diffuse_rays_beqelse_b3441
# B3440
	lw x5, 4(x27)
	lw x6, 0(x5)
	fmul x34, x6, x34
	lw x6, 1(x5)
	fmul x35, x6, x35
	fadd x34, x34, x35
	lw x35, 2(x5)
	fmul x35, x35, x40
	fadd x34, x34, x35
	lw x27, 6(x27)
	fle x34, zero, x34
	xori x34, x34, 1
	bne	x27, zero, iter_trace_diffuse_rays_beqelse_b3443
# B3442
	mv x27, x34
	j iter_trace_diffuse_rays_cont_b3444 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3443:
# B3443
	xori x27, x34, 1
iter_trace_diffuse_rays_cont_b3444:
# B3444
	xori x27, x27, 1
	j iter_trace_diffuse_rays_cont_b3454 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3441:
# B3441
	fmul x5, x34, x34
	lw x6, 4(x27)
	lw x6, 0(x6)
	fmul x5, x5, x6
	fmul x6, x35, x35
	lw x65, 4(x27)
	lw x65, 1(x65)
	fmul x6, x6, x65
	fadd x5, x5, x6
	fmul x6, x40, x40
	lw x65, 4(x27)
	lw x65, 2(x65)
	fmul x6, x6, x65
	fadd x5, x5, x6
	lw x6, 3(x27)
	bne	x6, zero, iter_trace_diffuse_rays_beqelse_b3446
# B3445
	mv x34, x5
	j iter_trace_diffuse_rays_cont_b3447 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3446:
# B3446
	fmul x6, x35, x40
	lw x65, 9(x27)
	lw x65, 0(x65)
	fmul x6, x6, x65
	fadd x5, x5, x6
	fmul x40, x40, x34
	lw x6, 9(x27)
	lw x6, 1(x6)
	fmul x40, x40, x6
	fadd x40, x5, x40
	fmul x34, x34, x35
	lw x35, 9(x27)
	lw x35, 2(x35)
	fmul x34, x34, x35
	fadd x34, x40, x34
iter_trace_diffuse_rays_cont_b3447:
# B3447
	lw x35, 1(x27)
	li x40, 3
	bne	x35, x40, iter_trace_diffuse_rays_beqelse_b3449
# B3448
	lui x35, 260096
	fsub x34, x34, x35
iter_trace_diffuse_rays_beqelse_b3449:
# B3449
iter_trace_diffuse_rays_cont_b3450:
# B3450
	lw x27, 6(x27)
	fle x34, zero, x34
	xori x34, x34, 1
	bne	x27, zero, iter_trace_diffuse_rays_beqelse_b3452
# B3451
	mv x27, x34
	j iter_trace_diffuse_rays_cont_b3453 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3452:
# B3452
	xori x27, x34, 1
iter_trace_diffuse_rays_cont_b3453:
# B3453
	xori x27, x27, 1
iter_trace_diffuse_rays_cont_b3454:
# B3454
	beq	x27, zero, iter_trace_diffuse_rays_bneelse_b3455
# B3456
# B3458
	j	iter_trace_diffuse_rays_loop_b3377
iter_trace_diffuse_rays_bneelse_b3429:
# B3429
# B3459
	mv x27, x15
# B3460
	bne	x27, zero, iter_trace_diffuse_rays_beqelse_b3462
	j iter_trace_diffuse_rays_cont_b3461 # adhoc jump(3)
iter_trace_diffuse_rays_beqelse_b3462:
# B3462
	mv x31, x15
# B3463
	bne	x31, zero, iter_trace_diffuse_rays_beqelse_b3465
	j iter_trace_diffuse_rays_cont_b3464 # adhoc jump(3)
iter_trace_diffuse_rays_beqelse_b3465:
# B3465
	mv x20, x15
# B3466
	addi x18, x18, 1
	bne	x20, zero, iter_trace_diffuse_rays_beqelse_b3468
	j iter_trace_diffuse_rays_cont_b3467 # adhoc jump(3)
iter_trace_diffuse_rays_beqelse_b3468:
iter_trace_diffuse_rays_cont_b3468:
# B3468
	mv x25, x15
	mv x27, x14
iter_trace_diffuse_rays_loop_b3469:
# B3469
	add x4, x27, x25
	lw x14, 0(x4)
	beq	x14, x22, iter_trace_diffuse_rays_bneelse_b3470
# B3471
	la x20, min_caml_and_net
	add x4, x20, x14
	lw x14, 0(x4)
	mv x28, x14
	mv x20, zero
iter_trace_diffuse_rays_loop_b3472:
# B3472
	add x4, x28, x20
	lw x14, 0(x4)
	beq	x14, x22, iter_trace_diffuse_rays_bneelse_b3473
# B3474
	add x4, x28, x20
	lw x14, 0(x4)
	la x30, min_caml_light_dirvec
	add x4, x86, x14
	lw x31, 0(x4)
	lw x32, 0(x21)
	lw x33, 5(x31)
	lw x33, 0(x33)
	fsub x32, x32, x33
	lw x33, 1(x21)
	lw x34, 5(x31)
	lw x34, 1(x34)
	fsub x33, x33, x34
	lw x34, 2(x21)
	lw x35, 5(x31)
	lw x35, 2(x35)
	fsub x34, x34, x35
	lw x35, 1(x30)
	add x4, x35, x14
	lw x35, 0(x4)
	lw x36, 1(x31)
	bne	x36, x15, iter_trace_diffuse_rays_beqelse_b3476
# B3475
	lw x30, 0(x30)
	lw x36, 0(x35)
	fsub x36, x36, x32
	lw x37, 1(x35)
	fmul x36, x36, x37
	lw x37, 1(x30)
	fmul x37, x36, x37
	fadd x37, x37, x33
	fabs x37, x37
	lw x38, 4(x31)
	lw x38, 1(x38)
	fle x37, x38, x37
	bne	x37, zero, iter_trace_diffuse_rays_beqelse_b3477
# B3478
	lw x37, 2(x30)
	fmul x37, x36, x37
	fadd x37, x37, x34
	fabs x37, x37
	lw x38, 4(x31)
	lw x38, 2(x38)
	fle x37, x38, x37
	bne	x37, zero, iter_trace_diffuse_rays_beqelse_b3479
# B3480
	lw x37, 1(x35)
	feq x37, x37, zero
	xori x37, x37, 1
	mv x38, x37
# B3481
	bne	x38, zero, iter_trace_diffuse_rays_beqelse_b3483
	j iter_trace_diffuse_rays_cont_b3482 # adhoc jump(3)
iter_trace_diffuse_rays_beqelse_b3483:
# B3483
	la x30, min_caml_solver_dist
	sw x36, 0(x30)
	la x31, min_caml_solver_dist
	lw x31, 0(x31)
	j iter_trace_diffuse_rays_cont_b3517 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3479:
# B3479
iter_trace_diffuse_rays_beqelse_b3477:
# B3477
iter_trace_diffuse_rays_cont_b3482:
# B3482
	lw x36, 2(x35)
	fsub x36, x36, x33
	lw x37, 3(x35)
	fmul x36, x36, x37
	lw x37, 0(x30)
	fmul x37, x36, x37
	fadd x37, x37, x32
	fabs x37, x37
	lw x38, 4(x31)
	lw x38, 0(x38)
	fle x37, x38, x37
	bne	x37, zero, iter_trace_diffuse_rays_beqelse_b3484
# B3485
	lw x37, 2(x30)
	fmul x37, x36, x37
	fadd x37, x37, x34
	fabs x37, x37
	lw x38, 4(x31)
	lw x38, 2(x38)
	fle x37, x38, x37
	bne	x37, zero, iter_trace_diffuse_rays_beqelse_b3486
# B3487
	lw x37, 3(x35)
	feq x37, x37, zero
	xori x37, x37, 1
	mv x38, x37
# B3488
	bne	x38, zero, iter_trace_diffuse_rays_beqelse_b3490
	j iter_trace_diffuse_rays_cont_b3489 # adhoc jump(3)
iter_trace_diffuse_rays_beqelse_b3490:
# B3490
	la x30, min_caml_solver_dist
	sw x36, 0(x30)
	la x31, min_caml_solver_dist
	lw x31, 0(x31)
	j iter_trace_diffuse_rays_cont_b3517 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3486:
# B3486
iter_trace_diffuse_rays_beqelse_b3484:
# B3484
iter_trace_diffuse_rays_cont_b3489:
# B3489
	lw x36, 4(x35)
	fsub x34, x36, x34
	lw x36, 5(x35)
	fmul x34, x34, x36
	lw x36, 0(x30)
	fmul x36, x34, x36
	fadd x32, x36, x32
	fabs x32, x32
	lw x36, 4(x31)
	lw x36, 0(x36)
	fle x32, x36, x32
	bne	x32, zero, iter_trace_diffuse_rays_beqelse_b3491
# B3492
	lw x30, 1(x30)
	fmul x30, x34, x30
	fadd x30, x30, x33
	fabs x30, x30
	lw x31, 4(x31)
	lw x31, 1(x31)
	fle x30, x31, x30
	bne	x30, zero, iter_trace_diffuse_rays_beqelse_b3493
# B3494
	lw x30, 5(x35)
	feq x30, x30, zero
	xori x30, x30, 1
	mv x31, x30
# B3495
	bne	x31, zero, iter_trace_diffuse_rays_beqelse_b3497
	j iter_trace_diffuse_rays_cont_b3496 # adhoc jump(3)
iter_trace_diffuse_rays_beqelse_b3497:
# B3497
	la x30, min_caml_solver_dist
	sw x34, 0(x30)
	la x31, min_caml_solver_dist
	lw x31, 0(x31)
	j iter_trace_diffuse_rays_cont_b3517 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3493:
# B3493
iter_trace_diffuse_rays_beqelse_b3491:
# B3491
iter_trace_diffuse_rays_cont_b3496:
# B3496
	la x31, min_caml_solver_dist
	lw x31, 0(x31)
	j iter_trace_diffuse_rays_cont_b3516 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3476:
# B3476
	bne	x36, x16, iter_trace_diffuse_rays_beqelse_b3499
# B3498
	lw x30, 0(x35)
	fle x30, zero, x30
	beq	x30, zero, iter_trace_diffuse_rays_bneelse_b3501
# B3500
	la x31, min_caml_solver_dist
	lw x31, 0(x31)
	j iter_trace_diffuse_rays_cont_b3516 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b3501:
# B3501
	la x30, min_caml_solver_dist
	lw x31, 1(x35)
	fmul x31, x31, x32
	lw x32, 2(x35)
	fmul x32, x32, x33
	fadd x31, x31, x32
	lw x32, 3(x35)
	fmul x32, x32, x34
	fadd x31, x31, x32
	sw x31, 0(x30)
	la x31, min_caml_solver_dist
	lw x31, 0(x31)
	j iter_trace_diffuse_rays_cont_b3517 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3499:
# B3499
	lw x30, 0(x35)
	feq x36, x30, zero
	bne	x36, zero, iter_trace_diffuse_rays_beqelse_b3503
# B3502
	lw x36, 1(x35)
	fmul x36, x36, x32
	lw x37, 2(x35)
	fmul x37, x37, x33
	fadd x36, x36, x37
	li x37, 3
	lw x38, 3(x35)
	fmul x38, x38, x34
	fadd x36, x36, x38
	fmul x38, x32, x32
	lw x39, 4(x31)
	lw x39, 0(x39)
	fmul x38, x38, x39
	fmul x39, x33, x33
	lw x40, 4(x31)
	lw x40, 1(x40)
	fmul x39, x39, x40
	fadd x38, x38, x39
	fmul x39, x34, x34
	lw x40, 4(x31)
	lw x40, 2(x40)
	fmul x39, x39, x40
	fadd x38, x38, x39
	lw x39, 3(x31)
	bne	x39, zero, iter_trace_diffuse_rays_beqelse_b3505
# B3504
	mv x32, x38
	j iter_trace_diffuse_rays_cont_b3506 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3505:
# B3505
	fmul x39, x33, x34
	lw x40, 9(x31)
	lw x40, 0(x40)
	fmul x39, x39, x40
	fadd x38, x38, x39
	fmul x34, x34, x32
	lw x39, 9(x31)
	lw x39, 1(x39)
	fmul x34, x34, x39
	fadd x34, x38, x34
	fmul x32, x32, x33
	lw x33, 9(x31)
	lw x33, 2(x33)
	fmul x32, x32, x33
	fadd x32, x34, x32
iter_trace_diffuse_rays_cont_b3506:
# B3506
	lw x33, 1(x31)
	bne	x33, x37, iter_trace_diffuse_rays_beqelse_b3508
# B3507
	lui x33, 260096
	fsub x32, x32, x33
iter_trace_diffuse_rays_beqelse_b3508:
# B3508
iter_trace_diffuse_rays_cont_b3509:
# B3509
	fmul x33, x36, x36
	fmul x30, x30, x32
	fsub x30, x33, x30
	fle x32, x30, zero
	beq	x32, zero, iter_trace_diffuse_rays_bneelse_b3511
# B3510
	la x31, min_caml_solver_dist
	lw x31, 0(x31)
	j iter_trace_diffuse_rays_cont_b3516 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b3511:
# B3511
	lw x31, 6(x31)
	bne	x31, zero, iter_trace_diffuse_rays_beqelse_b3513
# B3512
	la x31, min_caml_solver_dist
	fsqrt x30, x30
	fsub x30, x36, x30
	lw x32, 4(x35)
	fmul x30, x30, x32
	sw x30, 0(x31)
	j iter_trace_diffuse_rays_cont_b3514 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3513:
# B3513
	la x31, min_caml_solver_dist
	fsqrt x30, x30
	fadd x30, x36, x30
	lw x32, 4(x35)
	fmul x30, x30, x32
	sw x30, 0(x31)
iter_trace_diffuse_rays_cont_b3514:
# B3514
	la x31, min_caml_solver_dist
	lw x31, 0(x31)
iter_trace_diffuse_rays_cont_b3517:
# B3517
	lui x30, 779469
	addi x30, x30, -819
	fle x30, x30, x31
	xori x30, x30, 1
# B3518
	addi x20, x20, 1
	bne	x30, zero, iter_trace_diffuse_rays_beqelse_b3520
	j iter_trace_diffuse_rays_cont_b3519 # adhoc jump(3)
iter_trace_diffuse_rays_beqelse_b3520:
# B3520
	lui x14, 246333
	addi x14, x14, 1802
	fadd x14, x31, x14
	lw x30, 0(x23)
	fmul x30, x30, x14
	lw x31, 0(x21)
	fadd x30, x30, x31
	lw x31, 1(x23)
	fmul x31, x31, x14
	lw x32, 1(x21)
	fadd x31, x31, x32
	lw x32, 2(x23)
	fmul x14, x32, x14
	lw x32, 2(x21)
	fadd x14, x14, x32
	mv x35, x31
	mv x34, x30
	mv x36, x14
	mv x33, x28
	mv x32, zero
	j	iter_trace_diffuse_rays_loop_b3523
iter_trace_diffuse_rays_bneelse_b3550:	#moved
# B3550
	addi x32, x32, 1
iter_trace_diffuse_rays_loop_b3523:
# B3523
	add x4, x33, x32
	lw x14, 0(x4)
	beq	x14, x22, iter_trace_diffuse_rays_bneelse_b3524
# B3525
	add x4, x86, x14
	lw x14, 0(x4)
	lw x30, 5(x14)
	lw x30, 0(x30)
	fsub x30, x34, x30
	lw x31, 5(x14)
	lw x31, 1(x31)
	fsub x31, x35, x31
	lw x37, 5(x14)
	lw x37, 2(x37)
	fsub x37, x36, x37
	lw x38, 1(x14)
	bne	x38, x15, iter_trace_diffuse_rays_beqelse_b3527
# B3526
	fabs x30, x30
	lw x38, 4(x14)
	lw x38, 0(x38)
	fle x30, x38, x30
	bne	x30, zero, iter_trace_diffuse_rays_beqelse_b3528
# B3529
	fabs x30, x31
	lw x31, 4(x14)
	lw x31, 1(x31)
	fle x30, x31, x30
	bne	x30, zero, iter_trace_diffuse_rays_beqelse_b3530
# B3531
	fabs x30, x37
	lw x31, 4(x14)
	lw x31, 2(x31)
	fle x30, x31, x30
	xori x30, x30, 1
	mv x31, x30
# B3532
	bne	x31, zero, iter_trace_diffuse_rays_beqelse_b3534
	j iter_trace_diffuse_rays_cont_b3533 # adhoc jump(3)
iter_trace_diffuse_rays_beqelse_b3534:
# B3534
	lw x14, 6(x14)
	j iter_trace_diffuse_rays_cont_b3549 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3530:
# B3530
iter_trace_diffuse_rays_beqelse_b3528:
# B3528
iter_trace_diffuse_rays_cont_b3533:
# B3533
	lw x14, 6(x14)
	xori x14, x14, 1
	j iter_trace_diffuse_rays_cont_b3549 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3527:
# B3527
	bne	x38, x16, iter_trace_diffuse_rays_beqelse_b3536
# B3535
	lw x38, 4(x14)
	lw x39, 0(x38)
	fmul x30, x39, x30
	lw x39, 1(x38)
	fmul x31, x39, x31
	fadd x30, x30, x31
	lw x31, 2(x38)
	fmul x31, x31, x37
	fadd x30, x30, x31
	lw x14, 6(x14)
	fle x30, zero, x30
	xori x30, x30, 1
	bne	x14, zero, iter_trace_diffuse_rays_beqelse_b3538
# B3537
	mv x14, x30
	j iter_trace_diffuse_rays_cont_b3539 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3538:
# B3538
	xori x14, x30, 1
iter_trace_diffuse_rays_cont_b3539:
# B3539
	xori x14, x14, 1
	j iter_trace_diffuse_rays_cont_b3549 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3536:
# B3536
	fmul x38, x30, x30
	lw x39, 4(x14)
	lw x39, 0(x39)
	fmul x38, x38, x39
	fmul x39, x31, x31
	lw x40, 4(x14)
	lw x40, 1(x40)
	fmul x39, x39, x40
	fadd x38, x38, x39
	fmul x39, x37, x37
	lw x40, 4(x14)
	lw x40, 2(x40)
	fmul x39, x39, x40
	fadd x38, x38, x39
	lw x39, 3(x14)
	bne	x39, zero, iter_trace_diffuse_rays_beqelse_b3541
# B3540
	mv x30, x38
	j iter_trace_diffuse_rays_cont_b3542 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3541:
# B3541
	fmul x39, x31, x37
	lw x40, 9(x14)
	lw x40, 0(x40)
	fmul x39, x39, x40
	fadd x38, x38, x39
	fmul x37, x37, x30
	lw x39, 9(x14)
	lw x39, 1(x39)
	fmul x37, x37, x39
	fadd x37, x38, x37
	fmul x30, x30, x31
	lw x31, 9(x14)
	lw x31, 2(x31)
	fmul x30, x30, x31
	fadd x30, x37, x30
iter_trace_diffuse_rays_cont_b3542:
# B3542
	lw x31, 1(x14)
	li x37, 3
	bne	x31, x37, iter_trace_diffuse_rays_beqelse_b3544
# B3543
	lui x31, 260096
	fsub x30, x30, x31
iter_trace_diffuse_rays_beqelse_b3544:
# B3544
iter_trace_diffuse_rays_cont_b3545:
# B3545
	lw x14, 6(x14)
	fle x30, zero, x30
	xori x30, x30, 1
	bne	x14, zero, iter_trace_diffuse_rays_beqelse_b3547
# B3546
	mv x14, x30
	j iter_trace_diffuse_rays_cont_b3548 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3547:
# B3547
	xori x14, x30, 1
iter_trace_diffuse_rays_cont_b3548:
# B3548
	xori x14, x14, 1
iter_trace_diffuse_rays_cont_b3549:
# B3549
	beq	x14, zero, iter_trace_diffuse_rays_bneelse_b3550
# B3551
# B3553
	j	iter_trace_diffuse_rays_loop_b3472
iter_trace_diffuse_rays_bneelse_b3524:
# B3524
# B3554
	mv x14, x15
# B3555
	bne	x14, zero, iter_trace_diffuse_rays_beqelse_b3557
	j iter_trace_diffuse_rays_cont_b3556 # adhoc jump(3)
iter_trace_diffuse_rays_beqelse_b3557:
# B3557
	mv x20, x15
# B3558
	bne	x20, zero, iter_trace_diffuse_rays_beqelse_b3560
	j iter_trace_diffuse_rays_cont_b3559 # adhoc jump(3)
iter_trace_diffuse_rays_beqelse_b3560:
# B3560
	mv x14, x15
# B3561
	bne	x14, zero, iter_trace_diffuse_rays_beqelse_b3563
	j iter_trace_diffuse_rays_cont_b3562 # adhoc jump(3)
iter_trace_diffuse_rays_beqelse_b3563:
# B3563
	j iter_trace_diffuse_rays_cont_b3567 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3503:
# B3503
	la x31, min_caml_solver_dist
	lw x31, 0(x31)
iter_trace_diffuse_rays_cont_b3516:
# B3516
	addi x20, x20, 1
iter_trace_diffuse_rays_cont_b3519:
# B3519
	add x4, x86, x14
	lw x14, 0(x4)
	lw x14, 6(x14)
	beq	x14, zero, iter_trace_diffuse_rays_bneelse_b3521
# B3522
	j	iter_trace_diffuse_rays_loop_b3472
iter_trace_diffuse_rays_bneelse_b3521:
# B3521
iter_trace_diffuse_rays_bneelse_b3473:
# B3473
iter_trace_diffuse_rays_cont_b3556:
# B3556
	addi x25, x25, 1
	j	iter_trace_diffuse_rays_loop_b3469
iter_trace_diffuse_rays_bneelse_b3470:
# B3470
iter_trace_diffuse_rays_cont_b3559:
# B3559
	j	iter_trace_diffuse_rays_loop_b3324
iter_trace_diffuse_rays_beqelse_b3408:
# B3408
	lw x34, 0(x20)
iter_trace_diffuse_rays_cont_b3421:
# B3421
	addi x31, x31, 1
iter_trace_diffuse_rays_cont_b3424:
# B3424
	add x4, x86, x27
	lw x27, 0(x4)
	lw x27, 6(x27)
	beq	x27, zero, iter_trace_diffuse_rays_bneelse_b3426
# B3427
	j	iter_trace_diffuse_rays_loop_b3377
iter_trace_diffuse_rays_bneelse_b3426:
# B3426
iter_trace_diffuse_rays_bneelse_b3378:
# B3378
iter_trace_diffuse_rays_cont_b3461:
# B3461
	addi x28, x28, 1
	j	iter_trace_diffuse_rays_loop_b3374
iter_trace_diffuse_rays_bneelse_b3375:
# B3375
iter_trace_diffuse_rays_cont_b3464:
# B3464
	addi x18, x18, 1
	j iter_trace_diffuse_rays_cont_b3467 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3364:
# B3364
iter_trace_diffuse_rays_beqelse_b3357:
# B3357
iter_trace_diffuse_rays_cont_b3370:
# B3370
	addi x18, x18, 1
iter_trace_diffuse_rays_cont_b3467:
# B3467
	j	iter_trace_diffuse_rays_loop_b3324
iter_trace_diffuse_rays_bneelse_b3325:
# B3325
iter_trace_diffuse_rays_cont_b3562:
# B3562
	lw x14, 0(x26)
	lw x15, 0(x23)
	fmul x14, x14, x15
	lw x15, 1(x26)
	lw x16, 1(x23)
	fmul x15, x15, x16
	fadd x14, x14, x15
	lw x15, 2(x26)
	lw x16, 2(x23)
	fmul x15, x15, x16
	fadd x14, x14, x15
	fsub x14, zero, x14
	fle x15, x14, zero
	beq	x15, zero, iter_trace_diffuse_rays_bneelse_b3565
# B3564
	mv x16, zero
	j iter_trace_diffuse_rays_cont_b3566 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b3565:
# B3565
	mv x16, x14
iter_trace_diffuse_rays_cont_b3566:
# B3566
	fmul x13, x13, x16
	lw x14, 7(x17)
	lw x14, 0(x14)
	fmul x13, x13, x14
	lw x14, 0(x80)
	lw x15, 0(x29)
	fmul x15, x13, x15
	fadd x14, x14, x15
	sw x14, 0(x80)
	lw x14, 1(x80)
	lw x15, 1(x29)
	fmul x15, x13, x15
	fadd x14, x14, x15
	sw x14, 1(x80)
	lw x14, 2(x80)
	lw x15, 2(x29)
	fmul x13, x13, x15
	fadd x13, x14, x13
	sw x13, 2(x80)
iter_trace_diffuse_rays_beqelse_b3207:
# B3207
iter_trace_diffuse_rays_cont_b3210:
# B3210
iter_trace_diffuse_rays_cont_b3567:
# B3567
	addi x12, x12, -2
	j	iter_trace_diffuse_rays_loop_b2418
iter_trace_diffuse_rays_bleelse_b2420:
# B2420
	lw	ra, 0(x2)
	lw	x101, 1(x2)
	lw	x102, 2(x2)
	lw	x103, 3(x2)
	lw	x104, 4(x2)
	lw	x105, 5(x2)
	lw	x106, 6(x2)
	lw	x107, 7(x2)
	lw	x108, 8(x2)
	lw	x109, 9(x2)
	lw	x110, 10(x2)
	lw	x111, 11(x2)
	ret
trace_diffuse_rays.3085:
	sw	ra, 0(x2)
	sw	x101, 1(x2)
	sw	x102, 2(x2)
	sw	x103, 3(x2)
	sw	x104, 4(x2)
	sw	x105, 5(x2)
	sw	x106, 6(x2)
	sw	x107, 7(x2)
	sw	x108, 8(x2)
	sw	x109, 9(x2)
	sw	x110, 10(x2)
	sw	x111, 11(x2)
	sw	x112, 12(x2)
body_trace_diffuse_rays.3085:
# B3568
# B3569
	la x10, min_caml_startp_fast
	lw x100, 0(x7)
	sw x100, 0(x10)
	li x100, 1
	lw x11, 1(x7)
	sw x11, 1(x10)
	li x11, 2
	lw x12, 2(x7)
	sw x12, 2(x10)
	la x12, min_caml_n_objects
	lw x12, 0(x12)
	addi x12, x12, -1
	mv x14, x12
	mv x13, x7
trace_diffuse_rays_loop_b3570:
# B3570
	la x12, min_caml_objects
	bgt	zero, x14, trace_diffuse_rays_bleelse_b3572
# B3571
	add x4, x12, x14
	lw x12, 0(x4)
	lw x15, 10(x12)
	lw x16, 1(x12)
	lw x17, 0(x13)
	lw x18, 5(x12)
	lw x18, 0(x18)
	fsub x17, x17, x18
	sw x17, 0(x15)
	lw x17, 1(x13)
	lw x18, 5(x12)
	lw x18, 1(x18)
	fsub x17, x17, x18
	sw x17, 1(x15)
	lw x17, 2(x13)
	lw x18, 5(x12)
	lw x18, 2(x18)
	fsub x17, x17, x18
	sw x17, 2(x15)
	bne	x16, x11, trace_diffuse_rays_beqelse_b3574
# B3573
	lw x12, 4(x12)
	lw x16, 0(x15)
	lw x17, 1(x15)
	lw x18, 2(x15)
	lw x19, 0(x12)
	fmul x16, x19, x16
	lw x19, 1(x12)
	fmul x17, x19, x17
	fadd x16, x16, x17
	lw x12, 2(x12)
	fmul x12, x12, x18
	fadd x12, x16, x12
	sw x12, 3(x15)
	j trace_diffuse_rays_cont_b3583 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3574:
# B3574
	bge	x11, x16, trace_diffuse_rays_bgtelse_b3575
# B3576
	lw x17, 0(x15)
	lw x18, 1(x15)
	lw x19, 2(x15)
	fmul x20, x17, x17
	lw x21, 4(x12)
	lw x21, 0(x21)
	fmul x20, x20, x21
	fmul x21, x18, x18
	lw x22, 4(x12)
	lw x22, 1(x22)
	fmul x21, x21, x22
	fadd x20, x20, x21
	fmul x21, x19, x19
	lw x22, 4(x12)
	lw x22, 2(x22)
	fmul x21, x21, x22
	fadd x20, x20, x21
	lw x21, 3(x12)
	bne	x21, zero, trace_diffuse_rays_beqelse_b3578
# B3577
	mv x12, x20
	j trace_diffuse_rays_cont_b3579 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3578:
# B3578
	fmul x21, x18, x19
	lw x22, 9(x12)
	lw x22, 0(x22)
	fmul x21, x21, x22
	fadd x20, x20, x21
	fmul x19, x19, x17
	lw x21, 9(x12)
	lw x21, 1(x21)
	fmul x19, x19, x21
	fadd x19, x20, x19
	fmul x17, x17, x18
	lw x12, 9(x12)
	lw x12, 2(x12)
	fmul x12, x17, x12
	fadd x12, x19, x12
trace_diffuse_rays_cont_b3579:
# B3579
	li x17, 3
	bne	x16, x17, trace_diffuse_rays_beqelse_b3581
# B3580
	lui x16, 260096
	fsub x12, x12, x16
trace_diffuse_rays_beqelse_b3581:
# B3581
trace_diffuse_rays_cont_b3582:
# B3582
	sw x12, 3(x15)
trace_diffuse_rays_bgtelse_b3575:
# B3575
trace_diffuse_rays_cont_b3583:
# B3583
	addi x14, x14, -1
	j	trace_diffuse_rays_loop_b3570
trace_diffuse_rays_bleelse_b3572:
# B3572
# B3584
	li x13, 118
	mv x15, x6
	mv x16, x7
	mv x14, x5
	mv x17, x13
trace_diffuse_rays_loop_b3585:
# B3585
	bgt	zero, x17, trace_diffuse_rays_bleelse_b3587
# B3586
	add x4, x14, x17
	lw x13, 0(x4)
	lw x13, 0(x13)
	lw x18, 0(x13)
	lw x19, 0(x15)
	fmul x18, x18, x19
	lw x19, 1(x13)
	lw x20, 1(x15)
	fmul x19, x19, x20
	fadd x18, x18, x19
	lw x13, 2(x13)
	lw x19, 2(x15)
	fmul x13, x13, x19
	fadd x13, x18, x13
	fle x18, zero, x13
	la x19, min_caml_tmin
	lui x20, 321255
	addi x20, x20, -1240
	la x21, min_caml_or_net
	la x22, min_caml_objects
	la x23, min_caml_intersection_point
	la x24, min_caml_intersected_object_id
	la x25, min_caml_intsec_rectside
	lui x26, 777421
	addi x26, x26, -819
	lui x27, 314348
	addi x27, x27, -992
	la x28, min_caml_nvector
	lui x29, 258048
	lui x30, 784384
	la x31, min_caml_texture_color
	lui x32, 251085
	addi x32, x32, -819
	lui x33, 268800
	lui x34, 266752
	lui x35, 256000
	lui x36, 265361
	addi x36, x36, -37
	lui x37, 262144
	lui x38, 263313
	addi x38, x38, -37
	lui x39, 261265
	addi x39, x39, -37
	lui x40, 259217
	addi x40, x40, -37
	lui x5, 778923
	addi x5, x5, -1364
	lui x6, 245896
	addi x6, x6, 1638
	lui x65, 758998
	addi x65, x65, 1206
	lui x66, 782336
	lui x67, 250538
	addi x67, x67, 1929
	lui x68, 764728
	addi x68, x68, 262
	lui x69, 276464
	lui x7, 263313
	addi x7, x7, -37
	li x70, 4
	lui x71, 232731
	addi x71, x71, 1815
	lui x72, 257536
	lui x73, 780971
	addi x73, x73, -1366
	lui x74, 255181
	addi x74, x74, -819
	lui x75, 778533
	addi x75, x75, -1755
	lui x76, 253497
	addi x76, x76, -456
	lui x77, 777085
	addi x77, x77, 1646
	lui x78, 251742
	addi x78, x78, 1989
	lui x79, 262592
	lui x8, 270080
	lui x80, 254362
	addi x80, x80, -1638
	lui x81, 256410
	addi x81, x81, -1638
	la x82, min_caml_diffuse_ray
	beq	x18, zero, trace_diffuse_rays_bneelse_b3589
# B3588
	add x4, x14, x17
	lw x18, 0(x4)
	lui x83, 274784
	fdiv x13, x13, x83
	sw x20, 0(x19)
	lw x20, 0(x21)
	mv x85, x18
	mv x83, zero
	mv x84, x20
trace_diffuse_rays_loop_b3590:
# B3590
	add x4, x84, x83
	lw x20, 0(x4)
	lw x86, 0(x20)
	li x87, -1
	li x88, 3
	lui x89, 260096
	beq	x86, x87, trace_diffuse_rays_bneelse_b3591
# B3592
	li x9, 99
	la x90, min_caml_solver_dist
	li x91, 3
	bne	x86, x9, trace_diffuse_rays_beqelse_b3594
# B3593
	mv x94, x85
	mv x92, x100
	mv x93, x20
trace_diffuse_rays_loop_b3595:
# B3595
	add x4, x93, x92
	lw x20, 0(x4)
	beq	x20, x87, trace_diffuse_rays_bneelse_b3596
# B3597
	la x86, min_caml_and_net
	add x4, x86, x20
	lw x20, 0(x4)
	mv x89, x94
	mv x88, x20
	mv x86, zero
trace_diffuse_rays_beqelse_b3639:	#moved
# B3639
trace_diffuse_rays_loop_b3598:
# B3598
	lw x20, 0(x89)
	add x4, x88, x86
	lw x9, 0(x4)
	beq	x9, x87, trace_diffuse_rays_bneelse_b3599
# B3600
	add x4, x22, x9
	lw x95, 0(x4)
	lw x96, 10(x95)
	lw x97, 0(x96)
	lw x98, 1(x96)
	lw x99, 2(x96)
	lw x101, 1(x89)
	add x4, x101, x9
	lw x101, 0(x4)
	lw x102, 1(x95)
	bne	x102, x100, trace_diffuse_rays_beqelse_b3602
# B3601
	lw x96, 0(x89)
	lw x102, 0(x101)
	fsub x102, x102, x97
	lw x103, 1(x101)
	fmul x102, x102, x103
	lw x103, 1(x96)
	fmul x103, x102, x103
	fadd x103, x103, x98
	fabs x103, x103
	lw x104, 4(x95)
	lw x104, 1(x104)
	fle x103, x104, x103
	bne	x103, zero, trace_diffuse_rays_beqelse_b3603
# B3604
	lw x103, 2(x96)
	fmul x103, x102, x103
	fadd x103, x103, x99
	fabs x103, x103
	lw x104, 4(x95)
	lw x104, 2(x104)
	fle x103, x104, x103
	bne	x103, zero, trace_diffuse_rays_beqelse_b3605
# B3606
	lw x103, 1(x101)
	feq x103, x103, zero
	xori x103, x103, 1
	mv x104, x103
# B3607
	bne	x104, zero, trace_diffuse_rays_beqelse_b3609
	j trace_diffuse_rays_cont_b3608 # adhoc jump(3)
trace_diffuse_rays_beqelse_b3609:
# B3609
	la x95, min_caml_solver_dist
	sw x102, 0(x95)
	li x95, 1
	addi x86, x86, 1
	j trace_diffuse_rays_cont_b3637 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3605:
# B3605
trace_diffuse_rays_beqelse_b3603:
# B3603
trace_diffuse_rays_cont_b3608:
# B3608
	lw x102, 2(x101)
	fsub x102, x102, x98
	lw x103, 3(x101)
	fmul x102, x102, x103
	lw x103, 0(x96)
	fmul x103, x102, x103
	fadd x103, x103, x97
	fabs x103, x103
	lw x104, 4(x95)
	lw x104, 0(x104)
	fle x103, x104, x103
	bne	x103, zero, trace_diffuse_rays_beqelse_b3610
# B3611
	lw x103, 2(x96)
	fmul x103, x102, x103
	fadd x103, x103, x99
	fabs x103, x103
	lw x104, 4(x95)
	lw x104, 2(x104)
	fle x103, x104, x103
	bne	x103, zero, trace_diffuse_rays_beqelse_b3612
# B3613
	lw x103, 3(x101)
	feq x103, x103, zero
	xori x103, x103, 1
	mv x104, x103
# B3614
	bne	x104, zero, trace_diffuse_rays_beqelse_b3616
	j trace_diffuse_rays_cont_b3615 # adhoc jump(3)
trace_diffuse_rays_beqelse_b3616:
# B3616
	la x95, min_caml_solver_dist
	sw x102, 0(x95)
	li x95, 2
	addi x86, x86, 1
	j trace_diffuse_rays_cont_b3637 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3612:
# B3612
trace_diffuse_rays_beqelse_b3610:
# B3610
trace_diffuse_rays_cont_b3615:
# B3615
	lw x102, 4(x101)
	fsub x99, x102, x99
	lw x102, 5(x101)
	fmul x99, x99, x102
	lw x102, 0(x96)
	fmul x102, x99, x102
	fadd x97, x102, x97
	fabs x97, x97
	lw x102, 4(x95)
	lw x102, 0(x102)
	fle x97, x102, x97
	bne	x97, zero, trace_diffuse_rays_beqelse_b3617
# B3618
	lw x96, 1(x96)
	fmul x96, x99, x96
	fadd x96, x96, x98
	fabs x96, x96
	lw x95, 4(x95)
	lw x95, 1(x95)
	fle x95, x95, x96
	bne	x95, zero, trace_diffuse_rays_beqelse_b3619
# B3620
	lw x95, 5(x101)
	feq x95, x95, zero
	xori x95, x95, 1
	mv x96, x95
# B3621
	bne	x96, zero, trace_diffuse_rays_beqelse_b3623
	j trace_diffuse_rays_cont_b3622 # adhoc jump(3)
trace_diffuse_rays_beqelse_b3623:
# B3623
	la x95, min_caml_solver_dist
	sw x99, 0(x95)
	li x95, 3
	addi x86, x86, 1
	j trace_diffuse_rays_cont_b3637 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3619:
# B3619
trace_diffuse_rays_beqelse_b3617:
# B3617
trace_diffuse_rays_cont_b3622:
# B3622
	mv x95, zero
	addi x86, x86, 1
	j trace_diffuse_rays_cont_b3636 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3602:
# B3602
	bne	x102, x11, trace_diffuse_rays_beqelse_b3625
# B3624
	lw x95, 0(x101)
	fle x95, zero, x95
	beq	x95, zero, trace_diffuse_rays_bneelse_b3627
# B3626
	mv x95, zero
	addi x86, x86, 1
	j trace_diffuse_rays_cont_b3636 # adhoc jump(2)
trace_diffuse_rays_bneelse_b3627:
# B3627
	la x95, min_caml_solver_dist
	lw x97, 0(x101)
	lw x96, 3(x96)
	fmul x96, x97, x96
	sw x96, 0(x95)
	li x95, 1
	addi x86, x86, 1
	j trace_diffuse_rays_cont_b3637 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3625:
# B3625
	lw x102, 0(x101)
	feq x103, x102, zero
	bne	x103, zero, trace_diffuse_rays_beqelse_b3629
# B3628
	lw x103, 1(x101)
	fmul x97, x103, x97
	lw x103, 2(x101)
	fmul x98, x103, x98
	fadd x97, x97, x98
	lw x98, 3(x101)
	fmul x98, x98, x99
	fadd x97, x97, x98
	lw x96, 3(x96)
	fmul x98, x97, x97
	fmul x96, x102, x96
	fsub x96, x98, x96
	fle x98, x96, zero
	beq	x98, zero, trace_diffuse_rays_bneelse_b3631
# B3630
	mv x95, zero
	addi x86, x86, 1
	j trace_diffuse_rays_cont_b3636 # adhoc jump(2)
trace_diffuse_rays_bneelse_b3631:
# B3631
	lw x95, 6(x95)
	bne	x95, zero, trace_diffuse_rays_beqelse_b3633
# B3632
	la x95, min_caml_solver_dist
	fsqrt x96, x96
	fsub x96, x97, x96
	lw x97, 4(x101)
	fmul x96, x96, x97
	sw x96, 0(x95)
	j trace_diffuse_rays_cont_b3634 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3633:
# B3633
	la x95, min_caml_solver_dist
	fsqrt x96, x96
	fadd x96, x97, x96
	lw x97, 4(x101)
	fmul x96, x96, x97
	sw x96, 0(x95)
trace_diffuse_rays_cont_b3634:
# B3634
	li x95, 1
	addi x86, x86, 1
trace_diffuse_rays_cont_b3637:
# B3637
	lw x96, 0(x90)
	fle x97, x96, zero
	bne	x97, zero, trace_diffuse_rays_beqelse_b3640
# B3641
	lw x97, 0(x19)
	fle x97, x97, x96
	bne	x97, zero, trace_diffuse_rays_beqelse_b3642
# B3643
	lui x97, 246333
	addi x97, x97, 1802
	fadd x96, x96, x97
	lw x97, 0(x20)
	fmul x97, x97, x96
	lw x98, 0(x10)
	fadd x97, x97, x98
	lw x98, 1(x20)
	fmul x98, x98, x96
	lw x99, 1(x10)
	fadd x98, x98, x99
	lw x20, 2(x20)
	fmul x20, x20, x96
	lw x99, 2(x10)
	fadd x20, x20, x99
	mv x102, x97
	mv x101, x88
	mv x103, x98
	mv x104, x20
	mv x99, zero
	j	trace_diffuse_rays_loop_b3644
trace_diffuse_rays_bneelse_b3671:	#moved
# B3671
	addi x99, x99, 1
trace_diffuse_rays_loop_b3644:
# B3644
	add x4, x101, x99
	lw x105, 0(x4)
	beq	x105, x87, trace_diffuse_rays_bneelse_b3645
# B3646
	add x4, x22, x105
	lw x105, 0(x4)
	lw x106, 5(x105)
	lw x106, 0(x106)
	fsub x106, x102, x106
	lw x107, 5(x105)
	lw x107, 1(x107)
	fsub x107, x103, x107
	lw x108, 5(x105)
	lw x108, 2(x108)
	fsub x108, x104, x108
	lw x109, 1(x105)
	bne	x109, x100, trace_diffuse_rays_beqelse_b3648
# B3647
	fabs x106, x106
	lw x109, 4(x105)
	lw x109, 0(x109)
	fle x106, x109, x106
	bne	x106, zero, trace_diffuse_rays_beqelse_b3649
# B3650
	fabs x106, x107
	lw x107, 4(x105)
	lw x107, 1(x107)
	fle x106, x107, x106
	bne	x106, zero, trace_diffuse_rays_beqelse_b3651
# B3652
	fabs x106, x108
	lw x107, 4(x105)
	lw x107, 2(x107)
	fle x106, x107, x106
	xori x106, x106, 1
	mv x107, x106
# B3653
	bne	x107, zero, trace_diffuse_rays_beqelse_b3655
	j trace_diffuse_rays_cont_b3654 # adhoc jump(3)
trace_diffuse_rays_beqelse_b3655:
# B3655
	lw x105, 6(x105)
	j trace_diffuse_rays_cont_b3670 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3651:
# B3651
trace_diffuse_rays_beqelse_b3649:
# B3649
trace_diffuse_rays_cont_b3654:
# B3654
	lw x105, 6(x105)
	xori x105, x105, 1
	j trace_diffuse_rays_cont_b3670 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3648:
# B3648
	bne	x109, x11, trace_diffuse_rays_beqelse_b3657
# B3656
	lw x109, 4(x105)
	lw x110, 0(x109)
	fmul x106, x110, x106
	lw x110, 1(x109)
	fmul x107, x110, x107
	fadd x106, x106, x107
	lw x107, 2(x109)
	fmul x107, x107, x108
	fadd x106, x106, x107
	lw x105, 6(x105)
	fle x106, zero, x106
	xori x106, x106, 1
	bne	x105, zero, trace_diffuse_rays_beqelse_b3659
# B3658
	mv x105, x106
	j trace_diffuse_rays_cont_b3660 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3659:
# B3659
	xori x105, x106, 1
trace_diffuse_rays_cont_b3660:
# B3660
	xori x105, x105, 1
	j trace_diffuse_rays_cont_b3670 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3657:
# B3657
	fmul x109, x106, x106
	lw x110, 4(x105)
	lw x110, 0(x110)
	fmul x109, x109, x110
	fmul x110, x107, x107
	lw x111, 4(x105)
	lw x111, 1(x111)
	fmul x110, x110, x111
	fadd x109, x109, x110
	fmul x110, x108, x108
	lw x111, 4(x105)
	lw x111, 2(x111)
	fmul x110, x110, x111
	fadd x109, x109, x110
	lw x110, 3(x105)
	bne	x110, zero, trace_diffuse_rays_beqelse_b3662
# B3661
	mv x106, x109
	j trace_diffuse_rays_cont_b3663 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3662:
# B3662
	fmul x110, x107, x108
	lw x111, 9(x105)
	lw x111, 0(x111)
	fmul x110, x110, x111
	fadd x109, x109, x110
	fmul x108, x108, x106
	lw x110, 9(x105)
	lw x110, 1(x110)
	fmul x108, x108, x110
	fadd x108, x109, x108
	fmul x106, x106, x107
	lw x107, 9(x105)
	lw x107, 2(x107)
	fmul x106, x106, x107
	fadd x106, x108, x106
trace_diffuse_rays_cont_b3663:
# B3663
	lw x107, 1(x105)
	bne	x107, x91, trace_diffuse_rays_beqelse_b3665
# B3664
	lui x107, 260096
	fsub x106, x106, x107
trace_diffuse_rays_beqelse_b3665:
# B3665
trace_diffuse_rays_cont_b3666:
# B3666
	lw x105, 6(x105)
	fle x106, zero, x106
	xori x106, x106, 1
	bne	x105, zero, trace_diffuse_rays_beqelse_b3668
# B3667
	mv x105, x106
	j trace_diffuse_rays_cont_b3669 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3668:
# B3668
	xori x105, x106, 1
trace_diffuse_rays_cont_b3669:
# B3669
	xori x105, x105, 1
trace_diffuse_rays_cont_b3670:
# B3670
	beq	x105, zero, trace_diffuse_rays_bneelse_b3671
# B3672
# B3674
	j trace_diffuse_rays_cont_b3676 # adhoc jump(2)
trace_diffuse_rays_bneelse_b3645:
# B3645
# B3675
	sw x96, 0(x19)
	sw x97, 0(x23)
	sw x98, 1(x23)
	sw x20, 2(x23)
	sw x9, 0(x24)
	sw x95, 0(x25)
trace_diffuse_rays_beqelse_b3642:
# B3642
trace_diffuse_rays_beqelse_b3640:
# B3640
trace_diffuse_rays_cont_b3676:
# B3676
	j	trace_diffuse_rays_loop_b3598
trace_diffuse_rays_beqelse_b3629:
# B3629
	mv x95, zero
	addi x86, x86, 1
trace_diffuse_rays_cont_b3636:
# B3636
	add x4, x22, x9
	lw x20, 0(x4)
	lw x20, 6(x20)
	bne	x20, zero, trace_diffuse_rays_beqelse_b3639
# B3638
trace_diffuse_rays_bneelse_b3599:
# B3599
trace_diffuse_rays_cont_b3677:
# B3677
	addi x92, x92, 1
	j	trace_diffuse_rays_loop_b3595
trace_diffuse_rays_bneelse_b3596:
# B3596
	j trace_diffuse_rays_cont_b3800 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3594:
# B3594
	add x4, x12, x86
	lw x9, 0(x4)
	lw x92, 10(x9)
	lw x93, 0(x92)
	lw x94, 1(x92)
	lw x95, 2(x92)
	lw x96, 1(x85)
	add x4, x96, x86
	lw x86, 0(x4)
	lw x96, 1(x9)
	bne	x96, x100, trace_diffuse_rays_beqelse_b3679
# B3678
	lw x92, 0(x85)
	lw x96, 0(x86)
	fsub x96, x96, x93
	lw x97, 1(x86)
	fmul x96, x96, x97
	lw x97, 1(x92)
	fmul x97, x96, x97
	fadd x97, x97, x94
	fabs x97, x97
	lw x98, 4(x9)
	lw x98, 1(x98)
	fle x97, x98, x97
	bne	x97, zero, trace_diffuse_rays_beqelse_b3680
# B3681
	lw x97, 2(x92)
	fmul x97, x96, x97
	fadd x97, x97, x95
	fabs x97, x97
	lw x98, 4(x9)
	lw x98, 2(x98)
	fle x97, x98, x97
	bne	x97, zero, trace_diffuse_rays_beqelse_b3682
# B3683
	lw x97, 1(x86)
	feq x97, x97, zero
	xori x97, x97, 1
	mv x98, x97
# B3684
	bne	x98, zero, trace_diffuse_rays_beqelse_b3686
	j trace_diffuse_rays_cont_b3685 # adhoc jump(3)
trace_diffuse_rays_beqelse_b3686:
# B3686
	sw x96, 0(x90)
	mv x91, x100
	j trace_diffuse_rays_cont_b3712 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3682:
# B3682
trace_diffuse_rays_beqelse_b3680:
# B3680
trace_diffuse_rays_cont_b3685:
# B3685
	lw x96, 2(x86)
	fsub x96, x96, x94
	lw x97, 3(x86)
	fmul x96, x96, x97
	lw x97, 0(x92)
	fmul x97, x96, x97
	fadd x97, x97, x93
	fabs x97, x97
	lw x98, 4(x9)
	lw x98, 0(x98)
	fle x97, x98, x97
	bne	x97, zero, trace_diffuse_rays_beqelse_b3687
# B3688
	lw x97, 2(x92)
	fmul x97, x96, x97
	fadd x97, x97, x95
	fabs x97, x97
	lw x98, 4(x9)
	lw x98, 2(x98)
	fle x97, x98, x97
	bne	x97, zero, trace_diffuse_rays_beqelse_b3689
# B3690
	lw x97, 3(x86)
	feq x97, x97, zero
	xori x97, x97, 1
	mv x98, x97
# B3691
	bne	x98, zero, trace_diffuse_rays_beqelse_b3693
	j trace_diffuse_rays_cont_b3692 # adhoc jump(3)
trace_diffuse_rays_beqelse_b3693:
# B3693
	sw x96, 0(x90)
	mv x91, x11
	j trace_diffuse_rays_cont_b3712 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3689:
# B3689
trace_diffuse_rays_beqelse_b3687:
# B3687
trace_diffuse_rays_cont_b3692:
# B3692
	lw x96, 4(x86)
	fsub x95, x96, x95
	lw x96, 5(x86)
	fmul x95, x95, x96
	lw x96, 0(x92)
	fmul x96, x95, x96
	fadd x93, x96, x93
	fabs x93, x93
	lw x96, 4(x9)
	lw x96, 0(x96)
	fle x93, x96, x93
	bne	x93, zero, trace_diffuse_rays_beqelse_b3694
# B3695
	lw x92, 1(x92)
	fmul x92, x95, x92
	fadd x92, x92, x94
	fabs x92, x92
	lw x9, 4(x9)
	lw x9, 1(x9)
	fle x9, x9, x92
	bne	x9, zero, trace_diffuse_rays_beqelse_b3696
# B3697
	lw x86, 5(x86)
	feq x86, x86, zero
	xori x86, x86, 1
	mv x9, x86
# B3698
	bne	x9, zero, trace_diffuse_rays_beqelse_b3700
	j trace_diffuse_rays_cont_b3699 # adhoc jump(3)
trace_diffuse_rays_beqelse_b3700:
# B3700
	sw x95, 0(x90)
	j trace_diffuse_rays_cont_b3712 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3696:
# B3696
trace_diffuse_rays_beqelse_b3694:
# B3694
trace_diffuse_rays_cont_b3699:
# B3699
	j trace_diffuse_rays_cont_b3713 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3679:
# B3679
	bne	x96, x11, trace_diffuse_rays_beqelse_b3702
# B3701
	lw x9, 0(x86)
	fle x9, zero, x9
	bne	x9, zero, trace_diffuse_rays_beqelse_b3703
# B3704
	lw x86, 0(x86)
	lw x9, 3(x92)
	fmul x86, x86, x9
	sw x86, 0(x90)
	mv x91, x100
	j trace_diffuse_rays_cont_b3712 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3703:
# B3703
	j trace_diffuse_rays_cont_b3713 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3702:
# B3702
	lw x91, 0(x86)
	feq x96, x91, zero
	bne	x96, zero, trace_diffuse_rays_beqelse_b3706
# B3705
	lw x96, 1(x86)
	fmul x93, x96, x93
	lw x96, 2(x86)
	fmul x94, x96, x94
	fadd x93, x93, x94
	lw x94, 3(x86)
	fmul x94, x94, x95
	fadd x93, x93, x94
	lw x92, 3(x92)
	fmul x94, x93, x93
	fmul x91, x91, x92
	fsub x91, x94, x91
	fle x92, x91, zero
	bne	x92, zero, trace_diffuse_rays_beqelse_b3707
# B3708
	lw x9, 6(x9)
	fsqrt x91, x91
	bne	x9, zero, trace_diffuse_rays_beqelse_b3710
# B3709
	fsub x9, x93, x91
	lw x86, 4(x86)
	fmul x86, x9, x86
	sw x86, 0(x90)
	j trace_diffuse_rays_cont_b3711 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3710:
# B3710
	fadd x9, x93, x91
	lw x86, 4(x86)
	fmul x86, x9, x86
	sw x86, 0(x90)
trace_diffuse_rays_cont_b3711:
# B3711
	mv x91, x100
trace_diffuse_rays_cont_b3712:
# B3712
	bne	x91, zero, trace_diffuse_rays_beqelse_b3714
	j trace_diffuse_rays_cont_b3713 # adhoc jump(3)
trace_diffuse_rays_beqelse_b3714:
# B3714
	lw x86, 0(x90)
	lw x9, 0(x19)
	fle x86, x9, x86
	bne	x86, zero, trace_diffuse_rays_beqelse_b3715
# B3716
	mv x92, x85
	mv x9, x100
	mv x91, x20
trace_diffuse_rays_loop_b3717:
# B3717
	add x4, x91, x9
	lw x20, 0(x4)
	beq	x20, x87, trace_diffuse_rays_bneelse_b3718
# B3719
	la x86, min_caml_and_net
	add x4, x86, x20
	lw x20, 0(x4)
	mv x94, x92
	mv x93, x20
	mv x86, zero
trace_diffuse_rays_beqelse_b3761:	#moved
# B3761
trace_diffuse_rays_loop_b3720:
# B3720
	lw x20, 0(x94)
	add x4, x93, x86
	lw x95, 0(x4)
	beq	x95, x87, trace_diffuse_rays_bneelse_b3721
# B3722
	add x4, x12, x95
	lw x96, 0(x4)
	lw x97, 10(x96)
	lw x98, 0(x97)
	lw x99, 1(x97)
	lw x101, 2(x97)
	lw x102, 1(x94)
	add x4, x102, x95
	lw x102, 0(x4)
	lw x103, 1(x96)
	bne	x103, x100, trace_diffuse_rays_beqelse_b3724
# B3723
	lw x97, 0(x94)
	lw x103, 0(x102)
	fsub x103, x103, x98
	lw x104, 1(x102)
	fmul x103, x103, x104
	lw x104, 1(x97)
	fmul x104, x103, x104
	fadd x104, x104, x99
	fabs x104, x104
	lw x105, 4(x96)
	lw x105, 1(x105)
	fle x104, x105, x104
	bne	x104, zero, trace_diffuse_rays_beqelse_b3725
# B3726
	lw x104, 2(x97)
	fmul x104, x103, x104
	fadd x104, x104, x101
	fabs x104, x104
	lw x105, 4(x96)
	lw x105, 2(x105)
	fle x104, x105, x104
	bne	x104, zero, trace_diffuse_rays_beqelse_b3727
# B3728
	lw x104, 1(x102)
	feq x104, x104, zero
	xori x104, x104, 1
	mv x105, x104
# B3729
	bne	x105, zero, trace_diffuse_rays_beqelse_b3731
	j trace_diffuse_rays_cont_b3730 # adhoc jump(3)
trace_diffuse_rays_beqelse_b3731:
# B3731
	sw x103, 0(x90)
	li x96, 1
	addi x86, x86, 1
	j trace_diffuse_rays_cont_b3759 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3727:
# B3727
trace_diffuse_rays_beqelse_b3725:
# B3725
trace_diffuse_rays_cont_b3730:
# B3730
	lw x103, 2(x102)
	fsub x103, x103, x99
	lw x104, 3(x102)
	fmul x103, x103, x104
	lw x104, 0(x97)
	fmul x104, x103, x104
	fadd x104, x104, x98
	fabs x104, x104
	lw x105, 4(x96)
	lw x105, 0(x105)
	fle x104, x105, x104
	bne	x104, zero, trace_diffuse_rays_beqelse_b3732
# B3733
	lw x104, 2(x97)
	fmul x104, x103, x104
	fadd x104, x104, x101
	fabs x104, x104
	lw x105, 4(x96)
	lw x105, 2(x105)
	fle x104, x105, x104
	bne	x104, zero, trace_diffuse_rays_beqelse_b3734
# B3735
	lw x104, 3(x102)
	feq x104, x104, zero
	xori x104, x104, 1
	mv x105, x104
# B3736
	bne	x105, zero, trace_diffuse_rays_beqelse_b3738
	j trace_diffuse_rays_cont_b3737 # adhoc jump(3)
trace_diffuse_rays_beqelse_b3738:
# B3738
	sw x103, 0(x90)
	li x96, 2
	addi x86, x86, 1
	j trace_diffuse_rays_cont_b3759 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3734:
# B3734
trace_diffuse_rays_beqelse_b3732:
# B3732
trace_diffuse_rays_cont_b3737:
# B3737
	lw x103, 4(x102)
	fsub x101, x103, x101
	lw x103, 5(x102)
	fmul x101, x101, x103
	lw x103, 0(x97)
	fmul x103, x101, x103
	fadd x98, x103, x98
	fabs x98, x98
	lw x103, 4(x96)
	lw x103, 0(x103)
	fle x98, x103, x98
	bne	x98, zero, trace_diffuse_rays_beqelse_b3739
# B3740
	lw x97, 1(x97)
	fmul x97, x101, x97
	fadd x97, x97, x99
	fabs x97, x97
	lw x96, 4(x96)
	lw x96, 1(x96)
	fle x96, x96, x97
	bne	x96, zero, trace_diffuse_rays_beqelse_b3741
# B3742
	lw x96, 5(x102)
	feq x96, x96, zero
	xori x96, x96, 1
	mv x97, x96
# B3743
	bne	x97, zero, trace_diffuse_rays_beqelse_b3745
	j trace_diffuse_rays_cont_b3744 # adhoc jump(3)
trace_diffuse_rays_beqelse_b3745:
# B3745
	sw x101, 0(x90)
	li x96, 3
	addi x86, x86, 1
	j trace_diffuse_rays_cont_b3759 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3741:
# B3741
trace_diffuse_rays_beqelse_b3739:
# B3739
trace_diffuse_rays_cont_b3744:
# B3744
	mv x96, zero
	addi x86, x86, 1
	j trace_diffuse_rays_cont_b3758 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3724:
# B3724
	bne	x103, x11, trace_diffuse_rays_beqelse_b3747
# B3746
	lw x96, 0(x102)
	fle x96, zero, x96
	beq	x96, zero, trace_diffuse_rays_bneelse_b3749
# B3748
	mv x96, zero
	addi x86, x86, 1
	j trace_diffuse_rays_cont_b3758 # adhoc jump(2)
trace_diffuse_rays_bneelse_b3749:
# B3749
	lw x96, 0(x102)
	lw x97, 3(x97)
	fmul x96, x96, x97
	sw x96, 0(x90)
	li x96, 1
	addi x86, x86, 1
	j trace_diffuse_rays_cont_b3759 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3747:
# B3747
	lw x103, 0(x102)
	feq x104, x103, zero
	bne	x104, zero, trace_diffuse_rays_beqelse_b3751
# B3750
	lw x104, 1(x102)
	fmul x98, x104, x98
	lw x104, 2(x102)
	fmul x99, x104, x99
	fadd x98, x98, x99
	lw x99, 3(x102)
	fmul x99, x99, x101
	fadd x98, x98, x99
	lw x97, 3(x97)
	fmul x99, x98, x98
	fmul x97, x103, x97
	fsub x97, x99, x97
	fle x99, x97, zero
	beq	x99, zero, trace_diffuse_rays_bneelse_b3753
# B3752
	mv x96, zero
	addi x86, x86, 1
	j trace_diffuse_rays_cont_b3758 # adhoc jump(2)
trace_diffuse_rays_bneelse_b3753:
# B3753
	lw x96, 6(x96)
	bne	x96, zero, trace_diffuse_rays_beqelse_b3755
# B3754
	fsqrt x96, x97
	fsub x96, x98, x96
	lw x97, 4(x102)
	fmul x96, x96, x97
	sw x96, 0(x90)
	j trace_diffuse_rays_cont_b3756 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3755:
# B3755
	fsqrt x96, x97
	fadd x96, x98, x96
	lw x97, 4(x102)
	fmul x96, x96, x97
	sw x96, 0(x90)
trace_diffuse_rays_cont_b3756:
# B3756
	li x96, 1
	addi x86, x86, 1
trace_diffuse_rays_cont_b3759:
# B3759
	lw x97, 0(x90)
	fle x98, x97, zero
	bne	x98, zero, trace_diffuse_rays_beqelse_b3762
# B3763
	lw x98, 0(x19)
	fle x98, x98, x97
	bne	x98, zero, trace_diffuse_rays_beqelse_b3764
# B3765
	lui x98, 246333
	addi x98, x98, 1802
	fadd x97, x97, x98
	lw x98, 0(x20)
	fmul x98, x98, x97
	lw x99, 0(x10)
	fadd x98, x98, x99
	lw x99, 1(x20)
	fmul x99, x99, x97
	lw x101, 1(x10)
	fadd x99, x99, x101
	lw x20, 2(x20)
	fmul x20, x20, x97
	lw x101, 2(x10)
	fadd x20, x20, x101
	mv x102, x93
	mv x103, x98
	mv x101, zero
	mv x105, x20
	mv x104, x99
	j	trace_diffuse_rays_loop_b3766
trace_diffuse_rays_bneelse_b3793:	#moved
# B3793
	addi x101, x101, 1
trace_diffuse_rays_loop_b3766:
# B3766
	add x4, x102, x101
	lw x106, 0(x4)
	bne	x106, x87, trace_diffuse_rays_beqelse_b3768
# B3767
	mv x102, x101
# B3797
	sw x97, 0(x19)
	sw x98, 0(x23)
	sw x99, 1(x23)
	sw x20, 2(x23)
	sw x95, 0(x24)
	sw x96, 0(x25)
	j trace_diffuse_rays_cont_b3798 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3768:
# B3768
	add x4, x12, x106
	lw x106, 0(x4)
	lw x107, 5(x106)
	lw x107, 0(x107)
	fsub x107, x103, x107
	lw x108, 5(x106)
	lw x108, 1(x108)
	fsub x108, x104, x108
	lw x109, 5(x106)
	lw x109, 2(x109)
	fsub x109, x105, x109
	lw x110, 1(x106)
	bne	x110, x100, trace_diffuse_rays_beqelse_b3770
# B3769
	fabs x107, x107
	lw x110, 4(x106)
	lw x110, 0(x110)
	fle x107, x110, x107
	bne	x107, zero, trace_diffuse_rays_beqelse_b3771
# B3772
	fabs x107, x108
	lw x108, 4(x106)
	lw x108, 1(x108)
	fle x107, x108, x107
	bne	x107, zero, trace_diffuse_rays_beqelse_b3773
# B3774
	fabs x107, x109
	lw x108, 4(x106)
	lw x108, 2(x108)
	fle x107, x108, x107
	xori x107, x107, 1
	mv x108, x107
# B3775
	bne	x108, zero, trace_diffuse_rays_beqelse_b3777
	j trace_diffuse_rays_cont_b3776 # adhoc jump(3)
trace_diffuse_rays_beqelse_b3777:
# B3777
	lw x106, 6(x106)
	j trace_diffuse_rays_cont_b3792 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3773:
# B3773
trace_diffuse_rays_beqelse_b3771:
# B3771
trace_diffuse_rays_cont_b3776:
# B3776
	lw x106, 6(x106)
	xori x106, x106, 1
	j trace_diffuse_rays_cont_b3792 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3770:
# B3770
	bne	x110, x11, trace_diffuse_rays_beqelse_b3779
# B3778
	lw x110, 4(x106)
	lw x111, 0(x110)
	fmul x107, x111, x107
	lw x111, 1(x110)
	fmul x108, x111, x108
	fadd x107, x107, x108
	lw x108, 2(x110)
	fmul x108, x108, x109
	fadd x107, x107, x108
	lw x106, 6(x106)
	fle x107, zero, x107
	xori x107, x107, 1
	bne	x106, zero, trace_diffuse_rays_beqelse_b3781
# B3780
	mv x106, x107
	j trace_diffuse_rays_cont_b3782 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3781:
# B3781
	xori x106, x107, 1
trace_diffuse_rays_cont_b3782:
# B3782
	xori x106, x106, 1
	j trace_diffuse_rays_cont_b3792 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3779:
# B3779
	fmul x110, x107, x107
	lw x111, 4(x106)
	lw x111, 0(x111)
	fmul x110, x110, x111
	fmul x111, x108, x108
	lw x112, 4(x106)
	lw x112, 1(x112)
	fmul x111, x111, x112
	fadd x110, x110, x111
	fmul x111, x109, x109
	lw x112, 4(x106)
	lw x112, 2(x112)
	fmul x111, x111, x112
	fadd x110, x110, x111
	lw x111, 3(x106)
	bne	x111, zero, trace_diffuse_rays_beqelse_b3784
# B3783
	mv x107, x110
	j trace_diffuse_rays_cont_b3785 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3784:
# B3784
	fmul x111, x108, x109
	lw x112, 9(x106)
	lw x112, 0(x112)
	fmul x111, x111, x112
	fadd x110, x110, x111
	fmul x109, x109, x107
	lw x111, 9(x106)
	lw x111, 1(x111)
	fmul x109, x109, x111
	fadd x109, x110, x109
	fmul x107, x107, x108
	lw x108, 9(x106)
	lw x108, 2(x108)
	fmul x107, x107, x108
	fadd x107, x109, x107
trace_diffuse_rays_cont_b3785:
# B3785
	lw x108, 1(x106)
	bne	x108, x88, trace_diffuse_rays_beqelse_b3787
# B3786
	fsub x107, x107, x89
trace_diffuse_rays_beqelse_b3787:
# B3787
trace_diffuse_rays_cont_b3788:
# B3788
	lw x106, 6(x106)
	fle x107, zero, x107
	xori x107, x107, 1
	bne	x106, zero, trace_diffuse_rays_beqelse_b3790
# B3789
	mv x106, x107
	j trace_diffuse_rays_cont_b3791 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3790:
# B3790
	xori x106, x107, 1
trace_diffuse_rays_cont_b3791:
# B3791
	xori x106, x106, 1
trace_diffuse_rays_cont_b3792:
# B3792
	beq	x106, zero, trace_diffuse_rays_bneelse_b3793
# B3794
# B3796
trace_diffuse_rays_beqelse_b3764:
# B3764
trace_diffuse_rays_beqelse_b3762:
# B3762
trace_diffuse_rays_cont_b3798:
# B3798
	j	trace_diffuse_rays_loop_b3720
trace_diffuse_rays_beqelse_b3751:
# B3751
	mv x96, zero
	addi x86, x86, 1
trace_diffuse_rays_cont_b3758:
# B3758
	add x4, x12, x95
	lw x20, 0(x4)
	lw x20, 6(x20)
	bne	x20, zero, trace_diffuse_rays_beqelse_b3761
# B3760
trace_diffuse_rays_bneelse_b3721:
# B3721
trace_diffuse_rays_cont_b3799:
# B3799
	addi x9, x9, 1
	j	trace_diffuse_rays_loop_b3717
trace_diffuse_rays_bneelse_b3718:
# B3718
trace_diffuse_rays_beqelse_b3715:
# B3715
trace_diffuse_rays_beqelse_b3707:
# B3707
trace_diffuse_rays_beqelse_b3706:
# B3706
trace_diffuse_rays_cont_b3713:
# B3713
trace_diffuse_rays_cont_b3800:
# B3800
	addi x83, x83, 1
	j	trace_diffuse_rays_loop_b3590
trace_diffuse_rays_bneelse_b3591:
# B3591
# B3801
	lw x19, 0(x19)
	fle x20, x19, x26
	bne	x20, zero, trace_diffuse_rays_beqelse_b3802
# B3803
	fle x19, x27, x19
	xori x19, x19, 1
	mv x20, x19
# B3804
	bne	x20, zero, trace_diffuse_rays_beqelse_b3806
	j trace_diffuse_rays_cont_b3805 # adhoc jump(3)
trace_diffuse_rays_beqelse_b3806:
# B3806
	lw x19, 0(x24)
	add x4, x22, x19
	lw x19, 0(x4)
	lw x18, 0(x18)
	lw x20, 1(x19)
	bne	x20, x100, trace_diffuse_rays_beqelse_b3808
# B3807
	lw x20, 0(x25)
	sw zero, 0(x28)
	sw zero, 1(x28)
	sw zero, 2(x28)
	addi x20, x20, -1
	add x4, x18, x20
	lw x18, 0(x4)
	feq x24, x18, zero
	bne	x24, zero, trace_diffuse_rays_beqelse_b3810
# B3809
	fle x18, x18, zero
	beq	x18, zero, trace_diffuse_rays_bneelse_b3812
# B3811
	lui x18, 784384
	j trace_diffuse_rays_cont_b3813 # adhoc jump(2)
trace_diffuse_rays_bneelse_b3812:
# B3812
	mv x18, x89
	j trace_diffuse_rays_cont_b3813 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3810:
# B3810
	mv x18, zero
trace_diffuse_rays_cont_b3813:
# B3813
	fsub x18, zero, x18
	add x4, x28, x20
	sw x18, 0(x4)
	j trace_diffuse_rays_cont_b3824 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3808:
# B3808
	bne	x20, x11, trace_diffuse_rays_beqelse_b3815
# B3814
	lw x18, 4(x19)
	lw x18, 0(x18)
	fsub x18, zero, x18
	sw x18, 0(x28)
	lw x18, 4(x19)
	lw x18, 1(x18)
	fsub x18, zero, x18
	sw x18, 1(x28)
	lw x18, 4(x19)
	lw x18, 2(x18)
	fsub x18, zero, x18
	sw x18, 2(x28)
	j trace_diffuse_rays_cont_b3824 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3815:
# B3815
	lw x18, 0(x23)
	lw x20, 5(x19)
	lw x20, 0(x20)
	fsub x18, x18, x20
	lw x20, 1(x23)
	lw x24, 5(x19)
	lw x24, 1(x24)
	fsub x20, x20, x24
	lw x24, 2(x23)
	lw x25, 5(x19)
	lw x25, 2(x25)
	fsub x24, x24, x25
	lw x25, 4(x19)
	lw x25, 0(x25)
	fmul x25, x18, x25
	lw x27, 4(x19)
	lw x27, 1(x27)
	fmul x27, x20, x27
	lw x83, 4(x19)
	lw x83, 2(x83)
	fmul x83, x24, x83
	lw x84, 3(x19)
	bne	x84, zero, trace_diffuse_rays_beqelse_b3817
# B3816
	sw x25, 0(x28)
	sw x27, 1(x28)
	sw x83, 2(x28)
	j trace_diffuse_rays_cont_b3818 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3817:
# B3817
	lw x84, 9(x19)
	lw x84, 2(x84)
	fmul x84, x20, x84
	lw x85, 9(x19)
	lw x85, 1(x85)
	fmul x85, x24, x85
	fadd x84, x84, x85
	fmul x84, x84, x29
	fadd x25, x25, x84
	sw x25, 0(x28)
	lw x25, 9(x19)
	lw x25, 2(x25)
	fmul x25, x18, x25
	lw x84, 9(x19)
	lw x84, 0(x84)
	fmul x24, x24, x84
	fadd x24, x25, x24
	fmul x24, x24, x29
	fadd x24, x27, x24
	sw x24, 1(x28)
	lw x24, 9(x19)
	lw x24, 1(x24)
	fmul x18, x18, x24
	lw x24, 9(x19)
	lw x24, 0(x24)
	fmul x20, x20, x24
	fadd x18, x18, x20
	fmul x18, x18, x29
	fadd x18, x83, x18
	sw x18, 2(x28)
trace_diffuse_rays_cont_b3818:
# B3818
	lw x18, 6(x19)
	lw x20, 0(x28)
	fmul x20, x20, x20
	lw x24, 1(x28)
	fmul x24, x24, x24
	fadd x20, x20, x24
	lw x24, 2(x28)
	fmul x24, x24, x24
	fadd x20, x20, x24
	fsqrt x20, x20
	feq x24, x20, zero
	bne	x24, zero, trace_diffuse_rays_beqelse_b3820
# B3819
	bne	x18, zero, trace_diffuse_rays_beqelse_b3822
# B3821
	fdiv x18, x89, x20
	j trace_diffuse_rays_cont_b3823 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3822:
# B3822
	fdiv x18, x30, x20
	j trace_diffuse_rays_cont_b3823 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3820:
# B3820
	mv x18, x89
trace_diffuse_rays_cont_b3823:
# B3823
	lw x20, 0(x28)
	fmul x20, x20, x18
	sw x20, 0(x28)
	lw x20, 1(x28)
	fmul x20, x20, x18
	sw x20, 1(x28)
	lw x20, 2(x28)
	fmul x18, x20, x18
	sw x18, 2(x28)
trace_diffuse_rays_cont_b3824:
# B3824
	lw x18, 0(x19)
	lw x20, 8(x19)
	lw x20, 0(x20)
	sw x20, 0(x31)
	lw x20, 8(x19)
	lw x20, 1(x20)
	sw x20, 1(x31)
	lw x20, 8(x19)
	lw x20, 2(x20)
	sw x20, 2(x31)
	bne	x18, x100, trace_diffuse_rays_beqelse_b3826
# B3825
	lw x18, 0(x23)
	lw x20, 5(x19)
	lw x20, 0(x20)
	fsub x18, x18, x20
	fmul x20, x18, x32
	floor x20, x20
	fmul x20, x20, x33
	fsub x18, x18, x20
	fle x18, x34, x18
	xori x18, x18, 1
	lw x20, 2(x23)
	lw x24, 5(x19)
	lw x24, 2(x24)
	fsub x20, x20, x24
	fmul x24, x20, x32
	floor x24, x24
	fmul x24, x24, x33
	fsub x20, x20, x24
	fle x20, x34, x20
	xori x20, x20, 1
	bne	x18, zero, trace_diffuse_rays_beqelse_b3828
# B3827
	bne	x20, zero, trace_diffuse_rays_beqelse_b3830
# B3829
	lui x18, 276464
	j trace_diffuse_rays_cont_b3833 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3830:
# B3830
	mv x18, zero
	j trace_diffuse_rays_cont_b3833 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3828:
# B3828
	bne	x20, zero, trace_diffuse_rays_beqelse_b3832
# B3831
	mv x18, zero
	j trace_diffuse_rays_cont_b3833 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3832:
# B3832
	lui x18, 276464
trace_diffuse_rays_cont_b3833:
# B3833
	sw x18, 1(x31)
	j trace_diffuse_rays_cont_b3918 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3826:
# B3826
	bne	x18, x11, trace_diffuse_rays_beqelse_b3835
# B3834
	lw x18, 1(x23)
	fmul x18, x18, x35
	fle x20, x18, zero
	xori x20, x20, 1
	fabs x18, x18
	mv x25, x36
	mv x24, x18
	j	trace_diffuse_rays_loop_b3836
trace_diffuse_rays_bneelse_b3837:	#moved
# B3837
	fmul x25, x25, x37
trace_diffuse_rays_loop_b3836:
# B3836
	fle x27, x24, x25
	beq	x27, zero, trace_diffuse_rays_bneelse_b3837
# B3838
# B3839
	mv x30, x25
	mv x29, x18
	j	trace_diffuse_rays_loop_b3840
trace_diffuse_rays_beqelse_b3844:	#moved
# B3844
	fdiv x30, x30, x37
trace_diffuse_rays_loop_b3840:
# B3840
	fle x18, x36, x29
	beq	x18, zero, trace_diffuse_rays_bneelse_b3841
# B3842
	fle x18, x29, x30
	bne	x18, zero, trace_diffuse_rays_beqelse_b3844
# B3843
	fsub x29, x29, x30
	fdiv x30, x30, x37
	j	trace_diffuse_rays_loop_b3840
trace_diffuse_rays_bneelse_b3841:
# B3841
# B3845
	fle x18, x38, x29
	bne	x18, zero, trace_diffuse_rays_beqelse_b3847
# B3846
	mv x24, x29
	j trace_diffuse_rays_cont_b3848 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3847:
# B3847
	fsub x24, x29, x38
trace_diffuse_rays_cont_b3848:
# B3848
	bne	x18, zero, trace_diffuse_rays_beqelse_b3850
# B3849
	mv x18, x20
	j trace_diffuse_rays_cont_b3851 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3850:
# B3850
	xori x18, x20, 1
trace_diffuse_rays_cont_b3851:
# B3851
	fle x20, x39, x24
	bne	x20, zero, trace_diffuse_rays_beqelse_b3853
# B3852
	mv x20, x24
	j trace_diffuse_rays_cont_b3854 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3853:
# B3853
	fsub x20, x38, x24
trace_diffuse_rays_cont_b3854:
# B3854
	fle x24, x40, x20
	bne	x24, zero, trace_diffuse_rays_beqelse_b3856
# B3855
	fmul x24, x20, x20
	fmul x25, x24, x65
	fadd x25, x6, x25
	fmul x25, x24, x25
	fadd x25, x5, x25
	fmul x24, x24, x25
	fadd x24, x89, x24
	fmul x20, x20, x24
	j trace_diffuse_rays_cont_b3857 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3856:
# B3856
	fsub x20, x39, x20
	fmul x20, x20, x20
	fmul x24, x20, x68
	fadd x24, x67, x24
	fmul x24, x20, x24
	fadd x24, x66, x24
	fmul x20, x20, x24
	fadd x20, x89, x20
trace_diffuse_rays_cont_b3857:
# B3857
	fle x24, x20, zero
	beq	x18, x24, trace_diffuse_rays_bneelse_b3859
# B3858
	mv x18, x20
	j trace_diffuse_rays_cont_b3860 # adhoc jump(2)
trace_diffuse_rays_bneelse_b3859:
# B3859
	fsub x18, zero, x20
trace_diffuse_rays_cont_b3860:
# B3860
	fmul x18, x18, x18
	fmul x20, x69, x18
	sw x20, 0(x31)
	fsub x18, x89, x18
	fmul x18, x69, x18
	sw x18, 1(x31)
	j trace_diffuse_rays_cont_b3918 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3835:
# B3835
	bne	x18, x88, trace_diffuse_rays_beqelse_b3862
# B3861
	lw x18, 0(x23)
	lw x20, 5(x19)
	lw x20, 0(x20)
	fsub x18, x18, x20
	lw x20, 2(x23)
	lw x24, 5(x19)
	lw x24, 2(x24)
	fsub x20, x20, x24
	fmul x18, x18, x18
	fmul x20, x20, x20
	fadd x18, x18, x20
	fsqrt x18, x18
	fdiv x18, x18, x34
	floor x20, x18
	fsub x18, x18, x20
	fmul x18, x18, x7
	fabs x18, x18
	mv x24, x36
	mv x20, x18
	j	trace_diffuse_rays_loop_b3863
trace_diffuse_rays_bneelse_b3864:	#moved
# B3864
	fmul x24, x24, x37
trace_diffuse_rays_loop_b3863:
# B3863
	fle x25, x20, x24
	beq	x25, zero, trace_diffuse_rays_bneelse_b3864
# B3865
# B3866
	mv x27, x18
	mv x29, x24
	j	trace_diffuse_rays_loop_b3867
trace_diffuse_rays_beqelse_b3871:	#moved
# B3871
	fdiv x29, x29, x37
trace_diffuse_rays_loop_b3867:
# B3867
	fle x18, x36, x27
	beq	x18, zero, trace_diffuse_rays_bneelse_b3868
# B3869
	fle x18, x27, x29
	bne	x18, zero, trace_diffuse_rays_beqelse_b3871
# B3870
	fsub x27, x27, x29
	fdiv x29, x29, x37
	j	trace_diffuse_rays_loop_b3867
trace_diffuse_rays_bneelse_b3868:
# B3868
# B3872
	fle x18, x38, x27
	bne	x18, zero, trace_diffuse_rays_beqelse_b3874
# B3873
	mv x20, x27
	j trace_diffuse_rays_cont_b3875 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3874:
# B3874
	fsub x20, x27, x38
trace_diffuse_rays_cont_b3875:
# B3875
	bne	x18, zero, trace_diffuse_rays_beqelse_b3877
# B3876
	mv x24, x100
	j trace_diffuse_rays_cont_b3878 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3877:
# B3877
	mv x24, zero
trace_diffuse_rays_cont_b3878:
# B3878
	fle x18, x39, x20
	bne	x18, zero, trace_diffuse_rays_beqelse_b3880
# B3879
	j trace_diffuse_rays_cont_b3881 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3880:
# B3880
	fsub x20, x38, x20
trace_diffuse_rays_cont_b3881:
# B3881
	bne	x18, zero, trace_diffuse_rays_beqelse_b3883
# B3882
	mv x18, x24
	j trace_diffuse_rays_cont_b3884 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3883:
# B3883
	xori x18, x24, 1
trace_diffuse_rays_cont_b3884:
# B3884
	fle x24, x40, x20
	bne	x24, zero, trace_diffuse_rays_beqelse_b3886
# B3885
	fmul x20, x20, x20
	fmul x24, x20, x68
	fadd x24, x67, x24
	fmul x24, x20, x24
	fadd x24, x66, x24
	fmul x20, x20, x24
	fadd x20, x89, x20
	j trace_diffuse_rays_cont_b3887 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3886:
# B3886
	fsub x20, x39, x20
	fmul x24, x20, x20
	fmul x25, x24, x65
	fadd x25, x6, x25
	fmul x25, x24, x25
	fadd x25, x5, x25
	fmul x24, x24, x25
	fadd x24, x89, x24
	fmul x20, x20, x24
trace_diffuse_rays_cont_b3887:
# B3887
	fle x24, x20, zero
	beq	x18, x24, trace_diffuse_rays_bneelse_b3889
# B3888
	mv x18, x20
	j trace_diffuse_rays_cont_b3890 # adhoc jump(2)
trace_diffuse_rays_bneelse_b3889:
# B3889
	fsub x18, zero, x20
trace_diffuse_rays_cont_b3890:
# B3890
	fmul x18, x18, x18
	fmul x20, x18, x69
	sw x20, 1(x31)
	fsub x18, x89, x18
	fmul x18, x18, x69
	sw x18, 2(x31)
	j trace_diffuse_rays_cont_b3918 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3862:
# B3862
	bne	x18, x70, trace_diffuse_rays_beqelse_b3892
# B3891
	lw x18, 0(x23)
	lw x20, 5(x19)
	lw x20, 0(x20)
	fsub x18, x18, x20
	lw x20, 4(x19)
	lw x20, 0(x20)
	fsqrt x20, x20
	fmul x18, x18, x20
	lw x20, 2(x23)
	lw x24, 5(x19)
	lw x24, 2(x24)
	fsub x20, x20, x24
	lw x24, 4(x19)
	lw x24, 2(x24)
	fsqrt x24, x24
	fmul x20, x20, x24
	fmul x24, x18, x18
	fmul x25, x20, x20
	fadd x24, x24, x25
	fabs x25, x18
	fle x25, x71, x25
	beq	x25, zero, trace_diffuse_rays_bneelse_b3894
# B3893
	fdiv x18, x20, x18
	fabs x18, x18
	fle x20, x18, zero
	xori x20, x20, 1
	fabs x25, x18
	fle x27, x72, x25
	bne	x27, zero, trace_diffuse_rays_beqelse_b3896
# B3895
	fmul x20, x18, x18
	fmul x25, x20, x78
	fadd x25, x77, x25
	fmul x25, x20, x25
	fadd x25, x76, x25
	fmul x25, x20, x25
	fadd x25, x75, x25
	fmul x25, x20, x25
	fadd x25, x74, x25
	fmul x25, x20, x25
	fadd x25, x73, x25
	fmul x20, x20, x25
	fadd x20, x89, x20
	fmul x18, x18, x20
	j trace_diffuse_rays_cont_b3902 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3896:
# B3896
	fle x18, x79, x25
	bne	x18, zero, trace_diffuse_rays_beqelse_b3898
# B3897
	fsub x18, x25, x89
	fadd x25, x25, x89
	fdiv x18, x18, x25
	fmul x25, x18, x18
	fmul x27, x25, x78
	fadd x27, x77, x27
	fmul x27, x25, x27
	fadd x27, x76, x27
	fmul x27, x25, x27
	fadd x27, x75, x27
	fmul x27, x25, x27
	fadd x27, x74, x27
	fmul x27, x25, x27
	fadd x27, x73, x27
	fmul x25, x25, x27
	fadd x25, x89, x25
	fmul x18, x18, x25
	fadd x18, x40, x18
	j trace_diffuse_rays_cont_b3899 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3898:
# B3898
	fdiv x18, x89, x25
	fmul x25, x18, x18
	fmul x27, x25, x78
	fadd x27, x77, x27
	fmul x27, x25, x27
	fadd x27, x76, x27
	fmul x27, x25, x27
	fadd x27, x75, x27
	fmul x27, x25, x27
	fadd x27, x74, x27
	fmul x27, x25, x27
	fadd x27, x73, x27
	fmul x25, x25, x27
	fadd x25, x89, x25
	fmul x18, x18, x25
	fsub x18, x39, x18
trace_diffuse_rays_cont_b3899:
# B3899
	bne	x20, zero, trace_diffuse_rays_beqelse_b3901
# B3900
	fsub x18, zero, x18
trace_diffuse_rays_beqelse_b3901:
# B3901
trace_diffuse_rays_cont_b3902:
# B3902
	fmul x18, x18, x8
	fdiv x18, x18, x7
	j trace_diffuse_rays_cont_b3903 # adhoc jump(2)
trace_diffuse_rays_bneelse_b3894:
# B3894
	lui x18, 268032
trace_diffuse_rays_cont_b3903:
# B3903
	floor x20, x18
	fsub x18, x18, x20
	lw x20, 1(x23)
	lw x25, 5(x19)
	lw x25, 1(x25)
	fsub x20, x20, x25
	lw x25, 4(x19)
	lw x25, 1(x25)
	fsqrt x25, x25
	fmul x20, x20, x25
	fabs x25, x24
	fle x25, x71, x25
	beq	x25, zero, trace_diffuse_rays_bneelse_b3905
# B3904
	fdiv x20, x20, x24
	fabs x20, x20
	fle x24, x20, zero
	xori x24, x24, 1
	fabs x25, x20
	fle x27, x72, x25
	bne	x27, zero, trace_diffuse_rays_beqelse_b3907
# B3906
	fmul x24, x20, x20
	fmul x25, x24, x78
	fadd x25, x77, x25
	fmul x25, x24, x25
	fadd x25, x76, x25
	fmul x25, x24, x25
	fadd x25, x75, x25
	fmul x25, x24, x25
	fadd x25, x74, x25
	fmul x25, x24, x25
	fadd x25, x73, x25
	fmul x24, x24, x25
	fadd x24, x89, x24
	fmul x20, x20, x24
	j trace_diffuse_rays_cont_b3913 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3907:
# B3907
	fle x20, x79, x25
	bne	x20, zero, trace_diffuse_rays_beqelse_b3909
# B3908
	fsub x20, x25, x89
	fadd x25, x25, x89
	fdiv x20, x20, x25
	fmul x25, x20, x20
	fmul x27, x25, x78
	fadd x27, x77, x27
	fmul x27, x25, x27
	fadd x27, x76, x27
	fmul x27, x25, x27
	fadd x27, x75, x27
	fmul x27, x25, x27
	fadd x27, x74, x27
	fmul x27, x25, x27
	fadd x27, x73, x27
	fmul x25, x25, x27
	fadd x25, x89, x25
	fmul x20, x20, x25
	fadd x20, x40, x20
	j trace_diffuse_rays_cont_b3910 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3909:
# B3909
	fdiv x20, x89, x25
	fmul x25, x20, x20
	fmul x27, x25, x78
	fadd x27, x77, x27
	fmul x27, x25, x27
	fadd x27, x76, x27
	fmul x27, x25, x27
	fadd x27, x75, x27
	fmul x27, x25, x27
	fadd x27, x74, x27
	fmul x27, x25, x27
	fadd x27, x73, x27
	fmul x25, x25, x27
	fadd x25, x89, x25
	fmul x20, x20, x25
	fsub x20, x39, x20
trace_diffuse_rays_cont_b3910:
# B3910
	bne	x24, zero, trace_diffuse_rays_beqelse_b3912
# B3911
	fsub x20, zero, x20
trace_diffuse_rays_beqelse_b3912:
# B3912
trace_diffuse_rays_cont_b3913:
# B3913
	fmul x20, x20, x8
	fdiv x20, x20, x7
	j trace_diffuse_rays_cont_b3914 # adhoc jump(2)
trace_diffuse_rays_bneelse_b3905:
# B3905
	lui x20, 268032
trace_diffuse_rays_cont_b3914:
# B3914
	floor x24, x20
	fsub x20, x20, x24
	fsub x18, x29, x18
	fmul x18, x18, x18
	fsub x18, x80, x18
	fsub x20, x29, x20
	fmul x20, x20, x20
	fsub x18, x18, x20
	fle x20, zero, x18
	beq	x20, zero, trace_diffuse_rays_bneelse_b3916
# B3915
	mv x24, x18
	j trace_diffuse_rays_cont_b3917 # adhoc jump(2)
trace_diffuse_rays_bneelse_b3916:
# B3916
	mv x24, zero
trace_diffuse_rays_cont_b3917:
# B3917
	fmul x18, x69, x24
	fdiv x18, x18, x81
	sw x18, 2(x31)
trace_diffuse_rays_beqelse_b3892:
# B3892
trace_diffuse_rays_cont_b3918:
# B3918
	lw x18, 0(x21)
	mv x21, x18
	mv x20, zero
trace_diffuse_rays_loop_b3919:
# B3919
	add x4, x21, x20
	lw x18, 0(x4)
	lw x24, 0(x18)
	li x25, -1
	la x27, min_caml_light
	beq	x24, x25, trace_diffuse_rays_bneelse_b3920
# B3921
	li x29, 99
	bne	x24, x29, trace_diffuse_rays_beqelse_b3923
# B3922
	addi x20, x20, 1
	j trace_diffuse_rays_cont_b4063 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3923:
# B3923
	la x29, min_caml_light_dirvec
	add x4, x22, x24
	lw x30, 0(x4)
	lw x32, 0(x23)
	lw x33, 5(x30)
	lw x33, 0(x33)
	fsub x32, x32, x33
	lw x33, 1(x23)
	lw x34, 5(x30)
	lw x34, 1(x34)
	fsub x33, x33, x34
	lw x34, 2(x23)
	lw x35, 5(x30)
	lw x35, 2(x35)
	fsub x34, x34, x35
	lw x35, 1(x29)
	add x4, x35, x24
	lw x24, 0(x4)
	lw x35, 1(x30)
	bne	x35, x100, trace_diffuse_rays_beqelse_b3925
# B3924
	lw x35, 0(x29)
	lw x36, 0(x24)
	fsub x36, x36, x32
	lw x37, 1(x24)
	fmul x36, x36, x37
	lw x37, 1(x35)
	fmul x37, x36, x37
	fadd x37, x37, x33
	fabs x37, x37
	lw x38, 4(x30)
	lw x38, 1(x38)
	fle x37, x38, x37
	bne	x37, zero, trace_diffuse_rays_beqelse_b3926
# B3927
	lw x37, 2(x35)
	fmul x37, x36, x37
	fadd x37, x37, x34
	fabs x37, x37
	lw x38, 4(x30)
	lw x38, 2(x38)
	fle x37, x38, x37
	bne	x37, zero, trace_diffuse_rays_beqelse_b3928
# B3929
	lw x37, 1(x24)
	feq x37, x37, zero
	xori x37, x37, 1
	mv x38, x37
# B3930
	bne	x38, zero, trace_diffuse_rays_beqelse_b3932
	j trace_diffuse_rays_cont_b3931 # adhoc jump(3)
trace_diffuse_rays_beqelse_b3932:
# B3932
	la x24, min_caml_solver_dist
	sw x36, 0(x24)
	j trace_diffuse_rays_cont_b3966 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3928:
# B3928
trace_diffuse_rays_beqelse_b3926:
# B3926
trace_diffuse_rays_cont_b3931:
# B3931
	lw x36, 2(x24)
	fsub x36, x36, x33
	lw x37, 3(x24)
	fmul x36, x36, x37
	lw x37, 0(x35)
	fmul x37, x36, x37
	fadd x37, x37, x32
	fabs x37, x37
	lw x38, 4(x30)
	lw x38, 0(x38)
	fle x37, x38, x37
	bne	x37, zero, trace_diffuse_rays_beqelse_b3933
# B3934
	lw x37, 2(x35)
	fmul x37, x36, x37
	fadd x37, x37, x34
	fabs x37, x37
	lw x38, 4(x30)
	lw x38, 2(x38)
	fle x37, x38, x37
	bne	x37, zero, trace_diffuse_rays_beqelse_b3935
# B3936
	lw x37, 3(x24)
	feq x37, x37, zero
	xori x37, x37, 1
	mv x38, x37
# B3937
	bne	x38, zero, trace_diffuse_rays_beqelse_b3939
	j trace_diffuse_rays_cont_b3938 # adhoc jump(3)
trace_diffuse_rays_beqelse_b3939:
# B3939
	la x24, min_caml_solver_dist
	sw x36, 0(x24)
	j trace_diffuse_rays_cont_b3966 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3935:
# B3935
trace_diffuse_rays_beqelse_b3933:
# B3933
trace_diffuse_rays_cont_b3938:
# B3938
	lw x36, 4(x24)
	fsub x34, x36, x34
	lw x36, 5(x24)
	fmul x34, x34, x36
	lw x36, 0(x35)
	fmul x36, x34, x36
	fadd x32, x36, x32
	fabs x32, x32
	lw x36, 4(x30)
	lw x36, 0(x36)
	fle x32, x36, x32
	bne	x32, zero, trace_diffuse_rays_beqelse_b3940
# B3941
	lw x32, 1(x35)
	fmul x32, x34, x32
	fadd x32, x32, x33
	fabs x32, x32
	lw x30, 4(x30)
	lw x30, 1(x30)
	fle x30, x30, x32
	bne	x30, zero, trace_diffuse_rays_beqelse_b3942
# B3943
	lw x24, 5(x24)
	feq x24, x24, zero
	xori x24, x24, 1
	mv x30, x24
# B3944
	bne	x30, zero, trace_diffuse_rays_beqelse_b3946
	j trace_diffuse_rays_cont_b3945 # adhoc jump(3)
trace_diffuse_rays_beqelse_b3946:
# B3946
	la x24, min_caml_solver_dist
	sw x34, 0(x24)
	j trace_diffuse_rays_cont_b3966 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3942:
# B3942
trace_diffuse_rays_beqelse_b3940:
# B3940
trace_diffuse_rays_cont_b3945:
# B3945
	j trace_diffuse_rays_cont_b3965 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3925:
# B3925
	bne	x35, x11, trace_diffuse_rays_beqelse_b3948
# B3947
	lw x30, 0(x24)
	fle x30, zero, x30
	bne	x30, zero, trace_diffuse_rays_beqelse_b3949
# B3950
	la x30, min_caml_solver_dist
	lw x35, 1(x24)
	fmul x32, x35, x32
	lw x35, 2(x24)
	fmul x33, x35, x33
	fadd x32, x32, x33
	lw x24, 3(x24)
	fmul x24, x24, x34
	fadd x24, x32, x24
	sw x24, 0(x30)
	j trace_diffuse_rays_cont_b3966 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3949:
# B3949
	j trace_diffuse_rays_cont_b3965 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3948:
# B3948
	lw x35, 0(x24)
	feq x36, x35, zero
	bne	x36, zero, trace_diffuse_rays_beqelse_b3952
# B3951
	lw x36, 1(x24)
	fmul x36, x36, x32
	lw x37, 2(x24)
	fmul x37, x37, x33
	fadd x36, x36, x37
	li x37, 3
	lw x38, 3(x24)
	fmul x38, x38, x34
	fadd x36, x36, x38
	fmul x38, x32, x32
	lw x39, 4(x30)
	lw x39, 0(x39)
	fmul x38, x38, x39
	fmul x39, x33, x33
	lw x40, 4(x30)
	lw x40, 1(x40)
	fmul x39, x39, x40
	fadd x38, x38, x39
	fmul x39, x34, x34
	lw x40, 4(x30)
	lw x40, 2(x40)
	fmul x39, x39, x40
	fadd x38, x38, x39
	lw x39, 3(x30)
	bne	x39, zero, trace_diffuse_rays_beqelse_b3954
# B3953
	mv x32, x38
	j trace_diffuse_rays_cont_b3955 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3954:
# B3954
	fmul x39, x33, x34
	lw x40, 9(x30)
	lw x40, 0(x40)
	fmul x39, x39, x40
	fadd x38, x38, x39
	fmul x34, x34, x32
	lw x39, 9(x30)
	lw x39, 1(x39)
	fmul x34, x34, x39
	fadd x34, x38, x34
	fmul x32, x32, x33
	lw x33, 9(x30)
	lw x33, 2(x33)
	fmul x32, x32, x33
	fadd x32, x34, x32
trace_diffuse_rays_cont_b3955:
# B3955
	lw x33, 1(x30)
	bne	x33, x37, trace_diffuse_rays_beqelse_b3957
# B3956
	lui x33, 260096
	fsub x32, x32, x33
trace_diffuse_rays_beqelse_b3957:
# B3957
trace_diffuse_rays_cont_b3958:
# B3958
	fmul x33, x36, x36
	fmul x32, x35, x32
	fsub x32, x33, x32
	fle x33, x32, zero
	bne	x33, zero, trace_diffuse_rays_beqelse_b3959
# B3960
	lw x30, 6(x30)
	bne	x30, zero, trace_diffuse_rays_beqelse_b3962
# B3961
	la x30, min_caml_solver_dist
	fsqrt x32, x32
	fsub x32, x36, x32
	lw x24, 4(x24)
	fmul x24, x32, x24
	sw x24, 0(x30)
	j trace_diffuse_rays_cont_b3963 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3962:
# B3962
	la x30, min_caml_solver_dist
	fsqrt x32, x32
	fadd x32, x36, x32
	lw x24, 4(x24)
	fmul x24, x32, x24
	sw x24, 0(x30)
trace_diffuse_rays_cont_b3963:
# B3963
trace_diffuse_rays_cont_b3966:
# B3966
	la x24, min_caml_solver_dist
	lw x30, 0(x24)
	fle x30, x26, x30
	beq	x30, zero, trace_diffuse_rays_bneelse_b3968
# B3967
	addi x20, x20, 1
	j trace_diffuse_rays_cont_b4062 # adhoc jump(2)
trace_diffuse_rays_bneelse_b3968:
# B3968
	mv x33, x18
	mv x32, x100
trace_diffuse_rays_loop_b3969:
# B3969
	add x4, x33, x32
	lw x30, 0(x4)
	beq	x30, x25, trace_diffuse_rays_bneelse_b3970
# B3971
	la x34, min_caml_and_net
	add x4, x34, x30
	lw x30, 0(x4)
	mv x35, x30
	mv x34, zero
trace_diffuse_rays_loop_b3972:
# B3972
	add x4, x35, x34
	lw x30, 0(x4)
	beq	x30, x25, trace_diffuse_rays_bneelse_b3973
# B3974
	add x4, x35, x34
	lw x30, 0(x4)
	add x4, x22, x30
	lw x36, 0(x4)
	lw x37, 0(x23)
	lw x38, 5(x36)
	lw x38, 0(x38)
	fsub x37, x37, x38
	lw x38, 1(x23)
	lw x39, 5(x36)
	lw x39, 1(x39)
	fsub x38, x38, x39
	lw x39, 2(x23)
	lw x40, 5(x36)
	lw x40, 2(x40)
	fsub x39, x39, x40
	lw x40, 1(x29)
	add x4, x40, x30
	lw x40, 0(x4)
	lw x5, 1(x36)
	bne	x5, x100, trace_diffuse_rays_beqelse_b3976
# B3975
	lw x5, 0(x29)
	lw x6, 0(x40)
	fsub x6, x6, x37
	lw x65, 1(x40)
	fmul x6, x6, x65
	lw x65, 1(x5)
	fmul x65, x6, x65
	fadd x65, x65, x38
	fabs x65, x65
	lw x66, 4(x36)
	lw x66, 1(x66)
	fle x65, x66, x65
	bne	x65, zero, trace_diffuse_rays_beqelse_b3977
# B3978
	lw x65, 2(x5)
	fmul x65, x6, x65
	fadd x65, x65, x39
	fabs x65, x65
	lw x66, 4(x36)
	lw x66, 2(x66)
	fle x65, x66, x65
	bne	x65, zero, trace_diffuse_rays_beqelse_b3979
# B3980
	lw x65, 1(x40)
	feq x65, x65, zero
	xori x65, x65, 1
	mv x66, x65
# B3981
	bne	x66, zero, trace_diffuse_rays_beqelse_b3983
	j trace_diffuse_rays_cont_b3982 # adhoc jump(3)
trace_diffuse_rays_beqelse_b3983:
# B3983
	sw x6, 0(x24)
	lw x37, 0(x24)
	j trace_diffuse_rays_cont_b4017 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3979:
# B3979
trace_diffuse_rays_beqelse_b3977:
# B3977
trace_diffuse_rays_cont_b3982:
# B3982
	lw x6, 2(x40)
	fsub x6, x6, x38
	lw x65, 3(x40)
	fmul x6, x6, x65
	lw x65, 0(x5)
	fmul x65, x6, x65
	fadd x65, x65, x37
	fabs x65, x65
	lw x66, 4(x36)
	lw x66, 0(x66)
	fle x65, x66, x65
	bne	x65, zero, trace_diffuse_rays_beqelse_b3984
# B3985
	lw x65, 2(x5)
	fmul x65, x6, x65
	fadd x65, x65, x39
	fabs x65, x65
	lw x66, 4(x36)
	lw x66, 2(x66)
	fle x65, x66, x65
	bne	x65, zero, trace_diffuse_rays_beqelse_b3986
# B3987
	lw x65, 3(x40)
	feq x65, x65, zero
	xori x65, x65, 1
	mv x66, x65
# B3988
	bne	x66, zero, trace_diffuse_rays_beqelse_b3990
	j trace_diffuse_rays_cont_b3989 # adhoc jump(3)
trace_diffuse_rays_beqelse_b3990:
# B3990
	sw x6, 0(x24)
	lw x37, 0(x24)
	j trace_diffuse_rays_cont_b4017 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3986:
# B3986
trace_diffuse_rays_beqelse_b3984:
# B3984
trace_diffuse_rays_cont_b3989:
# B3989
	lw x6, 4(x40)
	fsub x39, x6, x39
	lw x6, 5(x40)
	fmul x39, x39, x6
	lw x6, 0(x5)
	fmul x6, x39, x6
	fadd x37, x6, x37
	fabs x37, x37
	lw x6, 4(x36)
	lw x6, 0(x6)
	fle x37, x6, x37
	bne	x37, zero, trace_diffuse_rays_beqelse_b3991
# B3992
	lw x37, 1(x5)
	fmul x37, x39, x37
	fadd x37, x37, x38
	fabs x37, x37
	lw x36, 4(x36)
	lw x36, 1(x36)
	fle x36, x36, x37
	bne	x36, zero, trace_diffuse_rays_beqelse_b3993
# B3994
	lw x36, 5(x40)
	feq x36, x36, zero
	xori x36, x36, 1
	mv x37, x36
# B3995
	bne	x37, zero, trace_diffuse_rays_beqelse_b3997
	j trace_diffuse_rays_cont_b3996 # adhoc jump(3)
trace_diffuse_rays_beqelse_b3997:
# B3997
	sw x39, 0(x24)
	lw x37, 0(x24)
	j trace_diffuse_rays_cont_b4017 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3993:
# B3993
trace_diffuse_rays_beqelse_b3991:
# B3991
trace_diffuse_rays_cont_b3996:
# B3996
	lw x37, 0(x24)
	j trace_diffuse_rays_cont_b4016 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3976:
# B3976
	bne	x5, x11, trace_diffuse_rays_beqelse_b3999
# B3998
	lw x36, 0(x40)
	fle x36, zero, x36
	beq	x36, zero, trace_diffuse_rays_bneelse_b4001
# B4000
	lw x37, 0(x24)
	j trace_diffuse_rays_cont_b4016 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4001:
# B4001
	lw x36, 1(x40)
	fmul x36, x36, x37
	lw x37, 2(x40)
	fmul x37, x37, x38
	fadd x36, x36, x37
	lw x37, 3(x40)
	fmul x37, x37, x39
	fadd x36, x36, x37
	sw x36, 0(x24)
	lw x37, 0(x24)
	j trace_diffuse_rays_cont_b4017 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3999:
# B3999
	lw x5, 0(x40)
	feq x6, x5, zero
	bne	x6, zero, trace_diffuse_rays_beqelse_b4003
# B4002
	lw x6, 1(x40)
	fmul x6, x6, x37
	lw x65, 2(x40)
	fmul x65, x65, x38
	fadd x6, x6, x65
	li x65, 3
	lw x66, 3(x40)
	fmul x66, x66, x39
	fadd x6, x6, x66
	fmul x66, x37, x37
	lw x67, 4(x36)
	lw x67, 0(x67)
	fmul x66, x66, x67
	fmul x67, x38, x38
	lw x68, 4(x36)
	lw x68, 1(x68)
	fmul x67, x67, x68
	fadd x66, x66, x67
	fmul x67, x39, x39
	lw x68, 4(x36)
	lw x68, 2(x68)
	fmul x67, x67, x68
	fadd x66, x66, x67
	lw x67, 3(x36)
	bne	x67, zero, trace_diffuse_rays_beqelse_b4005
# B4004
	mv x37, x66
	j trace_diffuse_rays_cont_b4006 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4005:
# B4005
	fmul x67, x38, x39
	lw x68, 9(x36)
	lw x68, 0(x68)
	fmul x67, x67, x68
	fadd x66, x66, x67
	fmul x39, x39, x37
	lw x67, 9(x36)
	lw x67, 1(x67)
	fmul x39, x39, x67
	fadd x39, x66, x39
	fmul x37, x37, x38
	lw x38, 9(x36)
	lw x38, 2(x38)
	fmul x37, x37, x38
	fadd x37, x39, x37
trace_diffuse_rays_cont_b4006:
# B4006
	lw x38, 1(x36)
	bne	x38, x65, trace_diffuse_rays_beqelse_b4008
# B4007
	lui x38, 260096
	fsub x37, x37, x38
trace_diffuse_rays_beqelse_b4008:
# B4008
trace_diffuse_rays_cont_b4009:
# B4009
	fmul x38, x6, x6
	fmul x37, x5, x37
	fsub x37, x38, x37
	fle x38, x37, zero
	beq	x38, zero, trace_diffuse_rays_bneelse_b4011
# B4010
	lw x37, 0(x24)
	j trace_diffuse_rays_cont_b4016 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4011:
# B4011
	lw x36, 6(x36)
	bne	x36, zero, trace_diffuse_rays_beqelse_b4013
# B4012
	fsqrt x36, x37
	fsub x36, x6, x36
	lw x37, 4(x40)
	fmul x36, x36, x37
	sw x36, 0(x24)
	j trace_diffuse_rays_cont_b4014 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4013:
# B4013
	fsqrt x36, x37
	fadd x36, x6, x36
	lw x37, 4(x40)
	fmul x36, x36, x37
	sw x36, 0(x24)
trace_diffuse_rays_cont_b4014:
# B4014
	lw x37, 0(x24)
trace_diffuse_rays_cont_b4017:
# B4017
	lui x36, 779469
	addi x36, x36, -819
	fle x36, x36, x37
	xori x36, x36, 1
# B4018
	addi x34, x34, 1
	bne	x36, zero, trace_diffuse_rays_beqelse_b4020
	j trace_diffuse_rays_cont_b4019 # adhoc jump(3)
trace_diffuse_rays_beqelse_b4020:
# B4020
	lui x30, 246333
	addi x30, x30, 1802
	fadd x30, x37, x30
	la x36, min_caml_light
	lw x37, 0(x36)
	fmul x37, x37, x30
	lw x38, 0(x23)
	fadd x37, x37, x38
	lw x38, 1(x36)
	fmul x38, x38, x30
	lw x39, 1(x23)
	fadd x38, x38, x39
	lw x36, 2(x36)
	fmul x30, x36, x30
	lw x36, 2(x23)
	fadd x30, x30, x36
	mv x40, x37
	mv x39, x35
	mv x5, x38
	mv x6, x30
	mv x36, zero
	j	trace_diffuse_rays_loop_b4023
trace_diffuse_rays_bneelse_b4050:	#moved
# B4050
	addi x36, x36, 1
trace_diffuse_rays_loop_b4023:
# B4023
	add x4, x39, x36
	lw x30, 0(x4)
	beq	x30, x25, trace_diffuse_rays_bneelse_b4024
# B4025
	add x4, x22, x30
	lw x30, 0(x4)
	lw x37, 5(x30)
	lw x37, 0(x37)
	fsub x37, x40, x37
	lw x38, 5(x30)
	lw x38, 1(x38)
	fsub x38, x5, x38
	lw x65, 5(x30)
	lw x65, 2(x65)
	fsub x65, x6, x65
	lw x66, 1(x30)
	bne	x66, x100, trace_diffuse_rays_beqelse_b4027
# B4026
	fabs x37, x37
	lw x66, 4(x30)
	lw x66, 0(x66)
	fle x37, x66, x37
	bne	x37, zero, trace_diffuse_rays_beqelse_b4028
# B4029
	fabs x37, x38
	lw x38, 4(x30)
	lw x38, 1(x38)
	fle x37, x38, x37
	bne	x37, zero, trace_diffuse_rays_beqelse_b4030
# B4031
	fabs x37, x65
	lw x38, 4(x30)
	lw x38, 2(x38)
	fle x37, x38, x37
	xori x37, x37, 1
	mv x38, x37
# B4032
	bne	x38, zero, trace_diffuse_rays_beqelse_b4034
	j trace_diffuse_rays_cont_b4033 # adhoc jump(3)
trace_diffuse_rays_beqelse_b4034:
# B4034
	lw x30, 6(x30)
	j trace_diffuse_rays_cont_b4049 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4030:
# B4030
trace_diffuse_rays_beqelse_b4028:
# B4028
trace_diffuse_rays_cont_b4033:
# B4033
	lw x30, 6(x30)
	xori x30, x30, 1
	j trace_diffuse_rays_cont_b4049 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4027:
# B4027
	bne	x66, x11, trace_diffuse_rays_beqelse_b4036
# B4035
	lw x66, 4(x30)
	lw x67, 0(x66)
	fmul x37, x67, x37
	lw x67, 1(x66)
	fmul x38, x67, x38
	fadd x37, x37, x38
	lw x38, 2(x66)
	fmul x38, x38, x65
	fadd x37, x37, x38
	lw x30, 6(x30)
	fle x37, zero, x37
	xori x37, x37, 1
	bne	x30, zero, trace_diffuse_rays_beqelse_b4038
# B4037
	mv x30, x37
	j trace_diffuse_rays_cont_b4039 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4038:
# B4038
	xori x30, x37, 1
trace_diffuse_rays_cont_b4039:
# B4039
	xori x30, x30, 1
	j trace_diffuse_rays_cont_b4049 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4036:
# B4036
	fmul x66, x37, x37
	lw x67, 4(x30)
	lw x67, 0(x67)
	fmul x66, x66, x67
	fmul x67, x38, x38
	lw x68, 4(x30)
	lw x68, 1(x68)
	fmul x67, x67, x68
	fadd x66, x66, x67
	fmul x67, x65, x65
	lw x68, 4(x30)
	lw x68, 2(x68)
	fmul x67, x67, x68
	fadd x66, x66, x67
	lw x67, 3(x30)
	bne	x67, zero, trace_diffuse_rays_beqelse_b4041
# B4040
	mv x37, x66
	j trace_diffuse_rays_cont_b4042 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4041:
# B4041
	fmul x67, x38, x65
	lw x68, 9(x30)
	lw x68, 0(x68)
	fmul x67, x67, x68
	fadd x66, x66, x67
	fmul x65, x65, x37
	lw x67, 9(x30)
	lw x67, 1(x67)
	fmul x65, x65, x67
	fadd x65, x66, x65
	fmul x37, x37, x38
	lw x38, 9(x30)
	lw x38, 2(x38)
	fmul x37, x37, x38
	fadd x37, x65, x37
trace_diffuse_rays_cont_b4042:
# B4042
	lw x38, 1(x30)
	li x65, 3
	bne	x38, x65, trace_diffuse_rays_beqelse_b4044
# B4043
	lui x38, 260096
	fsub x37, x37, x38
trace_diffuse_rays_beqelse_b4044:
# B4044
trace_diffuse_rays_cont_b4045:
# B4045
	lw x30, 6(x30)
	fle x37, zero, x37
	xori x37, x37, 1
	bne	x30, zero, trace_diffuse_rays_beqelse_b4047
# B4046
	mv x30, x37
	j trace_diffuse_rays_cont_b4048 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4047:
# B4047
	xori x30, x37, 1
trace_diffuse_rays_cont_b4048:
# B4048
	xori x30, x30, 1
trace_diffuse_rays_cont_b4049:
# B4049
	beq	x30, zero, trace_diffuse_rays_bneelse_b4050
# B4051
# B4053
	j	trace_diffuse_rays_loop_b3972
trace_diffuse_rays_bneelse_b4024:
# B4024
# B4054
	mv x30, x100
# B4055
	bne	x30, zero, trace_diffuse_rays_beqelse_b4057
	j trace_diffuse_rays_cont_b4056 # adhoc jump(3)
trace_diffuse_rays_beqelse_b4057:
# B4057
	mv x34, x100
# B4058
	bne	x34, zero, trace_diffuse_rays_beqelse_b4060
	j trace_diffuse_rays_cont_b4059 # adhoc jump(3)
trace_diffuse_rays_beqelse_b4060:
# B4060
	mv x24, x100
# B4061
	addi x20, x20, 1
	bne	x24, zero, trace_diffuse_rays_beqelse_b4063
	j trace_diffuse_rays_cont_b4062 # adhoc jump(3)
trace_diffuse_rays_beqelse_b4063:
trace_diffuse_rays_cont_b4063:
# B4063
	mv x30, x18
	mv x29, x100
trace_diffuse_rays_loop_b4064:
# B4064
	add x4, x30, x29
	lw x18, 0(x4)
	beq	x18, x25, trace_diffuse_rays_bneelse_b4065
# B4066
	la x24, min_caml_and_net
	add x4, x24, x18
	lw x18, 0(x4)
	mv x24, zero
	mv x32, x18
trace_diffuse_rays_loop_b4067:
# B4067
	add x4, x32, x24
	lw x18, 0(x4)
	beq	x18, x25, trace_diffuse_rays_bneelse_b4068
# B4069
	add x4, x32, x24
	lw x18, 0(x4)
	la x33, min_caml_light_dirvec
	add x4, x22, x18
	lw x34, 0(x4)
	lw x35, 0(x23)
	lw x36, 5(x34)
	lw x36, 0(x36)
	fsub x35, x35, x36
	lw x36, 1(x23)
	lw x37, 5(x34)
	lw x37, 1(x37)
	fsub x36, x36, x37
	lw x37, 2(x23)
	lw x38, 5(x34)
	lw x38, 2(x38)
	fsub x37, x37, x38
	lw x38, 1(x33)
	add x4, x38, x18
	lw x38, 0(x4)
	lw x39, 1(x34)
	bne	x39, x100, trace_diffuse_rays_beqelse_b4071
# B4070
	lw x33, 0(x33)
	lw x39, 0(x38)
	fsub x39, x39, x35
	lw x40, 1(x38)
	fmul x39, x39, x40
	lw x40, 1(x33)
	fmul x40, x39, x40
	fadd x40, x40, x36
	fabs x40, x40
	lw x5, 4(x34)
	lw x5, 1(x5)
	fle x40, x5, x40
	bne	x40, zero, trace_diffuse_rays_beqelse_b4072
# B4073
	lw x40, 2(x33)
	fmul x40, x39, x40
	fadd x40, x40, x37
	fabs x40, x40
	lw x5, 4(x34)
	lw x5, 2(x5)
	fle x40, x5, x40
	bne	x40, zero, trace_diffuse_rays_beqelse_b4074
# B4075
	lw x40, 1(x38)
	feq x40, x40, zero
	xori x40, x40, 1
	mv x5, x40
# B4076
	bne	x5, zero, trace_diffuse_rays_beqelse_b4078
	j trace_diffuse_rays_cont_b4077 # adhoc jump(3)
trace_diffuse_rays_beqelse_b4078:
# B4078
	la x33, min_caml_solver_dist
	sw x39, 0(x33)
	la x34, min_caml_solver_dist
	lw x34, 0(x34)
	j trace_diffuse_rays_cont_b4112 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4074:
# B4074
trace_diffuse_rays_beqelse_b4072:
# B4072
trace_diffuse_rays_cont_b4077:
# B4077
	lw x39, 2(x38)
	fsub x39, x39, x36
	lw x40, 3(x38)
	fmul x39, x39, x40
	lw x40, 0(x33)
	fmul x40, x39, x40
	fadd x40, x40, x35
	fabs x40, x40
	lw x5, 4(x34)
	lw x5, 0(x5)
	fle x40, x5, x40
	bne	x40, zero, trace_diffuse_rays_beqelse_b4079
# B4080
	lw x40, 2(x33)
	fmul x40, x39, x40
	fadd x40, x40, x37
	fabs x40, x40
	lw x5, 4(x34)
	lw x5, 2(x5)
	fle x40, x5, x40
	bne	x40, zero, trace_diffuse_rays_beqelse_b4081
# B4082
	lw x40, 3(x38)
	feq x40, x40, zero
	xori x40, x40, 1
	mv x5, x40
# B4083
	bne	x5, zero, trace_diffuse_rays_beqelse_b4085
	j trace_diffuse_rays_cont_b4084 # adhoc jump(3)
trace_diffuse_rays_beqelse_b4085:
# B4085
	la x33, min_caml_solver_dist
	sw x39, 0(x33)
	la x34, min_caml_solver_dist
	lw x34, 0(x34)
	j trace_diffuse_rays_cont_b4112 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4081:
# B4081
trace_diffuse_rays_beqelse_b4079:
# B4079
trace_diffuse_rays_cont_b4084:
# B4084
	lw x39, 4(x38)
	fsub x37, x39, x37
	lw x39, 5(x38)
	fmul x37, x37, x39
	lw x39, 0(x33)
	fmul x39, x37, x39
	fadd x35, x39, x35
	fabs x35, x35
	lw x39, 4(x34)
	lw x39, 0(x39)
	fle x35, x39, x35
	bne	x35, zero, trace_diffuse_rays_beqelse_b4086
# B4087
	lw x33, 1(x33)
	fmul x33, x37, x33
	fadd x33, x33, x36
	fabs x33, x33
	lw x34, 4(x34)
	lw x34, 1(x34)
	fle x33, x34, x33
	bne	x33, zero, trace_diffuse_rays_beqelse_b4088
# B4089
	lw x33, 5(x38)
	feq x33, x33, zero
	xori x33, x33, 1
	mv x34, x33
# B4090
	bne	x34, zero, trace_diffuse_rays_beqelse_b4092
	j trace_diffuse_rays_cont_b4091 # adhoc jump(3)
trace_diffuse_rays_beqelse_b4092:
# B4092
	la x33, min_caml_solver_dist
	sw x37, 0(x33)
	la x34, min_caml_solver_dist
	lw x34, 0(x34)
	j trace_diffuse_rays_cont_b4112 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4088:
# B4088
trace_diffuse_rays_beqelse_b4086:
# B4086
trace_diffuse_rays_cont_b4091:
# B4091
	la x34, min_caml_solver_dist
	lw x34, 0(x34)
	j trace_diffuse_rays_cont_b4111 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4071:
# B4071
	bne	x39, x11, trace_diffuse_rays_beqelse_b4094
# B4093
	lw x33, 0(x38)
	fle x33, zero, x33
	beq	x33, zero, trace_diffuse_rays_bneelse_b4096
# B4095
	la x34, min_caml_solver_dist
	lw x34, 0(x34)
	j trace_diffuse_rays_cont_b4111 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4096:
# B4096
	la x33, min_caml_solver_dist
	lw x34, 1(x38)
	fmul x34, x34, x35
	lw x35, 2(x38)
	fmul x35, x35, x36
	fadd x34, x34, x35
	lw x35, 3(x38)
	fmul x35, x35, x37
	fadd x34, x34, x35
	sw x34, 0(x33)
	la x34, min_caml_solver_dist
	lw x34, 0(x34)
	j trace_diffuse_rays_cont_b4112 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4094:
# B4094
	lw x33, 0(x38)
	feq x39, x33, zero
	bne	x39, zero, trace_diffuse_rays_beqelse_b4098
# B4097
	lw x39, 1(x38)
	fmul x39, x39, x35
	lw x40, 2(x38)
	fmul x40, x40, x36
	fadd x39, x39, x40
	li x40, 3
	lw x5, 3(x38)
	fmul x5, x5, x37
	fadd x39, x39, x5
	fmul x5, x35, x35
	lw x6, 4(x34)
	lw x6, 0(x6)
	fmul x5, x5, x6
	fmul x6, x36, x36
	lw x65, 4(x34)
	lw x65, 1(x65)
	fmul x6, x6, x65
	fadd x5, x5, x6
	fmul x6, x37, x37
	lw x65, 4(x34)
	lw x65, 2(x65)
	fmul x6, x6, x65
	fadd x5, x5, x6
	lw x6, 3(x34)
	bne	x6, zero, trace_diffuse_rays_beqelse_b4100
# B4099
	mv x35, x5
	j trace_diffuse_rays_cont_b4101 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4100:
# B4100
	fmul x6, x36, x37
	lw x65, 9(x34)
	lw x65, 0(x65)
	fmul x6, x6, x65
	fadd x5, x5, x6
	fmul x37, x37, x35
	lw x6, 9(x34)
	lw x6, 1(x6)
	fmul x37, x37, x6
	fadd x37, x5, x37
	fmul x35, x35, x36
	lw x36, 9(x34)
	lw x36, 2(x36)
	fmul x35, x35, x36
	fadd x35, x37, x35
trace_diffuse_rays_cont_b4101:
# B4101
	lw x36, 1(x34)
	bne	x36, x40, trace_diffuse_rays_beqelse_b4103
# B4102
	lui x36, 260096
	fsub x35, x35, x36
trace_diffuse_rays_beqelse_b4103:
# B4103
trace_diffuse_rays_cont_b4104:
# B4104
	fmul x36, x39, x39
	fmul x33, x33, x35
	fsub x33, x36, x33
	fle x35, x33, zero
	beq	x35, zero, trace_diffuse_rays_bneelse_b4106
# B4105
	la x34, min_caml_solver_dist
	lw x34, 0(x34)
	j trace_diffuse_rays_cont_b4111 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4106:
# B4106
	lw x34, 6(x34)
	bne	x34, zero, trace_diffuse_rays_beqelse_b4108
# B4107
	la x34, min_caml_solver_dist
	fsqrt x33, x33
	fsub x33, x39, x33
	lw x35, 4(x38)
	fmul x33, x33, x35
	sw x33, 0(x34)
	j trace_diffuse_rays_cont_b4109 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4108:
# B4108
	la x34, min_caml_solver_dist
	fsqrt x33, x33
	fadd x33, x39, x33
	lw x35, 4(x38)
	fmul x33, x33, x35
	sw x33, 0(x34)
trace_diffuse_rays_cont_b4109:
# B4109
	la x34, min_caml_solver_dist
	lw x34, 0(x34)
trace_diffuse_rays_cont_b4112:
# B4112
	lui x33, 779469
	addi x33, x33, -819
	fle x33, x33, x34
	xori x33, x33, 1
# B4113
	addi x24, x24, 1
	bne	x33, zero, trace_diffuse_rays_beqelse_b4115
	j trace_diffuse_rays_cont_b4114 # adhoc jump(3)
trace_diffuse_rays_beqelse_b4115:
# B4115
	lui x18, 246333
	addi x18, x18, 1802
	fadd x18, x34, x18
	lw x33, 0(x27)
	fmul x33, x33, x18
	lw x34, 0(x23)
	fadd x33, x33, x34
	lw x34, 1(x27)
	fmul x34, x34, x18
	lw x35, 1(x23)
	fadd x34, x34, x35
	lw x35, 2(x27)
	fmul x18, x35, x18
	lw x35, 2(x23)
	fadd x18, x18, x35
	mv x37, x33
	mv x35, zero
	mv x38, x34
	mv x39, x18
	mv x36, x32
	j	trace_diffuse_rays_loop_b4118
trace_diffuse_rays_bneelse_b4145:	#moved
# B4145
	addi x35, x35, 1
trace_diffuse_rays_loop_b4118:
# B4118
	add x4, x36, x35
	lw x18, 0(x4)
	beq	x18, x25, trace_diffuse_rays_bneelse_b4119
# B4120
	add x4, x22, x18
	lw x18, 0(x4)
	lw x33, 5(x18)
	lw x33, 0(x33)
	fsub x33, x37, x33
	lw x34, 5(x18)
	lw x34, 1(x34)
	fsub x34, x38, x34
	lw x40, 5(x18)
	lw x40, 2(x40)
	fsub x40, x39, x40
	lw x5, 1(x18)
	bne	x5, x100, trace_diffuse_rays_beqelse_b4122
# B4121
	fabs x33, x33
	lw x5, 4(x18)
	lw x5, 0(x5)
	fle x33, x5, x33
	bne	x33, zero, trace_diffuse_rays_beqelse_b4123
# B4124
	fabs x33, x34
	lw x34, 4(x18)
	lw x34, 1(x34)
	fle x33, x34, x33
	bne	x33, zero, trace_diffuse_rays_beqelse_b4125
# B4126
	fabs x33, x40
	lw x34, 4(x18)
	lw x34, 2(x34)
	fle x33, x34, x33
	xori x33, x33, 1
	mv x34, x33
# B4127
	bne	x34, zero, trace_diffuse_rays_beqelse_b4129
	j trace_diffuse_rays_cont_b4128 # adhoc jump(3)
trace_diffuse_rays_beqelse_b4129:
# B4129
	lw x18, 6(x18)
	j trace_diffuse_rays_cont_b4144 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4125:
# B4125
trace_diffuse_rays_beqelse_b4123:
# B4123
trace_diffuse_rays_cont_b4128:
# B4128
	lw x18, 6(x18)
	xori x18, x18, 1
	j trace_diffuse_rays_cont_b4144 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4122:
# B4122
	bne	x5, x11, trace_diffuse_rays_beqelse_b4131
# B4130
	lw x5, 4(x18)
	lw x6, 0(x5)
	fmul x33, x6, x33
	lw x6, 1(x5)
	fmul x34, x6, x34
	fadd x33, x33, x34
	lw x34, 2(x5)
	fmul x34, x34, x40
	fadd x33, x33, x34
	lw x18, 6(x18)
	fle x33, zero, x33
	xori x33, x33, 1
	bne	x18, zero, trace_diffuse_rays_beqelse_b4133
# B4132
	mv x18, x33
	j trace_diffuse_rays_cont_b4134 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4133:
# B4133
	xori x18, x33, 1
trace_diffuse_rays_cont_b4134:
# B4134
	xori x18, x18, 1
	j trace_diffuse_rays_cont_b4144 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4131:
# B4131
	fmul x5, x33, x33
	lw x6, 4(x18)
	lw x6, 0(x6)
	fmul x5, x5, x6
	fmul x6, x34, x34
	lw x65, 4(x18)
	lw x65, 1(x65)
	fmul x6, x6, x65
	fadd x5, x5, x6
	fmul x6, x40, x40
	lw x65, 4(x18)
	lw x65, 2(x65)
	fmul x6, x6, x65
	fadd x5, x5, x6
	lw x6, 3(x18)
	bne	x6, zero, trace_diffuse_rays_beqelse_b4136
# B4135
	mv x33, x5
	j trace_diffuse_rays_cont_b4137 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4136:
# B4136
	fmul x6, x34, x40
	lw x65, 9(x18)
	lw x65, 0(x65)
	fmul x6, x6, x65
	fadd x5, x5, x6
	fmul x40, x40, x33
	lw x6, 9(x18)
	lw x6, 1(x6)
	fmul x40, x40, x6
	fadd x40, x5, x40
	fmul x33, x33, x34
	lw x34, 9(x18)
	lw x34, 2(x34)
	fmul x33, x33, x34
	fadd x33, x40, x33
trace_diffuse_rays_cont_b4137:
# B4137
	lw x34, 1(x18)
	li x40, 3
	bne	x34, x40, trace_diffuse_rays_beqelse_b4139
# B4138
	lui x34, 260096
	fsub x33, x33, x34
trace_diffuse_rays_beqelse_b4139:
# B4139
trace_diffuse_rays_cont_b4140:
# B4140
	lw x18, 6(x18)
	fle x33, zero, x33
	xori x33, x33, 1
	bne	x18, zero, trace_diffuse_rays_beqelse_b4142
# B4141
	mv x18, x33
	j trace_diffuse_rays_cont_b4143 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4142:
# B4142
	xori x18, x33, 1
trace_diffuse_rays_cont_b4143:
# B4143
	xori x18, x18, 1
trace_diffuse_rays_cont_b4144:
# B4144
	beq	x18, zero, trace_diffuse_rays_bneelse_b4145
# B4146
# B4148
	j	trace_diffuse_rays_loop_b4067
trace_diffuse_rays_bneelse_b4119:
# B4119
# B4149
	mv x18, x100
# B4150
	bne	x18, zero, trace_diffuse_rays_beqelse_b4152
	j trace_diffuse_rays_cont_b4151 # adhoc jump(3)
trace_diffuse_rays_beqelse_b4152:
# B4152
	mv x24, x100
# B4153
	bne	x24, zero, trace_diffuse_rays_beqelse_b4155
	j trace_diffuse_rays_cont_b4154 # adhoc jump(3)
trace_diffuse_rays_beqelse_b4155:
# B4155
	mv x18, x100
# B4156
	bne	x18, zero, trace_diffuse_rays_beqelse_b4158
	j trace_diffuse_rays_cont_b4157 # adhoc jump(3)
trace_diffuse_rays_beqelse_b4158:
# B4158
	j trace_diffuse_rays_cont_b4734 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4098:
# B4098
	la x34, min_caml_solver_dist
	lw x34, 0(x34)
trace_diffuse_rays_cont_b4111:
# B4111
	addi x24, x24, 1
trace_diffuse_rays_cont_b4114:
# B4114
	add x4, x22, x18
	lw x18, 0(x4)
	lw x18, 6(x18)
	beq	x18, zero, trace_diffuse_rays_bneelse_b4116
# B4117
	j	trace_diffuse_rays_loop_b4067
trace_diffuse_rays_bneelse_b4116:
# B4116
trace_diffuse_rays_bneelse_b4068:
# B4068
trace_diffuse_rays_cont_b4151:
# B4151
	addi x29, x29, 1
	j	trace_diffuse_rays_loop_b4064
trace_diffuse_rays_bneelse_b4065:
# B4065
trace_diffuse_rays_cont_b4154:
# B4154
	j	trace_diffuse_rays_loop_b3919
trace_diffuse_rays_beqelse_b4003:
# B4003
	lw x37, 0(x24)
trace_diffuse_rays_cont_b4016:
# B4016
	addi x34, x34, 1
trace_diffuse_rays_cont_b4019:
# B4019
	add x4, x22, x30
	lw x30, 0(x4)
	lw x30, 6(x30)
	beq	x30, zero, trace_diffuse_rays_bneelse_b4021
# B4022
	j	trace_diffuse_rays_loop_b3972
trace_diffuse_rays_bneelse_b4021:
# B4021
trace_diffuse_rays_bneelse_b3973:
# B3973
trace_diffuse_rays_cont_b4056:
# B4056
	addi x32, x32, 1
	j	trace_diffuse_rays_loop_b3969
trace_diffuse_rays_bneelse_b3970:
# B3970
trace_diffuse_rays_cont_b4059:
# B4059
	addi x20, x20, 1
	j trace_diffuse_rays_cont_b4062 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3959:
# B3959
trace_diffuse_rays_beqelse_b3952:
# B3952
trace_diffuse_rays_cont_b3965:
# B3965
	addi x20, x20, 1
trace_diffuse_rays_cont_b4062:
# B4062
	j	trace_diffuse_rays_loop_b3919
trace_diffuse_rays_bneelse_b3920:
# B3920
trace_diffuse_rays_cont_b4157:
# B4157
	lw x18, 0(x28)
	lw x20, 0(x27)
	fmul x18, x18, x20
	lw x20, 1(x28)
	lw x21, 1(x27)
	fmul x20, x20, x21
	fadd x18, x18, x20
	lw x20, 2(x28)
	lw x21, 2(x27)
	fmul x20, x20, x21
	fadd x18, x18, x20
	fsub x18, zero, x18
	fle x20, x18, zero
	beq	x20, zero, trace_diffuse_rays_bneelse_b4160
# B4159
	mv x21, zero
	j trace_diffuse_rays_cont_b4161 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4160:
# B4160
	mv x21, x18
trace_diffuse_rays_cont_b4161:
# B4161
	fmul x13, x13, x21
	lw x18, 7(x19)
	lw x18, 0(x18)
	fmul x13, x13, x18
	lw x18, 0(x82)
	lw x19, 0(x31)
	fmul x19, x13, x19
	fadd x18, x18, x19
	sw x18, 0(x82)
	lw x18, 1(x82)
	lw x19, 1(x31)
	fmul x19, x13, x19
	fadd x18, x18, x19
	sw x18, 1(x82)
	lw x18, 2(x82)
	lw x19, 2(x31)
	fmul x13, x13, x19
	fadd x13, x18, x13
	sw x13, 2(x82)
	j trace_diffuse_rays_cont_b4734 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3802:
# B3802
trace_diffuse_rays_cont_b3805:
# B3805
	j trace_diffuse_rays_cont_b4734 # adhoc jump(2)
trace_diffuse_rays_bneelse_b3589:
# B3589
	addi x18, x17, 1
	add x4, x14, x18
	lw x18, 0(x4)
	lui x83, 799072
	fdiv x13, x13, x83
	sw x20, 0(x19)
	lw x20, 0(x21)
	mv x85, x18
	mv x83, zero
	mv x84, x20
trace_diffuse_rays_loop_b4162:
# B4162
	add x4, x84, x83
	lw x20, 0(x4)
	lw x86, 0(x20)
	li x87, -1
	la x88, min_caml_objects
	li x89, 3
	lui x9, 260096
	beq	x86, x87, trace_diffuse_rays_bneelse_b4163
# B4164
	li x90, 99
	la x91, min_caml_solver_dist
	li x92, 3
	bne	x86, x90, trace_diffuse_rays_beqelse_b4166
# B4165
	mv x94, x20
	mv x95, x85
	mv x93, x100
trace_diffuse_rays_loop_b4167:
# B4167
	add x4, x94, x93
	lw x20, 0(x4)
	beq	x20, x87, trace_diffuse_rays_bneelse_b4168
# B4169
	la x86, min_caml_and_net
	add x4, x86, x20
	lw x20, 0(x4)
	mv x9, x95
	mv x89, x20
	mv x86, zero
trace_diffuse_rays_beqelse_b4211:	#moved
# B4211
trace_diffuse_rays_loop_b4170:
# B4170
	lw x20, 0(x9)
	add x4, x89, x86
	lw x90, 0(x4)
	beq	x90, x87, trace_diffuse_rays_bneelse_b4171
# B4172
	add x4, x88, x90
	lw x96, 0(x4)
	lw x97, 10(x96)
	lw x98, 0(x97)
	lw x99, 1(x97)
	lw x101, 2(x97)
	lw x102, 1(x9)
	add x4, x102, x90
	lw x102, 0(x4)
	lw x103, 1(x96)
	bne	x103, x100, trace_diffuse_rays_beqelse_b4174
# B4173
	lw x97, 0(x9)
	lw x103, 0(x102)
	fsub x103, x103, x98
	lw x104, 1(x102)
	fmul x103, x103, x104
	lw x104, 1(x97)
	fmul x104, x103, x104
	fadd x104, x104, x99
	fabs x104, x104
	lw x105, 4(x96)
	lw x105, 1(x105)
	fle x104, x105, x104
	bne	x104, zero, trace_diffuse_rays_beqelse_b4175
# B4176
	lw x104, 2(x97)
	fmul x104, x103, x104
	fadd x104, x104, x101
	fabs x104, x104
	lw x105, 4(x96)
	lw x105, 2(x105)
	fle x104, x105, x104
	bne	x104, zero, trace_diffuse_rays_beqelse_b4177
# B4178
	lw x104, 1(x102)
	feq x104, x104, zero
	xori x104, x104, 1
	mv x105, x104
# B4179
	bne	x105, zero, trace_diffuse_rays_beqelse_b4181
	j trace_diffuse_rays_cont_b4180 # adhoc jump(3)
trace_diffuse_rays_beqelse_b4181:
# B4181
	la x96, min_caml_solver_dist
	sw x103, 0(x96)
	li x96, 1
	addi x86, x86, 1
	j trace_diffuse_rays_cont_b4209 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4177:
# B4177
trace_diffuse_rays_beqelse_b4175:
# B4175
trace_diffuse_rays_cont_b4180:
# B4180
	lw x103, 2(x102)
	fsub x103, x103, x99
	lw x104, 3(x102)
	fmul x103, x103, x104
	lw x104, 0(x97)
	fmul x104, x103, x104
	fadd x104, x104, x98
	fabs x104, x104
	lw x105, 4(x96)
	lw x105, 0(x105)
	fle x104, x105, x104
	bne	x104, zero, trace_diffuse_rays_beqelse_b4182
# B4183
	lw x104, 2(x97)
	fmul x104, x103, x104
	fadd x104, x104, x101
	fabs x104, x104
	lw x105, 4(x96)
	lw x105, 2(x105)
	fle x104, x105, x104
	bne	x104, zero, trace_diffuse_rays_beqelse_b4184
# B4185
	lw x104, 3(x102)
	feq x104, x104, zero
	xori x104, x104, 1
	mv x105, x104
# B4186
	bne	x105, zero, trace_diffuse_rays_beqelse_b4188
	j trace_diffuse_rays_cont_b4187 # adhoc jump(3)
trace_diffuse_rays_beqelse_b4188:
# B4188
	la x96, min_caml_solver_dist
	sw x103, 0(x96)
	li x96, 2
	addi x86, x86, 1
	j trace_diffuse_rays_cont_b4209 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4184:
# B4184
trace_diffuse_rays_beqelse_b4182:
# B4182
trace_diffuse_rays_cont_b4187:
# B4187
	lw x103, 4(x102)
	fsub x101, x103, x101
	lw x103, 5(x102)
	fmul x101, x101, x103
	lw x103, 0(x97)
	fmul x103, x101, x103
	fadd x98, x103, x98
	fabs x98, x98
	lw x103, 4(x96)
	lw x103, 0(x103)
	fle x98, x103, x98
	bne	x98, zero, trace_diffuse_rays_beqelse_b4189
# B4190
	lw x97, 1(x97)
	fmul x97, x101, x97
	fadd x97, x97, x99
	fabs x97, x97
	lw x96, 4(x96)
	lw x96, 1(x96)
	fle x96, x96, x97
	bne	x96, zero, trace_diffuse_rays_beqelse_b4191
# B4192
	lw x96, 5(x102)
	feq x96, x96, zero
	xori x96, x96, 1
	mv x97, x96
# B4193
	bne	x97, zero, trace_diffuse_rays_beqelse_b4195
	j trace_diffuse_rays_cont_b4194 # adhoc jump(3)
trace_diffuse_rays_beqelse_b4195:
# B4195
	la x96, min_caml_solver_dist
	sw x101, 0(x96)
	li x96, 3
	addi x86, x86, 1
	j trace_diffuse_rays_cont_b4209 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4191:
# B4191
trace_diffuse_rays_beqelse_b4189:
# B4189
trace_diffuse_rays_cont_b4194:
# B4194
	mv x96, zero
	addi x86, x86, 1
	j trace_diffuse_rays_cont_b4208 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4174:
# B4174
	bne	x103, x11, trace_diffuse_rays_beqelse_b4197
# B4196
	lw x96, 0(x102)
	fle x96, zero, x96
	beq	x96, zero, trace_diffuse_rays_bneelse_b4199
# B4198
	mv x96, zero
	addi x86, x86, 1
	j trace_diffuse_rays_cont_b4208 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4199:
# B4199
	la x96, min_caml_solver_dist
	lw x98, 0(x102)
	lw x97, 3(x97)
	fmul x97, x98, x97
	sw x97, 0(x96)
	li x96, 1
	addi x86, x86, 1
	j trace_diffuse_rays_cont_b4209 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4197:
# B4197
	lw x103, 0(x102)
	feq x104, x103, zero
	bne	x104, zero, trace_diffuse_rays_beqelse_b4201
# B4200
	lw x104, 1(x102)
	fmul x98, x104, x98
	lw x104, 2(x102)
	fmul x99, x104, x99
	fadd x98, x98, x99
	lw x99, 3(x102)
	fmul x99, x99, x101
	fadd x98, x98, x99
	lw x97, 3(x97)
	fmul x99, x98, x98
	fmul x97, x103, x97
	fsub x97, x99, x97
	fle x99, x97, zero
	beq	x99, zero, trace_diffuse_rays_bneelse_b4203
# B4202
	mv x96, zero
	addi x86, x86, 1
	j trace_diffuse_rays_cont_b4208 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4203:
# B4203
	lw x96, 6(x96)
	bne	x96, zero, trace_diffuse_rays_beqelse_b4205
# B4204
	la x96, min_caml_solver_dist
	fsqrt x97, x97
	fsub x97, x98, x97
	lw x98, 4(x102)
	fmul x97, x97, x98
	sw x97, 0(x96)
	j trace_diffuse_rays_cont_b4206 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4205:
# B4205
	la x96, min_caml_solver_dist
	fsqrt x97, x97
	fadd x97, x98, x97
	lw x98, 4(x102)
	fmul x97, x97, x98
	sw x97, 0(x96)
trace_diffuse_rays_cont_b4206:
# B4206
	li x96, 1
	addi x86, x86, 1
trace_diffuse_rays_cont_b4209:
# B4209
	lw x97, 0(x91)
	fle x98, x97, zero
	bne	x98, zero, trace_diffuse_rays_beqelse_b4212
# B4213
	lw x98, 0(x19)
	fle x98, x98, x97
	bne	x98, zero, trace_diffuse_rays_beqelse_b4214
# B4215
	lui x98, 246333
	addi x98, x98, 1802
	fadd x97, x97, x98
	lw x98, 0(x20)
	fmul x98, x98, x97
	lw x99, 0(x10)
	fadd x98, x98, x99
	lw x99, 1(x20)
	fmul x99, x99, x97
	lw x101, 1(x10)
	fadd x99, x99, x101
	lw x20, 2(x20)
	fmul x20, x20, x97
	lw x101, 2(x10)
	fadd x20, x20, x101
	mv x103, x98
	mv x101, zero
	mv x105, x20
	mv x102, x89
	mv x104, x99
	j	trace_diffuse_rays_loop_b4216
trace_diffuse_rays_bneelse_b4243:	#moved
# B4243
	addi x101, x101, 1
trace_diffuse_rays_loop_b4216:
# B4216
	add x4, x102, x101
	lw x106, 0(x4)
	bne	x106, x87, trace_diffuse_rays_beqelse_b4218
# B4217
	mv x102, x101
# B4247
	sw x97, 0(x19)
	sw x98, 0(x23)
	sw x99, 1(x23)
	sw x20, 2(x23)
	sw x90, 0(x24)
	sw x96, 0(x25)
	j trace_diffuse_rays_cont_b4248 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4218:
# B4218
	add x4, x88, x106
	lw x106, 0(x4)
	lw x107, 5(x106)
	lw x107, 0(x107)
	fsub x107, x103, x107
	lw x108, 5(x106)
	lw x108, 1(x108)
	fsub x108, x104, x108
	lw x109, 5(x106)
	lw x109, 2(x109)
	fsub x109, x105, x109
	lw x110, 1(x106)
	bne	x110, x100, trace_diffuse_rays_beqelse_b4220
# B4219
	fabs x107, x107
	lw x110, 4(x106)
	lw x110, 0(x110)
	fle x107, x110, x107
	bne	x107, zero, trace_diffuse_rays_beqelse_b4221
# B4222
	fabs x107, x108
	lw x108, 4(x106)
	lw x108, 1(x108)
	fle x107, x108, x107
	bne	x107, zero, trace_diffuse_rays_beqelse_b4223
# B4224
	fabs x107, x109
	lw x108, 4(x106)
	lw x108, 2(x108)
	fle x107, x108, x107
	xori x107, x107, 1
	mv x108, x107
# B4225
	bne	x108, zero, trace_diffuse_rays_beqelse_b4227
	j trace_diffuse_rays_cont_b4226 # adhoc jump(3)
trace_diffuse_rays_beqelse_b4227:
# B4227
	lw x106, 6(x106)
	j trace_diffuse_rays_cont_b4242 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4223:
# B4223
trace_diffuse_rays_beqelse_b4221:
# B4221
trace_diffuse_rays_cont_b4226:
# B4226
	lw x106, 6(x106)
	xori x106, x106, 1
	j trace_diffuse_rays_cont_b4242 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4220:
# B4220
	bne	x110, x11, trace_diffuse_rays_beqelse_b4229
# B4228
	lw x110, 4(x106)
	lw x111, 0(x110)
	fmul x107, x111, x107
	lw x111, 1(x110)
	fmul x108, x111, x108
	fadd x107, x107, x108
	lw x108, 2(x110)
	fmul x108, x108, x109
	fadd x107, x107, x108
	lw x106, 6(x106)
	fle x107, zero, x107
	xori x107, x107, 1
	bne	x106, zero, trace_diffuse_rays_beqelse_b4231
# B4230
	mv x106, x107
	j trace_diffuse_rays_cont_b4232 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4231:
# B4231
	xori x106, x107, 1
trace_diffuse_rays_cont_b4232:
# B4232
	xori x106, x106, 1
	j trace_diffuse_rays_cont_b4242 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4229:
# B4229
	fmul x110, x107, x107
	lw x111, 4(x106)
	lw x111, 0(x111)
	fmul x110, x110, x111
	fmul x111, x108, x108
	lw x112, 4(x106)
	lw x112, 1(x112)
	fmul x111, x111, x112
	fadd x110, x110, x111
	fmul x111, x109, x109
	lw x112, 4(x106)
	lw x112, 2(x112)
	fmul x111, x111, x112
	fadd x110, x110, x111
	lw x111, 3(x106)
	bne	x111, zero, trace_diffuse_rays_beqelse_b4234
# B4233
	mv x107, x110
	j trace_diffuse_rays_cont_b4235 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4234:
# B4234
	fmul x111, x108, x109
	lw x112, 9(x106)
	lw x112, 0(x112)
	fmul x111, x111, x112
	fadd x110, x110, x111
	fmul x109, x109, x107
	lw x111, 9(x106)
	lw x111, 1(x111)
	fmul x109, x109, x111
	fadd x109, x110, x109
	fmul x107, x107, x108
	lw x108, 9(x106)
	lw x108, 2(x108)
	fmul x107, x107, x108
	fadd x107, x109, x107
trace_diffuse_rays_cont_b4235:
# B4235
	lw x108, 1(x106)
	bne	x108, x92, trace_diffuse_rays_beqelse_b4237
# B4236
	lui x108, 260096
	fsub x107, x107, x108
trace_diffuse_rays_beqelse_b4237:
# B4237
trace_diffuse_rays_cont_b4238:
# B4238
	lw x106, 6(x106)
	fle x107, zero, x107
	xori x107, x107, 1
	bne	x106, zero, trace_diffuse_rays_beqelse_b4240
# B4239
	mv x106, x107
	j trace_diffuse_rays_cont_b4241 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4240:
# B4240
	xori x106, x107, 1
trace_diffuse_rays_cont_b4241:
# B4241
	xori x106, x106, 1
trace_diffuse_rays_cont_b4242:
# B4242
	beq	x106, zero, trace_diffuse_rays_bneelse_b4243
# B4244
# B4246
trace_diffuse_rays_beqelse_b4214:
# B4214
trace_diffuse_rays_beqelse_b4212:
# B4212
trace_diffuse_rays_cont_b4248:
# B4248
	j	trace_diffuse_rays_loop_b4170
trace_diffuse_rays_beqelse_b4201:
# B4201
	mv x96, zero
	addi x86, x86, 1
trace_diffuse_rays_cont_b4208:
# B4208
	add x4, x88, x90
	lw x20, 0(x4)
	lw x20, 6(x20)
	bne	x20, zero, trace_diffuse_rays_beqelse_b4211
# B4210
trace_diffuse_rays_bneelse_b4171:
# B4171
trace_diffuse_rays_cont_b4249:
# B4249
	addi x93, x93, 1
	j	trace_diffuse_rays_loop_b4167
trace_diffuse_rays_bneelse_b4168:
# B4168
	j trace_diffuse_rays_cont_b4372 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4166:
# B4166
	add x4, x22, x86
	lw x88, 0(x4)
	lw x90, 10(x88)
	lw x93, 0(x90)
	lw x94, 1(x90)
	lw x95, 2(x90)
	lw x96, 1(x85)
	add x4, x96, x86
	lw x86, 0(x4)
	lw x96, 1(x88)
	bne	x96, x100, trace_diffuse_rays_beqelse_b4251
# B4250
	lw x90, 0(x85)
	lw x96, 0(x86)
	fsub x96, x96, x93
	lw x97, 1(x86)
	fmul x96, x96, x97
	lw x97, 1(x90)
	fmul x97, x96, x97
	fadd x97, x97, x94
	fabs x97, x97
	lw x98, 4(x88)
	lw x98, 1(x98)
	fle x97, x98, x97
	bne	x97, zero, trace_diffuse_rays_beqelse_b4252
# B4253
	lw x97, 2(x90)
	fmul x97, x96, x97
	fadd x97, x97, x95
	fabs x97, x97
	lw x98, 4(x88)
	lw x98, 2(x98)
	fle x97, x98, x97
	bne	x97, zero, trace_diffuse_rays_beqelse_b4254
# B4255
	lw x97, 1(x86)
	feq x97, x97, zero
	xori x97, x97, 1
	mv x98, x97
# B4256
	bne	x98, zero, trace_diffuse_rays_beqelse_b4258
	j trace_diffuse_rays_cont_b4257 # adhoc jump(3)
trace_diffuse_rays_beqelse_b4258:
# B4258
	sw x96, 0(x91)
	mv x92, x100
	j trace_diffuse_rays_cont_b4284 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4254:
# B4254
trace_diffuse_rays_beqelse_b4252:
# B4252
trace_diffuse_rays_cont_b4257:
# B4257
	lw x96, 2(x86)
	fsub x96, x96, x94
	lw x97, 3(x86)
	fmul x96, x96, x97
	lw x97, 0(x90)
	fmul x97, x96, x97
	fadd x97, x97, x93
	fabs x97, x97
	lw x98, 4(x88)
	lw x98, 0(x98)
	fle x97, x98, x97
	bne	x97, zero, trace_diffuse_rays_beqelse_b4259
# B4260
	lw x97, 2(x90)
	fmul x97, x96, x97
	fadd x97, x97, x95
	fabs x97, x97
	lw x98, 4(x88)
	lw x98, 2(x98)
	fle x97, x98, x97
	bne	x97, zero, trace_diffuse_rays_beqelse_b4261
# B4262
	lw x97, 3(x86)
	feq x97, x97, zero
	xori x97, x97, 1
	mv x98, x97
# B4263
	bne	x98, zero, trace_diffuse_rays_beqelse_b4265
	j trace_diffuse_rays_cont_b4264 # adhoc jump(3)
trace_diffuse_rays_beqelse_b4265:
# B4265
	sw x96, 0(x91)
	mv x92, x11
	j trace_diffuse_rays_cont_b4284 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4261:
# B4261
trace_diffuse_rays_beqelse_b4259:
# B4259
trace_diffuse_rays_cont_b4264:
# B4264
	lw x96, 4(x86)
	fsub x95, x96, x95
	lw x96, 5(x86)
	fmul x95, x95, x96
	lw x96, 0(x90)
	fmul x96, x95, x96
	fadd x93, x96, x93
	fabs x93, x93
	lw x96, 4(x88)
	lw x96, 0(x96)
	fle x93, x96, x93
	bne	x93, zero, trace_diffuse_rays_beqelse_b4266
# B4267
	lw x90, 1(x90)
	fmul x90, x95, x90
	fadd x90, x90, x94
	fabs x90, x90
	lw x88, 4(x88)
	lw x88, 1(x88)
	fle x88, x88, x90
	bne	x88, zero, trace_diffuse_rays_beqelse_b4268
# B4269
	lw x86, 5(x86)
	feq x86, x86, zero
	xori x86, x86, 1
	mv x88, x86
# B4270
	bne	x88, zero, trace_diffuse_rays_beqelse_b4272
	j trace_diffuse_rays_cont_b4271 # adhoc jump(3)
trace_diffuse_rays_beqelse_b4272:
# B4272
	sw x95, 0(x91)
	j trace_diffuse_rays_cont_b4284 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4268:
# B4268
trace_diffuse_rays_beqelse_b4266:
# B4266
trace_diffuse_rays_cont_b4271:
# B4271
	j trace_diffuse_rays_cont_b4285 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4251:
# B4251
	bne	x96, x11, trace_diffuse_rays_beqelse_b4274
# B4273
	lw x88, 0(x86)
	fle x88, zero, x88
	bne	x88, zero, trace_diffuse_rays_beqelse_b4275
# B4276
	lw x86, 0(x86)
	lw x88, 3(x90)
	fmul x86, x86, x88
	sw x86, 0(x91)
	mv x92, x100
	j trace_diffuse_rays_cont_b4284 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4275:
# B4275
	j trace_diffuse_rays_cont_b4285 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4274:
# B4274
	lw x92, 0(x86)
	feq x96, x92, zero
	bne	x96, zero, trace_diffuse_rays_beqelse_b4278
# B4277
	lw x96, 1(x86)
	fmul x93, x96, x93
	lw x96, 2(x86)
	fmul x94, x96, x94
	fadd x93, x93, x94
	lw x94, 3(x86)
	fmul x94, x94, x95
	fadd x93, x93, x94
	lw x90, 3(x90)
	fmul x94, x93, x93
	fmul x90, x92, x90
	fsub x90, x94, x90
	fle x92, x90, zero
	bne	x92, zero, trace_diffuse_rays_beqelse_b4279
# B4280
	lw x88, 6(x88)
	fsqrt x90, x90
	bne	x88, zero, trace_diffuse_rays_beqelse_b4282
# B4281
	fsub x88, x93, x90
	lw x86, 4(x86)
	fmul x86, x88, x86
	sw x86, 0(x91)
	j trace_diffuse_rays_cont_b4283 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4282:
# B4282
	fadd x88, x93, x90
	lw x86, 4(x86)
	fmul x86, x88, x86
	sw x86, 0(x91)
trace_diffuse_rays_cont_b4283:
# B4283
	mv x92, x100
trace_diffuse_rays_cont_b4284:
# B4284
	bne	x92, zero, trace_diffuse_rays_beqelse_b4286
	j trace_diffuse_rays_cont_b4285 # adhoc jump(3)
trace_diffuse_rays_beqelse_b4286:
# B4286
	lw x86, 0(x91)
	lw x88, 0(x19)
	fle x86, x88, x86
	bne	x86, zero, trace_diffuse_rays_beqelse_b4287
# B4288
	mv x92, x85
	mv x88, x100
	mv x90, x20
trace_diffuse_rays_loop_b4289:
# B4289
	add x4, x90, x88
	lw x20, 0(x4)
	beq	x20, x87, trace_diffuse_rays_bneelse_b4290
# B4291
	la x86, min_caml_and_net
	add x4, x86, x20
	lw x20, 0(x4)
	mv x94, x92
	mv x93, x20
	mv x86, zero
trace_diffuse_rays_beqelse_b4333:	#moved
# B4333
trace_diffuse_rays_loop_b4292:
# B4292
	lw x20, 0(x94)
	add x4, x93, x86
	lw x95, 0(x4)
	beq	x95, x87, trace_diffuse_rays_bneelse_b4293
# B4294
	add x4, x22, x95
	lw x96, 0(x4)
	lw x97, 10(x96)
	lw x98, 0(x97)
	lw x99, 1(x97)
	lw x101, 2(x97)
	lw x102, 1(x94)
	add x4, x102, x95
	lw x102, 0(x4)
	lw x103, 1(x96)
	bne	x103, x100, trace_diffuse_rays_beqelse_b4296
# B4295
	lw x97, 0(x94)
	lw x103, 0(x102)
	fsub x103, x103, x98
	lw x104, 1(x102)
	fmul x103, x103, x104
	lw x104, 1(x97)
	fmul x104, x103, x104
	fadd x104, x104, x99
	fabs x104, x104
	lw x105, 4(x96)
	lw x105, 1(x105)
	fle x104, x105, x104
	bne	x104, zero, trace_diffuse_rays_beqelse_b4297
# B4298
	lw x104, 2(x97)
	fmul x104, x103, x104
	fadd x104, x104, x101
	fabs x104, x104
	lw x105, 4(x96)
	lw x105, 2(x105)
	fle x104, x105, x104
	bne	x104, zero, trace_diffuse_rays_beqelse_b4299
# B4300
	lw x104, 1(x102)
	feq x104, x104, zero
	xori x104, x104, 1
	mv x105, x104
# B4301
	bne	x105, zero, trace_diffuse_rays_beqelse_b4303
	j trace_diffuse_rays_cont_b4302 # adhoc jump(3)
trace_diffuse_rays_beqelse_b4303:
# B4303
	sw x103, 0(x91)
	li x96, 1
	addi x86, x86, 1
	j trace_diffuse_rays_cont_b4331 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4299:
# B4299
trace_diffuse_rays_beqelse_b4297:
# B4297
trace_diffuse_rays_cont_b4302:
# B4302
	lw x103, 2(x102)
	fsub x103, x103, x99
	lw x104, 3(x102)
	fmul x103, x103, x104
	lw x104, 0(x97)
	fmul x104, x103, x104
	fadd x104, x104, x98
	fabs x104, x104
	lw x105, 4(x96)
	lw x105, 0(x105)
	fle x104, x105, x104
	bne	x104, zero, trace_diffuse_rays_beqelse_b4304
# B4305
	lw x104, 2(x97)
	fmul x104, x103, x104
	fadd x104, x104, x101
	fabs x104, x104
	lw x105, 4(x96)
	lw x105, 2(x105)
	fle x104, x105, x104
	bne	x104, zero, trace_diffuse_rays_beqelse_b4306
# B4307
	lw x104, 3(x102)
	feq x104, x104, zero
	xori x104, x104, 1
	mv x105, x104
# B4308
	bne	x105, zero, trace_diffuse_rays_beqelse_b4310
	j trace_diffuse_rays_cont_b4309 # adhoc jump(3)
trace_diffuse_rays_beqelse_b4310:
# B4310
	sw x103, 0(x91)
	li x96, 2
	addi x86, x86, 1
	j trace_diffuse_rays_cont_b4331 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4306:
# B4306
trace_diffuse_rays_beqelse_b4304:
# B4304
trace_diffuse_rays_cont_b4309:
# B4309
	lw x103, 4(x102)
	fsub x101, x103, x101
	lw x103, 5(x102)
	fmul x101, x101, x103
	lw x103, 0(x97)
	fmul x103, x101, x103
	fadd x98, x103, x98
	fabs x98, x98
	lw x103, 4(x96)
	lw x103, 0(x103)
	fle x98, x103, x98
	bne	x98, zero, trace_diffuse_rays_beqelse_b4311
# B4312
	lw x97, 1(x97)
	fmul x97, x101, x97
	fadd x97, x97, x99
	fabs x97, x97
	lw x96, 4(x96)
	lw x96, 1(x96)
	fle x96, x96, x97
	bne	x96, zero, trace_diffuse_rays_beqelse_b4313
# B4314
	lw x96, 5(x102)
	feq x96, x96, zero
	xori x96, x96, 1
	mv x97, x96
# B4315
	bne	x97, zero, trace_diffuse_rays_beqelse_b4317
	j trace_diffuse_rays_cont_b4316 # adhoc jump(3)
trace_diffuse_rays_beqelse_b4317:
# B4317
	sw x101, 0(x91)
	li x96, 3
	addi x86, x86, 1
	j trace_diffuse_rays_cont_b4331 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4313:
# B4313
trace_diffuse_rays_beqelse_b4311:
# B4311
trace_diffuse_rays_cont_b4316:
# B4316
	mv x96, zero
	addi x86, x86, 1
	j trace_diffuse_rays_cont_b4330 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4296:
# B4296
	bne	x103, x11, trace_diffuse_rays_beqelse_b4319
# B4318
	lw x96, 0(x102)
	fle x96, zero, x96
	beq	x96, zero, trace_diffuse_rays_bneelse_b4321
# B4320
	mv x96, zero
	addi x86, x86, 1
	j trace_diffuse_rays_cont_b4330 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4321:
# B4321
	lw x96, 0(x102)
	lw x97, 3(x97)
	fmul x96, x96, x97
	sw x96, 0(x91)
	li x96, 1
	addi x86, x86, 1
	j trace_diffuse_rays_cont_b4331 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4319:
# B4319
	lw x103, 0(x102)
	feq x104, x103, zero
	bne	x104, zero, trace_diffuse_rays_beqelse_b4323
# B4322
	lw x104, 1(x102)
	fmul x98, x104, x98
	lw x104, 2(x102)
	fmul x99, x104, x99
	fadd x98, x98, x99
	lw x99, 3(x102)
	fmul x99, x99, x101
	fadd x98, x98, x99
	lw x97, 3(x97)
	fmul x99, x98, x98
	fmul x97, x103, x97
	fsub x97, x99, x97
	fle x99, x97, zero
	beq	x99, zero, trace_diffuse_rays_bneelse_b4325
# B4324
	mv x96, zero
	addi x86, x86, 1
	j trace_diffuse_rays_cont_b4330 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4325:
# B4325
	lw x96, 6(x96)
	bne	x96, zero, trace_diffuse_rays_beqelse_b4327
# B4326
	fsqrt x96, x97
	fsub x96, x98, x96
	lw x97, 4(x102)
	fmul x96, x96, x97
	sw x96, 0(x91)
	j trace_diffuse_rays_cont_b4328 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4327:
# B4327
	fsqrt x96, x97
	fadd x96, x98, x96
	lw x97, 4(x102)
	fmul x96, x96, x97
	sw x96, 0(x91)
trace_diffuse_rays_cont_b4328:
# B4328
	li x96, 1
	addi x86, x86, 1
trace_diffuse_rays_cont_b4331:
# B4331
	lw x97, 0(x91)
	fle x98, x97, zero
	bne	x98, zero, trace_diffuse_rays_beqelse_b4334
# B4335
	lw x98, 0(x19)
	fle x98, x98, x97
	bne	x98, zero, trace_diffuse_rays_beqelse_b4336
# B4337
	lui x98, 246333
	addi x98, x98, 1802
	fadd x97, x97, x98
	lw x98, 0(x20)
	fmul x98, x98, x97
	lw x99, 0(x10)
	fadd x98, x98, x99
	lw x99, 1(x20)
	fmul x99, x99, x97
	lw x101, 1(x10)
	fadd x99, x99, x101
	lw x20, 2(x20)
	fmul x20, x20, x97
	lw x101, 2(x10)
	fadd x20, x20, x101
	mv x102, x93
	mv x103, x98
	mv x101, zero
	mv x105, x20
	mv x104, x99
	j	trace_diffuse_rays_loop_b4338
trace_diffuse_rays_bneelse_b4365:	#moved
# B4365
	addi x101, x101, 1
trace_diffuse_rays_loop_b4338:
# B4338
	add x4, x102, x101
	lw x106, 0(x4)
	bne	x106, x87, trace_diffuse_rays_beqelse_b4340
# B4339
	mv x102, x101
# B4369
	sw x97, 0(x19)
	sw x98, 0(x23)
	sw x99, 1(x23)
	sw x20, 2(x23)
	sw x95, 0(x24)
	sw x96, 0(x25)
	j trace_diffuse_rays_cont_b4370 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4340:
# B4340
	add x4, x22, x106
	lw x106, 0(x4)
	lw x107, 5(x106)
	lw x107, 0(x107)
	fsub x107, x103, x107
	lw x108, 5(x106)
	lw x108, 1(x108)
	fsub x108, x104, x108
	lw x109, 5(x106)
	lw x109, 2(x109)
	fsub x109, x105, x109
	lw x110, 1(x106)
	bne	x110, x100, trace_diffuse_rays_beqelse_b4342
# B4341
	fabs x107, x107
	lw x110, 4(x106)
	lw x110, 0(x110)
	fle x107, x110, x107
	bne	x107, zero, trace_diffuse_rays_beqelse_b4343
# B4344
	fabs x107, x108
	lw x108, 4(x106)
	lw x108, 1(x108)
	fle x107, x108, x107
	bne	x107, zero, trace_diffuse_rays_beqelse_b4345
# B4346
	fabs x107, x109
	lw x108, 4(x106)
	lw x108, 2(x108)
	fle x107, x108, x107
	xori x107, x107, 1
	mv x108, x107
# B4347
	bne	x108, zero, trace_diffuse_rays_beqelse_b4349
	j trace_diffuse_rays_cont_b4348 # adhoc jump(3)
trace_diffuse_rays_beqelse_b4349:
# B4349
	lw x106, 6(x106)
	j trace_diffuse_rays_cont_b4364 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4345:
# B4345
trace_diffuse_rays_beqelse_b4343:
# B4343
trace_diffuse_rays_cont_b4348:
# B4348
	lw x106, 6(x106)
	xori x106, x106, 1
	j trace_diffuse_rays_cont_b4364 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4342:
# B4342
	bne	x110, x11, trace_diffuse_rays_beqelse_b4351
# B4350
	lw x110, 4(x106)
	lw x111, 0(x110)
	fmul x107, x111, x107
	lw x111, 1(x110)
	fmul x108, x111, x108
	fadd x107, x107, x108
	lw x108, 2(x110)
	fmul x108, x108, x109
	fadd x107, x107, x108
	lw x106, 6(x106)
	fle x107, zero, x107
	xori x107, x107, 1
	bne	x106, zero, trace_diffuse_rays_beqelse_b4353
# B4352
	mv x106, x107
	j trace_diffuse_rays_cont_b4354 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4353:
# B4353
	xori x106, x107, 1
trace_diffuse_rays_cont_b4354:
# B4354
	xori x106, x106, 1
	j trace_diffuse_rays_cont_b4364 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4351:
# B4351
	fmul x110, x107, x107
	lw x111, 4(x106)
	lw x111, 0(x111)
	fmul x110, x110, x111
	fmul x111, x108, x108
	lw x112, 4(x106)
	lw x112, 1(x112)
	fmul x111, x111, x112
	fadd x110, x110, x111
	fmul x111, x109, x109
	lw x112, 4(x106)
	lw x112, 2(x112)
	fmul x111, x111, x112
	fadd x110, x110, x111
	lw x111, 3(x106)
	bne	x111, zero, trace_diffuse_rays_beqelse_b4356
# B4355
	mv x107, x110
	j trace_diffuse_rays_cont_b4357 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4356:
# B4356
	fmul x111, x108, x109
	lw x112, 9(x106)
	lw x112, 0(x112)
	fmul x111, x111, x112
	fadd x110, x110, x111
	fmul x109, x109, x107
	lw x111, 9(x106)
	lw x111, 1(x111)
	fmul x109, x109, x111
	fadd x109, x110, x109
	fmul x107, x107, x108
	lw x108, 9(x106)
	lw x108, 2(x108)
	fmul x107, x107, x108
	fadd x107, x109, x107
trace_diffuse_rays_cont_b4357:
# B4357
	lw x108, 1(x106)
	bne	x108, x89, trace_diffuse_rays_beqelse_b4359
# B4358
	fsub x107, x107, x9
trace_diffuse_rays_beqelse_b4359:
# B4359
trace_diffuse_rays_cont_b4360:
# B4360
	lw x106, 6(x106)
	fle x107, zero, x107
	xori x107, x107, 1
	bne	x106, zero, trace_diffuse_rays_beqelse_b4362
# B4361
	mv x106, x107
	j trace_diffuse_rays_cont_b4363 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4362:
# B4362
	xori x106, x107, 1
trace_diffuse_rays_cont_b4363:
# B4363
	xori x106, x106, 1
trace_diffuse_rays_cont_b4364:
# B4364
	beq	x106, zero, trace_diffuse_rays_bneelse_b4365
# B4366
# B4368
trace_diffuse_rays_beqelse_b4336:
# B4336
trace_diffuse_rays_beqelse_b4334:
# B4334
trace_diffuse_rays_cont_b4370:
# B4370
	j	trace_diffuse_rays_loop_b4292
trace_diffuse_rays_beqelse_b4323:
# B4323
	mv x96, zero
	addi x86, x86, 1
trace_diffuse_rays_cont_b4330:
# B4330
	add x4, x22, x95
	lw x20, 0(x4)
	lw x20, 6(x20)
	bne	x20, zero, trace_diffuse_rays_beqelse_b4333
# B4332
trace_diffuse_rays_bneelse_b4293:
# B4293
trace_diffuse_rays_cont_b4371:
# B4371
	addi x88, x88, 1
	j	trace_diffuse_rays_loop_b4289
trace_diffuse_rays_bneelse_b4290:
# B4290
trace_diffuse_rays_beqelse_b4287:
# B4287
trace_diffuse_rays_beqelse_b4279:
# B4279
trace_diffuse_rays_beqelse_b4278:
# B4278
trace_diffuse_rays_cont_b4285:
# B4285
trace_diffuse_rays_cont_b4372:
# B4372
	addi x83, x83, 1
	j	trace_diffuse_rays_loop_b4162
trace_diffuse_rays_bneelse_b4163:
# B4163
# B4373
	lw x19, 0(x19)
	fle x20, x19, x26
	bne	x20, zero, trace_diffuse_rays_beqelse_b4374
# B4375
	fle x19, x27, x19
	xori x19, x19, 1
	mv x20, x19
# B4376
	bne	x20, zero, trace_diffuse_rays_beqelse_b4378
	j trace_diffuse_rays_cont_b4377 # adhoc jump(3)
trace_diffuse_rays_beqelse_b4378:
# B4378
	lw x19, 0(x24)
	add x4, x88, x19
	lw x19, 0(x4)
	lw x18, 0(x18)
	lw x20, 1(x19)
	bne	x20, x100, trace_diffuse_rays_beqelse_b4380
# B4379
	lw x20, 0(x25)
	sw zero, 0(x28)
	sw zero, 1(x28)
	sw zero, 2(x28)
	addi x20, x20, -1
	add x4, x18, x20
	lw x18, 0(x4)
	feq x22, x18, zero
	bne	x22, zero, trace_diffuse_rays_beqelse_b4382
# B4381
	fle x18, x18, zero
	beq	x18, zero, trace_diffuse_rays_bneelse_b4384
# B4383
	mv x18, x30
	j trace_diffuse_rays_cont_b4385 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4384:
# B4384
	mv x18, x9
	j trace_diffuse_rays_cont_b4385 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4382:
# B4382
	mv x18, zero
trace_diffuse_rays_cont_b4385:
# B4385
	fsub x18, zero, x18
	add x4, x28, x20
	sw x18, 0(x4)
	j trace_diffuse_rays_cont_b4396 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4380:
# B4380
	bne	x20, x11, trace_diffuse_rays_beqelse_b4387
# B4386
	lw x18, 4(x19)
	lw x18, 0(x18)
	fsub x18, zero, x18
	sw x18, 0(x28)
	lw x18, 4(x19)
	lw x18, 1(x18)
	fsub x18, zero, x18
	sw x18, 1(x28)
	lw x18, 4(x19)
	lw x18, 2(x18)
	fsub x18, zero, x18
	sw x18, 2(x28)
	j trace_diffuse_rays_cont_b4396 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4387:
# B4387
	lw x18, 0(x23)
	lw x20, 5(x19)
	lw x20, 0(x20)
	fsub x18, x18, x20
	lw x20, 1(x23)
	lw x22, 5(x19)
	lw x22, 1(x22)
	fsub x20, x20, x22
	lw x22, 2(x23)
	lw x24, 5(x19)
	lw x24, 2(x24)
	fsub x22, x22, x24
	lw x24, 4(x19)
	lw x24, 0(x24)
	fmul x24, x18, x24
	lw x25, 4(x19)
	lw x25, 1(x25)
	fmul x25, x20, x25
	lw x27, 4(x19)
	lw x27, 2(x27)
	fmul x27, x22, x27
	lw x83, 3(x19)
	bne	x83, zero, trace_diffuse_rays_beqelse_b4389
# B4388
	sw x24, 0(x28)
	sw x25, 1(x28)
	sw x27, 2(x28)
	j trace_diffuse_rays_cont_b4390 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4389:
# B4389
	lw x83, 9(x19)
	lw x83, 2(x83)
	fmul x83, x20, x83
	lw x84, 9(x19)
	lw x84, 1(x84)
	fmul x84, x22, x84
	fadd x83, x83, x84
	fmul x83, x83, x29
	fadd x24, x24, x83
	sw x24, 0(x28)
	lw x24, 9(x19)
	lw x24, 2(x24)
	fmul x24, x18, x24
	lw x83, 9(x19)
	lw x83, 0(x83)
	fmul x22, x22, x83
	fadd x22, x24, x22
	fmul x22, x22, x29
	fadd x22, x25, x22
	sw x22, 1(x28)
	lw x22, 9(x19)
	lw x22, 1(x22)
	fmul x18, x18, x22
	lw x22, 9(x19)
	lw x22, 0(x22)
	fmul x20, x20, x22
	fadd x18, x18, x20
	fmul x18, x18, x29
	fadd x18, x27, x18
	sw x18, 2(x28)
trace_diffuse_rays_cont_b4390:
# B4390
	lw x18, 6(x19)
	lw x20, 0(x28)
	fmul x20, x20, x20
	lw x22, 1(x28)
	fmul x22, x22, x22
	fadd x20, x20, x22
	lw x22, 2(x28)
	fmul x22, x22, x22
	fadd x20, x20, x22
	fsqrt x20, x20
	feq x22, x20, zero
	bne	x22, zero, trace_diffuse_rays_beqelse_b4392
# B4391
	bne	x18, zero, trace_diffuse_rays_beqelse_b4394
# B4393
	fdiv x18, x9, x20
	j trace_diffuse_rays_cont_b4395 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4394:
# B4394
	fdiv x18, x30, x20
	j trace_diffuse_rays_cont_b4395 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4392:
# B4392
	mv x18, x9
trace_diffuse_rays_cont_b4395:
# B4395
	lw x20, 0(x28)
	fmul x20, x20, x18
	sw x20, 0(x28)
	lw x20, 1(x28)
	fmul x20, x20, x18
	sw x20, 1(x28)
	lw x20, 2(x28)
	fmul x18, x20, x18
	sw x18, 2(x28)
trace_diffuse_rays_cont_b4396:
# B4396
	lw x18, 0(x19)
	lw x20, 8(x19)
	lw x20, 0(x20)
	sw x20, 0(x31)
	lw x20, 8(x19)
	lw x20, 1(x20)
	sw x20, 1(x31)
	lw x20, 8(x19)
	lw x20, 2(x20)
	sw x20, 2(x31)
	bne	x18, x100, trace_diffuse_rays_beqelse_b4398
# B4397
	lw x18, 0(x23)
	lw x20, 5(x19)
	lw x20, 0(x20)
	fsub x18, x18, x20
	fmul x20, x18, x32
	floor x20, x20
	fmul x20, x20, x33
	fsub x18, x18, x20
	fle x18, x34, x18
	xori x18, x18, 1
	lw x20, 2(x23)
	lw x22, 5(x19)
	lw x22, 2(x22)
	fsub x20, x20, x22
	fmul x22, x20, x32
	floor x22, x22
	fmul x22, x22, x33
	fsub x20, x20, x22
	fle x20, x34, x20
	xori x20, x20, 1
	bne	x18, zero, trace_diffuse_rays_beqelse_b4400
# B4399
	bne	x20, zero, trace_diffuse_rays_beqelse_b4402
# B4401
	mv x22, x69
	j trace_diffuse_rays_cont_b4405 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4402:
# B4402
	mv x22, zero
	j trace_diffuse_rays_cont_b4405 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4400:
# B4400
	bne	x20, zero, trace_diffuse_rays_beqelse_b4404
# B4403
	mv x22, zero
	j trace_diffuse_rays_cont_b4405 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4404:
# B4404
	mv x22, x69
trace_diffuse_rays_cont_b4405:
# B4405
	sw x22, 1(x31)
	j trace_diffuse_rays_cont_b4490 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4398:
# B4398
	bne	x18, x11, trace_diffuse_rays_beqelse_b4407
# B4406
	lw x18, 1(x23)
	fmul x18, x18, x35
	fle x20, x18, zero
	xori x20, x20, 1
	fabs x18, x18
	mv x24, x36
	mv x22, x18
	j	trace_diffuse_rays_loop_b4408
trace_diffuse_rays_bneelse_b4409:	#moved
# B4409
	fmul x24, x24, x37
trace_diffuse_rays_loop_b4408:
# B4408
	fle x25, x22, x24
	beq	x25, zero, trace_diffuse_rays_bneelse_b4409
# B4410
# B4411
	mv x27, x18
	mv x29, x24
	j	trace_diffuse_rays_loop_b4412
trace_diffuse_rays_beqelse_b4416:	#moved
# B4416
	fdiv x29, x29, x37
trace_diffuse_rays_loop_b4412:
# B4412
	fle x18, x36, x27
	beq	x18, zero, trace_diffuse_rays_bneelse_b4413
# B4414
	fle x18, x27, x29
	bne	x18, zero, trace_diffuse_rays_beqelse_b4416
# B4415
	fsub x27, x27, x29
	fdiv x29, x29, x37
	j	trace_diffuse_rays_loop_b4412
trace_diffuse_rays_bneelse_b4413:
# B4413
# B4417
	fle x18, x38, x27
	bne	x18, zero, trace_diffuse_rays_beqelse_b4419
# B4418
	mv x22, x27
	j trace_diffuse_rays_cont_b4420 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4419:
# B4419
	fsub x22, x27, x38
trace_diffuse_rays_cont_b4420:
# B4420
	bne	x18, zero, trace_diffuse_rays_beqelse_b4422
# B4421
	mv x18, x20
	j trace_diffuse_rays_cont_b4423 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4422:
# B4422
	xori x18, x20, 1
trace_diffuse_rays_cont_b4423:
# B4423
	fle x20, x39, x22
	bne	x20, zero, trace_diffuse_rays_beqelse_b4425
# B4424
	mv x20, x22
	j trace_diffuse_rays_cont_b4426 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4425:
# B4425
	fsub x20, x38, x22
trace_diffuse_rays_cont_b4426:
# B4426
	fle x22, x40, x20
	bne	x22, zero, trace_diffuse_rays_beqelse_b4428
# B4427
	fmul x22, x20, x20
	fmul x24, x22, x65
	fadd x24, x6, x24
	fmul x24, x22, x24
	fadd x24, x5, x24
	fmul x22, x22, x24
	fadd x22, x9, x22
	fmul x20, x20, x22
	j trace_diffuse_rays_cont_b4429 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4428:
# B4428
	fsub x20, x39, x20
	fmul x20, x20, x20
	fmul x22, x20, x68
	fadd x22, x67, x22
	fmul x22, x20, x22
	fadd x22, x66, x22
	fmul x20, x20, x22
	fadd x20, x9, x20
trace_diffuse_rays_cont_b4429:
# B4429
	fle x22, x20, zero
	beq	x18, x22, trace_diffuse_rays_bneelse_b4431
# B4430
	mv x18, x20
	j trace_diffuse_rays_cont_b4432 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4431:
# B4431
	fsub x18, zero, x20
trace_diffuse_rays_cont_b4432:
# B4432
	fmul x18, x18, x18
	fmul x20, x69, x18
	sw x20, 0(x31)
	fsub x18, x9, x18
	fmul x18, x69, x18
	sw x18, 1(x31)
	j trace_diffuse_rays_cont_b4490 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4407:
# B4407
	bne	x18, x89, trace_diffuse_rays_beqelse_b4434
# B4433
	lw x18, 0(x23)
	lw x20, 5(x19)
	lw x20, 0(x20)
	fsub x18, x18, x20
	lw x20, 2(x23)
	lw x22, 5(x19)
	lw x22, 2(x22)
	fsub x20, x20, x22
	fmul x18, x18, x18
	fmul x20, x20, x20
	fadd x18, x18, x20
	fsqrt x18, x18
	fdiv x18, x18, x34
	floor x20, x18
	fsub x18, x18, x20
	fmul x18, x18, x7
	fabs x18, x18
	mv x20, x18
	mv x22, x36
	j	trace_diffuse_rays_loop_b4435
trace_diffuse_rays_bneelse_b4436:	#moved
# B4436
	fmul x22, x22, x37
trace_diffuse_rays_loop_b4435:
# B4435
	fle x24, x20, x22
	beq	x24, zero, trace_diffuse_rays_bneelse_b4436
# B4437
# B4438
	mv x27, x22
	mv x25, x18
	j	trace_diffuse_rays_loop_b4439
trace_diffuse_rays_beqelse_b4443:	#moved
# B4443
	fdiv x27, x27, x37
trace_diffuse_rays_loop_b4439:
# B4439
	fle x18, x36, x25
	beq	x18, zero, trace_diffuse_rays_bneelse_b4440
# B4441
	fle x18, x25, x27
	bne	x18, zero, trace_diffuse_rays_beqelse_b4443
# B4442
	fsub x25, x25, x27
	fdiv x27, x27, x37
	j	trace_diffuse_rays_loop_b4439
trace_diffuse_rays_bneelse_b4440:
# B4440
# B4444
	fle x18, x38, x25
	bne	x18, zero, trace_diffuse_rays_beqelse_b4446
# B4445
	mv x20, x25
	j trace_diffuse_rays_cont_b4447 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4446:
# B4446
	fsub x20, x25, x38
trace_diffuse_rays_cont_b4447:
# B4447
	bne	x18, zero, trace_diffuse_rays_beqelse_b4449
# B4448
	mv x22, x100
	j trace_diffuse_rays_cont_b4450 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4449:
# B4449
	mv x22, zero
trace_diffuse_rays_cont_b4450:
# B4450
	fle x18, x39, x20
	bne	x18, zero, trace_diffuse_rays_beqelse_b4452
# B4451
	j trace_diffuse_rays_cont_b4453 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4452:
# B4452
	fsub x20, x38, x20
trace_diffuse_rays_cont_b4453:
# B4453
	bne	x18, zero, trace_diffuse_rays_beqelse_b4455
# B4454
	mv x18, x22
	j trace_diffuse_rays_cont_b4456 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4455:
# B4455
	xori x18, x22, 1
trace_diffuse_rays_cont_b4456:
# B4456
	fle x22, x40, x20
	bne	x22, zero, trace_diffuse_rays_beqelse_b4458
# B4457
	fmul x20, x20, x20
	fmul x22, x20, x68
	fadd x22, x67, x22
	fmul x22, x20, x22
	fadd x22, x66, x22
	fmul x20, x20, x22
	fadd x20, x9, x20
	j trace_diffuse_rays_cont_b4459 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4458:
# B4458
	fsub x20, x39, x20
	fmul x22, x20, x20
	fmul x24, x22, x65
	fadd x24, x6, x24
	fmul x24, x22, x24
	fadd x24, x5, x24
	fmul x22, x22, x24
	fadd x22, x9, x22
	fmul x20, x20, x22
trace_diffuse_rays_cont_b4459:
# B4459
	fle x22, x20, zero
	beq	x18, x22, trace_diffuse_rays_bneelse_b4461
# B4460
	mv x18, x20
	j trace_diffuse_rays_cont_b4462 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4461:
# B4461
	fsub x18, zero, x20
trace_diffuse_rays_cont_b4462:
# B4462
	fmul x18, x18, x18
	fmul x20, x18, x69
	sw x20, 1(x31)
	fsub x18, x9, x18
	fmul x18, x18, x69
	sw x18, 2(x31)
	j trace_diffuse_rays_cont_b4490 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4434:
# B4434
	bne	x18, x70, trace_diffuse_rays_beqelse_b4464
# B4463
	lw x18, 0(x23)
	lw x20, 5(x19)
	lw x20, 0(x20)
	fsub x18, x18, x20
	lw x20, 4(x19)
	lw x20, 0(x20)
	fsqrt x20, x20
	fmul x18, x18, x20
	lw x20, 2(x23)
	lw x22, 5(x19)
	lw x22, 2(x22)
	fsub x20, x20, x22
	lw x22, 4(x19)
	lw x22, 2(x22)
	fsqrt x22, x22
	fmul x20, x20, x22
	fmul x22, x18, x18
	fmul x24, x20, x20
	fadd x22, x22, x24
	fabs x24, x18
	fle x24, x71, x24
	beq	x24, zero, trace_diffuse_rays_bneelse_b4466
# B4465
	fdiv x18, x20, x18
	fabs x18, x18
	fle x20, x18, zero
	xori x20, x20, 1
	fabs x24, x18
	fle x25, x72, x24
	bne	x25, zero, trace_diffuse_rays_beqelse_b4468
# B4467
	fmul x20, x18, x18
	fmul x24, x20, x78
	fadd x24, x77, x24
	fmul x24, x20, x24
	fadd x24, x76, x24
	fmul x24, x20, x24
	fadd x24, x75, x24
	fmul x24, x20, x24
	fadd x24, x74, x24
	fmul x24, x20, x24
	fadd x24, x73, x24
	fmul x20, x20, x24
	fadd x20, x9, x20
	fmul x18, x18, x20
	j trace_diffuse_rays_cont_b4474 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4468:
# B4468
	fle x18, x79, x24
	bne	x18, zero, trace_diffuse_rays_beqelse_b4470
# B4469
	fsub x18, x24, x9
	fadd x24, x24, x9
	fdiv x18, x18, x24
	fmul x24, x18, x18
	fmul x25, x24, x78
	fadd x25, x77, x25
	fmul x25, x24, x25
	fadd x25, x76, x25
	fmul x25, x24, x25
	fadd x25, x75, x25
	fmul x25, x24, x25
	fadd x25, x74, x25
	fmul x25, x24, x25
	fadd x25, x73, x25
	fmul x24, x24, x25
	fadd x24, x9, x24
	fmul x18, x18, x24
	fadd x18, x40, x18
	j trace_diffuse_rays_cont_b4471 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4470:
# B4470
	fdiv x18, x9, x24
	fmul x24, x18, x18
	fmul x25, x24, x78
	fadd x25, x77, x25
	fmul x25, x24, x25
	fadd x25, x76, x25
	fmul x25, x24, x25
	fadd x25, x75, x25
	fmul x25, x24, x25
	fadd x25, x74, x25
	fmul x25, x24, x25
	fadd x25, x73, x25
	fmul x24, x24, x25
	fadd x24, x9, x24
	fmul x18, x18, x24
	fsub x18, x39, x18
trace_diffuse_rays_cont_b4471:
# B4471
	bne	x20, zero, trace_diffuse_rays_beqelse_b4473
# B4472
	fsub x18, zero, x18
trace_diffuse_rays_beqelse_b4473:
# B4473
trace_diffuse_rays_cont_b4474:
# B4474
	fmul x18, x18, x8
	fdiv x18, x18, x7
	j trace_diffuse_rays_cont_b4475 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4466:
# B4466
	lui x18, 268032
trace_diffuse_rays_cont_b4475:
# B4475
	floor x20, x18
	fsub x18, x18, x20
	lw x20, 1(x23)
	lw x24, 5(x19)
	lw x24, 1(x24)
	fsub x20, x20, x24
	lw x24, 4(x19)
	lw x24, 1(x24)
	fsqrt x24, x24
	fmul x20, x20, x24
	fabs x24, x22
	fle x24, x71, x24
	beq	x24, zero, trace_diffuse_rays_bneelse_b4477
# B4476
	fdiv x20, x20, x22
	fabs x20, x20
	fle x22, x20, zero
	xori x22, x22, 1
	fabs x24, x20
	fle x25, x72, x24
	bne	x25, zero, trace_diffuse_rays_beqelse_b4479
# B4478
	fmul x22, x20, x20
	fmul x24, x22, x78
	fadd x24, x77, x24
	fmul x24, x22, x24
	fadd x24, x76, x24
	fmul x24, x22, x24
	fadd x24, x75, x24
	fmul x24, x22, x24
	fadd x24, x74, x24
	fmul x24, x22, x24
	fadd x24, x73, x24
	fmul x22, x22, x24
	fadd x22, x9, x22
	fmul x20, x20, x22
	j trace_diffuse_rays_cont_b4485 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4479:
# B4479
	fle x20, x79, x24
	bne	x20, zero, trace_diffuse_rays_beqelse_b4481
# B4480
	fsub x20, x24, x9
	fadd x24, x24, x9
	fdiv x20, x20, x24
	fmul x24, x20, x20
	fmul x25, x24, x78
	fadd x25, x77, x25
	fmul x25, x24, x25
	fadd x25, x76, x25
	fmul x25, x24, x25
	fadd x25, x75, x25
	fmul x25, x24, x25
	fadd x25, x74, x25
	fmul x25, x24, x25
	fadd x25, x73, x25
	fmul x24, x24, x25
	fadd x24, x9, x24
	fmul x20, x20, x24
	fadd x20, x40, x20
	j trace_diffuse_rays_cont_b4482 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4481:
# B4481
	fdiv x20, x9, x24
	fmul x24, x20, x20
	fmul x25, x24, x78
	fadd x25, x77, x25
	fmul x25, x24, x25
	fadd x25, x76, x25
	fmul x25, x24, x25
	fadd x25, x75, x25
	fmul x25, x24, x25
	fadd x25, x74, x25
	fmul x25, x24, x25
	fadd x25, x73, x25
	fmul x24, x24, x25
	fadd x24, x9, x24
	fmul x20, x20, x24
	fsub x20, x39, x20
trace_diffuse_rays_cont_b4482:
# B4482
	bne	x22, zero, trace_diffuse_rays_beqelse_b4484
# B4483
	fsub x20, zero, x20
trace_diffuse_rays_beqelse_b4484:
# B4484
trace_diffuse_rays_cont_b4485:
# B4485
	fmul x20, x20, x8
	fdiv x20, x20, x7
	j trace_diffuse_rays_cont_b4486 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4477:
# B4477
	lui x20, 268032
trace_diffuse_rays_cont_b4486:
# B4486
	floor x22, x20
	fsub x20, x20, x22
	fsub x18, x29, x18
	fmul x18, x18, x18
	fsub x18, x80, x18
	fsub x20, x29, x20
	fmul x20, x20, x20
	fsub x18, x18, x20
	fle x20, zero, x18
	beq	x20, zero, trace_diffuse_rays_bneelse_b4488
# B4487
	mv x22, x18
	j trace_diffuse_rays_cont_b4489 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4488:
# B4488
	mv x22, zero
trace_diffuse_rays_cont_b4489:
# B4489
	fmul x18, x69, x22
	fdiv x18, x18, x81
	sw x18, 2(x31)
trace_diffuse_rays_beqelse_b4464:
# B4464
trace_diffuse_rays_cont_b4490:
# B4490
	lw x18, 0(x21)
	mv x21, x18
	mv x20, zero
trace_diffuse_rays_loop_b4491:
# B4491
	add x4, x21, x20
	lw x18, 0(x4)
	lw x22, 0(x18)
	li x24, -1
	la x25, min_caml_light
	beq	x22, x24, trace_diffuse_rays_bneelse_b4492
# B4493
	li x27, 99
	bne	x22, x27, trace_diffuse_rays_beqelse_b4495
# B4494
	addi x20, x20, 1
	j trace_diffuse_rays_cont_b4635 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4495:
# B4495
	la x27, min_caml_light_dirvec
	add x4, x88, x22
	lw x29, 0(x4)
	lw x30, 0(x23)
	lw x32, 5(x29)
	lw x32, 0(x32)
	fsub x30, x30, x32
	lw x32, 1(x23)
	lw x33, 5(x29)
	lw x33, 1(x33)
	fsub x32, x32, x33
	lw x33, 2(x23)
	lw x34, 5(x29)
	lw x34, 2(x34)
	fsub x33, x33, x34
	lw x34, 1(x27)
	add x4, x34, x22
	lw x22, 0(x4)
	lw x34, 1(x29)
	bne	x34, x100, trace_diffuse_rays_beqelse_b4497
# B4496
	lw x34, 0(x27)
	lw x35, 0(x22)
	fsub x35, x35, x30
	lw x36, 1(x22)
	fmul x35, x35, x36
	lw x36, 1(x34)
	fmul x36, x35, x36
	fadd x36, x36, x32
	fabs x36, x36
	lw x37, 4(x29)
	lw x37, 1(x37)
	fle x36, x37, x36
	bne	x36, zero, trace_diffuse_rays_beqelse_b4498
# B4499
	lw x36, 2(x34)
	fmul x36, x35, x36
	fadd x36, x36, x33
	fabs x36, x36
	lw x37, 4(x29)
	lw x37, 2(x37)
	fle x36, x37, x36
	bne	x36, zero, trace_diffuse_rays_beqelse_b4500
# B4501
	lw x36, 1(x22)
	feq x36, x36, zero
	xori x36, x36, 1
	mv x37, x36
# B4502
	bne	x37, zero, trace_diffuse_rays_beqelse_b4504
	j trace_diffuse_rays_cont_b4503 # adhoc jump(3)
trace_diffuse_rays_beqelse_b4504:
# B4504
	la x22, min_caml_solver_dist
	sw x35, 0(x22)
	j trace_diffuse_rays_cont_b4538 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4500:
# B4500
trace_diffuse_rays_beqelse_b4498:
# B4498
trace_diffuse_rays_cont_b4503:
# B4503
	lw x35, 2(x22)
	fsub x35, x35, x32
	lw x36, 3(x22)
	fmul x35, x35, x36
	lw x36, 0(x34)
	fmul x36, x35, x36
	fadd x36, x36, x30
	fabs x36, x36
	lw x37, 4(x29)
	lw x37, 0(x37)
	fle x36, x37, x36
	bne	x36, zero, trace_diffuse_rays_beqelse_b4505
# B4506
	lw x36, 2(x34)
	fmul x36, x35, x36
	fadd x36, x36, x33
	fabs x36, x36
	lw x37, 4(x29)
	lw x37, 2(x37)
	fle x36, x37, x36
	bne	x36, zero, trace_diffuse_rays_beqelse_b4507
# B4508
	lw x36, 3(x22)
	feq x36, x36, zero
	xori x36, x36, 1
	mv x37, x36
# B4509
	bne	x37, zero, trace_diffuse_rays_beqelse_b4511
	j trace_diffuse_rays_cont_b4510 # adhoc jump(3)
trace_diffuse_rays_beqelse_b4511:
# B4511
	la x22, min_caml_solver_dist
	sw x35, 0(x22)
	j trace_diffuse_rays_cont_b4538 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4507:
# B4507
trace_diffuse_rays_beqelse_b4505:
# B4505
trace_diffuse_rays_cont_b4510:
# B4510
	lw x35, 4(x22)
	fsub x33, x35, x33
	lw x35, 5(x22)
	fmul x33, x33, x35
	lw x35, 0(x34)
	fmul x35, x33, x35
	fadd x30, x35, x30
	fabs x30, x30
	lw x35, 4(x29)
	lw x35, 0(x35)
	fle x30, x35, x30
	bne	x30, zero, trace_diffuse_rays_beqelse_b4512
# B4513
	lw x30, 1(x34)
	fmul x30, x33, x30
	fadd x30, x30, x32
	fabs x30, x30
	lw x29, 4(x29)
	lw x29, 1(x29)
	fle x29, x29, x30
	bne	x29, zero, trace_diffuse_rays_beqelse_b4514
# B4515
	lw x22, 5(x22)
	feq x22, x22, zero
	xori x22, x22, 1
	mv x29, x22
# B4516
	bne	x29, zero, trace_diffuse_rays_beqelse_b4518
	j trace_diffuse_rays_cont_b4517 # adhoc jump(3)
trace_diffuse_rays_beqelse_b4518:
# B4518
	la x22, min_caml_solver_dist
	sw x33, 0(x22)
	j trace_diffuse_rays_cont_b4538 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4514:
# B4514
trace_diffuse_rays_beqelse_b4512:
# B4512
trace_diffuse_rays_cont_b4517:
# B4517
	j trace_diffuse_rays_cont_b4537 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4497:
# B4497
	bne	x34, x11, trace_diffuse_rays_beqelse_b4520
# B4519
	lw x29, 0(x22)
	fle x29, zero, x29
	bne	x29, zero, trace_diffuse_rays_beqelse_b4521
# B4522
	la x29, min_caml_solver_dist
	lw x34, 1(x22)
	fmul x30, x34, x30
	lw x34, 2(x22)
	fmul x32, x34, x32
	fadd x30, x30, x32
	lw x22, 3(x22)
	fmul x22, x22, x33
	fadd x22, x30, x22
	sw x22, 0(x29)
	j trace_diffuse_rays_cont_b4538 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4521:
# B4521
	j trace_diffuse_rays_cont_b4537 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4520:
# B4520
	lw x34, 0(x22)
	feq x35, x34, zero
	bne	x35, zero, trace_diffuse_rays_beqelse_b4524
# B4523
	lw x35, 1(x22)
	fmul x35, x35, x30
	lw x36, 2(x22)
	fmul x36, x36, x32
	fadd x35, x35, x36
	li x36, 3
	lw x37, 3(x22)
	fmul x37, x37, x33
	fadd x35, x35, x37
	fmul x37, x30, x30
	lw x38, 4(x29)
	lw x38, 0(x38)
	fmul x37, x37, x38
	fmul x38, x32, x32
	lw x39, 4(x29)
	lw x39, 1(x39)
	fmul x38, x38, x39
	fadd x37, x37, x38
	fmul x38, x33, x33
	lw x39, 4(x29)
	lw x39, 2(x39)
	fmul x38, x38, x39
	fadd x37, x37, x38
	lw x38, 3(x29)
	bne	x38, zero, trace_diffuse_rays_beqelse_b4526
# B4525
	mv x30, x37
	j trace_diffuse_rays_cont_b4527 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4526:
# B4526
	fmul x38, x32, x33
	lw x39, 9(x29)
	lw x39, 0(x39)
	fmul x38, x38, x39
	fadd x37, x37, x38
	fmul x33, x33, x30
	lw x38, 9(x29)
	lw x38, 1(x38)
	fmul x33, x33, x38
	fadd x33, x37, x33
	fmul x30, x30, x32
	lw x32, 9(x29)
	lw x32, 2(x32)
	fmul x30, x30, x32
	fadd x30, x33, x30
trace_diffuse_rays_cont_b4527:
# B4527
	lw x32, 1(x29)
	bne	x32, x36, trace_diffuse_rays_beqelse_b4529
# B4528
	lui x32, 260096
	fsub x30, x30, x32
trace_diffuse_rays_beqelse_b4529:
# B4529
trace_diffuse_rays_cont_b4530:
# B4530
	fmul x32, x35, x35
	fmul x30, x34, x30
	fsub x30, x32, x30
	fle x32, x30, zero
	bne	x32, zero, trace_diffuse_rays_beqelse_b4531
# B4532
	lw x29, 6(x29)
	bne	x29, zero, trace_diffuse_rays_beqelse_b4534
# B4533
	la x29, min_caml_solver_dist
	fsqrt x30, x30
	fsub x30, x35, x30
	lw x22, 4(x22)
	fmul x22, x30, x22
	sw x22, 0(x29)
	j trace_diffuse_rays_cont_b4535 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4534:
# B4534
	la x29, min_caml_solver_dist
	fsqrt x30, x30
	fadd x30, x35, x30
	lw x22, 4(x22)
	fmul x22, x30, x22
	sw x22, 0(x29)
trace_diffuse_rays_cont_b4535:
# B4535
trace_diffuse_rays_cont_b4538:
# B4538
	la x22, min_caml_solver_dist
	lw x29, 0(x22)
	fle x29, x26, x29
	beq	x29, zero, trace_diffuse_rays_bneelse_b4540
# B4539
	addi x20, x20, 1
	j trace_diffuse_rays_cont_b4634 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4540:
# B4540
	mv x32, x18
	mv x30, x100
trace_diffuse_rays_loop_b4541:
# B4541
	add x4, x32, x30
	lw x29, 0(x4)
	beq	x29, x24, trace_diffuse_rays_bneelse_b4542
# B4543
	la x33, min_caml_and_net
	add x4, x33, x29
	lw x29, 0(x4)
	mv x34, x29
	mv x33, zero
trace_diffuse_rays_loop_b4544:
# B4544
	add x4, x34, x33
	lw x29, 0(x4)
	beq	x29, x24, trace_diffuse_rays_bneelse_b4545
# B4546
	add x4, x34, x33
	lw x29, 0(x4)
	add x4, x88, x29
	lw x35, 0(x4)
	lw x36, 0(x23)
	lw x37, 5(x35)
	lw x37, 0(x37)
	fsub x36, x36, x37
	lw x37, 1(x23)
	lw x38, 5(x35)
	lw x38, 1(x38)
	fsub x37, x37, x38
	lw x38, 2(x23)
	lw x39, 5(x35)
	lw x39, 2(x39)
	fsub x38, x38, x39
	lw x39, 1(x27)
	add x4, x39, x29
	lw x39, 0(x4)
	lw x40, 1(x35)
	bne	x40, x100, trace_diffuse_rays_beqelse_b4548
# B4547
	lw x40, 0(x27)
	lw x5, 0(x39)
	fsub x5, x5, x36
	lw x6, 1(x39)
	fmul x5, x5, x6
	lw x6, 1(x40)
	fmul x6, x5, x6
	fadd x6, x6, x37
	fabs x6, x6
	lw x65, 4(x35)
	lw x65, 1(x65)
	fle x6, x65, x6
	bne	x6, zero, trace_diffuse_rays_beqelse_b4549
# B4550
	lw x6, 2(x40)
	fmul x6, x5, x6
	fadd x6, x6, x38
	fabs x6, x6
	lw x65, 4(x35)
	lw x65, 2(x65)
	fle x6, x65, x6
	bne	x6, zero, trace_diffuse_rays_beqelse_b4551
# B4552
	lw x6, 1(x39)
	feq x6, x6, zero
	xori x6, x6, 1
	mv x65, x6
# B4553
	bne	x65, zero, trace_diffuse_rays_beqelse_b4555
	j trace_diffuse_rays_cont_b4554 # adhoc jump(3)
trace_diffuse_rays_beqelse_b4555:
# B4555
	sw x5, 0(x22)
	lw x36, 0(x22)
	j trace_diffuse_rays_cont_b4589 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4551:
# B4551
trace_diffuse_rays_beqelse_b4549:
# B4549
trace_diffuse_rays_cont_b4554:
# B4554
	lw x5, 2(x39)
	fsub x5, x5, x37
	lw x6, 3(x39)
	fmul x5, x5, x6
	lw x6, 0(x40)
	fmul x6, x5, x6
	fadd x6, x6, x36
	fabs x6, x6
	lw x65, 4(x35)
	lw x65, 0(x65)
	fle x6, x65, x6
	bne	x6, zero, trace_diffuse_rays_beqelse_b4556
# B4557
	lw x6, 2(x40)
	fmul x6, x5, x6
	fadd x6, x6, x38
	fabs x6, x6
	lw x65, 4(x35)
	lw x65, 2(x65)
	fle x6, x65, x6
	bne	x6, zero, trace_diffuse_rays_beqelse_b4558
# B4559
	lw x6, 3(x39)
	feq x6, x6, zero
	xori x6, x6, 1
	mv x65, x6
# B4560
	bne	x65, zero, trace_diffuse_rays_beqelse_b4562
	j trace_diffuse_rays_cont_b4561 # adhoc jump(3)
trace_diffuse_rays_beqelse_b4562:
# B4562
	sw x5, 0(x22)
	lw x36, 0(x22)
	j trace_diffuse_rays_cont_b4589 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4558:
# B4558
trace_diffuse_rays_beqelse_b4556:
# B4556
trace_diffuse_rays_cont_b4561:
# B4561
	lw x5, 4(x39)
	fsub x38, x5, x38
	lw x5, 5(x39)
	fmul x38, x38, x5
	lw x5, 0(x40)
	fmul x5, x38, x5
	fadd x36, x5, x36
	fabs x36, x36
	lw x5, 4(x35)
	lw x5, 0(x5)
	fle x36, x5, x36
	bne	x36, zero, trace_diffuse_rays_beqelse_b4563
# B4564
	lw x36, 1(x40)
	fmul x36, x38, x36
	fadd x36, x36, x37
	fabs x36, x36
	lw x35, 4(x35)
	lw x35, 1(x35)
	fle x35, x35, x36
	bne	x35, zero, trace_diffuse_rays_beqelse_b4565
# B4566
	lw x35, 5(x39)
	feq x35, x35, zero
	xori x35, x35, 1
	mv x36, x35
# B4567
	bne	x36, zero, trace_diffuse_rays_beqelse_b4569
	j trace_diffuse_rays_cont_b4568 # adhoc jump(3)
trace_diffuse_rays_beqelse_b4569:
# B4569
	sw x38, 0(x22)
	lw x36, 0(x22)
	j trace_diffuse_rays_cont_b4589 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4565:
# B4565
trace_diffuse_rays_beqelse_b4563:
# B4563
trace_diffuse_rays_cont_b4568:
# B4568
	lw x36, 0(x22)
	j trace_diffuse_rays_cont_b4588 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4548:
# B4548
	bne	x40, x11, trace_diffuse_rays_beqelse_b4571
# B4570
	lw x35, 0(x39)
	fle x35, zero, x35
	beq	x35, zero, trace_diffuse_rays_bneelse_b4573
# B4572
	lw x36, 0(x22)
	j trace_diffuse_rays_cont_b4588 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4573:
# B4573
	lw x35, 1(x39)
	fmul x35, x35, x36
	lw x36, 2(x39)
	fmul x36, x36, x37
	fadd x35, x35, x36
	lw x36, 3(x39)
	fmul x36, x36, x38
	fadd x35, x35, x36
	sw x35, 0(x22)
	lw x36, 0(x22)
	j trace_diffuse_rays_cont_b4589 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4571:
# B4571
	lw x40, 0(x39)
	feq x5, x40, zero
	bne	x5, zero, trace_diffuse_rays_beqelse_b4575
# B4574
	lw x5, 1(x39)
	fmul x5, x5, x36
	lw x6, 2(x39)
	fmul x6, x6, x37
	fadd x5, x5, x6
	li x6, 3
	lw x65, 3(x39)
	fmul x65, x65, x38
	fadd x5, x5, x65
	fmul x65, x36, x36
	lw x66, 4(x35)
	lw x66, 0(x66)
	fmul x65, x65, x66
	fmul x66, x37, x37
	lw x67, 4(x35)
	lw x67, 1(x67)
	fmul x66, x66, x67
	fadd x65, x65, x66
	fmul x66, x38, x38
	lw x67, 4(x35)
	lw x67, 2(x67)
	fmul x66, x66, x67
	fadd x65, x65, x66
	lw x66, 3(x35)
	bne	x66, zero, trace_diffuse_rays_beqelse_b4577
# B4576
	mv x36, x65
	j trace_diffuse_rays_cont_b4578 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4577:
# B4577
	fmul x66, x37, x38
	lw x67, 9(x35)
	lw x67, 0(x67)
	fmul x66, x66, x67
	fadd x65, x65, x66
	fmul x38, x38, x36
	lw x66, 9(x35)
	lw x66, 1(x66)
	fmul x38, x38, x66
	fadd x38, x65, x38
	fmul x36, x36, x37
	lw x37, 9(x35)
	lw x37, 2(x37)
	fmul x36, x36, x37
	fadd x36, x38, x36
trace_diffuse_rays_cont_b4578:
# B4578
	lw x37, 1(x35)
	bne	x37, x6, trace_diffuse_rays_beqelse_b4580
# B4579
	lui x37, 260096
	fsub x36, x36, x37
trace_diffuse_rays_beqelse_b4580:
# B4580
trace_diffuse_rays_cont_b4581:
# B4581
	fmul x37, x5, x5
	fmul x36, x40, x36
	fsub x36, x37, x36
	fle x37, x36, zero
	beq	x37, zero, trace_diffuse_rays_bneelse_b4583
# B4582
	lw x36, 0(x22)
	j trace_diffuse_rays_cont_b4588 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4583:
# B4583
	lw x35, 6(x35)
	bne	x35, zero, trace_diffuse_rays_beqelse_b4585
# B4584
	fsqrt x35, x36
	fsub x35, x5, x35
	lw x36, 4(x39)
	fmul x35, x35, x36
	sw x35, 0(x22)
	j trace_diffuse_rays_cont_b4586 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4585:
# B4585
	fsqrt x35, x36
	fadd x35, x5, x35
	lw x36, 4(x39)
	fmul x35, x35, x36
	sw x35, 0(x22)
trace_diffuse_rays_cont_b4586:
# B4586
	lw x36, 0(x22)
trace_diffuse_rays_cont_b4589:
# B4589
	lui x35, 779469
	addi x35, x35, -819
	fle x35, x35, x36
	xori x35, x35, 1
# B4590
	addi x33, x33, 1
	bne	x35, zero, trace_diffuse_rays_beqelse_b4592
	j trace_diffuse_rays_cont_b4591 # adhoc jump(3)
trace_diffuse_rays_beqelse_b4592:
# B4592
	lui x29, 246333
	addi x29, x29, 1802
	fadd x29, x36, x29
	la x35, min_caml_light
	lw x36, 0(x35)
	fmul x36, x36, x29
	lw x37, 0(x23)
	fadd x36, x36, x37
	lw x37, 1(x35)
	fmul x37, x37, x29
	lw x38, 1(x23)
	fadd x37, x37, x38
	lw x35, 2(x35)
	fmul x29, x35, x29
	lw x35, 2(x23)
	fadd x29, x29, x35
	mv x40, x37
	mv x35, zero
	mv x38, x34
	mv x5, x29
	mv x39, x36
	j	trace_diffuse_rays_loop_b4595
trace_diffuse_rays_bneelse_b4622:	#moved
# B4622
	addi x35, x35, 1
trace_diffuse_rays_loop_b4595:
# B4595
	add x4, x38, x35
	lw x29, 0(x4)
	beq	x29, x24, trace_diffuse_rays_bneelse_b4596
# B4597
	add x4, x88, x29
	lw x29, 0(x4)
	lw x36, 5(x29)
	lw x36, 0(x36)
	fsub x36, x39, x36
	lw x37, 5(x29)
	lw x37, 1(x37)
	fsub x37, x40, x37
	lw x6, 5(x29)
	lw x6, 2(x6)
	fsub x6, x5, x6
	lw x65, 1(x29)
	bne	x65, x100, trace_diffuse_rays_beqelse_b4599
# B4598
	fabs x36, x36
	lw x65, 4(x29)
	lw x65, 0(x65)
	fle x36, x65, x36
	bne	x36, zero, trace_diffuse_rays_beqelse_b4600
# B4601
	fabs x36, x37
	lw x37, 4(x29)
	lw x37, 1(x37)
	fle x36, x37, x36
	bne	x36, zero, trace_diffuse_rays_beqelse_b4602
# B4603
	fabs x36, x6
	lw x37, 4(x29)
	lw x37, 2(x37)
	fle x36, x37, x36
	xori x36, x36, 1
	mv x37, x36
# B4604
	bne	x37, zero, trace_diffuse_rays_beqelse_b4606
	j trace_diffuse_rays_cont_b4605 # adhoc jump(3)
trace_diffuse_rays_beqelse_b4606:
# B4606
	lw x29, 6(x29)
	j trace_diffuse_rays_cont_b4621 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4602:
# B4602
trace_diffuse_rays_beqelse_b4600:
# B4600
trace_diffuse_rays_cont_b4605:
# B4605
	lw x29, 6(x29)
	xori x29, x29, 1
	j trace_diffuse_rays_cont_b4621 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4599:
# B4599
	bne	x65, x11, trace_diffuse_rays_beqelse_b4608
# B4607
	lw x65, 4(x29)
	lw x66, 0(x65)
	fmul x36, x66, x36
	lw x66, 1(x65)
	fmul x37, x66, x37
	fadd x36, x36, x37
	lw x37, 2(x65)
	fmul x37, x37, x6
	fadd x36, x36, x37
	lw x29, 6(x29)
	fle x36, zero, x36
	xori x36, x36, 1
	bne	x29, zero, trace_diffuse_rays_beqelse_b4610
# B4609
	mv x29, x36
	j trace_diffuse_rays_cont_b4611 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4610:
# B4610
	xori x29, x36, 1
trace_diffuse_rays_cont_b4611:
# B4611
	xori x29, x29, 1
	j trace_diffuse_rays_cont_b4621 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4608:
# B4608
	fmul x65, x36, x36
	lw x66, 4(x29)
	lw x66, 0(x66)
	fmul x65, x65, x66
	fmul x66, x37, x37
	lw x67, 4(x29)
	lw x67, 1(x67)
	fmul x66, x66, x67
	fadd x65, x65, x66
	fmul x66, x6, x6
	lw x67, 4(x29)
	lw x67, 2(x67)
	fmul x66, x66, x67
	fadd x65, x65, x66
	lw x66, 3(x29)
	bne	x66, zero, trace_diffuse_rays_beqelse_b4613
# B4612
	mv x36, x65
	j trace_diffuse_rays_cont_b4614 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4613:
# B4613
	fmul x66, x37, x6
	lw x67, 9(x29)
	lw x67, 0(x67)
	fmul x66, x66, x67
	fadd x65, x65, x66
	fmul x6, x6, x36
	lw x66, 9(x29)
	lw x66, 1(x66)
	fmul x6, x6, x66
	fadd x6, x65, x6
	fmul x36, x36, x37
	lw x37, 9(x29)
	lw x37, 2(x37)
	fmul x36, x36, x37
	fadd x36, x6, x36
trace_diffuse_rays_cont_b4614:
# B4614
	lw x37, 1(x29)
	li x6, 3
	bne	x37, x6, trace_diffuse_rays_beqelse_b4616
# B4615
	lui x37, 260096
	fsub x36, x36, x37
trace_diffuse_rays_beqelse_b4616:
# B4616
trace_diffuse_rays_cont_b4617:
# B4617
	lw x29, 6(x29)
	fle x36, zero, x36
	xori x36, x36, 1
	bne	x29, zero, trace_diffuse_rays_beqelse_b4619
# B4618
	mv x29, x36
	j trace_diffuse_rays_cont_b4620 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4619:
# B4619
	xori x29, x36, 1
trace_diffuse_rays_cont_b4620:
# B4620
	xori x29, x29, 1
trace_diffuse_rays_cont_b4621:
# B4621
	beq	x29, zero, trace_diffuse_rays_bneelse_b4622
# B4623
# B4625
	j	trace_diffuse_rays_loop_b4544
trace_diffuse_rays_bneelse_b4596:
# B4596
# B4626
	mv x29, x100
# B4627
	bne	x29, zero, trace_diffuse_rays_beqelse_b4629
	j trace_diffuse_rays_cont_b4628 # adhoc jump(3)
trace_diffuse_rays_beqelse_b4629:
# B4629
	mv x33, x100
# B4630
	bne	x33, zero, trace_diffuse_rays_beqelse_b4632
	j trace_diffuse_rays_cont_b4631 # adhoc jump(3)
trace_diffuse_rays_beqelse_b4632:
# B4632
	mv x22, x100
# B4633
	addi x20, x20, 1
	bne	x22, zero, trace_diffuse_rays_beqelse_b4635
	j trace_diffuse_rays_cont_b4634 # adhoc jump(3)
trace_diffuse_rays_beqelse_b4635:
trace_diffuse_rays_cont_b4635:
# B4635
	mv x27, x100
	mv x29, x18
trace_diffuse_rays_loop_b4636:
# B4636
	add x4, x29, x27
	lw x18, 0(x4)
	beq	x18, x24, trace_diffuse_rays_bneelse_b4637
# B4638
	la x22, min_caml_and_net
	add x4, x22, x18
	lw x18, 0(x4)
	mv x30, x18
	mv x22, zero
trace_diffuse_rays_loop_b4639:
# B4639
	add x4, x30, x22
	lw x18, 0(x4)
	beq	x18, x24, trace_diffuse_rays_bneelse_b4640
# B4641
	add x4, x30, x22
	lw x18, 0(x4)
	la x32, min_caml_light_dirvec
	add x4, x88, x18
	lw x33, 0(x4)
	lw x34, 0(x23)
	lw x35, 5(x33)
	lw x35, 0(x35)
	fsub x34, x34, x35
	lw x35, 1(x23)
	lw x36, 5(x33)
	lw x36, 1(x36)
	fsub x35, x35, x36
	lw x36, 2(x23)
	lw x37, 5(x33)
	lw x37, 2(x37)
	fsub x36, x36, x37
	lw x37, 1(x32)
	add x4, x37, x18
	lw x37, 0(x4)
	lw x38, 1(x33)
	bne	x38, x100, trace_diffuse_rays_beqelse_b4643
# B4642
	lw x32, 0(x32)
	lw x38, 0(x37)
	fsub x38, x38, x34
	lw x39, 1(x37)
	fmul x38, x38, x39
	lw x39, 1(x32)
	fmul x39, x38, x39
	fadd x39, x39, x35
	fabs x39, x39
	lw x40, 4(x33)
	lw x40, 1(x40)
	fle x39, x40, x39
	bne	x39, zero, trace_diffuse_rays_beqelse_b4644
# B4645
	lw x39, 2(x32)
	fmul x39, x38, x39
	fadd x39, x39, x36
	fabs x39, x39
	lw x40, 4(x33)
	lw x40, 2(x40)
	fle x39, x40, x39
	bne	x39, zero, trace_diffuse_rays_beqelse_b4646
# B4647
	lw x39, 1(x37)
	feq x39, x39, zero
	xori x39, x39, 1
	mv x40, x39
# B4648
	bne	x40, zero, trace_diffuse_rays_beqelse_b4650
	j trace_diffuse_rays_cont_b4649 # adhoc jump(3)
trace_diffuse_rays_beqelse_b4650:
# B4650
	la x32, min_caml_solver_dist
	sw x38, 0(x32)
	la x33, min_caml_solver_dist
	lw x33, 0(x33)
	j trace_diffuse_rays_cont_b4684 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4646:
# B4646
trace_diffuse_rays_beqelse_b4644:
# B4644
trace_diffuse_rays_cont_b4649:
# B4649
	lw x38, 2(x37)
	fsub x38, x38, x35
	lw x39, 3(x37)
	fmul x38, x38, x39
	lw x39, 0(x32)
	fmul x39, x38, x39
	fadd x39, x39, x34
	fabs x39, x39
	lw x40, 4(x33)
	lw x40, 0(x40)
	fle x39, x40, x39
	bne	x39, zero, trace_diffuse_rays_beqelse_b4651
# B4652
	lw x39, 2(x32)
	fmul x39, x38, x39
	fadd x39, x39, x36
	fabs x39, x39
	lw x40, 4(x33)
	lw x40, 2(x40)
	fle x39, x40, x39
	bne	x39, zero, trace_diffuse_rays_beqelse_b4653
# B4654
	lw x39, 3(x37)
	feq x39, x39, zero
	xori x39, x39, 1
	mv x40, x39
# B4655
	bne	x40, zero, trace_diffuse_rays_beqelse_b4657
	j trace_diffuse_rays_cont_b4656 # adhoc jump(3)
trace_diffuse_rays_beqelse_b4657:
# B4657
	la x32, min_caml_solver_dist
	sw x38, 0(x32)
	la x33, min_caml_solver_dist
	lw x33, 0(x33)
	j trace_diffuse_rays_cont_b4684 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4653:
# B4653
trace_diffuse_rays_beqelse_b4651:
# B4651
trace_diffuse_rays_cont_b4656:
# B4656
	lw x38, 4(x37)
	fsub x36, x38, x36
	lw x38, 5(x37)
	fmul x36, x36, x38
	lw x38, 0(x32)
	fmul x38, x36, x38
	fadd x34, x38, x34
	fabs x34, x34
	lw x38, 4(x33)
	lw x38, 0(x38)
	fle x34, x38, x34
	bne	x34, zero, trace_diffuse_rays_beqelse_b4658
# B4659
	lw x32, 1(x32)
	fmul x32, x36, x32
	fadd x32, x32, x35
	fabs x32, x32
	lw x33, 4(x33)
	lw x33, 1(x33)
	fle x32, x33, x32
	bne	x32, zero, trace_diffuse_rays_beqelse_b4660
# B4661
	lw x32, 5(x37)
	feq x32, x32, zero
	xori x32, x32, 1
	mv x33, x32
# B4662
	bne	x33, zero, trace_diffuse_rays_beqelse_b4664
	j trace_diffuse_rays_cont_b4663 # adhoc jump(3)
trace_diffuse_rays_beqelse_b4664:
# B4664
	la x32, min_caml_solver_dist
	sw x36, 0(x32)
	la x33, min_caml_solver_dist
	lw x33, 0(x33)
	j trace_diffuse_rays_cont_b4684 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4660:
# B4660
trace_diffuse_rays_beqelse_b4658:
# B4658
trace_diffuse_rays_cont_b4663:
# B4663
	la x33, min_caml_solver_dist
	lw x33, 0(x33)
	j trace_diffuse_rays_cont_b4683 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4643:
# B4643
	bne	x38, x11, trace_diffuse_rays_beqelse_b4666
# B4665
	lw x32, 0(x37)
	fle x32, zero, x32
	beq	x32, zero, trace_diffuse_rays_bneelse_b4668
# B4667
	la x33, min_caml_solver_dist
	lw x33, 0(x33)
	j trace_diffuse_rays_cont_b4683 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4668:
# B4668
	la x32, min_caml_solver_dist
	lw x33, 1(x37)
	fmul x33, x33, x34
	lw x34, 2(x37)
	fmul x34, x34, x35
	fadd x33, x33, x34
	lw x34, 3(x37)
	fmul x34, x34, x36
	fadd x33, x33, x34
	sw x33, 0(x32)
	la x33, min_caml_solver_dist
	lw x33, 0(x33)
	j trace_diffuse_rays_cont_b4684 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4666:
# B4666
	lw x32, 0(x37)
	feq x38, x32, zero
	bne	x38, zero, trace_diffuse_rays_beqelse_b4670
# B4669
	lw x38, 1(x37)
	fmul x38, x38, x34
	lw x39, 2(x37)
	fmul x39, x39, x35
	fadd x38, x38, x39
	li x39, 3
	lw x40, 3(x37)
	fmul x40, x40, x36
	fadd x38, x38, x40
	fmul x40, x34, x34
	lw x5, 4(x33)
	lw x5, 0(x5)
	fmul x40, x40, x5
	fmul x5, x35, x35
	lw x6, 4(x33)
	lw x6, 1(x6)
	fmul x5, x5, x6
	fadd x40, x40, x5
	fmul x5, x36, x36
	lw x6, 4(x33)
	lw x6, 2(x6)
	fmul x5, x5, x6
	fadd x40, x40, x5
	lw x5, 3(x33)
	bne	x5, zero, trace_diffuse_rays_beqelse_b4672
# B4671
	mv x34, x40
	j trace_diffuse_rays_cont_b4673 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4672:
# B4672
	fmul x5, x35, x36
	lw x6, 9(x33)
	lw x6, 0(x6)
	fmul x5, x5, x6
	fadd x40, x40, x5
	fmul x36, x36, x34
	lw x5, 9(x33)
	lw x5, 1(x5)
	fmul x36, x36, x5
	fadd x36, x40, x36
	fmul x34, x34, x35
	lw x35, 9(x33)
	lw x35, 2(x35)
	fmul x34, x34, x35
	fadd x34, x36, x34
trace_diffuse_rays_cont_b4673:
# B4673
	lw x35, 1(x33)
	bne	x35, x39, trace_diffuse_rays_beqelse_b4675
# B4674
	lui x35, 260096
	fsub x34, x34, x35
trace_diffuse_rays_beqelse_b4675:
# B4675
trace_diffuse_rays_cont_b4676:
# B4676
	fmul x35, x38, x38
	fmul x32, x32, x34
	fsub x32, x35, x32
	fle x34, x32, zero
	beq	x34, zero, trace_diffuse_rays_bneelse_b4678
# B4677
	la x33, min_caml_solver_dist
	lw x33, 0(x33)
	j trace_diffuse_rays_cont_b4683 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4678:
# B4678
	lw x33, 6(x33)
	bne	x33, zero, trace_diffuse_rays_beqelse_b4680
# B4679
	la x33, min_caml_solver_dist
	fsqrt x32, x32
	fsub x32, x38, x32
	lw x34, 4(x37)
	fmul x32, x32, x34
	sw x32, 0(x33)
	j trace_diffuse_rays_cont_b4681 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4680:
# B4680
	la x33, min_caml_solver_dist
	fsqrt x32, x32
	fadd x32, x38, x32
	lw x34, 4(x37)
	fmul x32, x32, x34
	sw x32, 0(x33)
trace_diffuse_rays_cont_b4681:
# B4681
	la x33, min_caml_solver_dist
	lw x33, 0(x33)
trace_diffuse_rays_cont_b4684:
# B4684
	lui x32, 779469
	addi x32, x32, -819
	fle x32, x32, x33
	xori x32, x32, 1
# B4685
	addi x22, x22, 1
	bne	x32, zero, trace_diffuse_rays_beqelse_b4687
	j trace_diffuse_rays_cont_b4686 # adhoc jump(3)
trace_diffuse_rays_beqelse_b4687:
# B4687
	lui x18, 246333
	addi x18, x18, 1802
	fadd x18, x33, x18
	lw x32, 0(x25)
	fmul x32, x32, x18
	lw x33, 0(x23)
	fadd x32, x32, x33
	lw x33, 1(x25)
	fmul x33, x33, x18
	lw x34, 1(x23)
	fadd x33, x33, x34
	lw x34, 2(x25)
	fmul x18, x34, x18
	lw x34, 2(x23)
	fadd x18, x18, x34
	mv x37, x33
	mv x35, x30
	mv x38, x18
	mv x34, zero
	mv x36, x32
	j	trace_diffuse_rays_loop_b4690
trace_diffuse_rays_bneelse_b4717:	#moved
# B4717
	addi x34, x34, 1
trace_diffuse_rays_loop_b4690:
# B4690
	add x4, x35, x34
	lw x18, 0(x4)
	beq	x18, x24, trace_diffuse_rays_bneelse_b4691
# B4692
	add x4, x88, x18
	lw x18, 0(x4)
	lw x32, 5(x18)
	lw x32, 0(x32)
	fsub x32, x36, x32
	lw x33, 5(x18)
	lw x33, 1(x33)
	fsub x33, x37, x33
	lw x39, 5(x18)
	lw x39, 2(x39)
	fsub x39, x38, x39
	lw x40, 1(x18)
	bne	x40, x100, trace_diffuse_rays_beqelse_b4694
# B4693
	fabs x32, x32
	lw x40, 4(x18)
	lw x40, 0(x40)
	fle x32, x40, x32
	bne	x32, zero, trace_diffuse_rays_beqelse_b4695
# B4696
	fabs x32, x33
	lw x33, 4(x18)
	lw x33, 1(x33)
	fle x32, x33, x32
	bne	x32, zero, trace_diffuse_rays_beqelse_b4697
# B4698
	fabs x32, x39
	lw x33, 4(x18)
	lw x33, 2(x33)
	fle x32, x33, x32
	xori x32, x32, 1
	mv x33, x32
# B4699
	bne	x33, zero, trace_diffuse_rays_beqelse_b4701
	j trace_diffuse_rays_cont_b4700 # adhoc jump(3)
trace_diffuse_rays_beqelse_b4701:
# B4701
	lw x18, 6(x18)
	j trace_diffuse_rays_cont_b4716 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4697:
# B4697
trace_diffuse_rays_beqelse_b4695:
# B4695
trace_diffuse_rays_cont_b4700:
# B4700
	lw x18, 6(x18)
	xori x18, x18, 1
	j trace_diffuse_rays_cont_b4716 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4694:
# B4694
	bne	x40, x11, trace_diffuse_rays_beqelse_b4703
# B4702
	lw x40, 4(x18)
	lw x5, 0(x40)
	fmul x32, x5, x32
	lw x5, 1(x40)
	fmul x33, x5, x33
	fadd x32, x32, x33
	lw x33, 2(x40)
	fmul x33, x33, x39
	fadd x32, x32, x33
	lw x18, 6(x18)
	fle x32, zero, x32
	xori x32, x32, 1
	bne	x18, zero, trace_diffuse_rays_beqelse_b4705
# B4704
	mv x18, x32
	j trace_diffuse_rays_cont_b4706 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4705:
# B4705
	xori x18, x32, 1
trace_diffuse_rays_cont_b4706:
# B4706
	xori x18, x18, 1
	j trace_diffuse_rays_cont_b4716 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4703:
# B4703
	fmul x40, x32, x32
	lw x5, 4(x18)
	lw x5, 0(x5)
	fmul x40, x40, x5
	fmul x5, x33, x33
	lw x6, 4(x18)
	lw x6, 1(x6)
	fmul x5, x5, x6
	fadd x40, x40, x5
	fmul x5, x39, x39
	lw x6, 4(x18)
	lw x6, 2(x6)
	fmul x5, x5, x6
	fadd x40, x40, x5
	lw x5, 3(x18)
	bne	x5, zero, trace_diffuse_rays_beqelse_b4708
# B4707
	mv x32, x40
	j trace_diffuse_rays_cont_b4709 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4708:
# B4708
	fmul x5, x33, x39
	lw x6, 9(x18)
	lw x6, 0(x6)
	fmul x5, x5, x6
	fadd x40, x40, x5
	fmul x39, x39, x32
	lw x5, 9(x18)
	lw x5, 1(x5)
	fmul x39, x39, x5
	fadd x39, x40, x39
	fmul x32, x32, x33
	lw x33, 9(x18)
	lw x33, 2(x33)
	fmul x32, x32, x33
	fadd x32, x39, x32
trace_diffuse_rays_cont_b4709:
# B4709
	lw x33, 1(x18)
	li x39, 3
	bne	x33, x39, trace_diffuse_rays_beqelse_b4711
# B4710
	lui x33, 260096
	fsub x32, x32, x33
trace_diffuse_rays_beqelse_b4711:
# B4711
trace_diffuse_rays_cont_b4712:
# B4712
	lw x18, 6(x18)
	fle x32, zero, x32
	xori x32, x32, 1
	bne	x18, zero, trace_diffuse_rays_beqelse_b4714
# B4713
	mv x18, x32
	j trace_diffuse_rays_cont_b4715 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4714:
# B4714
	xori x18, x32, 1
trace_diffuse_rays_cont_b4715:
# B4715
	xori x18, x18, 1
trace_diffuse_rays_cont_b4716:
# B4716
	beq	x18, zero, trace_diffuse_rays_bneelse_b4717
# B4718
# B4720
	j	trace_diffuse_rays_loop_b4639
trace_diffuse_rays_bneelse_b4691:
# B4691
# B4721
	mv x18, x100
# B4722
	bne	x18, zero, trace_diffuse_rays_beqelse_b4724
	j trace_diffuse_rays_cont_b4723 # adhoc jump(3)
trace_diffuse_rays_beqelse_b4724:
# B4724
	mv x22, x100
# B4725
	bne	x22, zero, trace_diffuse_rays_beqelse_b4727
	j trace_diffuse_rays_cont_b4726 # adhoc jump(3)
trace_diffuse_rays_beqelse_b4727:
# B4727
	mv x18, x100
# B4728
	bne	x18, zero, trace_diffuse_rays_beqelse_b4730
	j trace_diffuse_rays_cont_b4729 # adhoc jump(3)
trace_diffuse_rays_beqelse_b4730:
# B4730
	j trace_diffuse_rays_cont_b4734 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4670:
# B4670
	la x33, min_caml_solver_dist
	lw x33, 0(x33)
trace_diffuse_rays_cont_b4683:
# B4683
	addi x22, x22, 1
trace_diffuse_rays_cont_b4686:
# B4686
	add x4, x88, x18
	lw x18, 0(x4)
	lw x18, 6(x18)
	beq	x18, zero, trace_diffuse_rays_bneelse_b4688
# B4689
	j	trace_diffuse_rays_loop_b4639
trace_diffuse_rays_bneelse_b4688:
# B4688
trace_diffuse_rays_bneelse_b4640:
# B4640
trace_diffuse_rays_cont_b4723:
# B4723
	addi x27, x27, 1
	j	trace_diffuse_rays_loop_b4636
trace_diffuse_rays_bneelse_b4637:
# B4637
trace_diffuse_rays_cont_b4726:
# B4726
	j	trace_diffuse_rays_loop_b4491
trace_diffuse_rays_beqelse_b4575:
# B4575
	lw x36, 0(x22)
trace_diffuse_rays_cont_b4588:
# B4588
	addi x33, x33, 1
trace_diffuse_rays_cont_b4591:
# B4591
	add x4, x88, x29
	lw x29, 0(x4)
	lw x29, 6(x29)
	beq	x29, zero, trace_diffuse_rays_bneelse_b4593
# B4594
	j	trace_diffuse_rays_loop_b4544
trace_diffuse_rays_bneelse_b4593:
# B4593
trace_diffuse_rays_bneelse_b4545:
# B4545
trace_diffuse_rays_cont_b4628:
# B4628
	addi x30, x30, 1
	j	trace_diffuse_rays_loop_b4541
trace_diffuse_rays_bneelse_b4542:
# B4542
trace_diffuse_rays_cont_b4631:
# B4631
	addi x20, x20, 1
	j trace_diffuse_rays_cont_b4634 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4531:
# B4531
trace_diffuse_rays_beqelse_b4524:
# B4524
trace_diffuse_rays_cont_b4537:
# B4537
	addi x20, x20, 1
trace_diffuse_rays_cont_b4634:
# B4634
	j	trace_diffuse_rays_loop_b4491
trace_diffuse_rays_bneelse_b4492:
# B4492
trace_diffuse_rays_cont_b4729:
# B4729
	lw x18, 0(x28)
	lw x20, 0(x25)
	fmul x18, x18, x20
	lw x20, 1(x28)
	lw x21, 1(x25)
	fmul x20, x20, x21
	fadd x18, x18, x20
	lw x20, 2(x28)
	lw x21, 2(x25)
	fmul x20, x20, x21
	fadd x18, x18, x20
	fsub x18, zero, x18
	fle x20, x18, zero
	beq	x20, zero, trace_diffuse_rays_bneelse_b4732
# B4731
	mv x21, zero
	j trace_diffuse_rays_cont_b4733 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4732:
# B4732
	mv x21, x18
trace_diffuse_rays_cont_b4733:
# B4733
	fmul x13, x13, x21
	lw x18, 7(x19)
	lw x18, 0(x18)
	fmul x13, x13, x18
	lw x18, 0(x82)
	lw x19, 0(x31)
	fmul x19, x13, x19
	fadd x18, x18, x19
	sw x18, 0(x82)
	lw x18, 1(x82)
	lw x19, 1(x31)
	fmul x19, x13, x19
	fadd x18, x18, x19
	sw x18, 1(x82)
	lw x18, 2(x82)
	lw x19, 2(x31)
	fmul x13, x13, x19
	fadd x13, x18, x13
	sw x13, 2(x82)
trace_diffuse_rays_beqelse_b4374:
# B4374
trace_diffuse_rays_cont_b4377:
# B4377
trace_diffuse_rays_cont_b4734:
# B4734
	addi x17, x17, -2
	j	trace_diffuse_rays_loop_b3585
trace_diffuse_rays_bleelse_b3587:
# B3587
	lw	ra, 0(x2)
	lw	x101, 1(x2)
	lw	x102, 2(x2)
	lw	x103, 3(x2)
	lw	x104, 4(x2)
	lw	x105, 5(x2)
	lw	x106, 6(x2)
	lw	x107, 7(x2)
	lw	x108, 8(x2)
	lw	x109, 9(x2)
	lw	x110, 10(x2)
	lw	x111, 11(x2)
	lw	x112, 12(x2)
	ret
pretrace_pixels.3136:
	sw	ra, 0(x2)
	sw	x101, 1(x2)
	sw	x102, 2(x2)
	sw	x103, 3(x2)
	sw	x104, 4(x2)
	sw	x105, 5(x2)
	sw	x106, 6(x2)
	sw	x107, 7(x2)
	sw	x108, 8(x2)
	sw	x109, 9(x2)
	sw	x110, 10(x2)
	sw	x111, 11(x2)
	sw	x112, 12(x2)
	sw	x113, 13(x2)
	sw	x114, 14(x2)
	sw	x115, 15(x2)
body_pretrace_pixels.3136:
# B4735
# B4736
	mv x106, x67
	mv x103, x7
	mv x105, x66
	mv x101, x5
	mv x102, x6
	mv x104, x65
pretrace_pixels_loop_b4737:
# B4737
	bgt	zero, x102, pretrace_pixels_bleelse_b4739
# B4738
	la x10, min_caml_scan_pitch
	lw x10, 0(x10)
	la x100, min_caml_image_center
	lw x100, 0(x100)
	sub x100, x102, x100
	itof x100, x100
	fmul x10, x10, x100
	la x100, min_caml_ptrace_dirvec
	la x11, min_caml_screenx_dir
	lw x12, 0(x11)
	fmul x12, x10, x12
	fadd x12, x12, x104
	sw x12, 0(x100)
	li x12, 1
	lw x13, 1(x11)
	fmul x13, x10, x13
	fadd x13, x13, x105
	sw x13, 1(x100)
	li x107, 2
	lw x11, 2(x11)
	fmul x10, x10, x11
	fadd x10, x10, x106
	sw x10, 2(x100)
	lw x10, 0(x100)
	fmul x10, x10, x10
	lw x11, 1(x100)
	fmul x11, x11, x11
	fadd x10, x10, x11
	lw x11, 2(x100)
	fmul x11, x11, x11
	fadd x10, x10, x11
	fsqrt x10, x10
	feq x11, x10, zero
	lui x13, 784384
	bne	x11, zero, pretrace_pixels_beqelse_b4741
# B4740
	bne	zero, zero, pretrace_pixels_beqelse_b4743
# B4742
	lui x11, 260096
	fdiv x10, x11, x10
	j pretrace_pixels_cont_b4744 # adhoc jump(2)
pretrace_pixels_beqelse_b4743:
# B4743
	fdiv x10, x13, x10
	j pretrace_pixels_cont_b4744 # adhoc jump(2)
pretrace_pixels_beqelse_b4741:
# B4741
	lui x10, 260096
pretrace_pixels_cont_b4744:
# B4744
	lw x11, 0(x100)
	fmul x11, x11, x10
	sw x11, 0(x100)
	lw x11, 1(x100)
	fmul x11, x11, x10
	sw x11, 1(x100)
	lw x11, 2(x100)
	fmul x10, x11, x10
	sw x10, 2(x100)
	la x10, min_caml_rgb
	sw zero, 0(x10)
	sw zero, 1(x10)
	sw zero, 2(x10)
	la x11, min_caml_startp
	la x14, min_caml_viewpoint
	lw x15, 0(x14)
	sw x15, 0(x11)
	lw x15, 1(x14)
	sw x15, 1(x11)
	lw x14, 2(x14)
	sw x14, 2(x11)
	lui x108, 260096
	add x4, x101, x102
	lw x14, 0(x4)
	mv x15, zero
	mv x16, x108
	mv x18, x14
	mv x17, x100
	mv x19, zero
	j	pretrace_pixels_loop_b4745
pretrace_pixels_bneelse_b5927:	#moved
# B5927
	lw x100, 7(x25)
	lw x100, 0(x100)
	fsub x100, x108, x100
	lw x14, 0(x20)
	mv x15, x21
	fmul x16, x16, x100
	fadd x19, x19, x14
pretrace_pixels_loop_b4745:
# B4745
	li x100, 4
	bgt	x15, x100, pretrace_pixels_bleelse_b4747
# B4746
	lw x14, 2(x18)
	la x20, min_caml_tmin
	lui x21, 321255
	addi x21, x21, -1240
	sw x21, 0(x20)
	la x22, min_caml_or_net
	lw x23, 0(x22)
	mv x26, x17
	mv x25, x23
	mv x24, zero
pretrace_pixels_loop_b4748:
# B4748
	add x4, x25, x24
	lw x23, 0(x4)
	lw x27, 0(x23)
	li x28, -1
	la x29, min_caml_objects
	la x30, min_caml_intersection_point
	la x31, min_caml_intersected_object_id
	la x32, min_caml_intsec_rectside
	lui x33, 258048
	li x34, 3
	beq	x27, x28, pretrace_pixels_bneelse_b4749
# B4750
	li x35, 99
	lui x36, 258048
	la x37, min_caml_solver_dist
	li x38, 3
	bne	x27, x35, pretrace_pixels_beqelse_b4752
# B4751
	mv x5, x26
	mv x40, x23
	mv x39, x12
pretrace_pixels_loop_b4753:
# B4753
	add x4, x40, x39
	lw x23, 0(x4)
	beq	x23, x28, pretrace_pixels_bneelse_b4754
# B4755
	la x27, min_caml_and_net
	add x4, x27, x23
	lw x23, 0(x4)
	mv x27, zero
	mv x33, x23
	mv x34, x5
pretrace_pixels_beqelse_b4833:	#moved
# B4833
pretrace_pixels_loop_b4756:
# B4756
	add x4, x33, x27
	lw x23, 0(x4)
	beq	x23, x28, pretrace_pixels_bneelse_b4757
# B4758
	add x4, x29, x23
	lw x35, 0(x4)
	lw x6, 0(x11)
	lw x65, 5(x35)
	lw x65, 0(x65)
	fsub x6, x6, x65
	lw x65, 1(x11)
	lw x66, 5(x35)
	lw x66, 1(x66)
	fsub x65, x65, x66
	lw x66, 2(x11)
	lw x67, 5(x35)
	lw x67, 2(x67)
	fsub x66, x66, x67
	lw x67, 1(x35)
	bne	x67, x12, pretrace_pixels_beqelse_b4760
# B4759
	lw x67, 0(x34)
	feq x67, x67, zero
	bne	x67, zero, pretrace_pixels_beqelse_b4762
# B4761
	lw x67, 4(x35)
	lw x68, 6(x35)
	lw x69, 0(x34)
	fle x69, zero, x69
	xori x69, x69, 1
	bne	x68, zero, pretrace_pixels_beqelse_b4764
# B4763
	mv x68, x69
	j pretrace_pixels_cont_b4765 # adhoc jump(2)
pretrace_pixels_beqelse_b4764:
# B4764
	xori x68, x69, 1
pretrace_pixels_cont_b4765:
# B4765
	lw x69, 0(x67)
	bne	x68, zero, pretrace_pixels_beqelse_b4767
# B4766
	fsub x68, zero, x69
	j pretrace_pixels_cont_b4768 # adhoc jump(2)
pretrace_pixels_beqelse_b4767:
# B4767
	mv x68, x69
pretrace_pixels_cont_b4768:
# B4768
	fsub x68, x68, x6
	lw x69, 0(x34)
	fdiv x68, x68, x69
	lw x69, 1(x34)
	fmul x69, x68, x69
	fadd x69, x69, x65
	fabs x69, x69
	lw x7, 1(x67)
	fle x69, x7, x69
	bne	x69, zero, pretrace_pixels_beqelse_b4769
# B4770
	lw x69, 2(x34)
	fmul x69, x68, x69
	fadd x69, x69, x66
	fabs x69, x69
	lw x67, 2(x67)
	fle x67, x67, x69
	bne	x67, zero, pretrace_pixels_beqelse_b4771
# B4772
	la x67, min_caml_solver_dist
	sw x68, 0(x67)
# B4775
	li x35, 1
	addi x27, x27, 1
	j pretrace_pixels_cont_b4831 # adhoc jump(2)
pretrace_pixels_beqelse_b4771:
# B4771
pretrace_pixels_beqelse_b4769:
# B4769
pretrace_pixels_beqelse_b4762:
# B4762
pretrace_pixels_cont_b4774:
# B4774
	lw x67, 1(x34)
	feq x67, x67, zero
	bne	x67, zero, pretrace_pixels_beqelse_b4777
# B4776
	lw x67, 4(x35)
	lw x68, 6(x35)
	lw x69, 1(x34)
	fle x69, zero, x69
	xori x69, x69, 1
	bne	x68, zero, pretrace_pixels_beqelse_b4779
# B4778
	mv x68, x69
	j pretrace_pixels_cont_b4780 # adhoc jump(2)
pretrace_pixels_beqelse_b4779:
# B4779
	xori x68, x69, 1
pretrace_pixels_cont_b4780:
# B4780
	lw x69, 1(x67)
	bne	x68, zero, pretrace_pixels_beqelse_b4782
# B4781
	fsub x68, zero, x69
	j pretrace_pixels_cont_b4783 # adhoc jump(2)
pretrace_pixels_beqelse_b4782:
# B4782
	mv x68, x69
pretrace_pixels_cont_b4783:
# B4783
	fsub x68, x68, x65
	lw x69, 1(x34)
	fdiv x68, x68, x69
	lw x69, 2(x34)
	fmul x69, x68, x69
	fadd x69, x69, x66
	fabs x69, x69
	lw x7, 2(x67)
	fle x69, x7, x69
	bne	x69, zero, pretrace_pixels_beqelse_b4784
# B4785
	lw x69, 0(x34)
	fmul x69, x68, x69
	fadd x69, x69, x6
	fabs x69, x69
	lw x67, 0(x67)
	fle x67, x67, x69
	bne	x67, zero, pretrace_pixels_beqelse_b4786
# B4787
	la x67, min_caml_solver_dist
	sw x68, 0(x67)
# B4790
	li x35, 2
	addi x27, x27, 1
	j pretrace_pixels_cont_b4831 # adhoc jump(2)
pretrace_pixels_beqelse_b4786:
# B4786
pretrace_pixels_beqelse_b4784:
# B4784
pretrace_pixels_beqelse_b4777:
# B4777
pretrace_pixels_cont_b4789:
# B4789
	lw x67, 2(x34)
	feq x67, x67, zero
	bne	x67, zero, pretrace_pixels_beqelse_b4792
# B4791
	lw x67, 4(x35)
	lw x35, 6(x35)
	lw x68, 2(x34)
	fle x68, zero, x68
	xori x68, x68, 1
	bne	x35, zero, pretrace_pixels_beqelse_b4794
# B4793
	mv x35, x68
	j pretrace_pixels_cont_b4795 # adhoc jump(2)
pretrace_pixels_beqelse_b4794:
# B4794
	xori x35, x68, 1
pretrace_pixels_cont_b4795:
# B4795
	lw x68, 2(x67)
	bne	x35, zero, pretrace_pixels_beqelse_b4797
# B4796
	fsub x35, zero, x68
	j pretrace_pixels_cont_b4798 # adhoc jump(2)
pretrace_pixels_beqelse_b4797:
# B4797
	mv x35, x68
pretrace_pixels_cont_b4798:
# B4798
	fsub x35, x35, x66
	lw x66, 2(x34)
	fdiv x35, x35, x66
	lw x66, 0(x34)
	fmul x66, x35, x66
	fadd x6, x66, x6
	fabs x6, x6
	lw x66, 0(x67)
	fle x6, x66, x6
	bne	x6, zero, pretrace_pixels_beqelse_b4799
# B4800
	lw x6, 1(x34)
	fmul x6, x35, x6
	fadd x6, x6, x65
	fabs x6, x6
	lw x65, 1(x67)
	fle x6, x65, x6
	bne	x6, zero, pretrace_pixels_beqelse_b4801
# B4802
	la x6, min_caml_solver_dist
	sw x35, 0(x6)
# B4805
	li x35, 3
	addi x27, x27, 1
	j pretrace_pixels_cont_b4831 # adhoc jump(2)
pretrace_pixels_beqelse_b4801:
# B4801
pretrace_pixels_beqelse_b4799:
# B4799
pretrace_pixels_beqelse_b4792:
# B4792
pretrace_pixels_cont_b4804:
# B4804
	mv x35, zero
	addi x27, x27, 1
	j pretrace_pixels_cont_b4830 # adhoc jump(2)
pretrace_pixels_beqelse_b4760:
# B4760
	bne	x67, x107, pretrace_pixels_beqelse_b4807
# B4806
	lw x35, 4(x35)
	lw x67, 0(x34)
	lw x68, 0(x35)
	fmul x67, x67, x68
	lw x68, 1(x34)
	lw x69, 1(x35)
	fmul x68, x68, x69
	fadd x67, x67, x68
	lw x68, 2(x34)
	lw x69, 2(x35)
	fmul x68, x68, x69
	fadd x67, x67, x68
	fle x68, x67, zero
	beq	x68, zero, pretrace_pixels_bneelse_b4809
# B4808
	mv x35, zero
	addi x27, x27, 1
	j pretrace_pixels_cont_b4830 # adhoc jump(2)
pretrace_pixels_bneelse_b4809:
# B4809
	la x68, min_caml_solver_dist
	lw x69, 0(x35)
	fmul x6, x69, x6
	lw x69, 1(x35)
	fmul x65, x69, x65
	fadd x6, x6, x65
	lw x35, 2(x35)
	fmul x35, x35, x66
	fadd x35, x6, x35
	fsub x35, zero, x35
	fdiv x35, x35, x67
	sw x35, 0(x68)
	li x35, 1
	addi x27, x27, 1
	j pretrace_pixels_cont_b4831 # adhoc jump(2)
pretrace_pixels_beqelse_b4807:
# B4807
	lw x67, 0(x34)
	lw x68, 1(x34)
	lw x69, 2(x34)
	fmul x7, x67, x67
	lw x70, 4(x35)
	lw x70, 0(x70)
	fmul x7, x7, x70
	fmul x70, x68, x68
	lw x71, 4(x35)
	lw x71, 1(x71)
	fmul x70, x70, x71
	fadd x7, x7, x70
	fmul x70, x69, x69
	lw x71, 4(x35)
	lw x71, 2(x71)
	fmul x70, x70, x71
	fadd x7, x7, x70
	lw x70, 3(x35)
	bne	x70, zero, pretrace_pixels_beqelse_b4811
# B4810
	mv x67, x7
	j pretrace_pixels_cont_b4812 # adhoc jump(2)
pretrace_pixels_beqelse_b4811:
# B4811
	fmul x70, x68, x69
	lw x71, 9(x35)
	lw x71, 0(x71)
	fmul x70, x70, x71
	fadd x7, x7, x70
	fmul x69, x69, x67
	lw x70, 9(x35)
	lw x70, 1(x70)
	fmul x69, x69, x70
	fadd x69, x7, x69
	fmul x67, x67, x68
	lw x68, 9(x35)
	lw x68, 2(x68)
	fmul x67, x67, x68
	fadd x67, x69, x67
pretrace_pixels_cont_b4812:
# B4812
	feq x68, x67, zero
	bne	x68, zero, pretrace_pixels_beqelse_b4814
# B4813
	lw x68, 0(x34)
	lw x69, 1(x34)
	lw x7, 2(x34)
	fmul x70, x68, x6
	lw x71, 4(x35)
	lw x71, 0(x71)
	fmul x70, x70, x71
	fmul x71, x69, x65
	lw x72, 4(x35)
	lw x72, 1(x72)
	fmul x71, x71, x72
	fadd x70, x70, x71
	fmul x71, x7, x66
	lw x72, 4(x35)
	lw x72, 2(x72)
	fmul x71, x71, x72
	fadd x70, x70, x71
	lw x71, 3(x35)
	bne	x71, zero, pretrace_pixels_beqelse_b4816
# B4815
	mv x68, x70
	j pretrace_pixels_cont_b4817 # adhoc jump(2)
pretrace_pixels_beqelse_b4816:
# B4816
	fmul x71, x7, x65
	fmul x72, x69, x66
	fadd x71, x71, x72
	lw x72, 9(x35)
	lw x72, 0(x72)
	fmul x71, x71, x72
	fmul x72, x68, x66
	fmul x7, x7, x6
	fadd x7, x72, x7
	lw x72, 9(x35)
	lw x72, 1(x72)
	fmul x7, x7, x72
	fadd x7, x71, x7
	fmul x68, x68, x65
	fmul x69, x69, x6
	fadd x68, x68, x69
	lw x69, 9(x35)
	lw x69, 2(x69)
	fmul x68, x68, x69
	fadd x68, x7, x68
	fmul x68, x68, x36
	fadd x68, x70, x68
pretrace_pixels_cont_b4817:
# B4817
	fmul x69, x6, x6
	lw x7, 4(x35)
	lw x7, 0(x7)
	fmul x69, x69, x7
	fmul x7, x65, x65
	lw x70, 4(x35)
	lw x70, 1(x70)
	fmul x7, x7, x70
	fadd x69, x69, x7
	fmul x7, x66, x66
	lw x70, 4(x35)
	lw x70, 2(x70)
	fmul x7, x7, x70
	fadd x69, x69, x7
	lw x7, 3(x35)
	bne	x7, zero, pretrace_pixels_beqelse_b4819
# B4818
	mv x6, x69
	j pretrace_pixels_cont_b4820 # adhoc jump(2)
pretrace_pixels_beqelse_b4819:
# B4819
	fmul x7, x65, x66
	lw x70, 9(x35)
	lw x70, 0(x70)
	fmul x7, x7, x70
	fadd x69, x69, x7
	fmul x66, x66, x6
	lw x7, 9(x35)
	lw x7, 1(x7)
	fmul x66, x66, x7
	fadd x66, x69, x66
	fmul x6, x6, x65
	lw x65, 9(x35)
	lw x65, 2(x65)
	fmul x6, x6, x65
	fadd x6, x66, x6
pretrace_pixels_cont_b4820:
# B4820
	lw x65, 1(x35)
	li x66, 3
	bne	x65, x66, pretrace_pixels_beqelse_b4822
# B4821
	fsub x6, x6, x108
pretrace_pixels_beqelse_b4822:
# B4822
pretrace_pixels_cont_b4823:
# B4823
	fmul x65, x68, x68
	fmul x6, x67, x6
	fsub x6, x65, x6
	fle x65, x6, zero
	beq	x65, zero, pretrace_pixels_bneelse_b4825
# B4824
	mv x35, zero
	addi x27, x27, 1
	j pretrace_pixels_cont_b4830 # adhoc jump(2)
pretrace_pixels_bneelse_b4825:
# B4825
	fsqrt x6, x6
	lw x35, 6(x35)
	bne	x35, zero, pretrace_pixels_beqelse_b4827
# B4826
	fsub x35, zero, x6
	j pretrace_pixels_cont_b4828 # adhoc jump(2)
pretrace_pixels_beqelse_b4827:
# B4827
	mv x35, x6
pretrace_pixels_cont_b4828:
# B4828
	la x6, min_caml_solver_dist
	fsub x35, x35, x68
	fdiv x35, x35, x67
	sw x35, 0(x6)
	li x35, 1
	addi x27, x27, 1
pretrace_pixels_cont_b4831:
# B4831
	lw x6, 0(x37)
	fle x65, x6, zero
	bne	x65, zero, pretrace_pixels_beqelse_b4834
# B4835
	lw x65, 0(x20)
	fle x65, x65, x6
	bne	x65, zero, pretrace_pixels_beqelse_b4836
# B4837
	lui x65, 246333
	addi x65, x65, 1802
	fadd x6, x6, x65
	lw x65, 0(x34)
	fmul x65, x65, x6
	lw x66, 0(x11)
	fadd x65, x65, x66
	lw x66, 1(x34)
	fmul x66, x66, x6
	lw x67, 1(x11)
	fadd x66, x66, x67
	lw x67, 2(x34)
	fmul x67, x67, x6
	lw x68, 2(x11)
	fadd x67, x67, x68
	mv x70, x66
	mv x71, x67
	mv x7, x65
	mv x68, zero
	mv x69, x33
	j	pretrace_pixels_loop_b4838
pretrace_pixels_bneelse_b4865:	#moved
# B4865
	addi x68, x68, 1
pretrace_pixels_loop_b4838:
# B4838
	add x4, x69, x68
	lw x72, 0(x4)
	beq	x72, x28, pretrace_pixels_bneelse_b4839
# B4840
	add x4, x29, x72
	lw x72, 0(x4)
	lw x73, 5(x72)
	lw x73, 0(x73)
	fsub x73, x7, x73
	lw x74, 5(x72)
	lw x74, 1(x74)
	fsub x74, x70, x74
	lw x75, 5(x72)
	lw x75, 2(x75)
	fsub x75, x71, x75
	lw x76, 1(x72)
	bne	x76, x12, pretrace_pixels_beqelse_b4842
# B4841
	fabs x73, x73
	lw x76, 4(x72)
	lw x76, 0(x76)
	fle x73, x76, x73
	bne	x73, zero, pretrace_pixels_beqelse_b4843
# B4844
	fabs x73, x74
	lw x74, 4(x72)
	lw x74, 1(x74)
	fle x73, x74, x73
	bne	x73, zero, pretrace_pixels_beqelse_b4845
# B4846
	fabs x73, x75
	lw x74, 4(x72)
	lw x74, 2(x74)
	fle x73, x74, x73
	xori x73, x73, 1
	mv x74, x73
# B4847
	bne	x74, zero, pretrace_pixels_beqelse_b4849
	j pretrace_pixels_cont_b4848 # adhoc jump(3)
pretrace_pixels_beqelse_b4849:
# B4849
	lw x72, 6(x72)
	j pretrace_pixels_cont_b4864 # adhoc jump(2)
pretrace_pixels_beqelse_b4845:
# B4845
pretrace_pixels_beqelse_b4843:
# B4843
pretrace_pixels_cont_b4848:
# B4848
	lw x72, 6(x72)
	xori x72, x72, 1
	j pretrace_pixels_cont_b4864 # adhoc jump(2)
pretrace_pixels_beqelse_b4842:
# B4842
	bne	x76, x107, pretrace_pixels_beqelse_b4851
# B4850
	lw x76, 4(x72)
	lw x77, 0(x76)
	fmul x73, x77, x73
	lw x77, 1(x76)
	fmul x74, x77, x74
	fadd x73, x73, x74
	lw x74, 2(x76)
	fmul x74, x74, x75
	fadd x73, x73, x74
	lw x72, 6(x72)
	fle x73, zero, x73
	xori x73, x73, 1
	bne	x72, zero, pretrace_pixels_beqelse_b4853
# B4852
	mv x72, x73
	j pretrace_pixels_cont_b4854 # adhoc jump(2)
pretrace_pixels_beqelse_b4853:
# B4853
	xori x72, x73, 1
pretrace_pixels_cont_b4854:
# B4854
	xori x72, x72, 1
	j pretrace_pixels_cont_b4864 # adhoc jump(2)
pretrace_pixels_beqelse_b4851:
# B4851
	fmul x76, x73, x73
	lw x77, 4(x72)
	lw x77, 0(x77)
	fmul x76, x76, x77
	fmul x77, x74, x74
	lw x78, 4(x72)
	lw x78, 1(x78)
	fmul x77, x77, x78
	fadd x76, x76, x77
	fmul x77, x75, x75
	lw x78, 4(x72)
	lw x78, 2(x78)
	fmul x77, x77, x78
	fadd x76, x76, x77
	lw x77, 3(x72)
	bne	x77, zero, pretrace_pixels_beqelse_b4856
# B4855
	mv x73, x76
	j pretrace_pixels_cont_b4857 # adhoc jump(2)
pretrace_pixels_beqelse_b4856:
# B4856
	fmul x77, x74, x75
	lw x78, 9(x72)
	lw x78, 0(x78)
	fmul x77, x77, x78
	fadd x76, x76, x77
	fmul x75, x75, x73
	lw x77, 9(x72)
	lw x77, 1(x77)
	fmul x75, x75, x77
	fadd x75, x76, x75
	fmul x73, x73, x74
	lw x74, 9(x72)
	lw x74, 2(x74)
	fmul x73, x73, x74
	fadd x73, x75, x73
pretrace_pixels_cont_b4857:
# B4857
	lw x74, 1(x72)
	bne	x74, x38, pretrace_pixels_beqelse_b4859
# B4858
	fsub x73, x73, x108
pretrace_pixels_beqelse_b4859:
# B4859
pretrace_pixels_cont_b4860:
# B4860
	lw x72, 6(x72)
	fle x73, zero, x73
	xori x73, x73, 1
	bne	x72, zero, pretrace_pixels_beqelse_b4862
# B4861
	mv x72, x73
	j pretrace_pixels_cont_b4863 # adhoc jump(2)
pretrace_pixels_beqelse_b4862:
# B4862
	xori x72, x73, 1
pretrace_pixels_cont_b4863:
# B4863
	xori x72, x72, 1
pretrace_pixels_cont_b4864:
# B4864
	beq	x72, zero, pretrace_pixels_bneelse_b4865
# B4866
# B4868
	j pretrace_pixels_cont_b4870 # adhoc jump(2)
pretrace_pixels_bneelse_b4839:
# B4839
# B4869
	sw x6, 0(x20)
	sw x65, 0(x30)
	sw x66, 1(x30)
	sw x67, 2(x30)
	sw x23, 0(x31)
	sw x35, 0(x32)
pretrace_pixels_beqelse_b4836:
# B4836
pretrace_pixels_beqelse_b4834:
# B4834
pretrace_pixels_cont_b4870:
# B4870
	j	pretrace_pixels_loop_b4756
pretrace_pixels_beqelse_b4814:
# B4814
	mv x35, zero
	addi x27, x27, 1
pretrace_pixels_cont_b4830:
# B4830
	add x4, x29, x23
	lw x23, 0(x4)
	lw x23, 6(x23)
	bne	x23, zero, pretrace_pixels_beqelse_b4833
# B4832
pretrace_pixels_bneelse_b4757:
# B4757
pretrace_pixels_cont_b4871:
# B4871
	addi x39, x39, 1
	j	pretrace_pixels_loop_b4753
pretrace_pixels_bneelse_b4754:
# B4754
	j pretrace_pixels_cont_b5066 # adhoc jump(2)
pretrace_pixels_beqelse_b4752:
# B4752
	la x29, min_caml_objects
	add x4, x29, x27
	lw x27, 0(x4)
	lw x35, 0(x11)
	lw x39, 5(x27)
	lw x39, 0(x39)
	fsub x35, x35, x39
	lw x39, 1(x11)
	lw x40, 5(x27)
	lw x40, 1(x40)
	fsub x39, x39, x40
	lw x40, 2(x11)
	lw x5, 5(x27)
	lw x5, 2(x5)
	fsub x40, x40, x5
	lw x5, 1(x27)
	bne	x5, x12, pretrace_pixels_beqelse_b4873
# B4872
	lw x36, 0(x26)
	feq x36, x36, zero
	bne	x36, zero, pretrace_pixels_beqelse_b4875
# B4874
	lw x36, 4(x27)
	lw x5, 6(x27)
	lw x6, 0(x26)
	fle x6, zero, x6
	xori x6, x6, 1
	bne	x5, zero, pretrace_pixels_beqelse_b4877
# B4876
	mv x5, x6
	j pretrace_pixels_cont_b4878 # adhoc jump(2)
pretrace_pixels_beqelse_b4877:
# B4877
	xori x5, x6, 1
pretrace_pixels_cont_b4878:
# B4878
	lw x6, 0(x36)
	bne	x5, zero, pretrace_pixels_beqelse_b4880
# B4879
	fsub x5, zero, x6
	j pretrace_pixels_cont_b4881 # adhoc jump(2)
pretrace_pixels_beqelse_b4880:
# B4880
	mv x5, x6
pretrace_pixels_cont_b4881:
# B4881
	fsub x5, x5, x35
	lw x6, 0(x26)
	fdiv x5, x5, x6
	lw x6, 1(x26)
	fmul x6, x5, x6
	fadd x6, x6, x39
	fabs x6, x6
	lw x65, 1(x36)
	fle x6, x65, x6
	bne	x6, zero, pretrace_pixels_beqelse_b4882
# B4883
	lw x6, 2(x26)
	fmul x6, x5, x6
	fadd x6, x6, x40
	fabs x6, x6
	lw x36, 2(x36)
	fle x36, x36, x6
	bne	x36, zero, pretrace_pixels_beqelse_b4884
# B4885
	sw x5, 0(x37)
	mv x6, x12
# B4886
	bne	x6, zero, pretrace_pixels_beqelse_b4888
	j pretrace_pixels_cont_b4887 # adhoc jump(3)
pretrace_pixels_beqelse_b4888:
# B4888
	mv x38, x12
	j pretrace_pixels_cont_b4942 # adhoc jump(2)
pretrace_pixels_beqelse_b4884:
# B4884
pretrace_pixels_beqelse_b4882:
# B4882
pretrace_pixels_beqelse_b4875:
# B4875
pretrace_pixels_cont_b4887:
# B4887
	lw x36, 1(x26)
	feq x36, x36, zero
	bne	x36, zero, pretrace_pixels_beqelse_b4890
# B4889
	lw x36, 4(x27)
	lw x5, 6(x27)
	lw x6, 1(x26)
	fle x6, zero, x6
	xori x6, x6, 1
	bne	x5, zero, pretrace_pixels_beqelse_b4892
# B4891
	mv x5, x6
	j pretrace_pixels_cont_b4893 # adhoc jump(2)
pretrace_pixels_beqelse_b4892:
# B4892
	xori x5, x6, 1
pretrace_pixels_cont_b4893:
# B4893
	lw x6, 1(x36)
	bne	x5, zero, pretrace_pixels_beqelse_b4895
# B4894
	fsub x5, zero, x6
	j pretrace_pixels_cont_b4896 # adhoc jump(2)
pretrace_pixels_beqelse_b4895:
# B4895
	mv x5, x6
pretrace_pixels_cont_b4896:
# B4896
	fsub x5, x5, x39
	lw x6, 1(x26)
	fdiv x5, x5, x6
	lw x6, 2(x26)
	fmul x6, x5, x6
	fadd x6, x6, x40
	fabs x6, x6
	lw x65, 2(x36)
	fle x6, x65, x6
	bne	x6, zero, pretrace_pixels_beqelse_b4897
# B4898
	lw x6, 0(x26)
	fmul x6, x5, x6
	fadd x6, x6, x35
	fabs x6, x6
	lw x36, 0(x36)
	fle x36, x36, x6
	bne	x36, zero, pretrace_pixels_beqelse_b4899
# B4900
	sw x5, 0(x37)
	mv x6, x12
# B4901
	bne	x6, zero, pretrace_pixels_beqelse_b4903
	j pretrace_pixels_cont_b4902 # adhoc jump(3)
pretrace_pixels_beqelse_b4903:
# B4903
	mv x38, x107
	j pretrace_pixels_cont_b4942 # adhoc jump(2)
pretrace_pixels_beqelse_b4899:
# B4899
pretrace_pixels_beqelse_b4897:
# B4897
pretrace_pixels_beqelse_b4890:
# B4890
pretrace_pixels_cont_b4902:
# B4902
	lw x36, 2(x26)
	feq x36, x36, zero
	bne	x36, zero, pretrace_pixels_beqelse_b4905
# B4904
	lw x36, 4(x27)
	lw x27, 6(x27)
	lw x5, 2(x26)
	fle x5, zero, x5
	xori x5, x5, 1
	bne	x27, zero, pretrace_pixels_beqelse_b4907
# B4906
	mv x27, x5
	j pretrace_pixels_cont_b4908 # adhoc jump(2)
pretrace_pixels_beqelse_b4907:
# B4907
	xori x27, x5, 1
pretrace_pixels_cont_b4908:
# B4908
	lw x5, 2(x36)
	bne	x27, zero, pretrace_pixels_beqelse_b4910
# B4909
	fsub x27, zero, x5
	j pretrace_pixels_cont_b4911 # adhoc jump(2)
pretrace_pixels_beqelse_b4910:
# B4910
	mv x27, x5
pretrace_pixels_cont_b4911:
# B4911
	fsub x27, x27, x40
	lw x40, 2(x26)
	fdiv x27, x27, x40
	lw x40, 0(x26)
	fmul x40, x27, x40
	fadd x35, x40, x35
	fabs x35, x35
	lw x40, 0(x36)
	fle x35, x40, x35
	bne	x35, zero, pretrace_pixels_beqelse_b4912
# B4913
	lw x35, 1(x26)
	fmul x35, x27, x35
	fadd x35, x35, x39
	fabs x35, x35
	lw x36, 1(x36)
	fle x35, x36, x35
	bne	x35, zero, pretrace_pixels_beqelse_b4914
# B4915
	sw x27, 0(x37)
	mv x36, x12
# B4916
	bne	x36, zero, pretrace_pixels_beqelse_b4918
	j pretrace_pixels_cont_b4917 # adhoc jump(3)
pretrace_pixels_beqelse_b4918:
# B4918
	j pretrace_pixels_cont_b4942 # adhoc jump(2)
pretrace_pixels_beqelse_b4914:
# B4914
pretrace_pixels_beqelse_b4912:
# B4912
pretrace_pixels_beqelse_b4905:
# B4905
pretrace_pixels_cont_b4917:
# B4917
	j pretrace_pixels_cont_b4943 # adhoc jump(2)
pretrace_pixels_beqelse_b4873:
# B4873
	bne	x5, x107, pretrace_pixels_beqelse_b4920
# B4919
	lw x27, 4(x27)
	lw x36, 0(x26)
	lw x38, 0(x27)
	fmul x36, x36, x38
	lw x38, 1(x26)
	lw x5, 1(x27)
	fmul x38, x38, x5
	fadd x36, x36, x38
	lw x38, 2(x26)
	lw x5, 2(x27)
	fmul x38, x38, x5
	fadd x36, x36, x38
	fle x38, x36, zero
	bne	x38, zero, pretrace_pixels_beqelse_b4921
# B4922
	lw x38, 0(x27)
	fmul x35, x38, x35
	lw x38, 1(x27)
	fmul x38, x38, x39
	fadd x35, x35, x38
	lw x27, 2(x27)
	fmul x27, x27, x40
	fadd x27, x35, x27
	fsub x27, zero, x27
	fdiv x27, x27, x36
	sw x27, 0(x37)
	mv x38, x12
	j pretrace_pixels_cont_b4942 # adhoc jump(2)
pretrace_pixels_beqelse_b4921:
# B4921
	j pretrace_pixels_cont_b4943 # adhoc jump(2)
pretrace_pixels_beqelse_b4920:
# B4920
	lw x5, 0(x26)
	lw x6, 1(x26)
	lw x65, 2(x26)
	fmul x66, x5, x5
	lw x67, 4(x27)
	lw x67, 0(x67)
	fmul x66, x66, x67
	fmul x67, x6, x6
	lw x68, 4(x27)
	lw x68, 1(x68)
	fmul x67, x67, x68
	fadd x66, x66, x67
	fmul x67, x65, x65
	lw x68, 4(x27)
	lw x68, 2(x68)
	fmul x67, x67, x68
	fadd x66, x66, x67
	lw x67, 3(x27)
	bne	x67, zero, pretrace_pixels_beqelse_b4924
# B4923
	mv x5, x66
	j pretrace_pixels_cont_b4925 # adhoc jump(2)
pretrace_pixels_beqelse_b4924:
# B4924
	fmul x67, x6, x65
	lw x68, 9(x27)
	lw x68, 0(x68)
	fmul x67, x67, x68
	fadd x66, x66, x67
	fmul x65, x65, x5
	lw x67, 9(x27)
	lw x67, 1(x67)
	fmul x65, x65, x67
	fadd x65, x66, x65
	fmul x5, x5, x6
	lw x6, 9(x27)
	lw x6, 2(x6)
	fmul x5, x5, x6
	fadd x5, x65, x5
pretrace_pixels_cont_b4925:
# B4925
	feq x6, x5, zero
	bne	x6, zero, pretrace_pixels_beqelse_b4927
# B4926
	lw x6, 0(x26)
	lw x65, 1(x26)
	lw x66, 2(x26)
	fmul x67, x6, x35
	lw x68, 4(x27)
	lw x68, 0(x68)
	fmul x67, x67, x68
	fmul x68, x65, x39
	lw x69, 4(x27)
	lw x69, 1(x69)
	fmul x68, x68, x69
	fadd x67, x67, x68
	fmul x68, x66, x40
	lw x69, 4(x27)
	lw x69, 2(x69)
	fmul x68, x68, x69
	fadd x67, x67, x68
	lw x68, 3(x27)
	bne	x68, zero, pretrace_pixels_beqelse_b4929
# B4928
	mv x36, x67
	j pretrace_pixels_cont_b4930 # adhoc jump(2)
pretrace_pixels_beqelse_b4929:
# B4929
	fmul x68, x66, x39
	fmul x69, x65, x40
	fadd x68, x68, x69
	lw x69, 9(x27)
	lw x69, 0(x69)
	fmul x68, x68, x69
	fmul x69, x6, x40
	fmul x66, x66, x35
	fadd x66, x69, x66
	lw x69, 9(x27)
	lw x69, 1(x69)
	fmul x66, x66, x69
	fadd x66, x68, x66
	fmul x6, x6, x39
	fmul x65, x65, x35
	fadd x6, x6, x65
	lw x65, 9(x27)
	lw x65, 2(x65)
	fmul x6, x6, x65
	fadd x6, x66, x6
	fmul x36, x6, x36
	fadd x36, x67, x36
pretrace_pixels_cont_b4930:
# B4930
	fmul x6, x35, x35
	lw x65, 4(x27)
	lw x65, 0(x65)
	fmul x6, x6, x65
	fmul x65, x39, x39
	lw x66, 4(x27)
	lw x66, 1(x66)
	fmul x65, x65, x66
	fadd x6, x6, x65
	fmul x65, x40, x40
	lw x66, 4(x27)
	lw x66, 2(x66)
	fmul x65, x65, x66
	fadd x6, x6, x65
	lw x65, 3(x27)
	bne	x65, zero, pretrace_pixels_beqelse_b4932
# B4931
	mv x35, x6
	j pretrace_pixels_cont_b4933 # adhoc jump(2)
pretrace_pixels_beqelse_b4932:
# B4932
	fmul x65, x39, x40
	lw x66, 9(x27)
	lw x66, 0(x66)
	fmul x65, x65, x66
	fadd x6, x6, x65
	fmul x40, x40, x35
	lw x65, 9(x27)
	lw x65, 1(x65)
	fmul x40, x40, x65
	fadd x40, x6, x40
	fmul x35, x35, x39
	lw x39, 9(x27)
	lw x39, 2(x39)
	fmul x35, x35, x39
	fadd x35, x40, x35
pretrace_pixels_cont_b4933:
# B4933
	lw x39, 1(x27)
	bne	x39, x38, pretrace_pixels_beqelse_b4935
# B4934
	fsub x35, x35, x108
pretrace_pixels_beqelse_b4935:
# B4935
pretrace_pixels_cont_b4936:
# B4936
	fmul x38, x36, x36
	fmul x35, x5, x35
	fsub x35, x38, x35
	fle x38, x35, zero
	bne	x38, zero, pretrace_pixels_beqelse_b4937
# B4938
	fsqrt x35, x35
	lw x27, 6(x27)
	bne	x27, zero, pretrace_pixels_beqelse_b4940
# B4939
	fsub x27, zero, x35
	j pretrace_pixels_cont_b4941 # adhoc jump(2)
pretrace_pixels_beqelse_b4940:
# B4940
	mv x27, x35
pretrace_pixels_cont_b4941:
# B4941
	fsub x27, x27, x36
	fdiv x27, x27, x5
	sw x27, 0(x37)
	mv x38, x12
pretrace_pixels_cont_b4942:
# B4942
	bne	x38, zero, pretrace_pixels_beqelse_b4944
	j pretrace_pixels_cont_b4943 # adhoc jump(3)
pretrace_pixels_beqelse_b4944:
# B4944
	lw x27, 0(x37)
	lw x35, 0(x20)
	fle x27, x35, x27
	bne	x27, zero, pretrace_pixels_beqelse_b4945
# B4946
	mv x38, x26
	mv x35, x12
	mv x36, x23
pretrace_pixels_loop_b4947:
# B4947
	add x4, x36, x35
	lw x23, 0(x4)
	beq	x23, x28, pretrace_pixels_bneelse_b4948
# B4949
	la x27, min_caml_and_net
	add x4, x27, x23
	lw x23, 0(x4)
	mv x27, zero
	mv x40, x38
	mv x39, x23
pretrace_pixels_beqelse_b5027:	#moved
# B5027
pretrace_pixels_loop_b4950:
# B4950
	add x4, x39, x27
	lw x23, 0(x4)
	beq	x23, x28, pretrace_pixels_bneelse_b4951
# B4952
	add x4, x29, x23
	lw x5, 0(x4)
	lw x6, 0(x11)
	lw x65, 5(x5)
	lw x65, 0(x65)
	fsub x6, x6, x65
	lw x65, 1(x11)
	lw x66, 5(x5)
	lw x66, 1(x66)
	fsub x65, x65, x66
	lw x66, 2(x11)
	lw x67, 5(x5)
	lw x67, 2(x67)
	fsub x66, x66, x67
	lw x67, 1(x5)
	bne	x67, x12, pretrace_pixels_beqelse_b4954
# B4953
	lw x67, 0(x40)
	feq x67, x67, zero
	bne	x67, zero, pretrace_pixels_beqelse_b4956
# B4955
	lw x67, 4(x5)
	lw x68, 6(x5)
	lw x69, 0(x40)
	fle x69, zero, x69
	xori x69, x69, 1
	bne	x68, zero, pretrace_pixels_beqelse_b4958
# B4957
	mv x68, x69
	j pretrace_pixels_cont_b4959 # adhoc jump(2)
pretrace_pixels_beqelse_b4958:
# B4958
	xori x68, x69, 1
pretrace_pixels_cont_b4959:
# B4959
	lw x69, 0(x67)
	bne	x68, zero, pretrace_pixels_beqelse_b4961
# B4960
	fsub x68, zero, x69
	j pretrace_pixels_cont_b4962 # adhoc jump(2)
pretrace_pixels_beqelse_b4961:
# B4961
	mv x68, x69
pretrace_pixels_cont_b4962:
# B4962
	fsub x68, x68, x6
	lw x69, 0(x40)
	fdiv x68, x68, x69
	lw x69, 1(x40)
	fmul x69, x68, x69
	fadd x69, x69, x65
	fabs x69, x69
	lw x7, 1(x67)
	fle x69, x7, x69
	bne	x69, zero, pretrace_pixels_beqelse_b4963
# B4964
	lw x69, 2(x40)
	fmul x69, x68, x69
	fadd x69, x69, x66
	fabs x69, x69
	lw x67, 2(x67)
	fle x67, x67, x69
	bne	x67, zero, pretrace_pixels_beqelse_b4965
# B4966
	sw x68, 0(x37)
# B4969
	li x5, 1
	addi x27, x27, 1
	j pretrace_pixels_cont_b5025 # adhoc jump(2)
pretrace_pixels_beqelse_b4965:
# B4965
pretrace_pixels_beqelse_b4963:
# B4963
pretrace_pixels_beqelse_b4956:
# B4956
pretrace_pixels_cont_b4968:
# B4968
	lw x67, 1(x40)
	feq x67, x67, zero
	bne	x67, zero, pretrace_pixels_beqelse_b4971
# B4970
	lw x67, 4(x5)
	lw x68, 6(x5)
	lw x69, 1(x40)
	fle x69, zero, x69
	xori x69, x69, 1
	bne	x68, zero, pretrace_pixels_beqelse_b4973
# B4972
	mv x68, x69
	j pretrace_pixels_cont_b4974 # adhoc jump(2)
pretrace_pixels_beqelse_b4973:
# B4973
	xori x68, x69, 1
pretrace_pixels_cont_b4974:
# B4974
	lw x69, 1(x67)
	bne	x68, zero, pretrace_pixels_beqelse_b4976
# B4975
	fsub x68, zero, x69
	j pretrace_pixels_cont_b4977 # adhoc jump(2)
pretrace_pixels_beqelse_b4976:
# B4976
	mv x68, x69
pretrace_pixels_cont_b4977:
# B4977
	fsub x68, x68, x65
	lw x69, 1(x40)
	fdiv x68, x68, x69
	lw x69, 2(x40)
	fmul x69, x68, x69
	fadd x69, x69, x66
	fabs x69, x69
	lw x7, 2(x67)
	fle x69, x7, x69
	bne	x69, zero, pretrace_pixels_beqelse_b4978
# B4979
	lw x69, 0(x40)
	fmul x69, x68, x69
	fadd x69, x69, x6
	fabs x69, x69
	lw x67, 0(x67)
	fle x67, x67, x69
	bne	x67, zero, pretrace_pixels_beqelse_b4980
# B4981
	sw x68, 0(x37)
# B4984
	li x5, 2
	addi x27, x27, 1
	j pretrace_pixels_cont_b5025 # adhoc jump(2)
pretrace_pixels_beqelse_b4980:
# B4980
pretrace_pixels_beqelse_b4978:
# B4978
pretrace_pixels_beqelse_b4971:
# B4971
pretrace_pixels_cont_b4983:
# B4983
	lw x67, 2(x40)
	feq x67, x67, zero
	bne	x67, zero, pretrace_pixels_beqelse_b4986
# B4985
	lw x67, 4(x5)
	lw x5, 6(x5)
	lw x68, 2(x40)
	fle x68, zero, x68
	xori x68, x68, 1
	bne	x5, zero, pretrace_pixels_beqelse_b4988
# B4987
	mv x5, x68
	j pretrace_pixels_cont_b4989 # adhoc jump(2)
pretrace_pixels_beqelse_b4988:
# B4988
	xori x5, x68, 1
pretrace_pixels_cont_b4989:
# B4989
	lw x68, 2(x67)
	bne	x5, zero, pretrace_pixels_beqelse_b4991
# B4990
	fsub x5, zero, x68
	j pretrace_pixels_cont_b4992 # adhoc jump(2)
pretrace_pixels_beqelse_b4991:
# B4991
	mv x5, x68
pretrace_pixels_cont_b4992:
# B4992
	fsub x5, x5, x66
	lw x66, 2(x40)
	fdiv x5, x5, x66
	lw x66, 0(x40)
	fmul x66, x5, x66
	fadd x6, x66, x6
	fabs x6, x6
	lw x66, 0(x67)
	fle x6, x66, x6
	bne	x6, zero, pretrace_pixels_beqelse_b4993
# B4994
	lw x6, 1(x40)
	fmul x6, x5, x6
	fadd x6, x6, x65
	fabs x6, x6
	lw x65, 1(x67)
	fle x6, x65, x6
	bne	x6, zero, pretrace_pixels_beqelse_b4995
# B4996
	sw x5, 0(x37)
# B4999
	li x5, 3
	addi x27, x27, 1
	j pretrace_pixels_cont_b5025 # adhoc jump(2)
pretrace_pixels_beqelse_b4995:
# B4995
pretrace_pixels_beqelse_b4993:
# B4993
pretrace_pixels_beqelse_b4986:
# B4986
pretrace_pixels_cont_b4998:
# B4998
	mv x5, zero
	addi x27, x27, 1
	j pretrace_pixels_cont_b5024 # adhoc jump(2)
pretrace_pixels_beqelse_b4954:
# B4954
	bne	x67, x107, pretrace_pixels_beqelse_b5001
# B5000
	lw x5, 4(x5)
	lw x67, 0(x40)
	lw x68, 0(x5)
	fmul x67, x67, x68
	lw x68, 1(x40)
	lw x69, 1(x5)
	fmul x68, x68, x69
	fadd x67, x67, x68
	lw x68, 2(x40)
	lw x69, 2(x5)
	fmul x68, x68, x69
	fadd x67, x67, x68
	fle x68, x67, zero
	beq	x68, zero, pretrace_pixels_bneelse_b5003
# B5002
	mv x5, zero
	addi x27, x27, 1
	j pretrace_pixels_cont_b5024 # adhoc jump(2)
pretrace_pixels_bneelse_b5003:
# B5003
	lw x68, 0(x5)
	fmul x6, x68, x6
	lw x68, 1(x5)
	fmul x65, x68, x65
	fadd x6, x6, x65
	lw x5, 2(x5)
	fmul x5, x5, x66
	fadd x5, x6, x5
	fsub x5, zero, x5
	fdiv x5, x5, x67
	sw x5, 0(x37)
	li x5, 1
	addi x27, x27, 1
	j pretrace_pixels_cont_b5025 # adhoc jump(2)
pretrace_pixels_beqelse_b5001:
# B5001
	lw x67, 0(x40)
	lw x68, 1(x40)
	lw x69, 2(x40)
	fmul x7, x67, x67
	lw x70, 4(x5)
	lw x70, 0(x70)
	fmul x7, x7, x70
	fmul x70, x68, x68
	lw x71, 4(x5)
	lw x71, 1(x71)
	fmul x70, x70, x71
	fadd x7, x7, x70
	fmul x70, x69, x69
	lw x71, 4(x5)
	lw x71, 2(x71)
	fmul x70, x70, x71
	fadd x7, x7, x70
	lw x70, 3(x5)
	bne	x70, zero, pretrace_pixels_beqelse_b5005
# B5004
	mv x67, x7
	j pretrace_pixels_cont_b5006 # adhoc jump(2)
pretrace_pixels_beqelse_b5005:
# B5005
	fmul x70, x68, x69
	lw x71, 9(x5)
	lw x71, 0(x71)
	fmul x70, x70, x71
	fadd x7, x7, x70
	fmul x69, x69, x67
	lw x70, 9(x5)
	lw x70, 1(x70)
	fmul x69, x69, x70
	fadd x69, x7, x69
	fmul x67, x67, x68
	lw x68, 9(x5)
	lw x68, 2(x68)
	fmul x67, x67, x68
	fadd x67, x69, x67
pretrace_pixels_cont_b5006:
# B5006
	feq x68, x67, zero
	bne	x68, zero, pretrace_pixels_beqelse_b5008
# B5007
	lw x68, 0(x40)
	lw x69, 1(x40)
	lw x7, 2(x40)
	fmul x70, x68, x6
	lw x71, 4(x5)
	lw x71, 0(x71)
	fmul x70, x70, x71
	fmul x71, x69, x65
	lw x72, 4(x5)
	lw x72, 1(x72)
	fmul x71, x71, x72
	fadd x70, x70, x71
	fmul x71, x7, x66
	lw x72, 4(x5)
	lw x72, 2(x72)
	fmul x71, x71, x72
	fadd x70, x70, x71
	lw x71, 3(x5)
	bne	x71, zero, pretrace_pixels_beqelse_b5010
# B5009
	mv x68, x70
	j pretrace_pixels_cont_b5011 # adhoc jump(2)
pretrace_pixels_beqelse_b5010:
# B5010
	fmul x71, x7, x65
	fmul x72, x69, x66
	fadd x71, x71, x72
	lw x72, 9(x5)
	lw x72, 0(x72)
	fmul x71, x71, x72
	fmul x72, x68, x66
	fmul x7, x7, x6
	fadd x7, x72, x7
	lw x72, 9(x5)
	lw x72, 1(x72)
	fmul x7, x7, x72
	fadd x7, x71, x7
	fmul x68, x68, x65
	fmul x69, x69, x6
	fadd x68, x68, x69
	lw x69, 9(x5)
	lw x69, 2(x69)
	fmul x68, x68, x69
	fadd x68, x7, x68
	fmul x68, x68, x33
	fadd x68, x70, x68
pretrace_pixels_cont_b5011:
# B5011
	fmul x69, x6, x6
	lw x7, 4(x5)
	lw x7, 0(x7)
	fmul x69, x69, x7
	fmul x7, x65, x65
	lw x70, 4(x5)
	lw x70, 1(x70)
	fmul x7, x7, x70
	fadd x69, x69, x7
	fmul x7, x66, x66
	lw x70, 4(x5)
	lw x70, 2(x70)
	fmul x7, x7, x70
	fadd x69, x69, x7
	lw x7, 3(x5)
	bne	x7, zero, pretrace_pixels_beqelse_b5013
# B5012
	mv x6, x69
	j pretrace_pixels_cont_b5014 # adhoc jump(2)
pretrace_pixels_beqelse_b5013:
# B5013
	fmul x7, x65, x66
	lw x70, 9(x5)
	lw x70, 0(x70)
	fmul x7, x7, x70
	fadd x69, x69, x7
	fmul x66, x66, x6
	lw x7, 9(x5)
	lw x7, 1(x7)
	fmul x66, x66, x7
	fadd x66, x69, x66
	fmul x6, x6, x65
	lw x65, 9(x5)
	lw x65, 2(x65)
	fmul x6, x6, x65
	fadd x6, x66, x6
pretrace_pixels_cont_b5014:
# B5014
	lw x65, 1(x5)
	li x66, 3
	bne	x65, x66, pretrace_pixels_beqelse_b5016
# B5015
	fsub x6, x6, x108
pretrace_pixels_beqelse_b5016:
# B5016
pretrace_pixels_cont_b5017:
# B5017
	fmul x65, x68, x68
	fmul x6, x67, x6
	fsub x6, x65, x6
	fle x65, x6, zero
	beq	x65, zero, pretrace_pixels_bneelse_b5019
# B5018
	mv x5, zero
	addi x27, x27, 1
	j pretrace_pixels_cont_b5024 # adhoc jump(2)
pretrace_pixels_bneelse_b5019:
# B5019
	fsqrt x6, x6
	lw x5, 6(x5)
	bne	x5, zero, pretrace_pixels_beqelse_b5021
# B5020
	fsub x5, zero, x6
	j pretrace_pixels_cont_b5022 # adhoc jump(2)
pretrace_pixels_beqelse_b5021:
# B5021
	mv x5, x6
pretrace_pixels_cont_b5022:
# B5022
	fsub x5, x5, x68
	fdiv x5, x5, x67
	sw x5, 0(x37)
	li x5, 1
	addi x27, x27, 1
pretrace_pixels_cont_b5025:
# B5025
	lw x6, 0(x37)
	fle x65, x6, zero
	bne	x65, zero, pretrace_pixels_beqelse_b5028
# B5029
	lw x65, 0(x20)
	fle x65, x65, x6
	bne	x65, zero, pretrace_pixels_beqelse_b5030
# B5031
	lui x65, 246333
	addi x65, x65, 1802
	fadd x6, x6, x65
	lw x65, 0(x40)
	fmul x65, x65, x6
	lw x66, 0(x11)
	fadd x65, x65, x66
	lw x66, 1(x40)
	fmul x66, x66, x6
	lw x67, 1(x11)
	fadd x66, x66, x67
	lw x67, 2(x40)
	fmul x67, x67, x6
	lw x68, 2(x11)
	fadd x67, x67, x68
	mv x70, x66
	mv x71, x67
	mv x7, x65
	mv x68, zero
	mv x69, x39
	j	pretrace_pixels_loop_b5032
pretrace_pixels_bneelse_b5059:	#moved
# B5059
	addi x68, x68, 1
pretrace_pixels_loop_b5032:
# B5032
	add x4, x69, x68
	lw x72, 0(x4)
	beq	x72, x28, pretrace_pixels_bneelse_b5033
# B5034
	add x4, x29, x72
	lw x72, 0(x4)
	lw x73, 5(x72)
	lw x73, 0(x73)
	fsub x73, x7, x73
	lw x74, 5(x72)
	lw x74, 1(x74)
	fsub x74, x70, x74
	lw x75, 5(x72)
	lw x75, 2(x75)
	fsub x75, x71, x75
	lw x76, 1(x72)
	bne	x76, x12, pretrace_pixels_beqelse_b5036
# B5035
	fabs x73, x73
	lw x76, 4(x72)
	lw x76, 0(x76)
	fle x73, x76, x73
	bne	x73, zero, pretrace_pixels_beqelse_b5037
# B5038
	fabs x73, x74
	lw x74, 4(x72)
	lw x74, 1(x74)
	fle x73, x74, x73
	bne	x73, zero, pretrace_pixels_beqelse_b5039
# B5040
	fabs x73, x75
	lw x74, 4(x72)
	lw x74, 2(x74)
	fle x73, x74, x73
	xori x73, x73, 1
	mv x74, x73
# B5041
	bne	x74, zero, pretrace_pixels_beqelse_b5043
	j pretrace_pixels_cont_b5042 # adhoc jump(3)
pretrace_pixels_beqelse_b5043:
# B5043
	lw x72, 6(x72)
	j pretrace_pixels_cont_b5058 # adhoc jump(2)
pretrace_pixels_beqelse_b5039:
# B5039
pretrace_pixels_beqelse_b5037:
# B5037
pretrace_pixels_cont_b5042:
# B5042
	lw x72, 6(x72)
	xori x72, x72, 1
	j pretrace_pixels_cont_b5058 # adhoc jump(2)
pretrace_pixels_beqelse_b5036:
# B5036
	bne	x76, x107, pretrace_pixels_beqelse_b5045
# B5044
	lw x76, 4(x72)
	lw x77, 0(x76)
	fmul x73, x77, x73
	lw x77, 1(x76)
	fmul x74, x77, x74
	fadd x73, x73, x74
	lw x74, 2(x76)
	fmul x74, x74, x75
	fadd x73, x73, x74
	lw x72, 6(x72)
	fle x73, zero, x73
	xori x73, x73, 1
	bne	x72, zero, pretrace_pixels_beqelse_b5047
# B5046
	mv x72, x73
	j pretrace_pixels_cont_b5048 # adhoc jump(2)
pretrace_pixels_beqelse_b5047:
# B5047
	xori x72, x73, 1
pretrace_pixels_cont_b5048:
# B5048
	xori x72, x72, 1
	j pretrace_pixels_cont_b5058 # adhoc jump(2)
pretrace_pixels_beqelse_b5045:
# B5045
	fmul x76, x73, x73
	lw x77, 4(x72)
	lw x77, 0(x77)
	fmul x76, x76, x77
	fmul x77, x74, x74
	lw x78, 4(x72)
	lw x78, 1(x78)
	fmul x77, x77, x78
	fadd x76, x76, x77
	fmul x77, x75, x75
	lw x78, 4(x72)
	lw x78, 2(x78)
	fmul x77, x77, x78
	fadd x76, x76, x77
	lw x77, 3(x72)
	bne	x77, zero, pretrace_pixels_beqelse_b5050
# B5049
	mv x73, x76
	j pretrace_pixels_cont_b5051 # adhoc jump(2)
pretrace_pixels_beqelse_b5050:
# B5050
	fmul x77, x74, x75
	lw x78, 9(x72)
	lw x78, 0(x78)
	fmul x77, x77, x78
	fadd x76, x76, x77
	fmul x75, x75, x73
	lw x77, 9(x72)
	lw x77, 1(x77)
	fmul x75, x75, x77
	fadd x75, x76, x75
	fmul x73, x73, x74
	lw x74, 9(x72)
	lw x74, 2(x74)
	fmul x73, x73, x74
	fadd x73, x75, x73
pretrace_pixels_cont_b5051:
# B5051
	lw x74, 1(x72)
	bne	x74, x34, pretrace_pixels_beqelse_b5053
# B5052
	fsub x73, x73, x108
pretrace_pixels_beqelse_b5053:
# B5053
pretrace_pixels_cont_b5054:
# B5054
	lw x72, 6(x72)
	fle x73, zero, x73
	xori x73, x73, 1
	bne	x72, zero, pretrace_pixels_beqelse_b5056
# B5055
	mv x72, x73
	j pretrace_pixels_cont_b5057 # adhoc jump(2)
pretrace_pixels_beqelse_b5056:
# B5056
	xori x72, x73, 1
pretrace_pixels_cont_b5057:
# B5057
	xori x72, x72, 1
pretrace_pixels_cont_b5058:
# B5058
	beq	x72, zero, pretrace_pixels_bneelse_b5059
# B5060
# B5062
	j pretrace_pixels_cont_b5064 # adhoc jump(2)
pretrace_pixels_bneelse_b5033:
# B5033
# B5063
	sw x6, 0(x20)
	sw x65, 0(x30)
	sw x66, 1(x30)
	sw x67, 2(x30)
	sw x23, 0(x31)
	sw x5, 0(x32)
pretrace_pixels_beqelse_b5030:
# B5030
pretrace_pixels_beqelse_b5028:
# B5028
pretrace_pixels_cont_b5064:
# B5064
	j	pretrace_pixels_loop_b4950
pretrace_pixels_beqelse_b5008:
# B5008
	mv x5, zero
	addi x27, x27, 1
pretrace_pixels_cont_b5024:
# B5024
	add x4, x29, x23
	lw x23, 0(x4)
	lw x23, 6(x23)
	bne	x23, zero, pretrace_pixels_beqelse_b5027
# B5026
pretrace_pixels_bneelse_b4951:
# B4951
pretrace_pixels_cont_b5065:
# B5065
	addi x35, x35, 1
	j	pretrace_pixels_loop_b4947
pretrace_pixels_bneelse_b4948:
# B4948
pretrace_pixels_beqelse_b4945:
# B4945
pretrace_pixels_beqelse_b4937:
# B4937
pretrace_pixels_beqelse_b4927:
# B4927
pretrace_pixels_cont_b4943:
# B4943
pretrace_pixels_cont_b5066:
# B5066
	addi x24, x24, 1
	j	pretrace_pixels_loop_b4748
pretrace_pixels_bneelse_b4749:
# B4749
# B5067
	lw x23, 0(x20)
	lui x24, 777421
	addi x24, x24, -819
	fle x25, x23, x24
	lui x26, 314348
	addi x26, x26, -992
	bne	x25, zero, pretrace_pixels_beqelse_b5068
# B5069
	fle x23, x26, x23
	xori x23, x23, 1
	mv x25, x23
# B5070
	bne	x25, zero, pretrace_pixels_beqelse_b5072
	j pretrace_pixels_cont_b5071 # adhoc jump(3)
pretrace_pixels_beqelse_b5072:
# B5072
	lw x23, 0(x31)
	add x4, x29, x23
	lw x25, 0(x4)
	lw x27, 2(x25)
	lw x28, 7(x25)
	lw x28, 0(x28)
	fmul x28, x28, x16
	lw x35, 1(x25)
	la x36, min_caml_nvector
	bne	x35, x12, pretrace_pixels_beqelse_b5078
# B5077
	lw x35, 0(x32)
	sw zero, 0(x36)
	sw zero, 1(x36)
	sw zero, 2(x36)
	addi x35, x35, -1
	add x4, x17, x35
	lw x37, 0(x4)
	feq x38, x37, zero
	bne	x38, zero, pretrace_pixels_beqelse_b5080
# B5079
	fle x37, x37, zero
	beq	x37, zero, pretrace_pixels_bneelse_b5082
# B5081
	mv x37, x13
	j pretrace_pixels_cont_b5083 # adhoc jump(2)
pretrace_pixels_bneelse_b5082:
# B5082
	mv x37, x108
	j pretrace_pixels_cont_b5083 # adhoc jump(2)
pretrace_pixels_beqelse_b5080:
# B5080
	mv x37, zero
pretrace_pixels_cont_b5083:
# B5083
	fsub x37, zero, x37
	add x4, x36, x35
	sw x37, 0(x4)
	j pretrace_pixels_cont_b5094 # adhoc jump(2)
pretrace_pixels_beqelse_b5078:
# B5078
	bne	x35, x107, pretrace_pixels_beqelse_b5085
# B5084
	lw x35, 4(x25)
	lw x35, 0(x35)
	fsub x35, zero, x35
	sw x35, 0(x36)
	lw x35, 4(x25)
	lw x35, 1(x35)
	fsub x35, zero, x35
	sw x35, 1(x36)
	lw x35, 4(x25)
	lw x35, 2(x35)
	fsub x35, zero, x35
	sw x35, 2(x36)
	j pretrace_pixels_cont_b5094 # adhoc jump(2)
pretrace_pixels_beqelse_b5085:
# B5085
	lw x35, 0(x30)
	lw x37, 5(x25)
	lw x37, 0(x37)
	fsub x35, x35, x37
	lw x37, 1(x30)
	lw x38, 5(x25)
	lw x38, 1(x38)
	fsub x37, x37, x38
	lw x38, 2(x30)
	lw x39, 5(x25)
	lw x39, 2(x39)
	fsub x38, x38, x39
	lw x39, 4(x25)
	lw x39, 0(x39)
	fmul x39, x35, x39
	lw x40, 4(x25)
	lw x40, 1(x40)
	fmul x40, x37, x40
	lw x5, 4(x25)
	lw x5, 2(x5)
	fmul x5, x38, x5
	lw x6, 3(x25)
	bne	x6, zero, pretrace_pixels_beqelse_b5087
# B5086
	sw x39, 0(x36)
	sw x40, 1(x36)
	sw x5, 2(x36)
	j pretrace_pixels_cont_b5088 # adhoc jump(2)
pretrace_pixels_beqelse_b5087:
# B5087
	lw x6, 9(x25)
	lw x6, 2(x6)
	fmul x6, x37, x6
	lw x65, 9(x25)
	lw x65, 1(x65)
	fmul x65, x38, x65
	fadd x6, x6, x65
	fmul x6, x6, x33
	fadd x39, x39, x6
	sw x39, 0(x36)
	lw x39, 9(x25)
	lw x39, 2(x39)
	fmul x39, x35, x39
	lw x6, 9(x25)
	lw x6, 0(x6)
	fmul x38, x38, x6
	fadd x38, x39, x38
	fmul x38, x38, x33
	fadd x38, x40, x38
	sw x38, 1(x36)
	lw x38, 9(x25)
	lw x38, 1(x38)
	fmul x35, x35, x38
	lw x38, 9(x25)
	lw x38, 0(x38)
	fmul x37, x37, x38
	fadd x35, x35, x37
	fmul x35, x35, x33
	fadd x35, x5, x35
	sw x35, 2(x36)
pretrace_pixels_cont_b5088:
# B5088
	lw x35, 6(x25)
	lw x37, 0(x36)
	fmul x37, x37, x37
	lw x38, 1(x36)
	fmul x38, x38, x38
	fadd x37, x37, x38
	lw x38, 2(x36)
	fmul x38, x38, x38
	fadd x37, x37, x38
	fsqrt x37, x37
	feq x38, x37, zero
	bne	x38, zero, pretrace_pixels_beqelse_b5090
# B5089
	bne	x35, zero, pretrace_pixels_beqelse_b5092
# B5091
	fdiv x35, x108, x37
	j pretrace_pixels_cont_b5093 # adhoc jump(2)
pretrace_pixels_beqelse_b5092:
# B5092
	fdiv x35, x13, x37
	j pretrace_pixels_cont_b5093 # adhoc jump(2)
pretrace_pixels_beqelse_b5090:
# B5090
	mv x35, x108
pretrace_pixels_cont_b5093:
# B5093
	lw x37, 0(x36)
	fmul x37, x37, x35
	sw x37, 0(x36)
	lw x37, 1(x36)
	fmul x37, x37, x35
	sw x37, 1(x36)
	lw x37, 2(x36)
	fmul x35, x37, x35
	sw x35, 2(x36)
pretrace_pixels_cont_b5094:
# B5094
	lw x35, 0(x30)
	sw x35, 0(x11)
	lw x35, 1(x30)
	sw x35, 1(x11)
	lw x35, 2(x30)
	sw x35, 2(x11)
	lw x35, 0(x25)
	la x37, min_caml_texture_color
	lw x38, 8(x25)
	lw x38, 0(x38)
	sw x38, 0(x37)
	lw x38, 8(x25)
	lw x38, 1(x38)
	sw x38, 1(x37)
	lw x38, 8(x25)
	lw x38, 2(x38)
	sw x38, 2(x37)
	lui x38, 266752
	bne	x35, x12, pretrace_pixels_beqelse_b5096
# B5095
	lw x34, 0(x30)
	lw x35, 5(x25)
	lw x35, 0(x35)
	fsub x34, x34, x35
	lui x35, 251085
	addi x35, x35, -819
	fmul x39, x34, x35
	floor x39, x39
	lui x40, 268800
	fmul x39, x39, x40
	fsub x34, x34, x39
	fle x34, x38, x34
	xori x34, x34, 1
	lw x39, 2(x30)
	lw x5, 5(x25)
	lw x5, 2(x5)
	fsub x39, x39, x5
	fmul x35, x39, x35
	floor x35, x35
	fmul x35, x35, x40
	fsub x35, x39, x35
	fle x35, x38, x35
	xori x35, x35, 1
	bne	x34, zero, pretrace_pixels_beqelse_b5098
# B5097
	bne	x35, zero, pretrace_pixels_beqelse_b5100
# B5099
	lui x34, 276464
	j pretrace_pixels_cont_b5103 # adhoc jump(2)
pretrace_pixels_beqelse_b5100:
# B5100
	mv x34, zero
	j pretrace_pixels_cont_b5103 # adhoc jump(2)
pretrace_pixels_beqelse_b5098:
# B5098
	bne	x35, zero, pretrace_pixels_beqelse_b5102
# B5101
	mv x34, zero
	j pretrace_pixels_cont_b5103 # adhoc jump(2)
pretrace_pixels_beqelse_b5102:
# B5102
	lui x34, 276464
pretrace_pixels_cont_b5103:
# B5103
	sw x34, 1(x37)
	j pretrace_pixels_cont_b5188 # adhoc jump(2)
pretrace_pixels_beqelse_b5096:
# B5096
	lui x39, 265361
	addi x39, x39, -37
	lui x40, 262144
	lui x5, 263313
	addi x5, x5, -37
	lui x6, 261265
	addi x6, x6, -37
	lui x65, 259217
	addi x65, x65, -37
	lui x66, 778923
	addi x66, x66, -1364
	lui x67, 245896
	addi x67, x67, 1638
	lui x68, 758998
	addi x68, x68, 1206
	lui x69, 782336
	lui x7, 250538
	addi x7, x7, 1929
	lui x70, 764728
	addi x70, x70, 262
	lui x71, 276464
	bne	x35, x107, pretrace_pixels_beqelse_b5105
# B5104
	lw x34, 1(x30)
	lui x35, 256000
	fmul x34, x34, x35
	fle x35, x34, zero
	xori x35, x35, 1
	fabs x34, x34
	mv x72, x39
	mv x38, x34
	j	pretrace_pixels_loop_b5106
pretrace_pixels_bneelse_b5107:	#moved
# B5107
	fmul x72, x72, x40
pretrace_pixels_loop_b5106:
# B5106
	fle x73, x38, x72
	beq	x73, zero, pretrace_pixels_bneelse_b5107
# B5108
# B5109
	mv x75, x72
	mv x74, x34
	j	pretrace_pixels_loop_b5110
pretrace_pixels_beqelse_b5114:	#moved
# B5114
	fdiv x75, x75, x40
pretrace_pixels_loop_b5110:
# B5110
	fle x34, x39, x74
	beq	x34, zero, pretrace_pixels_bneelse_b5111
# B5112
	fle x34, x74, x75
	bne	x34, zero, pretrace_pixels_beqelse_b5114
# B5113
	fsub x74, x74, x75
	fdiv x75, x75, x40
	j	pretrace_pixels_loop_b5110
pretrace_pixels_bneelse_b5111:
# B5111
# B5115
	fle x34, x5, x74
	bne	x34, zero, pretrace_pixels_beqelse_b5117
# B5116
	mv x38, x74
	j pretrace_pixels_cont_b5118 # adhoc jump(2)
pretrace_pixels_beqelse_b5117:
# B5117
	fsub x38, x74, x5
pretrace_pixels_cont_b5118:
# B5118
	bne	x34, zero, pretrace_pixels_beqelse_b5120
# B5119
	mv x34, x35
	j pretrace_pixels_cont_b5121 # adhoc jump(2)
pretrace_pixels_beqelse_b5120:
# B5120
	xori x34, x35, 1
pretrace_pixels_cont_b5121:
# B5121
	fle x35, x6, x38
	bne	x35, zero, pretrace_pixels_beqelse_b5123
# B5122
	mv x35, x38
	j pretrace_pixels_cont_b5124 # adhoc jump(2)
pretrace_pixels_beqelse_b5123:
# B5123
	fsub x35, x5, x38
pretrace_pixels_cont_b5124:
# B5124
	fle x38, x65, x35
	bne	x38, zero, pretrace_pixels_beqelse_b5126
# B5125
	fmul x38, x35, x35
	fmul x39, x38, x68
	fadd x39, x67, x39
	fmul x39, x38, x39
	fadd x39, x66, x39
	fmul x38, x38, x39
	fadd x38, x108, x38
	fmul x35, x35, x38
	j pretrace_pixels_cont_b5127 # adhoc jump(2)
pretrace_pixels_beqelse_b5126:
# B5126
	fsub x35, x6, x35
	fmul x35, x35, x35
	fmul x38, x35, x70
	fadd x38, x7, x38
	fmul x38, x35, x38
	fadd x38, x69, x38
	fmul x35, x35, x38
	fadd x35, x108, x35
pretrace_pixels_cont_b5127:
# B5127
	fle x38, x35, zero
	beq	x34, x38, pretrace_pixels_bneelse_b5129
# B5128
	mv x34, x35
	j pretrace_pixels_cont_b5130 # adhoc jump(2)
pretrace_pixels_bneelse_b5129:
# B5129
	fsub x34, zero, x35
pretrace_pixels_cont_b5130:
# B5130
	fmul x34, x34, x34
	fmul x35, x71, x34
	sw x35, 0(x37)
	fsub x34, x108, x34
	fmul x34, x71, x34
	sw x34, 1(x37)
	j pretrace_pixels_cont_b5188 # adhoc jump(2)
pretrace_pixels_beqelse_b5105:
# B5105
	lui x72, 263313
	addi x72, x72, -37
	bne	x35, x34, pretrace_pixels_beqelse_b5132
# B5131
	lw x34, 0(x30)
	lw x35, 5(x25)
	lw x35, 0(x35)
	fsub x34, x34, x35
	lw x35, 2(x30)
	lw x73, 5(x25)
	lw x73, 2(x73)
	fsub x35, x35, x73
	fmul x34, x34, x34
	fmul x35, x35, x35
	fadd x34, x34, x35
	fsqrt x34, x34
	fdiv x34, x34, x38
	floor x35, x34
	fsub x34, x34, x35
	fmul x34, x34, x72
	fabs x34, x34
	mv x35, x34
	mv x38, x39
	j	pretrace_pixels_loop_b5133
pretrace_pixels_bneelse_b5134:	#moved
# B5134
	fmul x38, x38, x40
pretrace_pixels_loop_b5133:
# B5133
	fle x72, x35, x38
	beq	x72, zero, pretrace_pixels_bneelse_b5134
# B5135
# B5136
	mv x74, x38
	mv x73, x34
	j	pretrace_pixels_loop_b5137
pretrace_pixels_beqelse_b5141:	#moved
# B5141
	fdiv x74, x74, x40
pretrace_pixels_loop_b5137:
# B5137
	fle x34, x39, x73
	beq	x34, zero, pretrace_pixels_bneelse_b5138
# B5139
	fle x34, x73, x74
	bne	x34, zero, pretrace_pixels_beqelse_b5141
# B5140
	fsub x73, x73, x74
	fdiv x74, x74, x40
	j	pretrace_pixels_loop_b5137
pretrace_pixels_bneelse_b5138:
# B5138
# B5142
	fle x34, x5, x73
	bne	x34, zero, pretrace_pixels_beqelse_b5144
# B5143
	mv x35, x73
	j pretrace_pixels_cont_b5145 # adhoc jump(2)
pretrace_pixels_beqelse_b5144:
# B5144
	fsub x35, x73, x5
pretrace_pixels_cont_b5145:
# B5145
	bne	x34, zero, pretrace_pixels_beqelse_b5147
# B5146
	mv x38, x12
	j pretrace_pixels_cont_b5148 # adhoc jump(2)
pretrace_pixels_beqelse_b5147:
# B5147
	mv x38, zero
pretrace_pixels_cont_b5148:
# B5148
	fle x34, x6, x35
	bne	x34, zero, pretrace_pixels_beqelse_b5150
# B5149
	j pretrace_pixels_cont_b5151 # adhoc jump(2)
pretrace_pixels_beqelse_b5150:
# B5150
	fsub x35, x5, x35
pretrace_pixels_cont_b5151:
# B5151
	bne	x34, zero, pretrace_pixels_beqelse_b5153
# B5152
	mv x34, x38
	j pretrace_pixels_cont_b5154 # adhoc jump(2)
pretrace_pixels_beqelse_b5153:
# B5153
	xori x34, x38, 1
pretrace_pixels_cont_b5154:
# B5154
	fle x38, x65, x35
	bne	x38, zero, pretrace_pixels_beqelse_b5156
# B5155
	fmul x35, x35, x35
	fmul x38, x35, x70
	fadd x38, x7, x38
	fmul x38, x35, x38
	fadd x38, x69, x38
	fmul x35, x35, x38
	fadd x35, x108, x35
	j pretrace_pixels_cont_b5157 # adhoc jump(2)
pretrace_pixels_beqelse_b5156:
# B5156
	fsub x35, x6, x35
	fmul x38, x35, x35
	fmul x39, x38, x68
	fadd x39, x67, x39
	fmul x39, x38, x39
	fadd x39, x66, x39
	fmul x38, x38, x39
	fadd x38, x108, x38
	fmul x35, x35, x38
pretrace_pixels_cont_b5157:
# B5157
	fle x38, x35, zero
	beq	x34, x38, pretrace_pixels_bneelse_b5159
# B5158
	mv x34, x35
	j pretrace_pixels_cont_b5160 # adhoc jump(2)
pretrace_pixels_bneelse_b5159:
# B5159
	fsub x34, zero, x35
pretrace_pixels_cont_b5160:
# B5160
	fmul x34, x34, x34
	fmul x35, x34, x71
	sw x35, 1(x37)
	fsub x34, x108, x34
	fmul x34, x34, x71
	sw x34, 2(x37)
	j pretrace_pixels_cont_b5188 # adhoc jump(2)
pretrace_pixels_beqelse_b5132:
# B5132
	bne	x35, x100, pretrace_pixels_beqelse_b5162
# B5161
	lw x34, 0(x30)
	lw x35, 5(x25)
	lw x35, 0(x35)
	fsub x34, x34, x35
	lw x35, 4(x25)
	lw x35, 0(x35)
	fsqrt x35, x35
	fmul x34, x34, x35
	lw x35, 2(x30)
	lw x38, 5(x25)
	lw x38, 2(x38)
	fsub x35, x35, x38
	lw x38, 4(x25)
	lw x38, 2(x38)
	fsqrt x38, x38
	fmul x35, x35, x38
	fmul x38, x34, x34
	fmul x39, x35, x35
	fadd x38, x38, x39
	fabs x39, x34
	lui x40, 232731
	addi x40, x40, 1815
	fle x39, x40, x39
	lui x5, 257536
	lui x66, 780971
	addi x66, x66, -1366
	lui x67, 255181
	addi x67, x67, -819
	lui x68, 778533
	addi x68, x68, -1755
	lui x69, 253497
	addi x69, x69, -456
	lui x7, 777085
	addi x7, x7, 1646
	lui x70, 251742
	addi x70, x70, 1989
	lui x73, 262592
	lui x74, 270080
	beq	x39, zero, pretrace_pixels_bneelse_b5164
# B5163
	fdiv x34, x35, x34
	fabs x34, x34
	fle x35, x34, zero
	xori x35, x35, 1
	fabs x39, x34
	fle x75, x5, x39
	bne	x75, zero, pretrace_pixels_beqelse_b5166
# B5165
	fmul x35, x34, x34
	fmul x39, x35, x70
	fadd x39, x7, x39
	fmul x39, x35, x39
	fadd x39, x69, x39
	fmul x39, x35, x39
	fadd x39, x68, x39
	fmul x39, x35, x39
	fadd x39, x67, x39
	fmul x39, x35, x39
	fadd x39, x66, x39
	fmul x35, x35, x39
	fadd x35, x108, x35
	fmul x34, x34, x35
	j pretrace_pixels_cont_b5172 # adhoc jump(2)
pretrace_pixels_beqelse_b5166:
# B5166
	fle x34, x73, x39
	bne	x34, zero, pretrace_pixels_beqelse_b5168
# B5167
	fsub x34, x39, x108
	fadd x39, x39, x108
	fdiv x34, x34, x39
	fmul x39, x34, x34
	fmul x75, x39, x70
	fadd x75, x7, x75
	fmul x75, x39, x75
	fadd x75, x69, x75
	fmul x75, x39, x75
	fadd x75, x68, x75
	fmul x75, x39, x75
	fadd x75, x67, x75
	fmul x75, x39, x75
	fadd x75, x66, x75
	fmul x39, x39, x75
	fadd x39, x108, x39
	fmul x34, x34, x39
	fadd x34, x65, x34
	j pretrace_pixels_cont_b5169 # adhoc jump(2)
pretrace_pixels_beqelse_b5168:
# B5168
	fdiv x34, x108, x39
	fmul x39, x34, x34
	fmul x75, x39, x70
	fadd x75, x7, x75
	fmul x75, x39, x75
	fadd x75, x69, x75
	fmul x75, x39, x75
	fadd x75, x68, x75
	fmul x75, x39, x75
	fadd x75, x67, x75
	fmul x75, x39, x75
	fadd x75, x66, x75
	fmul x39, x39, x75
	fadd x39, x108, x39
	fmul x34, x34, x39
	fsub x34, x6, x34
pretrace_pixels_cont_b5169:
# B5169
	bne	x35, zero, pretrace_pixels_beqelse_b5171
# B5170
	fsub x34, zero, x34
pretrace_pixels_beqelse_b5171:
# B5171
pretrace_pixels_cont_b5172:
# B5172
	fmul x34, x34, x74
	fdiv x34, x34, x72
	j pretrace_pixels_cont_b5173 # adhoc jump(2)
pretrace_pixels_bneelse_b5164:
# B5164
	lui x34, 268032
pretrace_pixels_cont_b5173:
# B5173
	floor x35, x34
	fsub x34, x34, x35
	lw x35, 1(x30)
	lw x39, 5(x25)
	lw x39, 1(x39)
	fsub x35, x35, x39
	lw x39, 4(x25)
	lw x39, 1(x39)
	fsqrt x39, x39
	fmul x35, x35, x39
	fabs x39, x38
	fle x39, x40, x39
	beq	x39, zero, pretrace_pixels_bneelse_b5175
# B5174
	fdiv x35, x35, x38
	fabs x35, x35
	fle x38, x35, zero
	xori x38, x38, 1
	fabs x39, x35
	fle x40, x5, x39
	bne	x40, zero, pretrace_pixels_beqelse_b5177
# B5176
	fmul x38, x35, x35
	fmul x39, x38, x70
	fadd x39, x7, x39
	fmul x39, x38, x39
	fadd x39, x69, x39
	fmul x39, x38, x39
	fadd x39, x68, x39
	fmul x39, x38, x39
	fadd x39, x67, x39
	fmul x39, x38, x39
	fadd x39, x66, x39
	fmul x38, x38, x39
	fadd x38, x108, x38
	fmul x35, x35, x38
	j pretrace_pixels_cont_b5183 # adhoc jump(2)
pretrace_pixels_beqelse_b5177:
# B5177
	fle x35, x73, x39
	bne	x35, zero, pretrace_pixels_beqelse_b5179
# B5178
	fsub x35, x39, x108
	fadd x39, x39, x108
	fdiv x35, x35, x39
	fmul x39, x35, x35
	fmul x40, x39, x70
	fadd x40, x7, x40
	fmul x40, x39, x40
	fadd x40, x69, x40
	fmul x40, x39, x40
	fadd x40, x68, x40
	fmul x40, x39, x40
	fadd x40, x67, x40
	fmul x40, x39, x40
	fadd x40, x66, x40
	fmul x39, x39, x40
	fadd x39, x108, x39
	fmul x35, x35, x39
	fadd x35, x65, x35
	j pretrace_pixels_cont_b5180 # adhoc jump(2)
pretrace_pixels_beqelse_b5179:
# B5179
	fdiv x35, x108, x39
	fmul x39, x35, x35
	fmul x40, x39, x70
	fadd x40, x7, x40
	fmul x40, x39, x40
	fadd x40, x69, x40
	fmul x40, x39, x40
	fadd x40, x68, x40
	fmul x40, x39, x40
	fadd x40, x67, x40
	fmul x40, x39, x40
	fadd x40, x66, x40
	fmul x39, x39, x40
	fadd x39, x108, x39
	fmul x35, x35, x39
	fsub x35, x6, x35
pretrace_pixels_cont_b5180:
# B5180
	bne	x38, zero, pretrace_pixels_beqelse_b5182
# B5181
	fsub x35, zero, x35
pretrace_pixels_beqelse_b5182:
# B5182
pretrace_pixels_cont_b5183:
# B5183
	fmul x35, x35, x74
	fdiv x35, x35, x72
	j pretrace_pixels_cont_b5184 # adhoc jump(2)
pretrace_pixels_bneelse_b5175:
# B5175
	lui x35, 268032
pretrace_pixels_cont_b5184:
# B5184
	floor x38, x35
	fsub x35, x35, x38
	lui x38, 254362
	addi x38, x38, -1638
	fsub x34, x33, x34
	fmul x34, x34, x34
	fsub x34, x38, x34
	fsub x35, x33, x35
	fmul x35, x35, x35
	fsub x34, x34, x35
	fle x35, zero, x34
	beq	x35, zero, pretrace_pixels_bneelse_b5186
# B5185
	mv x38, x34
	j pretrace_pixels_cont_b5187 # adhoc jump(2)
pretrace_pixels_bneelse_b5186:
# B5186
	mv x38, zero
pretrace_pixels_cont_b5187:
# B5187
	fmul x34, x71, x38
	lui x35, 256410
	addi x35, x35, -1638
	fdiv x34, x34, x35
	sw x34, 2(x37)
pretrace_pixels_beqelse_b5162:
# B5162
pretrace_pixels_cont_b5188:
# B5188
	slli x23, x23, 2
	lw x34, 0(x32)
	add x23, x23, x34
	add x4, x14, x15
	sw x23, 0(x4)
	lw x23, 1(x18)
	add x4, x23, x15
	lw x23, 0(x4)
	lw x34, 0(x30)
	sw x34, 0(x23)
	lw x34, 1(x30)
	sw x34, 1(x23)
	lw x34, 2(x30)
	sw x34, 2(x23)
	lw x23, 3(x18)
	lw x34, 7(x25)
	lw x34, 0(x34)
	fle x33, x33, x34
	beq	x33, zero, pretrace_pixels_bneelse_b5190
# B5189
	add x4, x23, x15
	sw x12, 0(x4)
	lw x23, 4(x18)
	add x4, x23, x15
	lw x33, 0(x4)
	lw x34, 0(x37)
	sw x34, 0(x33)
	lw x34, 1(x37)
	sw x34, 1(x33)
	lw x34, 2(x37)
	sw x34, 2(x33)
	add x4, x23, x15
	lw x23, 0(x4)
	lui x33, 276480
	fdiv x33, x108, x33
	fmul x33, x33, x28
	lw x34, 0(x23)
	fmul x34, x34, x33
	sw x34, 0(x23)
	lw x34, 1(x23)
	fmul x34, x34, x33
	sw x34, 1(x23)
	lw x34, 2(x23)
	fmul x33, x34, x33
	sw x33, 2(x23)
	lw x23, 7(x18)
	add x4, x23, x15
	lw x23, 0(x4)
	lw x33, 0(x36)
	sw x33, 0(x23)
	lw x33, 1(x36)
	sw x33, 1(x23)
	lw x33, 2(x36)
	sw x33, 2(x23)
	j pretrace_pixels_cont_b5191 # adhoc jump(2)
pretrace_pixels_bneelse_b5190:
# B5190
	add x4, x23, x15
	sw zero, 0(x4)
pretrace_pixels_cont_b5191:
# B5191
	lui x23, 786432
	lw x33, 0(x17)
	lw x34, 0(x36)
	fmul x33, x33, x34
	lw x34, 1(x17)
	lw x35, 1(x36)
	fmul x34, x34, x35
	fadd x33, x33, x34
	lw x34, 2(x17)
	lw x35, 2(x36)
	fmul x34, x34, x35
	fadd x33, x33, x34
	fmul x23, x23, x33
	lw x33, 0(x17)
	lw x34, 0(x36)
	fmul x34, x23, x34
	fadd x33, x33, x34
	sw x33, 0(x17)
	lw x33, 1(x17)
	lw x34, 1(x36)
	fmul x34, x23, x34
	fadd x33, x33, x34
	sw x33, 1(x17)
	lw x33, 2(x17)
	lw x34, 2(x36)
	fmul x23, x23, x34
	fadd x23, x33, x23
	sw x23, 2(x17)
	lw x23, 7(x25)
	lw x23, 1(x23)
	fmul x23, x16, x23
	lw x33, 0(x22)
	mv x35, x33
	mv x34, zero
pretrace_pixels_loop_b5192:
# B5192
	add x4, x35, x34
	lw x33, 0(x4)
	lw x38, 0(x33)
	li x39, -1
	la x40, min_caml_light
	beq	x38, x39, pretrace_pixels_bneelse_b5193
# B5194
	li x5, 99
	bne	x38, x5, pretrace_pixels_beqelse_b5196
# B5195
	addi x34, x34, 1
	j pretrace_pixels_cont_b5336 # adhoc jump(2)
pretrace_pixels_beqelse_b5196:
# B5196
	la x5, min_caml_light_dirvec
	add x4, x29, x38
	lw x6, 0(x4)
	lw x65, 0(x30)
	lw x66, 5(x6)
	lw x66, 0(x66)
	fsub x65, x65, x66
	lw x66, 1(x30)
	lw x67, 5(x6)
	lw x67, 1(x67)
	fsub x66, x66, x67
	lw x67, 2(x30)
	lw x68, 5(x6)
	lw x68, 2(x68)
	fsub x67, x67, x68
	lw x68, 1(x5)
	add x4, x68, x38
	lw x38, 0(x4)
	lw x68, 1(x6)
	bne	x68, x12, pretrace_pixels_beqelse_b5198
# B5197
	lw x68, 0(x5)
	lw x69, 0(x38)
	fsub x69, x69, x65
	lw x7, 1(x38)
	fmul x69, x69, x7
	lw x7, 1(x68)
	fmul x7, x69, x7
	fadd x7, x7, x66
	fabs x7, x7
	lw x70, 4(x6)
	lw x70, 1(x70)
	fle x7, x70, x7
	bne	x7, zero, pretrace_pixels_beqelse_b5199
# B5200
	lw x7, 2(x68)
	fmul x7, x69, x7
	fadd x7, x7, x67
	fabs x7, x7
	lw x70, 4(x6)
	lw x70, 2(x70)
	fle x7, x70, x7
	bne	x7, zero, pretrace_pixels_beqelse_b5201
# B5202
	lw x7, 1(x38)
	feq x7, x7, zero
	xori x7, x7, 1
	mv x70, x7
# B5203
	bne	x70, zero, pretrace_pixels_beqelse_b5205
	j pretrace_pixels_cont_b5204 # adhoc jump(3)
pretrace_pixels_beqelse_b5205:
# B5205
	la x38, min_caml_solver_dist
	sw x69, 0(x38)
	j pretrace_pixels_cont_b5239 # adhoc jump(2)
pretrace_pixels_beqelse_b5201:
# B5201
pretrace_pixels_beqelse_b5199:
# B5199
pretrace_pixels_cont_b5204:
# B5204
	lw x69, 2(x38)
	fsub x69, x69, x66
	lw x7, 3(x38)
	fmul x69, x69, x7
	lw x7, 0(x68)
	fmul x7, x69, x7
	fadd x7, x7, x65
	fabs x7, x7
	lw x70, 4(x6)
	lw x70, 0(x70)
	fle x7, x70, x7
	bne	x7, zero, pretrace_pixels_beqelse_b5206
# B5207
	lw x7, 2(x68)
	fmul x7, x69, x7
	fadd x7, x7, x67
	fabs x7, x7
	lw x70, 4(x6)
	lw x70, 2(x70)
	fle x7, x70, x7
	bne	x7, zero, pretrace_pixels_beqelse_b5208
# B5209
	lw x7, 3(x38)
	feq x7, x7, zero
	xori x7, x7, 1
	mv x70, x7
# B5210
	bne	x70, zero, pretrace_pixels_beqelse_b5212
	j pretrace_pixels_cont_b5211 # adhoc jump(3)
pretrace_pixels_beqelse_b5212:
# B5212
	la x38, min_caml_solver_dist
	sw x69, 0(x38)
	j pretrace_pixels_cont_b5239 # adhoc jump(2)
pretrace_pixels_beqelse_b5208:
# B5208
pretrace_pixels_beqelse_b5206:
# B5206
pretrace_pixels_cont_b5211:
# B5211
	lw x69, 4(x38)
	fsub x67, x69, x67
	lw x69, 5(x38)
	fmul x67, x67, x69
	lw x69, 0(x68)
	fmul x69, x67, x69
	fadd x65, x69, x65
	fabs x65, x65
	lw x69, 4(x6)
	lw x69, 0(x69)
	fle x65, x69, x65
	bne	x65, zero, pretrace_pixels_beqelse_b5213
# B5214
	lw x65, 1(x68)
	fmul x65, x67, x65
	fadd x65, x65, x66
	fabs x65, x65
	lw x6, 4(x6)
	lw x6, 1(x6)
	fle x6, x6, x65
	bne	x6, zero, pretrace_pixels_beqelse_b5215
# B5216
	lw x38, 5(x38)
	feq x38, x38, zero
	xori x38, x38, 1
	mv x6, x38
# B5217
	bne	x6, zero, pretrace_pixels_beqelse_b5219
	j pretrace_pixels_cont_b5218 # adhoc jump(3)
pretrace_pixels_beqelse_b5219:
# B5219
	la x38, min_caml_solver_dist
	sw x67, 0(x38)
	j pretrace_pixels_cont_b5239 # adhoc jump(2)
pretrace_pixels_beqelse_b5215:
# B5215
pretrace_pixels_beqelse_b5213:
# B5213
pretrace_pixels_cont_b5218:
# B5218
	j pretrace_pixels_cont_b5238 # adhoc jump(2)
pretrace_pixels_beqelse_b5198:
# B5198
	bne	x68, x107, pretrace_pixels_beqelse_b5221
# B5220
	lw x6, 0(x38)
	fle x6, zero, x6
	bne	x6, zero, pretrace_pixels_beqelse_b5222
# B5223
	la x6, min_caml_solver_dist
	lw x68, 1(x38)
	fmul x65, x68, x65
	lw x68, 2(x38)
	fmul x66, x68, x66
	fadd x65, x65, x66
	lw x38, 3(x38)
	fmul x38, x38, x67
	fadd x38, x65, x38
	sw x38, 0(x6)
	j pretrace_pixels_cont_b5239 # adhoc jump(2)
pretrace_pixels_beqelse_b5222:
# B5222
	j pretrace_pixels_cont_b5238 # adhoc jump(2)
pretrace_pixels_beqelse_b5221:
# B5221
	lw x68, 0(x38)
	feq x69, x68, zero
	bne	x69, zero, pretrace_pixels_beqelse_b5225
# B5224
	lw x69, 1(x38)
	fmul x69, x69, x65
	lw x7, 2(x38)
	fmul x7, x7, x66
	fadd x69, x69, x7
	li x7, 3
	lw x70, 3(x38)
	fmul x70, x70, x67
	fadd x69, x69, x70
	fmul x70, x65, x65
	lw x71, 4(x6)
	lw x71, 0(x71)
	fmul x70, x70, x71
	fmul x71, x66, x66
	lw x72, 4(x6)
	lw x72, 1(x72)
	fmul x71, x71, x72
	fadd x70, x70, x71
	fmul x71, x67, x67
	lw x72, 4(x6)
	lw x72, 2(x72)
	fmul x71, x71, x72
	fadd x70, x70, x71
	lw x71, 3(x6)
	bne	x71, zero, pretrace_pixels_beqelse_b5227
# B5226
	mv x65, x70
	j pretrace_pixels_cont_b5228 # adhoc jump(2)
pretrace_pixels_beqelse_b5227:
# B5227
	fmul x71, x66, x67
	lw x72, 9(x6)
	lw x72, 0(x72)
	fmul x71, x71, x72
	fadd x70, x70, x71
	fmul x67, x67, x65
	lw x71, 9(x6)
	lw x71, 1(x71)
	fmul x67, x67, x71
	fadd x67, x70, x67
	fmul x65, x65, x66
	lw x66, 9(x6)
	lw x66, 2(x66)
	fmul x65, x65, x66
	fadd x65, x67, x65
pretrace_pixels_cont_b5228:
# B5228
	lw x66, 1(x6)
	bne	x66, x7, pretrace_pixels_beqelse_b5230
# B5229
	fsub x65, x65, x108
pretrace_pixels_beqelse_b5230:
# B5230
pretrace_pixels_cont_b5231:
# B5231
	fmul x66, x69, x69
	fmul x65, x68, x65
	fsub x65, x66, x65
	fle x66, x65, zero
	bne	x66, zero, pretrace_pixels_beqelse_b5232
# B5233
	lw x6, 6(x6)
	bne	x6, zero, pretrace_pixels_beqelse_b5235
# B5234
	la x6, min_caml_solver_dist
	fsqrt x65, x65
	fsub x65, x69, x65
	lw x38, 4(x38)
	fmul x38, x65, x38
	sw x38, 0(x6)
	j pretrace_pixels_cont_b5236 # adhoc jump(2)
pretrace_pixels_beqelse_b5235:
# B5235
	la x6, min_caml_solver_dist
	fsqrt x65, x65
	fadd x65, x69, x65
	lw x38, 4(x38)
	fmul x38, x65, x38
	sw x38, 0(x6)
pretrace_pixels_cont_b5236:
# B5236
pretrace_pixels_cont_b5239:
# B5239
	la x38, min_caml_solver_dist
	lw x6, 0(x38)
	fle x6, x24, x6
	beq	x6, zero, pretrace_pixels_bneelse_b5241
# B5240
	addi x34, x34, 1
	j pretrace_pixels_cont_b5335 # adhoc jump(2)
pretrace_pixels_bneelse_b5241:
# B5241
	mv x65, x12
	mv x66, x33
pretrace_pixels_loop_b5242:
# B5242
	add x4, x66, x65
	lw x6, 0(x4)
	beq	x6, x39, pretrace_pixels_bneelse_b5243
# B5244
	la x67, min_caml_and_net
	add x4, x67, x6
	lw x6, 0(x4)
	mv x67, zero
	mv x68, x6
pretrace_pixels_loop_b5245:
# B5245
	add x4, x68, x67
	lw x6, 0(x4)
	beq	x6, x39, pretrace_pixels_bneelse_b5246
# B5247
	add x4, x68, x67
	lw x6, 0(x4)
	add x4, x29, x6
	lw x69, 0(x4)
	lw x7, 0(x30)
	lw x70, 5(x69)
	lw x70, 0(x70)
	fsub x7, x7, x70
	lw x70, 1(x30)
	lw x71, 5(x69)
	lw x71, 1(x71)
	fsub x70, x70, x71
	lw x71, 2(x30)
	lw x72, 5(x69)
	lw x72, 2(x72)
	fsub x71, x71, x72
	lw x72, 1(x5)
	add x4, x72, x6
	lw x72, 0(x4)
	lw x73, 1(x69)
	bne	x73, x12, pretrace_pixels_beqelse_b5249
# B5248
	lw x73, 0(x5)
	lw x74, 0(x72)
	fsub x74, x74, x7
	lw x75, 1(x72)
	fmul x74, x74, x75
	lw x75, 1(x73)
	fmul x75, x74, x75
	fadd x75, x75, x70
	fabs x75, x75
	lw x76, 4(x69)
	lw x76, 1(x76)
	fle x75, x76, x75
	bne	x75, zero, pretrace_pixels_beqelse_b5250
# B5251
	lw x75, 2(x73)
	fmul x75, x74, x75
	fadd x75, x75, x71
	fabs x75, x75
	lw x76, 4(x69)
	lw x76, 2(x76)
	fle x75, x76, x75
	bne	x75, zero, pretrace_pixels_beqelse_b5252
# B5253
	lw x75, 1(x72)
	feq x75, x75, zero
	xori x75, x75, 1
	mv x76, x75
# B5254
	bne	x76, zero, pretrace_pixels_beqelse_b5256
	j pretrace_pixels_cont_b5255 # adhoc jump(3)
pretrace_pixels_beqelse_b5256:
# B5256
	sw x74, 0(x38)
	lw x7, 0(x38)
	j pretrace_pixels_cont_b5290 # adhoc jump(2)
pretrace_pixels_beqelse_b5252:
# B5252
pretrace_pixels_beqelse_b5250:
# B5250
pretrace_pixels_cont_b5255:
# B5255
	lw x74, 2(x72)
	fsub x74, x74, x70
	lw x75, 3(x72)
	fmul x74, x74, x75
	lw x75, 0(x73)
	fmul x75, x74, x75
	fadd x75, x75, x7
	fabs x75, x75
	lw x76, 4(x69)
	lw x76, 0(x76)
	fle x75, x76, x75
	bne	x75, zero, pretrace_pixels_beqelse_b5257
# B5258
	lw x75, 2(x73)
	fmul x75, x74, x75
	fadd x75, x75, x71
	fabs x75, x75
	lw x76, 4(x69)
	lw x76, 2(x76)
	fle x75, x76, x75
	bne	x75, zero, pretrace_pixels_beqelse_b5259
# B5260
	lw x75, 3(x72)
	feq x75, x75, zero
	xori x75, x75, 1
	mv x76, x75
# B5261
	bne	x76, zero, pretrace_pixels_beqelse_b5263
	j pretrace_pixels_cont_b5262 # adhoc jump(3)
pretrace_pixels_beqelse_b5263:
# B5263
	sw x74, 0(x38)
	lw x7, 0(x38)
	j pretrace_pixels_cont_b5290 # adhoc jump(2)
pretrace_pixels_beqelse_b5259:
# B5259
pretrace_pixels_beqelse_b5257:
# B5257
pretrace_pixels_cont_b5262:
# B5262
	lw x74, 4(x72)
	fsub x71, x74, x71
	lw x74, 5(x72)
	fmul x71, x71, x74
	lw x74, 0(x73)
	fmul x74, x71, x74
	fadd x7, x74, x7
	fabs x7, x7
	lw x74, 4(x69)
	lw x74, 0(x74)
	fle x7, x74, x7
	bne	x7, zero, pretrace_pixels_beqelse_b5264
# B5265
	lw x7, 1(x73)
	fmul x7, x71, x7
	fadd x7, x7, x70
	fabs x7, x7
	lw x69, 4(x69)
	lw x69, 1(x69)
	fle x69, x69, x7
	bne	x69, zero, pretrace_pixels_beqelse_b5266
# B5267
	lw x69, 5(x72)
	feq x69, x69, zero
	xori x69, x69, 1
	mv x7, x69
# B5268
	bne	x7, zero, pretrace_pixels_beqelse_b5270
	j pretrace_pixels_cont_b5269 # adhoc jump(3)
pretrace_pixels_beqelse_b5270:
# B5270
	sw x71, 0(x38)
	lw x7, 0(x38)
	j pretrace_pixels_cont_b5290 # adhoc jump(2)
pretrace_pixels_beqelse_b5266:
# B5266
pretrace_pixels_beqelse_b5264:
# B5264
pretrace_pixels_cont_b5269:
# B5269
	lw x7, 0(x38)
	j pretrace_pixels_cont_b5289 # adhoc jump(2)
pretrace_pixels_beqelse_b5249:
# B5249
	bne	x73, x107, pretrace_pixels_beqelse_b5272
# B5271
	lw x69, 0(x72)
	fle x69, zero, x69
	beq	x69, zero, pretrace_pixels_bneelse_b5274
# B5273
	lw x7, 0(x38)
	j pretrace_pixels_cont_b5289 # adhoc jump(2)
pretrace_pixels_bneelse_b5274:
# B5274
	lw x69, 1(x72)
	fmul x69, x69, x7
	lw x7, 2(x72)
	fmul x7, x7, x70
	fadd x69, x69, x7
	lw x7, 3(x72)
	fmul x7, x7, x71
	fadd x69, x69, x7
	sw x69, 0(x38)
	lw x7, 0(x38)
	j pretrace_pixels_cont_b5290 # adhoc jump(2)
pretrace_pixels_beqelse_b5272:
# B5272
	lw x73, 0(x72)
	feq x74, x73, zero
	bne	x74, zero, pretrace_pixels_beqelse_b5276
# B5275
	lw x74, 1(x72)
	fmul x74, x74, x7
	lw x75, 2(x72)
	fmul x75, x75, x70
	fadd x74, x74, x75
	li x75, 3
	lw x76, 3(x72)
	fmul x76, x76, x71
	fadd x74, x74, x76
	fmul x76, x7, x7
	lw x77, 4(x69)
	lw x77, 0(x77)
	fmul x76, x76, x77
	fmul x77, x70, x70
	lw x78, 4(x69)
	lw x78, 1(x78)
	fmul x77, x77, x78
	fadd x76, x76, x77
	fmul x77, x71, x71
	lw x78, 4(x69)
	lw x78, 2(x78)
	fmul x77, x77, x78
	fadd x76, x76, x77
	lw x77, 3(x69)
	bne	x77, zero, pretrace_pixels_beqelse_b5278
# B5277
	mv x7, x76
	j pretrace_pixels_cont_b5279 # adhoc jump(2)
pretrace_pixels_beqelse_b5278:
# B5278
	fmul x77, x70, x71
	lw x78, 9(x69)
	lw x78, 0(x78)
	fmul x77, x77, x78
	fadd x76, x76, x77
	fmul x71, x71, x7
	lw x77, 9(x69)
	lw x77, 1(x77)
	fmul x71, x71, x77
	fadd x71, x76, x71
	fmul x7, x7, x70
	lw x70, 9(x69)
	lw x70, 2(x70)
	fmul x7, x7, x70
	fadd x7, x71, x7
pretrace_pixels_cont_b5279:
# B5279
	lw x70, 1(x69)
	bne	x70, x75, pretrace_pixels_beqelse_b5281
# B5280
	fsub x7, x7, x108
pretrace_pixels_beqelse_b5281:
# B5281
pretrace_pixels_cont_b5282:
# B5282
	fmul x70, x74, x74
	fmul x7, x73, x7
	fsub x7, x70, x7
	fle x70, x7, zero
	beq	x70, zero, pretrace_pixels_bneelse_b5284
# B5283
	lw x7, 0(x38)
	j pretrace_pixels_cont_b5289 # adhoc jump(2)
pretrace_pixels_bneelse_b5284:
# B5284
	lw x69, 6(x69)
	bne	x69, zero, pretrace_pixels_beqelse_b5286
# B5285
	fsqrt x69, x7
	fsub x69, x74, x69
	lw x7, 4(x72)
	fmul x69, x69, x7
	sw x69, 0(x38)
	j pretrace_pixels_cont_b5287 # adhoc jump(2)
pretrace_pixels_beqelse_b5286:
# B5286
	fsqrt x69, x7
	fadd x69, x74, x69
	lw x7, 4(x72)
	fmul x69, x69, x7
	sw x69, 0(x38)
pretrace_pixels_cont_b5287:
# B5287
	lw x7, 0(x38)
pretrace_pixels_cont_b5290:
# B5290
	lui x69, 779469
	addi x69, x69, -819
	fle x69, x69, x7
	xori x69, x69, 1
# B5291
	addi x67, x67, 1
	bne	x69, zero, pretrace_pixels_beqelse_b5293
	j pretrace_pixels_cont_b5292 # adhoc jump(3)
pretrace_pixels_beqelse_b5293:
# B5293
	lui x6, 246333
	addi x6, x6, 1802
	fadd x6, x7, x6
	la x69, min_caml_light
	lw x7, 0(x69)
	fmul x7, x7, x6
	lw x70, 0(x30)
	fadd x7, x7, x70
	lw x70, 1(x69)
	fmul x70, x70, x6
	lw x71, 1(x30)
	fadd x70, x70, x71
	lw x69, 2(x69)
	fmul x6, x69, x6
	lw x69, 2(x30)
	fadd x6, x6, x69
	mv x73, x70
	mv x72, x7
	mv x74, x6
	mv x71, x68
	mv x69, zero
	j	pretrace_pixels_loop_b5296
pretrace_pixels_bneelse_b5323:	#moved
# B5323
	addi x69, x69, 1
pretrace_pixels_loop_b5296:
# B5296
	add x4, x71, x69
	lw x6, 0(x4)
	beq	x6, x39, pretrace_pixels_bneelse_b5297
# B5298
	add x4, x29, x6
	lw x6, 0(x4)
	lw x7, 5(x6)
	lw x7, 0(x7)
	fsub x7, x72, x7
	lw x70, 5(x6)
	lw x70, 1(x70)
	fsub x70, x73, x70
	lw x75, 5(x6)
	lw x75, 2(x75)
	fsub x75, x74, x75
	lw x76, 1(x6)
	bne	x76, x12, pretrace_pixels_beqelse_b5300
# B5299
	fabs x7, x7
	lw x76, 4(x6)
	lw x76, 0(x76)
	fle x7, x76, x7
	bne	x7, zero, pretrace_pixels_beqelse_b5301
# B5302
	fabs x7, x70
	lw x70, 4(x6)
	lw x70, 1(x70)
	fle x7, x70, x7
	bne	x7, zero, pretrace_pixels_beqelse_b5303
# B5304
	fabs x7, x75
	lw x70, 4(x6)
	lw x70, 2(x70)
	fle x7, x70, x7
	xori x7, x7, 1
	mv x70, x7
# B5305
	bne	x70, zero, pretrace_pixels_beqelse_b5307
	j pretrace_pixels_cont_b5306 # adhoc jump(3)
pretrace_pixels_beqelse_b5307:
# B5307
	lw x6, 6(x6)
	j pretrace_pixels_cont_b5322 # adhoc jump(2)
pretrace_pixels_beqelse_b5303:
# B5303
pretrace_pixels_beqelse_b5301:
# B5301
pretrace_pixels_cont_b5306:
# B5306
	lw x6, 6(x6)
	xori x6, x6, 1
	j pretrace_pixels_cont_b5322 # adhoc jump(2)
pretrace_pixels_beqelse_b5300:
# B5300
	bne	x76, x107, pretrace_pixels_beqelse_b5309
# B5308
	lw x76, 4(x6)
	lw x77, 0(x76)
	fmul x7, x77, x7
	lw x77, 1(x76)
	fmul x70, x77, x70
	fadd x7, x7, x70
	lw x70, 2(x76)
	fmul x70, x70, x75
	fadd x7, x7, x70
	lw x6, 6(x6)
	fle x7, zero, x7
	xori x7, x7, 1
	bne	x6, zero, pretrace_pixels_beqelse_b5311
# B5310
	mv x6, x7
	j pretrace_pixels_cont_b5312 # adhoc jump(2)
pretrace_pixels_beqelse_b5311:
# B5311
	xori x6, x7, 1
pretrace_pixels_cont_b5312:
# B5312
	xori x6, x6, 1
	j pretrace_pixels_cont_b5322 # adhoc jump(2)
pretrace_pixels_beqelse_b5309:
# B5309
	fmul x76, x7, x7
	lw x77, 4(x6)
	lw x77, 0(x77)
	fmul x76, x76, x77
	fmul x77, x70, x70
	lw x78, 4(x6)
	lw x78, 1(x78)
	fmul x77, x77, x78
	fadd x76, x76, x77
	fmul x77, x75, x75
	lw x78, 4(x6)
	lw x78, 2(x78)
	fmul x77, x77, x78
	fadd x76, x76, x77
	lw x77, 3(x6)
	bne	x77, zero, pretrace_pixels_beqelse_b5314
# B5313
	mv x7, x76
	j pretrace_pixels_cont_b5315 # adhoc jump(2)
pretrace_pixels_beqelse_b5314:
# B5314
	fmul x77, x70, x75
	lw x78, 9(x6)
	lw x78, 0(x78)
	fmul x77, x77, x78
	fadd x76, x76, x77
	fmul x75, x75, x7
	lw x77, 9(x6)
	lw x77, 1(x77)
	fmul x75, x75, x77
	fadd x75, x76, x75
	fmul x7, x7, x70
	lw x70, 9(x6)
	lw x70, 2(x70)
	fmul x7, x7, x70
	fadd x7, x75, x7
pretrace_pixels_cont_b5315:
# B5315
	lw x70, 1(x6)
	li x75, 3
	bne	x70, x75, pretrace_pixels_beqelse_b5317
# B5316
	fsub x7, x7, x108
pretrace_pixels_beqelse_b5317:
# B5317
pretrace_pixels_cont_b5318:
# B5318
	lw x6, 6(x6)
	fle x7, zero, x7
	xori x7, x7, 1
	bne	x6, zero, pretrace_pixels_beqelse_b5320
# B5319
	mv x6, x7
	j pretrace_pixels_cont_b5321 # adhoc jump(2)
pretrace_pixels_beqelse_b5320:
# B5320
	xori x6, x7, 1
pretrace_pixels_cont_b5321:
# B5321
	xori x6, x6, 1
pretrace_pixels_cont_b5322:
# B5322
	beq	x6, zero, pretrace_pixels_bneelse_b5323
# B5324
# B5326
	j	pretrace_pixels_loop_b5245
pretrace_pixels_bneelse_b5297:
# B5297
# B5327
	mv x6, x12
# B5328
	bne	x6, zero, pretrace_pixels_beqelse_b5330
	j pretrace_pixels_cont_b5329 # adhoc jump(3)
pretrace_pixels_beqelse_b5330:
# B5330
	mv x67, x12
# B5331
	bne	x67, zero, pretrace_pixels_beqelse_b5333
	j pretrace_pixels_cont_b5332 # adhoc jump(3)
pretrace_pixels_beqelse_b5333:
# B5333
	mv x38, x12
# B5334
	addi x34, x34, 1
	bne	x38, zero, pretrace_pixels_beqelse_b5336
	j pretrace_pixels_cont_b5335 # adhoc jump(3)
pretrace_pixels_beqelse_b5336:
pretrace_pixels_cont_b5336:
# B5336
	mv x5, x12
	mv x6, x33
pretrace_pixels_loop_b5337:
# B5337
	add x4, x6, x5
	lw x33, 0(x4)
	beq	x33, x39, pretrace_pixels_bneelse_b5338
# B5339
	la x38, min_caml_and_net
	add x4, x38, x33
	lw x33, 0(x4)
	mv x38, zero
	mv x65, x33
pretrace_pixels_loop_b5340:
# B5340
	add x4, x65, x38
	lw x33, 0(x4)
	beq	x33, x39, pretrace_pixels_bneelse_b5341
# B5342
	add x4, x65, x38
	lw x33, 0(x4)
	la x66, min_caml_light_dirvec
	add x4, x29, x33
	lw x67, 0(x4)
	lw x68, 0(x30)
	lw x69, 5(x67)
	lw x69, 0(x69)
	fsub x68, x68, x69
	lw x69, 1(x30)
	lw x7, 5(x67)
	lw x7, 1(x7)
	fsub x69, x69, x7
	lw x7, 2(x30)
	lw x70, 5(x67)
	lw x70, 2(x70)
	fsub x7, x7, x70
	lw x70, 1(x66)
	add x4, x70, x33
	lw x70, 0(x4)
	lw x71, 1(x67)
	bne	x71, x12, pretrace_pixels_beqelse_b5344
# B5343
	lw x66, 0(x66)
	lw x71, 0(x70)
	fsub x71, x71, x68
	lw x72, 1(x70)
	fmul x71, x71, x72
	lw x72, 1(x66)
	fmul x72, x71, x72
	fadd x72, x72, x69
	fabs x72, x72
	lw x73, 4(x67)
	lw x73, 1(x73)
	fle x72, x73, x72
	bne	x72, zero, pretrace_pixels_beqelse_b5345
# B5346
	lw x72, 2(x66)
	fmul x72, x71, x72
	fadd x72, x72, x7
	fabs x72, x72
	lw x73, 4(x67)
	lw x73, 2(x73)
	fle x72, x73, x72
	bne	x72, zero, pretrace_pixels_beqelse_b5347
# B5348
	lw x72, 1(x70)
	feq x72, x72, zero
	xori x72, x72, 1
	mv x73, x72
# B5349
	bne	x73, zero, pretrace_pixels_beqelse_b5351
	j pretrace_pixels_cont_b5350 # adhoc jump(3)
pretrace_pixels_beqelse_b5351:
# B5351
	la x66, min_caml_solver_dist
	sw x71, 0(x66)
	la x67, min_caml_solver_dist
	lw x67, 0(x67)
	j pretrace_pixels_cont_b5385 # adhoc jump(2)
pretrace_pixels_beqelse_b5347:
# B5347
pretrace_pixels_beqelse_b5345:
# B5345
pretrace_pixels_cont_b5350:
# B5350
	lw x71, 2(x70)
	fsub x71, x71, x69
	lw x72, 3(x70)
	fmul x71, x71, x72
	lw x72, 0(x66)
	fmul x72, x71, x72
	fadd x72, x72, x68
	fabs x72, x72
	lw x73, 4(x67)
	lw x73, 0(x73)
	fle x72, x73, x72
	bne	x72, zero, pretrace_pixels_beqelse_b5352
# B5353
	lw x72, 2(x66)
	fmul x72, x71, x72
	fadd x72, x72, x7
	fabs x72, x72
	lw x73, 4(x67)
	lw x73, 2(x73)
	fle x72, x73, x72
	bne	x72, zero, pretrace_pixels_beqelse_b5354
# B5355
	lw x72, 3(x70)
	feq x72, x72, zero
	xori x72, x72, 1
	mv x73, x72
# B5356
	bne	x73, zero, pretrace_pixels_beqelse_b5358
	j pretrace_pixels_cont_b5357 # adhoc jump(3)
pretrace_pixels_beqelse_b5358:
# B5358
	la x66, min_caml_solver_dist
	sw x71, 0(x66)
	la x67, min_caml_solver_dist
	lw x67, 0(x67)
	j pretrace_pixels_cont_b5385 # adhoc jump(2)
pretrace_pixels_beqelse_b5354:
# B5354
pretrace_pixels_beqelse_b5352:
# B5352
pretrace_pixels_cont_b5357:
# B5357
	lw x71, 4(x70)
	fsub x7, x71, x7
	lw x71, 5(x70)
	fmul x7, x7, x71
	lw x71, 0(x66)
	fmul x71, x7, x71
	fadd x68, x71, x68
	fabs x68, x68
	lw x71, 4(x67)
	lw x71, 0(x71)
	fle x68, x71, x68
	bne	x68, zero, pretrace_pixels_beqelse_b5359
# B5360
	lw x66, 1(x66)
	fmul x66, x7, x66
	fadd x66, x66, x69
	fabs x66, x66
	lw x67, 4(x67)
	lw x67, 1(x67)
	fle x66, x67, x66
	bne	x66, zero, pretrace_pixels_beqelse_b5361
# B5362
	lw x66, 5(x70)
	feq x66, x66, zero
	xori x66, x66, 1
	mv x67, x66
# B5363
	bne	x67, zero, pretrace_pixels_beqelse_b5365
	j pretrace_pixels_cont_b5364 # adhoc jump(3)
pretrace_pixels_beqelse_b5365:
# B5365
	la x66, min_caml_solver_dist
	sw x7, 0(x66)
	la x67, min_caml_solver_dist
	lw x67, 0(x67)
	j pretrace_pixels_cont_b5385 # adhoc jump(2)
pretrace_pixels_beqelse_b5361:
# B5361
pretrace_pixels_beqelse_b5359:
# B5359
pretrace_pixels_cont_b5364:
# B5364
	la x67, min_caml_solver_dist
	lw x67, 0(x67)
	j pretrace_pixels_cont_b5384 # adhoc jump(2)
pretrace_pixels_beqelse_b5344:
# B5344
	bne	x71, x107, pretrace_pixels_beqelse_b5367
# B5366
	lw x66, 0(x70)
	fle x66, zero, x66
	beq	x66, zero, pretrace_pixels_bneelse_b5369
# B5368
	la x67, min_caml_solver_dist
	lw x67, 0(x67)
	j pretrace_pixels_cont_b5384 # adhoc jump(2)
pretrace_pixels_bneelse_b5369:
# B5369
	la x66, min_caml_solver_dist
	lw x67, 1(x70)
	fmul x67, x67, x68
	lw x68, 2(x70)
	fmul x68, x68, x69
	fadd x67, x67, x68
	lw x68, 3(x70)
	fmul x68, x68, x7
	fadd x67, x67, x68
	sw x67, 0(x66)
	la x67, min_caml_solver_dist
	lw x67, 0(x67)
	j pretrace_pixels_cont_b5385 # adhoc jump(2)
pretrace_pixels_beqelse_b5367:
# B5367
	lw x66, 0(x70)
	feq x71, x66, zero
	bne	x71, zero, pretrace_pixels_beqelse_b5371
# B5370
	lw x71, 1(x70)
	fmul x71, x71, x68
	lw x72, 2(x70)
	fmul x72, x72, x69
	fadd x71, x71, x72
	li x72, 3
	lw x73, 3(x70)
	fmul x73, x73, x7
	fadd x71, x71, x73
	fmul x73, x68, x68
	lw x74, 4(x67)
	lw x74, 0(x74)
	fmul x73, x73, x74
	fmul x74, x69, x69
	lw x75, 4(x67)
	lw x75, 1(x75)
	fmul x74, x74, x75
	fadd x73, x73, x74
	fmul x74, x7, x7
	lw x75, 4(x67)
	lw x75, 2(x75)
	fmul x74, x74, x75
	fadd x73, x73, x74
	lw x74, 3(x67)
	bne	x74, zero, pretrace_pixels_beqelse_b5373
# B5372
	mv x68, x73
	j pretrace_pixels_cont_b5374 # adhoc jump(2)
pretrace_pixels_beqelse_b5373:
# B5373
	fmul x74, x69, x7
	lw x75, 9(x67)
	lw x75, 0(x75)
	fmul x74, x74, x75
	fadd x73, x73, x74
	fmul x7, x7, x68
	lw x74, 9(x67)
	lw x74, 1(x74)
	fmul x7, x7, x74
	fadd x7, x73, x7
	fmul x68, x68, x69
	lw x69, 9(x67)
	lw x69, 2(x69)
	fmul x68, x68, x69
	fadd x68, x7, x68
pretrace_pixels_cont_b5374:
# B5374
	lw x69, 1(x67)
	bne	x69, x72, pretrace_pixels_beqelse_b5376
# B5375
	fsub x68, x68, x108
pretrace_pixels_beqelse_b5376:
# B5376
pretrace_pixels_cont_b5377:
# B5377
	fmul x69, x71, x71
	fmul x66, x66, x68
	fsub x66, x69, x66
	fle x68, x66, zero
	beq	x68, zero, pretrace_pixels_bneelse_b5379
# B5378
	la x67, min_caml_solver_dist
	lw x67, 0(x67)
	j pretrace_pixels_cont_b5384 # adhoc jump(2)
pretrace_pixels_bneelse_b5379:
# B5379
	lw x67, 6(x67)
	bne	x67, zero, pretrace_pixels_beqelse_b5381
# B5380
	la x67, min_caml_solver_dist
	fsqrt x66, x66
	fsub x66, x71, x66
	lw x68, 4(x70)
	fmul x66, x66, x68
	sw x66, 0(x67)
	j pretrace_pixels_cont_b5382 # adhoc jump(2)
pretrace_pixels_beqelse_b5381:
# B5381
	la x67, min_caml_solver_dist
	fsqrt x66, x66
	fadd x66, x71, x66
	lw x68, 4(x70)
	fmul x66, x66, x68
	sw x66, 0(x67)
pretrace_pixels_cont_b5382:
# B5382
	la x67, min_caml_solver_dist
	lw x67, 0(x67)
pretrace_pixels_cont_b5385:
# B5385
	lui x66, 779469
	addi x66, x66, -819
	fle x66, x66, x67
	xori x66, x66, 1
# B5386
	addi x38, x38, 1
	bne	x66, zero, pretrace_pixels_beqelse_b5388
	j pretrace_pixels_cont_b5387 # adhoc jump(3)
pretrace_pixels_beqelse_b5388:
# B5388
	lui x33, 246333
	addi x33, x33, 1802
	fadd x33, x67, x33
	lw x66, 0(x40)
	fmul x66, x66, x33
	lw x67, 0(x30)
	fadd x66, x66, x67
	lw x67, 1(x40)
	fmul x67, x67, x33
	lw x68, 1(x30)
	fadd x67, x67, x68
	lw x68, 2(x40)
	fmul x33, x68, x33
	lw x68, 2(x30)
	fadd x33, x33, x68
	mv x70, x67
	mv x7, x66
	mv x68, zero
	mv x69, x65
	mv x71, x33
	j	pretrace_pixels_loop_b5391
pretrace_pixels_bneelse_b5418:	#moved
# B5418
	addi x68, x68, 1
pretrace_pixels_loop_b5391:
# B5391
	add x4, x69, x68
	lw x33, 0(x4)
	beq	x33, x39, pretrace_pixels_bneelse_b5392
# B5393
	add x4, x29, x33
	lw x33, 0(x4)
	lw x66, 5(x33)
	lw x66, 0(x66)
	fsub x66, x7, x66
	lw x67, 5(x33)
	lw x67, 1(x67)
	fsub x67, x70, x67
	lw x72, 5(x33)
	lw x72, 2(x72)
	fsub x72, x71, x72
	lw x73, 1(x33)
	bne	x73, x12, pretrace_pixels_beqelse_b5395
# B5394
	fabs x66, x66
	lw x73, 4(x33)
	lw x73, 0(x73)
	fle x66, x73, x66
	bne	x66, zero, pretrace_pixels_beqelse_b5396
# B5397
	fabs x66, x67
	lw x67, 4(x33)
	lw x67, 1(x67)
	fle x66, x67, x66
	bne	x66, zero, pretrace_pixels_beqelse_b5398
# B5399
	fabs x66, x72
	lw x67, 4(x33)
	lw x67, 2(x67)
	fle x66, x67, x66
	xori x66, x66, 1
	mv x67, x66
# B5400
	bne	x67, zero, pretrace_pixels_beqelse_b5402
	j pretrace_pixels_cont_b5401 # adhoc jump(3)
pretrace_pixels_beqelse_b5402:
# B5402
	lw x33, 6(x33)
	j pretrace_pixels_cont_b5417 # adhoc jump(2)
pretrace_pixels_beqelse_b5398:
# B5398
pretrace_pixels_beqelse_b5396:
# B5396
pretrace_pixels_cont_b5401:
# B5401
	lw x33, 6(x33)
	xori x33, x33, 1
	j pretrace_pixels_cont_b5417 # adhoc jump(2)
pretrace_pixels_beqelse_b5395:
# B5395
	bne	x73, x107, pretrace_pixels_beqelse_b5404
# B5403
	lw x73, 4(x33)
	lw x74, 0(x73)
	fmul x66, x74, x66
	lw x74, 1(x73)
	fmul x67, x74, x67
	fadd x66, x66, x67
	lw x67, 2(x73)
	fmul x67, x67, x72
	fadd x66, x66, x67
	lw x33, 6(x33)
	fle x66, zero, x66
	xori x66, x66, 1
	bne	x33, zero, pretrace_pixels_beqelse_b5406
# B5405
	mv x33, x66
	j pretrace_pixels_cont_b5407 # adhoc jump(2)
pretrace_pixels_beqelse_b5406:
# B5406
	xori x33, x66, 1
pretrace_pixels_cont_b5407:
# B5407
	xori x33, x33, 1
	j pretrace_pixels_cont_b5417 # adhoc jump(2)
pretrace_pixels_beqelse_b5404:
# B5404
	fmul x73, x66, x66
	lw x74, 4(x33)
	lw x74, 0(x74)
	fmul x73, x73, x74
	fmul x74, x67, x67
	lw x75, 4(x33)
	lw x75, 1(x75)
	fmul x74, x74, x75
	fadd x73, x73, x74
	fmul x74, x72, x72
	lw x75, 4(x33)
	lw x75, 2(x75)
	fmul x74, x74, x75
	fadd x73, x73, x74
	lw x74, 3(x33)
	bne	x74, zero, pretrace_pixels_beqelse_b5409
# B5408
	mv x66, x73
	j pretrace_pixels_cont_b5410 # adhoc jump(2)
pretrace_pixels_beqelse_b5409:
# B5409
	fmul x74, x67, x72
	lw x75, 9(x33)
	lw x75, 0(x75)
	fmul x74, x74, x75
	fadd x73, x73, x74
	fmul x72, x72, x66
	lw x74, 9(x33)
	lw x74, 1(x74)
	fmul x72, x72, x74
	fadd x72, x73, x72
	fmul x66, x66, x67
	lw x67, 9(x33)
	lw x67, 2(x67)
	fmul x66, x66, x67
	fadd x66, x72, x66
pretrace_pixels_cont_b5410:
# B5410
	lw x67, 1(x33)
	li x72, 3
	bne	x67, x72, pretrace_pixels_beqelse_b5412
# B5411
	fsub x66, x66, x108
pretrace_pixels_beqelse_b5412:
# B5412
pretrace_pixels_cont_b5413:
# B5413
	lw x33, 6(x33)
	fle x66, zero, x66
	xori x66, x66, 1
	bne	x33, zero, pretrace_pixels_beqelse_b5415
# B5414
	mv x33, x66
	j pretrace_pixels_cont_b5416 # adhoc jump(2)
pretrace_pixels_beqelse_b5415:
# B5415
	xori x33, x66, 1
pretrace_pixels_cont_b5416:
# B5416
	xori x33, x33, 1
pretrace_pixels_cont_b5417:
# B5417
	beq	x33, zero, pretrace_pixels_bneelse_b5418
# B5419
# B5421
	j	pretrace_pixels_loop_b5340
pretrace_pixels_bneelse_b5392:
# B5392
# B5422
	mv x33, x12
# B5423
	bne	x33, zero, pretrace_pixels_beqelse_b5425
	j pretrace_pixels_cont_b5424 # adhoc jump(3)
pretrace_pixels_beqelse_b5425:
# B5425
	mv x38, x12
# B5426
	bne	x38, zero, pretrace_pixels_beqelse_b5428
	j pretrace_pixels_cont_b5427 # adhoc jump(3)
pretrace_pixels_beqelse_b5428:
# B5428
	mv x33, x12
# B5429
	bne	x33, zero, pretrace_pixels_beqelse_b5431
	j pretrace_pixels_cont_b5430 # adhoc jump(3)
pretrace_pixels_beqelse_b5431:
# B5431
	j pretrace_pixels_cont_b5437 # adhoc jump(2)
pretrace_pixels_beqelse_b5371:
# B5371
	la x67, min_caml_solver_dist
	lw x67, 0(x67)
pretrace_pixels_cont_b5384:
# B5384
	addi x38, x38, 1
pretrace_pixels_cont_b5387:
# B5387
	add x4, x29, x33
	lw x33, 0(x4)
	lw x33, 6(x33)
	beq	x33, zero, pretrace_pixels_bneelse_b5389
# B5390
	j	pretrace_pixels_loop_b5340
pretrace_pixels_bneelse_b5389:
# B5389
pretrace_pixels_bneelse_b5341:
# B5341
pretrace_pixels_cont_b5424:
# B5424
	addi x5, x5, 1
	j	pretrace_pixels_loop_b5337
pretrace_pixels_bneelse_b5338:
# B5338
pretrace_pixels_cont_b5427:
# B5427
	j	pretrace_pixels_loop_b5192
pretrace_pixels_beqelse_b5276:
# B5276
	lw x7, 0(x38)
pretrace_pixels_cont_b5289:
# B5289
	addi x67, x67, 1
pretrace_pixels_cont_b5292:
# B5292
	add x4, x29, x6
	lw x6, 0(x4)
	lw x6, 6(x6)
	beq	x6, zero, pretrace_pixels_bneelse_b5294
# B5295
	j	pretrace_pixels_loop_b5245
pretrace_pixels_bneelse_b5294:
# B5294
pretrace_pixels_bneelse_b5246:
# B5246
pretrace_pixels_cont_b5329:
# B5329
	addi x65, x65, 1
	j	pretrace_pixels_loop_b5242
pretrace_pixels_bneelse_b5243:
# B5243
pretrace_pixels_cont_b5332:
# B5332
	addi x34, x34, 1
	j pretrace_pixels_cont_b5335 # adhoc jump(2)
pretrace_pixels_beqelse_b5232:
# B5232
pretrace_pixels_beqelse_b5225:
# B5225
pretrace_pixels_cont_b5238:
# B5238
	addi x34, x34, 1
pretrace_pixels_cont_b5335:
# B5335
	j	pretrace_pixels_loop_b5192
pretrace_pixels_bneelse_b5193:
# B5193
pretrace_pixels_cont_b5430:
# B5430
	lw x33, 0(x36)
	lw x34, 0(x40)
	fmul x33, x33, x34
	lw x34, 1(x36)
	lw x35, 1(x40)
	fmul x34, x34, x35
	fadd x33, x33, x34
	lw x34, 2(x36)
	lw x35, 2(x40)
	fmul x34, x34, x35
	fadd x33, x33, x34
	fsub x33, zero, x33
	fmul x33, x33, x28
	lw x34, 0(x17)
	lw x35, 0(x40)
	fmul x34, x34, x35
	lw x35, 1(x17)
	lw x38, 1(x40)
	fmul x35, x35, x38
	fadd x34, x34, x35
	lw x35, 2(x17)
	lw x38, 2(x40)
	fmul x35, x35, x38
	fadd x34, x34, x35
	fsub x34, zero, x34
	fle x35, x33, zero
	bne	x35, zero, pretrace_pixels_beqelse_b5432
# B5433
	lw x35, 0(x10)
	lw x38, 0(x37)
	fmul x38, x33, x38
	fadd x35, x35, x38
	sw x35, 0(x10)
	lw x35, 1(x10)
	lw x38, 1(x37)
	fmul x38, x33, x38
	fadd x35, x35, x38
	sw x35, 1(x10)
	lw x35, 2(x10)
	lw x38, 2(x37)
	fmul x33, x33, x38
	fadd x33, x35, x33
	sw x33, 2(x10)
pretrace_pixels_beqelse_b5432:
# B5432
pretrace_pixels_cont_b5434:
# B5434
	fle x33, x34, zero
	bne	x33, zero, pretrace_pixels_beqelse_b5435
# B5436
	fmul x33, x34, x34
	fmul x33, x33, x33
	fmul x33, x33, x23
	lw x34, 0(x10)
	fadd x34, x34, x33
	sw x34, 0(x10)
	lw x34, 1(x10)
	fadd x34, x34, x33
	sw x34, 1(x10)
	lw x34, 2(x10)
	fadd x33, x34, x33
	sw x33, 2(x10)
pretrace_pixels_beqelse_b5435:
# B5435
pretrace_pixels_cont_b5437:
# B5437
	la x33, min_caml_startp_fast
	lw x34, 0(x30)
	sw x34, 0(x33)
	lw x34, 1(x30)
	sw x34, 1(x33)
	lw x34, 2(x30)
	sw x34, 2(x33)
	la x34, min_caml_n_objects
	lw x34, 0(x34)
	addi x34, x34, -1
	mv x35, x30
	mv x38, x34
pretrace_pixels_loop_b5438:
# B5438
	bgt	zero, x38, pretrace_pixels_bleelse_b5440
# B5439
	add x4, x29, x38
	lw x34, 0(x4)
	lw x39, 10(x34)
	lw x40, 1(x34)
	lw x5, 0(x35)
	lw x6, 5(x34)
	lw x6, 0(x6)
	fsub x5, x5, x6
	sw x5, 0(x39)
	lw x5, 1(x35)
	lw x6, 5(x34)
	lw x6, 1(x6)
	fsub x5, x5, x6
	sw x5, 1(x39)
	lw x5, 2(x35)
	lw x6, 5(x34)
	lw x6, 2(x6)
	fsub x5, x5, x6
	sw x5, 2(x39)
	bne	x40, x107, pretrace_pixels_beqelse_b5442
# B5441
	lw x34, 4(x34)
	lw x40, 0(x39)
	lw x5, 1(x39)
	lw x6, 2(x39)
	lw x65, 0(x34)
	fmul x40, x65, x40
	lw x65, 1(x34)
	fmul x5, x65, x5
	fadd x40, x40, x5
	lw x34, 2(x34)
	fmul x34, x34, x6
	fadd x34, x40, x34
	sw x34, 3(x39)
	j pretrace_pixels_cont_b5451 # adhoc jump(2)
pretrace_pixels_beqelse_b5442:
# B5442
	bge	x107, x40, pretrace_pixels_bgtelse_b5443
# B5444
	lw x5, 0(x39)
	lw x6, 1(x39)
	lw x65, 2(x39)
	fmul x66, x5, x5
	lw x67, 4(x34)
	lw x67, 0(x67)
	fmul x66, x66, x67
	fmul x67, x6, x6
	lw x68, 4(x34)
	lw x68, 1(x68)
	fmul x67, x67, x68
	fadd x66, x66, x67
	fmul x67, x65, x65
	lw x68, 4(x34)
	lw x68, 2(x68)
	fmul x67, x67, x68
	fadd x66, x66, x67
	lw x67, 3(x34)
	bne	x67, zero, pretrace_pixels_beqelse_b5446
# B5445
	mv x34, x66
	j pretrace_pixels_cont_b5447 # adhoc jump(2)
pretrace_pixels_beqelse_b5446:
# B5446
	fmul x67, x6, x65
	lw x68, 9(x34)
	lw x68, 0(x68)
	fmul x67, x67, x68
	fadd x66, x66, x67
	fmul x65, x65, x5
	lw x67, 9(x34)
	lw x67, 1(x67)
	fmul x65, x65, x67
	fadd x65, x66, x65
	fmul x5, x5, x6
	lw x34, 9(x34)
	lw x34, 2(x34)
	fmul x34, x5, x34
	fadd x34, x65, x34
pretrace_pixels_cont_b5447:
# B5447
	li x5, 3
	bne	x40, x5, pretrace_pixels_beqelse_b5449
# B5448
	fsub x34, x34, x108
pretrace_pixels_beqelse_b5449:
# B5449
pretrace_pixels_cont_b5450:
# B5450
	sw x34, 3(x39)
pretrace_pixels_bgtelse_b5443:
# B5443
pretrace_pixels_cont_b5451:
# B5451
	addi x38, x38, -1
	j	pretrace_pixels_loop_b5438
pretrace_pixels_bleelse_b5440:
# B5440
# B5452
	la x34, min_caml_n_reflections
	lw x34, 0(x34)
	addi x34, x34, -1
	mv x40, x17
	mv x39, x23
	mv x35, x34
	mv x38, x28
pretrace_pixels_loop_b5453:
# B5453
	li x23, -1
	bgt	zero, x35, pretrace_pixels_bleelse_b5455
# B5454
	la x28, min_caml_reflections
	add x4, x28, x35
	lw x28, 0(x4)
	lw x34, 1(x28)
	sw x21, 0(x20)
	lw x5, 0(x22)
	mv x66, x34
	mv x6, zero
	mv x65, x5
pretrace_pixels_loop_b5456:
# B5456
	add x4, x65, x6
	lw x5, 0(x4)
	lw x67, 0(x5)
	li x68, -1
	beq	x67, x68, pretrace_pixels_bneelse_b5457
# B5458
	li x69, 99
	la x7, min_caml_solver_dist
	li x70, 3
	bne	x67, x69, pretrace_pixels_beqelse_b5460
# B5459
	mv x72, x5
	mv x71, x12
	mv x73, x66
pretrace_pixels_loop_b5461:
# B5461
	add x4, x72, x71
	lw x5, 0(x4)
	beq	x5, x68, pretrace_pixels_bneelse_b5462
# B5463
	la x67, min_caml_and_net
	add x4, x67, x5
	lw x5, 0(x4)
	mv x74, x73
	mv x67, zero
	mv x69, x5
pretrace_pixels_beqelse_b5505:	#moved
# B5505
pretrace_pixels_loop_b5464:
# B5464
	lw x5, 0(x74)
	add x4, x69, x67
	lw x75, 0(x4)
	beq	x75, x68, pretrace_pixels_bneelse_b5465
# B5466
	add x4, x29, x75
	lw x76, 0(x4)
	lw x77, 10(x76)
	lw x78, 0(x77)
	lw x79, 1(x77)
	lw x8, 2(x77)
	lw x80, 1(x74)
	add x4, x80, x75
	lw x80, 0(x4)
	lw x81, 1(x76)
	bne	x81, x12, pretrace_pixels_beqelse_b5468
# B5467
	lw x77, 0(x74)
	lw x81, 0(x80)
	fsub x81, x81, x78
	lw x82, 1(x80)
	fmul x81, x81, x82
	lw x82, 1(x77)
	fmul x82, x81, x82
	fadd x82, x82, x79
	fabs x82, x82
	lw x83, 4(x76)
	lw x83, 1(x83)
	fle x82, x83, x82
	bne	x82, zero, pretrace_pixels_beqelse_b5469
# B5470
	lw x82, 2(x77)
	fmul x82, x81, x82
	fadd x82, x82, x8
	fabs x82, x82
	lw x83, 4(x76)
	lw x83, 2(x83)
	fle x82, x83, x82
	bne	x82, zero, pretrace_pixels_beqelse_b5471
# B5472
	lw x82, 1(x80)
	feq x82, x82, zero
	xori x82, x82, 1
	mv x83, x82
# B5473
	bne	x83, zero, pretrace_pixels_beqelse_b5475
	j pretrace_pixels_cont_b5474 # adhoc jump(3)
pretrace_pixels_beqelse_b5475:
# B5475
	la x76, min_caml_solver_dist
	sw x81, 0(x76)
	li x76, 1
	addi x67, x67, 1
	j pretrace_pixels_cont_b5503 # adhoc jump(2)
pretrace_pixels_beqelse_b5471:
# B5471
pretrace_pixels_beqelse_b5469:
# B5469
pretrace_pixels_cont_b5474:
# B5474
	lw x81, 2(x80)
	fsub x81, x81, x79
	lw x82, 3(x80)
	fmul x81, x81, x82
	lw x82, 0(x77)
	fmul x82, x81, x82
	fadd x82, x82, x78
	fabs x82, x82
	lw x83, 4(x76)
	lw x83, 0(x83)
	fle x82, x83, x82
	bne	x82, zero, pretrace_pixels_beqelse_b5476
# B5477
	lw x82, 2(x77)
	fmul x82, x81, x82
	fadd x82, x82, x8
	fabs x82, x82
	lw x83, 4(x76)
	lw x83, 2(x83)
	fle x82, x83, x82
	bne	x82, zero, pretrace_pixels_beqelse_b5478
# B5479
	lw x82, 3(x80)
	feq x82, x82, zero
	xori x82, x82, 1
	mv x83, x82
# B5480
	bne	x83, zero, pretrace_pixels_beqelse_b5482
	j pretrace_pixels_cont_b5481 # adhoc jump(3)
pretrace_pixels_beqelse_b5482:
# B5482
	la x76, min_caml_solver_dist
	sw x81, 0(x76)
	li x76, 2
	addi x67, x67, 1
	j pretrace_pixels_cont_b5503 # adhoc jump(2)
pretrace_pixels_beqelse_b5478:
# B5478
pretrace_pixels_beqelse_b5476:
# B5476
pretrace_pixels_cont_b5481:
# B5481
	lw x81, 4(x80)
	fsub x8, x81, x8
	lw x81, 5(x80)
	fmul x8, x8, x81
	lw x81, 0(x77)
	fmul x81, x8, x81
	fadd x78, x81, x78
	fabs x78, x78
	lw x81, 4(x76)
	lw x81, 0(x81)
	fle x78, x81, x78
	bne	x78, zero, pretrace_pixels_beqelse_b5483
# B5484
	lw x77, 1(x77)
	fmul x77, x8, x77
	fadd x77, x77, x79
	fabs x77, x77
	lw x76, 4(x76)
	lw x76, 1(x76)
	fle x76, x76, x77
	bne	x76, zero, pretrace_pixels_beqelse_b5485
# B5486
	lw x76, 5(x80)
	feq x76, x76, zero
	xori x76, x76, 1
	mv x77, x76
# B5487
	bne	x77, zero, pretrace_pixels_beqelse_b5489
	j pretrace_pixels_cont_b5488 # adhoc jump(3)
pretrace_pixels_beqelse_b5489:
# B5489
	la x76, min_caml_solver_dist
	sw x8, 0(x76)
	li x76, 3
	addi x67, x67, 1
	j pretrace_pixels_cont_b5503 # adhoc jump(2)
pretrace_pixels_beqelse_b5485:
# B5485
pretrace_pixels_beqelse_b5483:
# B5483
pretrace_pixels_cont_b5488:
# B5488
	mv x76, zero
	addi x67, x67, 1
	j pretrace_pixels_cont_b5502 # adhoc jump(2)
pretrace_pixels_beqelse_b5468:
# B5468
	bne	x81, x107, pretrace_pixels_beqelse_b5491
# B5490
	lw x76, 0(x80)
	fle x76, zero, x76
	beq	x76, zero, pretrace_pixels_bneelse_b5493
# B5492
	mv x76, zero
	addi x67, x67, 1
	j pretrace_pixels_cont_b5502 # adhoc jump(2)
pretrace_pixels_bneelse_b5493:
# B5493
	la x76, min_caml_solver_dist
	lw x78, 0(x80)
	lw x77, 3(x77)
	fmul x77, x78, x77
	sw x77, 0(x76)
	li x76, 1
	addi x67, x67, 1
	j pretrace_pixels_cont_b5503 # adhoc jump(2)
pretrace_pixels_beqelse_b5491:
# B5491
	lw x81, 0(x80)
	feq x82, x81, zero
	bne	x82, zero, pretrace_pixels_beqelse_b5495
# B5494
	lw x82, 1(x80)
	fmul x78, x82, x78
	lw x82, 2(x80)
	fmul x79, x82, x79
	fadd x78, x78, x79
	lw x79, 3(x80)
	fmul x79, x79, x8
	fadd x78, x78, x79
	lw x77, 3(x77)
	fmul x79, x78, x78
	fmul x77, x81, x77
	fsub x77, x79, x77
	fle x79, x77, zero
	beq	x79, zero, pretrace_pixels_bneelse_b5497
# B5496
	mv x76, zero
	addi x67, x67, 1
	j pretrace_pixels_cont_b5502 # adhoc jump(2)
pretrace_pixels_bneelse_b5497:
# B5497
	lw x76, 6(x76)
	bne	x76, zero, pretrace_pixels_beqelse_b5499
# B5498
	la x76, min_caml_solver_dist
	fsqrt x77, x77
	fsub x77, x78, x77
	lw x78, 4(x80)
	fmul x77, x77, x78
	sw x77, 0(x76)
	j pretrace_pixels_cont_b5500 # adhoc jump(2)
pretrace_pixels_beqelse_b5499:
# B5499
	la x76, min_caml_solver_dist
	fsqrt x77, x77
	fadd x77, x78, x77
	lw x78, 4(x80)
	fmul x77, x77, x78
	sw x77, 0(x76)
pretrace_pixels_cont_b5500:
# B5500
	li x76, 1
	addi x67, x67, 1
pretrace_pixels_cont_b5503:
# B5503
	lw x77, 0(x7)
	fle x78, x77, zero
	bne	x78, zero, pretrace_pixels_beqelse_b5506
# B5507
	lw x78, 0(x20)
	fle x78, x78, x77
	bne	x78, zero, pretrace_pixels_beqelse_b5508
# B5509
	lui x78, 246333
	addi x78, x78, 1802
	fadd x77, x77, x78
	lw x78, 0(x5)
	fmul x78, x78, x77
	lw x79, 0(x33)
	fadd x78, x78, x79
	lw x79, 1(x5)
	fmul x79, x79, x77
	lw x8, 1(x33)
	fadd x79, x79, x8
	lw x5, 2(x5)
	fmul x5, x5, x77
	lw x8, 2(x33)
	fadd x5, x5, x8
	mv x82, x79
	mv x83, x5
	mv x81, x78
	mv x80, x69
	mv x8, zero
	j	pretrace_pixels_loop_b5510
pretrace_pixels_bneelse_b5537:	#moved
# B5537
	addi x8, x8, 1
pretrace_pixels_loop_b5510:
# B5510
	add x4, x80, x8
	lw x84, 0(x4)
	beq	x84, x68, pretrace_pixels_bneelse_b5511
# B5512
	add x4, x29, x84
	lw x84, 0(x4)
	lw x85, 5(x84)
	lw x85, 0(x85)
	fsub x85, x81, x85
	lw x86, 5(x84)
	lw x86, 1(x86)
	fsub x86, x82, x86
	lw x87, 5(x84)
	lw x87, 2(x87)
	fsub x87, x83, x87
	lw x88, 1(x84)
	bne	x88, x12, pretrace_pixels_beqelse_b5514
# B5513
	fabs x85, x85
	lw x88, 4(x84)
	lw x88, 0(x88)
	fle x85, x88, x85
	bne	x85, zero, pretrace_pixels_beqelse_b5515
# B5516
	fabs x85, x86
	lw x86, 4(x84)
	lw x86, 1(x86)
	fle x85, x86, x85
	bne	x85, zero, pretrace_pixels_beqelse_b5517
# B5518
	fabs x85, x87
	lw x86, 4(x84)
	lw x86, 2(x86)
	fle x85, x86, x85
	xori x85, x85, 1
	mv x86, x85
# B5519
	bne	x86, zero, pretrace_pixels_beqelse_b5521
	j pretrace_pixels_cont_b5520 # adhoc jump(3)
pretrace_pixels_beqelse_b5521:
# B5521
	lw x84, 6(x84)
	j pretrace_pixels_cont_b5536 # adhoc jump(2)
pretrace_pixels_beqelse_b5517:
# B5517
pretrace_pixels_beqelse_b5515:
# B5515
pretrace_pixels_cont_b5520:
# B5520
	lw x84, 6(x84)
	xori x84, x84, 1
	j pretrace_pixels_cont_b5536 # adhoc jump(2)
pretrace_pixels_beqelse_b5514:
# B5514
	bne	x88, x107, pretrace_pixels_beqelse_b5523
# B5522
	lw x88, 4(x84)
	lw x89, 0(x88)
	fmul x85, x89, x85
	lw x89, 1(x88)
	fmul x86, x89, x86
	fadd x85, x85, x86
	lw x86, 2(x88)
	fmul x86, x86, x87
	fadd x85, x85, x86
	lw x84, 6(x84)
	fle x85, zero, x85
	xori x85, x85, 1
	bne	x84, zero, pretrace_pixels_beqelse_b5525
# B5524
	mv x84, x85
	j pretrace_pixels_cont_b5526 # adhoc jump(2)
pretrace_pixels_beqelse_b5525:
# B5525
	xori x84, x85, 1
pretrace_pixels_cont_b5526:
# B5526
	xori x84, x84, 1
	j pretrace_pixels_cont_b5536 # adhoc jump(2)
pretrace_pixels_beqelse_b5523:
# B5523
	fmul x88, x85, x85
	lw x89, 4(x84)
	lw x89, 0(x89)
	fmul x88, x88, x89
	fmul x89, x86, x86
	lw x9, 4(x84)
	lw x9, 1(x9)
	fmul x89, x89, x9
	fadd x88, x88, x89
	fmul x89, x87, x87
	lw x9, 4(x84)
	lw x9, 2(x9)
	fmul x89, x89, x9
	fadd x88, x88, x89
	lw x89, 3(x84)
	bne	x89, zero, pretrace_pixels_beqelse_b5528
# B5527
	mv x85, x88
	j pretrace_pixels_cont_b5529 # adhoc jump(2)
pretrace_pixels_beqelse_b5528:
# B5528
	fmul x89, x86, x87
	lw x9, 9(x84)
	lw x9, 0(x9)
	fmul x89, x89, x9
	fadd x88, x88, x89
	fmul x87, x87, x85
	lw x89, 9(x84)
	lw x89, 1(x89)
	fmul x87, x87, x89
	fadd x87, x88, x87
	fmul x85, x85, x86
	lw x86, 9(x84)
	lw x86, 2(x86)
	fmul x85, x85, x86
	fadd x85, x87, x85
pretrace_pixels_cont_b5529:
# B5529
	lw x86, 1(x84)
	bne	x86, x70, pretrace_pixels_beqelse_b5531
# B5530
	fsub x85, x85, x108
pretrace_pixels_beqelse_b5531:
# B5531
pretrace_pixels_cont_b5532:
# B5532
	lw x84, 6(x84)
	fle x85, zero, x85
	xori x85, x85, 1
	bne	x84, zero, pretrace_pixels_beqelse_b5534
# B5533
	mv x84, x85
	j pretrace_pixels_cont_b5535 # adhoc jump(2)
pretrace_pixels_beqelse_b5534:
# B5534
	xori x84, x85, 1
pretrace_pixels_cont_b5535:
# B5535
	xori x84, x84, 1
pretrace_pixels_cont_b5536:
# B5536
	beq	x84, zero, pretrace_pixels_bneelse_b5537
# B5538
# B5540
	j pretrace_pixels_cont_b5542 # adhoc jump(2)
pretrace_pixels_bneelse_b5511:
# B5511
# B5541
	sw x77, 0(x20)
	sw x78, 0(x30)
	sw x79, 1(x30)
	sw x5, 2(x30)
	sw x75, 0(x31)
	sw x76, 0(x32)
pretrace_pixels_beqelse_b5508:
# B5508
pretrace_pixels_beqelse_b5506:
# B5506
pretrace_pixels_cont_b5542:
# B5542
	j	pretrace_pixels_loop_b5464
pretrace_pixels_beqelse_b5495:
# B5495
	mv x76, zero
	addi x67, x67, 1
pretrace_pixels_cont_b5502:
# B5502
	add x4, x29, x75
	lw x5, 0(x4)
	lw x5, 6(x5)
	bne	x5, zero, pretrace_pixels_beqelse_b5505
# B5504
pretrace_pixels_bneelse_b5465:
# B5465
pretrace_pixels_cont_b5543:
# B5543
	addi x71, x71, 1
	j	pretrace_pixels_loop_b5461
pretrace_pixels_bneelse_b5462:
# B5462
	j pretrace_pixels_cont_b5666 # adhoc jump(2)
pretrace_pixels_beqelse_b5460:
# B5460
	add x4, x29, x67
	lw x69, 0(x4)
	lw x71, 10(x69)
	lw x72, 0(x71)
	lw x73, 1(x71)
	lw x74, 2(x71)
	lw x75, 1(x66)
	add x4, x75, x67
	lw x67, 0(x4)
	lw x75, 1(x69)
	bne	x75, x12, pretrace_pixels_beqelse_b5545
# B5544
	lw x71, 0(x66)
	lw x75, 0(x67)
	fsub x75, x75, x72
	lw x76, 1(x67)
	fmul x75, x75, x76
	lw x76, 1(x71)
	fmul x76, x75, x76
	fadd x76, x76, x73
	fabs x76, x76
	lw x77, 4(x69)
	lw x77, 1(x77)
	fle x76, x77, x76
	bne	x76, zero, pretrace_pixels_beqelse_b5546
# B5547
	lw x76, 2(x71)
	fmul x76, x75, x76
	fadd x76, x76, x74
	fabs x76, x76
	lw x77, 4(x69)
	lw x77, 2(x77)
	fle x76, x77, x76
	bne	x76, zero, pretrace_pixels_beqelse_b5548
# B5549
	lw x76, 1(x67)
	feq x76, x76, zero
	xori x76, x76, 1
	mv x77, x76
# B5550
	bne	x77, zero, pretrace_pixels_beqelse_b5552
	j pretrace_pixels_cont_b5551 # adhoc jump(3)
pretrace_pixels_beqelse_b5552:
# B5552
	sw x75, 0(x7)
	mv x70, x12
	j pretrace_pixels_cont_b5578 # adhoc jump(2)
pretrace_pixels_beqelse_b5548:
# B5548
pretrace_pixels_beqelse_b5546:
# B5546
pretrace_pixels_cont_b5551:
# B5551
	lw x75, 2(x67)
	fsub x75, x75, x73
	lw x76, 3(x67)
	fmul x75, x75, x76
	lw x76, 0(x71)
	fmul x76, x75, x76
	fadd x76, x76, x72
	fabs x76, x76
	lw x77, 4(x69)
	lw x77, 0(x77)
	fle x76, x77, x76
	bne	x76, zero, pretrace_pixels_beqelse_b5553
# B5554
	lw x76, 2(x71)
	fmul x76, x75, x76
	fadd x76, x76, x74
	fabs x76, x76
	lw x77, 4(x69)
	lw x77, 2(x77)
	fle x76, x77, x76
	bne	x76, zero, pretrace_pixels_beqelse_b5555
# B5556
	lw x76, 3(x67)
	feq x76, x76, zero
	xori x76, x76, 1
	mv x77, x76
# B5557
	bne	x77, zero, pretrace_pixels_beqelse_b5559
	j pretrace_pixels_cont_b5558 # adhoc jump(3)
pretrace_pixels_beqelse_b5559:
# B5559
	sw x75, 0(x7)
	mv x70, x107
	j pretrace_pixels_cont_b5578 # adhoc jump(2)
pretrace_pixels_beqelse_b5555:
# B5555
pretrace_pixels_beqelse_b5553:
# B5553
pretrace_pixels_cont_b5558:
# B5558
	lw x75, 4(x67)
	fsub x74, x75, x74
	lw x75, 5(x67)
	fmul x74, x74, x75
	lw x75, 0(x71)
	fmul x75, x74, x75
	fadd x72, x75, x72
	fabs x72, x72
	lw x75, 4(x69)
	lw x75, 0(x75)
	fle x72, x75, x72
	bne	x72, zero, pretrace_pixels_beqelse_b5560
# B5561
	lw x71, 1(x71)
	fmul x71, x74, x71
	fadd x71, x71, x73
	fabs x71, x71
	lw x69, 4(x69)
	lw x69, 1(x69)
	fle x69, x69, x71
	bne	x69, zero, pretrace_pixels_beqelse_b5562
# B5563
	lw x67, 5(x67)
	feq x67, x67, zero
	xori x67, x67, 1
	mv x69, x67
# B5564
	bne	x69, zero, pretrace_pixels_beqelse_b5566
	j pretrace_pixels_cont_b5565 # adhoc jump(3)
pretrace_pixels_beqelse_b5566:
# B5566
	sw x74, 0(x7)
	j pretrace_pixels_cont_b5578 # adhoc jump(2)
pretrace_pixels_beqelse_b5562:
# B5562
pretrace_pixels_beqelse_b5560:
# B5560
pretrace_pixels_cont_b5565:
# B5565
	j pretrace_pixels_cont_b5579 # adhoc jump(2)
pretrace_pixels_beqelse_b5545:
# B5545
	bne	x75, x107, pretrace_pixels_beqelse_b5568
# B5567
	lw x69, 0(x67)
	fle x69, zero, x69
	bne	x69, zero, pretrace_pixels_beqelse_b5569
# B5570
	lw x67, 0(x67)
	lw x69, 3(x71)
	fmul x67, x67, x69
	sw x67, 0(x7)
	mv x70, x12
	j pretrace_pixels_cont_b5578 # adhoc jump(2)
pretrace_pixels_beqelse_b5569:
# B5569
	j pretrace_pixels_cont_b5579 # adhoc jump(2)
pretrace_pixels_beqelse_b5568:
# B5568
	lw x70, 0(x67)
	feq x75, x70, zero
	bne	x75, zero, pretrace_pixels_beqelse_b5572
# B5571
	lw x75, 1(x67)
	fmul x72, x75, x72
	lw x75, 2(x67)
	fmul x73, x75, x73
	fadd x72, x72, x73
	lw x73, 3(x67)
	fmul x73, x73, x74
	fadd x72, x72, x73
	lw x71, 3(x71)
	fmul x73, x72, x72
	fmul x70, x70, x71
	fsub x70, x73, x70
	fle x71, x70, zero
	bne	x71, zero, pretrace_pixels_beqelse_b5573
# B5574
	lw x69, 6(x69)
	fsqrt x70, x70
	bne	x69, zero, pretrace_pixels_beqelse_b5576
# B5575
	fsub x69, x72, x70
	lw x67, 4(x67)
	fmul x67, x69, x67
	sw x67, 0(x7)
	j pretrace_pixels_cont_b5577 # adhoc jump(2)
pretrace_pixels_beqelse_b5576:
# B5576
	fadd x69, x72, x70
	lw x67, 4(x67)
	fmul x67, x69, x67
	sw x67, 0(x7)
pretrace_pixels_cont_b5577:
# B5577
	mv x70, x12
pretrace_pixels_cont_b5578:
# B5578
	bne	x70, zero, pretrace_pixels_beqelse_b5580
	j pretrace_pixels_cont_b5579 # adhoc jump(3)
pretrace_pixels_beqelse_b5580:
# B5580
	lw x67, 0(x7)
	lw x69, 0(x20)
	fle x67, x69, x67
	bne	x67, zero, pretrace_pixels_beqelse_b5581
# B5582
	mv x70, x5
	mv x69, x12
	mv x71, x66
pretrace_pixels_loop_b5583:
# B5583
	add x4, x70, x69
	lw x5, 0(x4)
	beq	x5, x68, pretrace_pixels_bneelse_b5584
# B5585
	la x67, min_caml_and_net
	add x4, x67, x5
	lw x5, 0(x4)
	mv x72, x5
	mv x67, zero
	mv x73, x71
pretrace_pixels_beqelse_b5627:	#moved
# B5627
pretrace_pixels_loop_b5586:
# B5586
	lw x5, 0(x73)
	add x4, x72, x67
	lw x74, 0(x4)
	beq	x74, x68, pretrace_pixels_bneelse_b5587
# B5588
	add x4, x29, x74
	lw x75, 0(x4)
	lw x76, 10(x75)
	lw x77, 0(x76)
	lw x78, 1(x76)
	lw x79, 2(x76)
	lw x8, 1(x73)
	add x4, x8, x74
	lw x8, 0(x4)
	lw x80, 1(x75)
	bne	x80, x12, pretrace_pixels_beqelse_b5590
# B5589
	lw x76, 0(x73)
	lw x80, 0(x8)
	fsub x80, x80, x77
	lw x81, 1(x8)
	fmul x80, x80, x81
	lw x81, 1(x76)
	fmul x81, x80, x81
	fadd x81, x81, x78
	fabs x81, x81
	lw x82, 4(x75)
	lw x82, 1(x82)
	fle x81, x82, x81
	bne	x81, zero, pretrace_pixels_beqelse_b5591
# B5592
	lw x81, 2(x76)
	fmul x81, x80, x81
	fadd x81, x81, x79
	fabs x81, x81
	lw x82, 4(x75)
	lw x82, 2(x82)
	fle x81, x82, x81
	bne	x81, zero, pretrace_pixels_beqelse_b5593
# B5594
	lw x81, 1(x8)
	feq x81, x81, zero
	xori x81, x81, 1
	mv x82, x81
# B5595
	bne	x82, zero, pretrace_pixels_beqelse_b5597
	j pretrace_pixels_cont_b5596 # adhoc jump(3)
pretrace_pixels_beqelse_b5597:
# B5597
	sw x80, 0(x7)
	li x75, 1
	addi x67, x67, 1
	j pretrace_pixels_cont_b5625 # adhoc jump(2)
pretrace_pixels_beqelse_b5593:
# B5593
pretrace_pixels_beqelse_b5591:
# B5591
pretrace_pixels_cont_b5596:
# B5596
	lw x80, 2(x8)
	fsub x80, x80, x78
	lw x81, 3(x8)
	fmul x80, x80, x81
	lw x81, 0(x76)
	fmul x81, x80, x81
	fadd x81, x81, x77
	fabs x81, x81
	lw x82, 4(x75)
	lw x82, 0(x82)
	fle x81, x82, x81
	bne	x81, zero, pretrace_pixels_beqelse_b5598
# B5599
	lw x81, 2(x76)
	fmul x81, x80, x81
	fadd x81, x81, x79
	fabs x81, x81
	lw x82, 4(x75)
	lw x82, 2(x82)
	fle x81, x82, x81
	bne	x81, zero, pretrace_pixels_beqelse_b5600
# B5601
	lw x81, 3(x8)
	feq x81, x81, zero
	xori x81, x81, 1
	mv x82, x81
# B5602
	bne	x82, zero, pretrace_pixels_beqelse_b5604
	j pretrace_pixels_cont_b5603 # adhoc jump(3)
pretrace_pixels_beqelse_b5604:
# B5604
	sw x80, 0(x7)
	li x75, 2
	addi x67, x67, 1
	j pretrace_pixels_cont_b5625 # adhoc jump(2)
pretrace_pixels_beqelse_b5600:
# B5600
pretrace_pixels_beqelse_b5598:
# B5598
pretrace_pixels_cont_b5603:
# B5603
	lw x80, 4(x8)
	fsub x79, x80, x79
	lw x80, 5(x8)
	fmul x79, x79, x80
	lw x80, 0(x76)
	fmul x80, x79, x80
	fadd x77, x80, x77
	fabs x77, x77
	lw x80, 4(x75)
	lw x80, 0(x80)
	fle x77, x80, x77
	bne	x77, zero, pretrace_pixels_beqelse_b5605
# B5606
	lw x76, 1(x76)
	fmul x76, x79, x76
	fadd x76, x76, x78
	fabs x76, x76
	lw x75, 4(x75)
	lw x75, 1(x75)
	fle x75, x75, x76
	bne	x75, zero, pretrace_pixels_beqelse_b5607
# B5608
	lw x75, 5(x8)
	feq x75, x75, zero
	xori x75, x75, 1
	mv x76, x75
# B5609
	bne	x76, zero, pretrace_pixels_beqelse_b5611
	j pretrace_pixels_cont_b5610 # adhoc jump(3)
pretrace_pixels_beqelse_b5611:
# B5611
	sw x79, 0(x7)
	li x75, 3
	addi x67, x67, 1
	j pretrace_pixels_cont_b5625 # adhoc jump(2)
pretrace_pixels_beqelse_b5607:
# B5607
pretrace_pixels_beqelse_b5605:
# B5605
pretrace_pixels_cont_b5610:
# B5610
	mv x75, zero
	addi x67, x67, 1
	j pretrace_pixels_cont_b5624 # adhoc jump(2)
pretrace_pixels_beqelse_b5590:
# B5590
	bne	x80, x107, pretrace_pixels_beqelse_b5613
# B5612
	lw x75, 0(x8)
	fle x75, zero, x75
	beq	x75, zero, pretrace_pixels_bneelse_b5615
# B5614
	mv x75, zero
	addi x67, x67, 1
	j pretrace_pixels_cont_b5624 # adhoc jump(2)
pretrace_pixels_bneelse_b5615:
# B5615
	lw x75, 0(x8)
	lw x76, 3(x76)
	fmul x75, x75, x76
	sw x75, 0(x7)
	li x75, 1
	addi x67, x67, 1
	j pretrace_pixels_cont_b5625 # adhoc jump(2)
pretrace_pixels_beqelse_b5613:
# B5613
	lw x80, 0(x8)
	feq x81, x80, zero
	bne	x81, zero, pretrace_pixels_beqelse_b5617
# B5616
	lw x81, 1(x8)
	fmul x77, x81, x77
	lw x81, 2(x8)
	fmul x78, x81, x78
	fadd x77, x77, x78
	lw x78, 3(x8)
	fmul x78, x78, x79
	fadd x77, x77, x78
	lw x76, 3(x76)
	fmul x78, x77, x77
	fmul x76, x80, x76
	fsub x76, x78, x76
	fle x78, x76, zero
	beq	x78, zero, pretrace_pixels_bneelse_b5619
# B5618
	mv x75, zero
	addi x67, x67, 1
	j pretrace_pixels_cont_b5624 # adhoc jump(2)
pretrace_pixels_bneelse_b5619:
# B5619
	lw x75, 6(x75)
	bne	x75, zero, pretrace_pixels_beqelse_b5621
# B5620
	fsqrt x75, x76
	fsub x75, x77, x75
	lw x76, 4(x8)
	fmul x75, x75, x76
	sw x75, 0(x7)
	j pretrace_pixels_cont_b5622 # adhoc jump(2)
pretrace_pixels_beqelse_b5621:
# B5621
	fsqrt x75, x76
	fadd x75, x77, x75
	lw x76, 4(x8)
	fmul x75, x75, x76
	sw x75, 0(x7)
pretrace_pixels_cont_b5622:
# B5622
	li x75, 1
	addi x67, x67, 1
pretrace_pixels_cont_b5625:
# B5625
	lw x76, 0(x7)
	fle x77, x76, zero
	bne	x77, zero, pretrace_pixels_beqelse_b5628
# B5629
	lw x77, 0(x20)
	fle x77, x77, x76
	bne	x77, zero, pretrace_pixels_beqelse_b5630
# B5631
	lui x77, 246333
	addi x77, x77, 1802
	fadd x76, x76, x77
	lw x77, 0(x5)
	fmul x77, x77, x76
	lw x78, 0(x33)
	fadd x77, x77, x78
	lw x78, 1(x5)
	fmul x78, x78, x76
	lw x79, 1(x33)
	fadd x78, x78, x79
	lw x5, 2(x5)
	fmul x5, x5, x76
	lw x79, 2(x33)
	fadd x5, x5, x79
	mv x80, x77
	mv x82, x5
	mv x8, x72
	mv x81, x78
	mv x79, zero
	j	pretrace_pixels_loop_b5632
pretrace_pixels_bneelse_b5659:	#moved
# B5659
	addi x79, x79, 1
pretrace_pixels_loop_b5632:
# B5632
	add x4, x8, x79
	lw x83, 0(x4)
	beq	x83, x68, pretrace_pixels_bneelse_b5633
# B5634
	add x4, x29, x83
	lw x83, 0(x4)
	lw x84, 5(x83)
	lw x84, 0(x84)
	fsub x84, x80, x84
	lw x85, 5(x83)
	lw x85, 1(x85)
	fsub x85, x81, x85
	lw x86, 5(x83)
	lw x86, 2(x86)
	fsub x86, x82, x86
	lw x87, 1(x83)
	bne	x87, x12, pretrace_pixels_beqelse_b5636
# B5635
	fabs x84, x84
	lw x87, 4(x83)
	lw x87, 0(x87)
	fle x84, x87, x84
	bne	x84, zero, pretrace_pixels_beqelse_b5637
# B5638
	fabs x84, x85
	lw x85, 4(x83)
	lw x85, 1(x85)
	fle x84, x85, x84
	bne	x84, zero, pretrace_pixels_beqelse_b5639
# B5640
	fabs x84, x86
	lw x85, 4(x83)
	lw x85, 2(x85)
	fle x84, x85, x84
	xori x84, x84, 1
	mv x85, x84
# B5641
	bne	x85, zero, pretrace_pixels_beqelse_b5643
	j pretrace_pixels_cont_b5642 # adhoc jump(3)
pretrace_pixels_beqelse_b5643:
# B5643
	lw x83, 6(x83)
	j pretrace_pixels_cont_b5658 # adhoc jump(2)
pretrace_pixels_beqelse_b5639:
# B5639
pretrace_pixels_beqelse_b5637:
# B5637
pretrace_pixels_cont_b5642:
# B5642
	lw x83, 6(x83)
	xori x83, x83, 1
	j pretrace_pixels_cont_b5658 # adhoc jump(2)
pretrace_pixels_beqelse_b5636:
# B5636
	bne	x87, x107, pretrace_pixels_beqelse_b5645
# B5644
	lw x87, 4(x83)
	lw x88, 0(x87)
	fmul x84, x88, x84
	lw x88, 1(x87)
	fmul x85, x88, x85
	fadd x84, x84, x85
	lw x85, 2(x87)
	fmul x85, x85, x86
	fadd x84, x84, x85
	lw x83, 6(x83)
	fle x84, zero, x84
	xori x84, x84, 1
	bne	x83, zero, pretrace_pixels_beqelse_b5647
# B5646
	mv x83, x84
	j pretrace_pixels_cont_b5648 # adhoc jump(2)
pretrace_pixels_beqelse_b5647:
# B5647
	xori x83, x84, 1
pretrace_pixels_cont_b5648:
# B5648
	xori x83, x83, 1
	j pretrace_pixels_cont_b5658 # adhoc jump(2)
pretrace_pixels_beqelse_b5645:
# B5645
	fmul x87, x84, x84
	lw x88, 4(x83)
	lw x88, 0(x88)
	fmul x87, x87, x88
	fmul x88, x85, x85
	lw x89, 4(x83)
	lw x89, 1(x89)
	fmul x88, x88, x89
	fadd x87, x87, x88
	fmul x88, x86, x86
	lw x89, 4(x83)
	lw x89, 2(x89)
	fmul x88, x88, x89
	fadd x87, x87, x88
	lw x88, 3(x83)
	bne	x88, zero, pretrace_pixels_beqelse_b5650
# B5649
	mv x84, x87
	j pretrace_pixels_cont_b5651 # adhoc jump(2)
pretrace_pixels_beqelse_b5650:
# B5650
	fmul x88, x85, x86
	lw x89, 9(x83)
	lw x89, 0(x89)
	fmul x88, x88, x89
	fadd x87, x87, x88
	fmul x86, x86, x84
	lw x88, 9(x83)
	lw x88, 1(x88)
	fmul x86, x86, x88
	fadd x86, x87, x86
	fmul x84, x84, x85
	lw x85, 9(x83)
	lw x85, 2(x85)
	fmul x84, x84, x85
	fadd x84, x86, x84
pretrace_pixels_cont_b5651:
# B5651
	lw x85, 1(x83)
	li x86, 3
	bne	x85, x86, pretrace_pixels_beqelse_b5653
# B5652
	fsub x84, x84, x108
pretrace_pixels_beqelse_b5653:
# B5653
pretrace_pixels_cont_b5654:
# B5654
	lw x83, 6(x83)
	fle x84, zero, x84
	xori x84, x84, 1
	bne	x83, zero, pretrace_pixels_beqelse_b5656
# B5655
	mv x83, x84
	j pretrace_pixels_cont_b5657 # adhoc jump(2)
pretrace_pixels_beqelse_b5656:
# B5656
	xori x83, x84, 1
pretrace_pixels_cont_b5657:
# B5657
	xori x83, x83, 1
pretrace_pixels_cont_b5658:
# B5658
	beq	x83, zero, pretrace_pixels_bneelse_b5659
# B5660
# B5662
	j pretrace_pixels_cont_b5664 # adhoc jump(2)
pretrace_pixels_bneelse_b5633:
# B5633
# B5663
	sw x76, 0(x20)
	sw x77, 0(x30)
	sw x78, 1(x30)
	sw x5, 2(x30)
	sw x74, 0(x31)
	sw x75, 0(x32)
pretrace_pixels_beqelse_b5630:
# B5630
pretrace_pixels_beqelse_b5628:
# B5628
pretrace_pixels_cont_b5664:
# B5664
	j	pretrace_pixels_loop_b5586
pretrace_pixels_beqelse_b5617:
# B5617
	mv x75, zero
	addi x67, x67, 1
pretrace_pixels_cont_b5624:
# B5624
	add x4, x29, x74
	lw x5, 0(x4)
	lw x5, 6(x5)
	bne	x5, zero, pretrace_pixels_beqelse_b5627
# B5626
pretrace_pixels_bneelse_b5587:
# B5587
pretrace_pixels_cont_b5665:
# B5665
	addi x69, x69, 1
	j	pretrace_pixels_loop_b5583
pretrace_pixels_bneelse_b5584:
# B5584
pretrace_pixels_beqelse_b5581:
# B5581
pretrace_pixels_beqelse_b5573:
# B5573
pretrace_pixels_beqelse_b5572:
# B5572
pretrace_pixels_cont_b5579:
# B5579
pretrace_pixels_cont_b5666:
# B5666
	addi x6, x6, 1
	j	pretrace_pixels_loop_b5456
pretrace_pixels_bneelse_b5457:
# B5457
# B5667
	lw x5, 0(x20)
	fle x6, x5, x24
	bne	x6, zero, pretrace_pixels_beqelse_b5668
# B5669
	fle x5, x26, x5
	xori x5, x5, 1
	mv x6, x5
# B5670
	bne	x6, zero, pretrace_pixels_beqelse_b5672
	j pretrace_pixels_cont_b5671 # adhoc jump(3)
pretrace_pixels_beqelse_b5672:
# B5672
	lw x5, 0(x31)
	slli x5, x5, 2
	lw x6, 0(x32)
	add x5, x5, x6
	lw x6, 0(x28)
	bne	x5, x6, pretrace_pixels_beqelse_b5674
# B5673
	lw x5, 0(x22)
	mv x6, zero
	mv x65, x5
pretrace_pixels_loop_b5675:
# B5675
	add x4, x65, x6
	lw x5, 0(x4)
	lw x66, 0(x5)
	beq	x66, x23, pretrace_pixels_bneelse_b5676
# B5677
	li x67, 99
	bne	x66, x67, pretrace_pixels_beqelse_b5679
# B5678
	addi x6, x6, 1
	j pretrace_pixels_cont_b5819 # adhoc jump(2)
pretrace_pixels_beqelse_b5679:
# B5679
	la x67, min_caml_light_dirvec
	add x4, x29, x66
	lw x68, 0(x4)
	lw x69, 0(x30)
	lw x7, 5(x68)
	lw x7, 0(x7)
	fsub x69, x69, x7
	lw x7, 1(x30)
	lw x70, 5(x68)
	lw x70, 1(x70)
	fsub x7, x7, x70
	lw x70, 2(x30)
	lw x71, 5(x68)
	lw x71, 2(x71)
	fsub x70, x70, x71
	lw x71, 1(x67)
	add x4, x71, x66
	lw x66, 0(x4)
	lw x71, 1(x68)
	bne	x71, x12, pretrace_pixels_beqelse_b5681
# B5680
	lw x71, 0(x67)
	lw x72, 0(x66)
	fsub x72, x72, x69
	lw x73, 1(x66)
	fmul x72, x72, x73
	lw x73, 1(x71)
	fmul x73, x72, x73
	fadd x73, x73, x7
	fabs x73, x73
	lw x74, 4(x68)
	lw x74, 1(x74)
	fle x73, x74, x73
	bne	x73, zero, pretrace_pixels_beqelse_b5682
# B5683
	lw x73, 2(x71)
	fmul x73, x72, x73
	fadd x73, x73, x70
	fabs x73, x73
	lw x74, 4(x68)
	lw x74, 2(x74)
	fle x73, x74, x73
	bne	x73, zero, pretrace_pixels_beqelse_b5684
# B5685
	lw x73, 1(x66)
	feq x73, x73, zero
	xori x73, x73, 1
	mv x74, x73
# B5686
	bne	x74, zero, pretrace_pixels_beqelse_b5688
	j pretrace_pixels_cont_b5687 # adhoc jump(3)
pretrace_pixels_beqelse_b5688:
# B5688
	la x66, min_caml_solver_dist
	sw x72, 0(x66)
	j pretrace_pixels_cont_b5722 # adhoc jump(2)
pretrace_pixels_beqelse_b5684:
# B5684
pretrace_pixels_beqelse_b5682:
# B5682
pretrace_pixels_cont_b5687:
# B5687
	lw x72, 2(x66)
	fsub x72, x72, x7
	lw x73, 3(x66)
	fmul x72, x72, x73
	lw x73, 0(x71)
	fmul x73, x72, x73
	fadd x73, x73, x69
	fabs x73, x73
	lw x74, 4(x68)
	lw x74, 0(x74)
	fle x73, x74, x73
	bne	x73, zero, pretrace_pixels_beqelse_b5689
# B5690
	lw x73, 2(x71)
	fmul x73, x72, x73
	fadd x73, x73, x70
	fabs x73, x73
	lw x74, 4(x68)
	lw x74, 2(x74)
	fle x73, x74, x73
	bne	x73, zero, pretrace_pixels_beqelse_b5691
# B5692
	lw x73, 3(x66)
	feq x73, x73, zero
	xori x73, x73, 1
	mv x74, x73
# B5693
	bne	x74, zero, pretrace_pixels_beqelse_b5695
	j pretrace_pixels_cont_b5694 # adhoc jump(3)
pretrace_pixels_beqelse_b5695:
# B5695
	la x66, min_caml_solver_dist
	sw x72, 0(x66)
	j pretrace_pixels_cont_b5722 # adhoc jump(2)
pretrace_pixels_beqelse_b5691:
# B5691
pretrace_pixels_beqelse_b5689:
# B5689
pretrace_pixels_cont_b5694:
# B5694
	lw x72, 4(x66)
	fsub x70, x72, x70
	lw x72, 5(x66)
	fmul x70, x70, x72
	lw x72, 0(x71)
	fmul x72, x70, x72
	fadd x69, x72, x69
	fabs x69, x69
	lw x72, 4(x68)
	lw x72, 0(x72)
	fle x69, x72, x69
	bne	x69, zero, pretrace_pixels_beqelse_b5696
# B5697
	lw x69, 1(x71)
	fmul x69, x70, x69
	fadd x69, x69, x7
	fabs x69, x69
	lw x68, 4(x68)
	lw x68, 1(x68)
	fle x68, x68, x69
	bne	x68, zero, pretrace_pixels_beqelse_b5698
# B5699
	lw x66, 5(x66)
	feq x66, x66, zero
	xori x66, x66, 1
	mv x68, x66
# B5700
	bne	x68, zero, pretrace_pixels_beqelse_b5702
	j pretrace_pixels_cont_b5701 # adhoc jump(3)
pretrace_pixels_beqelse_b5702:
# B5702
	la x66, min_caml_solver_dist
	sw x70, 0(x66)
	j pretrace_pixels_cont_b5722 # adhoc jump(2)
pretrace_pixels_beqelse_b5698:
# B5698
pretrace_pixels_beqelse_b5696:
# B5696
pretrace_pixels_cont_b5701:
# B5701
	j pretrace_pixels_cont_b5721 # adhoc jump(2)
pretrace_pixels_beqelse_b5681:
# B5681
	bne	x71, x107, pretrace_pixels_beqelse_b5704
# B5703
	lw x68, 0(x66)
	fle x68, zero, x68
	bne	x68, zero, pretrace_pixels_beqelse_b5705
# B5706
	la x68, min_caml_solver_dist
	lw x71, 1(x66)
	fmul x69, x71, x69
	lw x71, 2(x66)
	fmul x7, x71, x7
	fadd x69, x69, x7
	lw x66, 3(x66)
	fmul x66, x66, x70
	fadd x66, x69, x66
	sw x66, 0(x68)
	j pretrace_pixels_cont_b5722 # adhoc jump(2)
pretrace_pixels_beqelse_b5705:
# B5705
	j pretrace_pixels_cont_b5721 # adhoc jump(2)
pretrace_pixels_beqelse_b5704:
# B5704
	lw x71, 0(x66)
	feq x72, x71, zero
	bne	x72, zero, pretrace_pixels_beqelse_b5708
# B5707
	lw x72, 1(x66)
	fmul x72, x72, x69
	lw x73, 2(x66)
	fmul x73, x73, x7
	fadd x72, x72, x73
	li x73, 3
	lw x74, 3(x66)
	fmul x74, x74, x70
	fadd x72, x72, x74
	fmul x74, x69, x69
	lw x75, 4(x68)
	lw x75, 0(x75)
	fmul x74, x74, x75
	fmul x75, x7, x7
	lw x76, 4(x68)
	lw x76, 1(x76)
	fmul x75, x75, x76
	fadd x74, x74, x75
	fmul x75, x70, x70
	lw x76, 4(x68)
	lw x76, 2(x76)
	fmul x75, x75, x76
	fadd x74, x74, x75
	lw x75, 3(x68)
	bne	x75, zero, pretrace_pixels_beqelse_b5710
# B5709
	mv x69, x74
	j pretrace_pixels_cont_b5711 # adhoc jump(2)
pretrace_pixels_beqelse_b5710:
# B5710
	fmul x75, x7, x70
	lw x76, 9(x68)
	lw x76, 0(x76)
	fmul x75, x75, x76
	fadd x74, x74, x75
	fmul x70, x70, x69
	lw x75, 9(x68)
	lw x75, 1(x75)
	fmul x70, x70, x75
	fadd x70, x74, x70
	fmul x69, x69, x7
	lw x7, 9(x68)
	lw x7, 2(x7)
	fmul x69, x69, x7
	fadd x69, x70, x69
pretrace_pixels_cont_b5711:
# B5711
	lw x7, 1(x68)
	bne	x7, x73, pretrace_pixels_beqelse_b5713
# B5712
	fsub x69, x69, x108
pretrace_pixels_beqelse_b5713:
# B5713
pretrace_pixels_cont_b5714:
# B5714
	fmul x7, x72, x72
	fmul x69, x71, x69
	fsub x69, x7, x69
	fle x7, x69, zero
	bne	x7, zero, pretrace_pixels_beqelse_b5715
# B5716
	lw x68, 6(x68)
	bne	x68, zero, pretrace_pixels_beqelse_b5718
# B5717
	la x68, min_caml_solver_dist
	fsqrt x69, x69
	fsub x69, x72, x69
	lw x66, 4(x66)
	fmul x66, x69, x66
	sw x66, 0(x68)
	j pretrace_pixels_cont_b5719 # adhoc jump(2)
pretrace_pixels_beqelse_b5718:
# B5718
	la x68, min_caml_solver_dist
	fsqrt x69, x69
	fadd x69, x72, x69
	lw x66, 4(x66)
	fmul x66, x69, x66
	sw x66, 0(x68)
pretrace_pixels_cont_b5719:
# B5719
pretrace_pixels_cont_b5722:
# B5722
	la x66, min_caml_solver_dist
	lw x68, 0(x66)
	fle x68, x24, x68
	beq	x68, zero, pretrace_pixels_bneelse_b5724
# B5723
	addi x6, x6, 1
	j pretrace_pixels_cont_b5818 # adhoc jump(2)
pretrace_pixels_bneelse_b5724:
# B5724
	mv x69, x12
	mv x7, x5
pretrace_pixels_loop_b5725:
# B5725
	add x4, x7, x69
	lw x68, 0(x4)
	beq	x68, x23, pretrace_pixels_bneelse_b5726
# B5727
	la x70, min_caml_and_net
	add x4, x70, x68
	lw x68, 0(x4)
	mv x70, zero
	mv x71, x68
pretrace_pixels_loop_b5728:
# B5728
	add x4, x71, x70
	lw x68, 0(x4)
	beq	x68, x23, pretrace_pixels_bneelse_b5729
# B5730
	add x4, x71, x70
	lw x68, 0(x4)
	add x4, x29, x68
	lw x72, 0(x4)
	lw x73, 0(x30)
	lw x74, 5(x72)
	lw x74, 0(x74)
	fsub x73, x73, x74
	lw x74, 1(x30)
	lw x75, 5(x72)
	lw x75, 1(x75)
	fsub x74, x74, x75
	lw x75, 2(x30)
	lw x76, 5(x72)
	lw x76, 2(x76)
	fsub x75, x75, x76
	lw x76, 1(x67)
	add x4, x76, x68
	lw x76, 0(x4)
	lw x77, 1(x72)
	bne	x77, x12, pretrace_pixels_beqelse_b5732
# B5731
	lw x77, 0(x67)
	lw x78, 0(x76)
	fsub x78, x78, x73
	lw x79, 1(x76)
	fmul x78, x78, x79
	lw x79, 1(x77)
	fmul x79, x78, x79
	fadd x79, x79, x74
	fabs x79, x79
	lw x8, 4(x72)
	lw x8, 1(x8)
	fle x79, x8, x79
	bne	x79, zero, pretrace_pixels_beqelse_b5733
# B5734
	lw x79, 2(x77)
	fmul x79, x78, x79
	fadd x79, x79, x75
	fabs x79, x79
	lw x8, 4(x72)
	lw x8, 2(x8)
	fle x79, x8, x79
	bne	x79, zero, pretrace_pixels_beqelse_b5735
# B5736
	lw x79, 1(x76)
	feq x79, x79, zero
	xori x79, x79, 1
	mv x8, x79
# B5737
	bne	x8, zero, pretrace_pixels_beqelse_b5739
	j pretrace_pixels_cont_b5738 # adhoc jump(3)
pretrace_pixels_beqelse_b5739:
# B5739
	sw x78, 0(x66)
	lw x73, 0(x66)
	j pretrace_pixels_cont_b5773 # adhoc jump(2)
pretrace_pixels_beqelse_b5735:
# B5735
pretrace_pixels_beqelse_b5733:
# B5733
pretrace_pixels_cont_b5738:
# B5738
	lw x78, 2(x76)
	fsub x78, x78, x74
	lw x79, 3(x76)
	fmul x78, x78, x79
	lw x79, 0(x77)
	fmul x79, x78, x79
	fadd x79, x79, x73
	fabs x79, x79
	lw x8, 4(x72)
	lw x8, 0(x8)
	fle x79, x8, x79
	bne	x79, zero, pretrace_pixels_beqelse_b5740
# B5741
	lw x79, 2(x77)
	fmul x79, x78, x79
	fadd x79, x79, x75
	fabs x79, x79
	lw x8, 4(x72)
	lw x8, 2(x8)
	fle x79, x8, x79
	bne	x79, zero, pretrace_pixels_beqelse_b5742
# B5743
	lw x79, 3(x76)
	feq x79, x79, zero
	xori x79, x79, 1
	mv x8, x79
# B5744
	bne	x8, zero, pretrace_pixels_beqelse_b5746
	j pretrace_pixels_cont_b5745 # adhoc jump(3)
pretrace_pixels_beqelse_b5746:
# B5746
	sw x78, 0(x66)
	lw x73, 0(x66)
	j pretrace_pixels_cont_b5773 # adhoc jump(2)
pretrace_pixels_beqelse_b5742:
# B5742
pretrace_pixels_beqelse_b5740:
# B5740
pretrace_pixels_cont_b5745:
# B5745
	lw x78, 4(x76)
	fsub x75, x78, x75
	lw x78, 5(x76)
	fmul x75, x75, x78
	lw x78, 0(x77)
	fmul x78, x75, x78
	fadd x73, x78, x73
	fabs x73, x73
	lw x78, 4(x72)
	lw x78, 0(x78)
	fle x73, x78, x73
	bne	x73, zero, pretrace_pixels_beqelse_b5747
# B5748
	lw x73, 1(x77)
	fmul x73, x75, x73
	fadd x73, x73, x74
	fabs x73, x73
	lw x72, 4(x72)
	lw x72, 1(x72)
	fle x72, x72, x73
	bne	x72, zero, pretrace_pixels_beqelse_b5749
# B5750
	lw x72, 5(x76)
	feq x72, x72, zero
	xori x72, x72, 1
	mv x73, x72
# B5751
	bne	x73, zero, pretrace_pixels_beqelse_b5753
	j pretrace_pixels_cont_b5752 # adhoc jump(3)
pretrace_pixels_beqelse_b5753:
# B5753
	sw x75, 0(x66)
	lw x73, 0(x66)
	j pretrace_pixels_cont_b5773 # adhoc jump(2)
pretrace_pixels_beqelse_b5749:
# B5749
pretrace_pixels_beqelse_b5747:
# B5747
pretrace_pixels_cont_b5752:
# B5752
	lw x73, 0(x66)
	j pretrace_pixels_cont_b5772 # adhoc jump(2)
pretrace_pixels_beqelse_b5732:
# B5732
	bne	x77, x107, pretrace_pixels_beqelse_b5755
# B5754
	lw x72, 0(x76)
	fle x72, zero, x72
	beq	x72, zero, pretrace_pixels_bneelse_b5757
# B5756
	lw x73, 0(x66)
	j pretrace_pixels_cont_b5772 # adhoc jump(2)
pretrace_pixels_bneelse_b5757:
# B5757
	lw x72, 1(x76)
	fmul x72, x72, x73
	lw x73, 2(x76)
	fmul x73, x73, x74
	fadd x72, x72, x73
	lw x73, 3(x76)
	fmul x73, x73, x75
	fadd x72, x72, x73
	sw x72, 0(x66)
	lw x73, 0(x66)
	j pretrace_pixels_cont_b5773 # adhoc jump(2)
pretrace_pixels_beqelse_b5755:
# B5755
	lw x77, 0(x76)
	feq x78, x77, zero
	bne	x78, zero, pretrace_pixels_beqelse_b5759
# B5758
	lw x78, 1(x76)
	fmul x78, x78, x73
	lw x79, 2(x76)
	fmul x79, x79, x74
	fadd x78, x78, x79
	li x79, 3
	lw x8, 3(x76)
	fmul x8, x8, x75
	fadd x78, x78, x8
	fmul x8, x73, x73
	lw x80, 4(x72)
	lw x80, 0(x80)
	fmul x8, x8, x80
	fmul x80, x74, x74
	lw x81, 4(x72)
	lw x81, 1(x81)
	fmul x80, x80, x81
	fadd x8, x8, x80
	fmul x80, x75, x75
	lw x81, 4(x72)
	lw x81, 2(x81)
	fmul x80, x80, x81
	fadd x8, x8, x80
	lw x80, 3(x72)
	bne	x80, zero, pretrace_pixels_beqelse_b5761
# B5760
	mv x73, x8
	j pretrace_pixels_cont_b5762 # adhoc jump(2)
pretrace_pixels_beqelse_b5761:
# B5761
	fmul x80, x74, x75
	lw x81, 9(x72)
	lw x81, 0(x81)
	fmul x80, x80, x81
	fadd x8, x8, x80
	fmul x75, x75, x73
	lw x80, 9(x72)
	lw x80, 1(x80)
	fmul x75, x75, x80
	fadd x75, x8, x75
	fmul x73, x73, x74
	lw x74, 9(x72)
	lw x74, 2(x74)
	fmul x73, x73, x74
	fadd x73, x75, x73
pretrace_pixels_cont_b5762:
# B5762
	lw x74, 1(x72)
	bne	x74, x79, pretrace_pixels_beqelse_b5764
# B5763
	fsub x73, x73, x108
pretrace_pixels_beqelse_b5764:
# B5764
pretrace_pixels_cont_b5765:
# B5765
	fmul x74, x78, x78
	fmul x73, x77, x73
	fsub x73, x74, x73
	fle x74, x73, zero
	beq	x74, zero, pretrace_pixels_bneelse_b5767
# B5766
	lw x73, 0(x66)
	j pretrace_pixels_cont_b5772 # adhoc jump(2)
pretrace_pixels_bneelse_b5767:
# B5767
	lw x72, 6(x72)
	bne	x72, zero, pretrace_pixels_beqelse_b5769
# B5768
	fsqrt x72, x73
	fsub x72, x78, x72
	lw x73, 4(x76)
	fmul x72, x72, x73
	sw x72, 0(x66)
	j pretrace_pixels_cont_b5770 # adhoc jump(2)
pretrace_pixels_beqelse_b5769:
# B5769
	fsqrt x72, x73
	fadd x72, x78, x72
	lw x73, 4(x76)
	fmul x72, x72, x73
	sw x72, 0(x66)
pretrace_pixels_cont_b5770:
# B5770
	lw x73, 0(x66)
pretrace_pixels_cont_b5773:
# B5773
	lui x72, 779469
	addi x72, x72, -819
	fle x72, x72, x73
	xori x72, x72, 1
# B5774
	addi x70, x70, 1
	bne	x72, zero, pretrace_pixels_beqelse_b5776
	j pretrace_pixels_cont_b5775 # adhoc jump(3)
pretrace_pixels_beqelse_b5776:
# B5776
	lui x68, 246333
	addi x68, x68, 1802
	fadd x68, x73, x68
	la x72, min_caml_light
	lw x73, 0(x72)
	fmul x73, x73, x68
	lw x74, 0(x30)
	fadd x73, x73, x74
	lw x74, 1(x72)
	fmul x74, x74, x68
	lw x75, 1(x30)
	fadd x74, x74, x75
	lw x72, 2(x72)
	fmul x68, x72, x68
	lw x72, 2(x30)
	fadd x68, x68, x72
	mv x77, x74
	mv x72, zero
	mv x76, x73
	mv x78, x68
	mv x75, x71
	j	pretrace_pixels_loop_b5779
pretrace_pixels_bneelse_b5806:	#moved
# B5806
	addi x72, x72, 1
pretrace_pixels_loop_b5779:
# B5779
	add x4, x75, x72
	lw x68, 0(x4)
	beq	x68, x23, pretrace_pixels_bneelse_b5780
# B5781
	add x4, x29, x68
	lw x68, 0(x4)
	lw x73, 5(x68)
	lw x73, 0(x73)
	fsub x73, x76, x73
	lw x74, 5(x68)
	lw x74, 1(x74)
	fsub x74, x77, x74
	lw x79, 5(x68)
	lw x79, 2(x79)
	fsub x79, x78, x79
	lw x8, 1(x68)
	bne	x8, x12, pretrace_pixels_beqelse_b5783
# B5782
	fabs x73, x73
	lw x8, 4(x68)
	lw x8, 0(x8)
	fle x73, x8, x73
	bne	x73, zero, pretrace_pixels_beqelse_b5784
# B5785
	fabs x73, x74
	lw x74, 4(x68)
	lw x74, 1(x74)
	fle x73, x74, x73
	bne	x73, zero, pretrace_pixels_beqelse_b5786
# B5787
	fabs x73, x79
	lw x74, 4(x68)
	lw x74, 2(x74)
	fle x73, x74, x73
	xori x73, x73, 1
	mv x74, x73
# B5788
	bne	x74, zero, pretrace_pixels_beqelse_b5790
	j pretrace_pixels_cont_b5789 # adhoc jump(3)
pretrace_pixels_beqelse_b5790:
# B5790
	lw x68, 6(x68)
	j pretrace_pixels_cont_b5805 # adhoc jump(2)
pretrace_pixels_beqelse_b5786:
# B5786
pretrace_pixels_beqelse_b5784:
# B5784
pretrace_pixels_cont_b5789:
# B5789
	lw x68, 6(x68)
	xori x68, x68, 1
	j pretrace_pixels_cont_b5805 # adhoc jump(2)
pretrace_pixels_beqelse_b5783:
# B5783
	bne	x8, x107, pretrace_pixels_beqelse_b5792
# B5791
	lw x8, 4(x68)
	lw x80, 0(x8)
	fmul x73, x80, x73
	lw x80, 1(x8)
	fmul x74, x80, x74
	fadd x73, x73, x74
	lw x74, 2(x8)
	fmul x74, x74, x79
	fadd x73, x73, x74
	lw x68, 6(x68)
	fle x73, zero, x73
	xori x73, x73, 1
	bne	x68, zero, pretrace_pixels_beqelse_b5794
# B5793
	mv x68, x73
	j pretrace_pixels_cont_b5795 # adhoc jump(2)
pretrace_pixels_beqelse_b5794:
# B5794
	xori x68, x73, 1
pretrace_pixels_cont_b5795:
# B5795
	xori x68, x68, 1
	j pretrace_pixels_cont_b5805 # adhoc jump(2)
pretrace_pixels_beqelse_b5792:
# B5792
	fmul x8, x73, x73
	lw x80, 4(x68)
	lw x80, 0(x80)
	fmul x8, x8, x80
	fmul x80, x74, x74
	lw x81, 4(x68)
	lw x81, 1(x81)
	fmul x80, x80, x81
	fadd x8, x8, x80
	fmul x80, x79, x79
	lw x81, 4(x68)
	lw x81, 2(x81)
	fmul x80, x80, x81
	fadd x8, x8, x80
	lw x80, 3(x68)
	bne	x80, zero, pretrace_pixels_beqelse_b5797
# B5796
	mv x73, x8
	j pretrace_pixels_cont_b5798 # adhoc jump(2)
pretrace_pixels_beqelse_b5797:
# B5797
	fmul x80, x74, x79
	lw x81, 9(x68)
	lw x81, 0(x81)
	fmul x80, x80, x81
	fadd x8, x8, x80
	fmul x79, x79, x73
	lw x80, 9(x68)
	lw x80, 1(x80)
	fmul x79, x79, x80
	fadd x79, x8, x79
	fmul x73, x73, x74
	lw x74, 9(x68)
	lw x74, 2(x74)
	fmul x73, x73, x74
	fadd x73, x79, x73
pretrace_pixels_cont_b5798:
# B5798
	lw x74, 1(x68)
	li x79, 3
	bne	x74, x79, pretrace_pixels_beqelse_b5800
# B5799
	fsub x73, x73, x108
pretrace_pixels_beqelse_b5800:
# B5800
pretrace_pixels_cont_b5801:
# B5801
	lw x68, 6(x68)
	fle x73, zero, x73
	xori x73, x73, 1
	bne	x68, zero, pretrace_pixels_beqelse_b5803
# B5802
	mv x68, x73
	j pretrace_pixels_cont_b5804 # adhoc jump(2)
pretrace_pixels_beqelse_b5803:
# B5803
	xori x68, x73, 1
pretrace_pixels_cont_b5804:
# B5804
	xori x68, x68, 1
pretrace_pixels_cont_b5805:
# B5805
	beq	x68, zero, pretrace_pixels_bneelse_b5806
# B5807
# B5809
	j	pretrace_pixels_loop_b5728
pretrace_pixels_bneelse_b5780:
# B5780
# B5810
	mv x68, x12
# B5811
	bne	x68, zero, pretrace_pixels_beqelse_b5813
	j pretrace_pixels_cont_b5812 # adhoc jump(3)
pretrace_pixels_beqelse_b5813:
# B5813
	mv x70, x12
# B5814
	bne	x70, zero, pretrace_pixels_beqelse_b5816
	j pretrace_pixels_cont_b5815 # adhoc jump(3)
pretrace_pixels_beqelse_b5816:
# B5816
	mv x66, x12
# B5817
	addi x6, x6, 1
	bne	x66, zero, pretrace_pixels_beqelse_b5819
	j pretrace_pixels_cont_b5818 # adhoc jump(3)
pretrace_pixels_beqelse_b5819:
pretrace_pixels_cont_b5819:
# B5819
	mv x67, x12
	mv x68, x5
pretrace_pixels_loop_b5820:
# B5820
	add x4, x68, x67
	lw x5, 0(x4)
	beq	x5, x23, pretrace_pixels_bneelse_b5821
# B5822
	la x66, min_caml_and_net
	add x4, x66, x5
	lw x5, 0(x4)
	mv x66, zero
	mv x69, x5
pretrace_pixels_loop_b5823:
# B5823
	add x4, x69, x66
	lw x5, 0(x4)
	beq	x5, x23, pretrace_pixels_bneelse_b5824
# B5825
	add x4, x69, x66
	lw x5, 0(x4)
	la x7, min_caml_light_dirvec
	add x4, x29, x5
	lw x70, 0(x4)
	lw x71, 0(x30)
	lw x72, 5(x70)
	lw x72, 0(x72)
	fsub x71, x71, x72
	lw x72, 1(x30)
	lw x73, 5(x70)
	lw x73, 1(x73)
	fsub x72, x72, x73
	lw x73, 2(x30)
	lw x74, 5(x70)
	lw x74, 2(x74)
	fsub x73, x73, x74
	lw x74, 1(x7)
	add x4, x74, x5
	lw x74, 0(x4)
	lw x75, 1(x70)
	bne	x75, x12, pretrace_pixels_beqelse_b5827
# B5826
	lw x7, 0(x7)
	lw x75, 0(x74)
	fsub x75, x75, x71
	lw x76, 1(x74)
	fmul x75, x75, x76
	lw x76, 1(x7)
	fmul x76, x75, x76
	fadd x76, x76, x72
	fabs x76, x76
	lw x77, 4(x70)
	lw x77, 1(x77)
	fle x76, x77, x76
	bne	x76, zero, pretrace_pixels_beqelse_b5828
# B5829
	lw x76, 2(x7)
	fmul x76, x75, x76
	fadd x76, x76, x73
	fabs x76, x76
	lw x77, 4(x70)
	lw x77, 2(x77)
	fle x76, x77, x76
	bne	x76, zero, pretrace_pixels_beqelse_b5830
# B5831
	lw x76, 1(x74)
	feq x76, x76, zero
	xori x76, x76, 1
	mv x77, x76
# B5832
	bne	x77, zero, pretrace_pixels_beqelse_b5834
	j pretrace_pixels_cont_b5833 # adhoc jump(3)
pretrace_pixels_beqelse_b5834:
# B5834
	la x7, min_caml_solver_dist
	sw x75, 0(x7)
	la x70, min_caml_solver_dist
	lw x70, 0(x70)
	j pretrace_pixels_cont_b5868 # adhoc jump(2)
pretrace_pixels_beqelse_b5830:
# B5830
pretrace_pixels_beqelse_b5828:
# B5828
pretrace_pixels_cont_b5833:
# B5833
	lw x75, 2(x74)
	fsub x75, x75, x72
	lw x76, 3(x74)
	fmul x75, x75, x76
	lw x76, 0(x7)
	fmul x76, x75, x76
	fadd x76, x76, x71
	fabs x76, x76
	lw x77, 4(x70)
	lw x77, 0(x77)
	fle x76, x77, x76
	bne	x76, zero, pretrace_pixels_beqelse_b5835
# B5836
	lw x76, 2(x7)
	fmul x76, x75, x76
	fadd x76, x76, x73
	fabs x76, x76
	lw x77, 4(x70)
	lw x77, 2(x77)
	fle x76, x77, x76
	bne	x76, zero, pretrace_pixels_beqelse_b5837
# B5838
	lw x76, 3(x74)
	feq x76, x76, zero
	xori x76, x76, 1
	mv x77, x76
# B5839
	bne	x77, zero, pretrace_pixels_beqelse_b5841
	j pretrace_pixels_cont_b5840 # adhoc jump(3)
pretrace_pixels_beqelse_b5841:
# B5841
	la x7, min_caml_solver_dist
	sw x75, 0(x7)
	la x70, min_caml_solver_dist
	lw x70, 0(x70)
	j pretrace_pixels_cont_b5868 # adhoc jump(2)
pretrace_pixels_beqelse_b5837:
# B5837
pretrace_pixels_beqelse_b5835:
# B5835
pretrace_pixels_cont_b5840:
# B5840
	lw x75, 4(x74)
	fsub x73, x75, x73
	lw x75, 5(x74)
	fmul x73, x73, x75
	lw x75, 0(x7)
	fmul x75, x73, x75
	fadd x71, x75, x71
	fabs x71, x71
	lw x75, 4(x70)
	lw x75, 0(x75)
	fle x71, x75, x71
	bne	x71, zero, pretrace_pixels_beqelse_b5842
# B5843
	lw x7, 1(x7)
	fmul x7, x73, x7
	fadd x7, x7, x72
	fabs x7, x7
	lw x70, 4(x70)
	lw x70, 1(x70)
	fle x7, x70, x7
	bne	x7, zero, pretrace_pixels_beqelse_b5844
# B5845
	lw x7, 5(x74)
	feq x7, x7, zero
	xori x7, x7, 1
	mv x70, x7
# B5846
	bne	x70, zero, pretrace_pixels_beqelse_b5848
	j pretrace_pixels_cont_b5847 # adhoc jump(3)
pretrace_pixels_beqelse_b5848:
# B5848
	la x7, min_caml_solver_dist
	sw x73, 0(x7)
	la x70, min_caml_solver_dist
	lw x70, 0(x70)
	j pretrace_pixels_cont_b5868 # adhoc jump(2)
pretrace_pixels_beqelse_b5844:
# B5844
pretrace_pixels_beqelse_b5842:
# B5842
pretrace_pixels_cont_b5847:
# B5847
	la x70, min_caml_solver_dist
	lw x70, 0(x70)
	j pretrace_pixels_cont_b5867 # adhoc jump(2)
pretrace_pixels_beqelse_b5827:
# B5827
	bne	x75, x107, pretrace_pixels_beqelse_b5850
# B5849
	lw x7, 0(x74)
	fle x7, zero, x7
	beq	x7, zero, pretrace_pixels_bneelse_b5852
# B5851
	la x70, min_caml_solver_dist
	lw x70, 0(x70)
	j pretrace_pixels_cont_b5867 # adhoc jump(2)
pretrace_pixels_bneelse_b5852:
# B5852
	la x7, min_caml_solver_dist
	lw x70, 1(x74)
	fmul x70, x70, x71
	lw x71, 2(x74)
	fmul x71, x71, x72
	fadd x70, x70, x71
	lw x71, 3(x74)
	fmul x71, x71, x73
	fadd x70, x70, x71
	sw x70, 0(x7)
	la x70, min_caml_solver_dist
	lw x70, 0(x70)
	j pretrace_pixels_cont_b5868 # adhoc jump(2)
pretrace_pixels_beqelse_b5850:
# B5850
	lw x7, 0(x74)
	feq x75, x7, zero
	bne	x75, zero, pretrace_pixels_beqelse_b5854
# B5853
	lw x75, 1(x74)
	fmul x75, x75, x71
	lw x76, 2(x74)
	fmul x76, x76, x72
	fadd x75, x75, x76
	li x76, 3
	lw x77, 3(x74)
	fmul x77, x77, x73
	fadd x75, x75, x77
	fmul x77, x71, x71
	lw x78, 4(x70)
	lw x78, 0(x78)
	fmul x77, x77, x78
	fmul x78, x72, x72
	lw x79, 4(x70)
	lw x79, 1(x79)
	fmul x78, x78, x79
	fadd x77, x77, x78
	fmul x78, x73, x73
	lw x79, 4(x70)
	lw x79, 2(x79)
	fmul x78, x78, x79
	fadd x77, x77, x78
	lw x78, 3(x70)
	bne	x78, zero, pretrace_pixels_beqelse_b5856
# B5855
	mv x71, x77
	j pretrace_pixels_cont_b5857 # adhoc jump(2)
pretrace_pixels_beqelse_b5856:
# B5856
	fmul x78, x72, x73
	lw x79, 9(x70)
	lw x79, 0(x79)
	fmul x78, x78, x79
	fadd x77, x77, x78
	fmul x73, x73, x71
	lw x78, 9(x70)
	lw x78, 1(x78)
	fmul x73, x73, x78
	fadd x73, x77, x73
	fmul x71, x71, x72
	lw x72, 9(x70)
	lw x72, 2(x72)
	fmul x71, x71, x72
	fadd x71, x73, x71
pretrace_pixels_cont_b5857:
# B5857
	lw x72, 1(x70)
	bne	x72, x76, pretrace_pixels_beqelse_b5859
# B5858
	fsub x71, x71, x108
pretrace_pixels_beqelse_b5859:
# B5859
pretrace_pixels_cont_b5860:
# B5860
	fmul x72, x75, x75
	fmul x7, x7, x71
	fsub x7, x72, x7
	fle x71, x7, zero
	beq	x71, zero, pretrace_pixels_bneelse_b5862
# B5861
	la x70, min_caml_solver_dist
	lw x70, 0(x70)
	j pretrace_pixels_cont_b5867 # adhoc jump(2)
pretrace_pixels_bneelse_b5862:
# B5862
	lw x70, 6(x70)
	bne	x70, zero, pretrace_pixels_beqelse_b5864
# B5863
	la x70, min_caml_solver_dist
	fsqrt x7, x7
	fsub x7, x75, x7
	lw x71, 4(x74)
	fmul x7, x7, x71
	sw x7, 0(x70)
	j pretrace_pixels_cont_b5865 # adhoc jump(2)
pretrace_pixels_beqelse_b5864:
# B5864
	la x70, min_caml_solver_dist
	fsqrt x7, x7
	fadd x7, x75, x7
	lw x71, 4(x74)
	fmul x7, x7, x71
	sw x7, 0(x70)
pretrace_pixels_cont_b5865:
# B5865
	la x70, min_caml_solver_dist
	lw x70, 0(x70)
pretrace_pixels_cont_b5868:
# B5868
	lui x7, 779469
	addi x7, x7, -819
	fle x7, x7, x70
	xori x7, x7, 1
# B5869
	addi x66, x66, 1
	bne	x7, zero, pretrace_pixels_beqelse_b5871
	j pretrace_pixels_cont_b5870 # adhoc jump(3)
pretrace_pixels_beqelse_b5871:
# B5871
	lui x5, 246333
	addi x5, x5, 1802
	fadd x5, x70, x5
	la x7, min_caml_light
	lw x70, 0(x7)
	fmul x70, x70, x5
	lw x71, 0(x30)
	fadd x70, x70, x71
	lw x71, 1(x7)
	fmul x71, x71, x5
	lw x72, 1(x30)
	fadd x71, x71, x72
	lw x7, 2(x7)
	fmul x5, x7, x5
	lw x7, 2(x30)
	fadd x5, x5, x7
	mv x73, x70
	mv x72, x69
	mv x74, x71
	mv x7, zero
	mv x75, x5
	j	pretrace_pixels_loop_b5874
pretrace_pixels_bneelse_b5901:	#moved
# B5901
	addi x7, x7, 1
pretrace_pixels_loop_b5874:
# B5874
	add x4, x72, x7
	lw x5, 0(x4)
	beq	x5, x23, pretrace_pixels_bneelse_b5875
# B5876
	add x4, x29, x5
	lw x5, 0(x4)
	lw x70, 5(x5)
	lw x70, 0(x70)
	fsub x70, x73, x70
	lw x71, 5(x5)
	lw x71, 1(x71)
	fsub x71, x74, x71
	lw x76, 5(x5)
	lw x76, 2(x76)
	fsub x76, x75, x76
	lw x77, 1(x5)
	bne	x77, x12, pretrace_pixels_beqelse_b5878
# B5877
	fabs x70, x70
	lw x77, 4(x5)
	lw x77, 0(x77)
	fle x70, x77, x70
	bne	x70, zero, pretrace_pixels_beqelse_b5879
# B5880
	fabs x70, x71
	lw x71, 4(x5)
	lw x71, 1(x71)
	fle x70, x71, x70
	bne	x70, zero, pretrace_pixels_beqelse_b5881
# B5882
	fabs x70, x76
	lw x71, 4(x5)
	lw x71, 2(x71)
	fle x70, x71, x70
	xori x70, x70, 1
	mv x71, x70
# B5883
	bne	x71, zero, pretrace_pixels_beqelse_b5885
	j pretrace_pixels_cont_b5884 # adhoc jump(3)
pretrace_pixels_beqelse_b5885:
# B5885
	lw x5, 6(x5)
	j pretrace_pixels_cont_b5900 # adhoc jump(2)
pretrace_pixels_beqelse_b5881:
# B5881
pretrace_pixels_beqelse_b5879:
# B5879
pretrace_pixels_cont_b5884:
# B5884
	lw x5, 6(x5)
	xori x5, x5, 1
	j pretrace_pixels_cont_b5900 # adhoc jump(2)
pretrace_pixels_beqelse_b5878:
# B5878
	bne	x77, x107, pretrace_pixels_beqelse_b5887
# B5886
	lw x77, 4(x5)
	lw x78, 0(x77)
	fmul x70, x78, x70
	lw x78, 1(x77)
	fmul x71, x78, x71
	fadd x70, x70, x71
	lw x71, 2(x77)
	fmul x71, x71, x76
	fadd x70, x70, x71
	lw x5, 6(x5)
	fle x70, zero, x70
	xori x70, x70, 1
	bne	x5, zero, pretrace_pixels_beqelse_b5889
# B5888
	mv x5, x70
	j pretrace_pixels_cont_b5890 # adhoc jump(2)
pretrace_pixels_beqelse_b5889:
# B5889
	xori x5, x70, 1
pretrace_pixels_cont_b5890:
# B5890
	xori x5, x5, 1
	j pretrace_pixels_cont_b5900 # adhoc jump(2)
pretrace_pixels_beqelse_b5887:
# B5887
	fmul x77, x70, x70
	lw x78, 4(x5)
	lw x78, 0(x78)
	fmul x77, x77, x78
	fmul x78, x71, x71
	lw x79, 4(x5)
	lw x79, 1(x79)
	fmul x78, x78, x79
	fadd x77, x77, x78
	fmul x78, x76, x76
	lw x79, 4(x5)
	lw x79, 2(x79)
	fmul x78, x78, x79
	fadd x77, x77, x78
	lw x78, 3(x5)
	bne	x78, zero, pretrace_pixels_beqelse_b5892
# B5891
	mv x70, x77
	j pretrace_pixels_cont_b5893 # adhoc jump(2)
pretrace_pixels_beqelse_b5892:
# B5892
	fmul x78, x71, x76
	lw x79, 9(x5)
	lw x79, 0(x79)
	fmul x78, x78, x79
	fadd x77, x77, x78
	fmul x76, x76, x70
	lw x78, 9(x5)
	lw x78, 1(x78)
	fmul x76, x76, x78
	fadd x76, x77, x76
	fmul x70, x70, x71
	lw x71, 9(x5)
	lw x71, 2(x71)
	fmul x70, x70, x71
	fadd x70, x76, x70
pretrace_pixels_cont_b5893:
# B5893
	lw x71, 1(x5)
	li x76, 3
	bne	x71, x76, pretrace_pixels_beqelse_b5895
# B5894
	fsub x70, x70, x108
pretrace_pixels_beqelse_b5895:
# B5895
pretrace_pixels_cont_b5896:
# B5896
	lw x5, 6(x5)
	fle x70, zero, x70
	xori x70, x70, 1
	bne	x5, zero, pretrace_pixels_beqelse_b5898
# B5897
	mv x5, x70
	j pretrace_pixels_cont_b5899 # adhoc jump(2)
pretrace_pixels_beqelse_b5898:
# B5898
	xori x5, x70, 1
pretrace_pixels_cont_b5899:
# B5899
	xori x5, x5, 1
pretrace_pixels_cont_b5900:
# B5900
	beq	x5, zero, pretrace_pixels_bneelse_b5901
# B5902
# B5904
	j	pretrace_pixels_loop_b5823
pretrace_pixels_bneelse_b5875:
# B5875
# B5905
	mv x5, x12
# B5906
	bne	x5, zero, pretrace_pixels_beqelse_b5908
	j pretrace_pixels_cont_b5907 # adhoc jump(3)
pretrace_pixels_beqelse_b5908:
# B5908
	mv x66, x12
# B5909
	bne	x66, zero, pretrace_pixels_beqelse_b5911
	j pretrace_pixels_cont_b5910 # adhoc jump(3)
pretrace_pixels_beqelse_b5911:
# B5911
	mv x5, x12
# B5912
	bne	x5, zero, pretrace_pixels_beqelse_b5914
	j pretrace_pixels_cont_b5913 # adhoc jump(3)
pretrace_pixels_beqelse_b5914:
# B5914
	j pretrace_pixels_cont_b5920 # adhoc jump(2)
pretrace_pixels_beqelse_b5854:
# B5854
	la x70, min_caml_solver_dist
	lw x70, 0(x70)
pretrace_pixels_cont_b5867:
# B5867
	addi x66, x66, 1
pretrace_pixels_cont_b5870:
# B5870
	add x4, x29, x5
	lw x5, 0(x4)
	lw x5, 6(x5)
	beq	x5, zero, pretrace_pixels_bneelse_b5872
# B5873
	j	pretrace_pixels_loop_b5823
pretrace_pixels_bneelse_b5872:
# B5872
pretrace_pixels_bneelse_b5824:
# B5824
pretrace_pixels_cont_b5907:
# B5907
	addi x67, x67, 1
	j	pretrace_pixels_loop_b5820
pretrace_pixels_bneelse_b5821:
# B5821
pretrace_pixels_cont_b5910:
# B5910
	j	pretrace_pixels_loop_b5675
pretrace_pixels_beqelse_b5759:
# B5759
	lw x73, 0(x66)
pretrace_pixels_cont_b5772:
# B5772
	addi x70, x70, 1
pretrace_pixels_cont_b5775:
# B5775
	add x4, x29, x68
	lw x68, 0(x4)
	lw x68, 6(x68)
	beq	x68, zero, pretrace_pixels_bneelse_b5777
# B5778
	j	pretrace_pixels_loop_b5728
pretrace_pixels_bneelse_b5777:
# B5777
pretrace_pixels_bneelse_b5729:
# B5729
pretrace_pixels_cont_b5812:
# B5812
	addi x69, x69, 1
	j	pretrace_pixels_loop_b5725
pretrace_pixels_bneelse_b5726:
# B5726
pretrace_pixels_cont_b5815:
# B5815
	addi x6, x6, 1
	j pretrace_pixels_cont_b5818 # adhoc jump(2)
pretrace_pixels_beqelse_b5715:
# B5715
pretrace_pixels_beqelse_b5708:
# B5708
pretrace_pixels_cont_b5721:
# B5721
	addi x6, x6, 1
pretrace_pixels_cont_b5818:
# B5818
	j	pretrace_pixels_loop_b5675
pretrace_pixels_bneelse_b5676:
# B5676
pretrace_pixels_cont_b5913:
# B5913
	lw x23, 0(x34)
	lw x5, 0(x36)
	lw x6, 0(x23)
	fmul x5, x5, x6
	lw x6, 1(x36)
	lw x65, 1(x23)
	fmul x6, x6, x65
	fadd x5, x5, x6
	lw x6, 2(x36)
	lw x23, 2(x23)
	fmul x23, x6, x23
	fadd x23, x5, x23
	lw x28, 2(x28)
	fmul x5, x28, x38
	fmul x23, x5, x23
	lw x34, 0(x34)
	lw x5, 0(x40)
	lw x6, 0(x34)
	fmul x5, x5, x6
	lw x6, 1(x40)
	lw x65, 1(x34)
	fmul x6, x6, x65
	fadd x5, x5, x6
	lw x6, 2(x40)
	lw x34, 2(x34)
	fmul x34, x6, x34
	fadd x34, x5, x34
	fmul x28, x28, x34
	fle x34, x23, zero
	bne	x34, zero, pretrace_pixels_beqelse_b5915
# B5916
	lw x34, 0(x10)
	lw x5, 0(x37)
	fmul x5, x23, x5
	fadd x34, x34, x5
	sw x34, 0(x10)
	lw x34, 1(x10)
	lw x5, 1(x37)
	fmul x5, x23, x5
	fadd x34, x34, x5
	sw x34, 1(x10)
	lw x34, 2(x10)
	lw x5, 2(x37)
	fmul x23, x23, x5
	fadd x23, x34, x23
	sw x23, 2(x10)
pretrace_pixels_beqelse_b5915:
# B5915
pretrace_pixels_cont_b5917:
# B5917
	fle x23, x28, zero
	bne	x23, zero, pretrace_pixels_beqelse_b5918
# B5919
	fmul x23, x28, x28
	fmul x23, x23, x23
	fmul x23, x23, x39
	lw x28, 0(x10)
	fadd x28, x28, x23
	sw x28, 0(x10)
	lw x28, 1(x10)
	fadd x28, x28, x23
	sw x28, 1(x10)
	lw x28, 2(x10)
	fadd x23, x28, x23
	sw x23, 2(x10)
pretrace_pixels_beqelse_b5918:
# B5918
pretrace_pixels_beqelse_b5674:
# B5674
pretrace_pixels_beqelse_b5668:
# B5668
pretrace_pixels_cont_b5671:
# B5671
pretrace_pixels_cont_b5920:
# B5920
	addi x35, x35, -1
	j	pretrace_pixels_loop_b5453
pretrace_pixels_bleelse_b5455:
# B5455
# B5921
	lui x21, 253133
	addi x21, x21, -819
	fle x21, x16, x21
	bne	x21, zero, pretrace_pixels_beqelse_b5922
# B5923
	addi x21, x15, 1
	bge	x15, x100, pretrace_pixels_bgtelse_b5924
# B5925
	add x4, x14, x21
	sw x23, 0(x4)
pretrace_pixels_bgtelse_b5924:
# B5924
pretrace_pixels_cont_b5926:
# B5926
	beq	x27, x107, pretrace_pixels_bneelse_b5927
# B5928
	j pretrace_pixels_cont_b5929 # adhoc jump(2)
pretrace_pixels_beqelse_b5922:
# B5922
	j pretrace_pixels_cont_b5929 # adhoc jump(2)
pretrace_pixels_beqelse_b5068:
# B5068
pretrace_pixels_cont_b5071:
# B5071
	add x4, x14, x15
	sw x28, 0(x4)
	beq	x15, zero, pretrace_pixels_bneelse_b5073
# B5074
	la x100, min_caml_light
	lw x11, 0(x17)
	lw x12, 0(x100)
	fmul x11, x11, x12
	lw x12, 1(x17)
	lw x13, 1(x100)
	fmul x12, x12, x13
	fadd x11, x11, x12
	lw x12, 2(x17)
	lw x100, 2(x100)
	fmul x100, x12, x100
	fadd x100, x11, x100
	fsub x100, zero, x100
	fle x11, x100, zero
	bne	x11, zero, pretrace_pixels_beqelse_b5075
# B5076
	fmul x11, x100, x100
	fmul x100, x11, x100
	fmul x100, x100, x16
	la x11, min_caml_beam
	lw x11, 0(x11)
	fmul x100, x100, x11
	lw x11, 0(x10)
	fadd x11, x11, x100
	sw x11, 0(x10)
	lw x11, 1(x10)
	fadd x11, x11, x100
	sw x11, 1(x10)
	lw x11, 2(x10)
	fadd x100, x11, x100
	add x4, x10, x107
	sw x100, 0(x4)
pretrace_pixels_beqelse_b5075:
# B5075
pretrace_pixels_bneelse_b5073:
# B5073
pretrace_pixels_bleelse_b4747:
# B4747
pretrace_pixels_cont_b5929:
# B5929
	add x4, x101, x102
	lw x100, 0(x4)
	lw x100, 0(x100)
	lw x11, 0(x10)
	sw x11, 0(x100)
	lw x11, 1(x10)
	sw x11, 1(x100)
	lw x10, 2(x10)
	sw x10, 2(x100)
	add x4, x101, x102
	lw x10, 0(x4)
	lw x10, 6(x10)
	sw x103, 0(x10)
	add x4, x101, x102
	lw x10, 0(x4)
	mv x109, x10
	mv x110, zero
pretrace_pixels_loop_b5930:
# B5930
	li x10, 4
	bgt	x110, x10, pretrace_pixels_bleelse_b5932
# B5931
	lw x10, 2(x109)
	add x4, x10, x110
	lw x10, 0(x4)
	bgt	zero, x10, pretrace_pixels_bleelse_b5934
# B5933
	lw x10, 3(x109)
	add x4, x10, x110
	lw x10, 0(x4)
	beq	x10, zero, pretrace_pixels_bneelse_b5935
# B5936
	lw x10, 6(x109)
	lw x10, 0(x10)
	la x111, min_caml_diffuse_ray
	sw zero, 0(x111)
	sw zero, 1(x111)
	sw zero, 2(x111)
	lw x100, 7(x109)
	lw x11, 1(x109)
	la x12, min_caml_dirvecs
	add x4, x12, x10
	lw x10, 0(x4)
	add x4, x100, x110
	lw x100, 0(x4)
	add x4, x11, x110
	lw x11, 0(x4)
	la x12, min_caml_startp_fast
	lw x13, 0(x11)
	sw x13, 0(x12)
	lw x13, 1(x11)
	sw x13, 1(x12)
	lw x13, 2(x11)
	sw x13, 2(x12)
	la x12, min_caml_n_objects
	lw x12, 0(x12)
	addi x12, x12, -1
	mv x14, x12
	mv x13, x11
pretrace_pixels_loop_b5937:
# B5937
	bgt	zero, x14, pretrace_pixels_bleelse_b5939
# B5938
	la x12, min_caml_objects
	add x4, x12, x14
	lw x12, 0(x4)
	lw x15, 10(x12)
	lw x16, 1(x12)
	lw x17, 0(x13)
	lw x18, 5(x12)
	lw x18, 0(x18)
	fsub x17, x17, x18
	sw x17, 0(x15)
	lw x17, 1(x13)
	lw x18, 5(x12)
	lw x18, 1(x18)
	fsub x17, x17, x18
	sw x17, 1(x15)
	lw x17, 2(x13)
	lw x18, 5(x12)
	lw x18, 2(x18)
	fsub x17, x17, x18
	sw x17, 2(x15)
	bne	x16, x107, pretrace_pixels_beqelse_b5941
# B5940
	lw x12, 4(x12)
	lw x16, 0(x15)
	lw x17, 1(x15)
	lw x18, 2(x15)
	lw x19, 0(x12)
	fmul x16, x19, x16
	lw x19, 1(x12)
	fmul x17, x19, x17
	fadd x16, x16, x17
	lw x12, 2(x12)
	fmul x12, x12, x18
	fadd x12, x16, x12
	sw x12, 3(x15)
	j pretrace_pixels_cont_b5950 # adhoc jump(2)
pretrace_pixels_beqelse_b5941:
# B5941
	bge	x107, x16, pretrace_pixels_bgtelse_b5942
# B5943
	lw x17, 0(x15)
	lw x18, 1(x15)
	lw x19, 2(x15)
	fmul x20, x17, x17
	lw x21, 4(x12)
	lw x21, 0(x21)
	fmul x20, x20, x21
	fmul x21, x18, x18
	lw x22, 4(x12)
	lw x22, 1(x22)
	fmul x21, x21, x22
	fadd x20, x20, x21
	fmul x21, x19, x19
	lw x22, 4(x12)
	lw x22, 2(x22)
	fmul x21, x21, x22
	fadd x20, x20, x21
	lw x21, 3(x12)
	bne	x21, zero, pretrace_pixels_beqelse_b5945
# B5944
	mv x12, x20
	j pretrace_pixels_cont_b5946 # adhoc jump(2)
pretrace_pixels_beqelse_b5945:
# B5945
	fmul x21, x18, x19
	lw x22, 9(x12)
	lw x22, 0(x22)
	fmul x21, x21, x22
	fadd x20, x20, x21
	fmul x19, x19, x17
	lw x21, 9(x12)
	lw x21, 1(x21)
	fmul x19, x19, x21
	fadd x19, x20, x19
	fmul x17, x17, x18
	lw x12, 9(x12)
	lw x12, 2(x12)
	fmul x12, x17, x12
	fadd x12, x19, x12
pretrace_pixels_cont_b5946:
# B5946
	li x17, 3
	bne	x16, x17, pretrace_pixels_beqelse_b5948
# B5947
	fsub x12, x12, x108
pretrace_pixels_beqelse_b5948:
# B5948
pretrace_pixels_cont_b5949:
# B5949
	sw x12, 3(x15)
pretrace_pixels_bgtelse_b5942:
# B5942
pretrace_pixels_cont_b5950:
# B5950
	addi x14, x14, -1
	j	pretrace_pixels_loop_b5937
pretrace_pixels_bleelse_b5939:
# B5939
# B5951
	li x12, 118
	mv x115, x12
	mv x112, x10
	mv x113, x100
	mv x114, x11
pretrace_pixels_loop_b5952:
# B5952
	bgt	zero, x115, pretrace_pixels_bleelse_b5954
# B5953
	add x4, x112, x115
	lw x10, 0(x4)
	lw x10, 0(x10)
	lw x100, 0(x10)
	lw x11, 0(x113)
	fmul x100, x100, x11
	lw x11, 1(x10)
	lw x12, 1(x113)
	fmul x11, x11, x12
	fadd x100, x100, x11
	lw x10, 2(x10)
	lw x11, 2(x113)
	fmul x10, x10, x11
	fadd x10, x100, x10
	fle x100, zero, x10
	beq	x100, zero, pretrace_pixels_bneelse_b5956
# B5955
	add x4, x112, x115
	lw x5, 0(x4)
	lui x100, 274784
	fdiv x65, x10, x100
	addi	x2, x2, 17
	jal	trace_diffuse_ray.3077
	addi	x2, x2, -17
	j pretrace_pixels_cont_b5957 # adhoc jump(2)
pretrace_pixels_bneelse_b5956:
# B5956
	addi x100, x115, 1
	add x4, x112, x100
	lw x5, 0(x4)
	lui x100, 799072
	fdiv x65, x10, x100
	addi	x2, x2, 17
	jal	trace_diffuse_ray.3077
	addi	x2, x2, -17
pretrace_pixels_cont_b5957:
# B5957
	addi x115, x115, -2
	j	pretrace_pixels_loop_b5952
pretrace_pixels_bleelse_b5954:
# B5954
# B5958
	lw x10, 5(x109)
	add x4, x10, x110
	lw x10, 0(x4)
	lw x100, 0(x111)
	sw x100, 0(x10)
	lw x100, 1(x111)
	sw x100, 1(x10)
	lw x100, 2(x111)
	sw x100, 2(x10)
pretrace_pixels_bneelse_b5935:
# B5935
pretrace_pixels_cont_b5959:
# B5959
	addi x110, x110, 1
	j	pretrace_pixels_loop_b5930
pretrace_pixels_bleelse_b5934:
# B5934
pretrace_pixels_bleelse_b5932:
# B5932
pretrace_pixels_cont_b5960:
# B5960
	addi x10, x102, -1
	addi x100, x103, 1
	li x11, 5
	bgt	x11, x100, pretrace_pixels_bleelse_b5962
# B5961
	addi x100, x100, -5
pretrace_pixels_bleelse_b5962:
# B5962
pretrace_pixels_cont_b5963:
# B5963
	mv x102, x10
	mv x103, x100
	j	pretrace_pixels_loop_b4737
pretrace_pixels_bleelse_b4739:
# B4739
	lw	ra, 0(x2)
	lw	x101, 1(x2)
	lw	x102, 2(x2)
	lw	x103, 3(x2)
	lw	x104, 4(x2)
	lw	x105, 5(x2)
	lw	x106, 6(x2)
	lw	x107, 7(x2)
	lw	x108, 8(x2)
	lw	x109, 9(x2)
	lw	x110, 10(x2)
	lw	x111, 11(x2)
	lw	x112, 12(x2)
	lw	x113, 13(x2)
	lw	x114, 14(x2)
	lw	x115, 15(x2)
	ret
	.globl min_caml_start
min_caml_start: # main entry point
	mv	x2, x5
	mv	x3, x6
#	main program starts
main:
	sw	ra, 0(x2)
	sw	x101, 1(x2)
	sw	x102, 2(x2)
	sw	x103, 3(x2)
	sw	x104, 4(x2)
	sw	x105, 5(x2)
	sw	x106, 6(x2)
	sw	x107, 7(x2)
	sw	x108, 8(x2)
	sw	x109, 9(x2)
	sw	x110, 10(x2)
	sw	x111, 11(x2)
	sw	x112, 12(x2)
	sw	x113, 13(x2)
	sw	x114, 14(x2)
	sw	x115, 15(x2)
	sw	x116, 16(x2)
	sw	x117, 17(x2)
	sw	x118, 18(x2)
	sw	x119, 19(x2)
	sw	x120, 20(x2)
	sw	x121, 21(x2)
	sw	x122, 22(x2)
	sw	x123, 23(x2)
	sw	x124, 24(x2)
	sw	x125, 25(x2)
	sw	x126, 26(x2)
	sw	x127, 27(x2)
	sw	x41, 28(x2)
	sw	x42, 29(x2)
	sw	x43, 30(x2)
	sw	x44, 31(x2)
	sw	x45, 32(x2)
	sw	x46, 33(x2)
	sw	x47, 34(x2)
	sw	x48, 35(x2)
	sw	x49, 36(x2)
	sw	x50, 37(x2)
	sw	x51, 38(x2)
	sw	x52, 39(x2)
	sw	x53, 40(x2)
	sw	x54, 41(x2)
body_main:
# B5964
# B5965
	li x6, 1
	la x5, min_caml_n_objects
	mv x7, zero
min_caml_init_array.9:
	mv x4, x5
	add x8, x5, x6
	j init_array_loop.9
init_array_loop_cont.9:
	sw x7, 0(x4)
	addi x4, x4, 1
init_array_loop.9:
	bne x4, x8, init_array_loop_cont.9
	la x5, min_caml_dummy
	mv x6, zero
	mv x65, zero
min_caml_init_float_array.10:
	mv x4, x5
	add x8, x5, x6
	j init_float_array_loop.10
init_float_array_loop_cont.10:
	sw x65, 0(x4)
	addi x4, x4, 1
init_float_array_loop.10:
	bne x4, x8, init_float_array_loop_cont.10
	li x6, 60
	la x7, min_caml_Tt79677
	sw x5, 10(x7)
	sw x5, 9(x7)
	sw x5, 8(x7)
	sw x5, 7(x7)
	sw zero, 6(x7)
	sw x5, 5(x7)
	sw x5, 4(x7)
	sw zero, 3(x7)
	sw zero, 2(x7)
	sw zero, 1(x7)
	sw zero, 0(x7)
	la x5, min_caml_objects
min_caml_init_array.11:
	mv x4, x5
	add x8, x5, x6
	j init_array_loop.11
init_array_loop_cont.11:
	sw x7, 0(x4)
	addi x4, x4, 1
init_array_loop.11:
	bne x4, x8, init_array_loop_cont.11
	li x6, 3
	la x5, min_caml_screen
	mv x65, zero
min_caml_init_float_array.12:
	mv x4, x5
	add x8, x5, x6
	j init_float_array_loop.12
init_float_array_loop_cont.12:
	sw x65, 0(x4)
	addi x4, x4, 1
init_float_array_loop.12:
	bne x4, x8, init_float_array_loop_cont.12
	li x6, 3
	la x5, min_caml_viewpoint
	mv x65, zero
min_caml_init_float_array.13:
	mv x4, x5
	add x8, x5, x6
	j init_float_array_loop.13
init_float_array_loop_cont.13:
	sw x65, 0(x4)
	addi x4, x4, 1
init_float_array_loop.13:
	bne x4, x8, init_float_array_loop_cont.13
	li x6, 3
	la x5, min_caml_light
	mv x65, zero
min_caml_init_float_array.14:
	mv x4, x5
	add x8, x5, x6
	j init_float_array_loop.14
init_float_array_loop_cont.14:
	sw x65, 0(x4)
	addi x4, x4, 1
init_float_array_loop.14:
	bne x4, x8, init_float_array_loop_cont.14
	li x6, 1
	lui x65, 276464
	la x5, min_caml_beam
min_caml_init_float_array.15:
	mv x4, x5
	add x8, x5, x6
	j init_float_array_loop.15
init_float_array_loop_cont.15:
	sw x65, 0(x4)
	addi x4, x4, 1
init_float_array_loop.15:
	bne x4, x8, init_float_array_loop_cont.15
	li x10, 50
	li x6, 1
	li x7, -1
	la x5, min_caml_Ta79690
min_caml_init_array.16:
	mv x4, x5
	add x8, x5, x6
	j init_array_loop.16
init_array_loop_cont.16:
	sw x7, 0(x4)
	addi x4, x4, 1
init_array_loop.16:
	bne x4, x8, init_array_loop_cont.16
	la x10, min_caml_and_net
	li x100, 50
	mv x7, x5
	mv x5, x10
	mv x6, x100
min_caml_init_array.17:
	mv x4, x5
	add x8, x5, x6
	j init_array_loop.17
init_array_loop_cont.17:
	sw x7, 0(x4)
	addi x4, x4, 1
init_array_loop.17:
	bne x4, x8, init_array_loop_cont.17
	li x6, 1
	lw x7, 0(x5)
	la x5, min_caml_Ta79695
min_caml_init_array.18:
	mv x4, x5
	add x8, x5, x6
	j init_array_loop.18
init_array_loop_cont.18:
	sw x7, 0(x4)
	addi x4, x4, 1
init_array_loop.18:
	bne x4, x8, init_array_loop_cont.18
	la x10, min_caml_or_net
	li x100, 1
	mv x7, x5
	mv x5, x10
	mv x6, x100
min_caml_init_array.19:
	mv x4, x5
	add x8, x5, x6
	j init_array_loop.19
init_array_loop_cont.19:
	sw x7, 0(x4)
	addi x4, x4, 1
init_array_loop.19:
	bne x4, x8, init_array_loop_cont.19
	li x6, 1
	la x5, min_caml_solver_dist
	mv x65, zero
min_caml_init_float_array.20:
	mv x4, x5
	add x8, x5, x6
	j init_float_array_loop.20
init_float_array_loop_cont.20:
	sw x65, 0(x4)
	addi x4, x4, 1
init_float_array_loop.20:
	bne x4, x8, init_float_array_loop_cont.20
	li x6, 1
	la x5, min_caml_intsec_rectside
	mv x7, zero
min_caml_init_array.21:
	mv x4, x5
	add x8, x5, x6
	j init_array_loop.21
init_array_loop_cont.21:
	sw x7, 0(x4)
	addi x4, x4, 1
init_array_loop.21:
	bne x4, x8, init_array_loop_cont.21
	li x6, 1
	lui x65, 321255
	addi x65, x65, -1240
	la x5, min_caml_tmin
min_caml_init_float_array.22:
	mv x4, x5
	add x8, x5, x6
	j init_float_array_loop.22
init_float_array_loop_cont.22:
	sw x65, 0(x4)
	addi x4, x4, 1
init_float_array_loop.22:
	bne x4, x8, init_float_array_loop_cont.22
	li x6, 3
	la x5, min_caml_intersection_point
	mv x65, zero
min_caml_init_float_array.23:
	mv x4, x5
	add x8, x5, x6
	j init_float_array_loop.23
init_float_array_loop_cont.23:
	sw x65, 0(x4)
	addi x4, x4, 1
init_float_array_loop.23:
	bne x4, x8, init_float_array_loop_cont.23
	li x6, 1
	la x5, min_caml_intersected_object_id
	mv x7, zero
min_caml_init_array.24:
	mv x4, x5
	add x8, x5, x6
	j init_array_loop.24
init_array_loop_cont.24:
	sw x7, 0(x4)
	addi x4, x4, 1
init_array_loop.24:
	bne x4, x8, init_array_loop_cont.24
	li x6, 3
	la x5, min_caml_nvector
	mv x65, zero
min_caml_init_float_array.25:
	mv x4, x5
	add x8, x5, x6
	j init_float_array_loop.25
init_float_array_loop_cont.25:
	sw x65, 0(x4)
	addi x4, x4, 1
init_float_array_loop.25:
	bne x4, x8, init_float_array_loop_cont.25
	li x6, 3
	la x5, min_caml_texture_color
	mv x65, zero
min_caml_init_float_array.26:
	mv x4, x5
	add x8, x5, x6
	j init_float_array_loop.26
init_float_array_loop_cont.26:
	sw x65, 0(x4)
	addi x4, x4, 1
init_float_array_loop.26:
	bne x4, x8, init_float_array_loop_cont.26
	li x6, 3
	la x5, min_caml_diffuse_ray
	mv x65, zero
min_caml_init_float_array.27:
	mv x4, x5
	add x8, x5, x6
	j init_float_array_loop.27
init_float_array_loop_cont.27:
	sw x65, 0(x4)
	addi x4, x4, 1
init_float_array_loop.27:
	bne x4, x8, init_float_array_loop_cont.27
	li x6, 3
	la x5, min_caml_rgb
	mv x65, zero
min_caml_init_float_array.28:
	mv x4, x5
	add x8, x5, x6
	j init_float_array_loop.28
init_float_array_loop_cont.28:
	sw x65, 0(x4)
	addi x4, x4, 1
init_float_array_loop.28:
	bne x4, x8, init_float_array_loop_cont.28
	li x6, 2
	la x5, min_caml_image_size
	mv x7, zero
min_caml_init_array.29:
	mv x4, x5
	add x8, x5, x6
	j init_array_loop.29
init_array_loop_cont.29:
	sw x7, 0(x4)
	addi x4, x4, 1
init_array_loop.29:
	bne x4, x8, init_array_loop_cont.29
	li x6, 2
	la x5, min_caml_image_center
	mv x7, zero
min_caml_init_array.30:
	mv x4, x5
	add x8, x5, x6
	j init_array_loop.30
init_array_loop_cont.30:
	sw x7, 0(x4)
	addi x4, x4, 1
init_array_loop.30:
	bne x4, x8, init_array_loop_cont.30
	li x6, 1
	la x5, min_caml_scan_pitch
	mv x65, zero
min_caml_init_float_array.31:
	mv x4, x5
	add x8, x5, x6
	j init_float_array_loop.31
init_float_array_loop_cont.31:
	sw x65, 0(x4)
	addi x4, x4, 1
init_float_array_loop.31:
	bne x4, x8, init_float_array_loop_cont.31
	li x6, 3
	la x5, min_caml_startp
	mv x65, zero
min_caml_init_float_array.32:
	mv x4, x5
	add x8, x5, x6
	j init_float_array_loop.32
init_float_array_loop_cont.32:
	sw x65, 0(x4)
	addi x4, x4, 1
init_float_array_loop.32:
	bne x4, x8, init_float_array_loop_cont.32
	li x6, 3
	la x5, min_caml_startp_fast
	mv x65, zero
min_caml_init_float_array.33:
	mv x4, x5
	add x8, x5, x6
	j init_float_array_loop.33
init_float_array_loop_cont.33:
	sw x65, 0(x4)
	addi x4, x4, 1
init_float_array_loop.33:
	bne x4, x8, init_float_array_loop_cont.33
	li x6, 3
	la x5, min_caml_screenx_dir
	mv x65, zero
min_caml_init_float_array.34:
	mv x4, x5
	add x8, x5, x6
	j init_float_array_loop.34
init_float_array_loop_cont.34:
	sw x65, 0(x4)
	addi x4, x4, 1
init_float_array_loop.34:
	bne x4, x8, init_float_array_loop_cont.34
	li x6, 3
	la x5, min_caml_screeny_dir
	mv x65, zero
min_caml_init_float_array.35:
	mv x4, x5
	add x8, x5, x6
	j init_float_array_loop.35
init_float_array_loop_cont.35:
	sw x65, 0(x4)
	addi x4, x4, 1
init_float_array_loop.35:
	bne x4, x8, init_float_array_loop_cont.35
	li x6, 3
	la x5, min_caml_screenz_dir
	mv x65, zero
min_caml_init_float_array.36:
	mv x4, x5
	add x8, x5, x6
	j init_float_array_loop.36
init_float_array_loop_cont.36:
	sw x65, 0(x4)
	addi x4, x4, 1
init_float_array_loop.36:
	bne x4, x8, init_float_array_loop_cont.36
	li x6, 3
	la x5, min_caml_ptrace_dirvec
	mv x65, zero
min_caml_init_float_array.37:
	mv x4, x5
	add x8, x5, x6
	j init_float_array_loop.37
init_float_array_loop_cont.37:
	sw x65, 0(x4)
	addi x4, x4, 1
init_float_array_loop.37:
	bne x4, x8, init_float_array_loop_cont.37
	la x5, min_caml_dummyf
	mv x6, zero
	mv x65, zero
min_caml_init_float_array.38:
	mv x4, x5
	add x8, x5, x6
	j init_float_array_loop.38
init_float_array_loop_cont.38:
	sw x65, 0(x4)
	addi x4, x4, 1
init_float_array_loop.38:
	bne x4, x8, init_float_array_loop_cont.38
	mv x101, x5
	la x5, min_caml_dummyff
	mv x7, x101
	mv x6, zero
min_caml_init_array.39:
	mv x4, x5
	add x8, x5, x6
	j init_array_loop.39
init_array_loop_cont.39:
	sw x7, 0(x4)
	addi x4, x4, 1
init_array_loop.39:
	bne x4, x8, init_array_loop_cont.39
	la x7, min_caml_Tt79736
	sw x5, 1(x7)
	sw x101, 0(x7)
	la x5, min_caml_dummy_vs
	mv x6, zero
min_caml_init_array.40:
	mv x4, x5
	add x8, x5, x6
	j init_array_loop.40
init_array_loop_cont.40:
	sw x7, 0(x4)
	addi x4, x4, 1
init_array_loop.40:
	bne x4, x8, init_array_loop_cont.40
	li x6, 5
	la x10, min_caml_dirvecs
	mv x7, x5
	mv x5, x10
min_caml_init_array.41:
	mv x4, x5
	add x8, x5, x6
	j init_array_loop.41
init_array_loop_cont.41:
	sw x7, 0(x4)
	addi x4, x4, 1
init_array_loop.41:
	bne x4, x8, init_array_loop_cont.41
	la x5, min_caml_dummyf2
	mv x6, zero
	mv x65, zero
min_caml_init_float_array.42:
	mv x4, x5
	add x8, x5, x6
	j init_float_array_loop.42
init_float_array_loop_cont.42:
	sw x65, 0(x4)
	addi x4, x4, 1
init_float_array_loop.42:
	bne x4, x8, init_float_array_loop_cont.42
	mv x101, x5
	li x6, 3
	la x5, min_caml_v3
	mv x65, zero
min_caml_init_float_array.43:
	mv x4, x5
	add x8, x5, x6
	j init_float_array_loop.43
init_float_array_loop_cont.43:
	sw x65, 0(x4)
	addi x4, x4, 1
init_float_array_loop.43:
	bne x4, x8, init_float_array_loop_cont.43
	mv x102, x5
	li x6, 60
	la x5, min_caml_consts
	mv x7, x101
min_caml_init_array.44:
	mv x4, x5
	add x8, x5, x6
	j init_array_loop.44
init_array_loop_cont.44:
	sw x7, 0(x4)
	addi x4, x4, 1
init_array_loop.44:
	bne x4, x8, init_array_loop_cont.44
	la x10, min_caml_light_dirvec
	sw x5, 1(x10)
	sw x102, 0(x10)
	la x5, min_caml_dummyf3
	mv x6, zero
	mv x65, zero
min_caml_init_float_array.45:
	mv x4, x5
	add x8, x5, x6
	j init_float_array_loop.45
init_float_array_loop_cont.45:
	sw x65, 0(x4)
	addi x4, x4, 1
init_float_array_loop.45:
	bne x4, x8, init_float_array_loop_cont.45
	mv x101, x5
	la x5, min_caml_dummyff3
	mv x7, x101
	mv x6, zero
min_caml_init_array.46:
	mv x4, x5
	add x8, x5, x6
	j init_array_loop.46
init_array_loop_cont.46:
	sw x7, 0(x4)
	addi x4, x4, 1
init_array_loop.46:
	bne x4, x8, init_array_loop_cont.46
	la x10, min_caml_dummydv
	sw x5, 1(x10)
	sw x101, 0(x10)
	li x6, 180
	la x7, min_caml_Tt79749
	sw zero, 2(x7)
	sw x10, 1(x7)
	sw zero, 0(x7)
	la x5, min_caml_reflections
min_caml_init_array.47:
	mv x4, x5
	add x8, x5, x6
	j init_array_loop.47
init_array_loop_cont.47:
	sw x7, 0(x4)
	addi x4, x4, 1
init_array_loop.47:
	bne x4, x8, init_array_loop_cont.47
	li x6, 1
	la x5, min_caml_n_reflections
	mv x7, zero
min_caml_init_array.48:
	mv x4, x5
	add x8, x5, x6
	j init_array_loop.48
init_array_loop_cont.48:
	sw x7, 0(x4)
	addi x4, x4, 1
init_array_loop.48:
	bne x4, x8, init_array_loop_cont.48
	li x10, 256
	li x101, 6
	la x102, min_caml_image_size
	sw x10, 0(x102)
	li x103, 1
	sw x10, 1(x102)
	la x104, min_caml_image_center
	li x105, 2
	li x100, 128
	sw x100, 0(x104)
	sw x100, 1(x104)
	la x106, min_caml_scan_pitch
	lui x100, 274432
	itof x10, x10
	fdiv x10, x100, x10
	sw x10, 0(x106)
	lw x107, 0(x102)
	li x108, 3
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.49:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.49
create_float_array_loop_cont.49:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.49:
	bne x4, zero, create_float_array_loop_cont.49
	mv x109, x5
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.50:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.50
create_float_array_loop_cont.50:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.50:
	bne x4, zero, create_float_array_loop_cont.50
	li x110, 5
	mv x6, x5
	mv x5, x110
min_caml_create_array.51:
	mv x4, x5
	mv x5, x3
	j create_array_loop.51
create_array_loop_cont.51:
	sw x6, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_array_loop.51:
	bne x4, zero, create_array_loop_cont.51
	mv x111, x5
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.52:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.52
create_float_array_loop_cont.52:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.52:
	bne x4, zero, create_float_array_loop_cont.52
	sw x5, 1(x111)
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.53:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.53
create_float_array_loop_cont.53:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.53:
	bne x4, zero, create_float_array_loop_cont.53
	sw x5, 2(x111)
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.54:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.54
create_float_array_loop_cont.54:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.54:
	bne x4, zero, create_float_array_loop_cont.54
	sw x5, 3(x111)
	li x112, 4
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.55:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.55
create_float_array_loop_cont.55:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.55:
	bne x4, zero, create_float_array_loop_cont.55
	sw x5, 4(x111)
	mv x6, zero
	mv x5, x110
min_caml_create_array.56:
	mv x4, x5
	mv x5, x3
	j create_array_loop.56
create_array_loop_cont.56:
	sw x6, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_array_loop.56:
	bne x4, zero, create_array_loop_cont.56
	mv x113, x5
	mv x6, zero
	mv x5, x110
min_caml_create_array.57:
	mv x4, x5
	mv x5, x3
	j create_array_loop.57
create_array_loop_cont.57:
	sw x6, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_array_loop.57:
	bne x4, zero, create_array_loop_cont.57
	mv x114, x5
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.58:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.58
create_float_array_loop_cont.58:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.58:
	bne x4, zero, create_float_array_loop_cont.58
	mv x6, x5
	mv x5, x110
min_caml_create_array.59:
	mv x4, x5
	mv x5, x3
	j create_array_loop.59
create_array_loop_cont.59:
	sw x6, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_array_loop.59:
	bne x4, zero, create_array_loop_cont.59
	mv x115, x5
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.60:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.60
create_float_array_loop_cont.60:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.60:
	bne x4, zero, create_float_array_loop_cont.60
	sw x5, 1(x115)
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.61:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.61
create_float_array_loop_cont.61:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.61:
	bne x4, zero, create_float_array_loop_cont.61
	sw x5, 2(x115)
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.62:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.62
create_float_array_loop_cont.62:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.62:
	bne x4, zero, create_float_array_loop_cont.62
	sw x5, 3(x115)
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.63:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.63
create_float_array_loop_cont.63:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.63:
	bne x4, zero, create_float_array_loop_cont.63
	sw x5, 4(x115)
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.64:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.64
create_float_array_loop_cont.64:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.64:
	bne x4, zero, create_float_array_loop_cont.64
	mv x6, x5
	mv x5, x110
min_caml_create_array.65:
	mv x4, x5
	mv x5, x3
	j create_array_loop.65
create_array_loop_cont.65:
	sw x6, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_array_loop.65:
	bne x4, zero, create_array_loop_cont.65
	mv x116, x5
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.66:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.66
create_float_array_loop_cont.66:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.66:
	bne x4, zero, create_float_array_loop_cont.66
	sw x5, 1(x116)
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.67:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.67
create_float_array_loop_cont.67:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.67:
	bne x4, zero, create_float_array_loop_cont.67
	sw x5, 2(x116)
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.68:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.68
create_float_array_loop_cont.68:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.68:
	bne x4, zero, create_float_array_loop_cont.68
	sw x5, 3(x116)
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.69:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.69
create_float_array_loop_cont.69:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.69:
	bne x4, zero, create_float_array_loop_cont.69
	sw x5, 4(x116)
	mv x5, x103
	mv x6, zero
min_caml_create_array.70:
	mv x4, x5
	mv x5, x3
	j create_array_loop.70
create_array_loop_cont.70:
	sw x6, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_array_loop.70:
	bne x4, zero, create_array_loop_cont.70
	mv x117, x5
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.71:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.71
create_float_array_loop_cont.71:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.71:
	bne x4, zero, create_float_array_loop_cont.71
	mv x6, x5
	mv x5, x110
min_caml_create_array.72:
	mv x4, x5
	mv x5, x3
	j create_array_loop.72
create_array_loop_cont.72:
	sw x6, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_array_loop.72:
	bne x4, zero, create_array_loop_cont.72
	mv x118, x5
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.73:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.73
create_float_array_loop_cont.73:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.73:
	bne x4, zero, create_float_array_loop_cont.73
	sw x5, 1(x118)
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.74:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.74
create_float_array_loop_cont.74:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.74:
	bne x4, zero, create_float_array_loop_cont.74
	sw x5, 2(x118)
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.75:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.75
create_float_array_loop_cont.75:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.75:
	bne x4, zero, create_float_array_loop_cont.75
	sw x5, 3(x118)
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.76:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.76
create_float_array_loop_cont.76:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.76:
	bne x4, zero, create_float_array_loop_cont.76
	sw x5, 4(x118)
	mv x6, x3
	addi x3, x3, 8
	sw x118, 7(x6)
	sw x117, 6(x6)
	sw x116, 5(x6)
	sw x115, 4(x6)
	sw x114, 3(x6)
	sw x113, 2(x6)
	sw x111, 1(x6)
	sw x109, 0(x6)
	mv x5, x107
min_caml_create_array.77:
	mv x4, x5
	mv x5, x3
	j create_array_loop.77
create_array_loop_cont.77:
	sw x6, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_array_loop.77:
	bne x4, zero, create_array_loop_cont.77
	lw x10, 0(x102)
	addi x10, x10, -2
	mv x109, x10
	mv x107, x5
	j	main_loop_b5966
main_bgtelse_b5967:	#moved
# B5967
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.78:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.78
create_float_array_loop_cont.78:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.78:
	bne x4, zero, create_float_array_loop_cont.78
	mv x111, x5
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.79:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.79
create_float_array_loop_cont.79:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.79:
	bne x4, zero, create_float_array_loop_cont.79
	mv x6, x5
	mv x5, x110
min_caml_create_array.80:
	mv x4, x5
	mv x5, x3
	j create_array_loop.80
create_array_loop_cont.80:
	sw x6, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_array_loop.80:
	bne x4, zero, create_array_loop_cont.80
	mv x113, x5
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.81:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.81
create_float_array_loop_cont.81:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.81:
	bne x4, zero, create_float_array_loop_cont.81
	sw x5, 1(x113)
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.82:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.82
create_float_array_loop_cont.82:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.82:
	bne x4, zero, create_float_array_loop_cont.82
	sw x5, 2(x113)
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.83:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.83
create_float_array_loop_cont.83:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.83:
	bne x4, zero, create_float_array_loop_cont.83
	sw x5, 3(x113)
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.84:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.84
create_float_array_loop_cont.84:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.84:
	bne x4, zero, create_float_array_loop_cont.84
	sw x5, 4(x113)
	mv x6, zero
	mv x5, x110
min_caml_create_array.85:
	mv x4, x5
	mv x5, x3
	j create_array_loop.85
create_array_loop_cont.85:
	sw x6, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_array_loop.85:
	bne x4, zero, create_array_loop_cont.85
	mv x114, x5
	mv x6, zero
	mv x5, x110
min_caml_create_array.86:
	mv x4, x5
	mv x5, x3
	j create_array_loop.86
create_array_loop_cont.86:
	sw x6, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_array_loop.86:
	bne x4, zero, create_array_loop_cont.86
	mv x115, x5
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.87:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.87
create_float_array_loop_cont.87:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.87:
	bne x4, zero, create_float_array_loop_cont.87
	mv x6, x5
	mv x5, x110
min_caml_create_array.88:
	mv x4, x5
	mv x5, x3
	j create_array_loop.88
create_array_loop_cont.88:
	sw x6, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_array_loop.88:
	bne x4, zero, create_array_loop_cont.88
	mv x116, x5
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.89:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.89
create_float_array_loop_cont.89:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.89:
	bne x4, zero, create_float_array_loop_cont.89
	sw x5, 1(x116)
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.90:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.90
create_float_array_loop_cont.90:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.90:
	bne x4, zero, create_float_array_loop_cont.90
	sw x5, 2(x116)
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.91:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.91
create_float_array_loop_cont.91:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.91:
	bne x4, zero, create_float_array_loop_cont.91
	sw x5, 3(x116)
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.92:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.92
create_float_array_loop_cont.92:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.92:
	bne x4, zero, create_float_array_loop_cont.92
	sw x5, 4(x116)
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.93:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.93
create_float_array_loop_cont.93:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.93:
	bne x4, zero, create_float_array_loop_cont.93
	mv x6, x5
	mv x5, x110
min_caml_create_array.94:
	mv x4, x5
	mv x5, x3
	j create_array_loop.94
create_array_loop_cont.94:
	sw x6, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_array_loop.94:
	bne x4, zero, create_array_loop_cont.94
	mv x117, x5
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.95:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.95
create_float_array_loop_cont.95:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.95:
	bne x4, zero, create_float_array_loop_cont.95
	sw x5, 1(x117)
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.96:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.96
create_float_array_loop_cont.96:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.96:
	bne x4, zero, create_float_array_loop_cont.96
	sw x5, 2(x117)
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.97:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.97
create_float_array_loop_cont.97:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.97:
	bne x4, zero, create_float_array_loop_cont.97
	sw x5, 3(x117)
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.98:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.98
create_float_array_loop_cont.98:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.98:
	bne x4, zero, create_float_array_loop_cont.98
	sw x5, 4(x117)
	mv x5, x103
	mv x6, zero
min_caml_create_array.99:
	mv x4, x5
	mv x5, x3
	j create_array_loop.99
create_array_loop_cont.99:
	sw x6, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_array_loop.99:
	bne x4, zero, create_array_loop_cont.99
	mv x118, x5
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.100:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.100
create_float_array_loop_cont.100:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.100:
	bne x4, zero, create_float_array_loop_cont.100
	mv x6, x5
	mv x5, x110
min_caml_create_array.101:
	mv x4, x5
	mv x5, x3
	j create_array_loop.101
create_array_loop_cont.101:
	sw x6, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_array_loop.101:
	bne x4, zero, create_array_loop_cont.101
	mv x119, x5
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.102:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.102
create_float_array_loop_cont.102:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.102:
	bne x4, zero, create_float_array_loop_cont.102
	sw x5, 1(x119)
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.103:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.103
create_float_array_loop_cont.103:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.103:
	bne x4, zero, create_float_array_loop_cont.103
	sw x5, 2(x119)
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.104:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.104
create_float_array_loop_cont.104:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.104:
	bne x4, zero, create_float_array_loop_cont.104
	sw x5, 3(x119)
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.105:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.105
create_float_array_loop_cont.105:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.105:
	bne x4, zero, create_float_array_loop_cont.105
	sw x5, 4(x119)
	mv x10, x3
	addi x3, x3, 8
	sw x119, 7(x10)
	sw x118, 6(x10)
	sw x117, 5(x10)
	sw x116, 4(x10)
	sw x115, 3(x10)
	sw x114, 2(x10)
	sw x113, 1(x10)
	sw x111, 0(x10)
	add x4, x107, x109
	sw x10, 0(x4)
	addi x109, x109, -1
main_loop_b5966:
# B5966
	bge	x109, zero, main_bgtelse_b5967
# B5968
# B5969
	lw x109, 0(x102)
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.106:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.106
create_float_array_loop_cont.106:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.106:
	bne x4, zero, create_float_array_loop_cont.106
	mv x111, x5
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.107:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.107
create_float_array_loop_cont.107:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.107:
	bne x4, zero, create_float_array_loop_cont.107
	mv x6, x5
	mv x5, x110
min_caml_create_array.108:
	mv x4, x5
	mv x5, x3
	j create_array_loop.108
create_array_loop_cont.108:
	sw x6, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_array_loop.108:
	bne x4, zero, create_array_loop_cont.108
	mv x113, x5
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.109:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.109
create_float_array_loop_cont.109:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.109:
	bne x4, zero, create_float_array_loop_cont.109
	sw x5, 1(x113)
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.110:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.110
create_float_array_loop_cont.110:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.110:
	bne x4, zero, create_float_array_loop_cont.110
	sw x5, 2(x113)
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.111:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.111
create_float_array_loop_cont.111:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.111:
	bne x4, zero, create_float_array_loop_cont.111
	sw x5, 3(x113)
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.112:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.112
create_float_array_loop_cont.112:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.112:
	bne x4, zero, create_float_array_loop_cont.112
	sw x5, 4(x113)
	mv x6, zero
	mv x5, x110
min_caml_create_array.113:
	mv x4, x5
	mv x5, x3
	j create_array_loop.113
create_array_loop_cont.113:
	sw x6, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_array_loop.113:
	bne x4, zero, create_array_loop_cont.113
	mv x114, x5
	mv x6, zero
	mv x5, x110
min_caml_create_array.114:
	mv x4, x5
	mv x5, x3
	j create_array_loop.114
create_array_loop_cont.114:
	sw x6, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_array_loop.114:
	bne x4, zero, create_array_loop_cont.114
	mv x115, x5
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.115:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.115
create_float_array_loop_cont.115:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.115:
	bne x4, zero, create_float_array_loop_cont.115
	mv x6, x5
	mv x5, x110
min_caml_create_array.116:
	mv x4, x5
	mv x5, x3
	j create_array_loop.116
create_array_loop_cont.116:
	sw x6, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_array_loop.116:
	bne x4, zero, create_array_loop_cont.116
	mv x116, x5
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.117:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.117
create_float_array_loop_cont.117:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.117:
	bne x4, zero, create_float_array_loop_cont.117
	sw x5, 1(x116)
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.118:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.118
create_float_array_loop_cont.118:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.118:
	bne x4, zero, create_float_array_loop_cont.118
	sw x5, 2(x116)
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.119:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.119
create_float_array_loop_cont.119:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.119:
	bne x4, zero, create_float_array_loop_cont.119
	sw x5, 3(x116)
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.120:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.120
create_float_array_loop_cont.120:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.120:
	bne x4, zero, create_float_array_loop_cont.120
	sw x5, 4(x116)
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.121:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.121
create_float_array_loop_cont.121:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.121:
	bne x4, zero, create_float_array_loop_cont.121
	mv x6, x5
	mv x5, x110
min_caml_create_array.122:
	mv x4, x5
	mv x5, x3
	j create_array_loop.122
create_array_loop_cont.122:
	sw x6, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_array_loop.122:
	bne x4, zero, create_array_loop_cont.122
	mv x117, x5
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.123:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.123
create_float_array_loop_cont.123:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.123:
	bne x4, zero, create_float_array_loop_cont.123
	sw x5, 1(x117)
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.124:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.124
create_float_array_loop_cont.124:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.124:
	bne x4, zero, create_float_array_loop_cont.124
	sw x5, 2(x117)
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.125:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.125
create_float_array_loop_cont.125:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.125:
	bne x4, zero, create_float_array_loop_cont.125
	sw x5, 3(x117)
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.126:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.126
create_float_array_loop_cont.126:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.126:
	bne x4, zero, create_float_array_loop_cont.126
	sw x5, 4(x117)
	mv x5, x103
	mv x6, zero
min_caml_create_array.127:
	mv x4, x5
	mv x5, x3
	j create_array_loop.127
create_array_loop_cont.127:
	sw x6, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_array_loop.127:
	bne x4, zero, create_array_loop_cont.127
	mv x118, x5
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.128:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.128
create_float_array_loop_cont.128:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.128:
	bne x4, zero, create_float_array_loop_cont.128
	mv x6, x5
	mv x5, x110
min_caml_create_array.129:
	mv x4, x5
	mv x5, x3
	j create_array_loop.129
create_array_loop_cont.129:
	sw x6, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_array_loop.129:
	bne x4, zero, create_array_loop_cont.129
	mv x119, x5
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.130:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.130
create_float_array_loop_cont.130:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.130:
	bne x4, zero, create_float_array_loop_cont.130
	sw x5, 1(x119)
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.131:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.131
create_float_array_loop_cont.131:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.131:
	bne x4, zero, create_float_array_loop_cont.131
	sw x5, 2(x119)
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.132:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.132
create_float_array_loop_cont.132:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.132:
	bne x4, zero, create_float_array_loop_cont.132
	sw x5, 3(x119)
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.133:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.133
create_float_array_loop_cont.133:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.133:
	bne x4, zero, create_float_array_loop_cont.133
	sw x5, 4(x119)
	mv x6, x3
	addi x3, x3, 8
	sw x119, 7(x6)
	sw x118, 6(x6)
	sw x117, 5(x6)
	sw x116, 4(x6)
	sw x115, 3(x6)
	sw x114, 2(x6)
	sw x113, 1(x6)
	sw x111, 0(x6)
	mv x5, x109
min_caml_create_array.134:
	mv x4, x5
	mv x5, x3
	j create_array_loop.134
create_array_loop_cont.134:
	sw x6, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_array_loop.134:
	bne x4, zero, create_array_loop_cont.134
	lw x10, 0(x102)
	addi x10, x10, -2
	mv x111, x10
	mv x109, x5
	j	main_loop_b5970
main_bgtelse_b5971:	#moved
# B5971
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.135:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.135
create_float_array_loop_cont.135:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.135:
	bne x4, zero, create_float_array_loop_cont.135
	mv x113, x5
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.136:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.136
create_float_array_loop_cont.136:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.136:
	bne x4, zero, create_float_array_loop_cont.136
	mv x6, x5
	mv x5, x110
min_caml_create_array.137:
	mv x4, x5
	mv x5, x3
	j create_array_loop.137
create_array_loop_cont.137:
	sw x6, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_array_loop.137:
	bne x4, zero, create_array_loop_cont.137
	mv x114, x5
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.138:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.138
create_float_array_loop_cont.138:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.138:
	bne x4, zero, create_float_array_loop_cont.138
	sw x5, 1(x114)
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.139:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.139
create_float_array_loop_cont.139:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.139:
	bne x4, zero, create_float_array_loop_cont.139
	sw x5, 2(x114)
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.140:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.140
create_float_array_loop_cont.140:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.140:
	bne x4, zero, create_float_array_loop_cont.140
	sw x5, 3(x114)
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.141:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.141
create_float_array_loop_cont.141:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.141:
	bne x4, zero, create_float_array_loop_cont.141
	sw x5, 4(x114)
	mv x6, zero
	mv x5, x110
min_caml_create_array.142:
	mv x4, x5
	mv x5, x3
	j create_array_loop.142
create_array_loop_cont.142:
	sw x6, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_array_loop.142:
	bne x4, zero, create_array_loop_cont.142
	mv x115, x5
	mv x6, zero
	mv x5, x110
min_caml_create_array.143:
	mv x4, x5
	mv x5, x3
	j create_array_loop.143
create_array_loop_cont.143:
	sw x6, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_array_loop.143:
	bne x4, zero, create_array_loop_cont.143
	mv x116, x5
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.144:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.144
create_float_array_loop_cont.144:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.144:
	bne x4, zero, create_float_array_loop_cont.144
	mv x6, x5
	mv x5, x110
min_caml_create_array.145:
	mv x4, x5
	mv x5, x3
	j create_array_loop.145
create_array_loop_cont.145:
	sw x6, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_array_loop.145:
	bne x4, zero, create_array_loop_cont.145
	mv x117, x5
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.146:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.146
create_float_array_loop_cont.146:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.146:
	bne x4, zero, create_float_array_loop_cont.146
	sw x5, 1(x117)
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.147:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.147
create_float_array_loop_cont.147:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.147:
	bne x4, zero, create_float_array_loop_cont.147
	sw x5, 2(x117)
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.148:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.148
create_float_array_loop_cont.148:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.148:
	bne x4, zero, create_float_array_loop_cont.148
	sw x5, 3(x117)
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.149:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.149
create_float_array_loop_cont.149:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.149:
	bne x4, zero, create_float_array_loop_cont.149
	sw x5, 4(x117)
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.150:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.150
create_float_array_loop_cont.150:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.150:
	bne x4, zero, create_float_array_loop_cont.150
	mv x6, x5
	mv x5, x110
min_caml_create_array.151:
	mv x4, x5
	mv x5, x3
	j create_array_loop.151
create_array_loop_cont.151:
	sw x6, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_array_loop.151:
	bne x4, zero, create_array_loop_cont.151
	mv x118, x5
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.152:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.152
create_float_array_loop_cont.152:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.152:
	bne x4, zero, create_float_array_loop_cont.152
	sw x5, 1(x118)
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.153:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.153
create_float_array_loop_cont.153:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.153:
	bne x4, zero, create_float_array_loop_cont.153
	sw x5, 2(x118)
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.154:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.154
create_float_array_loop_cont.154:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.154:
	bne x4, zero, create_float_array_loop_cont.154
	sw x5, 3(x118)
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.155:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.155
create_float_array_loop_cont.155:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.155:
	bne x4, zero, create_float_array_loop_cont.155
	sw x5, 4(x118)
	mv x5, x103
	mv x6, zero
min_caml_create_array.156:
	mv x4, x5
	mv x5, x3
	j create_array_loop.156
create_array_loop_cont.156:
	sw x6, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_array_loop.156:
	bne x4, zero, create_array_loop_cont.156
	mv x119, x5
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.157:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.157
create_float_array_loop_cont.157:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.157:
	bne x4, zero, create_float_array_loop_cont.157
	mv x6, x5
	mv x5, x110
min_caml_create_array.158:
	mv x4, x5
	mv x5, x3
	j create_array_loop.158
create_array_loop_cont.158:
	sw x6, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_array_loop.158:
	bne x4, zero, create_array_loop_cont.158
	mv x120, x5
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.159:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.159
create_float_array_loop_cont.159:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.159:
	bne x4, zero, create_float_array_loop_cont.159
	sw x5, 1(x120)
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.160:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.160
create_float_array_loop_cont.160:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.160:
	bne x4, zero, create_float_array_loop_cont.160
	sw x5, 2(x120)
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.161:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.161
create_float_array_loop_cont.161:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.161:
	bne x4, zero, create_float_array_loop_cont.161
	sw x5, 3(x120)
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.162:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.162
create_float_array_loop_cont.162:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.162:
	bne x4, zero, create_float_array_loop_cont.162
	sw x5, 4(x120)
	mv x10, x3
	addi x3, x3, 8
	sw x120, 7(x10)
	sw x119, 6(x10)
	sw x118, 5(x10)
	sw x117, 4(x10)
	sw x116, 3(x10)
	sw x115, 2(x10)
	sw x114, 1(x10)
	sw x113, 0(x10)
	add x4, x109, x111
	sw x10, 0(x4)
	addi x111, x111, -1
main_loop_b5970:
# B5970
	bge	x111, zero, main_bgtelse_b5971
# B5972
# B5973
	lw x111, 0(x102)
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.163:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.163
create_float_array_loop_cont.163:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.163:
	bne x4, zero, create_float_array_loop_cont.163
	mv x113, x5
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.164:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.164
create_float_array_loop_cont.164:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.164:
	bne x4, zero, create_float_array_loop_cont.164
	mv x6, x5
	mv x5, x110
min_caml_create_array.165:
	mv x4, x5
	mv x5, x3
	j create_array_loop.165
create_array_loop_cont.165:
	sw x6, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_array_loop.165:
	bne x4, zero, create_array_loop_cont.165
	mv x114, x5
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.166:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.166
create_float_array_loop_cont.166:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.166:
	bne x4, zero, create_float_array_loop_cont.166
	sw x5, 1(x114)
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.167:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.167
create_float_array_loop_cont.167:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.167:
	bne x4, zero, create_float_array_loop_cont.167
	sw x5, 2(x114)
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.168:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.168
create_float_array_loop_cont.168:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.168:
	bne x4, zero, create_float_array_loop_cont.168
	sw x5, 3(x114)
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.169:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.169
create_float_array_loop_cont.169:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.169:
	bne x4, zero, create_float_array_loop_cont.169
	sw x5, 4(x114)
	mv x6, zero
	mv x5, x110
min_caml_create_array.170:
	mv x4, x5
	mv x5, x3
	j create_array_loop.170
create_array_loop_cont.170:
	sw x6, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_array_loop.170:
	bne x4, zero, create_array_loop_cont.170
	mv x115, x5
	mv x6, zero
	mv x5, x110
min_caml_create_array.171:
	mv x4, x5
	mv x5, x3
	j create_array_loop.171
create_array_loop_cont.171:
	sw x6, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_array_loop.171:
	bne x4, zero, create_array_loop_cont.171
	mv x116, x5
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.172:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.172
create_float_array_loop_cont.172:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.172:
	bne x4, zero, create_float_array_loop_cont.172
	mv x6, x5
	mv x5, x110
min_caml_create_array.173:
	mv x4, x5
	mv x5, x3
	j create_array_loop.173
create_array_loop_cont.173:
	sw x6, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_array_loop.173:
	bne x4, zero, create_array_loop_cont.173
	mv x117, x5
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.174:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.174
create_float_array_loop_cont.174:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.174:
	bne x4, zero, create_float_array_loop_cont.174
	sw x5, 1(x117)
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.175:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.175
create_float_array_loop_cont.175:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.175:
	bne x4, zero, create_float_array_loop_cont.175
	sw x5, 2(x117)
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.176:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.176
create_float_array_loop_cont.176:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.176:
	bne x4, zero, create_float_array_loop_cont.176
	sw x5, 3(x117)
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.177:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.177
create_float_array_loop_cont.177:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.177:
	bne x4, zero, create_float_array_loop_cont.177
	sw x5, 4(x117)
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.178:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.178
create_float_array_loop_cont.178:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.178:
	bne x4, zero, create_float_array_loop_cont.178
	mv x6, x5
	mv x5, x110
min_caml_create_array.179:
	mv x4, x5
	mv x5, x3
	j create_array_loop.179
create_array_loop_cont.179:
	sw x6, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_array_loop.179:
	bne x4, zero, create_array_loop_cont.179
	mv x118, x5
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.180:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.180
create_float_array_loop_cont.180:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.180:
	bne x4, zero, create_float_array_loop_cont.180
	sw x5, 1(x118)
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.181:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.181
create_float_array_loop_cont.181:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.181:
	bne x4, zero, create_float_array_loop_cont.181
	sw x5, 2(x118)
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.182:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.182
create_float_array_loop_cont.182:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.182:
	bne x4, zero, create_float_array_loop_cont.182
	sw x5, 3(x118)
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.183:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.183
create_float_array_loop_cont.183:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.183:
	bne x4, zero, create_float_array_loop_cont.183
	sw x5, 4(x118)
	mv x5, x103
	mv x6, zero
min_caml_create_array.184:
	mv x4, x5
	mv x5, x3
	j create_array_loop.184
create_array_loop_cont.184:
	sw x6, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_array_loop.184:
	bne x4, zero, create_array_loop_cont.184
	mv x119, x5
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.185:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.185
create_float_array_loop_cont.185:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.185:
	bne x4, zero, create_float_array_loop_cont.185
	mv x6, x5
	mv x5, x110
min_caml_create_array.186:
	mv x4, x5
	mv x5, x3
	j create_array_loop.186
create_array_loop_cont.186:
	sw x6, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_array_loop.186:
	bne x4, zero, create_array_loop_cont.186
	mv x120, x5
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.187:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.187
create_float_array_loop_cont.187:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.187:
	bne x4, zero, create_float_array_loop_cont.187
	sw x5, 1(x120)
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.188:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.188
create_float_array_loop_cont.188:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.188:
	bne x4, zero, create_float_array_loop_cont.188
	sw x5, 2(x120)
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.189:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.189
create_float_array_loop_cont.189:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.189:
	bne x4, zero, create_float_array_loop_cont.189
	sw x5, 3(x120)
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.190:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.190
create_float_array_loop_cont.190:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.190:
	bne x4, zero, create_float_array_loop_cont.190
	sw x5, 4(x120)
	mv x6, x3
	addi x3, x3, 8
	sw x120, 7(x6)
	sw x119, 6(x6)
	sw x118, 5(x6)
	sw x117, 4(x6)
	sw x116, 3(x6)
	sw x115, 2(x6)
	sw x114, 1(x6)
	sw x113, 0(x6)
	mv x5, x111
min_caml_create_array.191:
	mv x4, x5
	mv x5, x3
	j create_array_loop.191
create_array_loop_cont.191:
	sw x6, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_array_loop.191:
	bne x4, zero, create_array_loop_cont.191
	lw x10, 0(x102)
	addi x10, x10, -2
	mv x113, x10
	mv x111, x5
	j	main_loop_b5974
main_bgtelse_b5975:	#moved
# B5975
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.192:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.192
create_float_array_loop_cont.192:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.192:
	bne x4, zero, create_float_array_loop_cont.192
	mv x114, x5
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.193:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.193
create_float_array_loop_cont.193:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.193:
	bne x4, zero, create_float_array_loop_cont.193
	mv x6, x5
	mv x5, x110
min_caml_create_array.194:
	mv x4, x5
	mv x5, x3
	j create_array_loop.194
create_array_loop_cont.194:
	sw x6, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_array_loop.194:
	bne x4, zero, create_array_loop_cont.194
	mv x115, x5
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.195:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.195
create_float_array_loop_cont.195:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.195:
	bne x4, zero, create_float_array_loop_cont.195
	sw x5, 1(x115)
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.196:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.196
create_float_array_loop_cont.196:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.196:
	bne x4, zero, create_float_array_loop_cont.196
	sw x5, 2(x115)
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.197:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.197
create_float_array_loop_cont.197:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.197:
	bne x4, zero, create_float_array_loop_cont.197
	sw x5, 3(x115)
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.198:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.198
create_float_array_loop_cont.198:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.198:
	bne x4, zero, create_float_array_loop_cont.198
	sw x5, 4(x115)
	mv x6, zero
	mv x5, x110
min_caml_create_array.199:
	mv x4, x5
	mv x5, x3
	j create_array_loop.199
create_array_loop_cont.199:
	sw x6, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_array_loop.199:
	bne x4, zero, create_array_loop_cont.199
	mv x116, x5
	mv x6, zero
	mv x5, x110
min_caml_create_array.200:
	mv x4, x5
	mv x5, x3
	j create_array_loop.200
create_array_loop_cont.200:
	sw x6, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_array_loop.200:
	bne x4, zero, create_array_loop_cont.200
	mv x117, x5
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.201:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.201
create_float_array_loop_cont.201:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.201:
	bne x4, zero, create_float_array_loop_cont.201
	mv x6, x5
	mv x5, x110
min_caml_create_array.202:
	mv x4, x5
	mv x5, x3
	j create_array_loop.202
create_array_loop_cont.202:
	sw x6, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_array_loop.202:
	bne x4, zero, create_array_loop_cont.202
	mv x118, x5
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.203:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.203
create_float_array_loop_cont.203:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.203:
	bne x4, zero, create_float_array_loop_cont.203
	sw x5, 1(x118)
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.204:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.204
create_float_array_loop_cont.204:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.204:
	bne x4, zero, create_float_array_loop_cont.204
	sw x5, 2(x118)
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.205:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.205
create_float_array_loop_cont.205:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.205:
	bne x4, zero, create_float_array_loop_cont.205
	sw x5, 3(x118)
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.206:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.206
create_float_array_loop_cont.206:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.206:
	bne x4, zero, create_float_array_loop_cont.206
	sw x5, 4(x118)
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.207:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.207
create_float_array_loop_cont.207:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.207:
	bne x4, zero, create_float_array_loop_cont.207
	mv x6, x5
	mv x5, x110
min_caml_create_array.208:
	mv x4, x5
	mv x5, x3
	j create_array_loop.208
create_array_loop_cont.208:
	sw x6, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_array_loop.208:
	bne x4, zero, create_array_loop_cont.208
	mv x119, x5
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.209:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.209
create_float_array_loop_cont.209:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.209:
	bne x4, zero, create_float_array_loop_cont.209
	sw x5, 1(x119)
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.210:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.210
create_float_array_loop_cont.210:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.210:
	bne x4, zero, create_float_array_loop_cont.210
	sw x5, 2(x119)
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.211:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.211
create_float_array_loop_cont.211:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.211:
	bne x4, zero, create_float_array_loop_cont.211
	sw x5, 3(x119)
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.212:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.212
create_float_array_loop_cont.212:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.212:
	bne x4, zero, create_float_array_loop_cont.212
	sw x5, 4(x119)
	mv x5, x103
	mv x6, zero
min_caml_create_array.213:
	mv x4, x5
	mv x5, x3
	j create_array_loop.213
create_array_loop_cont.213:
	sw x6, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_array_loop.213:
	bne x4, zero, create_array_loop_cont.213
	mv x120, x5
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.214:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.214
create_float_array_loop_cont.214:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.214:
	bne x4, zero, create_float_array_loop_cont.214
	mv x6, x5
	mv x5, x110
min_caml_create_array.215:
	mv x4, x5
	mv x5, x3
	j create_array_loop.215
create_array_loop_cont.215:
	sw x6, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_array_loop.215:
	bne x4, zero, create_array_loop_cont.215
	mv x121, x5
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.216:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.216
create_float_array_loop_cont.216:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.216:
	bne x4, zero, create_float_array_loop_cont.216
	sw x5, 1(x121)
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.217:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.217
create_float_array_loop_cont.217:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.217:
	bne x4, zero, create_float_array_loop_cont.217
	sw x5, 2(x121)
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.218:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.218
create_float_array_loop_cont.218:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.218:
	bne x4, zero, create_float_array_loop_cont.218
	sw x5, 3(x121)
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.219:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.219
create_float_array_loop_cont.219:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.219:
	bne x4, zero, create_float_array_loop_cont.219
	sw x5, 4(x121)
	mv x10, x3
	addi x3, x3, 8
	sw x121, 7(x10)
	sw x120, 6(x10)
	sw x119, 5(x10)
	sw x118, 4(x10)
	sw x117, 3(x10)
	sw x116, 2(x10)
	sw x115, 1(x10)
	sw x114, 0(x10)
	add x4, x111, x113
	sw x10, 0(x4)
	addi x113, x113, -1
main_loop_b5974:
# B5974
	bge	x113, zero, main_bgtelse_b5975
# B5976
# B5977
	la x10, min_caml_screen
	in32 x100
	sw x100, 0(x10)
	in32 x100
	sw x100, 1(x10)
	in32 x100
	sw x100, 2(x10)
	in32 x100
	lui x11, 248048
	addi x11, x11, -1483
	fmul x100, x100, x11
	fabs x12, x100
	lui x113, 265361
	addi x113, x113, -37
	lui x114, 262144
	mv x13, x12
	mv x14, x113
	j	main_loop_b5978
main_bneelse_b5979:	#moved
# B5979
	fmul x14, x14, x114
main_loop_b5978:
# B5978
	fle x15, x13, x14
	beq	x15, zero, main_bneelse_b5979
# B5980
# B5981
	mv x16, x12
	mv x17, x14
	j	main_loop_b5982
main_beqelse_b5986:	#moved
# B5986
	fdiv x17, x17, x114
main_loop_b5982:
# B5982
	fle x13, x113, x16
	beq	x13, zero, main_bneelse_b5983
# B5984
	fle x13, x16, x17
	bne	x13, zero, main_beqelse_b5986
# B5985
	fsub x16, x16, x17
	fdiv x17, x17, x114
	j	main_loop_b5982
main_bneelse_b5983:
# B5983
# B5987
	lui x115, 263313
	addi x115, x115, -37
	fle x13, x115, x16
	bne	x13, zero, main_beqelse_b5989
# B5988
	mv x14, x16
	j main_cont_b5990 # adhoc jump(2)
main_beqelse_b5989:
# B5989
	fsub x14, x16, x115
main_cont_b5990:
# B5990
	bne	x13, zero, main_beqelse_b5992
# B5991
	li x13, 1
	j main_cont_b5993 # adhoc jump(2)
main_beqelse_b5992:
# B5992
	mv x13, zero
main_cont_b5993:
# B5993
	lui x116, 261265
	addi x116, x116, -37
	fle x15, x116, x14
	bne	x15, zero, main_beqelse_b5995
# B5994
	j main_cont_b5996 # adhoc jump(2)
main_beqelse_b5995:
# B5995
	fsub x14, x115, x14
main_cont_b5996:
# B5996
	bne	x15, zero, main_beqelse_b5998
# B5997
	j main_cont_b5999 # adhoc jump(2)
main_beqelse_b5998:
# B5998
	xori x13, x13, 1
main_cont_b5999:
# B5999
	lui x117, 259217
	addi x117, x117, -37
	fle x15, x117, x14
	lui x16, 260096
	lui x118, 782336
	lui x119, 250538
	addi x119, x119, 1929
	lui x120, 764728
	addi x120, x120, 262
	lui x121, 778923
	addi x121, x121, -1364
	lui x122, 245896
	addi x122, x122, 1638
	lui x123, 758998
	addi x123, x123, 1206
	bne	x15, zero, main_beqelse_b6001
# B6000
	fmul x14, x14, x14
	fmul x15, x14, x120
	fadd x15, x119, x15
	fmul x15, x14, x15
	fadd x15, x118, x15
	fmul x14, x14, x15
	fadd x14, x16, x14
	j main_cont_b6002 # adhoc jump(2)
main_beqelse_b6001:
# B6001
	fsub x14, x116, x14
	fmul x15, x14, x14
	fmul x17, x15, x123
	fadd x17, x122, x17
	fmul x17, x15, x17
	fadd x17, x121, x17
	fmul x15, x15, x17
	fadd x15, x16, x15
	fmul x14, x14, x15
main_cont_b6002:
# B6002
	fle x15, x14, zero
	beq	x13, x15, main_bneelse_b6004
# B6003
	mv x13, x14
	j main_cont_b6005 # adhoc jump(2)
main_bneelse_b6004:
# B6004
	fsub x13, zero, x14
main_cont_b6005:
# B6005
	fle x100, x100, zero
	xori x100, x100, 1
	mv x15, x113
	mv x14, x12
	j	main_loop_b6006
main_bneelse_b6007:	#moved
# B6007
	fmul x15, x15, x114
main_loop_b6006:
# B6006
	fle x17, x14, x15
	beq	x17, zero, main_bneelse_b6007
# B6008
# B6009
	mv x19, x15
	mv x18, x12
	j	main_loop_b6010
main_beqelse_b6014:	#moved
# B6014
	fdiv x19, x19, x114
main_loop_b6010:
# B6010
	fle x12, x113, x18
	beq	x12, zero, main_bneelse_b6011
# B6012
	fle x12, x18, x19
	bne	x12, zero, main_beqelse_b6014
# B6013
	fsub x18, x18, x19
	fdiv x19, x19, x114
	j	main_loop_b6010
main_bneelse_b6011:
# B6011
# B6015
	fle x12, x115, x18
	bne	x12, zero, main_beqelse_b6017
# B6016
	mv x14, x18
	j main_cont_b6018 # adhoc jump(2)
main_beqelse_b6017:
# B6017
	fsub x14, x18, x115
main_cont_b6018:
# B6018
	bne	x12, zero, main_beqelse_b6020
# B6019
	j main_cont_b6021 # adhoc jump(2)
main_beqelse_b6020:
# B6020
	xori x100, x100, 1
main_cont_b6021:
# B6021
	fle x12, x116, x14
	bne	x12, zero, main_beqelse_b6023
# B6022
	mv x12, x14
	j main_cont_b6024 # adhoc jump(2)
main_beqelse_b6023:
# B6023
	fsub x12, x115, x14
main_cont_b6024:
# B6024
	fle x14, x117, x12
	bne	x14, zero, main_beqelse_b6026
# B6025
	fmul x14, x12, x12
	fmul x15, x14, x123
	fadd x15, x122, x15
	fmul x15, x14, x15
	fadd x15, x121, x15
	fmul x14, x14, x15
	fadd x14, x16, x14
	fmul x12, x12, x14
	j main_cont_b6027 # adhoc jump(2)
main_beqelse_b6026:
# B6026
	fsub x12, x116, x12
	fmul x12, x12, x12
	fmul x14, x12, x120
	fadd x14, x119, x14
	fmul x14, x12, x14
	fadd x14, x118, x14
	fmul x12, x12, x14
	fadd x12, x16, x12
main_cont_b6027:
# B6027
	fle x14, x12, zero
	beq	x100, x14, main_bneelse_b6029
# B6028
	mv x100, x12
	j main_cont_b6030 # adhoc jump(2)
main_bneelse_b6029:
# B6029
	fsub x100, zero, x12
main_cont_b6030:
# B6030
	in32 x12
	fmul x12, x12, x11
	fabs x14, x12
	mv x15, x14
	mv x17, x113
	j	main_loop_b6031
main_bneelse_b6032:	#moved
# B6032
	fmul x17, x17, x114
main_loop_b6031:
# B6031
	fle x18, x15, x17
	beq	x18, zero, main_bneelse_b6032
# B6033
# B6034
	mv x19, x14
	mv x20, x17
	j	main_loop_b6035
main_beqelse_b6039:	#moved
# B6039
	fdiv x20, x20, x114
main_loop_b6035:
# B6035
	fle x15, x113, x19
	beq	x15, zero, main_bneelse_b6036
# B6037
	fle x15, x19, x20
	bne	x15, zero, main_beqelse_b6039
# B6038
	fsub x19, x19, x20
	fdiv x20, x20, x114
	j	main_loop_b6035
main_bneelse_b6036:
# B6036
# B6040
	fle x15, x115, x19
	bne	x15, zero, main_beqelse_b6042
# B6041
	mv x17, x19
	j main_cont_b6043 # adhoc jump(2)
main_beqelse_b6042:
# B6042
	fsub x17, x19, x115
main_cont_b6043:
# B6043
	bne	x15, zero, main_beqelse_b6045
# B6044
	li x15, 1
	j main_cont_b6046 # adhoc jump(2)
main_beqelse_b6045:
# B6045
	mv x15, zero
main_cont_b6046:
# B6046
	fle x18, x116, x17
	bne	x18, zero, main_beqelse_b6048
# B6047
	j main_cont_b6049 # adhoc jump(2)
main_beqelse_b6048:
# B6048
	fsub x17, x115, x17
main_cont_b6049:
# B6049
	bne	x18, zero, main_beqelse_b6051
# B6050
	j main_cont_b6052 # adhoc jump(2)
main_beqelse_b6051:
# B6051
	xori x15, x15, 1
main_cont_b6052:
# B6052
	fle x18, x117, x17
	bne	x18, zero, main_beqelse_b6054
# B6053
	fmul x17, x17, x17
	fmul x18, x17, x120
	fadd x18, x119, x18
	fmul x18, x17, x18
	fadd x18, x118, x18
	fmul x17, x17, x18
	fadd x17, x16, x17
	j main_cont_b6055 # adhoc jump(2)
main_beqelse_b6054:
# B6054
	fsub x17, x116, x17
	fmul x18, x17, x17
	fmul x19, x18, x123
	fadd x19, x122, x19
	fmul x19, x18, x19
	fadd x19, x121, x19
	fmul x18, x18, x19
	fadd x18, x16, x18
	fmul x17, x17, x18
main_cont_b6055:
# B6055
	fle x18, x17, zero
	beq	x15, x18, main_bneelse_b6057
# B6056
	mv x15, x17
	j main_cont_b6058 # adhoc jump(2)
main_bneelse_b6057:
# B6057
	fsub x15, zero, x17
main_cont_b6058:
# B6058
	fle x12, x12, zero
	xori x12, x12, 1
	mv x17, x14
	mv x18, x113
	j	main_loop_b6059
main_bneelse_b6060:	#moved
# B6060
	fmul x18, x18, x114
main_loop_b6059:
# B6059
	fle x19, x17, x18
	beq	x19, zero, main_bneelse_b6060
# B6061
# B6062
	mv x20, x14
	mv x21, x18
	j	main_loop_b6063
main_beqelse_b6067:	#moved
# B6067
	fdiv x21, x21, x114
main_loop_b6063:
# B6063
	fle x14, x113, x20
	beq	x14, zero, main_bneelse_b6064
# B6065
	fle x14, x20, x21
	bne	x14, zero, main_beqelse_b6067
# B6066
	fsub x20, x20, x21
	fdiv x21, x21, x114
	j	main_loop_b6063
main_bneelse_b6064:
# B6064
# B6068
	fle x14, x115, x20
	bne	x14, zero, main_beqelse_b6070
# B6069
	mv x17, x20
	j main_cont_b6071 # adhoc jump(2)
main_beqelse_b6070:
# B6070
	fsub x17, x20, x115
main_cont_b6071:
# B6071
	bne	x14, zero, main_beqelse_b6073
# B6072
	j main_cont_b6074 # adhoc jump(2)
main_beqelse_b6073:
# B6073
	xori x12, x12, 1
main_cont_b6074:
# B6074
	fle x14, x116, x17
	bne	x14, zero, main_beqelse_b6076
# B6075
	mv x14, x17
	j main_cont_b6077 # adhoc jump(2)
main_beqelse_b6076:
# B6076
	fsub x14, x115, x17
main_cont_b6077:
# B6077
	fle x17, x117, x14
	bne	x17, zero, main_beqelse_b6079
# B6078
	fmul x17, x14, x14
	fmul x18, x17, x123
	fadd x18, x122, x18
	fmul x18, x17, x18
	fadd x18, x121, x18
	fmul x17, x17, x18
	fadd x17, x16, x17
	fmul x14, x14, x17
	j main_cont_b6080 # adhoc jump(2)
main_beqelse_b6079:
# B6079
	fsub x14, x116, x14
	fmul x14, x14, x14
	fmul x17, x14, x120
	fadd x17, x119, x17
	fmul x17, x14, x17
	fadd x17, x118, x17
	fmul x14, x14, x17
	fadd x14, x16, x14
main_cont_b6080:
# B6080
	fle x17, x14, zero
	beq	x12, x17, main_bneelse_b6082
# B6081
	mv x12, x14
	j main_cont_b6083 # adhoc jump(2)
main_bneelse_b6082:
# B6082
	fsub x12, zero, x14
main_cont_b6083:
# B6083
	la x124, min_caml_screenz_dir
	fmul x14, x13, x12
	lui x17, 275584
	fmul x14, x14, x17
	sw x14, 0(x124)
	lui x14, 799872
	fmul x14, x100, x14
	sw x14, 1(x124)
	fmul x14, x13, x15
	fmul x14, x14, x17
	sw x14, 2(x124)
	la x125, min_caml_screenx_dir
	sw x15, 0(x125)
	sw zero, 1(x125)
	fsub x14, zero, x12
	sw x14, 2(x125)
	la x126, min_caml_screeny_dir
	fsub x100, zero, x100
	fmul x12, x100, x12
	sw x12, 0(x126)
	fsub x12, zero, x13
	sw x12, 1(x126)
	fmul x100, x100, x15
	sw x100, 2(x126)
	la x127, min_caml_viewpoint
	lw x100, 0(x10)
	lw x12, 0(x124)
	fsub x100, x100, x12
	sw x100, 0(x127)
	lw x100, 1(x10)
	lw x12, 1(x124)
	fsub x100, x100, x12
	sw x100, 1(x127)
	lw x10, 2(x10)
	lw x100, 2(x124)
	fsub x10, x10, x100
	sw x10, 2(x127)
	in32 x10
	in32 x10
	fmul x10, x10, x11
	fle x100, x10, zero
	xori x100, x100, 1
	fabs x10, x10
	mv x12, x10
	mv x13, x113
	j	main_loop_b6084
main_bneelse_b6085:	#moved
# B6085
	fmul x13, x13, x114
main_loop_b6084:
# B6084
	fle x14, x12, x13
	beq	x14, zero, main_bneelse_b6085
# B6086
# B6087
	mv x15, x10
	mv x17, x13
	j	main_loop_b6088
main_beqelse_b6092:	#moved
# B6092
	fdiv x17, x17, x114
main_loop_b6088:
# B6088
	fle x12, x113, x15
	beq	x12, zero, main_bneelse_b6089
# B6090
	fle x12, x15, x17
	bne	x12, zero, main_beqelse_b6092
# B6091
	fsub x15, x15, x17
	fdiv x17, x17, x114
	j	main_loop_b6088
main_bneelse_b6089:
# B6089
# B6093
	fle x12, x115, x15
	bne	x12, zero, main_beqelse_b6095
# B6094
	mv x13, x15
	j main_cont_b6096 # adhoc jump(2)
main_beqelse_b6095:
# B6095
	fsub x13, x15, x115
main_cont_b6096:
# B6096
	bne	x12, zero, main_beqelse_b6098
# B6097
	j main_cont_b6099 # adhoc jump(2)
main_beqelse_b6098:
# B6098
	xori x100, x100, 1
main_cont_b6099:
# B6099
	fle x12, x116, x13
	bne	x12, zero, main_beqelse_b6101
# B6100
	mv x12, x13
	j main_cont_b6102 # adhoc jump(2)
main_beqelse_b6101:
# B6101
	fsub x12, x115, x13
main_cont_b6102:
# B6102
	fle x13, x117, x12
	bne	x13, zero, main_beqelse_b6104
# B6103
	fmul x13, x12, x12
	fmul x14, x13, x123
	fadd x14, x122, x14
	fmul x14, x13, x14
	fadd x14, x121, x14
	fmul x13, x13, x14
	fadd x13, x16, x13
	fmul x12, x12, x13
	j main_cont_b6105 # adhoc jump(2)
main_beqelse_b6104:
# B6104
	fsub x12, x116, x12
	fmul x12, x12, x12
	fmul x13, x12, x120
	fadd x13, x119, x13
	fmul x13, x12, x13
	fadd x13, x118, x13
	fmul x12, x12, x13
	fadd x12, x16, x12
main_cont_b6105:
# B6105
	fle x13, x12, zero
	beq	x100, x13, main_bneelse_b6107
# B6106
	mv x100, x12
	j main_cont_b6108 # adhoc jump(2)
main_bneelse_b6107:
# B6107
	fsub x100, zero, x12
main_cont_b6108:
# B6108
	la x41, min_caml_light
	fsub x100, zero, x100
	sw x100, 1(x41)
	in32 x100
	fmul x100, x100, x11
	mv x12, x113
	mv x11, x10
	j	main_loop_b6109
main_bneelse_b6110:	#moved
# B6110
	fmul x12, x12, x114
main_loop_b6109:
# B6109
	fle x13, x11, x12
	beq	x13, zero, main_bneelse_b6110
# B6111
# B6112
	mv x15, x12
	mv x14, x10
	j	main_loop_b6113
main_beqelse_b6117:	#moved
# B6117
	fdiv x15, x15, x114
main_loop_b6113:
# B6113
	fle x10, x113, x14
	beq	x10, zero, main_bneelse_b6114
# B6115
	fle x10, x14, x15
	bne	x10, zero, main_beqelse_b6117
# B6116
	fsub x14, x14, x15
	fdiv x15, x15, x114
	j	main_loop_b6113
main_bneelse_b6114:
# B6114
# B6118
	fle x10, x115, x14
	bne	x10, zero, main_beqelse_b6120
# B6119
	mv x11, x14
	j main_cont_b6121 # adhoc jump(2)
main_beqelse_b6120:
# B6120
	fsub x11, x14, x115
main_cont_b6121:
# B6121
	bne	x10, zero, main_beqelse_b6123
# B6122
	li x10, 1
	j main_cont_b6124 # adhoc jump(2)
main_beqelse_b6123:
# B6123
	mv x10, zero
main_cont_b6124:
# B6124
	fle x12, x116, x11
	bne	x12, zero, main_beqelse_b6126
# B6125
	j main_cont_b6127 # adhoc jump(2)
main_beqelse_b6126:
# B6126
	fsub x11, x115, x11
main_cont_b6127:
# B6127
	bne	x12, zero, main_beqelse_b6129
# B6128
	j main_cont_b6130 # adhoc jump(2)
main_beqelse_b6129:
# B6129
	xori x10, x10, 1
main_cont_b6130:
# B6130
	fle x12, x117, x11
	bne	x12, zero, main_beqelse_b6132
# B6131
	fmul x11, x11, x11
	fmul x12, x11, x120
	fadd x12, x119, x12
	fmul x12, x11, x12
	fadd x12, x118, x12
	fmul x11, x11, x12
	fadd x11, x16, x11
	j main_cont_b6133 # adhoc jump(2)
main_beqelse_b6132:
# B6132
	fsub x11, x116, x11
	fmul x12, x11, x11
	fmul x13, x12, x123
	fadd x13, x122, x13
	fmul x13, x12, x13
	fadd x13, x121, x13
	fmul x12, x12, x13
	fadd x12, x16, x12
	fmul x11, x11, x12
main_cont_b6133:
# B6133
	fle x12, x11, zero
	beq	x10, x12, main_bneelse_b6135
# B6134
	mv x10, x11
	j main_cont_b6136 # adhoc jump(2)
main_bneelse_b6135:
# B6135
	fsub x10, zero, x11
main_cont_b6136:
# B6136
	fle x11, x100, zero
	xori x11, x11, 1
	fabs x100, x100
	mv x12, x100
	mv x13, x113
	j	main_loop_b6137
main_bneelse_b6138:	#moved
# B6138
	fmul x13, x13, x114
main_loop_b6137:
# B6137
	fle x14, x12, x13
	beq	x14, zero, main_bneelse_b6138
# B6139
# B6140
	mv x15, x100
	mv x17, x13
	j	main_loop_b6141
main_beqelse_b6145:	#moved
# B6145
	fdiv x17, x17, x114
main_loop_b6141:
# B6141
	fle x12, x113, x15
	beq	x12, zero, main_bneelse_b6142
# B6143
	fle x12, x15, x17
	bne	x12, zero, main_beqelse_b6145
# B6144
	fsub x15, x15, x17
	fdiv x17, x17, x114
	j	main_loop_b6141
main_bneelse_b6142:
# B6142
# B6146
	fle x12, x115, x15
	bne	x12, zero, main_beqelse_b6148
# B6147
	mv x13, x15
	j main_cont_b6149 # adhoc jump(2)
main_beqelse_b6148:
# B6148
	fsub x13, x15, x115
main_cont_b6149:
# B6149
	bne	x12, zero, main_beqelse_b6151
# B6150
	j main_cont_b6152 # adhoc jump(2)
main_beqelse_b6151:
# B6151
	xori x11, x11, 1
main_cont_b6152:
# B6152
	fle x12, x116, x13
	bne	x12, zero, main_beqelse_b6154
# B6153
	mv x12, x13
	j main_cont_b6155 # adhoc jump(2)
main_beqelse_b6154:
# B6154
	fsub x12, x115, x13
main_cont_b6155:
# B6155
	fle x13, x117, x12
	bne	x13, zero, main_beqelse_b6157
# B6156
	fmul x13, x12, x12
	fmul x14, x13, x123
	fadd x14, x122, x14
	fmul x14, x13, x14
	fadd x14, x121, x14
	fmul x13, x13, x14
	fadd x13, x16, x13
	fmul x12, x12, x13
	j main_cont_b6158 # adhoc jump(2)
main_beqelse_b6157:
# B6157
	fsub x12, x116, x12
	fmul x12, x12, x12
	fmul x13, x12, x120
	fadd x13, x119, x13
	fmul x13, x12, x13
	fadd x13, x118, x13
	fmul x12, x12, x13
	fadd x12, x16, x12
main_cont_b6158:
# B6158
	fle x13, x12, zero
	beq	x11, x13, main_bneelse_b6160
# B6159
	mv x11, x12
	j main_cont_b6161 # adhoc jump(2)
main_bneelse_b6160:
# B6160
	fsub x11, zero, x12
main_cont_b6161:
# B6161
	fmul x11, x10, x11
	sw x11, 0(x41)
	mv x12, x100
	mv x13, x113
	j	main_loop_b6162
main_bneelse_b6163:	#moved
# B6163
	fmul x13, x13, x114
main_loop_b6162:
# B6162
	fle x11, x12, x13
	beq	x11, zero, main_bneelse_b6163
# B6164
# B6165
	mv x15, x13
	mv x14, x100
	j	main_loop_b6166
main_beqelse_b6170:	#moved
# B6170
	fdiv x15, x15, x114
main_loop_b6166:
# B6166
	fle x100, x113, x14
	beq	x100, zero, main_bneelse_b6167
# B6168
	fle x100, x14, x15
	bne	x100, zero, main_beqelse_b6170
# B6169
	fsub x14, x14, x15
	fdiv x15, x15, x114
	j	main_loop_b6166
main_bneelse_b6167:
# B6167
# B6171
	fle x100, x115, x14
	bne	x100, zero, main_beqelse_b6173
# B6172
	mv x11, x14
	j main_cont_b6174 # adhoc jump(2)
main_beqelse_b6173:
# B6173
	fsub x11, x14, x115
main_cont_b6174:
# B6174
	bne	x100, zero, main_beqelse_b6176
# B6175
	li x100, 1
	j main_cont_b6177 # adhoc jump(2)
main_beqelse_b6176:
# B6176
	mv x100, zero
main_cont_b6177:
# B6177
	fle x12, x116, x11
	bne	x12, zero, main_beqelse_b6179
# B6178
	j main_cont_b6180 # adhoc jump(2)
main_beqelse_b6179:
# B6179
	fsub x11, x115, x11
main_cont_b6180:
# B6180
	bne	x12, zero, main_beqelse_b6182
# B6181
	j main_cont_b6183 # adhoc jump(2)
main_beqelse_b6182:
# B6182
	xori x100, x100, 1
main_cont_b6183:
# B6183
	fle x12, x117, x11
	bne	x12, zero, main_beqelse_b6185
# B6184
	fmul x11, x11, x11
	fmul x12, x11, x120
	fadd x12, x119, x12
	fmul x12, x11, x12
	fadd x12, x118, x12
	fmul x11, x11, x12
	fadd x11, x16, x11
	j main_cont_b6186 # adhoc jump(2)
main_beqelse_b6185:
# B6185
	fsub x11, x116, x11
	fmul x12, x11, x11
	fmul x13, x12, x123
	fadd x13, x122, x13
	fmul x13, x12, x13
	fadd x13, x121, x13
	fmul x12, x12, x13
	fadd x12, x16, x12
	fmul x11, x11, x12
main_cont_b6186:
# B6186
	fle x12, x11, zero
	beq	x100, x12, main_bneelse_b6188
# B6187
	mv x100, x11
	j main_cont_b6189 # adhoc jump(2)
main_bneelse_b6188:
# B6188
	fsub x100, zero, x11
main_cont_b6189:
# B6189
	fmul x10, x10, x100
	sw x10, 2(x41)
	la x10, min_caml_beam
	in32 x100
	sw x100, 0(x10)
	mv x5, zero
	addi	x2, x2, 43
	jal	read_object.2872
	addi	x2, x2, -43
	mv x42, zero
	j	main_loop_b6190
main_beqelse_b6192:	#moved
# B6192
	la x10, min_caml_and_net
	add x4, x10, x42
	sw x5, 0(x4)
	addi x42, x42, 1
main_loop_b6190:
# B6190
	mv x5, zero
	addi	x2, x2, 43
	jal	read_net_item.2876
	addi	x2, x2, -43
	lw x10, 0(x5)
	li x100, -1
	bne	x10, x100, main_beqelse_b6192
# B6191
# B6193
	la x42, min_caml_or_net
	mv x5, zero
	addi	x2, x2, 43
	jal	read_or_network.2878
	addi	x2, x2, -43
	sw x5, 0(x42)
	li x10, 80
	out8 x10
	li x10, 54
	out8 x10
	li x43, 10
	out8 x43
	lw x10, 0(x102)
	li x44, 45
	bgt	zero, x10, main_bleelse_b6195
# B6194
	mv x100, x10
	mv x11, zero
main_loop_b6196:
# B6196
	mv x12, x103
	mv x10, x100
	mv x13, x43
	j	main_loop_b6197
main_bgtelse_b6198:	#moved
# B6198
	slli x12, x13, 3
	slli x14, x13, 1
	add x12, x12, x14
	mv x4, x13
	mv x13, x12
	mv x12, x4
main_loop_b6197:
# B6197
	bge	x10, x13, main_bgtelse_b6198
# B6199
# B6200
	mv x15, x103
	mv x16, zero
	mv x14, x12
	j	main_loop_b6201
main_bleelse_b6203:	#moved
# B6203
	slli x10, x15, 3
	slli x13, x15, 1
	add x15, x10, x13
	addi x16, x16, 1
main_loop_b6201:
# B6201
	bgt	x14, x15, main_bleelse_b6203
# B6202
# B6204
	sub x10, x11, x16
	addi x10, x10, -1
	mv x11, x10
	j	main_loop_b6205
main_bleelse_b6207:	#moved
# B6207
	li x10, 48
	out8 x10
	addi x11, x11, -1
main_loop_b6205:
# B6205
	bgt	x11, zero, main_bleelse_b6207
# B6206
# B6208
	bne	x16, zero, main_beqelse_b6210
# B6209
	addi x10, x100, 48
	out8 x10
	j main_cont_b6242 # adhoc jump(2)
main_beqelse_b6210:
# B6210
	mv x15, x12
	mv x13, x12
	mv x10, x100
	mv x14, x103
	j	main_loop_b6211
main_bgtelse_b6212:	#moved
# B6212
	addi x14, x14, 1
	mv x15, x11
main_loop_b6211:
# B6211
	add x11, x15, x13
	bge	x10, x11, main_bgtelse_b6212
# B6213
# B6214
	mv x15, x12
	mv x18, x14
	mv x17, zero
	j	main_loop_b6215
main_beqelse_b6217:	#moved
# B6217
	add x17, x17, x15
	addi x18, x18, -1
main_loop_b6215:
# B6215
	bne	x18, zero, main_beqelse_b6217
# B6216
# B6218
	sub x10, x100, x17
	addi x100, x14, 48
	out8 x100
	mv x11, x16
	mv x100, x10
	j	main_loop_b6196
main_bleelse_b6195:
# B6195
	out8 x44
	sub x10, zero, x10
	mv x100, x10
	mv x11, zero
main_loop_b6219:
# B6219
	mv x12, x103
	mv x10, x100
	mv x13, x43
	j	main_loop_b6220
main_bgtelse_b6221:	#moved
# B6221
	slli x12, x13, 3
	slli x14, x13, 1
	add x12, x12, x14
	mv x4, x13
	mv x13, x12
	mv x12, x4
main_loop_b6220:
# B6220
	bge	x10, x13, main_bgtelse_b6221
# B6222
# B6223
	mv x15, x103
	mv x16, zero
	mv x14, x12
	j	main_loop_b6224
main_bleelse_b6226:	#moved
# B6226
	slli x10, x15, 3
	slli x13, x15, 1
	add x15, x10, x13
	addi x16, x16, 1
main_loop_b6224:
# B6224
	bgt	x14, x15, main_bleelse_b6226
# B6225
# B6227
	sub x10, x11, x16
	addi x10, x10, -1
	mv x11, x10
	j	main_loop_b6228
main_bleelse_b6230:	#moved
# B6230
	li x10, 48
	out8 x10
	addi x11, x11, -1
main_loop_b6228:
# B6228
	bgt	x11, zero, main_bleelse_b6230
# B6229
# B6231
	bne	x16, zero, main_beqelse_b6233
# B6232
	addi x10, x100, 48
	out8 x10
main_cont_b6242:
# B6242
	li x45, 32
	out8 x45
	lw x10, 1(x102)
	bgt	zero, x10, main_bleelse_b6244
# B6243
	mv x100, x10
	mv x11, zero
main_loop_b6245:
# B6245
	mv x12, x103
	mv x10, x100
	mv x13, x43
	j	main_loop_b6246
main_bgtelse_b6247:	#moved
# B6247
	slli x12, x13, 3
	slli x14, x13, 1
	add x12, x12, x14
	mv x4, x13
	mv x13, x12
	mv x12, x4
main_loop_b6246:
# B6246
	bge	x10, x13, main_bgtelse_b6247
# B6248
# B6249
	mv x15, x103
	mv x16, zero
	mv x14, x12
	j	main_loop_b6250
main_bleelse_b6252:	#moved
# B6252
	slli x10, x15, 3
	slli x13, x15, 1
	add x15, x10, x13
	addi x16, x16, 1
main_loop_b6250:
# B6250
	bgt	x14, x15, main_bleelse_b6252
# B6251
# B6253
	sub x10, x11, x16
	addi x10, x10, -1
	mv x11, x10
	j	main_loop_b6254
main_bleelse_b6256:	#moved
# B6256
	li x10, 48
	out8 x10
	addi x11, x11, -1
main_loop_b6254:
# B6254
	bgt	x11, zero, main_bleelse_b6256
# B6255
# B6257
	bne	x16, zero, main_beqelse_b6259
# B6258
	addi x10, x100, 48
	out8 x10
	j main_cont_b6291 # adhoc jump(2)
main_beqelse_b6259:
# B6259
	mv x15, x12
	mv x13, x12
	mv x10, x100
	mv x14, x103
	j	main_loop_b6260
main_bgtelse_b6261:	#moved
# B6261
	addi x14, x14, 1
	mv x15, x11
main_loop_b6260:
# B6260
	add x11, x15, x13
	bge	x10, x11, main_bgtelse_b6261
# B6262
# B6263
	mv x15, x12
	mv x18, x14
	mv x17, zero
	j	main_loop_b6264
main_beqelse_b6266:	#moved
# B6266
	add x17, x17, x15
	addi x18, x18, -1
main_loop_b6264:
# B6264
	bne	x18, zero, main_beqelse_b6266
# B6265
# B6267
	sub x10, x100, x17
	addi x100, x14, 48
	out8 x100
	mv x11, x16
	mv x100, x10
	j	main_loop_b6245
main_bleelse_b6244:
# B6244
	out8 x44
	sub x10, zero, x10
	mv x100, x10
	mv x11, zero
main_loop_b6268:
# B6268
	mv x12, x103
	mv x10, x100
	mv x13, x43
	j	main_loop_b6269
main_bgtelse_b6270:	#moved
# B6270
	slli x12, x13, 3
	slli x14, x13, 1
	add x12, x12, x14
	mv x4, x13
	mv x13, x12
	mv x12, x4
main_loop_b6269:
# B6269
	bge	x10, x13, main_bgtelse_b6270
# B6271
# B6272
	mv x15, x103
	mv x16, zero
	mv x14, x12
	j	main_loop_b6273
main_bleelse_b6275:	#moved
# B6275
	slli x10, x15, 3
	slli x13, x15, 1
	add x15, x10, x13
	addi x16, x16, 1
main_loop_b6273:
# B6273
	bgt	x14, x15, main_bleelse_b6275
# B6274
# B6276
	sub x10, x11, x16
	addi x10, x10, -1
	mv x11, x10
	j	main_loop_b6277
main_bleelse_b6279:	#moved
# B6279
	li x10, 48
	out8 x10
	addi x11, x11, -1
main_loop_b6277:
# B6277
	bgt	x11, zero, main_bleelse_b6279
# B6278
# B6280
	bne	x16, zero, main_beqelse_b6282
# B6281
	addi x10, x100, 48
	out8 x10
main_cont_b6291:
# B6291
	out8 x45
	li x46, 255
	mv x10, x46
	mv x100, zero
main_loop_b6292:
# B6292
	mv x12, x103
	mv x11, x10
	mv x13, x43
	j	main_loop_b6293
main_bgtelse_b6294:	#moved
# B6294
	slli x12, x13, 3
	slli x14, x13, 1
	add x12, x12, x14
	mv x4, x13
	mv x13, x12
	mv x12, x4
main_loop_b6293:
# B6293
	bge	x11, x13, main_bgtelse_b6294
# B6295
# B6296
	mv x15, x103
	mv x16, zero
	mv x14, x12
	j	main_loop_b6297
main_bleelse_b6299:	#moved
# B6299
	slli x11, x15, 3
	slli x13, x15, 1
	add x15, x11, x13
	addi x16, x16, 1
main_loop_b6297:
# B6297
	bgt	x14, x15, main_bleelse_b6299
# B6298
# B6300
	sub x100, x100, x16
	addi x100, x100, -1
	mv x11, x100
	j	main_loop_b6301
main_bleelse_b6303:	#moved
# B6303
	li x100, 48
	out8 x100
	addi x11, x11, -1
main_loop_b6301:
# B6301
	bgt	x11, zero, main_bleelse_b6303
# B6302
# B6304
	bne	x16, zero, main_beqelse_b6306
# B6305
	addi x10, x10, 48
	out8 x10
# B6315
	out8 x43
	mv x47, x112
main_loop_b6316:
# B6316
	li x48, 118
	bgt	zero, x47, main_bleelse_b6318
# B6317
	la x49, min_caml_dirvecs
	li x50, 120
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.220:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.220
create_float_array_loop_cont.220:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.220:
	bne x4, zero, create_float_array_loop_cont.220
	mv x51, x5
	la x52, min_caml_n_objects
	lw x5, 0(x52)
	mv x6, x51
min_caml_create_array.221:
	mv x4, x5
	mv x5, x3
	j create_array_loop.221
create_array_loop_cont.221:
	sw x6, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_array_loop.221:
	bne x4, zero, create_array_loop_cont.221
	mv x6, x3
	addi x3, x3, 2
	sw x5, 1(x6)
	sw x51, 0(x6)
	mv x5, x50
min_caml_create_array.222:
	mv x4, x5
	mv x5, x3
	j create_array_loop.222
create_array_loop_cont.222:
	sw x6, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_array_loop.222:
	bne x4, zero, create_array_loop_cont.222
	add x4, x49, x47
	sw x5, 0(x4)
	add x4, x49, x47
	lw x10, 0(x4)
	mv x49, x48
	mv x48, x10
	j	main_loop_b6319
main_bgtelse_b6320:	#moved
# B6320
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.223:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.223
create_float_array_loop_cont.223:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.223:
	bne x4, zero, create_float_array_loop_cont.223
	mv x50, x5
	lw x5, 0(x52)
	mv x6, x50
min_caml_create_array.224:
	mv x4, x5
	mv x5, x3
	j create_array_loop.224
create_array_loop_cont.224:
	sw x6, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_array_loop.224:
	bne x4, zero, create_array_loop_cont.224
	mv x10, x3
	addi x3, x3, 2
	sw x5, 1(x10)
	sw x50, 0(x10)
	add x4, x48, x49
	sw x10, 0(x4)
	addi x49, x49, -1
main_loop_b6319:
# B6319
	bge	x49, zero, main_bgtelse_b6320
# B6321
# B6322
	addi x47, x47, -1
	j	main_loop_b6316
main_bleelse_b6318:
# B6318
# B6323
	li x10, 9
	mv x12, zero
	mv x100, x10
	mv x11, zero
main_loop_b6324:
# B6324
	bgt	zero, x100, main_bleelse_b6326
# B6325
	itof x10, x100
	lui x13, 255181
	addi x13, x13, -819
	fmul x10, x10, x13
	lui x14, 259686
	addi x14, x14, 1638
	fsub x10, x10, x14
	mv x15, x112
	mv x16, x10
	mv x18, x12
	mv x17, x11
main_loop_b6327:
# B6327
	bgt	zero, x15, main_bleelse_b6329
# B6328
	itof x10, x15
	fmul x10, x10, x13
	fsub x19, x10, x14
	mv x24, x16
	mv x26, x18
	mv x25, x17
	mv x23, x19
	mv x22, zero
	mv x20, zero
	mv x21, zero
main_loop_b6330:
# B6330
	lui x19, 253133
	addi x19, x19, -819
	bgt	x110, x20, main_bleelse_b6332
# B6331
	fmul x20, x21, x21
	fmul x23, x22, x22
	fadd x20, x20, x23
	lui x23, 260096
	fadd x20, x20, x23
	fsqrt x20, x20
	fdiv x21, x21, x20
	fdiv x22, x22, x20
	fdiv x20, x23, x20
	la x23, min_caml_dirvecs
	add x4, x23, x25
	lw x23, 0(x4)
	add x4, x23, x26
	lw x24, 0(x4)
	lw x24, 0(x24)
	sw x21, 0(x24)
	sw x22, 1(x24)
	sw x20, 2(x24)
	addi x24, x26, 40
	add x4, x23, x24
	lw x24, 0(x4)
	lw x24, 0(x24)
	fsub x25, zero, x22
	sw x21, 0(x24)
	sw x20, 1(x24)
	sw x25, 2(x24)
	addi x24, x26, 80
	add x4, x23, x24
	lw x24, 0(x4)
	lw x24, 0(x24)
	fsub x27, zero, x21
	sw x20, 0(x24)
	sw x27, 1(x24)
	sw x25, 2(x24)
	addi x24, x26, 1
	add x4, x23, x24
	lw x24, 0(x4)
	lw x24, 0(x24)
	fsub x20, zero, x20
	sw x27, 0(x24)
	sw x25, 1(x24)
	sw x20, 2(x24)
	addi x24, x26, 41
	add x4, x23, x24
	lw x24, 0(x4)
	lw x24, 0(x24)
	sw x27, 0(x24)
	sw x20, 1(x24)
	sw x22, 2(x24)
	addi x24, x26, 81
	add x4, x23, x24
	lw x23, 0(x4)
	lw x23, 0(x23)
	sw x20, 0(x23)
	sw x21, 1(x23)
	sw x22, 2(x23)
# B6455
	fadd x10, x10, x19
	addi x20, x18, 2
	mv x25, x16
	mv x27, x20
	mv x26, x17
	mv x24, x10
	mv x23, zero
	mv x22, zero
	mv x21, zero
main_loop_b6456:
# B6456
	bgt	x110, x21, main_bleelse_b6458
# B6457
	fmul x10, x22, x22
	fmul x19, x23, x23
	fadd x10, x10, x19
	lui x19, 260096
	fadd x10, x10, x19
	fsqrt x10, x10
	fdiv x20, x22, x10
	fdiv x21, x23, x10
	fdiv x10, x19, x10
	la x19, min_caml_dirvecs
	add x4, x19, x26
	lw x19, 0(x4)
	add x4, x19, x27
	lw x22, 0(x4)
	lw x22, 0(x22)
	sw x20, 0(x22)
	sw x21, 1(x22)
	sw x10, 2(x22)
	addi x22, x27, 40
	add x4, x19, x22
	lw x22, 0(x4)
	lw x22, 0(x22)
	fsub x23, zero, x21
	sw x20, 0(x22)
	sw x10, 1(x22)
	sw x23, 2(x22)
	addi x22, x27, 80
	add x4, x19, x22
	lw x22, 0(x4)
	lw x22, 0(x22)
	fsub x24, zero, x20
	sw x10, 0(x22)
	sw x24, 1(x22)
	sw x23, 2(x22)
	addi x22, x27, 1
	add x4, x19, x22
	lw x22, 0(x4)
	lw x22, 0(x22)
	fsub x10, zero, x10
	sw x24, 0(x22)
	sw x23, 1(x22)
	sw x10, 2(x22)
	addi x22, x27, 41
	add x4, x19, x22
	lw x22, 0(x4)
	lw x22, 0(x22)
	sw x24, 0(x22)
	sw x10, 1(x22)
	sw x21, 2(x22)
	addi x22, x27, 81
	add x4, x19, x22
	lw x19, 0(x4)
	lw x19, 0(x19)
	sw x10, 0(x19)
	sw x20, 1(x19)
	sw x21, 2(x19)
# B6581
	addi x10, x15, -1
	addi x15, x17, 1
	bgt	x110, x15, main_bleelse_b6583
# B6582
	addi x15, x15, -5
main_bleelse_b6583:
# B6583
main_cont_b6584:
# B6584
	mv x17, x15
	mv x15, x10
	j	main_loop_b6327
main_bleelse_b6458:
# B6458
	fmul x10, x23, x23
	fadd x10, x10, x19
	fsqrt x10, x10
	lui x20, 260096
	fdiv x22, x20, x10
	fle x23, x22, zero
	xori x23, x23, 1
	fabs x28, x22
	lui x29, 257536
	fle x30, x29, x28
	lui x31, 262592
	lui x32, 780971
	addi x32, x32, -1366
	lui x33, 778533
	addi x33, x33, -1755
	lui x34, 253497
	addi x34, x34, -456
	lui x35, 777085
	addi x35, x35, 1646
	lui x36, 251742
	addi x36, x36, 1989
	bne	x30, zero, main_beqelse_b6460
# B6459
	fmul x23, x22, x22
	lui x28, 780971
	addi x28, x28, -1366
	lui x30, 778533
	addi x30, x30, -1755
	lui x37, 253497
	addi x37, x37, -456
	lui x38, 777085
	addi x38, x38, 1646
	lui x39, 251742
	addi x39, x39, 1989
	fmul x39, x23, x39
	fadd x38, x38, x39
	fmul x38, x23, x38
	fadd x37, x37, x38
	fmul x37, x23, x37
	fadd x30, x30, x37
	fmul x30, x23, x30
	fadd x30, x13, x30
	fmul x30, x23, x30
	fadd x28, x28, x30
	fmul x23, x23, x28
	fadd x23, x20, x23
	fmul x22, x22, x23
	j main_cont_b6466 # adhoc jump(2)
main_beqelse_b6460:
# B6460
	fle x22, x31, x28
	bne	x22, zero, main_beqelse_b6462
# B6461
	fsub x22, x28, x20
	fadd x28, x28, x20
	fdiv x22, x22, x28
	fmul x28, x22, x22
	lui x30, 780971
	addi x30, x30, -1366
	lui x37, 778533
	addi x37, x37, -1755
	lui x38, 253497
	addi x38, x38, -456
	lui x39, 777085
	addi x39, x39, 1646
	lui x40, 251742
	addi x40, x40, 1989
	fmul x40, x28, x40
	fadd x39, x39, x40
	fmul x39, x28, x39
	fadd x38, x38, x39
	fmul x38, x28, x38
	fadd x37, x37, x38
	fmul x37, x28, x37
	fadd x37, x13, x37
	fmul x37, x28, x37
	fadd x30, x30, x37
	fmul x28, x28, x30
	fadd x28, x20, x28
	fmul x22, x22, x28
	fadd x22, x117, x22
	j main_cont_b6463 # adhoc jump(2)
main_beqelse_b6462:
# B6462
	fdiv x22, x20, x28
	fmul x28, x22, x22
	fmul x30, x28, x36
	fadd x30, x35, x30
	fmul x30, x28, x30
	fadd x30, x34, x30
	fmul x30, x28, x30
	fadd x30, x33, x30
	fmul x30, x28, x30
	fadd x30, x13, x30
	fmul x30, x28, x30
	fadd x30, x32, x30
	fmul x28, x28, x30
	fadd x28, x20, x28
	fmul x22, x22, x28
	fsub x22, x116, x22
main_cont_b6463:
# B6463
	bne	x23, zero, main_beqelse_b6465
# B6464
	fsub x22, zero, x22
main_beqelse_b6465:
# B6465
main_cont_b6466:
# B6466
	fmul x22, x22, x24
	fle x23, x22, zero
	xori x23, x23, 1
	fabs x22, x22
	mv x28, x22
	mv x30, x113
	j	main_loop_b6467
main_bneelse_b6468:	#moved
# B6468
	fmul x30, x30, x114
main_loop_b6467:
# B6467
	fle x37, x28, x30
	beq	x37, zero, main_bneelse_b6468
# B6469
# B6470
	mv x38, x22
	mv x39, x30
	j	main_loop_b6471
main_beqelse_b6475:	#moved
# B6475
	fdiv x39, x39, x114
main_loop_b6471:
# B6471
	fle x28, x113, x38
	beq	x28, zero, main_bneelse_b6472
# B6473
	fle x28, x38, x39
	bne	x28, zero, main_beqelse_b6475
# B6474
	fsub x38, x38, x39
	fdiv x39, x39, x114
	j	main_loop_b6471
main_bneelse_b6472:
# B6472
# B6476
	fle x28, x115, x38
	bne	x28, zero, main_beqelse_b6478
# B6477
	mv x30, x38
	j main_cont_b6479 # adhoc jump(2)
main_beqelse_b6478:
# B6478
	fsub x30, x38, x115
main_cont_b6479:
# B6479
	bne	x28, zero, main_beqelse_b6481
# B6480
	j main_cont_b6482 # adhoc jump(2)
main_beqelse_b6481:
# B6481
	xori x23, x23, 1
main_cont_b6482:
# B6482
	fle x28, x116, x30
	bne	x28, zero, main_beqelse_b6484
# B6483
	mv x28, x30
	j main_cont_b6485 # adhoc jump(2)
main_beqelse_b6484:
# B6484
	fsub x28, x115, x30
main_cont_b6485:
# B6485
	fle x30, x117, x28
	bne	x30, zero, main_beqelse_b6487
# B6486
	fmul x30, x28, x28
	fmul x37, x30, x123
	fadd x37, x122, x37
	fmul x37, x30, x37
	fadd x37, x121, x37
	fmul x30, x30, x37
	fadd x30, x20, x30
	fmul x28, x28, x30
	j main_cont_b6488 # adhoc jump(2)
main_beqelse_b6487:
# B6487
	fsub x28, x116, x28
	fmul x28, x28, x28
	fmul x30, x28, x120
	fadd x30, x119, x30
	fmul x30, x28, x30
	fadd x30, x118, x30
	fmul x28, x28, x30
	fadd x28, x20, x28
main_cont_b6488:
# B6488
	fle x30, x28, zero
	beq	x23, x30, main_bneelse_b6490
# B6489
	mv x23, x28
	j main_cont_b6491 # adhoc jump(2)
main_bneelse_b6490:
# B6490
	fsub x23, zero, x28
main_cont_b6491:
# B6491
	mv x28, x22
	mv x30, x113
	j	main_loop_b6492
main_bneelse_b6493:	#moved
# B6493
	fmul x30, x30, x114
main_loop_b6492:
# B6492
	fle x37, x28, x30
	beq	x37, zero, main_bneelse_b6493
# B6494
# B6495
	mv x38, x22
	mv x39, x30
	j	main_loop_b6496
main_beqelse_b6500:	#moved
# B6500
	fdiv x39, x39, x114
main_loop_b6496:
# B6496
	fle x22, x113, x38
	beq	x22, zero, main_bneelse_b6497
# B6498
	fle x22, x38, x39
	bne	x22, zero, main_beqelse_b6500
# B6499
	fsub x38, x38, x39
	fdiv x39, x39, x114
	j	main_loop_b6496
main_bneelse_b6497:
# B6497
# B6501
	fle x22, x115, x38
	bne	x22, zero, main_beqelse_b6503
# B6502
	mv x28, x38
	j main_cont_b6504 # adhoc jump(2)
main_beqelse_b6503:
# B6503
	fsub x28, x38, x115
main_cont_b6504:
# B6504
	bne	x22, zero, main_beqelse_b6506
# B6505
	li x22, 1
	j main_cont_b6507 # adhoc jump(2)
main_beqelse_b6506:
# B6506
	mv x22, zero
main_cont_b6507:
# B6507
	fle x30, x116, x28
	bne	x30, zero, main_beqelse_b6509
# B6508
	j main_cont_b6510 # adhoc jump(2)
main_beqelse_b6509:
# B6509
	fsub x28, x115, x28
main_cont_b6510:
# B6510
	bne	x30, zero, main_beqelse_b6512
# B6511
	j main_cont_b6513 # adhoc jump(2)
main_beqelse_b6512:
# B6512
	xori x22, x22, 1
main_cont_b6513:
# B6513
	fle x30, x117, x28
	bne	x30, zero, main_beqelse_b6515
# B6514
	fmul x28, x28, x28
	fmul x30, x28, x120
	fadd x30, x119, x30
	fmul x30, x28, x30
	fadd x30, x118, x30
	fmul x28, x28, x30
	fadd x28, x20, x28
	j main_cont_b6516 # adhoc jump(2)
main_beqelse_b6515:
# B6515
	fsub x28, x116, x28
	fmul x30, x28, x28
	fmul x37, x30, x123
	fadd x37, x122, x37
	fmul x37, x30, x37
	fadd x37, x121, x37
	fmul x30, x30, x37
	fadd x30, x20, x30
	fmul x28, x28, x30
main_cont_b6516:
# B6516
	fle x30, x28, zero
	beq	x22, x30, main_bneelse_b6518
# B6517
	mv x22, x28
	j main_cont_b6519 # adhoc jump(2)
main_bneelse_b6518:
# B6518
	fsub x22, zero, x28
main_cont_b6519:
# B6519
	fdiv x22, x23, x22
	fmul x10, x22, x10
	addi x21, x21, 1
	fmul x22, x10, x10
	fadd x22, x22, x19
	fsqrt x22, x22
	fdiv x23, x20, x22
	fle x28, x23, zero
	xori x28, x28, 1
	fabs x30, x23
	fle x29, x29, x30
	bne	x29, zero, main_beqelse_b6521
# B6520
	fmul x28, x23, x23
	fmul x29, x28, x36
	fadd x29, x35, x29
	fmul x29, x28, x29
	fadd x29, x34, x29
	fmul x29, x28, x29
	fadd x29, x33, x29
	fmul x29, x28, x29
	fadd x29, x13, x29
	fmul x29, x28, x29
	fadd x29, x32, x29
	fmul x28, x28, x29
	fadd x28, x20, x28
	fmul x23, x23, x28
	j main_cont_b6527 # adhoc jump(2)
main_beqelse_b6521:
# B6521
	fle x23, x31, x30
	bne	x23, zero, main_beqelse_b6523
# B6522
	fsub x23, x30, x20
	fadd x29, x30, x20
	fdiv x23, x23, x29
	fmul x29, x23, x23
	fmul x30, x29, x36
	fadd x30, x35, x30
	fmul x30, x29, x30
	fadd x30, x34, x30
	fmul x30, x29, x30
	fadd x30, x33, x30
	fmul x30, x29, x30
	fadd x30, x13, x30
	fmul x30, x29, x30
	fadd x30, x32, x30
	fmul x29, x29, x30
	fadd x29, x20, x29
	fmul x23, x23, x29
	fadd x23, x117, x23
	j main_cont_b6524 # adhoc jump(2)
main_beqelse_b6523:
# B6523
	fdiv x23, x20, x30
	fmul x29, x23, x23
	fmul x30, x29, x36
	fadd x30, x35, x30
	fmul x30, x29, x30
	fadd x30, x34, x30
	fmul x30, x29, x30
	fadd x30, x33, x30
	fmul x30, x29, x30
	fadd x30, x13, x30
	fmul x30, x29, x30
	fadd x30, x32, x30
	fmul x29, x29, x30
	fadd x29, x20, x29
	fmul x23, x23, x29
	fsub x23, x116, x23
main_cont_b6524:
# B6524
	bne	x28, zero, main_beqelse_b6526
# B6525
	fsub x23, zero, x23
main_beqelse_b6526:
# B6526
main_cont_b6527:
# B6527
	fmul x23, x23, x25
	fle x28, x23, zero
	xori x28, x28, 1
	fabs x23, x23
	mv x29, x23
	mv x30, x113
	j	main_loop_b6528
main_bneelse_b6529:	#moved
# B6529
	fmul x30, x30, x114
main_loop_b6528:
# B6528
	fle x31, x29, x30
	beq	x31, zero, main_bneelse_b6529
# B6530
# B6531
	mv x32, x23
	mv x33, x30
	j	main_loop_b6532
main_beqelse_b6536:	#moved
# B6536
	fdiv x33, x33, x114
main_loop_b6532:
# B6532
	fle x29, x113, x32
	beq	x29, zero, main_bneelse_b6533
# B6534
	fle x29, x32, x33
	bne	x29, zero, main_beqelse_b6536
# B6535
	fsub x32, x32, x33
	fdiv x33, x33, x114
	j	main_loop_b6532
main_bneelse_b6533:
# B6533
# B6537
	fle x29, x115, x32
	bne	x29, zero, main_beqelse_b6539
# B6538
	mv x30, x32
	j main_cont_b6540 # adhoc jump(2)
main_beqelse_b6539:
# B6539
	fsub x30, x32, x115
main_cont_b6540:
# B6540
	bne	x29, zero, main_beqelse_b6542
# B6541
	j main_cont_b6543 # adhoc jump(2)
main_beqelse_b6542:
# B6542
	xori x28, x28, 1
main_cont_b6543:
# B6543
	fle x29, x116, x30
	bne	x29, zero, main_beqelse_b6545
# B6544
	mv x29, x30
	j main_cont_b6546 # adhoc jump(2)
main_beqelse_b6545:
# B6545
	fsub x29, x115, x30
main_cont_b6546:
# B6546
	fle x30, x117, x29
	bne	x30, zero, main_beqelse_b6548
# B6547
	fmul x30, x29, x29
	fmul x31, x30, x123
	fadd x31, x122, x31
	fmul x31, x30, x31
	fadd x31, x121, x31
	fmul x30, x30, x31
	fadd x30, x20, x30
	fmul x29, x29, x30
	j main_cont_b6549 # adhoc jump(2)
main_beqelse_b6548:
# B6548
	fsub x29, x116, x29
	fmul x29, x29, x29
	fmul x30, x29, x120
	fadd x30, x119, x30
	fmul x30, x29, x30
	fadd x30, x118, x30
	fmul x29, x29, x30
	fadd x29, x20, x29
main_cont_b6549:
# B6549
	fle x30, x29, zero
	beq	x28, x30, main_bneelse_b6551
# B6550
	mv x28, x29
	j main_cont_b6552 # adhoc jump(2)
main_bneelse_b6551:
# B6551
	fsub x28, zero, x29
main_cont_b6552:
# B6552
	mv x29, x23
	mv x30, x113
	j	main_loop_b6553
main_bneelse_b6554:	#moved
# B6554
	fmul x30, x30, x114
main_loop_b6553:
# B6553
	fle x31, x29, x30
	beq	x31, zero, main_bneelse_b6554
# B6555
# B6556
	mv x32, x23
	mv x33, x30
	j	main_loop_b6557
main_beqelse_b6561:	#moved
# B6561
	fdiv x33, x33, x114
main_loop_b6557:
# B6557
	fle x23, x113, x32
	beq	x23, zero, main_bneelse_b6558
# B6559
	fle x23, x32, x33
	bne	x23, zero, main_beqelse_b6561
# B6560
	fsub x32, x32, x33
	fdiv x33, x33, x114
	j	main_loop_b6557
main_bneelse_b6558:
# B6558
# B6562
	fle x23, x115, x32
	bne	x23, zero, main_beqelse_b6564
# B6563
	mv x29, x32
	j main_cont_b6565 # adhoc jump(2)
main_beqelse_b6564:
# B6564
	fsub x29, x32, x115
main_cont_b6565:
# B6565
	bne	x23, zero, main_beqelse_b6567
# B6566
	li x23, 1
	j main_cont_b6568 # adhoc jump(2)
main_beqelse_b6567:
# B6567
	mv x23, zero
main_cont_b6568:
# B6568
	fle x30, x116, x29
	bne	x30, zero, main_beqelse_b6570
# B6569
	j main_cont_b6571 # adhoc jump(2)
main_beqelse_b6570:
# B6570
	fsub x29, x115, x29
main_cont_b6571:
# B6571
	bne	x30, zero, main_beqelse_b6573
# B6572
	j main_cont_b6574 # adhoc jump(2)
main_beqelse_b6573:
# B6573
	xori x23, x23, 1
main_cont_b6574:
# B6574
	fle x30, x117, x29
	bne	x30, zero, main_beqelse_b6576
# B6575
	fmul x29, x29, x29
	fmul x30, x29, x120
	fadd x30, x119, x30
	fmul x30, x29, x30
	fadd x30, x118, x30
	fmul x29, x29, x30
	fadd x20, x20, x29
	j main_cont_b6577 # adhoc jump(2)
main_beqelse_b6576:
# B6576
	fsub x29, x116, x29
	fmul x30, x29, x29
	fmul x31, x30, x123
	fadd x31, x122, x31
	fmul x31, x30, x31
	fadd x31, x121, x31
	fmul x30, x30, x31
	fadd x20, x20, x30
	fmul x20, x29, x20
main_cont_b6577:
# B6577
	fle x29, x20, zero
	beq	x23, x29, main_bneelse_b6579
# B6578
	j main_cont_b6580 # adhoc jump(2)
main_bneelse_b6579:
# B6579
	fsub x20, zero, x20
main_cont_b6580:
# B6580
	fdiv x20, x28, x20
	fmul x23, x20, x22
	mv x22, x10
	j	main_loop_b6456
main_bleelse_b6332:
# B6332
	fmul x21, x22, x22
	fadd x21, x21, x19
	fsqrt x21, x21
	lui x22, 260096
	fdiv x27, x22, x21
	fle x28, x27, zero
	xori x28, x28, 1
	fabs x29, x27
	lui x30, 257536
	fle x31, x30, x29
	lui x32, 262592
	lui x33, 780971
	addi x33, x33, -1366
	lui x34, 778533
	addi x34, x34, -1755
	lui x35, 253497
	addi x35, x35, -456
	lui x36, 777085
	addi x36, x36, 1646
	lui x37, 251742
	addi x37, x37, 1989
	bne	x31, zero, main_beqelse_b6334
# B6333
	fmul x28, x27, x27
	lui x29, 780971
	addi x29, x29, -1366
	lui x31, 778533
	addi x31, x31, -1755
	lui x38, 253497
	addi x38, x38, -456
	lui x39, 777085
	addi x39, x39, 1646
	lui x40, 251742
	addi x40, x40, 1989
	fmul x40, x28, x40
	fadd x39, x39, x40
	fmul x39, x28, x39
	fadd x38, x38, x39
	fmul x38, x28, x38
	fadd x31, x31, x38
	fmul x31, x28, x31
	fadd x31, x13, x31
	fmul x31, x28, x31
	fadd x29, x29, x31
	fmul x28, x28, x29
	fadd x28, x22, x28
	fmul x27, x27, x28
	j main_cont_b6340 # adhoc jump(2)
main_beqelse_b6334:
# B6334
	fle x27, x32, x29
	bne	x27, zero, main_beqelse_b6336
# B6335
	fsub x27, x29, x22
	fadd x29, x29, x22
	fdiv x27, x27, x29
	fmul x29, x27, x27
	lui x31, 780971
	addi x31, x31, -1366
	lui x38, 778533
	addi x38, x38, -1755
	lui x39, 253497
	addi x39, x39, -456
	lui x40, 777085
	addi x40, x40, 1646
	lui x5, 251742
	addi x5, x5, 1989
	fmul x5, x29, x5
	fadd x40, x40, x5
	fmul x40, x29, x40
	fadd x39, x39, x40
	fmul x39, x29, x39
	fadd x38, x38, x39
	fmul x38, x29, x38
	fadd x38, x13, x38
	fmul x38, x29, x38
	fadd x31, x31, x38
	fmul x29, x29, x31
	fadd x29, x22, x29
	fmul x27, x27, x29
	fadd x27, x117, x27
	j main_cont_b6337 # adhoc jump(2)
main_beqelse_b6336:
# B6336
	fdiv x27, x22, x29
	fmul x29, x27, x27
	fmul x31, x29, x37
	fadd x31, x36, x31
	fmul x31, x29, x31
	fadd x31, x35, x31
	fmul x31, x29, x31
	fadd x31, x34, x31
	fmul x31, x29, x31
	fadd x31, x13, x31
	fmul x31, x29, x31
	fadd x31, x33, x31
	fmul x29, x29, x31
	fadd x29, x22, x29
	fmul x27, x27, x29
	fsub x27, x116, x27
main_cont_b6337:
# B6337
	bne	x28, zero, main_beqelse_b6339
# B6338
	fsub x27, zero, x27
main_beqelse_b6339:
# B6339
main_cont_b6340:
# B6340
	fmul x27, x27, x23
	fle x28, x27, zero
	xori x28, x28, 1
	fabs x27, x27
	mv x29, x27
	mv x31, x113
	j	main_loop_b6341
main_bneelse_b6342:	#moved
# B6342
	fmul x31, x31, x114
main_loop_b6341:
# B6341
	fle x38, x29, x31
	beq	x38, zero, main_bneelse_b6342
# B6343
# B6344
	mv x39, x27
	mv x40, x31
	j	main_loop_b6345
main_beqelse_b6349:	#moved
# B6349
	fdiv x40, x40, x114
main_loop_b6345:
# B6345
	fle x29, x113, x39
	beq	x29, zero, main_bneelse_b6346
# B6347
	fle x29, x39, x40
	bne	x29, zero, main_beqelse_b6349
# B6348
	fsub x39, x39, x40
	fdiv x40, x40, x114
	j	main_loop_b6345
main_bneelse_b6346:
# B6346
# B6350
	fle x29, x115, x39
	bne	x29, zero, main_beqelse_b6352
# B6351
	mv x31, x39
	j main_cont_b6353 # adhoc jump(2)
main_beqelse_b6352:
# B6352
	fsub x31, x39, x115
main_cont_b6353:
# B6353
	bne	x29, zero, main_beqelse_b6355
# B6354
	j main_cont_b6356 # adhoc jump(2)
main_beqelse_b6355:
# B6355
	xori x28, x28, 1
main_cont_b6356:
# B6356
	fle x29, x116, x31
	bne	x29, zero, main_beqelse_b6358
# B6357
	mv x29, x31
	j main_cont_b6359 # adhoc jump(2)
main_beqelse_b6358:
# B6358
	fsub x29, x115, x31
main_cont_b6359:
# B6359
	fle x31, x117, x29
	bne	x31, zero, main_beqelse_b6361
# B6360
	fmul x31, x29, x29
	fmul x38, x31, x123
	fadd x38, x122, x38
	fmul x38, x31, x38
	fadd x38, x121, x38
	fmul x31, x31, x38
	fadd x31, x22, x31
	fmul x29, x29, x31
	j main_cont_b6362 # adhoc jump(2)
main_beqelse_b6361:
# B6361
	fsub x29, x116, x29
	fmul x29, x29, x29
	fmul x31, x29, x120
	fadd x31, x119, x31
	fmul x31, x29, x31
	fadd x31, x118, x31
	fmul x29, x29, x31
	fadd x29, x22, x29
main_cont_b6362:
# B6362
	fle x31, x29, zero
	beq	x28, x31, main_bneelse_b6364
# B6363
	mv x28, x29
	j main_cont_b6365 # adhoc jump(2)
main_bneelse_b6364:
# B6364
	fsub x28, zero, x29
main_cont_b6365:
# B6365
	mv x29, x27
	mv x31, x113
	j	main_loop_b6366
main_bneelse_b6367:	#moved
# B6367
	fmul x31, x31, x114
main_loop_b6366:
# B6366
	fle x38, x29, x31
	beq	x38, zero, main_bneelse_b6367
# B6368
# B6369
	mv x39, x27
	mv x40, x31
	j	main_loop_b6370
main_beqelse_b6374:	#moved
# B6374
	fdiv x40, x40, x114
main_loop_b6370:
# B6370
	fle x27, x113, x39
	beq	x27, zero, main_bneelse_b6371
# B6372
	fle x27, x39, x40
	bne	x27, zero, main_beqelse_b6374
# B6373
	fsub x39, x39, x40
	fdiv x40, x40, x114
	j	main_loop_b6370
main_bneelse_b6371:
# B6371
# B6375
	fle x27, x115, x39
	bne	x27, zero, main_beqelse_b6377
# B6376
	mv x29, x39
	j main_cont_b6378 # adhoc jump(2)
main_beqelse_b6377:
# B6377
	fsub x29, x39, x115
main_cont_b6378:
# B6378
	bne	x27, zero, main_beqelse_b6380
# B6379
	li x27, 1
	j main_cont_b6381 # adhoc jump(2)
main_beqelse_b6380:
# B6380
	mv x27, zero
main_cont_b6381:
# B6381
	fle x31, x116, x29
	bne	x31, zero, main_beqelse_b6383
# B6382
	j main_cont_b6384 # adhoc jump(2)
main_beqelse_b6383:
# B6383
	fsub x29, x115, x29
main_cont_b6384:
# B6384
	bne	x31, zero, main_beqelse_b6386
# B6385
	j main_cont_b6387 # adhoc jump(2)
main_beqelse_b6386:
# B6386
	xori x27, x27, 1
main_cont_b6387:
# B6387
	fle x31, x117, x29
	bne	x31, zero, main_beqelse_b6389
# B6388
	fmul x29, x29, x29
	fmul x31, x29, x120
	fadd x31, x119, x31
	fmul x31, x29, x31
	fadd x31, x118, x31
	fmul x29, x29, x31
	fadd x29, x22, x29
	j main_cont_b6390 # adhoc jump(2)
main_beqelse_b6389:
# B6389
	fsub x29, x116, x29
	fmul x31, x29, x29
	fmul x38, x31, x123
	fadd x38, x122, x38
	fmul x38, x31, x38
	fadd x38, x121, x38
	fmul x31, x31, x38
	fadd x31, x22, x31
	fmul x29, x29, x31
main_cont_b6390:
# B6390
	fle x31, x29, zero
	beq	x27, x31, main_bneelse_b6392
# B6391
	mv x27, x29
	j main_cont_b6393 # adhoc jump(2)
main_bneelse_b6392:
# B6392
	fsub x27, zero, x29
main_cont_b6393:
# B6393
	fdiv x27, x28, x27
	fmul x21, x27, x21
	addi x20, x20, 1
	fmul x27, x21, x21
	fadd x19, x27, x19
	fsqrt x19, x19
	fdiv x27, x22, x19
	fle x28, x27, zero
	xori x28, x28, 1
	fabs x29, x27
	fle x30, x30, x29
	bne	x30, zero, main_beqelse_b6395
# B6394
	fmul x28, x27, x27
	fmul x29, x28, x37
	fadd x29, x36, x29
	fmul x29, x28, x29
	fadd x29, x35, x29
	fmul x29, x28, x29
	fadd x29, x34, x29
	fmul x29, x28, x29
	fadd x29, x13, x29
	fmul x29, x28, x29
	fadd x29, x33, x29
	fmul x28, x28, x29
	fadd x28, x22, x28
	fmul x27, x27, x28
	j main_cont_b6401 # adhoc jump(2)
main_beqelse_b6395:
# B6395
	fle x27, x32, x29
	bne	x27, zero, main_beqelse_b6397
# B6396
	fsub x27, x29, x22
	fadd x29, x29, x22
	fdiv x27, x27, x29
	fmul x29, x27, x27
	fmul x30, x29, x37
	fadd x30, x36, x30
	fmul x30, x29, x30
	fadd x30, x35, x30
	fmul x30, x29, x30
	fadd x30, x34, x30
	fmul x30, x29, x30
	fadd x30, x13, x30
	fmul x30, x29, x30
	fadd x30, x33, x30
	fmul x29, x29, x30
	fadd x29, x22, x29
	fmul x27, x27, x29
	fadd x27, x117, x27
	j main_cont_b6398 # adhoc jump(2)
main_beqelse_b6397:
# B6397
	fdiv x27, x22, x29
	fmul x29, x27, x27
	fmul x30, x29, x37
	fadd x30, x36, x30
	fmul x30, x29, x30
	fadd x30, x35, x30
	fmul x30, x29, x30
	fadd x30, x34, x30
	fmul x30, x29, x30
	fadd x30, x13, x30
	fmul x30, x29, x30
	fadd x30, x33, x30
	fmul x29, x29, x30
	fadd x29, x22, x29
	fmul x27, x27, x29
	fsub x27, x116, x27
main_cont_b6398:
# B6398
	bne	x28, zero, main_beqelse_b6400
# B6399
	fsub x27, zero, x27
main_beqelse_b6400:
# B6400
main_cont_b6401:
# B6401
	fmul x27, x27, x24
	fle x28, x27, zero
	xori x28, x28, 1
	fabs x27, x27
	mv x29, x27
	mv x30, x113
	j	main_loop_b6402
main_bneelse_b6403:	#moved
# B6403
	fmul x30, x30, x114
main_loop_b6402:
# B6402
	fle x31, x29, x30
	beq	x31, zero, main_bneelse_b6403
# B6404
# B6405
	mv x32, x27
	mv x33, x30
	j	main_loop_b6406
main_beqelse_b6410:	#moved
# B6410
	fdiv x33, x33, x114
main_loop_b6406:
# B6406
	fle x29, x113, x32
	beq	x29, zero, main_bneelse_b6407
# B6408
	fle x29, x32, x33
	bne	x29, zero, main_beqelse_b6410
# B6409
	fsub x32, x32, x33
	fdiv x33, x33, x114
	j	main_loop_b6406
main_bneelse_b6407:
# B6407
# B6411
	fle x29, x115, x32
	bne	x29, zero, main_beqelse_b6413
# B6412
	mv x30, x32
	j main_cont_b6414 # adhoc jump(2)
main_beqelse_b6413:
# B6413
	fsub x30, x32, x115
main_cont_b6414:
# B6414
	bne	x29, zero, main_beqelse_b6416
# B6415
	j main_cont_b6417 # adhoc jump(2)
main_beqelse_b6416:
# B6416
	xori x28, x28, 1
main_cont_b6417:
# B6417
	fle x29, x116, x30
	bne	x29, zero, main_beqelse_b6419
# B6418
	mv x29, x30
	j main_cont_b6420 # adhoc jump(2)
main_beqelse_b6419:
# B6419
	fsub x29, x115, x30
main_cont_b6420:
# B6420
	fle x30, x117, x29
	bne	x30, zero, main_beqelse_b6422
# B6421
	fmul x30, x29, x29
	fmul x31, x30, x123
	fadd x31, x122, x31
	fmul x31, x30, x31
	fadd x31, x121, x31
	fmul x30, x30, x31
	fadd x30, x22, x30
	fmul x29, x29, x30
	j main_cont_b6423 # adhoc jump(2)
main_beqelse_b6422:
# B6422
	fsub x29, x116, x29
	fmul x29, x29, x29
	fmul x30, x29, x120
	fadd x30, x119, x30
	fmul x30, x29, x30
	fadd x30, x118, x30
	fmul x29, x29, x30
	fadd x29, x22, x29
main_cont_b6423:
# B6423
	fle x30, x29, zero
	beq	x28, x30, main_bneelse_b6425
# B6424
	mv x28, x29
	j main_cont_b6426 # adhoc jump(2)
main_bneelse_b6425:
# B6425
	fsub x28, zero, x29
main_cont_b6426:
# B6426
	mv x29, x27
	mv x30, x113
	j	main_loop_b6427
main_bneelse_b6428:	#moved
# B6428
	fmul x30, x30, x114
main_loop_b6427:
# B6427
	fle x31, x29, x30
	beq	x31, zero, main_bneelse_b6428
# B6429
# B6430
	mv x32, x27
	mv x33, x30
	j	main_loop_b6431
main_beqelse_b6435:	#moved
# B6435
	fdiv x33, x33, x114
main_loop_b6431:
# B6431
	fle x27, x113, x32
	beq	x27, zero, main_bneelse_b6432
# B6433
	fle x27, x32, x33
	bne	x27, zero, main_beqelse_b6435
# B6434
	fsub x32, x32, x33
	fdiv x33, x33, x114
	j	main_loop_b6431
main_bneelse_b6432:
# B6432
# B6436
	fle x27, x115, x32
	bne	x27, zero, main_beqelse_b6438
# B6437
	mv x29, x32
	j main_cont_b6439 # adhoc jump(2)
main_beqelse_b6438:
# B6438
	fsub x29, x32, x115
main_cont_b6439:
# B6439
	bne	x27, zero, main_beqelse_b6441
# B6440
	li x27, 1
	j main_cont_b6442 # adhoc jump(2)
main_beqelse_b6441:
# B6441
	mv x27, zero
main_cont_b6442:
# B6442
	fle x30, x116, x29
	bne	x30, zero, main_beqelse_b6444
# B6443
	j main_cont_b6445 # adhoc jump(2)
main_beqelse_b6444:
# B6444
	fsub x29, x115, x29
main_cont_b6445:
# B6445
	bne	x30, zero, main_beqelse_b6447
# B6446
	j main_cont_b6448 # adhoc jump(2)
main_beqelse_b6447:
# B6447
	xori x27, x27, 1
main_cont_b6448:
# B6448
	fle x30, x117, x29
	bne	x30, zero, main_beqelse_b6450
# B6449
	fmul x29, x29, x29
	fmul x30, x29, x120
	fadd x30, x119, x30
	fmul x30, x29, x30
	fadd x30, x118, x30
	fmul x29, x29, x30
	fadd x22, x22, x29
	j main_cont_b6451 # adhoc jump(2)
main_beqelse_b6450:
# B6450
	fsub x29, x116, x29
	fmul x30, x29, x29
	fmul x31, x30, x123
	fadd x31, x122, x31
	fmul x31, x30, x31
	fadd x31, x121, x31
	fmul x30, x30, x31
	fadd x22, x22, x30
	fmul x22, x29, x22
main_cont_b6451:
# B6451
	fle x29, x22, zero
	beq	x27, x29, main_bneelse_b6453
# B6452
	j main_cont_b6454 # adhoc jump(2)
main_bneelse_b6453:
# B6453
	fsub x22, zero, x22
main_cont_b6454:
# B6454
	fdiv x22, x28, x22
	fmul x22, x22, x19
	j	main_loop_b6330
main_bleelse_b6329:
# B6329
# B6585
	addi x10, x100, -1
	addi x100, x11, 2
	bgt	x110, x100, main_bleelse_b6587
# B6586
	addi x100, x100, -5
main_bleelse_b6587:
# B6587
main_cont_b6588:
# B6588
	addi x11, x12, 4
	mv x12, x11
	mv x11, x100
	mv x100, x10
	j	main_loop_b6324
main_bleelse_b6326:
# B6326
# B6589
	mv x113, x112
main_loop_b6590:
# B6590
	la x115, min_caml_n_objects
	bgt	zero, x113, main_bleelse_b6592
# B6591
	la x10, min_caml_dirvecs
	add x4, x10, x113
	lw x10, 0(x4)
	li x100, 119
	mv x116, x10
	mv x117, x100
main_loop_b6593:
# B6593
	bgt	zero, x117, main_bleelse_b6595
# B6594
	add x4, x116, x117
	lw x10, 0(x4)
	lw x100, 0(x115)
	addi x100, x100, -1
	mv x118, x10
	mv x119, x100
main_loop_b6596:
# B6596
	bgt	zero, x119, main_bleelse_b6598
# B6597
	la x10, min_caml_objects
	add x4, x10, x119
	lw x120, 0(x4)
	lw x121, 1(x118)
	lw x122, 0(x118)
	lw x10, 1(x120)
	bne	x10, x103, main_beqelse_b6600
# B6599
	mv x5, x101
	mv x65, zero
min_caml_create_float_array.225:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.225
create_float_array_loop_cont.225:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.225:
	bne x4, zero, create_float_array_loop_cont.225
	lw x10, 0(x122)
	feq x10, x10, zero
	bne	x10, zero, main_beqelse_b6602
# B6601
	lw x10, 6(x120)
	lw x100, 0(x122)
	fle x100, zero, x100
	xori x100, x100, 1
	bne	x10, zero, main_beqelse_b6604
# B6603
	mv x10, x100
	j main_cont_b6605 # adhoc jump(2)
main_beqelse_b6604:
# B6604
	xori x10, x100, 1
main_cont_b6605:
# B6605
	lw x100, 4(x120)
	lw x100, 0(x100)
	bne	x10, zero, main_beqelse_b6607
# B6606
	fsub x10, zero, x100
	j main_cont_b6608 # adhoc jump(2)
main_beqelse_b6607:
# B6607
	mv x10, x100
main_cont_b6608:
# B6608
	sw x10, 0(x5)
	lui x10, 260096
	lw x100, 0(x122)
	fdiv x10, x10, x100
	sw x10, 1(x5)
	j main_cont_b6609 # adhoc jump(2)
main_beqelse_b6602:
# B6602
	sw zero, 1(x5)
main_cont_b6609:
# B6609
	lw x10, 1(x122)
	feq x10, x10, zero
	bne	x10, zero, main_beqelse_b6611
# B6610
	lw x10, 6(x120)
	lw x100, 1(x122)
	fle x100, zero, x100
	xori x100, x100, 1
	bne	x10, zero, main_beqelse_b6613
# B6612
	mv x10, x100
	j main_cont_b6614 # adhoc jump(2)
main_beqelse_b6613:
# B6613
	xori x10, x100, 1
main_cont_b6614:
# B6614
	lw x100, 4(x120)
	lw x100, 1(x100)
	bne	x10, zero, main_beqelse_b6616
# B6615
	fsub x10, zero, x100
	j main_cont_b6617 # adhoc jump(2)
main_beqelse_b6616:
# B6616
	mv x10, x100
main_cont_b6617:
# B6617
	sw x10, 2(x5)
	lui x10, 260096
	lw x100, 1(x122)
	fdiv x10, x10, x100
	sw x10, 3(x5)
	j main_cont_b6618 # adhoc jump(2)
main_beqelse_b6611:
# B6611
	sw zero, 3(x5)
main_cont_b6618:
# B6618
	lw x10, 2(x122)
	feq x10, x10, zero
	bne	x10, zero, main_beqelse_b6620
# B6619
	lw x10, 6(x120)
	lw x100, 2(x122)
	fle x100, zero, x100
	xori x100, x100, 1
	bne	x10, zero, main_beqelse_b6622
# B6621
	mv x10, x100
	j main_cont_b6623 # adhoc jump(2)
main_beqelse_b6622:
# B6622
	xori x10, x100, 1
main_cont_b6623:
# B6623
	lw x100, 4(x120)
	lw x100, 2(x100)
	bne	x10, zero, main_beqelse_b6625
# B6624
	fsub x10, zero, x100
	j main_cont_b6626 # adhoc jump(2)
main_beqelse_b6625:
# B6625
	mv x10, x100
main_cont_b6626:
# B6626
	sw x10, 4(x5)
	lui x10, 260096
	lw x100, 2(x122)
	fdiv x10, x10, x100
	sw x10, 5(x5)
	j main_cont_b6627 # adhoc jump(2)
main_beqelse_b6620:
# B6620
	sw zero, 5(x5)
main_cont_b6627:
# B6627
	add x4, x121, x119
	sw x5, 0(x4)
	j main_cont_b6642 # adhoc jump(2)
main_beqelse_b6600:
# B6600
	bne	x10, x105, main_beqelse_b6629
# B6628
	mv x65, zero
	mv x5, x112
min_caml_create_float_array.226:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.226
create_float_array_loop_cont.226:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.226:
	bne x4, zero, create_float_array_loop_cont.226
	lw x10, 0(x122)
	lw x100, 4(x120)
	lw x100, 0(x100)
	fmul x10, x10, x100
	lw x100, 1(x122)
	lw x11, 4(x120)
	lw x11, 1(x11)
	fmul x100, x100, x11
	fadd x10, x10, x100
	lw x100, 2(x122)
	lw x11, 4(x120)
	lw x11, 2(x11)
	fmul x100, x100, x11
	fadd x10, x10, x100
	fle x100, x10, zero
	beq	x100, zero, main_bneelse_b6631
# B6630
	sw zero, 0(x5)
	j main_cont_b6632 # adhoc jump(2)
main_bneelse_b6631:
# B6631
	lui x100, 784384
	fdiv x100, x100, x10
	sw x100, 0(x5)
	lw x100, 4(x120)
	lw x100, 0(x100)
	fdiv x100, x100, x10
	fsub x100, zero, x100
	sw x100, 1(x5)
	lw x100, 4(x120)
	lw x100, 1(x100)
	fdiv x100, x100, x10
	fsub x100, zero, x100
	sw x100, 2(x5)
	lw x100, 4(x120)
	lw x100, 2(x100)
	fdiv x10, x100, x10
	fsub x10, zero, x10
	sw x10, 3(x5)
main_cont_b6632:
# B6632
	add x4, x121, x119
	sw x5, 0(x4)
	j main_cont_b6642 # adhoc jump(2)
main_beqelse_b6629:
# B6629
	mv x65, zero
	mv x5, x110
min_caml_create_float_array.227:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.227
create_float_array_loop_cont.227:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.227:
	bne x4, zero, create_float_array_loop_cont.227
	lw x10, 0(x122)
	lw x100, 1(x122)
	lw x11, 2(x122)
	fmul x12, x10, x10
	lw x13, 4(x120)
	lw x13, 0(x13)
	fmul x12, x12, x13
	fmul x13, x100, x100
	lw x14, 4(x120)
	lw x14, 1(x14)
	fmul x13, x13, x14
	fadd x12, x12, x13
	fmul x13, x11, x11
	lw x14, 4(x120)
	lw x14, 2(x14)
	fmul x13, x13, x14
	fadd x12, x12, x13
	lw x13, 3(x120)
	bne	x13, zero, main_beqelse_b6634
# B6633
	mv x10, x12
	j main_cont_b6635 # adhoc jump(2)
main_beqelse_b6634:
# B6634
	fmul x13, x100, x11
	lw x14, 9(x120)
	lw x14, 0(x14)
	fmul x13, x13, x14
	fadd x12, x12, x13
	fmul x11, x11, x10
	lw x13, 9(x120)
	lw x13, 1(x13)
	fmul x11, x11, x13
	fadd x11, x12, x11
	fmul x10, x10, x100
	lw x100, 9(x120)
	lw x100, 2(x100)
	fmul x10, x10, x100
	fadd x10, x11, x10
main_cont_b6635:
# B6635
	lw x100, 0(x122)
	lw x11, 4(x120)
	lw x11, 0(x11)
	fmul x100, x100, x11
	fsub x100, zero, x100
	lw x11, 1(x122)
	lw x12, 4(x120)
	lw x12, 1(x12)
	fmul x11, x11, x12
	fsub x11, zero, x11
	lw x12, 2(x122)
	lw x13, 4(x120)
	lw x13, 2(x13)
	fmul x12, x12, x13
	fsub x12, zero, x12
	sw x10, 0(x5)
	lw x13, 3(x120)
	bne	x13, zero, main_beqelse_b6637
# B6636
	sw x100, 1(x5)
	sw x11, 2(x5)
	sw x12, 3(x5)
	j main_cont_b6638 # adhoc jump(2)
main_beqelse_b6637:
# B6637
	lw x13, 2(x122)
	lw x14, 9(x120)
	lw x14, 1(x14)
	fmul x13, x13, x14
	lw x14, 1(x122)
	lw x15, 9(x120)
	lw x15, 2(x15)
	fmul x14, x14, x15
	fadd x13, x13, x14
	lui x14, 258048
	fmul x13, x13, x14
	fsub x100, x100, x13
	sw x100, 1(x5)
	lw x100, 2(x122)
	lw x13, 9(x120)
	lw x13, 0(x13)
	fmul x100, x100, x13
	lw x13, 0(x122)
	lw x15, 9(x120)
	lw x15, 2(x15)
	fmul x13, x13, x15
	fadd x100, x100, x13
	fmul x100, x100, x14
	fsub x100, x11, x100
	sw x100, 2(x5)
	lw x100, 1(x122)
	lw x11, 9(x120)
	lw x11, 0(x11)
	fmul x100, x100, x11
	lw x11, 0(x122)
	lw x13, 9(x120)
	lw x13, 1(x13)
	fmul x11, x11, x13
	fadd x100, x100, x11
	fmul x100, x100, x14
	fsub x100, x12, x100
	sw x100, 3(x5)
main_cont_b6638:
# B6638
	feq x100, x10, zero
	bne	x100, zero, main_beqelse_b6640
# B6639
	lui x100, 260096
	fdiv x10, x100, x10
	sw x10, 4(x5)
main_beqelse_b6640:
# B6640
main_cont_b6641:
# B6641
	add x4, x121, x119
	sw x5, 0(x4)
main_cont_b6642:
# B6642
	addi x119, x119, -1
	j	main_loop_b6596
main_bleelse_b6598:
# B6598
# B6643
	addi x117, x117, -1
	j	main_loop_b6593
main_bleelse_b6595:
# B6595
# B6644
	addi x113, x113, -1
	j	main_loop_b6590
main_bleelse_b6592:
# B6592
# B6645
	la x10, min_caml_light_dirvec
	lw x100, 0(x10)
	lw x11, 0(x41)
	sw x11, 0(x100)
	lw x11, 1(x41)
	sw x11, 1(x100)
	lw x11, 2(x41)
	sw x11, 2(x100)
	lw x100, 0(x115)
	addi x100, x100, -1
	mv x116, x100
	mv x113, x10
main_loop_b6646:
# B6646
	la x117, min_caml_objects
	lui x118, 260096
	bgt	zero, x116, main_bleelse_b6648
# B6647
	add x4, x117, x116
	lw x117, 0(x4)
	lw x119, 1(x113)
	lw x120, 0(x113)
	lw x10, 1(x117)
	bne	x10, x103, main_beqelse_b6650
# B6649
	mv x5, x101
	mv x65, zero
min_caml_create_float_array.228:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.228
create_float_array_loop_cont.228:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.228:
	bne x4, zero, create_float_array_loop_cont.228
	lw x10, 0(x120)
	feq x10, x10, zero
	bne	x10, zero, main_beqelse_b6652
# B6651
	lw x10, 6(x117)
	lw x100, 0(x120)
	fle x100, zero, x100
	xori x100, x100, 1
	bne	x10, zero, main_beqelse_b6654
# B6653
	mv x10, x100
	j main_cont_b6655 # adhoc jump(2)
main_beqelse_b6654:
# B6654
	xori x10, x100, 1
main_cont_b6655:
# B6655
	lw x100, 4(x117)
	lw x100, 0(x100)
	bne	x10, zero, main_beqelse_b6657
# B6656
	fsub x10, zero, x100
	j main_cont_b6658 # adhoc jump(2)
main_beqelse_b6657:
# B6657
	mv x10, x100
main_cont_b6658:
# B6658
	sw x10, 0(x5)
	lui x10, 260096
	lw x100, 0(x120)
	fdiv x10, x10, x100
	sw x10, 1(x5)
	j main_cont_b6659 # adhoc jump(2)
main_beqelse_b6652:
# B6652
	sw zero, 1(x5)
main_cont_b6659:
# B6659
	lw x10, 1(x120)
	feq x10, x10, zero
	bne	x10, zero, main_beqelse_b6661
# B6660
	lw x10, 6(x117)
	lw x100, 1(x120)
	fle x100, zero, x100
	xori x100, x100, 1
	bne	x10, zero, main_beqelse_b6663
# B6662
	mv x10, x100
	j main_cont_b6664 # adhoc jump(2)
main_beqelse_b6663:
# B6663
	xori x10, x100, 1
main_cont_b6664:
# B6664
	lw x100, 4(x117)
	lw x100, 1(x100)
	bne	x10, zero, main_beqelse_b6666
# B6665
	fsub x10, zero, x100
	j main_cont_b6667 # adhoc jump(2)
main_beqelse_b6666:
# B6666
	mv x10, x100
main_cont_b6667:
# B6667
	sw x10, 2(x5)
	lui x10, 260096
	lw x100, 1(x120)
	fdiv x10, x10, x100
	sw x10, 3(x5)
	j main_cont_b6668 # adhoc jump(2)
main_beqelse_b6661:
# B6661
	sw zero, 3(x5)
main_cont_b6668:
# B6668
	lw x10, 2(x120)
	feq x10, x10, zero
	bne	x10, zero, main_beqelse_b6670
# B6669
	lw x10, 6(x117)
	lw x100, 2(x120)
	fle x100, zero, x100
	xori x100, x100, 1
	bne	x10, zero, main_beqelse_b6672
# B6671
	mv x10, x100
	j main_cont_b6673 # adhoc jump(2)
main_beqelse_b6672:
# B6672
	xori x10, x100, 1
main_cont_b6673:
# B6673
	lw x100, 4(x117)
	lw x100, 2(x100)
	bne	x10, zero, main_beqelse_b6675
# B6674
	fsub x10, zero, x100
	j main_cont_b6676 # adhoc jump(2)
main_beqelse_b6675:
# B6675
	mv x10, x100
main_cont_b6676:
# B6676
	sw x10, 4(x5)
	lui x10, 260096
	lw x100, 2(x120)
	fdiv x10, x10, x100
	sw x10, 5(x5)
	j main_cont_b6677 # adhoc jump(2)
main_beqelse_b6670:
# B6670
	sw zero, 5(x5)
main_cont_b6677:
# B6677
	add x4, x119, x116
	sw x5, 0(x4)
	j main_cont_b6692 # adhoc jump(2)
main_beqelse_b6650:
# B6650
	bne	x10, x105, main_beqelse_b6679
# B6678
	mv x65, zero
	mv x5, x112
min_caml_create_float_array.229:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.229
create_float_array_loop_cont.229:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.229:
	bne x4, zero, create_float_array_loop_cont.229
	lw x10, 0(x120)
	lw x100, 4(x117)
	lw x100, 0(x100)
	fmul x10, x10, x100
	lw x100, 1(x120)
	lw x11, 4(x117)
	lw x11, 1(x11)
	fmul x100, x100, x11
	fadd x10, x10, x100
	lw x100, 2(x120)
	lw x11, 4(x117)
	lw x11, 2(x11)
	fmul x100, x100, x11
	fadd x10, x10, x100
	fle x100, x10, zero
	beq	x100, zero, main_bneelse_b6681
# B6680
	sw zero, 0(x5)
	j main_cont_b6682 # adhoc jump(2)
main_bneelse_b6681:
# B6681
	lui x100, 784384
	fdiv x100, x100, x10
	sw x100, 0(x5)
	lw x100, 4(x117)
	lw x100, 0(x100)
	fdiv x100, x100, x10
	fsub x100, zero, x100
	sw x100, 1(x5)
	lw x100, 4(x117)
	lw x100, 1(x100)
	fdiv x100, x100, x10
	fsub x100, zero, x100
	sw x100, 2(x5)
	lw x100, 4(x117)
	lw x100, 2(x100)
	fdiv x10, x100, x10
	fsub x10, zero, x10
	sw x10, 3(x5)
main_cont_b6682:
# B6682
	add x4, x119, x116
	sw x5, 0(x4)
	j main_cont_b6692 # adhoc jump(2)
main_beqelse_b6679:
# B6679
	mv x65, zero
	mv x5, x110
min_caml_create_float_array.230:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.230
create_float_array_loop_cont.230:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.230:
	bne x4, zero, create_float_array_loop_cont.230
	lw x10, 0(x120)
	lw x100, 1(x120)
	lw x11, 2(x120)
	fmul x12, x10, x10
	lw x13, 4(x117)
	lw x13, 0(x13)
	fmul x12, x12, x13
	fmul x13, x100, x100
	lw x14, 4(x117)
	lw x14, 1(x14)
	fmul x13, x13, x14
	fadd x12, x12, x13
	fmul x13, x11, x11
	lw x14, 4(x117)
	lw x14, 2(x14)
	fmul x13, x13, x14
	fadd x12, x12, x13
	lw x13, 3(x117)
	bne	x13, zero, main_beqelse_b6684
# B6683
	mv x10, x12
	j main_cont_b6685 # adhoc jump(2)
main_beqelse_b6684:
# B6684
	fmul x13, x100, x11
	lw x14, 9(x117)
	lw x14, 0(x14)
	fmul x13, x13, x14
	fadd x12, x12, x13
	fmul x11, x11, x10
	lw x13, 9(x117)
	lw x13, 1(x13)
	fmul x11, x11, x13
	fadd x11, x12, x11
	fmul x10, x10, x100
	lw x100, 9(x117)
	lw x100, 2(x100)
	fmul x10, x10, x100
	fadd x10, x11, x10
main_cont_b6685:
# B6685
	lw x100, 0(x120)
	lw x11, 4(x117)
	lw x11, 0(x11)
	fmul x100, x100, x11
	fsub x100, zero, x100
	lw x11, 1(x120)
	lw x12, 4(x117)
	lw x12, 1(x12)
	fmul x11, x11, x12
	fsub x11, zero, x11
	lw x12, 2(x120)
	lw x13, 4(x117)
	lw x13, 2(x13)
	fmul x12, x12, x13
	fsub x12, zero, x12
	sw x10, 0(x5)
	lw x13, 3(x117)
	bne	x13, zero, main_beqelse_b6687
# B6686
	sw x100, 1(x5)
	sw x11, 2(x5)
	sw x12, 3(x5)
	j main_cont_b6688 # adhoc jump(2)
main_beqelse_b6687:
# B6687
	lw x13, 2(x120)
	lw x14, 9(x117)
	lw x14, 1(x14)
	fmul x13, x13, x14
	lw x14, 1(x120)
	lw x15, 9(x117)
	lw x15, 2(x15)
	fmul x14, x14, x15
	fadd x13, x13, x14
	lui x14, 258048
	fmul x13, x13, x14
	fsub x100, x100, x13
	sw x100, 1(x5)
	lw x100, 2(x120)
	lw x13, 9(x117)
	lw x13, 0(x13)
	fmul x100, x100, x13
	lw x13, 0(x120)
	lw x15, 9(x117)
	lw x15, 2(x15)
	fmul x13, x13, x15
	fadd x100, x100, x13
	fmul x100, x100, x14
	fsub x100, x11, x100
	sw x100, 2(x5)
	lw x100, 1(x120)
	lw x11, 9(x117)
	lw x11, 0(x11)
	fmul x100, x100, x11
	lw x11, 0(x120)
	lw x13, 9(x117)
	lw x13, 1(x13)
	fmul x11, x11, x13
	fadd x100, x100, x11
	fmul x100, x100, x14
	fsub x100, x12, x100
	sw x100, 3(x5)
main_cont_b6688:
# B6688
	feq x100, x10, zero
	bne	x100, zero, main_beqelse_b6690
# B6689
	fdiv x10, x118, x10
	sw x10, 4(x5)
main_beqelse_b6690:
# B6690
main_cont_b6691:
# B6691
	add x4, x119, x116
	sw x5, 0(x4)
main_cont_b6692:
# B6692
	addi x116, x116, -1
	j	main_loop_b6646
main_bleelse_b6648:
# B6648
# B6693
	lw x10, 0(x115)
	addi x10, x10, -1
	bgt	zero, x10, main_bleelse_b6695
# B6694
	add x4, x117, x10
	lw x100, 0(x4)
	lw x11, 2(x100)
	bne	x11, x105, main_beqelse_b6697
# B6696
	lw x11, 7(x100)
	lw x11, 0(x11)
	fle x11, x118, x11
	bne	x11, zero, main_beqelse_b6698
# B6699
	lw x11, 1(x100)
	slli x113, x10, 2
	la x116, min_caml_n_reflections
	addi x119, x113, 1
	la x120, min_caml_reflections
	bne	x11, x103, main_beqelse_b6701
# B6700
	lw x114, 0(x116)
	lw x10, 7(x100)
	lw x10, 0(x10)
	fsub x121, x118, x10
	lw x10, 0(x41)
	fsub x122, zero, x10
	lw x10, 1(x41)
	fsub x123, zero, x10
	lw x10, 2(x41)
	fsub x47, zero, x10
	lw x49, 0(x41)
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.231:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.231
create_float_array_loop_cont.231:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.231:
	bne x4, zero, create_float_array_loop_cont.231
	mv x50, x5
	lw x5, 0(x115)
	mv x6, x50
min_caml_create_array.232:
	mv x4, x5
	mv x5, x3
	j create_array_loop.232
create_array_loop_cont.232:
	sw x6, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_array_loop.232:
	bne x4, zero, create_array_loop_cont.232
	mv x51, x3
	addi x3, x3, 2
	sw x5, 1(x51)
	sw x50, 0(x51)
	sw x49, 0(x50)
	sw x123, 1(x50)
	sw x47, 2(x50)
	lw x10, 0(x115)
	addi x10, x10, -1
	mv x50, x10
	mv x49, x51
main_loop_b6702:
# B6702
	bgt	zero, x50, main_bleelse_b6704
# B6703
	add x4, x117, x50
	lw x52, 0(x4)
	lw x53, 1(x49)
	lw x54, 0(x49)
	lw x10, 1(x52)
	bne	x10, x103, main_beqelse_b6706
# B6705
	mv x5, x101
	mv x65, zero
min_caml_create_float_array.233:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.233
create_float_array_loop_cont.233:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.233:
	bne x4, zero, create_float_array_loop_cont.233
	lw x10, 0(x54)
	feq x10, x10, zero
	bne	x10, zero, main_beqelse_b6708
# B6707
	lw x10, 6(x52)
	lw x100, 0(x54)
	fle x100, zero, x100
	xori x100, x100, 1
	bne	x10, zero, main_beqelse_b6710
# B6709
	mv x10, x100
	j main_cont_b6711 # adhoc jump(2)
main_beqelse_b6710:
# B6710
	xori x10, x100, 1
main_cont_b6711:
# B6711
	lw x100, 4(x52)
	lw x100, 0(x100)
	bne	x10, zero, main_beqelse_b6713
# B6712
	fsub x10, zero, x100
	j main_cont_b6714 # adhoc jump(2)
main_beqelse_b6713:
# B6713
	mv x10, x100
main_cont_b6714:
# B6714
	sw x10, 0(x5)
	lw x10, 0(x54)
	fdiv x10, x118, x10
	sw x10, 1(x5)
	j main_cont_b6715 # adhoc jump(2)
main_beqelse_b6708:
# B6708
	sw zero, 1(x5)
main_cont_b6715:
# B6715
	lw x10, 1(x54)
	feq x10, x10, zero
	bne	x10, zero, main_beqelse_b6717
# B6716
	lw x10, 6(x52)
	lw x100, 1(x54)
	fle x100, zero, x100
	xori x100, x100, 1
	bne	x10, zero, main_beqelse_b6719
# B6718
	mv x10, x100
	j main_cont_b6720 # adhoc jump(2)
main_beqelse_b6719:
# B6719
	xori x10, x100, 1
main_cont_b6720:
# B6720
	lw x100, 4(x52)
	lw x100, 1(x100)
	bne	x10, zero, main_beqelse_b6722
# B6721
	fsub x10, zero, x100
	j main_cont_b6723 # adhoc jump(2)
main_beqelse_b6722:
# B6722
	mv x10, x100
main_cont_b6723:
# B6723
	sw x10, 2(x5)
	lw x10, 1(x54)
	fdiv x10, x118, x10
	sw x10, 3(x5)
	j main_cont_b6724 # adhoc jump(2)
main_beqelse_b6717:
# B6717
	sw zero, 3(x5)
main_cont_b6724:
# B6724
	lw x10, 2(x54)
	feq x10, x10, zero
	bne	x10, zero, main_beqelse_b6726
# B6725
	lw x10, 6(x52)
	lw x100, 2(x54)
	fle x100, zero, x100
	xori x100, x100, 1
	bne	x10, zero, main_beqelse_b6728
# B6727
	mv x10, x100
	j main_cont_b6729 # adhoc jump(2)
main_beqelse_b6728:
# B6728
	xori x10, x100, 1
main_cont_b6729:
# B6729
	lw x100, 4(x52)
	lw x100, 2(x100)
	bne	x10, zero, main_beqelse_b6731
# B6730
	fsub x10, zero, x100
	j main_cont_b6732 # adhoc jump(2)
main_beqelse_b6731:
# B6731
	mv x10, x100
main_cont_b6732:
# B6732
	sw x10, 4(x5)
	lw x10, 2(x54)
	fdiv x10, x118, x10
	sw x10, 5(x5)
	j main_cont_b6733 # adhoc jump(2)
main_beqelse_b6726:
# B6726
	sw zero, 5(x5)
main_cont_b6733:
# B6733
	add x4, x53, x50
	sw x5, 0(x4)
	j main_cont_b6748 # adhoc jump(2)
main_beqelse_b6706:
# B6706
	bne	x10, x105, main_beqelse_b6735
# B6734
	mv x65, zero
	mv x5, x112
min_caml_create_float_array.234:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.234
create_float_array_loop_cont.234:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.234:
	bne x4, zero, create_float_array_loop_cont.234
	lw x10, 0(x54)
	lw x100, 4(x52)
	lw x100, 0(x100)
	fmul x10, x10, x100
	lw x100, 1(x54)
	lw x11, 4(x52)
	lw x11, 1(x11)
	fmul x100, x100, x11
	fadd x10, x10, x100
	lw x100, 2(x54)
	lw x11, 4(x52)
	lw x11, 2(x11)
	fmul x100, x100, x11
	fadd x10, x10, x100
	fle x100, x10, zero
	beq	x100, zero, main_bneelse_b6737
# B6736
	sw zero, 0(x5)
	j main_cont_b6738 # adhoc jump(2)
main_bneelse_b6737:
# B6737
	lui x100, 784384
	fdiv x100, x100, x10
	sw x100, 0(x5)
	lw x100, 4(x52)
	lw x100, 0(x100)
	fdiv x100, x100, x10
	fsub x100, zero, x100
	sw x100, 1(x5)
	lw x100, 4(x52)
	lw x100, 1(x100)
	fdiv x100, x100, x10
	fsub x100, zero, x100
	sw x100, 2(x5)
	lw x100, 4(x52)
	lw x100, 2(x100)
	fdiv x10, x100, x10
	fsub x10, zero, x10
	sw x10, 3(x5)
main_cont_b6738:
# B6738
	add x4, x53, x50
	sw x5, 0(x4)
	j main_cont_b6748 # adhoc jump(2)
main_beqelse_b6735:
# B6735
	mv x65, zero
	mv x5, x110
min_caml_create_float_array.235:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.235
create_float_array_loop_cont.235:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.235:
	bne x4, zero, create_float_array_loop_cont.235
	lw x10, 0(x54)
	lw x100, 1(x54)
	lw x11, 2(x54)
	fmul x12, x10, x10
	lw x13, 4(x52)
	lw x13, 0(x13)
	fmul x12, x12, x13
	fmul x13, x100, x100
	lw x14, 4(x52)
	lw x14, 1(x14)
	fmul x13, x13, x14
	fadd x12, x12, x13
	fmul x13, x11, x11
	lw x14, 4(x52)
	lw x14, 2(x14)
	fmul x13, x13, x14
	fadd x12, x12, x13
	lw x13, 3(x52)
	bne	x13, zero, main_beqelse_b6740
# B6739
	mv x10, x12
	j main_cont_b6741 # adhoc jump(2)
main_beqelse_b6740:
# B6740
	fmul x13, x100, x11
	lw x14, 9(x52)
	lw x14, 0(x14)
	fmul x13, x13, x14
	fadd x12, x12, x13
	fmul x11, x11, x10
	lw x13, 9(x52)
	lw x13, 1(x13)
	fmul x11, x11, x13
	fadd x11, x12, x11
	fmul x10, x10, x100
	lw x100, 9(x52)
	lw x100, 2(x100)
	fmul x10, x10, x100
	fadd x10, x11, x10
main_cont_b6741:
# B6741
	lw x100, 0(x54)
	lw x11, 4(x52)
	lw x11, 0(x11)
	fmul x100, x100, x11
	fsub x100, zero, x100
	lw x11, 1(x54)
	lw x12, 4(x52)
	lw x12, 1(x12)
	fmul x11, x11, x12
	fsub x11, zero, x11
	lw x12, 2(x54)
	lw x13, 4(x52)
	lw x13, 2(x13)
	fmul x12, x12, x13
	fsub x12, zero, x12
	sw x10, 0(x5)
	lw x13, 3(x52)
	bne	x13, zero, main_beqelse_b6743
# B6742
	sw x100, 1(x5)
	sw x11, 2(x5)
	sw x12, 3(x5)
	j main_cont_b6744 # adhoc jump(2)
main_beqelse_b6743:
# B6743
	lw x13, 2(x54)
	lw x14, 9(x52)
	lw x14, 1(x14)
	fmul x13, x13, x14
	lw x14, 1(x54)
	lw x15, 9(x52)
	lw x15, 2(x15)
	fmul x14, x14, x15
	fadd x13, x13, x14
	lui x14, 258048
	fmul x13, x13, x14
	fsub x100, x100, x13
	sw x100, 1(x5)
	lw x100, 2(x54)
	lw x13, 9(x52)
	lw x13, 0(x13)
	fmul x100, x100, x13
	lw x13, 0(x54)
	lw x15, 9(x52)
	lw x15, 2(x15)
	fmul x13, x13, x15
	fadd x100, x100, x13
	fmul x100, x100, x14
	fsub x100, x11, x100
	sw x100, 2(x5)
	lw x100, 1(x54)
	lw x11, 9(x52)
	lw x11, 0(x11)
	fmul x100, x100, x11
	lw x11, 0(x54)
	lw x13, 9(x52)
	lw x13, 1(x13)
	fmul x11, x11, x13
	fadd x100, x100, x11
	fmul x100, x100, x14
	fsub x100, x12, x100
	sw x100, 3(x5)
main_cont_b6744:
# B6744
	feq x100, x10, zero
	bne	x100, zero, main_beqelse_b6746
# B6745
	fdiv x10, x118, x10
	sw x10, 4(x5)
main_beqelse_b6746:
# B6746
main_cont_b6747:
# B6747
	add x4, x53, x50
	sw x5, 0(x4)
main_cont_b6748:
# B6748
	addi x50, x50, -1
	j	main_loop_b6702
main_bleelse_b6704:
# B6704
# B6749
	mv x10, x3
	addi x3, x3, 3
	sw x121, 2(x10)
	sw x51, 1(x10)
	sw x119, 0(x10)
	add x4, x120, x114
	sw x10, 0(x4)
	addi x119, x114, 1
	addi x49, x113, 2
	lw x50, 1(x41)
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.236:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.236
create_float_array_loop_cont.236:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.236:
	bne x4, zero, create_float_array_loop_cont.236
	mv x51, x5
	lw x5, 0(x115)
	mv x6, x51
min_caml_create_array.237:
	mv x4, x5
	mv x5, x3
	j create_array_loop.237
create_array_loop_cont.237:
	sw x6, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_array_loop.237:
	bne x4, zero, create_array_loop_cont.237
	mv x52, x3
	addi x3, x3, 2
	sw x5, 1(x52)
	sw x51, 0(x52)
	sw x122, 0(x51)
	sw x50, 1(x51)
	sw x47, 2(x51)
	lw x10, 0(x115)
	addi x10, x10, -1
	mv x47, x52
	mv x50, x10
main_loop_b6750:
# B6750
	bgt	zero, x50, main_bleelse_b6752
# B6751
	add x4, x117, x50
	lw x51, 0(x4)
	lw x53, 1(x47)
	lw x54, 0(x47)
	lw x10, 1(x51)
	bne	x10, x103, main_beqelse_b6754
# B6753
	mv x5, x101
	mv x65, zero
min_caml_create_float_array.238:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.238
create_float_array_loop_cont.238:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.238:
	bne x4, zero, create_float_array_loop_cont.238
	lw x10, 0(x54)
	feq x10, x10, zero
	bne	x10, zero, main_beqelse_b6756
# B6755
	lw x10, 6(x51)
	lw x100, 0(x54)
	fle x100, zero, x100
	xori x100, x100, 1
	bne	x10, zero, main_beqelse_b6758
# B6757
	mv x10, x100
	j main_cont_b6759 # adhoc jump(2)
main_beqelse_b6758:
# B6758
	xori x10, x100, 1
main_cont_b6759:
# B6759
	lw x100, 4(x51)
	lw x100, 0(x100)
	bne	x10, zero, main_beqelse_b6761
# B6760
	fsub x10, zero, x100
	j main_cont_b6762 # adhoc jump(2)
main_beqelse_b6761:
# B6761
	mv x10, x100
main_cont_b6762:
# B6762
	sw x10, 0(x5)
	lw x10, 0(x54)
	fdiv x10, x118, x10
	sw x10, 1(x5)
	j main_cont_b6763 # adhoc jump(2)
main_beqelse_b6756:
# B6756
	sw zero, 1(x5)
main_cont_b6763:
# B6763
	lw x10, 1(x54)
	feq x10, x10, zero
	bne	x10, zero, main_beqelse_b6765
# B6764
	lw x10, 6(x51)
	lw x100, 1(x54)
	fle x100, zero, x100
	xori x100, x100, 1
	bne	x10, zero, main_beqelse_b6767
# B6766
	mv x10, x100
	j main_cont_b6768 # adhoc jump(2)
main_beqelse_b6767:
# B6767
	xori x10, x100, 1
main_cont_b6768:
# B6768
	lw x100, 4(x51)
	lw x100, 1(x100)
	bne	x10, zero, main_beqelse_b6770
# B6769
	fsub x10, zero, x100
	j main_cont_b6771 # adhoc jump(2)
main_beqelse_b6770:
# B6770
	mv x10, x100
main_cont_b6771:
# B6771
	sw x10, 2(x5)
	lw x10, 1(x54)
	fdiv x10, x118, x10
	sw x10, 3(x5)
	j main_cont_b6772 # adhoc jump(2)
main_beqelse_b6765:
# B6765
	sw zero, 3(x5)
main_cont_b6772:
# B6772
	lw x10, 2(x54)
	feq x10, x10, zero
	bne	x10, zero, main_beqelse_b6774
# B6773
	lw x10, 6(x51)
	lw x100, 2(x54)
	fle x100, zero, x100
	xori x100, x100, 1
	bne	x10, zero, main_beqelse_b6776
# B6775
	mv x10, x100
	j main_cont_b6777 # adhoc jump(2)
main_beqelse_b6776:
# B6776
	xori x10, x100, 1
main_cont_b6777:
# B6777
	lw x100, 4(x51)
	lw x100, 2(x100)
	bne	x10, zero, main_beqelse_b6779
# B6778
	fsub x10, zero, x100
	j main_cont_b6780 # adhoc jump(2)
main_beqelse_b6779:
# B6779
	mv x10, x100
main_cont_b6780:
# B6780
	sw x10, 4(x5)
	lw x10, 2(x54)
	fdiv x10, x118, x10
	sw x10, 5(x5)
	j main_cont_b6781 # adhoc jump(2)
main_beqelse_b6774:
# B6774
	sw zero, 5(x5)
main_cont_b6781:
# B6781
	add x4, x53, x50
	sw x5, 0(x4)
	j main_cont_b6796 # adhoc jump(2)
main_beqelse_b6754:
# B6754
	bne	x10, x105, main_beqelse_b6783
# B6782
	mv x65, zero
	mv x5, x112
min_caml_create_float_array.239:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.239
create_float_array_loop_cont.239:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.239:
	bne x4, zero, create_float_array_loop_cont.239
	lw x10, 0(x54)
	lw x100, 4(x51)
	lw x100, 0(x100)
	fmul x10, x10, x100
	lw x100, 1(x54)
	lw x11, 4(x51)
	lw x11, 1(x11)
	fmul x100, x100, x11
	fadd x10, x10, x100
	lw x100, 2(x54)
	lw x11, 4(x51)
	lw x11, 2(x11)
	fmul x100, x100, x11
	fadd x10, x10, x100
	fle x100, x10, zero
	beq	x100, zero, main_bneelse_b6785
# B6784
	sw zero, 0(x5)
	j main_cont_b6786 # adhoc jump(2)
main_bneelse_b6785:
# B6785
	lui x100, 784384
	fdiv x100, x100, x10
	sw x100, 0(x5)
	lw x100, 4(x51)
	lw x100, 0(x100)
	fdiv x100, x100, x10
	fsub x100, zero, x100
	sw x100, 1(x5)
	lw x100, 4(x51)
	lw x100, 1(x100)
	fdiv x100, x100, x10
	fsub x100, zero, x100
	sw x100, 2(x5)
	lw x100, 4(x51)
	lw x100, 2(x100)
	fdiv x10, x100, x10
	fsub x10, zero, x10
	sw x10, 3(x5)
main_cont_b6786:
# B6786
	add x4, x53, x50
	sw x5, 0(x4)
	j main_cont_b6796 # adhoc jump(2)
main_beqelse_b6783:
# B6783
	mv x65, zero
	mv x5, x110
min_caml_create_float_array.240:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.240
create_float_array_loop_cont.240:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.240:
	bne x4, zero, create_float_array_loop_cont.240
	lw x10, 0(x54)
	lw x100, 1(x54)
	lw x11, 2(x54)
	fmul x12, x10, x10
	lw x13, 4(x51)
	lw x13, 0(x13)
	fmul x12, x12, x13
	fmul x13, x100, x100
	lw x14, 4(x51)
	lw x14, 1(x14)
	fmul x13, x13, x14
	fadd x12, x12, x13
	fmul x13, x11, x11
	lw x14, 4(x51)
	lw x14, 2(x14)
	fmul x13, x13, x14
	fadd x12, x12, x13
	lw x13, 3(x51)
	bne	x13, zero, main_beqelse_b6788
# B6787
	mv x10, x12
	j main_cont_b6789 # adhoc jump(2)
main_beqelse_b6788:
# B6788
	fmul x13, x100, x11
	lw x14, 9(x51)
	lw x14, 0(x14)
	fmul x13, x13, x14
	fadd x12, x12, x13
	fmul x11, x11, x10
	lw x13, 9(x51)
	lw x13, 1(x13)
	fmul x11, x11, x13
	fadd x11, x12, x11
	fmul x10, x10, x100
	lw x100, 9(x51)
	lw x100, 2(x100)
	fmul x10, x10, x100
	fadd x10, x11, x10
main_cont_b6789:
# B6789
	lw x100, 0(x54)
	lw x11, 4(x51)
	lw x11, 0(x11)
	fmul x100, x100, x11
	fsub x100, zero, x100
	lw x11, 1(x54)
	lw x12, 4(x51)
	lw x12, 1(x12)
	fmul x11, x11, x12
	fsub x11, zero, x11
	lw x12, 2(x54)
	lw x13, 4(x51)
	lw x13, 2(x13)
	fmul x12, x12, x13
	fsub x12, zero, x12
	sw x10, 0(x5)
	lw x13, 3(x51)
	bne	x13, zero, main_beqelse_b6791
# B6790
	sw x100, 1(x5)
	sw x11, 2(x5)
	sw x12, 3(x5)
	j main_cont_b6792 # adhoc jump(2)
main_beqelse_b6791:
# B6791
	lw x13, 2(x54)
	lw x14, 9(x51)
	lw x14, 1(x14)
	fmul x13, x13, x14
	lw x14, 1(x54)
	lw x15, 9(x51)
	lw x15, 2(x15)
	fmul x14, x14, x15
	fadd x13, x13, x14
	lui x14, 258048
	fmul x13, x13, x14
	fsub x100, x100, x13
	sw x100, 1(x5)
	lw x100, 2(x54)
	lw x13, 9(x51)
	lw x13, 0(x13)
	fmul x100, x100, x13
	lw x13, 0(x54)
	lw x15, 9(x51)
	lw x15, 2(x15)
	fmul x13, x13, x15
	fadd x100, x100, x13
	fmul x100, x100, x14
	fsub x100, x11, x100
	sw x100, 2(x5)
	lw x100, 1(x54)
	lw x11, 9(x51)
	lw x11, 0(x11)
	fmul x100, x100, x11
	lw x11, 0(x54)
	lw x13, 9(x51)
	lw x13, 1(x13)
	fmul x11, x11, x13
	fadd x100, x100, x11
	fmul x100, x100, x14
	fsub x100, x12, x100
	sw x100, 3(x5)
main_cont_b6792:
# B6792
	feq x100, x10, zero
	bne	x100, zero, main_beqelse_b6794
# B6793
	fdiv x10, x118, x10
	sw x10, 4(x5)
main_beqelse_b6794:
# B6794
main_cont_b6795:
# B6795
	add x4, x53, x50
	sw x5, 0(x4)
main_cont_b6796:
# B6796
	addi x50, x50, -1
	j	main_loop_b6750
main_bleelse_b6752:
# B6752
# B6797
	mv x10, x3
	addi x3, x3, 3
	sw x121, 2(x10)
	sw x52, 1(x10)
	sw x49, 0(x10)
	add x4, x120, x119
	sw x10, 0(x4)
	addi x119, x114, 2
	addi x113, x113, 3
	lw x47, 2(x41)
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.241:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.241
create_float_array_loop_cont.241:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.241:
	bne x4, zero, create_float_array_loop_cont.241
	mv x49, x5
	lw x5, 0(x115)
	mv x6, x49
min_caml_create_array.242:
	mv x4, x5
	mv x5, x3
	j create_array_loop.242
create_array_loop_cont.242:
	sw x6, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_array_loop.242:
	bne x4, zero, create_array_loop_cont.242
	mv x50, x3
	addi x3, x3, 2
	sw x5, 1(x50)
	sw x49, 0(x50)
	sw x122, 0(x49)
	sw x123, 1(x49)
	sw x47, 2(x49)
	lw x10, 0(x115)
	addi x10, x10, -1
	mv x122, x50
	mv x123, x10
main_loop_b6798:
# B6798
	bgt	zero, x123, main_bleelse_b6800
# B6799
	add x4, x117, x123
	lw x47, 0(x4)
	lw x49, 1(x122)
	lw x51, 0(x122)
	lw x10, 1(x47)
	bne	x10, x103, main_beqelse_b6802
# B6801
	mv x5, x101
	mv x65, zero
min_caml_create_float_array.243:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.243
create_float_array_loop_cont.243:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.243:
	bne x4, zero, create_float_array_loop_cont.243
	lw x10, 0(x51)
	feq x10, x10, zero
	bne	x10, zero, main_beqelse_b6804
# B6803
	lw x10, 6(x47)
	lw x100, 0(x51)
	fle x100, zero, x100
	xori x100, x100, 1
	bne	x10, zero, main_beqelse_b6806
# B6805
	mv x10, x100
	j main_cont_b6807 # adhoc jump(2)
main_beqelse_b6806:
# B6806
	xori x10, x100, 1
main_cont_b6807:
# B6807
	lw x100, 4(x47)
	lw x100, 0(x100)
	bne	x10, zero, main_beqelse_b6809
# B6808
	fsub x10, zero, x100
	j main_cont_b6810 # adhoc jump(2)
main_beqelse_b6809:
# B6809
	mv x10, x100
main_cont_b6810:
# B6810
	sw x10, 0(x5)
	lw x10, 0(x51)
	fdiv x10, x118, x10
	sw x10, 1(x5)
	j main_cont_b6811 # adhoc jump(2)
main_beqelse_b6804:
# B6804
	sw zero, 1(x5)
main_cont_b6811:
# B6811
	lw x10, 1(x51)
	feq x10, x10, zero
	bne	x10, zero, main_beqelse_b6813
# B6812
	lw x10, 6(x47)
	lw x100, 1(x51)
	fle x100, zero, x100
	xori x100, x100, 1
	bne	x10, zero, main_beqelse_b6815
# B6814
	mv x10, x100
	j main_cont_b6816 # adhoc jump(2)
main_beqelse_b6815:
# B6815
	xori x10, x100, 1
main_cont_b6816:
# B6816
	lw x100, 4(x47)
	lw x100, 1(x100)
	bne	x10, zero, main_beqelse_b6818
# B6817
	fsub x10, zero, x100
	j main_cont_b6819 # adhoc jump(2)
main_beqelse_b6818:
# B6818
	mv x10, x100
main_cont_b6819:
# B6819
	sw x10, 2(x5)
	lw x10, 1(x51)
	fdiv x10, x118, x10
	sw x10, 3(x5)
	j main_cont_b6820 # adhoc jump(2)
main_beqelse_b6813:
# B6813
	sw zero, 3(x5)
main_cont_b6820:
# B6820
	lw x10, 2(x51)
	feq x10, x10, zero
	bne	x10, zero, main_beqelse_b6822
# B6821
	lw x10, 6(x47)
	lw x100, 2(x51)
	fle x100, zero, x100
	xori x100, x100, 1
	bne	x10, zero, main_beqelse_b6824
# B6823
	mv x10, x100
	j main_cont_b6825 # adhoc jump(2)
main_beqelse_b6824:
# B6824
	xori x10, x100, 1
main_cont_b6825:
# B6825
	lw x100, 4(x47)
	lw x100, 2(x100)
	bne	x10, zero, main_beqelse_b6827
# B6826
	fsub x10, zero, x100
	j main_cont_b6828 # adhoc jump(2)
main_beqelse_b6827:
# B6827
	mv x10, x100
main_cont_b6828:
# B6828
	sw x10, 4(x5)
	lw x10, 2(x51)
	fdiv x10, x118, x10
	sw x10, 5(x5)
	j main_cont_b6829 # adhoc jump(2)
main_beqelse_b6822:
# B6822
	sw zero, 5(x5)
main_cont_b6829:
# B6829
	add x4, x49, x123
	sw x5, 0(x4)
	j main_cont_b6844 # adhoc jump(2)
main_beqelse_b6802:
# B6802
	bne	x10, x105, main_beqelse_b6831
# B6830
	mv x65, zero
	mv x5, x112
min_caml_create_float_array.244:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.244
create_float_array_loop_cont.244:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.244:
	bne x4, zero, create_float_array_loop_cont.244
	lw x10, 0(x51)
	lw x100, 4(x47)
	lw x100, 0(x100)
	fmul x10, x10, x100
	lw x100, 1(x51)
	lw x11, 4(x47)
	lw x11, 1(x11)
	fmul x100, x100, x11
	fadd x10, x10, x100
	lw x100, 2(x51)
	lw x11, 4(x47)
	lw x11, 2(x11)
	fmul x100, x100, x11
	fadd x10, x10, x100
	fle x100, x10, zero
	beq	x100, zero, main_bneelse_b6833
# B6832
	sw zero, 0(x5)
	j main_cont_b6834 # adhoc jump(2)
main_bneelse_b6833:
# B6833
	lui x100, 784384
	fdiv x100, x100, x10
	sw x100, 0(x5)
	lw x100, 4(x47)
	lw x100, 0(x100)
	fdiv x100, x100, x10
	fsub x100, zero, x100
	sw x100, 1(x5)
	lw x100, 4(x47)
	lw x100, 1(x100)
	fdiv x100, x100, x10
	fsub x100, zero, x100
	sw x100, 2(x5)
	lw x100, 4(x47)
	lw x100, 2(x100)
	fdiv x10, x100, x10
	fsub x10, zero, x10
	sw x10, 3(x5)
main_cont_b6834:
# B6834
	add x4, x49, x123
	sw x5, 0(x4)
	j main_cont_b6844 # adhoc jump(2)
main_beqelse_b6831:
# B6831
	mv x65, zero
	mv x5, x110
min_caml_create_float_array.245:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.245
create_float_array_loop_cont.245:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.245:
	bne x4, zero, create_float_array_loop_cont.245
	lw x10, 0(x51)
	lw x100, 1(x51)
	lw x11, 2(x51)
	fmul x12, x10, x10
	lw x13, 4(x47)
	lw x13, 0(x13)
	fmul x12, x12, x13
	fmul x13, x100, x100
	lw x14, 4(x47)
	lw x14, 1(x14)
	fmul x13, x13, x14
	fadd x12, x12, x13
	fmul x13, x11, x11
	lw x14, 4(x47)
	lw x14, 2(x14)
	fmul x13, x13, x14
	fadd x12, x12, x13
	lw x13, 3(x47)
	bne	x13, zero, main_beqelse_b6836
# B6835
	mv x10, x12
	j main_cont_b6837 # adhoc jump(2)
main_beqelse_b6836:
# B6836
	fmul x13, x100, x11
	lw x14, 9(x47)
	lw x14, 0(x14)
	fmul x13, x13, x14
	fadd x12, x12, x13
	fmul x11, x11, x10
	lw x13, 9(x47)
	lw x13, 1(x13)
	fmul x11, x11, x13
	fadd x11, x12, x11
	fmul x10, x10, x100
	lw x100, 9(x47)
	lw x100, 2(x100)
	fmul x10, x10, x100
	fadd x10, x11, x10
main_cont_b6837:
# B6837
	lw x100, 0(x51)
	lw x11, 4(x47)
	lw x11, 0(x11)
	fmul x100, x100, x11
	fsub x100, zero, x100
	lw x11, 1(x51)
	lw x12, 4(x47)
	lw x12, 1(x12)
	fmul x11, x11, x12
	fsub x11, zero, x11
	lw x12, 2(x51)
	lw x13, 4(x47)
	lw x13, 2(x13)
	fmul x12, x12, x13
	fsub x12, zero, x12
	sw x10, 0(x5)
	lw x13, 3(x47)
	bne	x13, zero, main_beqelse_b6839
# B6838
	sw x100, 1(x5)
	sw x11, 2(x5)
	sw x12, 3(x5)
	j main_cont_b6840 # adhoc jump(2)
main_beqelse_b6839:
# B6839
	lw x13, 2(x51)
	lw x14, 9(x47)
	lw x14, 1(x14)
	fmul x13, x13, x14
	lw x14, 1(x51)
	lw x15, 9(x47)
	lw x15, 2(x15)
	fmul x14, x14, x15
	fadd x13, x13, x14
	lui x14, 258048
	fmul x13, x13, x14
	fsub x100, x100, x13
	sw x100, 1(x5)
	lw x100, 2(x51)
	lw x13, 9(x47)
	lw x13, 0(x13)
	fmul x100, x100, x13
	lw x13, 0(x51)
	lw x15, 9(x47)
	lw x15, 2(x15)
	fmul x13, x13, x15
	fadd x100, x100, x13
	fmul x100, x100, x14
	fsub x100, x11, x100
	sw x100, 2(x5)
	lw x100, 1(x51)
	lw x11, 9(x47)
	lw x11, 0(x11)
	fmul x100, x100, x11
	lw x11, 0(x51)
	lw x13, 9(x47)
	lw x13, 1(x13)
	fmul x11, x11, x13
	fadd x100, x100, x11
	fmul x100, x100, x14
	fsub x100, x12, x100
	sw x100, 3(x5)
main_cont_b6840:
# B6840
	feq x100, x10, zero
	bne	x100, zero, main_beqelse_b6842
# B6841
	fdiv x10, x118, x10
	sw x10, 4(x5)
main_beqelse_b6842:
# B6842
main_cont_b6843:
# B6843
	add x4, x49, x123
	sw x5, 0(x4)
main_cont_b6844:
# B6844
	addi x123, x123, -1
	j	main_loop_b6798
main_bleelse_b6800:
# B6800
# B6845
	mv x10, x3
	addi x3, x3, 3
	sw x121, 2(x10)
	sw x50, 1(x10)
	sw x113, 0(x10)
	add x4, x120, x119
	sw x10, 0(x4)
	addi x10, x114, 3
	sw x10, 0(x116)
	j main_cont_b6896 # adhoc jump(2)
main_beqelse_b6701:
# B6701
	bne	x11, x105, main_beqelse_b6847
# B6846
	lw x113, 0(x116)
	lw x10, 7(x100)
	lw x10, 0(x10)
	fsub x121, x118, x10
	lw x10, 4(x100)
	lw x11, 0(x41)
	lw x12, 0(x10)
	fmul x11, x11, x12
	lw x12, 1(x41)
	lw x13, 1(x10)
	fmul x12, x12, x13
	fadd x11, x11, x12
	lw x12, 2(x41)
	lw x10, 2(x10)
	fmul x10, x12, x10
	fadd x10, x11, x10
	lw x11, 4(x100)
	lw x11, 0(x11)
	fmul x11, x114, x11
	fmul x11, x11, x10
	lw x12, 0(x41)
	fsub x122, x11, x12
	lw x11, 4(x100)
	lw x11, 1(x11)
	fmul x11, x114, x11
	fmul x11, x11, x10
	lw x12, 1(x41)
	fsub x123, x11, x12
	lw x100, 4(x100)
	lw x100, 2(x100)
	fmul x100, x114, x100
	fmul x10, x100, x10
	lw x100, 2(x41)
	fsub x114, x10, x100
	mv x65, zero
	mv x5, x108
min_caml_create_float_array.246:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.246
create_float_array_loop_cont.246:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.246:
	bne x4, zero, create_float_array_loop_cont.246
	mv x47, x5
	lw x5, 0(x115)
	mv x6, x47
min_caml_create_array.247:
	mv x4, x5
	mv x5, x3
	j create_array_loop.247
create_array_loop_cont.247:
	sw x6, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_array_loop.247:
	bne x4, zero, create_array_loop_cont.247
	mv x49, x3
	addi x3, x3, 2
	sw x5, 1(x49)
	sw x47, 0(x49)
	sw x122, 0(x47)
	sw x123, 1(x47)
	sw x114, 2(x47)
	lw x10, 0(x115)
	addi x10, x10, -1
	mv x122, x10
	mv x114, x49
main_loop_b6848:
# B6848
	bgt	zero, x122, main_bleelse_b6850
# B6849
	add x4, x117, x122
	lw x123, 0(x4)
	lw x47, 1(x114)
	lw x50, 0(x114)
	lw x10, 1(x123)
	bne	x10, x103, main_beqelse_b6852
# B6851
	mv x5, x101
	mv x65, zero
min_caml_create_float_array.248:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.248
create_float_array_loop_cont.248:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.248:
	bne x4, zero, create_float_array_loop_cont.248
	lw x10, 0(x50)
	feq x10, x10, zero
	bne	x10, zero, main_beqelse_b6854
# B6853
	lw x10, 6(x123)
	lw x100, 0(x50)
	fle x100, zero, x100
	xori x100, x100, 1
	bne	x10, zero, main_beqelse_b6856
# B6855
	mv x10, x100
	j main_cont_b6857 # adhoc jump(2)
main_beqelse_b6856:
# B6856
	xori x10, x100, 1
main_cont_b6857:
# B6857
	lw x100, 4(x123)
	lw x100, 0(x100)
	bne	x10, zero, main_beqelse_b6859
# B6858
	fsub x10, zero, x100
	j main_cont_b6860 # adhoc jump(2)
main_beqelse_b6859:
# B6859
	mv x10, x100
main_cont_b6860:
# B6860
	sw x10, 0(x5)
	lw x10, 0(x50)
	fdiv x10, x118, x10
	sw x10, 1(x5)
	j main_cont_b6861 # adhoc jump(2)
main_beqelse_b6854:
# B6854
	sw zero, 1(x5)
main_cont_b6861:
# B6861
	lw x10, 1(x50)
	feq x10, x10, zero
	bne	x10, zero, main_beqelse_b6863
# B6862
	lw x10, 6(x123)
	lw x100, 1(x50)
	fle x100, zero, x100
	xori x100, x100, 1
	bne	x10, zero, main_beqelse_b6865
# B6864
	mv x10, x100
	j main_cont_b6866 # adhoc jump(2)
main_beqelse_b6865:
# B6865
	xori x10, x100, 1
main_cont_b6866:
# B6866
	lw x100, 4(x123)
	lw x100, 1(x100)
	bne	x10, zero, main_beqelse_b6868
# B6867
	fsub x10, zero, x100
	j main_cont_b6869 # adhoc jump(2)
main_beqelse_b6868:
# B6868
	mv x10, x100
main_cont_b6869:
# B6869
	sw x10, 2(x5)
	lw x10, 1(x50)
	fdiv x10, x118, x10
	sw x10, 3(x5)
	j main_cont_b6870 # adhoc jump(2)
main_beqelse_b6863:
# B6863
	sw zero, 3(x5)
main_cont_b6870:
# B6870
	lw x10, 2(x50)
	feq x10, x10, zero
	bne	x10, zero, main_beqelse_b6872
# B6871
	lw x10, 6(x123)
	lw x100, 2(x50)
	fle x100, zero, x100
	xori x100, x100, 1
	bne	x10, zero, main_beqelse_b6874
# B6873
	mv x10, x100
	j main_cont_b6875 # adhoc jump(2)
main_beqelse_b6874:
# B6874
	xori x10, x100, 1
main_cont_b6875:
# B6875
	lw x100, 4(x123)
	lw x100, 2(x100)
	bne	x10, zero, main_beqelse_b6877
# B6876
	fsub x10, zero, x100
	j main_cont_b6878 # adhoc jump(2)
main_beqelse_b6877:
# B6877
	mv x10, x100
main_cont_b6878:
# B6878
	sw x10, 4(x5)
	lw x10, 2(x50)
	fdiv x10, x118, x10
	sw x10, 5(x5)
	j main_cont_b6879 # adhoc jump(2)
main_beqelse_b6872:
# B6872
	sw zero, 5(x5)
main_cont_b6879:
# B6879
	add x4, x47, x122
	sw x5, 0(x4)
	j main_cont_b6894 # adhoc jump(2)
main_beqelse_b6852:
# B6852
	bne	x10, x105, main_beqelse_b6881
# B6880
	mv x65, zero
	mv x5, x112
min_caml_create_float_array.249:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.249
create_float_array_loop_cont.249:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.249:
	bne x4, zero, create_float_array_loop_cont.249
	lw x10, 0(x50)
	lw x100, 4(x123)
	lw x100, 0(x100)
	fmul x10, x10, x100
	lw x100, 1(x50)
	lw x11, 4(x123)
	lw x11, 1(x11)
	fmul x100, x100, x11
	fadd x10, x10, x100
	lw x100, 2(x50)
	lw x11, 4(x123)
	lw x11, 2(x11)
	fmul x100, x100, x11
	fadd x10, x10, x100
	fle x100, x10, zero
	beq	x100, zero, main_bneelse_b6883
# B6882
	sw zero, 0(x5)
	j main_cont_b6884 # adhoc jump(2)
main_bneelse_b6883:
# B6883
	lui x100, 784384
	fdiv x100, x100, x10
	sw x100, 0(x5)
	lw x100, 4(x123)
	lw x100, 0(x100)
	fdiv x100, x100, x10
	fsub x100, zero, x100
	sw x100, 1(x5)
	lw x100, 4(x123)
	lw x100, 1(x100)
	fdiv x100, x100, x10
	fsub x100, zero, x100
	sw x100, 2(x5)
	lw x100, 4(x123)
	lw x100, 2(x100)
	fdiv x10, x100, x10
	fsub x10, zero, x10
	sw x10, 3(x5)
main_cont_b6884:
# B6884
	add x4, x47, x122
	sw x5, 0(x4)
	j main_cont_b6894 # adhoc jump(2)
main_beqelse_b6881:
# B6881
	mv x65, zero
	mv x5, x110
min_caml_create_float_array.250:
	mv x4, x5
	mv x5, x3
	j create_float_array_loop.250
create_float_array_loop_cont.250:
	sw x65, 0(x3)
	addi x4, x4, -1
	addi x3, x3, 1
create_float_array_loop.250:
	bne x4, zero, create_float_array_loop_cont.250
	lw x10, 0(x50)
	lw x100, 1(x50)
	lw x11, 2(x50)
	fmul x12, x10, x10
	lw x13, 4(x123)
	lw x13, 0(x13)
	fmul x12, x12, x13
	fmul x13, x100, x100
	lw x14, 4(x123)
	lw x14, 1(x14)
	fmul x13, x13, x14
	fadd x12, x12, x13
	fmul x13, x11, x11
	lw x14, 4(x123)
	lw x14, 2(x14)
	fmul x13, x13, x14
	fadd x12, x12, x13
	lw x13, 3(x123)
	bne	x13, zero, main_beqelse_b6886
# B6885
	mv x10, x12
	j main_cont_b6887 # adhoc jump(2)
main_beqelse_b6886:
# B6886
	fmul x13, x100, x11
	lw x14, 9(x123)
	lw x14, 0(x14)
	fmul x13, x13, x14
	fadd x12, x12, x13
	fmul x11, x11, x10
	lw x13, 9(x123)
	lw x13, 1(x13)
	fmul x11, x11, x13
	fadd x11, x12, x11
	fmul x10, x10, x100
	lw x100, 9(x123)
	lw x100, 2(x100)
	fmul x10, x10, x100
	fadd x10, x11, x10
main_cont_b6887:
# B6887
	lw x100, 0(x50)
	lw x11, 4(x123)
	lw x11, 0(x11)
	fmul x100, x100, x11
	fsub x100, zero, x100
	lw x11, 1(x50)
	lw x12, 4(x123)
	lw x12, 1(x12)
	fmul x11, x11, x12
	fsub x11, zero, x11
	lw x12, 2(x50)
	lw x13, 4(x123)
	lw x13, 2(x13)
	fmul x12, x12, x13
	fsub x12, zero, x12
	sw x10, 0(x5)
	lw x13, 3(x123)
	bne	x13, zero, main_beqelse_b6889
# B6888
	sw x100, 1(x5)
	sw x11, 2(x5)
	sw x12, 3(x5)
	j main_cont_b6890 # adhoc jump(2)
main_beqelse_b6889:
# B6889
	lw x13, 2(x50)
	lw x14, 9(x123)
	lw x14, 1(x14)
	fmul x13, x13, x14
	lw x14, 1(x50)
	lw x15, 9(x123)
	lw x15, 2(x15)
	fmul x14, x14, x15
	fadd x13, x13, x14
	lui x14, 258048
	fmul x13, x13, x14
	fsub x100, x100, x13
	sw x100, 1(x5)
	lw x100, 2(x50)
	lw x13, 9(x123)
	lw x13, 0(x13)
	fmul x100, x100, x13
	lw x13, 0(x50)
	lw x15, 9(x123)
	lw x15, 2(x15)
	fmul x13, x13, x15
	fadd x100, x100, x13
	fmul x100, x100, x14
	fsub x100, x11, x100
	sw x100, 2(x5)
	lw x100, 1(x50)
	lw x11, 9(x123)
	lw x11, 0(x11)
	fmul x100, x100, x11
	lw x11, 0(x50)
	lw x13, 9(x123)
	lw x13, 1(x13)
	fmul x11, x11, x13
	fadd x100, x100, x11
	fmul x100, x100, x14
	fsub x100, x12, x100
	sw x100, 3(x5)
main_cont_b6890:
# B6890
	feq x100, x10, zero
	bne	x100, zero, main_beqelse_b6892
# B6891
	fdiv x10, x118, x10
	sw x10, 4(x5)
main_beqelse_b6892:
# B6892
main_cont_b6893:
# B6893
	add x4, x47, x122
	sw x5, 0(x4)
main_cont_b6894:
# B6894
	addi x122, x122, -1
	j	main_loop_b6848
main_bleelse_b6850:
# B6850
# B6895
	mv x10, x3
	addi x3, x3, 3
	sw x121, 2(x10)
	sw x49, 1(x10)
	sw x119, 0(x10)
	add x4, x120, x113
	sw x10, 0(x4)
	addi x10, x113, 1
	sw x10, 0(x116)
main_beqelse_b6847:
# B6847
main_beqelse_b6698:
# B6698
main_beqelse_b6697:
# B6697
main_bleelse_b6695:
# B6695
main_cont_b6896:
# B6896
	lw x10, 0(x106)
	lw x100, 1(x104)
	sub x100, zero, x100
	itof x100, x100
	fmul x10, x10, x100
	lw x100, 0(x126)
	fmul x100, x10, x100
	lw x11, 0(x124)
	fadd x100, x100, x11
	lw x11, 1(x126)
	fmul x11, x10, x11
	lw x12, 1(x124)
	fadd x11, x11, x12
	lw x12, 2(x126)
	fmul x10, x10, x12
	lw x12, 2(x124)
	fadd x10, x10, x12
	lw x12, 0(x102)
	addi x12, x12, -1
	mv x118, x11
	mv x116, zero
	mv x117, x100
	mv x114, x12
	mv x119, x10
	mv x113, x109
main_loop_b6897:
# B6897
	bgt	zero, x114, main_bleelse_b6899
# B6898
	lw x10, 0(x106)
	lw x100, 0(x104)
	sub x100, x114, x100
	itof x100, x100
	fmul x10, x10, x100
	la x100, min_caml_ptrace_dirvec
	lw x11, 0(x125)
	fmul x11, x10, x11
	fadd x11, x11, x117
	sw x11, 0(x100)
	lw x11, 1(x125)
	fmul x11, x10, x11
	fadd x11, x11, x118
	sw x11, 1(x100)
	lw x11, 2(x125)
	fmul x10, x10, x11
	fadd x10, x10, x119
	sw x10, 2(x100)
	lw x10, 0(x100)
	fmul x10, x10, x10
	lw x11, 1(x100)
	fmul x11, x11, x11
	fadd x10, x10, x11
	lw x11, 2(x100)
	fmul x11, x11, x11
	fadd x10, x10, x11
	fsqrt x10, x10
	feq x11, x10, zero
	bne	x11, zero, main_beqelse_b6901
# B6900
	bne	zero, zero, main_beqelse_b6903
# B6902
	lui x11, 260096
	fdiv x10, x11, x10
	j main_cont_b6904 # adhoc jump(2)
main_beqelse_b6903:
# B6903
	lui x11, 784384
	fdiv x10, x11, x10
	j main_cont_b6904 # adhoc jump(2)
main_beqelse_b6901:
# B6901
	lui x10, 260096
main_cont_b6904:
# B6904
	lw x11, 0(x100)
	fmul x11, x11, x10
	sw x11, 0(x100)
	lw x11, 1(x100)
	fmul x11, x11, x10
	sw x11, 1(x100)
	lw x11, 2(x100)
	fmul x10, x11, x10
	sw x10, 2(x100)
	la x120, min_caml_rgb
	sw zero, 0(x120)
	sw zero, 1(x120)
	sw zero, 2(x120)
	la x10, min_caml_startp
	lw x11, 0(x127)
	sw x11, 0(x10)
	lw x11, 1(x127)
	sw x11, 1(x10)
	lw x11, 2(x127)
	sw x11, 2(x10)
	lui x121, 260096
	add x4, x113, x114
	lw x7, 0(x4)
	mv x66, zero
	mv x65, x121
	mv x6, x100
	mv x5, zero
	addi	x2, x2, 43
	jal	trace_ray.3071
	addi	x2, x2, -43
	add x4, x113, x114
	lw x10, 0(x4)
	lw x10, 0(x10)
	lw x100, 0(x120)
	sw x100, 0(x10)
	lw x100, 1(x120)
	sw x100, 1(x10)
	lw x100, 2(x120)
	sw x100, 2(x10)
	add x4, x113, x114
	lw x10, 0(x4)
	lw x10, 6(x10)
	sw x116, 0(x10)
	add x4, x113, x114
	lw x10, 0(x4)
	mv x120, x10
	mv x122, zero
main_loop_b6905:
# B6905
	bgt	x122, x112, main_bleelse_b6907
# B6906
	lw x10, 2(x120)
	add x4, x10, x122
	lw x10, 0(x4)
	bgt	zero, x10, main_bleelse_b6909
# B6908
	lw x10, 3(x120)
	add x4, x10, x122
	lw x10, 0(x4)
	beq	x10, zero, main_bneelse_b6910
# B6911
	lw x10, 6(x120)
	lw x10, 0(x10)
	la x123, min_caml_diffuse_ray
	sw zero, 0(x123)
	sw zero, 1(x123)
	sw zero, 2(x123)
	lw x100, 7(x120)
	lw x11, 1(x120)
	la x12, min_caml_dirvecs
	add x4, x12, x10
	lw x10, 0(x4)
	add x4, x100, x122
	lw x100, 0(x4)
	add x4, x11, x122
	lw x11, 0(x4)
	la x12, min_caml_startp_fast
	lw x13, 0(x11)
	sw x13, 0(x12)
	lw x13, 1(x11)
	sw x13, 1(x12)
	lw x13, 2(x11)
	sw x13, 2(x12)
	lw x12, 0(x115)
	addi x12, x12, -1
	mv x14, x12
	mv x13, x11
main_loop_b6912:
# B6912
	bgt	zero, x14, main_bleelse_b6914
# B6913
	la x12, min_caml_objects
	add x4, x12, x14
	lw x12, 0(x4)
	lw x15, 10(x12)
	lw x16, 1(x12)
	lw x17, 0(x13)
	lw x18, 5(x12)
	lw x18, 0(x18)
	fsub x17, x17, x18
	sw x17, 0(x15)
	lw x17, 1(x13)
	lw x18, 5(x12)
	lw x18, 1(x18)
	fsub x17, x17, x18
	sw x17, 1(x15)
	lw x17, 2(x13)
	lw x18, 5(x12)
	lw x18, 2(x18)
	fsub x17, x17, x18
	sw x17, 2(x15)
	bne	x16, x105, main_beqelse_b6916
# B6915
	lw x12, 4(x12)
	lw x16, 0(x15)
	lw x17, 1(x15)
	lw x18, 2(x15)
	lw x19, 0(x12)
	fmul x16, x19, x16
	lw x19, 1(x12)
	fmul x17, x19, x17
	fadd x16, x16, x17
	lw x12, 2(x12)
	fmul x12, x12, x18
	fadd x12, x16, x12
	sw x12, 3(x15)
	j main_cont_b6925 # adhoc jump(2)
main_beqelse_b6916:
# B6916
	bge	x105, x16, main_bgtelse_b6917
# B6918
	lw x17, 0(x15)
	lw x18, 1(x15)
	lw x19, 2(x15)
	fmul x20, x17, x17
	lw x21, 4(x12)
	lw x21, 0(x21)
	fmul x20, x20, x21
	fmul x21, x18, x18
	lw x22, 4(x12)
	lw x22, 1(x22)
	fmul x21, x21, x22
	fadd x20, x20, x21
	fmul x21, x19, x19
	lw x22, 4(x12)
	lw x22, 2(x22)
	fmul x21, x21, x22
	fadd x20, x20, x21
	lw x21, 3(x12)
	bne	x21, zero, main_beqelse_b6920
# B6919
	mv x12, x20
	j main_cont_b6921 # adhoc jump(2)
main_beqelse_b6920:
# B6920
	fmul x21, x18, x19
	lw x22, 9(x12)
	lw x22, 0(x22)
	fmul x21, x21, x22
	fadd x20, x20, x21
	fmul x19, x19, x17
	lw x21, 9(x12)
	lw x21, 1(x21)
	fmul x19, x19, x21
	fadd x19, x20, x19
	fmul x17, x17, x18
	lw x12, 9(x12)
	lw x12, 2(x12)
	fmul x12, x17, x12
	fadd x12, x19, x12
main_cont_b6921:
# B6921
	bne	x16, x108, main_beqelse_b6923
# B6922
	fsub x12, x12, x121
main_beqelse_b6923:
# B6923
main_cont_b6924:
# B6924
	sw x12, 3(x15)
main_bgtelse_b6917:
# B6917
main_cont_b6925:
# B6925
	addi x14, x14, -1
	j	main_loop_b6912
main_bleelse_b6914:
# B6914
# B6926
	mv x50, x11
	mv x47, x10
	mv x49, x100
	mv x51, x48
main_loop_b6927:
# B6927
	bgt	zero, x51, main_bleelse_b6929
# B6928
	add x4, x47, x51
	lw x10, 0(x4)
	lw x10, 0(x10)
	lw x100, 0(x10)
	lw x11, 0(x49)
	fmul x100, x100, x11
	lw x11, 1(x10)
	lw x12, 1(x49)
	fmul x11, x11, x12
	fadd x100, x100, x11
	lw x10, 2(x10)
	lw x11, 2(x49)
	fmul x10, x10, x11
	fadd x10, x100, x10
	fle x100, zero, x10
	beq	x100, zero, main_bneelse_b6931
# B6930
	add x4, x47, x51
	lw x52, 0(x4)
	lui x100, 274784
	fdiv x53, x10, x100
	mv x5, x52
	addi	x2, x2, 43
	jal	judge_intersection_fast.3048
	addi	x2, x2, -43
	beq	x5, zero, main_bneelse_b6932
# B6933
	la x10, min_caml_objects
	la x100, min_caml_intersected_object_id
	lw x100, 0(x100)
	add x4, x10, x100
	lw x54, 0(x4)
	lw x10, 0(x52)
	lw x100, 1(x54)
	bne	x100, x103, main_beqelse_b6935
# B6934
	la x100, min_caml_intsec_rectside
	lw x100, 0(x100)
	la x11, min_caml_nvector
	sw zero, 0(x11)
	sw zero, 1(x11)
	sw zero, 2(x11)
	addi x100, x100, -1
	add x4, x10, x100
	lw x10, 0(x4)
	feq x12, x10, zero
	bne	x12, zero, main_beqelse_b6937
# B6936
	fle x10, x10, zero
	beq	x10, zero, main_bneelse_b6939
# B6938
	lui x10, 784384
	j main_cont_b6940 # adhoc jump(2)
main_bneelse_b6939:
# B6939
	lui x10, 260096
	j main_cont_b6940 # adhoc jump(2)
main_beqelse_b6937:
# B6937
	mv x10, zero
main_cont_b6940:
# B6940
	fsub x10, zero, x10
	add x4, x11, x100
	sw x10, 0(x4)
	j main_cont_b6951 # adhoc jump(2)
main_beqelse_b6935:
# B6935
	bne	x100, x105, main_beqelse_b6942
# B6941
	la x10, min_caml_nvector
	lw x100, 4(x54)
	lw x100, 0(x100)
	fsub x100, zero, x100
	sw x100, 0(x10)
	lw x100, 4(x54)
	lw x100, 1(x100)
	fsub x100, zero, x100
	sw x100, 1(x10)
	lw x100, 4(x54)
	lw x100, 2(x100)
	fsub x100, zero, x100
	sw x100, 2(x10)
	j main_cont_b6951 # adhoc jump(2)
main_beqelse_b6942:
# B6942
	la x10, min_caml_intersection_point
	lw x100, 0(x10)
	lw x11, 5(x54)
	lw x11, 0(x11)
	fsub x100, x100, x11
	lw x11, 1(x10)
	lw x12, 5(x54)
	lw x12, 1(x12)
	fsub x11, x11, x12
	lw x10, 2(x10)
	lw x12, 5(x54)
	lw x12, 2(x12)
	fsub x10, x10, x12
	lw x12, 4(x54)
	lw x12, 0(x12)
	fmul x12, x100, x12
	lw x13, 4(x54)
	lw x13, 1(x13)
	fmul x13, x11, x13
	lw x14, 4(x54)
	lw x14, 2(x14)
	fmul x14, x10, x14
	lw x15, 3(x54)
	bne	x15, zero, main_beqelse_b6944
# B6943
	la x10, min_caml_nvector
	sw x12, 0(x10)
	sw x13, 1(x10)
	sw x14, 2(x10)
	j main_cont_b6945 # adhoc jump(2)
main_beqelse_b6944:
# B6944
	la x15, min_caml_nvector
	lw x16, 9(x54)
	lw x16, 2(x16)
	fmul x16, x11, x16
	lw x17, 9(x54)
	lw x17, 1(x17)
	fmul x17, x10, x17
	fadd x16, x16, x17
	lui x17, 258048
	fmul x16, x16, x17
	fadd x12, x12, x16
	sw x12, 0(x15)
	lw x12, 9(x54)
	lw x12, 2(x12)
	fmul x12, x100, x12
	lw x16, 9(x54)
	lw x16, 0(x16)
	fmul x10, x10, x16
	fadd x10, x12, x10
	fmul x10, x10, x17
	fadd x10, x13, x10
	sw x10, 1(x15)
	lw x10, 9(x54)
	lw x10, 1(x10)
	fmul x10, x100, x10
	lw x100, 9(x54)
	lw x100, 0(x100)
	fmul x100, x11, x100
	fadd x10, x10, x100
	fmul x10, x10, x17
	fadd x10, x14, x10
	sw x10, 2(x15)
main_cont_b6945:
# B6945
	la x10, min_caml_nvector
	lw x100, 6(x54)
	lw x11, 0(x10)
	fmul x11, x11, x11
	lw x12, 1(x10)
	fmul x12, x12, x12
	fadd x11, x11, x12
	lw x12, 2(x10)
	fmul x12, x12, x12
	fadd x11, x11, x12
	fsqrt x11, x11
	feq x12, x11, zero
	bne	x12, zero, main_beqelse_b6947
# B6946
	bne	x100, zero, main_beqelse_b6949
# B6948
	fdiv x100, x121, x11
	j main_cont_b6950 # adhoc jump(2)
main_beqelse_b6949:
# B6949
	lui x100, 784384
	fdiv x100, x100, x11
	j main_cont_b6950 # adhoc jump(2)
main_beqelse_b6947:
# B6947
	lui x100, 260096
main_cont_b6950:
# B6950
	lw x11, 0(x10)
	fmul x11, x11, x100
	sw x11, 0(x10)
	lw x11, 1(x10)
	fmul x11, x11, x100
	sw x11, 1(x10)
	lw x11, 2(x10)
	fmul x100, x11, x100
	sw x100, 2(x10)
main_cont_b6951:
# B6951
	la x6, min_caml_intersection_point
	mv x5, x54
	addi	x2, x2, 43
	jal	utexture.3059
	addi	x2, x2, -43
	lw x6, 0(x42)
	mv x5, zero
	addi	x2, x2, 43
	jal	shadow_check_one_or_matrix.3019
	addi	x2, x2, -43
	bne	x5, zero, main_beqelse_b6953
# B6952
	la x10, min_caml_nvector
	lw x100, 0(x10)
	lw x11, 0(x41)
	fmul x100, x100, x11
	lw x11, 1(x10)
	lw x12, 1(x41)
	fmul x11, x11, x12
	fadd x100, x100, x11
	lw x10, 2(x10)
	lw x11, 2(x41)
	fmul x10, x10, x11
	fadd x10, x100, x10
	fsub x10, zero, x10
	fle x100, x10, zero
	beq	x100, zero, main_bneelse_b6955
# B6954
	mv x11, zero
	j main_cont_b6956 # adhoc jump(2)
main_bneelse_b6955:
# B6955
	mv x11, x10
main_cont_b6956:
# B6956
	fmul x10, x53, x11
	lw x100, 7(x54)
	lw x100, 0(x100)
	fmul x10, x10, x100
	la x100, min_caml_texture_color
	lw x11, 0(x123)
	lw x12, 0(x100)
	fmul x12, x10, x12
	fadd x11, x11, x12
	sw x11, 0(x123)
	lw x11, 1(x123)
	lw x12, 1(x100)
	fmul x12, x10, x12
	fadd x11, x11, x12
	sw x11, 1(x123)
	lw x11, 2(x123)
	lw x100, 2(x100)
	fmul x10, x10, x100
	fadd x10, x11, x10
	sw x10, 2(x123)
	j main_cont_b6982 # adhoc jump(2)
main_beqelse_b6953:
# B6953
	j main_cont_b6982 # adhoc jump(2)
main_bneelse_b6932:
# B6932
	j main_cont_b6982 # adhoc jump(2)
main_bneelse_b6931:
# B6931
	addi x100, x51, 1
	add x4, x47, x100
	lw x52, 0(x4)
	lui x100, 799072
	fdiv x53, x10, x100
	mv x5, x52
	addi	x2, x2, 43
	jal	judge_intersection_fast.3048
	addi	x2, x2, -43
	beq	x5, zero, main_bneelse_b6957
# B6958
	la x10, min_caml_objects
	la x100, min_caml_intersected_object_id
	lw x100, 0(x100)
	add x4, x10, x100
	lw x54, 0(x4)
	lw x10, 0(x52)
	lw x100, 1(x54)
	bne	x100, x103, main_beqelse_b6960
# B6959
	la x100, min_caml_intsec_rectside
	lw x100, 0(x100)
	la x11, min_caml_nvector
	sw zero, 0(x11)
	sw zero, 1(x11)
	sw zero, 2(x11)
	addi x100, x100, -1
	add x4, x10, x100
	lw x10, 0(x4)
	feq x12, x10, zero
	bne	x12, zero, main_beqelse_b6962
# B6961
	fle x10, x10, zero
	beq	x10, zero, main_bneelse_b6964
# B6963
	lui x10, 784384
	j main_cont_b6965 # adhoc jump(2)
main_bneelse_b6964:
# B6964
	lui x10, 260096
	j main_cont_b6965 # adhoc jump(2)
main_beqelse_b6962:
# B6962
	mv x10, zero
main_cont_b6965:
# B6965
	fsub x10, zero, x10
	add x4, x11, x100
	sw x10, 0(x4)
	j main_cont_b6976 # adhoc jump(2)
main_beqelse_b6960:
# B6960
	bne	x100, x105, main_beqelse_b6967
# B6966
	la x10, min_caml_nvector
	lw x100, 4(x54)
	lw x100, 0(x100)
	fsub x100, zero, x100
	sw x100, 0(x10)
	lw x100, 4(x54)
	lw x100, 1(x100)
	fsub x100, zero, x100
	sw x100, 1(x10)
	lw x100, 4(x54)
	lw x100, 2(x100)
	fsub x100, zero, x100
	sw x100, 2(x10)
	j main_cont_b6976 # adhoc jump(2)
main_beqelse_b6967:
# B6967
	la x10, min_caml_intersection_point
	lw x100, 0(x10)
	lw x11, 5(x54)
	lw x11, 0(x11)
	fsub x100, x100, x11
	lw x11, 1(x10)
	lw x12, 5(x54)
	lw x12, 1(x12)
	fsub x11, x11, x12
	lw x10, 2(x10)
	lw x12, 5(x54)
	lw x12, 2(x12)
	fsub x10, x10, x12
	lw x12, 4(x54)
	lw x12, 0(x12)
	fmul x12, x100, x12
	lw x13, 4(x54)
	lw x13, 1(x13)
	fmul x13, x11, x13
	lw x14, 4(x54)
	lw x14, 2(x14)
	fmul x14, x10, x14
	lw x15, 3(x54)
	bne	x15, zero, main_beqelse_b6969
# B6968
	la x10, min_caml_nvector
	sw x12, 0(x10)
	sw x13, 1(x10)
	sw x14, 2(x10)
	j main_cont_b6970 # adhoc jump(2)
main_beqelse_b6969:
# B6969
	la x15, min_caml_nvector
	lw x16, 9(x54)
	lw x16, 2(x16)
	fmul x16, x11, x16
	lw x17, 9(x54)
	lw x17, 1(x17)
	fmul x17, x10, x17
	fadd x16, x16, x17
	lui x17, 258048
	fmul x16, x16, x17
	fadd x12, x12, x16
	sw x12, 0(x15)
	lw x12, 9(x54)
	lw x12, 2(x12)
	fmul x12, x100, x12
	lw x16, 9(x54)
	lw x16, 0(x16)
	fmul x10, x10, x16
	fadd x10, x12, x10
	fmul x10, x10, x17
	fadd x10, x13, x10
	sw x10, 1(x15)
	lw x10, 9(x54)
	lw x10, 1(x10)
	fmul x10, x100, x10
	lw x100, 9(x54)
	lw x100, 0(x100)
	fmul x100, x11, x100
	fadd x10, x10, x100
	fmul x10, x10, x17
	fadd x10, x14, x10
	sw x10, 2(x15)
main_cont_b6970:
# B6970
	la x10, min_caml_nvector
	lw x100, 6(x54)
	lw x11, 0(x10)
	fmul x11, x11, x11
	lw x12, 1(x10)
	fmul x12, x12, x12
	fadd x11, x11, x12
	lw x12, 2(x10)
	fmul x12, x12, x12
	fadd x11, x11, x12
	fsqrt x11, x11
	feq x12, x11, zero
	bne	x12, zero, main_beqelse_b6972
# B6971
	bne	x100, zero, main_beqelse_b6974
# B6973
	fdiv x100, x121, x11
	j main_cont_b6975 # adhoc jump(2)
main_beqelse_b6974:
# B6974
	lui x100, 784384
	fdiv x100, x100, x11
	j main_cont_b6975 # adhoc jump(2)
main_beqelse_b6972:
# B6972
	lui x100, 260096
main_cont_b6975:
# B6975
	lw x11, 0(x10)
	fmul x11, x11, x100
	sw x11, 0(x10)
	lw x11, 1(x10)
	fmul x11, x11, x100
	sw x11, 1(x10)
	lw x11, 2(x10)
	fmul x100, x11, x100
	sw x100, 2(x10)
main_cont_b6976:
# B6976
	la x6, min_caml_intersection_point
	mv x5, x54
	addi	x2, x2, 43
	jal	utexture.3059
	addi	x2, x2, -43
	lw x6, 0(x42)
	mv x5, zero
	addi	x2, x2, 43
	jal	shadow_check_one_or_matrix.3019
	addi	x2, x2, -43
	bne	x5, zero, main_beqelse_b6978
# B6977
	la x10, min_caml_nvector
	lw x100, 0(x10)
	lw x11, 0(x41)
	fmul x100, x100, x11
	lw x11, 1(x10)
	lw x12, 1(x41)
	fmul x11, x11, x12
	fadd x100, x100, x11
	lw x10, 2(x10)
	lw x11, 2(x41)
	fmul x10, x10, x11
	fadd x10, x100, x10
	fsub x10, zero, x10
	fle x100, x10, zero
	beq	x100, zero, main_bneelse_b6980
# B6979
	mv x11, zero
	j main_cont_b6981 # adhoc jump(2)
main_bneelse_b6980:
# B6980
	mv x11, x10
main_cont_b6981:
# B6981
	fmul x10, x53, x11
	lw x100, 7(x54)
	lw x100, 0(x100)
	fmul x10, x10, x100
	la x100, min_caml_texture_color
	lw x11, 0(x123)
	lw x12, 0(x100)
	fmul x12, x10, x12
	fadd x11, x11, x12
	sw x11, 0(x123)
	lw x11, 1(x123)
	lw x12, 1(x100)
	fmul x12, x10, x12
	fadd x11, x11, x12
	sw x11, 1(x123)
	lw x11, 2(x123)
	lw x100, 2(x100)
	fmul x10, x10, x100
	fadd x10, x11, x10
	sw x10, 2(x123)
main_beqelse_b6978:
# B6978
main_bneelse_b6957:
# B6957
main_cont_b6982:
# B6982
	addi x51, x51, -2
	j	main_loop_b6927
main_bleelse_b6929:
# B6929
# B6983
	lw x10, 5(x120)
	add x4, x10, x122
	lw x10, 0(x4)
	lw x100, 0(x123)
	sw x100, 0(x10)
	lw x100, 1(x123)
	sw x100, 1(x10)
	lw x100, 2(x123)
	sw x100, 2(x10)
main_bneelse_b6910:
# B6910
main_cont_b6984:
# B6984
	addi x122, x122, 1
	j	main_loop_b6905
main_bleelse_b6909:
# B6909
main_bleelse_b6907:
# B6907
main_cont_b6985:
# B6985
	addi x10, x114, -1
	addi x100, x116, 1
	bgt	x110, x100, main_bleelse_b6987
# B6986
	addi x100, x100, -5
main_bleelse_b6987:
# B6987
main_cont_b6988:
# B6988
	mv x116, x100
	mv x114, x10
	j	main_loop_b6897
main_bleelse_b6899:
# B6899
# B6989
	mv x114, x101
	mv x101, zero
	mv x113, x105
main_loop_b6990:
# B6990
	lw x10, 1(x102)
	bge	x101, x10, main_bgtelse_b6991
# B6992
	lw x10, 1(x102)
	addi x10, x10, -1
	addi x116, x101, 1
	bge	x101, x10, main_bgtelse_b6993
# B6994
	lw x10, 0(x106)
	lw x100, 1(x104)
	sub x100, x116, x100
	itof x100, x100
	fmul x10, x10, x100
	lw x100, 0(x126)
	fmul x100, x10, x100
	lw x11, 0(x124)
	fadd x65, x100, x11
	lw x100, 1(x126)
	fmul x100, x10, x100
	lw x11, 1(x124)
	fadd x66, x100, x11
	lw x100, 2(x126)
	fmul x10, x10, x100
	lw x100, 2(x124)
	fadd x67, x10, x100
	lw x10, 0(x102)
	addi x6, x10, -1
	mv x7, x113
	mv x5, x111
	addi	x2, x2, 43
	jal	pretrace_pixels.3136
	addi	x2, x2, -43
main_bgtelse_b6993:
# B6993
main_cont_b6995:
# B6995
	mv x118, x109
	mv x117, x107
	mv x10, zero
	mv x119, x111
	mv x120, x114
main_loop_b6996:
# B6996
	lw x100, 0(x102)
	bge	x10, x100, main_bgtelse_b6997
# B6998
	la x121, min_caml_rgb
	add x4, x118, x10
	lw x100, 0(x4)
	lw x100, 0(x100)
	lw x11, 0(x100)
	sw x11, 0(x121)
	lw x11, 1(x100)
	sw x11, 1(x121)
	lw x100, 2(x100)
	sw x100, 2(x121)
	lw x100, 1(x102)
	addi x11, x101, 1
	addi x122, x10, 1
	bge	x11, x100, main_bgtelse_b6999
# B7000
	bge	zero, x101, main_bgtelse_b7001
# B7002
	lw x100, 0(x102)
	bge	x122, x100, main_bgtelse_b7003
# B7004
	bgt	x10, zero, main_bleelse_b7006
# B7005
main_bleelse_b7006:
# B7006
# B7009
	mv x15, x119
	mv x14, x118
	mv x16, zero
	mv x13, x117
	mv x12, x101
	mv x100, x10
main_loop_b7108:
# B7108
	add x4, x14, x100
	lw x10, 0(x4)
	bgt	x16, x112, main_bleelse_b7110
# B7109
	lw x11, 2(x10)
	add x4, x11, x16
	lw x11, 0(x4)
	bgt	zero, x11, main_bleelse_b7112
# B7111
	add x4, x14, x100
	lw x11, 0(x4)
	lw x11, 2(x11)
	add x4, x11, x16
	lw x11, 0(x4)
	add x4, x13, x100
	lw x17, 0(x4)
	lw x17, 2(x17)
	add x4, x17, x16
	lw x17, 0(x4)
	addi x18, x100, -1
	addi x19, x100, 1
	bne	x17, x11, main_beqelse_b7114
# B7113
	add x4, x15, x100
	lw x17, 0(x4)
	lw x17, 2(x17)
	add x4, x17, x16
	lw x17, 0(x4)
	bne	x17, x11, main_beqelse_b7116
# B7115
	add x4, x14, x18
	lw x17, 0(x4)
	lw x17, 2(x17)
	add x4, x17, x16
	lw x17, 0(x4)
	bne	x17, x11, main_beqelse_b7118
# B7117
	add x4, x14, x19
	lw x17, 0(x4)
	lw x17, 2(x17)
	add x4, x17, x16
	lw x17, 0(x4)
	bne	x17, x11, main_beqelse_b7120
# B7119
	la x123, min_caml_diffuse_ray
# B7123
	lw x10, 3(x10)
	add x4, x10, x16
	lw x10, 0(x4)
	beq	x10, zero, main_bneelse_b7148
# B7149
	add x4, x13, x100
	lw x10, 0(x4)
	lw x10, 5(x10)
	add x4, x14, x18
	lw x11, 0(x4)
	lw x11, 5(x11)
	add x4, x14, x100
	lw x17, 0(x4)
	lw x17, 5(x17)
	add x4, x14, x19
	lw x18, 0(x4)
	lw x18, 5(x18)
	add x4, x15, x100
	lw x19, 0(x4)
	lw x19, 5(x19)
	add x4, x10, x16
	lw x10, 0(x4)
	lw x20, 0(x10)
	sw x20, 0(x123)
	lw x20, 1(x10)
	sw x20, 1(x123)
	lw x10, 2(x10)
	sw x10, 2(x123)
	add x4, x11, x16
	lw x10, 0(x4)
	lw x11, 0(x123)
	lw x20, 0(x10)
	fadd x11, x11, x20
	sw x11, 0(x123)
	lw x11, 1(x123)
	lw x20, 1(x10)
	fadd x11, x11, x20
	sw x11, 1(x123)
	lw x11, 2(x123)
	lw x10, 2(x10)
	fadd x10, x11, x10
	sw x10, 2(x123)
	add x4, x17, x16
	lw x10, 0(x4)
	lw x11, 0(x123)
	lw x17, 0(x10)
	fadd x11, x11, x17
	sw x11, 0(x123)
	lw x11, 1(x123)
	lw x17, 1(x10)
	fadd x11, x11, x17
	sw x11, 1(x123)
	lw x11, 2(x123)
	lw x10, 2(x10)
	fadd x10, x11, x10
	sw x10, 2(x123)
	add x4, x18, x16
	lw x10, 0(x4)
	lw x11, 0(x123)
	lw x17, 0(x10)
	fadd x11, x11, x17
	sw x11, 0(x123)
	lw x11, 1(x123)
	lw x17, 1(x10)
	fadd x11, x11, x17
	sw x11, 1(x123)
	lw x11, 2(x123)
	lw x10, 2(x10)
	fadd x10, x11, x10
	sw x10, 2(x123)
	add x4, x19, x16
	lw x10, 0(x4)
	lw x11, 0(x123)
	lw x17, 0(x10)
	fadd x11, x11, x17
	sw x11, 0(x123)
	lw x11, 1(x123)
	lw x17, 1(x10)
	fadd x11, x11, x17
	sw x11, 1(x123)
	lw x11, 2(x123)
	lw x10, 2(x10)
	fadd x10, x11, x10
	sw x10, 2(x123)
	add x4, x14, x100
	lw x10, 0(x4)
	lw x10, 4(x10)
	add x4, x10, x16
	lw x10, 0(x4)
	lw x11, 0(x121)
	lw x17, 0(x10)
	lw x18, 0(x123)
	fmul x17, x17, x18
	fadd x11, x11, x17
	sw x11, 0(x121)
	lw x11, 1(x121)
	lw x17, 1(x10)
	lw x18, 1(x123)
	fmul x17, x17, x18
	fadd x11, x11, x17
	sw x11, 1(x121)
	lw x11, 2(x121)
	lw x10, 2(x10)
	lw x17, 2(x123)
	fmul x10, x10, x17
	fadd x10, x11, x10
	sw x10, 2(x121)
main_bneelse_b7148:
# B7148
main_cont_b7150:
# B7150
	addi x16, x16, 1
	j	main_loop_b7108
main_beqelse_b7120:
# B7120
	la x123, min_caml_diffuse_ray
	j main_cont_b7122 # adhoc jump(2)
main_beqelse_b7118:
# B7118
	la x123, min_caml_diffuse_ray
	j main_cont_b7122 # adhoc jump(2)
main_beqelse_b7116:
# B7116
	la x123, min_caml_diffuse_ray
	j main_cont_b7122 # adhoc jump(2)
main_beqelse_b7114:
# B7114
	la x123, min_caml_diffuse_ray
main_cont_b7122:
# B7122
	add x4, x14, x100
	lw x10, 0(x4)
	mv x125, x10
	mv x127, x16
main_loop_b7124:
# B7124
	bgt	x127, x112, main_bleelse_b7126
# B7125
	lw x10, 2(x125)
	add x4, x10, x127
	lw x10, 0(x4)
	bgt	zero, x10, main_bleelse_b7128
# B7127
	lw x10, 3(x125)
	add x4, x10, x127
	lw x10, 0(x4)
	beq	x10, zero, main_bneelse_b7129
# B7130
	lw x10, 5(x125)
	lw x100, 7(x125)
	lw x11, 1(x125)
	lw x41, 4(x125)
	add x4, x10, x127
	lw x10, 0(x4)
	lw x12, 0(x10)
	sw x12, 0(x123)
	lw x12, 1(x10)
	sw x12, 1(x123)
	lw x10, 2(x10)
	sw x10, 2(x123)
	lw x10, 6(x125)
	lw x42, 0(x10)
	add x4, x100, x127
	lw x47, 0(x4)
	add x4, x11, x127
	lw x49, 0(x4)
	beq	x42, zero, main_bneelse_b7131
# B7132
	la x10, min_caml_dirvecs
	lw x5, 0(x10)
	mv x6, x47
	mv x7, x49
	addi	x2, x2, 43
	jal	trace_diffuse_rays.3085
	addi	x2, x2, -43
main_bneelse_b7131:
# B7131
main_cont_b7133:
# B7133
	beq	x42, x103, main_bneelse_b7134
# B7135
	la x10, min_caml_dirvecs
	lw x5, 1(x10)
	mv x6, x47
	mv x7, x49
	addi	x2, x2, 43
	jal	trace_diffuse_rays.3085
	addi	x2, x2, -43
main_bneelse_b7134:
# B7134
main_cont_b7136:
# B7136
	beq	x42, x105, main_bneelse_b7137
# B7138
	la x10, min_caml_dirvecs
	lw x5, 2(x10)
	mv x6, x47
	mv x7, x49
	addi	x2, x2, 43
	jal	trace_diffuse_rays.3085
	addi	x2, x2, -43
main_bneelse_b7137:
# B7137
main_cont_b7139:
# B7139
	beq	x42, x108, main_bneelse_b7140
# B7141
	la x10, min_caml_dirvecs
	lw x5, 3(x10)
	mv x6, x47
	mv x7, x49
	addi	x2, x2, 43
	jal	trace_diffuse_rays.3085
	addi	x2, x2, -43
main_bneelse_b7140:
# B7140
main_cont_b7142:
# B7142
	beq	x42, x112, main_bneelse_b7143
# B7144
	la x10, min_caml_dirvecs
	lw x5, 4(x10)
	mv x6, x47
	mv x7, x49
	addi	x2, x2, 43
	jal	trace_diffuse_rays.3085
	addi	x2, x2, -43
main_bneelse_b7143:
# B7143
main_cont_b7145:
# B7145
	add x4, x41, x127
	lw x10, 0(x4)
	lw x100, 0(x121)
	lw x11, 0(x10)
	lw x12, 0(x123)
	fmul x11, x11, x12
	fadd x100, x100, x11
	sw x100, 0(x121)
	lw x100, 1(x121)
	lw x11, 1(x10)
	lw x12, 1(x123)
	fmul x11, x11, x12
	fadd x100, x100, x11
	sw x100, 1(x121)
	lw x100, 2(x121)
	lw x10, 2(x10)
	lw x11, 2(x123)
	fmul x10, x10, x11
	fadd x10, x100, x10
	sw x10, 2(x121)
main_bneelse_b7129:
# B7129
main_cont_b7146:
# B7146
	addi x127, x127, 1
	j	main_loop_b7124
main_bleelse_b7128:
# B7128
main_bleelse_b7126:
# B7126
main_cont_b7147:
# B7147
	j main_cont_b7151 # adhoc jump(2)
main_bleelse_b7112:
# B7112
	j main_cont_b7151 # adhoc jump(2)
main_bleelse_b7110:
# B7110
	j main_cont_b7151 # adhoc jump(2)
main_bgtelse_b7003:
# B7003
main_bgtelse_b7001:
# B7001
main_bgtelse_b6999:
# B6999
main_cont_b7008:
# B7008
	add x4, x118, x10
	lw x10, 0(x4)
	mv x125, zero
	mv x123, x10
main_loop_b7010:
# B7010
	bgt	x125, x112, main_bleelse_b7012
# B7011
	lw x10, 2(x123)
	add x4, x10, x125
	lw x10, 0(x4)
	bgt	zero, x10, main_bleelse_b7014
# B7013
	lw x10, 3(x123)
	add x4, x10, x125
	lw x10, 0(x4)
	beq	x10, zero, main_bneelse_b7015
# B7016
	lw x10, 5(x123)
	lw x100, 7(x123)
	lw x11, 1(x123)
	lw x127, 4(x123)
	la x12, min_caml_diffuse_ray
	add x4, x10, x125
	lw x10, 0(x4)
	lw x13, 0(x10)
	sw x13, 0(x12)
	lw x13, 1(x10)
	sw x13, 1(x12)
	lw x10, 2(x10)
	sw x10, 2(x12)
	lw x10, 6(x123)
	lw x41, 0(x10)
	add x4, x100, x125
	lw x42, 0(x4)
	add x4, x11, x125
	lw x47, 0(x4)
	la x10, min_caml_dirvecs
	la x100, min_caml_startp_fast
	beq	x41, zero, main_bneelse_b7017
# B7018
	lw x11, 0(x10)
	lw x13, 0(x47)
	sw x13, 0(x100)
	lw x13, 1(x47)
	sw x13, 1(x100)
	lw x13, 2(x47)
	sw x13, 2(x100)
	lw x13, 0(x115)
	addi x13, x13, -1
	mv x15, x13
	mv x14, x47
main_loop_b7019:
# B7019
	bgt	zero, x15, main_bleelse_b7021
# B7020
	la x13, min_caml_objects
	add x4, x13, x15
	lw x13, 0(x4)
	lw x16, 10(x13)
	lw x17, 1(x13)
	lw x18, 0(x14)
	lw x19, 5(x13)
	lw x19, 0(x19)
	fsub x18, x18, x19
	sw x18, 0(x16)
	lw x18, 1(x14)
	lw x19, 5(x13)
	lw x19, 1(x19)
	fsub x18, x18, x19
	sw x18, 1(x16)
	lw x18, 2(x14)
	lw x19, 5(x13)
	lw x19, 2(x19)
	fsub x18, x18, x19
	sw x18, 2(x16)
	bne	x17, x105, main_beqelse_b7023
# B7022
	lw x13, 4(x13)
	lw x17, 0(x16)
	lw x18, 1(x16)
	lw x19, 2(x16)
	lw x20, 0(x13)
	fmul x17, x20, x17
	lw x20, 1(x13)
	fmul x18, x20, x18
	fadd x17, x17, x18
	lw x13, 2(x13)
	fmul x13, x13, x19
	fadd x13, x17, x13
	sw x13, 3(x16)
	j main_cont_b7032 # adhoc jump(2)
main_beqelse_b7023:
# B7023
	bge	x105, x17, main_bgtelse_b7024
# B7025
	lw x18, 0(x16)
	lw x19, 1(x16)
	lw x20, 2(x16)
	fmul x21, x18, x18
	lw x22, 4(x13)
	lw x22, 0(x22)
	fmul x21, x21, x22
	fmul x22, x19, x19
	lw x23, 4(x13)
	lw x23, 1(x23)
	fmul x22, x22, x23
	fadd x21, x21, x22
	fmul x22, x20, x20
	lw x23, 4(x13)
	lw x23, 2(x23)
	fmul x22, x22, x23
	fadd x21, x21, x22
	lw x22, 3(x13)
	bne	x22, zero, main_beqelse_b7027
# B7026
	mv x13, x21
	j main_cont_b7028 # adhoc jump(2)
main_beqelse_b7027:
# B7027
	fmul x22, x19, x20
	lw x23, 9(x13)
	lw x23, 0(x23)
	fmul x22, x22, x23
	fadd x21, x21, x22
	fmul x20, x20, x18
	lw x22, 9(x13)
	lw x22, 1(x22)
	fmul x20, x20, x22
	fadd x20, x21, x20
	fmul x18, x18, x19
	lw x13, 9(x13)
	lw x13, 2(x13)
	fmul x13, x18, x13
	fadd x13, x20, x13
main_cont_b7028:
# B7028
	bne	x17, x108, main_beqelse_b7030
# B7029
	lui x17, 260096
	fsub x13, x13, x17
main_beqelse_b7030:
# B7030
main_cont_b7031:
# B7031
	sw x13, 3(x16)
main_bgtelse_b7024:
# B7024
main_cont_b7032:
# B7032
	addi x15, x15, -1
	j	main_loop_b7019
main_bleelse_b7021:
# B7021
# B7033
	mv x7, x47
	mv x6, x42
	mv x8, x48
	mv x5, x11
	addi	x2, x2, 43
	jal	iter_trace_diffuse_rays.3080
	addi	x2, x2, -43
main_bneelse_b7017:
# B7017
main_cont_b7034:
# B7034
	beq	x41, x103, main_bneelse_b7035
# B7036
	la x10, min_caml_dirvecs
	lw x100, 1(x10)
	lw x11, 0(x47)
	la x12, min_caml_startp_fast
	sw x11, 0(x12)
	lw x11, 1(x47)
	sw x11, 1(x12)
	lw x11, 2(x47)
	sw x11, 2(x12)
	lw x11, 0(x115)
	addi x11, x11, -1
	mv x13, x47
	mv x14, x11
main_loop_b7037:
# B7037
	bgt	zero, x14, main_bleelse_b7039
# B7038
	la x11, min_caml_objects
	add x4, x11, x14
	lw x11, 0(x4)
	lw x15, 10(x11)
	lw x16, 1(x11)
	lw x17, 0(x13)
	lw x18, 5(x11)
	lw x18, 0(x18)
	fsub x17, x17, x18
	sw x17, 0(x15)
	lw x17, 1(x13)
	lw x18, 5(x11)
	lw x18, 1(x18)
	fsub x17, x17, x18
	sw x17, 1(x15)
	lw x17, 2(x13)
	lw x18, 5(x11)
	lw x18, 2(x18)
	fsub x17, x17, x18
	sw x17, 2(x15)
	bne	x16, x105, main_beqelse_b7041
# B7040
	lw x11, 4(x11)
	lw x16, 0(x15)
	lw x17, 1(x15)
	lw x18, 2(x15)
	lw x19, 0(x11)
	fmul x16, x19, x16
	lw x19, 1(x11)
	fmul x17, x19, x17
	fadd x16, x16, x17
	lw x11, 2(x11)
	fmul x11, x11, x18
	fadd x11, x16, x11
	sw x11, 3(x15)
	j main_cont_b7050 # adhoc jump(2)
main_beqelse_b7041:
# B7041
	bge	x105, x16, main_bgtelse_b7042
# B7043
	lw x17, 0(x15)
	lw x18, 1(x15)
	lw x19, 2(x15)
	fmul x20, x17, x17
	lw x21, 4(x11)
	lw x21, 0(x21)
	fmul x20, x20, x21
	fmul x21, x18, x18
	lw x22, 4(x11)
	lw x22, 1(x22)
	fmul x21, x21, x22
	fadd x20, x20, x21
	fmul x21, x19, x19
	lw x22, 4(x11)
	lw x22, 2(x22)
	fmul x21, x21, x22
	fadd x20, x20, x21
	lw x21, 3(x11)
	bne	x21, zero, main_beqelse_b7045
# B7044
	mv x11, x20
	j main_cont_b7046 # adhoc jump(2)
main_beqelse_b7045:
# B7045
	fmul x21, x18, x19
	lw x22, 9(x11)
	lw x22, 0(x22)
	fmul x21, x21, x22
	fadd x20, x20, x21
	fmul x19, x19, x17
	lw x21, 9(x11)
	lw x21, 1(x21)
	fmul x19, x19, x21
	fadd x19, x20, x19
	fmul x17, x17, x18
	lw x11, 9(x11)
	lw x11, 2(x11)
	fmul x11, x17, x11
	fadd x11, x19, x11
main_cont_b7046:
# B7046
	bne	x16, x108, main_beqelse_b7048
# B7047
	lui x16, 260096
	fsub x11, x11, x16
main_beqelse_b7048:
# B7048
main_cont_b7049:
# B7049
	sw x11, 3(x15)
main_bgtelse_b7042:
# B7042
main_cont_b7050:
# B7050
	addi x14, x14, -1
	j	main_loop_b7037
main_bleelse_b7039:
# B7039
# B7051
	li x8, 118
	mv x7, x47
	mv x6, x42
	mv x5, x100
	addi	x2, x2, 43
	jal	iter_trace_diffuse_rays.3080
	addi	x2, x2, -43
main_bneelse_b7035:
# B7035
main_cont_b7052:
# B7052
	beq	x41, x105, main_bneelse_b7053
# B7054
	la x10, min_caml_dirvecs
	lw x100, 2(x10)
	lw x11, 0(x47)
	la x12, min_caml_startp_fast
	sw x11, 0(x12)
	lw x11, 1(x47)
	sw x11, 1(x12)
	lw x11, 2(x47)
	sw x11, 2(x12)
	lw x11, 0(x115)
	addi x11, x11, -1
	mv x13, x47
	mv x14, x11
main_loop_b7055:
# B7055
	bgt	zero, x14, main_bleelse_b7057
# B7056
	la x11, min_caml_objects
	add x4, x11, x14
	lw x11, 0(x4)
	lw x15, 10(x11)
	lw x16, 1(x11)
	lw x17, 0(x13)
	lw x18, 5(x11)
	lw x18, 0(x18)
	fsub x17, x17, x18
	sw x17, 0(x15)
	lw x17, 1(x13)
	lw x18, 5(x11)
	lw x18, 1(x18)
	fsub x17, x17, x18
	sw x17, 1(x15)
	lw x17, 2(x13)
	lw x18, 5(x11)
	lw x18, 2(x18)
	fsub x17, x17, x18
	sw x17, 2(x15)
	bne	x16, x105, main_beqelse_b7059
# B7058
	lw x11, 4(x11)
	lw x16, 0(x15)
	lw x17, 1(x15)
	lw x18, 2(x15)
	lw x19, 0(x11)
	fmul x16, x19, x16
	lw x19, 1(x11)
	fmul x17, x19, x17
	fadd x16, x16, x17
	lw x11, 2(x11)
	fmul x11, x11, x18
	fadd x11, x16, x11
	sw x11, 3(x15)
	j main_cont_b7068 # adhoc jump(2)
main_beqelse_b7059:
# B7059
	bge	x105, x16, main_bgtelse_b7060
# B7061
	lw x17, 0(x15)
	lw x18, 1(x15)
	lw x19, 2(x15)
	fmul x20, x17, x17
	lw x21, 4(x11)
	lw x21, 0(x21)
	fmul x20, x20, x21
	fmul x21, x18, x18
	lw x22, 4(x11)
	lw x22, 1(x22)
	fmul x21, x21, x22
	fadd x20, x20, x21
	fmul x21, x19, x19
	lw x22, 4(x11)
	lw x22, 2(x22)
	fmul x21, x21, x22
	fadd x20, x20, x21
	lw x21, 3(x11)
	bne	x21, zero, main_beqelse_b7063
# B7062
	mv x11, x20
	j main_cont_b7064 # adhoc jump(2)
main_beqelse_b7063:
# B7063
	fmul x21, x18, x19
	lw x22, 9(x11)
	lw x22, 0(x22)
	fmul x21, x21, x22
	fadd x20, x20, x21
	fmul x19, x19, x17
	lw x21, 9(x11)
	lw x21, 1(x21)
	fmul x19, x19, x21
	fadd x19, x20, x19
	fmul x17, x17, x18
	lw x11, 9(x11)
	lw x11, 2(x11)
	fmul x11, x17, x11
	fadd x11, x19, x11
main_cont_b7064:
# B7064
	bne	x16, x108, main_beqelse_b7066
# B7065
	lui x16, 260096
	fsub x11, x11, x16
main_beqelse_b7066:
# B7066
main_cont_b7067:
# B7067
	sw x11, 3(x15)
main_bgtelse_b7060:
# B7060
main_cont_b7068:
# B7068
	addi x14, x14, -1
	j	main_loop_b7055
main_bleelse_b7057:
# B7057
# B7069
	li x8, 118
	mv x7, x47
	mv x6, x42
	mv x5, x100
	addi	x2, x2, 43
	jal	iter_trace_diffuse_rays.3080
	addi	x2, x2, -43
main_bneelse_b7053:
# B7053
main_cont_b7070:
# B7070
	beq	x41, x108, main_bneelse_b7071
# B7072
	la x10, min_caml_dirvecs
	lw x100, 3(x10)
	lw x11, 0(x47)
	la x12, min_caml_startp_fast
	sw x11, 0(x12)
	lw x11, 1(x47)
	sw x11, 1(x12)
	lw x11, 2(x47)
	sw x11, 2(x12)
	lw x11, 0(x115)
	addi x11, x11, -1
	mv x13, x47
	mv x14, x11
main_loop_b7073:
# B7073
	bgt	zero, x14, main_bleelse_b7075
# B7074
	la x11, min_caml_objects
	add x4, x11, x14
	lw x11, 0(x4)
	lw x15, 10(x11)
	lw x16, 1(x11)
	lw x17, 0(x13)
	lw x18, 5(x11)
	lw x18, 0(x18)
	fsub x17, x17, x18
	sw x17, 0(x15)
	lw x17, 1(x13)
	lw x18, 5(x11)
	lw x18, 1(x18)
	fsub x17, x17, x18
	sw x17, 1(x15)
	lw x17, 2(x13)
	lw x18, 5(x11)
	lw x18, 2(x18)
	fsub x17, x17, x18
	sw x17, 2(x15)
	bne	x16, x105, main_beqelse_b7077
# B7076
	lw x11, 4(x11)
	lw x16, 0(x15)
	lw x17, 1(x15)
	lw x18, 2(x15)
	lw x19, 0(x11)
	fmul x16, x19, x16
	lw x19, 1(x11)
	fmul x17, x19, x17
	fadd x16, x16, x17
	lw x11, 2(x11)
	fmul x11, x11, x18
	fadd x11, x16, x11
	sw x11, 3(x15)
	j main_cont_b7086 # adhoc jump(2)
main_beqelse_b7077:
# B7077
	bge	x105, x16, main_bgtelse_b7078
# B7079
	lw x17, 0(x15)
	lw x18, 1(x15)
	lw x19, 2(x15)
	fmul x20, x17, x17
	lw x21, 4(x11)
	lw x21, 0(x21)
	fmul x20, x20, x21
	fmul x21, x18, x18
	lw x22, 4(x11)
	lw x22, 1(x22)
	fmul x21, x21, x22
	fadd x20, x20, x21
	fmul x21, x19, x19
	lw x22, 4(x11)
	lw x22, 2(x22)
	fmul x21, x21, x22
	fadd x20, x20, x21
	lw x21, 3(x11)
	bne	x21, zero, main_beqelse_b7081
# B7080
	mv x11, x20
	j main_cont_b7082 # adhoc jump(2)
main_beqelse_b7081:
# B7081
	fmul x21, x18, x19
	lw x22, 9(x11)
	lw x22, 0(x22)
	fmul x21, x21, x22
	fadd x20, x20, x21
	fmul x19, x19, x17
	lw x21, 9(x11)
	lw x21, 1(x21)
	fmul x19, x19, x21
	fadd x19, x20, x19
	fmul x17, x17, x18
	lw x11, 9(x11)
	lw x11, 2(x11)
	fmul x11, x17, x11
	fadd x11, x19, x11
main_cont_b7082:
# B7082
	bne	x16, x108, main_beqelse_b7084
# B7083
	lui x16, 260096
	fsub x11, x11, x16
main_beqelse_b7084:
# B7084
main_cont_b7085:
# B7085
	sw x11, 3(x15)
main_bgtelse_b7078:
# B7078
main_cont_b7086:
# B7086
	addi x14, x14, -1
	j	main_loop_b7073
main_bleelse_b7075:
# B7075
# B7087
	li x8, 118
	mv x7, x47
	mv x6, x42
	mv x5, x100
	addi	x2, x2, 43
	jal	iter_trace_diffuse_rays.3080
	addi	x2, x2, -43
main_bneelse_b7071:
# B7071
main_cont_b7088:
# B7088
	beq	x41, x112, main_bneelse_b7089
# B7090
	la x10, min_caml_dirvecs
	lw x100, 4(x10)
	lw x10, 0(x47)
	la x11, min_caml_startp_fast
	sw x10, 0(x11)
	lw x10, 1(x47)
	sw x10, 1(x11)
	lw x10, 2(x47)
	sw x10, 2(x11)
	lw x10, 0(x115)
	addi x10, x10, -1
	mv x11, x47
	mv x12, x10
main_loop_b7091:
# B7091
	bgt	zero, x12, main_bleelse_b7093
# B7092
	la x10, min_caml_objects
	add x4, x10, x12
	lw x10, 0(x4)
	lw x13, 10(x10)
	lw x14, 1(x10)
	lw x15, 0(x11)
	lw x16, 5(x10)
	lw x16, 0(x16)
	fsub x15, x15, x16
	sw x15, 0(x13)
	lw x15, 1(x11)
	lw x16, 5(x10)
	lw x16, 1(x16)
	fsub x15, x15, x16
	sw x15, 1(x13)
	lw x15, 2(x11)
	lw x16, 5(x10)
	lw x16, 2(x16)
	fsub x15, x15, x16
	sw x15, 2(x13)
	bne	x14, x105, main_beqelse_b7095
# B7094
	lw x10, 4(x10)
	lw x14, 0(x13)
	lw x15, 1(x13)
	lw x16, 2(x13)
	lw x17, 0(x10)
	fmul x14, x17, x14
	lw x17, 1(x10)
	fmul x15, x17, x15
	fadd x14, x14, x15
	lw x10, 2(x10)
	fmul x10, x10, x16
	fadd x10, x14, x10
	sw x10, 3(x13)
	j main_cont_b7104 # adhoc jump(2)
main_beqelse_b7095:
# B7095
	bge	x105, x14, main_bgtelse_b7096
# B7097
	lw x15, 0(x13)
	lw x16, 1(x13)
	lw x17, 2(x13)
	fmul x18, x15, x15
	lw x19, 4(x10)
	lw x19, 0(x19)
	fmul x18, x18, x19
	fmul x19, x16, x16
	lw x20, 4(x10)
	lw x20, 1(x20)
	fmul x19, x19, x20
	fadd x18, x18, x19
	fmul x19, x17, x17
	lw x20, 4(x10)
	lw x20, 2(x20)
	fmul x19, x19, x20
	fadd x18, x18, x19
	lw x19, 3(x10)
	bne	x19, zero, main_beqelse_b7099
# B7098
	mv x10, x18
	j main_cont_b7100 # adhoc jump(2)
main_beqelse_b7099:
# B7099
	fmul x19, x16, x17
	lw x20, 9(x10)
	lw x20, 0(x20)
	fmul x19, x19, x20
	fadd x18, x18, x19
	fmul x17, x17, x15
	lw x19, 9(x10)
	lw x19, 1(x19)
	fmul x17, x17, x19
	fadd x17, x18, x17
	fmul x15, x15, x16
	lw x10, 9(x10)
	lw x10, 2(x10)
	fmul x10, x15, x10
	fadd x10, x17, x10
main_cont_b7100:
# B7100
	bne	x14, x108, main_beqelse_b7102
# B7101
	lui x14, 260096
	fsub x10, x10, x14
main_beqelse_b7102:
# B7102
main_cont_b7103:
# B7103
	sw x10, 3(x13)
main_bgtelse_b7096:
# B7096
main_cont_b7104:
# B7104
	addi x12, x12, -1
	j	main_loop_b7091
main_bleelse_b7093:
# B7093
# B7105
	li x8, 118
	mv x7, x47
	mv x6, x42
	mv x5, x100
	addi	x2, x2, 43
	jal	iter_trace_diffuse_rays.3080
	addi	x2, x2, -43
main_bneelse_b7089:
# B7089
main_cont_b7106:
# B7106
	add x4, x127, x125
	lw x10, 0(x4)
	lw x100, 0(x121)
	lw x11, 0(x10)
	la x12, min_caml_diffuse_ray
	lw x13, 0(x12)
	fmul x11, x11, x13
	fadd x100, x100, x11
	sw x100, 0(x121)
	lw x100, 1(x121)
	lw x11, 1(x10)
	lw x13, 1(x12)
	fmul x11, x11, x13
	fadd x100, x100, x11
	sw x100, 1(x121)
	lw x100, 2(x121)
	lw x10, 2(x10)
	lw x11, 2(x12)
	fmul x10, x10, x11
	fadd x10, x100, x10
	sw x10, 2(x121)
main_bneelse_b7015:
# B7015
main_cont_b7107:
# B7107
	addi x125, x125, 1
	j	main_loop_b7010
main_bleelse_b7014:
# B7014
main_bleelse_b7012:
# B7012
main_cont_b7151:
# B7151
	bne	x120, x108, main_beqelse_b7153
# B7152
	lw x10, 0(x121)
	ftoi x10, x10
	bgt	x10, x46, main_bleelse_b7155
# B7154
	bgt	zero, x10, main_bleelse_b7157
# B7156
	mv x100, x10
	j main_cont_b7158 # adhoc jump(2)
main_bleelse_b7157:
# B7157
	mv x100, zero
	j main_cont_b7158 # adhoc jump(2)
main_bleelse_b7155:
# B7155
	mv x100, x46
main_cont_b7158:
# B7158
	bgt	zero, x100, main_bleelse_b7160
# B7159
	mv x10, x100
	mv x11, zero
main_loop_b7161:
# B7161
	mv x12, x103
	mv x100, x10
	mv x13, x43
	j	main_loop_b7162
main_bgtelse_b7163:	#moved
# B7163
	slli x12, x13, 3
	slli x14, x13, 1
	add x12, x12, x14
	mv x4, x13
	mv x13, x12
	mv x12, x4
main_loop_b7162:
# B7162
	bge	x100, x13, main_bgtelse_b7163
# B7164
# B7165
	mv x15, x103
	mv x16, zero
	mv x14, x12
	j	main_loop_b7166
main_bleelse_b7168:	#moved
# B7168
	slli x100, x15, 3
	slli x13, x15, 1
	add x15, x100, x13
	addi x16, x16, 1
main_loop_b7166:
# B7166
	bgt	x14, x15, main_bleelse_b7168
# B7167
# B7169
	sub x100, x11, x16
	addi x100, x100, -1
	mv x11, x100
	j	main_loop_b7170
main_bleelse_b7172:	#moved
# B7172
	li x100, 48
	out8 x100
	addi x11, x11, -1
main_loop_b7170:
# B7170
	bgt	x11, zero, main_bleelse_b7172
# B7171
# B7173
	bne	x16, zero, main_beqelse_b7175
# B7174
	addi x10, x10, 48
	out8 x10
	j main_cont_b7207 # adhoc jump(2)
main_beqelse_b7175:
# B7175
	mv x15, x12
	mv x13, x12
	mv x100, x10
	mv x14, x103
	j	main_loop_b7176
main_bgtelse_b7177:	#moved
# B7177
	addi x14, x14, 1
	mv x15, x11
main_loop_b7176:
# B7176
	add x11, x15, x13
	bge	x100, x11, main_bgtelse_b7177
# B7178
# B7179
	mv x15, x12
	mv x18, x14
	mv x17, zero
	j	main_loop_b7180
main_beqelse_b7182:	#moved
# B7182
	add x17, x17, x15
	addi x18, x18, -1
main_loop_b7180:
# B7180
	bne	x18, zero, main_beqelse_b7182
# B7181
# B7183
	sub x10, x10, x17
	addi x100, x14, 48
	out8 x100
	mv x11, x16
	j	main_loop_b7161
main_bleelse_b7160:
# B7160
	out8 x44
	sub x10, zero, x100
	mv x100, x10
	mv x11, zero
main_loop_b7184:
# B7184
	mv x12, x103
	mv x10, x100
	mv x13, x43
	j	main_loop_b7185
main_bgtelse_b7186:	#moved
# B7186
	slli x12, x13, 3
	slli x14, x13, 1
	add x12, x12, x14
	mv x4, x13
	mv x13, x12
	mv x12, x4
main_loop_b7185:
# B7185
	bge	x10, x13, main_bgtelse_b7186
# B7187
# B7188
	mv x15, x103
	mv x16, zero
	mv x14, x12
	j	main_loop_b7189
main_bleelse_b7191:	#moved
# B7191
	slli x10, x15, 3
	slli x13, x15, 1
	add x15, x10, x13
	addi x16, x16, 1
main_loop_b7189:
# B7189
	bgt	x14, x15, main_bleelse_b7191
# B7190
# B7192
	sub x10, x11, x16
	addi x10, x10, -1
	mv x11, x10
	j	main_loop_b7193
main_bleelse_b7195:	#moved
# B7195
	li x10, 48
	out8 x10
	addi x11, x11, -1
main_loop_b7193:
# B7193
	bgt	x11, zero, main_bleelse_b7195
# B7194
# B7196
	bne	x16, zero, main_beqelse_b7198
# B7197
	addi x10, x100, 48
	out8 x10
main_cont_b7207:
# B7207
	out8 x45
	lw x10, 1(x121)
	ftoi x10, x10
	bgt	x10, x46, main_bleelse_b7209
# B7208
	bgt	zero, x10, main_bleelse_b7211
# B7210
	mv x100, x10
	j main_cont_b7212 # adhoc jump(2)
main_bleelse_b7211:
# B7211
	mv x100, zero
	j main_cont_b7212 # adhoc jump(2)
main_bleelse_b7209:
# B7209
	mv x100, x46
main_cont_b7212:
# B7212
	bgt	zero, x100, main_bleelse_b7214
# B7213
	mv x10, x100
	mv x11, zero
main_loop_b7215:
# B7215
	mv x12, x103
	mv x100, x10
	mv x13, x43
	j	main_loop_b7216
main_bgtelse_b7217:	#moved
# B7217
	slli x12, x13, 3
	slli x14, x13, 1
	add x12, x12, x14
	mv x4, x13
	mv x13, x12
	mv x12, x4
main_loop_b7216:
# B7216
	bge	x100, x13, main_bgtelse_b7217
# B7218
# B7219
	mv x15, x103
	mv x16, zero
	mv x14, x12
	j	main_loop_b7220
main_bleelse_b7222:	#moved
# B7222
	slli x100, x15, 3
	slli x13, x15, 1
	add x15, x100, x13
	addi x16, x16, 1
main_loop_b7220:
# B7220
	bgt	x14, x15, main_bleelse_b7222
# B7221
# B7223
	sub x100, x11, x16
	addi x100, x100, -1
	mv x11, x100
	j	main_loop_b7224
main_bleelse_b7226:	#moved
# B7226
	li x100, 48
	out8 x100
	addi x11, x11, -1
main_loop_b7224:
# B7224
	bgt	x11, zero, main_bleelse_b7226
# B7225
# B7227
	bne	x16, zero, main_beqelse_b7229
# B7228
	addi x10, x10, 48
	out8 x10
	j main_cont_b7261 # adhoc jump(2)
main_beqelse_b7229:
# B7229
	mv x15, x12
	mv x13, x12
	mv x100, x10
	mv x14, x103
	j	main_loop_b7230
main_bgtelse_b7231:	#moved
# B7231
	addi x14, x14, 1
	mv x15, x11
main_loop_b7230:
# B7230
	add x11, x15, x13
	bge	x100, x11, main_bgtelse_b7231
# B7232
# B7233
	mv x15, x12
	mv x18, x14
	mv x17, zero
	j	main_loop_b7234
main_beqelse_b7236:	#moved
# B7236
	add x17, x17, x15
	addi x18, x18, -1
main_loop_b7234:
# B7234
	bne	x18, zero, main_beqelse_b7236
# B7235
# B7237
	sub x10, x10, x17
	addi x100, x14, 48
	out8 x100
	mv x11, x16
	j	main_loop_b7215
main_bleelse_b7214:
# B7214
	out8 x44
	sub x10, zero, x100
	mv x100, x10
	mv x11, zero
main_loop_b7238:
# B7238
	mv x12, x103
	mv x10, x100
	mv x13, x43
	j	main_loop_b7239
main_bgtelse_b7240:	#moved
# B7240
	slli x12, x13, 3
	slli x14, x13, 1
	add x12, x12, x14
	mv x4, x13
	mv x13, x12
	mv x12, x4
main_loop_b7239:
# B7239
	bge	x10, x13, main_bgtelse_b7240
# B7241
# B7242
	mv x15, x103
	mv x16, zero
	mv x14, x12
	j	main_loop_b7243
main_bleelse_b7245:	#moved
# B7245
	slli x10, x15, 3
	slli x13, x15, 1
	add x15, x10, x13
	addi x16, x16, 1
main_loop_b7243:
# B7243
	bgt	x14, x15, main_bleelse_b7245
# B7244
# B7246
	sub x10, x11, x16
	addi x10, x10, -1
	mv x11, x10
	j	main_loop_b7247
main_bleelse_b7249:	#moved
# B7249
	li x10, 48
	out8 x10
	addi x11, x11, -1
main_loop_b7247:
# B7247
	bgt	x11, zero, main_bleelse_b7249
# B7248
# B7250
	bne	x16, zero, main_beqelse_b7252
# B7251
	addi x10, x100, 48
	out8 x10
main_cont_b7261:
# B7261
	out8 x45
	lw x10, 2(x121)
	ftoi x10, x10
	bgt	x10, x46, main_bleelse_b7263
# B7262
	bgt	zero, x10, main_bleelse_b7265
# B7264
	mv x100, x10
	j main_cont_b7266 # adhoc jump(2)
main_bleelse_b7265:
# B7265
	mv x100, zero
	j main_cont_b7266 # adhoc jump(2)
main_bleelse_b7263:
# B7263
	mv x100, x46
main_cont_b7266:
# B7266
	bgt	zero, x100, main_bleelse_b7268
# B7267
	mv x10, x100
	mv x11, zero
main_loop_b7269:
# B7269
	mv x12, x103
	mv x100, x10
	mv x13, x43
	j	main_loop_b7270
main_bgtelse_b7271:	#moved
# B7271
	slli x12, x13, 3
	slli x14, x13, 1
	add x12, x12, x14
	mv x4, x13
	mv x13, x12
	mv x12, x4
main_loop_b7270:
# B7270
	bge	x100, x13, main_bgtelse_b7271
# B7272
# B7273
	mv x15, x103
	mv x16, zero
	mv x14, x12
	j	main_loop_b7274
main_bleelse_b7276:	#moved
# B7276
	slli x100, x15, 3
	slli x13, x15, 1
	add x15, x100, x13
	addi x16, x16, 1
main_loop_b7274:
# B7274
	bgt	x14, x15, main_bleelse_b7276
# B7275
# B7277
	sub x100, x11, x16
	addi x100, x100, -1
	mv x11, x100
	j	main_loop_b7278
main_bleelse_b7280:	#moved
# B7280
	li x100, 48
	out8 x100
	addi x11, x11, -1
main_loop_b7278:
# B7278
	bgt	x11, zero, main_bleelse_b7280
# B7279
# B7281
	bne	x16, zero, main_beqelse_b7283
# B7282
	addi x10, x10, 48
	out8 x10
	j main_cont_b7315 # adhoc jump(2)
main_beqelse_b7283:
# B7283
	mv x15, x12
	mv x13, x12
	mv x100, x10
	mv x14, x103
	j	main_loop_b7284
main_bgtelse_b7285:	#moved
# B7285
	addi x14, x14, 1
	mv x15, x11
main_loop_b7284:
# B7284
	add x11, x15, x13
	bge	x100, x11, main_bgtelse_b7285
# B7286
# B7287
	mv x15, x12
	mv x18, x14
	mv x17, zero
	j	main_loop_b7288
main_beqelse_b7290:	#moved
# B7290
	add x17, x17, x15
	addi x18, x18, -1
main_loop_b7288:
# B7288
	bne	x18, zero, main_beqelse_b7290
# B7289
# B7291
	sub x10, x10, x17
	addi x100, x14, 48
	out8 x100
	mv x11, x16
	j	main_loop_b7269
main_bleelse_b7268:
# B7268
	out8 x44
	sub x10, zero, x100
	mv x100, x10
	mv x11, zero
main_loop_b7292:
# B7292
	mv x12, x103
	mv x10, x100
	mv x13, x43
	j	main_loop_b7293
main_bgtelse_b7294:	#moved
# B7294
	slli x12, x13, 3
	slli x14, x13, 1
	add x12, x12, x14
	mv x4, x13
	mv x13, x12
	mv x12, x4
main_loop_b7293:
# B7293
	bge	x10, x13, main_bgtelse_b7294
# B7295
# B7296
	mv x15, x103
	mv x16, zero
	mv x14, x12
	j	main_loop_b7297
main_bleelse_b7299:	#moved
# B7299
	slli x10, x15, 3
	slli x13, x15, 1
	add x15, x10, x13
	addi x16, x16, 1
main_loop_b7297:
# B7297
	bgt	x14, x15, main_bleelse_b7299
# B7298
# B7300
	sub x10, x11, x16
	addi x10, x10, -1
	mv x11, x10
	j	main_loop_b7301
main_bleelse_b7303:	#moved
# B7303
	li x10, 48
	out8 x10
	addi x11, x11, -1
main_loop_b7301:
# B7301
	bgt	x11, zero, main_bleelse_b7303
# B7302
# B7304
	bne	x16, zero, main_beqelse_b7306
# B7305
	addi x10, x100, 48
	out8 x10
main_cont_b7315:
# B7315
	out8 x43
	j main_cont_b7331 # adhoc jump(2)
main_beqelse_b7306:
# B7306
	mv x15, x12
	mv x13, x12
	mv x10, x100
	mv x14, x103
	j	main_loop_b7307
main_bgtelse_b7308:	#moved
# B7308
	addi x14, x14, 1
	mv x15, x11
main_loop_b7307:
# B7307
	add x11, x15, x13
	bge	x10, x11, main_bgtelse_b7308
# B7309
# B7310
	mv x15, x12
	mv x18, x14
	mv x17, zero
	j	main_loop_b7311
main_beqelse_b7313:	#moved
# B7313
	add x17, x17, x15
	addi x18, x18, -1
main_loop_b7311:
# B7311
	bne	x18, zero, main_beqelse_b7313
# B7312
# B7314
	sub x10, x100, x17
	addi x100, x14, 48
	out8 x100
	mv x11, x16
	mv x100, x10
	j	main_loop_b7292
main_beqelse_b7252:
# B7252
	mv x15, x12
	mv x13, x12
	mv x10, x100
	mv x14, x103
	j	main_loop_b7253
main_bgtelse_b7254:	#moved
# B7254
	addi x14, x14, 1
	mv x15, x11
main_loop_b7253:
# B7253
	add x11, x15, x13
	bge	x10, x11, main_bgtelse_b7254
# B7255
# B7256
	mv x15, x12
	mv x18, x14
	mv x17, zero
	j	main_loop_b7257
main_beqelse_b7259:	#moved
# B7259
	add x17, x17, x15
	addi x18, x18, -1
main_loop_b7257:
# B7257
	bne	x18, zero, main_beqelse_b7259
# B7258
# B7260
	sub x10, x100, x17
	addi x100, x14, 48
	out8 x100
	mv x11, x16
	mv x100, x10
	j	main_loop_b7238
main_beqelse_b7198:
# B7198
	mv x15, x12
	mv x13, x12
	mv x10, x100
	mv x14, x103
	j	main_loop_b7199
main_bgtelse_b7200:	#moved
# B7200
	addi x14, x14, 1
	mv x15, x11
main_loop_b7199:
# B7199
	add x11, x15, x13
	bge	x10, x11, main_bgtelse_b7200
# B7201
# B7202
	mv x15, x12
	mv x18, x14
	mv x17, zero
	j	main_loop_b7203
main_beqelse_b7205:	#moved
# B7205
	add x17, x17, x15
	addi x18, x18, -1
main_loop_b7203:
# B7203
	bne	x18, zero, main_beqelse_b7205
# B7204
# B7206
	sub x10, x100, x17
	addi x100, x14, 48
	out8 x100
	mv x11, x16
	mv x100, x10
	j	main_loop_b7184
main_beqelse_b7153:
# B7153
	lw x10, 0(x121)
	ftoi x10, x10
	bgt	x10, x46, main_bleelse_b7317
# B7316
	bgt	zero, x10, main_bleelse_b7319
# B7318
	mv x100, x10
	j main_cont_b7320 # adhoc jump(2)
main_bleelse_b7319:
# B7319
	mv x100, zero
	j main_cont_b7320 # adhoc jump(2)
main_bleelse_b7317:
# B7317
	mv x100, x46
main_cont_b7320:
# B7320
	out8 x100
	lw x10, 1(x121)
	ftoi x10, x10
	bgt	x10, x46, main_bleelse_b7322
# B7321
	bgt	zero, x10, main_bleelse_b7324
# B7323
	mv x100, x10
	j main_cont_b7325 # adhoc jump(2)
main_bleelse_b7324:
# B7324
	mv x100, zero
	j main_cont_b7325 # adhoc jump(2)
main_bleelse_b7322:
# B7322
	mv x100, x46
main_cont_b7325:
# B7325
	out8 x100
	lw x10, 2(x121)
	ftoi x10, x10
	bgt	x10, x46, main_bleelse_b7327
# B7326
	bgt	zero, x10, main_bleelse_b7329
# B7328
	mv x100, x10
	j main_cont_b7330 # adhoc jump(2)
main_bleelse_b7329:
# B7329
	mv x100, zero
	j main_cont_b7330 # adhoc jump(2)
main_bleelse_b7327:
# B7327
	mv x100, x46
main_cont_b7330:
# B7330
	out8 x100
main_cont_b7331:
# B7331
	mv x10, x122
	j	main_loop_b6996
main_bgtelse_b6997:
# B6997
# B7332
	addi x10, x113, 2
	bgt	x110, x10, main_bleelse_b7334
# B7333
	addi x10, x10, -5
main_bleelse_b7334:
# B7334
main_cont_b7335:
# B7335
	mv x101, x116
	mv x113, x10
	mv x4, x109
	mv x109, x111
	mv x111, x107
	mv x107, x4
	j	main_loop_b6990
main_bgtelse_b6991:
# B6991
# B7336
	lw	ra, 0(x2)
	lw	x101, 1(x2)
	lw	x102, 2(x2)
	lw	x103, 3(x2)
	lw	x104, 4(x2)
	lw	x105, 5(x2)
	lw	x106, 6(x2)
	lw	x107, 7(x2)
	lw	x108, 8(x2)
	lw	x109, 9(x2)
	lw	x110, 10(x2)
	lw	x111, 11(x2)
	lw	x112, 12(x2)
	lw	x113, 13(x2)
	lw	x114, 14(x2)
	lw	x115, 15(x2)
	lw	x116, 16(x2)
	lw	x117, 17(x2)
	lw	x118, 18(x2)
	lw	x119, 19(x2)
	lw	x120, 20(x2)
	lw	x121, 21(x2)
	lw	x122, 22(x2)
	lw	x123, 23(x2)
	lw	x124, 24(x2)
	lw	x125, 25(x2)
	lw	x126, 26(x2)
	lw	x127, 27(x2)
	lw	x41, 28(x2)
	lw	x42, 29(x2)
	lw	x43, 30(x2)
	lw	x44, 31(x2)
	lw	x45, 32(x2)
	lw	x46, 33(x2)
	lw	x47, 34(x2)
	lw	x48, 35(x2)
	lw	x49, 36(x2)
	lw	x50, 37(x2)
	lw	x51, 38(x2)
	lw	x52, 39(x2)
	lw	x53, 40(x2)
	lw	x54, 41(x2)
	j endp
main_beqelse_b6306:
# B6306
	mv x15, x12
	mv x13, x12
	mv x100, x10
	mv x14, x103
	j	main_loop_b6307
main_bgtelse_b6308:	#moved
# B6308
	addi x14, x14, 1
	mv x15, x11
main_loop_b6307:
# B6307
	add x11, x15, x13
	bge	x100, x11, main_bgtelse_b6308
# B6309
# B6310
	mv x15, x12
	mv x18, x14
	mv x17, zero
	j	main_loop_b6311
main_beqelse_b6313:	#moved
# B6313
	add x17, x17, x15
	addi x18, x18, -1
main_loop_b6311:
# B6311
	bne	x18, zero, main_beqelse_b6313
# B6312
# B6314
	sub x10, x10, x17
	addi x100, x14, 48
	out8 x100
	mv x100, x16
	j	main_loop_b6292
main_beqelse_b6282:
# B6282
	mv x15, x12
	mv x13, x12
	mv x10, x100
	mv x14, x103
	j	main_loop_b6283
main_bgtelse_b6284:	#moved
# B6284
	addi x14, x14, 1
	mv x15, x11
main_loop_b6283:
# B6283
	add x11, x15, x13
	bge	x10, x11, main_bgtelse_b6284
# B6285
# B6286
	mv x15, x12
	mv x18, x14
	mv x17, zero
	j	main_loop_b6287
main_beqelse_b6289:	#moved
# B6289
	add x17, x17, x15
	addi x18, x18, -1
main_loop_b6287:
# B6287
	bne	x18, zero, main_beqelse_b6289
# B6288
# B6290
	sub x10, x100, x17
	addi x100, x14, 48
	out8 x100
	mv x11, x16
	mv x100, x10
	j	main_loop_b6268
main_beqelse_b6233:
# B6233
	mv x15, x12
	mv x13, x12
	mv x10, x100
	mv x14, x103
	j	main_loop_b6234
main_bgtelse_b6235:	#moved
# B6235
	addi x14, x14, 1
	mv x15, x11
main_loop_b6234:
# B6234
	add x11, x15, x13
	bge	x10, x11, main_bgtelse_b6235
# B6236
# B6237
	mv x15, x12
	mv x18, x14
	mv x17, zero
	j	main_loop_b6238
main_beqelse_b6240:	#moved
# B6240
	add x17, x17, x15
	addi x18, x18, -1
main_loop_b6238:
# B6238
	bne	x18, zero, main_beqelse_b6240
# B6239
# B6241
	sub x10, x100, x17
	addi x100, x14, 48
	out8 x100
	mv x11, x16
	mv x100, x10
	j	main_loop_b6219
#	main program ends
endp:
	j endp
