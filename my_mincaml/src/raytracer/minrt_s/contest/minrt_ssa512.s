	.data
min_caml_Ta76917:	space 1
min_caml_Ta76922:	space 1
min_caml_Tt76904:	space 11
min_caml_Tt76963:	space 2
min_caml_Tt76976:	space 4
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
	sw	x115, 15(x2)
	sw	x116, 16(x2)
body_read_object.2872:
# B1
# B2
	li x101, 60
	la x102, min_caml_n_objects
	mv x103, x5
read_object_loop_b3:
# B3
	bgt x101, x103, read_object_bleelse_b5
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
	lw	x115, 15(x2)
	lw	x116, 16(x2)
	ret
read_object_bleelse_b5:
# B5
	in32 x104
	li x10, -1
	beq x104, x10, read_object_bneelse_b184
# B7
	in32 x105
	in32 x106
	in32 x107
	li x108, 3
	mv x65, zero
	mv x5, x108
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
	mv x109, x5
	in32 x10
	sw x10, 0(x109)
	in32 x10
	sw x10, 1(x109)
	li x110, 2
	in32 x10
	sw x10, 2(x109)
	mv x65, zero
	mv x5, x108
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
	mv x111, x5
	in32 x10
	sw x10, 0(x111)
	in32 x10
	sw x10, 1(x111)
	in32 x10
	sw x10, 2(x111)
	in32 x10
	fle x10, zero, x10
	xori x112, x10, 1
	mv x65, zero
	mv x5, x110
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
	mv x113, x5
	in32 x10
	sw x10, 0(x113)
	in32 x10
	sw x10, 1(x113)
	mv x65, zero
	mv x5, x108
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
	mv x114, x5
	in32 x10
	sw x10, 0(x114)
	in32 x10
	sw x10, 1(x114)
	in32 x10
	sw x10, 2(x114)
	mv x65, zero
	mv x5, x108
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
	mv x115, x5
	beq x107, zero, read_object_bneelse_b10
# B9
	in32 x10
	lui x100, 248048
	addi x100, x100, -1483
	fmul x10, x10, x100
	sw x10, 0(x115)
	in32 x10
	fmul x10, x10, x100
	sw x10, 1(x115)
	in32 x10
	fmul x10, x10, x100
	sw x10, 2(x115)
read_object_bneelse_b10:
# B10
	bne x105, x110, read_object_beqelse_b12
# B11
	li x10, 1
	mv x116, x10
	j read_object_cont_b13 # adhoc jump(2)
read_object_beqelse_b12:
# B12
	mv x116, x112
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
	sw x115, 9(x10)
	sw x114, 8(x10)
	sw x113, 7(x10)
	sw x116, 6(x10)
	sw x111, 5(x10)
	sw x109, 4(x10)
	sw x107, 3(x10)
	sw x106, 2(x10)
	sw x105, 1(x10)
	sw x104, 0(x10)
	la x100, min_caml_objects
	add x4, x100, x103
	sw x10, 0(x4)
	lui x10, 260096
	bne x105, x108, read_object_beqelse_b15
# B14
	lw x100, 0(x109)
	feq x11, x100, zero
	bne x11, zero, read_object_beqelse_b17
# B16
	bne x11, zero, read_object_beqelse_b19
# B18
	bfle x100, zero, read_object_bfgtelse_b20
# B21
	lui x11, 260096
	j read_object_cont_b22 # adhoc jump(2)
read_object_bfgtelse_b20:
# B20
	lui x11, 784384
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
	sw x100, 0(x109)
	lw x100, 1(x109)
	feq x11, x100, zero
	bne x11, zero, read_object_beqelse_b25
# B24
	bne x11, zero, read_object_beqelse_b27
# B26
	bfle x100, zero, read_object_bfgtelse_b28
# B29
	lui x11, 260096
	j read_object_cont_b30 # adhoc jump(2)
read_object_bfgtelse_b28:
# B28
	lui x11, 784384
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
	sw x100, 1(x109)
	lw x100, 2(x109)
	feq x11, x100, zero
	bne x11, zero, read_object_beqelse_b33
# B32
	bne x11, zero, read_object_beqelse_b35
# B34
	bfle x100, zero, read_object_bfgtelse_b36
# B37
	lui x11, 260096
	j read_object_cont_b38 # adhoc jump(2)
read_object_bfgtelse_b36:
# B36
	lui x11, 784384
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
	sw x100, 2(x109)
	j read_object_cont_b47 # adhoc jump(2)
read_object_beqelse_b15:
# B15
	bne x105, x110, read_object_beqelse_b47
# B40
	xori x100, x112, 1
	lw x11, 0(x109)
	fmul x12, x11, x11
	lw x13, 1(x109)
	fmul x14, x13, x13
	fadd x12, x12, x14
	lw x14, 2(x109)
	fmul x15, x14, x14
	fadd x12, x12, x15
	fsqrt x12, x12
	bfeq x12, zero, read_object_bfneqelse_b43
# B42
	bne x100, zero, read_object_beqelse_b45
# B44
	fdiv x100, x10, x12
	j read_object_cont_b46 # adhoc jump(2)
read_object_beqelse_b45:
# B45
	lui x100, 784384
	fdiv x100, x100, x12
	j read_object_cont_b46 # adhoc jump(2)
read_object_bfneqelse_b43:
# B43
	lui x100, 260096
read_object_cont_b46:
# B46
	fmul x11, x11, x100
	sw x11, 0(x109)
	fmul x11, x13, x100
	sw x11, 1(x109)
	fmul x100, x14, x100
	sw x100, 2(x109)
read_object_beqelse_b47:
read_object_cont_b47:
# B47
	beq x107, zero, read_object_bneelse_b182
# B49
	lw x100, 0(x115)
	fabs x11, x100
	lui x12, 265361
	addi x12, x12, -37
	lui x13, 262144
	mv x15, x12
	mv x14, x11
read_object_loop_b50:
# B50
	bfle x14, x15, read_object_bfgtelse_b53
# B51
	fmul x15, x15, x13
	j read_object_loop_b50 # loopback to while entry from B51
read_object_bfgtelse_b53:
# B53
	mv x17, x15
	mv x16, x11
	j	read_object_loop_b54 # jumping over moved block
read_object_bfgtelse_b58:	#moved
# B58
	mv x17, x14
read_object_loop_b54:
# B54
	bfle x12, x16, read_object_bfgtelse_b56
# B59
	lui x14, 263313
	addi x14, x14, -37
	fle x15, x14, x16
	bne x15, zero, read_object_beqelse_b61
	j read_object_cont_b62 # adhoc jump(3)
read_object_beqelse_b61:
# B61
	fsub x16, x16, x14
read_object_cont_b62:
# B62
	xori x15, x15, 1
	lui x17, 261265
	addi x17, x17, -37
	fle x18, x17, x16
	bne x18, zero, read_object_beqelse_b64
	j read_object_cont_b65 # adhoc jump(3)
read_object_beqelse_b64:
read_object_cont_b64:
# B64
	fsub x16, x14, x16
read_object_cont_b65:
# B65
	xor x15, x18, x15
	lui x18, 259217
	addi x18, x18, -37
	lui x19, 782336
	lui x20, 250538
	addi x20, x20, 1929
	lui x21, 764728
	addi x21, x21, 262
	lui x22, 778923
	addi x22, x22, -1364
	lui x23, 245896
	addi x23, x23, 1638
	lui x24, 758998
	addi x24, x24, 1206
	bfle x18, x16, read_object_bfgtelse_b67
read_object_cont_b66:
# B66
	fmul x16, x16, x16
	fmul x25, x16, x21
	fadd x25, x20, x25
	fmul x25, x16, x25
	fadd x25, x19, x25
	fmul x16, x16, x25
	fadd x16, x10, x16
	j read_object_cont_b68 # adhoc jump(2)
read_object_bfgtelse_b67:
# B67
	fsub x16, x17, x16
	fmul x25, x16, x16
	fmul x26, x25, x24
	fadd x26, x23, x26
	fmul x26, x25, x26
	fadd x26, x22, x26
	fmul x25, x25, x26
	fadd x25, x10, x25
	fmul x16, x16, x25
read_object_cont_b68:
# B68
	fle x25, x16, zero
	beq x15, x25, read_object_bneelse_b70
# B69
	mv x15, x16
	j read_object_cont_b71 # adhoc jump(2)
read_object_bneelse_b70:
# B70
	fsub x15, zero, x16
read_object_cont_b71:
# B71
	fle x100, x100, zero
	xori x100, x100, 1
	mv x16, x11
	mv x25, x12
read_object_loop_b72:
# B72
	bfle x16, x25, read_object_bfgtelse_b75
# B73
	fmul x25, x25, x13
	j read_object_loop_b72 # loopback to while entry from B73
read_object_bfgtelse_b75:
# B75
	mv x27, x25
	mv x26, x11
	j	read_object_loop_b76 # jumping over moved block
read_object_bfgtelse_b80:	#moved
# B80
	mv x27, x11
read_object_loop_b76:
# B76
	bfle x12, x26, read_object_bfgtelse_b78
# B81
	fle x11, x14, x26
	bne x11, zero, read_object_beqelse_b83
# B82
	mv x16, x26
	j read_object_cont_b84 # adhoc jump(2)
read_object_beqelse_b83:
# B83
	fsub x16, x26, x14
read_object_cont_b84:
# B84
	xor x100, x11, x100
	bfle x17, x16, read_object_bfgtelse_b86
# B85
	mv x11, x16
	j read_object_cont_b87 # adhoc jump(2)
read_object_bfgtelse_b86:
# B86
	fsub x11, x14, x16
read_object_cont_b87:
# B87
	bfle x18, x11, read_object_bfgtelse_b89
# B88
	fmul x16, x11, x11
	fmul x25, x16, x24
	fadd x25, x23, x25
	fmul x25, x16, x25
	fadd x25, x22, x25
	fmul x16, x16, x25
	fadd x16, x10, x16
	fmul x11, x11, x16
	j read_object_cont_b90 # adhoc jump(2)
read_object_bfgtelse_b89:
# B89
	fsub x11, x17, x11
	fmul x11, x11, x11
	fmul x16, x11, x21
	fadd x16, x20, x16
	fmul x16, x11, x16
	fadd x16, x19, x16
	fmul x11, x11, x16
	fadd x11, x10, x11
read_object_cont_b90:
# B90
	fle x16, x11, zero
	beq x100, x16, read_object_bneelse_b92
# B91
	mv x100, x11
	j read_object_cont_b93 # adhoc jump(2)
read_object_bneelse_b92:
# B92
	fsub x100, zero, x11
read_object_cont_b93:
# B93
	lw x11, 1(x115)
	fabs x16, x11
	mv x25, x16
	mv x26, x12
read_object_loop_b94:
# B94
	bfle x25, x26, read_object_bfgtelse_b97
# B95
	fmul x26, x26, x13
	j read_object_loop_b94 # loopback to while entry from B95
read_object_bfgtelse_b97:
# B97
	mv x27, x16
	mv x28, x26
	j	read_object_loop_b98 # jumping over moved block
read_object_bfgtelse_b102:	#moved
# B102
	mv x28, x25
read_object_loop_b98:
# B98
	bfle x12, x27, read_object_bfgtelse_b100
# B103
	fle x25, x14, x27
	bne x25, zero, read_object_beqelse_b105
# B104
	mv x26, x27
	j read_object_cont_b106 # adhoc jump(2)
read_object_beqelse_b105:
# B105
	fsub x26, x27, x14
read_object_cont_b106:
# B106
	xori x25, x25, 1
	fle x27, x17, x26
	bne x27, zero, read_object_beqelse_b108
	j read_object_cont_b109 # adhoc jump(3)
read_object_beqelse_b108:
# B108
	fsub x26, x14, x26
read_object_cont_b109:
# B109
	xor x25, x27, x25
	bfle x18, x26, read_object_bfgtelse_b111
read_object_cont_b110:
# B110
	fmul x26, x26, x26
	fmul x27, x26, x21
	fadd x27, x20, x27
	fmul x27, x26, x27
	fadd x27, x19, x27
	fmul x26, x26, x27
	fadd x26, x10, x26
	j read_object_cont_b112 # adhoc jump(2)
read_object_bfgtelse_b111:
# B111
	fsub x26, x17, x26
	fmul x27, x26, x26
	fmul x28, x27, x24
	fadd x28, x23, x28
	fmul x28, x27, x28
	fadd x28, x22, x28
	fmul x27, x27, x28
	fadd x27, x10, x27
	fmul x26, x26, x27
read_object_cont_b112:
# B112
	fle x27, x26, zero
	beq x25, x27, read_object_bneelse_b114
# B113
	mv x25, x26
	j read_object_cont_b115 # adhoc jump(2)
read_object_bneelse_b114:
# B114
	fsub x25, zero, x26
read_object_cont_b115:
# B115
	fle x11, x11, zero
	xori x11, x11, 1
	mv x26, x16
	mv x27, x12
read_object_loop_b116:
# B116
	bfle x26, x27, read_object_bfgtelse_b119
# B117
	fmul x27, x27, x13
	j read_object_loop_b116 # loopback to while entry from B117
read_object_bfgtelse_b119:
# B119
	mv x28, x16
	mv x29, x27
	j	read_object_loop_b120 # jumping over moved block
read_object_bfgtelse_b124:	#moved
# B124
	mv x29, x16
read_object_loop_b120:
# B120
	bfle x12, x28, read_object_bfgtelse_b122
# B125
	fle x16, x14, x28
	bne x16, zero, read_object_beqelse_b127
# B126
	mv x26, x28
	j read_object_cont_b128 # adhoc jump(2)
read_object_beqelse_b127:
# B127
	fsub x26, x28, x14
read_object_cont_b128:
# B128
	xor x11, x16, x11
	bfle x17, x26, read_object_bfgtelse_b130
# B129
	mv x16, x26
	j read_object_cont_b131 # adhoc jump(2)
read_object_bfgtelse_b130:
# B130
	fsub x16, x14, x26
read_object_cont_b131:
# B131
	bfle x18, x16, read_object_bfgtelse_b133
# B132
	fmul x26, x16, x16
	fmul x27, x26, x24
	fadd x27, x23, x27
	fmul x27, x26, x27
	fadd x27, x22, x27
	fmul x26, x26, x27
	fadd x26, x10, x26
	fmul x16, x16, x26
	j read_object_cont_b134 # adhoc jump(2)
read_object_bfgtelse_b133:
# B133
	fsub x16, x17, x16
	fmul x16, x16, x16
	fmul x26, x16, x21
	fadd x26, x20, x26
	fmul x26, x16, x26
	fadd x26, x19, x26
	fmul x16, x16, x26
	fadd x16, x10, x16
read_object_cont_b134:
# B134
	fle x26, x16, zero
	beq x11, x26, read_object_bneelse_b136
# B135
	mv x11, x16
	j read_object_cont_b137 # adhoc jump(2)
read_object_bneelse_b136:
# B136
	fsub x11, zero, x16
read_object_cont_b137:
# B137
	lw x16, 2(x115)
	fabs x26, x16
	mv x27, x26
	mv x28, x12
read_object_loop_b138:
# B138
	bfle x27, x28, read_object_bfgtelse_b141
# B139
	fmul x28, x28, x13
	j read_object_loop_b138 # loopback to while entry from B139
read_object_bfgtelse_b141:
# B141
	mv x29, x26
	mv x30, x28
	j	read_object_loop_b142 # jumping over moved block
read_object_bfgtelse_b146:	#moved
# B146
	mv x30, x27
read_object_loop_b142:
# B142
	bfle x12, x29, read_object_bfgtelse_b144
# B147
	fle x27, x14, x29
	bne x27, zero, read_object_beqelse_b149
# B148
	mv x28, x29
	j read_object_cont_b150 # adhoc jump(2)
read_object_beqelse_b149:
# B149
	fsub x28, x29, x14
read_object_cont_b150:
# B150
	xori x27, x27, 1
	fle x29, x17, x28
	bne x29, zero, read_object_beqelse_b152
	j read_object_cont_b153 # adhoc jump(3)
read_object_beqelse_b152:
# B152
	fsub x28, x14, x28
read_object_cont_b153:
# B153
	xor x27, x29, x27
	bfle x18, x28, read_object_bfgtelse_b155
read_object_cont_b154:
# B154
	fmul x28, x28, x28
	fmul x29, x28, x21
	fadd x29, x20, x29
	fmul x29, x28, x29
	fadd x29, x19, x29
	fmul x28, x28, x29
	fadd x28, x10, x28
	j read_object_cont_b156 # adhoc jump(2)
read_object_bfgtelse_b155:
# B155
	fsub x28, x17, x28
	fmul x29, x28, x28
	fmul x30, x29, x24
	fadd x30, x23, x30
	fmul x30, x29, x30
	fadd x30, x22, x30
	fmul x29, x29, x30
	fadd x29, x10, x29
	fmul x28, x28, x29
read_object_cont_b156:
# B156
	fle x29, x28, zero
	beq x27, x29, read_object_bneelse_b158
# B157
	mv x27, x28
	j read_object_cont_b159 # adhoc jump(2)
read_object_bneelse_b158:
# B158
	fsub x27, zero, x28
read_object_cont_b159:
# B159
	fle x16, x16, zero
	xori x16, x16, 1
	mv x28, x26
	mv x29, x12
read_object_loop_b160:
# B160
	bfle x28, x29, read_object_bfgtelse_b163
# B161
	fmul x29, x29, x13
	j read_object_loop_b160 # loopback to while entry from B161
read_object_bfgtelse_b163:
# B163
	mv x30, x26
	mv x31, x29
	j	read_object_loop_b164 # jumping over moved block
read_object_bfgtelse_b168:	#moved
# B168
	mv x31, x26
read_object_loop_b164:
# B164
	bfle x12, x30, read_object_bfgtelse_b166
# B169
	fle x12, x14, x30
	bne x12, zero, read_object_beqelse_b171
# B170
	mv x26, x30
	j read_object_cont_b172 # adhoc jump(2)
read_object_beqelse_b171:
# B171
	fsub x26, x30, x14
read_object_cont_b172:
# B172
	xor x12, x12, x16
	bfle x17, x26, read_object_bfgtelse_b174
# B173
	mv x14, x26
	j read_object_cont_b175 # adhoc jump(2)
read_object_bfgtelse_b174:
# B174
	fsub x14, x14, x26
read_object_cont_b175:
# B175
	bfle x18, x14, read_object_bfgtelse_b177
# B176
	fmul x16, x14, x14
	fmul x17, x16, x24
	fadd x17, x23, x17
	fmul x17, x16, x17
	fadd x17, x22, x17
	fmul x16, x16, x17
	fadd x10, x10, x16
	fmul x10, x14, x10
	j read_object_cont_b178 # adhoc jump(2)
read_object_bfgtelse_b177:
# B177
	fsub x14, x17, x14
	fmul x14, x14, x14
	fmul x16, x14, x21
	fadd x16, x20, x16
	fmul x16, x14, x16
	fadd x16, x19, x16
	fmul x14, x14, x16
	fadd x10, x10, x14
read_object_cont_b178:
# B178
	fle x14, x10, zero
	beq x12, x14, read_object_bneelse_b180
	j read_object_cont_b181 # adhoc jump(3)
read_object_bneelse_b180:
# B180
	fsub x10, zero, x10
read_object_cont_b181:
# B181
	fmul x12, x25, x27
	fmul x14, x100, x11
	fmul x16, x14, x27
	fmul x17, x15, x10
	fsub x16, x16, x17
	fmul x17, x15, x11
	fmul x18, x17, x27
	fmul x19, x100, x10
	fadd x18, x18, x19
	fmul x19, x25, x10
	fmul x14, x14, x10
	fmul x20, x15, x27
	fadd x14, x14, x20
	fmul x10, x17, x10
	fmul x17, x100, x27
	fsub x10, x10, x17
	fsub x11, zero, x11
	fmul x100, x100, x25
	fmul x15, x15, x25
	lw x17, 0(x109)
	lw x20, 1(x109)
	lw x21, 2(x109)
	fmul x22, x12, x12
	fmul x22, x17, x22
	fmul x23, x19, x19
	fmul x23, x20, x23
	fadd x22, x22, x23
	fmul x23, x11, x11
	fmul x23, x21, x23
	fadd x22, x22, x23
	sw x22, 0(x109)
	fmul x22, x16, x16
	fmul x22, x17, x22
	fmul x23, x14, x14
	fmul x23, x20, x23
	fadd x22, x22, x23
	fmul x23, x100, x100
	fmul x23, x21, x23
	fadd x22, x22, x23
	sw x22, 1(x109)
	fmul x22, x18, x18
	fmul x22, x17, x22
	fmul x23, x10, x10
	fmul x23, x20, x23
	fadd x22, x22, x23
	fmul x23, x15, x15
	fmul x23, x21, x23
	fadd x22, x22, x23
	sw x22, 2(x109)
	fmul x22, x17, x16
	fmul x22, x22, x18
	fmul x23, x20, x14
	fmul x23, x23, x10
	fadd x22, x22, x23
	fmul x23, x21, x100
	fmul x23, x23, x15
	fadd x22, x22, x23
	fmul x22, x13, x22
	sw x22, 0(x115)
	fmul x12, x17, x12
	fmul x17, x12, x18
	fmul x18, x20, x19
	fmul x10, x18, x10
	fadd x10, x17, x10
	fmul x11, x21, x11
	fmul x15, x11, x15
	fadd x10, x10, x15
	fmul x10, x13, x10
	sw x10, 1(x115)
	fmul x10, x12, x16
	fmul x12, x18, x14
	fadd x10, x10, x12
	fmul x100, x11, x100
	fadd x10, x10, x100
	fmul x10, x13, x10
	sw x10, 2(x115)
read_object_bneelse_b182:
read_object_cont_b182:
# B182
	mv x100, x10
# B185
	addi x103, x103, 1
	j read_object_loop_b3 # loopback to while entry from B185
read_object_bfgtelse_b166:
# B166
	fdiv x26, x31, x13
	bfle x30, x31, read_object_bfgtelse_b168
# B167
	fsub x30, x30, x31
	mv x31, x26
	j read_object_loop_b164 # loopback to while entry from B167
read_object_bfgtelse_b144:
# B144
	fdiv x27, x30, x13
	bfle x29, x30, read_object_bfgtelse_b146
# B145
	fsub x29, x29, x30
	mv x30, x27
	j read_object_loop_b142 # loopback to while entry from B145
read_object_bfgtelse_b122:
# B122
	fdiv x16, x29, x13
	bfle x28, x29, read_object_bfgtelse_b124
# B123
	fsub x28, x28, x29
	mv x29, x16
	j read_object_loop_b120 # loopback to while entry from B123
read_object_bfgtelse_b100:
# B100
	fdiv x25, x28, x13
	bfle x27, x28, read_object_bfgtelse_b102
# B101
	fsub x27, x27, x28
	mv x28, x25
	j read_object_loop_b98 # loopback to while entry from B101
read_object_bfgtelse_b78:
# B78
	fdiv x11, x27, x13
	bfle x26, x27, read_object_bfgtelse_b80
# B79
	fsub x26, x26, x27
	mv x27, x11
	j read_object_loop_b76 # loopback to while entry from B79
read_object_bfgtelse_b56:
# B56
	fdiv x14, x17, x13
	bfle x16, x17, read_object_bfgtelse_b58
# B57
	fsub x16, x16, x17
	mv x17, x14
	j read_object_loop_b54 # loopback to while entry from B57
read_object_bneelse_b184:
# B184
	sw x103, 0(x102)
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
	ret
read_net_item.2876:
# B186
	sw	x5, 0(x2)
# B187
	in32 x10
	sw	x10, 1(x2)
	li x100, -1
	bne x10, x100, read_net_item_beqelse_b189
# B188
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
read_net_item_beqelse_b189:
# B189
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
# B190
	sw	x5, 0(x2)
# B191
	mv x5, zero
	sw	ra, 1(x2)
	addi	x2, x2, 2
	jal	read_net_item.2876
	addi	x2, x2, -2
	lw	ra, 1(x2)
	sw	x5, 1(x2)
	lw x10, 0(x5)
	li x100, -1
	bne x10, x100, read_or_network_beqelse_b193
# B192
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
read_or_network_beqelse_b193:
# B193
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
# B194
# B195
	li x10, 1
	li x100, 99
	la x11, min_caml_light_dirvec
	la x12, min_caml_intersection_point
	la x13, min_caml_solver_dist
	lui x14, 777421
	addi x14, x14, -819
	mv x15, x5
	mv x16, x6
shadow_check_one_or_matrix_bneelse_b196:
shadow_check_one_or_matrix_loop_b196:
# B196
	lwr x17, x16, x15
	lw x18, 0(x17)
	li x19, -1
	bne x18, x19, shadow_check_one_or_matrix_beqelse_b198
# B197
	mv x5, zero
	ret
shadow_check_one_or_matrix_beqelse_b198:
# B198
	la x20, min_caml_objects
	li x21, 2
	li x22, 3
	lui x23, 260096
	la x24, min_caml_and_net
	lui x25, 779469
	addi x25, x25, -819
	lui x26, 246333
	addi x26, x26, 1802
	la x27, min_caml_light
	bne x18, x100, shadow_check_one_or_matrix_beqelse_b200
# B199
	mv x18, x10
	j shadow_check_one_or_matrix_cont_b332 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b200:
# B200
	lwr x28, x20, x18
	lw x29, 0(x12)
	lw x30, 5(x28)
	lw x30, 0(x30)
	fsub x29, x29, x30
	lw x30, 1(x12)
	lw x31, 5(x28)
	lw x31, 1(x31)
	fsub x30, x30, x31
	lw x31, 2(x12)
	lw x32, 5(x28)
	lw x32, 2(x32)
	fsub x31, x31, x32
	lw x32, 1(x11)
	lwr x18, x32, x18
	lw x32, 1(x28)
	bne x32, x10, shadow_check_one_or_matrix_beqelse_b202
# B201
	lw x32, 0(x11)
	lw x33, 0(x18)
	fsub x33, x33, x29
	lw x34, 1(x18)
	fmul x33, x33, x34
	lw x35, 1(x32)
	fmul x36, x33, x35
	fadd x36, x36, x30
	fabs x36, x36
	lw x37, 4(x28)
	lw x37, 1(x37)
	bfle x37, x36, shadow_check_one_or_matrix_bfgtelse_b208
# B204
	lw x36, 2(x32)
	fmul x36, x33, x36
	fadd x36, x36, x31
	fabs x36, x36
	lw x37, 4(x28)
	lw x37, 2(x37)
	bfle x37, x36, shadow_check_one_or_matrix_bfgtelse_b208
# B206
	feq x34, x34, zero
	xori x34, x34, 1
	mv x36, x34
# B207
	bne x36, zero, shadow_check_one_or_matrix_beqelse_b209
shadow_check_one_or_matrix_bfgtelse_b208:
# B208
	lw x33, 2(x18)
	fsub x33, x33, x30
	lw x34, 3(x18)
	fmul x33, x33, x34
	lw x36, 0(x32)
	fmul x37, x33, x36
	fadd x37, x37, x29
	fabs x37, x37
	lw x38, 4(x28)
	lw x38, 0(x38)
	bfle x38, x37, shadow_check_one_or_matrix_bfgtelse_b215
# B211
	lw x32, 2(x32)
	fmul x32, x33, x32
	fadd x32, x32, x31
	fabs x32, x32
	lw x37, 4(x28)
	lw x37, 2(x37)
	bfle x37, x32, shadow_check_one_or_matrix_bfgtelse_b215
# B213
	feq x32, x34, zero
	xori x32, x32, 1
	mv x34, x32
# B214
	bne x34, zero, shadow_check_one_or_matrix_beqelse_b216
shadow_check_one_or_matrix_bfgtelse_b215:
# B215
	lw x32, 4(x18)
	fsub x31, x32, x31
	lw x18, 5(x18)
	fmul x31, x31, x18
	fmul x32, x31, x36
	fadd x29, x32, x29
	fabs x29, x29
	lw x32, 4(x28)
	lw x32, 0(x32)
	bfle x32, x29, shadow_check_one_or_matrix_bfgtelse_b242
# B218
	fmul x29, x31, x35
	fadd x29, x29, x30
	fabs x29, x29
	lw x28, 4(x28)
	lw x28, 1(x28)
	bfle x28, x29, shadow_check_one_or_matrix_bfgtelse_b242
# B220
	feq x18, x18, zero
	xori x18, x18, 1
	mv x28, x18
# B221
	bne x28, zero, shadow_check_one_or_matrix_beqelse_b223
	j shadow_check_one_or_matrix_cont_b242 # adhoc jump(3)
shadow_check_one_or_matrix_beqelse_b223:
# B223
	sw x31, 0(x13)
	j shadow_check_one_or_matrix_cont_b243 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b216:
# B216
	sw x33, 0(x13)
	mv x18, x21
	j shadow_check_one_or_matrix_cont_b241 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b209:
# B209
	sw x33, 0(x13)
	mv x18, x10
	j shadow_check_one_or_matrix_cont_b241 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b202:
# B202
	bne x32, x21, shadow_check_one_or_matrix_beqelse_b225
# B224
	lw x28, 0(x18)
	bfle zero, x28, shadow_check_one_or_matrix_bfgtelse_b242
# B227
	lw x28, 1(x18)
	fmul x28, x28, x29
	lw x29, 2(x18)
	fmul x29, x29, x30
	fadd x28, x28, x29
	lw x18, 3(x18)
	fmul x18, x18, x31
	fadd x18, x28, x18
	sw x18, 0(x13)
	mv x18, x10
	j shadow_check_one_or_matrix_cont_b241 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b225:
# B225
	lw x32, 0(x18)
	bfeq x32, zero, shadow_check_one_or_matrix_bfneqelse_b242
# B228
	lw x33, 1(x18)
	fmul x33, x33, x29
	lw x34, 2(x18)
	fmul x34, x34, x30
	fadd x33, x33, x34
	lw x34, 3(x18)
	fmul x34, x34, x31
	fadd x33, x33, x34
	fmul x34, x29, x29
	lw x35, 4(x28)
	lw x35, 0(x35)
	fmul x34, x34, x35
	fmul x35, x30, x30
	lw x36, 4(x28)
	lw x36, 1(x36)
	fmul x35, x35, x36
	fadd x34, x34, x35
	fmul x35, x31, x31
	lw x36, 4(x28)
	lw x36, 2(x36)
	fmul x35, x35, x36
	fadd x34, x34, x35
	lw x35, 3(x28)
	bne x35, zero, shadow_check_one_or_matrix_beqelse_b231
# B230
	mv x29, x34
	j shadow_check_one_or_matrix_cont_b232 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b231:
# B231
	fmul x35, x30, x31
	lw x36, 9(x28)
	lw x36, 0(x36)
	fmul x35, x35, x36
	fadd x34, x34, x35
	fmul x31, x31, x29
	lw x35, 9(x28)
	lw x35, 1(x35)
	fmul x31, x31, x35
	fadd x31, x34, x31
	fmul x29, x29, x30
	lw x30, 9(x28)
	lw x30, 2(x30)
	fmul x29, x29, x30
	fadd x29, x31, x29
shadow_check_one_or_matrix_cont_b232:
# B232
	lw x30, 1(x28)
	bne x30, x22, shadow_check_one_or_matrix_beqelse_b235
# B233
	fsub x29, x29, x23
shadow_check_one_or_matrix_beqelse_b235:
# B235
	fmul x30, x33, x33
	fmul x29, x32, x29
	fsub x29, x30, x29
	bfle x29, zero, shadow_check_one_or_matrix_bfgtelse_b242
# B237
	lw x28, 6(x28)
	fsqrt x29, x29
	bne x28, zero, shadow_check_one_or_matrix_beqelse_b239
# B238
	fsub x28, x33, x29
	lw x18, 4(x18)
	fmul x18, x28, x18
	sw x18, 0(x13)
	j shadow_check_one_or_matrix_cont_b240 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b239:
# B239
	fadd x28, x33, x29
	lw x18, 4(x18)
	fmul x18, x28, x18
	sw x18, 0(x13)
shadow_check_one_or_matrix_cont_b240:
# B240
	mv x18, x10
shadow_check_one_or_matrix_cont_b241:
# B241
	bne x18, zero, shadow_check_one_or_matrix_beqelse_b243
shadow_check_one_or_matrix_bfgtelse_b242:
shadow_check_one_or_matrix_bfneqelse_b242:
shadow_check_one_or_matrix_cont_b242:
# B242
	mv x18, zero
	j shadow_check_one_or_matrix_cont_b332 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b243:
shadow_check_one_or_matrix_cont_b243:
# B243
	lw x18, 0(x13)
	bfle x14, x18, shadow_check_one_or_matrix_bfgtelse_b244
# B245
	mv x28, x10
	mv x29, x17
shadow_check_one_or_matrix_loop_b246:
# B246
	lwr x18, x29, x28
	beq x18, x19, shadow_check_one_or_matrix_bneelse_b330
# B248
	lwr x18, x24, x18
	mv x31, x18
	mv x30, zero
shadow_check_one_or_matrix_beqelse_b249:
shadow_check_one_or_matrix_loop_b249:
# B249
	lwr x18, x31, x30
	beq x18, x19, shadow_check_one_or_matrix_bneelse_b327
# B251
	lwr x18, x31, x30
	lwr x32, x20, x18
	lw x33, 0(x12)
	lw x34, 5(x32)
	lw x34, 0(x34)
	fsub x34, x33, x34
	lw x35, 1(x12)
	lw x36, 5(x32)
	lw x36, 1(x36)
	fsub x36, x35, x36
	lw x37, 2(x12)
	lw x38, 5(x32)
	lw x38, 2(x38)
	fsub x38, x37, x38
	lw x39, 1(x11)
	lwr x39, x39, x18
	lw x40, 1(x32)
	bne x40, x10, shadow_check_one_or_matrix_beqelse_b253
# B252
	lw x40, 0(x11)
	lw x5, 0(x39)
	fsub x5, x5, x34
	lw x6, 1(x39)
	fmul x5, x5, x6
	lw x65, 1(x40)
	fmul x66, x5, x65
	fadd x66, x66, x36
	fabs x66, x66
	lw x67, 4(x32)
	lw x67, 1(x67)
	bfle x67, x66, shadow_check_one_or_matrix_bfgtelse_b259
# B255
	lw x66, 2(x40)
	fmul x66, x5, x66
	fadd x66, x66, x38
	fabs x66, x66
	lw x67, 4(x32)
	lw x67, 2(x67)
	bfle x67, x66, shadow_check_one_or_matrix_bfgtelse_b259
# B257
	feq x6, x6, zero
	xori x6, x6, 1
	mv x66, x6
# B258
	bne x66, zero, shadow_check_one_or_matrix_beqelse_b260
shadow_check_one_or_matrix_bfgtelse_b259:
# B259
	lw x5, 2(x39)
	fsub x5, x5, x36
	lw x6, 3(x39)
	fmul x5, x5, x6
	lw x66, 0(x40)
	fmul x67, x5, x66
	fadd x67, x67, x34
	fabs x67, x67
	lw x68, 4(x32)
	lw x68, 0(x68)
	bfle x68, x67, shadow_check_one_or_matrix_bfgtelse_b266
# B262
	lw x40, 2(x40)
	fmul x40, x5, x40
	fadd x40, x40, x38
	fabs x40, x40
	lw x67, 4(x32)
	lw x67, 2(x67)
	bfle x67, x40, shadow_check_one_or_matrix_bfgtelse_b266
# B264
	feq x40, x6, zero
	xori x40, x40, 1
	mv x6, x40
# B265
	bne x6, zero, shadow_check_one_or_matrix_beqelse_b267
shadow_check_one_or_matrix_bfgtelse_b266:
# B266
	lw x40, 4(x39)
	fsub x38, x40, x38
	lw x39, 5(x39)
	fmul x38, x38, x39
	fmul x40, x38, x66
	fadd x34, x40, x34
	fabs x34, x34
	lw x40, 4(x32)
	lw x40, 0(x40)
	bfle x40, x34, shadow_check_one_or_matrix_bfgtelse_b273
# B269
	fmul x34, x38, x65
	fadd x34, x34, x36
	fabs x34, x34
	lw x32, 4(x32)
	lw x32, 1(x32)
	bfle x32, x34, shadow_check_one_or_matrix_bfgtelse_b273
# B271
	feq x32, x39, zero
	xori x32, x32, 1
	mv x34, x32
# B272
	bne x34, zero, shadow_check_one_or_matrix_beqelse_b274
shadow_check_one_or_matrix_bfgtelse_b273:
# B273
	mv x32, zero
	j shadow_check_one_or_matrix_cont_b292 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b274:
# B274
	sw x38, 0(x13)
	mv x32, x22
	j shadow_check_one_or_matrix_cont_b292 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b267:
# B267
	sw x5, 0(x13)
	mv x32, x21
	j shadow_check_one_or_matrix_cont_b292 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b260:
# B260
	sw x5, 0(x13)
	mv x32, x10
	j shadow_check_one_or_matrix_cont_b292 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b253:
# B253
	bne x40, x21, shadow_check_one_or_matrix_beqelse_b276
# B275
	lw x32, 0(x39)
	bfle zero, x32, shadow_check_one_or_matrix_bfgtelse_b277
# B278
	lw x32, 1(x39)
	fmul x32, x32, x34
	lw x34, 2(x39)
	fmul x34, x34, x36
	fadd x32, x32, x34
	lw x34, 3(x39)
	fmul x34, x34, x38
	fadd x32, x32, x34
	sw x32, 0(x13)
	mv x32, x10
	j shadow_check_one_or_matrix_cont_b292 # adhoc jump(2)
shadow_check_one_or_matrix_bfgtelse_b277:
# B277
	mv x32, zero
	j shadow_check_one_or_matrix_cont_b292 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b276:
# B276
	lw x40, 0(x39)
	bfeq x40, zero, shadow_check_one_or_matrix_bfneqelse_b280
# B279
	lw x5, 1(x39)
	fmul x5, x5, x34
	lw x6, 2(x39)
	fmul x6, x6, x36
	fadd x5, x5, x6
	lw x6, 3(x39)
	fmul x6, x6, x38
	fadd x5, x5, x6
	fmul x6, x34, x34
	lw x65, 4(x32)
	lw x65, 0(x65)
	fmul x6, x6, x65
	fmul x65, x36, x36
	lw x66, 4(x32)
	lw x66, 1(x66)
	fmul x65, x65, x66
	fadd x6, x6, x65
	fmul x65, x38, x38
	lw x66, 4(x32)
	lw x66, 2(x66)
	fmul x65, x65, x66
	fadd x6, x6, x65
	lw x65, 3(x32)
	bne x65, zero, shadow_check_one_or_matrix_beqelse_b282
# B281
	mv x34, x6
	j shadow_check_one_or_matrix_cont_b283 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b282:
# B282
	fmul x65, x36, x38
	lw x66, 9(x32)
	lw x66, 0(x66)
	fmul x65, x65, x66
	fadd x6, x6, x65
	fmul x38, x38, x34
	lw x65, 9(x32)
	lw x65, 1(x65)
	fmul x38, x38, x65
	fadd x38, x6, x38
	fmul x34, x34, x36
	lw x36, 9(x32)
	lw x36, 2(x36)
	fmul x34, x34, x36
	fadd x34, x38, x34
shadow_check_one_or_matrix_cont_b283:
# B283
	lw x36, 1(x32)
	bne x36, x22, shadow_check_one_or_matrix_beqelse_b286
# B284
	fsub x34, x34, x23
shadow_check_one_or_matrix_beqelse_b286:
# B286
	fmul x36, x5, x5
	fmul x34, x40, x34
	fsub x34, x36, x34
	bfle x34, zero, shadow_check_one_or_matrix_bfgtelse_b287
# B288
	lw x32, 6(x32)
	fsqrt x34, x34
	bne x32, zero, shadow_check_one_or_matrix_beqelse_b290
# B289
	fsub x32, x5, x34
	lw x34, 4(x39)
	fmul x32, x32, x34
	sw x32, 0(x13)
	j shadow_check_one_or_matrix_cont_b291 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b290:
# B290
	fadd x32, x5, x34
	lw x34, 4(x39)
	fmul x32, x32, x34
	sw x32, 0(x13)
shadow_check_one_or_matrix_cont_b291:
# B291
	mv x32, x10
	j shadow_check_one_or_matrix_cont_b292 # adhoc jump(2)
shadow_check_one_or_matrix_bfgtelse_b287:
# B287
	mv x32, zero
	j shadow_check_one_or_matrix_cont_b292 # adhoc jump(2)
shadow_check_one_or_matrix_bfneqelse_b280:
# B280
	mv x32, zero
shadow_check_one_or_matrix_cont_b292:
# B292
	lw x34, 0(x13)
	bne x32, zero, shadow_check_one_or_matrix_beqelse_b294
# B293
	mv x32, zero
	j shadow_check_one_or_matrix_cont_b295 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b294:
# B294
	fle x32, x25, x34
	xori x32, x32, 1
shadow_check_one_or_matrix_cont_b295:
# B295
	addi x30, x30, 1
	bne x32, zero, shadow_check_one_or_matrix_beqelse_b297
# B296
	lwr x18, x20, x18
	lw x18, 6(x18)
	beq x18, zero, shadow_check_one_or_matrix_bneelse_b327
	j	shadow_check_one_or_matrix_beqelse_b249 # moved need extra jump for 249 at B296
shadow_check_one_or_matrix_beqelse_b297:
# B297
	fadd x18, x34, x26
	lw x32, 0(x27)
	fmul x32, x32, x18
	fadd x32, x32, x33
	lw x33, 1(x27)
	fmul x33, x33, x18
	fadd x33, x33, x35
	lw x34, 2(x27)
	fmul x18, x34, x18
	fadd x18, x18, x37
	mv x37, x33
	mv x35, x31
	mv x38, x18
	mv x34, zero
	mv x36, x32
	j	shadow_check_one_or_matrix_loop_b300 # jumping over moved block
shadow_check_one_or_matrix_bneelse_b321:	#moved
# B321
	addi x34, x34, 1
shadow_check_one_or_matrix_loop_b300:
# B300
	lwr x18, x35, x34
	bne x18, x19, shadow_check_one_or_matrix_beqelse_b302
# B301
	mv x32, x10
# B323
	bne x32, zero, shadow_check_one_or_matrix_beqelse_b325
	j	shadow_check_one_or_matrix_beqelse_b249 # moved need extra jump for 249 at B323
shadow_check_one_or_matrix_beqelse_b325:
# B325
	mv x18, x10
shadow_check_one_or_matrix_cont_b326:
# B326
	bne x18, zero, shadow_check_one_or_matrix_beqelse_b328
shadow_check_one_or_matrix_bneelse_b327:
shadow_check_one_or_matrix_cont_b327:
# B327
	addi x28, x28, 1
	j shadow_check_one_or_matrix_loop_b246 # loopback to while entry from B327
shadow_check_one_or_matrix_beqelse_b328:
# B328
	mv x30, x10
# B329
	bne x30, zero, shadow_check_one_or_matrix_beqelse_b331
shadow_check_one_or_matrix_bneelse_b330:
# B330
	mv x18, zero
	j shadow_check_one_or_matrix_cont_b332 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b331:
# B331
	mv x18, x10
	j shadow_check_one_or_matrix_cont_b332 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b302:
# B302
	lwr x18, x20, x18
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
	bne x40, x10, shadow_check_one_or_matrix_beqelse_b304
# B303
	fabs x32, x32
	lw x40, 4(x18)
	lw x40, 0(x40)
	bfle x40, x32, shadow_check_one_or_matrix_bfgtelse_b310
# B306
	fabs x32, x33
	lw x33, 4(x18)
	lw x33, 1(x33)
	bfle x33, x32, shadow_check_one_or_matrix_bfgtelse_b310
# B308
	fabs x32, x39
	lw x33, 4(x18)
	lw x33, 2(x33)
	fle x32, x33, x32
	xori x32, x32, 1
	mv x33, x32
# B309
	bne x33, zero, shadow_check_one_or_matrix_beqelse_b311
shadow_check_one_or_matrix_bfgtelse_b310:
# B310
	lw x18, 6(x18)
	xori x18, x18, 1
	j shadow_check_one_or_matrix_cont_b320 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b311:
# B311
	lw x18, 6(x18)
	j shadow_check_one_or_matrix_cont_b320 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b304:
# B304
	bne x40, x21, shadow_check_one_or_matrix_beqelse_b313
# B312
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
	xor x18, x18, x32
	xori x18, x18, 1
	j shadow_check_one_or_matrix_cont_b320 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b313:
# B313
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
	bne x5, zero, shadow_check_one_or_matrix_beqelse_b315
# B314
	mv x32, x40
	j shadow_check_one_or_matrix_cont_b316 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b315:
# B315
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
shadow_check_one_or_matrix_cont_b316:
# B316
	lw x33, 1(x18)
	bne x33, x22, shadow_check_one_or_matrix_beqelse_b319
# B317
	fsub x32, x32, x23
shadow_check_one_or_matrix_beqelse_b319:
# B319
	lw x18, 6(x18)
	fle x32, zero, x32
	xori x32, x32, 1
	xor x18, x18, x32
	xori x18, x18, 1
shadow_check_one_or_matrix_cont_b320:
# B320
	beq x18, zero, shadow_check_one_or_matrix_bneelse_b321
	j	shadow_check_one_or_matrix_beqelse_b249 # moved need extra jump for 249 at B320
shadow_check_one_or_matrix_bfgtelse_b244:
# B244
	mv x18, zero
shadow_check_one_or_matrix_cont_b332:
# B332
	addi x15, x15, 1
	bne x18, zero, shadow_check_one_or_matrix_beqelse_b334
	j	shadow_check_one_or_matrix_bneelse_b196 # moved need extra jump for 196 at B332
shadow_check_one_or_matrix_beqelse_b334:
# B334
	mv x28, x10
	mv x29, x17
shadow_check_one_or_matrix_cont_b335:
shadow_check_one_or_matrix_loop_b335:
# B335
	lwr x17, x29, x28
	beq x17, x19, shadow_check_one_or_matrix_bneelse_b196
# B337
	lwr x17, x24, x17
	mv x30, x17
	mv x18, zero
shadow_check_one_or_matrix_beqelse_b338:
shadow_check_one_or_matrix_loop_b338:
# B338
	lwr x17, x30, x18
	beq x17, x19, shadow_check_one_or_matrix_bneelse_b416
# B340
	lwr x17, x30, x18
	lwr x31, x20, x17
	lw x32, 0(x12)
	lw x33, 5(x31)
	lw x33, 0(x33)
	fsub x33, x32, x33
	lw x34, 1(x12)
	lw x35, 5(x31)
	lw x35, 1(x35)
	fsub x35, x34, x35
	lw x36, 2(x12)
	lw x37, 5(x31)
	lw x37, 2(x37)
	fsub x37, x36, x37
	lw x38, 1(x11)
	lwr x38, x38, x17
	lw x39, 1(x31)
	bne x39, x10, shadow_check_one_or_matrix_beqelse_b342
# B341
	lw x39, 0(x11)
	lw x40, 0(x38)
	fsub x40, x40, x33
	lw x5, 1(x38)
	fmul x40, x40, x5
	lw x6, 1(x39)
	fmul x65, x40, x6
	fadd x65, x65, x35
	fabs x65, x65
	lw x66, 4(x31)
	lw x66, 1(x66)
	bfle x66, x65, shadow_check_one_or_matrix_bfgtelse_b348
# B344
	lw x65, 2(x39)
	fmul x65, x40, x65
	fadd x65, x65, x37
	fabs x65, x65
	lw x66, 4(x31)
	lw x66, 2(x66)
	bfle x66, x65, shadow_check_one_or_matrix_bfgtelse_b348
# B346
	feq x5, x5, zero
	xori x5, x5, 1
	mv x65, x5
# B347
	bne x65, zero, shadow_check_one_or_matrix_beqelse_b349
shadow_check_one_or_matrix_bfgtelse_b348:
# B348
	lw x40, 2(x38)
	fsub x40, x40, x35
	lw x5, 3(x38)
	fmul x40, x40, x5
	lw x65, 0(x39)
	fmul x66, x40, x65
	fadd x66, x66, x33
	fabs x66, x66
	lw x67, 4(x31)
	lw x67, 0(x67)
	bfle x67, x66, shadow_check_one_or_matrix_bfgtelse_b355
# B351
	lw x39, 2(x39)
	fmul x39, x40, x39
	fadd x39, x39, x37
	fabs x39, x39
	lw x66, 4(x31)
	lw x66, 2(x66)
	bfle x66, x39, shadow_check_one_or_matrix_bfgtelse_b355
# B353
	feq x39, x5, zero
	xori x39, x39, 1
	mv x5, x39
# B354
	bne x5, zero, shadow_check_one_or_matrix_beqelse_b356
shadow_check_one_or_matrix_bfgtelse_b355:
# B355
	lw x39, 4(x38)
	fsub x37, x39, x37
	lw x38, 5(x38)
	fmul x37, x37, x38
	fmul x39, x37, x65
	fadd x33, x39, x33
	fabs x33, x33
	lw x39, 4(x31)
	lw x39, 0(x39)
	bfle x39, x33, shadow_check_one_or_matrix_bfgtelse_b362
# B358
	fmul x33, x37, x6
	fadd x33, x33, x35
	fabs x33, x33
	lw x31, 4(x31)
	lw x31, 1(x31)
	bfle x31, x33, shadow_check_one_or_matrix_bfgtelse_b362
# B360
	feq x31, x38, zero
	xori x31, x31, 1
	mv x33, x31
# B361
	bne x33, zero, shadow_check_one_or_matrix_beqelse_b363
shadow_check_one_or_matrix_bfgtelse_b362:
# B362
	mv x31, zero
	j shadow_check_one_or_matrix_cont_b381 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b363:
# B363
	sw x37, 0(x13)
	mv x31, x22
	j shadow_check_one_or_matrix_cont_b381 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b356:
# B356
	sw x40, 0(x13)
	mv x31, x21
	j shadow_check_one_or_matrix_cont_b381 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b349:
# B349
	sw x40, 0(x13)
	mv x31, x10
	j shadow_check_one_or_matrix_cont_b381 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b342:
# B342
	bne x39, x21, shadow_check_one_or_matrix_beqelse_b365
# B364
	lw x31, 0(x38)
	bfle zero, x31, shadow_check_one_or_matrix_bfgtelse_b366
# B367
	lw x31, 1(x38)
	fmul x31, x31, x33
	lw x33, 2(x38)
	fmul x33, x33, x35
	fadd x31, x31, x33
	lw x33, 3(x38)
	fmul x33, x33, x37
	fadd x31, x31, x33
	sw x31, 0(x13)
	mv x31, x10
	j shadow_check_one_or_matrix_cont_b381 # adhoc jump(2)
shadow_check_one_or_matrix_bfgtelse_b366:
# B366
	mv x31, zero
	j shadow_check_one_or_matrix_cont_b381 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b365:
# B365
	lw x39, 0(x38)
	bfeq x39, zero, shadow_check_one_or_matrix_bfneqelse_b369
# B368
	lw x40, 1(x38)
	fmul x40, x40, x33
	lw x5, 2(x38)
	fmul x5, x5, x35
	fadd x40, x40, x5
	lw x5, 3(x38)
	fmul x5, x5, x37
	fadd x40, x40, x5
	fmul x5, x33, x33
	lw x6, 4(x31)
	lw x6, 0(x6)
	fmul x5, x5, x6
	fmul x6, x35, x35
	lw x65, 4(x31)
	lw x65, 1(x65)
	fmul x6, x6, x65
	fadd x5, x5, x6
	fmul x6, x37, x37
	lw x65, 4(x31)
	lw x65, 2(x65)
	fmul x6, x6, x65
	fadd x5, x5, x6
	lw x6, 3(x31)
	bne x6, zero, shadow_check_one_or_matrix_beqelse_b371
# B370
	mv x33, x5
	j shadow_check_one_or_matrix_cont_b372 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b371:
# B371
	fmul x6, x35, x37
	lw x65, 9(x31)
	lw x65, 0(x65)
	fmul x6, x6, x65
	fadd x5, x5, x6
	fmul x37, x37, x33
	lw x6, 9(x31)
	lw x6, 1(x6)
	fmul x37, x37, x6
	fadd x37, x5, x37
	fmul x33, x33, x35
	lw x35, 9(x31)
	lw x35, 2(x35)
	fmul x33, x33, x35
	fadd x33, x37, x33
shadow_check_one_or_matrix_cont_b372:
# B372
	lw x35, 1(x31)
	bne x35, x22, shadow_check_one_or_matrix_beqelse_b375
# B373
	fsub x33, x33, x23
shadow_check_one_or_matrix_beqelse_b375:
# B375
	fmul x35, x40, x40
	fmul x33, x39, x33
	fsub x33, x35, x33
	bfle x33, zero, shadow_check_one_or_matrix_bfgtelse_b376
# B377
	lw x31, 6(x31)
	fsqrt x33, x33
	bne x31, zero, shadow_check_one_or_matrix_beqelse_b379
# B378
	fsub x31, x40, x33
	lw x33, 4(x38)
	fmul x31, x31, x33
	sw x31, 0(x13)
	j shadow_check_one_or_matrix_cont_b380 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b379:
# B379
	fadd x31, x40, x33
	lw x33, 4(x38)
	fmul x31, x31, x33
	sw x31, 0(x13)
shadow_check_one_or_matrix_cont_b380:
# B380
	mv x31, x10
	j shadow_check_one_or_matrix_cont_b381 # adhoc jump(2)
shadow_check_one_or_matrix_bfgtelse_b376:
# B376
	mv x31, zero
	j shadow_check_one_or_matrix_cont_b381 # adhoc jump(2)
shadow_check_one_or_matrix_bfneqelse_b369:
# B369
	mv x31, zero
shadow_check_one_or_matrix_cont_b381:
# B381
	lw x33, 0(x13)
	bne x31, zero, shadow_check_one_or_matrix_beqelse_b383
# B382
	mv x31, zero
	j shadow_check_one_or_matrix_cont_b384 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b383:
# B383
	fle x31, x25, x33
	xori x31, x31, 1
shadow_check_one_or_matrix_cont_b384:
# B384
	addi x18, x18, 1
	bne x31, zero, shadow_check_one_or_matrix_beqelse_b386
# B385
	lwr x17, x20, x17
	lw x17, 6(x17)
	beq x17, zero, shadow_check_one_or_matrix_bneelse_b416
	j	shadow_check_one_or_matrix_beqelse_b338 # moved need extra jump for 338 at B385
shadow_check_one_or_matrix_beqelse_b386:
# B386
	fadd x17, x33, x26
	lw x31, 0(x27)
	fmul x31, x31, x17
	fadd x31, x31, x32
	lw x32, 1(x27)
	fmul x32, x32, x17
	fadd x32, x32, x34
	lw x33, 2(x27)
	fmul x17, x33, x17
	fadd x17, x17, x36
	mv x37, x17
	mv x35, x31
	mv x34, x30
	mv x33, zero
	mv x36, x32
	j	shadow_check_one_or_matrix_loop_b389 # jumping over moved block
shadow_check_one_or_matrix_bneelse_b410:	#moved
# B410
	addi x33, x33, 1
shadow_check_one_or_matrix_loop_b389:
# B389
	lwr x17, x34, x33
	bne x17, x19, shadow_check_one_or_matrix_beqelse_b391
# B390
	mv x31, x10
# B412
	bne x31, zero, shadow_check_one_or_matrix_beqelse_b414
	j	shadow_check_one_or_matrix_beqelse_b338 # moved need extra jump for 338 at B412
shadow_check_one_or_matrix_beqelse_b414:
# B414
	mv x17, x10
shadow_check_one_or_matrix_cont_b415:
# B415
	bne x17, zero, shadow_check_one_or_matrix_beqelse_b417
shadow_check_one_or_matrix_bneelse_b416:
shadow_check_one_or_matrix_cont_b416:
# B416
	addi x28, x28, 1
	j shadow_check_one_or_matrix_loop_b335 # loopback to while entry from B416
shadow_check_one_or_matrix_beqelse_b417:
# B417
	mv x18, x10
# B418
	bne x18, zero, shadow_check_one_or_matrix_beqelse_b420
	j	shadow_check_one_or_matrix_bneelse_b196 # moved need extra jump for 196 at B418
shadow_check_one_or_matrix_beqelse_b420:
# B420
	mv x5, x10
	ret
shadow_check_one_or_matrix_beqelse_b391:
# B391
	lwr x17, x20, x17
	lw x31, 5(x17)
	lw x31, 0(x31)
	fsub x31, x35, x31
	lw x32, 5(x17)
	lw x32, 1(x32)
	fsub x32, x36, x32
	lw x38, 5(x17)
	lw x38, 2(x38)
	fsub x38, x37, x38
	lw x39, 1(x17)
	bne x39, x10, shadow_check_one_or_matrix_beqelse_b393
# B392
	fabs x31, x31
	lw x39, 4(x17)
	lw x39, 0(x39)
	bfle x39, x31, shadow_check_one_or_matrix_bfgtelse_b399
# B395
	fabs x31, x32
	lw x32, 4(x17)
	lw x32, 1(x32)
	bfle x32, x31, shadow_check_one_or_matrix_bfgtelse_b399
# B397
	fabs x31, x38
	lw x32, 4(x17)
	lw x32, 2(x32)
	fle x31, x32, x31
	xori x31, x31, 1
	mv x32, x31
# B398
	bne x32, zero, shadow_check_one_or_matrix_beqelse_b400
shadow_check_one_or_matrix_bfgtelse_b399:
# B399
	lw x17, 6(x17)
	xori x17, x17, 1
	j shadow_check_one_or_matrix_cont_b409 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b400:
# B400
	lw x17, 6(x17)
	j shadow_check_one_or_matrix_cont_b409 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b393:
# B393
	bne x39, x21, shadow_check_one_or_matrix_beqelse_b402
# B401
	lw x39, 4(x17)
	lw x40, 0(x39)
	fmul x31, x40, x31
	lw x40, 1(x39)
	fmul x32, x40, x32
	fadd x31, x31, x32
	lw x32, 2(x39)
	fmul x32, x32, x38
	fadd x31, x31, x32
	lw x17, 6(x17)
	fle x31, zero, x31
	xori x31, x31, 1
	xor x17, x17, x31
	xori x17, x17, 1
	j shadow_check_one_or_matrix_cont_b409 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b402:
# B402
	fmul x39, x31, x31
	lw x40, 4(x17)
	lw x40, 0(x40)
	fmul x39, x39, x40
	fmul x40, x32, x32
	lw x5, 4(x17)
	lw x5, 1(x5)
	fmul x40, x40, x5
	fadd x39, x39, x40
	fmul x40, x38, x38
	lw x5, 4(x17)
	lw x5, 2(x5)
	fmul x40, x40, x5
	fadd x39, x39, x40
	lw x40, 3(x17)
	bne x40, zero, shadow_check_one_or_matrix_beqelse_b404
# B403
	mv x31, x39
	j shadow_check_one_or_matrix_cont_b405 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b404:
# B404
	fmul x40, x32, x38
	lw x5, 9(x17)
	lw x5, 0(x5)
	fmul x40, x40, x5
	fadd x39, x39, x40
	fmul x38, x38, x31
	lw x40, 9(x17)
	lw x40, 1(x40)
	fmul x38, x38, x40
	fadd x38, x39, x38
	fmul x31, x31, x32
	lw x32, 9(x17)
	lw x32, 2(x32)
	fmul x31, x31, x32
	fadd x31, x38, x31
shadow_check_one_or_matrix_cont_b405:
# B405
	lw x32, 1(x17)
	bne x32, x22, shadow_check_one_or_matrix_beqelse_b408
# B406
	fsub x31, x31, x23
shadow_check_one_or_matrix_beqelse_b408:
# B408
	lw x17, 6(x17)
	fle x31, zero, x31
	xori x31, x31, 1
	xor x17, x17, x31
	xori x17, x17, 1
shadow_check_one_or_matrix_cont_b409:
# B409
	beq x17, zero, shadow_check_one_or_matrix_bneelse_b410
	j	shadow_check_one_or_matrix_beqelse_b338 # moved need extra jump for 338 at B409
solve_each_element.3022:
# B421
# B422
	li x10, 1
	la x100, min_caml_startp
	la x11, min_caml_objects
	la x12, min_caml_solver_dist
	la x13, min_caml_tmin
	lui x14, 246333
	addi x14, x14, 1802
	li x15, 2
	la x16, min_caml_intersection_point
	la x17, min_caml_intersected_object_id
	la x18, min_caml_intsec_rectside
	mv x21, x7
	mv x20, x6
	mv x19, x5
	j	solve_each_element_loop_b423 # jumping over moved block
solve_each_element_beqelse_b521:	#moved
# B521
	sw x26, 0(x13)
	sw x25, 0(x16)
	sw x27, 1(x16)
	sw x28, 2(x16)
	sw x22, 0(x17)
	sw x24, 0(x18)
solve_each_element_beqelse_b423:
solve_each_element_bfgtelse_b423:
solve_each_element_loop_b423:
# B423
	lwr x22, x20, x19
	li x23, -1
	bne x22, x23, solve_each_element_beqelse_b425
# B424
	ret
solve_each_element_beqelse_b425:
# B425
	lwr x24, x11, x22
	lw x25, 0(x100)
	lw x26, 5(x24)
	lw x26, 0(x26)
	fsub x26, x25, x26
	lw x27, 1(x100)
	lw x28, 5(x24)
	lw x28, 1(x28)
	fsub x28, x27, x28
	lw x29, 2(x100)
	lw x30, 5(x24)
	lw x30, 2(x30)
	fsub x30, x29, x30
	lw x31, 1(x24)
	li x32, 3
	lui x33, 260096
	bne x31, x10, solve_each_element_beqelse_b427
# B426
	lw x31, 0(x21)
	bfeq x31, zero, solve_each_element_bfneqelse_b438
# B428
	lw x34, 4(x24)
	lw x35, 6(x24)
	fle x36, zero, x31
	xori x36, x36, 1
	xor x35, x35, x36
	lw x36, 0(x34)
	bne x35, zero, solve_each_element_beqelse_b431
# B430
	fsub x35, zero, x36
	j solve_each_element_cont_b432 # adhoc jump(2)
solve_each_element_beqelse_b431:
# B431
	mv x35, x36
solve_each_element_cont_b432:
# B432
	fsub x35, x35, x26
	fdiv x35, x35, x31
	lw x36, 1(x21)
	fmul x36, x35, x36
	fadd x36, x36, x28
	fabs x36, x36
	lw x37, 1(x34)
	bfle x37, x36, solve_each_element_bfgtelse_b438
# B434
	lw x36, 2(x21)
	fmul x36, x35, x36
	fadd x36, x36, x30
	fabs x36, x36
	lw x34, 2(x34)
	bfle x34, x36, solve_each_element_bfgtelse_b438
# B436
	sw x35, 0(x12)
	mv x37, x10
# B437
	bne x37, zero, solve_each_element_beqelse_b439
solve_each_element_bfgtelse_b438:
solve_each_element_bfneqelse_b438:
# B438
	lw x34, 1(x21)
	bfeq x34, zero, solve_each_element_bfneqelse_b450
# B440
	lw x35, 4(x24)
	lw x36, 6(x24)
	fle x37, zero, x34
	xori x37, x37, 1
	xor x36, x36, x37
	lw x37, 1(x35)
	bne x36, zero, solve_each_element_beqelse_b443
# B442
	fsub x36, zero, x37
	j solve_each_element_cont_b444 # adhoc jump(2)
solve_each_element_beqelse_b443:
# B443
	mv x36, x37
solve_each_element_cont_b444:
# B444
	fsub x36, x36, x28
	fdiv x36, x36, x34
	lw x37, 2(x21)
	fmul x37, x36, x37
	fadd x37, x37, x30
	fabs x37, x37
	lw x38, 2(x35)
	bfle x38, x37, solve_each_element_bfgtelse_b450
# B446
	fmul x37, x36, x31
	fadd x37, x37, x26
	fabs x37, x37
	lw x35, 0(x35)
	bfle x35, x37, solve_each_element_bfgtelse_b450
# B448
	sw x36, 0(x12)
	mv x38, x10
# B449
	bne x38, zero, solve_each_element_beqelse_b451
solve_each_element_bfgtelse_b450:
solve_each_element_bfneqelse_b450:
# B450
	lw x35, 2(x21)
	bfeq x35, zero, solve_each_element_bfneqelse_b462
# B452
	lw x36, 4(x24)
	lw x24, 6(x24)
	fle x37, zero, x35
	xori x37, x37, 1
	xor x24, x24, x37
	lw x37, 2(x36)
	bne x24, zero, solve_each_element_beqelse_b455
# B454
	fsub x24, zero, x37
	j solve_each_element_cont_b456 # adhoc jump(2)
solve_each_element_beqelse_b455:
# B455
	mv x24, x37
solve_each_element_cont_b456:
# B456
	fsub x24, x24, x30
	fdiv x24, x24, x35
	fmul x30, x24, x31
	fadd x26, x30, x26
	fabs x26, x26
	lw x30, 0(x36)
	bfle x30, x26, solve_each_element_bfgtelse_b462
# B458
	fmul x26, x24, x34
	fadd x26, x26, x28
	fabs x26, x26
	lw x28, 1(x36)
	bfle x28, x26, solve_each_element_bfgtelse_b462
# B460
	sw x24, 0(x12)
	mv x30, x10
# B461
	bne x30, zero, solve_each_element_beqelse_b463
solve_each_element_bfgtelse_b462:
solve_each_element_bfneqelse_b462:
# B462
	mv x24, zero
	j solve_each_element_cont_b487 # adhoc jump(2)
solve_each_element_beqelse_b463:
# B463
	li x24, 3
	addi x19, x19, 1
	j solve_each_element_cont_b489 # adhoc jump(2)
solve_each_element_beqelse_b451:
# B451
	mv x24, x15
	j solve_each_element_cont_b487 # adhoc jump(2)
solve_each_element_beqelse_b439:
# B439
	mv x24, x10
	j solve_each_element_cont_b487 # adhoc jump(2)
solve_each_element_beqelse_b427:
# B427
	bne x31, x15, solve_each_element_beqelse_b465
# B464
	lw x24, 4(x24)
	lw x31, 0(x21)
	lw x34, 0(x24)
	fmul x31, x31, x34
	lw x34, 1(x21)
	lw x35, 1(x24)
	fmul x34, x34, x35
	fadd x31, x31, x34
	lw x34, 2(x21)
	lw x35, 2(x24)
	fmul x34, x34, x35
	fadd x31, x31, x34
	bfle x31, zero, solve_each_element_bfgtelse_b466
# B467
	lw x34, 0(x24)
	fmul x26, x34, x26
	lw x34, 1(x24)
	fmul x28, x34, x28
	fadd x26, x26, x28
	lw x24, 2(x24)
	fmul x24, x24, x30
	fadd x24, x26, x24
	fsub x24, zero, x24
	fdiv x24, x24, x31
	sw x24, 0(x12)
	mv x24, x10
	j solve_each_element_cont_b487 # adhoc jump(2)
solve_each_element_bfgtelse_b466:
# B466
	mv x24, zero
	j solve_each_element_cont_b487 # adhoc jump(2)
solve_each_element_beqelse_b465:
# B465
	lw x31, 0(x21)
	lw x34, 1(x21)
	lw x35, 2(x21)
	fmul x36, x31, x31
	lw x37, 4(x24)
	lw x37, 0(x37)
	fmul x36, x36, x37
	fmul x38, x34, x34
	lw x39, 4(x24)
	lw x39, 1(x39)
	fmul x38, x38, x39
	fadd x36, x36, x38
	fmul x38, x35, x35
	lw x40, 4(x24)
	lw x40, 2(x40)
	fmul x38, x38, x40
	fadd x36, x36, x38
	lw x38, 3(x24)
	bne x38, zero, solve_each_element_beqelse_b469
	j solve_each_element_cont_b470 # adhoc jump(3)
solve_each_element_beqelse_b469:
# B469
	fmul x5, x34, x35
	lw x6, 9(x24)
	lw x6, 0(x6)
	fmul x5, x5, x6
	fadd x36, x36, x5
	fmul x5, x35, x31
	lw x6, 9(x24)
	lw x6, 1(x6)
	fmul x5, x5, x6
	fadd x36, x36, x5
	fmul x5, x31, x34
	lw x6, 9(x24)
	lw x6, 2(x6)
	fmul x5, x5, x6
	fadd x36, x36, x5
solve_each_element_cont_b470:
# B470
	bfeq x36, zero, solve_each_element_bfneqelse_b472
solve_each_element_cont_b471:
# B471
	fmul x5, x31, x26
	fmul x5, x5, x37
	fmul x6, x34, x28
	fmul x6, x6, x39
	fadd x5, x5, x6
	fmul x6, x35, x30
	fmul x6, x6, x40
	fadd x5, x5, x6
	bne x38, zero, solve_each_element_beqelse_b474
# B473
	mv x31, x5
	j solve_each_element_cont_b475 # adhoc jump(2)
solve_each_element_beqelse_b474:
# B474
	fmul x6, x35, x28
	fmul x65, x34, x30
	fadd x6, x6, x65
	lw x65, 9(x24)
	lw x65, 0(x65)
	fmul x6, x6, x65
	fmul x65, x31, x30
	fmul x35, x35, x26
	fadd x35, x65, x35
	lw x65, 9(x24)
	lw x65, 1(x65)
	fmul x35, x35, x65
	fadd x35, x6, x35
	fmul x31, x31, x28
	fmul x34, x34, x26
	fadd x31, x31, x34
	lw x34, 9(x24)
	lw x34, 2(x34)
	fmul x31, x31, x34
	fadd x31, x35, x31
	lui x34, 258048
	fmul x31, x31, x34
	fadd x31, x5, x31
solve_each_element_cont_b475:
# B475
	fmul x34, x26, x26
	fmul x34, x34, x37
	fmul x35, x28, x28
	fmul x35, x35, x39
	fadd x34, x34, x35
	fmul x35, x30, x30
	fmul x35, x35, x40
	fadd x34, x34, x35
	bne x38, zero, solve_each_element_beqelse_b477
# B476
	mv x26, x34
	j solve_each_element_cont_b478 # adhoc jump(2)
solve_each_element_beqelse_b477:
# B477
	fmul x35, x28, x30
	lw x37, 9(x24)
	lw x37, 0(x37)
	fmul x35, x35, x37
	fadd x34, x34, x35
	fmul x30, x30, x26
	lw x35, 9(x24)
	lw x35, 1(x35)
	fmul x30, x30, x35
	fadd x30, x34, x30
	fmul x26, x26, x28
	lw x28, 9(x24)
	lw x28, 2(x28)
	fmul x26, x26, x28
	fadd x26, x30, x26
solve_each_element_cont_b478:
# B478
	lw x28, 1(x24)
	bne x28, x32, solve_each_element_beqelse_b481
# B479
	fsub x26, x26, x33
solve_each_element_beqelse_b481:
# B481
	fmul x28, x31, x31
	fmul x26, x36, x26
	fsub x26, x28, x26
	bfle x26, zero, solve_each_element_bfgtelse_b482
# B483
	fsqrt x26, x26
	lw x24, 6(x24)
	bne x24, zero, solve_each_element_beqelse_b485
# B484
	fsub x24, zero, x26
	j solve_each_element_cont_b486 # adhoc jump(2)
solve_each_element_beqelse_b485:
# B485
	mv x24, x26
solve_each_element_cont_b486:
# B486
	fsub x24, x24, x31
	fdiv x24, x24, x36
	sw x24, 0(x12)
	mv x24, x10
	j solve_each_element_cont_b487 # adhoc jump(2)
solve_each_element_bfgtelse_b482:
# B482
	mv x24, zero
	j solve_each_element_cont_b487 # adhoc jump(2)
solve_each_element_bfneqelse_b472:
# B472
	mv x24, zero
solve_each_element_cont_b487:
# B487
	addi x19, x19, 1
	bne x24, zero, solve_each_element_beqelse_b489
# B488
	lwr x22, x11, x22
	lw x22, 6(x22)
	bne x22, zero, solve_each_element_beqelse_b423
# B490
	ret
solve_each_element_beqelse_b489:
solve_each_element_cont_b489:
# B489
	lw x26, 0(x12)
	bfle x26, zero, solve_each_element_bfgtelse_b423
# B493
	lw x28, 0(x13)
	bfle x28, x26, solve_each_element_bfgtelse_b423
# B495
	fadd x26, x26, x14
	lw x28, 0(x21)
	fmul x28, x28, x26
	fadd x25, x28, x25
	lw x28, 1(x21)
	fmul x28, x28, x26
	fadd x27, x28, x27
	lw x28, 2(x21)
	fmul x28, x28, x26
	fadd x28, x28, x29
	mv x34, x27
	mv x31, x25
	mv x35, x28
	mv x30, x20
	mv x29, zero
	j	solve_each_element_loop_b496 # jumping over moved block
solve_each_element_bneelse_b517:	#moved
# B517
	addi x29, x29, 1
solve_each_element_loop_b496:
# B496
	lwr x36, x30, x29
	bne x36, x23, solve_each_element_beqelse_b498
# B497
	mv x37, x10
# B519
	bne x37, zero, solve_each_element_beqelse_b521
	j	solve_each_element_bfgtelse_b423 # moved need extra jump for 423 at B519
solve_each_element_beqelse_b498:
# B498
	lwr x36, x11, x36
	lw x37, 5(x36)
	lw x37, 0(x37)
	fsub x37, x31, x37
	lw x38, 5(x36)
	lw x38, 1(x38)
	fsub x38, x34, x38
	lw x39, 5(x36)
	lw x39, 2(x39)
	fsub x39, x35, x39
	lw x40, 1(x36)
	bne x40, x10, solve_each_element_beqelse_b500
# B499
	fabs x37, x37
	lw x40, 4(x36)
	lw x40, 0(x40)
	bfle x40, x37, solve_each_element_bfgtelse_b506
# B502
	fabs x37, x38
	lw x38, 4(x36)
	lw x38, 1(x38)
	bfle x38, x37, solve_each_element_bfgtelse_b506
# B504
	fabs x37, x39
	lw x38, 4(x36)
	lw x38, 2(x38)
	fle x37, x38, x37
	xori x37, x37, 1
	mv x38, x37
# B505
	bne x38, zero, solve_each_element_beqelse_b507
solve_each_element_bfgtelse_b506:
# B506
	lw x36, 6(x36)
	xori x36, x36, 1
	j solve_each_element_cont_b516 # adhoc jump(2)
solve_each_element_beqelse_b507:
# B507
	lw x36, 6(x36)
	j solve_each_element_cont_b516 # adhoc jump(2)
solve_each_element_beqelse_b500:
# B500
	bne x40, x15, solve_each_element_beqelse_b509
# B508
	lw x40, 4(x36)
	lw x5, 0(x40)
	fmul x37, x5, x37
	lw x5, 1(x40)
	fmul x38, x5, x38
	fadd x37, x37, x38
	lw x38, 2(x40)
	fmul x38, x38, x39
	fadd x37, x37, x38
	lw x36, 6(x36)
	fle x37, zero, x37
	xori x37, x37, 1
	xor x36, x36, x37
	xori x36, x36, 1
	j solve_each_element_cont_b516 # adhoc jump(2)
solve_each_element_beqelse_b509:
# B509
	fmul x40, x37, x37
	lw x5, 4(x36)
	lw x5, 0(x5)
	fmul x40, x40, x5
	fmul x5, x38, x38
	lw x6, 4(x36)
	lw x6, 1(x6)
	fmul x5, x5, x6
	fadd x40, x40, x5
	fmul x5, x39, x39
	lw x6, 4(x36)
	lw x6, 2(x6)
	fmul x5, x5, x6
	fadd x40, x40, x5
	lw x5, 3(x36)
	bne x5, zero, solve_each_element_beqelse_b511
# B510
	mv x37, x40
	j solve_each_element_cont_b512 # adhoc jump(2)
solve_each_element_beqelse_b511:
# B511
	fmul x5, x38, x39
	lw x6, 9(x36)
	lw x6, 0(x6)
	fmul x5, x5, x6
	fadd x40, x40, x5
	fmul x39, x39, x37
	lw x5, 9(x36)
	lw x5, 1(x5)
	fmul x39, x39, x5
	fadd x39, x40, x39
	fmul x37, x37, x38
	lw x38, 9(x36)
	lw x38, 2(x38)
	fmul x37, x37, x38
	fadd x37, x39, x37
solve_each_element_cont_b512:
# B512
	lw x38, 1(x36)
	bne x38, x32, solve_each_element_beqelse_b515
# B513
	fsub x37, x37, x33
solve_each_element_beqelse_b515:
# B515
	lw x36, 6(x36)
	fle x37, zero, x37
	xori x37, x37, 1
	xor x36, x36, x37
	xori x36, x36, 1
solve_each_element_cont_b516:
# B516
	beq x36, zero, solve_each_element_bneelse_b517
	j	solve_each_element_bfgtelse_b423 # moved need extra jump for 423 at B516
judge_intersection_fast.3048:
# B523
# B524
	la x10, min_caml_tmin
	lui x100, 321255
	addi x100, x100, -1240
	sw x100, 0(x10)
	la x100, min_caml_or_net
	lw x100, 0(x100)
	li x11, 1
	li x12, 99
	la x13, min_caml_solver_dist
	li x14, -1
	la x15, min_caml_and_net
	la x16, min_caml_objects
	lui x17, 246333
	addi x17, x17, 1802
	la x18, min_caml_startp_fast
	li x19, 2
	la x20, min_caml_intersection_point
	la x21, min_caml_intersected_object_id
	la x22, min_caml_intsec_rectside
	li x23, 3
	mv x26, x5
	mv x25, x100
	mv x24, zero
judge_intersection_fast_loop_b525:
# B525
	lwr x100, x25, x24
	lw x27, 0(x100)
	beq x27, x14, judge_intersection_fast_bneelse_b724
# B527
	lui x28, 260096
	bne x27, x12, judge_intersection_fast_beqelse_b529
# B528
	mv x31, x26
	mv x30, x100
	mv x29, x11
judge_intersection_fast_loop_b530:
# B530
	lwr x100, x30, x29
	beq x100, x14, judge_intersection_fast_bneelse_b723
# B532
	lwr x100, x15, x100
	mv x27, zero
	mv x33, x31
	mv x32, x100
	j	judge_intersection_fast_loop_b533 # jumping over moved block
judge_intersection_fast_beqelse_b604:	#moved
# B604
	sw x36, 0(x10)
	sw x37, 0(x20)
	sw x38, 1(x20)
	sw x100, 2(x20)
	sw x34, 0(x21)
	sw x35, 0(x22)
judge_intersection_fast_beqelse_b533:
judge_intersection_fast_bfgtelse_b533:
judge_intersection_fast_loop_b533:
# B533
	lw x100, 0(x33)
	lwr x34, x32, x27
	beq x34, x14, judge_intersection_fast_bneelse_b606
# B535
	lwr x35, x16, x34
	lw x36, 10(x35)
	lw x37, 0(x36)
	lw x38, 1(x36)
	lw x39, 2(x36)
	lw x40, 1(x33)
	lwr x40, x40, x34
	lw x5, 1(x35)
	bne x5, x11, judge_intersection_fast_beqelse_b537
# B536
	lw x36, 0(x33)
	lw x5, 0(x40)
	fsub x5, x5, x37
	lw x6, 1(x40)
	fmul x5, x5, x6
	lw x65, 1(x36)
	fmul x66, x5, x65
	fadd x66, x66, x38
	fabs x66, x66
	lw x67, 4(x35)
	lw x67, 1(x67)
	bfle x67, x66, judge_intersection_fast_bfgtelse_b543
# B539
	lw x66, 2(x36)
	fmul x66, x5, x66
	fadd x66, x66, x39
	fabs x66, x66
	lw x68, 4(x35)
	lw x68, 2(x68)
	bfle x68, x66, judge_intersection_fast_bfgtelse_b543
# B541
	feq x6, x6, zero
	xori x6, x6, 1
	mv x66, x6
# B542
	bne x66, zero, judge_intersection_fast_beqelse_b544
judge_intersection_fast_bfgtelse_b543:
# B543
	lw x5, 2(x40)
	fsub x5, x5, x38
	lw x6, 3(x40)
	fmul x5, x5, x6
	lw x66, 0(x36)
	fmul x68, x5, x66
	fadd x68, x68, x37
	fabs x68, x68
	lw x69, 4(x35)
	lw x69, 0(x69)
	bfle x69, x68, judge_intersection_fast_bfgtelse_b550
# B546
	lw x36, 2(x36)
	fmul x36, x5, x36
	fadd x36, x36, x39
	fabs x36, x36
	lw x35, 4(x35)
	lw x35, 2(x35)
	bfle x35, x36, judge_intersection_fast_bfgtelse_b550
# B548
	feq x35, x6, zero
	xori x35, x35, 1
	mv x36, x35
# B549
	bne x36, zero, judge_intersection_fast_beqelse_b551
judge_intersection_fast_bfgtelse_b550:
# B550
	lw x35, 4(x40)
	fsub x35, x35, x39
	lw x36, 5(x40)
	fmul x35, x35, x36
	fmul x39, x35, x66
	fadd x37, x39, x37
	fabs x37, x37
	bfle x69, x37, judge_intersection_fast_bfgtelse_b557
# B553
	fmul x37, x35, x65
	fadd x37, x37, x38
	fabs x37, x37
	bfle x67, x37, judge_intersection_fast_bfgtelse_b557
# B555
	feq x36, x36, zero
	xori x36, x36, 1
	mv x37, x36
# B556
	bne x37, zero, judge_intersection_fast_beqelse_b558
judge_intersection_fast_bfgtelse_b557:
# B557
	mv x35, zero
	j judge_intersection_fast_cont_b570 # adhoc jump(2)
judge_intersection_fast_beqelse_b558:
# B558
	sw x35, 0(x13)
	mv x35, x23
	j judge_intersection_fast_cont_b570 # adhoc jump(2)
judge_intersection_fast_beqelse_b551:
# B551
	sw x5, 0(x13)
	mv x35, x19
	j judge_intersection_fast_cont_b570 # adhoc jump(2)
judge_intersection_fast_beqelse_b544:
# B544
	sw x5, 0(x13)
	mv x35, x11
	j judge_intersection_fast_cont_b570 # adhoc jump(2)
judge_intersection_fast_beqelse_b537:
# B537
	bne x5, x19, judge_intersection_fast_beqelse_b560
# B559
	lw x35, 0(x40)
	bfle zero, x35, judge_intersection_fast_bfgtelse_b561
# B562
	lw x36, 3(x36)
	fmul x35, x35, x36
	sw x35, 0(x13)
	mv x35, x11
	j judge_intersection_fast_cont_b570 # adhoc jump(2)
judge_intersection_fast_bfgtelse_b561:
# B561
	mv x35, zero
	j judge_intersection_fast_cont_b570 # adhoc jump(2)
judge_intersection_fast_beqelse_b560:
# B560
	lw x5, 0(x40)
	bfeq x5, zero, judge_intersection_fast_bfneqelse_b564
# B563
	lw x6, 1(x40)
	fmul x37, x6, x37
	lw x6, 2(x40)
	fmul x38, x6, x38
	fadd x37, x37, x38
	lw x38, 3(x40)
	fmul x38, x38, x39
	fadd x37, x37, x38
	lw x36, 3(x36)
	fmul x38, x37, x37
	fmul x36, x5, x36
	fsub x36, x38, x36
	bfle x36, zero, judge_intersection_fast_bfgtelse_b565
# B566
	lw x35, 6(x35)
	fsqrt x36, x36
	bne x35, zero, judge_intersection_fast_beqelse_b568
# B567
	fsub x35, x37, x36
	lw x36, 4(x40)
	fmul x35, x35, x36
	sw x35, 0(x13)
	j judge_intersection_fast_cont_b569 # adhoc jump(2)
judge_intersection_fast_beqelse_b568:
# B568
	fadd x35, x37, x36
	lw x36, 4(x40)
	fmul x35, x35, x36
	sw x35, 0(x13)
judge_intersection_fast_cont_b569:
# B569
	mv x35, x11
	j judge_intersection_fast_cont_b570 # adhoc jump(2)
judge_intersection_fast_bfgtelse_b565:
# B565
	mv x35, zero
	j judge_intersection_fast_cont_b570 # adhoc jump(2)
judge_intersection_fast_bfneqelse_b564:
# B564
	mv x35, zero
judge_intersection_fast_cont_b570:
# B570
	addi x27, x27, 1
	bne x35, zero, judge_intersection_fast_beqelse_b572
# B571
	lwr x100, x16, x34
	lw x100, 6(x100)
	beq x100, zero, judge_intersection_fast_bneelse_b606
	j	judge_intersection_fast_beqelse_b533 # moved need extra jump for 533 at B571
judge_intersection_fast_bneelse_b606:
# B606
	addi x29, x29, 1
	j judge_intersection_fast_loop_b530 # loopback to while entry from B606
judge_intersection_fast_beqelse_b572:
# B572
	lw x36, 0(x13)
	bfle x36, zero, judge_intersection_fast_bfgtelse_b533
# B576
	lw x37, 0(x10)
	bfle x37, x36, judge_intersection_fast_bfgtelse_b533
# B578
	fadd x36, x36, x17
	lw x37, 0(x100)
	fmul x37, x37, x36
	lw x38, 0(x18)
	fadd x37, x37, x38
	lw x38, 1(x100)
	fmul x38, x38, x36
	lw x39, 1(x18)
	fadd x38, x38, x39
	lw x100, 2(x100)
	fmul x100, x100, x36
	lw x39, 2(x18)
	fadd x100, x100, x39
	mv x5, x37
	mv x40, x32
	mv x6, x38
	mv x65, x100
	mv x39, zero
	j	judge_intersection_fast_loop_b579 # jumping over moved block
judge_intersection_fast_bneelse_b600:	#moved
# B600
	addi x39, x39, 1
judge_intersection_fast_loop_b579:
# B579
	lwr x66, x40, x39
	bne x66, x14, judge_intersection_fast_beqelse_b581
# B580
	mv x67, x11
# B602
	bne x67, zero, judge_intersection_fast_beqelse_b604
	j	judge_intersection_fast_bfgtelse_b533 # moved need extra jump for 533 at B602
judge_intersection_fast_beqelse_b581:
# B581
	lwr x66, x16, x66
	lw x67, 5(x66)
	lw x67, 0(x67)
	fsub x67, x5, x67
	lw x68, 5(x66)
	lw x68, 1(x68)
	fsub x68, x6, x68
	lw x69, 5(x66)
	lw x69, 2(x69)
	fsub x69, x65, x69
	lw x7, 1(x66)
	bne x7, x11, judge_intersection_fast_beqelse_b583
# B582
	fabs x67, x67
	lw x7, 4(x66)
	lw x7, 0(x7)
	bfle x7, x67, judge_intersection_fast_bfgtelse_b589
# B585
	fabs x67, x68
	lw x68, 4(x66)
	lw x68, 1(x68)
	bfle x68, x67, judge_intersection_fast_bfgtelse_b589
# B587
	fabs x67, x69
	lw x68, 4(x66)
	lw x68, 2(x68)
	fle x67, x68, x67
	xori x67, x67, 1
	mv x68, x67
# B588
	bne x68, zero, judge_intersection_fast_beqelse_b590
judge_intersection_fast_bfgtelse_b589:
# B589
	lw x66, 6(x66)
	xori x66, x66, 1
	j judge_intersection_fast_cont_b599 # adhoc jump(2)
judge_intersection_fast_beqelse_b590:
# B590
	lw x66, 6(x66)
	j judge_intersection_fast_cont_b599 # adhoc jump(2)
judge_intersection_fast_beqelse_b583:
# B583
	bne x7, x19, judge_intersection_fast_beqelse_b592
# B591
	lw x7, 4(x66)
	lw x70, 0(x7)
	fmul x67, x70, x67
	lw x70, 1(x7)
	fmul x68, x70, x68
	fadd x67, x67, x68
	lw x68, 2(x7)
	fmul x68, x68, x69
	fadd x67, x67, x68
	lw x66, 6(x66)
	fle x67, zero, x67
	xori x67, x67, 1
	xor x66, x66, x67
	xori x66, x66, 1
	j judge_intersection_fast_cont_b599 # adhoc jump(2)
judge_intersection_fast_beqelse_b592:
# B592
	fmul x7, x67, x67
	lw x70, 4(x66)
	lw x70, 0(x70)
	fmul x7, x7, x70
	fmul x70, x68, x68
	lw x71, 4(x66)
	lw x71, 1(x71)
	fmul x70, x70, x71
	fadd x7, x7, x70
	fmul x70, x69, x69
	lw x71, 4(x66)
	lw x71, 2(x71)
	fmul x70, x70, x71
	fadd x7, x7, x70
	lw x70, 3(x66)
	bne x70, zero, judge_intersection_fast_beqelse_b594
# B593
	mv x67, x7
	j judge_intersection_fast_cont_b595 # adhoc jump(2)
judge_intersection_fast_beqelse_b594:
# B594
	fmul x70, x68, x69
	lw x71, 9(x66)
	lw x71, 0(x71)
	fmul x70, x70, x71
	fadd x7, x7, x70
	fmul x69, x69, x67
	lw x70, 9(x66)
	lw x70, 1(x70)
	fmul x69, x69, x70
	fadd x69, x7, x69
	fmul x67, x67, x68
	lw x68, 9(x66)
	lw x68, 2(x68)
	fmul x67, x67, x68
	fadd x67, x69, x67
judge_intersection_fast_cont_b595:
# B595
	lw x68, 1(x66)
	bne x68, x23, judge_intersection_fast_beqelse_b598
# B596
	fsub x67, x67, x28
judge_intersection_fast_beqelse_b598:
# B598
	lw x66, 6(x66)
	fle x67, zero, x67
	xori x67, x67, 1
	xor x66, x66, x67
	xori x66, x66, 1
judge_intersection_fast_cont_b599:
# B599
	beq x66, zero, judge_intersection_fast_bneelse_b600
	j	judge_intersection_fast_bfgtelse_b533 # moved need extra jump for 533 at B599
judge_intersection_fast_beqelse_b529:
# B529
	lwr x29, x16, x27
	lw x30, 10(x29)
	lw x31, 0(x30)
	lw x32, 1(x30)
	lw x33, 2(x30)
	lw x34, 1(x26)
	lwr x27, x34, x27
	lw x34, 1(x29)
	bne x34, x11, judge_intersection_fast_beqelse_b608
# B607
	lw x30, 0(x26)
	lw x34, 0(x27)
	fsub x34, x34, x31
	lw x35, 1(x27)
	fmul x34, x34, x35
	lw x36, 1(x30)
	fmul x37, x34, x36
	fadd x37, x37, x32
	fabs x37, x37
	lw x38, 4(x29)
	lw x38, 1(x38)
	bfle x38, x37, judge_intersection_fast_bfgtelse_b614
# B610
	lw x37, 2(x30)
	fmul x37, x34, x37
	fadd x37, x37, x33
	fabs x37, x37
	lw x39, 4(x29)
	lw x39, 2(x39)
	bfle x39, x37, judge_intersection_fast_bfgtelse_b614
# B612
	feq x35, x35, zero
	xori x35, x35, 1
	mv x37, x35
# B613
	bne x37, zero, judge_intersection_fast_beqelse_b615
judge_intersection_fast_bfgtelse_b614:
# B614
	lw x34, 2(x27)
	fsub x34, x34, x32
	lw x35, 3(x27)
	fmul x34, x34, x35
	lw x37, 0(x30)
	fmul x39, x34, x37
	fadd x39, x39, x31
	fabs x39, x39
	lw x40, 4(x29)
	lw x40, 0(x40)
	bfle x40, x39, judge_intersection_fast_bfgtelse_b621
# B617
	lw x30, 2(x30)
	fmul x30, x34, x30
	fadd x30, x30, x33
	fabs x30, x30
	lw x29, 4(x29)
	lw x29, 2(x29)
	bfle x29, x30, judge_intersection_fast_bfgtelse_b621
# B619
	feq x29, x35, zero
	xori x29, x29, 1
	mv x30, x29
# B620
	bne x30, zero, judge_intersection_fast_beqelse_b622
judge_intersection_fast_bfgtelse_b621:
# B621
	lw x29, 4(x27)
	fsub x29, x29, x33
	lw x27, 5(x27)
	fmul x29, x29, x27
	fmul x30, x29, x37
	fadd x30, x30, x31
	fabs x30, x30
	bfle x40, x30, judge_intersection_fast_bfgtelse_b723
# B624
	fmul x30, x29, x36
	fadd x30, x30, x32
	fabs x30, x30
	bfle x38, x30, judge_intersection_fast_bfgtelse_b723
# B626
	feq x27, x27, zero
	xori x27, x27, 1
	mv x30, x27
# B627
	bne x30, zero, judge_intersection_fast_beqelse_b629
	j judge_intersection_fast_cont_b723 # adhoc jump(3)
judge_intersection_fast_beqelse_b629:
# B629
	sw x29, 0(x13)
	mv x27, x23
	j judge_intersection_fast_cont_b641 # adhoc jump(2)
judge_intersection_fast_beqelse_b622:
# B622
	sw x34, 0(x13)
	mv x27, x19
	j judge_intersection_fast_cont_b641 # adhoc jump(2)
judge_intersection_fast_beqelse_b615:
# B615
	sw x34, 0(x13)
	mv x27, x11
	j judge_intersection_fast_cont_b641 # adhoc jump(2)
judge_intersection_fast_beqelse_b608:
# B608
	bne x34, x19, judge_intersection_fast_beqelse_b631
# B630
	lw x27, 0(x27)
	bfle zero, x27, judge_intersection_fast_bfgtelse_b723
# B633
	lw x29, 3(x30)
	fmul x27, x27, x29
	sw x27, 0(x13)
	mv x27, x11
	j judge_intersection_fast_cont_b641 # adhoc jump(2)
judge_intersection_fast_beqelse_b631:
# B631
	lw x34, 0(x27)
	bfeq x34, zero, judge_intersection_fast_bfneqelse_b723
# B634
	lw x35, 1(x27)
	fmul x31, x35, x31
	lw x35, 2(x27)
	fmul x32, x35, x32
	fadd x31, x31, x32
	lw x32, 3(x27)
	fmul x32, x32, x33
	fadd x31, x31, x32
	lw x30, 3(x30)
	fmul x32, x31, x31
	fmul x30, x34, x30
	fsub x30, x32, x30
	bfle x30, zero, judge_intersection_fast_bfgtelse_b723
# B637
	lw x29, 6(x29)
	fsqrt x30, x30
	bne x29, zero, judge_intersection_fast_beqelse_b639
# B638
	fsub x29, x31, x30
	lw x27, 4(x27)
	fmul x27, x29, x27
	sw x27, 0(x13)
	j judge_intersection_fast_cont_b640 # adhoc jump(2)
judge_intersection_fast_beqelse_b639:
# B639
	fadd x29, x31, x30
	lw x27, 4(x27)
	fmul x27, x29, x27
	sw x27, 0(x13)
judge_intersection_fast_cont_b640:
# B640
	mv x27, x11
judge_intersection_fast_cont_b641:
# B641
	bne x27, zero, judge_intersection_fast_beqelse_b643
	j judge_intersection_fast_cont_b723 # adhoc jump(3)
judge_intersection_fast_beqelse_b643:
# B643
	lw x27, 0(x13)
	lw x29, 0(x10)
	bfle x29, x27, judge_intersection_fast_bfgtelse_b723
# B645
	mv x32, x26
	mv x31, x100
	mv x30, x11
judge_intersection_fast_loop_b646:
# B646
	lwr x100, x31, x30
	beq x100, x14, judge_intersection_fast_bneelse_b723
# B648
	lwr x100, x15, x100
	mv x27, zero
	mv x29, x100
	mv x33, x32
	j	judge_intersection_fast_loop_b649 # jumping over moved block
judge_intersection_fast_beqelse_b720:	#moved
# B720
	sw x36, 0(x10)
	sw x37, 0(x20)
	sw x38, 1(x20)
	sw x100, 2(x20)
	sw x34, 0(x21)
	sw x35, 0(x22)
judge_intersection_fast_beqelse_b649:
judge_intersection_fast_bfgtelse_b649:
judge_intersection_fast_loop_b649:
# B649
	lw x100, 0(x33)
	lwr x34, x29, x27
	beq x34, x14, judge_intersection_fast_bneelse_b722
# B651
	lwr x35, x16, x34
	lw x36, 10(x35)
	lw x37, 0(x36)
	lw x38, 1(x36)
	lw x39, 2(x36)
	lw x40, 1(x33)
	lwr x40, x40, x34
	lw x5, 1(x35)
	bne x5, x11, judge_intersection_fast_beqelse_b653
# B652
	lw x36, 0(x33)
	lw x5, 0(x40)
	fsub x5, x5, x37
	lw x6, 1(x40)
	fmul x5, x5, x6
	lw x65, 1(x36)
	fmul x66, x5, x65
	fadd x66, x66, x38
	fabs x66, x66
	lw x67, 4(x35)
	lw x67, 1(x67)
	bfle x67, x66, judge_intersection_fast_bfgtelse_b659
# B655
	lw x66, 2(x36)
	fmul x66, x5, x66
	fadd x66, x66, x39
	fabs x66, x66
	lw x68, 4(x35)
	lw x68, 2(x68)
	bfle x68, x66, judge_intersection_fast_bfgtelse_b659
# B657
	feq x6, x6, zero
	xori x6, x6, 1
	mv x66, x6
# B658
	bne x66, zero, judge_intersection_fast_beqelse_b660
judge_intersection_fast_bfgtelse_b659:
# B659
	lw x5, 2(x40)
	fsub x5, x5, x38
	lw x6, 3(x40)
	fmul x5, x5, x6
	lw x66, 0(x36)
	fmul x68, x5, x66
	fadd x68, x68, x37
	fabs x68, x68
	lw x69, 4(x35)
	lw x69, 0(x69)
	bfle x69, x68, judge_intersection_fast_bfgtelse_b666
# B662
	lw x36, 2(x36)
	fmul x36, x5, x36
	fadd x36, x36, x39
	fabs x36, x36
	lw x35, 4(x35)
	lw x35, 2(x35)
	bfle x35, x36, judge_intersection_fast_bfgtelse_b666
# B664
	feq x35, x6, zero
	xori x35, x35, 1
	mv x36, x35
# B665
	bne x36, zero, judge_intersection_fast_beqelse_b667
judge_intersection_fast_bfgtelse_b666:
# B666
	lw x35, 4(x40)
	fsub x35, x35, x39
	lw x36, 5(x40)
	fmul x35, x35, x36
	fmul x39, x35, x66
	fadd x37, x39, x37
	fabs x37, x37
	bfle x69, x37, judge_intersection_fast_bfgtelse_b673
# B669
	fmul x37, x35, x65
	fadd x37, x37, x38
	fabs x37, x37
	bfle x67, x37, judge_intersection_fast_bfgtelse_b673
# B671
	feq x36, x36, zero
	xori x36, x36, 1
	mv x37, x36
# B672
	bne x37, zero, judge_intersection_fast_beqelse_b674
judge_intersection_fast_bfgtelse_b673:
# B673
	mv x35, zero
	j judge_intersection_fast_cont_b686 # adhoc jump(2)
judge_intersection_fast_beqelse_b674:
# B674
	sw x35, 0(x13)
	mv x35, x23
	j judge_intersection_fast_cont_b686 # adhoc jump(2)
judge_intersection_fast_beqelse_b667:
# B667
	sw x5, 0(x13)
	mv x35, x19
	j judge_intersection_fast_cont_b686 # adhoc jump(2)
judge_intersection_fast_beqelse_b660:
# B660
	sw x5, 0(x13)
	mv x35, x11
	j judge_intersection_fast_cont_b686 # adhoc jump(2)
judge_intersection_fast_beqelse_b653:
# B653
	bne x5, x19, judge_intersection_fast_beqelse_b676
# B675
	lw x35, 0(x40)
	bfle zero, x35, judge_intersection_fast_bfgtelse_b677
# B678
	lw x36, 3(x36)
	fmul x35, x35, x36
	sw x35, 0(x13)
	mv x35, x11
	j judge_intersection_fast_cont_b686 # adhoc jump(2)
judge_intersection_fast_bfgtelse_b677:
# B677
	mv x35, zero
	j judge_intersection_fast_cont_b686 # adhoc jump(2)
judge_intersection_fast_beqelse_b676:
# B676
	lw x5, 0(x40)
	bfeq x5, zero, judge_intersection_fast_bfneqelse_b680
# B679
	lw x6, 1(x40)
	fmul x37, x6, x37
	lw x6, 2(x40)
	fmul x38, x6, x38
	fadd x37, x37, x38
	lw x38, 3(x40)
	fmul x38, x38, x39
	fadd x37, x37, x38
	lw x36, 3(x36)
	fmul x38, x37, x37
	fmul x36, x5, x36
	fsub x36, x38, x36
	bfle x36, zero, judge_intersection_fast_bfgtelse_b681
# B682
	lw x35, 6(x35)
	fsqrt x36, x36
	bne x35, zero, judge_intersection_fast_beqelse_b684
# B683
	fsub x35, x37, x36
	lw x36, 4(x40)
	fmul x35, x35, x36
	sw x35, 0(x13)
	j judge_intersection_fast_cont_b685 # adhoc jump(2)
judge_intersection_fast_beqelse_b684:
# B684
	fadd x35, x37, x36
	lw x36, 4(x40)
	fmul x35, x35, x36
	sw x35, 0(x13)
judge_intersection_fast_cont_b685:
# B685
	mv x35, x11
	j judge_intersection_fast_cont_b686 # adhoc jump(2)
judge_intersection_fast_bfgtelse_b681:
# B681
	mv x35, zero
	j judge_intersection_fast_cont_b686 # adhoc jump(2)
judge_intersection_fast_bfneqelse_b680:
# B680
	mv x35, zero
judge_intersection_fast_cont_b686:
# B686
	addi x27, x27, 1
	bne x35, zero, judge_intersection_fast_beqelse_b688
# B687
	lwr x100, x16, x34
	lw x100, 6(x100)
	beq x100, zero, judge_intersection_fast_bneelse_b722
	j	judge_intersection_fast_beqelse_b649 # moved need extra jump for 649 at B687
judge_intersection_fast_bneelse_b722:
# B722
	addi x30, x30, 1
	j judge_intersection_fast_loop_b646 # loopback to while entry from B722
judge_intersection_fast_beqelse_b688:
# B688
	lw x36, 0(x13)
	bfle x36, zero, judge_intersection_fast_bfgtelse_b649
# B692
	lw x37, 0(x10)
	bfle x37, x36, judge_intersection_fast_bfgtelse_b649
# B694
	fadd x36, x36, x17
	lw x37, 0(x100)
	fmul x37, x37, x36
	lw x38, 0(x18)
	fadd x37, x37, x38
	lw x38, 1(x100)
	fmul x38, x38, x36
	lw x39, 1(x18)
	fadd x38, x38, x39
	lw x100, 2(x100)
	fmul x100, x100, x36
	lw x39, 2(x18)
	fadd x100, x100, x39
	mv x5, x37
	mv x40, x29
	mv x6, x38
	mv x65, x100
	mv x39, zero
	j	judge_intersection_fast_loop_b695 # jumping over moved block
judge_intersection_fast_bneelse_b716:	#moved
# B716
	addi x39, x39, 1
judge_intersection_fast_loop_b695:
# B695
	lwr x66, x40, x39
	bne x66, x14, judge_intersection_fast_beqelse_b697
# B696
	mv x67, x11
# B718
	bne x67, zero, judge_intersection_fast_beqelse_b720
	j	judge_intersection_fast_bfgtelse_b649 # moved need extra jump for 649 at B718
judge_intersection_fast_beqelse_b697:
# B697
	lwr x66, x16, x66
	lw x67, 5(x66)
	lw x67, 0(x67)
	fsub x67, x5, x67
	lw x68, 5(x66)
	lw x68, 1(x68)
	fsub x68, x6, x68
	lw x69, 5(x66)
	lw x69, 2(x69)
	fsub x69, x65, x69
	lw x7, 1(x66)
	bne x7, x11, judge_intersection_fast_beqelse_b699
# B698
	fabs x67, x67
	lw x7, 4(x66)
	lw x7, 0(x7)
	bfle x7, x67, judge_intersection_fast_bfgtelse_b705
# B701
	fabs x67, x68
	lw x68, 4(x66)
	lw x68, 1(x68)
	bfle x68, x67, judge_intersection_fast_bfgtelse_b705
# B703
	fabs x67, x69
	lw x68, 4(x66)
	lw x68, 2(x68)
	fle x67, x68, x67
	xori x67, x67, 1
	mv x68, x67
# B704
	bne x68, zero, judge_intersection_fast_beqelse_b706
judge_intersection_fast_bfgtelse_b705:
# B705
	lw x66, 6(x66)
	xori x66, x66, 1
	j judge_intersection_fast_cont_b715 # adhoc jump(2)
judge_intersection_fast_beqelse_b706:
# B706
	lw x66, 6(x66)
	j judge_intersection_fast_cont_b715 # adhoc jump(2)
judge_intersection_fast_beqelse_b699:
# B699
	bne x7, x19, judge_intersection_fast_beqelse_b708
# B707
	lw x7, 4(x66)
	lw x70, 0(x7)
	fmul x67, x70, x67
	lw x70, 1(x7)
	fmul x68, x70, x68
	fadd x67, x67, x68
	lw x68, 2(x7)
	fmul x68, x68, x69
	fadd x67, x67, x68
	lw x66, 6(x66)
	fle x67, zero, x67
	xori x67, x67, 1
	xor x66, x66, x67
	xori x66, x66, 1
	j judge_intersection_fast_cont_b715 # adhoc jump(2)
judge_intersection_fast_beqelse_b708:
# B708
	fmul x7, x67, x67
	lw x70, 4(x66)
	lw x70, 0(x70)
	fmul x7, x7, x70
	fmul x70, x68, x68
	lw x71, 4(x66)
	lw x71, 1(x71)
	fmul x70, x70, x71
	fadd x7, x7, x70
	fmul x70, x69, x69
	lw x71, 4(x66)
	lw x71, 2(x71)
	fmul x70, x70, x71
	fadd x7, x7, x70
	lw x70, 3(x66)
	bne x70, zero, judge_intersection_fast_beqelse_b710
# B709
	mv x67, x7
	j judge_intersection_fast_cont_b711 # adhoc jump(2)
judge_intersection_fast_beqelse_b710:
# B710
	fmul x70, x68, x69
	lw x71, 9(x66)
	lw x71, 0(x71)
	fmul x70, x70, x71
	fadd x7, x7, x70
	fmul x69, x69, x67
	lw x70, 9(x66)
	lw x70, 1(x70)
	fmul x69, x69, x70
	fadd x69, x7, x69
	fmul x67, x67, x68
	lw x68, 9(x66)
	lw x68, 2(x68)
	fmul x67, x67, x68
	fadd x67, x69, x67
judge_intersection_fast_cont_b711:
# B711
	lw x68, 1(x66)
	bne x68, x23, judge_intersection_fast_beqelse_b714
# B712
	fsub x67, x67, x28
judge_intersection_fast_beqelse_b714:
# B714
	lw x66, 6(x66)
	fle x67, zero, x67
	xori x67, x67, 1
	xor x66, x66, x67
	xori x66, x66, 1
judge_intersection_fast_cont_b715:
# B715
	beq x66, zero, judge_intersection_fast_bneelse_b716
	j	judge_intersection_fast_bfgtelse_b649 # moved need extra jump for 649 at B715
judge_intersection_fast_bfgtelse_b723:
judge_intersection_fast_bfneqelse_b723:
judge_intersection_fast_bneelse_b723:
judge_intersection_fast_cont_b723:
# B723
	addi x24, x24, 1
	j judge_intersection_fast_loop_b525 # loopback to while entry from B723
judge_intersection_fast_bneelse_b724:
# B724
	lw x10, 0(x10)
	lui x100, 777421
	addi x100, x100, -819
	bfle x10, x100, judge_intersection_fast_bfgtelse_b725
# B726
	lui x100, 314348
	addi x100, x100, -992
	fle x10, x100, x10
	xori x5, x10, 1
	ret
judge_intersection_fast_bfgtelse_b725:
# B725
	mv x5, zero
	ret
utexture.3059:
# B727
# B728
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
	bne x10, x11, utexture_beqelse_b730
# B729
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
	bne x10, zero, utexture_beqelse_b732
# B731
	bne x11, zero, utexture_beqelse_b734
# B733
	lui x10, 276464
	j utexture_cont_b737 # adhoc jump(2)
utexture_beqelse_b734:
# B734
	mv x10, zero
	j utexture_cont_b737 # adhoc jump(2)
utexture_beqelse_b732:
# B732
	bne x11, zero, utexture_beqelse_b736
# B735
	mv x10, zero
	j utexture_cont_b737 # adhoc jump(2)
utexture_beqelse_b736:
# B736
	lui x10, 276464
utexture_cont_b737:
# B737
	sw x10, 1(x100)
	ret
utexture_beqelse_b730:
# B730
	lui x11, 265361
	addi x11, x11, -37
	lui x14, 262144
	lui x15, 263313
	addi x15, x15, -37
	lui x16, 261265
	addi x16, x16, -37
	lui x17, 259217
	addi x17, x17, -37
	lui x18, 260096
	lui x19, 778923
	addi x19, x19, -1364
	lui x20, 245896
	addi x20, x20, 1638
	lui x21, 758998
	addi x21, x21, 1206
	lui x22, 782336
	lui x23, 250538
	addi x23, x23, 1929
	lui x24, 764728
	addi x24, x24, 262
	lui x25, 276464
	bne x10, x12, utexture_beqelse_b739
# B738
	lw x10, 1(x6)
	lui x12, 256000
	fmul x10, x10, x12
	fle x12, x10, zero
	xori x12, x12, 1
	fabs x10, x10
	mv x26, x11
	mv x13, x10
utexture_loop_b740:
# B740
	bfle x13, x26, utexture_bfgtelse_b743
# B741
	fmul x26, x26, x14
	j utexture_loop_b740 # loopback to while entry from B741
utexture_bfgtelse_b743:
# B743
	mv x27, x10
	mv x28, x26
	j	utexture_loop_b744 # jumping over moved block
utexture_bfgtelse_b748:	#moved
# B748
	mv x28, x10
utexture_loop_b744:
# B744
	bfle x11, x27, utexture_bfgtelse_b746
# B749
	fle x10, x15, x27
	bne x10, zero, utexture_beqelse_b751
# B750
	mv x11, x27
	j utexture_cont_b752 # adhoc jump(2)
utexture_beqelse_b751:
# B751
	fsub x11, x27, x15
utexture_cont_b752:
# B752
	xor x10, x10, x12
	bfle x16, x11, utexture_bfgtelse_b754
	j utexture_cont_b755 # adhoc jump(3)
utexture_bfgtelse_b754:
# B754
	fsub x11, x15, x11
utexture_cont_b755:
# B755
	bfle x17, x11, utexture_bfgtelse_b757
utexture_cont_b756:
# B756
	fmul x12, x11, x11
	fmul x13, x12, x21
	fadd x13, x20, x13
	fmul x13, x12, x13
	fadd x13, x19, x13
	fmul x12, x12, x13
	fadd x12, x18, x12
	fmul x11, x11, x12
	j utexture_cont_b758 # adhoc jump(2)
utexture_bfgtelse_b757:
# B757
	fsub x11, x16, x11
	fmul x11, x11, x11
	fmul x12, x11, x24
	fadd x12, x23, x12
	fmul x12, x11, x12
	fadd x12, x22, x12
	fmul x11, x11, x12
	fadd x11, x18, x11
utexture_cont_b758:
# B758
	fle x12, x11, zero
	beq x10, x12, utexture_bneelse_b760
# B759
	mv x10, x11
	j utexture_cont_b761 # adhoc jump(2)
utexture_bneelse_b760:
# B760
	fsub x10, zero, x11
utexture_cont_b761:
# B761
	fmul x10, x10, x10
	fmul x11, x25, x10
	sw x11, 0(x100)
	fsub x10, x18, x10
	fmul x10, x25, x10
	sw x10, 1(x100)
	ret
utexture_bfgtelse_b746:
# B746
	fdiv x10, x28, x14
	bfle x27, x28, utexture_bfgtelse_b748
# B747
	fsub x27, x27, x28
	mv x28, x10
	j utexture_loop_b744 # loopback to while entry from B747
utexture_beqelse_b739:
# B739
	li x12, 3
	lui x26, 263313
	addi x26, x26, -37
	bne x10, x12, utexture_beqelse_b763
# B762
	lw x10, 0(x6)
	lw x12, 5(x5)
	lw x12, 0(x12)
	fsub x10, x10, x12
	lw x12, 2(x6)
	lw x27, 5(x5)
	lw x27, 2(x27)
	fsub x12, x12, x27
	fmul x10, x10, x10
	fmul x12, x12, x12
	fadd x10, x10, x12
	fsqrt x10, x10
	fdiv x10, x10, x13
	floor x12, x10
	fsub x10, x10, x12
	fmul x10, x10, x26
	fabs x10, x10
	mv x12, x10
	mv x13, x11
utexture_loop_b764:
# B764
	bfle x12, x13, utexture_bfgtelse_b767
# B765
	fmul x13, x13, x14
	j utexture_loop_b764 # loopback to while entry from B765
utexture_bfgtelse_b767:
# B767
	mv x27, x13
	mv x26, x10
	j	utexture_loop_b768 # jumping over moved block
utexture_bfgtelse_b772:	#moved
# B772
	mv x27, x10
utexture_loop_b768:
# B768
	bfle x11, x26, utexture_bfgtelse_b770
# B773
	fle x10, x15, x26
	bne x10, zero, utexture_beqelse_b775
# B774
	mv x11, x26
	j utexture_cont_b776 # adhoc jump(2)
utexture_beqelse_b775:
# B775
	fsub x11, x26, x15
utexture_cont_b776:
# B776
	xori x10, x10, 1
	fle x12, x16, x11
	bne x12, zero, utexture_beqelse_b778
	j utexture_cont_b779 # adhoc jump(3)
utexture_beqelse_b778:
# B778
	fsub x11, x15, x11
utexture_cont_b779:
# B779
	xor x10, x12, x10
	bfle x17, x11, utexture_bfgtelse_b781
utexture_cont_b780:
# B780
	fmul x11, x11, x11
	fmul x12, x11, x24
	fadd x12, x23, x12
	fmul x12, x11, x12
	fadd x12, x22, x12
	fmul x11, x11, x12
	fadd x11, x18, x11
	j utexture_cont_b782 # adhoc jump(2)
utexture_bfgtelse_b781:
# B781
	fsub x11, x16, x11
	fmul x12, x11, x11
	fmul x13, x12, x21
	fadd x13, x20, x13
	fmul x13, x12, x13
	fadd x13, x19, x13
	fmul x12, x12, x13
	fadd x12, x18, x12
	fmul x11, x11, x12
utexture_cont_b782:
# B782
	fle x12, x11, zero
	beq x10, x12, utexture_bneelse_b784
# B783
	mv x10, x11
	j utexture_cont_b785 # adhoc jump(2)
utexture_bneelse_b784:
# B784
	fsub x10, zero, x11
utexture_cont_b785:
# B785
	fmul x10, x10, x10
	fmul x11, x10, x25
	sw x11, 1(x100)
	fsub x10, x18, x10
	fmul x10, x10, x25
	sw x10, 2(x100)
	ret
utexture_bfgtelse_b770:
# B770
	fdiv x10, x27, x14
	bfle x26, x27, utexture_bfgtelse_b772
# B771
	fsub x26, x26, x27
	mv x27, x10
	j utexture_loop_b768 # loopback to while entry from B771
utexture_beqelse_b763:
# B763
	li x11, 4
	bne x10, x11, utexture_beqelse_b787
# B786
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
	lui x19, 780971
	addi x19, x19, -1366
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
	lui x27, 262592
	lui x28, 270080
	beq x13, zero, utexture_bneelse_b789
# B788
	fdiv x10, x11, x10
	fabs x10, x10
	fle x11, x10, zero
	xori x11, x11, 1
	fabs x13, x10
	bfle x15, x13, utexture_bfgtelse_b791
# B790
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
	fadd x13, x19, x13
	fmul x11, x11, x13
	fadd x11, x18, x11
	fmul x10, x10, x11
	j utexture_cont_b797 # adhoc jump(2)
utexture_bfgtelse_b791:
# B791
	bfle x27, x13, utexture_bfgtelse_b793
# B792
	fsub x10, x13, x18
	fadd x13, x13, x18
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
	fadd x29, x19, x29
	fmul x13, x13, x29
	fadd x13, x18, x13
	fmul x10, x10, x13
	fadd x10, x17, x10
	j utexture_cont_b794 # adhoc jump(2)
utexture_bfgtelse_b793:
# B793
	fdiv x10, x18, x13
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
	fadd x29, x19, x29
	fmul x13, x13, x29
	fadd x13, x18, x13
	fmul x10, x10, x13
	fsub x10, x16, x10
utexture_cont_b794:
# B794
	bne x11, zero, utexture_beqelse_b797
# B795
	fsub x10, zero, x10
utexture_beqelse_b797:
utexture_cont_b797:
# B797
	fmul x10, x10, x28
	fdiv x10, x10, x26
	j utexture_cont_b798 # adhoc jump(2)
utexture_bneelse_b789:
# B789
	lui x10, 268032
utexture_cont_b798:
# B798
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
	bfle x14, x13, utexture_bfgtelse_b799
# B800
	lui x11, 268032
	j utexture_cont_b809 # adhoc jump(2)
utexture_bfgtelse_b799:
# B799
	fdiv x11, x11, x12
	fabs x11, x11
	fle x12, x11, zero
	xori x12, x12, 1
	fabs x13, x11
	bfle x15, x13, utexture_bfgtelse_b802
# B801
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
	fadd x13, x19, x13
	fmul x12, x12, x13
	fadd x12, x18, x12
	fmul x11, x11, x12
	j utexture_cont_b808 # adhoc jump(2)
utexture_bfgtelse_b802:
# B802
	bfle x27, x13, utexture_bfgtelse_b804
# B803
	fsub x11, x13, x18
	fadd x13, x13, x18
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
	fadd x14, x19, x14
	fmul x13, x13, x14
	fadd x13, x18, x13
	fmul x11, x11, x13
	fadd x11, x17, x11
	j utexture_cont_b805 # adhoc jump(2)
utexture_bfgtelse_b804:
# B804
	fdiv x11, x18, x13
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
	fadd x14, x19, x14
	fmul x13, x13, x14
	fadd x13, x18, x13
	fmul x11, x11, x13
	fsub x11, x16, x11
utexture_cont_b805:
# B805
	bne x12, zero, utexture_beqelse_b808
# B806
	fsub x11, zero, x11
utexture_beqelse_b808:
utexture_cont_b808:
# B808
	fmul x11, x11, x28
	fdiv x11, x11, x26
utexture_cont_b809:
# B809
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
	bfle zero, x10, utexture_bfgtelse_b810
# B811
	mv x11, zero
	j utexture_cont_b812 # adhoc jump(2)
utexture_bfgtelse_b810:
# B810
	mv x11, x10
utexture_cont_b812:
# B812
	fmul x10, x25, x11
	lui x11, 256410
	addi x11, x11, -1638
	fdiv x10, x10, x11
	sw x10, 2(x100)
	ret
utexture_beqelse_b787:
# B787
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
body_trace_ray.3071:
# B813
# B814
	li x101, 4
	li x102, 1
	la x103, min_caml_light
	la x104, min_caml_beam
	la x105, min_caml_rgb
	li x106, 2
	la x107, min_caml_intersected_object_id
	la x108, min_caml_objects
	la x109, min_caml_startp
	la x110, min_caml_intersection_point
	la x111, min_caml_intsec_rectside
	lui x112, 258048
	la x113, min_caml_texture_color
	lui x114, 260096
	lui x115, 276480
	la x116, min_caml_nvector
	lui x117, 786432
	la x118, min_caml_or_net
	la x119, min_caml_n_reflections
	lui x120, 253133
	addi x120, x120, -819
	la x121, min_caml_tmin
	mv x125, x7
	mv x124, x6
	mv x126, x66
	mv x122, x5
	mv x123, x65
	j	trace_ray_loop_b815 # jumping over moved block
trace_ray_bneelse_b1711:	#moved
# B1711
	fsub x100, x114, x15
	lw x11, 0(x121)
	mv x122, x10
	fmul x123, x123, x100
	fadd x126, x126, x11
trace_ray_loop_b815:
# B815
	bgt x122, x101, trace_ray_bleelse_b817
# B816
	lw x127, 2(x125)
	lui x41, 321255
	addi x41, x41, -1240
	sw x41, 0(x121)
	lw x42, 0(x118)
	li x43, 99
	la x44, min_caml_solver_dist
	mv x47, x124
	mv x45, zero
	mv x46, x42
trace_ray_loop_b818:
# B818
	lwr x10, x46, x45
	lw x100, 0(x10)
	li x48, -1
	la x49, min_caml_and_net
	li x11, 3
	beq x100, x48, trace_ray_bneelse_b896
# B820
	bne x100, x43, trace_ray_beqelse_b822
# B821
	mv x52, x47
	mv x50, x102
	mv x51, x10
	j	trace_ray_loop_b823 # jumping over moved block
trace_ray_beqelse_b825:	#moved
# B825
	lwr x6, x49, x10
	mv x7, x52
	mv x5, zero
	addi	x2, x2, 41
	jal	solve_each_element.3022
	addi	x2, x2, -41
	addi x50, x50, 1
trace_ray_loop_b823:
# B823
	lwr x10, x51, x50
	bne x10, x48, trace_ray_beqelse_b825
	j trace_ray_cont_b895 # adhoc jump(3)
trace_ray_beqelse_b822:
# B822
	lwr x100, x108, x100
	lw x12, 0(x109)
	lw x13, 5(x100)
	lw x13, 0(x13)
	fsub x12, x12, x13
	lw x13, 1(x109)
	lw x14, 5(x100)
	lw x14, 1(x14)
	fsub x13, x13, x14
	lw x14, 2(x109)
	lw x15, 5(x100)
	lw x15, 2(x15)
	fsub x14, x14, x15
	lw x15, 1(x100)
	bne x15, x102, trace_ray_beqelse_b827
# B826
	lw x11, 0(x47)
	bfeq x11, zero, trace_ray_bfneqelse_b838
# B828
	lw x15, 4(x100)
	lw x16, 6(x100)
	fle x17, zero, x11
	xori x17, x17, 1
	xor x16, x16, x17
	lw x17, 0(x15)
	bne x16, zero, trace_ray_beqelse_b831
# B830
	fsub x16, zero, x17
	j trace_ray_cont_b832 # adhoc jump(2)
trace_ray_beqelse_b831:
# B831
	mv x16, x17
trace_ray_cont_b832:
# B832
	fsub x16, x16, x12
	fdiv x16, x16, x11
	lw x17, 1(x47)
	fmul x17, x16, x17
	fadd x17, x17, x13
	fabs x17, x17
	lw x18, 1(x15)
	bfle x18, x17, trace_ray_bfgtelse_b838
# B834
	lw x17, 2(x47)
	fmul x17, x16, x17
	fadd x17, x17, x14
	fabs x17, x17
	lw x15, 2(x15)
	bfle x15, x17, trace_ray_bfgtelse_b838
# B836
	sw x16, 0(x44)
	mv x18, x102
# B837
	bne x18, zero, trace_ray_beqelse_b839
trace_ray_bfgtelse_b838:
trace_ray_bfneqelse_b838:
# B838
	lw x15, 1(x47)
	bfeq x15, zero, trace_ray_bfneqelse_b850
# B840
	lw x16, 4(x100)
	lw x17, 6(x100)
	fle x18, zero, x15
	xori x18, x18, 1
	xor x17, x17, x18
	lw x18, 1(x16)
	bne x17, zero, trace_ray_beqelse_b843
# B842
	fsub x17, zero, x18
	j trace_ray_cont_b844 # adhoc jump(2)
trace_ray_beqelse_b843:
# B843
	mv x17, x18
trace_ray_cont_b844:
# B844
	fsub x17, x17, x13
	fdiv x17, x17, x15
	lw x18, 2(x47)
	fmul x18, x17, x18
	fadd x18, x18, x14
	fabs x18, x18
	lw x19, 2(x16)
	bfle x19, x18, trace_ray_bfgtelse_b850
# B846
	fmul x18, x17, x11
	fadd x18, x18, x12
	fabs x18, x18
	lw x16, 0(x16)
	bfle x16, x18, trace_ray_bfgtelse_b850
# B848
	sw x17, 0(x44)
	mv x19, x102
# B849
	bne x19, zero, trace_ray_beqelse_b851
trace_ray_bfgtelse_b850:
trace_ray_bfneqelse_b850:
# B850
	lw x16, 2(x47)
	bfeq x16, zero, trace_ray_bfneqelse_b895
# B852
	lw x17, 4(x100)
	lw x100, 6(x100)
	fle x18, zero, x16
	xori x18, x18, 1
	xor x100, x100, x18
	lw x18, 2(x17)
	bne x100, zero, trace_ray_beqelse_b855
# B854
	fsub x100, zero, x18
	j trace_ray_cont_b856 # adhoc jump(2)
trace_ray_beqelse_b855:
# B855
	mv x100, x18
trace_ray_cont_b856:
# B856
	fsub x100, x100, x14
	fdiv x100, x100, x16
	fmul x11, x100, x11
	fadd x11, x11, x12
	fabs x11, x11
	lw x12, 0(x17)
	bfle x12, x11, trace_ray_bfgtelse_b895
# B858
	fmul x11, x100, x15
	fadd x11, x11, x13
	fabs x11, x11
	lw x12, 1(x17)
	bfle x12, x11, trace_ray_bfgtelse_b895
# B860
	sw x100, 0(x44)
	mv x13, x102
# B861
	bne x13, zero, trace_ray_beqelse_b889
	j trace_ray_cont_b895 # adhoc jump(3)
trace_ray_beqelse_b851:
# B851
	mv x100, x106
	j trace_ray_cont_b887 # adhoc jump(2)
trace_ray_beqelse_b839:
# B839
	mv x100, x102
	j trace_ray_cont_b887 # adhoc jump(2)
trace_ray_beqelse_b827:
# B827
	bne x15, x106, trace_ray_beqelse_b865
# B864
	lw x100, 4(x100)
	lw x11, 0(x47)
	lw x15, 0(x100)
	fmul x11, x11, x15
	lw x15, 1(x47)
	lw x16, 1(x100)
	fmul x15, x15, x16
	fadd x11, x11, x15
	lw x15, 2(x47)
	lw x16, 2(x100)
	fmul x15, x15, x16
	fadd x11, x11, x15
	bfle x11, zero, trace_ray_bfgtelse_b895
# B867
	lw x15, 0(x100)
	fmul x12, x15, x12
	lw x15, 1(x100)
	fmul x13, x15, x13
	fadd x12, x12, x13
	lw x100, 2(x100)
	fmul x100, x100, x14
	fadd x100, x12, x100
	fsub x100, zero, x100
	fdiv x100, x100, x11
	sw x100, 0(x44)
	mv x100, x102
	j trace_ray_cont_b887 # adhoc jump(2)
trace_ray_beqelse_b865:
# B865
	lw x15, 0(x47)
	lw x16, 1(x47)
	lw x17, 2(x47)
	fmul x18, x15, x15
	lw x19, 4(x100)
	lw x19, 0(x19)
	fmul x18, x18, x19
	fmul x19, x16, x16
	lw x20, 4(x100)
	lw x20, 1(x20)
	fmul x19, x19, x20
	fadd x18, x18, x19
	fmul x19, x17, x17
	lw x20, 4(x100)
	lw x20, 2(x20)
	fmul x19, x19, x20
	fadd x18, x18, x19
	lw x19, 3(x100)
	bne x19, zero, trace_ray_beqelse_b869
	j trace_ray_cont_b870 # adhoc jump(3)
trace_ray_beqelse_b869:
# B869
	fmul x19, x16, x17
	lw x20, 9(x100)
	lw x20, 0(x20)
	fmul x19, x19, x20
	fadd x18, x18, x19
	fmul x19, x17, x15
	lw x20, 9(x100)
	lw x20, 1(x20)
	fmul x19, x19, x20
	fadd x18, x18, x19
	fmul x19, x15, x16
	lw x20, 9(x100)
	lw x20, 2(x20)
	fmul x19, x19, x20
	fadd x18, x18, x19
trace_ray_cont_b870:
# B870
	bfeq x18, zero, trace_ray_bfneqelse_b895
trace_ray_cont_b871:
# B871
	fmul x19, x15, x12
	lw x20, 4(x100)
	lw x20, 0(x20)
	fmul x19, x19, x20
	fmul x20, x16, x13
	lw x21, 4(x100)
	lw x21, 1(x21)
	fmul x20, x20, x21
	fadd x19, x19, x20
	fmul x20, x17, x14
	lw x21, 4(x100)
	lw x21, 2(x21)
	fmul x20, x20, x21
	fadd x19, x19, x20
	lw x20, 3(x100)
	bne x20, zero, trace_ray_beqelse_b874
# B873
	mv x15, x19
	j trace_ray_cont_b875 # adhoc jump(2)
trace_ray_beqelse_b874:
# B874
	fmul x20, x17, x13
	fmul x21, x16, x14
	fadd x20, x20, x21
	lw x21, 9(x100)
	lw x21, 0(x21)
	fmul x20, x20, x21
	fmul x21, x15, x14
	fmul x17, x17, x12
	fadd x17, x21, x17
	lw x21, 9(x100)
	lw x21, 1(x21)
	fmul x17, x17, x21
	fadd x17, x20, x17
	fmul x15, x15, x13
	fmul x16, x16, x12
	fadd x15, x15, x16
	lw x16, 9(x100)
	lw x16, 2(x16)
	fmul x15, x15, x16
	fadd x15, x17, x15
	fmul x15, x15, x112
	fadd x15, x19, x15
trace_ray_cont_b875:
# B875
	fmul x16, x12, x12
	lw x17, 4(x100)
	lw x17, 0(x17)
	fmul x16, x16, x17
	fmul x17, x13, x13
	lw x19, 4(x100)
	lw x19, 1(x19)
	fmul x17, x17, x19
	fadd x16, x16, x17
	fmul x17, x14, x14
	lw x19, 4(x100)
	lw x19, 2(x19)
	fmul x17, x17, x19
	fadd x16, x16, x17
	lw x17, 3(x100)
	bne x17, zero, trace_ray_beqelse_b877
# B876
	mv x12, x16
	j trace_ray_cont_b878 # adhoc jump(2)
trace_ray_beqelse_b877:
# B877
	fmul x17, x13, x14
	lw x19, 9(x100)
	lw x19, 0(x19)
	fmul x17, x17, x19
	fadd x16, x16, x17
	fmul x14, x14, x12
	lw x17, 9(x100)
	lw x17, 1(x17)
	fmul x14, x14, x17
	fadd x14, x16, x14
	fmul x12, x12, x13
	lw x13, 9(x100)
	lw x13, 2(x13)
	fmul x12, x12, x13
	fadd x12, x14, x12
trace_ray_cont_b878:
# B878
	lw x13, 1(x100)
	bne x13, x11, trace_ray_beqelse_b880
# B879
	fsub x11, x12, x114
	j trace_ray_cont_b881 # adhoc jump(2)
trace_ray_beqelse_b880:
# B880
	mv x11, x12
trace_ray_cont_b881:
# B881
	fmul x12, x15, x15
	fmul x11, x18, x11
	fsub x11, x12, x11
	bfle x11, zero, trace_ray_bfgtelse_b895
# B883
	fsqrt x11, x11
	lw x100, 6(x100)
	bne x100, zero, trace_ray_beqelse_b885
# B884
	fsub x100, zero, x11
	j trace_ray_cont_b886 # adhoc jump(2)
trace_ray_beqelse_b885:
# B885
	mv x100, x11
trace_ray_cont_b886:
# B886
	fsub x100, x100, x15
	fdiv x100, x100, x18
	sw x100, 0(x44)
	mv x100, x102
trace_ray_cont_b887:
# B887
	bne x100, zero, trace_ray_beqelse_b889
	j trace_ray_cont_b895 # adhoc jump(3)
trace_ray_beqelse_b889:
trace_ray_cont_b889:
# B889
	lw x100, 0(x44)
	lw x11, 0(x121)
	bfle x11, x100, trace_ray_bfgtelse_b895
# B891
	mv x52, x47
	mv x50, x102
	mv x51, x10
	j	trace_ray_loop_b892 # jumping over moved block
trace_ray_beqelse_b894:	#moved
# B894
	lwr x6, x49, x10
	mv x7, x52
	mv x5, zero
	addi	x2, x2, 41
	jal	solve_each_element.3022
	addi	x2, x2, -41
	addi x50, x50, 1
trace_ray_loop_b892:
# B892
	lwr x10, x51, x50
	bne x10, x48, trace_ray_beqelse_b894
trace_ray_bfgtelse_b895:
trace_ray_bfneqelse_b895:
trace_ray_cont_b895:
# B895
	addi x45, x45, 1
	j trace_ray_loop_b818 # loopback to while entry from B895
trace_ray_bneelse_b896:
# B896
	lw x10, 0(x121)
	lui x100, 777421
	addi x100, x100, -819
	fle x12, x10, x100
	lui x13, 314348
	addi x13, x13, -992
	bne x12, zero, trace_ray_beqelse_b900
# B898
	fle x10, x13, x10
	xori x10, x10, 1
	mv x12, x10
# B899
	bne x12, zero, trace_ray_beqelse_b901
trace_ray_beqelse_b900:
# B900
	add x4, x127, x122
	sw x48, 0(x4)
	bne x122, zero, trace_ray_beqelse_b903
# B902
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
	ret
trace_ray_beqelse_b903:
# B903
	lw x10, 0(x124)
	lw x100, 0(x103)
	fmul x10, x10, x100
	lw x100, 1(x124)
	lw x11, 1(x103)
	fmul x100, x100, x11
	fadd x10, x10, x100
	lw x100, 2(x124)
	lw x11, 2(x103)
	fmul x100, x100, x11
	fadd x10, x10, x100
	fsub x10, zero, x10
	bfle x10, zero, trace_ray_bfgtelse_b904
# B905
	fmul x100, x10, x10
	fmul x10, x100, x10
	fmul x10, x10, x123
	lw x100, 0(x104)
	fmul x10, x10, x100
	lw x100, 0(x105)
	fadd x100, x100, x10
	sw x100, 0(x105)
	lw x100, 1(x105)
	fadd x100, x100, x10
	sw x100, 1(x105)
	lw x100, 2(x105)
	fadd x10, x100, x10
	add x4, x105, x106
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
	ret
trace_ray_bfgtelse_b904:
# B904
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
	ret
trace_ray_beqelse_b901:
# B901
	lw x10, 0(x107)
	lwr x12, x108, x10
	lw x14, 2(x12)
	lw x15, 7(x12)
	lw x15, 0(x15)
	fmul x16, x15, x123
	lw x17, 1(x12)
	bne x17, x102, trace_ray_beqelse_b907
# B906
	lw x17, 0(x111)
	sw zero, 0(x116)
	sw zero, 1(x116)
	sw zero, 2(x116)
	addi x17, x17, -1
	lwr x18, x124, x17
	bfeq x18, zero, trace_ray_bfneqelse_b909
# B908
	bfle x18, zero, trace_ray_bfgtelse_b910
# B911
	mv x18, x114
	j trace_ray_cont_b912 # adhoc jump(2)
trace_ray_bfgtelse_b910:
# B910
	lui x18, 784384
	j trace_ray_cont_b912 # adhoc jump(2)
trace_ray_bfneqelse_b909:
# B909
	mv x18, zero
trace_ray_cont_b912:
# B912
	fsub x18, zero, x18
	add x4, x116, x17
	sw x18, 0(x4)
	j trace_ray_cont_b923 # adhoc jump(2)
trace_ray_beqelse_b907:
# B907
	bne x17, x106, trace_ray_beqelse_b914
# B913
	lw x17, 4(x12)
	lw x17, 0(x17)
	fsub x17, zero, x17
	sw x17, 0(x116)
	lw x17, 4(x12)
	lw x17, 1(x17)
	fsub x17, zero, x17
	sw x17, 1(x116)
	lw x17, 4(x12)
	lw x17, 2(x17)
	fsub x17, zero, x17
	sw x17, 2(x116)
	j trace_ray_cont_b923 # adhoc jump(2)
trace_ray_beqelse_b914:
# B914
	lw x17, 0(x110)
	lw x18, 5(x12)
	lw x18, 0(x18)
	fsub x17, x17, x18
	lw x18, 1(x110)
	lw x19, 5(x12)
	lw x19, 1(x19)
	fsub x18, x18, x19
	lw x19, 2(x110)
	lw x20, 5(x12)
	lw x20, 2(x20)
	fsub x19, x19, x20
	lw x20, 4(x12)
	lw x20, 0(x20)
	fmul x20, x17, x20
	lw x21, 4(x12)
	lw x21, 1(x21)
	fmul x21, x18, x21
	lw x22, 4(x12)
	lw x22, 2(x22)
	fmul x22, x19, x22
	lw x23, 3(x12)
	bne x23, zero, trace_ray_beqelse_b916
# B915
	sw x20, 0(x116)
	sw x21, 1(x116)
	sw x22, 2(x116)
	j trace_ray_cont_b917 # adhoc jump(2)
trace_ray_beqelse_b916:
# B916
	lw x23, 9(x12)
	lw x23, 2(x23)
	fmul x23, x18, x23
	lw x24, 9(x12)
	lw x24, 1(x24)
	fmul x24, x19, x24
	fadd x23, x23, x24
	fmul x23, x23, x112
	fadd x20, x20, x23
	sw x20, 0(x116)
	lw x20, 9(x12)
	lw x20, 2(x20)
	fmul x20, x17, x20
	lw x23, 9(x12)
	lw x23, 0(x23)
	fmul x19, x19, x23
	fadd x19, x20, x19
	fmul x19, x19, x112
	fadd x19, x21, x19
	sw x19, 1(x116)
	lw x19, 9(x12)
	lw x19, 1(x19)
	fmul x17, x17, x19
	lw x19, 9(x12)
	lw x19, 0(x19)
	fmul x18, x18, x19
	fadd x17, x17, x18
	fmul x17, x17, x112
	fadd x17, x22, x17
	sw x17, 2(x116)
trace_ray_cont_b917:
# B917
	lw x17, 6(x12)
	lw x18, 0(x116)
	fmul x19, x18, x18
	lw x20, 1(x116)
	fmul x21, x20, x20
	fadd x19, x19, x21
	lw x21, 2(x116)
	fmul x22, x21, x21
	fadd x19, x19, x22
	fsqrt x19, x19
	bfeq x19, zero, trace_ray_bfneqelse_b919
# B918
	bne x17, zero, trace_ray_beqelse_b921
# B920
	fdiv x17, x114, x19
	j trace_ray_cont_b922 # adhoc jump(2)
trace_ray_beqelse_b921:
# B921
	lui x17, 784384
	fdiv x17, x17, x19
	j trace_ray_cont_b922 # adhoc jump(2)
trace_ray_bfneqelse_b919:
# B919
	mv x17, x114
trace_ray_cont_b922:
# B922
	fmul x18, x18, x17
	sw x18, 0(x116)
	fmul x18, x20, x17
	sw x18, 1(x116)
	fmul x17, x21, x17
	sw x17, 2(x116)
trace_ray_cont_b923:
# B923
	lw x17, 0(x110)
	sw x17, 0(x109)
	lw x18, 1(x110)
	sw x18, 1(x109)
	lw x19, 2(x110)
	sw x19, 2(x109)
	lw x20, 0(x12)
	lw x21, 8(x12)
	lw x21, 0(x21)
	sw x21, 0(x113)
	lw x21, 8(x12)
	lw x21, 1(x21)
	sw x21, 1(x113)
	lw x21, 8(x12)
	lw x21, 2(x21)
	sw x21, 2(x113)
	lui x21, 266752
	bne x20, x102, trace_ray_beqelse_b925
# B924
	lw x20, 5(x12)
	lw x20, 0(x20)
	fsub x20, x17, x20
	lui x22, 251085
	addi x22, x22, -819
	fmul x23, x20, x22
	floor x23, x23
	lui x24, 268800
	fmul x23, x23, x24
	fsub x20, x20, x23
	fle x20, x21, x20
	xori x20, x20, 1
	lw x23, 5(x12)
	lw x23, 2(x23)
	fsub x23, x19, x23
	fmul x22, x23, x22
	floor x22, x22
	fmul x22, x22, x24
	fsub x22, x23, x22
	fle x21, x21, x22
	xori x21, x21, 1
	bne x20, zero, trace_ray_beqelse_b927
# B926
	bne x21, zero, trace_ray_beqelse_b929
# B928
	lui x20, 276464
	j trace_ray_cont_b932 # adhoc jump(2)
trace_ray_beqelse_b929:
# B929
	mv x20, zero
	j trace_ray_cont_b932 # adhoc jump(2)
trace_ray_beqelse_b927:
# B927
	bne x21, zero, trace_ray_beqelse_b931
# B930
	mv x20, zero
	j trace_ray_cont_b932 # adhoc jump(2)
trace_ray_beqelse_b931:
# B931
	lui x20, 276464
trace_ray_cont_b932:
# B932
	sw x20, 1(x113)
	j trace_ray_cont_b1008 # adhoc jump(2)
trace_ray_beqelse_b925:
# B925
	lui x22, 265361
	addi x22, x22, -37
	lui x23, 262144
	lui x24, 263313
	addi x24, x24, -37
	lui x25, 261265
	addi x25, x25, -37
	lui x26, 259217
	addi x26, x26, -37
	lui x27, 778923
	addi x27, x27, -1364
	lui x28, 245896
	addi x28, x28, 1638
	lui x29, 758998
	addi x29, x29, 1206
	lui x30, 782336
	lui x31, 250538
	addi x31, x31, 1929
	lui x32, 764728
	addi x32, x32, 262
	lui x33, 276464
	bne x20, x106, trace_ray_beqelse_b934
# B933
	lui x20, 256000
	fmul x20, x18, x20
	fle x21, x20, zero
	xori x21, x21, 1
	fabs x20, x20
	mv x35, x22
	mv x34, x20
trace_ray_loop_b935:
# B935
	bfle x34, x35, trace_ray_bfgtelse_b938
# B936
	fmul x35, x35, x23
	j trace_ray_loop_b935 # loopback to while entry from B936
trace_ray_bfgtelse_b938:
# B938
	mv x37, x35
	mv x36, x20
	j	trace_ray_loop_b939 # jumping over moved block
trace_ray_bfgtelse_b943:	#moved
# B943
	mv x37, x20
trace_ray_loop_b939:
# B939
	bfle x22, x36, trace_ray_bfgtelse_b941
# B944
	fle x20, x24, x36
	bne x20, zero, trace_ray_beqelse_b946
# B945
	mv x22, x36
	j trace_ray_cont_b947 # adhoc jump(2)
trace_ray_beqelse_b946:
# B946
	fsub x22, x36, x24
trace_ray_cont_b947:
# B947
	xor x20, x20, x21
	bfle x25, x22, trace_ray_bfgtelse_b949
# B948
	mv x21, x22
	j trace_ray_cont_b950 # adhoc jump(2)
trace_ray_bfgtelse_b949:
# B949
	fsub x21, x24, x22
trace_ray_cont_b950:
# B950
	bfle x26, x21, trace_ray_bfgtelse_b952
# B951
	fmul x22, x21, x21
	fmul x23, x22, x29
	fadd x23, x28, x23
	fmul x23, x22, x23
	fadd x23, x27, x23
	fmul x22, x22, x23
	fadd x22, x114, x22
	fmul x21, x21, x22
	j trace_ray_cont_b953 # adhoc jump(2)
trace_ray_bfgtelse_b952:
# B952
	fsub x21, x25, x21
	fmul x21, x21, x21
	fmul x22, x21, x32
	fadd x22, x31, x22
	fmul x22, x21, x22
	fadd x22, x30, x22
	fmul x21, x21, x22
	fadd x21, x114, x21
trace_ray_cont_b953:
# B953
	fle x22, x21, zero
	beq x20, x22, trace_ray_bneelse_b955
# B954
	mv x20, x21
	j trace_ray_cont_b956 # adhoc jump(2)
trace_ray_bneelse_b955:
# B955
	fsub x20, zero, x21
trace_ray_cont_b956:
# B956
	fmul x20, x20, x20
	fmul x21, x33, x20
	sw x21, 0(x113)
	fsub x20, x114, x20
	fmul x20, x33, x20
	sw x20, 1(x113)
	j trace_ray_cont_b1008 # adhoc jump(2)
trace_ray_bfgtelse_b941:
# B941
	fdiv x20, x37, x23
	bfle x36, x37, trace_ray_bfgtelse_b943
# B942
	fsub x36, x36, x37
	mv x37, x20
	j trace_ray_loop_b939 # loopback to while entry from B942
trace_ray_beqelse_b934:
# B934
	lui x34, 263313
	addi x34, x34, -37
	bne x20, x11, trace_ray_beqelse_b958
# B957
	lw x20, 5(x12)
	lw x20, 0(x20)
	fsub x20, x17, x20
	lw x35, 5(x12)
	lw x35, 2(x35)
	fsub x35, x19, x35
	fmul x20, x20, x20
	fmul x35, x35, x35
	fadd x20, x20, x35
	fsqrt x20, x20
	fdiv x20, x20, x21
	floor x21, x20
	fsub x20, x20, x21
	fmul x20, x20, x34
	fabs x20, x20
	mv x34, x22
	mv x21, x20
trace_ray_loop_b959:
# B959
	bfle x21, x34, trace_ray_bfgtelse_b962
# B960
	fmul x34, x34, x23
	j trace_ray_loop_b959 # loopback to while entry from B960
trace_ray_bfgtelse_b962:
# B962
	mv x35, x20
	mv x36, x34
	j	trace_ray_loop_b963 # jumping over moved block
trace_ray_bfgtelse_b967:	#moved
# B967
	mv x36, x20
trace_ray_loop_b963:
# B963
	bfle x22, x35, trace_ray_bfgtelse_b965
# B968
	fle x20, x24, x35
	bne x20, zero, trace_ray_beqelse_b970
# B969
	mv x21, x35
	j trace_ray_cont_b971 # adhoc jump(2)
trace_ray_beqelse_b970:
# B970
	fsub x21, x35, x24
trace_ray_cont_b971:
# B971
	xori x20, x20, 1
	fle x22, x25, x21
	bne x22, zero, trace_ray_beqelse_b973
	j trace_ray_cont_b974 # adhoc jump(3)
trace_ray_beqelse_b973:
# B973
	fsub x21, x24, x21
trace_ray_cont_b974:
# B974
	xor x20, x22, x20
	bfle x26, x21, trace_ray_bfgtelse_b976
trace_ray_cont_b975:
# B975
	fmul x21, x21, x21
	fmul x22, x21, x32
	fadd x22, x31, x22
	fmul x22, x21, x22
	fadd x22, x30, x22
	fmul x21, x21, x22
	fadd x21, x114, x21
	j trace_ray_cont_b977 # adhoc jump(2)
trace_ray_bfgtelse_b976:
# B976
	fsub x21, x25, x21
	fmul x22, x21, x21
	fmul x23, x22, x29
	fadd x23, x28, x23
	fmul x23, x22, x23
	fadd x23, x27, x23
	fmul x22, x22, x23
	fadd x22, x114, x22
	fmul x21, x21, x22
trace_ray_cont_b977:
# B977
	fle x22, x21, zero
	beq x20, x22, trace_ray_bneelse_b979
# B978
	mv x20, x21
	j trace_ray_cont_b980 # adhoc jump(2)
trace_ray_bneelse_b979:
# B979
	fsub x20, zero, x21
trace_ray_cont_b980:
# B980
	fmul x20, x20, x20
	fmul x21, x20, x33
	sw x21, 1(x113)
	fsub x20, x114, x20
	fmul x20, x20, x33
	sw x20, 2(x113)
	j trace_ray_cont_b1008 # adhoc jump(2)
trace_ray_bfgtelse_b965:
# B965
	fdiv x20, x36, x23
	bfle x35, x36, trace_ray_bfgtelse_b967
# B966
	fsub x35, x35, x36
	mv x36, x20
	j trace_ray_loop_b963 # loopback to while entry from B966
trace_ray_beqelse_b958:
# B958
	bne x20, x101, trace_ray_beqelse_b1008
# B981
	lw x20, 5(x12)
	lw x20, 0(x20)
	fsub x20, x17, x20
	lw x21, 4(x12)
	lw x21, 0(x21)
	fsqrt x21, x21
	fmul x20, x20, x21
	lw x21, 5(x12)
	lw x21, 2(x21)
	fsub x21, x19, x21
	lw x22, 4(x12)
	lw x22, 2(x22)
	fsqrt x22, x22
	fmul x21, x21, x22
	fmul x22, x20, x20
	fmul x23, x21, x21
	fadd x22, x22, x23
	fabs x23, x20
	lui x24, 232731
	addi x24, x24, 1815
	fle x23, x24, x23
	lui x27, 257536
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
	lui x35, 251742
	addi x35, x35, 1989
	lui x36, 262592
	lui x37, 270080
	beq x23, zero, trace_ray_bneelse_b984
# B983
	fdiv x20, x21, x20
	fabs x20, x20
	fle x21, x20, zero
	xori x21, x21, 1
	fabs x23, x20
	bfle x27, x23, trace_ray_bfgtelse_b986
# B985
	fmul x21, x20, x20
	fmul x23, x21, x35
	fadd x23, x32, x23
	fmul x23, x21, x23
	fadd x23, x31, x23
	fmul x23, x21, x23
	fadd x23, x30, x23
	fmul x23, x21, x23
	fadd x23, x29, x23
	fmul x23, x21, x23
	fadd x23, x28, x23
	fmul x21, x21, x23
	fadd x21, x114, x21
	fmul x20, x20, x21
	j trace_ray_cont_b992 # adhoc jump(2)
trace_ray_bfgtelse_b986:
# B986
	bfle x36, x23, trace_ray_bfgtelse_b988
# B987
	fsub x20, x23, x114
	fadd x23, x23, x114
	fdiv x20, x20, x23
	fmul x23, x20, x20
	fmul x38, x23, x35
	fadd x38, x32, x38
	fmul x38, x23, x38
	fadd x38, x31, x38
	fmul x38, x23, x38
	fadd x38, x30, x38
	fmul x38, x23, x38
	fadd x38, x29, x38
	fmul x38, x23, x38
	fadd x38, x28, x38
	fmul x23, x23, x38
	fadd x23, x114, x23
	fmul x20, x20, x23
	fadd x20, x26, x20
	j trace_ray_cont_b989 # adhoc jump(2)
trace_ray_bfgtelse_b988:
# B988
	fdiv x20, x114, x23
	fmul x23, x20, x20
	fmul x38, x23, x35
	fadd x38, x32, x38
	fmul x38, x23, x38
	fadd x38, x31, x38
	fmul x38, x23, x38
	fadd x38, x30, x38
	fmul x38, x23, x38
	fadd x38, x29, x38
	fmul x38, x23, x38
	fadd x38, x28, x38
	fmul x23, x23, x38
	fadd x23, x114, x23
	fmul x20, x20, x23
	fsub x20, x25, x20
trace_ray_cont_b989:
# B989
	bne x21, zero, trace_ray_beqelse_b992
# B990
	fsub x20, zero, x20
trace_ray_beqelse_b992:
trace_ray_cont_b992:
# B992
	fmul x20, x20, x37
	fdiv x20, x20, x34
	j trace_ray_cont_b993 # adhoc jump(2)
trace_ray_bneelse_b984:
# B984
	lui x20, 268032
trace_ray_cont_b993:
# B993
	floor x21, x20
	fsub x20, x20, x21
	lw x21, 5(x12)
	lw x21, 1(x21)
	fsub x21, x18, x21
	lw x23, 4(x12)
	lw x23, 1(x23)
	fsqrt x23, x23
	fmul x21, x21, x23
	fabs x23, x22
	bfle x24, x23, trace_ray_bfgtelse_b994
# B995
	lui x21, 268032
	j trace_ray_cont_b1004 # adhoc jump(2)
trace_ray_bfgtelse_b994:
# B994
	fdiv x21, x21, x22
	fabs x21, x21
	fle x22, x21, zero
	xori x22, x22, 1
	fabs x23, x21
	bfle x27, x23, trace_ray_bfgtelse_b997
# B996
	fmul x22, x21, x21
	fmul x23, x22, x35
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
	fadd x22, x114, x22
	fmul x21, x21, x22
	j trace_ray_cont_b1003 # adhoc jump(2)
trace_ray_bfgtelse_b997:
# B997
	bfle x36, x23, trace_ray_bfgtelse_b999
# B998
	fsub x21, x23, x114
	fadd x23, x23, x114
	fdiv x21, x21, x23
	fmul x23, x21, x21
	fmul x24, x23, x35
	fadd x24, x32, x24
	fmul x24, x23, x24
	fadd x24, x31, x24
	fmul x24, x23, x24
	fadd x24, x30, x24
	fmul x24, x23, x24
	fadd x24, x29, x24
	fmul x24, x23, x24
	fadd x24, x28, x24
	fmul x23, x23, x24
	fadd x23, x114, x23
	fmul x21, x21, x23
	fadd x21, x26, x21
	j trace_ray_cont_b1000 # adhoc jump(2)
trace_ray_bfgtelse_b999:
# B999
	fdiv x21, x114, x23
	fmul x23, x21, x21
	fmul x24, x23, x35
	fadd x24, x32, x24
	fmul x24, x23, x24
	fadd x24, x31, x24
	fmul x24, x23, x24
	fadd x24, x30, x24
	fmul x24, x23, x24
	fadd x24, x29, x24
	fmul x24, x23, x24
	fadd x24, x28, x24
	fmul x23, x23, x24
	fadd x23, x114, x23
	fmul x21, x21, x23
	fsub x21, x25, x21
trace_ray_cont_b1000:
# B1000
	bne x22, zero, trace_ray_beqelse_b1003
# B1001
	fsub x21, zero, x21
trace_ray_beqelse_b1003:
trace_ray_cont_b1003:
# B1003
	fmul x21, x21, x37
	fdiv x21, x21, x34
trace_ray_cont_b1004:
# B1004
	floor x22, x21
	fsub x21, x21, x22
	lui x22, 254362
	addi x22, x22, -1638
	fsub x20, x112, x20
	fmul x20, x20, x20
	fsub x20, x22, x20
	fsub x21, x112, x21
	fmul x21, x21, x21
	fsub x20, x20, x21
	bfle zero, x20, trace_ray_bfgtelse_b1005
# B1006
	mv x21, zero
	j trace_ray_cont_b1007 # adhoc jump(2)
trace_ray_bfgtelse_b1005:
# B1005
	mv x21, x20
trace_ray_cont_b1007:
# B1007
	fmul x20, x33, x21
	lui x21, 256410
	addi x21, x21, -1638
	fdiv x20, x20, x21
	sw x20, 2(x113)
trace_ray_beqelse_b1008:
trace_ray_cont_b1008:
# B1008
	slli x10, x10, 2
	lw x20, 0(x111)
	add x10, x10, x20
	add x4, x127, x122
	sw x10, 0(x4)
	lw x10, 1(x125)
	lwr x10, x10, x122
	sw x17, 0(x10)
	sw x18, 1(x10)
	sw x19, 2(x10)
	lw x10, 3(x125)
	bfle x112, x15, trace_ray_bfgtelse_b1009
# B1010
	add x4, x10, x122
	sw zero, 0(x4)
	j trace_ray_cont_b1011 # adhoc jump(2)
trace_ray_bfgtelse_b1009:
# B1009
	add x4, x10, x122
	sw x102, 0(x4)
	lw x10, 4(x125)
	lwr x17, x10, x122
	lw x18, 0(x113)
	sw x18, 0(x17)
	lw x18, 1(x113)
	sw x18, 1(x17)
	lw x18, 2(x113)
	sw x18, 2(x17)
	lwr x10, x10, x122
	fdiv x17, x114, x115
	fmul x17, x17, x16
	lw x18, 0(x10)
	fmul x18, x18, x17
	sw x18, 0(x10)
	lw x18, 1(x10)
	fmul x18, x18, x17
	sw x18, 1(x10)
	lw x18, 2(x10)
	fmul x17, x18, x17
	sw x17, 2(x10)
	lw x10, 7(x125)
	lwr x10, x10, x122
	lw x17, 0(x116)
	sw x17, 0(x10)
	lw x17, 1(x116)
	sw x17, 1(x10)
	lw x17, 2(x116)
	sw x17, 2(x10)
trace_ray_cont_b1011:
# B1011
	lw x10, 0(x124)
	lw x17, 0(x116)
	fmul x18, x10, x17
	lw x19, 1(x124)
	lw x20, 1(x116)
	fmul x21, x19, x20
	fadd x18, x18, x21
	lw x21, 2(x124)
	lw x22, 2(x116)
	fmul x23, x21, x22
	fadd x18, x18, x23
	fmul x18, x117, x18
	fmul x17, x18, x17
	fadd x10, x10, x17
	sw x10, 0(x124)
	fmul x10, x18, x20
	fadd x10, x19, x10
	sw x10, 1(x124)
	fmul x10, x18, x22
	fadd x10, x21, x10
	sw x10, 2(x124)
	lw x10, 7(x12)
	lw x10, 1(x10)
	fmul x10, x123, x10
	la x12, min_caml_light_dirvec
	mv x17, zero
	mv x18, x42
trace_ray_bneelse_b1012:
trace_ray_loop_b1012:
# B1012
	lwr x19, x18, x17
	lw x20, 0(x19)
	lui x21, 779469
	addi x21, x21, -819
	lui x22, 246333
	addi x22, x22, 1802
	beq x20, x48, trace_ray_bneelse_b1238
# B1014
	bne x20, x43, trace_ray_beqelse_b1016
# B1015
	mv x20, x102
	j trace_ray_cont_b1148 # adhoc jump(2)
trace_ray_beqelse_b1016:
# B1016
	lwr x23, x108, x20
	lw x24, 0(x110)
	lw x25, 5(x23)
	lw x25, 0(x25)
	fsub x24, x24, x25
	lw x25, 1(x110)
	lw x26, 5(x23)
	lw x26, 1(x26)
	fsub x25, x25, x26
	lw x26, 2(x110)
	lw x27, 5(x23)
	lw x27, 2(x27)
	fsub x26, x26, x27
	lw x27, 1(x12)
	lwr x20, x27, x20
	lw x27, 1(x23)
	bne x27, x102, trace_ray_beqelse_b1018
# B1017
	lw x27, 0(x12)
	lw x28, 0(x20)
	fsub x28, x28, x24
	lw x29, 1(x20)
	fmul x28, x28, x29
	lw x30, 1(x27)
	fmul x31, x28, x30
	fadd x31, x31, x25
	fabs x31, x31
	lw x32, 4(x23)
	lw x32, 1(x32)
	bfle x32, x31, trace_ray_bfgtelse_b1024
# B1020
	lw x31, 2(x27)
	fmul x31, x28, x31
	fadd x31, x31, x26
	fabs x31, x31
	lw x33, 4(x23)
	lw x33, 2(x33)
	bfle x33, x31, trace_ray_bfgtelse_b1024
# B1022
	feq x29, x29, zero
	xori x29, x29, 1
	mv x31, x29
# B1023
	bne x31, zero, trace_ray_beqelse_b1025
trace_ray_bfgtelse_b1024:
# B1024
	lw x28, 2(x20)
	fsub x28, x28, x25
	lw x29, 3(x20)
	fmul x28, x28, x29
	lw x31, 0(x27)
	fmul x33, x28, x31
	fadd x33, x33, x24
	fabs x33, x33
	lw x34, 4(x23)
	lw x34, 0(x34)
	bfle x34, x33, trace_ray_bfgtelse_b1031
# B1027
	lw x27, 2(x27)
	fmul x27, x28, x27
	fadd x27, x27, x26
	fabs x27, x27
	lw x23, 4(x23)
	lw x23, 2(x23)
	bfle x23, x27, trace_ray_bfgtelse_b1031
# B1029
	feq x23, x29, zero
	xori x23, x23, 1
	mv x27, x23
# B1030
	bne x27, zero, trace_ray_beqelse_b1032
trace_ray_bfgtelse_b1031:
# B1031
	lw x23, 4(x20)
	fsub x23, x23, x26
	lw x20, 5(x20)
	fmul x23, x23, x20
	fmul x26, x23, x31
	fadd x24, x26, x24
	fabs x24, x24
	bfle x34, x24, trace_ray_bfgtelse_b1058
# B1034
	fmul x24, x23, x30
	fadd x24, x24, x25
	fabs x24, x24
	bfle x32, x24, trace_ray_bfgtelse_b1058
# B1036
	feq x20, x20, zero
	xori x20, x20, 1
	mv x24, x20
# B1037
	bne x24, zero, trace_ray_beqelse_b1039
	j trace_ray_cont_b1058 # adhoc jump(3)
trace_ray_beqelse_b1039:
# B1039
	sw x23, 0(x44)
	mv x20, x11
	j trace_ray_cont_b1057 # adhoc jump(2)
trace_ray_beqelse_b1032:
# B1032
	sw x28, 0(x44)
	mv x20, x106
	j trace_ray_cont_b1057 # adhoc jump(2)
trace_ray_beqelse_b1025:
# B1025
	sw x28, 0(x44)
	mv x20, x102
	j trace_ray_cont_b1057 # adhoc jump(2)
trace_ray_beqelse_b1018:
# B1018
	bne x27, x106, trace_ray_beqelse_b1041
# B1040
	lw x23, 0(x20)
	bfle zero, x23, trace_ray_bfgtelse_b1058
# B1043
	lw x23, 1(x20)
	fmul x23, x23, x24
	lw x24, 2(x20)
	fmul x24, x24, x25
	fadd x23, x23, x24
	lw x20, 3(x20)
	fmul x20, x20, x26
	fadd x20, x23, x20
	sw x20, 0(x44)
	mv x20, x102
	j trace_ray_cont_b1057 # adhoc jump(2)
trace_ray_beqelse_b1041:
# B1041
	lw x27, 0(x20)
	bfeq x27, zero, trace_ray_bfneqelse_b1058
# B1044
	lw x28, 1(x20)
	fmul x28, x28, x24
	lw x29, 2(x20)
	fmul x29, x29, x25
	fadd x28, x28, x29
	lw x29, 3(x20)
	fmul x29, x29, x26
	fadd x28, x28, x29
	fmul x29, x24, x24
	lw x30, 4(x23)
	lw x30, 0(x30)
	fmul x29, x29, x30
	fmul x30, x25, x25
	lw x31, 4(x23)
	lw x31, 1(x31)
	fmul x30, x30, x31
	fadd x29, x29, x30
	fmul x30, x26, x26
	lw x31, 4(x23)
	lw x31, 2(x31)
	fmul x30, x30, x31
	fadd x29, x29, x30
	lw x30, 3(x23)
	bne x30, zero, trace_ray_beqelse_b1047
# B1046
	mv x24, x29
	j trace_ray_cont_b1048 # adhoc jump(2)
trace_ray_beqelse_b1047:
# B1047
	fmul x30, x25, x26
	lw x31, 9(x23)
	lw x31, 0(x31)
	fmul x30, x30, x31
	fadd x29, x29, x30
	fmul x26, x26, x24
	lw x30, 9(x23)
	lw x30, 1(x30)
	fmul x26, x26, x30
	fadd x26, x29, x26
	fmul x24, x24, x25
	lw x25, 9(x23)
	lw x25, 2(x25)
	fmul x24, x24, x25
	fadd x24, x26, x24
trace_ray_cont_b1048:
# B1048
	lw x25, 1(x23)
	bne x25, x11, trace_ray_beqelse_b1051
# B1049
	fsub x24, x24, x114
trace_ray_beqelse_b1051:
# B1051
	fmul x25, x28, x28
	fmul x24, x27, x24
	fsub x24, x25, x24
	bfle x24, zero, trace_ray_bfgtelse_b1058
# B1053
	lw x23, 6(x23)
	fsqrt x24, x24
	bne x23, zero, trace_ray_beqelse_b1055
# B1054
	fsub x23, x28, x24
	lw x20, 4(x20)
	fmul x20, x23, x20
	sw x20, 0(x44)
	j trace_ray_cont_b1056 # adhoc jump(2)
trace_ray_beqelse_b1055:
# B1055
	fadd x23, x28, x24
	lw x20, 4(x20)
	fmul x20, x23, x20
	sw x20, 0(x44)
trace_ray_cont_b1056:
# B1056
	mv x20, x102
trace_ray_cont_b1057:
# B1057
	bne x20, zero, trace_ray_beqelse_b1059
trace_ray_bfgtelse_b1058:
trace_ray_bfneqelse_b1058:
trace_ray_cont_b1058:
# B1058
	mv x20, zero
	j trace_ray_cont_b1148 # adhoc jump(2)
trace_ray_beqelse_b1059:
# B1059
	lw x20, 0(x44)
	bfle x100, x20, trace_ray_bfgtelse_b1060
# B1061
	mv x23, x102
	mv x24, x19
trace_ray_loop_b1062:
# B1062
	lwr x20, x24, x23
	beq x20, x48, trace_ray_bneelse_b1146
# B1064
	lwr x20, x49, x20
	mv x26, x20
	mv x25, zero
trace_ray_beqelse_b1065:
trace_ray_loop_b1065:
# B1065
	lwr x20, x26, x25
	beq x20, x48, trace_ray_bneelse_b1143
# B1067
	lwr x20, x26, x25
	lwr x27, x108, x20
	lw x28, 0(x110)
	lw x29, 5(x27)
	lw x29, 0(x29)
	fsub x29, x28, x29
	lw x30, 1(x110)
	lw x31, 5(x27)
	lw x31, 1(x31)
	fsub x31, x30, x31
	lw x32, 2(x110)
	lw x33, 5(x27)
	lw x33, 2(x33)
	fsub x33, x32, x33
	lw x34, 1(x12)
	lwr x34, x34, x20
	lw x35, 1(x27)
	bne x35, x102, trace_ray_beqelse_b1069
# B1068
	lw x35, 0(x12)
	lw x36, 0(x34)
	fsub x36, x36, x29
	lw x37, 1(x34)
	fmul x36, x36, x37
	lw x38, 1(x35)
	fmul x39, x36, x38
	fadd x39, x39, x31
	fabs x39, x39
	lw x40, 4(x27)
	lw x40, 1(x40)
	bfle x40, x39, trace_ray_bfgtelse_b1075
# B1071
	lw x39, 2(x35)
	fmul x39, x36, x39
	fadd x39, x39, x33
	fabs x39, x39
	lw x5, 4(x27)
	lw x5, 2(x5)
	bfle x5, x39, trace_ray_bfgtelse_b1075
# B1073
	feq x37, x37, zero
	xori x37, x37, 1
	mv x39, x37
# B1074
	bne x39, zero, trace_ray_beqelse_b1076
trace_ray_bfgtelse_b1075:
# B1075
	lw x36, 2(x34)
	fsub x36, x36, x31
	lw x37, 3(x34)
	fmul x36, x36, x37
	lw x39, 0(x35)
	fmul x5, x36, x39
	fadd x5, x5, x29
	fabs x5, x5
	lw x6, 4(x27)
	lw x6, 0(x6)
	bfle x6, x5, trace_ray_bfgtelse_b1082
# B1078
	lw x35, 2(x35)
	fmul x35, x36, x35
	fadd x35, x35, x33
	fabs x35, x35
	lw x27, 4(x27)
	lw x27, 2(x27)
	bfle x27, x35, trace_ray_bfgtelse_b1082
# B1080
	feq x27, x37, zero
	xori x27, x27, 1
	mv x35, x27
# B1081
	bne x35, zero, trace_ray_beqelse_b1083
trace_ray_bfgtelse_b1082:
# B1082
	lw x27, 4(x34)
	fsub x27, x27, x33
	lw x33, 5(x34)
	fmul x27, x27, x33
	fmul x34, x27, x39
	fadd x29, x34, x29
	fabs x29, x29
	bfle x6, x29, trace_ray_bfgtelse_b1089
# B1085
	fmul x29, x27, x38
	fadd x29, x29, x31
	fabs x29, x29
	bfle x40, x29, trace_ray_bfgtelse_b1089
# B1087
	feq x29, x33, zero
	xori x29, x29, 1
	mv x31, x29
# B1088
	bne x31, zero, trace_ray_beqelse_b1090
trace_ray_bfgtelse_b1089:
# B1089
	mv x27, zero
	j trace_ray_cont_b1108 # adhoc jump(2)
trace_ray_beqelse_b1090:
# B1090
	sw x27, 0(x44)
	mv x27, x11
	j trace_ray_cont_b1108 # adhoc jump(2)
trace_ray_beqelse_b1083:
# B1083
	sw x36, 0(x44)
	mv x27, x106
	j trace_ray_cont_b1108 # adhoc jump(2)
trace_ray_beqelse_b1076:
# B1076
	sw x36, 0(x44)
	mv x27, x102
	j trace_ray_cont_b1108 # adhoc jump(2)
trace_ray_beqelse_b1069:
# B1069
	bne x35, x106, trace_ray_beqelse_b1092
# B1091
	lw x27, 0(x34)
	bfle zero, x27, trace_ray_bfgtelse_b1093
# B1094
	lw x27, 1(x34)
	fmul x27, x27, x29
	lw x29, 2(x34)
	fmul x29, x29, x31
	fadd x27, x27, x29
	lw x29, 3(x34)
	fmul x29, x29, x33
	fadd x27, x27, x29
	sw x27, 0(x44)
	mv x27, x102
	j trace_ray_cont_b1108 # adhoc jump(2)
trace_ray_bfgtelse_b1093:
# B1093
	mv x27, zero
	j trace_ray_cont_b1108 # adhoc jump(2)
trace_ray_beqelse_b1092:
# B1092
	lw x35, 0(x34)
	bfeq x35, zero, trace_ray_bfneqelse_b1096
# B1095
	lw x36, 1(x34)
	fmul x36, x36, x29
	lw x37, 2(x34)
	fmul x37, x37, x31
	fadd x36, x36, x37
	lw x37, 3(x34)
	fmul x37, x37, x33
	fadd x36, x36, x37
	fmul x37, x29, x29
	lw x38, 4(x27)
	lw x38, 0(x38)
	fmul x37, x37, x38
	fmul x38, x31, x31
	lw x39, 4(x27)
	lw x39, 1(x39)
	fmul x38, x38, x39
	fadd x37, x37, x38
	fmul x38, x33, x33
	lw x39, 4(x27)
	lw x39, 2(x39)
	fmul x38, x38, x39
	fadd x37, x37, x38
	lw x38, 3(x27)
	bne x38, zero, trace_ray_beqelse_b1098
# B1097
	mv x29, x37
	j trace_ray_cont_b1099 # adhoc jump(2)
trace_ray_beqelse_b1098:
# B1098
	fmul x38, x31, x33
	lw x39, 9(x27)
	lw x39, 0(x39)
	fmul x38, x38, x39
	fadd x37, x37, x38
	fmul x33, x33, x29
	lw x38, 9(x27)
	lw x38, 1(x38)
	fmul x33, x33, x38
	fadd x33, x37, x33
	fmul x29, x29, x31
	lw x31, 9(x27)
	lw x31, 2(x31)
	fmul x29, x29, x31
	fadd x29, x33, x29
trace_ray_cont_b1099:
# B1099
	lw x31, 1(x27)
	bne x31, x11, trace_ray_beqelse_b1102
# B1100
	fsub x29, x29, x114
trace_ray_beqelse_b1102:
# B1102
	fmul x31, x36, x36
	fmul x29, x35, x29
	fsub x29, x31, x29
	bfle x29, zero, trace_ray_bfgtelse_b1103
# B1104
	lw x27, 6(x27)
	fsqrt x29, x29
	bne x27, zero, trace_ray_beqelse_b1106
# B1105
	fsub x27, x36, x29
	lw x29, 4(x34)
	fmul x27, x27, x29
	sw x27, 0(x44)
	j trace_ray_cont_b1107 # adhoc jump(2)
trace_ray_beqelse_b1106:
# B1106
	fadd x27, x36, x29
	lw x29, 4(x34)
	fmul x27, x27, x29
	sw x27, 0(x44)
trace_ray_cont_b1107:
# B1107
	mv x27, x102
	j trace_ray_cont_b1108 # adhoc jump(2)
trace_ray_bfgtelse_b1103:
# B1103
	mv x27, zero
	j trace_ray_cont_b1108 # adhoc jump(2)
trace_ray_bfneqelse_b1096:
# B1096
	mv x27, zero
trace_ray_cont_b1108:
# B1108
	lw x29, 0(x44)
	bne x27, zero, trace_ray_beqelse_b1110
# B1109
	mv x27, zero
	j trace_ray_cont_b1111 # adhoc jump(2)
trace_ray_beqelse_b1110:
# B1110
	fle x27, x21, x29
	xori x27, x27, 1
trace_ray_cont_b1111:
# B1111
	addi x25, x25, 1
	bne x27, zero, trace_ray_beqelse_b1113
# B1112
	lwr x20, x108, x20
	lw x20, 6(x20)
	beq x20, zero, trace_ray_bneelse_b1143
	j	trace_ray_beqelse_b1065 # moved need extra jump for 1065 at B1112
trace_ray_beqelse_b1113:
# B1113
	fadd x20, x29, x22
	lw x27, 0(x103)
	fmul x27, x27, x20
	fadd x27, x27, x28
	lw x28, 1(x103)
	fmul x28, x28, x20
	fadd x28, x28, x30
	lw x29, 2(x103)
	fmul x20, x29, x20
	fadd x20, x20, x32
	mv x31, x27
	mv x30, x26
	mv x32, x28
	mv x33, x20
	mv x29, zero
	j	trace_ray_loop_b1116 # jumping over moved block
trace_ray_bneelse_b1137:	#moved
# B1137
	addi x29, x29, 1
trace_ray_loop_b1116:
# B1116
	lwr x20, x30, x29
	bne x20, x48, trace_ray_beqelse_b1118
# B1117
	mv x27, x102
# B1139
	bne x27, zero, trace_ray_beqelse_b1141
	j	trace_ray_beqelse_b1065 # moved need extra jump for 1065 at B1139
trace_ray_beqelse_b1141:
# B1141
	mv x20, x102
trace_ray_cont_b1142:
# B1142
	bne x20, zero, trace_ray_beqelse_b1144
trace_ray_bneelse_b1143:
trace_ray_cont_b1143:
# B1143
	addi x23, x23, 1
	j trace_ray_loop_b1062 # loopback to while entry from B1143
trace_ray_beqelse_b1144:
# B1144
	mv x25, x102
# B1145
	bne x25, zero, trace_ray_beqelse_b1147
trace_ray_bneelse_b1146:
# B1146
	mv x20, zero
	j trace_ray_cont_b1148 # adhoc jump(2)
trace_ray_beqelse_b1147:
# B1147
	mv x20, x102
	j trace_ray_cont_b1148 # adhoc jump(2)
trace_ray_beqelse_b1118:
# B1118
	lwr x20, x108, x20
	lw x27, 5(x20)
	lw x27, 0(x27)
	fsub x27, x31, x27
	lw x28, 5(x20)
	lw x28, 1(x28)
	fsub x28, x32, x28
	lw x34, 5(x20)
	lw x34, 2(x34)
	fsub x34, x33, x34
	lw x35, 1(x20)
	bne x35, x102, trace_ray_beqelse_b1120
# B1119
	fabs x27, x27
	lw x35, 4(x20)
	lw x35, 0(x35)
	bfle x35, x27, trace_ray_bfgtelse_b1126
# B1122
	fabs x27, x28
	lw x28, 4(x20)
	lw x28, 1(x28)
	bfle x28, x27, trace_ray_bfgtelse_b1126
# B1124
	fabs x27, x34
	lw x28, 4(x20)
	lw x28, 2(x28)
	fle x27, x28, x27
	xori x27, x27, 1
	mv x28, x27
# B1125
	bne x28, zero, trace_ray_beqelse_b1127
trace_ray_bfgtelse_b1126:
# B1126
	lw x20, 6(x20)
	xori x20, x20, 1
	j trace_ray_cont_b1136 # adhoc jump(2)
trace_ray_beqelse_b1127:
# B1127
	lw x20, 6(x20)
	j trace_ray_cont_b1136 # adhoc jump(2)
trace_ray_beqelse_b1120:
# B1120
	bne x35, x106, trace_ray_beqelse_b1129
# B1128
	lw x35, 4(x20)
	lw x36, 0(x35)
	fmul x27, x36, x27
	lw x36, 1(x35)
	fmul x28, x36, x28
	fadd x27, x27, x28
	lw x28, 2(x35)
	fmul x28, x28, x34
	fadd x27, x27, x28
	lw x20, 6(x20)
	fle x27, zero, x27
	xori x27, x27, 1
	xor x20, x20, x27
	xori x20, x20, 1
	j trace_ray_cont_b1136 # adhoc jump(2)
trace_ray_beqelse_b1129:
# B1129
	fmul x35, x27, x27
	lw x36, 4(x20)
	lw x36, 0(x36)
	fmul x35, x35, x36
	fmul x36, x28, x28
	lw x37, 4(x20)
	lw x37, 1(x37)
	fmul x36, x36, x37
	fadd x35, x35, x36
	fmul x36, x34, x34
	lw x37, 4(x20)
	lw x37, 2(x37)
	fmul x36, x36, x37
	fadd x35, x35, x36
	lw x36, 3(x20)
	bne x36, zero, trace_ray_beqelse_b1131
# B1130
	mv x27, x35
	j trace_ray_cont_b1132 # adhoc jump(2)
trace_ray_beqelse_b1131:
# B1131
	fmul x36, x28, x34
	lw x37, 9(x20)
	lw x37, 0(x37)
	fmul x36, x36, x37
	fadd x35, x35, x36
	fmul x34, x34, x27
	lw x36, 9(x20)
	lw x36, 1(x36)
	fmul x34, x34, x36
	fadd x34, x35, x34
	fmul x27, x27, x28
	lw x28, 9(x20)
	lw x28, 2(x28)
	fmul x27, x27, x28
	fadd x27, x34, x27
trace_ray_cont_b1132:
# B1132
	lw x28, 1(x20)
	bne x28, x11, trace_ray_beqelse_b1135
# B1133
	fsub x27, x27, x114
trace_ray_beqelse_b1135:
# B1135
	lw x20, 6(x20)
	fle x27, zero, x27
	xori x27, x27, 1
	xor x20, x20, x27
	xori x20, x20, 1
trace_ray_cont_b1136:
# B1136
	beq x20, zero, trace_ray_bneelse_b1137
	j	trace_ray_beqelse_b1065 # moved need extra jump for 1065 at B1136
trace_ray_bfgtelse_b1060:
# B1060
	mv x20, zero
trace_ray_cont_b1148:
# B1148
	addi x17, x17, 1
	bne x20, zero, trace_ray_beqelse_b1150
	j	trace_ray_bneelse_b1012 # moved need extra jump for 1012 at B1148
trace_ray_beqelse_b1150:
# B1150
	mv x23, x102
	mv x24, x19
trace_ray_cont_b1151:
trace_ray_loop_b1151:
# B1151
	lwr x19, x24, x23
	beq x19, x48, trace_ray_bneelse_b1012
# B1153
	lwr x19, x49, x19
	mv x25, x19
	mv x20, zero
trace_ray_beqelse_b1154:
trace_ray_loop_b1154:
# B1154
	lwr x19, x25, x20
	beq x19, x48, trace_ray_bneelse_b1232
# B1156
	lwr x19, x25, x20
	lwr x26, x108, x19
	lw x27, 0(x110)
	lw x28, 5(x26)
	lw x28, 0(x28)
	fsub x28, x27, x28
	lw x29, 1(x110)
	lw x30, 5(x26)
	lw x30, 1(x30)
	fsub x30, x29, x30
	lw x31, 2(x110)
	lw x32, 5(x26)
	lw x32, 2(x32)
	fsub x32, x31, x32
	lw x33, 1(x12)
	lwr x33, x33, x19
	lw x34, 1(x26)
	bne x34, x102, trace_ray_beqelse_b1158
# B1157
	lw x34, 0(x12)
	lw x35, 0(x33)
	fsub x35, x35, x28
	lw x36, 1(x33)
	fmul x35, x35, x36
	lw x37, 1(x34)
	fmul x38, x35, x37
	fadd x38, x38, x30
	fabs x38, x38
	lw x39, 4(x26)
	lw x39, 1(x39)
	bfle x39, x38, trace_ray_bfgtelse_b1164
# B1160
	lw x38, 2(x34)
	fmul x38, x35, x38
	fadd x38, x38, x32
	fabs x38, x38
	lw x40, 4(x26)
	lw x40, 2(x40)
	bfle x40, x38, trace_ray_bfgtelse_b1164
# B1162
	feq x36, x36, zero
	xori x36, x36, 1
	mv x38, x36
# B1163
	bne x38, zero, trace_ray_beqelse_b1165
trace_ray_bfgtelse_b1164:
# B1164
	lw x35, 2(x33)
	fsub x35, x35, x30
	lw x36, 3(x33)
	fmul x35, x35, x36
	lw x38, 0(x34)
	fmul x40, x35, x38
	fadd x40, x40, x28
	fabs x40, x40
	lw x5, 4(x26)
	lw x5, 0(x5)
	bfle x5, x40, trace_ray_bfgtelse_b1171
# B1167
	lw x34, 2(x34)
	fmul x34, x35, x34
	fadd x34, x34, x32
	fabs x34, x34
	lw x26, 4(x26)
	lw x26, 2(x26)
	bfle x26, x34, trace_ray_bfgtelse_b1171
# B1169
	feq x26, x36, zero
	xori x26, x26, 1
	mv x34, x26
# B1170
	bne x34, zero, trace_ray_beqelse_b1172
trace_ray_bfgtelse_b1171:
# B1171
	lw x26, 4(x33)
	fsub x26, x26, x32
	lw x32, 5(x33)
	fmul x26, x26, x32
	fmul x33, x26, x38
	fadd x28, x33, x28
	fabs x28, x28
	bfle x5, x28, trace_ray_bfgtelse_b1178
# B1174
	fmul x28, x26, x37
	fadd x28, x28, x30
	fabs x28, x28
	bfle x39, x28, trace_ray_bfgtelse_b1178
# B1176
	feq x28, x32, zero
	xori x28, x28, 1
	mv x30, x28
# B1177
	bne x30, zero, trace_ray_beqelse_b1179
trace_ray_bfgtelse_b1178:
# B1178
	mv x26, zero
	j trace_ray_cont_b1197 # adhoc jump(2)
trace_ray_beqelse_b1179:
# B1179
	sw x26, 0(x44)
	mv x26, x11
	j trace_ray_cont_b1197 # adhoc jump(2)
trace_ray_beqelse_b1172:
# B1172
	sw x35, 0(x44)
	mv x26, x106
	j trace_ray_cont_b1197 # adhoc jump(2)
trace_ray_beqelse_b1165:
# B1165
	sw x35, 0(x44)
	mv x26, x102
	j trace_ray_cont_b1197 # adhoc jump(2)
trace_ray_beqelse_b1158:
# B1158
	bne x34, x106, trace_ray_beqelse_b1181
# B1180
	lw x26, 0(x33)
	bfle zero, x26, trace_ray_bfgtelse_b1182
# B1183
	lw x26, 1(x33)
	fmul x26, x26, x28
	lw x28, 2(x33)
	fmul x28, x28, x30
	fadd x26, x26, x28
	lw x28, 3(x33)
	fmul x28, x28, x32
	fadd x26, x26, x28
	sw x26, 0(x44)
	mv x26, x102
	j trace_ray_cont_b1197 # adhoc jump(2)
trace_ray_bfgtelse_b1182:
# B1182
	mv x26, zero
	j trace_ray_cont_b1197 # adhoc jump(2)
trace_ray_beqelse_b1181:
# B1181
	lw x34, 0(x33)
	bfeq x34, zero, trace_ray_bfneqelse_b1185
# B1184
	lw x35, 1(x33)
	fmul x35, x35, x28
	lw x36, 2(x33)
	fmul x36, x36, x30
	fadd x35, x35, x36
	lw x36, 3(x33)
	fmul x36, x36, x32
	fadd x35, x35, x36
	fmul x36, x28, x28
	lw x37, 4(x26)
	lw x37, 0(x37)
	fmul x36, x36, x37
	fmul x37, x30, x30
	lw x38, 4(x26)
	lw x38, 1(x38)
	fmul x37, x37, x38
	fadd x36, x36, x37
	fmul x37, x32, x32
	lw x38, 4(x26)
	lw x38, 2(x38)
	fmul x37, x37, x38
	fadd x36, x36, x37
	lw x37, 3(x26)
	bne x37, zero, trace_ray_beqelse_b1187
# B1186
	mv x28, x36
	j trace_ray_cont_b1188 # adhoc jump(2)
trace_ray_beqelse_b1187:
# B1187
	fmul x37, x30, x32
	lw x38, 9(x26)
	lw x38, 0(x38)
	fmul x37, x37, x38
	fadd x36, x36, x37
	fmul x32, x32, x28
	lw x37, 9(x26)
	lw x37, 1(x37)
	fmul x32, x32, x37
	fadd x32, x36, x32
	fmul x28, x28, x30
	lw x30, 9(x26)
	lw x30, 2(x30)
	fmul x28, x28, x30
	fadd x28, x32, x28
trace_ray_cont_b1188:
# B1188
	lw x30, 1(x26)
	bne x30, x11, trace_ray_beqelse_b1191
# B1189
	fsub x28, x28, x114
trace_ray_beqelse_b1191:
# B1191
	fmul x30, x35, x35
	fmul x28, x34, x28
	fsub x28, x30, x28
	bfle x28, zero, trace_ray_bfgtelse_b1192
# B1193
	lw x26, 6(x26)
	fsqrt x28, x28
	bne x26, zero, trace_ray_beqelse_b1195
# B1194
	fsub x26, x35, x28
	lw x28, 4(x33)
	fmul x26, x26, x28
	sw x26, 0(x44)
	j trace_ray_cont_b1196 # adhoc jump(2)
trace_ray_beqelse_b1195:
# B1195
	fadd x26, x35, x28
	lw x28, 4(x33)
	fmul x26, x26, x28
	sw x26, 0(x44)
trace_ray_cont_b1196:
# B1196
	mv x26, x102
	j trace_ray_cont_b1197 # adhoc jump(2)
trace_ray_bfgtelse_b1192:
# B1192
	mv x26, zero
	j trace_ray_cont_b1197 # adhoc jump(2)
trace_ray_bfneqelse_b1185:
# B1185
	mv x26, zero
trace_ray_cont_b1197:
# B1197
	lw x28, 0(x44)
	bne x26, zero, trace_ray_beqelse_b1199
# B1198
	mv x26, zero
	j trace_ray_cont_b1200 # adhoc jump(2)
trace_ray_beqelse_b1199:
# B1199
	fle x26, x21, x28
	xori x26, x26, 1
trace_ray_cont_b1200:
# B1200
	addi x20, x20, 1
	bne x26, zero, trace_ray_beqelse_b1202
# B1201
	lwr x19, x108, x19
	lw x19, 6(x19)
	beq x19, zero, trace_ray_bneelse_b1232
	j	trace_ray_beqelse_b1154 # moved need extra jump for 1154 at B1201
trace_ray_beqelse_b1202:
# B1202
	fadd x19, x28, x22
	lw x26, 0(x103)
	fmul x26, x26, x19
	fadd x26, x26, x27
	lw x27, 1(x103)
	fmul x27, x27, x19
	fadd x27, x27, x29
	lw x28, 2(x103)
	fmul x19, x28, x19
	fadd x19, x19, x31
	mv x31, x27
	mv x30, x26
	mv x29, x25
	mv x28, zero
	mv x32, x19
	j	trace_ray_loop_b1205 # jumping over moved block
trace_ray_bneelse_b1226:	#moved
# B1226
	addi x28, x28, 1
trace_ray_loop_b1205:
# B1205
	lwr x19, x29, x28
	bne x19, x48, trace_ray_beqelse_b1207
# B1206
	mv x26, x102
# B1228
	bne x26, zero, trace_ray_beqelse_b1230
	j	trace_ray_beqelse_b1154 # moved need extra jump for 1154 at B1228
trace_ray_beqelse_b1230:
# B1230
	mv x19, x102
trace_ray_cont_b1231:
# B1231
	bne x19, zero, trace_ray_beqelse_b1233
trace_ray_bneelse_b1232:
trace_ray_cont_b1232:
# B1232
	addi x23, x23, 1
	j trace_ray_loop_b1151 # loopback to while entry from B1232
trace_ray_beqelse_b1233:
# B1233
	mv x20, x102
# B1234
	bne x20, zero, trace_ray_beqelse_b1236
	j	trace_ray_bneelse_b1012 # moved need extra jump for 1012 at B1234
trace_ray_beqelse_b1236:
# B1236
	mv x19, x102
trace_ray_cont_b1237:
# B1237
	bne x19, zero, trace_ray_beqelse_b1245
trace_ray_bneelse_b1238:
# B1238
	lw x17, 0(x116)
	lw x18, 0(x103)
	fmul x17, x17, x18
	lw x19, 1(x116)
	lw x20, 1(x103)
	fmul x19, x19, x20
	fadd x17, x17, x19
	lw x19, 2(x116)
	lw x23, 2(x103)
	fmul x19, x19, x23
	fadd x17, x17, x19
	fsub x17, zero, x17
	fmul x17, x17, x16
	lw x19, 0(x124)
	fmul x18, x19, x18
	lw x19, 1(x124)
	fmul x19, x19, x20
	fadd x18, x18, x19
	lw x19, 2(x124)
	fmul x19, x19, x23
	fadd x18, x18, x19
	fsub x18, zero, x18
	bfle x17, zero, trace_ray_bfgtelse_b1242
# B1241
	lw x19, 0(x105)
	lw x20, 0(x113)
	fmul x20, x17, x20
	fadd x19, x19, x20
	sw x19, 0(x105)
	lw x19, 1(x105)
	lw x20, 1(x113)
	fmul x20, x17, x20
	fadd x19, x19, x20
	sw x19, 1(x105)
	lw x19, 2(x105)
	lw x20, 2(x113)
	fmul x17, x17, x20
	fadd x17, x19, x17
	sw x17, 2(x105)
trace_ray_bfgtelse_b1242:
# B1242
	bfle x18, zero, trace_ray_bfgtelse_b1245
# B1244
	fmul x17, x18, x18
	fmul x17, x17, x17
	fmul x17, x17, x10
	lw x18, 0(x105)
	fadd x18, x18, x17
	sw x18, 0(x105)
	lw x18, 1(x105)
	fadd x18, x18, x17
	sw x18, 1(x105)
	lw x18, 2(x105)
	fadd x17, x18, x17
	sw x17, 2(x105)
trace_ray_beqelse_b1245:
trace_ray_bfgtelse_b1245:
# B1245
	la x17, min_caml_startp_fast
	lw x18, 0(x110)
	sw x18, 0(x17)
	lw x18, 1(x110)
	sw x18, 1(x17)
	lw x18, 2(x110)
	sw x18, 2(x17)
	la x18, min_caml_n_objects
	lw x18, 0(x18)
	addi x18, x18, -1
	mv x20, x18
	mv x19, x110
trace_ray_loop_b1246:
# B1246
	bgt zero, x20, trace_ray_bleelse_b1260
# B1247
	lwr x18, x108, x20
	lw x23, 10(x18)
	lw x24, 1(x18)
	lw x25, 0(x19)
	lw x26, 5(x18)
	lw x26, 0(x26)
	fsub x25, x25, x26
	sw x25, 0(x23)
	lw x25, 1(x19)
	lw x26, 5(x18)
	lw x26, 1(x26)
	fsub x25, x25, x26
	sw x25, 1(x23)
	lw x25, 2(x19)
	lw x26, 5(x18)
	lw x26, 2(x26)
	fsub x25, x25, x26
	sw x25, 2(x23)
	bne x24, x106, trace_ray_beqelse_b1250
# B1249
	lw x18, 4(x18)
	lw x24, 0(x23)
	lw x25, 1(x23)
	lw x26, 2(x23)
	lw x27, 0(x18)
	fmul x24, x27, x24
	lw x27, 1(x18)
	fmul x25, x27, x25
	fadd x24, x24, x25
	lw x18, 2(x18)
	fmul x18, x18, x26
	fadd x18, x24, x18
	sw x18, 3(x23)
	j trace_ray_cont_b1259 # adhoc jump(2)
trace_ray_beqelse_b1250:
# B1250
	bge x106, x24, trace_ray_bgtelse_b1259
# B1252
	lw x25, 0(x23)
	lw x26, 1(x23)
	lw x27, 2(x23)
	fmul x28, x25, x25
	lw x29, 4(x18)
	lw x29, 0(x29)
	fmul x28, x28, x29
	fmul x29, x26, x26
	lw x30, 4(x18)
	lw x30, 1(x30)
	fmul x29, x29, x30
	fadd x28, x28, x29
	fmul x29, x27, x27
	lw x30, 4(x18)
	lw x30, 2(x30)
	fmul x29, x29, x30
	fadd x28, x28, x29
	lw x29, 3(x18)
	bne x29, zero, trace_ray_beqelse_b1254
# B1253
	mv x18, x28
	j trace_ray_cont_b1255 # adhoc jump(2)
trace_ray_beqelse_b1254:
# B1254
	fmul x29, x26, x27
	lw x30, 9(x18)
	lw x30, 0(x30)
	fmul x29, x29, x30
	fadd x28, x28, x29
	fmul x27, x27, x25
	lw x29, 9(x18)
	lw x29, 1(x29)
	fmul x27, x27, x29
	fadd x27, x28, x27
	fmul x25, x25, x26
	lw x18, 9(x18)
	lw x18, 2(x18)
	fmul x18, x25, x18
	fadd x18, x27, x18
trace_ray_cont_b1255:
# B1255
	bne x24, x11, trace_ray_beqelse_b1258
# B1256
	fsub x18, x18, x114
trace_ray_beqelse_b1258:
# B1258
	sw x18, 3(x23)
trace_ray_bgtelse_b1259:
trace_ray_cont_b1259:
# B1259
	addi x20, x20, -1
	j trace_ray_loop_b1246 # loopback to while entry from B1259
trace_ray_bleelse_b1260:
# B1260
	lw x18, 0(x119)
	addi x18, x18, -1
	la x19, min_caml_reflections
	mv x23, x16
	mv x25, x124
	mv x24, x10
	mv x20, x18
trace_ray_loop_b1261:
# B1261
	bgt zero, x20, trace_ray_bleelse_b1705
# B1262
	lwr x10, x19, x20
	lw x16, 1(x10)
	sw x41, 0(x121)
	lw x18, 0(x118)
	mv x28, x16
	mv x27, x18
	mv x26, zero
trace_ray_loop_b1264:
# B1264
	lwr x18, x27, x26
	lw x29, 0(x18)
	beq x29, x48, trace_ray_bneelse_b1463
# B1266
	bne x29, x43, trace_ray_beqelse_b1268
# B1267
	mv x31, x18
	mv x32, x28
	mv x30, x102
trace_ray_loop_b1269:
# B1269
	lwr x18, x31, x30
	beq x18, x48, trace_ray_bneelse_b1462
# B1271
	lwr x18, x49, x18
	mv x34, x32
	mv x33, x18
	mv x29, zero
	j	trace_ray_loop_b1272 # jumping over moved block
trace_ray_beqelse_b1343:	#moved
# B1343
	sw x37, 0(x121)
	sw x38, 0(x110)
	sw x39, 1(x110)
	sw x18, 2(x110)
	sw x35, 0(x107)
	sw x36, 0(x111)
trace_ray_beqelse_b1272:
trace_ray_bfgtelse_b1272:
trace_ray_loop_b1272:
# B1272
	lw x18, 0(x34)
	lwr x35, x33, x29
	beq x35, x48, trace_ray_bneelse_b1345
# B1274
	lwr x36, x108, x35
	lw x37, 10(x36)
	lw x38, 0(x37)
	lw x39, 1(x37)
	lw x40, 2(x37)
	lw x5, 1(x34)
	lwr x5, x5, x35
	lw x6, 1(x36)
	bne x6, x102, trace_ray_beqelse_b1276
# B1275
	lw x37, 0(x34)
	lw x6, 0(x5)
	fsub x6, x6, x38
	lw x65, 1(x5)
	fmul x6, x6, x65
	lw x66, 1(x37)
	fmul x67, x6, x66
	fadd x67, x67, x39
	fabs x67, x67
	lw x68, 4(x36)
	lw x68, 1(x68)
	bfle x68, x67, trace_ray_bfgtelse_b1282
# B1278
	lw x67, 2(x37)
	fmul x67, x6, x67
	fadd x67, x67, x40
	fabs x67, x67
	lw x69, 4(x36)
	lw x69, 2(x69)
	bfle x69, x67, trace_ray_bfgtelse_b1282
# B1280
	feq x65, x65, zero
	xori x65, x65, 1
	mv x67, x65
# B1281
	bne x67, zero, trace_ray_beqelse_b1283
trace_ray_bfgtelse_b1282:
# B1282
	lw x6, 2(x5)
	fsub x6, x6, x39
	lw x65, 3(x5)
	fmul x6, x6, x65
	lw x67, 0(x37)
	fmul x69, x6, x67
	fadd x69, x69, x38
	fabs x69, x69
	lw x7, 4(x36)
	lw x7, 0(x7)
	bfle x7, x69, trace_ray_bfgtelse_b1289
# B1285
	lw x37, 2(x37)
	fmul x37, x6, x37
	fadd x37, x37, x40
	fabs x37, x37
	lw x36, 4(x36)
	lw x36, 2(x36)
	bfle x36, x37, trace_ray_bfgtelse_b1289
# B1287
	feq x36, x65, zero
	xori x36, x36, 1
	mv x37, x36
# B1288
	bne x37, zero, trace_ray_beqelse_b1290
trace_ray_bfgtelse_b1289:
# B1289
	lw x36, 4(x5)
	fsub x36, x36, x40
	lw x37, 5(x5)
	fmul x36, x36, x37
	fmul x40, x36, x67
	fadd x38, x40, x38
	fabs x38, x38
	bfle x7, x38, trace_ray_bfgtelse_b1296
# B1292
	fmul x38, x36, x66
	fadd x38, x38, x39
	fabs x38, x38
	bfle x68, x38, trace_ray_bfgtelse_b1296
# B1294
	feq x37, x37, zero
	xori x37, x37, 1
	mv x38, x37
# B1295
	bne x38, zero, trace_ray_beqelse_b1297
trace_ray_bfgtelse_b1296:
# B1296
	mv x36, zero
	j trace_ray_cont_b1309 # adhoc jump(2)
trace_ray_beqelse_b1297:
# B1297
	sw x36, 0(x44)
	mv x36, x11
	j trace_ray_cont_b1309 # adhoc jump(2)
trace_ray_beqelse_b1290:
# B1290
	sw x6, 0(x44)
	mv x36, x106
	j trace_ray_cont_b1309 # adhoc jump(2)
trace_ray_beqelse_b1283:
# B1283
	sw x6, 0(x44)
	mv x36, x102
	j trace_ray_cont_b1309 # adhoc jump(2)
trace_ray_beqelse_b1276:
# B1276
	bne x6, x106, trace_ray_beqelse_b1299
# B1298
	lw x36, 0(x5)
	bfle zero, x36, trace_ray_bfgtelse_b1300
# B1301
	lw x37, 3(x37)
	fmul x36, x36, x37
	sw x36, 0(x44)
	mv x36, x102
	j trace_ray_cont_b1309 # adhoc jump(2)
trace_ray_bfgtelse_b1300:
# B1300
	mv x36, zero
	j trace_ray_cont_b1309 # adhoc jump(2)
trace_ray_beqelse_b1299:
# B1299
	lw x6, 0(x5)
	bfeq x6, zero, trace_ray_bfneqelse_b1303
# B1302
	lw x65, 1(x5)
	fmul x38, x65, x38
	lw x65, 2(x5)
	fmul x39, x65, x39
	fadd x38, x38, x39
	lw x39, 3(x5)
	fmul x39, x39, x40
	fadd x38, x38, x39
	lw x37, 3(x37)
	fmul x39, x38, x38
	fmul x37, x6, x37
	fsub x37, x39, x37
	bfle x37, zero, trace_ray_bfgtelse_b1304
# B1305
	lw x36, 6(x36)
	fsqrt x37, x37
	bne x36, zero, trace_ray_beqelse_b1307
# B1306
	fsub x36, x38, x37
	lw x37, 4(x5)
	fmul x36, x36, x37
	sw x36, 0(x44)
	j trace_ray_cont_b1308 # adhoc jump(2)
trace_ray_beqelse_b1307:
# B1307
	fadd x36, x38, x37
	lw x37, 4(x5)
	fmul x36, x36, x37
	sw x36, 0(x44)
trace_ray_cont_b1308:
# B1308
	mv x36, x102
	j trace_ray_cont_b1309 # adhoc jump(2)
trace_ray_bfgtelse_b1304:
# B1304
	mv x36, zero
	j trace_ray_cont_b1309 # adhoc jump(2)
trace_ray_bfneqelse_b1303:
# B1303
	mv x36, zero
trace_ray_cont_b1309:
# B1309
	addi x29, x29, 1
	bne x36, zero, trace_ray_beqelse_b1311
# B1310
	lwr x18, x108, x35
	lw x18, 6(x18)
	beq x18, zero, trace_ray_bneelse_b1345
	j	trace_ray_beqelse_b1272 # moved need extra jump for 1272 at B1310
trace_ray_bneelse_b1345:
# B1345
	addi x30, x30, 1
	j trace_ray_loop_b1269 # loopback to while entry from B1345
trace_ray_beqelse_b1311:
# B1311
	lw x37, 0(x44)
	bfle x37, zero, trace_ray_bfgtelse_b1272
# B1315
	lw x38, 0(x121)
	bfle x38, x37, trace_ray_bfgtelse_b1272
# B1317
	fadd x37, x37, x22
	lw x38, 0(x18)
	fmul x38, x38, x37
	lw x39, 0(x17)
	fadd x38, x38, x39
	lw x39, 1(x18)
	fmul x39, x39, x37
	lw x40, 1(x17)
	fadd x39, x39, x40
	lw x18, 2(x18)
	fmul x18, x18, x37
	lw x40, 2(x17)
	fadd x18, x18, x40
	mv x40, zero
	mv x6, x38
	mv x66, x18
	mv x5, x33
	mv x65, x39
	j	trace_ray_loop_b1318 # jumping over moved block
trace_ray_bneelse_b1339:	#moved
# B1339
	addi x40, x40, 1
trace_ray_loop_b1318:
# B1318
	lwr x67, x5, x40
	bne x67, x48, trace_ray_beqelse_b1320
# B1319
	mv x68, x102
# B1341
	bne x68, zero, trace_ray_beqelse_b1343
	j	trace_ray_bfgtelse_b1272 # moved need extra jump for 1272 at B1341
trace_ray_beqelse_b1320:
# B1320
	lwr x67, x108, x67
	lw x68, 5(x67)
	lw x68, 0(x68)
	fsub x68, x6, x68
	lw x69, 5(x67)
	lw x69, 1(x69)
	fsub x69, x65, x69
	lw x7, 5(x67)
	lw x7, 2(x7)
	fsub x7, x66, x7
	lw x70, 1(x67)
	bne x70, x102, trace_ray_beqelse_b1322
# B1321
	fabs x68, x68
	lw x70, 4(x67)
	lw x70, 0(x70)
	bfle x70, x68, trace_ray_bfgtelse_b1328
# B1324
	fabs x68, x69
	lw x69, 4(x67)
	lw x69, 1(x69)
	bfle x69, x68, trace_ray_bfgtelse_b1328
# B1326
	fabs x68, x7
	lw x69, 4(x67)
	lw x69, 2(x69)
	fle x68, x69, x68
	xori x68, x68, 1
	mv x69, x68
# B1327
	bne x69, zero, trace_ray_beqelse_b1329
trace_ray_bfgtelse_b1328:
# B1328
	lw x67, 6(x67)
	xori x67, x67, 1
	j trace_ray_cont_b1338 # adhoc jump(2)
trace_ray_beqelse_b1329:
# B1329
	lw x67, 6(x67)
	j trace_ray_cont_b1338 # adhoc jump(2)
trace_ray_beqelse_b1322:
# B1322
	bne x70, x106, trace_ray_beqelse_b1331
# B1330
	lw x70, 4(x67)
	lw x71, 0(x70)
	fmul x68, x71, x68
	lw x71, 1(x70)
	fmul x69, x71, x69
	fadd x68, x68, x69
	lw x69, 2(x70)
	fmul x69, x69, x7
	fadd x68, x68, x69
	lw x67, 6(x67)
	fle x68, zero, x68
	xori x68, x68, 1
	xor x67, x67, x68
	xori x67, x67, 1
	j trace_ray_cont_b1338 # adhoc jump(2)
trace_ray_beqelse_b1331:
# B1331
	fmul x70, x68, x68
	lw x71, 4(x67)
	lw x71, 0(x71)
	fmul x70, x70, x71
	fmul x71, x69, x69
	lw x72, 4(x67)
	lw x72, 1(x72)
	fmul x71, x71, x72
	fadd x70, x70, x71
	fmul x71, x7, x7
	lw x72, 4(x67)
	lw x72, 2(x72)
	fmul x71, x71, x72
	fadd x70, x70, x71
	lw x71, 3(x67)
	bne x71, zero, trace_ray_beqelse_b1333
# B1332
	mv x68, x70
	j trace_ray_cont_b1334 # adhoc jump(2)
trace_ray_beqelse_b1333:
# B1333
	fmul x71, x69, x7
	lw x72, 9(x67)
	lw x72, 0(x72)
	fmul x71, x71, x72
	fadd x70, x70, x71
	fmul x7, x7, x68
	lw x71, 9(x67)
	lw x71, 1(x71)
	fmul x7, x7, x71
	fadd x7, x70, x7
	fmul x68, x68, x69
	lw x69, 9(x67)
	lw x69, 2(x69)
	fmul x68, x68, x69
	fadd x68, x7, x68
trace_ray_cont_b1334:
# B1334
	lw x69, 1(x67)
	bne x69, x11, trace_ray_beqelse_b1337
# B1335
	fsub x68, x68, x114
trace_ray_beqelse_b1337:
# B1337
	lw x67, 6(x67)
	fle x68, zero, x68
	xori x68, x68, 1
	xor x67, x67, x68
	xori x67, x67, 1
trace_ray_cont_b1338:
# B1338
	beq x67, zero, trace_ray_bneelse_b1339
	j	trace_ray_bfgtelse_b1272 # moved need extra jump for 1272 at B1338
trace_ray_beqelse_b1268:
# B1268
	lwr x30, x108, x29
	lw x31, 10(x30)
	lw x32, 0(x31)
	lw x33, 1(x31)
	lw x34, 2(x31)
	lw x35, 1(x28)
	lwr x29, x35, x29
	lw x35, 1(x30)
	bne x35, x102, trace_ray_beqelse_b1347
# B1346
	lw x31, 0(x28)
	lw x35, 0(x29)
	fsub x35, x35, x32
	lw x36, 1(x29)
	fmul x35, x35, x36
	lw x37, 1(x31)
	fmul x38, x35, x37
	fadd x38, x38, x33
	fabs x38, x38
	lw x39, 4(x30)
	lw x39, 1(x39)
	bfle x39, x38, trace_ray_bfgtelse_b1353
# B1349
	lw x38, 2(x31)
	fmul x38, x35, x38
	fadd x38, x38, x34
	fabs x38, x38
	lw x40, 4(x30)
	lw x40, 2(x40)
	bfle x40, x38, trace_ray_bfgtelse_b1353
# B1351
	feq x36, x36, zero
	xori x36, x36, 1
	mv x38, x36
# B1352
	bne x38, zero, trace_ray_beqelse_b1354
trace_ray_bfgtelse_b1353:
# B1353
	lw x35, 2(x29)
	fsub x35, x35, x33
	lw x36, 3(x29)
	fmul x35, x35, x36
	lw x38, 0(x31)
	fmul x40, x35, x38
	fadd x40, x40, x32
	fabs x40, x40
	lw x5, 4(x30)
	lw x5, 0(x5)
	bfle x5, x40, trace_ray_bfgtelse_b1360
# B1356
	lw x31, 2(x31)
	fmul x31, x35, x31
	fadd x31, x31, x34
	fabs x31, x31
	lw x30, 4(x30)
	lw x30, 2(x30)
	bfle x30, x31, trace_ray_bfgtelse_b1360
# B1358
	feq x30, x36, zero
	xori x30, x30, 1
	mv x31, x30
# B1359
	bne x31, zero, trace_ray_beqelse_b1361
trace_ray_bfgtelse_b1360:
# B1360
	lw x30, 4(x29)
	fsub x30, x30, x34
	lw x29, 5(x29)
	fmul x30, x30, x29
	fmul x31, x30, x38
	fadd x31, x31, x32
	fabs x31, x31
	bfle x5, x31, trace_ray_bfgtelse_b1462
# B1363
	fmul x31, x30, x37
	fadd x31, x31, x33
	fabs x31, x31
	bfle x39, x31, trace_ray_bfgtelse_b1462
# B1365
	feq x29, x29, zero
	xori x29, x29, 1
	mv x31, x29
# B1366
	bne x31, zero, trace_ray_beqelse_b1368
	j trace_ray_cont_b1462 # adhoc jump(3)
trace_ray_beqelse_b1368:
# B1368
	sw x30, 0(x44)
	mv x29, x11
	j trace_ray_cont_b1380 # adhoc jump(2)
trace_ray_beqelse_b1361:
# B1361
	sw x35, 0(x44)
	mv x29, x106
	j trace_ray_cont_b1380 # adhoc jump(2)
trace_ray_beqelse_b1354:
# B1354
	sw x35, 0(x44)
	mv x29, x102
	j trace_ray_cont_b1380 # adhoc jump(2)
trace_ray_beqelse_b1347:
# B1347
	bne x35, x106, trace_ray_beqelse_b1370
# B1369
	lw x29, 0(x29)
	bfle zero, x29, trace_ray_bfgtelse_b1462
# B1372
	lw x30, 3(x31)
	fmul x29, x29, x30
	sw x29, 0(x44)
	mv x29, x102
	j trace_ray_cont_b1380 # adhoc jump(2)
trace_ray_beqelse_b1370:
# B1370
	lw x35, 0(x29)
	bfeq x35, zero, trace_ray_bfneqelse_b1462
# B1373
	lw x36, 1(x29)
	fmul x32, x36, x32
	lw x36, 2(x29)
	fmul x33, x36, x33
	fadd x32, x32, x33
	lw x33, 3(x29)
	fmul x33, x33, x34
	fadd x32, x32, x33
	lw x31, 3(x31)
	fmul x33, x32, x32
	fmul x31, x35, x31
	fsub x31, x33, x31
	bfle x31, zero, trace_ray_bfgtelse_b1462
# B1376
	lw x30, 6(x30)
	fsqrt x31, x31
	bne x30, zero, trace_ray_beqelse_b1378
# B1377
	fsub x30, x32, x31
	lw x29, 4(x29)
	fmul x29, x30, x29
	sw x29, 0(x44)
	j trace_ray_cont_b1379 # adhoc jump(2)
trace_ray_beqelse_b1378:
# B1378
	fadd x30, x32, x31
	lw x29, 4(x29)
	fmul x29, x30, x29
	sw x29, 0(x44)
trace_ray_cont_b1379:
# B1379
	mv x29, x102
trace_ray_cont_b1380:
# B1380
	bne x29, zero, trace_ray_beqelse_b1382
	j trace_ray_cont_b1462 # adhoc jump(3)
trace_ray_beqelse_b1382:
# B1382
	lw x29, 0(x44)
	lw x30, 0(x121)
	bfle x30, x29, trace_ray_bfgtelse_b1462
# B1384
	mv x31, x102
	mv x33, x28
	mv x32, x18
trace_ray_loop_b1385:
# B1385
	lwr x18, x32, x31
	beq x18, x48, trace_ray_bneelse_b1462
# B1387
	lwr x18, x49, x18
	mv x34, x33
	mv x30, x18
	mv x29, zero
	j	trace_ray_loop_b1388 # jumping over moved block
trace_ray_beqelse_b1459:	#moved
# B1459
	sw x37, 0(x121)
	sw x38, 0(x110)
	sw x39, 1(x110)
	sw x18, 2(x110)
	sw x35, 0(x107)
	sw x36, 0(x111)
trace_ray_beqelse_b1388:
trace_ray_bfgtelse_b1388:
trace_ray_loop_b1388:
# B1388
	lw x18, 0(x34)
	lwr x35, x30, x29
	beq x35, x48, trace_ray_bneelse_b1461
# B1390
	lwr x36, x108, x35
	lw x37, 10(x36)
	lw x38, 0(x37)
	lw x39, 1(x37)
	lw x40, 2(x37)
	lw x5, 1(x34)
	lwr x5, x5, x35
	lw x6, 1(x36)
	bne x6, x102, trace_ray_beqelse_b1392
# B1391
	lw x37, 0(x34)
	lw x6, 0(x5)
	fsub x6, x6, x38
	lw x65, 1(x5)
	fmul x6, x6, x65
	lw x66, 1(x37)
	fmul x67, x6, x66
	fadd x67, x67, x39
	fabs x67, x67
	lw x68, 4(x36)
	lw x68, 1(x68)
	bfle x68, x67, trace_ray_bfgtelse_b1398
# B1394
	lw x67, 2(x37)
	fmul x67, x6, x67
	fadd x67, x67, x40
	fabs x67, x67
	lw x69, 4(x36)
	lw x69, 2(x69)
	bfle x69, x67, trace_ray_bfgtelse_b1398
# B1396
	feq x65, x65, zero
	xori x65, x65, 1
	mv x67, x65
# B1397
	bne x67, zero, trace_ray_beqelse_b1399
trace_ray_bfgtelse_b1398:
# B1398
	lw x6, 2(x5)
	fsub x6, x6, x39
	lw x65, 3(x5)
	fmul x6, x6, x65
	lw x67, 0(x37)
	fmul x69, x6, x67
	fadd x69, x69, x38
	fabs x69, x69
	lw x7, 4(x36)
	lw x7, 0(x7)
	bfle x7, x69, trace_ray_bfgtelse_b1405
# B1401
	lw x37, 2(x37)
	fmul x37, x6, x37
	fadd x37, x37, x40
	fabs x37, x37
	lw x36, 4(x36)
	lw x36, 2(x36)
	bfle x36, x37, trace_ray_bfgtelse_b1405
# B1403
	feq x36, x65, zero
	xori x36, x36, 1
	mv x37, x36
# B1404
	bne x37, zero, trace_ray_beqelse_b1406
trace_ray_bfgtelse_b1405:
# B1405
	lw x36, 4(x5)
	fsub x36, x36, x40
	lw x37, 5(x5)
	fmul x36, x36, x37
	fmul x40, x36, x67
	fadd x38, x40, x38
	fabs x38, x38
	bfle x7, x38, trace_ray_bfgtelse_b1412
# B1408
	fmul x38, x36, x66
	fadd x38, x38, x39
	fabs x38, x38
	bfle x68, x38, trace_ray_bfgtelse_b1412
# B1410
	feq x37, x37, zero
	xori x37, x37, 1
	mv x38, x37
# B1411
	bne x38, zero, trace_ray_beqelse_b1413
trace_ray_bfgtelse_b1412:
# B1412
	mv x36, zero
	j trace_ray_cont_b1425 # adhoc jump(2)
trace_ray_beqelse_b1413:
# B1413
	sw x36, 0(x44)
	mv x36, x11
	j trace_ray_cont_b1425 # adhoc jump(2)
trace_ray_beqelse_b1406:
# B1406
	sw x6, 0(x44)
	mv x36, x106
	j trace_ray_cont_b1425 # adhoc jump(2)
trace_ray_beqelse_b1399:
# B1399
	sw x6, 0(x44)
	mv x36, x102
	j trace_ray_cont_b1425 # adhoc jump(2)
trace_ray_beqelse_b1392:
# B1392
	bne x6, x106, trace_ray_beqelse_b1415
# B1414
	lw x36, 0(x5)
	bfle zero, x36, trace_ray_bfgtelse_b1416
# B1417
	lw x37, 3(x37)
	fmul x36, x36, x37
	sw x36, 0(x44)
	mv x36, x102
	j trace_ray_cont_b1425 # adhoc jump(2)
trace_ray_bfgtelse_b1416:
# B1416
	mv x36, zero
	j trace_ray_cont_b1425 # adhoc jump(2)
trace_ray_beqelse_b1415:
# B1415
	lw x6, 0(x5)
	bfeq x6, zero, trace_ray_bfneqelse_b1419
# B1418
	lw x65, 1(x5)
	fmul x38, x65, x38
	lw x65, 2(x5)
	fmul x39, x65, x39
	fadd x38, x38, x39
	lw x39, 3(x5)
	fmul x39, x39, x40
	fadd x38, x38, x39
	lw x37, 3(x37)
	fmul x39, x38, x38
	fmul x37, x6, x37
	fsub x37, x39, x37
	bfle x37, zero, trace_ray_bfgtelse_b1420
# B1421
	lw x36, 6(x36)
	fsqrt x37, x37
	bne x36, zero, trace_ray_beqelse_b1423
# B1422
	fsub x36, x38, x37
	lw x37, 4(x5)
	fmul x36, x36, x37
	sw x36, 0(x44)
	j trace_ray_cont_b1424 # adhoc jump(2)
trace_ray_beqelse_b1423:
# B1423
	fadd x36, x38, x37
	lw x37, 4(x5)
	fmul x36, x36, x37
	sw x36, 0(x44)
trace_ray_cont_b1424:
# B1424
	mv x36, x102
	j trace_ray_cont_b1425 # adhoc jump(2)
trace_ray_bfgtelse_b1420:
# B1420
	mv x36, zero
	j trace_ray_cont_b1425 # adhoc jump(2)
trace_ray_bfneqelse_b1419:
# B1419
	mv x36, zero
trace_ray_cont_b1425:
# B1425
	addi x29, x29, 1
	bne x36, zero, trace_ray_beqelse_b1427
# B1426
	lwr x18, x108, x35
	lw x18, 6(x18)
	beq x18, zero, trace_ray_bneelse_b1461
	j	trace_ray_beqelse_b1388 # moved need extra jump for 1388 at B1426
trace_ray_bneelse_b1461:
# B1461
	addi x31, x31, 1
	j trace_ray_loop_b1385 # loopback to while entry from B1461
trace_ray_beqelse_b1427:
# B1427
	lw x37, 0(x44)
	bfle x37, zero, trace_ray_bfgtelse_b1388
# B1431
	lw x38, 0(x121)
	bfle x38, x37, trace_ray_bfgtelse_b1388
# B1433
	fadd x37, x37, x22
	lw x38, 0(x18)
	fmul x38, x38, x37
	lw x39, 0(x17)
	fadd x38, x38, x39
	lw x39, 1(x18)
	fmul x39, x39, x37
	lw x40, 1(x17)
	fadd x39, x39, x40
	lw x18, 2(x18)
	fmul x18, x18, x37
	lw x40, 2(x17)
	fadd x18, x18, x40
	mv x40, zero
	mv x6, x38
	mv x66, x18
	mv x65, x39
	mv x5, x30
	j	trace_ray_loop_b1434 # jumping over moved block
trace_ray_bneelse_b1455:	#moved
# B1455
	addi x40, x40, 1
trace_ray_loop_b1434:
# B1434
	lwr x67, x5, x40
	bne x67, x48, trace_ray_beqelse_b1436
# B1435
	mv x68, x102
# B1457
	bne x68, zero, trace_ray_beqelse_b1459
	j	trace_ray_bfgtelse_b1388 # moved need extra jump for 1388 at B1457
trace_ray_beqelse_b1436:
# B1436
	lwr x67, x108, x67
	lw x68, 5(x67)
	lw x68, 0(x68)
	fsub x68, x6, x68
	lw x69, 5(x67)
	lw x69, 1(x69)
	fsub x69, x65, x69
	lw x7, 5(x67)
	lw x7, 2(x7)
	fsub x7, x66, x7
	lw x70, 1(x67)
	bne x70, x102, trace_ray_beqelse_b1438
# B1437
	fabs x68, x68
	lw x70, 4(x67)
	lw x70, 0(x70)
	bfle x70, x68, trace_ray_bfgtelse_b1444
# B1440
	fabs x68, x69
	lw x69, 4(x67)
	lw x69, 1(x69)
	bfle x69, x68, trace_ray_bfgtelse_b1444
# B1442
	fabs x68, x7
	lw x69, 4(x67)
	lw x69, 2(x69)
	fle x68, x69, x68
	xori x68, x68, 1
	mv x69, x68
# B1443
	bne x69, zero, trace_ray_beqelse_b1445
trace_ray_bfgtelse_b1444:
# B1444
	lw x67, 6(x67)
	xori x67, x67, 1
	j trace_ray_cont_b1454 # adhoc jump(2)
trace_ray_beqelse_b1445:
# B1445
	lw x67, 6(x67)
	j trace_ray_cont_b1454 # adhoc jump(2)
trace_ray_beqelse_b1438:
# B1438
	bne x70, x106, trace_ray_beqelse_b1447
# B1446
	lw x70, 4(x67)
	lw x71, 0(x70)
	fmul x68, x71, x68
	lw x71, 1(x70)
	fmul x69, x71, x69
	fadd x68, x68, x69
	lw x69, 2(x70)
	fmul x69, x69, x7
	fadd x68, x68, x69
	lw x67, 6(x67)
	fle x68, zero, x68
	xori x68, x68, 1
	xor x67, x67, x68
	xori x67, x67, 1
	j trace_ray_cont_b1454 # adhoc jump(2)
trace_ray_beqelse_b1447:
# B1447
	fmul x70, x68, x68
	lw x71, 4(x67)
	lw x71, 0(x71)
	fmul x70, x70, x71
	fmul x71, x69, x69
	lw x72, 4(x67)
	lw x72, 1(x72)
	fmul x71, x71, x72
	fadd x70, x70, x71
	fmul x71, x7, x7
	lw x72, 4(x67)
	lw x72, 2(x72)
	fmul x71, x71, x72
	fadd x70, x70, x71
	lw x71, 3(x67)
	bne x71, zero, trace_ray_beqelse_b1449
# B1448
	mv x68, x70
	j trace_ray_cont_b1450 # adhoc jump(2)
trace_ray_beqelse_b1449:
# B1449
	fmul x71, x69, x7
	lw x72, 9(x67)
	lw x72, 0(x72)
	fmul x71, x71, x72
	fadd x70, x70, x71
	fmul x7, x7, x68
	lw x71, 9(x67)
	lw x71, 1(x71)
	fmul x7, x7, x71
	fadd x7, x70, x7
	fmul x68, x68, x69
	lw x69, 9(x67)
	lw x69, 2(x69)
	fmul x68, x68, x69
	fadd x68, x7, x68
trace_ray_cont_b1450:
# B1450
	lw x69, 1(x67)
	bne x69, x11, trace_ray_beqelse_b1453
# B1451
	fsub x68, x68, x114
trace_ray_beqelse_b1453:
# B1453
	lw x67, 6(x67)
	fle x68, zero, x68
	xori x68, x68, 1
	xor x67, x67, x68
	xori x67, x67, 1
trace_ray_cont_b1454:
# B1454
	beq x67, zero, trace_ray_bneelse_b1455
	j	trace_ray_bfgtelse_b1388 # moved need extra jump for 1388 at B1454
trace_ray_bfgtelse_b1462:
trace_ray_bfneqelse_b1462:
trace_ray_bneelse_b1462:
trace_ray_cont_b1462:
# B1462
	addi x26, x26, 1
	j trace_ray_loop_b1264 # loopback to while entry from B1462
trace_ray_bneelse_b1463:
# B1463
	lw x18, 0(x121)
	bfle x18, x100, trace_ray_bfgtelse_b1704
# B1465
	fle x18, x13, x18
	xori x18, x18, 1
	mv x26, x18
# B1466
	bne x26, zero, trace_ray_beqelse_b1468
	j trace_ray_cont_b1704 # adhoc jump(3)
trace_ray_beqelse_b1468:
# B1468
	lw x18, 0(x107)
	slli x18, x18, 2
	lw x26, 0(x111)
	add x18, x18, x26
	lw x26, 0(x10)
	bne x18, x26, trace_ray_beqelse_b1704
# B1469
	lw x18, 0(x118)
	mv x27, x18
	mv x26, zero
trace_ray_bneelse_b1471:
trace_ray_loop_b1471:
# B1471
	lwr x18, x27, x26
	lw x28, 0(x18)
	beq x28, x48, trace_ray_bneelse_b1697
# B1473
	bne x28, x43, trace_ray_beqelse_b1475
# B1474
	mv x28, x102
	j trace_ray_cont_b1607 # adhoc jump(2)
trace_ray_beqelse_b1475:
# B1475
	lwr x29, x108, x28
	lw x30, 0(x110)
	lw x31, 5(x29)
	lw x31, 0(x31)
	fsub x30, x30, x31
	lw x31, 1(x110)
	lw x32, 5(x29)
	lw x32, 1(x32)
	fsub x31, x31, x32
	lw x32, 2(x110)
	lw x33, 5(x29)
	lw x33, 2(x33)
	fsub x32, x32, x33
	lw x33, 1(x12)
	lwr x28, x33, x28
	lw x33, 1(x29)
	bne x33, x102, trace_ray_beqelse_b1477
# B1476
	lw x33, 0(x12)
	lw x34, 0(x28)
	fsub x34, x34, x30
	lw x35, 1(x28)
	fmul x34, x34, x35
	lw x36, 1(x33)
	fmul x37, x34, x36
	fadd x37, x37, x31
	fabs x37, x37
	lw x38, 4(x29)
	lw x38, 1(x38)
	bfle x38, x37, trace_ray_bfgtelse_b1483
# B1479
	lw x37, 2(x33)
	fmul x37, x34, x37
	fadd x37, x37, x32
	fabs x37, x37
	lw x38, 4(x29)
	lw x38, 2(x38)
	bfle x38, x37, trace_ray_bfgtelse_b1483
# B1481
	feq x35, x35, zero
	xori x35, x35, 1
	mv x37, x35
# B1482
	bne x37, zero, trace_ray_beqelse_b1484
trace_ray_bfgtelse_b1483:
# B1483
	lw x34, 2(x28)
	fsub x34, x34, x31
	lw x35, 3(x28)
	fmul x34, x34, x35
	lw x37, 0(x33)
	fmul x38, x34, x37
	fadd x38, x38, x30
	fabs x38, x38
	lw x39, 4(x29)
	lw x39, 0(x39)
	bfle x39, x38, trace_ray_bfgtelse_b1490
# B1486
	lw x33, 2(x33)
	fmul x33, x34, x33
	fadd x33, x33, x32
	fabs x33, x33
	lw x38, 4(x29)
	lw x38, 2(x38)
	bfle x38, x33, trace_ray_bfgtelse_b1490
# B1488
	feq x33, x35, zero
	xori x33, x33, 1
	mv x35, x33
# B1489
	bne x35, zero, trace_ray_beqelse_b1491
trace_ray_bfgtelse_b1490:
# B1490
	lw x33, 4(x28)
	fsub x32, x33, x32
	lw x28, 5(x28)
	fmul x32, x32, x28
	fmul x33, x32, x37
	fadd x30, x33, x30
	fabs x30, x30
	lw x33, 4(x29)
	lw x33, 0(x33)
	bfle x33, x30, trace_ray_bfgtelse_b1517
# B1493
	fmul x30, x32, x36
	fadd x30, x30, x31
	fabs x30, x30
	lw x29, 4(x29)
	lw x29, 1(x29)
	bfle x29, x30, trace_ray_bfgtelse_b1517
# B1495
	feq x28, x28, zero
	xori x28, x28, 1
	mv x29, x28
# B1496
	bne x29, zero, trace_ray_beqelse_b1498
	j trace_ray_cont_b1517 # adhoc jump(3)
trace_ray_beqelse_b1498:
# B1498
	sw x32, 0(x44)
	mv x28, x11
	j trace_ray_cont_b1516 # adhoc jump(2)
trace_ray_beqelse_b1491:
# B1491
	sw x34, 0(x44)
	mv x28, x106
	j trace_ray_cont_b1516 # adhoc jump(2)
trace_ray_beqelse_b1484:
# B1484
	sw x34, 0(x44)
	mv x28, x102
	j trace_ray_cont_b1516 # adhoc jump(2)
trace_ray_beqelse_b1477:
# B1477
	bne x33, x106, trace_ray_beqelse_b1500
# B1499
	lw x29, 0(x28)
	bfle zero, x29, trace_ray_bfgtelse_b1517
# B1502
	lw x29, 1(x28)
	fmul x29, x29, x30
	lw x30, 2(x28)
	fmul x30, x30, x31
	fadd x29, x29, x30
	lw x28, 3(x28)
	fmul x28, x28, x32
	fadd x28, x29, x28
	sw x28, 0(x44)
	mv x28, x102
	j trace_ray_cont_b1516 # adhoc jump(2)
trace_ray_beqelse_b1500:
# B1500
	lw x33, 0(x28)
	bfeq x33, zero, trace_ray_bfneqelse_b1517
# B1503
	lw x34, 1(x28)
	fmul x34, x34, x30
	lw x35, 2(x28)
	fmul x35, x35, x31
	fadd x34, x34, x35
	lw x35, 3(x28)
	fmul x35, x35, x32
	fadd x34, x34, x35
	fmul x35, x30, x30
	lw x36, 4(x29)
	lw x36, 0(x36)
	fmul x35, x35, x36
	fmul x36, x31, x31
	lw x37, 4(x29)
	lw x37, 1(x37)
	fmul x36, x36, x37
	fadd x35, x35, x36
	fmul x36, x32, x32
	lw x37, 4(x29)
	lw x37, 2(x37)
	fmul x36, x36, x37
	fadd x35, x35, x36
	lw x36, 3(x29)
	bne x36, zero, trace_ray_beqelse_b1506
# B1505
	mv x30, x35
	j trace_ray_cont_b1507 # adhoc jump(2)
trace_ray_beqelse_b1506:
# B1506
	fmul x36, x31, x32
	lw x37, 9(x29)
	lw x37, 0(x37)
	fmul x36, x36, x37
	fadd x35, x35, x36
	fmul x32, x32, x30
	lw x36, 9(x29)
	lw x36, 1(x36)
	fmul x32, x32, x36
	fadd x32, x35, x32
	fmul x30, x30, x31
	lw x31, 9(x29)
	lw x31, 2(x31)
	fmul x30, x30, x31
	fadd x30, x32, x30
trace_ray_cont_b1507:
# B1507
	lw x31, 1(x29)
	bne x31, x11, trace_ray_beqelse_b1510
# B1508
	fsub x30, x30, x114
trace_ray_beqelse_b1510:
# B1510
	fmul x31, x34, x34
	fmul x30, x33, x30
	fsub x30, x31, x30
	bfle x30, zero, trace_ray_bfgtelse_b1517
# B1512
	lw x29, 6(x29)
	fsqrt x30, x30
	bne x29, zero, trace_ray_beqelse_b1514
# B1513
	fsub x29, x34, x30
	lw x28, 4(x28)
	fmul x28, x29, x28
	sw x28, 0(x44)
	j trace_ray_cont_b1515 # adhoc jump(2)
trace_ray_beqelse_b1514:
# B1514
	fadd x29, x34, x30
	lw x28, 4(x28)
	fmul x28, x29, x28
	sw x28, 0(x44)
trace_ray_cont_b1515:
# B1515
	mv x28, x102
trace_ray_cont_b1516:
# B1516
	bne x28, zero, trace_ray_beqelse_b1518
trace_ray_bfgtelse_b1517:
trace_ray_bfneqelse_b1517:
trace_ray_cont_b1517:
# B1517
	mv x28, zero
	j trace_ray_cont_b1607 # adhoc jump(2)
trace_ray_beqelse_b1518:
# B1518
	lw x28, 0(x44)
	bfle x100, x28, trace_ray_bfgtelse_b1519
# B1520
	mv x30, x18
	mv x29, x102
trace_ray_loop_b1521:
# B1521
	lwr x28, x30, x29
	beq x28, x48, trace_ray_bneelse_b1605
# B1523
	lwr x28, x49, x28
	mv x31, zero
	mv x32, x28
trace_ray_beqelse_b1524:
trace_ray_loop_b1524:
# B1524
	lwr x28, x32, x31
	beq x28, x48, trace_ray_bneelse_b1602
# B1526
	lwr x28, x32, x31
	lwr x33, x108, x28
	lw x34, 0(x110)
	lw x35, 5(x33)
	lw x35, 0(x35)
	fsub x35, x34, x35
	lw x36, 1(x110)
	lw x37, 5(x33)
	lw x37, 1(x37)
	fsub x37, x36, x37
	lw x38, 2(x110)
	lw x39, 5(x33)
	lw x39, 2(x39)
	fsub x39, x38, x39
	lw x40, 1(x12)
	lwr x40, x40, x28
	lw x5, 1(x33)
	bne x5, x102, trace_ray_beqelse_b1528
# B1527
	lw x5, 0(x12)
	lw x6, 0(x40)
	fsub x6, x6, x35
	lw x65, 1(x40)
	fmul x6, x6, x65
	lw x66, 1(x5)
	fmul x67, x6, x66
	fadd x67, x67, x37
	fabs x67, x67
	lw x68, 4(x33)
	lw x68, 1(x68)
	bfle x68, x67, trace_ray_bfgtelse_b1534
# B1530
	lw x67, 2(x5)
	fmul x67, x6, x67
	fadd x67, x67, x39
	fabs x67, x67
	lw x68, 4(x33)
	lw x68, 2(x68)
	bfle x68, x67, trace_ray_bfgtelse_b1534
# B1532
	feq x65, x65, zero
	xori x65, x65, 1
	mv x67, x65
# B1533
	bne x67, zero, trace_ray_beqelse_b1535
trace_ray_bfgtelse_b1534:
# B1534
	lw x6, 2(x40)
	fsub x6, x6, x37
	lw x65, 3(x40)
	fmul x6, x6, x65
	lw x67, 0(x5)
	fmul x68, x6, x67
	fadd x68, x68, x35
	fabs x68, x68
	lw x69, 4(x33)
	lw x69, 0(x69)
	bfle x69, x68, trace_ray_bfgtelse_b1541
# B1537
	lw x5, 2(x5)
	fmul x5, x6, x5
	fadd x5, x5, x39
	fabs x5, x5
	lw x68, 4(x33)
	lw x68, 2(x68)
	bfle x68, x5, trace_ray_bfgtelse_b1541
# B1539
	feq x5, x65, zero
	xori x5, x5, 1
	mv x65, x5
# B1540
	bne x65, zero, trace_ray_beqelse_b1542
trace_ray_bfgtelse_b1541:
# B1541
	lw x5, 4(x40)
	fsub x39, x5, x39
	lw x40, 5(x40)
	fmul x39, x39, x40
	fmul x5, x39, x67
	fadd x35, x5, x35
	fabs x35, x35
	lw x5, 4(x33)
	lw x5, 0(x5)
	bfle x5, x35, trace_ray_bfgtelse_b1548
# B1544
	fmul x35, x39, x66
	fadd x35, x35, x37
	fabs x35, x35
	lw x33, 4(x33)
	lw x33, 1(x33)
	bfle x33, x35, trace_ray_bfgtelse_b1548
# B1546
	feq x33, x40, zero
	xori x33, x33, 1
	mv x35, x33
# B1547
	bne x35, zero, trace_ray_beqelse_b1549
trace_ray_bfgtelse_b1548:
# B1548
	mv x33, zero
	j trace_ray_cont_b1567 # adhoc jump(2)
trace_ray_beqelse_b1549:
# B1549
	sw x39, 0(x44)
	mv x33, x11
	j trace_ray_cont_b1567 # adhoc jump(2)
trace_ray_beqelse_b1542:
# B1542
	sw x6, 0(x44)
	mv x33, x106
	j trace_ray_cont_b1567 # adhoc jump(2)
trace_ray_beqelse_b1535:
# B1535
	sw x6, 0(x44)
	mv x33, x102
	j trace_ray_cont_b1567 # adhoc jump(2)
trace_ray_beqelse_b1528:
# B1528
	bne x5, x106, trace_ray_beqelse_b1551
# B1550
	lw x33, 0(x40)
	bfle zero, x33, trace_ray_bfgtelse_b1552
# B1553
	lw x33, 1(x40)
	fmul x33, x33, x35
	lw x35, 2(x40)
	fmul x35, x35, x37
	fadd x33, x33, x35
	lw x35, 3(x40)
	fmul x35, x35, x39
	fadd x33, x33, x35
	sw x33, 0(x44)
	mv x33, x102
	j trace_ray_cont_b1567 # adhoc jump(2)
trace_ray_bfgtelse_b1552:
# B1552
	mv x33, zero
	j trace_ray_cont_b1567 # adhoc jump(2)
trace_ray_beqelse_b1551:
# B1551
	lw x5, 0(x40)
	bfeq x5, zero, trace_ray_bfneqelse_b1555
# B1554
	lw x6, 1(x40)
	fmul x6, x6, x35
	lw x65, 2(x40)
	fmul x65, x65, x37
	fadd x6, x6, x65
	lw x65, 3(x40)
	fmul x65, x65, x39
	fadd x6, x6, x65
	fmul x65, x35, x35
	lw x66, 4(x33)
	lw x66, 0(x66)
	fmul x65, x65, x66
	fmul x66, x37, x37
	lw x67, 4(x33)
	lw x67, 1(x67)
	fmul x66, x66, x67
	fadd x65, x65, x66
	fmul x66, x39, x39
	lw x67, 4(x33)
	lw x67, 2(x67)
	fmul x66, x66, x67
	fadd x65, x65, x66
	lw x66, 3(x33)
	bne x66, zero, trace_ray_beqelse_b1557
# B1556
	mv x35, x65
	j trace_ray_cont_b1558 # adhoc jump(2)
trace_ray_beqelse_b1557:
# B1557
	fmul x66, x37, x39
	lw x67, 9(x33)
	lw x67, 0(x67)
	fmul x66, x66, x67
	fadd x65, x65, x66
	fmul x39, x39, x35
	lw x66, 9(x33)
	lw x66, 1(x66)
	fmul x39, x39, x66
	fadd x39, x65, x39
	fmul x35, x35, x37
	lw x37, 9(x33)
	lw x37, 2(x37)
	fmul x35, x35, x37
	fadd x35, x39, x35
trace_ray_cont_b1558:
# B1558
	lw x37, 1(x33)
	bne x37, x11, trace_ray_beqelse_b1561
# B1559
	fsub x35, x35, x114
trace_ray_beqelse_b1561:
# B1561
	fmul x37, x6, x6
	fmul x35, x5, x35
	fsub x35, x37, x35
	bfle x35, zero, trace_ray_bfgtelse_b1562
# B1563
	lw x33, 6(x33)
	fsqrt x35, x35
	bne x33, zero, trace_ray_beqelse_b1565
# B1564
	fsub x33, x6, x35
	lw x35, 4(x40)
	fmul x33, x33, x35
	sw x33, 0(x44)
	j trace_ray_cont_b1566 # adhoc jump(2)
trace_ray_beqelse_b1565:
# B1565
	fadd x33, x6, x35
	lw x35, 4(x40)
	fmul x33, x33, x35
	sw x33, 0(x44)
trace_ray_cont_b1566:
# B1566
	mv x33, x102
	j trace_ray_cont_b1567 # adhoc jump(2)
trace_ray_bfgtelse_b1562:
# B1562
	mv x33, zero
	j trace_ray_cont_b1567 # adhoc jump(2)
trace_ray_bfneqelse_b1555:
# B1555
	mv x33, zero
trace_ray_cont_b1567:
# B1567
	lw x35, 0(x44)
	bne x33, zero, trace_ray_beqelse_b1569
# B1568
	mv x33, zero
	j trace_ray_cont_b1570 # adhoc jump(2)
trace_ray_beqelse_b1569:
# B1569
	fle x33, x21, x35
	xori x33, x33, 1
trace_ray_cont_b1570:
# B1570
	addi x31, x31, 1
	bne x33, zero, trace_ray_beqelse_b1572
# B1571
	lwr x28, x108, x28
	lw x28, 6(x28)
	beq x28, zero, trace_ray_bneelse_b1602
	j	trace_ray_beqelse_b1524 # moved need extra jump for 1524 at B1571
trace_ray_beqelse_b1572:
# B1572
	fadd x28, x35, x22
	lw x33, 0(x103)
	fmul x33, x33, x28
	fadd x33, x33, x34
	lw x34, 1(x103)
	fmul x34, x34, x28
	fadd x34, x34, x36
	lw x35, 2(x103)
	fmul x28, x35, x28
	fadd x28, x28, x38
	mv x37, x33
	mv x35, zero
	mv x38, x34
	mv x39, x28
	mv x36, x32
	j	trace_ray_loop_b1575 # jumping over moved block
trace_ray_bneelse_b1596:	#moved
# B1596
	addi x35, x35, 1
trace_ray_loop_b1575:
# B1575
	lwr x28, x36, x35
	bne x28, x48, trace_ray_beqelse_b1577
# B1576
	mv x33, x102
# B1598
	bne x33, zero, trace_ray_beqelse_b1600
	j	trace_ray_beqelse_b1524 # moved need extra jump for 1524 at B1598
trace_ray_beqelse_b1600:
# B1600
	mv x28, x102
trace_ray_cont_b1601:
# B1601
	bne x28, zero, trace_ray_beqelse_b1603
trace_ray_bneelse_b1602:
trace_ray_cont_b1602:
# B1602
	addi x29, x29, 1
	j trace_ray_loop_b1521 # loopback to while entry from B1602
trace_ray_beqelse_b1603:
# B1603
	mv x31, x102
# B1604
	bne x31, zero, trace_ray_beqelse_b1606
trace_ray_bneelse_b1605:
# B1605
	mv x28, zero
	j trace_ray_cont_b1607 # adhoc jump(2)
trace_ray_beqelse_b1606:
# B1606
	mv x28, x102
	j trace_ray_cont_b1607 # adhoc jump(2)
trace_ray_beqelse_b1577:
# B1577
	lwr x28, x108, x28
	lw x33, 5(x28)
	lw x33, 0(x33)
	fsub x33, x37, x33
	lw x34, 5(x28)
	lw x34, 1(x34)
	fsub x34, x38, x34
	lw x40, 5(x28)
	lw x40, 2(x40)
	fsub x40, x39, x40
	lw x5, 1(x28)
	bne x5, x102, trace_ray_beqelse_b1579
# B1578
	fabs x33, x33
	lw x5, 4(x28)
	lw x5, 0(x5)
	bfle x5, x33, trace_ray_bfgtelse_b1585
# B1581
	fabs x33, x34
	lw x34, 4(x28)
	lw x34, 1(x34)
	bfle x34, x33, trace_ray_bfgtelse_b1585
# B1583
	fabs x33, x40
	lw x34, 4(x28)
	lw x34, 2(x34)
	fle x33, x34, x33
	xori x33, x33, 1
	mv x34, x33
# B1584
	bne x34, zero, trace_ray_beqelse_b1586
trace_ray_bfgtelse_b1585:
# B1585
	lw x28, 6(x28)
	xori x28, x28, 1
	j trace_ray_cont_b1595 # adhoc jump(2)
trace_ray_beqelse_b1586:
# B1586
	lw x28, 6(x28)
	j trace_ray_cont_b1595 # adhoc jump(2)
trace_ray_beqelse_b1579:
# B1579
	bne x5, x106, trace_ray_beqelse_b1588
# B1587
	lw x5, 4(x28)
	lw x6, 0(x5)
	fmul x33, x6, x33
	lw x6, 1(x5)
	fmul x34, x6, x34
	fadd x33, x33, x34
	lw x34, 2(x5)
	fmul x34, x34, x40
	fadd x33, x33, x34
	lw x28, 6(x28)
	fle x33, zero, x33
	xori x33, x33, 1
	xor x28, x28, x33
	xori x28, x28, 1
	j trace_ray_cont_b1595 # adhoc jump(2)
trace_ray_beqelse_b1588:
# B1588
	fmul x5, x33, x33
	lw x6, 4(x28)
	lw x6, 0(x6)
	fmul x5, x5, x6
	fmul x6, x34, x34
	lw x65, 4(x28)
	lw x65, 1(x65)
	fmul x6, x6, x65
	fadd x5, x5, x6
	fmul x6, x40, x40
	lw x65, 4(x28)
	lw x65, 2(x65)
	fmul x6, x6, x65
	fadd x5, x5, x6
	lw x6, 3(x28)
	bne x6, zero, trace_ray_beqelse_b1590
# B1589
	mv x33, x5
	j trace_ray_cont_b1591 # adhoc jump(2)
trace_ray_beqelse_b1590:
# B1590
	fmul x6, x34, x40
	lw x65, 9(x28)
	lw x65, 0(x65)
	fmul x6, x6, x65
	fadd x5, x5, x6
	fmul x40, x40, x33
	lw x6, 9(x28)
	lw x6, 1(x6)
	fmul x40, x40, x6
	fadd x40, x5, x40
	fmul x33, x33, x34
	lw x34, 9(x28)
	lw x34, 2(x34)
	fmul x33, x33, x34
	fadd x33, x40, x33
trace_ray_cont_b1591:
# B1591
	lw x34, 1(x28)
	bne x34, x11, trace_ray_beqelse_b1594
# B1592
	fsub x33, x33, x114
trace_ray_beqelse_b1594:
# B1594
	lw x28, 6(x28)
	fle x33, zero, x33
	xori x33, x33, 1
	xor x28, x28, x33
	xori x28, x28, 1
trace_ray_cont_b1595:
# B1595
	beq x28, zero, trace_ray_bneelse_b1596
	j	trace_ray_beqelse_b1524 # moved need extra jump for 1524 at B1595
trace_ray_bfgtelse_b1519:
# B1519
	mv x28, zero
trace_ray_cont_b1607:
# B1607
	addi x26, x26, 1
	bne x28, zero, trace_ray_beqelse_b1609
	j	trace_ray_bneelse_b1471 # moved need extra jump for 1471 at B1607
trace_ray_beqelse_b1609:
# B1609
	mv x30, x18
	mv x29, x102
trace_ray_cont_b1610:
trace_ray_loop_b1610:
# B1610
	lwr x18, x30, x29
	beq x18, x48, trace_ray_bneelse_b1471
# B1612
	lwr x18, x49, x18
	mv x31, x18
	mv x28, zero
trace_ray_beqelse_b1613:
trace_ray_loop_b1613:
# B1613
	lwr x18, x31, x28
	beq x18, x48, trace_ray_bneelse_b1691
# B1615
	lwr x18, x31, x28
	lwr x32, x108, x18
	lw x33, 0(x110)
	lw x34, 5(x32)
	lw x34, 0(x34)
	fsub x34, x33, x34
	lw x35, 1(x110)
	lw x36, 5(x32)
	lw x36, 1(x36)
	fsub x36, x35, x36
	lw x37, 2(x110)
	lw x38, 5(x32)
	lw x38, 2(x38)
	fsub x38, x37, x38
	lw x39, 1(x12)
	lwr x39, x39, x18
	lw x40, 1(x32)
	bne x40, x102, trace_ray_beqelse_b1617
# B1616
	lw x40, 0(x12)
	lw x5, 0(x39)
	fsub x5, x5, x34
	lw x6, 1(x39)
	fmul x5, x5, x6
	lw x65, 1(x40)
	fmul x66, x5, x65
	fadd x66, x66, x36
	fabs x66, x66
	lw x67, 4(x32)
	lw x67, 1(x67)
	bfle x67, x66, trace_ray_bfgtelse_b1623
# B1619
	lw x66, 2(x40)
	fmul x66, x5, x66
	fadd x66, x66, x38
	fabs x66, x66
	lw x67, 4(x32)
	lw x67, 2(x67)
	bfle x67, x66, trace_ray_bfgtelse_b1623
# B1621
	feq x6, x6, zero
	xori x6, x6, 1
	mv x66, x6
# B1622
	bne x66, zero, trace_ray_beqelse_b1624
trace_ray_bfgtelse_b1623:
# B1623
	lw x5, 2(x39)
	fsub x5, x5, x36
	lw x6, 3(x39)
	fmul x5, x5, x6
	lw x66, 0(x40)
	fmul x67, x5, x66
	fadd x67, x67, x34
	fabs x67, x67
	lw x68, 4(x32)
	lw x68, 0(x68)
	bfle x68, x67, trace_ray_bfgtelse_b1630
# B1626
	lw x40, 2(x40)
	fmul x40, x5, x40
	fadd x40, x40, x38
	fabs x40, x40
	lw x67, 4(x32)
	lw x67, 2(x67)
	bfle x67, x40, trace_ray_bfgtelse_b1630
# B1628
	feq x40, x6, zero
	xori x40, x40, 1
	mv x6, x40
# B1629
	bne x6, zero, trace_ray_beqelse_b1631
trace_ray_bfgtelse_b1630:
# B1630
	lw x40, 4(x39)
	fsub x38, x40, x38
	lw x39, 5(x39)
	fmul x38, x38, x39
	fmul x40, x38, x66
	fadd x34, x40, x34
	fabs x34, x34
	lw x40, 4(x32)
	lw x40, 0(x40)
	bfle x40, x34, trace_ray_bfgtelse_b1637
# B1633
	fmul x34, x38, x65
	fadd x34, x34, x36
	fabs x34, x34
	lw x32, 4(x32)
	lw x32, 1(x32)
	bfle x32, x34, trace_ray_bfgtelse_b1637
# B1635
	feq x32, x39, zero
	xori x32, x32, 1
	mv x34, x32
# B1636
	bne x34, zero, trace_ray_beqelse_b1638
trace_ray_bfgtelse_b1637:
# B1637
	mv x32, zero
	j trace_ray_cont_b1656 # adhoc jump(2)
trace_ray_beqelse_b1638:
# B1638
	sw x38, 0(x44)
	mv x32, x11
	j trace_ray_cont_b1656 # adhoc jump(2)
trace_ray_beqelse_b1631:
# B1631
	sw x5, 0(x44)
	mv x32, x106
	j trace_ray_cont_b1656 # adhoc jump(2)
trace_ray_beqelse_b1624:
# B1624
	sw x5, 0(x44)
	mv x32, x102
	j trace_ray_cont_b1656 # adhoc jump(2)
trace_ray_beqelse_b1617:
# B1617
	bne x40, x106, trace_ray_beqelse_b1640
# B1639
	lw x32, 0(x39)
	bfle zero, x32, trace_ray_bfgtelse_b1641
# B1642
	lw x32, 1(x39)
	fmul x32, x32, x34
	lw x34, 2(x39)
	fmul x34, x34, x36
	fadd x32, x32, x34
	lw x34, 3(x39)
	fmul x34, x34, x38
	fadd x32, x32, x34
	sw x32, 0(x44)
	mv x32, x102
	j trace_ray_cont_b1656 # adhoc jump(2)
trace_ray_bfgtelse_b1641:
# B1641
	mv x32, zero
	j trace_ray_cont_b1656 # adhoc jump(2)
trace_ray_beqelse_b1640:
# B1640
	lw x40, 0(x39)
	bfeq x40, zero, trace_ray_bfneqelse_b1644
# B1643
	lw x5, 1(x39)
	fmul x5, x5, x34
	lw x6, 2(x39)
	fmul x6, x6, x36
	fadd x5, x5, x6
	lw x6, 3(x39)
	fmul x6, x6, x38
	fadd x5, x5, x6
	fmul x6, x34, x34
	lw x65, 4(x32)
	lw x65, 0(x65)
	fmul x6, x6, x65
	fmul x65, x36, x36
	lw x66, 4(x32)
	lw x66, 1(x66)
	fmul x65, x65, x66
	fadd x6, x6, x65
	fmul x65, x38, x38
	lw x66, 4(x32)
	lw x66, 2(x66)
	fmul x65, x65, x66
	fadd x6, x6, x65
	lw x65, 3(x32)
	bne x65, zero, trace_ray_beqelse_b1646
# B1645
	mv x34, x6
	j trace_ray_cont_b1647 # adhoc jump(2)
trace_ray_beqelse_b1646:
# B1646
	fmul x65, x36, x38
	lw x66, 9(x32)
	lw x66, 0(x66)
	fmul x65, x65, x66
	fadd x6, x6, x65
	fmul x38, x38, x34
	lw x65, 9(x32)
	lw x65, 1(x65)
	fmul x38, x38, x65
	fadd x38, x6, x38
	fmul x34, x34, x36
	lw x36, 9(x32)
	lw x36, 2(x36)
	fmul x34, x34, x36
	fadd x34, x38, x34
trace_ray_cont_b1647:
# B1647
	lw x36, 1(x32)
	bne x36, x11, trace_ray_beqelse_b1650
# B1648
	fsub x34, x34, x114
trace_ray_beqelse_b1650:
# B1650
	fmul x36, x5, x5
	fmul x34, x40, x34
	fsub x34, x36, x34
	bfle x34, zero, trace_ray_bfgtelse_b1651
# B1652
	lw x32, 6(x32)
	fsqrt x34, x34
	bne x32, zero, trace_ray_beqelse_b1654
# B1653
	fsub x32, x5, x34
	lw x34, 4(x39)
	fmul x32, x32, x34
	sw x32, 0(x44)
	j trace_ray_cont_b1655 # adhoc jump(2)
trace_ray_beqelse_b1654:
# B1654
	fadd x32, x5, x34
	lw x34, 4(x39)
	fmul x32, x32, x34
	sw x32, 0(x44)
trace_ray_cont_b1655:
# B1655
	mv x32, x102
	j trace_ray_cont_b1656 # adhoc jump(2)
trace_ray_bfgtelse_b1651:
# B1651
	mv x32, zero
	j trace_ray_cont_b1656 # adhoc jump(2)
trace_ray_bfneqelse_b1644:
# B1644
	mv x32, zero
trace_ray_cont_b1656:
# B1656
	lw x34, 0(x44)
	bne x32, zero, trace_ray_beqelse_b1658
# B1657
	mv x32, zero
	j trace_ray_cont_b1659 # adhoc jump(2)
trace_ray_beqelse_b1658:
# B1658
	fle x32, x21, x34
	xori x32, x32, 1
trace_ray_cont_b1659:
# B1659
	addi x28, x28, 1
	bne x32, zero, trace_ray_beqelse_b1661
# B1660
	lwr x18, x108, x18
	lw x18, 6(x18)
	beq x18, zero, trace_ray_bneelse_b1691
	j	trace_ray_beqelse_b1613 # moved need extra jump for 1613 at B1660
trace_ray_beqelse_b1661:
# B1661
	fadd x18, x34, x22
	lw x32, 0(x103)
	fmul x32, x32, x18
	fadd x32, x32, x33
	lw x33, 1(x103)
	fmul x33, x33, x18
	fadd x33, x33, x35
	lw x34, 2(x103)
	fmul x18, x34, x18
	fadd x18, x18, x37
	mv x37, x33
	mv x35, x31
	mv x38, x18
	mv x34, zero
	mv x36, x32
	j	trace_ray_loop_b1664 # jumping over moved block
trace_ray_bneelse_b1685:	#moved
# B1685
	addi x34, x34, 1
trace_ray_loop_b1664:
# B1664
	lwr x18, x35, x34
	bne x18, x48, trace_ray_beqelse_b1666
# B1665
	mv x32, x102
# B1687
	bne x32, zero, trace_ray_beqelse_b1689
	j	trace_ray_beqelse_b1613 # moved need extra jump for 1613 at B1687
trace_ray_beqelse_b1689:
# B1689
	mv x18, x102
trace_ray_cont_b1690:
# B1690
	bne x18, zero, trace_ray_beqelse_b1692
trace_ray_bneelse_b1691:
trace_ray_cont_b1691:
# B1691
	addi x29, x29, 1
	j trace_ray_loop_b1610 # loopback to while entry from B1691
trace_ray_beqelse_b1692:
# B1692
	mv x28, x102
# B1693
	bne x28, zero, trace_ray_beqelse_b1695
	j	trace_ray_bneelse_b1471 # moved need extra jump for 1471 at B1693
trace_ray_beqelse_b1695:
# B1695
	mv x18, x102
trace_ray_cont_b1696:
# B1696
	bne x18, zero, trace_ray_beqelse_b1704
trace_ray_bneelse_b1697:
# B1697
	lw x16, 0(x16)
	lw x18, 0(x116)
	lw x26, 0(x16)
	fmul x18, x18, x26
	lw x26, 1(x116)
	lw x27, 1(x16)
	fmul x26, x26, x27
	fadd x18, x18, x26
	lw x26, 2(x116)
	lw x27, 2(x16)
	fmul x26, x26, x27
	fadd x18, x18, x26
	lw x10, 2(x10)
	fmul x26, x10, x23
	fmul x18, x26, x18
	lw x26, 0(x25)
	lw x27, 0(x16)
	fmul x26, x26, x27
	lw x27, 1(x25)
	lw x28, 1(x16)
	fmul x27, x27, x28
	fadd x26, x26, x27
	lw x27, 2(x25)
	lw x16, 2(x16)
	fmul x16, x27, x16
	fadd x16, x26, x16
	fmul x10, x10, x16
	bfle x18, zero, trace_ray_bfgtelse_b1701
# B1700
	lw x16, 0(x105)
	lw x26, 0(x113)
	fmul x26, x18, x26
	fadd x16, x16, x26
	sw x16, 0(x105)
	lw x16, 1(x105)
	lw x26, 1(x113)
	fmul x26, x18, x26
	fadd x16, x16, x26
	sw x16, 1(x105)
	lw x16, 2(x105)
	lw x26, 2(x113)
	fmul x18, x18, x26
	fadd x16, x16, x18
	sw x16, 2(x105)
trace_ray_bfgtelse_b1701:
# B1701
	bfle x10, zero, trace_ray_bfgtelse_b1704
# B1703
	fmul x10, x10, x10
	fmul x10, x10, x10
	fmul x10, x10, x24
	lw x16, 0(x105)
	fadd x16, x16, x10
	sw x16, 0(x105)
	lw x16, 1(x105)
	fadd x16, x16, x10
	sw x16, 1(x105)
	lw x16, 2(x105)
	fadd x10, x16, x10
	sw x10, 2(x105)
trace_ray_beqelse_b1704:
trace_ray_bfgtelse_b1704:
trace_ray_cont_b1704:
# B1704
	addi x20, x20, -1
	j trace_ray_loop_b1261 # loopback to while entry from B1704
trace_ray_beqelse_b1666:
# B1666
	lwr x18, x108, x18
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
	bne x40, x102, trace_ray_beqelse_b1668
# B1667
	fabs x32, x32
	lw x40, 4(x18)
	lw x40, 0(x40)
	bfle x40, x32, trace_ray_bfgtelse_b1674
# B1670
	fabs x32, x33
	lw x33, 4(x18)
	lw x33, 1(x33)
	bfle x33, x32, trace_ray_bfgtelse_b1674
# B1672
	fabs x32, x39
	lw x33, 4(x18)
	lw x33, 2(x33)
	fle x32, x33, x32
	xori x32, x32, 1
	mv x33, x32
# B1673
	bne x33, zero, trace_ray_beqelse_b1675
trace_ray_bfgtelse_b1674:
# B1674
	lw x18, 6(x18)
	xori x18, x18, 1
	j trace_ray_cont_b1684 # adhoc jump(2)
trace_ray_beqelse_b1675:
# B1675
	lw x18, 6(x18)
	j trace_ray_cont_b1684 # adhoc jump(2)
trace_ray_beqelse_b1668:
# B1668
	bne x40, x106, trace_ray_beqelse_b1677
# B1676
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
	xor x18, x18, x32
	xori x18, x18, 1
	j trace_ray_cont_b1684 # adhoc jump(2)
trace_ray_beqelse_b1677:
# B1677
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
	bne x5, zero, trace_ray_beqelse_b1679
# B1678
	mv x32, x40
	j trace_ray_cont_b1680 # adhoc jump(2)
trace_ray_beqelse_b1679:
# B1679
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
trace_ray_cont_b1680:
# B1680
	lw x33, 1(x18)
	bne x33, x11, trace_ray_beqelse_b1683
# B1681
	fsub x32, x32, x114
trace_ray_beqelse_b1683:
# B1683
	lw x18, 6(x18)
	fle x32, zero, x32
	xori x32, x32, 1
	xor x18, x18, x32
	xori x18, x18, 1
trace_ray_cont_b1684:
# B1684
	beq x18, zero, trace_ray_bneelse_b1685
	j	trace_ray_beqelse_b1613 # moved need extra jump for 1613 at B1684
trace_ray_bleelse_b1705:
# B1705
	bfle x123, x120, trace_ray_bfgtelse_b1706
# B1707
	addi x10, x122, 1
	bge x122, x101, trace_ray_bgtelse_b1710
# B1709
	add x4, x127, x10
	sw x48, 0(x4)
trace_ray_bgtelse_b1710:
# B1710
	beq x14, x106, trace_ray_bneelse_b1711
# B1712
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
	ret
trace_ray_bfgtelse_b1706:
# B1706
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
	ret
trace_ray_beqelse_b1207:
# B1207
	lwr x19, x108, x19
	lw x26, 5(x19)
	lw x26, 0(x26)
	fsub x26, x30, x26
	lw x27, 5(x19)
	lw x27, 1(x27)
	fsub x27, x31, x27
	lw x33, 5(x19)
	lw x33, 2(x33)
	fsub x33, x32, x33
	lw x34, 1(x19)
	bne x34, x102, trace_ray_beqelse_b1209
# B1208
	fabs x26, x26
	lw x34, 4(x19)
	lw x34, 0(x34)
	bfle x34, x26, trace_ray_bfgtelse_b1215
# B1211
	fabs x26, x27
	lw x27, 4(x19)
	lw x27, 1(x27)
	bfle x27, x26, trace_ray_bfgtelse_b1215
# B1213
	fabs x26, x33
	lw x27, 4(x19)
	lw x27, 2(x27)
	fle x26, x27, x26
	xori x26, x26, 1
	mv x27, x26
# B1214
	bne x27, zero, trace_ray_beqelse_b1216
trace_ray_bfgtelse_b1215:
# B1215
	lw x19, 6(x19)
	xori x19, x19, 1
	j trace_ray_cont_b1225 # adhoc jump(2)
trace_ray_beqelse_b1216:
# B1216
	lw x19, 6(x19)
	j trace_ray_cont_b1225 # adhoc jump(2)
trace_ray_beqelse_b1209:
# B1209
	bne x34, x106, trace_ray_beqelse_b1218
# B1217
	lw x34, 4(x19)
	lw x35, 0(x34)
	fmul x26, x35, x26
	lw x35, 1(x34)
	fmul x27, x35, x27
	fadd x26, x26, x27
	lw x27, 2(x34)
	fmul x27, x27, x33
	fadd x26, x26, x27
	lw x19, 6(x19)
	fle x26, zero, x26
	xori x26, x26, 1
	xor x19, x19, x26
	xori x19, x19, 1
	j trace_ray_cont_b1225 # adhoc jump(2)
trace_ray_beqelse_b1218:
# B1218
	fmul x34, x26, x26
	lw x35, 4(x19)
	lw x35, 0(x35)
	fmul x34, x34, x35
	fmul x35, x27, x27
	lw x36, 4(x19)
	lw x36, 1(x36)
	fmul x35, x35, x36
	fadd x34, x34, x35
	fmul x35, x33, x33
	lw x36, 4(x19)
	lw x36, 2(x36)
	fmul x35, x35, x36
	fadd x34, x34, x35
	lw x35, 3(x19)
	bne x35, zero, trace_ray_beqelse_b1220
# B1219
	mv x26, x34
	j trace_ray_cont_b1221 # adhoc jump(2)
trace_ray_beqelse_b1220:
# B1220
	fmul x35, x27, x33
	lw x36, 9(x19)
	lw x36, 0(x36)
	fmul x35, x35, x36
	fadd x34, x34, x35
	fmul x33, x33, x26
	lw x35, 9(x19)
	lw x35, 1(x35)
	fmul x33, x33, x35
	fadd x33, x34, x33
	fmul x26, x26, x27
	lw x27, 9(x19)
	lw x27, 2(x27)
	fmul x26, x26, x27
	fadd x26, x33, x26
trace_ray_cont_b1221:
# B1221
	lw x27, 1(x19)
	bne x27, x11, trace_ray_beqelse_b1224
# B1222
	fsub x26, x26, x114
trace_ray_beqelse_b1224:
# B1224
	lw x19, 6(x19)
	fle x26, zero, x26
	xori x26, x26, 1
	xor x19, x19, x26
	xori x19, x19, 1
trace_ray_cont_b1225:
# B1225
	beq x19, zero, trace_ray_bneelse_b1226
	j	trace_ray_beqelse_b1154 # moved need extra jump for 1154 at B1225
trace_ray_bleelse_b817:
# B817
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
	ret
trace_diffuse_ray.3077:
# B1713
# B1714
	la x10, min_caml_tmin
	lui x100, 321255
	addi x100, x100, -1240
	sw x100, 0(x10)
	la x100, min_caml_or_net
	lw x100, 0(x100)
	li x11, 1
	li x12, 99
	la x13, min_caml_solver_dist
	li x14, -1
	la x15, min_caml_and_net
	la x16, min_caml_objects
	li x17, 2
	mv x19, x100
	mv x18, zero
	mv x20, x5
trace_diffuse_ray_loop_b1715:
# B1715
	lwr x21, x19, x18
	lw x22, 0(x21)
	lui x23, 246333
	addi x23, x23, 1802
	la x24, min_caml_intersection_point
	la x25, min_caml_intersected_object_id
	la x26, min_caml_intsec_rectside
	li x27, 3
	lui x28, 260096
	beq x22, x14, trace_diffuse_ray_bneelse_b1914
# B1717
	la x29, min_caml_startp_fast
	bne x22, x12, trace_diffuse_ray_beqelse_b1719
# B1718
	mv x31, x21
	mv x32, x20
	mv x30, x11
trace_diffuse_ray_loop_b1720:
# B1720
	lwr x21, x31, x30
	beq x21, x14, trace_diffuse_ray_bneelse_b1913
# B1722
	lwr x21, x15, x21
	mv x34, x32
	mv x22, zero
	mv x33, x21
	j	trace_diffuse_ray_loop_b1723 # jumping over moved block
trace_diffuse_ray_beqelse_b1794:	#moved
# B1794
	sw x37, 0(x10)
	sw x38, 0(x24)
	sw x39, 1(x24)
	sw x21, 2(x24)
	sw x35, 0(x25)
	sw x36, 0(x26)
trace_diffuse_ray_beqelse_b1723:
trace_diffuse_ray_bfgtelse_b1723:
trace_diffuse_ray_loop_b1723:
# B1723
	lw x21, 0(x34)
	lwr x35, x33, x22
	beq x35, x14, trace_diffuse_ray_bneelse_b1796
# B1725
	lwr x36, x16, x35
	lw x37, 10(x36)
	lw x38, 0(x37)
	lw x39, 1(x37)
	lw x40, 2(x37)
	lw x6, 1(x34)
	lwr x6, x6, x35
	lw x66, 1(x36)
	bne x66, x11, trace_diffuse_ray_beqelse_b1727
# B1726
	lw x37, 0(x34)
	lw x66, 0(x6)
	fsub x66, x66, x38
	lw x67, 1(x6)
	fmul x66, x66, x67
	lw x68, 1(x37)
	fmul x69, x66, x68
	fadd x69, x69, x39
	fabs x69, x69
	lw x7, 4(x36)
	lw x7, 1(x7)
	bfle x7, x69, trace_diffuse_ray_bfgtelse_b1733
# B1729
	lw x69, 2(x37)
	fmul x69, x66, x69
	fadd x69, x69, x40
	fabs x69, x69
	lw x7, 4(x36)
	lw x7, 2(x7)
	bfle x7, x69, trace_diffuse_ray_bfgtelse_b1733
# B1731
	feq x67, x67, zero
	xori x67, x67, 1
	mv x69, x67
# B1732
	bne x69, zero, trace_diffuse_ray_beqelse_b1734
trace_diffuse_ray_bfgtelse_b1733:
# B1733
	lw x66, 2(x6)
	fsub x66, x66, x39
	lw x67, 3(x6)
	fmul x66, x66, x67
	lw x69, 0(x37)
	fmul x7, x66, x69
	fadd x7, x7, x38
	fabs x7, x7
	lw x70, 4(x36)
	lw x70, 0(x70)
	bfle x70, x7, trace_diffuse_ray_bfgtelse_b1740
# B1736
	lw x37, 2(x37)
	fmul x37, x66, x37
	fadd x37, x37, x40
	fabs x37, x37
	lw x7, 4(x36)
	lw x7, 2(x7)
	bfle x7, x37, trace_diffuse_ray_bfgtelse_b1740
# B1738
	feq x37, x67, zero
	xori x37, x37, 1
	mv x67, x37
# B1739
	bne x67, zero, trace_diffuse_ray_beqelse_b1741
trace_diffuse_ray_bfgtelse_b1740:
# B1740
	lw x37, 4(x6)
	fsub x37, x37, x40
	lw x40, 5(x6)
	fmul x37, x37, x40
	fmul x6, x37, x69
	fadd x38, x6, x38
	fabs x38, x38
	lw x6, 4(x36)
	lw x6, 0(x6)
	bfle x6, x38, trace_diffuse_ray_bfgtelse_b1747
# B1743
	fmul x38, x37, x68
	fadd x38, x38, x39
	fabs x38, x38
	lw x36, 4(x36)
	lw x36, 1(x36)
	bfle x36, x38, trace_diffuse_ray_bfgtelse_b1747
# B1745
	feq x36, x40, zero
	xori x36, x36, 1
	mv x38, x36
# B1746
	bne x38, zero, trace_diffuse_ray_beqelse_b1748
trace_diffuse_ray_bfgtelse_b1747:
# B1747
	mv x36, zero
	j trace_diffuse_ray_cont_b1760 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1748:
# B1748
	sw x37, 0(x13)
	mv x36, x27
	j trace_diffuse_ray_cont_b1760 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1741:
# B1741
	sw x66, 0(x13)
	mv x36, x17
	j trace_diffuse_ray_cont_b1760 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1734:
# B1734
	sw x66, 0(x13)
	mv x36, x11
	j trace_diffuse_ray_cont_b1760 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1727:
# B1727
	bne x66, x17, trace_diffuse_ray_beqelse_b1750
# B1749
	lw x36, 0(x6)
	bfle zero, x36, trace_diffuse_ray_bfgtelse_b1751
# B1752
	lw x37, 3(x37)
	fmul x36, x36, x37
	sw x36, 0(x13)
	mv x36, x11
	j trace_diffuse_ray_cont_b1760 # adhoc jump(2)
trace_diffuse_ray_bfgtelse_b1751:
# B1751
	mv x36, zero
	j trace_diffuse_ray_cont_b1760 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1750:
# B1750
	lw x66, 0(x6)
	bfeq x66, zero, trace_diffuse_ray_bfneqelse_b1754
# B1753
	lw x67, 1(x6)
	fmul x38, x67, x38
	lw x67, 2(x6)
	fmul x39, x67, x39
	fadd x38, x38, x39
	lw x39, 3(x6)
	fmul x39, x39, x40
	fadd x38, x38, x39
	lw x37, 3(x37)
	fmul x39, x38, x38
	fmul x37, x66, x37
	fsub x37, x39, x37
	bfle x37, zero, trace_diffuse_ray_bfgtelse_b1755
# B1756
	lw x36, 6(x36)
	fsqrt x37, x37
	bne x36, zero, trace_diffuse_ray_beqelse_b1758
# B1757
	fsub x36, x38, x37
	lw x37, 4(x6)
	fmul x36, x36, x37
	sw x36, 0(x13)
	j trace_diffuse_ray_cont_b1759 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1758:
# B1758
	fadd x36, x38, x37
	lw x37, 4(x6)
	fmul x36, x36, x37
	sw x36, 0(x13)
trace_diffuse_ray_cont_b1759:
# B1759
	mv x36, x11
	j trace_diffuse_ray_cont_b1760 # adhoc jump(2)
trace_diffuse_ray_bfgtelse_b1755:
# B1755
	mv x36, zero
	j trace_diffuse_ray_cont_b1760 # adhoc jump(2)
trace_diffuse_ray_bfneqelse_b1754:
# B1754
	mv x36, zero
trace_diffuse_ray_cont_b1760:
# B1760
	addi x22, x22, 1
	bne x36, zero, trace_diffuse_ray_beqelse_b1762
# B1761
	lwr x21, x16, x35
	lw x21, 6(x21)
	beq x21, zero, trace_diffuse_ray_bneelse_b1796
	j	trace_diffuse_ray_beqelse_b1723 # moved need extra jump for 1723 at B1761
trace_diffuse_ray_bneelse_b1796:
# B1796
	addi x30, x30, 1
	j trace_diffuse_ray_loop_b1720 # loopback to while entry from B1796
trace_diffuse_ray_beqelse_b1762:
# B1762
	lw x37, 0(x13)
	bfle x37, zero, trace_diffuse_ray_bfgtelse_b1723
# B1766
	lw x38, 0(x10)
	bfle x38, x37, trace_diffuse_ray_bfgtelse_b1723
# B1768
	fadd x37, x37, x23
	lw x38, 0(x21)
	fmul x38, x38, x37
	lw x39, 0(x29)
	fadd x38, x38, x39
	lw x39, 1(x21)
	fmul x39, x39, x37
	lw x40, 1(x29)
	fadd x39, x39, x40
	lw x21, 2(x21)
	fmul x21, x21, x37
	lw x40, 2(x29)
	fadd x21, x21, x40
	mv x40, zero
	mv x66, x38
	mv x67, x39
	mv x68, x21
	mv x6, x33
	j	trace_diffuse_ray_loop_b1769 # jumping over moved block
trace_diffuse_ray_bneelse_b1790:	#moved
# B1790
	addi x40, x40, 1
trace_diffuse_ray_loop_b1769:
# B1769
	lwr x69, x6, x40
	bne x69, x14, trace_diffuse_ray_beqelse_b1771
# B1770
	mv x7, x11
# B1792
	bne x7, zero, trace_diffuse_ray_beqelse_b1794
	j	trace_diffuse_ray_bfgtelse_b1723 # moved need extra jump for 1723 at B1792
trace_diffuse_ray_beqelse_b1771:
# B1771
	lwr x69, x16, x69
	lw x7, 5(x69)
	lw x7, 0(x7)
	fsub x7, x66, x7
	lw x70, 5(x69)
	lw x70, 1(x70)
	fsub x70, x67, x70
	lw x71, 5(x69)
	lw x71, 2(x71)
	fsub x71, x68, x71
	lw x72, 1(x69)
	bne x72, x11, trace_diffuse_ray_beqelse_b1773
# B1772
	fabs x7, x7
	lw x72, 4(x69)
	lw x72, 0(x72)
	bfle x72, x7, trace_diffuse_ray_bfgtelse_b1779
# B1775
	fabs x7, x70
	lw x70, 4(x69)
	lw x70, 1(x70)
	bfle x70, x7, trace_diffuse_ray_bfgtelse_b1779
# B1777
	fabs x7, x71
	lw x70, 4(x69)
	lw x70, 2(x70)
	fle x7, x70, x7
	xori x7, x7, 1
	mv x70, x7
# B1778
	bne x70, zero, trace_diffuse_ray_beqelse_b1780
trace_diffuse_ray_bfgtelse_b1779:
# B1779
	lw x69, 6(x69)
	xori x69, x69, 1
	j trace_diffuse_ray_cont_b1789 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1780:
# B1780
	lw x69, 6(x69)
	j trace_diffuse_ray_cont_b1789 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1773:
# B1773
	bne x72, x17, trace_diffuse_ray_beqelse_b1782
# B1781
	lw x72, 4(x69)
	lw x73, 0(x72)
	fmul x7, x73, x7
	lw x73, 1(x72)
	fmul x70, x73, x70
	fadd x7, x7, x70
	lw x70, 2(x72)
	fmul x70, x70, x71
	fadd x7, x7, x70
	lw x69, 6(x69)
	fle x7, zero, x7
	xori x7, x7, 1
	xor x69, x69, x7
	xori x69, x69, 1
	j trace_diffuse_ray_cont_b1789 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1782:
# B1782
	fmul x72, x7, x7
	lw x73, 4(x69)
	lw x73, 0(x73)
	fmul x72, x72, x73
	fmul x73, x70, x70
	lw x74, 4(x69)
	lw x74, 1(x74)
	fmul x73, x73, x74
	fadd x72, x72, x73
	fmul x73, x71, x71
	lw x74, 4(x69)
	lw x74, 2(x74)
	fmul x73, x73, x74
	fadd x72, x72, x73
	lw x73, 3(x69)
	bne x73, zero, trace_diffuse_ray_beqelse_b1784
# B1783
	mv x7, x72
	j trace_diffuse_ray_cont_b1785 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1784:
# B1784
	fmul x73, x70, x71
	lw x74, 9(x69)
	lw x74, 0(x74)
	fmul x73, x73, x74
	fadd x72, x72, x73
	fmul x71, x71, x7
	lw x73, 9(x69)
	lw x73, 1(x73)
	fmul x71, x71, x73
	fadd x71, x72, x71
	fmul x7, x7, x70
	lw x70, 9(x69)
	lw x70, 2(x70)
	fmul x7, x7, x70
	fadd x7, x71, x7
trace_diffuse_ray_cont_b1785:
# B1785
	lw x70, 1(x69)
	bne x70, x27, trace_diffuse_ray_beqelse_b1788
# B1786
	fsub x7, x7, x28
trace_diffuse_ray_beqelse_b1788:
# B1788
	lw x69, 6(x69)
	fle x7, zero, x7
	xori x7, x7, 1
	xor x69, x69, x7
	xori x69, x69, 1
trace_diffuse_ray_cont_b1789:
# B1789
	beq x69, zero, trace_diffuse_ray_bneelse_b1790
	j	trace_diffuse_ray_bfgtelse_b1723 # moved need extra jump for 1723 at B1789
trace_diffuse_ray_beqelse_b1719:
# B1719
	lwr x30, x16, x22
	lw x31, 10(x30)
	lw x32, 0(x31)
	lw x33, 1(x31)
	lw x34, 2(x31)
	lw x35, 1(x20)
	lwr x22, x35, x22
	lw x35, 1(x30)
	bne x35, x11, trace_diffuse_ray_beqelse_b1798
# B1797
	lw x31, 0(x20)
	lw x35, 0(x22)
	fsub x35, x35, x32
	lw x36, 1(x22)
	fmul x35, x35, x36
	lw x37, 1(x31)
	fmul x38, x35, x37
	fadd x38, x38, x33
	fabs x38, x38
	lw x39, 4(x30)
	lw x39, 1(x39)
	bfle x39, x38, trace_diffuse_ray_bfgtelse_b1804
# B1800
	lw x38, 2(x31)
	fmul x38, x35, x38
	fadd x38, x38, x34
	fabs x38, x38
	lw x39, 4(x30)
	lw x39, 2(x39)
	bfle x39, x38, trace_diffuse_ray_bfgtelse_b1804
# B1802
	feq x36, x36, zero
	xori x36, x36, 1
	mv x38, x36
# B1803
	bne x38, zero, trace_diffuse_ray_beqelse_b1805
trace_diffuse_ray_bfgtelse_b1804:
# B1804
	lw x35, 2(x22)
	fsub x35, x35, x33
	lw x36, 3(x22)
	fmul x35, x35, x36
	lw x38, 0(x31)
	fmul x39, x35, x38
	fadd x39, x39, x32
	fabs x39, x39
	lw x40, 4(x30)
	lw x40, 0(x40)
	bfle x40, x39, trace_diffuse_ray_bfgtelse_b1811
# B1807
	lw x31, 2(x31)
	fmul x31, x35, x31
	fadd x31, x31, x34
	fabs x31, x31
	lw x39, 4(x30)
	lw x39, 2(x39)
	bfle x39, x31, trace_diffuse_ray_bfgtelse_b1811
# B1809
	feq x31, x36, zero
	xori x31, x31, 1
	mv x36, x31
# B1810
	bne x36, zero, trace_diffuse_ray_beqelse_b1812
trace_diffuse_ray_bfgtelse_b1811:
# B1811
	lw x31, 4(x22)
	fsub x31, x31, x34
	lw x22, 5(x22)
	fmul x31, x31, x22
	fmul x34, x31, x38
	fadd x32, x34, x32
	fabs x32, x32
	lw x34, 4(x30)
	lw x34, 0(x34)
	bfle x34, x32, trace_diffuse_ray_bfgtelse_b1913
# B1814
	fmul x32, x31, x37
	fadd x32, x32, x33
	fabs x32, x32
	lw x30, 4(x30)
	lw x30, 1(x30)
	bfle x30, x32, trace_diffuse_ray_bfgtelse_b1913
# B1816
	feq x22, x22, zero
	xori x22, x22, 1
	mv x30, x22
# B1817
	bne x30, zero, trace_diffuse_ray_beqelse_b1819
	j trace_diffuse_ray_cont_b1913 # adhoc jump(3)
trace_diffuse_ray_beqelse_b1819:
# B1819
	sw x31, 0(x13)
	mv x22, x27
	j trace_diffuse_ray_cont_b1831 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1812:
# B1812
	sw x35, 0(x13)
	mv x22, x17
	j trace_diffuse_ray_cont_b1831 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1805:
# B1805
	sw x35, 0(x13)
	mv x22, x11
	j trace_diffuse_ray_cont_b1831 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1798:
# B1798
	bne x35, x17, trace_diffuse_ray_beqelse_b1821
# B1820
	lw x22, 0(x22)
	bfle zero, x22, trace_diffuse_ray_bfgtelse_b1913
# B1823
	lw x30, 3(x31)
	fmul x22, x22, x30
	sw x22, 0(x13)
	mv x22, x11
	j trace_diffuse_ray_cont_b1831 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1821:
# B1821
	lw x35, 0(x22)
	bfeq x35, zero, trace_diffuse_ray_bfneqelse_b1913
# B1824
	lw x36, 1(x22)
	fmul x32, x36, x32
	lw x36, 2(x22)
	fmul x33, x36, x33
	fadd x32, x32, x33
	lw x33, 3(x22)
	fmul x33, x33, x34
	fadd x32, x32, x33
	lw x31, 3(x31)
	fmul x33, x32, x32
	fmul x31, x35, x31
	fsub x31, x33, x31
	bfle x31, zero, trace_diffuse_ray_bfgtelse_b1913
# B1827
	lw x30, 6(x30)
	fsqrt x31, x31
	bne x30, zero, trace_diffuse_ray_beqelse_b1829
# B1828
	fsub x30, x32, x31
	lw x22, 4(x22)
	fmul x22, x30, x22
	sw x22, 0(x13)
	j trace_diffuse_ray_cont_b1830 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1829:
# B1829
	fadd x30, x32, x31
	lw x22, 4(x22)
	fmul x22, x30, x22
	sw x22, 0(x13)
trace_diffuse_ray_cont_b1830:
# B1830
	mv x22, x11
trace_diffuse_ray_cont_b1831:
# B1831
	bne x22, zero, trace_diffuse_ray_beqelse_b1833
	j trace_diffuse_ray_cont_b1913 # adhoc jump(3)
trace_diffuse_ray_beqelse_b1833:
# B1833
	lw x22, 0(x13)
	lw x30, 0(x10)
	bfle x30, x22, trace_diffuse_ray_bfgtelse_b1913
# B1835
	mv x31, x11
	mv x33, x20
	mv x32, x21
trace_diffuse_ray_loop_b1836:
# B1836
	lwr x21, x32, x31
	beq x21, x14, trace_diffuse_ray_bneelse_b1913
# B1838
	lwr x21, x15, x21
	mv x34, x33
	mv x22, zero
	mv x30, x21
	j	trace_diffuse_ray_loop_b1839 # jumping over moved block
trace_diffuse_ray_beqelse_b1910:	#moved
# B1910
	sw x37, 0(x10)
	sw x38, 0(x24)
	sw x39, 1(x24)
	sw x21, 2(x24)
	sw x35, 0(x25)
	sw x36, 0(x26)
trace_diffuse_ray_beqelse_b1839:
trace_diffuse_ray_bfgtelse_b1839:
trace_diffuse_ray_loop_b1839:
# B1839
	lw x21, 0(x34)
	lwr x35, x30, x22
	beq x35, x14, trace_diffuse_ray_bneelse_b1912
# B1841
	lwr x36, x16, x35
	lw x37, 10(x36)
	lw x38, 0(x37)
	lw x39, 1(x37)
	lw x40, 2(x37)
	lw x6, 1(x34)
	lwr x6, x6, x35
	lw x66, 1(x36)
	bne x66, x11, trace_diffuse_ray_beqelse_b1843
# B1842
	lw x37, 0(x34)
	lw x66, 0(x6)
	fsub x66, x66, x38
	lw x67, 1(x6)
	fmul x66, x66, x67
	lw x68, 1(x37)
	fmul x69, x66, x68
	fadd x69, x69, x39
	fabs x69, x69
	lw x7, 4(x36)
	lw x7, 1(x7)
	bfle x7, x69, trace_diffuse_ray_bfgtelse_b1849
# B1845
	lw x69, 2(x37)
	fmul x69, x66, x69
	fadd x69, x69, x40
	fabs x69, x69
	lw x7, 4(x36)
	lw x7, 2(x7)
	bfle x7, x69, trace_diffuse_ray_bfgtelse_b1849
# B1847
	feq x67, x67, zero
	xori x67, x67, 1
	mv x69, x67
# B1848
	bne x69, zero, trace_diffuse_ray_beqelse_b1850
trace_diffuse_ray_bfgtelse_b1849:
# B1849
	lw x66, 2(x6)
	fsub x66, x66, x39
	lw x67, 3(x6)
	fmul x66, x66, x67
	lw x69, 0(x37)
	fmul x7, x66, x69
	fadd x7, x7, x38
	fabs x7, x7
	lw x70, 4(x36)
	lw x70, 0(x70)
	bfle x70, x7, trace_diffuse_ray_bfgtelse_b1856
# B1852
	lw x37, 2(x37)
	fmul x37, x66, x37
	fadd x37, x37, x40
	fabs x37, x37
	lw x7, 4(x36)
	lw x7, 2(x7)
	bfle x7, x37, trace_diffuse_ray_bfgtelse_b1856
# B1854
	feq x37, x67, zero
	xori x37, x37, 1
	mv x67, x37
# B1855
	bne x67, zero, trace_diffuse_ray_beqelse_b1857
trace_diffuse_ray_bfgtelse_b1856:
# B1856
	lw x37, 4(x6)
	fsub x37, x37, x40
	lw x40, 5(x6)
	fmul x37, x37, x40
	fmul x6, x37, x69
	fadd x38, x6, x38
	fabs x38, x38
	lw x6, 4(x36)
	lw x6, 0(x6)
	bfle x6, x38, trace_diffuse_ray_bfgtelse_b1863
# B1859
	fmul x38, x37, x68
	fadd x38, x38, x39
	fabs x38, x38
	lw x36, 4(x36)
	lw x36, 1(x36)
	bfle x36, x38, trace_diffuse_ray_bfgtelse_b1863
# B1861
	feq x36, x40, zero
	xori x36, x36, 1
	mv x38, x36
# B1862
	bne x38, zero, trace_diffuse_ray_beqelse_b1864
trace_diffuse_ray_bfgtelse_b1863:
# B1863
	mv x36, zero
	j trace_diffuse_ray_cont_b1876 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1864:
# B1864
	sw x37, 0(x13)
	mv x36, x27
	j trace_diffuse_ray_cont_b1876 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1857:
# B1857
	sw x66, 0(x13)
	mv x36, x17
	j trace_diffuse_ray_cont_b1876 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1850:
# B1850
	sw x66, 0(x13)
	mv x36, x11
	j trace_diffuse_ray_cont_b1876 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1843:
# B1843
	bne x66, x17, trace_diffuse_ray_beqelse_b1866
# B1865
	lw x36, 0(x6)
	bfle zero, x36, trace_diffuse_ray_bfgtelse_b1867
# B1868
	lw x37, 3(x37)
	fmul x36, x36, x37
	sw x36, 0(x13)
	mv x36, x11
	j trace_diffuse_ray_cont_b1876 # adhoc jump(2)
trace_diffuse_ray_bfgtelse_b1867:
# B1867
	mv x36, zero
	j trace_diffuse_ray_cont_b1876 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1866:
# B1866
	lw x66, 0(x6)
	bfeq x66, zero, trace_diffuse_ray_bfneqelse_b1870
# B1869
	lw x67, 1(x6)
	fmul x38, x67, x38
	lw x67, 2(x6)
	fmul x39, x67, x39
	fadd x38, x38, x39
	lw x39, 3(x6)
	fmul x39, x39, x40
	fadd x38, x38, x39
	lw x37, 3(x37)
	fmul x39, x38, x38
	fmul x37, x66, x37
	fsub x37, x39, x37
	bfle x37, zero, trace_diffuse_ray_bfgtelse_b1871
# B1872
	lw x36, 6(x36)
	fsqrt x37, x37
	bne x36, zero, trace_diffuse_ray_beqelse_b1874
# B1873
	fsub x36, x38, x37
	lw x37, 4(x6)
	fmul x36, x36, x37
	sw x36, 0(x13)
	j trace_diffuse_ray_cont_b1875 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1874:
# B1874
	fadd x36, x38, x37
	lw x37, 4(x6)
	fmul x36, x36, x37
	sw x36, 0(x13)
trace_diffuse_ray_cont_b1875:
# B1875
	mv x36, x11
	j trace_diffuse_ray_cont_b1876 # adhoc jump(2)
trace_diffuse_ray_bfgtelse_b1871:
# B1871
	mv x36, zero
	j trace_diffuse_ray_cont_b1876 # adhoc jump(2)
trace_diffuse_ray_bfneqelse_b1870:
# B1870
	mv x36, zero
trace_diffuse_ray_cont_b1876:
# B1876
	addi x22, x22, 1
	bne x36, zero, trace_diffuse_ray_beqelse_b1878
# B1877
	lwr x21, x16, x35
	lw x21, 6(x21)
	beq x21, zero, trace_diffuse_ray_bneelse_b1912
	j	trace_diffuse_ray_beqelse_b1839 # moved need extra jump for 1839 at B1877
trace_diffuse_ray_bneelse_b1912:
# B1912
	addi x31, x31, 1
	j trace_diffuse_ray_loop_b1836 # loopback to while entry from B1912
trace_diffuse_ray_beqelse_b1878:
# B1878
	lw x37, 0(x13)
	bfle x37, zero, trace_diffuse_ray_bfgtelse_b1839
# B1882
	lw x38, 0(x10)
	bfle x38, x37, trace_diffuse_ray_bfgtelse_b1839
# B1884
	fadd x37, x37, x23
	lw x38, 0(x21)
	fmul x38, x38, x37
	lw x39, 0(x29)
	fadd x38, x38, x39
	lw x39, 1(x21)
	fmul x39, x39, x37
	lw x40, 1(x29)
	fadd x39, x39, x40
	lw x21, 2(x21)
	fmul x21, x21, x37
	lw x40, 2(x29)
	fadd x21, x21, x40
	mv x40, zero
	mv x66, x38
	mv x67, x39
	mv x68, x21
	mv x6, x30
	j	trace_diffuse_ray_loop_b1885 # jumping over moved block
trace_diffuse_ray_bneelse_b1906:	#moved
# B1906
	addi x40, x40, 1
trace_diffuse_ray_loop_b1885:
# B1885
	lwr x69, x6, x40
	bne x69, x14, trace_diffuse_ray_beqelse_b1887
# B1886
	mv x7, x11
# B1908
	bne x7, zero, trace_diffuse_ray_beqelse_b1910
	j	trace_diffuse_ray_bfgtelse_b1839 # moved need extra jump for 1839 at B1908
trace_diffuse_ray_beqelse_b1887:
# B1887
	lwr x69, x16, x69
	lw x7, 5(x69)
	lw x7, 0(x7)
	fsub x7, x66, x7
	lw x70, 5(x69)
	lw x70, 1(x70)
	fsub x70, x67, x70
	lw x71, 5(x69)
	lw x71, 2(x71)
	fsub x71, x68, x71
	lw x72, 1(x69)
	bne x72, x11, trace_diffuse_ray_beqelse_b1889
# B1888
	fabs x7, x7
	lw x72, 4(x69)
	lw x72, 0(x72)
	bfle x72, x7, trace_diffuse_ray_bfgtelse_b1895
# B1891
	fabs x7, x70
	lw x70, 4(x69)
	lw x70, 1(x70)
	bfle x70, x7, trace_diffuse_ray_bfgtelse_b1895
# B1893
	fabs x7, x71
	lw x70, 4(x69)
	lw x70, 2(x70)
	fle x7, x70, x7
	xori x7, x7, 1
	mv x70, x7
# B1894
	bne x70, zero, trace_diffuse_ray_beqelse_b1896
trace_diffuse_ray_bfgtelse_b1895:
# B1895
	lw x69, 6(x69)
	xori x69, x69, 1
	j trace_diffuse_ray_cont_b1905 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1896:
# B1896
	lw x69, 6(x69)
	j trace_diffuse_ray_cont_b1905 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1889:
# B1889
	bne x72, x17, trace_diffuse_ray_beqelse_b1898
# B1897
	lw x72, 4(x69)
	lw x73, 0(x72)
	fmul x7, x73, x7
	lw x73, 1(x72)
	fmul x70, x73, x70
	fadd x7, x7, x70
	lw x70, 2(x72)
	fmul x70, x70, x71
	fadd x7, x7, x70
	lw x69, 6(x69)
	fle x7, zero, x7
	xori x7, x7, 1
	xor x69, x69, x7
	xori x69, x69, 1
	j trace_diffuse_ray_cont_b1905 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1898:
# B1898
	fmul x72, x7, x7
	lw x73, 4(x69)
	lw x73, 0(x73)
	fmul x72, x72, x73
	fmul x73, x70, x70
	lw x74, 4(x69)
	lw x74, 1(x74)
	fmul x73, x73, x74
	fadd x72, x72, x73
	fmul x73, x71, x71
	lw x74, 4(x69)
	lw x74, 2(x74)
	fmul x73, x73, x74
	fadd x72, x72, x73
	lw x73, 3(x69)
	bne x73, zero, trace_diffuse_ray_beqelse_b1900
# B1899
	mv x7, x72
	j trace_diffuse_ray_cont_b1901 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1900:
# B1900
	fmul x73, x70, x71
	lw x74, 9(x69)
	lw x74, 0(x74)
	fmul x73, x73, x74
	fadd x72, x72, x73
	fmul x71, x71, x7
	lw x73, 9(x69)
	lw x73, 1(x73)
	fmul x71, x71, x73
	fadd x71, x72, x71
	fmul x7, x7, x70
	lw x70, 9(x69)
	lw x70, 2(x70)
	fmul x7, x7, x70
	fadd x7, x71, x7
trace_diffuse_ray_cont_b1901:
# B1901
	lw x70, 1(x69)
	bne x70, x27, trace_diffuse_ray_beqelse_b1904
# B1902
	fsub x7, x7, x28
trace_diffuse_ray_beqelse_b1904:
# B1904
	lw x69, 6(x69)
	fle x7, zero, x7
	xori x7, x7, 1
	xor x69, x69, x7
	xori x69, x69, 1
trace_diffuse_ray_cont_b1905:
# B1905
	beq x69, zero, trace_diffuse_ray_bneelse_b1906
	j	trace_diffuse_ray_bfgtelse_b1839 # moved need extra jump for 1839 at B1905
trace_diffuse_ray_bfgtelse_b1913:
trace_diffuse_ray_bfneqelse_b1913:
trace_diffuse_ray_bneelse_b1913:
trace_diffuse_ray_cont_b1913:
# B1913
	addi x18, x18, 1
	j trace_diffuse_ray_loop_b1715 # loopback to while entry from B1913
trace_diffuse_ray_bneelse_b1914:
# B1914
	lw x10, 0(x10)
	lui x18, 777421
	addi x18, x18, -819
	bfle x10, x18, trace_diffuse_ray_bfgtelse_b1918
# B1916
	lui x19, 314348
	addi x19, x19, -992
	fle x10, x19, x10
	xori x10, x10, 1
	mv x19, x10
# B1917
	bne x19, zero, trace_diffuse_ray_beqelse_b1919
trace_diffuse_ray_bfgtelse_b1918:
# B1918
	ret
trace_diffuse_ray_beqelse_b1919:
# B1919
	lw x10, 0(x25)
	lwr x10, x16, x10
	lw x19, 0(x5)
	lw x20, 1(x10)
	la x21, min_caml_nvector
	lui x22, 258048
	bne x20, x11, trace_diffuse_ray_beqelse_b1921
# B1920
	lw x20, 0(x26)
	sw zero, 0(x21)
	sw zero, 1(x21)
	sw zero, 2(x21)
	addi x20, x20, -1
	lwr x19, x19, x20
	bfeq x19, zero, trace_diffuse_ray_bfneqelse_b1923
# B1922
	bfle x19, zero, trace_diffuse_ray_bfgtelse_b1924
# B1925
	mv x19, x28
	j trace_diffuse_ray_cont_b1926 # adhoc jump(2)
trace_diffuse_ray_bfgtelse_b1924:
# B1924
	lui x19, 784384
	j trace_diffuse_ray_cont_b1926 # adhoc jump(2)
trace_diffuse_ray_bfneqelse_b1923:
# B1923
	mv x19, zero
trace_diffuse_ray_cont_b1926:
# B1926
	fsub x19, zero, x19
	add x4, x21, x20
	sw x19, 0(x4)
	j trace_diffuse_ray_cont_b1937 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1921:
# B1921
	bne x20, x17, trace_diffuse_ray_beqelse_b1928
# B1927
	lw x19, 4(x10)
	lw x19, 0(x19)
	fsub x19, zero, x19
	sw x19, 0(x21)
	lw x19, 4(x10)
	lw x19, 1(x19)
	fsub x19, zero, x19
	sw x19, 1(x21)
	lw x19, 4(x10)
	lw x19, 2(x19)
	fsub x19, zero, x19
	sw x19, 2(x21)
	j trace_diffuse_ray_cont_b1937 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1928:
# B1928
	lw x19, 0(x24)
	lw x20, 5(x10)
	lw x20, 0(x20)
	fsub x19, x19, x20
	lw x20, 1(x24)
	lw x25, 5(x10)
	lw x25, 1(x25)
	fsub x20, x20, x25
	lw x25, 2(x24)
	lw x26, 5(x10)
	lw x26, 2(x26)
	fsub x25, x25, x26
	lw x26, 4(x10)
	lw x26, 0(x26)
	fmul x26, x19, x26
	lw x29, 4(x10)
	lw x29, 1(x29)
	fmul x29, x20, x29
	lw x30, 4(x10)
	lw x30, 2(x30)
	fmul x30, x25, x30
	lw x31, 3(x10)
	bne x31, zero, trace_diffuse_ray_beqelse_b1930
# B1929
	sw x26, 0(x21)
	sw x29, 1(x21)
	sw x30, 2(x21)
	j trace_diffuse_ray_cont_b1931 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1930:
# B1930
	lw x31, 9(x10)
	lw x31, 2(x31)
	fmul x31, x20, x31
	lw x32, 9(x10)
	lw x32, 1(x32)
	fmul x32, x25, x32
	fadd x31, x31, x32
	fmul x31, x31, x22
	fadd x26, x26, x31
	sw x26, 0(x21)
	lw x26, 9(x10)
	lw x26, 2(x26)
	fmul x26, x19, x26
	lw x31, 9(x10)
	lw x31, 0(x31)
	fmul x25, x25, x31
	fadd x25, x26, x25
	fmul x25, x25, x22
	fadd x25, x29, x25
	sw x25, 1(x21)
	lw x25, 9(x10)
	lw x25, 1(x25)
	fmul x19, x19, x25
	lw x25, 9(x10)
	lw x25, 0(x25)
	fmul x20, x20, x25
	fadd x19, x19, x20
	fmul x19, x19, x22
	fadd x19, x30, x19
	sw x19, 2(x21)
trace_diffuse_ray_cont_b1931:
# B1931
	lw x19, 6(x10)
	lw x20, 0(x21)
	fmul x25, x20, x20
	lw x26, 1(x21)
	fmul x29, x26, x26
	fadd x25, x25, x29
	lw x29, 2(x21)
	fmul x30, x29, x29
	fadd x25, x25, x30
	fsqrt x25, x25
	bfeq x25, zero, trace_diffuse_ray_bfneqelse_b1933
# B1932
	bne x19, zero, trace_diffuse_ray_beqelse_b1935
# B1934
	fdiv x19, x28, x25
	j trace_diffuse_ray_cont_b1936 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1935:
# B1935
	lui x19, 784384
	fdiv x19, x19, x25
	j trace_diffuse_ray_cont_b1936 # adhoc jump(2)
trace_diffuse_ray_bfneqelse_b1933:
# B1933
	mv x19, x28
trace_diffuse_ray_cont_b1936:
# B1936
	fmul x20, x20, x19
	sw x20, 0(x21)
	fmul x20, x26, x19
	sw x20, 1(x21)
	fmul x19, x29, x19
	sw x19, 2(x21)
trace_diffuse_ray_cont_b1937:
# B1937
	lw x19, 0(x10)
	la x20, min_caml_texture_color
	lw x25, 8(x10)
	lw x25, 0(x25)
	sw x25, 0(x20)
	lw x25, 8(x10)
	lw x25, 1(x25)
	sw x25, 1(x20)
	lw x25, 8(x10)
	lw x25, 2(x25)
	sw x25, 2(x20)
	lui x25, 266752
	bne x19, x11, trace_diffuse_ray_beqelse_b1939
# B1938
	lw x19, 0(x24)
	lw x22, 5(x10)
	lw x22, 0(x22)
	fsub x19, x19, x22
	lui x22, 251085
	addi x22, x22, -819
	fmul x26, x19, x22
	floor x26, x26
	lui x29, 268800
	fmul x26, x26, x29
	fsub x19, x19, x26
	fle x19, x25, x19
	xori x19, x19, 1
	lw x26, 2(x24)
	lw x30, 5(x10)
	lw x30, 2(x30)
	fsub x26, x26, x30
	fmul x22, x26, x22
	floor x22, x22
	fmul x22, x22, x29
	fsub x22, x26, x22
	fle x22, x25, x22
	xori x22, x22, 1
	bne x19, zero, trace_diffuse_ray_beqelse_b1941
# B1940
	bne x22, zero, trace_diffuse_ray_beqelse_b1943
# B1942
	lui x19, 276464
	j trace_diffuse_ray_cont_b1946 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1943:
# B1943
	mv x19, zero
	j trace_diffuse_ray_cont_b1946 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1941:
# B1941
	bne x22, zero, trace_diffuse_ray_beqelse_b1945
# B1944
	mv x19, zero
	j trace_diffuse_ray_cont_b1946 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1945:
# B1945
	lui x19, 276464
trace_diffuse_ray_cont_b1946:
# B1946
	sw x19, 1(x20)
	j trace_diffuse_ray_cont_b2022 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1939:
# B1939
	lui x26, 265361
	addi x26, x26, -37
	lui x29, 262144
	lui x30, 263313
	addi x30, x30, -37
	lui x31, 261265
	addi x31, x31, -37
	lui x32, 259217
	addi x32, x32, -37
	lui x33, 778923
	addi x33, x33, -1364
	lui x34, 245896
	addi x34, x34, 1638
	lui x35, 758998
	addi x35, x35, 1206
	lui x36, 782336
	lui x37, 250538
	addi x37, x37, 1929
	lui x38, 764728
	addi x38, x38, 262
	lui x39, 276464
	bne x19, x17, trace_diffuse_ray_beqelse_b1948
# B1947
	lw x19, 1(x24)
	lui x22, 256000
	fmul x19, x19, x22
	fle x22, x19, zero
	xori x22, x22, 1
	fabs x19, x19
	mv x40, x26
	mv x25, x19
trace_diffuse_ray_loop_b1949:
# B1949
	bfle x25, x40, trace_diffuse_ray_bfgtelse_b1952
# B1950
	fmul x40, x40, x29
	j trace_diffuse_ray_loop_b1949 # loopback to while entry from B1950
trace_diffuse_ray_bfgtelse_b1952:
# B1952
	mv x6, x40
	mv x5, x19
	j	trace_diffuse_ray_loop_b1953 # jumping over moved block
trace_diffuse_ray_bfgtelse_b1957:	#moved
# B1957
	mv x6, x19
trace_diffuse_ray_loop_b1953:
# B1953
	bfle x26, x5, trace_diffuse_ray_bfgtelse_b1955
# B1958
	fle x19, x30, x5
	bne x19, zero, trace_diffuse_ray_beqelse_b1960
# B1959
	mv x25, x5
	j trace_diffuse_ray_cont_b1961 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1960:
# B1960
	fsub x25, x5, x30
trace_diffuse_ray_cont_b1961:
# B1961
	xor x19, x19, x22
	bfle x31, x25, trace_diffuse_ray_bfgtelse_b1963
# B1962
	mv x22, x25
	j trace_diffuse_ray_cont_b1964 # adhoc jump(2)
trace_diffuse_ray_bfgtelse_b1963:
# B1963
	fsub x22, x30, x25
trace_diffuse_ray_cont_b1964:
# B1964
	bfle x32, x22, trace_diffuse_ray_bfgtelse_b1966
# B1965
	fmul x25, x22, x22
	fmul x26, x25, x35
	fadd x26, x34, x26
	fmul x26, x25, x26
	fadd x26, x33, x26
	fmul x25, x25, x26
	fadd x25, x28, x25
	fmul x22, x22, x25
	j trace_diffuse_ray_cont_b1967 # adhoc jump(2)
trace_diffuse_ray_bfgtelse_b1966:
# B1966
	fsub x22, x31, x22
	fmul x22, x22, x22
	fmul x25, x22, x38
	fadd x25, x37, x25
	fmul x25, x22, x25
	fadd x25, x36, x25
	fmul x22, x22, x25
	fadd x22, x28, x22
trace_diffuse_ray_cont_b1967:
# B1967
	fle x25, x22, zero
	beq x19, x25, trace_diffuse_ray_bneelse_b1969
# B1968
	mv x19, x22
	j trace_diffuse_ray_cont_b1970 # adhoc jump(2)
trace_diffuse_ray_bneelse_b1969:
# B1969
	fsub x19, zero, x22
trace_diffuse_ray_cont_b1970:
# B1970
	fmul x19, x19, x19
	fmul x22, x39, x19
	sw x22, 0(x20)
	fsub x19, x28, x19
	fmul x19, x39, x19
	sw x19, 1(x20)
	j trace_diffuse_ray_cont_b2022 # adhoc jump(2)
trace_diffuse_ray_bfgtelse_b1955:
# B1955
	fdiv x19, x6, x29
	bfle x5, x6, trace_diffuse_ray_bfgtelse_b1957
# B1956
	fsub x5, x5, x6
	mv x6, x19
	j trace_diffuse_ray_loop_b1953 # loopback to while entry from B1956
trace_diffuse_ray_beqelse_b1948:
# B1948
	lui x40, 263313
	addi x40, x40, -37
	bne x19, x27, trace_diffuse_ray_beqelse_b1972
# B1971
	lw x19, 0(x24)
	lw x22, 5(x10)
	lw x22, 0(x22)
	fsub x19, x19, x22
	lw x22, 2(x24)
	lw x5, 5(x10)
	lw x5, 2(x5)
	fsub x22, x22, x5
	fmul x19, x19, x19
	fmul x22, x22, x22
	fadd x19, x19, x22
	fsqrt x19, x19
	fdiv x19, x19, x25
	floor x22, x19
	fsub x19, x19, x22
	fmul x19, x19, x40
	fabs x19, x19
	mv x25, x26
	mv x22, x19
trace_diffuse_ray_loop_b1973:
# B1973
	bfle x22, x25, trace_diffuse_ray_bfgtelse_b1976
# B1974
	fmul x25, x25, x29
	j trace_diffuse_ray_loop_b1973 # loopback to while entry from B1974
trace_diffuse_ray_bfgtelse_b1976:
# B1976
	mv x40, x19
	mv x5, x25
	j	trace_diffuse_ray_loop_b1977 # jumping over moved block
trace_diffuse_ray_bfgtelse_b1981:	#moved
# B1981
	mv x5, x19
trace_diffuse_ray_loop_b1977:
# B1977
	bfle x26, x40, trace_diffuse_ray_bfgtelse_b1979
# B1982
	fle x19, x30, x40
	bne x19, zero, trace_diffuse_ray_beqelse_b1984
# B1983
	mv x22, x40
	j trace_diffuse_ray_cont_b1985 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1984:
# B1984
	fsub x22, x40, x30
trace_diffuse_ray_cont_b1985:
# B1985
	xori x19, x19, 1
	fle x25, x31, x22
	bne x25, zero, trace_diffuse_ray_beqelse_b1987
	j trace_diffuse_ray_cont_b1988 # adhoc jump(3)
trace_diffuse_ray_beqelse_b1987:
# B1987
	fsub x22, x30, x22
trace_diffuse_ray_cont_b1988:
# B1988
	xor x19, x25, x19
	bfle x32, x22, trace_diffuse_ray_bfgtelse_b1990
trace_diffuse_ray_cont_b1989:
# B1989
	fmul x22, x22, x22
	fmul x25, x22, x38
	fadd x25, x37, x25
	fmul x25, x22, x25
	fadd x25, x36, x25
	fmul x22, x22, x25
	fadd x22, x28, x22
	j trace_diffuse_ray_cont_b1991 # adhoc jump(2)
trace_diffuse_ray_bfgtelse_b1990:
# B1990
	fsub x22, x31, x22
	fmul x25, x22, x22
	fmul x26, x25, x35
	fadd x26, x34, x26
	fmul x26, x25, x26
	fadd x26, x33, x26
	fmul x25, x25, x26
	fadd x25, x28, x25
	fmul x22, x22, x25
trace_diffuse_ray_cont_b1991:
# B1991
	fle x25, x22, zero
	beq x19, x25, trace_diffuse_ray_bneelse_b1993
# B1992
	mv x19, x22
	j trace_diffuse_ray_cont_b1994 # adhoc jump(2)
trace_diffuse_ray_bneelse_b1993:
# B1993
	fsub x19, zero, x22
trace_diffuse_ray_cont_b1994:
# B1994
	fmul x19, x19, x19
	fmul x22, x19, x39
	sw x22, 1(x20)
	fsub x19, x28, x19
	fmul x19, x19, x39
	sw x19, 2(x20)
	j trace_diffuse_ray_cont_b2022 # adhoc jump(2)
trace_diffuse_ray_bfgtelse_b1979:
# B1979
	fdiv x19, x5, x29
	bfle x40, x5, trace_diffuse_ray_bfgtelse_b1981
# B1980
	fsub x40, x40, x5
	mv x5, x19
	j trace_diffuse_ray_loop_b1977 # loopback to while entry from B1980
trace_diffuse_ray_beqelse_b1972:
# B1972
	li x25, 4
	bne x19, x25, trace_diffuse_ray_beqelse_b2022
# B1995
	lw x19, 0(x24)
	lw x25, 5(x10)
	lw x25, 0(x25)
	fsub x19, x19, x25
	lw x25, 4(x10)
	lw x25, 0(x25)
	fsqrt x25, x25
	fmul x19, x19, x25
	lw x25, 2(x24)
	lw x26, 5(x10)
	lw x26, 2(x26)
	fsub x25, x25, x26
	lw x26, 4(x10)
	lw x26, 2(x26)
	fsqrt x26, x26
	fmul x25, x25, x26
	fmul x26, x19, x19
	fmul x29, x25, x25
	fadd x26, x26, x29
	fabs x29, x19
	lui x30, 232731
	addi x30, x30, 1815
	fle x29, x30, x29
	lui x33, 257536
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
	lui x5, 251742
	addi x5, x5, 1989
	lui x6, 262592
	lui x66, 270080
	beq x29, zero, trace_diffuse_ray_bneelse_b1998
# B1997
	fdiv x19, x25, x19
	fabs x19, x19
	fle x25, x19, zero
	xori x25, x25, 1
	fabs x29, x19
	bfle x33, x29, trace_diffuse_ray_bfgtelse_b2000
# B1999
	fmul x25, x19, x19
	fmul x29, x25, x5
	fadd x29, x38, x29
	fmul x29, x25, x29
	fadd x29, x37, x29
	fmul x29, x25, x29
	fadd x29, x36, x29
	fmul x29, x25, x29
	fadd x29, x35, x29
	fmul x29, x25, x29
	fadd x29, x34, x29
	fmul x25, x25, x29
	fadd x25, x28, x25
	fmul x19, x19, x25
	j trace_diffuse_ray_cont_b2006 # adhoc jump(2)
trace_diffuse_ray_bfgtelse_b2000:
# B2000
	bfle x6, x29, trace_diffuse_ray_bfgtelse_b2002
# B2001
	fsub x19, x29, x28
	fadd x29, x29, x28
	fdiv x19, x19, x29
	fmul x29, x19, x19
	fmul x67, x29, x5
	fadd x67, x38, x67
	fmul x67, x29, x67
	fadd x67, x37, x67
	fmul x67, x29, x67
	fadd x67, x36, x67
	fmul x67, x29, x67
	fadd x67, x35, x67
	fmul x67, x29, x67
	fadd x67, x34, x67
	fmul x29, x29, x67
	fadd x29, x28, x29
	fmul x19, x19, x29
	fadd x19, x32, x19
	j trace_diffuse_ray_cont_b2003 # adhoc jump(2)
trace_diffuse_ray_bfgtelse_b2002:
# B2002
	fdiv x19, x28, x29
	fmul x29, x19, x19
	fmul x67, x29, x5
	fadd x67, x38, x67
	fmul x67, x29, x67
	fadd x67, x37, x67
	fmul x67, x29, x67
	fadd x67, x36, x67
	fmul x67, x29, x67
	fadd x67, x35, x67
	fmul x67, x29, x67
	fadd x67, x34, x67
	fmul x29, x29, x67
	fadd x29, x28, x29
	fmul x19, x19, x29
	fsub x19, x31, x19
trace_diffuse_ray_cont_b2003:
# B2003
	bne x25, zero, trace_diffuse_ray_beqelse_b2006
# B2004
	fsub x19, zero, x19
trace_diffuse_ray_beqelse_b2006:
trace_diffuse_ray_cont_b2006:
# B2006
	fmul x19, x19, x66
	fdiv x19, x19, x40
	j trace_diffuse_ray_cont_b2007 # adhoc jump(2)
trace_diffuse_ray_bneelse_b1998:
# B1998
	lui x19, 268032
trace_diffuse_ray_cont_b2007:
# B2007
	floor x25, x19
	fsub x19, x19, x25
	lw x25, 1(x24)
	lw x29, 5(x10)
	lw x29, 1(x29)
	fsub x25, x25, x29
	lw x29, 4(x10)
	lw x29, 1(x29)
	fsqrt x29, x29
	fmul x25, x25, x29
	fabs x29, x26
	bfle x30, x29, trace_diffuse_ray_bfgtelse_b2008
# B2009
	lui x25, 268032
	j trace_diffuse_ray_cont_b2018 # adhoc jump(2)
trace_diffuse_ray_bfgtelse_b2008:
# B2008
	fdiv x25, x25, x26
	fabs x25, x25
	fle x26, x25, zero
	xori x26, x26, 1
	fabs x29, x25
	bfle x33, x29, trace_diffuse_ray_bfgtelse_b2011
# B2010
	fmul x26, x25, x25
	fmul x29, x26, x5
	fadd x29, x38, x29
	fmul x29, x26, x29
	fadd x29, x37, x29
	fmul x29, x26, x29
	fadd x29, x36, x29
	fmul x29, x26, x29
	fadd x29, x35, x29
	fmul x29, x26, x29
	fadd x29, x34, x29
	fmul x26, x26, x29
	fadd x26, x28, x26
	fmul x25, x25, x26
	j trace_diffuse_ray_cont_b2017 # adhoc jump(2)
trace_diffuse_ray_bfgtelse_b2011:
# B2011
	bfle x6, x29, trace_diffuse_ray_bfgtelse_b2013
# B2012
	fsub x25, x29, x28
	fadd x29, x29, x28
	fdiv x25, x25, x29
	fmul x29, x25, x25
	fmul x30, x29, x5
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
	fadd x29, x28, x29
	fmul x25, x25, x29
	fadd x25, x32, x25
	j trace_diffuse_ray_cont_b2014 # adhoc jump(2)
trace_diffuse_ray_bfgtelse_b2013:
# B2013
	fdiv x25, x28, x29
	fmul x29, x25, x25
	fmul x30, x29, x5
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
	fadd x29, x28, x29
	fmul x25, x25, x29
	fsub x25, x31, x25
trace_diffuse_ray_cont_b2014:
# B2014
	bne x26, zero, trace_diffuse_ray_beqelse_b2017
# B2015
	fsub x25, zero, x25
trace_diffuse_ray_beqelse_b2017:
trace_diffuse_ray_cont_b2017:
# B2017
	fmul x25, x25, x66
	fdiv x25, x25, x40
trace_diffuse_ray_cont_b2018:
# B2018
	floor x26, x25
	fsub x25, x25, x26
	lui x26, 254362
	addi x26, x26, -1638
	fsub x19, x22, x19
	fmul x19, x19, x19
	fsub x19, x26, x19
	fsub x22, x22, x25
	fmul x22, x22, x22
	fsub x19, x19, x22
	bfle zero, x19, trace_diffuse_ray_bfgtelse_b2019
# B2020
	mv x22, zero
	j trace_diffuse_ray_cont_b2021 # adhoc jump(2)
trace_diffuse_ray_bfgtelse_b2019:
# B2019
	mv x22, x19
trace_diffuse_ray_cont_b2021:
# B2021
	fmul x19, x39, x22
	lui x22, 256410
	addi x22, x22, -1638
	fdiv x19, x19, x22
	sw x19, 2(x20)
trace_diffuse_ray_beqelse_b2022:
trace_diffuse_ray_cont_b2022:
# B2022
	la x19, min_caml_light_dirvec
	lui x22, 779469
	addi x22, x22, -819
	la x25, min_caml_light
	mv x26, zero
	mv x29, x100
trace_diffuse_ray_bneelse_b2023:
trace_diffuse_ray_loop_b2023:
# B2023
	lwr x100, x29, x26
	lw x30, 0(x100)
	beq x30, x14, trace_diffuse_ray_bneelse_b2249
# B2025
	bne x30, x12, trace_diffuse_ray_beqelse_b2027
# B2026
	mv x30, x11
	j trace_diffuse_ray_cont_b2159 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2027:
# B2027
	lwr x31, x16, x30
	lw x32, 0(x24)
	lw x33, 5(x31)
	lw x33, 0(x33)
	fsub x32, x32, x33
	lw x33, 1(x24)
	lw x34, 5(x31)
	lw x34, 1(x34)
	fsub x33, x33, x34
	lw x34, 2(x24)
	lw x35, 5(x31)
	lw x35, 2(x35)
	fsub x34, x34, x35
	lw x35, 1(x19)
	lwr x30, x35, x30
	lw x35, 1(x31)
	bne x35, x11, trace_diffuse_ray_beqelse_b2029
# B2028
	lw x35, 0(x19)
	lw x36, 0(x30)
	fsub x36, x36, x32
	lw x37, 1(x30)
	fmul x36, x36, x37
	lw x38, 1(x35)
	fmul x39, x36, x38
	fadd x39, x39, x33
	fabs x39, x39
	lw x40, 4(x31)
	lw x40, 1(x40)
	bfle x40, x39, trace_diffuse_ray_bfgtelse_b2035
# B2031
	lw x39, 2(x35)
	fmul x39, x36, x39
	fadd x39, x39, x34
	fabs x39, x39
	lw x5, 4(x31)
	lw x5, 2(x5)
	bfle x5, x39, trace_diffuse_ray_bfgtelse_b2035
# B2033
	feq x37, x37, zero
	xori x37, x37, 1
	mv x39, x37
# B2034
	bne x39, zero, trace_diffuse_ray_beqelse_b2036
trace_diffuse_ray_bfgtelse_b2035:
# B2035
	lw x36, 2(x30)
	fsub x36, x36, x33
	lw x37, 3(x30)
	fmul x36, x36, x37
	lw x39, 0(x35)
	fmul x5, x36, x39
	fadd x5, x5, x32
	fabs x5, x5
	lw x6, 4(x31)
	lw x6, 0(x6)
	bfle x6, x5, trace_diffuse_ray_bfgtelse_b2042
# B2038
	lw x35, 2(x35)
	fmul x35, x36, x35
	fadd x35, x35, x34
	fabs x35, x35
	lw x31, 4(x31)
	lw x31, 2(x31)
	bfle x31, x35, trace_diffuse_ray_bfgtelse_b2042
# B2040
	feq x31, x37, zero
	xori x31, x31, 1
	mv x35, x31
# B2041
	bne x35, zero, trace_diffuse_ray_beqelse_b2043
trace_diffuse_ray_bfgtelse_b2042:
# B2042
	lw x31, 4(x30)
	fsub x31, x31, x34
	lw x30, 5(x30)
	fmul x31, x31, x30
	fmul x34, x31, x39
	fadd x32, x34, x32
	fabs x32, x32
	bfle x6, x32, trace_diffuse_ray_bfgtelse_b2069
# B2045
	fmul x32, x31, x38
	fadd x32, x32, x33
	fabs x32, x32
	bfle x40, x32, trace_diffuse_ray_bfgtelse_b2069
# B2047
	feq x30, x30, zero
	xori x30, x30, 1
	mv x32, x30
# B2048
	bne x32, zero, trace_diffuse_ray_beqelse_b2050
	j trace_diffuse_ray_cont_b2069 # adhoc jump(3)
trace_diffuse_ray_beqelse_b2050:
# B2050
	sw x31, 0(x13)
	mv x30, x27
	j trace_diffuse_ray_cont_b2068 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2043:
# B2043
	sw x36, 0(x13)
	mv x30, x17
	j trace_diffuse_ray_cont_b2068 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2036:
# B2036
	sw x36, 0(x13)
	mv x30, x11
	j trace_diffuse_ray_cont_b2068 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2029:
# B2029
	bne x35, x17, trace_diffuse_ray_beqelse_b2052
# B2051
	lw x31, 0(x30)
	bfle zero, x31, trace_diffuse_ray_bfgtelse_b2069
# B2054
	lw x31, 1(x30)
	fmul x31, x31, x32
	lw x32, 2(x30)
	fmul x32, x32, x33
	fadd x31, x31, x32
	lw x30, 3(x30)
	fmul x30, x30, x34
	fadd x30, x31, x30
	sw x30, 0(x13)
	mv x30, x11
	j trace_diffuse_ray_cont_b2068 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2052:
# B2052
	lw x35, 0(x30)
	bfeq x35, zero, trace_diffuse_ray_bfneqelse_b2069
# B2055
	lw x36, 1(x30)
	fmul x36, x36, x32
	lw x37, 2(x30)
	fmul x37, x37, x33
	fadd x36, x36, x37
	lw x37, 3(x30)
	fmul x37, x37, x34
	fadd x36, x36, x37
	fmul x37, x32, x32
	lw x38, 4(x31)
	lw x38, 0(x38)
	fmul x37, x37, x38
	fmul x38, x33, x33
	lw x39, 4(x31)
	lw x39, 1(x39)
	fmul x38, x38, x39
	fadd x37, x37, x38
	fmul x38, x34, x34
	lw x39, 4(x31)
	lw x39, 2(x39)
	fmul x38, x38, x39
	fadd x37, x37, x38
	lw x38, 3(x31)
	bne x38, zero, trace_diffuse_ray_beqelse_b2058
# B2057
	mv x32, x37
	j trace_diffuse_ray_cont_b2059 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2058:
# B2058
	fmul x38, x33, x34
	lw x39, 9(x31)
	lw x39, 0(x39)
	fmul x38, x38, x39
	fadd x37, x37, x38
	fmul x34, x34, x32
	lw x38, 9(x31)
	lw x38, 1(x38)
	fmul x34, x34, x38
	fadd x34, x37, x34
	fmul x32, x32, x33
	lw x33, 9(x31)
	lw x33, 2(x33)
	fmul x32, x32, x33
	fadd x32, x34, x32
trace_diffuse_ray_cont_b2059:
# B2059
	lw x33, 1(x31)
	bne x33, x27, trace_diffuse_ray_beqelse_b2062
# B2060
	fsub x32, x32, x28
trace_diffuse_ray_beqelse_b2062:
# B2062
	fmul x33, x36, x36
	fmul x32, x35, x32
	fsub x32, x33, x32
	bfle x32, zero, trace_diffuse_ray_bfgtelse_b2069
# B2064
	lw x31, 6(x31)
	fsqrt x32, x32
	bne x31, zero, trace_diffuse_ray_beqelse_b2066
# B2065
	fsub x31, x36, x32
	lw x30, 4(x30)
	fmul x30, x31, x30
	sw x30, 0(x13)
	j trace_diffuse_ray_cont_b2067 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2066:
# B2066
	fadd x31, x36, x32
	lw x30, 4(x30)
	fmul x30, x31, x30
	sw x30, 0(x13)
trace_diffuse_ray_cont_b2067:
# B2067
	mv x30, x11
trace_diffuse_ray_cont_b2068:
# B2068
	bne x30, zero, trace_diffuse_ray_beqelse_b2070
trace_diffuse_ray_bfgtelse_b2069:
trace_diffuse_ray_bfneqelse_b2069:
trace_diffuse_ray_cont_b2069:
# B2069
	mv x30, zero
	j trace_diffuse_ray_cont_b2159 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2070:
# B2070
	lw x30, 0(x13)
	bfle x18, x30, trace_diffuse_ray_bfgtelse_b2071
# B2072
	mv x31, x11
	mv x32, x100
trace_diffuse_ray_loop_b2073:
# B2073
	lwr x30, x32, x31
	beq x30, x14, trace_diffuse_ray_bneelse_b2157
# B2075
	lwr x30, x15, x30
	mv x34, x30
	mv x33, zero
trace_diffuse_ray_beqelse_b2076:
trace_diffuse_ray_loop_b2076:
# B2076
	lwr x30, x34, x33
	beq x30, x14, trace_diffuse_ray_bneelse_b2154
# B2078
	lwr x30, x34, x33
	lwr x35, x16, x30
	lw x36, 0(x24)
	lw x37, 5(x35)
	lw x37, 0(x37)
	fsub x37, x36, x37
	lw x38, 1(x24)
	lw x39, 5(x35)
	lw x39, 1(x39)
	fsub x39, x38, x39
	lw x40, 2(x24)
	lw x5, 5(x35)
	lw x5, 2(x5)
	fsub x5, x40, x5
	lw x6, 1(x19)
	lwr x6, x6, x30
	lw x66, 1(x35)
	bne x66, x11, trace_diffuse_ray_beqelse_b2080
# B2079
	lw x66, 0(x19)
	lw x67, 0(x6)
	fsub x67, x67, x37
	lw x68, 1(x6)
	fmul x67, x67, x68
	lw x69, 1(x66)
	fmul x7, x67, x69
	fadd x7, x7, x39
	fabs x7, x7
	lw x70, 4(x35)
	lw x70, 1(x70)
	bfle x70, x7, trace_diffuse_ray_bfgtelse_b2086
# B2082
	lw x7, 2(x66)
	fmul x7, x67, x7
	fadd x7, x7, x5
	fabs x7, x7
	lw x71, 4(x35)
	lw x71, 2(x71)
	bfle x71, x7, trace_diffuse_ray_bfgtelse_b2086
# B2084
	feq x68, x68, zero
	xori x68, x68, 1
	mv x7, x68
# B2085
	bne x7, zero, trace_diffuse_ray_beqelse_b2087
trace_diffuse_ray_bfgtelse_b2086:
# B2086
	lw x67, 2(x6)
	fsub x67, x67, x39
	lw x68, 3(x6)
	fmul x67, x67, x68
	lw x7, 0(x66)
	fmul x71, x67, x7
	fadd x71, x71, x37
	fabs x71, x71
	lw x72, 4(x35)
	lw x72, 0(x72)
	bfle x72, x71, trace_diffuse_ray_bfgtelse_b2093
# B2089
	lw x66, 2(x66)
	fmul x66, x67, x66
	fadd x66, x66, x5
	fabs x66, x66
	lw x35, 4(x35)
	lw x35, 2(x35)
	bfle x35, x66, trace_diffuse_ray_bfgtelse_b2093
# B2091
	feq x35, x68, zero
	xori x35, x35, 1
	mv x66, x35
# B2092
	bne x66, zero, trace_diffuse_ray_beqelse_b2094
trace_diffuse_ray_bfgtelse_b2093:
# B2093
	lw x35, 4(x6)
	fsub x35, x35, x5
	lw x5, 5(x6)
	fmul x35, x35, x5
	fmul x6, x35, x7
	fadd x37, x6, x37
	fabs x37, x37
	bfle x72, x37, trace_diffuse_ray_bfgtelse_b2100
# B2096
	fmul x37, x35, x69
	fadd x37, x37, x39
	fabs x37, x37
	bfle x70, x37, trace_diffuse_ray_bfgtelse_b2100
# B2098
	feq x37, x5, zero
	xori x37, x37, 1
	mv x39, x37
# B2099
	bne x39, zero, trace_diffuse_ray_beqelse_b2101
trace_diffuse_ray_bfgtelse_b2100:
# B2100
	mv x35, zero
	j trace_diffuse_ray_cont_b2119 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2101:
# B2101
	sw x35, 0(x13)
	mv x35, x27
	j trace_diffuse_ray_cont_b2119 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2094:
# B2094
	sw x67, 0(x13)
	mv x35, x17
	j trace_diffuse_ray_cont_b2119 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2087:
# B2087
	sw x67, 0(x13)
	mv x35, x11
	j trace_diffuse_ray_cont_b2119 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2080:
# B2080
	bne x66, x17, trace_diffuse_ray_beqelse_b2103
# B2102
	lw x35, 0(x6)
	bfle zero, x35, trace_diffuse_ray_bfgtelse_b2104
# B2105
	lw x35, 1(x6)
	fmul x35, x35, x37
	lw x37, 2(x6)
	fmul x37, x37, x39
	fadd x35, x35, x37
	lw x37, 3(x6)
	fmul x37, x37, x5
	fadd x35, x35, x37
	sw x35, 0(x13)
	mv x35, x11
	j trace_diffuse_ray_cont_b2119 # adhoc jump(2)
trace_diffuse_ray_bfgtelse_b2104:
# B2104
	mv x35, zero
	j trace_diffuse_ray_cont_b2119 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2103:
# B2103
	lw x66, 0(x6)
	bfeq x66, zero, trace_diffuse_ray_bfneqelse_b2107
# B2106
	lw x67, 1(x6)
	fmul x67, x67, x37
	lw x68, 2(x6)
	fmul x68, x68, x39
	fadd x67, x67, x68
	lw x68, 3(x6)
	fmul x68, x68, x5
	fadd x67, x67, x68
	fmul x68, x37, x37
	lw x69, 4(x35)
	lw x69, 0(x69)
	fmul x68, x68, x69
	fmul x69, x39, x39
	lw x7, 4(x35)
	lw x7, 1(x7)
	fmul x69, x69, x7
	fadd x68, x68, x69
	fmul x69, x5, x5
	lw x7, 4(x35)
	lw x7, 2(x7)
	fmul x69, x69, x7
	fadd x68, x68, x69
	lw x69, 3(x35)
	bne x69, zero, trace_diffuse_ray_beqelse_b2109
# B2108
	mv x37, x68
	j trace_diffuse_ray_cont_b2110 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2109:
# B2109
	fmul x69, x39, x5
	lw x7, 9(x35)
	lw x7, 0(x7)
	fmul x69, x69, x7
	fadd x68, x68, x69
	fmul x5, x5, x37
	lw x69, 9(x35)
	lw x69, 1(x69)
	fmul x5, x5, x69
	fadd x5, x68, x5
	fmul x37, x37, x39
	lw x39, 9(x35)
	lw x39, 2(x39)
	fmul x37, x37, x39
	fadd x37, x5, x37
trace_diffuse_ray_cont_b2110:
# B2110
	lw x39, 1(x35)
	bne x39, x27, trace_diffuse_ray_beqelse_b2113
# B2111
	fsub x37, x37, x28
trace_diffuse_ray_beqelse_b2113:
# B2113
	fmul x39, x67, x67
	fmul x37, x66, x37
	fsub x37, x39, x37
	bfle x37, zero, trace_diffuse_ray_bfgtelse_b2114
# B2115
	lw x35, 6(x35)
	fsqrt x37, x37
	bne x35, zero, trace_diffuse_ray_beqelse_b2117
# B2116
	fsub x35, x67, x37
	lw x37, 4(x6)
	fmul x35, x35, x37
	sw x35, 0(x13)
	j trace_diffuse_ray_cont_b2118 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2117:
# B2117
	fadd x35, x67, x37
	lw x37, 4(x6)
	fmul x35, x35, x37
	sw x35, 0(x13)
trace_diffuse_ray_cont_b2118:
# B2118
	mv x35, x11
	j trace_diffuse_ray_cont_b2119 # adhoc jump(2)
trace_diffuse_ray_bfgtelse_b2114:
# B2114
	mv x35, zero
	j trace_diffuse_ray_cont_b2119 # adhoc jump(2)
trace_diffuse_ray_bfneqelse_b2107:
# B2107
	mv x35, zero
trace_diffuse_ray_cont_b2119:
# B2119
	lw x37, 0(x13)
	bne x35, zero, trace_diffuse_ray_beqelse_b2121
# B2120
	mv x35, zero
	j trace_diffuse_ray_cont_b2122 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2121:
# B2121
	fle x35, x22, x37
	xori x35, x35, 1
trace_diffuse_ray_cont_b2122:
# B2122
	addi x33, x33, 1
	bne x35, zero, trace_diffuse_ray_beqelse_b2124
# B2123
	lwr x30, x16, x30
	lw x30, 6(x30)
	beq x30, zero, trace_diffuse_ray_bneelse_b2154
	j	trace_diffuse_ray_beqelse_b2076 # moved need extra jump for 2076 at B2123
trace_diffuse_ray_beqelse_b2124:
# B2124
	fadd x30, x37, x23
	lw x35, 0(x25)
	fmul x35, x35, x30
	fadd x35, x35, x36
	lw x36, 1(x25)
	fmul x36, x36, x30
	fadd x36, x36, x38
	lw x37, 2(x25)
	fmul x30, x37, x30
	fadd x30, x30, x40
	mv x37, zero
	mv x40, x36
	mv x39, x35
	mv x38, x34
	mv x5, x30
	j	trace_diffuse_ray_loop_b2127 # jumping over moved block
trace_diffuse_ray_bneelse_b2148:	#moved
# B2148
	addi x37, x37, 1
trace_diffuse_ray_loop_b2127:
# B2127
	lwr x30, x38, x37
	bne x30, x14, trace_diffuse_ray_beqelse_b2129
# B2128
	mv x35, x11
# B2150
	bne x35, zero, trace_diffuse_ray_beqelse_b2152
	j	trace_diffuse_ray_beqelse_b2076 # moved need extra jump for 2076 at B2150
trace_diffuse_ray_beqelse_b2152:
# B2152
	mv x30, x11
trace_diffuse_ray_cont_b2153:
# B2153
	bne x30, zero, trace_diffuse_ray_beqelse_b2155
trace_diffuse_ray_bneelse_b2154:
trace_diffuse_ray_cont_b2154:
# B2154
	addi x31, x31, 1
	j trace_diffuse_ray_loop_b2073 # loopback to while entry from B2154
trace_diffuse_ray_beqelse_b2155:
# B2155
	mv x33, x11
# B2156
	bne x33, zero, trace_diffuse_ray_beqelse_b2158
trace_diffuse_ray_bneelse_b2157:
# B2157
	mv x30, zero
	j trace_diffuse_ray_cont_b2159 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2158:
# B2158
	mv x30, x11
	j trace_diffuse_ray_cont_b2159 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2129:
# B2129
	lwr x30, x16, x30
	lw x35, 5(x30)
	lw x35, 0(x35)
	fsub x35, x39, x35
	lw x36, 5(x30)
	lw x36, 1(x36)
	fsub x36, x40, x36
	lw x6, 5(x30)
	lw x6, 2(x6)
	fsub x6, x5, x6
	lw x66, 1(x30)
	bne x66, x11, trace_diffuse_ray_beqelse_b2131
# B2130
	fabs x35, x35
	lw x66, 4(x30)
	lw x66, 0(x66)
	bfle x66, x35, trace_diffuse_ray_bfgtelse_b2137
# B2133
	fabs x35, x36
	lw x36, 4(x30)
	lw x36, 1(x36)
	bfle x36, x35, trace_diffuse_ray_bfgtelse_b2137
# B2135
	fabs x35, x6
	lw x36, 4(x30)
	lw x36, 2(x36)
	fle x35, x36, x35
	xori x35, x35, 1
	mv x36, x35
# B2136
	bne x36, zero, trace_diffuse_ray_beqelse_b2138
trace_diffuse_ray_bfgtelse_b2137:
# B2137
	lw x30, 6(x30)
	xori x30, x30, 1
	j trace_diffuse_ray_cont_b2147 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2138:
# B2138
	lw x30, 6(x30)
	j trace_diffuse_ray_cont_b2147 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2131:
# B2131
	bne x66, x17, trace_diffuse_ray_beqelse_b2140
# B2139
	lw x66, 4(x30)
	lw x67, 0(x66)
	fmul x35, x67, x35
	lw x67, 1(x66)
	fmul x36, x67, x36
	fadd x35, x35, x36
	lw x36, 2(x66)
	fmul x36, x36, x6
	fadd x35, x35, x36
	lw x30, 6(x30)
	fle x35, zero, x35
	xori x35, x35, 1
	xor x30, x30, x35
	xori x30, x30, 1
	j trace_diffuse_ray_cont_b2147 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2140:
# B2140
	fmul x66, x35, x35
	lw x67, 4(x30)
	lw x67, 0(x67)
	fmul x66, x66, x67
	fmul x67, x36, x36
	lw x68, 4(x30)
	lw x68, 1(x68)
	fmul x67, x67, x68
	fadd x66, x66, x67
	fmul x67, x6, x6
	lw x68, 4(x30)
	lw x68, 2(x68)
	fmul x67, x67, x68
	fadd x66, x66, x67
	lw x67, 3(x30)
	bne x67, zero, trace_diffuse_ray_beqelse_b2142
# B2141
	mv x35, x66
	j trace_diffuse_ray_cont_b2143 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2142:
# B2142
	fmul x67, x36, x6
	lw x68, 9(x30)
	lw x68, 0(x68)
	fmul x67, x67, x68
	fadd x66, x66, x67
	fmul x6, x6, x35
	lw x67, 9(x30)
	lw x67, 1(x67)
	fmul x6, x6, x67
	fadd x6, x66, x6
	fmul x35, x35, x36
	lw x36, 9(x30)
	lw x36, 2(x36)
	fmul x35, x35, x36
	fadd x35, x6, x35
trace_diffuse_ray_cont_b2143:
# B2143
	lw x36, 1(x30)
	bne x36, x27, trace_diffuse_ray_beqelse_b2146
# B2144
	fsub x35, x35, x28
trace_diffuse_ray_beqelse_b2146:
# B2146
	lw x30, 6(x30)
	fle x35, zero, x35
	xori x35, x35, 1
	xor x30, x30, x35
	xori x30, x30, 1
trace_diffuse_ray_cont_b2147:
# B2147
	beq x30, zero, trace_diffuse_ray_bneelse_b2148
	j	trace_diffuse_ray_beqelse_b2076 # moved need extra jump for 2076 at B2147
trace_diffuse_ray_bfgtelse_b2071:
# B2071
	mv x30, zero
trace_diffuse_ray_cont_b2159:
# B2159
	addi x26, x26, 1
	bne x30, zero, trace_diffuse_ray_beqelse_b2161
	j	trace_diffuse_ray_bneelse_b2023 # moved need extra jump for 2023 at B2159
trace_diffuse_ray_beqelse_b2161:
# B2161
	mv x31, x11
	mv x32, x100
trace_diffuse_ray_cont_b2162:
trace_diffuse_ray_loop_b2162:
# B2162
	lwr x100, x32, x31
	beq x100, x14, trace_diffuse_ray_bneelse_b2023
# B2164
	lwr x100, x15, x100
	mv x33, x100
	mv x30, zero
trace_diffuse_ray_beqelse_b2165:
trace_diffuse_ray_loop_b2165:
# B2165
	lwr x100, x33, x30
	beq x100, x14, trace_diffuse_ray_bneelse_b2243
# B2167
	lwr x100, x33, x30
	lwr x34, x16, x100
	lw x35, 0(x24)
	lw x36, 5(x34)
	lw x36, 0(x36)
	fsub x36, x35, x36
	lw x37, 1(x24)
	lw x38, 5(x34)
	lw x38, 1(x38)
	fsub x38, x37, x38
	lw x39, 2(x24)
	lw x40, 5(x34)
	lw x40, 2(x40)
	fsub x40, x39, x40
	lw x5, 1(x19)
	lwr x5, x5, x100
	lw x6, 1(x34)
	bne x6, x11, trace_diffuse_ray_beqelse_b2169
# B2168
	lw x6, 0(x19)
	lw x66, 0(x5)
	fsub x66, x66, x36
	lw x67, 1(x5)
	fmul x66, x66, x67
	lw x68, 1(x6)
	fmul x69, x66, x68
	fadd x69, x69, x38
	fabs x69, x69
	lw x7, 4(x34)
	lw x7, 1(x7)
	bfle x7, x69, trace_diffuse_ray_bfgtelse_b2175
# B2171
	lw x69, 2(x6)
	fmul x69, x66, x69
	fadd x69, x69, x40
	fabs x69, x69
	lw x70, 4(x34)
	lw x70, 2(x70)
	bfle x70, x69, trace_diffuse_ray_bfgtelse_b2175
# B2173
	feq x67, x67, zero
	xori x67, x67, 1
	mv x69, x67
# B2174
	bne x69, zero, trace_diffuse_ray_beqelse_b2176
trace_diffuse_ray_bfgtelse_b2175:
# B2175
	lw x66, 2(x5)
	fsub x66, x66, x38
	lw x67, 3(x5)
	fmul x66, x66, x67
	lw x69, 0(x6)
	fmul x70, x66, x69
	fadd x70, x70, x36
	fabs x70, x70
	lw x71, 4(x34)
	lw x71, 0(x71)
	bfle x71, x70, trace_diffuse_ray_bfgtelse_b2182
# B2178
	lw x6, 2(x6)
	fmul x6, x66, x6
	fadd x6, x6, x40
	fabs x6, x6
	lw x34, 4(x34)
	lw x34, 2(x34)
	bfle x34, x6, trace_diffuse_ray_bfgtelse_b2182
# B2180
	feq x34, x67, zero
	xori x34, x34, 1
	mv x6, x34
# B2181
	bne x6, zero, trace_diffuse_ray_beqelse_b2183
trace_diffuse_ray_bfgtelse_b2182:
# B2182
	lw x34, 4(x5)
	fsub x34, x34, x40
	lw x40, 5(x5)
	fmul x34, x34, x40
	fmul x5, x34, x69
	fadd x36, x5, x36
	fabs x36, x36
	bfle x71, x36, trace_diffuse_ray_bfgtelse_b2189
# B2185
	fmul x36, x34, x68
	fadd x36, x36, x38
	fabs x36, x36
	bfle x7, x36, trace_diffuse_ray_bfgtelse_b2189
# B2187
	feq x36, x40, zero
	xori x36, x36, 1
	mv x38, x36
# B2188
	bne x38, zero, trace_diffuse_ray_beqelse_b2190
trace_diffuse_ray_bfgtelse_b2189:
# B2189
	mv x34, zero
	j trace_diffuse_ray_cont_b2208 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2190:
# B2190
	sw x34, 0(x13)
	mv x34, x27
	j trace_diffuse_ray_cont_b2208 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2183:
# B2183
	sw x66, 0(x13)
	mv x34, x17
	j trace_diffuse_ray_cont_b2208 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2176:
# B2176
	sw x66, 0(x13)
	mv x34, x11
	j trace_diffuse_ray_cont_b2208 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2169:
# B2169
	bne x6, x17, trace_diffuse_ray_beqelse_b2192
# B2191
	lw x34, 0(x5)
	bfle zero, x34, trace_diffuse_ray_bfgtelse_b2193
# B2194
	lw x34, 1(x5)
	fmul x34, x34, x36
	lw x36, 2(x5)
	fmul x36, x36, x38
	fadd x34, x34, x36
	lw x36, 3(x5)
	fmul x36, x36, x40
	fadd x34, x34, x36
	sw x34, 0(x13)
	mv x34, x11
	j trace_diffuse_ray_cont_b2208 # adhoc jump(2)
trace_diffuse_ray_bfgtelse_b2193:
# B2193
	mv x34, zero
	j trace_diffuse_ray_cont_b2208 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2192:
# B2192
	lw x6, 0(x5)
	bfeq x6, zero, trace_diffuse_ray_bfneqelse_b2196
# B2195
	lw x66, 1(x5)
	fmul x66, x66, x36
	lw x67, 2(x5)
	fmul x67, x67, x38
	fadd x66, x66, x67
	lw x67, 3(x5)
	fmul x67, x67, x40
	fadd x66, x66, x67
	fmul x67, x36, x36
	lw x68, 4(x34)
	lw x68, 0(x68)
	fmul x67, x67, x68
	fmul x68, x38, x38
	lw x69, 4(x34)
	lw x69, 1(x69)
	fmul x68, x68, x69
	fadd x67, x67, x68
	fmul x68, x40, x40
	lw x69, 4(x34)
	lw x69, 2(x69)
	fmul x68, x68, x69
	fadd x67, x67, x68
	lw x68, 3(x34)
	bne x68, zero, trace_diffuse_ray_beqelse_b2198
# B2197
	mv x36, x67
	j trace_diffuse_ray_cont_b2199 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2198:
# B2198
	fmul x68, x38, x40
	lw x69, 9(x34)
	lw x69, 0(x69)
	fmul x68, x68, x69
	fadd x67, x67, x68
	fmul x40, x40, x36
	lw x68, 9(x34)
	lw x68, 1(x68)
	fmul x40, x40, x68
	fadd x40, x67, x40
	fmul x36, x36, x38
	lw x38, 9(x34)
	lw x38, 2(x38)
	fmul x36, x36, x38
	fadd x36, x40, x36
trace_diffuse_ray_cont_b2199:
# B2199
	lw x38, 1(x34)
	bne x38, x27, trace_diffuse_ray_beqelse_b2202
# B2200
	fsub x36, x36, x28
trace_diffuse_ray_beqelse_b2202:
# B2202
	fmul x38, x66, x66
	fmul x36, x6, x36
	fsub x36, x38, x36
	bfle x36, zero, trace_diffuse_ray_bfgtelse_b2203
# B2204
	lw x34, 6(x34)
	fsqrt x36, x36
	bne x34, zero, trace_diffuse_ray_beqelse_b2206
# B2205
	fsub x34, x66, x36
	lw x36, 4(x5)
	fmul x34, x34, x36
	sw x34, 0(x13)
	j trace_diffuse_ray_cont_b2207 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2206:
# B2206
	fadd x34, x66, x36
	lw x36, 4(x5)
	fmul x34, x34, x36
	sw x34, 0(x13)
trace_diffuse_ray_cont_b2207:
# B2207
	mv x34, x11
	j trace_diffuse_ray_cont_b2208 # adhoc jump(2)
trace_diffuse_ray_bfgtelse_b2203:
# B2203
	mv x34, zero
	j trace_diffuse_ray_cont_b2208 # adhoc jump(2)
trace_diffuse_ray_bfneqelse_b2196:
# B2196
	mv x34, zero
trace_diffuse_ray_cont_b2208:
# B2208
	lw x36, 0(x13)
	bne x34, zero, trace_diffuse_ray_beqelse_b2210
# B2209
	mv x34, zero
	j trace_diffuse_ray_cont_b2211 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2210:
# B2210
	fle x34, x22, x36
	xori x34, x34, 1
trace_diffuse_ray_cont_b2211:
# B2211
	addi x30, x30, 1
	bne x34, zero, trace_diffuse_ray_beqelse_b2213
# B2212
	lwr x100, x16, x100
	lw x100, 6(x100)
	beq x100, zero, trace_diffuse_ray_bneelse_b2243
	j	trace_diffuse_ray_beqelse_b2165 # moved need extra jump for 2165 at B2212
trace_diffuse_ray_beqelse_b2213:
# B2213
	fadd x100, x36, x23
	lw x34, 0(x25)
	fmul x34, x34, x100
	fadd x34, x34, x35
	lw x35, 1(x25)
	fmul x35, x35, x100
	fadd x35, x35, x37
	lw x36, 2(x25)
	fmul x100, x36, x100
	fadd x100, x100, x39
	mv x37, x33
	mv x40, x100
	mv x39, x35
	mv x38, x34
	mv x36, zero
	j	trace_diffuse_ray_loop_b2216 # jumping over moved block
trace_diffuse_ray_bneelse_b2237:	#moved
# B2237
	addi x36, x36, 1
trace_diffuse_ray_loop_b2216:
# B2216
	lwr x100, x37, x36
	bne x100, x14, trace_diffuse_ray_beqelse_b2218
# B2217
	mv x34, x11
# B2239
	bne x34, zero, trace_diffuse_ray_beqelse_b2241
	j	trace_diffuse_ray_beqelse_b2165 # moved need extra jump for 2165 at B2239
trace_diffuse_ray_beqelse_b2241:
# B2241
	mv x100, x11
trace_diffuse_ray_cont_b2242:
# B2242
	bne x100, zero, trace_diffuse_ray_beqelse_b2244
trace_diffuse_ray_bneelse_b2243:
trace_diffuse_ray_cont_b2243:
# B2243
	addi x31, x31, 1
	j trace_diffuse_ray_loop_b2162 # loopback to while entry from B2243
trace_diffuse_ray_beqelse_b2244:
# B2244
	mv x30, x11
# B2245
	bne x30, zero, trace_diffuse_ray_beqelse_b2247
	j	trace_diffuse_ray_bneelse_b2023 # moved need extra jump for 2023 at B2245
trace_diffuse_ray_beqelse_b2247:
# B2247
	mv x100, x11
trace_diffuse_ray_cont_b2248:
# B2248
	bne x100, zero, trace_diffuse_ray_beqelse_b2250
trace_diffuse_ray_bneelse_b2249:
# B2249
	lw x100, 0(x21)
	lw x11, 0(x25)
	fmul x100, x100, x11
	lw x11, 1(x21)
	lw x12, 1(x25)
	fmul x11, x11, x12
	fadd x100, x100, x11
	lw x11, 2(x21)
	lw x12, 2(x25)
	fmul x11, x11, x12
	fadd x100, x100, x11
	fsub x100, zero, x100
	bfle x100, zero, trace_diffuse_ray_bfgtelse_b2251
# B2252
	mv x11, x100
	j trace_diffuse_ray_cont_b2253 # adhoc jump(2)
trace_diffuse_ray_bfgtelse_b2251:
# B2251
	mv x11, zero
trace_diffuse_ray_cont_b2253:
# B2253
	la x100, min_caml_diffuse_ray
	fmul x11, x65, x11
	lw x10, 7(x10)
	lw x10, 0(x10)
	fmul x10, x11, x10
	lw x11, 0(x100)
	lw x12, 0(x20)
	fmul x12, x10, x12
	fadd x11, x11, x12
	sw x11, 0(x100)
	lw x11, 1(x100)
	lw x12, 1(x20)
	fmul x12, x10, x12
	fadd x11, x11, x12
	sw x11, 1(x100)
	lw x11, 2(x100)
	lw x12, 2(x20)
	fmul x10, x10, x12
	fadd x10, x11, x10
	sw x10, 2(x100)
	ret
trace_diffuse_ray_beqelse_b2250:
# B2250
	ret
trace_diffuse_ray_beqelse_b2218:
# B2218
	lwr x100, x16, x100
	lw x34, 5(x100)
	lw x34, 0(x34)
	fsub x34, x38, x34
	lw x35, 5(x100)
	lw x35, 1(x35)
	fsub x35, x39, x35
	lw x5, 5(x100)
	lw x5, 2(x5)
	fsub x5, x40, x5
	lw x6, 1(x100)
	bne x6, x11, trace_diffuse_ray_beqelse_b2220
# B2219
	fabs x34, x34
	lw x6, 4(x100)
	lw x6, 0(x6)
	bfle x6, x34, trace_diffuse_ray_bfgtelse_b2226
# B2222
	fabs x34, x35
	lw x35, 4(x100)
	lw x35, 1(x35)
	bfle x35, x34, trace_diffuse_ray_bfgtelse_b2226
# B2224
	fabs x34, x5
	lw x35, 4(x100)
	lw x35, 2(x35)
	fle x34, x35, x34
	xori x34, x34, 1
	mv x35, x34
# B2225
	bne x35, zero, trace_diffuse_ray_beqelse_b2227
trace_diffuse_ray_bfgtelse_b2226:
# B2226
	lw x100, 6(x100)
	xori x100, x100, 1
	j trace_diffuse_ray_cont_b2236 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2227:
# B2227
	lw x100, 6(x100)
	j trace_diffuse_ray_cont_b2236 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2220:
# B2220
	bne x6, x17, trace_diffuse_ray_beqelse_b2229
# B2228
	lw x6, 4(x100)
	lw x66, 0(x6)
	fmul x34, x66, x34
	lw x66, 1(x6)
	fmul x35, x66, x35
	fadd x34, x34, x35
	lw x35, 2(x6)
	fmul x35, x35, x5
	fadd x34, x34, x35
	lw x100, 6(x100)
	fle x34, zero, x34
	xori x34, x34, 1
	xor x100, x100, x34
	xori x100, x100, 1
	j trace_diffuse_ray_cont_b2236 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2229:
# B2229
	fmul x6, x34, x34
	lw x66, 4(x100)
	lw x66, 0(x66)
	fmul x6, x6, x66
	fmul x66, x35, x35
	lw x67, 4(x100)
	lw x67, 1(x67)
	fmul x66, x66, x67
	fadd x6, x6, x66
	fmul x66, x5, x5
	lw x67, 4(x100)
	lw x67, 2(x67)
	fmul x66, x66, x67
	fadd x6, x6, x66
	lw x66, 3(x100)
	bne x66, zero, trace_diffuse_ray_beqelse_b2231
# B2230
	mv x34, x6
	j trace_diffuse_ray_cont_b2232 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2231:
# B2231
	fmul x66, x35, x5
	lw x67, 9(x100)
	lw x67, 0(x67)
	fmul x66, x66, x67
	fadd x6, x6, x66
	fmul x5, x5, x34
	lw x66, 9(x100)
	lw x66, 1(x66)
	fmul x5, x5, x66
	fadd x5, x6, x5
	fmul x34, x34, x35
	lw x35, 9(x100)
	lw x35, 2(x35)
	fmul x34, x34, x35
	fadd x34, x5, x34
trace_diffuse_ray_cont_b2232:
# B2232
	lw x35, 1(x100)
	bne x35, x27, trace_diffuse_ray_beqelse_b2235
# B2233
	fsub x34, x34, x28
trace_diffuse_ray_beqelse_b2235:
# B2235
	lw x100, 6(x100)
	fle x34, zero, x34
	xori x34, x34, 1
	xor x100, x100, x34
	xori x100, x100, 1
trace_diffuse_ray_cont_b2236:
# B2236
	beq x100, zero, trace_diffuse_ray_bneelse_b2237
	j	trace_diffuse_ray_beqelse_b2165 # moved need extra jump for 2165 at B2236
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
	sw	x112, 12(x2)
	sw	x113, 13(x2)
	sw	x114, 14(x2)
	sw	x115, 15(x2)
	sw	x116, 16(x2)
	sw	x117, 17(x2)
	sw	x118, 18(x2)
	sw	x119, 19(x2)
body_iter_trace_diffuse_rays.3080:
# B2254
# B2255
	lui x10, 274784
	li x100, 1
	lui x11, 799072
	li x12, 2
	mv x15, x7
	mv x16, x8
	mv x14, x6
	mv x13, x5
iter_trace_diffuse_rays_loop_b2256:
# B2256
	bgt zero, x16, iter_trace_diffuse_rays_bleelse_b2258
# B2257
	lwr x17, x13, x16
	lw x17, 0(x17)
	lw x18, 0(x17)
	lw x19, 0(x14)
	fmul x18, x18, x19
	lw x19, 1(x17)
	lw x20, 1(x14)
	fmul x19, x19, x20
	fadd x18, x18, x19
	lw x17, 2(x17)
	lw x19, 2(x14)
	fmul x17, x17, x19
	fadd x17, x18, x17
	fle x18, zero, x17
	la x19, min_caml_tmin
	lui x20, 321255
	addi x20, x20, -1240
	la x21, min_caml_or_net
	li x22, 99
	la x23, min_caml_solver_dist
	li x24, -1
	la x25, min_caml_and_net
	la x26, min_caml_objects
	lui x27, 246333
	addi x27, x27, 1802
	la x28, min_caml_startp_fast
	la x29, min_caml_intersection_point
	la x30, min_caml_intersected_object_id
	la x31, min_caml_intsec_rectside
	li x32, 3
	lui x33, 260096
	lui x34, 777421
	addi x34, x34, -819
	lui x35, 314348
	addi x35, x35, -992
	la x36, min_caml_nvector
	lui x37, 258048
	lui x38, 784384
	la x39, min_caml_texture_color
	lui x40, 251085
	addi x40, x40, -819
	lui x5, 268800
	lui x6, 266752
	lui x65, 256000
	lui x66, 265361
	addi x66, x66, -37
	lui x67, 262144
	lui x68, 263313
	addi x68, x68, -37
	lui x69, 261265
	addi x69, x69, -37
	lui x7, 259217
	addi x7, x7, -37
	lui x70, 778923
	addi x70, x70, -1364
	lui x71, 245896
	addi x71, x71, 1638
	lui x72, 758998
	addi x72, x72, 1206
	lui x73, 782336
	lui x74, 250538
	addi x74, x74, 1929
	lui x75, 764728
	addi x75, x75, 262
	lui x76, 276464
	lui x77, 263313
	addi x77, x77, -37
	li x78, 4
	lui x79, 232731
	addi x79, x79, 1815
	lui x8, 257536
	lui x80, 780971
	addi x80, x80, -1366
	lui x81, 255181
	addi x81, x81, -819
	lui x82, 778533
	addi x82, x82, -1755
	lui x83, 253497
	addi x83, x83, -456
	lui x84, 777085
	addi x84, x84, 1646
	lui x85, 251742
	addi x85, x85, 1989
	lui x86, 262592
	lui x87, 270080
	lui x88, 254362
	addi x88, x88, -1638
	lui x89, 256410
	addi x89, x89, -1638
	la x9, min_caml_light_dirvec
	lui x90, 779469
	addi x90, x90, -819
	la x91, min_caml_light
	la x92, min_caml_diffuse_ray
	beq x18, zero, iter_trace_diffuse_rays_bneelse_b2260
# B2259
	lwr x18, x13, x16
	fdiv x17, x17, x10
	sw x20, 0(x19)
	lw x20, 0(x21)
	mv x94, x20
	mv x93, zero
	mv x95, x18
iter_trace_diffuse_rays_loop_b2261:
# B2261
	lwr x20, x94, x93
	lw x96, 0(x20)
	beq x96, x24, iter_trace_diffuse_rays_bneelse_b2460
# B2263
	bne x96, x22, iter_trace_diffuse_rays_beqelse_b2265
# B2264
	mv x97, x100
	mv x98, x20
	mv x99, x95
iter_trace_diffuse_rays_loop_b2266:
# B2266
	lwr x20, x98, x97
	beq x20, x24, iter_trace_diffuse_rays_bneelse_b2459
# B2268
	lwr x20, x25, x20
	mv x101, x20
	mv x102, x99
	mv x96, zero
	j	iter_trace_diffuse_rays_loop_b2269 # jumping over moved block
iter_trace_diffuse_rays_beqelse_b2340:	#moved
# B2340
	sw x105, 0(x19)
	sw x106, 0(x29)
	sw x107, 1(x29)
	sw x20, 2(x29)
	sw x103, 0(x30)
	sw x104, 0(x31)
iter_trace_diffuse_rays_beqelse_b2269:
iter_trace_diffuse_rays_bfgtelse_b2269:
iter_trace_diffuse_rays_loop_b2269:
# B2269
	lw x20, 0(x102)
	lwr x103, x101, x96
	beq x103, x24, iter_trace_diffuse_rays_bneelse_b2342
# B2271
	lwr x104, x26, x103
	lw x105, 10(x104)
	lw x106, 0(x105)
	lw x107, 1(x105)
	lw x108, 2(x105)
	lw x109, 1(x102)
	lwr x109, x109, x103
	lw x110, 1(x104)
	bne x110, x100, iter_trace_diffuse_rays_beqelse_b2273
# B2272
	lw x105, 0(x102)
	lw x110, 0(x109)
	fsub x110, x110, x106
	lw x111, 1(x109)
	fmul x110, x110, x111
	lw x112, 1(x105)
	fmul x113, x110, x112
	fadd x113, x113, x107
	fabs x113, x113
	lw x114, 4(x104)
	lw x114, 1(x114)
	bfle x114, x113, iter_trace_diffuse_rays_bfgtelse_b2279
# B2275
	lw x113, 2(x105)
	fmul x113, x110, x113
	fadd x113, x113, x108
	fabs x113, x113
	lw x115, 4(x104)
	lw x115, 2(x115)
	bfle x115, x113, iter_trace_diffuse_rays_bfgtelse_b2279
# B2277
	feq x111, x111, zero
	xori x111, x111, 1
	mv x113, x111
# B2278
	bne x113, zero, iter_trace_diffuse_rays_beqelse_b2280
iter_trace_diffuse_rays_bfgtelse_b2279:
# B2279
	lw x110, 2(x109)
	fsub x110, x110, x107
	lw x111, 3(x109)
	fmul x110, x110, x111
	lw x113, 0(x105)
	fmul x115, x110, x113
	fadd x115, x115, x106
	fabs x115, x115
	lw x116, 4(x104)
	lw x116, 0(x116)
	bfle x116, x115, iter_trace_diffuse_rays_bfgtelse_b2286
# B2282
	lw x105, 2(x105)
	fmul x105, x110, x105
	fadd x105, x105, x108
	fabs x105, x105
	lw x104, 4(x104)
	lw x104, 2(x104)
	bfle x104, x105, iter_trace_diffuse_rays_bfgtelse_b2286
# B2284
	feq x104, x111, zero
	xori x104, x104, 1
	mv x105, x104
# B2285
	bne x105, zero, iter_trace_diffuse_rays_beqelse_b2287
iter_trace_diffuse_rays_bfgtelse_b2286:
# B2286
	lw x104, 4(x109)
	fsub x104, x104, x108
	lw x105, 5(x109)
	fmul x104, x104, x105
	fmul x108, x104, x113
	fadd x106, x108, x106
	fabs x106, x106
	bfle x116, x106, iter_trace_diffuse_rays_bfgtelse_b2293
# B2289
	fmul x106, x104, x112
	fadd x106, x106, x107
	fabs x106, x106
	bfle x114, x106, iter_trace_diffuse_rays_bfgtelse_b2293
# B2291
	feq x105, x105, zero
	xori x105, x105, 1
	mv x106, x105
# B2292
	bne x106, zero, iter_trace_diffuse_rays_beqelse_b2294
iter_trace_diffuse_rays_bfgtelse_b2293:
# B2293
	mv x104, zero
	j iter_trace_diffuse_rays_cont_b2306 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2294:
# B2294
	sw x104, 0(x23)
	li x104, 3
	addi x96, x96, 1
	j iter_trace_diffuse_rays_cont_b2308 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2287:
# B2287
	sw x110, 0(x23)
	mv x104, x12
	j iter_trace_diffuse_rays_cont_b2306 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2280:
# B2280
	sw x110, 0(x23)
	mv x104, x100
	j iter_trace_diffuse_rays_cont_b2306 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2273:
# B2273
	bne x110, x12, iter_trace_diffuse_rays_beqelse_b2296
# B2295
	lw x104, 0(x109)
	bfle zero, x104, iter_trace_diffuse_rays_bfgtelse_b2297
# B2298
	lw x105, 3(x105)
	fmul x104, x104, x105
	sw x104, 0(x23)
	mv x104, x100
	j iter_trace_diffuse_rays_cont_b2306 # adhoc jump(2)
iter_trace_diffuse_rays_bfgtelse_b2297:
# B2297
	mv x104, zero
	j iter_trace_diffuse_rays_cont_b2306 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2296:
# B2296
	lw x110, 0(x109)
	bfeq x110, zero, iter_trace_diffuse_rays_bfneqelse_b2300
# B2299
	lw x111, 1(x109)
	fmul x106, x111, x106
	lw x111, 2(x109)
	fmul x107, x111, x107
	fadd x106, x106, x107
	lw x107, 3(x109)
	fmul x107, x107, x108
	fadd x106, x106, x107
	lw x105, 3(x105)
	fmul x107, x106, x106
	fmul x105, x110, x105
	fsub x105, x107, x105
	bfle x105, zero, iter_trace_diffuse_rays_bfgtelse_b2301
# B2302
	lw x104, 6(x104)
	fsqrt x105, x105
	bne x104, zero, iter_trace_diffuse_rays_beqelse_b2304
# B2303
	fsub x104, x106, x105
	lw x105, 4(x109)
	fmul x104, x104, x105
	sw x104, 0(x23)
	j iter_trace_diffuse_rays_cont_b2305 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2304:
# B2304
	fadd x104, x106, x105
	lw x105, 4(x109)
	fmul x104, x104, x105
	sw x104, 0(x23)
iter_trace_diffuse_rays_cont_b2305:
# B2305
	mv x104, x100
	j iter_trace_diffuse_rays_cont_b2306 # adhoc jump(2)
iter_trace_diffuse_rays_bfgtelse_b2301:
# B2301
	mv x104, zero
	j iter_trace_diffuse_rays_cont_b2306 # adhoc jump(2)
iter_trace_diffuse_rays_bfneqelse_b2300:
# B2300
	mv x104, zero
iter_trace_diffuse_rays_cont_b2306:
# B2306
	addi x96, x96, 1
	bne x104, zero, iter_trace_diffuse_rays_beqelse_b2308
# B2307
	lwr x20, x26, x103
	lw x20, 6(x20)
	beq x20, zero, iter_trace_diffuse_rays_bneelse_b2342
	j	iter_trace_diffuse_rays_beqelse_b2269 # moved need extra jump for 2269 at B2307
iter_trace_diffuse_rays_bneelse_b2342:
# B2342
	addi x97, x97, 1
	j iter_trace_diffuse_rays_loop_b2266 # loopback to while entry from B2342
iter_trace_diffuse_rays_beqelse_b2308:
iter_trace_diffuse_rays_cont_b2308:
# B2308
	lw x105, 0(x23)
	bfle x105, zero, iter_trace_diffuse_rays_bfgtelse_b2269
# B2312
	lw x106, 0(x19)
	bfle x106, x105, iter_trace_diffuse_rays_bfgtelse_b2269
# B2314
	fadd x105, x105, x27
	lw x106, 0(x20)
	fmul x106, x106, x105
	lw x107, 0(x28)
	fadd x106, x106, x107
	lw x107, 1(x20)
	fmul x107, x107, x105
	lw x108, 1(x28)
	fadd x107, x107, x108
	lw x20, 2(x20)
	fmul x20, x20, x105
	lw x108, 2(x28)
	fadd x20, x20, x108
	mv x110, x106
	mv x111, x107
	mv x109, x101
	mv x112, x20
	mv x108, zero
	j	iter_trace_diffuse_rays_loop_b2315 # jumping over moved block
iter_trace_diffuse_rays_bneelse_b2336:	#moved
# B2336
	addi x108, x108, 1
iter_trace_diffuse_rays_loop_b2315:
# B2315
	lwr x113, x109, x108
	bne x113, x24, iter_trace_diffuse_rays_beqelse_b2317
# B2316
	mv x114, x100
# B2338
	bne x114, zero, iter_trace_diffuse_rays_beqelse_b2340
	j	iter_trace_diffuse_rays_bfgtelse_b2269 # moved need extra jump for 2269 at B2338
iter_trace_diffuse_rays_beqelse_b2317:
# B2317
	lwr x113, x26, x113
	lw x114, 5(x113)
	lw x114, 0(x114)
	fsub x114, x110, x114
	lw x115, 5(x113)
	lw x115, 1(x115)
	fsub x115, x111, x115
	lw x116, 5(x113)
	lw x116, 2(x116)
	fsub x116, x112, x116
	lw x117, 1(x113)
	bne x117, x100, iter_trace_diffuse_rays_beqelse_b2319
# B2318
	fabs x114, x114
	lw x117, 4(x113)
	lw x117, 0(x117)
	bfle x117, x114, iter_trace_diffuse_rays_bfgtelse_b2325
# B2321
	fabs x114, x115
	lw x115, 4(x113)
	lw x115, 1(x115)
	bfle x115, x114, iter_trace_diffuse_rays_bfgtelse_b2325
# B2323
	fabs x114, x116
	lw x115, 4(x113)
	lw x115, 2(x115)
	fle x114, x115, x114
	xori x114, x114, 1
	mv x115, x114
# B2324
	bne x115, zero, iter_trace_diffuse_rays_beqelse_b2326
iter_trace_diffuse_rays_bfgtelse_b2325:
# B2325
	lw x113, 6(x113)
	xori x113, x113, 1
	j iter_trace_diffuse_rays_cont_b2335 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2326:
# B2326
	lw x113, 6(x113)
	j iter_trace_diffuse_rays_cont_b2335 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2319:
# B2319
	bne x117, x12, iter_trace_diffuse_rays_beqelse_b2328
# B2327
	lw x117, 4(x113)
	lw x118, 0(x117)
	fmul x114, x118, x114
	lw x118, 1(x117)
	fmul x115, x118, x115
	fadd x114, x114, x115
	lw x115, 2(x117)
	fmul x115, x115, x116
	fadd x114, x114, x115
	lw x113, 6(x113)
	fle x114, zero, x114
	xori x114, x114, 1
	xor x113, x113, x114
	xori x113, x113, 1
	j iter_trace_diffuse_rays_cont_b2335 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2328:
# B2328
	fmul x117, x114, x114
	lw x118, 4(x113)
	lw x118, 0(x118)
	fmul x117, x117, x118
	fmul x118, x115, x115
	lw x119, 4(x113)
	lw x119, 1(x119)
	fmul x118, x118, x119
	fadd x117, x117, x118
	fmul x118, x116, x116
	lw x119, 4(x113)
	lw x119, 2(x119)
	fmul x118, x118, x119
	fadd x117, x117, x118
	lw x118, 3(x113)
	bne x118, zero, iter_trace_diffuse_rays_beqelse_b2330
# B2329
	mv x114, x117
	j iter_trace_diffuse_rays_cont_b2331 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2330:
# B2330
	fmul x118, x115, x116
	lw x119, 9(x113)
	lw x119, 0(x119)
	fmul x118, x118, x119
	fadd x117, x117, x118
	fmul x116, x116, x114
	lw x118, 9(x113)
	lw x118, 1(x118)
	fmul x116, x116, x118
	fadd x116, x117, x116
	fmul x114, x114, x115
	lw x115, 9(x113)
	lw x115, 2(x115)
	fmul x114, x114, x115
	fadd x114, x116, x114
iter_trace_diffuse_rays_cont_b2331:
# B2331
	lw x115, 1(x113)
	bne x115, x32, iter_trace_diffuse_rays_beqelse_b2334
# B2332
	fsub x114, x114, x33
iter_trace_diffuse_rays_beqelse_b2334:
# B2334
	lw x113, 6(x113)
	fle x114, zero, x114
	xori x114, x114, 1
	xor x113, x113, x114
	xori x113, x113, 1
iter_trace_diffuse_rays_cont_b2335:
# B2335
	beq x113, zero, iter_trace_diffuse_rays_bneelse_b2336
	j	iter_trace_diffuse_rays_bfgtelse_b2269 # moved need extra jump for 2269 at B2335
iter_trace_diffuse_rays_beqelse_b2265:
# B2265
	lwr x97, x26, x96
	lw x98, 10(x97)
	lw x99, 0(x98)
	lw x101, 1(x98)
	lw x102, 2(x98)
	lw x103, 1(x95)
	lwr x96, x103, x96
	lw x103, 1(x97)
	bne x103, x100, iter_trace_diffuse_rays_beqelse_b2344
# B2343
	lw x98, 0(x95)
	lw x103, 0(x96)
	fsub x103, x103, x99
	lw x104, 1(x96)
	fmul x103, x103, x104
	lw x105, 1(x98)
	fmul x106, x103, x105
	fadd x106, x106, x101
	fabs x106, x106
	lw x107, 4(x97)
	lw x107, 1(x107)
	bfle x107, x106, iter_trace_diffuse_rays_bfgtelse_b2350
# B2346
	lw x106, 2(x98)
	fmul x106, x103, x106
	fadd x106, x106, x102
	fabs x106, x106
	lw x108, 4(x97)
	lw x108, 2(x108)
	bfle x108, x106, iter_trace_diffuse_rays_bfgtelse_b2350
# B2348
	feq x104, x104, zero
	xori x104, x104, 1
	mv x106, x104
# B2349
	bne x106, zero, iter_trace_diffuse_rays_beqelse_b2351
iter_trace_diffuse_rays_bfgtelse_b2350:
# B2350
	lw x103, 2(x96)
	fsub x103, x103, x101
	lw x104, 3(x96)
	fmul x103, x103, x104
	lw x106, 0(x98)
	fmul x108, x103, x106
	fadd x108, x108, x99
	fabs x108, x108
	lw x109, 4(x97)
	lw x109, 0(x109)
	bfle x109, x108, iter_trace_diffuse_rays_bfgtelse_b2357
# B2353
	lw x98, 2(x98)
	fmul x98, x103, x98
	fadd x98, x98, x102
	fabs x98, x98
	lw x97, 4(x97)
	lw x97, 2(x97)
	bfle x97, x98, iter_trace_diffuse_rays_bfgtelse_b2357
# B2355
	feq x97, x104, zero
	xori x97, x97, 1
	mv x98, x97
# B2356
	bne x98, zero, iter_trace_diffuse_rays_beqelse_b2358
iter_trace_diffuse_rays_bfgtelse_b2357:
# B2357
	lw x97, 4(x96)
	fsub x97, x97, x102
	lw x96, 5(x96)
	fmul x97, x97, x96
	fmul x98, x97, x106
	fadd x98, x98, x99
	fabs x98, x98
	bfle x109, x98, iter_trace_diffuse_rays_bfgtelse_b2459
# B2360
	fmul x98, x97, x105
	fadd x98, x98, x101
	fabs x98, x98
	bfle x107, x98, iter_trace_diffuse_rays_bfgtelse_b2459
# B2362
	feq x96, x96, zero
	xori x96, x96, 1
	mv x98, x96
# B2363
	bne x98, zero, iter_trace_diffuse_rays_beqelse_b2365
	j iter_trace_diffuse_rays_cont_b2459 # adhoc jump(3)
iter_trace_diffuse_rays_beqelse_b2365:
# B2365
	sw x97, 0(x23)
	mv x96, x32
	j iter_trace_diffuse_rays_cont_b2377 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2358:
# B2358
	sw x103, 0(x23)
	mv x96, x12
	j iter_trace_diffuse_rays_cont_b2377 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2351:
# B2351
	sw x103, 0(x23)
	mv x96, x100
	j iter_trace_diffuse_rays_cont_b2377 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2344:
# B2344
	bne x103, x12, iter_trace_diffuse_rays_beqelse_b2367
# B2366
	lw x96, 0(x96)
	bfle zero, x96, iter_trace_diffuse_rays_bfgtelse_b2459
# B2369
	lw x97, 3(x98)
	fmul x96, x96, x97
	sw x96, 0(x23)
	mv x96, x100
	j iter_trace_diffuse_rays_cont_b2377 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2367:
# B2367
	lw x103, 0(x96)
	bfeq x103, zero, iter_trace_diffuse_rays_bfneqelse_b2459
# B2370
	lw x104, 1(x96)
	fmul x99, x104, x99
	lw x104, 2(x96)
	fmul x101, x104, x101
	fadd x99, x99, x101
	lw x101, 3(x96)
	fmul x101, x101, x102
	fadd x99, x99, x101
	lw x98, 3(x98)
	fmul x101, x99, x99
	fmul x98, x103, x98
	fsub x98, x101, x98
	bfle x98, zero, iter_trace_diffuse_rays_bfgtelse_b2459
# B2373
	lw x97, 6(x97)
	fsqrt x98, x98
	bne x97, zero, iter_trace_diffuse_rays_beqelse_b2375
# B2374
	fsub x97, x99, x98
	lw x96, 4(x96)
	fmul x96, x97, x96
	sw x96, 0(x23)
	j iter_trace_diffuse_rays_cont_b2376 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2375:
# B2375
	fadd x97, x99, x98
	lw x96, 4(x96)
	fmul x96, x97, x96
	sw x96, 0(x23)
iter_trace_diffuse_rays_cont_b2376:
# B2376
	mv x96, x100
iter_trace_diffuse_rays_cont_b2377:
# B2377
	bne x96, zero, iter_trace_diffuse_rays_beqelse_b2379
	j iter_trace_diffuse_rays_cont_b2459 # adhoc jump(3)
iter_trace_diffuse_rays_beqelse_b2379:
# B2379
	lw x96, 0(x23)
	lw x97, 0(x19)
	bfle x97, x96, iter_trace_diffuse_rays_bfgtelse_b2459
# B2381
	mv x98, x100
	mv x101, x95
	mv x99, x20
iter_trace_diffuse_rays_loop_b2382:
# B2382
	lwr x20, x99, x98
	beq x20, x24, iter_trace_diffuse_rays_bneelse_b2459
# B2384
	lwr x20, x25, x20
	mv x97, x20
	mv x102, x101
	mv x96, zero
	j	iter_trace_diffuse_rays_loop_b2385 # jumping over moved block
iter_trace_diffuse_rays_beqelse_b2456:	#moved
# B2456
	sw x105, 0(x19)
	sw x106, 0(x29)
	sw x107, 1(x29)
	sw x20, 2(x29)
	sw x103, 0(x30)
	sw x104, 0(x31)
iter_trace_diffuse_rays_beqelse_b2385:
iter_trace_diffuse_rays_bfgtelse_b2385:
iter_trace_diffuse_rays_loop_b2385:
# B2385
	lw x20, 0(x102)
	lwr x103, x97, x96
	beq x103, x24, iter_trace_diffuse_rays_bneelse_b2458
# B2387
	lwr x104, x26, x103
	lw x105, 10(x104)
	lw x106, 0(x105)
	lw x107, 1(x105)
	lw x108, 2(x105)
	lw x109, 1(x102)
	lwr x109, x109, x103
	lw x110, 1(x104)
	bne x110, x100, iter_trace_diffuse_rays_beqelse_b2389
# B2388
	lw x105, 0(x102)
	lw x110, 0(x109)
	fsub x110, x110, x106
	lw x111, 1(x109)
	fmul x110, x110, x111
	lw x112, 1(x105)
	fmul x113, x110, x112
	fadd x113, x113, x107
	fabs x113, x113
	lw x114, 4(x104)
	lw x114, 1(x114)
	bfle x114, x113, iter_trace_diffuse_rays_bfgtelse_b2395
# B2391
	lw x113, 2(x105)
	fmul x113, x110, x113
	fadd x113, x113, x108
	fabs x113, x113
	lw x115, 4(x104)
	lw x115, 2(x115)
	bfle x115, x113, iter_trace_diffuse_rays_bfgtelse_b2395
# B2393
	feq x111, x111, zero
	xori x111, x111, 1
	mv x113, x111
# B2394
	bne x113, zero, iter_trace_diffuse_rays_beqelse_b2396
iter_trace_diffuse_rays_bfgtelse_b2395:
# B2395
	lw x110, 2(x109)
	fsub x110, x110, x107
	lw x111, 3(x109)
	fmul x110, x110, x111
	lw x113, 0(x105)
	fmul x115, x110, x113
	fadd x115, x115, x106
	fabs x115, x115
	lw x116, 4(x104)
	lw x116, 0(x116)
	bfle x116, x115, iter_trace_diffuse_rays_bfgtelse_b2402
# B2398
	lw x105, 2(x105)
	fmul x105, x110, x105
	fadd x105, x105, x108
	fabs x105, x105
	lw x104, 4(x104)
	lw x104, 2(x104)
	bfle x104, x105, iter_trace_diffuse_rays_bfgtelse_b2402
# B2400
	feq x104, x111, zero
	xori x104, x104, 1
	mv x105, x104
# B2401
	bne x105, zero, iter_trace_diffuse_rays_beqelse_b2403
iter_trace_diffuse_rays_bfgtelse_b2402:
# B2402
	lw x104, 4(x109)
	fsub x104, x104, x108
	lw x105, 5(x109)
	fmul x104, x104, x105
	fmul x108, x104, x113
	fadd x106, x108, x106
	fabs x106, x106
	bfle x116, x106, iter_trace_diffuse_rays_bfgtelse_b2409
# B2405
	fmul x106, x104, x112
	fadd x106, x106, x107
	fabs x106, x106
	bfle x114, x106, iter_trace_diffuse_rays_bfgtelse_b2409
# B2407
	feq x105, x105, zero
	xori x105, x105, 1
	mv x106, x105
# B2408
	bne x106, zero, iter_trace_diffuse_rays_beqelse_b2410
iter_trace_diffuse_rays_bfgtelse_b2409:
# B2409
	mv x104, zero
	j iter_trace_diffuse_rays_cont_b2422 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2410:
# B2410
	sw x104, 0(x23)
	mv x104, x32
	j iter_trace_diffuse_rays_cont_b2422 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2403:
# B2403
	sw x110, 0(x23)
	mv x104, x12
	j iter_trace_diffuse_rays_cont_b2422 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2396:
# B2396
	sw x110, 0(x23)
	mv x104, x100
	j iter_trace_diffuse_rays_cont_b2422 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2389:
# B2389
	bne x110, x12, iter_trace_diffuse_rays_beqelse_b2412
# B2411
	lw x104, 0(x109)
	bfle zero, x104, iter_trace_diffuse_rays_bfgtelse_b2413
# B2414
	lw x105, 3(x105)
	fmul x104, x104, x105
	sw x104, 0(x23)
	mv x104, x100
	j iter_trace_diffuse_rays_cont_b2422 # adhoc jump(2)
iter_trace_diffuse_rays_bfgtelse_b2413:
# B2413
	mv x104, zero
	j iter_trace_diffuse_rays_cont_b2422 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2412:
# B2412
	lw x110, 0(x109)
	bfeq x110, zero, iter_trace_diffuse_rays_bfneqelse_b2416
# B2415
	lw x111, 1(x109)
	fmul x106, x111, x106
	lw x111, 2(x109)
	fmul x107, x111, x107
	fadd x106, x106, x107
	lw x107, 3(x109)
	fmul x107, x107, x108
	fadd x106, x106, x107
	lw x105, 3(x105)
	fmul x107, x106, x106
	fmul x105, x110, x105
	fsub x105, x107, x105
	bfle x105, zero, iter_trace_diffuse_rays_bfgtelse_b2417
# B2418
	lw x104, 6(x104)
	fsqrt x105, x105
	bne x104, zero, iter_trace_diffuse_rays_beqelse_b2420
# B2419
	fsub x104, x106, x105
	lw x105, 4(x109)
	fmul x104, x104, x105
	sw x104, 0(x23)
	j iter_trace_diffuse_rays_cont_b2421 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2420:
# B2420
	fadd x104, x106, x105
	lw x105, 4(x109)
	fmul x104, x104, x105
	sw x104, 0(x23)
iter_trace_diffuse_rays_cont_b2421:
# B2421
	mv x104, x100
	j iter_trace_diffuse_rays_cont_b2422 # adhoc jump(2)
iter_trace_diffuse_rays_bfgtelse_b2417:
# B2417
	mv x104, zero
	j iter_trace_diffuse_rays_cont_b2422 # adhoc jump(2)
iter_trace_diffuse_rays_bfneqelse_b2416:
# B2416
	mv x104, zero
iter_trace_diffuse_rays_cont_b2422:
# B2422
	addi x96, x96, 1
	bne x104, zero, iter_trace_diffuse_rays_beqelse_b2424
# B2423
	lwr x20, x26, x103
	lw x20, 6(x20)
	beq x20, zero, iter_trace_diffuse_rays_bneelse_b2458
	j	iter_trace_diffuse_rays_beqelse_b2385 # moved need extra jump for 2385 at B2423
iter_trace_diffuse_rays_bneelse_b2458:
# B2458
	addi x98, x98, 1
	j iter_trace_diffuse_rays_loop_b2382 # loopback to while entry from B2458
iter_trace_diffuse_rays_beqelse_b2424:
# B2424
	lw x105, 0(x23)
	bfle x105, zero, iter_trace_diffuse_rays_bfgtelse_b2385
# B2428
	lw x106, 0(x19)
	bfle x106, x105, iter_trace_diffuse_rays_bfgtelse_b2385
# B2430
	fadd x105, x105, x27
	lw x106, 0(x20)
	fmul x106, x106, x105
	lw x107, 0(x28)
	fadd x106, x106, x107
	lw x107, 1(x20)
	fmul x107, x107, x105
	lw x108, 1(x28)
	fadd x107, x107, x108
	lw x20, 2(x20)
	fmul x20, x20, x105
	lw x108, 2(x28)
	fadd x20, x20, x108
	mv x109, x97
	mv x110, x106
	mv x111, x107
	mv x112, x20
	mv x108, zero
	j	iter_trace_diffuse_rays_loop_b2431 # jumping over moved block
iter_trace_diffuse_rays_bneelse_b2452:	#moved
# B2452
	addi x108, x108, 1
iter_trace_diffuse_rays_loop_b2431:
# B2431
	lwr x113, x109, x108
	bne x113, x24, iter_trace_diffuse_rays_beqelse_b2433
# B2432
	mv x114, x100
# B2454
	bne x114, zero, iter_trace_diffuse_rays_beqelse_b2456
	j	iter_trace_diffuse_rays_bfgtelse_b2385 # moved need extra jump for 2385 at B2454
iter_trace_diffuse_rays_beqelse_b2433:
# B2433
	lwr x113, x26, x113
	lw x114, 5(x113)
	lw x114, 0(x114)
	fsub x114, x110, x114
	lw x115, 5(x113)
	lw x115, 1(x115)
	fsub x115, x111, x115
	lw x116, 5(x113)
	lw x116, 2(x116)
	fsub x116, x112, x116
	lw x117, 1(x113)
	bne x117, x100, iter_trace_diffuse_rays_beqelse_b2435
# B2434
	fabs x114, x114
	lw x117, 4(x113)
	lw x117, 0(x117)
	bfle x117, x114, iter_trace_diffuse_rays_bfgtelse_b2441
# B2437
	fabs x114, x115
	lw x115, 4(x113)
	lw x115, 1(x115)
	bfle x115, x114, iter_trace_diffuse_rays_bfgtelse_b2441
# B2439
	fabs x114, x116
	lw x115, 4(x113)
	lw x115, 2(x115)
	fle x114, x115, x114
	xori x114, x114, 1
	mv x115, x114
# B2440
	bne x115, zero, iter_trace_diffuse_rays_beqelse_b2442
iter_trace_diffuse_rays_bfgtelse_b2441:
# B2441
	lw x113, 6(x113)
	xori x113, x113, 1
	j iter_trace_diffuse_rays_cont_b2451 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2442:
# B2442
	lw x113, 6(x113)
	j iter_trace_diffuse_rays_cont_b2451 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2435:
# B2435
	bne x117, x12, iter_trace_diffuse_rays_beqelse_b2444
# B2443
	lw x117, 4(x113)
	lw x118, 0(x117)
	fmul x114, x118, x114
	lw x118, 1(x117)
	fmul x115, x118, x115
	fadd x114, x114, x115
	lw x115, 2(x117)
	fmul x115, x115, x116
	fadd x114, x114, x115
	lw x113, 6(x113)
	fle x114, zero, x114
	xori x114, x114, 1
	xor x113, x113, x114
	xori x113, x113, 1
	j iter_trace_diffuse_rays_cont_b2451 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2444:
# B2444
	fmul x117, x114, x114
	lw x118, 4(x113)
	lw x118, 0(x118)
	fmul x117, x117, x118
	fmul x118, x115, x115
	lw x119, 4(x113)
	lw x119, 1(x119)
	fmul x118, x118, x119
	fadd x117, x117, x118
	fmul x118, x116, x116
	lw x119, 4(x113)
	lw x119, 2(x119)
	fmul x118, x118, x119
	fadd x117, x117, x118
	lw x118, 3(x113)
	bne x118, zero, iter_trace_diffuse_rays_beqelse_b2446
# B2445
	mv x114, x117
	j iter_trace_diffuse_rays_cont_b2447 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2446:
# B2446
	fmul x118, x115, x116
	lw x119, 9(x113)
	lw x119, 0(x119)
	fmul x118, x118, x119
	fadd x117, x117, x118
	fmul x116, x116, x114
	lw x118, 9(x113)
	lw x118, 1(x118)
	fmul x116, x116, x118
	fadd x116, x117, x116
	fmul x114, x114, x115
	lw x115, 9(x113)
	lw x115, 2(x115)
	fmul x114, x114, x115
	fadd x114, x116, x114
iter_trace_diffuse_rays_cont_b2447:
# B2447
	lw x115, 1(x113)
	bne x115, x32, iter_trace_diffuse_rays_beqelse_b2450
# B2448
	fsub x114, x114, x33
iter_trace_diffuse_rays_beqelse_b2450:
# B2450
	lw x113, 6(x113)
	fle x114, zero, x114
	xori x114, x114, 1
	xor x113, x113, x114
	xori x113, x113, 1
iter_trace_diffuse_rays_cont_b2451:
# B2451
	beq x113, zero, iter_trace_diffuse_rays_bneelse_b2452
	j	iter_trace_diffuse_rays_bfgtelse_b2385 # moved need extra jump for 2385 at B2451
iter_trace_diffuse_rays_bfgtelse_b2459:
iter_trace_diffuse_rays_bfneqelse_b2459:
iter_trace_diffuse_rays_bneelse_b2459:
iter_trace_diffuse_rays_cont_b2459:
# B2459
	addi x93, x93, 1
	j iter_trace_diffuse_rays_loop_b2261 # loopback to while entry from B2459
iter_trace_diffuse_rays_bneelse_b2460:
# B2460
	lw x19, 0(x19)
	bfle x19, x34, iter_trace_diffuse_rays_bfgtelse_b3339
# B2462
	fle x19, x35, x19
	xori x19, x19, 1
	mv x20, x19
# B2463
	bne x20, zero, iter_trace_diffuse_rays_beqelse_b2465
	j iter_trace_diffuse_rays_cont_b3339 # adhoc jump(3)
iter_trace_diffuse_rays_beqelse_b2465:
# B2465
	lw x19, 0(x30)
	lwr x19, x26, x19
	lw x18, 0(x18)
	lw x20, 1(x19)
	bne x20, x100, iter_trace_diffuse_rays_beqelse_b2467
# B2466
	lw x20, 0(x31)
	sw zero, 0(x36)
	sw zero, 1(x36)
	sw zero, 2(x36)
	addi x20, x20, -1
	lwr x18, x18, x20
	bfeq x18, zero, iter_trace_diffuse_rays_bfneqelse_b2469
# B2468
	bfle x18, zero, iter_trace_diffuse_rays_bfgtelse_b2470
# B2471
	mv x18, x33
	j iter_trace_diffuse_rays_cont_b2472 # adhoc jump(2)
iter_trace_diffuse_rays_bfgtelse_b2470:
# B2470
	lui x18, 784384
	j iter_trace_diffuse_rays_cont_b2472 # adhoc jump(2)
iter_trace_diffuse_rays_bfneqelse_b2469:
# B2469
	mv x18, zero
iter_trace_diffuse_rays_cont_b2472:
# B2472
	fsub x18, zero, x18
	add x4, x36, x20
	sw x18, 0(x4)
	j iter_trace_diffuse_rays_cont_b2483 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2467:
# B2467
	bne x20, x12, iter_trace_diffuse_rays_beqelse_b2474
# B2473
	lw x18, 4(x19)
	lw x18, 0(x18)
	fsub x18, zero, x18
	sw x18, 0(x36)
	lw x18, 4(x19)
	lw x18, 1(x18)
	fsub x18, zero, x18
	sw x18, 1(x36)
	lw x18, 4(x19)
	lw x18, 2(x18)
	fsub x18, zero, x18
	sw x18, 2(x36)
	j iter_trace_diffuse_rays_cont_b2483 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2474:
# B2474
	lw x18, 0(x29)
	lw x20, 5(x19)
	lw x20, 0(x20)
	fsub x18, x18, x20
	lw x20, 1(x29)
	lw x28, 5(x19)
	lw x28, 1(x28)
	fsub x20, x20, x28
	lw x28, 2(x29)
	lw x30, 5(x19)
	lw x30, 2(x30)
	fsub x28, x28, x30
	lw x30, 4(x19)
	lw x30, 0(x30)
	fmul x30, x18, x30
	lw x31, 4(x19)
	lw x31, 1(x31)
	fmul x31, x20, x31
	lw x35, 4(x19)
	lw x35, 2(x35)
	fmul x35, x28, x35
	lw x93, 3(x19)
	bne x93, zero, iter_trace_diffuse_rays_beqelse_b2476
# B2475
	sw x30, 0(x36)
	sw x31, 1(x36)
	sw x35, 2(x36)
	j iter_trace_diffuse_rays_cont_b2477 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2476:
# B2476
	lw x93, 9(x19)
	lw x93, 2(x93)
	fmul x94, x20, x93
	lw x95, 9(x19)
	lw x95, 1(x95)
	fmul x96, x28, x95
	fadd x94, x94, x96
	fmul x94, x94, x37
	fadd x30, x30, x94
	sw x30, 0(x36)
	fmul x30, x18, x93
	lw x93, 9(x19)
	lw x93, 0(x93)
	fmul x28, x28, x93
	fadd x28, x30, x28
	fmul x28, x28, x37
	fadd x28, x31, x28
	sw x28, 1(x36)
	fmul x18, x18, x95
	fmul x20, x20, x93
	fadd x18, x18, x20
	fmul x18, x18, x37
	fadd x18, x35, x18
	sw x18, 2(x36)
iter_trace_diffuse_rays_cont_b2477:
# B2477
	lw x18, 6(x19)
	lw x20, 0(x36)
	fmul x28, x20, x20
	lw x30, 1(x36)
	fmul x31, x30, x30
	fadd x28, x28, x31
	lw x31, 2(x36)
	fmul x35, x31, x31
	fadd x28, x28, x35
	fsqrt x28, x28
	bfeq x28, zero, iter_trace_diffuse_rays_bfneqelse_b2479
# B2478
	bne x18, zero, iter_trace_diffuse_rays_beqelse_b2481
# B2480
	fdiv x18, x33, x28
	j iter_trace_diffuse_rays_cont_b2482 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2481:
# B2481
	fdiv x18, x38, x28
	j iter_trace_diffuse_rays_cont_b2482 # adhoc jump(2)
iter_trace_diffuse_rays_bfneqelse_b2479:
# B2479
	mv x18, x33
iter_trace_diffuse_rays_cont_b2482:
# B2482
	fmul x20, x20, x18
	sw x20, 0(x36)
	fmul x20, x30, x18
	sw x20, 1(x36)
	fmul x18, x31, x18
	sw x18, 2(x36)
iter_trace_diffuse_rays_cont_b2483:
# B2483
	lw x18, 0(x19)
	lw x20, 8(x19)
	lw x20, 0(x20)
	sw x20, 0(x39)
	lw x20, 8(x19)
	lw x20, 1(x20)
	sw x20, 1(x39)
	lw x20, 8(x19)
	lw x20, 2(x20)
	sw x20, 2(x39)
	bne x18, x100, iter_trace_diffuse_rays_beqelse_b2485
# B2484
	lw x18, 0(x29)
	lw x20, 5(x19)
	lw x20, 0(x20)
	fsub x18, x18, x20
	fmul x20, x18, x40
	floor x20, x20
	fmul x20, x20, x5
	fsub x18, x18, x20
	fle x18, x6, x18
	xori x18, x18, 1
	lw x20, 2(x29)
	lw x28, 5(x19)
	lw x28, 2(x28)
	fsub x20, x20, x28
	fmul x28, x20, x40
	floor x28, x28
	fmul x28, x28, x5
	fsub x20, x20, x28
	fle x20, x6, x20
	xori x20, x20, 1
	bne x18, zero, iter_trace_diffuse_rays_beqelse_b2487
# B2486
	bne x20, zero, iter_trace_diffuse_rays_beqelse_b2489
# B2488
	lui x18, 276464
	j iter_trace_diffuse_rays_cont_b2492 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2489:
# B2489
	mv x18, zero
	j iter_trace_diffuse_rays_cont_b2492 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2487:
# B2487
	bne x20, zero, iter_trace_diffuse_rays_beqelse_b2491
# B2490
	mv x18, zero
	j iter_trace_diffuse_rays_cont_b2492 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2491:
# B2491
	lui x18, 276464
iter_trace_diffuse_rays_cont_b2492:
# B2492
	sw x18, 1(x39)
	j iter_trace_diffuse_rays_cont_b2568 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2485:
# B2485
	bne x18, x12, iter_trace_diffuse_rays_beqelse_b2494
# B2493
	lw x18, 1(x29)
	fmul x18, x18, x65
	fle x20, x18, zero
	xori x20, x20, 1
	fabs x18, x18
	mv x30, x66
	mv x28, x18
iter_trace_diffuse_rays_loop_b2495:
# B2495
	bfle x28, x30, iter_trace_diffuse_rays_bfgtelse_b2498
# B2496
	fmul x30, x30, x67
	j iter_trace_diffuse_rays_loop_b2495 # loopback to while entry from B2496
iter_trace_diffuse_rays_bfgtelse_b2498:
# B2498
	mv x31, x18
	mv x35, x30
	j	iter_trace_diffuse_rays_loop_b2499 # jumping over moved block
iter_trace_diffuse_rays_bfgtelse_b2503:	#moved
# B2503
	mv x35, x18
iter_trace_diffuse_rays_loop_b2499:
# B2499
	bfle x66, x31, iter_trace_diffuse_rays_bfgtelse_b2501
# B2504
	fle x18, x68, x31
	bne x18, zero, iter_trace_diffuse_rays_beqelse_b2506
# B2505
	mv x28, x31
	j iter_trace_diffuse_rays_cont_b2507 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2506:
# B2506
	fsub x28, x31, x68
iter_trace_diffuse_rays_cont_b2507:
# B2507
	xor x18, x18, x20
	bfle x69, x28, iter_trace_diffuse_rays_bfgtelse_b2509
# B2508
	mv x20, x28
	j iter_trace_diffuse_rays_cont_b2510 # adhoc jump(2)
iter_trace_diffuse_rays_bfgtelse_b2509:
# B2509
	fsub x20, x68, x28
iter_trace_diffuse_rays_cont_b2510:
# B2510
	bfle x7, x20, iter_trace_diffuse_rays_bfgtelse_b2512
# B2511
	fmul x28, x20, x20
	fmul x30, x28, x72
	fadd x30, x71, x30
	fmul x30, x28, x30
	fadd x30, x70, x30
	fmul x28, x28, x30
	fadd x28, x33, x28
	fmul x20, x20, x28
	j iter_trace_diffuse_rays_cont_b2513 # adhoc jump(2)
iter_trace_diffuse_rays_bfgtelse_b2512:
# B2512
	fsub x20, x69, x20
	fmul x20, x20, x20
	fmul x28, x20, x75
	fadd x28, x74, x28
	fmul x28, x20, x28
	fadd x28, x73, x28
	fmul x20, x20, x28
	fadd x20, x33, x20
iter_trace_diffuse_rays_cont_b2513:
# B2513
	fle x28, x20, zero
	beq x18, x28, iter_trace_diffuse_rays_bneelse_b2515
# B2514
	mv x18, x20
	j iter_trace_diffuse_rays_cont_b2516 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2515:
# B2515
	fsub x18, zero, x20
iter_trace_diffuse_rays_cont_b2516:
# B2516
	fmul x18, x18, x18
	fmul x20, x76, x18
	sw x20, 0(x39)
	fsub x18, x33, x18
	fmul x18, x76, x18
	sw x18, 1(x39)
	j iter_trace_diffuse_rays_cont_b2568 # adhoc jump(2)
iter_trace_diffuse_rays_bfgtelse_b2501:
# B2501
	fdiv x18, x35, x67
	bfle x31, x35, iter_trace_diffuse_rays_bfgtelse_b2503
# B2502
	fsub x31, x31, x35
	mv x35, x18
	j iter_trace_diffuse_rays_loop_b2499 # loopback to while entry from B2502
iter_trace_diffuse_rays_beqelse_b2494:
# B2494
	bne x18, x32, iter_trace_diffuse_rays_beqelse_b2518
# B2517
	lw x18, 0(x29)
	lw x20, 5(x19)
	lw x20, 0(x20)
	fsub x18, x18, x20
	lw x20, 2(x29)
	lw x28, 5(x19)
	lw x28, 2(x28)
	fsub x20, x20, x28
	fmul x18, x18, x18
	fmul x20, x20, x20
	fadd x18, x18, x20
	fsqrt x18, x18
	fdiv x18, x18, x6
	floor x20, x18
	fsub x18, x18, x20
	fmul x18, x18, x77
	fabs x18, x18
	mv x28, x66
	mv x20, x18
iter_trace_diffuse_rays_loop_b2519:
# B2519
	bfle x20, x28, iter_trace_diffuse_rays_bfgtelse_b2522
# B2520
	fmul x28, x28, x67
	j iter_trace_diffuse_rays_loop_b2519 # loopback to while entry from B2520
iter_trace_diffuse_rays_bfgtelse_b2522:
# B2522
	mv x31, x28
	mv x30, x18
	j	iter_trace_diffuse_rays_loop_b2523 # jumping over moved block
iter_trace_diffuse_rays_bfgtelse_b2527:	#moved
# B2527
	mv x31, x18
iter_trace_diffuse_rays_loop_b2523:
# B2523
	bfle x66, x30, iter_trace_diffuse_rays_bfgtelse_b2525
# B2528
	fle x18, x68, x30
	bne x18, zero, iter_trace_diffuse_rays_beqelse_b2530
# B2529
	mv x20, x30
	j iter_trace_diffuse_rays_cont_b2531 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2530:
# B2530
	fsub x20, x30, x68
iter_trace_diffuse_rays_cont_b2531:
# B2531
	xori x18, x18, 1
	fle x28, x69, x20
	bne x28, zero, iter_trace_diffuse_rays_beqelse_b2533
	j iter_trace_diffuse_rays_cont_b2534 # adhoc jump(3)
iter_trace_diffuse_rays_beqelse_b2533:
# B2533
	fsub x20, x68, x20
iter_trace_diffuse_rays_cont_b2534:
# B2534
	xor x18, x28, x18
	bfle x7, x20, iter_trace_diffuse_rays_bfgtelse_b2536
iter_trace_diffuse_rays_cont_b2535:
# B2535
	fmul x20, x20, x20
	fmul x28, x20, x75
	fadd x28, x74, x28
	fmul x28, x20, x28
	fadd x28, x73, x28
	fmul x20, x20, x28
	fadd x20, x33, x20
	j iter_trace_diffuse_rays_cont_b2537 # adhoc jump(2)
iter_trace_diffuse_rays_bfgtelse_b2536:
# B2536
	fsub x20, x69, x20
	fmul x28, x20, x20
	fmul x30, x28, x72
	fadd x30, x71, x30
	fmul x30, x28, x30
	fadd x30, x70, x30
	fmul x28, x28, x30
	fadd x28, x33, x28
	fmul x20, x20, x28
iter_trace_diffuse_rays_cont_b2537:
# B2537
	fle x28, x20, zero
	beq x18, x28, iter_trace_diffuse_rays_bneelse_b2539
# B2538
	mv x18, x20
	j iter_trace_diffuse_rays_cont_b2540 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2539:
# B2539
	fsub x18, zero, x20
iter_trace_diffuse_rays_cont_b2540:
# B2540
	fmul x18, x18, x18
	fmul x20, x18, x76
	sw x20, 1(x39)
	fsub x18, x33, x18
	fmul x18, x18, x76
	sw x18, 2(x39)
	j iter_trace_diffuse_rays_cont_b2568 # adhoc jump(2)
iter_trace_diffuse_rays_bfgtelse_b2525:
# B2525
	fdiv x18, x31, x67
	bfle x30, x31, iter_trace_diffuse_rays_bfgtelse_b2527
# B2526
	fsub x30, x30, x31
	mv x31, x18
	j iter_trace_diffuse_rays_loop_b2523 # loopback to while entry from B2526
iter_trace_diffuse_rays_beqelse_b2518:
# B2518
	bne x18, x78, iter_trace_diffuse_rays_beqelse_b2568
# B2541
	lw x18, 0(x29)
	lw x20, 5(x19)
	lw x20, 0(x20)
	fsub x18, x18, x20
	lw x20, 4(x19)
	lw x20, 0(x20)
	fsqrt x20, x20
	fmul x18, x18, x20
	lw x20, 2(x29)
	lw x28, 5(x19)
	lw x28, 2(x28)
	fsub x20, x20, x28
	lw x28, 4(x19)
	lw x28, 2(x28)
	fsqrt x28, x28
	fmul x20, x20, x28
	fmul x28, x18, x18
	fmul x30, x20, x20
	fadd x28, x28, x30
	fabs x30, x18
	bfle x79, x30, iter_trace_diffuse_rays_bfgtelse_b2543
# B2544
	lui x18, 268032
	j iter_trace_diffuse_rays_cont_b2553 # adhoc jump(2)
iter_trace_diffuse_rays_bfgtelse_b2543:
# B2543
	fdiv x18, x20, x18
	fabs x18, x18
	fle x20, x18, zero
	xori x20, x20, 1
	fabs x30, x18
	bfle x8, x30, iter_trace_diffuse_rays_bfgtelse_b2546
# B2545
	fmul x20, x18, x18
	fmul x30, x20, x85
	fadd x30, x84, x30
	fmul x30, x20, x30
	fadd x30, x83, x30
	fmul x30, x20, x30
	fadd x30, x82, x30
	fmul x30, x20, x30
	fadd x30, x81, x30
	fmul x30, x20, x30
	fadd x30, x80, x30
	fmul x20, x20, x30
	fadd x20, x33, x20
	fmul x18, x18, x20
	j iter_trace_diffuse_rays_cont_b2552 # adhoc jump(2)
iter_trace_diffuse_rays_bfgtelse_b2546:
# B2546
	bfle x86, x30, iter_trace_diffuse_rays_bfgtelse_b2548
# B2547
	fsub x18, x30, x33
	fadd x30, x30, x33
	fdiv x18, x18, x30
	fmul x30, x18, x18
	fmul x31, x30, x85
	fadd x31, x84, x31
	fmul x31, x30, x31
	fadd x31, x83, x31
	fmul x31, x30, x31
	fadd x31, x82, x31
	fmul x31, x30, x31
	fadd x31, x81, x31
	fmul x31, x30, x31
	fadd x31, x80, x31
	fmul x30, x30, x31
	fadd x30, x33, x30
	fmul x18, x18, x30
	fadd x18, x7, x18
	j iter_trace_diffuse_rays_cont_b2549 # adhoc jump(2)
iter_trace_diffuse_rays_bfgtelse_b2548:
# B2548
	fdiv x18, x33, x30
	fmul x30, x18, x18
	fmul x31, x30, x85
	fadd x31, x84, x31
	fmul x31, x30, x31
	fadd x31, x83, x31
	fmul x31, x30, x31
	fadd x31, x82, x31
	fmul x31, x30, x31
	fadd x31, x81, x31
	fmul x31, x30, x31
	fadd x31, x80, x31
	fmul x30, x30, x31
	fadd x30, x33, x30
	fmul x18, x18, x30
	fsub x18, x69, x18
iter_trace_diffuse_rays_cont_b2549:
# B2549
	bne x20, zero, iter_trace_diffuse_rays_beqelse_b2552
# B2550
	fsub x18, zero, x18
iter_trace_diffuse_rays_beqelse_b2552:
iter_trace_diffuse_rays_cont_b2552:
# B2552
	fmul x18, x18, x87
	fdiv x18, x18, x77
iter_trace_diffuse_rays_cont_b2553:
# B2553
	floor x20, x18
	fsub x18, x18, x20
	lw x20, 1(x29)
	lw x30, 5(x19)
	lw x30, 1(x30)
	fsub x20, x20, x30
	lw x30, 4(x19)
	lw x30, 1(x30)
	fsqrt x30, x30
	fmul x20, x20, x30
	fabs x30, x28
	bfle x79, x30, iter_trace_diffuse_rays_bfgtelse_b2554
# B2555
	lui x20, 268032
	j iter_trace_diffuse_rays_cont_b2564 # adhoc jump(2)
iter_trace_diffuse_rays_bfgtelse_b2554:
# B2554
	fdiv x20, x20, x28
	fabs x20, x20
	fle x28, x20, zero
	xori x28, x28, 1
	fabs x30, x20
	bfle x8, x30, iter_trace_diffuse_rays_bfgtelse_b2557
# B2556
	fmul x28, x20, x20
	fmul x30, x28, x85
	fadd x30, x84, x30
	fmul x30, x28, x30
	fadd x30, x83, x30
	fmul x30, x28, x30
	fadd x30, x82, x30
	fmul x30, x28, x30
	fadd x30, x81, x30
	fmul x30, x28, x30
	fadd x30, x80, x30
	fmul x28, x28, x30
	fadd x28, x33, x28
	fmul x20, x20, x28
	j iter_trace_diffuse_rays_cont_b2563 # adhoc jump(2)
iter_trace_diffuse_rays_bfgtelse_b2557:
# B2557
	bfle x86, x30, iter_trace_diffuse_rays_bfgtelse_b2559
# B2558
	fsub x20, x30, x33
	fadd x30, x30, x33
	fdiv x20, x20, x30
	fmul x30, x20, x20
	fmul x31, x30, x85
	fadd x31, x84, x31
	fmul x31, x30, x31
	fadd x31, x83, x31
	fmul x31, x30, x31
	fadd x31, x82, x31
	fmul x31, x30, x31
	fadd x31, x81, x31
	fmul x31, x30, x31
	fadd x31, x80, x31
	fmul x30, x30, x31
	fadd x30, x33, x30
	fmul x20, x20, x30
	fadd x20, x7, x20
	j iter_trace_diffuse_rays_cont_b2560 # adhoc jump(2)
iter_trace_diffuse_rays_bfgtelse_b2559:
# B2559
	fdiv x20, x33, x30
	fmul x30, x20, x20
	fmul x31, x30, x85
	fadd x31, x84, x31
	fmul x31, x30, x31
	fadd x31, x83, x31
	fmul x31, x30, x31
	fadd x31, x82, x31
	fmul x31, x30, x31
	fadd x31, x81, x31
	fmul x31, x30, x31
	fadd x31, x80, x31
	fmul x30, x30, x31
	fadd x30, x33, x30
	fmul x20, x20, x30
	fsub x20, x69, x20
iter_trace_diffuse_rays_cont_b2560:
# B2560
	bne x28, zero, iter_trace_diffuse_rays_beqelse_b2563
# B2561
	fsub x20, zero, x20
iter_trace_diffuse_rays_beqelse_b2563:
iter_trace_diffuse_rays_cont_b2563:
# B2563
	fmul x20, x20, x87
	fdiv x20, x20, x77
iter_trace_diffuse_rays_cont_b2564:
# B2564
	floor x28, x20
	fsub x20, x20, x28
	fsub x18, x37, x18
	fmul x18, x18, x18
	fsub x18, x88, x18
	fsub x20, x37, x20
	fmul x20, x20, x20
	fsub x18, x18, x20
	bfle zero, x18, iter_trace_diffuse_rays_bfgtelse_b2565
# B2566
	mv x20, zero
	j iter_trace_diffuse_rays_cont_b2567 # adhoc jump(2)
iter_trace_diffuse_rays_bfgtelse_b2565:
# B2565
	mv x20, x18
iter_trace_diffuse_rays_cont_b2567:
# B2567
	fmul x18, x76, x20
	fdiv x18, x18, x89
	sw x18, 2(x39)
iter_trace_diffuse_rays_beqelse_b2568:
iter_trace_diffuse_rays_cont_b2568:
# B2568
	lw x18, 0(x21)
	mv x21, x18
	mv x20, zero
iter_trace_diffuse_rays_bneelse_b2569:
iter_trace_diffuse_rays_loop_b2569:
# B2569
	lwr x18, x21, x20
	lw x28, 0(x18)
	beq x28, x24, iter_trace_diffuse_rays_bneelse_b2795
# B2571
	bne x28, x22, iter_trace_diffuse_rays_beqelse_b2573
# B2572
	mv x28, x100
	j iter_trace_diffuse_rays_cont_b2705 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2573:
# B2573
	lwr x30, x26, x28
	lw x31, 0(x29)
	lw x35, 5(x30)
	lw x35, 0(x35)
	fsub x31, x31, x35
	lw x35, 1(x29)
	lw x37, 5(x30)
	lw x37, 1(x37)
	fsub x35, x35, x37
	lw x37, 2(x29)
	lw x38, 5(x30)
	lw x38, 2(x38)
	fsub x37, x37, x38
	lw x38, 1(x9)
	lwr x28, x38, x28
	lw x38, 1(x30)
	bne x38, x100, iter_trace_diffuse_rays_beqelse_b2575
# B2574
	lw x38, 0(x9)
	lw x40, 0(x28)
	fsub x40, x40, x31
	lw x5, 1(x28)
	fmul x40, x40, x5
	lw x6, 1(x38)
	fmul x65, x40, x6
	fadd x65, x65, x35
	fabs x65, x65
	lw x66, 4(x30)
	lw x66, 1(x66)
	bfle x66, x65, iter_trace_diffuse_rays_bfgtelse_b2581
# B2577
	lw x65, 2(x38)
	fmul x65, x40, x65
	fadd x65, x65, x37
	fabs x65, x65
	lw x66, 4(x30)
	lw x66, 2(x66)
	bfle x66, x65, iter_trace_diffuse_rays_bfgtelse_b2581
# B2579
	feq x5, x5, zero
	xori x5, x5, 1
	mv x65, x5
# B2580
	bne x65, zero, iter_trace_diffuse_rays_beqelse_b2582
iter_trace_diffuse_rays_bfgtelse_b2581:
# B2581
	lw x40, 2(x28)
	fsub x40, x40, x35
	lw x5, 3(x28)
	fmul x40, x40, x5
	lw x65, 0(x38)
	fmul x66, x40, x65
	fadd x66, x66, x31
	fabs x66, x66
	lw x67, 4(x30)
	lw x67, 0(x67)
	bfle x67, x66, iter_trace_diffuse_rays_bfgtelse_b2588
# B2584
	lw x38, 2(x38)
	fmul x38, x40, x38
	fadd x38, x38, x37
	fabs x38, x38
	lw x66, 4(x30)
	lw x66, 2(x66)
	bfle x66, x38, iter_trace_diffuse_rays_bfgtelse_b2588
# B2586
	feq x38, x5, zero
	xori x38, x38, 1
	mv x5, x38
# B2587
	bne x5, zero, iter_trace_diffuse_rays_beqelse_b2589
iter_trace_diffuse_rays_bfgtelse_b2588:
# B2588
	lw x38, 4(x28)
	fsub x37, x38, x37
	lw x28, 5(x28)
	fmul x37, x37, x28
	fmul x38, x37, x65
	fadd x31, x38, x31
	fabs x31, x31
	lw x38, 4(x30)
	lw x38, 0(x38)
	bfle x38, x31, iter_trace_diffuse_rays_bfgtelse_b2615
# B2591
	fmul x31, x37, x6
	fadd x31, x31, x35
	fabs x31, x31
	lw x30, 4(x30)
	lw x30, 1(x30)
	bfle x30, x31, iter_trace_diffuse_rays_bfgtelse_b2615
# B2593
	feq x28, x28, zero
	xori x28, x28, 1
	mv x30, x28
# B2594
	bne x30, zero, iter_trace_diffuse_rays_beqelse_b2596
	j iter_trace_diffuse_rays_cont_b2615 # adhoc jump(3)
iter_trace_diffuse_rays_beqelse_b2596:
# B2596
	sw x37, 0(x23)
	mv x28, x32
	j iter_trace_diffuse_rays_cont_b2614 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2589:
# B2589
	sw x40, 0(x23)
	mv x28, x12
	j iter_trace_diffuse_rays_cont_b2614 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2582:
# B2582
	sw x40, 0(x23)
	mv x28, x100
	j iter_trace_diffuse_rays_cont_b2614 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2575:
# B2575
	bne x38, x12, iter_trace_diffuse_rays_beqelse_b2598
# B2597
	lw x30, 0(x28)
	bfle zero, x30, iter_trace_diffuse_rays_bfgtelse_b2615
# B2600
	lw x30, 1(x28)
	fmul x30, x30, x31
	lw x31, 2(x28)
	fmul x31, x31, x35
	fadd x30, x30, x31
	lw x28, 3(x28)
	fmul x28, x28, x37
	fadd x28, x30, x28
	sw x28, 0(x23)
	mv x28, x100
	j iter_trace_diffuse_rays_cont_b2614 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2598:
# B2598
	lw x38, 0(x28)
	bfeq x38, zero, iter_trace_diffuse_rays_bfneqelse_b2615
# B2601
	lw x40, 1(x28)
	fmul x40, x40, x31
	lw x5, 2(x28)
	fmul x5, x5, x35
	fadd x40, x40, x5
	lw x5, 3(x28)
	fmul x5, x5, x37
	fadd x40, x40, x5
	fmul x5, x31, x31
	lw x6, 4(x30)
	lw x6, 0(x6)
	fmul x5, x5, x6
	fmul x6, x35, x35
	lw x65, 4(x30)
	lw x65, 1(x65)
	fmul x6, x6, x65
	fadd x5, x5, x6
	fmul x6, x37, x37
	lw x65, 4(x30)
	lw x65, 2(x65)
	fmul x6, x6, x65
	fadd x5, x5, x6
	lw x6, 3(x30)
	bne x6, zero, iter_trace_diffuse_rays_beqelse_b2604
# B2603
	mv x31, x5
	j iter_trace_diffuse_rays_cont_b2605 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2604:
# B2604
	fmul x6, x35, x37
	lw x65, 9(x30)
	lw x65, 0(x65)
	fmul x6, x6, x65
	fadd x5, x5, x6
	fmul x37, x37, x31
	lw x6, 9(x30)
	lw x6, 1(x6)
	fmul x37, x37, x6
	fadd x37, x5, x37
	fmul x31, x31, x35
	lw x35, 9(x30)
	lw x35, 2(x35)
	fmul x31, x31, x35
	fadd x31, x37, x31
iter_trace_diffuse_rays_cont_b2605:
# B2605
	lw x35, 1(x30)
	bne x35, x32, iter_trace_diffuse_rays_beqelse_b2608
# B2606
	fsub x31, x31, x33
iter_trace_diffuse_rays_beqelse_b2608:
# B2608
	fmul x35, x40, x40
	fmul x31, x38, x31
	fsub x31, x35, x31
	bfle x31, zero, iter_trace_diffuse_rays_bfgtelse_b2615
# B2610
	lw x30, 6(x30)
	fsqrt x31, x31
	bne x30, zero, iter_trace_diffuse_rays_beqelse_b2612
# B2611
	fsub x30, x40, x31
	lw x28, 4(x28)
	fmul x28, x30, x28
	sw x28, 0(x23)
	j iter_trace_diffuse_rays_cont_b2613 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2612:
# B2612
	fadd x30, x40, x31
	lw x28, 4(x28)
	fmul x28, x30, x28
	sw x28, 0(x23)
iter_trace_diffuse_rays_cont_b2613:
# B2613
	mv x28, x100
iter_trace_diffuse_rays_cont_b2614:
# B2614
	bne x28, zero, iter_trace_diffuse_rays_beqelse_b2616
iter_trace_diffuse_rays_bfgtelse_b2615:
iter_trace_diffuse_rays_bfneqelse_b2615:
iter_trace_diffuse_rays_cont_b2615:
# B2615
	mv x28, zero
	j iter_trace_diffuse_rays_cont_b2705 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2616:
# B2616
	lw x28, 0(x23)
	bfle x34, x28, iter_trace_diffuse_rays_bfgtelse_b2617
# B2618
	mv x31, x18
	mv x30, x100
iter_trace_diffuse_rays_loop_b2619:
# B2619
	lwr x28, x31, x30
	beq x28, x24, iter_trace_diffuse_rays_bneelse_b2703
# B2621
	lwr x28, x25, x28
	mv x37, x28
	mv x35, zero
iter_trace_diffuse_rays_beqelse_b2622:
iter_trace_diffuse_rays_loop_b2622:
# B2622
	lwr x28, x37, x35
	beq x28, x24, iter_trace_diffuse_rays_bneelse_b2700
# B2624
	lwr x28, x37, x35
	lwr x38, x26, x28
	lw x40, 0(x29)
	lw x5, 5(x38)
	lw x5, 0(x5)
	fsub x5, x40, x5
	lw x6, 1(x29)
	lw x65, 5(x38)
	lw x65, 1(x65)
	fsub x65, x6, x65
	lw x66, 2(x29)
	lw x67, 5(x38)
	lw x67, 2(x67)
	fsub x67, x66, x67
	lw x68, 1(x9)
	lwr x68, x68, x28
	lw x69, 1(x38)
	bne x69, x100, iter_trace_diffuse_rays_beqelse_b2626
# B2625
	lw x69, 0(x9)
	lw x7, 0(x68)
	fsub x7, x7, x5
	lw x70, 1(x68)
	fmul x7, x7, x70
	lw x71, 1(x69)
	fmul x72, x7, x71
	fadd x72, x72, x65
	fabs x72, x72
	lw x73, 4(x38)
	lw x73, 1(x73)
	bfle x73, x72, iter_trace_diffuse_rays_bfgtelse_b2632
# B2628
	lw x72, 2(x69)
	fmul x72, x7, x72
	fadd x72, x72, x67
	fabs x72, x72
	lw x73, 4(x38)
	lw x73, 2(x73)
	bfle x73, x72, iter_trace_diffuse_rays_bfgtelse_b2632
# B2630
	feq x70, x70, zero
	xori x70, x70, 1
	mv x72, x70
# B2631
	bne x72, zero, iter_trace_diffuse_rays_beqelse_b2633
iter_trace_diffuse_rays_bfgtelse_b2632:
# B2632
	lw x7, 2(x68)
	fsub x7, x7, x65
	lw x70, 3(x68)
	fmul x7, x7, x70
	lw x72, 0(x69)
	fmul x73, x7, x72
	fadd x73, x73, x5
	fabs x73, x73
	lw x74, 4(x38)
	lw x74, 0(x74)
	bfle x74, x73, iter_trace_diffuse_rays_bfgtelse_b2639
# B2635
	lw x69, 2(x69)
	fmul x69, x7, x69
	fadd x69, x69, x67
	fabs x69, x69
	lw x73, 4(x38)
	lw x73, 2(x73)
	bfle x73, x69, iter_trace_diffuse_rays_bfgtelse_b2639
# B2637
	feq x69, x70, zero
	xori x69, x69, 1
	mv x70, x69
# B2638
	bne x70, zero, iter_trace_diffuse_rays_beqelse_b2640
iter_trace_diffuse_rays_bfgtelse_b2639:
# B2639
	lw x69, 4(x68)
	fsub x67, x69, x67
	lw x68, 5(x68)
	fmul x67, x67, x68
	fmul x69, x67, x72
	fadd x5, x69, x5
	fabs x5, x5
	lw x69, 4(x38)
	lw x69, 0(x69)
	bfle x69, x5, iter_trace_diffuse_rays_bfgtelse_b2646
# B2642
	fmul x5, x67, x71
	fadd x5, x5, x65
	fabs x5, x5
	lw x38, 4(x38)
	lw x38, 1(x38)
	bfle x38, x5, iter_trace_diffuse_rays_bfgtelse_b2646
# B2644
	feq x38, x68, zero
	xori x38, x38, 1
	mv x5, x38
# B2645
	bne x5, zero, iter_trace_diffuse_rays_beqelse_b2647
iter_trace_diffuse_rays_bfgtelse_b2646:
# B2646
	mv x38, zero
	j iter_trace_diffuse_rays_cont_b2665 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2647:
# B2647
	sw x67, 0(x23)
	mv x38, x32
	j iter_trace_diffuse_rays_cont_b2665 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2640:
# B2640
	sw x7, 0(x23)
	mv x38, x12
	j iter_trace_diffuse_rays_cont_b2665 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2633:
# B2633
	sw x7, 0(x23)
	mv x38, x100
	j iter_trace_diffuse_rays_cont_b2665 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2626:
# B2626
	bne x69, x12, iter_trace_diffuse_rays_beqelse_b2649
# B2648
	lw x38, 0(x68)
	bfle zero, x38, iter_trace_diffuse_rays_bfgtelse_b2650
# B2651
	lw x38, 1(x68)
	fmul x38, x38, x5
	lw x5, 2(x68)
	fmul x5, x5, x65
	fadd x38, x38, x5
	lw x5, 3(x68)
	fmul x5, x5, x67
	fadd x38, x38, x5
	sw x38, 0(x23)
	mv x38, x100
	j iter_trace_diffuse_rays_cont_b2665 # adhoc jump(2)
iter_trace_diffuse_rays_bfgtelse_b2650:
# B2650
	mv x38, zero
	j iter_trace_diffuse_rays_cont_b2665 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2649:
# B2649
	lw x69, 0(x68)
	bfeq x69, zero, iter_trace_diffuse_rays_bfneqelse_b2653
# B2652
	lw x7, 1(x68)
	fmul x7, x7, x5
	lw x70, 2(x68)
	fmul x70, x70, x65
	fadd x7, x7, x70
	lw x70, 3(x68)
	fmul x70, x70, x67
	fadd x7, x7, x70
	fmul x70, x5, x5
	lw x71, 4(x38)
	lw x71, 0(x71)
	fmul x70, x70, x71
	fmul x71, x65, x65
	lw x72, 4(x38)
	lw x72, 1(x72)
	fmul x71, x71, x72
	fadd x70, x70, x71
	fmul x71, x67, x67
	lw x72, 4(x38)
	lw x72, 2(x72)
	fmul x71, x71, x72
	fadd x70, x70, x71
	lw x71, 3(x38)
	bne x71, zero, iter_trace_diffuse_rays_beqelse_b2655
# B2654
	mv x5, x70
	j iter_trace_diffuse_rays_cont_b2656 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2655:
# B2655
	fmul x71, x65, x67
	lw x72, 9(x38)
	lw x72, 0(x72)
	fmul x71, x71, x72
	fadd x70, x70, x71
	fmul x67, x67, x5
	lw x71, 9(x38)
	lw x71, 1(x71)
	fmul x67, x67, x71
	fadd x67, x70, x67
	fmul x5, x5, x65
	lw x65, 9(x38)
	lw x65, 2(x65)
	fmul x5, x5, x65
	fadd x5, x67, x5
iter_trace_diffuse_rays_cont_b2656:
# B2656
	lw x65, 1(x38)
	bne x65, x32, iter_trace_diffuse_rays_beqelse_b2659
# B2657
	fsub x5, x5, x33
iter_trace_diffuse_rays_beqelse_b2659:
# B2659
	fmul x65, x7, x7
	fmul x5, x69, x5
	fsub x5, x65, x5
	bfle x5, zero, iter_trace_diffuse_rays_bfgtelse_b2660
# B2661
	lw x38, 6(x38)
	fsqrt x5, x5
	bne x38, zero, iter_trace_diffuse_rays_beqelse_b2663
# B2662
	fsub x38, x7, x5
	lw x5, 4(x68)
	fmul x38, x38, x5
	sw x38, 0(x23)
	j iter_trace_diffuse_rays_cont_b2664 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2663:
# B2663
	fadd x38, x7, x5
	lw x5, 4(x68)
	fmul x38, x38, x5
	sw x38, 0(x23)
iter_trace_diffuse_rays_cont_b2664:
# B2664
	mv x38, x100
	j iter_trace_diffuse_rays_cont_b2665 # adhoc jump(2)
iter_trace_diffuse_rays_bfgtelse_b2660:
# B2660
	mv x38, zero
	j iter_trace_diffuse_rays_cont_b2665 # adhoc jump(2)
iter_trace_diffuse_rays_bfneqelse_b2653:
# B2653
	mv x38, zero
iter_trace_diffuse_rays_cont_b2665:
# B2665
	lw x5, 0(x23)
	bne x38, zero, iter_trace_diffuse_rays_beqelse_b2667
# B2666
	mv x38, zero
	j iter_trace_diffuse_rays_cont_b2668 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2667:
# B2667
	fle x38, x90, x5
	xori x38, x38, 1
iter_trace_diffuse_rays_cont_b2668:
# B2668
	addi x35, x35, 1
	bne x38, zero, iter_trace_diffuse_rays_beqelse_b2670
# B2669
	lwr x28, x26, x28
	lw x28, 6(x28)
	beq x28, zero, iter_trace_diffuse_rays_bneelse_b2700
	j	iter_trace_diffuse_rays_beqelse_b2622 # moved need extra jump for 2622 at B2669
iter_trace_diffuse_rays_beqelse_b2670:
# B2670
	fadd x28, x5, x27
	lw x38, 0(x91)
	fmul x38, x38, x28
	fadd x38, x38, x40
	lw x40, 1(x91)
	fmul x40, x40, x28
	fadd x40, x40, x6
	lw x5, 2(x91)
	fmul x28, x5, x28
	fadd x28, x28, x66
	mv x6, x37
	mv x66, x40
	mv x65, x38
	mv x67, x28
	mv x5, zero
	j	iter_trace_diffuse_rays_loop_b2673 # jumping over moved block
iter_trace_diffuse_rays_bneelse_b2694:	#moved
# B2694
	addi x5, x5, 1
iter_trace_diffuse_rays_loop_b2673:
# B2673
	lwr x28, x6, x5
	bne x28, x24, iter_trace_diffuse_rays_beqelse_b2675
# B2674
	mv x38, x100
# B2696
	bne x38, zero, iter_trace_diffuse_rays_beqelse_b2698
	j	iter_trace_diffuse_rays_beqelse_b2622 # moved need extra jump for 2622 at B2696
iter_trace_diffuse_rays_beqelse_b2698:
# B2698
	mv x28, x100
iter_trace_diffuse_rays_cont_b2699:
# B2699
	bne x28, zero, iter_trace_diffuse_rays_beqelse_b2701
iter_trace_diffuse_rays_bneelse_b2700:
iter_trace_diffuse_rays_cont_b2700:
# B2700
	addi x30, x30, 1
	j iter_trace_diffuse_rays_loop_b2619 # loopback to while entry from B2700
iter_trace_diffuse_rays_beqelse_b2701:
# B2701
	mv x35, x100
# B2702
	bne x35, zero, iter_trace_diffuse_rays_beqelse_b2704
iter_trace_diffuse_rays_bneelse_b2703:
# B2703
	mv x28, zero
	j iter_trace_diffuse_rays_cont_b2705 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2704:
# B2704
	mv x28, x100
	j iter_trace_diffuse_rays_cont_b2705 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2675:
# B2675
	lwr x28, x26, x28
	lw x38, 5(x28)
	lw x38, 0(x38)
	fsub x38, x65, x38
	lw x40, 5(x28)
	lw x40, 1(x40)
	fsub x40, x66, x40
	lw x68, 5(x28)
	lw x68, 2(x68)
	fsub x68, x67, x68
	lw x69, 1(x28)
	bne x69, x100, iter_trace_diffuse_rays_beqelse_b2677
# B2676
	fabs x38, x38
	lw x69, 4(x28)
	lw x69, 0(x69)
	bfle x69, x38, iter_trace_diffuse_rays_bfgtelse_b2683
# B2679
	fabs x38, x40
	lw x40, 4(x28)
	lw x40, 1(x40)
	bfle x40, x38, iter_trace_diffuse_rays_bfgtelse_b2683
# B2681
	fabs x38, x68
	lw x40, 4(x28)
	lw x40, 2(x40)
	fle x38, x40, x38
	xori x38, x38, 1
	mv x40, x38
# B2682
	bne x40, zero, iter_trace_diffuse_rays_beqelse_b2684
iter_trace_diffuse_rays_bfgtelse_b2683:
# B2683
	lw x28, 6(x28)
	xori x28, x28, 1
	j iter_trace_diffuse_rays_cont_b2693 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2684:
# B2684
	lw x28, 6(x28)
	j iter_trace_diffuse_rays_cont_b2693 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2677:
# B2677
	bne x69, x12, iter_trace_diffuse_rays_beqelse_b2686
# B2685
	lw x69, 4(x28)
	lw x7, 0(x69)
	fmul x38, x7, x38
	lw x7, 1(x69)
	fmul x40, x7, x40
	fadd x38, x38, x40
	lw x40, 2(x69)
	fmul x40, x40, x68
	fadd x38, x38, x40
	lw x28, 6(x28)
	fle x38, zero, x38
	xori x38, x38, 1
	xor x28, x28, x38
	xori x28, x28, 1
	j iter_trace_diffuse_rays_cont_b2693 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2686:
# B2686
	fmul x69, x38, x38
	lw x7, 4(x28)
	lw x7, 0(x7)
	fmul x69, x69, x7
	fmul x7, x40, x40
	lw x70, 4(x28)
	lw x70, 1(x70)
	fmul x7, x7, x70
	fadd x69, x69, x7
	fmul x7, x68, x68
	lw x70, 4(x28)
	lw x70, 2(x70)
	fmul x7, x7, x70
	fadd x69, x69, x7
	lw x7, 3(x28)
	bne x7, zero, iter_trace_diffuse_rays_beqelse_b2688
# B2687
	mv x38, x69
	j iter_trace_diffuse_rays_cont_b2689 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2688:
# B2688
	fmul x7, x40, x68
	lw x70, 9(x28)
	lw x70, 0(x70)
	fmul x7, x7, x70
	fadd x69, x69, x7
	fmul x68, x68, x38
	lw x7, 9(x28)
	lw x7, 1(x7)
	fmul x68, x68, x7
	fadd x68, x69, x68
	fmul x38, x38, x40
	lw x40, 9(x28)
	lw x40, 2(x40)
	fmul x38, x38, x40
	fadd x38, x68, x38
iter_trace_diffuse_rays_cont_b2689:
# B2689
	lw x40, 1(x28)
	bne x40, x32, iter_trace_diffuse_rays_beqelse_b2692
# B2690
	fsub x38, x38, x33
iter_trace_diffuse_rays_beqelse_b2692:
# B2692
	lw x28, 6(x28)
	fle x38, zero, x38
	xori x38, x38, 1
	xor x28, x28, x38
	xori x28, x28, 1
iter_trace_diffuse_rays_cont_b2693:
# B2693
	beq x28, zero, iter_trace_diffuse_rays_bneelse_b2694
	j	iter_trace_diffuse_rays_beqelse_b2622 # moved need extra jump for 2622 at B2693
iter_trace_diffuse_rays_bfgtelse_b2617:
# B2617
	mv x28, zero
iter_trace_diffuse_rays_cont_b2705:
# B2705
	addi x20, x20, 1
	bne x28, zero, iter_trace_diffuse_rays_beqelse_b2707
	j	iter_trace_diffuse_rays_bneelse_b2569 # moved need extra jump for 2569 at B2705
iter_trace_diffuse_rays_beqelse_b2707:
# B2707
	mv x31, x18
	mv x30, x100
iter_trace_diffuse_rays_cont_b2708:
iter_trace_diffuse_rays_loop_b2708:
# B2708
	lwr x18, x31, x30
	beq x18, x24, iter_trace_diffuse_rays_bneelse_b2569
# B2710
	lwr x18, x25, x18
	mv x35, x18
	mv x28, zero
iter_trace_diffuse_rays_beqelse_b2711:
iter_trace_diffuse_rays_loop_b2711:
# B2711
	lwr x18, x35, x28
	beq x18, x24, iter_trace_diffuse_rays_bneelse_b2789
# B2713
	lwr x18, x35, x28
	lwr x37, x26, x18
	lw x38, 0(x29)
	lw x40, 5(x37)
	lw x40, 0(x40)
	fsub x40, x38, x40
	lw x5, 1(x29)
	lw x6, 5(x37)
	lw x6, 1(x6)
	fsub x6, x5, x6
	lw x65, 2(x29)
	lw x66, 5(x37)
	lw x66, 2(x66)
	fsub x66, x65, x66
	lw x67, 1(x9)
	lwr x67, x67, x18
	lw x68, 1(x37)
	bne x68, x100, iter_trace_diffuse_rays_beqelse_b2715
# B2714
	lw x68, 0(x9)
	lw x69, 0(x67)
	fsub x69, x69, x40
	lw x7, 1(x67)
	fmul x69, x69, x7
	lw x70, 1(x68)
	fmul x71, x69, x70
	fadd x71, x71, x6
	fabs x71, x71
	lw x72, 4(x37)
	lw x72, 1(x72)
	bfle x72, x71, iter_trace_diffuse_rays_bfgtelse_b2721
# B2717
	lw x71, 2(x68)
	fmul x71, x69, x71
	fadd x71, x71, x66
	fabs x71, x71
	lw x72, 4(x37)
	lw x72, 2(x72)
	bfle x72, x71, iter_trace_diffuse_rays_bfgtelse_b2721
# B2719
	feq x7, x7, zero
	xori x7, x7, 1
	mv x71, x7
# B2720
	bne x71, zero, iter_trace_diffuse_rays_beqelse_b2722
iter_trace_diffuse_rays_bfgtelse_b2721:
# B2721
	lw x69, 2(x67)
	fsub x69, x69, x6
	lw x7, 3(x67)
	fmul x69, x69, x7
	lw x71, 0(x68)
	fmul x72, x69, x71
	fadd x72, x72, x40
	fabs x72, x72
	lw x73, 4(x37)
	lw x73, 0(x73)
	bfle x73, x72, iter_trace_diffuse_rays_bfgtelse_b2728
# B2724
	lw x68, 2(x68)
	fmul x68, x69, x68
	fadd x68, x68, x66
	fabs x68, x68
	lw x72, 4(x37)
	lw x72, 2(x72)
	bfle x72, x68, iter_trace_diffuse_rays_bfgtelse_b2728
# B2726
	feq x68, x7, zero
	xori x68, x68, 1
	mv x7, x68
# B2727
	bne x7, zero, iter_trace_diffuse_rays_beqelse_b2729
iter_trace_diffuse_rays_bfgtelse_b2728:
# B2728
	lw x68, 4(x67)
	fsub x66, x68, x66
	lw x67, 5(x67)
	fmul x66, x66, x67
	fmul x68, x66, x71
	fadd x40, x68, x40
	fabs x40, x40
	lw x68, 4(x37)
	lw x68, 0(x68)
	bfle x68, x40, iter_trace_diffuse_rays_bfgtelse_b2735
# B2731
	fmul x40, x66, x70
	fadd x40, x40, x6
	fabs x40, x40
	lw x37, 4(x37)
	lw x37, 1(x37)
	bfle x37, x40, iter_trace_diffuse_rays_bfgtelse_b2735
# B2733
	feq x37, x67, zero
	xori x37, x37, 1
	mv x40, x37
# B2734
	bne x40, zero, iter_trace_diffuse_rays_beqelse_b2736
iter_trace_diffuse_rays_bfgtelse_b2735:
# B2735
	mv x37, zero
	j iter_trace_diffuse_rays_cont_b2754 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2736:
# B2736
	sw x66, 0(x23)
	mv x37, x32
	j iter_trace_diffuse_rays_cont_b2754 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2729:
# B2729
	sw x69, 0(x23)
	mv x37, x12
	j iter_trace_diffuse_rays_cont_b2754 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2722:
# B2722
	sw x69, 0(x23)
	mv x37, x100
	j iter_trace_diffuse_rays_cont_b2754 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2715:
# B2715
	bne x68, x12, iter_trace_diffuse_rays_beqelse_b2738
# B2737
	lw x37, 0(x67)
	bfle zero, x37, iter_trace_diffuse_rays_bfgtelse_b2739
# B2740
	lw x37, 1(x67)
	fmul x37, x37, x40
	lw x40, 2(x67)
	fmul x40, x40, x6
	fadd x37, x37, x40
	lw x40, 3(x67)
	fmul x40, x40, x66
	fadd x37, x37, x40
	sw x37, 0(x23)
	mv x37, x100
	j iter_trace_diffuse_rays_cont_b2754 # adhoc jump(2)
iter_trace_diffuse_rays_bfgtelse_b2739:
# B2739
	mv x37, zero
	j iter_trace_diffuse_rays_cont_b2754 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2738:
# B2738
	lw x68, 0(x67)
	bfeq x68, zero, iter_trace_diffuse_rays_bfneqelse_b2742
# B2741
	lw x69, 1(x67)
	fmul x69, x69, x40
	lw x7, 2(x67)
	fmul x7, x7, x6
	fadd x69, x69, x7
	lw x7, 3(x67)
	fmul x7, x7, x66
	fadd x69, x69, x7
	fmul x7, x40, x40
	lw x70, 4(x37)
	lw x70, 0(x70)
	fmul x7, x7, x70
	fmul x70, x6, x6
	lw x71, 4(x37)
	lw x71, 1(x71)
	fmul x70, x70, x71
	fadd x7, x7, x70
	fmul x70, x66, x66
	lw x71, 4(x37)
	lw x71, 2(x71)
	fmul x70, x70, x71
	fadd x7, x7, x70
	lw x70, 3(x37)
	bne x70, zero, iter_trace_diffuse_rays_beqelse_b2744
# B2743
	mv x40, x7
	j iter_trace_diffuse_rays_cont_b2745 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2744:
# B2744
	fmul x70, x6, x66
	lw x71, 9(x37)
	lw x71, 0(x71)
	fmul x70, x70, x71
	fadd x7, x7, x70
	fmul x66, x66, x40
	lw x70, 9(x37)
	lw x70, 1(x70)
	fmul x66, x66, x70
	fadd x66, x7, x66
	fmul x40, x40, x6
	lw x6, 9(x37)
	lw x6, 2(x6)
	fmul x40, x40, x6
	fadd x40, x66, x40
iter_trace_diffuse_rays_cont_b2745:
# B2745
	lw x6, 1(x37)
	bne x6, x32, iter_trace_diffuse_rays_beqelse_b2748
# B2746
	fsub x40, x40, x33
iter_trace_diffuse_rays_beqelse_b2748:
# B2748
	fmul x6, x69, x69
	fmul x40, x68, x40
	fsub x40, x6, x40
	bfle x40, zero, iter_trace_diffuse_rays_bfgtelse_b2749
# B2750
	lw x37, 6(x37)
	fsqrt x40, x40
	bne x37, zero, iter_trace_diffuse_rays_beqelse_b2752
# B2751
	fsub x37, x69, x40
	lw x40, 4(x67)
	fmul x37, x37, x40
	sw x37, 0(x23)
	j iter_trace_diffuse_rays_cont_b2753 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2752:
# B2752
	fadd x37, x69, x40
	lw x40, 4(x67)
	fmul x37, x37, x40
	sw x37, 0(x23)
iter_trace_diffuse_rays_cont_b2753:
# B2753
	mv x37, x100
	j iter_trace_diffuse_rays_cont_b2754 # adhoc jump(2)
iter_trace_diffuse_rays_bfgtelse_b2749:
# B2749
	mv x37, zero
	j iter_trace_diffuse_rays_cont_b2754 # adhoc jump(2)
iter_trace_diffuse_rays_bfneqelse_b2742:
# B2742
	mv x37, zero
iter_trace_diffuse_rays_cont_b2754:
# B2754
	lw x40, 0(x23)
	bne x37, zero, iter_trace_diffuse_rays_beqelse_b2756
# B2755
	mv x37, zero
	j iter_trace_diffuse_rays_cont_b2757 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2756:
# B2756
	fle x37, x90, x40
	xori x37, x37, 1
iter_trace_diffuse_rays_cont_b2757:
# B2757
	addi x28, x28, 1
	bne x37, zero, iter_trace_diffuse_rays_beqelse_b2759
# B2758
	lwr x18, x26, x18
	lw x18, 6(x18)
	beq x18, zero, iter_trace_diffuse_rays_bneelse_b2789
	j	iter_trace_diffuse_rays_beqelse_b2711 # moved need extra jump for 2711 at B2758
iter_trace_diffuse_rays_beqelse_b2759:
# B2759
	fadd x18, x40, x27
	lw x37, 0(x91)
	fmul x37, x37, x18
	fadd x37, x37, x38
	lw x38, 1(x91)
	fmul x38, x38, x18
	fadd x38, x38, x5
	lw x40, 2(x91)
	fmul x18, x40, x18
	fadd x18, x18, x65
	mv x6, x37
	mv x40, zero
	mv x5, x35
	mv x65, x38
	mv x66, x18
	j	iter_trace_diffuse_rays_loop_b2762 # jumping over moved block
iter_trace_diffuse_rays_bneelse_b2783:	#moved
# B2783
	addi x40, x40, 1
iter_trace_diffuse_rays_loop_b2762:
# B2762
	lwr x18, x5, x40
	bne x18, x24, iter_trace_diffuse_rays_beqelse_b2764
# B2763
	mv x37, x100
# B2785
	bne x37, zero, iter_trace_diffuse_rays_beqelse_b2787
	j	iter_trace_diffuse_rays_beqelse_b2711 # moved need extra jump for 2711 at B2785
iter_trace_diffuse_rays_beqelse_b2787:
# B2787
	mv x18, x100
iter_trace_diffuse_rays_cont_b2788:
# B2788
	bne x18, zero, iter_trace_diffuse_rays_beqelse_b2790
iter_trace_diffuse_rays_bneelse_b2789:
iter_trace_diffuse_rays_cont_b2789:
# B2789
	addi x30, x30, 1
	j iter_trace_diffuse_rays_loop_b2708 # loopback to while entry from B2789
iter_trace_diffuse_rays_beqelse_b2790:
# B2790
	mv x28, x100
# B2791
	bne x28, zero, iter_trace_diffuse_rays_beqelse_b2793
	j	iter_trace_diffuse_rays_bneelse_b2569 # moved need extra jump for 2569 at B2791
iter_trace_diffuse_rays_beqelse_b2793:
# B2793
	mv x18, x100
iter_trace_diffuse_rays_cont_b2794:
# B2794
	bne x18, zero, iter_trace_diffuse_rays_beqelse_b3339
iter_trace_diffuse_rays_bneelse_b2795:
# B2795
	lw x18, 0(x36)
	lw x20, 0(x91)
	fmul x18, x18, x20
	lw x20, 1(x36)
	lw x21, 1(x91)
	fmul x20, x20, x21
	fadd x18, x18, x20
	lw x20, 2(x36)
	lw x21, 2(x91)
	fmul x20, x20, x21
	fadd x18, x18, x20
	fsub x18, zero, x18
	bfle x18, zero, iter_trace_diffuse_rays_bfgtelse_b2797
# B2798
	mv x20, x18
	j iter_trace_diffuse_rays_cont_b2799 # adhoc jump(2)
iter_trace_diffuse_rays_bfgtelse_b2797:
# B2797
	mv x20, zero
iter_trace_diffuse_rays_cont_b2799:
# B2799
	fmul x17, x17, x20
	lw x18, 7(x19)
	lw x18, 0(x18)
	fmul x17, x17, x18
	lw x18, 0(x92)
	lw x19, 0(x39)
	fmul x19, x17, x19
	fadd x18, x18, x19
	sw x18, 0(x92)
	lw x18, 1(x92)
	lw x19, 1(x39)
	fmul x19, x17, x19
	fadd x18, x18, x19
	sw x18, 1(x92)
	lw x18, 2(x92)
	lw x19, 2(x39)
	fmul x17, x17, x19
	fadd x17, x18, x17
	sw x17, 2(x92)
	j iter_trace_diffuse_rays_cont_b3339 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2764:
# B2764
	lwr x18, x26, x18
	lw x37, 5(x18)
	lw x37, 0(x37)
	fsub x37, x6, x37
	lw x38, 5(x18)
	lw x38, 1(x38)
	fsub x38, x65, x38
	lw x67, 5(x18)
	lw x67, 2(x67)
	fsub x67, x66, x67
	lw x68, 1(x18)
	bne x68, x100, iter_trace_diffuse_rays_beqelse_b2766
# B2765
	fabs x37, x37
	lw x68, 4(x18)
	lw x68, 0(x68)
	bfle x68, x37, iter_trace_diffuse_rays_bfgtelse_b2772
# B2768
	fabs x37, x38
	lw x38, 4(x18)
	lw x38, 1(x38)
	bfle x38, x37, iter_trace_diffuse_rays_bfgtelse_b2772
# B2770
	fabs x37, x67
	lw x38, 4(x18)
	lw x38, 2(x38)
	fle x37, x38, x37
	xori x37, x37, 1
	mv x38, x37
# B2771
	bne x38, zero, iter_trace_diffuse_rays_beqelse_b2773
iter_trace_diffuse_rays_bfgtelse_b2772:
# B2772
	lw x18, 6(x18)
	xori x18, x18, 1
	j iter_trace_diffuse_rays_cont_b2782 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2773:
# B2773
	lw x18, 6(x18)
	j iter_trace_diffuse_rays_cont_b2782 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2766:
# B2766
	bne x68, x12, iter_trace_diffuse_rays_beqelse_b2775
# B2774
	lw x68, 4(x18)
	lw x69, 0(x68)
	fmul x37, x69, x37
	lw x69, 1(x68)
	fmul x38, x69, x38
	fadd x37, x37, x38
	lw x38, 2(x68)
	fmul x38, x38, x67
	fadd x37, x37, x38
	lw x18, 6(x18)
	fle x37, zero, x37
	xori x37, x37, 1
	xor x18, x18, x37
	xori x18, x18, 1
	j iter_trace_diffuse_rays_cont_b2782 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2775:
# B2775
	fmul x68, x37, x37
	lw x69, 4(x18)
	lw x69, 0(x69)
	fmul x68, x68, x69
	fmul x69, x38, x38
	lw x7, 4(x18)
	lw x7, 1(x7)
	fmul x69, x69, x7
	fadd x68, x68, x69
	fmul x69, x67, x67
	lw x7, 4(x18)
	lw x7, 2(x7)
	fmul x69, x69, x7
	fadd x68, x68, x69
	lw x69, 3(x18)
	bne x69, zero, iter_trace_diffuse_rays_beqelse_b2777
# B2776
	mv x37, x68
	j iter_trace_diffuse_rays_cont_b2778 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2777:
# B2777
	fmul x69, x38, x67
	lw x7, 9(x18)
	lw x7, 0(x7)
	fmul x69, x69, x7
	fadd x68, x68, x69
	fmul x67, x67, x37
	lw x69, 9(x18)
	lw x69, 1(x69)
	fmul x67, x67, x69
	fadd x67, x68, x67
	fmul x37, x37, x38
	lw x38, 9(x18)
	lw x38, 2(x38)
	fmul x37, x37, x38
	fadd x37, x67, x37
iter_trace_diffuse_rays_cont_b2778:
# B2778
	lw x38, 1(x18)
	bne x38, x32, iter_trace_diffuse_rays_beqelse_b2781
# B2779
	fsub x37, x37, x33
iter_trace_diffuse_rays_beqelse_b2781:
# B2781
	lw x18, 6(x18)
	fle x37, zero, x37
	xori x37, x37, 1
	xor x18, x18, x37
	xori x18, x18, 1
iter_trace_diffuse_rays_cont_b2782:
# B2782
	beq x18, zero, iter_trace_diffuse_rays_bneelse_b2783
	j	iter_trace_diffuse_rays_beqelse_b2711 # moved need extra jump for 2711 at B2782
iter_trace_diffuse_rays_bneelse_b2260:
# B2260
	addi x18, x16, 1
	lwr x18, x13, x18
	fdiv x17, x17, x11
	sw x20, 0(x19)
	lw x20, 0(x21)
	mv x94, x20
	mv x93, zero
	mv x95, x18
iter_trace_diffuse_rays_loop_b2800:
# B2800
	lwr x20, x94, x93
	lw x96, 0(x20)
	beq x96, x24, iter_trace_diffuse_rays_bneelse_b2999
# B2802
	bne x96, x22, iter_trace_diffuse_rays_beqelse_b2804
# B2803
	mv x97, x100
	mv x98, x20
	mv x99, x95
iter_trace_diffuse_rays_loop_b2805:
# B2805
	lwr x20, x98, x97
	beq x20, x24, iter_trace_diffuse_rays_bneelse_b2998
# B2807
	lwr x20, x25, x20
	mv x101, x20
	mv x102, x99
	mv x96, zero
	j	iter_trace_diffuse_rays_loop_b2808 # jumping over moved block
iter_trace_diffuse_rays_beqelse_b2879:	#moved
# B2879
	sw x105, 0(x19)
	sw x106, 0(x29)
	sw x107, 1(x29)
	sw x20, 2(x29)
	sw x103, 0(x30)
	sw x104, 0(x31)
iter_trace_diffuse_rays_beqelse_b2808:
iter_trace_diffuse_rays_bfgtelse_b2808:
iter_trace_diffuse_rays_loop_b2808:
# B2808
	lw x20, 0(x102)
	lwr x103, x101, x96
	beq x103, x24, iter_trace_diffuse_rays_bneelse_b2881
# B2810
	lwr x104, x26, x103
	lw x105, 10(x104)
	lw x106, 0(x105)
	lw x107, 1(x105)
	lw x108, 2(x105)
	lw x109, 1(x102)
	lwr x109, x109, x103
	lw x110, 1(x104)
	bne x110, x100, iter_trace_diffuse_rays_beqelse_b2812
# B2811
	lw x105, 0(x102)
	lw x110, 0(x109)
	fsub x110, x110, x106
	lw x111, 1(x109)
	fmul x110, x110, x111
	lw x112, 1(x105)
	fmul x113, x110, x112
	fadd x113, x113, x107
	fabs x113, x113
	lw x114, 4(x104)
	lw x114, 1(x114)
	bfle x114, x113, iter_trace_diffuse_rays_bfgtelse_b2818
# B2814
	lw x113, 2(x105)
	fmul x113, x110, x113
	fadd x113, x113, x108
	fabs x113, x113
	lw x115, 4(x104)
	lw x115, 2(x115)
	bfle x115, x113, iter_trace_diffuse_rays_bfgtelse_b2818
# B2816
	feq x111, x111, zero
	xori x111, x111, 1
	mv x113, x111
# B2817
	bne x113, zero, iter_trace_diffuse_rays_beqelse_b2819
iter_trace_diffuse_rays_bfgtelse_b2818:
# B2818
	lw x110, 2(x109)
	fsub x110, x110, x107
	lw x111, 3(x109)
	fmul x110, x110, x111
	lw x113, 0(x105)
	fmul x115, x110, x113
	fadd x115, x115, x106
	fabs x115, x115
	lw x116, 4(x104)
	lw x116, 0(x116)
	bfle x116, x115, iter_trace_diffuse_rays_bfgtelse_b2825
# B2821
	lw x105, 2(x105)
	fmul x105, x110, x105
	fadd x105, x105, x108
	fabs x105, x105
	lw x104, 4(x104)
	lw x104, 2(x104)
	bfle x104, x105, iter_trace_diffuse_rays_bfgtelse_b2825
# B2823
	feq x104, x111, zero
	xori x104, x104, 1
	mv x105, x104
# B2824
	bne x105, zero, iter_trace_diffuse_rays_beqelse_b2826
iter_trace_diffuse_rays_bfgtelse_b2825:
# B2825
	lw x104, 4(x109)
	fsub x104, x104, x108
	lw x105, 5(x109)
	fmul x104, x104, x105
	fmul x108, x104, x113
	fadd x106, x108, x106
	fabs x106, x106
	bfle x116, x106, iter_trace_diffuse_rays_bfgtelse_b2832
# B2828
	fmul x106, x104, x112
	fadd x106, x106, x107
	fabs x106, x106
	bfle x114, x106, iter_trace_diffuse_rays_bfgtelse_b2832
# B2830
	feq x105, x105, zero
	xori x105, x105, 1
	mv x106, x105
# B2831
	bne x106, zero, iter_trace_diffuse_rays_beqelse_b2833
iter_trace_diffuse_rays_bfgtelse_b2832:
# B2832
	mv x104, zero
	j iter_trace_diffuse_rays_cont_b2845 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2833:
# B2833
	sw x104, 0(x23)
	mv x104, x32
	j iter_trace_diffuse_rays_cont_b2845 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2826:
# B2826
	sw x110, 0(x23)
	mv x104, x12
	j iter_trace_diffuse_rays_cont_b2845 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2819:
# B2819
	sw x110, 0(x23)
	mv x104, x100
	j iter_trace_diffuse_rays_cont_b2845 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2812:
# B2812
	bne x110, x12, iter_trace_diffuse_rays_beqelse_b2835
# B2834
	lw x104, 0(x109)
	bfle zero, x104, iter_trace_diffuse_rays_bfgtelse_b2836
# B2837
	lw x105, 3(x105)
	fmul x104, x104, x105
	sw x104, 0(x23)
	mv x104, x100
	j iter_trace_diffuse_rays_cont_b2845 # adhoc jump(2)
iter_trace_diffuse_rays_bfgtelse_b2836:
# B2836
	mv x104, zero
	j iter_trace_diffuse_rays_cont_b2845 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2835:
# B2835
	lw x110, 0(x109)
	bfeq x110, zero, iter_trace_diffuse_rays_bfneqelse_b2839
# B2838
	lw x111, 1(x109)
	fmul x106, x111, x106
	lw x111, 2(x109)
	fmul x107, x111, x107
	fadd x106, x106, x107
	lw x107, 3(x109)
	fmul x107, x107, x108
	fadd x106, x106, x107
	lw x105, 3(x105)
	fmul x107, x106, x106
	fmul x105, x110, x105
	fsub x105, x107, x105
	bfle x105, zero, iter_trace_diffuse_rays_bfgtelse_b2840
# B2841
	lw x104, 6(x104)
	fsqrt x105, x105
	bne x104, zero, iter_trace_diffuse_rays_beqelse_b2843
# B2842
	fsub x104, x106, x105
	lw x105, 4(x109)
	fmul x104, x104, x105
	sw x104, 0(x23)
	j iter_trace_diffuse_rays_cont_b2844 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2843:
# B2843
	fadd x104, x106, x105
	lw x105, 4(x109)
	fmul x104, x104, x105
	sw x104, 0(x23)
iter_trace_diffuse_rays_cont_b2844:
# B2844
	mv x104, x100
	j iter_trace_diffuse_rays_cont_b2845 # adhoc jump(2)
iter_trace_diffuse_rays_bfgtelse_b2840:
# B2840
	mv x104, zero
	j iter_trace_diffuse_rays_cont_b2845 # adhoc jump(2)
iter_trace_diffuse_rays_bfneqelse_b2839:
# B2839
	mv x104, zero
iter_trace_diffuse_rays_cont_b2845:
# B2845
	addi x96, x96, 1
	bne x104, zero, iter_trace_diffuse_rays_beqelse_b2847
# B2846
	lwr x20, x26, x103
	lw x20, 6(x20)
	beq x20, zero, iter_trace_diffuse_rays_bneelse_b2881
	j	iter_trace_diffuse_rays_beqelse_b2808 # moved need extra jump for 2808 at B2846
iter_trace_diffuse_rays_bneelse_b2881:
# B2881
	addi x97, x97, 1
	j iter_trace_diffuse_rays_loop_b2805 # loopback to while entry from B2881
iter_trace_diffuse_rays_beqelse_b2847:
# B2847
	lw x105, 0(x23)
	bfle x105, zero, iter_trace_diffuse_rays_bfgtelse_b2808
# B2851
	lw x106, 0(x19)
	bfle x106, x105, iter_trace_diffuse_rays_bfgtelse_b2808
# B2853
	fadd x105, x105, x27
	lw x106, 0(x20)
	fmul x106, x106, x105
	lw x107, 0(x28)
	fadd x106, x106, x107
	lw x107, 1(x20)
	fmul x107, x107, x105
	lw x108, 1(x28)
	fadd x107, x107, x108
	lw x20, 2(x20)
	fmul x20, x20, x105
	lw x108, 2(x28)
	fadd x20, x20, x108
	mv x110, x106
	mv x111, x107
	mv x109, x101
	mv x112, x20
	mv x108, zero
	j	iter_trace_diffuse_rays_loop_b2854 # jumping over moved block
iter_trace_diffuse_rays_bneelse_b2875:	#moved
# B2875
	addi x108, x108, 1
iter_trace_diffuse_rays_loop_b2854:
# B2854
	lwr x113, x109, x108
	bne x113, x24, iter_trace_diffuse_rays_beqelse_b2856
# B2855
	mv x114, x100
# B2877
	bne x114, zero, iter_trace_diffuse_rays_beqelse_b2879
	j	iter_trace_diffuse_rays_bfgtelse_b2808 # moved need extra jump for 2808 at B2877
iter_trace_diffuse_rays_beqelse_b2856:
# B2856
	lwr x113, x26, x113
	lw x114, 5(x113)
	lw x114, 0(x114)
	fsub x114, x110, x114
	lw x115, 5(x113)
	lw x115, 1(x115)
	fsub x115, x111, x115
	lw x116, 5(x113)
	lw x116, 2(x116)
	fsub x116, x112, x116
	lw x117, 1(x113)
	bne x117, x100, iter_trace_diffuse_rays_beqelse_b2858
# B2857
	fabs x114, x114
	lw x117, 4(x113)
	lw x117, 0(x117)
	bfle x117, x114, iter_trace_diffuse_rays_bfgtelse_b2864
# B2860
	fabs x114, x115
	lw x115, 4(x113)
	lw x115, 1(x115)
	bfle x115, x114, iter_trace_diffuse_rays_bfgtelse_b2864
# B2862
	fabs x114, x116
	lw x115, 4(x113)
	lw x115, 2(x115)
	fle x114, x115, x114
	xori x114, x114, 1
	mv x115, x114
# B2863
	bne x115, zero, iter_trace_diffuse_rays_beqelse_b2865
iter_trace_diffuse_rays_bfgtelse_b2864:
# B2864
	lw x113, 6(x113)
	xori x113, x113, 1
	j iter_trace_diffuse_rays_cont_b2874 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2865:
# B2865
	lw x113, 6(x113)
	j iter_trace_diffuse_rays_cont_b2874 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2858:
# B2858
	bne x117, x12, iter_trace_diffuse_rays_beqelse_b2867
# B2866
	lw x117, 4(x113)
	lw x118, 0(x117)
	fmul x114, x118, x114
	lw x118, 1(x117)
	fmul x115, x118, x115
	fadd x114, x114, x115
	lw x115, 2(x117)
	fmul x115, x115, x116
	fadd x114, x114, x115
	lw x113, 6(x113)
	fle x114, zero, x114
	xori x114, x114, 1
	xor x113, x113, x114
	xori x113, x113, 1
	j iter_trace_diffuse_rays_cont_b2874 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2867:
# B2867
	fmul x117, x114, x114
	lw x118, 4(x113)
	lw x118, 0(x118)
	fmul x117, x117, x118
	fmul x118, x115, x115
	lw x119, 4(x113)
	lw x119, 1(x119)
	fmul x118, x118, x119
	fadd x117, x117, x118
	fmul x118, x116, x116
	lw x119, 4(x113)
	lw x119, 2(x119)
	fmul x118, x118, x119
	fadd x117, x117, x118
	lw x118, 3(x113)
	bne x118, zero, iter_trace_diffuse_rays_beqelse_b2869
# B2868
	mv x114, x117
	j iter_trace_diffuse_rays_cont_b2870 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2869:
# B2869
	fmul x118, x115, x116
	lw x119, 9(x113)
	lw x119, 0(x119)
	fmul x118, x118, x119
	fadd x117, x117, x118
	fmul x116, x116, x114
	lw x118, 9(x113)
	lw x118, 1(x118)
	fmul x116, x116, x118
	fadd x116, x117, x116
	fmul x114, x114, x115
	lw x115, 9(x113)
	lw x115, 2(x115)
	fmul x114, x114, x115
	fadd x114, x116, x114
iter_trace_diffuse_rays_cont_b2870:
# B2870
	lw x115, 1(x113)
	bne x115, x32, iter_trace_diffuse_rays_beqelse_b2873
# B2871
	fsub x114, x114, x33
iter_trace_diffuse_rays_beqelse_b2873:
# B2873
	lw x113, 6(x113)
	fle x114, zero, x114
	xori x114, x114, 1
	xor x113, x113, x114
	xori x113, x113, 1
iter_trace_diffuse_rays_cont_b2874:
# B2874
	beq x113, zero, iter_trace_diffuse_rays_bneelse_b2875
	j	iter_trace_diffuse_rays_bfgtelse_b2808 # moved need extra jump for 2808 at B2874
iter_trace_diffuse_rays_beqelse_b2804:
# B2804
	lwr x97, x26, x96
	lw x98, 10(x97)
	lw x99, 0(x98)
	lw x101, 1(x98)
	lw x102, 2(x98)
	lw x103, 1(x95)
	lwr x96, x103, x96
	lw x103, 1(x97)
	bne x103, x100, iter_trace_diffuse_rays_beqelse_b2883
# B2882
	lw x98, 0(x95)
	lw x103, 0(x96)
	fsub x103, x103, x99
	lw x104, 1(x96)
	fmul x103, x103, x104
	lw x105, 1(x98)
	fmul x106, x103, x105
	fadd x106, x106, x101
	fabs x106, x106
	lw x107, 4(x97)
	lw x107, 1(x107)
	bfle x107, x106, iter_trace_diffuse_rays_bfgtelse_b2889
# B2885
	lw x106, 2(x98)
	fmul x106, x103, x106
	fadd x106, x106, x102
	fabs x106, x106
	lw x108, 4(x97)
	lw x108, 2(x108)
	bfle x108, x106, iter_trace_diffuse_rays_bfgtelse_b2889
# B2887
	feq x104, x104, zero
	xori x104, x104, 1
	mv x106, x104
# B2888
	bne x106, zero, iter_trace_diffuse_rays_beqelse_b2890
iter_trace_diffuse_rays_bfgtelse_b2889:
# B2889
	lw x103, 2(x96)
	fsub x103, x103, x101
	lw x104, 3(x96)
	fmul x103, x103, x104
	lw x106, 0(x98)
	fmul x108, x103, x106
	fadd x108, x108, x99
	fabs x108, x108
	lw x109, 4(x97)
	lw x109, 0(x109)
	bfle x109, x108, iter_trace_diffuse_rays_bfgtelse_b2896
# B2892
	lw x98, 2(x98)
	fmul x98, x103, x98
	fadd x98, x98, x102
	fabs x98, x98
	lw x97, 4(x97)
	lw x97, 2(x97)
	bfle x97, x98, iter_trace_diffuse_rays_bfgtelse_b2896
# B2894
	feq x97, x104, zero
	xori x97, x97, 1
	mv x98, x97
# B2895
	bne x98, zero, iter_trace_diffuse_rays_beqelse_b2897
iter_trace_diffuse_rays_bfgtelse_b2896:
# B2896
	lw x97, 4(x96)
	fsub x97, x97, x102
	lw x96, 5(x96)
	fmul x97, x97, x96
	fmul x98, x97, x106
	fadd x98, x98, x99
	fabs x98, x98
	bfle x109, x98, iter_trace_diffuse_rays_bfgtelse_b2998
# B2899
	fmul x98, x97, x105
	fadd x98, x98, x101
	fabs x98, x98
	bfle x107, x98, iter_trace_diffuse_rays_bfgtelse_b2998
# B2901
	feq x96, x96, zero
	xori x96, x96, 1
	mv x98, x96
# B2902
	bne x98, zero, iter_trace_diffuse_rays_beqelse_b2904
	j iter_trace_diffuse_rays_cont_b2998 # adhoc jump(3)
iter_trace_diffuse_rays_beqelse_b2904:
# B2904
	sw x97, 0(x23)
	mv x96, x32
	j iter_trace_diffuse_rays_cont_b2916 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2897:
# B2897
	sw x103, 0(x23)
	mv x96, x12
	j iter_trace_diffuse_rays_cont_b2916 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2890:
# B2890
	sw x103, 0(x23)
	mv x96, x100
	j iter_trace_diffuse_rays_cont_b2916 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2883:
# B2883
	bne x103, x12, iter_trace_diffuse_rays_beqelse_b2906
# B2905
	lw x96, 0(x96)
	bfle zero, x96, iter_trace_diffuse_rays_bfgtelse_b2998
# B2908
	lw x97, 3(x98)
	fmul x96, x96, x97
	sw x96, 0(x23)
	mv x96, x100
	j iter_trace_diffuse_rays_cont_b2916 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2906:
# B2906
	lw x103, 0(x96)
	bfeq x103, zero, iter_trace_diffuse_rays_bfneqelse_b2998
# B2909
	lw x104, 1(x96)
	fmul x99, x104, x99
	lw x104, 2(x96)
	fmul x101, x104, x101
	fadd x99, x99, x101
	lw x101, 3(x96)
	fmul x101, x101, x102
	fadd x99, x99, x101
	lw x98, 3(x98)
	fmul x101, x99, x99
	fmul x98, x103, x98
	fsub x98, x101, x98
	bfle x98, zero, iter_trace_diffuse_rays_bfgtelse_b2998
# B2912
	lw x97, 6(x97)
	fsqrt x98, x98
	bne x97, zero, iter_trace_diffuse_rays_beqelse_b2914
# B2913
	fsub x97, x99, x98
	lw x96, 4(x96)
	fmul x96, x97, x96
	sw x96, 0(x23)
	j iter_trace_diffuse_rays_cont_b2915 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2914:
# B2914
	fadd x97, x99, x98
	lw x96, 4(x96)
	fmul x96, x97, x96
	sw x96, 0(x23)
iter_trace_diffuse_rays_cont_b2915:
# B2915
	mv x96, x100
iter_trace_diffuse_rays_cont_b2916:
# B2916
	bne x96, zero, iter_trace_diffuse_rays_beqelse_b2918
	j iter_trace_diffuse_rays_cont_b2998 # adhoc jump(3)
iter_trace_diffuse_rays_beqelse_b2918:
# B2918
	lw x96, 0(x23)
	lw x97, 0(x19)
	bfle x97, x96, iter_trace_diffuse_rays_bfgtelse_b2998
# B2920
	mv x98, x100
	mv x101, x95
	mv x99, x20
iter_trace_diffuse_rays_loop_b2921:
# B2921
	lwr x20, x99, x98
	beq x20, x24, iter_trace_diffuse_rays_bneelse_b2998
# B2923
	lwr x20, x25, x20
	mv x97, x20
	mv x102, x101
	mv x96, zero
	j	iter_trace_diffuse_rays_loop_b2924 # jumping over moved block
iter_trace_diffuse_rays_beqelse_b2995:	#moved
# B2995
	sw x105, 0(x19)
	sw x106, 0(x29)
	sw x107, 1(x29)
	sw x20, 2(x29)
	sw x103, 0(x30)
	sw x104, 0(x31)
iter_trace_diffuse_rays_beqelse_b2924:
iter_trace_diffuse_rays_bfgtelse_b2924:
iter_trace_diffuse_rays_loop_b2924:
# B2924
	lw x20, 0(x102)
	lwr x103, x97, x96
	beq x103, x24, iter_trace_diffuse_rays_bneelse_b2997
# B2926
	lwr x104, x26, x103
	lw x105, 10(x104)
	lw x106, 0(x105)
	lw x107, 1(x105)
	lw x108, 2(x105)
	lw x109, 1(x102)
	lwr x109, x109, x103
	lw x110, 1(x104)
	bne x110, x100, iter_trace_diffuse_rays_beqelse_b2928
# B2927
	lw x105, 0(x102)
	lw x110, 0(x109)
	fsub x110, x110, x106
	lw x111, 1(x109)
	fmul x110, x110, x111
	lw x112, 1(x105)
	fmul x113, x110, x112
	fadd x113, x113, x107
	fabs x113, x113
	lw x114, 4(x104)
	lw x114, 1(x114)
	bfle x114, x113, iter_trace_diffuse_rays_bfgtelse_b2934
# B2930
	lw x113, 2(x105)
	fmul x113, x110, x113
	fadd x113, x113, x108
	fabs x113, x113
	lw x115, 4(x104)
	lw x115, 2(x115)
	bfle x115, x113, iter_trace_diffuse_rays_bfgtelse_b2934
# B2932
	feq x111, x111, zero
	xori x111, x111, 1
	mv x113, x111
# B2933
	bne x113, zero, iter_trace_diffuse_rays_beqelse_b2935
iter_trace_diffuse_rays_bfgtelse_b2934:
# B2934
	lw x110, 2(x109)
	fsub x110, x110, x107
	lw x111, 3(x109)
	fmul x110, x110, x111
	lw x113, 0(x105)
	fmul x115, x110, x113
	fadd x115, x115, x106
	fabs x115, x115
	lw x116, 4(x104)
	lw x116, 0(x116)
	bfle x116, x115, iter_trace_diffuse_rays_bfgtelse_b2941
# B2937
	lw x105, 2(x105)
	fmul x105, x110, x105
	fadd x105, x105, x108
	fabs x105, x105
	lw x104, 4(x104)
	lw x104, 2(x104)
	bfle x104, x105, iter_trace_diffuse_rays_bfgtelse_b2941
# B2939
	feq x104, x111, zero
	xori x104, x104, 1
	mv x105, x104
# B2940
	bne x105, zero, iter_trace_diffuse_rays_beqelse_b2942
iter_trace_diffuse_rays_bfgtelse_b2941:
# B2941
	lw x104, 4(x109)
	fsub x104, x104, x108
	lw x105, 5(x109)
	fmul x104, x104, x105
	fmul x108, x104, x113
	fadd x106, x108, x106
	fabs x106, x106
	bfle x116, x106, iter_trace_diffuse_rays_bfgtelse_b2948
# B2944
	fmul x106, x104, x112
	fadd x106, x106, x107
	fabs x106, x106
	bfle x114, x106, iter_trace_diffuse_rays_bfgtelse_b2948
# B2946
	feq x105, x105, zero
	xori x105, x105, 1
	mv x106, x105
# B2947
	bne x106, zero, iter_trace_diffuse_rays_beqelse_b2949
iter_trace_diffuse_rays_bfgtelse_b2948:
# B2948
	mv x104, zero
	j iter_trace_diffuse_rays_cont_b2961 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2949:
# B2949
	sw x104, 0(x23)
	mv x104, x32
	j iter_trace_diffuse_rays_cont_b2961 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2942:
# B2942
	sw x110, 0(x23)
	mv x104, x12
	j iter_trace_diffuse_rays_cont_b2961 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2935:
# B2935
	sw x110, 0(x23)
	mv x104, x100
	j iter_trace_diffuse_rays_cont_b2961 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2928:
# B2928
	bne x110, x12, iter_trace_diffuse_rays_beqelse_b2951
# B2950
	lw x104, 0(x109)
	bfle zero, x104, iter_trace_diffuse_rays_bfgtelse_b2952
# B2953
	lw x105, 3(x105)
	fmul x104, x104, x105
	sw x104, 0(x23)
	mv x104, x100
	j iter_trace_diffuse_rays_cont_b2961 # adhoc jump(2)
iter_trace_diffuse_rays_bfgtelse_b2952:
# B2952
	mv x104, zero
	j iter_trace_diffuse_rays_cont_b2961 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2951:
# B2951
	lw x110, 0(x109)
	bfeq x110, zero, iter_trace_diffuse_rays_bfneqelse_b2955
# B2954
	lw x111, 1(x109)
	fmul x106, x111, x106
	lw x111, 2(x109)
	fmul x107, x111, x107
	fadd x106, x106, x107
	lw x107, 3(x109)
	fmul x107, x107, x108
	fadd x106, x106, x107
	lw x105, 3(x105)
	fmul x107, x106, x106
	fmul x105, x110, x105
	fsub x105, x107, x105
	bfle x105, zero, iter_trace_diffuse_rays_bfgtelse_b2956
# B2957
	lw x104, 6(x104)
	fsqrt x105, x105
	bne x104, zero, iter_trace_diffuse_rays_beqelse_b2959
# B2958
	fsub x104, x106, x105
	lw x105, 4(x109)
	fmul x104, x104, x105
	sw x104, 0(x23)
	j iter_trace_diffuse_rays_cont_b2960 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2959:
# B2959
	fadd x104, x106, x105
	lw x105, 4(x109)
	fmul x104, x104, x105
	sw x104, 0(x23)
iter_trace_diffuse_rays_cont_b2960:
# B2960
	mv x104, x100
	j iter_trace_diffuse_rays_cont_b2961 # adhoc jump(2)
iter_trace_diffuse_rays_bfgtelse_b2956:
# B2956
	mv x104, zero
	j iter_trace_diffuse_rays_cont_b2961 # adhoc jump(2)
iter_trace_diffuse_rays_bfneqelse_b2955:
# B2955
	mv x104, zero
iter_trace_diffuse_rays_cont_b2961:
# B2961
	addi x96, x96, 1
	bne x104, zero, iter_trace_diffuse_rays_beqelse_b2963
# B2962
	lwr x20, x26, x103
	lw x20, 6(x20)
	beq x20, zero, iter_trace_diffuse_rays_bneelse_b2997
	j	iter_trace_diffuse_rays_beqelse_b2924 # moved need extra jump for 2924 at B2962
iter_trace_diffuse_rays_bneelse_b2997:
# B2997
	addi x98, x98, 1
	j iter_trace_diffuse_rays_loop_b2921 # loopback to while entry from B2997
iter_trace_diffuse_rays_beqelse_b2963:
# B2963
	lw x105, 0(x23)
	bfle x105, zero, iter_trace_diffuse_rays_bfgtelse_b2924
# B2967
	lw x106, 0(x19)
	bfle x106, x105, iter_trace_diffuse_rays_bfgtelse_b2924
# B2969
	fadd x105, x105, x27
	lw x106, 0(x20)
	fmul x106, x106, x105
	lw x107, 0(x28)
	fadd x106, x106, x107
	lw x107, 1(x20)
	fmul x107, x107, x105
	lw x108, 1(x28)
	fadd x107, x107, x108
	lw x20, 2(x20)
	fmul x20, x20, x105
	lw x108, 2(x28)
	fadd x20, x20, x108
	mv x109, x97
	mv x110, x106
	mv x111, x107
	mv x112, x20
	mv x108, zero
	j	iter_trace_diffuse_rays_loop_b2970 # jumping over moved block
iter_trace_diffuse_rays_bneelse_b2991:	#moved
# B2991
	addi x108, x108, 1
iter_trace_diffuse_rays_loop_b2970:
# B2970
	lwr x113, x109, x108
	bne x113, x24, iter_trace_diffuse_rays_beqelse_b2972
# B2971
	mv x114, x100
# B2993
	bne x114, zero, iter_trace_diffuse_rays_beqelse_b2995
	j	iter_trace_diffuse_rays_bfgtelse_b2924 # moved need extra jump for 2924 at B2993
iter_trace_diffuse_rays_beqelse_b2972:
# B2972
	lwr x113, x26, x113
	lw x114, 5(x113)
	lw x114, 0(x114)
	fsub x114, x110, x114
	lw x115, 5(x113)
	lw x115, 1(x115)
	fsub x115, x111, x115
	lw x116, 5(x113)
	lw x116, 2(x116)
	fsub x116, x112, x116
	lw x117, 1(x113)
	bne x117, x100, iter_trace_diffuse_rays_beqelse_b2974
# B2973
	fabs x114, x114
	lw x117, 4(x113)
	lw x117, 0(x117)
	bfle x117, x114, iter_trace_diffuse_rays_bfgtelse_b2980
# B2976
	fabs x114, x115
	lw x115, 4(x113)
	lw x115, 1(x115)
	bfle x115, x114, iter_trace_diffuse_rays_bfgtelse_b2980
# B2978
	fabs x114, x116
	lw x115, 4(x113)
	lw x115, 2(x115)
	fle x114, x115, x114
	xori x114, x114, 1
	mv x115, x114
# B2979
	bne x115, zero, iter_trace_diffuse_rays_beqelse_b2981
iter_trace_diffuse_rays_bfgtelse_b2980:
# B2980
	lw x113, 6(x113)
	xori x113, x113, 1
	j iter_trace_diffuse_rays_cont_b2990 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2981:
# B2981
	lw x113, 6(x113)
	j iter_trace_diffuse_rays_cont_b2990 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2974:
# B2974
	bne x117, x12, iter_trace_diffuse_rays_beqelse_b2983
# B2982
	lw x117, 4(x113)
	lw x118, 0(x117)
	fmul x114, x118, x114
	lw x118, 1(x117)
	fmul x115, x118, x115
	fadd x114, x114, x115
	lw x115, 2(x117)
	fmul x115, x115, x116
	fadd x114, x114, x115
	lw x113, 6(x113)
	fle x114, zero, x114
	xori x114, x114, 1
	xor x113, x113, x114
	xori x113, x113, 1
	j iter_trace_diffuse_rays_cont_b2990 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2983:
# B2983
	fmul x117, x114, x114
	lw x118, 4(x113)
	lw x118, 0(x118)
	fmul x117, x117, x118
	fmul x118, x115, x115
	lw x119, 4(x113)
	lw x119, 1(x119)
	fmul x118, x118, x119
	fadd x117, x117, x118
	fmul x118, x116, x116
	lw x119, 4(x113)
	lw x119, 2(x119)
	fmul x118, x118, x119
	fadd x117, x117, x118
	lw x118, 3(x113)
	bne x118, zero, iter_trace_diffuse_rays_beqelse_b2985
# B2984
	mv x114, x117
	j iter_trace_diffuse_rays_cont_b2986 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2985:
# B2985
	fmul x118, x115, x116
	lw x119, 9(x113)
	lw x119, 0(x119)
	fmul x118, x118, x119
	fadd x117, x117, x118
	fmul x116, x116, x114
	lw x118, 9(x113)
	lw x118, 1(x118)
	fmul x116, x116, x118
	fadd x116, x117, x116
	fmul x114, x114, x115
	lw x115, 9(x113)
	lw x115, 2(x115)
	fmul x114, x114, x115
	fadd x114, x116, x114
iter_trace_diffuse_rays_cont_b2986:
# B2986
	lw x115, 1(x113)
	bne x115, x32, iter_trace_diffuse_rays_beqelse_b2989
# B2987
	fsub x114, x114, x33
iter_trace_diffuse_rays_beqelse_b2989:
# B2989
	lw x113, 6(x113)
	fle x114, zero, x114
	xori x114, x114, 1
	xor x113, x113, x114
	xori x113, x113, 1
iter_trace_diffuse_rays_cont_b2990:
# B2990
	beq x113, zero, iter_trace_diffuse_rays_bneelse_b2991
	j	iter_trace_diffuse_rays_bfgtelse_b2924 # moved need extra jump for 2924 at B2990
iter_trace_diffuse_rays_bfgtelse_b2998:
iter_trace_diffuse_rays_bfneqelse_b2998:
iter_trace_diffuse_rays_bneelse_b2998:
iter_trace_diffuse_rays_cont_b2998:
# B2998
	addi x93, x93, 1
	j iter_trace_diffuse_rays_loop_b2800 # loopback to while entry from B2998
iter_trace_diffuse_rays_bneelse_b2999:
# B2999
	lw x19, 0(x19)
	bfle x19, x34, iter_trace_diffuse_rays_bfgtelse_b3339
# B3001
	fle x19, x35, x19
	xori x19, x19, 1
	mv x20, x19
# B3002
	bne x20, zero, iter_trace_diffuse_rays_beqelse_b3004
	j iter_trace_diffuse_rays_cont_b3339 # adhoc jump(3)
iter_trace_diffuse_rays_beqelse_b3004:
# B3004
	lw x19, 0(x30)
	lwr x19, x26, x19
	lw x18, 0(x18)
	lw x20, 1(x19)
	bne x20, x100, iter_trace_diffuse_rays_beqelse_b3006
# B3005
	lw x20, 0(x31)
	sw zero, 0(x36)
	sw zero, 1(x36)
	sw zero, 2(x36)
	addi x20, x20, -1
	lwr x18, x18, x20
	bfeq x18, zero, iter_trace_diffuse_rays_bfneqelse_b3008
# B3007
	bfle x18, zero, iter_trace_diffuse_rays_bfgtelse_b3009
# B3010
	mv x28, x33
	j iter_trace_diffuse_rays_cont_b3011 # adhoc jump(2)
iter_trace_diffuse_rays_bfgtelse_b3009:
# B3009
	mv x28, x38
	j iter_trace_diffuse_rays_cont_b3011 # adhoc jump(2)
iter_trace_diffuse_rays_bfneqelse_b3008:
# B3008
	mv x28, zero
iter_trace_diffuse_rays_cont_b3011:
# B3011
	fsub x18, zero, x28
	add x4, x36, x20
	sw x18, 0(x4)
	j iter_trace_diffuse_rays_cont_b3022 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3006:
# B3006
	bne x20, x12, iter_trace_diffuse_rays_beqelse_b3013
# B3012
	lw x18, 4(x19)
	lw x18, 0(x18)
	fsub x18, zero, x18
	sw x18, 0(x36)
	lw x18, 4(x19)
	lw x18, 1(x18)
	fsub x18, zero, x18
	sw x18, 1(x36)
	lw x18, 4(x19)
	lw x18, 2(x18)
	fsub x18, zero, x18
	sw x18, 2(x36)
	j iter_trace_diffuse_rays_cont_b3022 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3013:
# B3013
	lw x18, 0(x29)
	lw x20, 5(x19)
	lw x20, 0(x20)
	fsub x18, x18, x20
	lw x20, 1(x29)
	lw x28, 5(x19)
	lw x28, 1(x28)
	fsub x20, x20, x28
	lw x28, 2(x29)
	lw x30, 5(x19)
	lw x30, 2(x30)
	fsub x28, x28, x30
	lw x30, 4(x19)
	lw x30, 0(x30)
	fmul x30, x18, x30
	lw x31, 4(x19)
	lw x31, 1(x31)
	fmul x31, x20, x31
	lw x35, 4(x19)
	lw x35, 2(x35)
	fmul x35, x28, x35
	lw x93, 3(x19)
	bne x93, zero, iter_trace_diffuse_rays_beqelse_b3015
# B3014
	sw x30, 0(x36)
	sw x31, 1(x36)
	sw x35, 2(x36)
	j iter_trace_diffuse_rays_cont_b3016 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3015:
# B3015
	lw x93, 9(x19)
	lw x93, 2(x93)
	fmul x94, x20, x93
	lw x95, 9(x19)
	lw x95, 1(x95)
	fmul x96, x28, x95
	fadd x94, x94, x96
	fmul x94, x94, x37
	fadd x30, x30, x94
	sw x30, 0(x36)
	fmul x30, x18, x93
	lw x93, 9(x19)
	lw x93, 0(x93)
	fmul x28, x28, x93
	fadd x28, x30, x28
	fmul x28, x28, x37
	fadd x28, x31, x28
	sw x28, 1(x36)
	fmul x18, x18, x95
	fmul x20, x20, x93
	fadd x18, x18, x20
	fmul x18, x18, x37
	fadd x18, x35, x18
	sw x18, 2(x36)
iter_trace_diffuse_rays_cont_b3016:
# B3016
	lw x18, 6(x19)
	lw x20, 0(x36)
	fmul x28, x20, x20
	lw x30, 1(x36)
	fmul x31, x30, x30
	fadd x28, x28, x31
	lw x31, 2(x36)
	fmul x35, x31, x31
	fadd x28, x28, x35
	fsqrt x28, x28
	bfeq x28, zero, iter_trace_diffuse_rays_bfneqelse_b3018
# B3017
	bne x18, zero, iter_trace_diffuse_rays_beqelse_b3020
# B3019
	fdiv x18, x33, x28
	j iter_trace_diffuse_rays_cont_b3021 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3020:
# B3020
	fdiv x18, x38, x28
	j iter_trace_diffuse_rays_cont_b3021 # adhoc jump(2)
iter_trace_diffuse_rays_bfneqelse_b3018:
# B3018
	mv x18, x33
iter_trace_diffuse_rays_cont_b3021:
# B3021
	fmul x20, x20, x18
	sw x20, 0(x36)
	fmul x20, x30, x18
	sw x20, 1(x36)
	fmul x18, x31, x18
	sw x18, 2(x36)
iter_trace_diffuse_rays_cont_b3022:
# B3022
	lw x18, 0(x19)
	lw x20, 8(x19)
	lw x20, 0(x20)
	sw x20, 0(x39)
	lw x20, 8(x19)
	lw x20, 1(x20)
	sw x20, 1(x39)
	lw x20, 8(x19)
	lw x20, 2(x20)
	sw x20, 2(x39)
	bne x18, x100, iter_trace_diffuse_rays_beqelse_b3024
# B3023
	lw x18, 0(x29)
	lw x20, 5(x19)
	lw x20, 0(x20)
	fsub x18, x18, x20
	fmul x20, x18, x40
	floor x20, x20
	fmul x20, x20, x5
	fsub x18, x18, x20
	fle x18, x6, x18
	xori x18, x18, 1
	lw x20, 2(x29)
	lw x28, 5(x19)
	lw x28, 2(x28)
	fsub x20, x20, x28
	fmul x28, x20, x40
	floor x28, x28
	fmul x28, x28, x5
	fsub x20, x20, x28
	fle x20, x6, x20
	xori x20, x20, 1
	bne x18, zero, iter_trace_diffuse_rays_beqelse_b3026
# B3025
	bne x20, zero, iter_trace_diffuse_rays_beqelse_b3028
# B3027
	mv x28, x76
	j iter_trace_diffuse_rays_cont_b3031 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3028:
# B3028
	mv x28, zero
	j iter_trace_diffuse_rays_cont_b3031 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3026:
# B3026
	bne x20, zero, iter_trace_diffuse_rays_beqelse_b3030
# B3029
	mv x28, zero
	j iter_trace_diffuse_rays_cont_b3031 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3030:
# B3030
	mv x28, x76
iter_trace_diffuse_rays_cont_b3031:
# B3031
	sw x28, 1(x39)
	j iter_trace_diffuse_rays_cont_b3107 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3024:
# B3024
	bne x18, x12, iter_trace_diffuse_rays_beqelse_b3033
# B3032
	lw x18, 1(x29)
	fmul x18, x18, x65
	fle x20, x18, zero
	xori x20, x20, 1
	fabs x18, x18
	mv x30, x66
	mv x28, x18
iter_trace_diffuse_rays_loop_b3034:
# B3034
	bfle x28, x30, iter_trace_diffuse_rays_bfgtelse_b3037
# B3035
	fmul x30, x30, x67
	j iter_trace_diffuse_rays_loop_b3034 # loopback to while entry from B3035
iter_trace_diffuse_rays_bfgtelse_b3037:
# B3037
	mv x31, x18
	mv x35, x30
	j	iter_trace_diffuse_rays_loop_b3038 # jumping over moved block
iter_trace_diffuse_rays_bfgtelse_b3042:	#moved
# B3042
	mv x35, x18
iter_trace_diffuse_rays_loop_b3038:
# B3038
	bfle x66, x31, iter_trace_diffuse_rays_bfgtelse_b3040
# B3043
	fle x18, x68, x31
	bne x18, zero, iter_trace_diffuse_rays_beqelse_b3045
# B3044
	mv x28, x31
	j iter_trace_diffuse_rays_cont_b3046 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3045:
# B3045
	fsub x28, x31, x68
iter_trace_diffuse_rays_cont_b3046:
# B3046
	xor x18, x18, x20
	bfle x69, x28, iter_trace_diffuse_rays_bfgtelse_b3048
# B3047
	mv x20, x28
	j iter_trace_diffuse_rays_cont_b3049 # adhoc jump(2)
iter_trace_diffuse_rays_bfgtelse_b3048:
# B3048
	fsub x20, x68, x28
iter_trace_diffuse_rays_cont_b3049:
# B3049
	bfle x7, x20, iter_trace_diffuse_rays_bfgtelse_b3051
# B3050
	fmul x28, x20, x20
	fmul x30, x28, x72
	fadd x30, x71, x30
	fmul x30, x28, x30
	fadd x30, x70, x30
	fmul x28, x28, x30
	fadd x28, x33, x28
	fmul x20, x20, x28
	j iter_trace_diffuse_rays_cont_b3052 # adhoc jump(2)
iter_trace_diffuse_rays_bfgtelse_b3051:
# B3051
	fsub x20, x69, x20
	fmul x20, x20, x20
	fmul x28, x20, x75
	fadd x28, x74, x28
	fmul x28, x20, x28
	fadd x28, x73, x28
	fmul x20, x20, x28
	fadd x20, x33, x20
iter_trace_diffuse_rays_cont_b3052:
# B3052
	fle x28, x20, zero
	beq x18, x28, iter_trace_diffuse_rays_bneelse_b3054
# B3053
	mv x18, x20
	j iter_trace_diffuse_rays_cont_b3055 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b3054:
# B3054
	fsub x18, zero, x20
iter_trace_diffuse_rays_cont_b3055:
# B3055
	fmul x18, x18, x18
	fmul x20, x76, x18
	sw x20, 0(x39)
	fsub x18, x33, x18
	fmul x18, x76, x18
	sw x18, 1(x39)
	j iter_trace_diffuse_rays_cont_b3107 # adhoc jump(2)
iter_trace_diffuse_rays_bfgtelse_b3040:
# B3040
	fdiv x18, x35, x67
	bfle x31, x35, iter_trace_diffuse_rays_bfgtelse_b3042
# B3041
	fsub x31, x31, x35
	mv x35, x18
	j iter_trace_diffuse_rays_loop_b3038 # loopback to while entry from B3041
iter_trace_diffuse_rays_beqelse_b3033:
# B3033
	bne x18, x32, iter_trace_diffuse_rays_beqelse_b3057
# B3056
	lw x18, 0(x29)
	lw x20, 5(x19)
	lw x20, 0(x20)
	fsub x18, x18, x20
	lw x20, 2(x29)
	lw x28, 5(x19)
	lw x28, 2(x28)
	fsub x20, x20, x28
	fmul x18, x18, x18
	fmul x20, x20, x20
	fadd x18, x18, x20
	fsqrt x18, x18
	fdiv x18, x18, x6
	floor x20, x18
	fsub x18, x18, x20
	fmul x18, x18, x77
	fabs x18, x18
	mv x28, x66
	mv x20, x18
iter_trace_diffuse_rays_loop_b3058:
# B3058
	bfle x20, x28, iter_trace_diffuse_rays_bfgtelse_b3061
# B3059
	fmul x28, x28, x67
	j iter_trace_diffuse_rays_loop_b3058 # loopback to while entry from B3059
iter_trace_diffuse_rays_bfgtelse_b3061:
# B3061
	mv x31, x28
	mv x30, x18
	j	iter_trace_diffuse_rays_loop_b3062 # jumping over moved block
iter_trace_diffuse_rays_bfgtelse_b3066:	#moved
# B3066
	mv x31, x18
iter_trace_diffuse_rays_loop_b3062:
# B3062
	bfle x66, x30, iter_trace_diffuse_rays_bfgtelse_b3064
# B3067
	fle x18, x68, x30
	bne x18, zero, iter_trace_diffuse_rays_beqelse_b3069
# B3068
	mv x20, x30
	j iter_trace_diffuse_rays_cont_b3070 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3069:
# B3069
	fsub x20, x30, x68
iter_trace_diffuse_rays_cont_b3070:
# B3070
	xori x18, x18, 1
	fle x28, x69, x20
	bne x28, zero, iter_trace_diffuse_rays_beqelse_b3072
	j iter_trace_diffuse_rays_cont_b3073 # adhoc jump(3)
iter_trace_diffuse_rays_beqelse_b3072:
# B3072
	fsub x20, x68, x20
iter_trace_diffuse_rays_cont_b3073:
# B3073
	xor x18, x28, x18
	bfle x7, x20, iter_trace_diffuse_rays_bfgtelse_b3075
iter_trace_diffuse_rays_cont_b3074:
# B3074
	fmul x20, x20, x20
	fmul x28, x20, x75
	fadd x28, x74, x28
	fmul x28, x20, x28
	fadd x28, x73, x28
	fmul x20, x20, x28
	fadd x20, x33, x20
	j iter_trace_diffuse_rays_cont_b3076 # adhoc jump(2)
iter_trace_diffuse_rays_bfgtelse_b3075:
# B3075
	fsub x20, x69, x20
	fmul x28, x20, x20
	fmul x30, x28, x72
	fadd x30, x71, x30
	fmul x30, x28, x30
	fadd x30, x70, x30
	fmul x28, x28, x30
	fadd x28, x33, x28
	fmul x20, x20, x28
iter_trace_diffuse_rays_cont_b3076:
# B3076
	fle x28, x20, zero
	beq x18, x28, iter_trace_diffuse_rays_bneelse_b3078
# B3077
	mv x18, x20
	j iter_trace_diffuse_rays_cont_b3079 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b3078:
# B3078
	fsub x18, zero, x20
iter_trace_diffuse_rays_cont_b3079:
# B3079
	fmul x18, x18, x18
	fmul x20, x18, x76
	sw x20, 1(x39)
	fsub x18, x33, x18
	fmul x18, x18, x76
	sw x18, 2(x39)
	j iter_trace_diffuse_rays_cont_b3107 # adhoc jump(2)
iter_trace_diffuse_rays_bfgtelse_b3064:
# B3064
	fdiv x18, x31, x67
	bfle x30, x31, iter_trace_diffuse_rays_bfgtelse_b3066
# B3065
	fsub x30, x30, x31
	mv x31, x18
	j iter_trace_diffuse_rays_loop_b3062 # loopback to while entry from B3065
iter_trace_diffuse_rays_beqelse_b3057:
# B3057
	bne x18, x78, iter_trace_diffuse_rays_beqelse_b3107
# B3080
	lw x18, 0(x29)
	lw x20, 5(x19)
	lw x20, 0(x20)
	fsub x18, x18, x20
	lw x20, 4(x19)
	lw x20, 0(x20)
	fsqrt x20, x20
	fmul x18, x18, x20
	lw x20, 2(x29)
	lw x28, 5(x19)
	lw x28, 2(x28)
	fsub x20, x20, x28
	lw x28, 4(x19)
	lw x28, 2(x28)
	fsqrt x28, x28
	fmul x20, x20, x28
	fmul x28, x18, x18
	fmul x30, x20, x20
	fadd x28, x28, x30
	fabs x30, x18
	bfle x79, x30, iter_trace_diffuse_rays_bfgtelse_b3082
# B3083
	lui x18, 268032
	j iter_trace_diffuse_rays_cont_b3092 # adhoc jump(2)
iter_trace_diffuse_rays_bfgtelse_b3082:
# B3082
	fdiv x18, x20, x18
	fabs x18, x18
	fle x20, x18, zero
	xori x20, x20, 1
	fabs x30, x18
	bfle x8, x30, iter_trace_diffuse_rays_bfgtelse_b3085
# B3084
	fmul x20, x18, x18
	fmul x30, x20, x85
	fadd x30, x84, x30
	fmul x30, x20, x30
	fadd x30, x83, x30
	fmul x30, x20, x30
	fadd x30, x82, x30
	fmul x30, x20, x30
	fadd x30, x81, x30
	fmul x30, x20, x30
	fadd x30, x80, x30
	fmul x20, x20, x30
	fadd x20, x33, x20
	fmul x18, x18, x20
	j iter_trace_diffuse_rays_cont_b3091 # adhoc jump(2)
iter_trace_diffuse_rays_bfgtelse_b3085:
# B3085
	bfle x86, x30, iter_trace_diffuse_rays_bfgtelse_b3087
# B3086
	fsub x18, x30, x33
	fadd x30, x30, x33
	fdiv x18, x18, x30
	fmul x30, x18, x18
	fmul x31, x30, x85
	fadd x31, x84, x31
	fmul x31, x30, x31
	fadd x31, x83, x31
	fmul x31, x30, x31
	fadd x31, x82, x31
	fmul x31, x30, x31
	fadd x31, x81, x31
	fmul x31, x30, x31
	fadd x31, x80, x31
	fmul x30, x30, x31
	fadd x30, x33, x30
	fmul x18, x18, x30
	fadd x18, x7, x18
	j iter_trace_diffuse_rays_cont_b3088 # adhoc jump(2)
iter_trace_diffuse_rays_bfgtelse_b3087:
# B3087
	fdiv x18, x33, x30
	fmul x30, x18, x18
	fmul x31, x30, x85
	fadd x31, x84, x31
	fmul x31, x30, x31
	fadd x31, x83, x31
	fmul x31, x30, x31
	fadd x31, x82, x31
	fmul x31, x30, x31
	fadd x31, x81, x31
	fmul x31, x30, x31
	fadd x31, x80, x31
	fmul x30, x30, x31
	fadd x30, x33, x30
	fmul x18, x18, x30
	fsub x18, x69, x18
iter_trace_diffuse_rays_cont_b3088:
# B3088
	bne x20, zero, iter_trace_diffuse_rays_beqelse_b3091
# B3089
	fsub x18, zero, x18
iter_trace_diffuse_rays_beqelse_b3091:
iter_trace_diffuse_rays_cont_b3091:
# B3091
	fmul x18, x18, x87
	fdiv x18, x18, x77
iter_trace_diffuse_rays_cont_b3092:
# B3092
	floor x20, x18
	fsub x18, x18, x20
	lw x20, 1(x29)
	lw x30, 5(x19)
	lw x30, 1(x30)
	fsub x20, x20, x30
	lw x30, 4(x19)
	lw x30, 1(x30)
	fsqrt x30, x30
	fmul x20, x20, x30
	fabs x30, x28
	bfle x79, x30, iter_trace_diffuse_rays_bfgtelse_b3093
# B3094
	lui x20, 268032
	j iter_trace_diffuse_rays_cont_b3103 # adhoc jump(2)
iter_trace_diffuse_rays_bfgtelse_b3093:
# B3093
	fdiv x20, x20, x28
	fabs x20, x20
	fle x28, x20, zero
	xori x28, x28, 1
	fabs x30, x20
	bfle x8, x30, iter_trace_diffuse_rays_bfgtelse_b3096
# B3095
	fmul x28, x20, x20
	fmul x30, x28, x85
	fadd x30, x84, x30
	fmul x30, x28, x30
	fadd x30, x83, x30
	fmul x30, x28, x30
	fadd x30, x82, x30
	fmul x30, x28, x30
	fadd x30, x81, x30
	fmul x30, x28, x30
	fadd x30, x80, x30
	fmul x28, x28, x30
	fadd x28, x33, x28
	fmul x20, x20, x28
	j iter_trace_diffuse_rays_cont_b3102 # adhoc jump(2)
iter_trace_diffuse_rays_bfgtelse_b3096:
# B3096
	bfle x86, x30, iter_trace_diffuse_rays_bfgtelse_b3098
# B3097
	fsub x20, x30, x33
	fadd x30, x30, x33
	fdiv x20, x20, x30
	fmul x30, x20, x20
	fmul x31, x30, x85
	fadd x31, x84, x31
	fmul x31, x30, x31
	fadd x31, x83, x31
	fmul x31, x30, x31
	fadd x31, x82, x31
	fmul x31, x30, x31
	fadd x31, x81, x31
	fmul x31, x30, x31
	fadd x31, x80, x31
	fmul x30, x30, x31
	fadd x30, x33, x30
	fmul x20, x20, x30
	fadd x20, x7, x20
	j iter_trace_diffuse_rays_cont_b3099 # adhoc jump(2)
iter_trace_diffuse_rays_bfgtelse_b3098:
# B3098
	fdiv x20, x33, x30
	fmul x30, x20, x20
	fmul x31, x30, x85
	fadd x31, x84, x31
	fmul x31, x30, x31
	fadd x31, x83, x31
	fmul x31, x30, x31
	fadd x31, x82, x31
	fmul x31, x30, x31
	fadd x31, x81, x31
	fmul x31, x30, x31
	fadd x31, x80, x31
	fmul x30, x30, x31
	fadd x30, x33, x30
	fmul x20, x20, x30
	fsub x20, x69, x20
iter_trace_diffuse_rays_cont_b3099:
# B3099
	bne x28, zero, iter_trace_diffuse_rays_beqelse_b3102
# B3100
	fsub x20, zero, x20
iter_trace_diffuse_rays_beqelse_b3102:
iter_trace_diffuse_rays_cont_b3102:
# B3102
	fmul x20, x20, x87
	fdiv x20, x20, x77
iter_trace_diffuse_rays_cont_b3103:
# B3103
	floor x28, x20
	fsub x20, x20, x28
	fsub x18, x37, x18
	fmul x18, x18, x18
	fsub x18, x88, x18
	fsub x20, x37, x20
	fmul x20, x20, x20
	fsub x18, x18, x20
	bfle zero, x18, iter_trace_diffuse_rays_bfgtelse_b3104
# B3105
	mv x20, zero
	j iter_trace_diffuse_rays_cont_b3106 # adhoc jump(2)
iter_trace_diffuse_rays_bfgtelse_b3104:
# B3104
	mv x20, x18
iter_trace_diffuse_rays_cont_b3106:
# B3106
	fmul x18, x76, x20
	fdiv x18, x18, x89
	sw x18, 2(x39)
iter_trace_diffuse_rays_beqelse_b3107:
iter_trace_diffuse_rays_cont_b3107:
# B3107
	lw x18, 0(x21)
	mv x21, x18
	mv x20, zero
iter_trace_diffuse_rays_bneelse_b3108:
iter_trace_diffuse_rays_loop_b3108:
# B3108
	lwr x18, x21, x20
	lw x28, 0(x18)
	beq x28, x24, iter_trace_diffuse_rays_bneelse_b3334
# B3110
	bne x28, x22, iter_trace_diffuse_rays_beqelse_b3112
# B3111
	mv x28, x100
	j iter_trace_diffuse_rays_cont_b3244 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3112:
# B3112
	lwr x30, x26, x28
	lw x31, 0(x29)
	lw x35, 5(x30)
	lw x35, 0(x35)
	fsub x31, x31, x35
	lw x35, 1(x29)
	lw x37, 5(x30)
	lw x37, 1(x37)
	fsub x35, x35, x37
	lw x37, 2(x29)
	lw x38, 5(x30)
	lw x38, 2(x38)
	fsub x37, x37, x38
	lw x38, 1(x9)
	lwr x28, x38, x28
	lw x38, 1(x30)
	bne x38, x100, iter_trace_diffuse_rays_beqelse_b3114
# B3113
	lw x38, 0(x9)
	lw x40, 0(x28)
	fsub x40, x40, x31
	lw x5, 1(x28)
	fmul x40, x40, x5
	lw x6, 1(x38)
	fmul x65, x40, x6
	fadd x65, x65, x35
	fabs x65, x65
	lw x66, 4(x30)
	lw x66, 1(x66)
	bfle x66, x65, iter_trace_diffuse_rays_bfgtelse_b3120
# B3116
	lw x65, 2(x38)
	fmul x65, x40, x65
	fadd x65, x65, x37
	fabs x65, x65
	lw x66, 4(x30)
	lw x66, 2(x66)
	bfle x66, x65, iter_trace_diffuse_rays_bfgtelse_b3120
# B3118
	feq x5, x5, zero
	xori x5, x5, 1
	mv x65, x5
# B3119
	bne x65, zero, iter_trace_diffuse_rays_beqelse_b3121
iter_trace_diffuse_rays_bfgtelse_b3120:
# B3120
	lw x40, 2(x28)
	fsub x40, x40, x35
	lw x5, 3(x28)
	fmul x40, x40, x5
	lw x65, 0(x38)
	fmul x66, x40, x65
	fadd x66, x66, x31
	fabs x66, x66
	lw x67, 4(x30)
	lw x67, 0(x67)
	bfle x67, x66, iter_trace_diffuse_rays_bfgtelse_b3127
# B3123
	lw x38, 2(x38)
	fmul x38, x40, x38
	fadd x38, x38, x37
	fabs x38, x38
	lw x66, 4(x30)
	lw x66, 2(x66)
	bfle x66, x38, iter_trace_diffuse_rays_bfgtelse_b3127
# B3125
	feq x38, x5, zero
	xori x38, x38, 1
	mv x5, x38
# B3126
	bne x5, zero, iter_trace_diffuse_rays_beqelse_b3128
iter_trace_diffuse_rays_bfgtelse_b3127:
# B3127
	lw x38, 4(x28)
	fsub x37, x38, x37
	lw x28, 5(x28)
	fmul x37, x37, x28
	fmul x38, x37, x65
	fadd x31, x38, x31
	fabs x31, x31
	lw x38, 4(x30)
	lw x38, 0(x38)
	bfle x38, x31, iter_trace_diffuse_rays_bfgtelse_b3154
# B3130
	fmul x31, x37, x6
	fadd x31, x31, x35
	fabs x31, x31
	lw x30, 4(x30)
	lw x30, 1(x30)
	bfle x30, x31, iter_trace_diffuse_rays_bfgtelse_b3154
# B3132
	feq x28, x28, zero
	xori x28, x28, 1
	mv x30, x28
# B3133
	bne x30, zero, iter_trace_diffuse_rays_beqelse_b3135
	j iter_trace_diffuse_rays_cont_b3154 # adhoc jump(3)
iter_trace_diffuse_rays_beqelse_b3135:
# B3135
	sw x37, 0(x23)
	mv x28, x32
	j iter_trace_diffuse_rays_cont_b3153 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3128:
# B3128
	sw x40, 0(x23)
	mv x28, x12
	j iter_trace_diffuse_rays_cont_b3153 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3121:
# B3121
	sw x40, 0(x23)
	mv x28, x100
	j iter_trace_diffuse_rays_cont_b3153 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3114:
# B3114
	bne x38, x12, iter_trace_diffuse_rays_beqelse_b3137
# B3136
	lw x30, 0(x28)
	bfle zero, x30, iter_trace_diffuse_rays_bfgtelse_b3154
# B3139
	lw x30, 1(x28)
	fmul x30, x30, x31
	lw x31, 2(x28)
	fmul x31, x31, x35
	fadd x30, x30, x31
	lw x28, 3(x28)
	fmul x28, x28, x37
	fadd x28, x30, x28
	sw x28, 0(x23)
	mv x28, x100
	j iter_trace_diffuse_rays_cont_b3153 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3137:
# B3137
	lw x38, 0(x28)
	bfeq x38, zero, iter_trace_diffuse_rays_bfneqelse_b3154
# B3140
	lw x40, 1(x28)
	fmul x40, x40, x31
	lw x5, 2(x28)
	fmul x5, x5, x35
	fadd x40, x40, x5
	lw x5, 3(x28)
	fmul x5, x5, x37
	fadd x40, x40, x5
	fmul x5, x31, x31
	lw x6, 4(x30)
	lw x6, 0(x6)
	fmul x5, x5, x6
	fmul x6, x35, x35
	lw x65, 4(x30)
	lw x65, 1(x65)
	fmul x6, x6, x65
	fadd x5, x5, x6
	fmul x6, x37, x37
	lw x65, 4(x30)
	lw x65, 2(x65)
	fmul x6, x6, x65
	fadd x5, x5, x6
	lw x6, 3(x30)
	bne x6, zero, iter_trace_diffuse_rays_beqelse_b3143
# B3142
	mv x31, x5
	j iter_trace_diffuse_rays_cont_b3144 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3143:
# B3143
	fmul x6, x35, x37
	lw x65, 9(x30)
	lw x65, 0(x65)
	fmul x6, x6, x65
	fadd x5, x5, x6
	fmul x37, x37, x31
	lw x6, 9(x30)
	lw x6, 1(x6)
	fmul x37, x37, x6
	fadd x37, x5, x37
	fmul x31, x31, x35
	lw x35, 9(x30)
	lw x35, 2(x35)
	fmul x31, x31, x35
	fadd x31, x37, x31
iter_trace_diffuse_rays_cont_b3144:
# B3144
	lw x35, 1(x30)
	bne x35, x32, iter_trace_diffuse_rays_beqelse_b3147
# B3145
	fsub x31, x31, x33
iter_trace_diffuse_rays_beqelse_b3147:
# B3147
	fmul x35, x40, x40
	fmul x31, x38, x31
	fsub x31, x35, x31
	bfle x31, zero, iter_trace_diffuse_rays_bfgtelse_b3154
# B3149
	lw x30, 6(x30)
	fsqrt x31, x31
	bne x30, zero, iter_trace_diffuse_rays_beqelse_b3151
# B3150
	fsub x30, x40, x31
	lw x28, 4(x28)
	fmul x28, x30, x28
	sw x28, 0(x23)
	j iter_trace_diffuse_rays_cont_b3152 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3151:
# B3151
	fadd x30, x40, x31
	lw x28, 4(x28)
	fmul x28, x30, x28
	sw x28, 0(x23)
iter_trace_diffuse_rays_cont_b3152:
# B3152
	mv x28, x100
iter_trace_diffuse_rays_cont_b3153:
# B3153
	bne x28, zero, iter_trace_diffuse_rays_beqelse_b3155
iter_trace_diffuse_rays_bfgtelse_b3154:
iter_trace_diffuse_rays_bfneqelse_b3154:
iter_trace_diffuse_rays_cont_b3154:
# B3154
	mv x28, zero
	j iter_trace_diffuse_rays_cont_b3244 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3155:
# B3155
	lw x28, 0(x23)
	bfle x34, x28, iter_trace_diffuse_rays_bfgtelse_b3156
# B3157
	mv x31, x18
	mv x30, x100
iter_trace_diffuse_rays_loop_b3158:
# B3158
	lwr x28, x31, x30
	beq x28, x24, iter_trace_diffuse_rays_bneelse_b3242
# B3160
	lwr x28, x25, x28
	mv x37, x28
	mv x35, zero
iter_trace_diffuse_rays_beqelse_b3161:
iter_trace_diffuse_rays_loop_b3161:
# B3161
	lwr x28, x37, x35
	beq x28, x24, iter_trace_diffuse_rays_bneelse_b3239
# B3163
	lwr x28, x37, x35
	lwr x38, x26, x28
	lw x40, 0(x29)
	lw x5, 5(x38)
	lw x5, 0(x5)
	fsub x5, x40, x5
	lw x6, 1(x29)
	lw x65, 5(x38)
	lw x65, 1(x65)
	fsub x65, x6, x65
	lw x66, 2(x29)
	lw x67, 5(x38)
	lw x67, 2(x67)
	fsub x67, x66, x67
	lw x68, 1(x9)
	lwr x68, x68, x28
	lw x69, 1(x38)
	bne x69, x100, iter_trace_diffuse_rays_beqelse_b3165
# B3164
	lw x69, 0(x9)
	lw x7, 0(x68)
	fsub x7, x7, x5
	lw x70, 1(x68)
	fmul x7, x7, x70
	lw x71, 1(x69)
	fmul x72, x7, x71
	fadd x72, x72, x65
	fabs x72, x72
	lw x73, 4(x38)
	lw x73, 1(x73)
	bfle x73, x72, iter_trace_diffuse_rays_bfgtelse_b3171
# B3167
	lw x72, 2(x69)
	fmul x72, x7, x72
	fadd x72, x72, x67
	fabs x72, x72
	lw x73, 4(x38)
	lw x73, 2(x73)
	bfle x73, x72, iter_trace_diffuse_rays_bfgtelse_b3171
# B3169
	feq x70, x70, zero
	xori x70, x70, 1
	mv x72, x70
# B3170
	bne x72, zero, iter_trace_diffuse_rays_beqelse_b3172
iter_trace_diffuse_rays_bfgtelse_b3171:
# B3171
	lw x7, 2(x68)
	fsub x7, x7, x65
	lw x70, 3(x68)
	fmul x7, x7, x70
	lw x72, 0(x69)
	fmul x73, x7, x72
	fadd x73, x73, x5
	fabs x73, x73
	lw x74, 4(x38)
	lw x74, 0(x74)
	bfle x74, x73, iter_trace_diffuse_rays_bfgtelse_b3178
# B3174
	lw x69, 2(x69)
	fmul x69, x7, x69
	fadd x69, x69, x67
	fabs x69, x69
	lw x73, 4(x38)
	lw x73, 2(x73)
	bfle x73, x69, iter_trace_diffuse_rays_bfgtelse_b3178
# B3176
	feq x69, x70, zero
	xori x69, x69, 1
	mv x70, x69
# B3177
	bne x70, zero, iter_trace_diffuse_rays_beqelse_b3179
iter_trace_diffuse_rays_bfgtelse_b3178:
# B3178
	lw x69, 4(x68)
	fsub x67, x69, x67
	lw x68, 5(x68)
	fmul x67, x67, x68
	fmul x69, x67, x72
	fadd x5, x69, x5
	fabs x5, x5
	lw x69, 4(x38)
	lw x69, 0(x69)
	bfle x69, x5, iter_trace_diffuse_rays_bfgtelse_b3185
# B3181
	fmul x5, x67, x71
	fadd x5, x5, x65
	fabs x5, x5
	lw x38, 4(x38)
	lw x38, 1(x38)
	bfle x38, x5, iter_trace_diffuse_rays_bfgtelse_b3185
# B3183
	feq x38, x68, zero
	xori x38, x38, 1
	mv x5, x38
# B3184
	bne x5, zero, iter_trace_diffuse_rays_beqelse_b3186
iter_trace_diffuse_rays_bfgtelse_b3185:
# B3185
	mv x38, zero
	j iter_trace_diffuse_rays_cont_b3204 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3186:
# B3186
	sw x67, 0(x23)
	mv x38, x32
	j iter_trace_diffuse_rays_cont_b3204 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3179:
# B3179
	sw x7, 0(x23)
	mv x38, x12
	j iter_trace_diffuse_rays_cont_b3204 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3172:
# B3172
	sw x7, 0(x23)
	mv x38, x100
	j iter_trace_diffuse_rays_cont_b3204 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3165:
# B3165
	bne x69, x12, iter_trace_diffuse_rays_beqelse_b3188
# B3187
	lw x38, 0(x68)
	bfle zero, x38, iter_trace_diffuse_rays_bfgtelse_b3189
# B3190
	lw x38, 1(x68)
	fmul x38, x38, x5
	lw x5, 2(x68)
	fmul x5, x5, x65
	fadd x38, x38, x5
	lw x5, 3(x68)
	fmul x5, x5, x67
	fadd x38, x38, x5
	sw x38, 0(x23)
	mv x38, x100
	j iter_trace_diffuse_rays_cont_b3204 # adhoc jump(2)
iter_trace_diffuse_rays_bfgtelse_b3189:
# B3189
	mv x38, zero
	j iter_trace_diffuse_rays_cont_b3204 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3188:
# B3188
	lw x69, 0(x68)
	bfeq x69, zero, iter_trace_diffuse_rays_bfneqelse_b3192
# B3191
	lw x7, 1(x68)
	fmul x7, x7, x5
	lw x70, 2(x68)
	fmul x70, x70, x65
	fadd x7, x7, x70
	lw x70, 3(x68)
	fmul x70, x70, x67
	fadd x7, x7, x70
	fmul x70, x5, x5
	lw x71, 4(x38)
	lw x71, 0(x71)
	fmul x70, x70, x71
	fmul x71, x65, x65
	lw x72, 4(x38)
	lw x72, 1(x72)
	fmul x71, x71, x72
	fadd x70, x70, x71
	fmul x71, x67, x67
	lw x72, 4(x38)
	lw x72, 2(x72)
	fmul x71, x71, x72
	fadd x70, x70, x71
	lw x71, 3(x38)
	bne x71, zero, iter_trace_diffuse_rays_beqelse_b3194
# B3193
	mv x5, x70
	j iter_trace_diffuse_rays_cont_b3195 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3194:
# B3194
	fmul x71, x65, x67
	lw x72, 9(x38)
	lw x72, 0(x72)
	fmul x71, x71, x72
	fadd x70, x70, x71
	fmul x67, x67, x5
	lw x71, 9(x38)
	lw x71, 1(x71)
	fmul x67, x67, x71
	fadd x67, x70, x67
	fmul x5, x5, x65
	lw x65, 9(x38)
	lw x65, 2(x65)
	fmul x5, x5, x65
	fadd x5, x67, x5
iter_trace_diffuse_rays_cont_b3195:
# B3195
	lw x65, 1(x38)
	bne x65, x32, iter_trace_diffuse_rays_beqelse_b3198
# B3196
	fsub x5, x5, x33
iter_trace_diffuse_rays_beqelse_b3198:
# B3198
	fmul x65, x7, x7
	fmul x5, x69, x5
	fsub x5, x65, x5
	bfle x5, zero, iter_trace_diffuse_rays_bfgtelse_b3199
# B3200
	lw x38, 6(x38)
	fsqrt x5, x5
	bne x38, zero, iter_trace_diffuse_rays_beqelse_b3202
# B3201
	fsub x38, x7, x5
	lw x5, 4(x68)
	fmul x38, x38, x5
	sw x38, 0(x23)
	j iter_trace_diffuse_rays_cont_b3203 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3202:
# B3202
	fadd x38, x7, x5
	lw x5, 4(x68)
	fmul x38, x38, x5
	sw x38, 0(x23)
iter_trace_diffuse_rays_cont_b3203:
# B3203
	mv x38, x100
	j iter_trace_diffuse_rays_cont_b3204 # adhoc jump(2)
iter_trace_diffuse_rays_bfgtelse_b3199:
# B3199
	mv x38, zero
	j iter_trace_diffuse_rays_cont_b3204 # adhoc jump(2)
iter_trace_diffuse_rays_bfneqelse_b3192:
# B3192
	mv x38, zero
iter_trace_diffuse_rays_cont_b3204:
# B3204
	lw x5, 0(x23)
	bne x38, zero, iter_trace_diffuse_rays_beqelse_b3206
# B3205
	mv x38, zero
	j iter_trace_diffuse_rays_cont_b3207 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3206:
# B3206
	fle x38, x90, x5
	xori x38, x38, 1
iter_trace_diffuse_rays_cont_b3207:
# B3207
	addi x35, x35, 1
	bne x38, zero, iter_trace_diffuse_rays_beqelse_b3209
# B3208
	lwr x28, x26, x28
	lw x28, 6(x28)
	beq x28, zero, iter_trace_diffuse_rays_bneelse_b3239
	j	iter_trace_diffuse_rays_beqelse_b3161 # moved need extra jump for 3161 at B3208
iter_trace_diffuse_rays_beqelse_b3209:
# B3209
	fadd x28, x5, x27
	lw x38, 0(x91)
	fmul x38, x38, x28
	fadd x38, x38, x40
	lw x40, 1(x91)
	fmul x40, x40, x28
	fadd x40, x40, x6
	lw x5, 2(x91)
	fmul x28, x5, x28
	fadd x28, x28, x66
	mv x6, x37
	mv x66, x40
	mv x65, x38
	mv x67, x28
	mv x5, zero
	j	iter_trace_diffuse_rays_loop_b3212 # jumping over moved block
iter_trace_diffuse_rays_bneelse_b3233:	#moved
# B3233
	addi x5, x5, 1
iter_trace_diffuse_rays_loop_b3212:
# B3212
	lwr x28, x6, x5
	bne x28, x24, iter_trace_diffuse_rays_beqelse_b3214
# B3213
	mv x38, x100
# B3235
	bne x38, zero, iter_trace_diffuse_rays_beqelse_b3237
	j	iter_trace_diffuse_rays_beqelse_b3161 # moved need extra jump for 3161 at B3235
iter_trace_diffuse_rays_beqelse_b3237:
# B3237
	mv x28, x100
iter_trace_diffuse_rays_cont_b3238:
# B3238
	bne x28, zero, iter_trace_diffuse_rays_beqelse_b3240
iter_trace_diffuse_rays_bneelse_b3239:
iter_trace_diffuse_rays_cont_b3239:
# B3239
	addi x30, x30, 1
	j iter_trace_diffuse_rays_loop_b3158 # loopback to while entry from B3239
iter_trace_diffuse_rays_beqelse_b3240:
# B3240
	mv x35, x100
# B3241
	bne x35, zero, iter_trace_diffuse_rays_beqelse_b3243
iter_trace_diffuse_rays_bneelse_b3242:
# B3242
	mv x28, zero
	j iter_trace_diffuse_rays_cont_b3244 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3243:
# B3243
	mv x28, x100
	j iter_trace_diffuse_rays_cont_b3244 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3214:
# B3214
	lwr x28, x26, x28
	lw x38, 5(x28)
	lw x38, 0(x38)
	fsub x38, x65, x38
	lw x40, 5(x28)
	lw x40, 1(x40)
	fsub x40, x66, x40
	lw x68, 5(x28)
	lw x68, 2(x68)
	fsub x68, x67, x68
	lw x69, 1(x28)
	bne x69, x100, iter_trace_diffuse_rays_beqelse_b3216
# B3215
	fabs x38, x38
	lw x69, 4(x28)
	lw x69, 0(x69)
	bfle x69, x38, iter_trace_diffuse_rays_bfgtelse_b3222
# B3218
	fabs x38, x40
	lw x40, 4(x28)
	lw x40, 1(x40)
	bfle x40, x38, iter_trace_diffuse_rays_bfgtelse_b3222
# B3220
	fabs x38, x68
	lw x40, 4(x28)
	lw x40, 2(x40)
	fle x38, x40, x38
	xori x38, x38, 1
	mv x40, x38
# B3221
	bne x40, zero, iter_trace_diffuse_rays_beqelse_b3223
iter_trace_diffuse_rays_bfgtelse_b3222:
# B3222
	lw x28, 6(x28)
	xori x28, x28, 1
	j iter_trace_diffuse_rays_cont_b3232 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3223:
# B3223
	lw x28, 6(x28)
	j iter_trace_diffuse_rays_cont_b3232 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3216:
# B3216
	bne x69, x12, iter_trace_diffuse_rays_beqelse_b3225
# B3224
	lw x69, 4(x28)
	lw x7, 0(x69)
	fmul x38, x7, x38
	lw x7, 1(x69)
	fmul x40, x7, x40
	fadd x38, x38, x40
	lw x40, 2(x69)
	fmul x40, x40, x68
	fadd x38, x38, x40
	lw x28, 6(x28)
	fle x38, zero, x38
	xori x38, x38, 1
	xor x28, x28, x38
	xori x28, x28, 1
	j iter_trace_diffuse_rays_cont_b3232 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3225:
# B3225
	fmul x69, x38, x38
	lw x7, 4(x28)
	lw x7, 0(x7)
	fmul x69, x69, x7
	fmul x7, x40, x40
	lw x70, 4(x28)
	lw x70, 1(x70)
	fmul x7, x7, x70
	fadd x69, x69, x7
	fmul x7, x68, x68
	lw x70, 4(x28)
	lw x70, 2(x70)
	fmul x7, x7, x70
	fadd x69, x69, x7
	lw x7, 3(x28)
	bne x7, zero, iter_trace_diffuse_rays_beqelse_b3227
# B3226
	mv x38, x69
	j iter_trace_diffuse_rays_cont_b3228 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3227:
# B3227
	fmul x7, x40, x68
	lw x70, 9(x28)
	lw x70, 0(x70)
	fmul x7, x7, x70
	fadd x69, x69, x7
	fmul x68, x68, x38
	lw x7, 9(x28)
	lw x7, 1(x7)
	fmul x68, x68, x7
	fadd x68, x69, x68
	fmul x38, x38, x40
	lw x40, 9(x28)
	lw x40, 2(x40)
	fmul x38, x38, x40
	fadd x38, x68, x38
iter_trace_diffuse_rays_cont_b3228:
# B3228
	lw x40, 1(x28)
	bne x40, x32, iter_trace_diffuse_rays_beqelse_b3231
# B3229
	fsub x38, x38, x33
iter_trace_diffuse_rays_beqelse_b3231:
# B3231
	lw x28, 6(x28)
	fle x38, zero, x38
	xori x38, x38, 1
	xor x28, x28, x38
	xori x28, x28, 1
iter_trace_diffuse_rays_cont_b3232:
# B3232
	beq x28, zero, iter_trace_diffuse_rays_bneelse_b3233
	j	iter_trace_diffuse_rays_beqelse_b3161 # moved need extra jump for 3161 at B3232
iter_trace_diffuse_rays_bfgtelse_b3156:
# B3156
	mv x28, zero
iter_trace_diffuse_rays_cont_b3244:
# B3244
	addi x20, x20, 1
	bne x28, zero, iter_trace_diffuse_rays_beqelse_b3246
	j	iter_trace_diffuse_rays_bneelse_b3108 # moved need extra jump for 3108 at B3244
iter_trace_diffuse_rays_beqelse_b3246:
# B3246
	mv x31, x18
	mv x30, x100
iter_trace_diffuse_rays_cont_b3247:
iter_trace_diffuse_rays_loop_b3247:
# B3247
	lwr x18, x31, x30
	beq x18, x24, iter_trace_diffuse_rays_bneelse_b3108
# B3249
	lwr x18, x25, x18
	mv x35, x18
	mv x28, zero
iter_trace_diffuse_rays_beqelse_b3250:
iter_trace_diffuse_rays_loop_b3250:
# B3250
	lwr x18, x35, x28
	beq x18, x24, iter_trace_diffuse_rays_bneelse_b3328
# B3252
	lwr x18, x35, x28
	lwr x37, x26, x18
	lw x38, 0(x29)
	lw x40, 5(x37)
	lw x40, 0(x40)
	fsub x40, x38, x40
	lw x5, 1(x29)
	lw x6, 5(x37)
	lw x6, 1(x6)
	fsub x6, x5, x6
	lw x65, 2(x29)
	lw x66, 5(x37)
	lw x66, 2(x66)
	fsub x66, x65, x66
	lw x67, 1(x9)
	lwr x67, x67, x18
	lw x68, 1(x37)
	bne x68, x100, iter_trace_diffuse_rays_beqelse_b3254
# B3253
	lw x68, 0(x9)
	lw x69, 0(x67)
	fsub x69, x69, x40
	lw x7, 1(x67)
	fmul x69, x69, x7
	lw x70, 1(x68)
	fmul x71, x69, x70
	fadd x71, x71, x6
	fabs x71, x71
	lw x72, 4(x37)
	lw x72, 1(x72)
	bfle x72, x71, iter_trace_diffuse_rays_bfgtelse_b3260
# B3256
	lw x71, 2(x68)
	fmul x71, x69, x71
	fadd x71, x71, x66
	fabs x71, x71
	lw x72, 4(x37)
	lw x72, 2(x72)
	bfle x72, x71, iter_trace_diffuse_rays_bfgtelse_b3260
# B3258
	feq x7, x7, zero
	xori x7, x7, 1
	mv x71, x7
# B3259
	bne x71, zero, iter_trace_diffuse_rays_beqelse_b3261
iter_trace_diffuse_rays_bfgtelse_b3260:
# B3260
	lw x69, 2(x67)
	fsub x69, x69, x6
	lw x7, 3(x67)
	fmul x69, x69, x7
	lw x71, 0(x68)
	fmul x72, x69, x71
	fadd x72, x72, x40
	fabs x72, x72
	lw x73, 4(x37)
	lw x73, 0(x73)
	bfle x73, x72, iter_trace_diffuse_rays_bfgtelse_b3267
# B3263
	lw x68, 2(x68)
	fmul x68, x69, x68
	fadd x68, x68, x66
	fabs x68, x68
	lw x72, 4(x37)
	lw x72, 2(x72)
	bfle x72, x68, iter_trace_diffuse_rays_bfgtelse_b3267
# B3265
	feq x68, x7, zero
	xori x68, x68, 1
	mv x7, x68
# B3266
	bne x7, zero, iter_trace_diffuse_rays_beqelse_b3268
iter_trace_diffuse_rays_bfgtelse_b3267:
# B3267
	lw x68, 4(x67)
	fsub x66, x68, x66
	lw x67, 5(x67)
	fmul x66, x66, x67
	fmul x68, x66, x71
	fadd x40, x68, x40
	fabs x40, x40
	lw x68, 4(x37)
	lw x68, 0(x68)
	bfle x68, x40, iter_trace_diffuse_rays_bfgtelse_b3274
# B3270
	fmul x40, x66, x70
	fadd x40, x40, x6
	fabs x40, x40
	lw x37, 4(x37)
	lw x37, 1(x37)
	bfle x37, x40, iter_trace_diffuse_rays_bfgtelse_b3274
# B3272
	feq x37, x67, zero
	xori x37, x37, 1
	mv x40, x37
# B3273
	bne x40, zero, iter_trace_diffuse_rays_beqelse_b3275
iter_trace_diffuse_rays_bfgtelse_b3274:
# B3274
	mv x37, zero
	j iter_trace_diffuse_rays_cont_b3293 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3275:
# B3275
	sw x66, 0(x23)
	mv x37, x32
	j iter_trace_diffuse_rays_cont_b3293 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3268:
# B3268
	sw x69, 0(x23)
	mv x37, x12
	j iter_trace_diffuse_rays_cont_b3293 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3261:
# B3261
	sw x69, 0(x23)
	mv x37, x100
	j iter_trace_diffuse_rays_cont_b3293 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3254:
# B3254
	bne x68, x12, iter_trace_diffuse_rays_beqelse_b3277
# B3276
	lw x37, 0(x67)
	bfle zero, x37, iter_trace_diffuse_rays_bfgtelse_b3278
# B3279
	lw x37, 1(x67)
	fmul x37, x37, x40
	lw x40, 2(x67)
	fmul x40, x40, x6
	fadd x37, x37, x40
	lw x40, 3(x67)
	fmul x40, x40, x66
	fadd x37, x37, x40
	sw x37, 0(x23)
	mv x37, x100
	j iter_trace_diffuse_rays_cont_b3293 # adhoc jump(2)
iter_trace_diffuse_rays_bfgtelse_b3278:
# B3278
	mv x37, zero
	j iter_trace_diffuse_rays_cont_b3293 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3277:
# B3277
	lw x68, 0(x67)
	bfeq x68, zero, iter_trace_diffuse_rays_bfneqelse_b3281
# B3280
	lw x69, 1(x67)
	fmul x69, x69, x40
	lw x7, 2(x67)
	fmul x7, x7, x6
	fadd x69, x69, x7
	lw x7, 3(x67)
	fmul x7, x7, x66
	fadd x69, x69, x7
	fmul x7, x40, x40
	lw x70, 4(x37)
	lw x70, 0(x70)
	fmul x7, x7, x70
	fmul x70, x6, x6
	lw x71, 4(x37)
	lw x71, 1(x71)
	fmul x70, x70, x71
	fadd x7, x7, x70
	fmul x70, x66, x66
	lw x71, 4(x37)
	lw x71, 2(x71)
	fmul x70, x70, x71
	fadd x7, x7, x70
	lw x70, 3(x37)
	bne x70, zero, iter_trace_diffuse_rays_beqelse_b3283
# B3282
	mv x40, x7
	j iter_trace_diffuse_rays_cont_b3284 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3283:
# B3283
	fmul x70, x6, x66
	lw x71, 9(x37)
	lw x71, 0(x71)
	fmul x70, x70, x71
	fadd x7, x7, x70
	fmul x66, x66, x40
	lw x70, 9(x37)
	lw x70, 1(x70)
	fmul x66, x66, x70
	fadd x66, x7, x66
	fmul x40, x40, x6
	lw x6, 9(x37)
	lw x6, 2(x6)
	fmul x40, x40, x6
	fadd x40, x66, x40
iter_trace_diffuse_rays_cont_b3284:
# B3284
	lw x6, 1(x37)
	bne x6, x32, iter_trace_diffuse_rays_beqelse_b3287
# B3285
	fsub x40, x40, x33
iter_trace_diffuse_rays_beqelse_b3287:
# B3287
	fmul x6, x69, x69
	fmul x40, x68, x40
	fsub x40, x6, x40
	bfle x40, zero, iter_trace_diffuse_rays_bfgtelse_b3288
# B3289
	lw x37, 6(x37)
	fsqrt x40, x40
	bne x37, zero, iter_trace_diffuse_rays_beqelse_b3291
# B3290
	fsub x37, x69, x40
	lw x40, 4(x67)
	fmul x37, x37, x40
	sw x37, 0(x23)
	j iter_trace_diffuse_rays_cont_b3292 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3291:
# B3291
	fadd x37, x69, x40
	lw x40, 4(x67)
	fmul x37, x37, x40
	sw x37, 0(x23)
iter_trace_diffuse_rays_cont_b3292:
# B3292
	mv x37, x100
	j iter_trace_diffuse_rays_cont_b3293 # adhoc jump(2)
iter_trace_diffuse_rays_bfgtelse_b3288:
# B3288
	mv x37, zero
	j iter_trace_diffuse_rays_cont_b3293 # adhoc jump(2)
iter_trace_diffuse_rays_bfneqelse_b3281:
# B3281
	mv x37, zero
iter_trace_diffuse_rays_cont_b3293:
# B3293
	lw x40, 0(x23)
	bne x37, zero, iter_trace_diffuse_rays_beqelse_b3295
# B3294
	mv x37, zero
	j iter_trace_diffuse_rays_cont_b3296 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3295:
# B3295
	fle x37, x90, x40
	xori x37, x37, 1
iter_trace_diffuse_rays_cont_b3296:
# B3296
	addi x28, x28, 1
	bne x37, zero, iter_trace_diffuse_rays_beqelse_b3298
# B3297
	lwr x18, x26, x18
	lw x18, 6(x18)
	beq x18, zero, iter_trace_diffuse_rays_bneelse_b3328
	j	iter_trace_diffuse_rays_beqelse_b3250 # moved need extra jump for 3250 at B3297
iter_trace_diffuse_rays_beqelse_b3298:
# B3298
	fadd x18, x40, x27
	lw x37, 0(x91)
	fmul x37, x37, x18
	fadd x37, x37, x38
	lw x38, 1(x91)
	fmul x38, x38, x18
	fadd x38, x38, x5
	lw x40, 2(x91)
	fmul x18, x40, x18
	fadd x18, x18, x65
	mv x6, x37
	mv x40, zero
	mv x5, x35
	mv x65, x38
	mv x66, x18
	j	iter_trace_diffuse_rays_loop_b3301 # jumping over moved block
iter_trace_diffuse_rays_bneelse_b3322:	#moved
# B3322
	addi x40, x40, 1
iter_trace_diffuse_rays_loop_b3301:
# B3301
	lwr x18, x5, x40
	bne x18, x24, iter_trace_diffuse_rays_beqelse_b3303
# B3302
	mv x37, x100
# B3324
	bne x37, zero, iter_trace_diffuse_rays_beqelse_b3326
	j	iter_trace_diffuse_rays_beqelse_b3250 # moved need extra jump for 3250 at B3324
iter_trace_diffuse_rays_beqelse_b3326:
# B3326
	mv x18, x100
iter_trace_diffuse_rays_cont_b3327:
# B3327
	bne x18, zero, iter_trace_diffuse_rays_beqelse_b3329
iter_trace_diffuse_rays_bneelse_b3328:
iter_trace_diffuse_rays_cont_b3328:
# B3328
	addi x30, x30, 1
	j iter_trace_diffuse_rays_loop_b3247 # loopback to while entry from B3328
iter_trace_diffuse_rays_beqelse_b3329:
# B3329
	mv x28, x100
# B3330
	bne x28, zero, iter_trace_diffuse_rays_beqelse_b3332
	j	iter_trace_diffuse_rays_bneelse_b3108 # moved need extra jump for 3108 at B3330
iter_trace_diffuse_rays_beqelse_b3332:
# B3332
	mv x18, x100
iter_trace_diffuse_rays_cont_b3333:
# B3333
	bne x18, zero, iter_trace_diffuse_rays_beqelse_b3339
iter_trace_diffuse_rays_bneelse_b3334:
# B3334
	lw x18, 0(x36)
	lw x20, 0(x91)
	fmul x18, x18, x20
	lw x20, 1(x36)
	lw x21, 1(x91)
	fmul x20, x20, x21
	fadd x18, x18, x20
	lw x20, 2(x36)
	lw x21, 2(x91)
	fmul x20, x20, x21
	fadd x18, x18, x20
	fsub x18, zero, x18
	bfle x18, zero, iter_trace_diffuse_rays_bfgtelse_b3336
# B3337
	mv x20, x18
	j iter_trace_diffuse_rays_cont_b3338 # adhoc jump(2)
iter_trace_diffuse_rays_bfgtelse_b3336:
# B3336
	mv x20, zero
iter_trace_diffuse_rays_cont_b3338:
# B3338
	fmul x17, x17, x20
	lw x18, 7(x19)
	lw x18, 0(x18)
	fmul x17, x17, x18
	lw x18, 0(x92)
	lw x19, 0(x39)
	fmul x19, x17, x19
	fadd x18, x18, x19
	sw x18, 0(x92)
	lw x18, 1(x92)
	lw x19, 1(x39)
	fmul x19, x17, x19
	fadd x18, x18, x19
	sw x18, 1(x92)
	lw x18, 2(x92)
	lw x19, 2(x39)
	fmul x17, x17, x19
	fadd x17, x18, x17
	sw x17, 2(x92)
iter_trace_diffuse_rays_beqelse_b3339:
iter_trace_diffuse_rays_bfgtelse_b3339:
iter_trace_diffuse_rays_cont_b3339:
# B3339
	addi x16, x16, -2
	j iter_trace_diffuse_rays_loop_b2256 # loopback to while entry from B3339
iter_trace_diffuse_rays_beqelse_b3303:
# B3303
	lwr x18, x26, x18
	lw x37, 5(x18)
	lw x37, 0(x37)
	fsub x37, x6, x37
	lw x38, 5(x18)
	lw x38, 1(x38)
	fsub x38, x65, x38
	lw x67, 5(x18)
	lw x67, 2(x67)
	fsub x67, x66, x67
	lw x68, 1(x18)
	bne x68, x100, iter_trace_diffuse_rays_beqelse_b3305
# B3304
	fabs x37, x37
	lw x68, 4(x18)
	lw x68, 0(x68)
	bfle x68, x37, iter_trace_diffuse_rays_bfgtelse_b3311
# B3307
	fabs x37, x38
	lw x38, 4(x18)
	lw x38, 1(x38)
	bfle x38, x37, iter_trace_diffuse_rays_bfgtelse_b3311
# B3309
	fabs x37, x67
	lw x38, 4(x18)
	lw x38, 2(x38)
	fle x37, x38, x37
	xori x37, x37, 1
	mv x38, x37
# B3310
	bne x38, zero, iter_trace_diffuse_rays_beqelse_b3312
iter_trace_diffuse_rays_bfgtelse_b3311:
# B3311
	lw x18, 6(x18)
	xori x18, x18, 1
	j iter_trace_diffuse_rays_cont_b3321 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3312:
# B3312
	lw x18, 6(x18)
	j iter_trace_diffuse_rays_cont_b3321 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3305:
# B3305
	bne x68, x12, iter_trace_diffuse_rays_beqelse_b3314
# B3313
	lw x68, 4(x18)
	lw x69, 0(x68)
	fmul x37, x69, x37
	lw x69, 1(x68)
	fmul x38, x69, x38
	fadd x37, x37, x38
	lw x38, 2(x68)
	fmul x38, x38, x67
	fadd x37, x37, x38
	lw x18, 6(x18)
	fle x37, zero, x37
	xori x37, x37, 1
	xor x18, x18, x37
	xori x18, x18, 1
	j iter_trace_diffuse_rays_cont_b3321 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3314:
# B3314
	fmul x68, x37, x37
	lw x69, 4(x18)
	lw x69, 0(x69)
	fmul x68, x68, x69
	fmul x69, x38, x38
	lw x7, 4(x18)
	lw x7, 1(x7)
	fmul x69, x69, x7
	fadd x68, x68, x69
	fmul x69, x67, x67
	lw x7, 4(x18)
	lw x7, 2(x7)
	fmul x69, x69, x7
	fadd x68, x68, x69
	lw x69, 3(x18)
	bne x69, zero, iter_trace_diffuse_rays_beqelse_b3316
# B3315
	mv x37, x68
	j iter_trace_diffuse_rays_cont_b3317 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3316:
# B3316
	fmul x69, x38, x67
	lw x7, 9(x18)
	lw x7, 0(x7)
	fmul x69, x69, x7
	fadd x68, x68, x69
	fmul x67, x67, x37
	lw x69, 9(x18)
	lw x69, 1(x69)
	fmul x67, x67, x69
	fadd x67, x68, x67
	fmul x37, x37, x38
	lw x38, 9(x18)
	lw x38, 2(x38)
	fmul x37, x37, x38
	fadd x37, x67, x37
iter_trace_diffuse_rays_cont_b3317:
# B3317
	lw x38, 1(x18)
	bne x38, x32, iter_trace_diffuse_rays_beqelse_b3320
# B3318
	fsub x37, x37, x33
iter_trace_diffuse_rays_beqelse_b3320:
# B3320
	lw x18, 6(x18)
	fle x37, zero, x37
	xori x37, x37, 1
	xor x18, x18, x37
	xori x18, x18, 1
iter_trace_diffuse_rays_cont_b3321:
# B3321
	beq x18, zero, iter_trace_diffuse_rays_bneelse_b3322
	j	iter_trace_diffuse_rays_beqelse_b3250 # moved need extra jump for 3250 at B3321
iter_trace_diffuse_rays_bleelse_b2258:
# B2258
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
	sw	x113, 13(x2)
	sw	x114, 14(x2)
	sw	x115, 15(x2)
	sw	x116, 16(x2)
	sw	x117, 17(x2)
	sw	x118, 18(x2)
	sw	x119, 19(x2)
body_trace_diffuse_rays.3085:
# B3340
# B3341
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
	la x13, min_caml_objects
	li x14, 3
	lui x15, 260096
	mv x16, x7
	mv x17, x12
trace_diffuse_rays_loop_b3342:
# B3342
	bgt zero, x17, trace_diffuse_rays_bleelse_b3356
# B3343
	lwr x12, x13, x17
	lw x18, 10(x12)
	lw x19, 1(x12)
	lw x20, 0(x16)
	lw x21, 5(x12)
	lw x21, 0(x21)
	fsub x20, x20, x21
	sw x20, 0(x18)
	lw x20, 1(x16)
	lw x21, 5(x12)
	lw x21, 1(x21)
	fsub x20, x20, x21
	sw x20, 1(x18)
	lw x20, 2(x16)
	lw x21, 5(x12)
	lw x21, 2(x21)
	fsub x20, x20, x21
	sw x20, 2(x18)
	bne x19, x11, trace_diffuse_rays_beqelse_b3346
# B3345
	lw x12, 4(x12)
	lw x19, 0(x18)
	lw x20, 1(x18)
	lw x21, 2(x18)
	lw x22, 0(x12)
	fmul x19, x22, x19
	lw x22, 1(x12)
	fmul x20, x22, x20
	fadd x19, x19, x20
	lw x12, 2(x12)
	fmul x12, x12, x21
	fadd x12, x19, x12
	sw x12, 3(x18)
	j trace_diffuse_rays_cont_b3355 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3346:
# B3346
	bge x11, x19, trace_diffuse_rays_bgtelse_b3355
# B3348
	lw x20, 0(x18)
	lw x21, 1(x18)
	lw x22, 2(x18)
	fmul x23, x20, x20
	lw x24, 4(x12)
	lw x24, 0(x24)
	fmul x23, x23, x24
	fmul x24, x21, x21
	lw x25, 4(x12)
	lw x25, 1(x25)
	fmul x24, x24, x25
	fadd x23, x23, x24
	fmul x24, x22, x22
	lw x25, 4(x12)
	lw x25, 2(x25)
	fmul x24, x24, x25
	fadd x23, x23, x24
	lw x24, 3(x12)
	bne x24, zero, trace_diffuse_rays_beqelse_b3350
# B3349
	mv x12, x23
	j trace_diffuse_rays_cont_b3351 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3350:
# B3350
	fmul x24, x21, x22
	lw x25, 9(x12)
	lw x25, 0(x25)
	fmul x24, x24, x25
	fadd x23, x23, x24
	fmul x22, x22, x20
	lw x24, 9(x12)
	lw x24, 1(x24)
	fmul x22, x22, x24
	fadd x22, x23, x22
	fmul x20, x20, x21
	lw x12, 9(x12)
	lw x12, 2(x12)
	fmul x12, x20, x12
	fadd x12, x22, x12
trace_diffuse_rays_cont_b3351:
# B3351
	bne x19, x14, trace_diffuse_rays_beqelse_b3354
# B3352
	fsub x12, x12, x15
trace_diffuse_rays_beqelse_b3354:
# B3354
	sw x12, 3(x18)
trace_diffuse_rays_bgtelse_b3355:
trace_diffuse_rays_cont_b3355:
# B3355
	addi x17, x17, -1
	j trace_diffuse_rays_loop_b3342 # loopback to while entry from B3355
trace_diffuse_rays_bleelse_b3356:
# B3356
	li x12, 118
	lui x16, 274784
	lui x17, 799072
	mv x21, x12
	mv x20, x7
	mv x19, x6
	mv x18, x5
trace_diffuse_rays_loop_b3357:
# B3357
	bgt zero, x21, trace_diffuse_rays_bleelse_b3359
# B3358
	lwr x12, x18, x21
	lw x12, 0(x12)
	lw x22, 0(x12)
	lw x23, 0(x19)
	fmul x22, x22, x23
	lw x23, 1(x12)
	lw x24, 1(x19)
	fmul x23, x23, x24
	fadd x22, x22, x23
	lw x12, 2(x12)
	lw x23, 2(x19)
	fmul x12, x12, x23
	fadd x12, x22, x12
	fle x22, zero, x12
	la x23, min_caml_tmin
	lui x24, 321255
	addi x24, x24, -1240
	la x25, min_caml_or_net
	li x26, 99
	la x27, min_caml_solver_dist
	li x28, -1
	la x29, min_caml_and_net
	lui x30, 246333
	addi x30, x30, 1802
	la x31, min_caml_intersection_point
	la x32, min_caml_intersected_object_id
	la x33, min_caml_intsec_rectside
	li x34, 4
	lui x35, 777421
	addi x35, x35, -819
	lui x36, 314348
	addi x36, x36, -992
	la x37, min_caml_nvector
	lui x38, 258048
	lui x39, 784384
	la x40, min_caml_texture_color
	lui x5, 251085
	addi x5, x5, -819
	lui x6, 268800
	lui x65, 266752
	lui x66, 256000
	lui x67, 265361
	addi x67, x67, -37
	lui x68, 262144
	lui x69, 263313
	addi x69, x69, -37
	lui x7, 261265
	addi x7, x7, -37
	lui x70, 259217
	addi x70, x70, -37
	lui x71, 778923
	addi x71, x71, -1364
	lui x72, 245896
	addi x72, x72, 1638
	lui x73, 758998
	addi x73, x73, 1206
	lui x74, 782336
	lui x75, 250538
	addi x75, x75, 1929
	lui x76, 764728
	addi x76, x76, 262
	lui x77, 276464
	lui x78, 263313
	addi x78, x78, -37
	lui x79, 232731
	addi x79, x79, 1815
	lui x8, 257536
	lui x80, 780971
	addi x80, x80, -1366
	lui x81, 255181
	addi x81, x81, -819
	lui x82, 778533
	addi x82, x82, -1755
	lui x83, 253497
	addi x83, x83, -456
	lui x84, 777085
	addi x84, x84, 1646
	lui x85, 251742
	addi x85, x85, 1989
	lui x86, 262592
	lui x87, 270080
	lui x88, 254362
	addi x88, x88, -1638
	lui x89, 256410
	addi x89, x89, -1638
	la x9, min_caml_light_dirvec
	lui x90, 779469
	addi x90, x90, -819
	la x91, min_caml_light
	la x92, min_caml_diffuse_ray
	beq x22, zero, trace_diffuse_rays_bneelse_b3361
# B3360
	lwr x22, x18, x21
	fdiv x12, x12, x16
	sw x24, 0(x23)
	lw x24, 0(x25)
	mv x94, x22
	mv x25, zero
	mv x93, x24
trace_diffuse_rays_loop_b3362:
# B3362
	lwr x95, x93, x25
	lw x96, 0(x95)
	beq x96, x28, trace_diffuse_rays_bneelse_b3561
# B3364
	bne x96, x26, trace_diffuse_rays_beqelse_b3366
# B3365
	mv x97, x100
	mv x99, x94
	mv x98, x95
trace_diffuse_rays_loop_b3367:
# B3367
	lwr x95, x98, x97
	beq x95, x28, trace_diffuse_rays_bneelse_b3560
# B3369
	lwr x95, x29, x95
	mv x101, x95
	mv x102, x99
	mv x96, zero
	j	trace_diffuse_rays_loop_b3370 # jumping over moved block
trace_diffuse_rays_beqelse_b3441:	#moved
# B3441
	sw x105, 0(x23)
	sw x106, 0(x31)
	sw x107, 1(x31)
	sw x95, 2(x31)
	sw x103, 0(x32)
	sw x104, 0(x33)
trace_diffuse_rays_beqelse_b3370:
trace_diffuse_rays_bfgtelse_b3370:
trace_diffuse_rays_loop_b3370:
# B3370
	lw x95, 0(x102)
	lwr x103, x101, x96
	beq x103, x28, trace_diffuse_rays_bneelse_b3443
# B3372
	lwr x104, x13, x103
	lw x105, 10(x104)
	lw x106, 0(x105)
	lw x107, 1(x105)
	lw x108, 2(x105)
	lw x109, 1(x102)
	lwr x109, x109, x103
	lw x110, 1(x104)
	bne x110, x100, trace_diffuse_rays_beqelse_b3374
# B3373
	lw x105, 0(x102)
	lw x110, 0(x109)
	fsub x110, x110, x106
	lw x111, 1(x109)
	fmul x110, x110, x111
	lw x112, 1(x105)
	fmul x113, x110, x112
	fadd x113, x113, x107
	fabs x113, x113
	lw x114, 4(x104)
	lw x114, 1(x114)
	bfle x114, x113, trace_diffuse_rays_bfgtelse_b3380
# B3376
	lw x113, 2(x105)
	fmul x113, x110, x113
	fadd x113, x113, x108
	fabs x113, x113
	lw x114, 4(x104)
	lw x114, 2(x114)
	bfle x114, x113, trace_diffuse_rays_bfgtelse_b3380
# B3378
	feq x111, x111, zero
	xori x111, x111, 1
	mv x113, x111
# B3379
	bne x113, zero, trace_diffuse_rays_beqelse_b3381
trace_diffuse_rays_bfgtelse_b3380:
# B3380
	lw x110, 2(x109)
	fsub x110, x110, x107
	lw x111, 3(x109)
	fmul x110, x110, x111
	lw x113, 0(x105)
	fmul x114, x110, x113
	fadd x114, x114, x106
	fabs x114, x114
	lw x115, 4(x104)
	lw x115, 0(x115)
	bfle x115, x114, trace_diffuse_rays_bfgtelse_b3387
# B3383
	lw x105, 2(x105)
	fmul x105, x110, x105
	fadd x105, x105, x108
	fabs x105, x105
	lw x114, 4(x104)
	lw x114, 2(x114)
	bfle x114, x105, trace_diffuse_rays_bfgtelse_b3387
# B3385
	feq x105, x111, zero
	xori x105, x105, 1
	mv x111, x105
# B3386
	bne x111, zero, trace_diffuse_rays_beqelse_b3388
trace_diffuse_rays_bfgtelse_b3387:
# B3387
	lw x105, 4(x109)
	fsub x105, x105, x108
	lw x108, 5(x109)
	fmul x105, x105, x108
	fmul x109, x105, x113
	fadd x106, x109, x106
	fabs x106, x106
	lw x109, 4(x104)
	lw x109, 0(x109)
	bfle x109, x106, trace_diffuse_rays_bfgtelse_b3394
# B3390
	fmul x106, x105, x112
	fadd x106, x106, x107
	fabs x106, x106
	lw x104, 4(x104)
	lw x104, 1(x104)
	bfle x104, x106, trace_diffuse_rays_bfgtelse_b3394
# B3392
	feq x104, x108, zero
	xori x104, x104, 1
	mv x106, x104
# B3393
	bne x106, zero, trace_diffuse_rays_beqelse_b3395
trace_diffuse_rays_bfgtelse_b3394:
# B3394
	mv x104, zero
	j trace_diffuse_rays_cont_b3407 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3395:
# B3395
	sw x105, 0(x27)
	mv x104, x14
	j trace_diffuse_rays_cont_b3407 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3388:
# B3388
	sw x110, 0(x27)
	mv x104, x11
	j trace_diffuse_rays_cont_b3407 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3381:
# B3381
	sw x110, 0(x27)
	mv x104, x100
	j trace_diffuse_rays_cont_b3407 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3374:
# B3374
	bne x110, x11, trace_diffuse_rays_beqelse_b3397
# B3396
	lw x104, 0(x109)
	bfle zero, x104, trace_diffuse_rays_bfgtelse_b3398
# B3399
	lw x105, 3(x105)
	fmul x104, x104, x105
	sw x104, 0(x27)
	mv x104, x100
	j trace_diffuse_rays_cont_b3407 # adhoc jump(2)
trace_diffuse_rays_bfgtelse_b3398:
# B3398
	mv x104, zero
	j trace_diffuse_rays_cont_b3407 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3397:
# B3397
	lw x110, 0(x109)
	bfeq x110, zero, trace_diffuse_rays_bfneqelse_b3401
# B3400
	lw x111, 1(x109)
	fmul x106, x111, x106
	lw x111, 2(x109)
	fmul x107, x111, x107
	fadd x106, x106, x107
	lw x107, 3(x109)
	fmul x107, x107, x108
	fadd x106, x106, x107
	lw x105, 3(x105)
	fmul x107, x106, x106
	fmul x105, x110, x105
	fsub x105, x107, x105
	bfle x105, zero, trace_diffuse_rays_bfgtelse_b3402
# B3403
	lw x104, 6(x104)
	fsqrt x105, x105
	bne x104, zero, trace_diffuse_rays_beqelse_b3405
# B3404
	fsub x104, x106, x105
	lw x105, 4(x109)
	fmul x104, x104, x105
	sw x104, 0(x27)
	j trace_diffuse_rays_cont_b3406 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3405:
# B3405
	fadd x104, x106, x105
	lw x105, 4(x109)
	fmul x104, x104, x105
	sw x104, 0(x27)
trace_diffuse_rays_cont_b3406:
# B3406
	mv x104, x100
	j trace_diffuse_rays_cont_b3407 # adhoc jump(2)
trace_diffuse_rays_bfgtelse_b3402:
# B3402
	mv x104, zero
	j trace_diffuse_rays_cont_b3407 # adhoc jump(2)
trace_diffuse_rays_bfneqelse_b3401:
# B3401
	mv x104, zero
trace_diffuse_rays_cont_b3407:
# B3407
	addi x96, x96, 1
	bne x104, zero, trace_diffuse_rays_beqelse_b3409
# B3408
	lwr x95, x13, x103
	lw x95, 6(x95)
	beq x95, zero, trace_diffuse_rays_bneelse_b3443
	j	trace_diffuse_rays_beqelse_b3370 # moved need extra jump for 3370 at B3408
trace_diffuse_rays_bneelse_b3443:
# B3443
	addi x97, x97, 1
	j trace_diffuse_rays_loop_b3367 # loopback to while entry from B3443
trace_diffuse_rays_beqelse_b3409:
# B3409
	lw x105, 0(x27)
	bfle x105, zero, trace_diffuse_rays_bfgtelse_b3370
# B3413
	lw x106, 0(x23)
	bfle x106, x105, trace_diffuse_rays_bfgtelse_b3370
# B3415
	fadd x105, x105, x30
	lw x106, 0(x95)
	fmul x106, x106, x105
	lw x107, 0(x10)
	fadd x106, x106, x107
	lw x107, 1(x95)
	fmul x107, x107, x105
	lw x108, 1(x10)
	fadd x107, x107, x108
	lw x95, 2(x95)
	fmul x95, x95, x105
	lw x108, 2(x10)
	fadd x95, x95, x108
	mv x110, x106
	mv x111, x107
	mv x112, x95
	mv x109, x101
	mv x108, zero
	j	trace_diffuse_rays_loop_b3416 # jumping over moved block
trace_diffuse_rays_bneelse_b3437:	#moved
# B3437
	addi x108, x108, 1
trace_diffuse_rays_loop_b3416:
# B3416
	lwr x113, x109, x108
	bne x113, x28, trace_diffuse_rays_beqelse_b3418
# B3417
	mv x114, x100
# B3439
	bne x114, zero, trace_diffuse_rays_beqelse_b3441
	j	trace_diffuse_rays_bfgtelse_b3370 # moved need extra jump for 3370 at B3439
trace_diffuse_rays_beqelse_b3418:
# B3418
	lwr x113, x13, x113
	lw x114, 5(x113)
	lw x114, 0(x114)
	fsub x114, x110, x114
	lw x115, 5(x113)
	lw x115, 1(x115)
	fsub x115, x111, x115
	lw x116, 5(x113)
	lw x116, 2(x116)
	fsub x116, x112, x116
	lw x117, 1(x113)
	bne x117, x100, trace_diffuse_rays_beqelse_b3420
# B3419
	fabs x114, x114
	lw x117, 4(x113)
	lw x117, 0(x117)
	bfle x117, x114, trace_diffuse_rays_bfgtelse_b3426
# B3422
	fabs x114, x115
	lw x115, 4(x113)
	lw x115, 1(x115)
	bfle x115, x114, trace_diffuse_rays_bfgtelse_b3426
# B3424
	fabs x114, x116
	lw x115, 4(x113)
	lw x115, 2(x115)
	fle x114, x115, x114
	xori x114, x114, 1
	mv x115, x114
# B3425
	bne x115, zero, trace_diffuse_rays_beqelse_b3427
trace_diffuse_rays_bfgtelse_b3426:
# B3426
	lw x113, 6(x113)
	xori x113, x113, 1
	j trace_diffuse_rays_cont_b3436 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3427:
# B3427
	lw x113, 6(x113)
	j trace_diffuse_rays_cont_b3436 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3420:
# B3420
	bne x117, x11, trace_diffuse_rays_beqelse_b3429
# B3428
	lw x117, 4(x113)
	lw x118, 0(x117)
	fmul x114, x118, x114
	lw x118, 1(x117)
	fmul x115, x118, x115
	fadd x114, x114, x115
	lw x115, 2(x117)
	fmul x115, x115, x116
	fadd x114, x114, x115
	lw x113, 6(x113)
	fle x114, zero, x114
	xori x114, x114, 1
	xor x113, x113, x114
	xori x113, x113, 1
	j trace_diffuse_rays_cont_b3436 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3429:
# B3429
	fmul x117, x114, x114
	lw x118, 4(x113)
	lw x118, 0(x118)
	fmul x117, x117, x118
	fmul x118, x115, x115
	lw x119, 4(x113)
	lw x119, 1(x119)
	fmul x118, x118, x119
	fadd x117, x117, x118
	fmul x118, x116, x116
	lw x119, 4(x113)
	lw x119, 2(x119)
	fmul x118, x118, x119
	fadd x117, x117, x118
	lw x118, 3(x113)
	bne x118, zero, trace_diffuse_rays_beqelse_b3431
# B3430
	mv x114, x117
	j trace_diffuse_rays_cont_b3432 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3431:
# B3431
	fmul x118, x115, x116
	lw x119, 9(x113)
	lw x119, 0(x119)
	fmul x118, x118, x119
	fadd x117, x117, x118
	fmul x116, x116, x114
	lw x118, 9(x113)
	lw x118, 1(x118)
	fmul x116, x116, x118
	fadd x116, x117, x116
	fmul x114, x114, x115
	lw x115, 9(x113)
	lw x115, 2(x115)
	fmul x114, x114, x115
	fadd x114, x116, x114
trace_diffuse_rays_cont_b3432:
# B3432
	lw x115, 1(x113)
	bne x115, x14, trace_diffuse_rays_beqelse_b3435
# B3433
	fsub x114, x114, x15
trace_diffuse_rays_beqelse_b3435:
# B3435
	lw x113, 6(x113)
	fle x114, zero, x114
	xori x114, x114, 1
	xor x113, x113, x114
	xori x113, x113, 1
trace_diffuse_rays_cont_b3436:
# B3436
	beq x113, zero, trace_diffuse_rays_bneelse_b3437
	j	trace_diffuse_rays_bfgtelse_b3370 # moved need extra jump for 3370 at B3436
trace_diffuse_rays_beqelse_b3366:
# B3366
	lwr x97, x13, x96
	lw x98, 10(x97)
	lw x99, 0(x98)
	lw x101, 1(x98)
	lw x102, 2(x98)
	lw x103, 1(x94)
	lwr x96, x103, x96
	lw x103, 1(x97)
	bne x103, x100, trace_diffuse_rays_beqelse_b3445
# B3444
	lw x98, 0(x94)
	lw x103, 0(x96)
	fsub x103, x103, x99
	lw x104, 1(x96)
	fmul x103, x103, x104
	lw x105, 1(x98)
	fmul x106, x103, x105
	fadd x106, x106, x101
	fabs x106, x106
	lw x107, 4(x97)
	lw x107, 1(x107)
	bfle x107, x106, trace_diffuse_rays_bfgtelse_b3451
# B3447
	lw x106, 2(x98)
	fmul x106, x103, x106
	fadd x106, x106, x102
	fabs x106, x106
	lw x107, 4(x97)
	lw x107, 2(x107)
	bfle x107, x106, trace_diffuse_rays_bfgtelse_b3451
# B3449
	feq x104, x104, zero
	xori x104, x104, 1
	mv x106, x104
# B3450
	bne x106, zero, trace_diffuse_rays_beqelse_b3452
trace_diffuse_rays_bfgtelse_b3451:
# B3451
	lw x103, 2(x96)
	fsub x103, x103, x101
	lw x104, 3(x96)
	fmul x103, x103, x104
	lw x106, 0(x98)
	fmul x107, x103, x106
	fadd x107, x107, x99
	fabs x107, x107
	lw x108, 4(x97)
	lw x108, 0(x108)
	bfle x108, x107, trace_diffuse_rays_bfgtelse_b3458
# B3454
	lw x98, 2(x98)
	fmul x98, x103, x98
	fadd x98, x98, x102
	fabs x98, x98
	lw x107, 4(x97)
	lw x107, 2(x107)
	bfle x107, x98, trace_diffuse_rays_bfgtelse_b3458
# B3456
	feq x98, x104, zero
	xori x98, x98, 1
	mv x104, x98
# B3457
	bne x104, zero, trace_diffuse_rays_beqelse_b3459
trace_diffuse_rays_bfgtelse_b3458:
# B3458
	lw x98, 4(x96)
	fsub x98, x98, x102
	lw x96, 5(x96)
	fmul x98, x98, x96
	fmul x102, x98, x106
	fadd x99, x102, x99
	fabs x99, x99
	lw x102, 4(x97)
	lw x102, 0(x102)
	bfle x102, x99, trace_diffuse_rays_bfgtelse_b3560
# B3461
	fmul x99, x98, x105
	fadd x99, x99, x101
	fabs x99, x99
	lw x97, 4(x97)
	lw x97, 1(x97)
	bfle x97, x99, trace_diffuse_rays_bfgtelse_b3560
# B3463
	feq x96, x96, zero
	xori x96, x96, 1
	mv x97, x96
# B3464
	bne x97, zero, trace_diffuse_rays_beqelse_b3466
	j trace_diffuse_rays_cont_b3560 # adhoc jump(3)
trace_diffuse_rays_beqelse_b3466:
# B3466
	sw x98, 0(x27)
	mv x96, x14
	j trace_diffuse_rays_cont_b3478 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3459:
# B3459
	sw x103, 0(x27)
	mv x96, x11
	j trace_diffuse_rays_cont_b3478 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3452:
# B3452
	sw x103, 0(x27)
	mv x96, x100
	j trace_diffuse_rays_cont_b3478 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3445:
# B3445
	bne x103, x11, trace_diffuse_rays_beqelse_b3468
# B3467
	lw x96, 0(x96)
	bfle zero, x96, trace_diffuse_rays_bfgtelse_b3560
# B3470
	lw x97, 3(x98)
	fmul x96, x96, x97
	sw x96, 0(x27)
	mv x96, x100
	j trace_diffuse_rays_cont_b3478 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3468:
# B3468
	lw x103, 0(x96)
	bfeq x103, zero, trace_diffuse_rays_bfneqelse_b3560
# B3471
	lw x104, 1(x96)
	fmul x99, x104, x99
	lw x104, 2(x96)
	fmul x101, x104, x101
	fadd x99, x99, x101
	lw x101, 3(x96)
	fmul x101, x101, x102
	fadd x99, x99, x101
	lw x98, 3(x98)
	fmul x101, x99, x99
	fmul x98, x103, x98
	fsub x98, x101, x98
	bfle x98, zero, trace_diffuse_rays_bfgtelse_b3560
# B3474
	lw x97, 6(x97)
	fsqrt x98, x98
	bne x97, zero, trace_diffuse_rays_beqelse_b3476
# B3475
	fsub x97, x99, x98
	lw x96, 4(x96)
	fmul x96, x97, x96
	sw x96, 0(x27)
	j trace_diffuse_rays_cont_b3477 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3476:
# B3476
	fadd x97, x99, x98
	lw x96, 4(x96)
	fmul x96, x97, x96
	sw x96, 0(x27)
trace_diffuse_rays_cont_b3477:
# B3477
	mv x96, x100
trace_diffuse_rays_cont_b3478:
# B3478
	bne x96, zero, trace_diffuse_rays_beqelse_b3480
	j trace_diffuse_rays_cont_b3560 # adhoc jump(3)
trace_diffuse_rays_beqelse_b3480:
# B3480
	lw x96, 0(x27)
	lw x97, 0(x23)
	bfle x97, x96, trace_diffuse_rays_bfgtelse_b3560
# B3482
	mv x101, x94
	mv x98, x100
	mv x99, x95
trace_diffuse_rays_loop_b3483:
# B3483
	lwr x95, x99, x98
	beq x95, x28, trace_diffuse_rays_bneelse_b3560
# B3485
	lwr x95, x29, x95
	mv x97, x95
	mv x102, x101
	mv x96, zero
	j	trace_diffuse_rays_loop_b3486 # jumping over moved block
trace_diffuse_rays_beqelse_b3557:	#moved
# B3557
	sw x105, 0(x23)
	sw x106, 0(x31)
	sw x107, 1(x31)
	sw x95, 2(x31)
	sw x103, 0(x32)
	sw x104, 0(x33)
trace_diffuse_rays_beqelse_b3486:
trace_diffuse_rays_bfgtelse_b3486:
trace_diffuse_rays_loop_b3486:
# B3486
	lw x95, 0(x102)
	lwr x103, x97, x96
	beq x103, x28, trace_diffuse_rays_bneelse_b3559
# B3488
	lwr x104, x13, x103
	lw x105, 10(x104)
	lw x106, 0(x105)
	lw x107, 1(x105)
	lw x108, 2(x105)
	lw x109, 1(x102)
	lwr x109, x109, x103
	lw x110, 1(x104)
	bne x110, x100, trace_diffuse_rays_beqelse_b3490
# B3489
	lw x105, 0(x102)
	lw x110, 0(x109)
	fsub x110, x110, x106
	lw x111, 1(x109)
	fmul x110, x110, x111
	lw x112, 1(x105)
	fmul x113, x110, x112
	fadd x113, x113, x107
	fabs x113, x113
	lw x114, 4(x104)
	lw x114, 1(x114)
	bfle x114, x113, trace_diffuse_rays_bfgtelse_b3496
# B3492
	lw x113, 2(x105)
	fmul x113, x110, x113
	fadd x113, x113, x108
	fabs x113, x113
	lw x114, 4(x104)
	lw x114, 2(x114)
	bfle x114, x113, trace_diffuse_rays_bfgtelse_b3496
# B3494
	feq x111, x111, zero
	xori x111, x111, 1
	mv x113, x111
# B3495
	bne x113, zero, trace_diffuse_rays_beqelse_b3497
trace_diffuse_rays_bfgtelse_b3496:
# B3496
	lw x110, 2(x109)
	fsub x110, x110, x107
	lw x111, 3(x109)
	fmul x110, x110, x111
	lw x113, 0(x105)
	fmul x114, x110, x113
	fadd x114, x114, x106
	fabs x114, x114
	lw x115, 4(x104)
	lw x115, 0(x115)
	bfle x115, x114, trace_diffuse_rays_bfgtelse_b3503
# B3499
	lw x105, 2(x105)
	fmul x105, x110, x105
	fadd x105, x105, x108
	fabs x105, x105
	lw x114, 4(x104)
	lw x114, 2(x114)
	bfle x114, x105, trace_diffuse_rays_bfgtelse_b3503
# B3501
	feq x105, x111, zero
	xori x105, x105, 1
	mv x111, x105
# B3502
	bne x111, zero, trace_diffuse_rays_beqelse_b3504
trace_diffuse_rays_bfgtelse_b3503:
# B3503
	lw x105, 4(x109)
	fsub x105, x105, x108
	lw x108, 5(x109)
	fmul x105, x105, x108
	fmul x109, x105, x113
	fadd x106, x109, x106
	fabs x106, x106
	lw x109, 4(x104)
	lw x109, 0(x109)
	bfle x109, x106, trace_diffuse_rays_bfgtelse_b3510
# B3506
	fmul x106, x105, x112
	fadd x106, x106, x107
	fabs x106, x106
	lw x104, 4(x104)
	lw x104, 1(x104)
	bfle x104, x106, trace_diffuse_rays_bfgtelse_b3510
# B3508
	feq x104, x108, zero
	xori x104, x104, 1
	mv x106, x104
# B3509
	bne x106, zero, trace_diffuse_rays_beqelse_b3511
trace_diffuse_rays_bfgtelse_b3510:
# B3510
	mv x104, zero
	j trace_diffuse_rays_cont_b3523 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3511:
# B3511
	sw x105, 0(x27)
	mv x104, x14
	j trace_diffuse_rays_cont_b3523 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3504:
# B3504
	sw x110, 0(x27)
	mv x104, x11
	j trace_diffuse_rays_cont_b3523 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3497:
# B3497
	sw x110, 0(x27)
	mv x104, x100
	j trace_diffuse_rays_cont_b3523 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3490:
# B3490
	bne x110, x11, trace_diffuse_rays_beqelse_b3513
# B3512
	lw x104, 0(x109)
	bfle zero, x104, trace_diffuse_rays_bfgtelse_b3514
# B3515
	lw x105, 3(x105)
	fmul x104, x104, x105
	sw x104, 0(x27)
	mv x104, x100
	j trace_diffuse_rays_cont_b3523 # adhoc jump(2)
trace_diffuse_rays_bfgtelse_b3514:
# B3514
	mv x104, zero
	j trace_diffuse_rays_cont_b3523 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3513:
# B3513
	lw x110, 0(x109)
	bfeq x110, zero, trace_diffuse_rays_bfneqelse_b3517
# B3516
	lw x111, 1(x109)
	fmul x106, x111, x106
	lw x111, 2(x109)
	fmul x107, x111, x107
	fadd x106, x106, x107
	lw x107, 3(x109)
	fmul x107, x107, x108
	fadd x106, x106, x107
	lw x105, 3(x105)
	fmul x107, x106, x106
	fmul x105, x110, x105
	fsub x105, x107, x105
	bfle x105, zero, trace_diffuse_rays_bfgtelse_b3518
# B3519
	lw x104, 6(x104)
	fsqrt x105, x105
	bne x104, zero, trace_diffuse_rays_beqelse_b3521
# B3520
	fsub x104, x106, x105
	lw x105, 4(x109)
	fmul x104, x104, x105
	sw x104, 0(x27)
	j trace_diffuse_rays_cont_b3522 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3521:
# B3521
	fadd x104, x106, x105
	lw x105, 4(x109)
	fmul x104, x104, x105
	sw x104, 0(x27)
trace_diffuse_rays_cont_b3522:
# B3522
	mv x104, x100
	j trace_diffuse_rays_cont_b3523 # adhoc jump(2)
trace_diffuse_rays_bfgtelse_b3518:
# B3518
	mv x104, zero
	j trace_diffuse_rays_cont_b3523 # adhoc jump(2)
trace_diffuse_rays_bfneqelse_b3517:
# B3517
	mv x104, zero
trace_diffuse_rays_cont_b3523:
# B3523
	addi x96, x96, 1
	bne x104, zero, trace_diffuse_rays_beqelse_b3525
# B3524
	lwr x95, x13, x103
	lw x95, 6(x95)
	beq x95, zero, trace_diffuse_rays_bneelse_b3559
	j	trace_diffuse_rays_beqelse_b3486 # moved need extra jump for 3486 at B3524
trace_diffuse_rays_bneelse_b3559:
# B3559
	addi x98, x98, 1
	j trace_diffuse_rays_loop_b3483 # loopback to while entry from B3559
trace_diffuse_rays_beqelse_b3525:
# B3525
	lw x105, 0(x27)
	bfle x105, zero, trace_diffuse_rays_bfgtelse_b3486
# B3529
	lw x106, 0(x23)
	bfle x106, x105, trace_diffuse_rays_bfgtelse_b3486
# B3531
	fadd x105, x105, x30
	lw x106, 0(x95)
	fmul x106, x106, x105
	lw x107, 0(x10)
	fadd x106, x106, x107
	lw x107, 1(x95)
	fmul x107, x107, x105
	lw x108, 1(x10)
	fadd x107, x107, x108
	lw x95, 2(x95)
	fmul x95, x95, x105
	lw x108, 2(x10)
	fadd x95, x95, x108
	mv x109, x97
	mv x110, x106
	mv x111, x107
	mv x112, x95
	mv x108, zero
	j	trace_diffuse_rays_loop_b3532 # jumping over moved block
trace_diffuse_rays_bneelse_b3553:	#moved
# B3553
	addi x108, x108, 1
trace_diffuse_rays_loop_b3532:
# B3532
	lwr x113, x109, x108
	bne x113, x28, trace_diffuse_rays_beqelse_b3534
# B3533
	mv x114, x100
# B3555
	bne x114, zero, trace_diffuse_rays_beqelse_b3557
	j	trace_diffuse_rays_bfgtelse_b3486 # moved need extra jump for 3486 at B3555
trace_diffuse_rays_beqelse_b3534:
# B3534
	lwr x113, x13, x113
	lw x114, 5(x113)
	lw x114, 0(x114)
	fsub x114, x110, x114
	lw x115, 5(x113)
	lw x115, 1(x115)
	fsub x115, x111, x115
	lw x116, 5(x113)
	lw x116, 2(x116)
	fsub x116, x112, x116
	lw x117, 1(x113)
	bne x117, x100, trace_diffuse_rays_beqelse_b3536
# B3535
	fabs x114, x114
	lw x117, 4(x113)
	lw x117, 0(x117)
	bfle x117, x114, trace_diffuse_rays_bfgtelse_b3542
# B3538
	fabs x114, x115
	lw x115, 4(x113)
	lw x115, 1(x115)
	bfle x115, x114, trace_diffuse_rays_bfgtelse_b3542
# B3540
	fabs x114, x116
	lw x115, 4(x113)
	lw x115, 2(x115)
	fle x114, x115, x114
	xori x114, x114, 1
	mv x115, x114
# B3541
	bne x115, zero, trace_diffuse_rays_beqelse_b3543
trace_diffuse_rays_bfgtelse_b3542:
# B3542
	lw x113, 6(x113)
	xori x113, x113, 1
	j trace_diffuse_rays_cont_b3552 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3543:
# B3543
	lw x113, 6(x113)
	j trace_diffuse_rays_cont_b3552 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3536:
# B3536
	bne x117, x11, trace_diffuse_rays_beqelse_b3545
# B3544
	lw x117, 4(x113)
	lw x118, 0(x117)
	fmul x114, x118, x114
	lw x118, 1(x117)
	fmul x115, x118, x115
	fadd x114, x114, x115
	lw x115, 2(x117)
	fmul x115, x115, x116
	fadd x114, x114, x115
	lw x113, 6(x113)
	fle x114, zero, x114
	xori x114, x114, 1
	xor x113, x113, x114
	xori x113, x113, 1
	j trace_diffuse_rays_cont_b3552 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3545:
# B3545
	fmul x117, x114, x114
	lw x118, 4(x113)
	lw x118, 0(x118)
	fmul x117, x117, x118
	fmul x118, x115, x115
	lw x119, 4(x113)
	lw x119, 1(x119)
	fmul x118, x118, x119
	fadd x117, x117, x118
	fmul x118, x116, x116
	lw x119, 4(x113)
	lw x119, 2(x119)
	fmul x118, x118, x119
	fadd x117, x117, x118
	lw x118, 3(x113)
	bne x118, zero, trace_diffuse_rays_beqelse_b3547
# B3546
	mv x114, x117
	j trace_diffuse_rays_cont_b3548 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3547:
# B3547
	fmul x118, x115, x116
	lw x119, 9(x113)
	lw x119, 0(x119)
	fmul x118, x118, x119
	fadd x117, x117, x118
	fmul x116, x116, x114
	lw x118, 9(x113)
	lw x118, 1(x118)
	fmul x116, x116, x118
	fadd x116, x117, x116
	fmul x114, x114, x115
	lw x115, 9(x113)
	lw x115, 2(x115)
	fmul x114, x114, x115
	fadd x114, x116, x114
trace_diffuse_rays_cont_b3548:
# B3548
	lw x115, 1(x113)
	bne x115, x14, trace_diffuse_rays_beqelse_b3551
# B3549
	fsub x114, x114, x15
trace_diffuse_rays_beqelse_b3551:
# B3551
	lw x113, 6(x113)
	fle x114, zero, x114
	xori x114, x114, 1
	xor x113, x113, x114
	xori x113, x113, 1
trace_diffuse_rays_cont_b3552:
# B3552
	beq x113, zero, trace_diffuse_rays_bneelse_b3553
	j	trace_diffuse_rays_bfgtelse_b3486 # moved need extra jump for 3486 at B3552
trace_diffuse_rays_bfgtelse_b3560:
trace_diffuse_rays_bfneqelse_b3560:
trace_diffuse_rays_bneelse_b3560:
trace_diffuse_rays_cont_b3560:
# B3560
	addi x25, x25, 1
	j trace_diffuse_rays_loop_b3362 # loopback to while entry from B3560
trace_diffuse_rays_bneelse_b3561:
# B3561
	lw x23, 0(x23)
	bfle x23, x35, trace_diffuse_rays_bfgtelse_b4440
# B3563
	fle x23, x36, x23
	xori x23, x23, 1
	mv x25, x23
# B3564
	bne x25, zero, trace_diffuse_rays_beqelse_b3566
	j trace_diffuse_rays_cont_b4440 # adhoc jump(3)
trace_diffuse_rays_beqelse_b3566:
# B3566
	lw x23, 0(x32)
	lwr x23, x13, x23
	lw x22, 0(x22)
	lw x25, 1(x23)
	bne x25, x100, trace_diffuse_rays_beqelse_b3568
# B3567
	lw x25, 0(x33)
	sw zero, 0(x37)
	sw zero, 1(x37)
	sw zero, 2(x37)
	addi x25, x25, -1
	lwr x22, x22, x25
	bfeq x22, zero, trace_diffuse_rays_bfneqelse_b3570
# B3569
	bfle x22, zero, trace_diffuse_rays_bfgtelse_b3571
# B3572
	mv x22, x15
	j trace_diffuse_rays_cont_b3573 # adhoc jump(2)
trace_diffuse_rays_bfgtelse_b3571:
# B3571
	lui x22, 784384
	j trace_diffuse_rays_cont_b3573 # adhoc jump(2)
trace_diffuse_rays_bfneqelse_b3570:
# B3570
	mv x22, zero
trace_diffuse_rays_cont_b3573:
# B3573
	fsub x22, zero, x22
	add x4, x37, x25
	sw x22, 0(x4)
	j trace_diffuse_rays_cont_b3584 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3568:
# B3568
	bne x25, x11, trace_diffuse_rays_beqelse_b3575
# B3574
	lw x22, 4(x23)
	lw x22, 0(x22)
	fsub x22, zero, x22
	sw x22, 0(x37)
	lw x22, 4(x23)
	lw x22, 1(x22)
	fsub x22, zero, x22
	sw x22, 1(x37)
	lw x22, 4(x23)
	lw x22, 2(x22)
	fsub x22, zero, x22
	sw x22, 2(x37)
	j trace_diffuse_rays_cont_b3584 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3575:
# B3575
	lw x22, 0(x31)
	lw x25, 5(x23)
	lw x25, 0(x25)
	fsub x22, x22, x25
	lw x25, 1(x31)
	lw x32, 5(x23)
	lw x32, 1(x32)
	fsub x25, x25, x32
	lw x32, 2(x31)
	lw x33, 5(x23)
	lw x33, 2(x33)
	fsub x32, x32, x33
	lw x33, 4(x23)
	lw x33, 0(x33)
	fmul x33, x22, x33
	lw x36, 4(x23)
	lw x36, 1(x36)
	fmul x36, x25, x36
	lw x93, 4(x23)
	lw x93, 2(x93)
	fmul x93, x32, x93
	lw x94, 3(x23)
	bne x94, zero, trace_diffuse_rays_beqelse_b3577
# B3576
	sw x33, 0(x37)
	sw x36, 1(x37)
	sw x93, 2(x37)
	j trace_diffuse_rays_cont_b3578 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3577:
# B3577
	lw x94, 9(x23)
	lw x94, 2(x94)
	fmul x94, x25, x94
	lw x95, 9(x23)
	lw x95, 1(x95)
	fmul x95, x32, x95
	fadd x94, x94, x95
	fmul x94, x94, x38
	fadd x33, x33, x94
	sw x33, 0(x37)
	lw x33, 9(x23)
	lw x33, 2(x33)
	fmul x33, x22, x33
	lw x94, 9(x23)
	lw x94, 0(x94)
	fmul x32, x32, x94
	fadd x32, x33, x32
	fmul x32, x32, x38
	fadd x32, x36, x32
	sw x32, 1(x37)
	lw x32, 9(x23)
	lw x32, 1(x32)
	fmul x22, x22, x32
	lw x32, 9(x23)
	lw x32, 0(x32)
	fmul x25, x25, x32
	fadd x22, x22, x25
	fmul x22, x22, x38
	fadd x22, x93, x22
	sw x22, 2(x37)
trace_diffuse_rays_cont_b3578:
# B3578
	lw x22, 6(x23)
	lw x25, 0(x37)
	fmul x32, x25, x25
	lw x33, 1(x37)
	fmul x36, x33, x33
	fadd x32, x32, x36
	lw x36, 2(x37)
	fmul x93, x36, x36
	fadd x32, x32, x93
	fsqrt x32, x32
	bfeq x32, zero, trace_diffuse_rays_bfneqelse_b3580
# B3579
	bne x22, zero, trace_diffuse_rays_beqelse_b3582
# B3581
	fdiv x22, x15, x32
	j trace_diffuse_rays_cont_b3583 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3582:
# B3582
	fdiv x22, x39, x32
	j trace_diffuse_rays_cont_b3583 # adhoc jump(2)
trace_diffuse_rays_bfneqelse_b3580:
# B3580
	mv x22, x15
trace_diffuse_rays_cont_b3583:
# B3583
	fmul x25, x25, x22
	sw x25, 0(x37)
	fmul x25, x33, x22
	sw x25, 1(x37)
	fmul x22, x36, x22
	sw x22, 2(x37)
trace_diffuse_rays_cont_b3584:
# B3584
	lw x22, 0(x23)
	lw x25, 8(x23)
	lw x25, 0(x25)
	sw x25, 0(x40)
	lw x25, 8(x23)
	lw x25, 1(x25)
	sw x25, 1(x40)
	lw x25, 8(x23)
	lw x25, 2(x25)
	sw x25, 2(x40)
	bne x22, x100, trace_diffuse_rays_beqelse_b3586
# B3585
	lw x22, 0(x31)
	lw x25, 5(x23)
	lw x25, 0(x25)
	fsub x22, x22, x25
	fmul x25, x22, x5
	floor x25, x25
	fmul x25, x25, x6
	fsub x22, x22, x25
	fle x22, x65, x22
	xori x22, x22, 1
	lw x25, 2(x31)
	lw x32, 5(x23)
	lw x32, 2(x32)
	fsub x25, x25, x32
	fmul x32, x25, x5
	floor x32, x32
	fmul x32, x32, x6
	fsub x25, x25, x32
	fle x25, x65, x25
	xori x25, x25, 1
	bne x22, zero, trace_diffuse_rays_beqelse_b3588
# B3587
	bne x25, zero, trace_diffuse_rays_beqelse_b3590
# B3589
	lui x22, 276464
	j trace_diffuse_rays_cont_b3593 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3590:
# B3590
	mv x22, zero
	j trace_diffuse_rays_cont_b3593 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3588:
# B3588
	bne x25, zero, trace_diffuse_rays_beqelse_b3592
# B3591
	mv x22, zero
	j trace_diffuse_rays_cont_b3593 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3592:
# B3592
	lui x22, 276464
trace_diffuse_rays_cont_b3593:
# B3593
	sw x22, 1(x40)
	j trace_diffuse_rays_cont_b3669 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3586:
# B3586
	bne x22, x11, trace_diffuse_rays_beqelse_b3595
# B3594
	lw x22, 1(x31)
	fmul x22, x22, x66
	fle x25, x22, zero
	xori x25, x25, 1
	fabs x22, x22
	mv x33, x67
	mv x32, x22
trace_diffuse_rays_loop_b3596:
# B3596
	bfle x32, x33, trace_diffuse_rays_bfgtelse_b3599
# B3597
	fmul x33, x33, x68
	j trace_diffuse_rays_loop_b3596 # loopback to while entry from B3597
trace_diffuse_rays_bfgtelse_b3599:
# B3599
	mv x34, x22
	mv x36, x33
	j	trace_diffuse_rays_loop_b3600 # jumping over moved block
trace_diffuse_rays_bfgtelse_b3604:	#moved
# B3604
	mv x36, x22
trace_diffuse_rays_loop_b3600:
# B3600
	bfle x67, x34, trace_diffuse_rays_bfgtelse_b3602
# B3605
	fle x22, x69, x34
	bne x22, zero, trace_diffuse_rays_beqelse_b3607
# B3606
	mv x32, x34
	j trace_diffuse_rays_cont_b3608 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3607:
# B3607
	fsub x32, x34, x69
trace_diffuse_rays_cont_b3608:
# B3608
	xor x22, x22, x25
	bfle x7, x32, trace_diffuse_rays_bfgtelse_b3610
# B3609
	mv x25, x32
	j trace_diffuse_rays_cont_b3611 # adhoc jump(2)
trace_diffuse_rays_bfgtelse_b3610:
# B3610
	fsub x25, x69, x32
trace_diffuse_rays_cont_b3611:
# B3611
	bfle x70, x25, trace_diffuse_rays_bfgtelse_b3613
# B3612
	fmul x32, x25, x25
	fmul x33, x32, x73
	fadd x33, x72, x33
	fmul x33, x32, x33
	fadd x33, x71, x33
	fmul x32, x32, x33
	fadd x32, x15, x32
	fmul x25, x25, x32
	j trace_diffuse_rays_cont_b3614 # adhoc jump(2)
trace_diffuse_rays_bfgtelse_b3613:
# B3613
	fsub x25, x7, x25
	fmul x25, x25, x25
	fmul x32, x25, x76
	fadd x32, x75, x32
	fmul x32, x25, x32
	fadd x32, x74, x32
	fmul x25, x25, x32
	fadd x25, x15, x25
trace_diffuse_rays_cont_b3614:
# B3614
	fle x32, x25, zero
	beq x22, x32, trace_diffuse_rays_bneelse_b3616
# B3615
	mv x22, x25
	j trace_diffuse_rays_cont_b3617 # adhoc jump(2)
trace_diffuse_rays_bneelse_b3616:
# B3616
	fsub x22, zero, x25
trace_diffuse_rays_cont_b3617:
# B3617
	fmul x22, x22, x22
	fmul x25, x77, x22
	sw x25, 0(x40)
	fsub x22, x15, x22
	fmul x22, x77, x22
	sw x22, 1(x40)
	j trace_diffuse_rays_cont_b3669 # adhoc jump(2)
trace_diffuse_rays_bfgtelse_b3602:
# B3602
	fdiv x22, x36, x68
	bfle x34, x36, trace_diffuse_rays_bfgtelse_b3604
# B3603
	fsub x34, x34, x36
	mv x36, x22
	j trace_diffuse_rays_loop_b3600 # loopback to while entry from B3603
trace_diffuse_rays_beqelse_b3595:
# B3595
	bne x22, x14, trace_diffuse_rays_beqelse_b3619
# B3618
	lw x22, 0(x31)
	lw x25, 5(x23)
	lw x25, 0(x25)
	fsub x22, x22, x25
	lw x25, 2(x31)
	lw x32, 5(x23)
	lw x32, 2(x32)
	fsub x25, x25, x32
	fmul x22, x22, x22
	fmul x25, x25, x25
	fadd x22, x22, x25
	fsqrt x22, x22
	fdiv x22, x22, x65
	floor x25, x22
	fsub x22, x22, x25
	fmul x22, x22, x78
	fabs x22, x22
	mv x25, x22
	mv x32, x67
trace_diffuse_rays_loop_b3620:
# B3620
	bfle x25, x32, trace_diffuse_rays_bfgtelse_b3623
# B3621
	fmul x32, x32, x68
	j trace_diffuse_rays_loop_b3620 # loopback to while entry from B3621
trace_diffuse_rays_bfgtelse_b3623:
# B3623
	mv x34, x32
	mv x33, x22
	j	trace_diffuse_rays_loop_b3624 # jumping over moved block
trace_diffuse_rays_bfgtelse_b3628:	#moved
# B3628
	mv x34, x22
trace_diffuse_rays_loop_b3624:
# B3624
	bfle x67, x33, trace_diffuse_rays_bfgtelse_b3626
# B3629
	fle x22, x69, x33
	bne x22, zero, trace_diffuse_rays_beqelse_b3631
# B3630
	mv x25, x33
	j trace_diffuse_rays_cont_b3632 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3631:
# B3631
	fsub x25, x33, x69
trace_diffuse_rays_cont_b3632:
# B3632
	xori x22, x22, 1
	fle x32, x7, x25
	bne x32, zero, trace_diffuse_rays_beqelse_b3634
	j trace_diffuse_rays_cont_b3635 # adhoc jump(3)
trace_diffuse_rays_beqelse_b3634:
# B3634
	fsub x25, x69, x25
trace_diffuse_rays_cont_b3635:
# B3635
	xor x22, x32, x22
	bfle x70, x25, trace_diffuse_rays_bfgtelse_b3637
trace_diffuse_rays_cont_b3636:
# B3636
	fmul x25, x25, x25
	fmul x32, x25, x76
	fadd x32, x75, x32
	fmul x32, x25, x32
	fadd x32, x74, x32
	fmul x25, x25, x32
	fadd x25, x15, x25
	j trace_diffuse_rays_cont_b3638 # adhoc jump(2)
trace_diffuse_rays_bfgtelse_b3637:
# B3637
	fsub x25, x7, x25
	fmul x32, x25, x25
	fmul x33, x32, x73
	fadd x33, x72, x33
	fmul x33, x32, x33
	fadd x33, x71, x33
	fmul x32, x32, x33
	fadd x32, x15, x32
	fmul x25, x25, x32
trace_diffuse_rays_cont_b3638:
# B3638
	fle x32, x25, zero
	beq x22, x32, trace_diffuse_rays_bneelse_b3640
# B3639
	mv x22, x25
	j trace_diffuse_rays_cont_b3641 # adhoc jump(2)
trace_diffuse_rays_bneelse_b3640:
# B3640
	fsub x22, zero, x25
trace_diffuse_rays_cont_b3641:
# B3641
	fmul x22, x22, x22
	fmul x25, x22, x77
	sw x25, 1(x40)
	fsub x22, x15, x22
	fmul x22, x22, x77
	sw x22, 2(x40)
	j trace_diffuse_rays_cont_b3669 # adhoc jump(2)
trace_diffuse_rays_bfgtelse_b3626:
# B3626
	fdiv x22, x34, x68
	bfle x33, x34, trace_diffuse_rays_bfgtelse_b3628
# B3627
	fsub x33, x33, x34
	mv x34, x22
	j trace_diffuse_rays_loop_b3624 # loopback to while entry from B3627
trace_diffuse_rays_beqelse_b3619:
# B3619
	bne x22, x34, trace_diffuse_rays_beqelse_b3669
# B3642
	lw x22, 0(x31)
	lw x25, 5(x23)
	lw x25, 0(x25)
	fsub x22, x22, x25
	lw x25, 4(x23)
	lw x25, 0(x25)
	fsqrt x25, x25
	fmul x22, x22, x25
	lw x25, 2(x31)
	lw x32, 5(x23)
	lw x32, 2(x32)
	fsub x25, x25, x32
	lw x32, 4(x23)
	lw x32, 2(x32)
	fsqrt x32, x32
	fmul x25, x25, x32
	fmul x32, x22, x22
	fmul x33, x25, x25
	fadd x32, x32, x33
	fabs x33, x22
	bfle x79, x33, trace_diffuse_rays_bfgtelse_b3644
# B3645
	lui x22, 268032
	j trace_diffuse_rays_cont_b3654 # adhoc jump(2)
trace_diffuse_rays_bfgtelse_b3644:
# B3644
	fdiv x22, x25, x22
	fabs x22, x22
	fle x25, x22, zero
	xori x25, x25, 1
	fabs x33, x22
	bfle x8, x33, trace_diffuse_rays_bfgtelse_b3647
# B3646
	fmul x25, x22, x22
	fmul x33, x25, x85
	fadd x33, x84, x33
	fmul x33, x25, x33
	fadd x33, x83, x33
	fmul x33, x25, x33
	fadd x33, x82, x33
	fmul x33, x25, x33
	fadd x33, x81, x33
	fmul x33, x25, x33
	fadd x33, x80, x33
	fmul x25, x25, x33
	fadd x25, x15, x25
	fmul x22, x22, x25
	j trace_diffuse_rays_cont_b3653 # adhoc jump(2)
trace_diffuse_rays_bfgtelse_b3647:
# B3647
	bfle x86, x33, trace_diffuse_rays_bfgtelse_b3649
# B3648
	fsub x22, x33, x15
	fadd x33, x33, x15
	fdiv x22, x22, x33
	fmul x33, x22, x22
	fmul x34, x33, x85
	fadd x34, x84, x34
	fmul x34, x33, x34
	fadd x34, x83, x34
	fmul x34, x33, x34
	fadd x34, x82, x34
	fmul x34, x33, x34
	fadd x34, x81, x34
	fmul x34, x33, x34
	fadd x34, x80, x34
	fmul x33, x33, x34
	fadd x33, x15, x33
	fmul x22, x22, x33
	fadd x22, x70, x22
	j trace_diffuse_rays_cont_b3650 # adhoc jump(2)
trace_diffuse_rays_bfgtelse_b3649:
# B3649
	fdiv x22, x15, x33
	fmul x33, x22, x22
	fmul x34, x33, x85
	fadd x34, x84, x34
	fmul x34, x33, x34
	fadd x34, x83, x34
	fmul x34, x33, x34
	fadd x34, x82, x34
	fmul x34, x33, x34
	fadd x34, x81, x34
	fmul x34, x33, x34
	fadd x34, x80, x34
	fmul x33, x33, x34
	fadd x33, x15, x33
	fmul x22, x22, x33
	fsub x22, x7, x22
trace_diffuse_rays_cont_b3650:
# B3650
	bne x25, zero, trace_diffuse_rays_beqelse_b3653
# B3651
	fsub x22, zero, x22
trace_diffuse_rays_beqelse_b3653:
trace_diffuse_rays_cont_b3653:
# B3653
	fmul x22, x22, x87
	fdiv x22, x22, x78
trace_diffuse_rays_cont_b3654:
# B3654
	floor x25, x22
	fsub x22, x22, x25
	lw x25, 1(x31)
	lw x33, 5(x23)
	lw x33, 1(x33)
	fsub x25, x25, x33
	lw x33, 4(x23)
	lw x33, 1(x33)
	fsqrt x33, x33
	fmul x25, x25, x33
	fabs x33, x32
	bfle x79, x33, trace_diffuse_rays_bfgtelse_b3655
# B3656
	lui x25, 268032
	j trace_diffuse_rays_cont_b3665 # adhoc jump(2)
trace_diffuse_rays_bfgtelse_b3655:
# B3655
	fdiv x25, x25, x32
	fabs x25, x25
	fle x32, x25, zero
	xori x32, x32, 1
	fabs x33, x25
	bfle x8, x33, trace_diffuse_rays_bfgtelse_b3658
# B3657
	fmul x32, x25, x25
	fmul x33, x32, x85
	fadd x33, x84, x33
	fmul x33, x32, x33
	fadd x33, x83, x33
	fmul x33, x32, x33
	fadd x33, x82, x33
	fmul x33, x32, x33
	fadd x33, x81, x33
	fmul x33, x32, x33
	fadd x33, x80, x33
	fmul x32, x32, x33
	fadd x32, x15, x32
	fmul x25, x25, x32
	j trace_diffuse_rays_cont_b3664 # adhoc jump(2)
trace_diffuse_rays_bfgtelse_b3658:
# B3658
	bfle x86, x33, trace_diffuse_rays_bfgtelse_b3660
# B3659
	fsub x25, x33, x15
	fadd x33, x33, x15
	fdiv x25, x25, x33
	fmul x33, x25, x25
	fmul x34, x33, x85
	fadd x34, x84, x34
	fmul x34, x33, x34
	fadd x34, x83, x34
	fmul x34, x33, x34
	fadd x34, x82, x34
	fmul x34, x33, x34
	fadd x34, x81, x34
	fmul x34, x33, x34
	fadd x34, x80, x34
	fmul x33, x33, x34
	fadd x33, x15, x33
	fmul x25, x25, x33
	fadd x25, x70, x25
	j trace_diffuse_rays_cont_b3661 # adhoc jump(2)
trace_diffuse_rays_bfgtelse_b3660:
# B3660
	fdiv x25, x15, x33
	fmul x33, x25, x25
	fmul x34, x33, x85
	fadd x34, x84, x34
	fmul x34, x33, x34
	fadd x34, x83, x34
	fmul x34, x33, x34
	fadd x34, x82, x34
	fmul x34, x33, x34
	fadd x34, x81, x34
	fmul x34, x33, x34
	fadd x34, x80, x34
	fmul x33, x33, x34
	fadd x33, x15, x33
	fmul x25, x25, x33
	fsub x25, x7, x25
trace_diffuse_rays_cont_b3661:
# B3661
	bne x32, zero, trace_diffuse_rays_beqelse_b3664
# B3662
	fsub x25, zero, x25
trace_diffuse_rays_beqelse_b3664:
trace_diffuse_rays_cont_b3664:
# B3664
	fmul x25, x25, x87
	fdiv x25, x25, x78
trace_diffuse_rays_cont_b3665:
# B3665
	floor x32, x25
	fsub x25, x25, x32
	fsub x22, x38, x22
	fmul x22, x22, x22
	fsub x22, x88, x22
	fsub x25, x38, x25
	fmul x25, x25, x25
	fsub x22, x22, x25
	bfle zero, x22, trace_diffuse_rays_bfgtelse_b3666
# B3667
	mv x25, zero
	j trace_diffuse_rays_cont_b3668 # adhoc jump(2)
trace_diffuse_rays_bfgtelse_b3666:
# B3666
	mv x25, x22
trace_diffuse_rays_cont_b3668:
# B3668
	fmul x22, x77, x25
	fdiv x22, x22, x89
	sw x22, 2(x40)
trace_diffuse_rays_beqelse_b3669:
trace_diffuse_rays_cont_b3669:
# B3669
	mv x25, x24
	mv x22, zero
trace_diffuse_rays_bneelse_b3670:
trace_diffuse_rays_loop_b3670:
# B3670
	lwr x24, x25, x22
	lw x32, 0(x24)
	beq x32, x28, trace_diffuse_rays_bneelse_b3896
# B3672
	bne x32, x26, trace_diffuse_rays_beqelse_b3674
# B3673
	mv x32, x100
	j trace_diffuse_rays_cont_b3806 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3674:
# B3674
	lwr x33, x13, x32
	lw x34, 0(x31)
	lw x36, 5(x33)
	lw x36, 0(x36)
	fsub x34, x34, x36
	lw x36, 1(x31)
	lw x38, 5(x33)
	lw x38, 1(x38)
	fsub x36, x36, x38
	lw x38, 2(x31)
	lw x39, 5(x33)
	lw x39, 2(x39)
	fsub x38, x38, x39
	lw x39, 1(x9)
	lwr x32, x39, x32
	lw x39, 1(x33)
	bne x39, x100, trace_diffuse_rays_beqelse_b3676
# B3675
	lw x39, 0(x9)
	lw x5, 0(x32)
	fsub x5, x5, x34
	lw x6, 1(x32)
	fmul x5, x5, x6
	lw x65, 1(x39)
	fmul x66, x5, x65
	fadd x66, x66, x36
	fabs x66, x66
	lw x67, 4(x33)
	lw x67, 1(x67)
	bfle x67, x66, trace_diffuse_rays_bfgtelse_b3682
# B3678
	lw x66, 2(x39)
	fmul x66, x5, x66
	fadd x66, x66, x38
	fabs x66, x66
	lw x68, 4(x33)
	lw x68, 2(x68)
	bfle x68, x66, trace_diffuse_rays_bfgtelse_b3682
# B3680
	feq x6, x6, zero
	xori x6, x6, 1
	mv x66, x6
# B3681
	bne x66, zero, trace_diffuse_rays_beqelse_b3683
trace_diffuse_rays_bfgtelse_b3682:
# B3682
	lw x5, 2(x32)
	fsub x5, x5, x36
	lw x6, 3(x32)
	fmul x5, x5, x6
	lw x66, 0(x39)
	fmul x68, x5, x66
	fadd x68, x68, x34
	fabs x68, x68
	lw x69, 4(x33)
	lw x69, 0(x69)
	bfle x69, x68, trace_diffuse_rays_bfgtelse_b3689
# B3685
	lw x39, 2(x39)
	fmul x39, x5, x39
	fadd x39, x39, x38
	fabs x39, x39
	lw x33, 4(x33)
	lw x33, 2(x33)
	bfle x33, x39, trace_diffuse_rays_bfgtelse_b3689
# B3687
	feq x33, x6, zero
	xori x33, x33, 1
	mv x39, x33
# B3688
	bne x39, zero, trace_diffuse_rays_beqelse_b3690
trace_diffuse_rays_bfgtelse_b3689:
# B3689
	lw x33, 4(x32)
	fsub x33, x33, x38
	lw x32, 5(x32)
	fmul x33, x33, x32
	fmul x38, x33, x66
	fadd x34, x38, x34
	fabs x34, x34
	bfle x69, x34, trace_diffuse_rays_bfgtelse_b3716
# B3692
	fmul x34, x33, x65
	fadd x34, x34, x36
	fabs x34, x34
	bfle x67, x34, trace_diffuse_rays_bfgtelse_b3716
# B3694
	feq x32, x32, zero
	xori x32, x32, 1
	mv x34, x32
# B3695
	bne x34, zero, trace_diffuse_rays_beqelse_b3697
	j trace_diffuse_rays_cont_b3716 # adhoc jump(3)
trace_diffuse_rays_beqelse_b3697:
# B3697
	sw x33, 0(x27)
	mv x32, x14
	j trace_diffuse_rays_cont_b3715 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3690:
# B3690
	sw x5, 0(x27)
	mv x32, x11
	j trace_diffuse_rays_cont_b3715 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3683:
# B3683
	sw x5, 0(x27)
	mv x32, x100
	j trace_diffuse_rays_cont_b3715 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3676:
# B3676
	bne x39, x11, trace_diffuse_rays_beqelse_b3699
# B3698
	lw x33, 0(x32)
	bfle zero, x33, trace_diffuse_rays_bfgtelse_b3716
# B3701
	lw x33, 1(x32)
	fmul x33, x33, x34
	lw x34, 2(x32)
	fmul x34, x34, x36
	fadd x33, x33, x34
	lw x32, 3(x32)
	fmul x32, x32, x38
	fadd x32, x33, x32
	sw x32, 0(x27)
	mv x32, x100
	j trace_diffuse_rays_cont_b3715 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3699:
# B3699
	lw x39, 0(x32)
	bfeq x39, zero, trace_diffuse_rays_bfneqelse_b3716
# B3702
	lw x5, 1(x32)
	fmul x5, x5, x34
	lw x6, 2(x32)
	fmul x6, x6, x36
	fadd x5, x5, x6
	lw x6, 3(x32)
	fmul x6, x6, x38
	fadd x5, x5, x6
	fmul x6, x34, x34
	lw x65, 4(x33)
	lw x65, 0(x65)
	fmul x6, x6, x65
	fmul x65, x36, x36
	lw x66, 4(x33)
	lw x66, 1(x66)
	fmul x65, x65, x66
	fadd x6, x6, x65
	fmul x65, x38, x38
	lw x66, 4(x33)
	lw x66, 2(x66)
	fmul x65, x65, x66
	fadd x6, x6, x65
	lw x65, 3(x33)
	bne x65, zero, trace_diffuse_rays_beqelse_b3705
# B3704
	mv x34, x6
	j trace_diffuse_rays_cont_b3706 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3705:
# B3705
	fmul x65, x36, x38
	lw x66, 9(x33)
	lw x66, 0(x66)
	fmul x65, x65, x66
	fadd x6, x6, x65
	fmul x38, x38, x34
	lw x65, 9(x33)
	lw x65, 1(x65)
	fmul x38, x38, x65
	fadd x38, x6, x38
	fmul x34, x34, x36
	lw x36, 9(x33)
	lw x36, 2(x36)
	fmul x34, x34, x36
	fadd x34, x38, x34
trace_diffuse_rays_cont_b3706:
# B3706
	lw x36, 1(x33)
	bne x36, x14, trace_diffuse_rays_beqelse_b3709
# B3707
	fsub x34, x34, x15
trace_diffuse_rays_beqelse_b3709:
# B3709
	fmul x36, x5, x5
	fmul x34, x39, x34
	fsub x34, x36, x34
	bfle x34, zero, trace_diffuse_rays_bfgtelse_b3716
# B3711
	lw x33, 6(x33)
	fsqrt x34, x34
	bne x33, zero, trace_diffuse_rays_beqelse_b3713
# B3712
	fsub x33, x5, x34
	lw x32, 4(x32)
	fmul x32, x33, x32
	sw x32, 0(x27)
	j trace_diffuse_rays_cont_b3714 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3713:
# B3713
	fadd x33, x5, x34
	lw x32, 4(x32)
	fmul x32, x33, x32
	sw x32, 0(x27)
trace_diffuse_rays_cont_b3714:
# B3714
	mv x32, x100
trace_diffuse_rays_cont_b3715:
# B3715
	bne x32, zero, trace_diffuse_rays_beqelse_b3717
trace_diffuse_rays_bfgtelse_b3716:
trace_diffuse_rays_bfneqelse_b3716:
trace_diffuse_rays_cont_b3716:
# B3716
	mv x32, zero
	j trace_diffuse_rays_cont_b3806 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3717:
# B3717
	lw x32, 0(x27)
	bfle x35, x32, trace_diffuse_rays_bfgtelse_b3718
# B3719
	mv x34, x24
	mv x33, x100
trace_diffuse_rays_loop_b3720:
# B3720
	lwr x32, x34, x33
	beq x32, x28, trace_diffuse_rays_bneelse_b3804
# B3722
	lwr x32, x29, x32
	mv x38, x32
	mv x36, zero
trace_diffuse_rays_beqelse_b3723:
trace_diffuse_rays_loop_b3723:
# B3723
	lwr x32, x38, x36
	beq x32, x28, trace_diffuse_rays_bneelse_b3801
# B3725
	lwr x32, x38, x36
	lwr x39, x13, x32
	lw x5, 0(x31)
	lw x6, 5(x39)
	lw x6, 0(x6)
	fsub x6, x5, x6
	lw x65, 1(x31)
	lw x66, 5(x39)
	lw x66, 1(x66)
	fsub x66, x65, x66
	lw x67, 2(x31)
	lw x68, 5(x39)
	lw x68, 2(x68)
	fsub x68, x67, x68
	lw x69, 1(x9)
	lwr x69, x69, x32
	lw x7, 1(x39)
	bne x7, x100, trace_diffuse_rays_beqelse_b3727
# B3726
	lw x7, 0(x9)
	lw x70, 0(x69)
	fsub x70, x70, x6
	lw x71, 1(x69)
	fmul x70, x70, x71
	lw x72, 1(x7)
	fmul x73, x70, x72
	fadd x73, x73, x66
	fabs x73, x73
	lw x74, 4(x39)
	lw x74, 1(x74)
	bfle x74, x73, trace_diffuse_rays_bfgtelse_b3733
# B3729
	lw x73, 2(x7)
	fmul x73, x70, x73
	fadd x73, x73, x68
	fabs x73, x73
	lw x75, 4(x39)
	lw x75, 2(x75)
	bfle x75, x73, trace_diffuse_rays_bfgtelse_b3733
# B3731
	feq x71, x71, zero
	xori x71, x71, 1
	mv x73, x71
# B3732
	bne x73, zero, trace_diffuse_rays_beqelse_b3734
trace_diffuse_rays_bfgtelse_b3733:
# B3733
	lw x70, 2(x69)
	fsub x70, x70, x66
	lw x71, 3(x69)
	fmul x70, x70, x71
	lw x73, 0(x7)
	fmul x75, x70, x73
	fadd x75, x75, x6
	fabs x75, x75
	lw x76, 4(x39)
	lw x76, 0(x76)
	bfle x76, x75, trace_diffuse_rays_bfgtelse_b3740
# B3736
	lw x7, 2(x7)
	fmul x7, x70, x7
	fadd x7, x7, x68
	fabs x7, x7
	lw x39, 4(x39)
	lw x39, 2(x39)
	bfle x39, x7, trace_diffuse_rays_bfgtelse_b3740
# B3738
	feq x39, x71, zero
	xori x39, x39, 1
	mv x7, x39
# B3739
	bne x7, zero, trace_diffuse_rays_beqelse_b3741
trace_diffuse_rays_bfgtelse_b3740:
# B3740
	lw x39, 4(x69)
	fsub x39, x39, x68
	lw x68, 5(x69)
	fmul x39, x39, x68
	fmul x69, x39, x73
	fadd x6, x69, x6
	fabs x6, x6
	bfle x76, x6, trace_diffuse_rays_bfgtelse_b3747
# B3743
	fmul x6, x39, x72
	fadd x6, x6, x66
	fabs x6, x6
	bfle x74, x6, trace_diffuse_rays_bfgtelse_b3747
# B3745
	feq x6, x68, zero
	xori x6, x6, 1
	mv x66, x6
# B3746
	bne x66, zero, trace_diffuse_rays_beqelse_b3748
trace_diffuse_rays_bfgtelse_b3747:
# B3747
	mv x39, zero
	j trace_diffuse_rays_cont_b3766 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3748:
# B3748
	sw x39, 0(x27)
	mv x39, x14
	j trace_diffuse_rays_cont_b3766 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3741:
# B3741
	sw x70, 0(x27)
	mv x39, x11
	j trace_diffuse_rays_cont_b3766 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3734:
# B3734
	sw x70, 0(x27)
	mv x39, x100
	j trace_diffuse_rays_cont_b3766 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3727:
# B3727
	bne x7, x11, trace_diffuse_rays_beqelse_b3750
# B3749
	lw x39, 0(x69)
	bfle zero, x39, trace_diffuse_rays_bfgtelse_b3751
# B3752
	lw x39, 1(x69)
	fmul x39, x39, x6
	lw x6, 2(x69)
	fmul x6, x6, x66
	fadd x39, x39, x6
	lw x6, 3(x69)
	fmul x6, x6, x68
	fadd x39, x39, x6
	sw x39, 0(x27)
	mv x39, x100
	j trace_diffuse_rays_cont_b3766 # adhoc jump(2)
trace_diffuse_rays_bfgtelse_b3751:
# B3751
	mv x39, zero
	j trace_diffuse_rays_cont_b3766 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3750:
# B3750
	lw x7, 0(x69)
	bfeq x7, zero, trace_diffuse_rays_bfneqelse_b3754
# B3753
	lw x70, 1(x69)
	fmul x70, x70, x6
	lw x71, 2(x69)
	fmul x71, x71, x66
	fadd x70, x70, x71
	lw x71, 3(x69)
	fmul x71, x71, x68
	fadd x70, x70, x71
	fmul x71, x6, x6
	lw x72, 4(x39)
	lw x72, 0(x72)
	fmul x71, x71, x72
	fmul x72, x66, x66
	lw x73, 4(x39)
	lw x73, 1(x73)
	fmul x72, x72, x73
	fadd x71, x71, x72
	fmul x72, x68, x68
	lw x73, 4(x39)
	lw x73, 2(x73)
	fmul x72, x72, x73
	fadd x71, x71, x72
	lw x72, 3(x39)
	bne x72, zero, trace_diffuse_rays_beqelse_b3756
# B3755
	mv x6, x71
	j trace_diffuse_rays_cont_b3757 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3756:
# B3756
	fmul x72, x66, x68
	lw x73, 9(x39)
	lw x73, 0(x73)
	fmul x72, x72, x73
	fadd x71, x71, x72
	fmul x68, x68, x6
	lw x72, 9(x39)
	lw x72, 1(x72)
	fmul x68, x68, x72
	fadd x68, x71, x68
	fmul x6, x6, x66
	lw x66, 9(x39)
	lw x66, 2(x66)
	fmul x6, x6, x66
	fadd x6, x68, x6
trace_diffuse_rays_cont_b3757:
# B3757
	lw x66, 1(x39)
	bne x66, x14, trace_diffuse_rays_beqelse_b3760
# B3758
	fsub x6, x6, x15
trace_diffuse_rays_beqelse_b3760:
# B3760
	fmul x66, x70, x70
	fmul x6, x7, x6
	fsub x6, x66, x6
	bfle x6, zero, trace_diffuse_rays_bfgtelse_b3761
# B3762
	lw x39, 6(x39)
	fsqrt x6, x6
	bne x39, zero, trace_diffuse_rays_beqelse_b3764
# B3763
	fsub x39, x70, x6
	lw x6, 4(x69)
	fmul x39, x39, x6
	sw x39, 0(x27)
	j trace_diffuse_rays_cont_b3765 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3764:
# B3764
	fadd x39, x70, x6
	lw x6, 4(x69)
	fmul x39, x39, x6
	sw x39, 0(x27)
trace_diffuse_rays_cont_b3765:
# B3765
	mv x39, x100
	j trace_diffuse_rays_cont_b3766 # adhoc jump(2)
trace_diffuse_rays_bfgtelse_b3761:
# B3761
	mv x39, zero
	j trace_diffuse_rays_cont_b3766 # adhoc jump(2)
trace_diffuse_rays_bfneqelse_b3754:
# B3754
	mv x39, zero
trace_diffuse_rays_cont_b3766:
# B3766
	lw x6, 0(x27)
	bne x39, zero, trace_diffuse_rays_beqelse_b3768
# B3767
	mv x39, zero
	j trace_diffuse_rays_cont_b3769 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3768:
# B3768
	fle x39, x90, x6
	xori x39, x39, 1
trace_diffuse_rays_cont_b3769:
# B3769
	addi x36, x36, 1
	bne x39, zero, trace_diffuse_rays_beqelse_b3771
# B3770
	lwr x32, x13, x32
	lw x32, 6(x32)
	beq x32, zero, trace_diffuse_rays_bneelse_b3801
	j	trace_diffuse_rays_beqelse_b3723 # moved need extra jump for 3723 at B3770
trace_diffuse_rays_beqelse_b3771:
# B3771
	fadd x32, x6, x30
	lw x39, 0(x91)
	fmul x39, x39, x32
	fadd x39, x39, x5
	lw x5, 1(x91)
	fmul x5, x5, x32
	fadd x5, x5, x65
	lw x6, 2(x91)
	fmul x32, x6, x32
	fadd x32, x32, x67
	mv x65, x38
	mv x66, x39
	mv x67, x5
	mv x68, x32
	mv x6, zero
	j	trace_diffuse_rays_loop_b3774 # jumping over moved block
trace_diffuse_rays_bneelse_b3795:	#moved
# B3795
	addi x6, x6, 1
trace_diffuse_rays_loop_b3774:
# B3774
	lwr x32, x65, x6
	bne x32, x28, trace_diffuse_rays_beqelse_b3776
# B3775
	mv x39, x100
# B3797
	bne x39, zero, trace_diffuse_rays_beqelse_b3799
	j	trace_diffuse_rays_beqelse_b3723 # moved need extra jump for 3723 at B3797
trace_diffuse_rays_beqelse_b3799:
# B3799
	mv x32, x100
trace_diffuse_rays_cont_b3800:
# B3800
	bne x32, zero, trace_diffuse_rays_beqelse_b3802
trace_diffuse_rays_bneelse_b3801:
trace_diffuse_rays_cont_b3801:
# B3801
	addi x33, x33, 1
	j trace_diffuse_rays_loop_b3720 # loopback to while entry from B3801
trace_diffuse_rays_beqelse_b3802:
# B3802
	mv x36, x100
# B3803
	bne x36, zero, trace_diffuse_rays_beqelse_b3805
trace_diffuse_rays_bneelse_b3804:
# B3804
	mv x32, zero
	j trace_diffuse_rays_cont_b3806 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3805:
# B3805
	mv x32, x100
	j trace_diffuse_rays_cont_b3806 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3776:
# B3776
	lwr x32, x13, x32
	lw x39, 5(x32)
	lw x39, 0(x39)
	fsub x39, x66, x39
	lw x5, 5(x32)
	lw x5, 1(x5)
	fsub x5, x67, x5
	lw x69, 5(x32)
	lw x69, 2(x69)
	fsub x69, x68, x69
	lw x7, 1(x32)
	bne x7, x100, trace_diffuse_rays_beqelse_b3778
# B3777
	fabs x39, x39
	lw x7, 4(x32)
	lw x7, 0(x7)
	bfle x7, x39, trace_diffuse_rays_bfgtelse_b3784
# B3780
	fabs x39, x5
	lw x5, 4(x32)
	lw x5, 1(x5)
	bfle x5, x39, trace_diffuse_rays_bfgtelse_b3784
# B3782
	fabs x39, x69
	lw x5, 4(x32)
	lw x5, 2(x5)
	fle x39, x5, x39
	xori x39, x39, 1
	mv x5, x39
# B3783
	bne x5, zero, trace_diffuse_rays_beqelse_b3785
trace_diffuse_rays_bfgtelse_b3784:
# B3784
	lw x32, 6(x32)
	xori x32, x32, 1
	j trace_diffuse_rays_cont_b3794 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3785:
# B3785
	lw x32, 6(x32)
	j trace_diffuse_rays_cont_b3794 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3778:
# B3778
	bne x7, x11, trace_diffuse_rays_beqelse_b3787
# B3786
	lw x7, 4(x32)
	lw x70, 0(x7)
	fmul x39, x70, x39
	lw x70, 1(x7)
	fmul x5, x70, x5
	fadd x39, x39, x5
	lw x5, 2(x7)
	fmul x5, x5, x69
	fadd x39, x39, x5
	lw x32, 6(x32)
	fle x39, zero, x39
	xori x39, x39, 1
	xor x32, x32, x39
	xori x32, x32, 1
	j trace_diffuse_rays_cont_b3794 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3787:
# B3787
	fmul x7, x39, x39
	lw x70, 4(x32)
	lw x70, 0(x70)
	fmul x7, x7, x70
	fmul x70, x5, x5
	lw x71, 4(x32)
	lw x71, 1(x71)
	fmul x70, x70, x71
	fadd x7, x7, x70
	fmul x70, x69, x69
	lw x71, 4(x32)
	lw x71, 2(x71)
	fmul x70, x70, x71
	fadd x7, x7, x70
	lw x70, 3(x32)
	bne x70, zero, trace_diffuse_rays_beqelse_b3789
# B3788
	mv x39, x7
	j trace_diffuse_rays_cont_b3790 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3789:
# B3789
	fmul x70, x5, x69
	lw x71, 9(x32)
	lw x71, 0(x71)
	fmul x70, x70, x71
	fadd x7, x7, x70
	fmul x69, x69, x39
	lw x70, 9(x32)
	lw x70, 1(x70)
	fmul x69, x69, x70
	fadd x69, x7, x69
	fmul x39, x39, x5
	lw x5, 9(x32)
	lw x5, 2(x5)
	fmul x39, x39, x5
	fadd x39, x69, x39
trace_diffuse_rays_cont_b3790:
# B3790
	lw x5, 1(x32)
	bne x5, x14, trace_diffuse_rays_beqelse_b3793
# B3791
	fsub x39, x39, x15
trace_diffuse_rays_beqelse_b3793:
# B3793
	lw x32, 6(x32)
	fle x39, zero, x39
	xori x39, x39, 1
	xor x32, x32, x39
	xori x32, x32, 1
trace_diffuse_rays_cont_b3794:
# B3794
	beq x32, zero, trace_diffuse_rays_bneelse_b3795
	j	trace_diffuse_rays_beqelse_b3723 # moved need extra jump for 3723 at B3794
trace_diffuse_rays_bfgtelse_b3718:
# B3718
	mv x32, zero
trace_diffuse_rays_cont_b3806:
# B3806
	addi x22, x22, 1
	bne x32, zero, trace_diffuse_rays_beqelse_b3808
	j	trace_diffuse_rays_bneelse_b3670 # moved need extra jump for 3670 at B3806
trace_diffuse_rays_beqelse_b3808:
# B3808
	mv x34, x24
	mv x33, x100
trace_diffuse_rays_cont_b3809:
trace_diffuse_rays_loop_b3809:
# B3809
	lwr x24, x34, x33
	beq x24, x28, trace_diffuse_rays_bneelse_b3670
# B3811
	lwr x24, x29, x24
	mv x36, x24
	mv x32, zero
trace_diffuse_rays_beqelse_b3812:
trace_diffuse_rays_loop_b3812:
# B3812
	lwr x24, x36, x32
	beq x24, x28, trace_diffuse_rays_bneelse_b3890
# B3814
	lwr x24, x36, x32
	lwr x38, x13, x24
	lw x39, 0(x31)
	lw x5, 5(x38)
	lw x5, 0(x5)
	fsub x5, x39, x5
	lw x6, 1(x31)
	lw x65, 5(x38)
	lw x65, 1(x65)
	fsub x65, x6, x65
	lw x66, 2(x31)
	lw x67, 5(x38)
	lw x67, 2(x67)
	fsub x67, x66, x67
	lw x68, 1(x9)
	lwr x68, x68, x24
	lw x69, 1(x38)
	bne x69, x100, trace_diffuse_rays_beqelse_b3816
# B3815
	lw x69, 0(x9)
	lw x7, 0(x68)
	fsub x7, x7, x5
	lw x70, 1(x68)
	fmul x7, x7, x70
	lw x71, 1(x69)
	fmul x72, x7, x71
	fadd x72, x72, x65
	fabs x72, x72
	lw x73, 4(x38)
	lw x73, 1(x73)
	bfle x73, x72, trace_diffuse_rays_bfgtelse_b3822
# B3818
	lw x72, 2(x69)
	fmul x72, x7, x72
	fadd x72, x72, x67
	fabs x72, x72
	lw x74, 4(x38)
	lw x74, 2(x74)
	bfle x74, x72, trace_diffuse_rays_bfgtelse_b3822
# B3820
	feq x70, x70, zero
	xori x70, x70, 1
	mv x72, x70
# B3821
	bne x72, zero, trace_diffuse_rays_beqelse_b3823
trace_diffuse_rays_bfgtelse_b3822:
# B3822
	lw x7, 2(x68)
	fsub x7, x7, x65
	lw x70, 3(x68)
	fmul x7, x7, x70
	lw x72, 0(x69)
	fmul x74, x7, x72
	fadd x74, x74, x5
	fabs x74, x74
	lw x75, 4(x38)
	lw x75, 0(x75)
	bfle x75, x74, trace_diffuse_rays_bfgtelse_b3829
# B3825
	lw x69, 2(x69)
	fmul x69, x7, x69
	fadd x69, x69, x67
	fabs x69, x69
	lw x38, 4(x38)
	lw x38, 2(x38)
	bfle x38, x69, trace_diffuse_rays_bfgtelse_b3829
# B3827
	feq x38, x70, zero
	xori x38, x38, 1
	mv x69, x38
# B3828
	bne x69, zero, trace_diffuse_rays_beqelse_b3830
trace_diffuse_rays_bfgtelse_b3829:
# B3829
	lw x38, 4(x68)
	fsub x38, x38, x67
	lw x67, 5(x68)
	fmul x38, x38, x67
	fmul x68, x38, x72
	fadd x5, x68, x5
	fabs x5, x5
	bfle x75, x5, trace_diffuse_rays_bfgtelse_b3836
# B3832
	fmul x5, x38, x71
	fadd x5, x5, x65
	fabs x5, x5
	bfle x73, x5, trace_diffuse_rays_bfgtelse_b3836
# B3834
	feq x5, x67, zero
	xori x5, x5, 1
	mv x65, x5
# B3835
	bne x65, zero, trace_diffuse_rays_beqelse_b3837
trace_diffuse_rays_bfgtelse_b3836:
# B3836
	mv x38, zero
	j trace_diffuse_rays_cont_b3855 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3837:
# B3837
	sw x38, 0(x27)
	mv x38, x14
	j trace_diffuse_rays_cont_b3855 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3830:
# B3830
	sw x7, 0(x27)
	mv x38, x11
	j trace_diffuse_rays_cont_b3855 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3823:
# B3823
	sw x7, 0(x27)
	mv x38, x100
	j trace_diffuse_rays_cont_b3855 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3816:
# B3816
	bne x69, x11, trace_diffuse_rays_beqelse_b3839
# B3838
	lw x38, 0(x68)
	bfle zero, x38, trace_diffuse_rays_bfgtelse_b3840
# B3841
	lw x38, 1(x68)
	fmul x38, x38, x5
	lw x5, 2(x68)
	fmul x5, x5, x65
	fadd x38, x38, x5
	lw x5, 3(x68)
	fmul x5, x5, x67
	fadd x38, x38, x5
	sw x38, 0(x27)
	mv x38, x100
	j trace_diffuse_rays_cont_b3855 # adhoc jump(2)
trace_diffuse_rays_bfgtelse_b3840:
# B3840
	mv x38, zero
	j trace_diffuse_rays_cont_b3855 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3839:
# B3839
	lw x69, 0(x68)
	bfeq x69, zero, trace_diffuse_rays_bfneqelse_b3843
# B3842
	lw x7, 1(x68)
	fmul x7, x7, x5
	lw x70, 2(x68)
	fmul x70, x70, x65
	fadd x7, x7, x70
	lw x70, 3(x68)
	fmul x70, x70, x67
	fadd x7, x7, x70
	fmul x70, x5, x5
	lw x71, 4(x38)
	lw x71, 0(x71)
	fmul x70, x70, x71
	fmul x71, x65, x65
	lw x72, 4(x38)
	lw x72, 1(x72)
	fmul x71, x71, x72
	fadd x70, x70, x71
	fmul x71, x67, x67
	lw x72, 4(x38)
	lw x72, 2(x72)
	fmul x71, x71, x72
	fadd x70, x70, x71
	lw x71, 3(x38)
	bne x71, zero, trace_diffuse_rays_beqelse_b3845
# B3844
	mv x5, x70
	j trace_diffuse_rays_cont_b3846 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3845:
# B3845
	fmul x71, x65, x67
	lw x72, 9(x38)
	lw x72, 0(x72)
	fmul x71, x71, x72
	fadd x70, x70, x71
	fmul x67, x67, x5
	lw x71, 9(x38)
	lw x71, 1(x71)
	fmul x67, x67, x71
	fadd x67, x70, x67
	fmul x5, x5, x65
	lw x65, 9(x38)
	lw x65, 2(x65)
	fmul x5, x5, x65
	fadd x5, x67, x5
trace_diffuse_rays_cont_b3846:
# B3846
	lw x65, 1(x38)
	bne x65, x14, trace_diffuse_rays_beqelse_b3849
# B3847
	fsub x5, x5, x15
trace_diffuse_rays_beqelse_b3849:
# B3849
	fmul x65, x7, x7
	fmul x5, x69, x5
	fsub x5, x65, x5
	bfle x5, zero, trace_diffuse_rays_bfgtelse_b3850
# B3851
	lw x38, 6(x38)
	fsqrt x5, x5
	bne x38, zero, trace_diffuse_rays_beqelse_b3853
# B3852
	fsub x38, x7, x5
	lw x5, 4(x68)
	fmul x38, x38, x5
	sw x38, 0(x27)
	j trace_diffuse_rays_cont_b3854 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3853:
# B3853
	fadd x38, x7, x5
	lw x5, 4(x68)
	fmul x38, x38, x5
	sw x38, 0(x27)
trace_diffuse_rays_cont_b3854:
# B3854
	mv x38, x100
	j trace_diffuse_rays_cont_b3855 # adhoc jump(2)
trace_diffuse_rays_bfgtelse_b3850:
# B3850
	mv x38, zero
	j trace_diffuse_rays_cont_b3855 # adhoc jump(2)
trace_diffuse_rays_bfneqelse_b3843:
# B3843
	mv x38, zero
trace_diffuse_rays_cont_b3855:
# B3855
	lw x5, 0(x27)
	bne x38, zero, trace_diffuse_rays_beqelse_b3857
# B3856
	mv x38, zero
	j trace_diffuse_rays_cont_b3858 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3857:
# B3857
	fle x38, x90, x5
	xori x38, x38, 1
trace_diffuse_rays_cont_b3858:
# B3858
	addi x32, x32, 1
	bne x38, zero, trace_diffuse_rays_beqelse_b3860
# B3859
	lwr x24, x13, x24
	lw x24, 6(x24)
	beq x24, zero, trace_diffuse_rays_bneelse_b3890
	j	trace_diffuse_rays_beqelse_b3812 # moved need extra jump for 3812 at B3859
trace_diffuse_rays_beqelse_b3860:
# B3860
	fadd x24, x5, x30
	lw x38, 0(x91)
	fmul x38, x38, x24
	fadd x38, x38, x39
	lw x39, 1(x91)
	fmul x39, x39, x24
	fadd x39, x39, x6
	lw x5, 2(x91)
	fmul x24, x5, x24
	fadd x24, x24, x66
	mv x65, x38
	mv x66, x39
	mv x67, x24
	mv x6, x36
	mv x5, zero
	j	trace_diffuse_rays_loop_b3863 # jumping over moved block
trace_diffuse_rays_bneelse_b3884:	#moved
# B3884
	addi x5, x5, 1
trace_diffuse_rays_loop_b3863:
# B3863
	lwr x24, x6, x5
	bne x24, x28, trace_diffuse_rays_beqelse_b3865
# B3864
	mv x38, x100
# B3886
	bne x38, zero, trace_diffuse_rays_beqelse_b3888
	j	trace_diffuse_rays_beqelse_b3812 # moved need extra jump for 3812 at B3886
trace_diffuse_rays_beqelse_b3888:
# B3888
	mv x24, x100
trace_diffuse_rays_cont_b3889:
# B3889
	bne x24, zero, trace_diffuse_rays_beqelse_b3891
trace_diffuse_rays_bneelse_b3890:
trace_diffuse_rays_cont_b3890:
# B3890
	addi x33, x33, 1
	j trace_diffuse_rays_loop_b3809 # loopback to while entry from B3890
trace_diffuse_rays_beqelse_b3891:
# B3891
	mv x32, x100
# B3892
	bne x32, zero, trace_diffuse_rays_beqelse_b3894
	j	trace_diffuse_rays_bneelse_b3670 # moved need extra jump for 3670 at B3892
trace_diffuse_rays_beqelse_b3894:
# B3894
	mv x24, x100
trace_diffuse_rays_cont_b3895:
# B3895
	bne x24, zero, trace_diffuse_rays_beqelse_b4440
trace_diffuse_rays_bneelse_b3896:
# B3896
	lw x22, 0(x37)
	lw x24, 0(x91)
	fmul x22, x22, x24
	lw x24, 1(x37)
	lw x25, 1(x91)
	fmul x24, x24, x25
	fadd x22, x22, x24
	lw x24, 2(x37)
	lw x25, 2(x91)
	fmul x24, x24, x25
	fadd x22, x22, x24
	fsub x22, zero, x22
	bfle x22, zero, trace_diffuse_rays_bfgtelse_b3898
# B3899
	mv x24, x22
	j trace_diffuse_rays_cont_b3900 # adhoc jump(2)
trace_diffuse_rays_bfgtelse_b3898:
# B3898
	mv x24, zero
trace_diffuse_rays_cont_b3900:
# B3900
	fmul x12, x12, x24
	lw x22, 7(x23)
	lw x22, 0(x22)
	fmul x12, x12, x22
	lw x22, 0(x92)
	lw x23, 0(x40)
	fmul x23, x12, x23
	fadd x22, x22, x23
	sw x22, 0(x92)
	lw x22, 1(x92)
	lw x23, 1(x40)
	fmul x23, x12, x23
	fadd x22, x22, x23
	sw x22, 1(x92)
	lw x22, 2(x92)
	lw x23, 2(x40)
	fmul x12, x12, x23
	fadd x12, x22, x12
	sw x12, 2(x92)
	j trace_diffuse_rays_cont_b4440 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3865:
# B3865
	lwr x24, x13, x24
	lw x38, 5(x24)
	lw x38, 0(x38)
	fsub x38, x65, x38
	lw x39, 5(x24)
	lw x39, 1(x39)
	fsub x39, x66, x39
	lw x68, 5(x24)
	lw x68, 2(x68)
	fsub x68, x67, x68
	lw x69, 1(x24)
	bne x69, x100, trace_diffuse_rays_beqelse_b3867
# B3866
	fabs x38, x38
	lw x69, 4(x24)
	lw x69, 0(x69)
	bfle x69, x38, trace_diffuse_rays_bfgtelse_b3873
# B3869
	fabs x38, x39
	lw x39, 4(x24)
	lw x39, 1(x39)
	bfle x39, x38, trace_diffuse_rays_bfgtelse_b3873
# B3871
	fabs x38, x68
	lw x39, 4(x24)
	lw x39, 2(x39)
	fle x38, x39, x38
	xori x38, x38, 1
	mv x39, x38
# B3872
	bne x39, zero, trace_diffuse_rays_beqelse_b3874
trace_diffuse_rays_bfgtelse_b3873:
# B3873
	lw x24, 6(x24)
	xori x24, x24, 1
	j trace_diffuse_rays_cont_b3883 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3874:
# B3874
	lw x24, 6(x24)
	j trace_diffuse_rays_cont_b3883 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3867:
# B3867
	bne x69, x11, trace_diffuse_rays_beqelse_b3876
# B3875
	lw x69, 4(x24)
	lw x7, 0(x69)
	fmul x38, x7, x38
	lw x7, 1(x69)
	fmul x39, x7, x39
	fadd x38, x38, x39
	lw x39, 2(x69)
	fmul x39, x39, x68
	fadd x38, x38, x39
	lw x24, 6(x24)
	fle x38, zero, x38
	xori x38, x38, 1
	xor x24, x24, x38
	xori x24, x24, 1
	j trace_diffuse_rays_cont_b3883 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3876:
# B3876
	fmul x69, x38, x38
	lw x7, 4(x24)
	lw x7, 0(x7)
	fmul x69, x69, x7
	fmul x7, x39, x39
	lw x70, 4(x24)
	lw x70, 1(x70)
	fmul x7, x7, x70
	fadd x69, x69, x7
	fmul x7, x68, x68
	lw x70, 4(x24)
	lw x70, 2(x70)
	fmul x7, x7, x70
	fadd x69, x69, x7
	lw x7, 3(x24)
	bne x7, zero, trace_diffuse_rays_beqelse_b3878
# B3877
	mv x38, x69
	j trace_diffuse_rays_cont_b3879 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3878:
# B3878
	fmul x7, x39, x68
	lw x70, 9(x24)
	lw x70, 0(x70)
	fmul x7, x7, x70
	fadd x69, x69, x7
	fmul x68, x68, x38
	lw x7, 9(x24)
	lw x7, 1(x7)
	fmul x68, x68, x7
	fadd x68, x69, x68
	fmul x38, x38, x39
	lw x39, 9(x24)
	lw x39, 2(x39)
	fmul x38, x38, x39
	fadd x38, x68, x38
trace_diffuse_rays_cont_b3879:
# B3879
	lw x39, 1(x24)
	bne x39, x14, trace_diffuse_rays_beqelse_b3882
# B3880
	fsub x38, x38, x15
trace_diffuse_rays_beqelse_b3882:
# B3882
	lw x24, 6(x24)
	fle x38, zero, x38
	xori x38, x38, 1
	xor x24, x24, x38
	xori x24, x24, 1
trace_diffuse_rays_cont_b3883:
# B3883
	beq x24, zero, trace_diffuse_rays_bneelse_b3884
	j	trace_diffuse_rays_beqelse_b3812 # moved need extra jump for 3812 at B3883
trace_diffuse_rays_bneelse_b3361:
# B3361
	addi x22, x21, 1
	lwr x22, x18, x22
	fdiv x12, x12, x17
	sw x24, 0(x23)
	lw x24, 0(x25)
	mv x94, x22
	mv x25, zero
	mv x93, x24
trace_diffuse_rays_loop_b3901:
# B3901
	lwr x95, x93, x25
	lw x96, 0(x95)
	beq x96, x28, trace_diffuse_rays_bneelse_b4100
# B3903
	bne x96, x26, trace_diffuse_rays_beqelse_b3905
# B3904
	mv x97, x100
	mv x99, x94
	mv x98, x95
trace_diffuse_rays_loop_b3906:
# B3906
	lwr x95, x98, x97
	beq x95, x28, trace_diffuse_rays_bneelse_b4099
# B3908
	lwr x95, x29, x95
	mv x101, x95
	mv x102, x99
	mv x96, zero
	j	trace_diffuse_rays_loop_b3909 # jumping over moved block
trace_diffuse_rays_beqelse_b3980:	#moved
# B3980
	sw x105, 0(x23)
	sw x106, 0(x31)
	sw x107, 1(x31)
	sw x95, 2(x31)
	sw x103, 0(x32)
	sw x104, 0(x33)
trace_diffuse_rays_beqelse_b3909:
trace_diffuse_rays_bfgtelse_b3909:
trace_diffuse_rays_loop_b3909:
# B3909
	lw x95, 0(x102)
	lwr x103, x101, x96
	beq x103, x28, trace_diffuse_rays_bneelse_b3982
# B3911
	lwr x104, x13, x103
	lw x105, 10(x104)
	lw x106, 0(x105)
	lw x107, 1(x105)
	lw x108, 2(x105)
	lw x109, 1(x102)
	lwr x109, x109, x103
	lw x110, 1(x104)
	bne x110, x100, trace_diffuse_rays_beqelse_b3913
# B3912
	lw x105, 0(x102)
	lw x110, 0(x109)
	fsub x110, x110, x106
	lw x111, 1(x109)
	fmul x110, x110, x111
	lw x112, 1(x105)
	fmul x113, x110, x112
	fadd x113, x113, x107
	fabs x113, x113
	lw x114, 4(x104)
	lw x114, 1(x114)
	bfle x114, x113, trace_diffuse_rays_bfgtelse_b3919
# B3915
	lw x113, 2(x105)
	fmul x113, x110, x113
	fadd x113, x113, x108
	fabs x113, x113
	lw x114, 4(x104)
	lw x114, 2(x114)
	bfle x114, x113, trace_diffuse_rays_bfgtelse_b3919
# B3917
	feq x111, x111, zero
	xori x111, x111, 1
	mv x113, x111
# B3918
	bne x113, zero, trace_diffuse_rays_beqelse_b3920
trace_diffuse_rays_bfgtelse_b3919:
# B3919
	lw x110, 2(x109)
	fsub x110, x110, x107
	lw x111, 3(x109)
	fmul x110, x110, x111
	lw x113, 0(x105)
	fmul x114, x110, x113
	fadd x114, x114, x106
	fabs x114, x114
	lw x115, 4(x104)
	lw x115, 0(x115)
	bfle x115, x114, trace_diffuse_rays_bfgtelse_b3926
# B3922
	lw x105, 2(x105)
	fmul x105, x110, x105
	fadd x105, x105, x108
	fabs x105, x105
	lw x114, 4(x104)
	lw x114, 2(x114)
	bfle x114, x105, trace_diffuse_rays_bfgtelse_b3926
# B3924
	feq x105, x111, zero
	xori x105, x105, 1
	mv x111, x105
# B3925
	bne x111, zero, trace_diffuse_rays_beqelse_b3927
trace_diffuse_rays_bfgtelse_b3926:
# B3926
	lw x105, 4(x109)
	fsub x105, x105, x108
	lw x108, 5(x109)
	fmul x105, x105, x108
	fmul x109, x105, x113
	fadd x106, x109, x106
	fabs x106, x106
	lw x109, 4(x104)
	lw x109, 0(x109)
	bfle x109, x106, trace_diffuse_rays_bfgtelse_b3933
# B3929
	fmul x106, x105, x112
	fadd x106, x106, x107
	fabs x106, x106
	lw x104, 4(x104)
	lw x104, 1(x104)
	bfle x104, x106, trace_diffuse_rays_bfgtelse_b3933
# B3931
	feq x104, x108, zero
	xori x104, x104, 1
	mv x106, x104
# B3932
	bne x106, zero, trace_diffuse_rays_beqelse_b3934
trace_diffuse_rays_bfgtelse_b3933:
# B3933
	mv x104, zero
	j trace_diffuse_rays_cont_b3946 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3934:
# B3934
	sw x105, 0(x27)
	mv x104, x14
	j trace_diffuse_rays_cont_b3946 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3927:
# B3927
	sw x110, 0(x27)
	mv x104, x11
	j trace_diffuse_rays_cont_b3946 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3920:
# B3920
	sw x110, 0(x27)
	mv x104, x100
	j trace_diffuse_rays_cont_b3946 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3913:
# B3913
	bne x110, x11, trace_diffuse_rays_beqelse_b3936
# B3935
	lw x104, 0(x109)
	bfle zero, x104, trace_diffuse_rays_bfgtelse_b3937
# B3938
	lw x105, 3(x105)
	fmul x104, x104, x105
	sw x104, 0(x27)
	mv x104, x100
	j trace_diffuse_rays_cont_b3946 # adhoc jump(2)
trace_diffuse_rays_bfgtelse_b3937:
# B3937
	mv x104, zero
	j trace_diffuse_rays_cont_b3946 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3936:
# B3936
	lw x110, 0(x109)
	bfeq x110, zero, trace_diffuse_rays_bfneqelse_b3940
# B3939
	lw x111, 1(x109)
	fmul x106, x111, x106
	lw x111, 2(x109)
	fmul x107, x111, x107
	fadd x106, x106, x107
	lw x107, 3(x109)
	fmul x107, x107, x108
	fadd x106, x106, x107
	lw x105, 3(x105)
	fmul x107, x106, x106
	fmul x105, x110, x105
	fsub x105, x107, x105
	bfle x105, zero, trace_diffuse_rays_bfgtelse_b3941
# B3942
	lw x104, 6(x104)
	fsqrt x105, x105
	bne x104, zero, trace_diffuse_rays_beqelse_b3944
# B3943
	fsub x104, x106, x105
	lw x105, 4(x109)
	fmul x104, x104, x105
	sw x104, 0(x27)
	j trace_diffuse_rays_cont_b3945 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3944:
# B3944
	fadd x104, x106, x105
	lw x105, 4(x109)
	fmul x104, x104, x105
	sw x104, 0(x27)
trace_diffuse_rays_cont_b3945:
# B3945
	mv x104, x100
	j trace_diffuse_rays_cont_b3946 # adhoc jump(2)
trace_diffuse_rays_bfgtelse_b3941:
# B3941
	mv x104, zero
	j trace_diffuse_rays_cont_b3946 # adhoc jump(2)
trace_diffuse_rays_bfneqelse_b3940:
# B3940
	mv x104, zero
trace_diffuse_rays_cont_b3946:
# B3946
	addi x96, x96, 1
	bne x104, zero, trace_diffuse_rays_beqelse_b3948
# B3947
	lwr x95, x13, x103
	lw x95, 6(x95)
	beq x95, zero, trace_diffuse_rays_bneelse_b3982
	j	trace_diffuse_rays_beqelse_b3909 # moved need extra jump for 3909 at B3947
trace_diffuse_rays_bneelse_b3982:
# B3982
	addi x97, x97, 1
	j trace_diffuse_rays_loop_b3906 # loopback to while entry from B3982
trace_diffuse_rays_beqelse_b3948:
# B3948
	lw x105, 0(x27)
	bfle x105, zero, trace_diffuse_rays_bfgtelse_b3909
# B3952
	lw x106, 0(x23)
	bfle x106, x105, trace_diffuse_rays_bfgtelse_b3909
# B3954
	fadd x105, x105, x30
	lw x106, 0(x95)
	fmul x106, x106, x105
	lw x107, 0(x10)
	fadd x106, x106, x107
	lw x107, 1(x95)
	fmul x107, x107, x105
	lw x108, 1(x10)
	fadd x107, x107, x108
	lw x95, 2(x95)
	fmul x95, x95, x105
	lw x108, 2(x10)
	fadd x95, x95, x108
	mv x110, x106
	mv x111, x107
	mv x112, x95
	mv x109, x101
	mv x108, zero
	j	trace_diffuse_rays_loop_b3955 # jumping over moved block
trace_diffuse_rays_bneelse_b3976:	#moved
# B3976
	addi x108, x108, 1
trace_diffuse_rays_loop_b3955:
# B3955
	lwr x113, x109, x108
	bne x113, x28, trace_diffuse_rays_beqelse_b3957
# B3956
	mv x114, x100
# B3978
	bne x114, zero, trace_diffuse_rays_beqelse_b3980
	j	trace_diffuse_rays_bfgtelse_b3909 # moved need extra jump for 3909 at B3978
trace_diffuse_rays_beqelse_b3957:
# B3957
	lwr x113, x13, x113
	lw x114, 5(x113)
	lw x114, 0(x114)
	fsub x114, x110, x114
	lw x115, 5(x113)
	lw x115, 1(x115)
	fsub x115, x111, x115
	lw x116, 5(x113)
	lw x116, 2(x116)
	fsub x116, x112, x116
	lw x117, 1(x113)
	bne x117, x100, trace_diffuse_rays_beqelse_b3959
# B3958
	fabs x114, x114
	lw x117, 4(x113)
	lw x117, 0(x117)
	bfle x117, x114, trace_diffuse_rays_bfgtelse_b3965
# B3961
	fabs x114, x115
	lw x115, 4(x113)
	lw x115, 1(x115)
	bfle x115, x114, trace_diffuse_rays_bfgtelse_b3965
# B3963
	fabs x114, x116
	lw x115, 4(x113)
	lw x115, 2(x115)
	fle x114, x115, x114
	xori x114, x114, 1
	mv x115, x114
# B3964
	bne x115, zero, trace_diffuse_rays_beqelse_b3966
trace_diffuse_rays_bfgtelse_b3965:
# B3965
	lw x113, 6(x113)
	xori x113, x113, 1
	j trace_diffuse_rays_cont_b3975 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3966:
# B3966
	lw x113, 6(x113)
	j trace_diffuse_rays_cont_b3975 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3959:
# B3959
	bne x117, x11, trace_diffuse_rays_beqelse_b3968
# B3967
	lw x117, 4(x113)
	lw x118, 0(x117)
	fmul x114, x118, x114
	lw x118, 1(x117)
	fmul x115, x118, x115
	fadd x114, x114, x115
	lw x115, 2(x117)
	fmul x115, x115, x116
	fadd x114, x114, x115
	lw x113, 6(x113)
	fle x114, zero, x114
	xori x114, x114, 1
	xor x113, x113, x114
	xori x113, x113, 1
	j trace_diffuse_rays_cont_b3975 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3968:
# B3968
	fmul x117, x114, x114
	lw x118, 4(x113)
	lw x118, 0(x118)
	fmul x117, x117, x118
	fmul x118, x115, x115
	lw x119, 4(x113)
	lw x119, 1(x119)
	fmul x118, x118, x119
	fadd x117, x117, x118
	fmul x118, x116, x116
	lw x119, 4(x113)
	lw x119, 2(x119)
	fmul x118, x118, x119
	fadd x117, x117, x118
	lw x118, 3(x113)
	bne x118, zero, trace_diffuse_rays_beqelse_b3970
# B3969
	mv x114, x117
	j trace_diffuse_rays_cont_b3971 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3970:
# B3970
	fmul x118, x115, x116
	lw x119, 9(x113)
	lw x119, 0(x119)
	fmul x118, x118, x119
	fadd x117, x117, x118
	fmul x116, x116, x114
	lw x118, 9(x113)
	lw x118, 1(x118)
	fmul x116, x116, x118
	fadd x116, x117, x116
	fmul x114, x114, x115
	lw x115, 9(x113)
	lw x115, 2(x115)
	fmul x114, x114, x115
	fadd x114, x116, x114
trace_diffuse_rays_cont_b3971:
# B3971
	lw x115, 1(x113)
	bne x115, x14, trace_diffuse_rays_beqelse_b3974
# B3972
	fsub x114, x114, x15
trace_diffuse_rays_beqelse_b3974:
# B3974
	lw x113, 6(x113)
	fle x114, zero, x114
	xori x114, x114, 1
	xor x113, x113, x114
	xori x113, x113, 1
trace_diffuse_rays_cont_b3975:
# B3975
	beq x113, zero, trace_diffuse_rays_bneelse_b3976
	j	trace_diffuse_rays_bfgtelse_b3909 # moved need extra jump for 3909 at B3975
trace_diffuse_rays_beqelse_b3905:
# B3905
	lwr x97, x13, x96
	lw x98, 10(x97)
	lw x99, 0(x98)
	lw x101, 1(x98)
	lw x102, 2(x98)
	lw x103, 1(x94)
	lwr x96, x103, x96
	lw x103, 1(x97)
	bne x103, x100, trace_diffuse_rays_beqelse_b3984
# B3983
	lw x98, 0(x94)
	lw x103, 0(x96)
	fsub x103, x103, x99
	lw x104, 1(x96)
	fmul x103, x103, x104
	lw x105, 1(x98)
	fmul x106, x103, x105
	fadd x106, x106, x101
	fabs x106, x106
	lw x107, 4(x97)
	lw x107, 1(x107)
	bfle x107, x106, trace_diffuse_rays_bfgtelse_b3990
# B3986
	lw x106, 2(x98)
	fmul x106, x103, x106
	fadd x106, x106, x102
	fabs x106, x106
	lw x107, 4(x97)
	lw x107, 2(x107)
	bfle x107, x106, trace_diffuse_rays_bfgtelse_b3990
# B3988
	feq x104, x104, zero
	xori x104, x104, 1
	mv x106, x104
# B3989
	bne x106, zero, trace_diffuse_rays_beqelse_b3991
trace_diffuse_rays_bfgtelse_b3990:
# B3990
	lw x103, 2(x96)
	fsub x103, x103, x101
	lw x104, 3(x96)
	fmul x103, x103, x104
	lw x106, 0(x98)
	fmul x107, x103, x106
	fadd x107, x107, x99
	fabs x107, x107
	lw x108, 4(x97)
	lw x108, 0(x108)
	bfle x108, x107, trace_diffuse_rays_bfgtelse_b3997
# B3993
	lw x98, 2(x98)
	fmul x98, x103, x98
	fadd x98, x98, x102
	fabs x98, x98
	lw x107, 4(x97)
	lw x107, 2(x107)
	bfle x107, x98, trace_diffuse_rays_bfgtelse_b3997
# B3995
	feq x98, x104, zero
	xori x98, x98, 1
	mv x104, x98
# B3996
	bne x104, zero, trace_diffuse_rays_beqelse_b3998
trace_diffuse_rays_bfgtelse_b3997:
# B3997
	lw x98, 4(x96)
	fsub x98, x98, x102
	lw x96, 5(x96)
	fmul x98, x98, x96
	fmul x102, x98, x106
	fadd x99, x102, x99
	fabs x99, x99
	lw x102, 4(x97)
	lw x102, 0(x102)
	bfle x102, x99, trace_diffuse_rays_bfgtelse_b4099
# B4000
	fmul x99, x98, x105
	fadd x99, x99, x101
	fabs x99, x99
	lw x97, 4(x97)
	lw x97, 1(x97)
	bfle x97, x99, trace_diffuse_rays_bfgtelse_b4099
# B4002
	feq x96, x96, zero
	xori x96, x96, 1
	mv x97, x96
# B4003
	bne x97, zero, trace_diffuse_rays_beqelse_b4005
	j trace_diffuse_rays_cont_b4099 # adhoc jump(3)
trace_diffuse_rays_beqelse_b4005:
# B4005
	sw x98, 0(x27)
	mv x96, x14
	j trace_diffuse_rays_cont_b4017 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3998:
# B3998
	sw x103, 0(x27)
	mv x96, x11
	j trace_diffuse_rays_cont_b4017 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3991:
# B3991
	sw x103, 0(x27)
	mv x96, x100
	j trace_diffuse_rays_cont_b4017 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3984:
# B3984
	bne x103, x11, trace_diffuse_rays_beqelse_b4007
# B4006
	lw x96, 0(x96)
	bfle zero, x96, trace_diffuse_rays_bfgtelse_b4099
# B4009
	lw x97, 3(x98)
	fmul x96, x96, x97
	sw x96, 0(x27)
	mv x96, x100
	j trace_diffuse_rays_cont_b4017 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4007:
# B4007
	lw x103, 0(x96)
	bfeq x103, zero, trace_diffuse_rays_bfneqelse_b4099
# B4010
	lw x104, 1(x96)
	fmul x99, x104, x99
	lw x104, 2(x96)
	fmul x101, x104, x101
	fadd x99, x99, x101
	lw x101, 3(x96)
	fmul x101, x101, x102
	fadd x99, x99, x101
	lw x98, 3(x98)
	fmul x101, x99, x99
	fmul x98, x103, x98
	fsub x98, x101, x98
	bfle x98, zero, trace_diffuse_rays_bfgtelse_b4099
# B4013
	lw x97, 6(x97)
	fsqrt x98, x98
	bne x97, zero, trace_diffuse_rays_beqelse_b4015
# B4014
	fsub x97, x99, x98
	lw x96, 4(x96)
	fmul x96, x97, x96
	sw x96, 0(x27)
	j trace_diffuse_rays_cont_b4016 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4015:
# B4015
	fadd x97, x99, x98
	lw x96, 4(x96)
	fmul x96, x97, x96
	sw x96, 0(x27)
trace_diffuse_rays_cont_b4016:
# B4016
	mv x96, x100
trace_diffuse_rays_cont_b4017:
# B4017
	bne x96, zero, trace_diffuse_rays_beqelse_b4019
	j trace_diffuse_rays_cont_b4099 # adhoc jump(3)
trace_diffuse_rays_beqelse_b4019:
# B4019
	lw x96, 0(x27)
	lw x97, 0(x23)
	bfle x97, x96, trace_diffuse_rays_bfgtelse_b4099
# B4021
	mv x101, x94
	mv x98, x100
	mv x99, x95
trace_diffuse_rays_loop_b4022:
# B4022
	lwr x95, x99, x98
	beq x95, x28, trace_diffuse_rays_bneelse_b4099
# B4024
	lwr x95, x29, x95
	mv x97, x95
	mv x102, x101
	mv x96, zero
	j	trace_diffuse_rays_loop_b4025 # jumping over moved block
trace_diffuse_rays_beqelse_b4096:	#moved
# B4096
	sw x105, 0(x23)
	sw x106, 0(x31)
	sw x107, 1(x31)
	sw x95, 2(x31)
	sw x103, 0(x32)
	sw x104, 0(x33)
trace_diffuse_rays_beqelse_b4025:
trace_diffuse_rays_bfgtelse_b4025:
trace_diffuse_rays_loop_b4025:
# B4025
	lw x95, 0(x102)
	lwr x103, x97, x96
	beq x103, x28, trace_diffuse_rays_bneelse_b4098
# B4027
	lwr x104, x13, x103
	lw x105, 10(x104)
	lw x106, 0(x105)
	lw x107, 1(x105)
	lw x108, 2(x105)
	lw x109, 1(x102)
	lwr x109, x109, x103
	lw x110, 1(x104)
	bne x110, x100, trace_diffuse_rays_beqelse_b4029
# B4028
	lw x105, 0(x102)
	lw x110, 0(x109)
	fsub x110, x110, x106
	lw x111, 1(x109)
	fmul x110, x110, x111
	lw x112, 1(x105)
	fmul x113, x110, x112
	fadd x113, x113, x107
	fabs x113, x113
	lw x114, 4(x104)
	lw x114, 1(x114)
	bfle x114, x113, trace_diffuse_rays_bfgtelse_b4035
# B4031
	lw x113, 2(x105)
	fmul x113, x110, x113
	fadd x113, x113, x108
	fabs x113, x113
	lw x114, 4(x104)
	lw x114, 2(x114)
	bfle x114, x113, trace_diffuse_rays_bfgtelse_b4035
# B4033
	feq x111, x111, zero
	xori x111, x111, 1
	mv x113, x111
# B4034
	bne x113, zero, trace_diffuse_rays_beqelse_b4036
trace_diffuse_rays_bfgtelse_b4035:
# B4035
	lw x110, 2(x109)
	fsub x110, x110, x107
	lw x111, 3(x109)
	fmul x110, x110, x111
	lw x113, 0(x105)
	fmul x114, x110, x113
	fadd x114, x114, x106
	fabs x114, x114
	lw x115, 4(x104)
	lw x115, 0(x115)
	bfle x115, x114, trace_diffuse_rays_bfgtelse_b4042
# B4038
	lw x105, 2(x105)
	fmul x105, x110, x105
	fadd x105, x105, x108
	fabs x105, x105
	lw x114, 4(x104)
	lw x114, 2(x114)
	bfle x114, x105, trace_diffuse_rays_bfgtelse_b4042
# B4040
	feq x105, x111, zero
	xori x105, x105, 1
	mv x111, x105
# B4041
	bne x111, zero, trace_diffuse_rays_beqelse_b4043
trace_diffuse_rays_bfgtelse_b4042:
# B4042
	lw x105, 4(x109)
	fsub x105, x105, x108
	lw x108, 5(x109)
	fmul x105, x105, x108
	fmul x109, x105, x113
	fadd x106, x109, x106
	fabs x106, x106
	lw x109, 4(x104)
	lw x109, 0(x109)
	bfle x109, x106, trace_diffuse_rays_bfgtelse_b4049
# B4045
	fmul x106, x105, x112
	fadd x106, x106, x107
	fabs x106, x106
	lw x104, 4(x104)
	lw x104, 1(x104)
	bfle x104, x106, trace_diffuse_rays_bfgtelse_b4049
# B4047
	feq x104, x108, zero
	xori x104, x104, 1
	mv x106, x104
# B4048
	bne x106, zero, trace_diffuse_rays_beqelse_b4050
trace_diffuse_rays_bfgtelse_b4049:
# B4049
	mv x104, zero
	j trace_diffuse_rays_cont_b4062 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4050:
# B4050
	sw x105, 0(x27)
	mv x104, x14
	j trace_diffuse_rays_cont_b4062 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4043:
# B4043
	sw x110, 0(x27)
	mv x104, x11
	j trace_diffuse_rays_cont_b4062 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4036:
# B4036
	sw x110, 0(x27)
	mv x104, x100
	j trace_diffuse_rays_cont_b4062 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4029:
# B4029
	bne x110, x11, trace_diffuse_rays_beqelse_b4052
# B4051
	lw x104, 0(x109)
	bfle zero, x104, trace_diffuse_rays_bfgtelse_b4053
# B4054
	lw x105, 3(x105)
	fmul x104, x104, x105
	sw x104, 0(x27)
	mv x104, x100
	j trace_diffuse_rays_cont_b4062 # adhoc jump(2)
trace_diffuse_rays_bfgtelse_b4053:
# B4053
	mv x104, zero
	j trace_diffuse_rays_cont_b4062 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4052:
# B4052
	lw x110, 0(x109)
	bfeq x110, zero, trace_diffuse_rays_bfneqelse_b4056
# B4055
	lw x111, 1(x109)
	fmul x106, x111, x106
	lw x111, 2(x109)
	fmul x107, x111, x107
	fadd x106, x106, x107
	lw x107, 3(x109)
	fmul x107, x107, x108
	fadd x106, x106, x107
	lw x105, 3(x105)
	fmul x107, x106, x106
	fmul x105, x110, x105
	fsub x105, x107, x105
	bfle x105, zero, trace_diffuse_rays_bfgtelse_b4057
# B4058
	lw x104, 6(x104)
	fsqrt x105, x105
	bne x104, zero, trace_diffuse_rays_beqelse_b4060
# B4059
	fsub x104, x106, x105
	lw x105, 4(x109)
	fmul x104, x104, x105
	sw x104, 0(x27)
	j trace_diffuse_rays_cont_b4061 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4060:
# B4060
	fadd x104, x106, x105
	lw x105, 4(x109)
	fmul x104, x104, x105
	sw x104, 0(x27)
trace_diffuse_rays_cont_b4061:
# B4061
	mv x104, x100
	j trace_diffuse_rays_cont_b4062 # adhoc jump(2)
trace_diffuse_rays_bfgtelse_b4057:
# B4057
	mv x104, zero
	j trace_diffuse_rays_cont_b4062 # adhoc jump(2)
trace_diffuse_rays_bfneqelse_b4056:
# B4056
	mv x104, zero
trace_diffuse_rays_cont_b4062:
# B4062
	addi x96, x96, 1
	bne x104, zero, trace_diffuse_rays_beqelse_b4064
# B4063
	lwr x95, x13, x103
	lw x95, 6(x95)
	beq x95, zero, trace_diffuse_rays_bneelse_b4098
	j	trace_diffuse_rays_beqelse_b4025 # moved need extra jump for 4025 at B4063
trace_diffuse_rays_bneelse_b4098:
# B4098
	addi x98, x98, 1
	j trace_diffuse_rays_loop_b4022 # loopback to while entry from B4098
trace_diffuse_rays_beqelse_b4064:
# B4064
	lw x105, 0(x27)
	bfle x105, zero, trace_diffuse_rays_bfgtelse_b4025
# B4068
	lw x106, 0(x23)
	bfle x106, x105, trace_diffuse_rays_bfgtelse_b4025
# B4070
	fadd x105, x105, x30
	lw x106, 0(x95)
	fmul x106, x106, x105
	lw x107, 0(x10)
	fadd x106, x106, x107
	lw x107, 1(x95)
	fmul x107, x107, x105
	lw x108, 1(x10)
	fadd x107, x107, x108
	lw x95, 2(x95)
	fmul x95, x95, x105
	lw x108, 2(x10)
	fadd x95, x95, x108
	mv x109, x97
	mv x110, x106
	mv x111, x107
	mv x112, x95
	mv x108, zero
	j	trace_diffuse_rays_loop_b4071 # jumping over moved block
trace_diffuse_rays_bneelse_b4092:	#moved
# B4092
	addi x108, x108, 1
trace_diffuse_rays_loop_b4071:
# B4071
	lwr x113, x109, x108
	bne x113, x28, trace_diffuse_rays_beqelse_b4073
# B4072
	mv x114, x100
# B4094
	bne x114, zero, trace_diffuse_rays_beqelse_b4096
	j	trace_diffuse_rays_bfgtelse_b4025 # moved need extra jump for 4025 at B4094
trace_diffuse_rays_beqelse_b4073:
# B4073
	lwr x113, x13, x113
	lw x114, 5(x113)
	lw x114, 0(x114)
	fsub x114, x110, x114
	lw x115, 5(x113)
	lw x115, 1(x115)
	fsub x115, x111, x115
	lw x116, 5(x113)
	lw x116, 2(x116)
	fsub x116, x112, x116
	lw x117, 1(x113)
	bne x117, x100, trace_diffuse_rays_beqelse_b4075
# B4074
	fabs x114, x114
	lw x117, 4(x113)
	lw x117, 0(x117)
	bfle x117, x114, trace_diffuse_rays_bfgtelse_b4081
# B4077
	fabs x114, x115
	lw x115, 4(x113)
	lw x115, 1(x115)
	bfle x115, x114, trace_diffuse_rays_bfgtelse_b4081
# B4079
	fabs x114, x116
	lw x115, 4(x113)
	lw x115, 2(x115)
	fle x114, x115, x114
	xori x114, x114, 1
	mv x115, x114
# B4080
	bne x115, zero, trace_diffuse_rays_beqelse_b4082
trace_diffuse_rays_bfgtelse_b4081:
# B4081
	lw x113, 6(x113)
	xori x113, x113, 1
	j trace_diffuse_rays_cont_b4091 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4082:
# B4082
	lw x113, 6(x113)
	j trace_diffuse_rays_cont_b4091 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4075:
# B4075
	bne x117, x11, trace_diffuse_rays_beqelse_b4084
# B4083
	lw x117, 4(x113)
	lw x118, 0(x117)
	fmul x114, x118, x114
	lw x118, 1(x117)
	fmul x115, x118, x115
	fadd x114, x114, x115
	lw x115, 2(x117)
	fmul x115, x115, x116
	fadd x114, x114, x115
	lw x113, 6(x113)
	fle x114, zero, x114
	xori x114, x114, 1
	xor x113, x113, x114
	xori x113, x113, 1
	j trace_diffuse_rays_cont_b4091 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4084:
# B4084
	fmul x117, x114, x114
	lw x118, 4(x113)
	lw x118, 0(x118)
	fmul x117, x117, x118
	fmul x118, x115, x115
	lw x119, 4(x113)
	lw x119, 1(x119)
	fmul x118, x118, x119
	fadd x117, x117, x118
	fmul x118, x116, x116
	lw x119, 4(x113)
	lw x119, 2(x119)
	fmul x118, x118, x119
	fadd x117, x117, x118
	lw x118, 3(x113)
	bne x118, zero, trace_diffuse_rays_beqelse_b4086
# B4085
	mv x114, x117
	j trace_diffuse_rays_cont_b4087 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4086:
# B4086
	fmul x118, x115, x116
	lw x119, 9(x113)
	lw x119, 0(x119)
	fmul x118, x118, x119
	fadd x117, x117, x118
	fmul x116, x116, x114
	lw x118, 9(x113)
	lw x118, 1(x118)
	fmul x116, x116, x118
	fadd x116, x117, x116
	fmul x114, x114, x115
	lw x115, 9(x113)
	lw x115, 2(x115)
	fmul x114, x114, x115
	fadd x114, x116, x114
trace_diffuse_rays_cont_b4087:
# B4087
	lw x115, 1(x113)
	bne x115, x14, trace_diffuse_rays_beqelse_b4090
# B4088
	fsub x114, x114, x15
trace_diffuse_rays_beqelse_b4090:
# B4090
	lw x113, 6(x113)
	fle x114, zero, x114
	xori x114, x114, 1
	xor x113, x113, x114
	xori x113, x113, 1
trace_diffuse_rays_cont_b4091:
# B4091
	beq x113, zero, trace_diffuse_rays_bneelse_b4092
	j	trace_diffuse_rays_bfgtelse_b4025 # moved need extra jump for 4025 at B4091
trace_diffuse_rays_bfgtelse_b4099:
trace_diffuse_rays_bfneqelse_b4099:
trace_diffuse_rays_bneelse_b4099:
trace_diffuse_rays_cont_b4099:
# B4099
	addi x25, x25, 1
	j trace_diffuse_rays_loop_b3901 # loopback to while entry from B4099
trace_diffuse_rays_bneelse_b4100:
# B4100
	lw x23, 0(x23)
	bfle x23, x35, trace_diffuse_rays_bfgtelse_b4440
# B4102
	fle x23, x36, x23
	xori x23, x23, 1
	mv x25, x23
# B4103
	bne x25, zero, trace_diffuse_rays_beqelse_b4105
	j trace_diffuse_rays_cont_b4440 # adhoc jump(3)
trace_diffuse_rays_beqelse_b4105:
# B4105
	lw x23, 0(x32)
	lwr x23, x13, x23
	lw x22, 0(x22)
	lw x25, 1(x23)
	bne x25, x100, trace_diffuse_rays_beqelse_b4107
# B4106
	lw x25, 0(x33)
	sw zero, 0(x37)
	sw zero, 1(x37)
	sw zero, 2(x37)
	addi x25, x25, -1
	lwr x22, x22, x25
	bfeq x22, zero, trace_diffuse_rays_bfneqelse_b4109
# B4108
	bfle x22, zero, trace_diffuse_rays_bfgtelse_b4110
# B4111
	mv x32, x15
	j trace_diffuse_rays_cont_b4112 # adhoc jump(2)
trace_diffuse_rays_bfgtelse_b4110:
# B4110
	mv x32, x39
	j trace_diffuse_rays_cont_b4112 # adhoc jump(2)
trace_diffuse_rays_bfneqelse_b4109:
# B4109
	mv x32, zero
trace_diffuse_rays_cont_b4112:
# B4112
	fsub x22, zero, x32
	add x4, x37, x25
	sw x22, 0(x4)
	j trace_diffuse_rays_cont_b4123 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4107:
# B4107
	bne x25, x11, trace_diffuse_rays_beqelse_b4114
# B4113
	lw x22, 4(x23)
	lw x22, 0(x22)
	fsub x22, zero, x22
	sw x22, 0(x37)
	lw x22, 4(x23)
	lw x22, 1(x22)
	fsub x22, zero, x22
	sw x22, 1(x37)
	lw x22, 4(x23)
	lw x22, 2(x22)
	fsub x22, zero, x22
	sw x22, 2(x37)
	j trace_diffuse_rays_cont_b4123 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4114:
# B4114
	lw x22, 0(x31)
	lw x25, 5(x23)
	lw x25, 0(x25)
	fsub x22, x22, x25
	lw x25, 1(x31)
	lw x32, 5(x23)
	lw x32, 1(x32)
	fsub x25, x25, x32
	lw x32, 2(x31)
	lw x33, 5(x23)
	lw x33, 2(x33)
	fsub x32, x32, x33
	lw x33, 4(x23)
	lw x33, 0(x33)
	fmul x33, x22, x33
	lw x36, 4(x23)
	lw x36, 1(x36)
	fmul x36, x25, x36
	lw x93, 4(x23)
	lw x93, 2(x93)
	fmul x93, x32, x93
	lw x94, 3(x23)
	bne x94, zero, trace_diffuse_rays_beqelse_b4116
# B4115
	sw x33, 0(x37)
	sw x36, 1(x37)
	sw x93, 2(x37)
	j trace_diffuse_rays_cont_b4117 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4116:
# B4116
	lw x94, 9(x23)
	lw x94, 2(x94)
	fmul x94, x25, x94
	lw x95, 9(x23)
	lw x95, 1(x95)
	fmul x95, x32, x95
	fadd x94, x94, x95
	fmul x94, x94, x38
	fadd x33, x33, x94
	sw x33, 0(x37)
	lw x33, 9(x23)
	lw x33, 2(x33)
	fmul x33, x22, x33
	lw x94, 9(x23)
	lw x94, 0(x94)
	fmul x32, x32, x94
	fadd x32, x33, x32
	fmul x32, x32, x38
	fadd x32, x36, x32
	sw x32, 1(x37)
	lw x32, 9(x23)
	lw x32, 1(x32)
	fmul x22, x22, x32
	lw x32, 9(x23)
	lw x32, 0(x32)
	fmul x25, x25, x32
	fadd x22, x22, x25
	fmul x22, x22, x38
	fadd x22, x93, x22
	sw x22, 2(x37)
trace_diffuse_rays_cont_b4117:
# B4117
	lw x22, 6(x23)
	lw x25, 0(x37)
	fmul x32, x25, x25
	lw x33, 1(x37)
	fmul x36, x33, x33
	fadd x32, x32, x36
	lw x36, 2(x37)
	fmul x93, x36, x36
	fadd x32, x32, x93
	fsqrt x32, x32
	bfeq x32, zero, trace_diffuse_rays_bfneqelse_b4119
# B4118
	bne x22, zero, trace_diffuse_rays_beqelse_b4121
# B4120
	fdiv x22, x15, x32
	j trace_diffuse_rays_cont_b4122 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4121:
# B4121
	fdiv x22, x39, x32
	j trace_diffuse_rays_cont_b4122 # adhoc jump(2)
trace_diffuse_rays_bfneqelse_b4119:
# B4119
	mv x22, x15
trace_diffuse_rays_cont_b4122:
# B4122
	fmul x25, x25, x22
	sw x25, 0(x37)
	fmul x25, x33, x22
	sw x25, 1(x37)
	fmul x22, x36, x22
	sw x22, 2(x37)
trace_diffuse_rays_cont_b4123:
# B4123
	lw x22, 0(x23)
	lw x25, 8(x23)
	lw x25, 0(x25)
	sw x25, 0(x40)
	lw x25, 8(x23)
	lw x25, 1(x25)
	sw x25, 1(x40)
	lw x25, 8(x23)
	lw x25, 2(x25)
	sw x25, 2(x40)
	bne x22, x100, trace_diffuse_rays_beqelse_b4125
# B4124
	lw x22, 0(x31)
	lw x25, 5(x23)
	lw x25, 0(x25)
	fsub x22, x22, x25
	fmul x25, x22, x5
	floor x25, x25
	fmul x25, x25, x6
	fsub x22, x22, x25
	fle x22, x65, x22
	xori x22, x22, 1
	lw x25, 2(x31)
	lw x32, 5(x23)
	lw x32, 2(x32)
	fsub x25, x25, x32
	fmul x32, x25, x5
	floor x32, x32
	fmul x32, x32, x6
	fsub x25, x25, x32
	fle x25, x65, x25
	xori x25, x25, 1
	bne x22, zero, trace_diffuse_rays_beqelse_b4127
# B4126
	bne x25, zero, trace_diffuse_rays_beqelse_b4129
# B4128
	mv x32, x77
	j trace_diffuse_rays_cont_b4132 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4129:
# B4129
	mv x32, zero
	j trace_diffuse_rays_cont_b4132 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4127:
# B4127
	bne x25, zero, trace_diffuse_rays_beqelse_b4131
# B4130
	mv x32, zero
	j trace_diffuse_rays_cont_b4132 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4131:
# B4131
	mv x32, x77
trace_diffuse_rays_cont_b4132:
# B4132
	sw x32, 1(x40)
	j trace_diffuse_rays_cont_b4208 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4125:
# B4125
	bne x22, x11, trace_diffuse_rays_beqelse_b4134
# B4133
	lw x22, 1(x31)
	fmul x22, x22, x66
	fle x25, x22, zero
	xori x25, x25, 1
	fabs x22, x22
	mv x33, x67
	mv x32, x22
trace_diffuse_rays_loop_b4135:
# B4135
	bfle x32, x33, trace_diffuse_rays_bfgtelse_b4138
# B4136
	fmul x33, x33, x68
	j trace_diffuse_rays_loop_b4135 # loopback to while entry from B4136
trace_diffuse_rays_bfgtelse_b4138:
# B4138
	mv x34, x22
	mv x36, x33
	j	trace_diffuse_rays_loop_b4139 # jumping over moved block
trace_diffuse_rays_bfgtelse_b4143:	#moved
# B4143
	mv x36, x22
trace_diffuse_rays_loop_b4139:
# B4139
	bfle x67, x34, trace_diffuse_rays_bfgtelse_b4141
# B4144
	fle x22, x69, x34
	bne x22, zero, trace_diffuse_rays_beqelse_b4146
# B4145
	mv x32, x34
	j trace_diffuse_rays_cont_b4147 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4146:
# B4146
	fsub x32, x34, x69
trace_diffuse_rays_cont_b4147:
# B4147
	xor x22, x22, x25
	bfle x7, x32, trace_diffuse_rays_bfgtelse_b4149
# B4148
	mv x25, x32
	j trace_diffuse_rays_cont_b4150 # adhoc jump(2)
trace_diffuse_rays_bfgtelse_b4149:
# B4149
	fsub x25, x69, x32
trace_diffuse_rays_cont_b4150:
# B4150
	bfle x70, x25, trace_diffuse_rays_bfgtelse_b4152
# B4151
	fmul x32, x25, x25
	fmul x33, x32, x73
	fadd x33, x72, x33
	fmul x33, x32, x33
	fadd x33, x71, x33
	fmul x32, x32, x33
	fadd x32, x15, x32
	fmul x25, x25, x32
	j trace_diffuse_rays_cont_b4153 # adhoc jump(2)
trace_diffuse_rays_bfgtelse_b4152:
# B4152
	fsub x25, x7, x25
	fmul x25, x25, x25
	fmul x32, x25, x76
	fadd x32, x75, x32
	fmul x32, x25, x32
	fadd x32, x74, x32
	fmul x25, x25, x32
	fadd x25, x15, x25
trace_diffuse_rays_cont_b4153:
# B4153
	fle x32, x25, zero
	beq x22, x32, trace_diffuse_rays_bneelse_b4155
# B4154
	mv x22, x25
	j trace_diffuse_rays_cont_b4156 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4155:
# B4155
	fsub x22, zero, x25
trace_diffuse_rays_cont_b4156:
# B4156
	fmul x22, x22, x22
	fmul x25, x77, x22
	sw x25, 0(x40)
	fsub x22, x15, x22
	fmul x22, x77, x22
	sw x22, 1(x40)
	j trace_diffuse_rays_cont_b4208 # adhoc jump(2)
trace_diffuse_rays_bfgtelse_b4141:
# B4141
	fdiv x22, x36, x68
	bfle x34, x36, trace_diffuse_rays_bfgtelse_b4143
# B4142
	fsub x34, x34, x36
	mv x36, x22
	j trace_diffuse_rays_loop_b4139 # loopback to while entry from B4142
trace_diffuse_rays_beqelse_b4134:
# B4134
	bne x22, x14, trace_diffuse_rays_beqelse_b4158
# B4157
	lw x22, 0(x31)
	lw x25, 5(x23)
	lw x25, 0(x25)
	fsub x22, x22, x25
	lw x25, 2(x31)
	lw x32, 5(x23)
	lw x32, 2(x32)
	fsub x25, x25, x32
	fmul x22, x22, x22
	fmul x25, x25, x25
	fadd x22, x22, x25
	fsqrt x22, x22
	fdiv x22, x22, x65
	floor x25, x22
	fsub x22, x22, x25
	fmul x22, x22, x78
	fabs x22, x22
	mv x25, x22
	mv x32, x67
trace_diffuse_rays_loop_b4159:
# B4159
	bfle x25, x32, trace_diffuse_rays_bfgtelse_b4162
# B4160
	fmul x32, x32, x68
	j trace_diffuse_rays_loop_b4159 # loopback to while entry from B4160
trace_diffuse_rays_bfgtelse_b4162:
# B4162
	mv x34, x32
	mv x33, x22
	j	trace_diffuse_rays_loop_b4163 # jumping over moved block
trace_diffuse_rays_bfgtelse_b4167:	#moved
# B4167
	mv x34, x22
trace_diffuse_rays_loop_b4163:
# B4163
	bfle x67, x33, trace_diffuse_rays_bfgtelse_b4165
# B4168
	fle x22, x69, x33
	bne x22, zero, trace_diffuse_rays_beqelse_b4170
# B4169
	mv x25, x33
	j trace_diffuse_rays_cont_b4171 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4170:
# B4170
	fsub x25, x33, x69
trace_diffuse_rays_cont_b4171:
# B4171
	xori x22, x22, 1
	fle x32, x7, x25
	bne x32, zero, trace_diffuse_rays_beqelse_b4173
	j trace_diffuse_rays_cont_b4174 # adhoc jump(3)
trace_diffuse_rays_beqelse_b4173:
# B4173
	fsub x25, x69, x25
trace_diffuse_rays_cont_b4174:
# B4174
	xor x22, x32, x22
	bfle x70, x25, trace_diffuse_rays_bfgtelse_b4176
trace_diffuse_rays_cont_b4175:
# B4175
	fmul x25, x25, x25
	fmul x32, x25, x76
	fadd x32, x75, x32
	fmul x32, x25, x32
	fadd x32, x74, x32
	fmul x25, x25, x32
	fadd x25, x15, x25
	j trace_diffuse_rays_cont_b4177 # adhoc jump(2)
trace_diffuse_rays_bfgtelse_b4176:
# B4176
	fsub x25, x7, x25
	fmul x32, x25, x25
	fmul x33, x32, x73
	fadd x33, x72, x33
	fmul x33, x32, x33
	fadd x33, x71, x33
	fmul x32, x32, x33
	fadd x32, x15, x32
	fmul x25, x25, x32
trace_diffuse_rays_cont_b4177:
# B4177
	fle x32, x25, zero
	beq x22, x32, trace_diffuse_rays_bneelse_b4179
# B4178
	mv x22, x25
	j trace_diffuse_rays_cont_b4180 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4179:
# B4179
	fsub x22, zero, x25
trace_diffuse_rays_cont_b4180:
# B4180
	fmul x22, x22, x22
	fmul x25, x22, x77
	sw x25, 1(x40)
	fsub x22, x15, x22
	fmul x22, x22, x77
	sw x22, 2(x40)
	j trace_diffuse_rays_cont_b4208 # adhoc jump(2)
trace_diffuse_rays_bfgtelse_b4165:
# B4165
	fdiv x22, x34, x68
	bfle x33, x34, trace_diffuse_rays_bfgtelse_b4167
# B4166
	fsub x33, x33, x34
	mv x34, x22
	j trace_diffuse_rays_loop_b4163 # loopback to while entry from B4166
trace_diffuse_rays_beqelse_b4158:
# B4158
	bne x22, x34, trace_diffuse_rays_beqelse_b4208
# B4181
	lw x22, 0(x31)
	lw x25, 5(x23)
	lw x25, 0(x25)
	fsub x22, x22, x25
	lw x25, 4(x23)
	lw x25, 0(x25)
	fsqrt x25, x25
	fmul x22, x22, x25
	lw x25, 2(x31)
	lw x32, 5(x23)
	lw x32, 2(x32)
	fsub x25, x25, x32
	lw x32, 4(x23)
	lw x32, 2(x32)
	fsqrt x32, x32
	fmul x25, x25, x32
	fmul x32, x22, x22
	fmul x33, x25, x25
	fadd x32, x32, x33
	fabs x33, x22
	bfle x79, x33, trace_diffuse_rays_bfgtelse_b4183
# B4184
	lui x22, 268032
	j trace_diffuse_rays_cont_b4193 # adhoc jump(2)
trace_diffuse_rays_bfgtelse_b4183:
# B4183
	fdiv x22, x25, x22
	fabs x22, x22
	fle x25, x22, zero
	xori x25, x25, 1
	fabs x33, x22
	bfle x8, x33, trace_diffuse_rays_bfgtelse_b4186
# B4185
	fmul x25, x22, x22
	fmul x33, x25, x85
	fadd x33, x84, x33
	fmul x33, x25, x33
	fadd x33, x83, x33
	fmul x33, x25, x33
	fadd x33, x82, x33
	fmul x33, x25, x33
	fadd x33, x81, x33
	fmul x33, x25, x33
	fadd x33, x80, x33
	fmul x25, x25, x33
	fadd x25, x15, x25
	fmul x22, x22, x25
	j trace_diffuse_rays_cont_b4192 # adhoc jump(2)
trace_diffuse_rays_bfgtelse_b4186:
# B4186
	bfle x86, x33, trace_diffuse_rays_bfgtelse_b4188
# B4187
	fsub x22, x33, x15
	fadd x33, x33, x15
	fdiv x22, x22, x33
	fmul x33, x22, x22
	fmul x34, x33, x85
	fadd x34, x84, x34
	fmul x34, x33, x34
	fadd x34, x83, x34
	fmul x34, x33, x34
	fadd x34, x82, x34
	fmul x34, x33, x34
	fadd x34, x81, x34
	fmul x34, x33, x34
	fadd x34, x80, x34
	fmul x33, x33, x34
	fadd x33, x15, x33
	fmul x22, x22, x33
	fadd x22, x70, x22
	j trace_diffuse_rays_cont_b4189 # adhoc jump(2)
trace_diffuse_rays_bfgtelse_b4188:
# B4188
	fdiv x22, x15, x33
	fmul x33, x22, x22
	fmul x34, x33, x85
	fadd x34, x84, x34
	fmul x34, x33, x34
	fadd x34, x83, x34
	fmul x34, x33, x34
	fadd x34, x82, x34
	fmul x34, x33, x34
	fadd x34, x81, x34
	fmul x34, x33, x34
	fadd x34, x80, x34
	fmul x33, x33, x34
	fadd x33, x15, x33
	fmul x22, x22, x33
	fsub x22, x7, x22
trace_diffuse_rays_cont_b4189:
# B4189
	bne x25, zero, trace_diffuse_rays_beqelse_b4192
# B4190
	fsub x22, zero, x22
trace_diffuse_rays_beqelse_b4192:
trace_diffuse_rays_cont_b4192:
# B4192
	fmul x22, x22, x87
	fdiv x22, x22, x78
trace_diffuse_rays_cont_b4193:
# B4193
	floor x25, x22
	fsub x22, x22, x25
	lw x25, 1(x31)
	lw x33, 5(x23)
	lw x33, 1(x33)
	fsub x25, x25, x33
	lw x33, 4(x23)
	lw x33, 1(x33)
	fsqrt x33, x33
	fmul x25, x25, x33
	fabs x33, x32
	bfle x79, x33, trace_diffuse_rays_bfgtelse_b4194
# B4195
	lui x25, 268032
	j trace_diffuse_rays_cont_b4204 # adhoc jump(2)
trace_diffuse_rays_bfgtelse_b4194:
# B4194
	fdiv x25, x25, x32
	fabs x25, x25
	fle x32, x25, zero
	xori x32, x32, 1
	fabs x33, x25
	bfle x8, x33, trace_diffuse_rays_bfgtelse_b4197
# B4196
	fmul x32, x25, x25
	fmul x33, x32, x85
	fadd x33, x84, x33
	fmul x33, x32, x33
	fadd x33, x83, x33
	fmul x33, x32, x33
	fadd x33, x82, x33
	fmul x33, x32, x33
	fadd x33, x81, x33
	fmul x33, x32, x33
	fadd x33, x80, x33
	fmul x32, x32, x33
	fadd x32, x15, x32
	fmul x25, x25, x32
	j trace_diffuse_rays_cont_b4203 # adhoc jump(2)
trace_diffuse_rays_bfgtelse_b4197:
# B4197
	bfle x86, x33, trace_diffuse_rays_bfgtelse_b4199
# B4198
	fsub x25, x33, x15
	fadd x33, x33, x15
	fdiv x25, x25, x33
	fmul x33, x25, x25
	fmul x34, x33, x85
	fadd x34, x84, x34
	fmul x34, x33, x34
	fadd x34, x83, x34
	fmul x34, x33, x34
	fadd x34, x82, x34
	fmul x34, x33, x34
	fadd x34, x81, x34
	fmul x34, x33, x34
	fadd x34, x80, x34
	fmul x33, x33, x34
	fadd x33, x15, x33
	fmul x25, x25, x33
	fadd x25, x70, x25
	j trace_diffuse_rays_cont_b4200 # adhoc jump(2)
trace_diffuse_rays_bfgtelse_b4199:
# B4199
	fdiv x25, x15, x33
	fmul x33, x25, x25
	fmul x34, x33, x85
	fadd x34, x84, x34
	fmul x34, x33, x34
	fadd x34, x83, x34
	fmul x34, x33, x34
	fadd x34, x82, x34
	fmul x34, x33, x34
	fadd x34, x81, x34
	fmul x34, x33, x34
	fadd x34, x80, x34
	fmul x33, x33, x34
	fadd x33, x15, x33
	fmul x25, x25, x33
	fsub x25, x7, x25
trace_diffuse_rays_cont_b4200:
# B4200
	bne x32, zero, trace_diffuse_rays_beqelse_b4203
# B4201
	fsub x25, zero, x25
trace_diffuse_rays_beqelse_b4203:
trace_diffuse_rays_cont_b4203:
# B4203
	fmul x25, x25, x87
	fdiv x25, x25, x78
trace_diffuse_rays_cont_b4204:
# B4204
	floor x32, x25
	fsub x25, x25, x32
	fsub x22, x38, x22
	fmul x22, x22, x22
	fsub x22, x88, x22
	fsub x25, x38, x25
	fmul x25, x25, x25
	fsub x22, x22, x25
	bfle zero, x22, trace_diffuse_rays_bfgtelse_b4205
# B4206
	mv x25, zero
	j trace_diffuse_rays_cont_b4207 # adhoc jump(2)
trace_diffuse_rays_bfgtelse_b4205:
# B4205
	mv x25, x22
trace_diffuse_rays_cont_b4207:
# B4207
	fmul x22, x77, x25
	fdiv x22, x22, x89
	sw x22, 2(x40)
trace_diffuse_rays_beqelse_b4208:
trace_diffuse_rays_cont_b4208:
# B4208
	mv x25, x24
	mv x22, zero
trace_diffuse_rays_bneelse_b4209:
trace_diffuse_rays_loop_b4209:
# B4209
	lwr x24, x25, x22
	lw x32, 0(x24)
	beq x32, x28, trace_diffuse_rays_bneelse_b4435
# B4211
	bne x32, x26, trace_diffuse_rays_beqelse_b4213
# B4212
	mv x32, x100
	j trace_diffuse_rays_cont_b4345 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4213:
# B4213
	lwr x33, x13, x32
	lw x34, 0(x31)
	lw x36, 5(x33)
	lw x36, 0(x36)
	fsub x34, x34, x36
	lw x36, 1(x31)
	lw x38, 5(x33)
	lw x38, 1(x38)
	fsub x36, x36, x38
	lw x38, 2(x31)
	lw x39, 5(x33)
	lw x39, 2(x39)
	fsub x38, x38, x39
	lw x39, 1(x9)
	lwr x32, x39, x32
	lw x39, 1(x33)
	bne x39, x100, trace_diffuse_rays_beqelse_b4215
# B4214
	lw x39, 0(x9)
	lw x5, 0(x32)
	fsub x5, x5, x34
	lw x6, 1(x32)
	fmul x5, x5, x6
	lw x65, 1(x39)
	fmul x66, x5, x65
	fadd x66, x66, x36
	fabs x66, x66
	lw x67, 4(x33)
	lw x67, 1(x67)
	bfle x67, x66, trace_diffuse_rays_bfgtelse_b4221
# B4217
	lw x66, 2(x39)
	fmul x66, x5, x66
	fadd x66, x66, x38
	fabs x66, x66
	lw x68, 4(x33)
	lw x68, 2(x68)
	bfle x68, x66, trace_diffuse_rays_bfgtelse_b4221
# B4219
	feq x6, x6, zero
	xori x6, x6, 1
	mv x66, x6
# B4220
	bne x66, zero, trace_diffuse_rays_beqelse_b4222
trace_diffuse_rays_bfgtelse_b4221:
# B4221
	lw x5, 2(x32)
	fsub x5, x5, x36
	lw x6, 3(x32)
	fmul x5, x5, x6
	lw x66, 0(x39)
	fmul x68, x5, x66
	fadd x68, x68, x34
	fabs x68, x68
	lw x69, 4(x33)
	lw x69, 0(x69)
	bfle x69, x68, trace_diffuse_rays_bfgtelse_b4228
# B4224
	lw x39, 2(x39)
	fmul x39, x5, x39
	fadd x39, x39, x38
	fabs x39, x39
	lw x33, 4(x33)
	lw x33, 2(x33)
	bfle x33, x39, trace_diffuse_rays_bfgtelse_b4228
# B4226
	feq x33, x6, zero
	xori x33, x33, 1
	mv x39, x33
# B4227
	bne x39, zero, trace_diffuse_rays_beqelse_b4229
trace_diffuse_rays_bfgtelse_b4228:
# B4228
	lw x33, 4(x32)
	fsub x33, x33, x38
	lw x32, 5(x32)
	fmul x33, x33, x32
	fmul x38, x33, x66
	fadd x34, x38, x34
	fabs x34, x34
	bfle x69, x34, trace_diffuse_rays_bfgtelse_b4255
# B4231
	fmul x34, x33, x65
	fadd x34, x34, x36
	fabs x34, x34
	bfle x67, x34, trace_diffuse_rays_bfgtelse_b4255
# B4233
	feq x32, x32, zero
	xori x32, x32, 1
	mv x34, x32
# B4234
	bne x34, zero, trace_diffuse_rays_beqelse_b4236
	j trace_diffuse_rays_cont_b4255 # adhoc jump(3)
trace_diffuse_rays_beqelse_b4236:
# B4236
	sw x33, 0(x27)
	mv x32, x14
	j trace_diffuse_rays_cont_b4254 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4229:
# B4229
	sw x5, 0(x27)
	mv x32, x11
	j trace_diffuse_rays_cont_b4254 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4222:
# B4222
	sw x5, 0(x27)
	mv x32, x100
	j trace_diffuse_rays_cont_b4254 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4215:
# B4215
	bne x39, x11, trace_diffuse_rays_beqelse_b4238
# B4237
	lw x33, 0(x32)
	bfle zero, x33, trace_diffuse_rays_bfgtelse_b4255
# B4240
	lw x33, 1(x32)
	fmul x33, x33, x34
	lw x34, 2(x32)
	fmul x34, x34, x36
	fadd x33, x33, x34
	lw x32, 3(x32)
	fmul x32, x32, x38
	fadd x32, x33, x32
	sw x32, 0(x27)
	mv x32, x100
	j trace_diffuse_rays_cont_b4254 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4238:
# B4238
	lw x39, 0(x32)
	bfeq x39, zero, trace_diffuse_rays_bfneqelse_b4255
# B4241
	lw x5, 1(x32)
	fmul x5, x5, x34
	lw x6, 2(x32)
	fmul x6, x6, x36
	fadd x5, x5, x6
	lw x6, 3(x32)
	fmul x6, x6, x38
	fadd x5, x5, x6
	fmul x6, x34, x34
	lw x65, 4(x33)
	lw x65, 0(x65)
	fmul x6, x6, x65
	fmul x65, x36, x36
	lw x66, 4(x33)
	lw x66, 1(x66)
	fmul x65, x65, x66
	fadd x6, x6, x65
	fmul x65, x38, x38
	lw x66, 4(x33)
	lw x66, 2(x66)
	fmul x65, x65, x66
	fadd x6, x6, x65
	lw x65, 3(x33)
	bne x65, zero, trace_diffuse_rays_beqelse_b4244
# B4243
	mv x34, x6
	j trace_diffuse_rays_cont_b4245 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4244:
# B4244
	fmul x65, x36, x38
	lw x66, 9(x33)
	lw x66, 0(x66)
	fmul x65, x65, x66
	fadd x6, x6, x65
	fmul x38, x38, x34
	lw x65, 9(x33)
	lw x65, 1(x65)
	fmul x38, x38, x65
	fadd x38, x6, x38
	fmul x34, x34, x36
	lw x36, 9(x33)
	lw x36, 2(x36)
	fmul x34, x34, x36
	fadd x34, x38, x34
trace_diffuse_rays_cont_b4245:
# B4245
	lw x36, 1(x33)
	bne x36, x14, trace_diffuse_rays_beqelse_b4248
# B4246
	fsub x34, x34, x15
trace_diffuse_rays_beqelse_b4248:
# B4248
	fmul x36, x5, x5
	fmul x34, x39, x34
	fsub x34, x36, x34
	bfle x34, zero, trace_diffuse_rays_bfgtelse_b4255
# B4250
	lw x33, 6(x33)
	fsqrt x34, x34
	bne x33, zero, trace_diffuse_rays_beqelse_b4252
# B4251
	fsub x33, x5, x34
	lw x32, 4(x32)
	fmul x32, x33, x32
	sw x32, 0(x27)
	j trace_diffuse_rays_cont_b4253 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4252:
# B4252
	fadd x33, x5, x34
	lw x32, 4(x32)
	fmul x32, x33, x32
	sw x32, 0(x27)
trace_diffuse_rays_cont_b4253:
# B4253
	mv x32, x100
trace_diffuse_rays_cont_b4254:
# B4254
	bne x32, zero, trace_diffuse_rays_beqelse_b4256
trace_diffuse_rays_bfgtelse_b4255:
trace_diffuse_rays_bfneqelse_b4255:
trace_diffuse_rays_cont_b4255:
# B4255
	mv x32, zero
	j trace_diffuse_rays_cont_b4345 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4256:
# B4256
	lw x32, 0(x27)
	bfle x35, x32, trace_diffuse_rays_bfgtelse_b4257
# B4258
	mv x34, x24
	mv x33, x100
trace_diffuse_rays_loop_b4259:
# B4259
	lwr x32, x34, x33
	beq x32, x28, trace_diffuse_rays_bneelse_b4343
# B4261
	lwr x32, x29, x32
	mv x38, x32
	mv x36, zero
trace_diffuse_rays_beqelse_b4262:
trace_diffuse_rays_loop_b4262:
# B4262
	lwr x32, x38, x36
	beq x32, x28, trace_diffuse_rays_bneelse_b4340
# B4264
	lwr x32, x38, x36
	lwr x39, x13, x32
	lw x5, 0(x31)
	lw x6, 5(x39)
	lw x6, 0(x6)
	fsub x6, x5, x6
	lw x65, 1(x31)
	lw x66, 5(x39)
	lw x66, 1(x66)
	fsub x66, x65, x66
	lw x67, 2(x31)
	lw x68, 5(x39)
	lw x68, 2(x68)
	fsub x68, x67, x68
	lw x69, 1(x9)
	lwr x69, x69, x32
	lw x7, 1(x39)
	bne x7, x100, trace_diffuse_rays_beqelse_b4266
# B4265
	lw x7, 0(x9)
	lw x70, 0(x69)
	fsub x70, x70, x6
	lw x71, 1(x69)
	fmul x70, x70, x71
	lw x72, 1(x7)
	fmul x73, x70, x72
	fadd x73, x73, x66
	fabs x73, x73
	lw x74, 4(x39)
	lw x74, 1(x74)
	bfle x74, x73, trace_diffuse_rays_bfgtelse_b4272
# B4268
	lw x73, 2(x7)
	fmul x73, x70, x73
	fadd x73, x73, x68
	fabs x73, x73
	lw x75, 4(x39)
	lw x75, 2(x75)
	bfle x75, x73, trace_diffuse_rays_bfgtelse_b4272
# B4270
	feq x71, x71, zero
	xori x71, x71, 1
	mv x73, x71
# B4271
	bne x73, zero, trace_diffuse_rays_beqelse_b4273
trace_diffuse_rays_bfgtelse_b4272:
# B4272
	lw x70, 2(x69)
	fsub x70, x70, x66
	lw x71, 3(x69)
	fmul x70, x70, x71
	lw x73, 0(x7)
	fmul x75, x70, x73
	fadd x75, x75, x6
	fabs x75, x75
	lw x76, 4(x39)
	lw x76, 0(x76)
	bfle x76, x75, trace_diffuse_rays_bfgtelse_b4279
# B4275
	lw x7, 2(x7)
	fmul x7, x70, x7
	fadd x7, x7, x68
	fabs x7, x7
	lw x39, 4(x39)
	lw x39, 2(x39)
	bfle x39, x7, trace_diffuse_rays_bfgtelse_b4279
# B4277
	feq x39, x71, zero
	xori x39, x39, 1
	mv x7, x39
# B4278
	bne x7, zero, trace_diffuse_rays_beqelse_b4280
trace_diffuse_rays_bfgtelse_b4279:
# B4279
	lw x39, 4(x69)
	fsub x39, x39, x68
	lw x68, 5(x69)
	fmul x39, x39, x68
	fmul x69, x39, x73
	fadd x6, x69, x6
	fabs x6, x6
	bfle x76, x6, trace_diffuse_rays_bfgtelse_b4286
# B4282
	fmul x6, x39, x72
	fadd x6, x6, x66
	fabs x6, x6
	bfle x74, x6, trace_diffuse_rays_bfgtelse_b4286
# B4284
	feq x6, x68, zero
	xori x6, x6, 1
	mv x66, x6
# B4285
	bne x66, zero, trace_diffuse_rays_beqelse_b4287
trace_diffuse_rays_bfgtelse_b4286:
# B4286
	mv x39, zero
	j trace_diffuse_rays_cont_b4305 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4287:
# B4287
	sw x39, 0(x27)
	mv x39, x14
	j trace_diffuse_rays_cont_b4305 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4280:
# B4280
	sw x70, 0(x27)
	mv x39, x11
	j trace_diffuse_rays_cont_b4305 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4273:
# B4273
	sw x70, 0(x27)
	mv x39, x100
	j trace_diffuse_rays_cont_b4305 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4266:
# B4266
	bne x7, x11, trace_diffuse_rays_beqelse_b4289
# B4288
	lw x39, 0(x69)
	bfle zero, x39, trace_diffuse_rays_bfgtelse_b4290
# B4291
	lw x39, 1(x69)
	fmul x39, x39, x6
	lw x6, 2(x69)
	fmul x6, x6, x66
	fadd x39, x39, x6
	lw x6, 3(x69)
	fmul x6, x6, x68
	fadd x39, x39, x6
	sw x39, 0(x27)
	mv x39, x100
	j trace_diffuse_rays_cont_b4305 # adhoc jump(2)
trace_diffuse_rays_bfgtelse_b4290:
# B4290
	mv x39, zero
	j trace_diffuse_rays_cont_b4305 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4289:
# B4289
	lw x7, 0(x69)
	bfeq x7, zero, trace_diffuse_rays_bfneqelse_b4293
# B4292
	lw x70, 1(x69)
	fmul x70, x70, x6
	lw x71, 2(x69)
	fmul x71, x71, x66
	fadd x70, x70, x71
	lw x71, 3(x69)
	fmul x71, x71, x68
	fadd x70, x70, x71
	fmul x71, x6, x6
	lw x72, 4(x39)
	lw x72, 0(x72)
	fmul x71, x71, x72
	fmul x72, x66, x66
	lw x73, 4(x39)
	lw x73, 1(x73)
	fmul x72, x72, x73
	fadd x71, x71, x72
	fmul x72, x68, x68
	lw x73, 4(x39)
	lw x73, 2(x73)
	fmul x72, x72, x73
	fadd x71, x71, x72
	lw x72, 3(x39)
	bne x72, zero, trace_diffuse_rays_beqelse_b4295
# B4294
	mv x6, x71
	j trace_diffuse_rays_cont_b4296 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4295:
# B4295
	fmul x72, x66, x68
	lw x73, 9(x39)
	lw x73, 0(x73)
	fmul x72, x72, x73
	fadd x71, x71, x72
	fmul x68, x68, x6
	lw x72, 9(x39)
	lw x72, 1(x72)
	fmul x68, x68, x72
	fadd x68, x71, x68
	fmul x6, x6, x66
	lw x66, 9(x39)
	lw x66, 2(x66)
	fmul x6, x6, x66
	fadd x6, x68, x6
trace_diffuse_rays_cont_b4296:
# B4296
	lw x66, 1(x39)
	bne x66, x14, trace_diffuse_rays_beqelse_b4299
# B4297
	fsub x6, x6, x15
trace_diffuse_rays_beqelse_b4299:
# B4299
	fmul x66, x70, x70
	fmul x6, x7, x6
	fsub x6, x66, x6
	bfle x6, zero, trace_diffuse_rays_bfgtelse_b4300
# B4301
	lw x39, 6(x39)
	fsqrt x6, x6
	bne x39, zero, trace_diffuse_rays_beqelse_b4303
# B4302
	fsub x39, x70, x6
	lw x6, 4(x69)
	fmul x39, x39, x6
	sw x39, 0(x27)
	j trace_diffuse_rays_cont_b4304 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4303:
# B4303
	fadd x39, x70, x6
	lw x6, 4(x69)
	fmul x39, x39, x6
	sw x39, 0(x27)
trace_diffuse_rays_cont_b4304:
# B4304
	mv x39, x100
	j trace_diffuse_rays_cont_b4305 # adhoc jump(2)
trace_diffuse_rays_bfgtelse_b4300:
# B4300
	mv x39, zero
	j trace_diffuse_rays_cont_b4305 # adhoc jump(2)
trace_diffuse_rays_bfneqelse_b4293:
# B4293
	mv x39, zero
trace_diffuse_rays_cont_b4305:
# B4305
	lw x6, 0(x27)
	bne x39, zero, trace_diffuse_rays_beqelse_b4307
# B4306
	mv x39, zero
	j trace_diffuse_rays_cont_b4308 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4307:
# B4307
	fle x39, x90, x6
	xori x39, x39, 1
trace_diffuse_rays_cont_b4308:
# B4308
	addi x36, x36, 1
	bne x39, zero, trace_diffuse_rays_beqelse_b4310
# B4309
	lwr x32, x13, x32
	lw x32, 6(x32)
	beq x32, zero, trace_diffuse_rays_bneelse_b4340
	j	trace_diffuse_rays_beqelse_b4262 # moved need extra jump for 4262 at B4309
trace_diffuse_rays_beqelse_b4310:
# B4310
	fadd x32, x6, x30
	lw x39, 0(x91)
	fmul x39, x39, x32
	fadd x39, x39, x5
	lw x5, 1(x91)
	fmul x5, x5, x32
	fadd x5, x5, x65
	lw x6, 2(x91)
	fmul x32, x6, x32
	fadd x32, x32, x67
	mv x65, x38
	mv x66, x39
	mv x67, x5
	mv x68, x32
	mv x6, zero
	j	trace_diffuse_rays_loop_b4313 # jumping over moved block
trace_diffuse_rays_bneelse_b4334:	#moved
# B4334
	addi x6, x6, 1
trace_diffuse_rays_loop_b4313:
# B4313
	lwr x32, x65, x6
	bne x32, x28, trace_diffuse_rays_beqelse_b4315
# B4314
	mv x39, x100
# B4336
	bne x39, zero, trace_diffuse_rays_beqelse_b4338
	j	trace_diffuse_rays_beqelse_b4262 # moved need extra jump for 4262 at B4336
trace_diffuse_rays_beqelse_b4338:
# B4338
	mv x32, x100
trace_diffuse_rays_cont_b4339:
# B4339
	bne x32, zero, trace_diffuse_rays_beqelse_b4341
trace_diffuse_rays_bneelse_b4340:
trace_diffuse_rays_cont_b4340:
# B4340
	addi x33, x33, 1
	j trace_diffuse_rays_loop_b4259 # loopback to while entry from B4340
trace_diffuse_rays_beqelse_b4341:
# B4341
	mv x36, x100
# B4342
	bne x36, zero, trace_diffuse_rays_beqelse_b4344
trace_diffuse_rays_bneelse_b4343:
# B4343
	mv x32, zero
	j trace_diffuse_rays_cont_b4345 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4344:
# B4344
	mv x32, x100
	j trace_diffuse_rays_cont_b4345 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4315:
# B4315
	lwr x32, x13, x32
	lw x39, 5(x32)
	lw x39, 0(x39)
	fsub x39, x66, x39
	lw x5, 5(x32)
	lw x5, 1(x5)
	fsub x5, x67, x5
	lw x69, 5(x32)
	lw x69, 2(x69)
	fsub x69, x68, x69
	lw x7, 1(x32)
	bne x7, x100, trace_diffuse_rays_beqelse_b4317
# B4316
	fabs x39, x39
	lw x7, 4(x32)
	lw x7, 0(x7)
	bfle x7, x39, trace_diffuse_rays_bfgtelse_b4323
# B4319
	fabs x39, x5
	lw x5, 4(x32)
	lw x5, 1(x5)
	bfle x5, x39, trace_diffuse_rays_bfgtelse_b4323
# B4321
	fabs x39, x69
	lw x5, 4(x32)
	lw x5, 2(x5)
	fle x39, x5, x39
	xori x39, x39, 1
	mv x5, x39
# B4322
	bne x5, zero, trace_diffuse_rays_beqelse_b4324
trace_diffuse_rays_bfgtelse_b4323:
# B4323
	lw x32, 6(x32)
	xori x32, x32, 1
	j trace_diffuse_rays_cont_b4333 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4324:
# B4324
	lw x32, 6(x32)
	j trace_diffuse_rays_cont_b4333 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4317:
# B4317
	bne x7, x11, trace_diffuse_rays_beqelse_b4326
# B4325
	lw x7, 4(x32)
	lw x70, 0(x7)
	fmul x39, x70, x39
	lw x70, 1(x7)
	fmul x5, x70, x5
	fadd x39, x39, x5
	lw x5, 2(x7)
	fmul x5, x5, x69
	fadd x39, x39, x5
	lw x32, 6(x32)
	fle x39, zero, x39
	xori x39, x39, 1
	xor x32, x32, x39
	xori x32, x32, 1
	j trace_diffuse_rays_cont_b4333 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4326:
# B4326
	fmul x7, x39, x39
	lw x70, 4(x32)
	lw x70, 0(x70)
	fmul x7, x7, x70
	fmul x70, x5, x5
	lw x71, 4(x32)
	lw x71, 1(x71)
	fmul x70, x70, x71
	fadd x7, x7, x70
	fmul x70, x69, x69
	lw x71, 4(x32)
	lw x71, 2(x71)
	fmul x70, x70, x71
	fadd x7, x7, x70
	lw x70, 3(x32)
	bne x70, zero, trace_diffuse_rays_beqelse_b4328
# B4327
	mv x39, x7
	j trace_diffuse_rays_cont_b4329 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4328:
# B4328
	fmul x70, x5, x69
	lw x71, 9(x32)
	lw x71, 0(x71)
	fmul x70, x70, x71
	fadd x7, x7, x70
	fmul x69, x69, x39
	lw x70, 9(x32)
	lw x70, 1(x70)
	fmul x69, x69, x70
	fadd x69, x7, x69
	fmul x39, x39, x5
	lw x5, 9(x32)
	lw x5, 2(x5)
	fmul x39, x39, x5
	fadd x39, x69, x39
trace_diffuse_rays_cont_b4329:
# B4329
	lw x5, 1(x32)
	bne x5, x14, trace_diffuse_rays_beqelse_b4332
# B4330
	fsub x39, x39, x15
trace_diffuse_rays_beqelse_b4332:
# B4332
	lw x32, 6(x32)
	fle x39, zero, x39
	xori x39, x39, 1
	xor x32, x32, x39
	xori x32, x32, 1
trace_diffuse_rays_cont_b4333:
# B4333
	beq x32, zero, trace_diffuse_rays_bneelse_b4334
	j	trace_diffuse_rays_beqelse_b4262 # moved need extra jump for 4262 at B4333
trace_diffuse_rays_bfgtelse_b4257:
# B4257
	mv x32, zero
trace_diffuse_rays_cont_b4345:
# B4345
	addi x22, x22, 1
	bne x32, zero, trace_diffuse_rays_beqelse_b4347
	j	trace_diffuse_rays_bneelse_b4209 # moved need extra jump for 4209 at B4345
trace_diffuse_rays_beqelse_b4347:
# B4347
	mv x34, x24
	mv x33, x100
trace_diffuse_rays_cont_b4348:
trace_diffuse_rays_loop_b4348:
# B4348
	lwr x24, x34, x33
	beq x24, x28, trace_diffuse_rays_bneelse_b4209
# B4350
	lwr x24, x29, x24
	mv x36, x24
	mv x32, zero
trace_diffuse_rays_beqelse_b4351:
trace_diffuse_rays_loop_b4351:
# B4351
	lwr x24, x36, x32
	beq x24, x28, trace_diffuse_rays_bneelse_b4429
# B4353
	lwr x24, x36, x32
	lwr x38, x13, x24
	lw x39, 0(x31)
	lw x5, 5(x38)
	lw x5, 0(x5)
	fsub x5, x39, x5
	lw x6, 1(x31)
	lw x65, 5(x38)
	lw x65, 1(x65)
	fsub x65, x6, x65
	lw x66, 2(x31)
	lw x67, 5(x38)
	lw x67, 2(x67)
	fsub x67, x66, x67
	lw x68, 1(x9)
	lwr x68, x68, x24
	lw x69, 1(x38)
	bne x69, x100, trace_diffuse_rays_beqelse_b4355
# B4354
	lw x69, 0(x9)
	lw x7, 0(x68)
	fsub x7, x7, x5
	lw x70, 1(x68)
	fmul x7, x7, x70
	lw x71, 1(x69)
	fmul x72, x7, x71
	fadd x72, x72, x65
	fabs x72, x72
	lw x73, 4(x38)
	lw x73, 1(x73)
	bfle x73, x72, trace_diffuse_rays_bfgtelse_b4361
# B4357
	lw x72, 2(x69)
	fmul x72, x7, x72
	fadd x72, x72, x67
	fabs x72, x72
	lw x74, 4(x38)
	lw x74, 2(x74)
	bfle x74, x72, trace_diffuse_rays_bfgtelse_b4361
# B4359
	feq x70, x70, zero
	xori x70, x70, 1
	mv x72, x70
# B4360
	bne x72, zero, trace_diffuse_rays_beqelse_b4362
trace_diffuse_rays_bfgtelse_b4361:
# B4361
	lw x7, 2(x68)
	fsub x7, x7, x65
	lw x70, 3(x68)
	fmul x7, x7, x70
	lw x72, 0(x69)
	fmul x74, x7, x72
	fadd x74, x74, x5
	fabs x74, x74
	lw x75, 4(x38)
	lw x75, 0(x75)
	bfle x75, x74, trace_diffuse_rays_bfgtelse_b4368
# B4364
	lw x69, 2(x69)
	fmul x69, x7, x69
	fadd x69, x69, x67
	fabs x69, x69
	lw x38, 4(x38)
	lw x38, 2(x38)
	bfle x38, x69, trace_diffuse_rays_bfgtelse_b4368
# B4366
	feq x38, x70, zero
	xori x38, x38, 1
	mv x69, x38
# B4367
	bne x69, zero, trace_diffuse_rays_beqelse_b4369
trace_diffuse_rays_bfgtelse_b4368:
# B4368
	lw x38, 4(x68)
	fsub x38, x38, x67
	lw x67, 5(x68)
	fmul x38, x38, x67
	fmul x68, x38, x72
	fadd x5, x68, x5
	fabs x5, x5
	bfle x75, x5, trace_diffuse_rays_bfgtelse_b4375
# B4371
	fmul x5, x38, x71
	fadd x5, x5, x65
	fabs x5, x5
	bfle x73, x5, trace_diffuse_rays_bfgtelse_b4375
# B4373
	feq x5, x67, zero
	xori x5, x5, 1
	mv x65, x5
# B4374
	bne x65, zero, trace_diffuse_rays_beqelse_b4376
trace_diffuse_rays_bfgtelse_b4375:
# B4375
	mv x38, zero
	j trace_diffuse_rays_cont_b4394 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4376:
# B4376
	sw x38, 0(x27)
	mv x38, x14
	j trace_diffuse_rays_cont_b4394 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4369:
# B4369
	sw x7, 0(x27)
	mv x38, x11
	j trace_diffuse_rays_cont_b4394 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4362:
# B4362
	sw x7, 0(x27)
	mv x38, x100
	j trace_diffuse_rays_cont_b4394 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4355:
# B4355
	bne x69, x11, trace_diffuse_rays_beqelse_b4378
# B4377
	lw x38, 0(x68)
	bfle zero, x38, trace_diffuse_rays_bfgtelse_b4379
# B4380
	lw x38, 1(x68)
	fmul x38, x38, x5
	lw x5, 2(x68)
	fmul x5, x5, x65
	fadd x38, x38, x5
	lw x5, 3(x68)
	fmul x5, x5, x67
	fadd x38, x38, x5
	sw x38, 0(x27)
	mv x38, x100
	j trace_diffuse_rays_cont_b4394 # adhoc jump(2)
trace_diffuse_rays_bfgtelse_b4379:
# B4379
	mv x38, zero
	j trace_diffuse_rays_cont_b4394 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4378:
# B4378
	lw x69, 0(x68)
	bfeq x69, zero, trace_diffuse_rays_bfneqelse_b4382
# B4381
	lw x7, 1(x68)
	fmul x7, x7, x5
	lw x70, 2(x68)
	fmul x70, x70, x65
	fadd x7, x7, x70
	lw x70, 3(x68)
	fmul x70, x70, x67
	fadd x7, x7, x70
	fmul x70, x5, x5
	lw x71, 4(x38)
	lw x71, 0(x71)
	fmul x70, x70, x71
	fmul x71, x65, x65
	lw x72, 4(x38)
	lw x72, 1(x72)
	fmul x71, x71, x72
	fadd x70, x70, x71
	fmul x71, x67, x67
	lw x72, 4(x38)
	lw x72, 2(x72)
	fmul x71, x71, x72
	fadd x70, x70, x71
	lw x71, 3(x38)
	bne x71, zero, trace_diffuse_rays_beqelse_b4384
# B4383
	mv x5, x70
	j trace_diffuse_rays_cont_b4385 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4384:
# B4384
	fmul x71, x65, x67
	lw x72, 9(x38)
	lw x72, 0(x72)
	fmul x71, x71, x72
	fadd x70, x70, x71
	fmul x67, x67, x5
	lw x71, 9(x38)
	lw x71, 1(x71)
	fmul x67, x67, x71
	fadd x67, x70, x67
	fmul x5, x5, x65
	lw x65, 9(x38)
	lw x65, 2(x65)
	fmul x5, x5, x65
	fadd x5, x67, x5
trace_diffuse_rays_cont_b4385:
# B4385
	lw x65, 1(x38)
	bne x65, x14, trace_diffuse_rays_beqelse_b4388
# B4386
	fsub x5, x5, x15
trace_diffuse_rays_beqelse_b4388:
# B4388
	fmul x65, x7, x7
	fmul x5, x69, x5
	fsub x5, x65, x5
	bfle x5, zero, trace_diffuse_rays_bfgtelse_b4389
# B4390
	lw x38, 6(x38)
	fsqrt x5, x5
	bne x38, zero, trace_diffuse_rays_beqelse_b4392
# B4391
	fsub x38, x7, x5
	lw x5, 4(x68)
	fmul x38, x38, x5
	sw x38, 0(x27)
	j trace_diffuse_rays_cont_b4393 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4392:
# B4392
	fadd x38, x7, x5
	lw x5, 4(x68)
	fmul x38, x38, x5
	sw x38, 0(x27)
trace_diffuse_rays_cont_b4393:
# B4393
	mv x38, x100
	j trace_diffuse_rays_cont_b4394 # adhoc jump(2)
trace_diffuse_rays_bfgtelse_b4389:
# B4389
	mv x38, zero
	j trace_diffuse_rays_cont_b4394 # adhoc jump(2)
trace_diffuse_rays_bfneqelse_b4382:
# B4382
	mv x38, zero
trace_diffuse_rays_cont_b4394:
# B4394
	lw x5, 0(x27)
	bne x38, zero, trace_diffuse_rays_beqelse_b4396
# B4395
	mv x38, zero
	j trace_diffuse_rays_cont_b4397 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4396:
# B4396
	fle x38, x90, x5
	xori x38, x38, 1
trace_diffuse_rays_cont_b4397:
# B4397
	addi x32, x32, 1
	bne x38, zero, trace_diffuse_rays_beqelse_b4399
# B4398
	lwr x24, x13, x24
	lw x24, 6(x24)
	beq x24, zero, trace_diffuse_rays_bneelse_b4429
	j	trace_diffuse_rays_beqelse_b4351 # moved need extra jump for 4351 at B4398
trace_diffuse_rays_beqelse_b4399:
# B4399
	fadd x24, x5, x30
	lw x38, 0(x91)
	fmul x38, x38, x24
	fadd x38, x38, x39
	lw x39, 1(x91)
	fmul x39, x39, x24
	fadd x39, x39, x6
	lw x5, 2(x91)
	fmul x24, x5, x24
	fadd x24, x24, x66
	mv x65, x38
	mv x66, x39
	mv x67, x24
	mv x6, x36
	mv x5, zero
	j	trace_diffuse_rays_loop_b4402 # jumping over moved block
trace_diffuse_rays_bneelse_b4423:	#moved
# B4423
	addi x5, x5, 1
trace_diffuse_rays_loop_b4402:
# B4402
	lwr x24, x6, x5
	bne x24, x28, trace_diffuse_rays_beqelse_b4404
# B4403
	mv x38, x100
# B4425
	bne x38, zero, trace_diffuse_rays_beqelse_b4427
	j	trace_diffuse_rays_beqelse_b4351 # moved need extra jump for 4351 at B4425
trace_diffuse_rays_beqelse_b4427:
# B4427
	mv x24, x100
trace_diffuse_rays_cont_b4428:
# B4428
	bne x24, zero, trace_diffuse_rays_beqelse_b4430
trace_diffuse_rays_bneelse_b4429:
trace_diffuse_rays_cont_b4429:
# B4429
	addi x33, x33, 1
	j trace_diffuse_rays_loop_b4348 # loopback to while entry from B4429
trace_diffuse_rays_beqelse_b4430:
# B4430
	mv x32, x100
# B4431
	bne x32, zero, trace_diffuse_rays_beqelse_b4433
	j	trace_diffuse_rays_bneelse_b4209 # moved need extra jump for 4209 at B4431
trace_diffuse_rays_beqelse_b4433:
# B4433
	mv x24, x100
trace_diffuse_rays_cont_b4434:
# B4434
	bne x24, zero, trace_diffuse_rays_beqelse_b4440
trace_diffuse_rays_bneelse_b4435:
# B4435
	lw x22, 0(x37)
	lw x24, 0(x91)
	fmul x22, x22, x24
	lw x24, 1(x37)
	lw x25, 1(x91)
	fmul x24, x24, x25
	fadd x22, x22, x24
	lw x24, 2(x37)
	lw x25, 2(x91)
	fmul x24, x24, x25
	fadd x22, x22, x24
	fsub x22, zero, x22
	bfle x22, zero, trace_diffuse_rays_bfgtelse_b4437
# B4438
	mv x24, x22
	j trace_diffuse_rays_cont_b4439 # adhoc jump(2)
trace_diffuse_rays_bfgtelse_b4437:
# B4437
	mv x24, zero
trace_diffuse_rays_cont_b4439:
# B4439
	fmul x12, x12, x24
	lw x22, 7(x23)
	lw x22, 0(x22)
	fmul x12, x12, x22
	lw x22, 0(x92)
	lw x23, 0(x40)
	fmul x23, x12, x23
	fadd x22, x22, x23
	sw x22, 0(x92)
	lw x22, 1(x92)
	lw x23, 1(x40)
	fmul x23, x12, x23
	fadd x22, x22, x23
	sw x22, 1(x92)
	lw x22, 2(x92)
	lw x23, 2(x40)
	fmul x12, x12, x23
	fadd x12, x22, x12
	sw x12, 2(x92)
trace_diffuse_rays_beqelse_b4440:
trace_diffuse_rays_bfgtelse_b4440:
trace_diffuse_rays_cont_b4440:
# B4440
	addi x21, x21, -2
	j trace_diffuse_rays_loop_b3357 # loopback to while entry from B4440
trace_diffuse_rays_beqelse_b4404:
# B4404
	lwr x24, x13, x24
	lw x38, 5(x24)
	lw x38, 0(x38)
	fsub x38, x65, x38
	lw x39, 5(x24)
	lw x39, 1(x39)
	fsub x39, x66, x39
	lw x68, 5(x24)
	lw x68, 2(x68)
	fsub x68, x67, x68
	lw x69, 1(x24)
	bne x69, x100, trace_diffuse_rays_beqelse_b4406
# B4405
	fabs x38, x38
	lw x69, 4(x24)
	lw x69, 0(x69)
	bfle x69, x38, trace_diffuse_rays_bfgtelse_b4412
# B4408
	fabs x38, x39
	lw x39, 4(x24)
	lw x39, 1(x39)
	bfle x39, x38, trace_diffuse_rays_bfgtelse_b4412
# B4410
	fabs x38, x68
	lw x39, 4(x24)
	lw x39, 2(x39)
	fle x38, x39, x38
	xori x38, x38, 1
	mv x39, x38
# B4411
	bne x39, zero, trace_diffuse_rays_beqelse_b4413
trace_diffuse_rays_bfgtelse_b4412:
# B4412
	lw x24, 6(x24)
	xori x24, x24, 1
	j trace_diffuse_rays_cont_b4422 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4413:
# B4413
	lw x24, 6(x24)
	j trace_diffuse_rays_cont_b4422 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4406:
# B4406
	bne x69, x11, trace_diffuse_rays_beqelse_b4415
# B4414
	lw x69, 4(x24)
	lw x7, 0(x69)
	fmul x38, x7, x38
	lw x7, 1(x69)
	fmul x39, x7, x39
	fadd x38, x38, x39
	lw x39, 2(x69)
	fmul x39, x39, x68
	fadd x38, x38, x39
	lw x24, 6(x24)
	fle x38, zero, x38
	xori x38, x38, 1
	xor x24, x24, x38
	xori x24, x24, 1
	j trace_diffuse_rays_cont_b4422 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4415:
# B4415
	fmul x69, x38, x38
	lw x7, 4(x24)
	lw x7, 0(x7)
	fmul x69, x69, x7
	fmul x7, x39, x39
	lw x70, 4(x24)
	lw x70, 1(x70)
	fmul x7, x7, x70
	fadd x69, x69, x7
	fmul x7, x68, x68
	lw x70, 4(x24)
	lw x70, 2(x70)
	fmul x7, x7, x70
	fadd x69, x69, x7
	lw x7, 3(x24)
	bne x7, zero, trace_diffuse_rays_beqelse_b4417
# B4416
	mv x38, x69
	j trace_diffuse_rays_cont_b4418 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4417:
# B4417
	fmul x7, x39, x68
	lw x70, 9(x24)
	lw x70, 0(x70)
	fmul x7, x7, x70
	fadd x69, x69, x7
	fmul x68, x68, x38
	lw x7, 9(x24)
	lw x7, 1(x7)
	fmul x68, x68, x7
	fadd x68, x69, x68
	fmul x38, x38, x39
	lw x39, 9(x24)
	lw x39, 2(x39)
	fmul x38, x38, x39
	fadd x38, x68, x38
trace_diffuse_rays_cont_b4418:
# B4418
	lw x39, 1(x24)
	bne x39, x14, trace_diffuse_rays_beqelse_b4421
# B4419
	fsub x38, x38, x15
trace_diffuse_rays_beqelse_b4421:
# B4421
	lw x24, 6(x24)
	fle x38, zero, x38
	xori x38, x38, 1
	xor x24, x24, x38
	xori x24, x24, 1
trace_diffuse_rays_cont_b4422:
# B4422
	beq x24, zero, trace_diffuse_rays_bneelse_b4423
	j	trace_diffuse_rays_beqelse_b4351 # moved need extra jump for 4351 at B4422
trace_diffuse_rays_bleelse_b3359:
# B3359
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
body_pretrace_pixels.3136:
# B4441
# B4442
	la x101, min_caml_scan_pitch
	la x102, min_caml_image_center
	la x103, min_caml_ptrace_dirvec
	la x104, min_caml_screenx_dir
	li x105, 1
	li x106, 2
	la x107, min_caml_rgb
	la x108, min_caml_startp
	la x109, min_caml_viewpoint
	lui x110, 260096
	mv x116, x67
	mv x115, x66
	mv x113, x7
	mv x111, x5
	mv x112, x6
	mv x114, x65
pretrace_pixels_loop_b4443:
# B4443
	bgt zero, x112, pretrace_pixels_bleelse_b4445
# B4444
	lw x10, 0(x101)
	lw x100, 0(x102)
	sub x100, x112, x100
	itof x100, x100
	fmul x10, x10, x100
	lw x100, 0(x104)
	fmul x100, x10, x100
	fadd x100, x100, x114
	sw x100, 0(x103)
	lw x100, 1(x104)
	fmul x100, x10, x100
	fadd x100, x100, x115
	sw x100, 1(x103)
	lw x100, 2(x104)
	fmul x10, x10, x100
	fadd x10, x10, x116
	sw x10, 2(x103)
	lw x10, 0(x103)
	fmul x100, x10, x10
	lw x11, 1(x103)
	fmul x12, x11, x11
	fadd x100, x100, x12
	lw x12, 2(x103)
	fmul x13, x12, x12
	fadd x100, x100, x13
	fsqrt x100, x100
	feq x13, x100, zero
	lui x14, 784384
	bne x13, zero, pretrace_pixels_beqelse_b4447
# B4446
	bne zero, zero, pretrace_pixels_beqelse_b4449
# B4448
	fdiv x100, x110, x100
	j pretrace_pixels_cont_b4450 # adhoc jump(2)
pretrace_pixels_beqelse_b4449:
# B4449
	fdiv x100, x14, x100
	j pretrace_pixels_cont_b4450 # adhoc jump(2)
pretrace_pixels_beqelse_b4447:
# B4447
	mv x100, x110
pretrace_pixels_cont_b4450:
# B4450
	fmul x10, x10, x100
	sw x10, 0(x103)
	fmul x10, x11, x100
	sw x10, 1(x103)
	fmul x10, x12, x100
	sw x10, 2(x103)
	sw zero, 0(x107)
	sw zero, 1(x107)
	sw zero, 2(x107)
	lw x10, 0(x109)
	sw x10, 0(x108)
	lw x10, 1(x109)
	sw x10, 1(x108)
	lw x10, 2(x109)
	sw x10, 2(x108)
	lwr x10, x111, x112
	li x117, 4
	la x100, min_caml_light
	la x11, min_caml_beam
	la x12, min_caml_intersected_object_id
	la x118, min_caml_objects
	la x13, min_caml_intersection_point
	la x15, min_caml_intsec_rectside
	lui x16, 258048
	la x17, min_caml_texture_color
	lui x18, 276480
	la x19, min_caml_nvector
	lui x20, 786432
	la x21, min_caml_or_net
	la x22, min_caml_n_reflections
	lui x23, 253133
	addi x23, x23, -819
	la x24, min_caml_tmin
	mv x27, x103
	mv x26, x110
	mv x25, zero
	mv x28, x10
	mv x29, zero
	j	pretrace_pixels_loop_b4451 # jumping over moved block
pretrace_pixels_bneelse_b5549:	#moved
# B5549
	fsub x10, x110, x5
	lw x25, 0(x24)
	fadd x25, x29, x25
	mv x29, x25
	mv x25, x30
	fmul x26, x26, x10
pretrace_pixels_loop_b4451:
# B4451
	li x119, 3
	la x120, min_caml_startp_fast
	la x121, min_caml_n_objects
	bgt x25, x117, pretrace_pixels_bleelse_b5551
# B4452
	lw x10, 2(x28)
	lui x30, 321255
	addi x30, x30, -1240
	sw x30, 0(x24)
	lw x31, 0(x21)
	li x32, 99
	la x33, min_caml_solver_dist
	li x34, -1
	mv x37, x27
	mv x36, x31
	mv x35, zero
pretrace_pixels_loop_b4454:
# B4454
	lwr x31, x36, x35
	lw x38, 0(x31)
	la x39, min_caml_and_net
	lui x40, 246333
	addi x40, x40, 1802
	beq x38, x34, pretrace_pixels_bneelse_b4734
# B4456
	bne x38, x32, pretrace_pixels_beqelse_b4458
# B4457
	mv x65, x37
	mv x6, x31
	mv x5, x105
pretrace_pixels_loop_b4459:
# B4459
	lwr x31, x6, x5
	beq x31, x34, pretrace_pixels_bneelse_b4733
# B4461
	lwr x31, x39, x31
	mv x66, x31
	mv x38, zero
	mv x67, x65
	j	pretrace_pixels_loop_b4462 # jumping over moved block
pretrace_pixels_beqelse_b4560:	#moved
# B4560
	sw x7, 0(x24)
	sw x69, 0(x13)
	sw x70, 1(x13)
	sw x71, 2(x13)
	sw x31, 0(x12)
	sw x68, 0(x15)
pretrace_pixels_beqelse_b4462:
pretrace_pixels_bfgtelse_b4462:
pretrace_pixels_loop_b4462:
# B4462
	lwr x31, x66, x38
	beq x31, x34, pretrace_pixels_bneelse_b4562
# B4464
	lwr x68, x118, x31
	lw x69, 0(x108)
	lw x7, 5(x68)
	lw x7, 0(x7)
	fsub x7, x69, x7
	lw x70, 1(x108)
	lw x71, 5(x68)
	lw x71, 1(x71)
	fsub x71, x70, x71
	lw x72, 2(x108)
	lw x73, 5(x68)
	lw x73, 2(x73)
	fsub x73, x72, x73
	lw x74, 1(x68)
	bne x74, x105, pretrace_pixels_beqelse_b4466
# B4465
	lw x74, 0(x67)
	bfeq x74, zero, pretrace_pixels_bfneqelse_b4477
# B4467
	lw x74, 4(x68)
	lw x75, 6(x68)
	lw x76, 0(x67)
	fle x76, zero, x76
	xori x76, x76, 1
	xor x75, x75, x76
	lw x76, 0(x74)
	bne x75, zero, pretrace_pixels_beqelse_b4470
# B4469
	fsub x75, zero, x76
	j pretrace_pixels_cont_b4471 # adhoc jump(2)
pretrace_pixels_beqelse_b4470:
# B4470
	mv x75, x76
pretrace_pixels_cont_b4471:
# B4471
	fsub x75, x75, x7
	lw x76, 0(x67)
	fdiv x75, x75, x76
	lw x76, 1(x67)
	fmul x76, x75, x76
	fadd x76, x76, x71
	fabs x76, x76
	lw x77, 1(x74)
	bfle x77, x76, pretrace_pixels_bfgtelse_b4477
# B4473
	lw x76, 2(x67)
	fmul x76, x75, x76
	fadd x76, x76, x73
	fabs x76, x76
	lw x74, 2(x74)
	bfle x74, x76, pretrace_pixels_bfgtelse_b4477
# B4475
	sw x75, 0(x33)
	mv x77, x105
# B4476
	bne x77, zero, pretrace_pixels_beqelse_b4478
pretrace_pixels_bfgtelse_b4477:
pretrace_pixels_bfneqelse_b4477:
# B4477
	lw x74, 1(x67)
	bfeq x74, zero, pretrace_pixels_bfneqelse_b4489
# B4479
	lw x74, 4(x68)
	lw x75, 6(x68)
	lw x76, 1(x67)
	fle x76, zero, x76
	xori x76, x76, 1
	xor x75, x75, x76
	lw x76, 1(x74)
	bne x75, zero, pretrace_pixels_beqelse_b4482
# B4481
	fsub x75, zero, x76
	j pretrace_pixels_cont_b4483 # adhoc jump(2)
pretrace_pixels_beqelse_b4482:
# B4482
	mv x75, x76
pretrace_pixels_cont_b4483:
# B4483
	fsub x75, x75, x71
	lw x76, 1(x67)
	fdiv x75, x75, x76
	lw x76, 2(x67)
	fmul x76, x75, x76
	fadd x76, x76, x73
	fabs x76, x76
	lw x77, 2(x74)
	bfle x77, x76, pretrace_pixels_bfgtelse_b4489
# B4485
	lw x76, 0(x67)
	fmul x76, x75, x76
	fadd x76, x76, x7
	fabs x76, x76
	lw x74, 0(x74)
	bfle x74, x76, pretrace_pixels_bfgtelse_b4489
# B4487
	sw x75, 0(x33)
	mv x77, x105
# B4488
	bne x77, zero, pretrace_pixels_beqelse_b4490
pretrace_pixels_bfgtelse_b4489:
pretrace_pixels_bfneqelse_b4489:
# B4489
	lw x74, 2(x67)
	bfeq x74, zero, pretrace_pixels_bfneqelse_b4501
# B4491
	lw x74, 4(x68)
	lw x68, 6(x68)
	lw x75, 2(x67)
	fle x75, zero, x75
	xori x75, x75, 1
	xor x68, x68, x75
	lw x75, 2(x74)
	bne x68, zero, pretrace_pixels_beqelse_b4494
# B4493
	fsub x68, zero, x75
	j pretrace_pixels_cont_b4495 # adhoc jump(2)
pretrace_pixels_beqelse_b4494:
# B4494
	mv x68, x75
pretrace_pixels_cont_b4495:
# B4495
	fsub x68, x68, x73
	lw x73, 2(x67)
	fdiv x68, x68, x73
	lw x73, 0(x67)
	fmul x73, x68, x73
	fadd x7, x73, x7
	fabs x7, x7
	lw x73, 0(x74)
	bfle x73, x7, pretrace_pixels_bfgtelse_b4501
# B4497
	lw x7, 1(x67)
	fmul x7, x68, x7
	fadd x7, x7, x71
	fabs x7, x7
	lw x71, 1(x74)
	bfle x71, x7, pretrace_pixels_bfgtelse_b4501
# B4499
	sw x68, 0(x33)
	mv x73, x105
# B4500
	bne x73, zero, pretrace_pixels_beqelse_b4502
pretrace_pixels_bfgtelse_b4501:
pretrace_pixels_bfneqelse_b4501:
# B4501
	mv x68, zero
	j pretrace_pixels_cont_b4526 # adhoc jump(2)
pretrace_pixels_beqelse_b4502:
# B4502
	li x68, 3
	addi x38, x38, 1
	j pretrace_pixels_cont_b4528 # adhoc jump(2)
pretrace_pixels_beqelse_b4490:
# B4490
	mv x68, x106
	j pretrace_pixels_cont_b4526 # adhoc jump(2)
pretrace_pixels_beqelse_b4478:
# B4478
	mv x68, x105
	j pretrace_pixels_cont_b4526 # adhoc jump(2)
pretrace_pixels_beqelse_b4466:
# B4466
	bne x74, x106, pretrace_pixels_beqelse_b4504
# B4503
	lw x68, 4(x68)
	lw x74, 0(x67)
	lw x75, 0(x68)
	fmul x74, x74, x75
	lw x75, 1(x67)
	lw x76, 1(x68)
	fmul x75, x75, x76
	fadd x74, x74, x75
	lw x75, 2(x67)
	lw x76, 2(x68)
	fmul x75, x75, x76
	fadd x74, x74, x75
	bfle x74, zero, pretrace_pixels_bfgtelse_b4505
# B4506
	lw x75, 0(x68)
	fmul x7, x75, x7
	lw x75, 1(x68)
	fmul x71, x75, x71
	fadd x7, x7, x71
	lw x68, 2(x68)
	fmul x68, x68, x73
	fadd x68, x7, x68
	fsub x68, zero, x68
	fdiv x68, x68, x74
	sw x68, 0(x33)
	mv x68, x105
	j pretrace_pixels_cont_b4526 # adhoc jump(2)
pretrace_pixels_bfgtelse_b4505:
# B4505
	mv x68, zero
	j pretrace_pixels_cont_b4526 # adhoc jump(2)
pretrace_pixels_beqelse_b4504:
# B4504
	lw x74, 0(x67)
	lw x75, 1(x67)
	lw x76, 2(x67)
	fmul x77, x74, x74
	lw x78, 4(x68)
	lw x78, 0(x78)
	fmul x77, x77, x78
	fmul x78, x75, x75
	lw x79, 4(x68)
	lw x79, 1(x79)
	fmul x78, x78, x79
	fadd x77, x77, x78
	fmul x78, x76, x76
	lw x79, 4(x68)
	lw x79, 2(x79)
	fmul x78, x78, x79
	fadd x77, x77, x78
	lw x78, 3(x68)
	bne x78, zero, pretrace_pixels_beqelse_b4508
	j pretrace_pixels_cont_b4509 # adhoc jump(3)
pretrace_pixels_beqelse_b4508:
# B4508
	fmul x78, x75, x76
	lw x79, 9(x68)
	lw x79, 0(x79)
	fmul x78, x78, x79
	fadd x77, x77, x78
	fmul x78, x76, x74
	lw x79, 9(x68)
	lw x79, 1(x79)
	fmul x78, x78, x79
	fadd x77, x77, x78
	fmul x78, x74, x75
	lw x79, 9(x68)
	lw x79, 2(x79)
	fmul x78, x78, x79
	fadd x77, x77, x78
pretrace_pixels_cont_b4509:
# B4509
	bfeq x77, zero, pretrace_pixels_bfneqelse_b4511
pretrace_pixels_cont_b4510:
# B4510
	fmul x78, x74, x7
	lw x79, 4(x68)
	lw x79, 0(x79)
	fmul x78, x78, x79
	fmul x79, x75, x71
	lw x8, 4(x68)
	lw x8, 1(x8)
	fmul x79, x79, x8
	fadd x78, x78, x79
	fmul x79, x76, x73
	lw x8, 4(x68)
	lw x8, 2(x8)
	fmul x79, x79, x8
	fadd x78, x78, x79
	lw x79, 3(x68)
	bne x79, zero, pretrace_pixels_beqelse_b4513
# B4512
	mv x74, x78
	j pretrace_pixels_cont_b4514 # adhoc jump(2)
pretrace_pixels_beqelse_b4513:
# B4513
	fmul x79, x76, x71
	fmul x8, x75, x73
	fadd x79, x79, x8
	lw x8, 9(x68)
	lw x8, 0(x8)
	fmul x79, x79, x8
	fmul x8, x74, x73
	fmul x76, x76, x7
	fadd x76, x8, x76
	lw x8, 9(x68)
	lw x8, 1(x8)
	fmul x76, x76, x8
	fadd x76, x79, x76
	fmul x74, x74, x71
	fmul x75, x75, x7
	fadd x74, x74, x75
	lw x75, 9(x68)
	lw x75, 2(x75)
	fmul x74, x74, x75
	fadd x74, x76, x74
	fmul x74, x74, x16
	fadd x74, x78, x74
pretrace_pixels_cont_b4514:
# B4514
	fmul x75, x7, x7
	lw x76, 4(x68)
	lw x76, 0(x76)
	fmul x75, x75, x76
	fmul x76, x71, x71
	lw x78, 4(x68)
	lw x78, 1(x78)
	fmul x76, x76, x78
	fadd x75, x75, x76
	fmul x76, x73, x73
	lw x78, 4(x68)
	lw x78, 2(x78)
	fmul x76, x76, x78
	fadd x75, x75, x76
	lw x76, 3(x68)
	bne x76, zero, pretrace_pixels_beqelse_b4516
# B4515
	mv x7, x75
	j pretrace_pixels_cont_b4517 # adhoc jump(2)
pretrace_pixels_beqelse_b4516:
# B4516
	fmul x76, x71, x73
	lw x78, 9(x68)
	lw x78, 0(x78)
	fmul x76, x76, x78
	fadd x75, x75, x76
	fmul x73, x73, x7
	lw x76, 9(x68)
	lw x76, 1(x76)
	fmul x73, x73, x76
	fadd x73, x75, x73
	fmul x7, x7, x71
	lw x71, 9(x68)
	lw x71, 2(x71)
	fmul x7, x7, x71
	fadd x7, x73, x7
pretrace_pixels_cont_b4517:
# B4517
	lw x71, 1(x68)
	bne x71, x119, pretrace_pixels_beqelse_b4520
# B4518
	fsub x7, x7, x110
pretrace_pixels_beqelse_b4520:
# B4520
	fmul x71, x74, x74
	fmul x7, x77, x7
	fsub x7, x71, x7
	bfle x7, zero, pretrace_pixels_bfgtelse_b4521
# B4522
	fsqrt x7, x7
	lw x68, 6(x68)
	bne x68, zero, pretrace_pixels_beqelse_b4524
# B4523
	fsub x68, zero, x7
	j pretrace_pixels_cont_b4525 # adhoc jump(2)
pretrace_pixels_beqelse_b4524:
# B4524
	mv x68, x7
pretrace_pixels_cont_b4525:
# B4525
	fsub x68, x68, x74
	fdiv x68, x68, x77
	sw x68, 0(x33)
	mv x68, x105
	j pretrace_pixels_cont_b4526 # adhoc jump(2)
pretrace_pixels_bfgtelse_b4521:
# B4521
	mv x68, zero
	j pretrace_pixels_cont_b4526 # adhoc jump(2)
pretrace_pixels_bfneqelse_b4511:
# B4511
	mv x68, zero
pretrace_pixels_cont_b4526:
# B4526
	addi x38, x38, 1
	bne x68, zero, pretrace_pixels_beqelse_b4528
# B4527
	lwr x31, x118, x31
	lw x31, 6(x31)
	beq x31, zero, pretrace_pixels_bneelse_b4562
	j	pretrace_pixels_beqelse_b4462 # moved need extra jump for 4462 at B4527
pretrace_pixels_bneelse_b4562:
# B4562
	addi x5, x5, 1
	j pretrace_pixels_loop_b4459 # loopback to while entry from B4562
pretrace_pixels_beqelse_b4528:
pretrace_pixels_cont_b4528:
# B4528
	lw x7, 0(x33)
	bfle x7, zero, pretrace_pixels_bfgtelse_b4462
# B4532
	lw x71, 0(x24)
	bfle x71, x7, pretrace_pixels_bfgtelse_b4462
# B4534
	fadd x7, x7, x40
	lw x71, 0(x67)
	fmul x71, x71, x7
	fadd x69, x71, x69
	lw x71, 1(x67)
	fmul x71, x71, x7
	fadd x70, x71, x70
	lw x71, 2(x67)
	fmul x71, x71, x7
	fadd x71, x71, x72
	mv x75, x70
	mv x72, zero
	mv x76, x71
	mv x74, x69
	mv x73, x66
	j	pretrace_pixels_loop_b4535 # jumping over moved block
pretrace_pixels_bneelse_b4556:	#moved
# B4556
	addi x72, x72, 1
pretrace_pixels_loop_b4535:
# B4535
	lwr x77, x73, x72
	bne x77, x34, pretrace_pixels_beqelse_b4537
# B4536
	mv x78, x105
# B4558
	bne x78, zero, pretrace_pixels_beqelse_b4560
	j	pretrace_pixels_bfgtelse_b4462 # moved need extra jump for 4462 at B4558
pretrace_pixels_beqelse_b4537:
# B4537
	lwr x77, x118, x77
	lw x78, 5(x77)
	lw x78, 0(x78)
	fsub x78, x74, x78
	lw x79, 5(x77)
	lw x79, 1(x79)
	fsub x79, x75, x79
	lw x8, 5(x77)
	lw x8, 2(x8)
	fsub x8, x76, x8
	lw x80, 1(x77)
	bne x80, x105, pretrace_pixels_beqelse_b4539
# B4538
	fabs x78, x78
	lw x80, 4(x77)
	lw x80, 0(x80)
	bfle x80, x78, pretrace_pixels_bfgtelse_b4545
# B4541
	fabs x78, x79
	lw x79, 4(x77)
	lw x79, 1(x79)
	bfle x79, x78, pretrace_pixels_bfgtelse_b4545
# B4543
	fabs x78, x8
	lw x79, 4(x77)
	lw x79, 2(x79)
	fle x78, x79, x78
	xori x78, x78, 1
	mv x79, x78
# B4544
	bne x79, zero, pretrace_pixels_beqelse_b4546
pretrace_pixels_bfgtelse_b4545:
# B4545
	lw x77, 6(x77)
	xori x77, x77, 1
	j pretrace_pixels_cont_b4555 # adhoc jump(2)
pretrace_pixels_beqelse_b4546:
# B4546
	lw x77, 6(x77)
	j pretrace_pixels_cont_b4555 # adhoc jump(2)
pretrace_pixels_beqelse_b4539:
# B4539
	bne x80, x106, pretrace_pixels_beqelse_b4548
# B4547
	lw x80, 4(x77)
	lw x81, 0(x80)
	fmul x78, x81, x78
	lw x81, 1(x80)
	fmul x79, x81, x79
	fadd x78, x78, x79
	lw x79, 2(x80)
	fmul x79, x79, x8
	fadd x78, x78, x79
	lw x77, 6(x77)
	fle x78, zero, x78
	xori x78, x78, 1
	xor x77, x77, x78
	xori x77, x77, 1
	j pretrace_pixels_cont_b4555 # adhoc jump(2)
pretrace_pixels_beqelse_b4548:
# B4548
	fmul x80, x78, x78
	lw x81, 4(x77)
	lw x81, 0(x81)
	fmul x80, x80, x81
	fmul x81, x79, x79
	lw x82, 4(x77)
	lw x82, 1(x82)
	fmul x81, x81, x82
	fadd x80, x80, x81
	fmul x81, x8, x8
	lw x82, 4(x77)
	lw x82, 2(x82)
	fmul x81, x81, x82
	fadd x80, x80, x81
	lw x81, 3(x77)
	bne x81, zero, pretrace_pixels_beqelse_b4550
# B4549
	mv x78, x80
	j pretrace_pixels_cont_b4551 # adhoc jump(2)
pretrace_pixels_beqelse_b4550:
# B4550
	fmul x81, x79, x8
	lw x82, 9(x77)
	lw x82, 0(x82)
	fmul x81, x81, x82
	fadd x80, x80, x81
	fmul x8, x8, x78
	lw x81, 9(x77)
	lw x81, 1(x81)
	fmul x8, x8, x81
	fadd x8, x80, x8
	fmul x78, x78, x79
	lw x79, 9(x77)
	lw x79, 2(x79)
	fmul x78, x78, x79
	fadd x78, x8, x78
pretrace_pixels_cont_b4551:
# B4551
	lw x79, 1(x77)
	bne x79, x119, pretrace_pixels_beqelse_b4554
# B4552
	fsub x78, x78, x110
pretrace_pixels_beqelse_b4554:
# B4554
	lw x77, 6(x77)
	fle x78, zero, x78
	xori x78, x78, 1
	xor x77, x77, x78
	xori x77, x77, 1
pretrace_pixels_cont_b4555:
# B4555
	beq x77, zero, pretrace_pixels_bneelse_b4556
	j	pretrace_pixels_bfgtelse_b4462 # moved need extra jump for 4462 at B4555
pretrace_pixels_beqelse_b4458:
# B4458
	lwr x38, x118, x38
	lw x5, 0(x108)
	lw x6, 5(x38)
	lw x6, 0(x6)
	fsub x5, x5, x6
	lw x6, 1(x108)
	lw x65, 5(x38)
	lw x65, 1(x65)
	fsub x6, x6, x65
	lw x65, 2(x108)
	lw x66, 5(x38)
	lw x66, 2(x66)
	fsub x65, x65, x66
	lw x66, 1(x38)
	bne x66, x105, pretrace_pixels_beqelse_b4564
# B4563
	lw x66, 0(x37)
	bfeq x66, zero, pretrace_pixels_bfneqelse_b4575
# B4565
	lw x67, 4(x38)
	lw x68, 6(x38)
	fle x69, zero, x66
	xori x69, x69, 1
	xor x68, x68, x69
	lw x69, 0(x67)
	bne x68, zero, pretrace_pixels_beqelse_b4568
# B4567
	fsub x68, zero, x69
	j pretrace_pixels_cont_b4569 # adhoc jump(2)
pretrace_pixels_beqelse_b4568:
# B4568
	mv x68, x69
pretrace_pixels_cont_b4569:
# B4569
	fsub x68, x68, x5
	fdiv x68, x68, x66
	lw x69, 1(x37)
	fmul x69, x68, x69
	fadd x69, x69, x6
	fabs x69, x69
	lw x7, 1(x67)
	bfle x7, x69, pretrace_pixels_bfgtelse_b4575
# B4571
	lw x69, 2(x37)
	fmul x69, x68, x69
	fadd x69, x69, x65
	fabs x69, x69
	lw x67, 2(x67)
	bfle x67, x69, pretrace_pixels_bfgtelse_b4575
# B4573
	sw x68, 0(x33)
	mv x7, x105
# B4574
	bne x7, zero, pretrace_pixels_beqelse_b4576
pretrace_pixels_bfgtelse_b4575:
pretrace_pixels_bfneqelse_b4575:
# B4575
	lw x67, 1(x37)
	bfeq x67, zero, pretrace_pixels_bfneqelse_b4587
# B4577
	lw x68, 4(x38)
	lw x69, 6(x38)
	fle x7, zero, x67
	xori x7, x7, 1
	xor x69, x69, x7
	lw x7, 1(x68)
	bne x69, zero, pretrace_pixels_beqelse_b4580
# B4579
	fsub x69, zero, x7
	j pretrace_pixels_cont_b4581 # adhoc jump(2)
pretrace_pixels_beqelse_b4580:
# B4580
	mv x69, x7
pretrace_pixels_cont_b4581:
# B4581
	fsub x69, x69, x6
	fdiv x69, x69, x67
	lw x7, 2(x37)
	fmul x7, x69, x7
	fadd x7, x7, x65
	fabs x7, x7
	lw x70, 2(x68)
	bfle x70, x7, pretrace_pixels_bfgtelse_b4587
# B4583
	fmul x7, x69, x66
	fadd x7, x7, x5
	fabs x7, x7
	lw x68, 0(x68)
	bfle x68, x7, pretrace_pixels_bfgtelse_b4587
# B4585
	sw x69, 0(x33)
	mv x70, x105
# B4586
	bne x70, zero, pretrace_pixels_beqelse_b4588
pretrace_pixels_bfgtelse_b4587:
pretrace_pixels_bfneqelse_b4587:
# B4587
	lw x68, 2(x37)
	bfeq x68, zero, pretrace_pixels_bfneqelse_b4733
# B4589
	lw x69, 4(x38)
	lw x38, 6(x38)
	fle x7, zero, x68
	xori x7, x7, 1
	xor x38, x38, x7
	lw x7, 2(x69)
	bne x38, zero, pretrace_pixels_beqelse_b4592
# B4591
	fsub x38, zero, x7
	j pretrace_pixels_cont_b4593 # adhoc jump(2)
pretrace_pixels_beqelse_b4592:
# B4592
	mv x38, x7
pretrace_pixels_cont_b4593:
# B4593
	fsub x38, x38, x65
	fdiv x38, x38, x68
	fmul x65, x38, x66
	fadd x5, x65, x5
	fabs x5, x5
	lw x65, 0(x69)
	bfle x65, x5, pretrace_pixels_bfgtelse_b4733
# B4595
	fmul x5, x38, x67
	fadd x5, x5, x6
	fabs x5, x5
	lw x6, 1(x69)
	bfle x6, x5, pretrace_pixels_bfgtelse_b4733
# B4597
	sw x38, 0(x33)
	mv x65, x105
# B4598
	bne x65, zero, pretrace_pixels_beqelse_b4600
	j pretrace_pixels_cont_b4733 # adhoc jump(3)
pretrace_pixels_beqelse_b4600:
# B4600
	mv x38, x119
	j pretrace_pixels_cont_b4624 # adhoc jump(2)
pretrace_pixels_beqelse_b4588:
# B4588
	mv x38, x106
	j pretrace_pixels_cont_b4624 # adhoc jump(2)
pretrace_pixels_beqelse_b4576:
# B4576
	mv x38, x105
	j pretrace_pixels_cont_b4624 # adhoc jump(2)
pretrace_pixels_beqelse_b4564:
# B4564
	bne x66, x106, pretrace_pixels_beqelse_b4602
# B4601
	lw x38, 4(x38)
	lw x66, 0(x37)
	lw x67, 0(x38)
	fmul x66, x66, x67
	lw x67, 1(x37)
	lw x68, 1(x38)
	fmul x67, x67, x68
	fadd x66, x66, x67
	lw x67, 2(x37)
	lw x68, 2(x38)
	fmul x67, x67, x68
	fadd x66, x66, x67
	bfle x66, zero, pretrace_pixels_bfgtelse_b4733
# B4604
	lw x67, 0(x38)
	fmul x5, x67, x5
	lw x67, 1(x38)
	fmul x6, x67, x6
	fadd x5, x5, x6
	lw x38, 2(x38)
	fmul x38, x38, x65
	fadd x38, x5, x38
	fsub x38, zero, x38
	fdiv x38, x38, x66
	sw x38, 0(x33)
	mv x38, x105
	j pretrace_pixels_cont_b4624 # adhoc jump(2)
pretrace_pixels_beqelse_b4602:
# B4602
	lw x66, 0(x37)
	lw x67, 1(x37)
	lw x68, 2(x37)
	fmul x69, x66, x66
	lw x7, 4(x38)
	lw x7, 0(x7)
	fmul x69, x69, x7
	fmul x7, x67, x67
	lw x70, 4(x38)
	lw x70, 1(x70)
	fmul x7, x7, x70
	fadd x69, x69, x7
	fmul x7, x68, x68
	lw x70, 4(x38)
	lw x70, 2(x70)
	fmul x7, x7, x70
	fadd x69, x69, x7
	lw x7, 3(x38)
	bne x7, zero, pretrace_pixels_beqelse_b4606
	j pretrace_pixels_cont_b4607 # adhoc jump(3)
pretrace_pixels_beqelse_b4606:
# B4606
	fmul x7, x67, x68
	lw x70, 9(x38)
	lw x70, 0(x70)
	fmul x7, x7, x70
	fadd x69, x69, x7
	fmul x7, x68, x66
	lw x70, 9(x38)
	lw x70, 1(x70)
	fmul x7, x7, x70
	fadd x69, x69, x7
	fmul x7, x66, x67
	lw x70, 9(x38)
	lw x70, 2(x70)
	fmul x7, x7, x70
	fadd x69, x69, x7
pretrace_pixels_cont_b4607:
# B4607
	bfeq x69, zero, pretrace_pixels_bfneqelse_b4733
pretrace_pixels_cont_b4608:
# B4608
	fmul x7, x66, x5
	lw x70, 4(x38)
	lw x70, 0(x70)
	fmul x7, x7, x70
	fmul x70, x67, x6
	lw x71, 4(x38)
	lw x71, 1(x71)
	fmul x70, x70, x71
	fadd x7, x7, x70
	fmul x70, x68, x65
	lw x71, 4(x38)
	lw x71, 2(x71)
	fmul x70, x70, x71
	fadd x7, x7, x70
	lw x70, 3(x38)
	bne x70, zero, pretrace_pixels_beqelse_b4611
# B4610
	mv x66, x7
	j pretrace_pixels_cont_b4612 # adhoc jump(2)
pretrace_pixels_beqelse_b4611:
# B4611
	fmul x70, x68, x6
	fmul x71, x67, x65
	fadd x70, x70, x71
	lw x71, 9(x38)
	lw x71, 0(x71)
	fmul x70, x70, x71
	fmul x71, x66, x65
	fmul x68, x68, x5
	fadd x68, x71, x68
	lw x71, 9(x38)
	lw x71, 1(x71)
	fmul x68, x68, x71
	fadd x68, x70, x68
	fmul x66, x66, x6
	fmul x67, x67, x5
	fadd x66, x66, x67
	lw x67, 9(x38)
	lw x67, 2(x67)
	fmul x66, x66, x67
	fadd x66, x68, x66
	fmul x66, x66, x16
	fadd x66, x7, x66
pretrace_pixels_cont_b4612:
# B4612
	fmul x67, x5, x5
	lw x68, 4(x38)
	lw x68, 0(x68)
	fmul x67, x67, x68
	fmul x68, x6, x6
	lw x7, 4(x38)
	lw x7, 1(x7)
	fmul x68, x68, x7
	fadd x67, x67, x68
	fmul x68, x65, x65
	lw x7, 4(x38)
	lw x7, 2(x7)
	fmul x68, x68, x7
	fadd x67, x67, x68
	lw x68, 3(x38)
	bne x68, zero, pretrace_pixels_beqelse_b4614
# B4613
	mv x5, x67
	j pretrace_pixels_cont_b4615 # adhoc jump(2)
pretrace_pixels_beqelse_b4614:
# B4614
	fmul x68, x6, x65
	lw x7, 9(x38)
	lw x7, 0(x7)
	fmul x68, x68, x7
	fadd x67, x67, x68
	fmul x65, x65, x5
	lw x68, 9(x38)
	lw x68, 1(x68)
	fmul x65, x65, x68
	fadd x65, x67, x65
	fmul x5, x5, x6
	lw x6, 9(x38)
	lw x6, 2(x6)
	fmul x5, x5, x6
	fadd x5, x65, x5
pretrace_pixels_cont_b4615:
# B4615
	lw x6, 1(x38)
	bne x6, x119, pretrace_pixels_beqelse_b4618
# B4616
	fsub x5, x5, x110
pretrace_pixels_beqelse_b4618:
# B4618
	fmul x6, x66, x66
	fmul x5, x69, x5
	fsub x5, x6, x5
	bfle x5, zero, pretrace_pixels_bfgtelse_b4733
# B4620
	fsqrt x5, x5
	lw x38, 6(x38)
	bne x38, zero, pretrace_pixels_beqelse_b4622
# B4621
	fsub x38, zero, x5
	j pretrace_pixels_cont_b4623 # adhoc jump(2)
pretrace_pixels_beqelse_b4622:
# B4622
	mv x38, x5
pretrace_pixels_cont_b4623:
# B4623
	fsub x38, x38, x66
	fdiv x38, x38, x69
	sw x38, 0(x33)
	mv x38, x105
pretrace_pixels_cont_b4624:
# B4624
	bne x38, zero, pretrace_pixels_beqelse_b4626
	j pretrace_pixels_cont_b4733 # adhoc jump(3)
pretrace_pixels_beqelse_b4626:
# B4626
	lw x38, 0(x33)
	lw x5, 0(x24)
	bfle x5, x38, pretrace_pixels_bfgtelse_b4733
# B4628
	mv x66, x37
	mv x65, x31
	mv x6, x105
pretrace_pixels_loop_b4629:
# B4629
	lwr x31, x65, x6
	beq x31, x34, pretrace_pixels_bneelse_b4733
# B4631
	lwr x31, x39, x31
	mv x5, x31
	mv x38, zero
	mv x67, x66
	j	pretrace_pixels_loop_b4632 # jumping over moved block
pretrace_pixels_beqelse_b4730:	#moved
# B4730
	sw x7, 0(x24)
	sw x69, 0(x13)
	sw x70, 1(x13)
	sw x71, 2(x13)
	sw x31, 0(x12)
	sw x68, 0(x15)
pretrace_pixels_beqelse_b4632:
pretrace_pixels_bfgtelse_b4632:
pretrace_pixels_loop_b4632:
# B4632
	lwr x31, x5, x38
	beq x31, x34, pretrace_pixels_bneelse_b4732
# B4634
	lwr x68, x118, x31
	lw x69, 0(x108)
	lw x7, 5(x68)
	lw x7, 0(x7)
	fsub x7, x69, x7
	lw x70, 1(x108)
	lw x71, 5(x68)
	lw x71, 1(x71)
	fsub x71, x70, x71
	lw x72, 2(x108)
	lw x73, 5(x68)
	lw x73, 2(x73)
	fsub x73, x72, x73
	lw x74, 1(x68)
	bne x74, x105, pretrace_pixels_beqelse_b4636
# B4635
	lw x74, 0(x67)
	bfeq x74, zero, pretrace_pixels_bfneqelse_b4647
# B4637
	lw x74, 4(x68)
	lw x75, 6(x68)
	lw x76, 0(x67)
	fle x76, zero, x76
	xori x76, x76, 1
	xor x75, x75, x76
	lw x76, 0(x74)
	bne x75, zero, pretrace_pixels_beqelse_b4640
# B4639
	fsub x75, zero, x76
	j pretrace_pixels_cont_b4641 # adhoc jump(2)
pretrace_pixels_beqelse_b4640:
# B4640
	mv x75, x76
pretrace_pixels_cont_b4641:
# B4641
	fsub x75, x75, x7
	lw x76, 0(x67)
	fdiv x75, x75, x76
	lw x76, 1(x67)
	fmul x76, x75, x76
	fadd x76, x76, x71
	fabs x76, x76
	lw x77, 1(x74)
	bfle x77, x76, pretrace_pixels_bfgtelse_b4647
# B4643
	lw x76, 2(x67)
	fmul x76, x75, x76
	fadd x76, x76, x73
	fabs x76, x76
	lw x74, 2(x74)
	bfle x74, x76, pretrace_pixels_bfgtelse_b4647
# B4645
	sw x75, 0(x33)
	mv x77, x105
# B4646
	bne x77, zero, pretrace_pixels_beqelse_b4648
pretrace_pixels_bfgtelse_b4647:
pretrace_pixels_bfneqelse_b4647:
# B4647
	lw x74, 1(x67)
	bfeq x74, zero, pretrace_pixels_bfneqelse_b4659
# B4649
	lw x74, 4(x68)
	lw x75, 6(x68)
	lw x76, 1(x67)
	fle x76, zero, x76
	xori x76, x76, 1
	xor x75, x75, x76
	lw x76, 1(x74)
	bne x75, zero, pretrace_pixels_beqelse_b4652
# B4651
	fsub x75, zero, x76
	j pretrace_pixels_cont_b4653 # adhoc jump(2)
pretrace_pixels_beqelse_b4652:
# B4652
	mv x75, x76
pretrace_pixels_cont_b4653:
# B4653
	fsub x75, x75, x71
	lw x76, 1(x67)
	fdiv x75, x75, x76
	lw x76, 2(x67)
	fmul x76, x75, x76
	fadd x76, x76, x73
	fabs x76, x76
	lw x77, 2(x74)
	bfle x77, x76, pretrace_pixels_bfgtelse_b4659
# B4655
	lw x76, 0(x67)
	fmul x76, x75, x76
	fadd x76, x76, x7
	fabs x76, x76
	lw x74, 0(x74)
	bfle x74, x76, pretrace_pixels_bfgtelse_b4659
# B4657
	sw x75, 0(x33)
	mv x77, x105
# B4658
	bne x77, zero, pretrace_pixels_beqelse_b4660
pretrace_pixels_bfgtelse_b4659:
pretrace_pixels_bfneqelse_b4659:
# B4659
	lw x74, 2(x67)
	bfeq x74, zero, pretrace_pixels_bfneqelse_b4671
# B4661
	lw x74, 4(x68)
	lw x68, 6(x68)
	lw x75, 2(x67)
	fle x75, zero, x75
	xori x75, x75, 1
	xor x68, x68, x75
	lw x75, 2(x74)
	bne x68, zero, pretrace_pixels_beqelse_b4664
# B4663
	fsub x68, zero, x75
	j pretrace_pixels_cont_b4665 # adhoc jump(2)
pretrace_pixels_beqelse_b4664:
# B4664
	mv x68, x75
pretrace_pixels_cont_b4665:
# B4665
	fsub x68, x68, x73
	lw x73, 2(x67)
	fdiv x68, x68, x73
	lw x73, 0(x67)
	fmul x73, x68, x73
	fadd x7, x73, x7
	fabs x7, x7
	lw x73, 0(x74)
	bfle x73, x7, pretrace_pixels_bfgtelse_b4671
# B4667
	lw x7, 1(x67)
	fmul x7, x68, x7
	fadd x7, x7, x71
	fabs x7, x7
	lw x71, 1(x74)
	bfle x71, x7, pretrace_pixels_bfgtelse_b4671
# B4669
	sw x68, 0(x33)
	mv x73, x105
# B4670
	bne x73, zero, pretrace_pixels_beqelse_b4672
pretrace_pixels_bfgtelse_b4671:
pretrace_pixels_bfneqelse_b4671:
# B4671
	mv x68, zero
	j pretrace_pixels_cont_b4696 # adhoc jump(2)
pretrace_pixels_beqelse_b4672:
# B4672
	mv x68, x119
	j pretrace_pixels_cont_b4696 # adhoc jump(2)
pretrace_pixels_beqelse_b4660:
# B4660
	mv x68, x106
	j pretrace_pixels_cont_b4696 # adhoc jump(2)
pretrace_pixels_beqelse_b4648:
# B4648
	mv x68, x105
	j pretrace_pixels_cont_b4696 # adhoc jump(2)
pretrace_pixels_beqelse_b4636:
# B4636
	bne x74, x106, pretrace_pixels_beqelse_b4674
# B4673
	lw x68, 4(x68)
	lw x74, 0(x67)
	lw x75, 0(x68)
	fmul x74, x74, x75
	lw x75, 1(x67)
	lw x76, 1(x68)
	fmul x75, x75, x76
	fadd x74, x74, x75
	lw x75, 2(x67)
	lw x76, 2(x68)
	fmul x75, x75, x76
	fadd x74, x74, x75
	bfle x74, zero, pretrace_pixels_bfgtelse_b4675
# B4676
	lw x75, 0(x68)
	fmul x7, x75, x7
	lw x75, 1(x68)
	fmul x71, x75, x71
	fadd x7, x7, x71
	lw x68, 2(x68)
	fmul x68, x68, x73
	fadd x68, x7, x68
	fsub x68, zero, x68
	fdiv x68, x68, x74
	sw x68, 0(x33)
	mv x68, x105
	j pretrace_pixels_cont_b4696 # adhoc jump(2)
pretrace_pixels_bfgtelse_b4675:
# B4675
	mv x68, zero
	j pretrace_pixels_cont_b4696 # adhoc jump(2)
pretrace_pixels_beqelse_b4674:
# B4674
	lw x74, 0(x67)
	lw x75, 1(x67)
	lw x76, 2(x67)
	fmul x77, x74, x74
	lw x78, 4(x68)
	lw x78, 0(x78)
	fmul x77, x77, x78
	fmul x78, x75, x75
	lw x79, 4(x68)
	lw x79, 1(x79)
	fmul x78, x78, x79
	fadd x77, x77, x78
	fmul x78, x76, x76
	lw x79, 4(x68)
	lw x79, 2(x79)
	fmul x78, x78, x79
	fadd x77, x77, x78
	lw x78, 3(x68)
	bne x78, zero, pretrace_pixels_beqelse_b4678
	j pretrace_pixels_cont_b4679 # adhoc jump(3)
pretrace_pixels_beqelse_b4678:
# B4678
	fmul x78, x75, x76
	lw x79, 9(x68)
	lw x79, 0(x79)
	fmul x78, x78, x79
	fadd x77, x77, x78
	fmul x78, x76, x74
	lw x79, 9(x68)
	lw x79, 1(x79)
	fmul x78, x78, x79
	fadd x77, x77, x78
	fmul x78, x74, x75
	lw x79, 9(x68)
	lw x79, 2(x79)
	fmul x78, x78, x79
	fadd x77, x77, x78
pretrace_pixels_cont_b4679:
# B4679
	bfeq x77, zero, pretrace_pixels_bfneqelse_b4681
pretrace_pixels_cont_b4680:
# B4680
	fmul x78, x74, x7
	lw x79, 4(x68)
	lw x79, 0(x79)
	fmul x78, x78, x79
	fmul x79, x75, x71
	lw x8, 4(x68)
	lw x8, 1(x8)
	fmul x79, x79, x8
	fadd x78, x78, x79
	fmul x79, x76, x73
	lw x8, 4(x68)
	lw x8, 2(x8)
	fmul x79, x79, x8
	fadd x78, x78, x79
	lw x79, 3(x68)
	bne x79, zero, pretrace_pixels_beqelse_b4683
# B4682
	mv x74, x78
	j pretrace_pixels_cont_b4684 # adhoc jump(2)
pretrace_pixels_beqelse_b4683:
# B4683
	fmul x79, x76, x71
	fmul x8, x75, x73
	fadd x79, x79, x8
	lw x8, 9(x68)
	lw x8, 0(x8)
	fmul x79, x79, x8
	fmul x8, x74, x73
	fmul x76, x76, x7
	fadd x76, x8, x76
	lw x8, 9(x68)
	lw x8, 1(x8)
	fmul x76, x76, x8
	fadd x76, x79, x76
	fmul x74, x74, x71
	fmul x75, x75, x7
	fadd x74, x74, x75
	lw x75, 9(x68)
	lw x75, 2(x75)
	fmul x74, x74, x75
	fadd x74, x76, x74
	fmul x74, x74, x16
	fadd x74, x78, x74
pretrace_pixels_cont_b4684:
# B4684
	fmul x75, x7, x7
	lw x76, 4(x68)
	lw x76, 0(x76)
	fmul x75, x75, x76
	fmul x76, x71, x71
	lw x78, 4(x68)
	lw x78, 1(x78)
	fmul x76, x76, x78
	fadd x75, x75, x76
	fmul x76, x73, x73
	lw x78, 4(x68)
	lw x78, 2(x78)
	fmul x76, x76, x78
	fadd x75, x75, x76
	lw x76, 3(x68)
	bne x76, zero, pretrace_pixels_beqelse_b4686
# B4685
	mv x7, x75
	j pretrace_pixels_cont_b4687 # adhoc jump(2)
pretrace_pixels_beqelse_b4686:
# B4686
	fmul x76, x71, x73
	lw x78, 9(x68)
	lw x78, 0(x78)
	fmul x76, x76, x78
	fadd x75, x75, x76
	fmul x73, x73, x7
	lw x76, 9(x68)
	lw x76, 1(x76)
	fmul x73, x73, x76
	fadd x73, x75, x73
	fmul x7, x7, x71
	lw x71, 9(x68)
	lw x71, 2(x71)
	fmul x7, x7, x71
	fadd x7, x73, x7
pretrace_pixels_cont_b4687:
# B4687
	lw x71, 1(x68)
	bne x71, x119, pretrace_pixels_beqelse_b4690
# B4688
	fsub x7, x7, x110
pretrace_pixels_beqelse_b4690:
# B4690
	fmul x71, x74, x74
	fmul x7, x77, x7
	fsub x7, x71, x7
	bfle x7, zero, pretrace_pixels_bfgtelse_b4691
# B4692
	fsqrt x7, x7
	lw x68, 6(x68)
	bne x68, zero, pretrace_pixels_beqelse_b4694
# B4693
	fsub x68, zero, x7
	j pretrace_pixels_cont_b4695 # adhoc jump(2)
pretrace_pixels_beqelse_b4694:
# B4694
	mv x68, x7
pretrace_pixels_cont_b4695:
# B4695
	fsub x68, x68, x74
	fdiv x68, x68, x77
	sw x68, 0(x33)
	mv x68, x105
	j pretrace_pixels_cont_b4696 # adhoc jump(2)
pretrace_pixels_bfgtelse_b4691:
# B4691
	mv x68, zero
	j pretrace_pixels_cont_b4696 # adhoc jump(2)
pretrace_pixels_bfneqelse_b4681:
# B4681
	mv x68, zero
pretrace_pixels_cont_b4696:
# B4696
	addi x38, x38, 1
	bne x68, zero, pretrace_pixels_beqelse_b4698
# B4697
	lwr x31, x118, x31
	lw x31, 6(x31)
	beq x31, zero, pretrace_pixels_bneelse_b4732
	j	pretrace_pixels_beqelse_b4632 # moved need extra jump for 4632 at B4697
pretrace_pixels_bneelse_b4732:
# B4732
	addi x6, x6, 1
	j pretrace_pixels_loop_b4629 # loopback to while entry from B4732
pretrace_pixels_beqelse_b4698:
# B4698
	lw x7, 0(x33)
	bfle x7, zero, pretrace_pixels_bfgtelse_b4632
# B4702
	lw x71, 0(x24)
	bfle x71, x7, pretrace_pixels_bfgtelse_b4632
# B4704
	fadd x7, x7, x40
	lw x71, 0(x67)
	fmul x71, x71, x7
	fadd x69, x71, x69
	lw x71, 1(x67)
	fmul x71, x71, x7
	fadd x70, x71, x70
	lw x71, 2(x67)
	fmul x71, x71, x7
	fadd x71, x71, x72
	mv x75, x70
	mv x72, zero
	mv x76, x71
	mv x74, x69
	mv x73, x5
	j	pretrace_pixels_loop_b4705 # jumping over moved block
pretrace_pixels_bneelse_b4726:	#moved
# B4726
	addi x72, x72, 1
pretrace_pixels_loop_b4705:
# B4705
	lwr x77, x73, x72
	bne x77, x34, pretrace_pixels_beqelse_b4707
# B4706
	mv x78, x105
# B4728
	bne x78, zero, pretrace_pixels_beqelse_b4730
	j	pretrace_pixels_bfgtelse_b4632 # moved need extra jump for 4632 at B4728
pretrace_pixels_beqelse_b4707:
# B4707
	lwr x77, x118, x77
	lw x78, 5(x77)
	lw x78, 0(x78)
	fsub x78, x74, x78
	lw x79, 5(x77)
	lw x79, 1(x79)
	fsub x79, x75, x79
	lw x8, 5(x77)
	lw x8, 2(x8)
	fsub x8, x76, x8
	lw x80, 1(x77)
	bne x80, x105, pretrace_pixels_beqelse_b4709
# B4708
	fabs x78, x78
	lw x80, 4(x77)
	lw x80, 0(x80)
	bfle x80, x78, pretrace_pixels_bfgtelse_b4715
# B4711
	fabs x78, x79
	lw x79, 4(x77)
	lw x79, 1(x79)
	bfle x79, x78, pretrace_pixels_bfgtelse_b4715
# B4713
	fabs x78, x8
	lw x79, 4(x77)
	lw x79, 2(x79)
	fle x78, x79, x78
	xori x78, x78, 1
	mv x79, x78
# B4714
	bne x79, zero, pretrace_pixels_beqelse_b4716
pretrace_pixels_bfgtelse_b4715:
# B4715
	lw x77, 6(x77)
	xori x77, x77, 1
	j pretrace_pixels_cont_b4725 # adhoc jump(2)
pretrace_pixels_beqelse_b4716:
# B4716
	lw x77, 6(x77)
	j pretrace_pixels_cont_b4725 # adhoc jump(2)
pretrace_pixels_beqelse_b4709:
# B4709
	bne x80, x106, pretrace_pixels_beqelse_b4718
# B4717
	lw x80, 4(x77)
	lw x81, 0(x80)
	fmul x78, x81, x78
	lw x81, 1(x80)
	fmul x79, x81, x79
	fadd x78, x78, x79
	lw x79, 2(x80)
	fmul x79, x79, x8
	fadd x78, x78, x79
	lw x77, 6(x77)
	fle x78, zero, x78
	xori x78, x78, 1
	xor x77, x77, x78
	xori x77, x77, 1
	j pretrace_pixels_cont_b4725 # adhoc jump(2)
pretrace_pixels_beqelse_b4718:
# B4718
	fmul x80, x78, x78
	lw x81, 4(x77)
	lw x81, 0(x81)
	fmul x80, x80, x81
	fmul x81, x79, x79
	lw x82, 4(x77)
	lw x82, 1(x82)
	fmul x81, x81, x82
	fadd x80, x80, x81
	fmul x81, x8, x8
	lw x82, 4(x77)
	lw x82, 2(x82)
	fmul x81, x81, x82
	fadd x80, x80, x81
	lw x81, 3(x77)
	bne x81, zero, pretrace_pixels_beqelse_b4720
# B4719
	mv x78, x80
	j pretrace_pixels_cont_b4721 # adhoc jump(2)
pretrace_pixels_beqelse_b4720:
# B4720
	fmul x81, x79, x8
	lw x82, 9(x77)
	lw x82, 0(x82)
	fmul x81, x81, x82
	fadd x80, x80, x81
	fmul x8, x8, x78
	lw x81, 9(x77)
	lw x81, 1(x81)
	fmul x8, x8, x81
	fadd x8, x80, x8
	fmul x78, x78, x79
	lw x79, 9(x77)
	lw x79, 2(x79)
	fmul x78, x78, x79
	fadd x78, x8, x78
pretrace_pixels_cont_b4721:
# B4721
	lw x79, 1(x77)
	bne x79, x119, pretrace_pixels_beqelse_b4724
# B4722
	fsub x78, x78, x110
pretrace_pixels_beqelse_b4724:
# B4724
	lw x77, 6(x77)
	fle x78, zero, x78
	xori x78, x78, 1
	xor x77, x77, x78
	xori x77, x77, 1
pretrace_pixels_cont_b4725:
# B4725
	beq x77, zero, pretrace_pixels_bneelse_b4726
	j	pretrace_pixels_bfgtelse_b4632 # moved need extra jump for 4632 at B4725
pretrace_pixels_bfgtelse_b4733:
pretrace_pixels_bfneqelse_b4733:
pretrace_pixels_bneelse_b4733:
pretrace_pixels_cont_b4733:
# B4733
	addi x35, x35, 1
	j pretrace_pixels_loop_b4454 # loopback to while entry from B4733
pretrace_pixels_bneelse_b4734:
# B4734
	lw x31, 0(x24)
	lui x35, 777421
	addi x35, x35, -819
	fle x36, x31, x35
	lui x37, 314348
	addi x37, x37, -992
	bne x36, zero, pretrace_pixels_beqelse_b4738
# B4736
	fle x31, x37, x31
	xori x31, x31, 1
	mv x36, x31
# B4737
	bne x36, zero, pretrace_pixels_beqelse_b4739
pretrace_pixels_beqelse_b4738:
# B4738
	add x4, x10, x25
	sw x34, 0(x4)
	beq x25, zero, pretrace_pixels_bneelse_b5551
# B4741
	lw x10, 0(x27)
	lw x12, 0(x100)
	fmul x10, x10, x12
	lw x12, 1(x27)
	lw x13, 1(x100)
	fmul x12, x12, x13
	fadd x10, x10, x12
	lw x12, 2(x27)
	lw x100, 2(x100)
	fmul x100, x12, x100
	fadd x10, x10, x100
	fsub x10, zero, x10
	bfle x10, zero, pretrace_pixels_bfgtelse_b5551
# B4743
	fmul x100, x10, x10
	fmul x10, x100, x10
	fmul x10, x10, x26
	lw x100, 0(x11)
	fmul x10, x10, x100
	lw x100, 0(x107)
	fadd x100, x100, x10
	sw x100, 0(x107)
	lw x100, 1(x107)
	fadd x100, x100, x10
	sw x100, 1(x107)
	lw x100, 2(x107)
	fadd x10, x100, x10
	add x4, x107, x106
	sw x10, 0(x4)
	j pretrace_pixels_cont_b5551 # adhoc jump(2)
pretrace_pixels_beqelse_b4739:
# B4739
	lw x31, 0(x12)
	lwr x36, x118, x31
	lw x38, 2(x36)
	lw x5, 7(x36)
	lw x5, 0(x5)
	fmul x6, x5, x26
	lw x65, 1(x36)
	bne x65, x105, pretrace_pixels_beqelse_b4745
# B4744
	lw x65, 0(x15)
	sw zero, 0(x19)
	sw zero, 1(x19)
	sw zero, 2(x19)
	addi x65, x65, -1
	lwr x66, x27, x65
	bfeq x66, zero, pretrace_pixels_bfneqelse_b4747
# B4746
	bfle x66, zero, pretrace_pixels_bfgtelse_b4748
# B4749
	mv x67, x110
	j pretrace_pixels_cont_b4750 # adhoc jump(2)
pretrace_pixels_bfgtelse_b4748:
# B4748
	mv x67, x14
	j pretrace_pixels_cont_b4750 # adhoc jump(2)
pretrace_pixels_bfneqelse_b4747:
# B4747
	mv x67, zero
pretrace_pixels_cont_b4750:
# B4750
	fsub x66, zero, x67
	add x4, x19, x65
	sw x66, 0(x4)
	j pretrace_pixels_cont_b4761 # adhoc jump(2)
pretrace_pixels_beqelse_b4745:
# B4745
	bne x65, x106, pretrace_pixels_beqelse_b4752
# B4751
	lw x65, 4(x36)
	lw x65, 0(x65)
	fsub x65, zero, x65
	sw x65, 0(x19)
	lw x65, 4(x36)
	lw x65, 1(x65)
	fsub x65, zero, x65
	sw x65, 1(x19)
	lw x65, 4(x36)
	lw x65, 2(x65)
	fsub x65, zero, x65
	sw x65, 2(x19)
	j pretrace_pixels_cont_b4761 # adhoc jump(2)
pretrace_pixels_beqelse_b4752:
# B4752
	lw x65, 0(x13)
	lw x66, 5(x36)
	lw x66, 0(x66)
	fsub x65, x65, x66
	lw x66, 1(x13)
	lw x67, 5(x36)
	lw x67, 1(x67)
	fsub x66, x66, x67
	lw x67, 2(x13)
	lw x68, 5(x36)
	lw x68, 2(x68)
	fsub x67, x67, x68
	lw x68, 4(x36)
	lw x68, 0(x68)
	fmul x68, x65, x68
	lw x69, 4(x36)
	lw x69, 1(x69)
	fmul x69, x66, x69
	lw x7, 4(x36)
	lw x7, 2(x7)
	fmul x7, x67, x7
	lw x70, 3(x36)
	bne x70, zero, pretrace_pixels_beqelse_b4754
# B4753
	sw x68, 0(x19)
	sw x69, 1(x19)
	sw x7, 2(x19)
	j pretrace_pixels_cont_b4755 # adhoc jump(2)
pretrace_pixels_beqelse_b4754:
# B4754
	lw x70, 9(x36)
	lw x70, 2(x70)
	fmul x71, x66, x70
	lw x72, 9(x36)
	lw x72, 1(x72)
	fmul x73, x67, x72
	fadd x71, x71, x73
	fmul x71, x71, x16
	fadd x68, x68, x71
	sw x68, 0(x19)
	fmul x68, x65, x70
	lw x70, 9(x36)
	lw x70, 0(x70)
	fmul x67, x67, x70
	fadd x67, x68, x67
	fmul x67, x67, x16
	fadd x67, x69, x67
	sw x67, 1(x19)
	fmul x65, x65, x72
	fmul x66, x66, x70
	fadd x65, x65, x66
	fmul x65, x65, x16
	fadd x65, x7, x65
	sw x65, 2(x19)
pretrace_pixels_cont_b4755:
# B4755
	lw x65, 6(x36)
	lw x66, 0(x19)
	fmul x67, x66, x66
	lw x68, 1(x19)
	fmul x69, x68, x68
	fadd x67, x67, x69
	lw x69, 2(x19)
	fmul x7, x69, x69
	fadd x67, x67, x7
	fsqrt x67, x67
	bfeq x67, zero, pretrace_pixels_bfneqelse_b4757
# B4756
	bne x65, zero, pretrace_pixels_beqelse_b4759
# B4758
	fdiv x65, x110, x67
	j pretrace_pixels_cont_b4760 # adhoc jump(2)
pretrace_pixels_beqelse_b4759:
# B4759
	fdiv x65, x14, x67
	j pretrace_pixels_cont_b4760 # adhoc jump(2)
pretrace_pixels_bfneqelse_b4757:
# B4757
	mv x65, x110
pretrace_pixels_cont_b4760:
# B4760
	fmul x66, x66, x65
	sw x66, 0(x19)
	fmul x66, x68, x65
	sw x66, 1(x19)
	fmul x65, x69, x65
	sw x65, 2(x19)
pretrace_pixels_cont_b4761:
# B4761
	lw x65, 0(x13)
	sw x65, 0(x108)
	lw x66, 1(x13)
	sw x66, 1(x108)
	lw x67, 2(x13)
	sw x67, 2(x108)
	lw x68, 0(x36)
	lw x69, 8(x36)
	lw x69, 0(x69)
	sw x69, 0(x17)
	lw x69, 8(x36)
	lw x69, 1(x69)
	sw x69, 1(x17)
	lw x69, 8(x36)
	lw x69, 2(x69)
	sw x69, 2(x17)
	lui x69, 266752
	bne x68, x105, pretrace_pixels_beqelse_b4763
# B4762
	lw x68, 5(x36)
	lw x68, 0(x68)
	fsub x68, x65, x68
	lui x7, 251085
	addi x7, x7, -819
	fmul x70, x68, x7
	floor x70, x70
	lui x71, 268800
	fmul x70, x70, x71
	fsub x68, x68, x70
	fle x68, x69, x68
	xori x68, x68, 1
	lw x70, 5(x36)
	lw x70, 2(x70)
	fsub x70, x67, x70
	fmul x7, x70, x7
	floor x7, x7
	fmul x7, x7, x71
	fsub x7, x70, x7
	fle x69, x69, x7
	xori x69, x69, 1
	bne x68, zero, pretrace_pixels_beqelse_b4765
# B4764
	bne x69, zero, pretrace_pixels_beqelse_b4767
# B4766
	lui x68, 276464
	j pretrace_pixels_cont_b4770 # adhoc jump(2)
pretrace_pixels_beqelse_b4767:
# B4767
	mv x68, zero
	j pretrace_pixels_cont_b4770 # adhoc jump(2)
pretrace_pixels_beqelse_b4765:
# B4765
	bne x69, zero, pretrace_pixels_beqelse_b4769
# B4768
	mv x68, zero
	j pretrace_pixels_cont_b4770 # adhoc jump(2)
pretrace_pixels_beqelse_b4769:
# B4769
	lui x68, 276464
pretrace_pixels_cont_b4770:
# B4770
	sw x68, 1(x17)
	j pretrace_pixels_cont_b4846 # adhoc jump(2)
pretrace_pixels_beqelse_b4763:
# B4763
	lui x7, 265361
	addi x7, x7, -37
	lui x70, 262144
	lui x71, 263313
	addi x71, x71, -37
	lui x72, 261265
	addi x72, x72, -37
	lui x73, 259217
	addi x73, x73, -37
	lui x74, 778923
	addi x74, x74, -1364
	lui x75, 245896
	addi x75, x75, 1638
	lui x76, 758998
	addi x76, x76, 1206
	lui x77, 782336
	lui x78, 250538
	addi x78, x78, 1929
	lui x79, 764728
	addi x79, x79, 262
	lui x8, 276464
	bne x68, x106, pretrace_pixels_beqelse_b4772
# B4771
	lui x68, 256000
	fmul x68, x66, x68
	fle x69, x68, zero
	xori x69, x69, 1
	fabs x68, x68
	mv x81, x7
	mv x80, x68
pretrace_pixels_loop_b4773:
# B4773
	bfle x80, x81, pretrace_pixels_bfgtelse_b4776
# B4774
	fmul x81, x81, x70
	j pretrace_pixels_loop_b4773 # loopback to while entry from B4774
pretrace_pixels_bfgtelse_b4776:
# B4776
	mv x82, x68
	mv x83, x81
	j	pretrace_pixels_loop_b4777 # jumping over moved block
pretrace_pixels_bfgtelse_b4781:	#moved
# B4781
	mv x83, x68
pretrace_pixels_loop_b4777:
# B4777
	bfle x7, x82, pretrace_pixels_bfgtelse_b4779
# B4782
	fle x68, x71, x82
	bne x68, zero, pretrace_pixels_beqelse_b4784
# B4783
	mv x7, x82
	j pretrace_pixels_cont_b4785 # adhoc jump(2)
pretrace_pixels_beqelse_b4784:
# B4784
	fsub x7, x82, x71
pretrace_pixels_cont_b4785:
# B4785
	xor x68, x68, x69
	bfle x72, x7, pretrace_pixels_bfgtelse_b4787
# B4786
	mv x69, x7
	j pretrace_pixels_cont_b4788 # adhoc jump(2)
pretrace_pixels_bfgtelse_b4787:
# B4787
	fsub x69, x71, x7
pretrace_pixels_cont_b4788:
# B4788
	bfle x73, x69, pretrace_pixels_bfgtelse_b4790
# B4789
	fmul x7, x69, x69
	fmul x70, x7, x76
	fadd x70, x75, x70
	fmul x70, x7, x70
	fadd x70, x74, x70
	fmul x7, x7, x70
	fadd x7, x110, x7
	fmul x69, x69, x7
	j pretrace_pixels_cont_b4791 # adhoc jump(2)
pretrace_pixels_bfgtelse_b4790:
# B4790
	fsub x69, x72, x69
	fmul x69, x69, x69
	fmul x7, x69, x79
	fadd x7, x78, x7
	fmul x7, x69, x7
	fadd x7, x77, x7
	fmul x69, x69, x7
	fadd x69, x110, x69
pretrace_pixels_cont_b4791:
# B4791
	fle x7, x69, zero
	beq x68, x7, pretrace_pixels_bneelse_b4793
# B4792
	mv x68, x69
	j pretrace_pixels_cont_b4794 # adhoc jump(2)
pretrace_pixels_bneelse_b4793:
# B4793
	fsub x68, zero, x69
pretrace_pixels_cont_b4794:
# B4794
	fmul x68, x68, x68
	fmul x69, x8, x68
	sw x69, 0(x17)
	fsub x68, x110, x68
	fmul x68, x8, x68
	sw x68, 1(x17)
	j pretrace_pixels_cont_b4846 # adhoc jump(2)
pretrace_pixels_bfgtelse_b4779:
# B4779
	fdiv x68, x83, x70
	bfle x82, x83, pretrace_pixels_bfgtelse_b4781
# B4780
	fsub x82, x82, x83
	mv x83, x68
	j pretrace_pixels_loop_b4777 # loopback to while entry from B4780
pretrace_pixels_beqelse_b4772:
# B4772
	lui x80, 263313
	addi x80, x80, -37
	bne x68, x119, pretrace_pixels_beqelse_b4796
# B4795
	lw x68, 5(x36)
	lw x68, 0(x68)
	fsub x68, x65, x68
	lw x81, 5(x36)
	lw x81, 2(x81)
	fsub x81, x67, x81
	fmul x68, x68, x68
	fmul x81, x81, x81
	fadd x68, x68, x81
	fsqrt x68, x68
	fdiv x68, x68, x69
	floor x69, x68
	fsub x68, x68, x69
	fmul x68, x68, x80
	fabs x68, x68
	mv x80, x7
	mv x69, x68
pretrace_pixels_loop_b4797:
# B4797
	bfle x69, x80, pretrace_pixels_bfgtelse_b4800
# B4798
	fmul x80, x80, x70
	j pretrace_pixels_loop_b4797 # loopback to while entry from B4798
pretrace_pixels_bfgtelse_b4800:
# B4800
	mv x82, x80
	mv x81, x68
	j	pretrace_pixels_loop_b4801 # jumping over moved block
pretrace_pixels_bfgtelse_b4805:	#moved
# B4805
	mv x82, x68
pretrace_pixels_loop_b4801:
# B4801
	bfle x7, x81, pretrace_pixels_bfgtelse_b4803
# B4806
	fle x68, x71, x81
	bne x68, zero, pretrace_pixels_beqelse_b4808
# B4807
	mv x69, x81
	j pretrace_pixels_cont_b4809 # adhoc jump(2)
pretrace_pixels_beqelse_b4808:
# B4808
	fsub x69, x81, x71
pretrace_pixels_cont_b4809:
# B4809
	xori x68, x68, 1
	fle x7, x72, x69
	bne x7, zero, pretrace_pixels_beqelse_b4811
	j pretrace_pixels_cont_b4812 # adhoc jump(3)
pretrace_pixels_beqelse_b4811:
# B4811
	fsub x69, x71, x69
pretrace_pixels_cont_b4812:
# B4812
	xor x68, x7, x68
	bfle x73, x69, pretrace_pixels_bfgtelse_b4814
pretrace_pixels_cont_b4813:
# B4813
	fmul x69, x69, x69
	fmul x7, x69, x79
	fadd x7, x78, x7
	fmul x7, x69, x7
	fadd x7, x77, x7
	fmul x69, x69, x7
	fadd x69, x110, x69
	j pretrace_pixels_cont_b4815 # adhoc jump(2)
pretrace_pixels_bfgtelse_b4814:
# B4814
	fsub x69, x72, x69
	fmul x7, x69, x69
	fmul x70, x7, x76
	fadd x70, x75, x70
	fmul x70, x7, x70
	fadd x70, x74, x70
	fmul x7, x7, x70
	fadd x7, x110, x7
	fmul x69, x69, x7
pretrace_pixels_cont_b4815:
# B4815
	fle x7, x69, zero
	beq x68, x7, pretrace_pixels_bneelse_b4817
# B4816
	mv x68, x69
	j pretrace_pixels_cont_b4818 # adhoc jump(2)
pretrace_pixels_bneelse_b4817:
# B4817
	fsub x68, zero, x69
pretrace_pixels_cont_b4818:
# B4818
	fmul x68, x68, x68
	fmul x69, x68, x8
	sw x69, 1(x17)
	fsub x68, x110, x68
	fmul x68, x68, x8
	sw x68, 2(x17)
	j pretrace_pixels_cont_b4846 # adhoc jump(2)
pretrace_pixels_bfgtelse_b4803:
# B4803
	fdiv x68, x82, x70
	bfle x81, x82, pretrace_pixels_bfgtelse_b4805
# B4804
	fsub x81, x81, x82
	mv x82, x68
	j pretrace_pixels_loop_b4801 # loopback to while entry from B4804
pretrace_pixels_beqelse_b4796:
# B4796
	bne x68, x117, pretrace_pixels_beqelse_b4846
# B4819
	lw x68, 5(x36)
	lw x68, 0(x68)
	fsub x68, x65, x68
	lw x69, 4(x36)
	lw x69, 0(x69)
	fsqrt x69, x69
	fmul x68, x68, x69
	lw x69, 5(x36)
	lw x69, 2(x69)
	fsub x69, x67, x69
	lw x7, 4(x36)
	lw x7, 2(x7)
	fsqrt x7, x7
	fmul x69, x69, x7
	fmul x7, x68, x68
	fmul x70, x69, x69
	fadd x7, x7, x70
	fabs x70, x68
	lui x71, 232731
	addi x71, x71, 1815
	fle x70, x71, x70
	lui x74, 257536
	lui x75, 780971
	addi x75, x75, -1366
	lui x76, 255181
	addi x76, x76, -819
	lui x77, 778533
	addi x77, x77, -1755
	lui x78, 253497
	addi x78, x78, -456
	lui x79, 777085
	addi x79, x79, 1646
	lui x81, 251742
	addi x81, x81, 1989
	lui x82, 262592
	lui x83, 270080
	beq x70, zero, pretrace_pixels_bneelse_b4822
# B4821
	fdiv x68, x69, x68
	fabs x68, x68
	fle x69, x68, zero
	xori x69, x69, 1
	fabs x70, x68
	bfle x74, x70, pretrace_pixels_bfgtelse_b4824
# B4823
	fmul x69, x68, x68
	fmul x70, x69, x81
	fadd x70, x79, x70
	fmul x70, x69, x70
	fadd x70, x78, x70
	fmul x70, x69, x70
	fadd x70, x77, x70
	fmul x70, x69, x70
	fadd x70, x76, x70
	fmul x70, x69, x70
	fadd x70, x75, x70
	fmul x69, x69, x70
	fadd x69, x110, x69
	fmul x68, x68, x69
	j pretrace_pixels_cont_b4830 # adhoc jump(2)
pretrace_pixels_bfgtelse_b4824:
# B4824
	bfle x82, x70, pretrace_pixels_bfgtelse_b4826
# B4825
	fsub x68, x70, x110
	fadd x70, x70, x110
	fdiv x68, x68, x70
	fmul x70, x68, x68
	fmul x84, x70, x81
	fadd x84, x79, x84
	fmul x84, x70, x84
	fadd x84, x78, x84
	fmul x84, x70, x84
	fadd x84, x77, x84
	fmul x84, x70, x84
	fadd x84, x76, x84
	fmul x84, x70, x84
	fadd x84, x75, x84
	fmul x70, x70, x84
	fadd x70, x110, x70
	fmul x68, x68, x70
	fadd x68, x73, x68
	j pretrace_pixels_cont_b4827 # adhoc jump(2)
pretrace_pixels_bfgtelse_b4826:
# B4826
	fdiv x68, x110, x70
	fmul x70, x68, x68
	fmul x84, x70, x81
	fadd x84, x79, x84
	fmul x84, x70, x84
	fadd x84, x78, x84
	fmul x84, x70, x84
	fadd x84, x77, x84
	fmul x84, x70, x84
	fadd x84, x76, x84
	fmul x84, x70, x84
	fadd x84, x75, x84
	fmul x70, x70, x84
	fadd x70, x110, x70
	fmul x68, x68, x70
	fsub x68, x72, x68
pretrace_pixels_cont_b4827:
# B4827
	bne x69, zero, pretrace_pixels_beqelse_b4830
# B4828
	fsub x68, zero, x68
pretrace_pixels_beqelse_b4830:
pretrace_pixels_cont_b4830:
# B4830
	fmul x68, x68, x83
	fdiv x68, x68, x80
	j pretrace_pixels_cont_b4831 # adhoc jump(2)
pretrace_pixels_bneelse_b4822:
# B4822
	lui x68, 268032
pretrace_pixels_cont_b4831:
# B4831
	floor x69, x68
	fsub x68, x68, x69
	lw x69, 5(x36)
	lw x69, 1(x69)
	fsub x69, x66, x69
	lw x70, 4(x36)
	lw x70, 1(x70)
	fsqrt x70, x70
	fmul x69, x69, x70
	fabs x70, x7
	bfle x71, x70, pretrace_pixels_bfgtelse_b4832
# B4833
	lui x69, 268032
	j pretrace_pixels_cont_b4842 # adhoc jump(2)
pretrace_pixels_bfgtelse_b4832:
# B4832
	fdiv x69, x69, x7
	fabs x69, x69
	fle x7, x69, zero
	xori x7, x7, 1
	fabs x70, x69
	bfle x74, x70, pretrace_pixels_bfgtelse_b4835
# B4834
	fmul x7, x69, x69
	fmul x70, x7, x81
	fadd x70, x79, x70
	fmul x70, x7, x70
	fadd x70, x78, x70
	fmul x70, x7, x70
	fadd x70, x77, x70
	fmul x70, x7, x70
	fadd x70, x76, x70
	fmul x70, x7, x70
	fadd x70, x75, x70
	fmul x7, x7, x70
	fadd x7, x110, x7
	fmul x69, x69, x7
	j pretrace_pixels_cont_b4841 # adhoc jump(2)
pretrace_pixels_bfgtelse_b4835:
# B4835
	bfle x82, x70, pretrace_pixels_bfgtelse_b4837
# B4836
	fsub x69, x70, x110
	fadd x70, x70, x110
	fdiv x69, x69, x70
	fmul x70, x69, x69
	fmul x71, x70, x81
	fadd x71, x79, x71
	fmul x71, x70, x71
	fadd x71, x78, x71
	fmul x71, x70, x71
	fadd x71, x77, x71
	fmul x71, x70, x71
	fadd x71, x76, x71
	fmul x71, x70, x71
	fadd x71, x75, x71
	fmul x70, x70, x71
	fadd x70, x110, x70
	fmul x69, x69, x70
	fadd x69, x73, x69
	j pretrace_pixels_cont_b4838 # adhoc jump(2)
pretrace_pixels_bfgtelse_b4837:
# B4837
	fdiv x69, x110, x70
	fmul x70, x69, x69
	fmul x71, x70, x81
	fadd x71, x79, x71
	fmul x71, x70, x71
	fadd x71, x78, x71
	fmul x71, x70, x71
	fadd x71, x77, x71
	fmul x71, x70, x71
	fadd x71, x76, x71
	fmul x71, x70, x71
	fadd x71, x75, x71
	fmul x70, x70, x71
	fadd x70, x110, x70
	fmul x69, x69, x70
	fsub x69, x72, x69
pretrace_pixels_cont_b4838:
# B4838
	bne x7, zero, pretrace_pixels_beqelse_b4841
# B4839
	fsub x69, zero, x69
pretrace_pixels_beqelse_b4841:
pretrace_pixels_cont_b4841:
# B4841
	fmul x69, x69, x83
	fdiv x69, x69, x80
pretrace_pixels_cont_b4842:
# B4842
	floor x7, x69
	fsub x69, x69, x7
	lui x7, 254362
	addi x7, x7, -1638
	fsub x68, x16, x68
	fmul x68, x68, x68
	fsub x68, x7, x68
	fsub x69, x16, x69
	fmul x69, x69, x69
	fsub x68, x68, x69
	bfle zero, x68, pretrace_pixels_bfgtelse_b4843
# B4844
	mv x69, zero
	j pretrace_pixels_cont_b4845 # adhoc jump(2)
pretrace_pixels_bfgtelse_b4843:
# B4843
	mv x69, x68
pretrace_pixels_cont_b4845:
# B4845
	fmul x68, x8, x69
	lui x69, 256410
	addi x69, x69, -1638
	fdiv x68, x68, x69
	sw x68, 2(x17)
pretrace_pixels_beqelse_b4846:
pretrace_pixels_cont_b4846:
# B4846
	slli x31, x31, 2
	lw x68, 0(x15)
	add x31, x31, x68
	add x4, x10, x25
	sw x31, 0(x4)
	lw x31, 1(x28)
	lwr x31, x31, x25
	sw x65, 0(x31)
	sw x66, 1(x31)
	sw x67, 2(x31)
	lw x31, 3(x28)
	bfle x16, x5, pretrace_pixels_bfgtelse_b4847
# B4848
	add x4, x31, x25
	sw zero, 0(x4)
	j pretrace_pixels_cont_b4849 # adhoc jump(2)
pretrace_pixels_bfgtelse_b4847:
# B4847
	add x4, x31, x25
	sw x105, 0(x4)
	lw x31, 4(x28)
	lwr x65, x31, x25
	lw x66, 0(x17)
	sw x66, 0(x65)
	lw x66, 1(x17)
	sw x66, 1(x65)
	lw x66, 2(x17)
	sw x66, 2(x65)
	lwr x31, x31, x25
	fdiv x65, x110, x18
	fmul x65, x65, x6
	lw x66, 0(x31)
	fmul x66, x66, x65
	sw x66, 0(x31)
	lw x66, 1(x31)
	fmul x66, x66, x65
	sw x66, 1(x31)
	lw x66, 2(x31)
	fmul x65, x66, x65
	sw x65, 2(x31)
	lw x31, 7(x28)
	lwr x31, x31, x25
	lw x65, 0(x19)
	sw x65, 0(x31)
	lw x65, 1(x19)
	sw x65, 1(x31)
	lw x65, 2(x19)
	sw x65, 2(x31)
pretrace_pixels_cont_b4849:
# B4849
	lw x31, 0(x27)
	lw x65, 0(x19)
	fmul x31, x31, x65
	lw x66, 1(x27)
	lw x67, 1(x19)
	fmul x66, x66, x67
	fadd x31, x31, x66
	lw x66, 2(x27)
	lw x68, 2(x19)
	fmul x66, x66, x68
	fadd x31, x31, x66
	fmul x31, x20, x31
	lw x66, 0(x27)
	fmul x65, x31, x65
	fadd x65, x66, x65
	sw x65, 0(x27)
	lw x65, 1(x27)
	fmul x66, x31, x67
	fadd x65, x65, x66
	sw x65, 1(x27)
	lw x65, 2(x27)
	fmul x31, x31, x68
	fadd x31, x65, x31
	sw x31, 2(x27)
	lw x31, 7(x36)
	lw x31, 1(x31)
	fmul x31, x26, x31
	lw x36, 0(x21)
	la x65, min_caml_light_dirvec
	mv x66, zero
	mv x67, x36
pretrace_pixels_bneelse_b4850:
pretrace_pixels_loop_b4850:
# B4850
	lwr x36, x67, x66
	lw x68, 0(x36)
	lui x69, 779469
	addi x69, x69, -819
	beq x68, x34, pretrace_pixels_bneelse_b5076
# B4852
	bne x68, x32, pretrace_pixels_beqelse_b4854
# B4853
	mv x68, x105
	j pretrace_pixels_cont_b4986 # adhoc jump(2)
pretrace_pixels_beqelse_b4854:
# B4854
	lwr x7, x118, x68
	lw x70, 0(x13)
	lw x71, 5(x7)
	lw x71, 0(x71)
	fsub x70, x70, x71
	lw x71, 1(x13)
	lw x72, 5(x7)
	lw x72, 1(x72)
	fsub x71, x71, x72
	lw x72, 2(x13)
	lw x73, 5(x7)
	lw x73, 2(x73)
	fsub x72, x72, x73
	lw x73, 1(x65)
	lwr x68, x73, x68
	lw x73, 1(x7)
	bne x73, x105, pretrace_pixels_beqelse_b4856
# B4855
	lw x73, 0(x65)
	lw x74, 0(x68)
	fsub x74, x74, x70
	lw x75, 1(x68)
	fmul x74, x74, x75
	lw x76, 1(x73)
	fmul x77, x74, x76
	fadd x77, x77, x71
	fabs x77, x77
	lw x78, 4(x7)
	lw x78, 1(x78)
	bfle x78, x77, pretrace_pixels_bfgtelse_b4862
# B4858
	lw x77, 2(x73)
	fmul x77, x74, x77
	fadd x77, x77, x72
	fabs x77, x77
	lw x78, 4(x7)
	lw x78, 2(x78)
	bfle x78, x77, pretrace_pixels_bfgtelse_b4862
# B4860
	feq x75, x75, zero
	xori x75, x75, 1
	mv x77, x75
# B4861
	bne x77, zero, pretrace_pixels_beqelse_b4863
pretrace_pixels_bfgtelse_b4862:
# B4862
	lw x74, 2(x68)
	fsub x74, x74, x71
	lw x75, 3(x68)
	fmul x74, x74, x75
	lw x77, 0(x73)
	fmul x78, x74, x77
	fadd x78, x78, x70
	fabs x78, x78
	lw x79, 4(x7)
	lw x79, 0(x79)
	bfle x79, x78, pretrace_pixels_bfgtelse_b4869
# B4865
	lw x73, 2(x73)
	fmul x73, x74, x73
	fadd x73, x73, x72
	fabs x73, x73
	lw x78, 4(x7)
	lw x78, 2(x78)
	bfle x78, x73, pretrace_pixels_bfgtelse_b4869
# B4867
	feq x73, x75, zero
	xori x73, x73, 1
	mv x75, x73
# B4868
	bne x75, zero, pretrace_pixels_beqelse_b4870
pretrace_pixels_bfgtelse_b4869:
# B4869
	lw x73, 4(x68)
	fsub x72, x73, x72
	lw x68, 5(x68)
	fmul x72, x72, x68
	fmul x73, x72, x77
	fadd x70, x73, x70
	fabs x70, x70
	lw x73, 4(x7)
	lw x73, 0(x73)
	bfle x73, x70, pretrace_pixels_bfgtelse_b4896
# B4872
	fmul x70, x72, x76
	fadd x70, x70, x71
	fabs x70, x70
	lw x7, 4(x7)
	lw x7, 1(x7)
	bfle x7, x70, pretrace_pixels_bfgtelse_b4896
# B4874
	feq x68, x68, zero
	xori x68, x68, 1
	mv x7, x68
# B4875
	bne x7, zero, pretrace_pixels_beqelse_b4877
	j pretrace_pixels_cont_b4896 # adhoc jump(3)
pretrace_pixels_beqelse_b4877:
# B4877
	sw x72, 0(x33)
	mv x68, x119
	j pretrace_pixels_cont_b4895 # adhoc jump(2)
pretrace_pixels_beqelse_b4870:
# B4870
	sw x74, 0(x33)
	mv x68, x106
	j pretrace_pixels_cont_b4895 # adhoc jump(2)
pretrace_pixels_beqelse_b4863:
# B4863
	sw x74, 0(x33)
	mv x68, x105
	j pretrace_pixels_cont_b4895 # adhoc jump(2)
pretrace_pixels_beqelse_b4856:
# B4856
	bne x73, x106, pretrace_pixels_beqelse_b4879
# B4878
	lw x7, 0(x68)
	bfle zero, x7, pretrace_pixels_bfgtelse_b4896
# B4881
	lw x7, 1(x68)
	fmul x7, x7, x70
	lw x70, 2(x68)
	fmul x70, x70, x71
	fadd x7, x7, x70
	lw x68, 3(x68)
	fmul x68, x68, x72
	fadd x68, x7, x68
	sw x68, 0(x33)
	mv x68, x105
	j pretrace_pixels_cont_b4895 # adhoc jump(2)
pretrace_pixels_beqelse_b4879:
# B4879
	lw x73, 0(x68)
	bfeq x73, zero, pretrace_pixels_bfneqelse_b4896
# B4882
	lw x74, 1(x68)
	fmul x74, x74, x70
	lw x75, 2(x68)
	fmul x75, x75, x71
	fadd x74, x74, x75
	lw x75, 3(x68)
	fmul x75, x75, x72
	fadd x74, x74, x75
	fmul x75, x70, x70
	lw x76, 4(x7)
	lw x76, 0(x76)
	fmul x75, x75, x76
	fmul x76, x71, x71
	lw x77, 4(x7)
	lw x77, 1(x77)
	fmul x76, x76, x77
	fadd x75, x75, x76
	fmul x76, x72, x72
	lw x77, 4(x7)
	lw x77, 2(x77)
	fmul x76, x76, x77
	fadd x75, x75, x76
	lw x76, 3(x7)
	bne x76, zero, pretrace_pixels_beqelse_b4885
# B4884
	mv x70, x75
	j pretrace_pixels_cont_b4886 # adhoc jump(2)
pretrace_pixels_beqelse_b4885:
# B4885
	fmul x76, x71, x72
	lw x77, 9(x7)
	lw x77, 0(x77)
	fmul x76, x76, x77
	fadd x75, x75, x76
	fmul x72, x72, x70
	lw x76, 9(x7)
	lw x76, 1(x76)
	fmul x72, x72, x76
	fadd x72, x75, x72
	fmul x70, x70, x71
	lw x71, 9(x7)
	lw x71, 2(x71)
	fmul x70, x70, x71
	fadd x70, x72, x70
pretrace_pixels_cont_b4886:
# B4886
	lw x71, 1(x7)
	bne x71, x119, pretrace_pixels_beqelse_b4889
# B4887
	fsub x70, x70, x110
pretrace_pixels_beqelse_b4889:
# B4889
	fmul x71, x74, x74
	fmul x70, x73, x70
	fsub x70, x71, x70
	bfle x70, zero, pretrace_pixels_bfgtelse_b4896
# B4891
	lw x7, 6(x7)
	fsqrt x70, x70
	bne x7, zero, pretrace_pixels_beqelse_b4893
# B4892
	fsub x7, x74, x70
	lw x68, 4(x68)
	fmul x68, x7, x68
	sw x68, 0(x33)
	j pretrace_pixels_cont_b4894 # adhoc jump(2)
pretrace_pixels_beqelse_b4893:
# B4893
	fadd x7, x74, x70
	lw x68, 4(x68)
	fmul x68, x7, x68
	sw x68, 0(x33)
pretrace_pixels_cont_b4894:
# B4894
	mv x68, x105
pretrace_pixels_cont_b4895:
# B4895
	bne x68, zero, pretrace_pixels_beqelse_b4897
pretrace_pixels_bfgtelse_b4896:
pretrace_pixels_bfneqelse_b4896:
pretrace_pixels_cont_b4896:
# B4896
	mv x68, zero
	j pretrace_pixels_cont_b4986 # adhoc jump(2)
pretrace_pixels_beqelse_b4897:
# B4897
	lw x68, 0(x33)
	bfle x35, x68, pretrace_pixels_bfgtelse_b4898
# B4899
	mv x70, x36
	mv x7, x105
pretrace_pixels_loop_b4900:
# B4900
	lwr x68, x70, x7
	beq x68, x34, pretrace_pixels_bneelse_b4984
# B4902
	lwr x68, x39, x68
	mv x72, x68
	mv x71, zero
pretrace_pixels_beqelse_b4903:
pretrace_pixels_loop_b4903:
# B4903
	lwr x68, x72, x71
	beq x68, x34, pretrace_pixels_bneelse_b4981
# B4905
	lwr x68, x72, x71
	lwr x73, x118, x68
	lw x74, 0(x13)
	lw x75, 5(x73)
	lw x75, 0(x75)
	fsub x75, x74, x75
	lw x76, 1(x13)
	lw x77, 5(x73)
	lw x77, 1(x77)
	fsub x77, x76, x77
	lw x78, 2(x13)
	lw x79, 5(x73)
	lw x79, 2(x79)
	fsub x79, x78, x79
	lw x8, 1(x65)
	lwr x8, x8, x68
	lw x80, 1(x73)
	bne x80, x105, pretrace_pixels_beqelse_b4907
# B4906
	lw x80, 0(x65)
	lw x81, 0(x8)
	fsub x81, x81, x75
	lw x82, 1(x8)
	fmul x81, x81, x82
	lw x83, 1(x80)
	fmul x84, x81, x83
	fadd x84, x84, x77
	fabs x84, x84
	lw x85, 4(x73)
	lw x85, 1(x85)
	bfle x85, x84, pretrace_pixels_bfgtelse_b4913
# B4909
	lw x84, 2(x80)
	fmul x84, x81, x84
	fadd x84, x84, x79
	fabs x84, x84
	lw x85, 4(x73)
	lw x85, 2(x85)
	bfle x85, x84, pretrace_pixels_bfgtelse_b4913
# B4911
	feq x82, x82, zero
	xori x82, x82, 1
	mv x84, x82
# B4912
	bne x84, zero, pretrace_pixels_beqelse_b4914
pretrace_pixels_bfgtelse_b4913:
# B4913
	lw x81, 2(x8)
	fsub x81, x81, x77
	lw x82, 3(x8)
	fmul x81, x81, x82
	lw x84, 0(x80)
	fmul x85, x81, x84
	fadd x85, x85, x75
	fabs x85, x85
	lw x86, 4(x73)
	lw x86, 0(x86)
	bfle x86, x85, pretrace_pixels_bfgtelse_b4920
# B4916
	lw x80, 2(x80)
	fmul x80, x81, x80
	fadd x80, x80, x79
	fabs x80, x80
	lw x85, 4(x73)
	lw x85, 2(x85)
	bfle x85, x80, pretrace_pixels_bfgtelse_b4920
# B4918
	feq x80, x82, zero
	xori x80, x80, 1
	mv x82, x80
# B4919
	bne x82, zero, pretrace_pixels_beqelse_b4921
pretrace_pixels_bfgtelse_b4920:
# B4920
	lw x80, 4(x8)
	fsub x79, x80, x79
	lw x8, 5(x8)
	fmul x79, x79, x8
	fmul x80, x79, x84
	fadd x75, x80, x75
	fabs x75, x75
	lw x80, 4(x73)
	lw x80, 0(x80)
	bfle x80, x75, pretrace_pixels_bfgtelse_b4927
# B4923
	fmul x75, x79, x83
	fadd x75, x75, x77
	fabs x75, x75
	lw x73, 4(x73)
	lw x73, 1(x73)
	bfle x73, x75, pretrace_pixels_bfgtelse_b4927
# B4925
	feq x73, x8, zero
	xori x73, x73, 1
	mv x75, x73
# B4926
	bne x75, zero, pretrace_pixels_beqelse_b4928
pretrace_pixels_bfgtelse_b4927:
# B4927
	mv x73, zero
	j pretrace_pixels_cont_b4946 # adhoc jump(2)
pretrace_pixels_beqelse_b4928:
# B4928
	sw x79, 0(x33)
	mv x73, x119
	j pretrace_pixels_cont_b4946 # adhoc jump(2)
pretrace_pixels_beqelse_b4921:
# B4921
	sw x81, 0(x33)
	mv x73, x106
	j pretrace_pixels_cont_b4946 # adhoc jump(2)
pretrace_pixels_beqelse_b4914:
# B4914
	sw x81, 0(x33)
	mv x73, x105
	j pretrace_pixels_cont_b4946 # adhoc jump(2)
pretrace_pixels_beqelse_b4907:
# B4907
	bne x80, x106, pretrace_pixels_beqelse_b4930
# B4929
	lw x73, 0(x8)
	bfle zero, x73, pretrace_pixels_bfgtelse_b4931
# B4932
	lw x73, 1(x8)
	fmul x73, x73, x75
	lw x75, 2(x8)
	fmul x75, x75, x77
	fadd x73, x73, x75
	lw x75, 3(x8)
	fmul x75, x75, x79
	fadd x73, x73, x75
	sw x73, 0(x33)
	mv x73, x105
	j pretrace_pixels_cont_b4946 # adhoc jump(2)
pretrace_pixels_bfgtelse_b4931:
# B4931
	mv x73, zero
	j pretrace_pixels_cont_b4946 # adhoc jump(2)
pretrace_pixels_beqelse_b4930:
# B4930
	lw x80, 0(x8)
	bfeq x80, zero, pretrace_pixels_bfneqelse_b4934
# B4933
	lw x81, 1(x8)
	fmul x81, x81, x75
	lw x82, 2(x8)
	fmul x82, x82, x77
	fadd x81, x81, x82
	lw x82, 3(x8)
	fmul x82, x82, x79
	fadd x81, x81, x82
	fmul x82, x75, x75
	lw x83, 4(x73)
	lw x83, 0(x83)
	fmul x82, x82, x83
	fmul x83, x77, x77
	lw x84, 4(x73)
	lw x84, 1(x84)
	fmul x83, x83, x84
	fadd x82, x82, x83
	fmul x83, x79, x79
	lw x84, 4(x73)
	lw x84, 2(x84)
	fmul x83, x83, x84
	fadd x82, x82, x83
	lw x83, 3(x73)
	bne x83, zero, pretrace_pixels_beqelse_b4936
# B4935
	mv x75, x82
	j pretrace_pixels_cont_b4937 # adhoc jump(2)
pretrace_pixels_beqelse_b4936:
# B4936
	fmul x83, x77, x79
	lw x84, 9(x73)
	lw x84, 0(x84)
	fmul x83, x83, x84
	fadd x82, x82, x83
	fmul x79, x79, x75
	lw x83, 9(x73)
	lw x83, 1(x83)
	fmul x79, x79, x83
	fadd x79, x82, x79
	fmul x75, x75, x77
	lw x77, 9(x73)
	lw x77, 2(x77)
	fmul x75, x75, x77
	fadd x75, x79, x75
pretrace_pixels_cont_b4937:
# B4937
	lw x77, 1(x73)
	bne x77, x119, pretrace_pixels_beqelse_b4940
# B4938
	fsub x75, x75, x110
pretrace_pixels_beqelse_b4940:
# B4940
	fmul x77, x81, x81
	fmul x75, x80, x75
	fsub x75, x77, x75
	bfle x75, zero, pretrace_pixels_bfgtelse_b4941
# B4942
	lw x73, 6(x73)
	fsqrt x75, x75
	bne x73, zero, pretrace_pixels_beqelse_b4944
# B4943
	fsub x73, x81, x75
	lw x75, 4(x8)
	fmul x73, x73, x75
	sw x73, 0(x33)
	j pretrace_pixels_cont_b4945 # adhoc jump(2)
pretrace_pixels_beqelse_b4944:
# B4944
	fadd x73, x81, x75
	lw x75, 4(x8)
	fmul x73, x73, x75
	sw x73, 0(x33)
pretrace_pixels_cont_b4945:
# B4945
	mv x73, x105
	j pretrace_pixels_cont_b4946 # adhoc jump(2)
pretrace_pixels_bfgtelse_b4941:
# B4941
	mv x73, zero
	j pretrace_pixels_cont_b4946 # adhoc jump(2)
pretrace_pixels_bfneqelse_b4934:
# B4934
	mv x73, zero
pretrace_pixels_cont_b4946:
# B4946
	lw x75, 0(x33)
	bne x73, zero, pretrace_pixels_beqelse_b4948
# B4947
	mv x73, zero
	j pretrace_pixels_cont_b4949 # adhoc jump(2)
pretrace_pixels_beqelse_b4948:
# B4948
	fle x73, x69, x75
	xori x73, x73, 1
pretrace_pixels_cont_b4949:
# B4949
	addi x71, x71, 1
	bne x73, zero, pretrace_pixels_beqelse_b4951
# B4950
	lwr x68, x118, x68
	lw x68, 6(x68)
	beq x68, zero, pretrace_pixels_bneelse_b4981
	j	pretrace_pixels_beqelse_b4903 # moved need extra jump for 4903 at B4950
pretrace_pixels_beqelse_b4951:
# B4951
	fadd x68, x75, x40
	lw x73, 0(x100)
	fmul x73, x73, x68
	fadd x73, x73, x74
	lw x74, 1(x100)
	fmul x74, x74, x68
	fadd x74, x74, x76
	lw x75, 2(x100)
	fmul x68, x75, x68
	fadd x68, x68, x78
	mv x77, x73
	mv x76, x72
	mv x78, x74
	mv x79, x68
	mv x75, zero
	j	pretrace_pixels_loop_b4954 # jumping over moved block
pretrace_pixels_bneelse_b4975:	#moved
# B4975
	addi x75, x75, 1
pretrace_pixels_loop_b4954:
# B4954
	lwr x68, x76, x75
	bne x68, x34, pretrace_pixels_beqelse_b4956
# B4955
	mv x73, x105
# B4977
	bne x73, zero, pretrace_pixels_beqelse_b4979
	j	pretrace_pixels_beqelse_b4903 # moved need extra jump for 4903 at B4977
pretrace_pixels_beqelse_b4979:
# B4979
	mv x68, x105
pretrace_pixels_cont_b4980:
# B4980
	bne x68, zero, pretrace_pixels_beqelse_b4982
pretrace_pixels_bneelse_b4981:
pretrace_pixels_cont_b4981:
# B4981
	addi x7, x7, 1
	j pretrace_pixels_loop_b4900 # loopback to while entry from B4981
pretrace_pixels_beqelse_b4982:
# B4982
	mv x71, x105
# B4983
	bne x71, zero, pretrace_pixels_beqelse_b4985
pretrace_pixels_bneelse_b4984:
# B4984
	mv x68, zero
	j pretrace_pixels_cont_b4986 # adhoc jump(2)
pretrace_pixels_beqelse_b4985:
# B4985
	mv x68, x105
	j pretrace_pixels_cont_b4986 # adhoc jump(2)
pretrace_pixels_beqelse_b4956:
# B4956
	lwr x68, x118, x68
	lw x73, 5(x68)
	lw x73, 0(x73)
	fsub x73, x77, x73
	lw x74, 5(x68)
	lw x74, 1(x74)
	fsub x74, x78, x74
	lw x8, 5(x68)
	lw x8, 2(x8)
	fsub x8, x79, x8
	lw x80, 1(x68)
	bne x80, x105, pretrace_pixels_beqelse_b4958
# B4957
	fabs x73, x73
	lw x80, 4(x68)
	lw x80, 0(x80)
	bfle x80, x73, pretrace_pixels_bfgtelse_b4964
# B4960
	fabs x73, x74
	lw x74, 4(x68)
	lw x74, 1(x74)
	bfle x74, x73, pretrace_pixels_bfgtelse_b4964
# B4962
	fabs x73, x8
	lw x74, 4(x68)
	lw x74, 2(x74)
	fle x73, x74, x73
	xori x73, x73, 1
	mv x74, x73
# B4963
	bne x74, zero, pretrace_pixels_beqelse_b4965
pretrace_pixels_bfgtelse_b4964:
# B4964
	lw x68, 6(x68)
	xori x68, x68, 1
	j pretrace_pixels_cont_b4974 # adhoc jump(2)
pretrace_pixels_beqelse_b4965:
# B4965
	lw x68, 6(x68)
	j pretrace_pixels_cont_b4974 # adhoc jump(2)
pretrace_pixels_beqelse_b4958:
# B4958
	bne x80, x106, pretrace_pixels_beqelse_b4967
# B4966
	lw x80, 4(x68)
	lw x81, 0(x80)
	fmul x73, x81, x73
	lw x81, 1(x80)
	fmul x74, x81, x74
	fadd x73, x73, x74
	lw x74, 2(x80)
	fmul x74, x74, x8
	fadd x73, x73, x74
	lw x68, 6(x68)
	fle x73, zero, x73
	xori x73, x73, 1
	xor x68, x68, x73
	xori x68, x68, 1
	j pretrace_pixels_cont_b4974 # adhoc jump(2)
pretrace_pixels_beqelse_b4967:
# B4967
	fmul x80, x73, x73
	lw x81, 4(x68)
	lw x81, 0(x81)
	fmul x80, x80, x81
	fmul x81, x74, x74
	lw x82, 4(x68)
	lw x82, 1(x82)
	fmul x81, x81, x82
	fadd x80, x80, x81
	fmul x81, x8, x8
	lw x82, 4(x68)
	lw x82, 2(x82)
	fmul x81, x81, x82
	fadd x80, x80, x81
	lw x81, 3(x68)
	bne x81, zero, pretrace_pixels_beqelse_b4969
# B4968
	mv x73, x80
	j pretrace_pixels_cont_b4970 # adhoc jump(2)
pretrace_pixels_beqelse_b4969:
# B4969
	fmul x81, x74, x8
	lw x82, 9(x68)
	lw x82, 0(x82)
	fmul x81, x81, x82
	fadd x80, x80, x81
	fmul x8, x8, x73
	lw x81, 9(x68)
	lw x81, 1(x81)
	fmul x8, x8, x81
	fadd x8, x80, x8
	fmul x73, x73, x74
	lw x74, 9(x68)
	lw x74, 2(x74)
	fmul x73, x73, x74
	fadd x73, x8, x73
pretrace_pixels_cont_b4970:
# B4970
	lw x74, 1(x68)
	bne x74, x119, pretrace_pixels_beqelse_b4973
# B4971
	fsub x73, x73, x110
pretrace_pixels_beqelse_b4973:
# B4973
	lw x68, 6(x68)
	fle x73, zero, x73
	xori x73, x73, 1
	xor x68, x68, x73
	xori x68, x68, 1
pretrace_pixels_cont_b4974:
# B4974
	beq x68, zero, pretrace_pixels_bneelse_b4975
	j	pretrace_pixels_beqelse_b4903 # moved need extra jump for 4903 at B4974
pretrace_pixels_bfgtelse_b4898:
# B4898
	mv x68, zero
pretrace_pixels_cont_b4986:
# B4986
	addi x66, x66, 1
	bne x68, zero, pretrace_pixels_beqelse_b4988
	j	pretrace_pixels_bneelse_b4850 # moved need extra jump for 4850 at B4986
pretrace_pixels_beqelse_b4988:
# B4988
	mv x70, x36
	mv x7, x105
pretrace_pixels_cont_b4989:
pretrace_pixels_loop_b4989:
# B4989
	lwr x36, x70, x7
	beq x36, x34, pretrace_pixels_bneelse_b4850
# B4991
	lwr x36, x39, x36
	mv x68, zero
	mv x71, x36
pretrace_pixels_beqelse_b4992:
pretrace_pixels_loop_b4992:
# B4992
	lwr x36, x71, x68
	beq x36, x34, pretrace_pixels_bneelse_b5070
# B4994
	lwr x36, x71, x68
	lwr x72, x118, x36
	lw x73, 0(x13)
	lw x74, 5(x72)
	lw x74, 0(x74)
	fsub x74, x73, x74
	lw x75, 1(x13)
	lw x76, 5(x72)
	lw x76, 1(x76)
	fsub x76, x75, x76
	lw x77, 2(x13)
	lw x78, 5(x72)
	lw x78, 2(x78)
	fsub x78, x77, x78
	lw x79, 1(x65)
	lwr x79, x79, x36
	lw x8, 1(x72)
	bne x8, x105, pretrace_pixels_beqelse_b4996
# B4995
	lw x8, 0(x65)
	lw x80, 0(x79)
	fsub x80, x80, x74
	lw x81, 1(x79)
	fmul x80, x80, x81
	lw x82, 1(x8)
	fmul x83, x80, x82
	fadd x83, x83, x76
	fabs x83, x83
	lw x84, 4(x72)
	lw x84, 1(x84)
	bfle x84, x83, pretrace_pixels_bfgtelse_b5002
# B4998
	lw x83, 2(x8)
	fmul x83, x80, x83
	fadd x83, x83, x78
	fabs x83, x83
	lw x84, 4(x72)
	lw x84, 2(x84)
	bfle x84, x83, pretrace_pixels_bfgtelse_b5002
# B5000
	feq x81, x81, zero
	xori x81, x81, 1
	mv x83, x81
# B5001
	bne x83, zero, pretrace_pixels_beqelse_b5003
pretrace_pixels_bfgtelse_b5002:
# B5002
	lw x80, 2(x79)
	fsub x80, x80, x76
	lw x81, 3(x79)
	fmul x80, x80, x81
	lw x83, 0(x8)
	fmul x84, x80, x83
	fadd x84, x84, x74
	fabs x84, x84
	lw x85, 4(x72)
	lw x85, 0(x85)
	bfle x85, x84, pretrace_pixels_bfgtelse_b5009
# B5005
	lw x8, 2(x8)
	fmul x8, x80, x8
	fadd x8, x8, x78
	fabs x8, x8
	lw x84, 4(x72)
	lw x84, 2(x84)
	bfle x84, x8, pretrace_pixels_bfgtelse_b5009
# B5007
	feq x8, x81, zero
	xori x8, x8, 1
	mv x81, x8
# B5008
	bne x81, zero, pretrace_pixels_beqelse_b5010
pretrace_pixels_bfgtelse_b5009:
# B5009
	lw x8, 4(x79)
	fsub x78, x8, x78
	lw x79, 5(x79)
	fmul x78, x78, x79
	fmul x8, x78, x83
	fadd x74, x8, x74
	fabs x74, x74
	lw x8, 4(x72)
	lw x8, 0(x8)
	bfle x8, x74, pretrace_pixels_bfgtelse_b5016
# B5012
	fmul x74, x78, x82
	fadd x74, x74, x76
	fabs x74, x74
	lw x72, 4(x72)
	lw x72, 1(x72)
	bfle x72, x74, pretrace_pixels_bfgtelse_b5016
# B5014
	feq x72, x79, zero
	xori x72, x72, 1
	mv x74, x72
# B5015
	bne x74, zero, pretrace_pixels_beqelse_b5017
pretrace_pixels_bfgtelse_b5016:
# B5016
	mv x72, zero
	j pretrace_pixels_cont_b5035 # adhoc jump(2)
pretrace_pixels_beqelse_b5017:
# B5017
	sw x78, 0(x33)
	mv x72, x119
	j pretrace_pixels_cont_b5035 # adhoc jump(2)
pretrace_pixels_beqelse_b5010:
# B5010
	sw x80, 0(x33)
	mv x72, x106
	j pretrace_pixels_cont_b5035 # adhoc jump(2)
pretrace_pixels_beqelse_b5003:
# B5003
	sw x80, 0(x33)
	mv x72, x105
	j pretrace_pixels_cont_b5035 # adhoc jump(2)
pretrace_pixels_beqelse_b4996:
# B4996
	bne x8, x106, pretrace_pixels_beqelse_b5019
# B5018
	lw x72, 0(x79)
	bfle zero, x72, pretrace_pixels_bfgtelse_b5020
# B5021
	lw x72, 1(x79)
	fmul x72, x72, x74
	lw x74, 2(x79)
	fmul x74, x74, x76
	fadd x72, x72, x74
	lw x74, 3(x79)
	fmul x74, x74, x78
	fadd x72, x72, x74
	sw x72, 0(x33)
	mv x72, x105
	j pretrace_pixels_cont_b5035 # adhoc jump(2)
pretrace_pixels_bfgtelse_b5020:
# B5020
	mv x72, zero
	j pretrace_pixels_cont_b5035 # adhoc jump(2)
pretrace_pixels_beqelse_b5019:
# B5019
	lw x8, 0(x79)
	bfeq x8, zero, pretrace_pixels_bfneqelse_b5023
# B5022
	lw x80, 1(x79)
	fmul x80, x80, x74
	lw x81, 2(x79)
	fmul x81, x81, x76
	fadd x80, x80, x81
	lw x81, 3(x79)
	fmul x81, x81, x78
	fadd x80, x80, x81
	fmul x81, x74, x74
	lw x82, 4(x72)
	lw x82, 0(x82)
	fmul x81, x81, x82
	fmul x82, x76, x76
	lw x83, 4(x72)
	lw x83, 1(x83)
	fmul x82, x82, x83
	fadd x81, x81, x82
	fmul x82, x78, x78
	lw x83, 4(x72)
	lw x83, 2(x83)
	fmul x82, x82, x83
	fadd x81, x81, x82
	lw x82, 3(x72)
	bne x82, zero, pretrace_pixels_beqelse_b5025
# B5024
	mv x74, x81
	j pretrace_pixels_cont_b5026 # adhoc jump(2)
pretrace_pixels_beqelse_b5025:
# B5025
	fmul x82, x76, x78
	lw x83, 9(x72)
	lw x83, 0(x83)
	fmul x82, x82, x83
	fadd x81, x81, x82
	fmul x78, x78, x74
	lw x82, 9(x72)
	lw x82, 1(x82)
	fmul x78, x78, x82
	fadd x78, x81, x78
	fmul x74, x74, x76
	lw x76, 9(x72)
	lw x76, 2(x76)
	fmul x74, x74, x76
	fadd x74, x78, x74
pretrace_pixels_cont_b5026:
# B5026
	lw x76, 1(x72)
	bne x76, x119, pretrace_pixels_beqelse_b5029
# B5027
	fsub x74, x74, x110
pretrace_pixels_beqelse_b5029:
# B5029
	fmul x76, x80, x80
	fmul x74, x8, x74
	fsub x74, x76, x74
	bfle x74, zero, pretrace_pixels_bfgtelse_b5030
# B5031
	lw x72, 6(x72)
	fsqrt x74, x74
	bne x72, zero, pretrace_pixels_beqelse_b5033
# B5032
	fsub x72, x80, x74
	lw x74, 4(x79)
	fmul x72, x72, x74
	sw x72, 0(x33)
	j pretrace_pixels_cont_b5034 # adhoc jump(2)
pretrace_pixels_beqelse_b5033:
# B5033
	fadd x72, x80, x74
	lw x74, 4(x79)
	fmul x72, x72, x74
	sw x72, 0(x33)
pretrace_pixels_cont_b5034:
# B5034
	mv x72, x105
	j pretrace_pixels_cont_b5035 # adhoc jump(2)
pretrace_pixels_bfgtelse_b5030:
# B5030
	mv x72, zero
	j pretrace_pixels_cont_b5035 # adhoc jump(2)
pretrace_pixels_bfneqelse_b5023:
# B5023
	mv x72, zero
pretrace_pixels_cont_b5035:
# B5035
	lw x74, 0(x33)
	bne x72, zero, pretrace_pixels_beqelse_b5037
# B5036
	mv x72, zero
	j pretrace_pixels_cont_b5038 # adhoc jump(2)
pretrace_pixels_beqelse_b5037:
# B5037
	fle x72, x69, x74
	xori x72, x72, 1
pretrace_pixels_cont_b5038:
# B5038
	addi x68, x68, 1
	bne x72, zero, pretrace_pixels_beqelse_b5040
# B5039
	lwr x36, x118, x36
	lw x36, 6(x36)
	beq x36, zero, pretrace_pixels_bneelse_b5070
	j	pretrace_pixels_beqelse_b4992 # moved need extra jump for 4992 at B5039
pretrace_pixels_beqelse_b5040:
# B5040
	fadd x36, x74, x40
	lw x72, 0(x100)
	fmul x72, x72, x36
	fadd x72, x72, x73
	lw x73, 1(x100)
	fmul x73, x73, x36
	fadd x73, x73, x75
	lw x74, 2(x100)
	fmul x36, x74, x36
	fadd x36, x36, x77
	mv x77, x73
	mv x76, x72
	mv x78, x36
	mv x74, zero
	mv x75, x71
	j	pretrace_pixels_loop_b5043 # jumping over moved block
pretrace_pixels_bneelse_b5064:	#moved
# B5064
	addi x74, x74, 1
pretrace_pixels_loop_b5043:
# B5043
	lwr x36, x75, x74
	bne x36, x34, pretrace_pixels_beqelse_b5045
# B5044
	mv x72, x105
# B5066
	bne x72, zero, pretrace_pixels_beqelse_b5068
	j	pretrace_pixels_beqelse_b4992 # moved need extra jump for 4992 at B5066
pretrace_pixels_beqelse_b5068:
# B5068
	mv x36, x105
pretrace_pixels_cont_b5069:
# B5069
	bne x36, zero, pretrace_pixels_beqelse_b5071
pretrace_pixels_bneelse_b5070:
pretrace_pixels_cont_b5070:
# B5070
	addi x7, x7, 1
	j pretrace_pixels_loop_b4989 # loopback to while entry from B5070
pretrace_pixels_beqelse_b5071:
# B5071
	mv x68, x105
# B5072
	bne x68, zero, pretrace_pixels_beqelse_b5074
	j	pretrace_pixels_bneelse_b4850 # moved need extra jump for 4850 at B5072
pretrace_pixels_beqelse_b5074:
# B5074
	mv x36, x105
pretrace_pixels_cont_b5075:
# B5075
	bne x36, zero, pretrace_pixels_beqelse_b5083
pretrace_pixels_bneelse_b5076:
# B5076
	lw x36, 0(x19)
	lw x66, 0(x100)
	fmul x36, x36, x66
	lw x67, 1(x19)
	lw x68, 1(x100)
	fmul x67, x67, x68
	fadd x36, x36, x67
	lw x67, 2(x19)
	lw x7, 2(x100)
	fmul x67, x67, x7
	fadd x36, x36, x67
	fsub x36, zero, x36
	fmul x36, x36, x6
	lw x67, 0(x27)
	fmul x66, x67, x66
	lw x67, 1(x27)
	fmul x67, x67, x68
	fadd x66, x66, x67
	lw x67, 2(x27)
	fmul x67, x67, x7
	fadd x66, x66, x67
	fsub x66, zero, x66
	bfle x36, zero, pretrace_pixels_bfgtelse_b5080
# B5079
	lw x67, 0(x107)
	lw x68, 0(x17)
	fmul x68, x36, x68
	fadd x67, x67, x68
	sw x67, 0(x107)
	lw x67, 1(x107)
	lw x68, 1(x17)
	fmul x68, x36, x68
	fadd x67, x67, x68
	sw x67, 1(x107)
	lw x67, 2(x107)
	lw x68, 2(x17)
	fmul x36, x36, x68
	fadd x36, x67, x36
	sw x36, 2(x107)
pretrace_pixels_bfgtelse_b5080:
# B5080
	bfle x66, zero, pretrace_pixels_bfgtelse_b5083
# B5082
	fmul x36, x66, x66
	fmul x36, x36, x36
	fmul x36, x36, x31
	lw x66, 0(x107)
	fadd x66, x66, x36
	sw x66, 0(x107)
	lw x66, 1(x107)
	fadd x66, x66, x36
	sw x66, 1(x107)
	lw x66, 2(x107)
	fadd x36, x66, x36
	sw x36, 2(x107)
pretrace_pixels_beqelse_b5083:
pretrace_pixels_bfgtelse_b5083:
# B5083
	lw x36, 0(x13)
	sw x36, 0(x120)
	lw x36, 1(x13)
	sw x36, 1(x120)
	lw x36, 2(x13)
	sw x36, 2(x120)
	lw x36, 0(x121)
	addi x36, x36, -1
	mv x66, x13
	mv x67, x36
pretrace_pixels_loop_b5084:
# B5084
	bgt zero, x67, pretrace_pixels_bleelse_b5098
# B5085
	lwr x36, x118, x67
	lw x68, 10(x36)
	lw x7, 1(x36)
	lw x70, 0(x66)
	lw x71, 5(x36)
	lw x71, 0(x71)
	fsub x70, x70, x71
	sw x70, 0(x68)
	lw x70, 1(x66)
	lw x71, 5(x36)
	lw x71, 1(x71)
	fsub x70, x70, x71
	sw x70, 1(x68)
	lw x70, 2(x66)
	lw x71, 5(x36)
	lw x71, 2(x71)
	fsub x70, x70, x71
	sw x70, 2(x68)
	bne x7, x106, pretrace_pixels_beqelse_b5088
# B5087
	lw x36, 4(x36)
	lw x7, 0(x68)
	lw x70, 1(x68)
	lw x71, 2(x68)
	lw x72, 0(x36)
	fmul x7, x72, x7
	lw x72, 1(x36)
	fmul x70, x72, x70
	fadd x7, x7, x70
	lw x36, 2(x36)
	fmul x36, x36, x71
	fadd x36, x7, x36
	sw x36, 3(x68)
	j pretrace_pixels_cont_b5097 # adhoc jump(2)
pretrace_pixels_beqelse_b5088:
# B5088
	bge x106, x7, pretrace_pixels_bgtelse_b5097
# B5090
	lw x70, 0(x68)
	lw x71, 1(x68)
	lw x72, 2(x68)
	fmul x73, x70, x70
	lw x74, 4(x36)
	lw x74, 0(x74)
	fmul x73, x73, x74
	fmul x74, x71, x71
	lw x75, 4(x36)
	lw x75, 1(x75)
	fmul x74, x74, x75
	fadd x73, x73, x74
	fmul x74, x72, x72
	lw x75, 4(x36)
	lw x75, 2(x75)
	fmul x74, x74, x75
	fadd x73, x73, x74
	lw x74, 3(x36)
	bne x74, zero, pretrace_pixels_beqelse_b5092
# B5091
	mv x36, x73
	j pretrace_pixels_cont_b5093 # adhoc jump(2)
pretrace_pixels_beqelse_b5092:
# B5092
	fmul x74, x71, x72
	lw x75, 9(x36)
	lw x75, 0(x75)
	fmul x74, x74, x75
	fadd x73, x73, x74
	fmul x72, x72, x70
	lw x74, 9(x36)
	lw x74, 1(x74)
	fmul x72, x72, x74
	fadd x72, x73, x72
	fmul x70, x70, x71
	lw x36, 9(x36)
	lw x36, 2(x36)
	fmul x36, x70, x36
	fadd x36, x72, x36
pretrace_pixels_cont_b5093:
# B5093
	bne x7, x119, pretrace_pixels_beqelse_b5096
# B5094
	fsub x36, x36, x110
pretrace_pixels_beqelse_b5096:
# B5096
	sw x36, 3(x68)
pretrace_pixels_bgtelse_b5097:
pretrace_pixels_cont_b5097:
# B5097
	addi x67, x67, -1
	j pretrace_pixels_loop_b5084 # loopback to while entry from B5097
pretrace_pixels_bleelse_b5098:
# B5098
	lw x36, 0(x22)
	addi x36, x36, -1
	la x66, min_caml_reflections
	mv x70, x27
	mv x7, x31
	mv x67, x36
	mv x68, x6
pretrace_pixels_loop_b5099:
# B5099
	bgt zero, x67, pretrace_pixels_bleelse_b5543
# B5100
	lwr x31, x66, x67
	lw x36, 1(x31)
	sw x30, 0(x24)
	lw x6, 0(x21)
	mv x72, x6
	mv x73, x36
	mv x71, zero
pretrace_pixels_loop_b5102:
# B5102
	lwr x74, x72, x71
	lw x75, 0(x74)
	beq x75, x34, pretrace_pixels_bneelse_b5301
# B5104
	bne x75, x32, pretrace_pixels_beqelse_b5106
# B5105
	mv x77, x74
	mv x76, x105
	mv x78, x73
pretrace_pixels_loop_b5107:
# B5107
	lwr x74, x77, x76
	beq x74, x34, pretrace_pixels_bneelse_b5300
# B5109
	lwr x74, x39, x74
	mv x8, x78
	mv x79, x74
	mv x75, zero
	j	pretrace_pixels_loop_b5110 # jumping over moved block
pretrace_pixels_beqelse_b5181:	#moved
# B5181
	sw x82, 0(x24)
	sw x83, 0(x13)
	sw x84, 1(x13)
	sw x74, 2(x13)
	sw x80, 0(x12)
	sw x81, 0(x15)
pretrace_pixels_beqelse_b5110:
pretrace_pixels_bfgtelse_b5110:
pretrace_pixels_loop_b5110:
# B5110
	lw x74, 0(x8)
	lwr x80, x79, x75
	beq x80, x34, pretrace_pixels_bneelse_b5183
# B5112
	lwr x81, x118, x80
	lw x82, 10(x81)
	lw x83, 0(x82)
	lw x84, 1(x82)
	lw x85, 2(x82)
	lw x86, 1(x8)
	lwr x86, x86, x80
	lw x87, 1(x81)
	bne x87, x105, pretrace_pixels_beqelse_b5114
# B5113
	lw x82, 0(x8)
	lw x87, 0(x86)
	fsub x87, x87, x83
	lw x88, 1(x86)
	fmul x87, x87, x88
	lw x89, 1(x82)
	fmul x9, x87, x89
	fadd x9, x9, x84
	fabs x9, x9
	lw x90, 4(x81)
	lw x90, 1(x90)
	bfle x90, x9, pretrace_pixels_bfgtelse_b5120
# B5116
	lw x9, 2(x82)
	fmul x9, x87, x9
	fadd x9, x9, x85
	fabs x9, x9
	lw x90, 4(x81)
	lw x90, 2(x90)
	bfle x90, x9, pretrace_pixels_bfgtelse_b5120
# B5118
	feq x88, x88, zero
	xori x88, x88, 1
	mv x9, x88
# B5119
	bne x9, zero, pretrace_pixels_beqelse_b5121
pretrace_pixels_bfgtelse_b5120:
# B5120
	lw x87, 2(x86)
	fsub x87, x87, x84
	lw x88, 3(x86)
	fmul x87, x87, x88
	lw x9, 0(x82)
	fmul x90, x87, x9
	fadd x90, x90, x83
	fabs x90, x90
	lw x91, 4(x81)
	lw x91, 0(x91)
	bfle x91, x90, pretrace_pixels_bfgtelse_b5127
# B5123
	lw x82, 2(x82)
	fmul x82, x87, x82
	fadd x82, x82, x85
	fabs x82, x82
	lw x90, 4(x81)
	lw x90, 2(x90)
	bfle x90, x82, pretrace_pixels_bfgtelse_b5127
# B5125
	feq x82, x88, zero
	xori x82, x82, 1
	mv x88, x82
# B5126
	bne x88, zero, pretrace_pixels_beqelse_b5128
pretrace_pixels_bfgtelse_b5127:
# B5127
	lw x82, 4(x86)
	fsub x82, x82, x85
	lw x85, 5(x86)
	fmul x82, x82, x85
	fmul x86, x82, x9
	fadd x83, x86, x83
	fabs x83, x83
	lw x86, 4(x81)
	lw x86, 0(x86)
	bfle x86, x83, pretrace_pixels_bfgtelse_b5134
# B5130
	fmul x83, x82, x89
	fadd x83, x83, x84
	fabs x83, x83
	lw x81, 4(x81)
	lw x81, 1(x81)
	bfle x81, x83, pretrace_pixels_bfgtelse_b5134
# B5132
	feq x81, x85, zero
	xori x81, x81, 1
	mv x83, x81
# B5133
	bne x83, zero, pretrace_pixels_beqelse_b5135
pretrace_pixels_bfgtelse_b5134:
# B5134
	mv x81, zero
	j pretrace_pixels_cont_b5147 # adhoc jump(2)
pretrace_pixels_beqelse_b5135:
# B5135
	sw x82, 0(x33)
	mv x81, x119
	j pretrace_pixels_cont_b5147 # adhoc jump(2)
pretrace_pixels_beqelse_b5128:
# B5128
	sw x87, 0(x33)
	mv x81, x106
	j pretrace_pixels_cont_b5147 # adhoc jump(2)
pretrace_pixels_beqelse_b5121:
# B5121
	sw x87, 0(x33)
	mv x81, x105
	j pretrace_pixels_cont_b5147 # adhoc jump(2)
pretrace_pixels_beqelse_b5114:
# B5114
	bne x87, x106, pretrace_pixels_beqelse_b5137
# B5136
	lw x81, 0(x86)
	bfle zero, x81, pretrace_pixels_bfgtelse_b5138
# B5139
	lw x82, 3(x82)
	fmul x81, x81, x82
	sw x81, 0(x33)
	mv x81, x105
	j pretrace_pixels_cont_b5147 # adhoc jump(2)
pretrace_pixels_bfgtelse_b5138:
# B5138
	mv x81, zero
	j pretrace_pixels_cont_b5147 # adhoc jump(2)
pretrace_pixels_beqelse_b5137:
# B5137
	lw x87, 0(x86)
	bfeq x87, zero, pretrace_pixels_bfneqelse_b5141
# B5140
	lw x88, 1(x86)
	fmul x83, x88, x83
	lw x88, 2(x86)
	fmul x84, x88, x84
	fadd x83, x83, x84
	lw x84, 3(x86)
	fmul x84, x84, x85
	fadd x83, x83, x84
	lw x82, 3(x82)
	fmul x84, x83, x83
	fmul x82, x87, x82
	fsub x82, x84, x82
	bfle x82, zero, pretrace_pixels_bfgtelse_b5142
# B5143
	lw x81, 6(x81)
	fsqrt x82, x82
	bne x81, zero, pretrace_pixels_beqelse_b5145
# B5144
	fsub x81, x83, x82
	lw x82, 4(x86)
	fmul x81, x81, x82
	sw x81, 0(x33)
	j pretrace_pixels_cont_b5146 # adhoc jump(2)
pretrace_pixels_beqelse_b5145:
# B5145
	fadd x81, x83, x82
	lw x82, 4(x86)
	fmul x81, x81, x82
	sw x81, 0(x33)
pretrace_pixels_cont_b5146:
# B5146
	mv x81, x105
	j pretrace_pixels_cont_b5147 # adhoc jump(2)
pretrace_pixels_bfgtelse_b5142:
# B5142
	mv x81, zero
	j pretrace_pixels_cont_b5147 # adhoc jump(2)
pretrace_pixels_bfneqelse_b5141:
# B5141
	mv x81, zero
pretrace_pixels_cont_b5147:
# B5147
	addi x75, x75, 1
	bne x81, zero, pretrace_pixels_beqelse_b5149
# B5148
	lwr x74, x118, x80
	lw x74, 6(x74)
	beq x74, zero, pretrace_pixels_bneelse_b5183
	j	pretrace_pixels_beqelse_b5110 # moved need extra jump for 5110 at B5148
pretrace_pixels_bneelse_b5183:
# B5183
	addi x76, x76, 1
	j pretrace_pixels_loop_b5107 # loopback to while entry from B5183
pretrace_pixels_beqelse_b5149:
# B5149
	lw x82, 0(x33)
	bfle x82, zero, pretrace_pixels_bfgtelse_b5110
# B5153
	lw x83, 0(x24)
	bfle x83, x82, pretrace_pixels_bfgtelse_b5110
# B5155
	fadd x82, x82, x40
	lw x83, 0(x74)
	fmul x83, x83, x82
	lw x84, 0(x120)
	fadd x83, x83, x84
	lw x84, 1(x74)
	fmul x84, x84, x82
	lw x85, 1(x120)
	fadd x84, x84, x85
	lw x74, 2(x74)
	fmul x74, x74, x82
	lw x85, 2(x120)
	fadd x74, x74, x85
	mv x85, zero
	mv x88, x84
	mv x87, x83
	mv x89, x74
	mv x86, x79
	j	pretrace_pixels_loop_b5156 # jumping over moved block
pretrace_pixels_bneelse_b5177:	#moved
# B5177
	addi x85, x85, 1
pretrace_pixels_loop_b5156:
# B5156
	lwr x9, x86, x85
	bne x9, x34, pretrace_pixels_beqelse_b5158
# B5157
	mv x90, x105
# B5179
	bne x90, zero, pretrace_pixels_beqelse_b5181
	j	pretrace_pixels_bfgtelse_b5110 # moved need extra jump for 5110 at B5179
pretrace_pixels_beqelse_b5158:
# B5158
	lwr x9, x118, x9
	lw x90, 5(x9)
	lw x90, 0(x90)
	fsub x90, x87, x90
	lw x91, 5(x9)
	lw x91, 1(x91)
	fsub x91, x88, x91
	lw x92, 5(x9)
	lw x92, 2(x92)
	fsub x92, x89, x92
	lw x93, 1(x9)
	bne x93, x105, pretrace_pixels_beqelse_b5160
# B5159
	fabs x90, x90
	lw x93, 4(x9)
	lw x93, 0(x93)
	bfle x93, x90, pretrace_pixels_bfgtelse_b5166
# B5162
	fabs x90, x91
	lw x91, 4(x9)
	lw x91, 1(x91)
	bfle x91, x90, pretrace_pixels_bfgtelse_b5166
# B5164
	fabs x90, x92
	lw x91, 4(x9)
	lw x91, 2(x91)
	fle x90, x91, x90
	xori x90, x90, 1
	mv x91, x90
# B5165
	bne x91, zero, pretrace_pixels_beqelse_b5167
pretrace_pixels_bfgtelse_b5166:
# B5166
	lw x9, 6(x9)
	xori x9, x9, 1
	j pretrace_pixels_cont_b5176 # adhoc jump(2)
pretrace_pixels_beqelse_b5167:
# B5167
	lw x9, 6(x9)
	j pretrace_pixels_cont_b5176 # adhoc jump(2)
pretrace_pixels_beqelse_b5160:
# B5160
	bne x93, x106, pretrace_pixels_beqelse_b5169
# B5168
	lw x93, 4(x9)
	lw x94, 0(x93)
	fmul x90, x94, x90
	lw x94, 1(x93)
	fmul x91, x94, x91
	fadd x90, x90, x91
	lw x91, 2(x93)
	fmul x91, x91, x92
	fadd x90, x90, x91
	lw x9, 6(x9)
	fle x90, zero, x90
	xori x90, x90, 1
	xor x9, x9, x90
	xori x9, x9, 1
	j pretrace_pixels_cont_b5176 # adhoc jump(2)
pretrace_pixels_beqelse_b5169:
# B5169
	fmul x93, x90, x90
	lw x94, 4(x9)
	lw x94, 0(x94)
	fmul x93, x93, x94
	fmul x94, x91, x91
	lw x95, 4(x9)
	lw x95, 1(x95)
	fmul x94, x94, x95
	fadd x93, x93, x94
	fmul x94, x92, x92
	lw x95, 4(x9)
	lw x95, 2(x95)
	fmul x94, x94, x95
	fadd x93, x93, x94
	lw x94, 3(x9)
	bne x94, zero, pretrace_pixels_beqelse_b5171
# B5170
	mv x90, x93
	j pretrace_pixels_cont_b5172 # adhoc jump(2)
pretrace_pixels_beqelse_b5171:
# B5171
	fmul x94, x91, x92
	lw x95, 9(x9)
	lw x95, 0(x95)
	fmul x94, x94, x95
	fadd x93, x93, x94
	fmul x92, x92, x90
	lw x94, 9(x9)
	lw x94, 1(x94)
	fmul x92, x92, x94
	fadd x92, x93, x92
	fmul x90, x90, x91
	lw x91, 9(x9)
	lw x91, 2(x91)
	fmul x90, x90, x91
	fadd x90, x92, x90
pretrace_pixels_cont_b5172:
# B5172
	lw x91, 1(x9)
	bne x91, x119, pretrace_pixels_beqelse_b5175
# B5173
	fsub x90, x90, x110
pretrace_pixels_beqelse_b5175:
# B5175
	lw x9, 6(x9)
	fle x90, zero, x90
	xori x90, x90, 1
	xor x9, x9, x90
	xori x9, x9, 1
pretrace_pixels_cont_b5176:
# B5176
	beq x9, zero, pretrace_pixels_bneelse_b5177
	j	pretrace_pixels_bfgtelse_b5110 # moved need extra jump for 5110 at B5176
pretrace_pixels_beqelse_b5106:
# B5106
	lwr x76, x118, x75
	lw x77, 10(x76)
	lw x78, 0(x77)
	lw x79, 1(x77)
	lw x8, 2(x77)
	lw x80, 1(x73)
	lwr x75, x80, x75
	lw x80, 1(x76)
	bne x80, x105, pretrace_pixels_beqelse_b5185
# B5184
	lw x77, 0(x73)
	lw x80, 0(x75)
	fsub x80, x80, x78
	lw x81, 1(x75)
	fmul x80, x80, x81
	lw x82, 1(x77)
	fmul x83, x80, x82
	fadd x83, x83, x79
	fabs x83, x83
	lw x84, 4(x76)
	lw x84, 1(x84)
	bfle x84, x83, pretrace_pixels_bfgtelse_b5191
# B5187
	lw x83, 2(x77)
	fmul x83, x80, x83
	fadd x83, x83, x8
	fabs x83, x83
	lw x84, 4(x76)
	lw x84, 2(x84)
	bfle x84, x83, pretrace_pixels_bfgtelse_b5191
# B5189
	feq x81, x81, zero
	xori x81, x81, 1
	mv x83, x81
# B5190
	bne x83, zero, pretrace_pixels_beqelse_b5192
pretrace_pixels_bfgtelse_b5191:
# B5191
	lw x80, 2(x75)
	fsub x80, x80, x79
	lw x81, 3(x75)
	fmul x80, x80, x81
	lw x83, 0(x77)
	fmul x84, x80, x83
	fadd x84, x84, x78
	fabs x84, x84
	lw x85, 4(x76)
	lw x85, 0(x85)
	bfle x85, x84, pretrace_pixels_bfgtelse_b5198
# B5194
	lw x77, 2(x77)
	fmul x77, x80, x77
	fadd x77, x77, x8
	fabs x77, x77
	lw x84, 4(x76)
	lw x84, 2(x84)
	bfle x84, x77, pretrace_pixels_bfgtelse_b5198
# B5196
	feq x77, x81, zero
	xori x77, x77, 1
	mv x81, x77
# B5197
	bne x81, zero, pretrace_pixels_beqelse_b5199
pretrace_pixels_bfgtelse_b5198:
# B5198
	lw x77, 4(x75)
	fsub x77, x77, x8
	lw x75, 5(x75)
	fmul x77, x77, x75
	fmul x8, x77, x83
	fadd x78, x8, x78
	fabs x78, x78
	lw x8, 4(x76)
	lw x8, 0(x8)
	bfle x8, x78, pretrace_pixels_bfgtelse_b5300
# B5201
	fmul x78, x77, x82
	fadd x78, x78, x79
	fabs x78, x78
	lw x76, 4(x76)
	lw x76, 1(x76)
	bfle x76, x78, pretrace_pixels_bfgtelse_b5300
# B5203
	feq x75, x75, zero
	xori x75, x75, 1
	mv x76, x75
# B5204
	bne x76, zero, pretrace_pixels_beqelse_b5206
	j pretrace_pixels_cont_b5300 # adhoc jump(3)
pretrace_pixels_beqelse_b5206:
# B5206
	sw x77, 0(x33)
	mv x75, x119
	j pretrace_pixels_cont_b5218 # adhoc jump(2)
pretrace_pixels_beqelse_b5199:
# B5199
	sw x80, 0(x33)
	mv x75, x106
	j pretrace_pixels_cont_b5218 # adhoc jump(2)
pretrace_pixels_beqelse_b5192:
# B5192
	sw x80, 0(x33)
	mv x75, x105
	j pretrace_pixels_cont_b5218 # adhoc jump(2)
pretrace_pixels_beqelse_b5185:
# B5185
	bne x80, x106, pretrace_pixels_beqelse_b5208
# B5207
	lw x75, 0(x75)
	bfle zero, x75, pretrace_pixels_bfgtelse_b5300
# B5210
	lw x76, 3(x77)
	fmul x75, x75, x76
	sw x75, 0(x33)
	mv x75, x105
	j pretrace_pixels_cont_b5218 # adhoc jump(2)
pretrace_pixels_beqelse_b5208:
# B5208
	lw x80, 0(x75)
	bfeq x80, zero, pretrace_pixels_bfneqelse_b5300
# B5211
	lw x81, 1(x75)
	fmul x78, x81, x78
	lw x81, 2(x75)
	fmul x79, x81, x79
	fadd x78, x78, x79
	lw x79, 3(x75)
	fmul x79, x79, x8
	fadd x78, x78, x79
	lw x77, 3(x77)
	fmul x79, x78, x78
	fmul x77, x80, x77
	fsub x77, x79, x77
	bfle x77, zero, pretrace_pixels_bfgtelse_b5300
# B5214
	lw x76, 6(x76)
	fsqrt x77, x77
	bne x76, zero, pretrace_pixels_beqelse_b5216
# B5215
	fsub x76, x78, x77
	lw x75, 4(x75)
	fmul x75, x76, x75
	sw x75, 0(x33)
	j pretrace_pixels_cont_b5217 # adhoc jump(2)
pretrace_pixels_beqelse_b5216:
# B5216
	fadd x76, x78, x77
	lw x75, 4(x75)
	fmul x75, x76, x75
	sw x75, 0(x33)
pretrace_pixels_cont_b5217:
# B5217
	mv x75, x105
pretrace_pixels_cont_b5218:
# B5218
	bne x75, zero, pretrace_pixels_beqelse_b5220
	j pretrace_pixels_cont_b5300 # adhoc jump(3)
pretrace_pixels_beqelse_b5220:
# B5220
	lw x75, 0(x33)
	lw x76, 0(x24)
	bfle x76, x75, pretrace_pixels_bfgtelse_b5300
# B5222
	mv x77, x105
	mv x78, x74
	mv x79, x73
pretrace_pixels_loop_b5223:
# B5223
	lwr x74, x78, x77
	beq x74, x34, pretrace_pixels_bneelse_b5300
# B5225
	lwr x74, x39, x74
	mv x76, x74
	mv x75, zero
	mv x8, x79
	j	pretrace_pixels_loop_b5226 # jumping over moved block
pretrace_pixels_beqelse_b5297:	#moved
# B5297
	sw x82, 0(x24)
	sw x83, 0(x13)
	sw x84, 1(x13)
	sw x74, 2(x13)
	sw x80, 0(x12)
	sw x81, 0(x15)
pretrace_pixels_beqelse_b5226:
pretrace_pixels_bfgtelse_b5226:
pretrace_pixels_loop_b5226:
# B5226
	lw x74, 0(x8)
	lwr x80, x76, x75
	beq x80, x34, pretrace_pixels_bneelse_b5299
# B5228
	lwr x81, x118, x80
	lw x82, 10(x81)
	lw x83, 0(x82)
	lw x84, 1(x82)
	lw x85, 2(x82)
	lw x86, 1(x8)
	lwr x86, x86, x80
	lw x87, 1(x81)
	bne x87, x105, pretrace_pixels_beqelse_b5230
# B5229
	lw x82, 0(x8)
	lw x87, 0(x86)
	fsub x87, x87, x83
	lw x88, 1(x86)
	fmul x87, x87, x88
	lw x89, 1(x82)
	fmul x9, x87, x89
	fadd x9, x9, x84
	fabs x9, x9
	lw x90, 4(x81)
	lw x90, 1(x90)
	bfle x90, x9, pretrace_pixels_bfgtelse_b5236
# B5232
	lw x9, 2(x82)
	fmul x9, x87, x9
	fadd x9, x9, x85
	fabs x9, x9
	lw x90, 4(x81)
	lw x90, 2(x90)
	bfle x90, x9, pretrace_pixels_bfgtelse_b5236
# B5234
	feq x88, x88, zero
	xori x88, x88, 1
	mv x9, x88
# B5235
	bne x9, zero, pretrace_pixels_beqelse_b5237
pretrace_pixels_bfgtelse_b5236:
# B5236
	lw x87, 2(x86)
	fsub x87, x87, x84
	lw x88, 3(x86)
	fmul x87, x87, x88
	lw x9, 0(x82)
	fmul x90, x87, x9
	fadd x90, x90, x83
	fabs x90, x90
	lw x91, 4(x81)
	lw x91, 0(x91)
	bfle x91, x90, pretrace_pixels_bfgtelse_b5243
# B5239
	lw x82, 2(x82)
	fmul x82, x87, x82
	fadd x82, x82, x85
	fabs x82, x82
	lw x90, 4(x81)
	lw x90, 2(x90)
	bfle x90, x82, pretrace_pixels_bfgtelse_b5243
# B5241
	feq x82, x88, zero
	xori x82, x82, 1
	mv x88, x82
# B5242
	bne x88, zero, pretrace_pixels_beqelse_b5244
pretrace_pixels_bfgtelse_b5243:
# B5243
	lw x82, 4(x86)
	fsub x82, x82, x85
	lw x85, 5(x86)
	fmul x82, x82, x85
	fmul x86, x82, x9
	fadd x83, x86, x83
	fabs x83, x83
	lw x86, 4(x81)
	lw x86, 0(x86)
	bfle x86, x83, pretrace_pixels_bfgtelse_b5250
# B5246
	fmul x83, x82, x89
	fadd x83, x83, x84
	fabs x83, x83
	lw x81, 4(x81)
	lw x81, 1(x81)
	bfle x81, x83, pretrace_pixels_bfgtelse_b5250
# B5248
	feq x81, x85, zero
	xori x81, x81, 1
	mv x83, x81
# B5249
	bne x83, zero, pretrace_pixels_beqelse_b5251
pretrace_pixels_bfgtelse_b5250:
# B5250
	mv x81, zero
	j pretrace_pixels_cont_b5263 # adhoc jump(2)
pretrace_pixels_beqelse_b5251:
# B5251
	sw x82, 0(x33)
	mv x81, x119
	j pretrace_pixels_cont_b5263 # adhoc jump(2)
pretrace_pixels_beqelse_b5244:
# B5244
	sw x87, 0(x33)
	mv x81, x106
	j pretrace_pixels_cont_b5263 # adhoc jump(2)
pretrace_pixels_beqelse_b5237:
# B5237
	sw x87, 0(x33)
	mv x81, x105
	j pretrace_pixels_cont_b5263 # adhoc jump(2)
pretrace_pixels_beqelse_b5230:
# B5230
	bne x87, x106, pretrace_pixels_beqelse_b5253
# B5252
	lw x81, 0(x86)
	bfle zero, x81, pretrace_pixels_bfgtelse_b5254
# B5255
	lw x82, 3(x82)
	fmul x81, x81, x82
	sw x81, 0(x33)
	mv x81, x105
	j pretrace_pixels_cont_b5263 # adhoc jump(2)
pretrace_pixels_bfgtelse_b5254:
# B5254
	mv x81, zero
	j pretrace_pixels_cont_b5263 # adhoc jump(2)
pretrace_pixels_beqelse_b5253:
# B5253
	lw x87, 0(x86)
	bfeq x87, zero, pretrace_pixels_bfneqelse_b5257
# B5256
	lw x88, 1(x86)
	fmul x83, x88, x83
	lw x88, 2(x86)
	fmul x84, x88, x84
	fadd x83, x83, x84
	lw x84, 3(x86)
	fmul x84, x84, x85
	fadd x83, x83, x84
	lw x82, 3(x82)
	fmul x84, x83, x83
	fmul x82, x87, x82
	fsub x82, x84, x82
	bfle x82, zero, pretrace_pixels_bfgtelse_b5258
# B5259
	lw x81, 6(x81)
	fsqrt x82, x82
	bne x81, zero, pretrace_pixels_beqelse_b5261
# B5260
	fsub x81, x83, x82
	lw x82, 4(x86)
	fmul x81, x81, x82
	sw x81, 0(x33)
	j pretrace_pixels_cont_b5262 # adhoc jump(2)
pretrace_pixels_beqelse_b5261:
# B5261
	fadd x81, x83, x82
	lw x82, 4(x86)
	fmul x81, x81, x82
	sw x81, 0(x33)
pretrace_pixels_cont_b5262:
# B5262
	mv x81, x105
	j pretrace_pixels_cont_b5263 # adhoc jump(2)
pretrace_pixels_bfgtelse_b5258:
# B5258
	mv x81, zero
	j pretrace_pixels_cont_b5263 # adhoc jump(2)
pretrace_pixels_bfneqelse_b5257:
# B5257
	mv x81, zero
pretrace_pixels_cont_b5263:
# B5263
	addi x75, x75, 1
	bne x81, zero, pretrace_pixels_beqelse_b5265
# B5264
	lwr x74, x118, x80
	lw x74, 6(x74)
	beq x74, zero, pretrace_pixels_bneelse_b5299
	j	pretrace_pixels_beqelse_b5226 # moved need extra jump for 5226 at B5264
pretrace_pixels_bneelse_b5299:
# B5299
	addi x77, x77, 1
	j pretrace_pixels_loop_b5223 # loopback to while entry from B5299
pretrace_pixels_beqelse_b5265:
# B5265
	lw x82, 0(x33)
	bfle x82, zero, pretrace_pixels_bfgtelse_b5226
# B5269
	lw x83, 0(x24)
	bfle x83, x82, pretrace_pixels_bfgtelse_b5226
# B5271
	fadd x82, x82, x40
	lw x83, 0(x74)
	fmul x83, x83, x82
	lw x84, 0(x120)
	fadd x83, x83, x84
	lw x84, 1(x74)
	fmul x84, x84, x82
	lw x85, 1(x120)
	fadd x84, x84, x85
	lw x74, 2(x74)
	fmul x74, x74, x82
	lw x85, 2(x120)
	fadd x74, x74, x85
	mv x85, zero
	mv x88, x84
	mv x87, x83
	mv x86, x76
	mv x89, x74
	j	pretrace_pixels_loop_b5272 # jumping over moved block
pretrace_pixels_bneelse_b5293:	#moved
# B5293
	addi x85, x85, 1
pretrace_pixels_loop_b5272:
# B5272
	lwr x9, x86, x85
	bne x9, x34, pretrace_pixels_beqelse_b5274
# B5273
	mv x90, x105
# B5295
	bne x90, zero, pretrace_pixels_beqelse_b5297
	j	pretrace_pixels_bfgtelse_b5226 # moved need extra jump for 5226 at B5295
pretrace_pixels_beqelse_b5274:
# B5274
	lwr x9, x118, x9
	lw x90, 5(x9)
	lw x90, 0(x90)
	fsub x90, x87, x90
	lw x91, 5(x9)
	lw x91, 1(x91)
	fsub x91, x88, x91
	lw x92, 5(x9)
	lw x92, 2(x92)
	fsub x92, x89, x92
	lw x93, 1(x9)
	bne x93, x105, pretrace_pixels_beqelse_b5276
# B5275
	fabs x90, x90
	lw x93, 4(x9)
	lw x93, 0(x93)
	bfle x93, x90, pretrace_pixels_bfgtelse_b5282
# B5278
	fabs x90, x91
	lw x91, 4(x9)
	lw x91, 1(x91)
	bfle x91, x90, pretrace_pixels_bfgtelse_b5282
# B5280
	fabs x90, x92
	lw x91, 4(x9)
	lw x91, 2(x91)
	fle x90, x91, x90
	xori x90, x90, 1
	mv x91, x90
# B5281
	bne x91, zero, pretrace_pixels_beqelse_b5283
pretrace_pixels_bfgtelse_b5282:
# B5282
	lw x9, 6(x9)
	xori x9, x9, 1
	j pretrace_pixels_cont_b5292 # adhoc jump(2)
pretrace_pixels_beqelse_b5283:
# B5283
	lw x9, 6(x9)
	j pretrace_pixels_cont_b5292 # adhoc jump(2)
pretrace_pixels_beqelse_b5276:
# B5276
	bne x93, x106, pretrace_pixels_beqelse_b5285
# B5284
	lw x93, 4(x9)
	lw x94, 0(x93)
	fmul x90, x94, x90
	lw x94, 1(x93)
	fmul x91, x94, x91
	fadd x90, x90, x91
	lw x91, 2(x93)
	fmul x91, x91, x92
	fadd x90, x90, x91
	lw x9, 6(x9)
	fle x90, zero, x90
	xori x90, x90, 1
	xor x9, x9, x90
	xori x9, x9, 1
	j pretrace_pixels_cont_b5292 # adhoc jump(2)
pretrace_pixels_beqelse_b5285:
# B5285
	fmul x93, x90, x90
	lw x94, 4(x9)
	lw x94, 0(x94)
	fmul x93, x93, x94
	fmul x94, x91, x91
	lw x95, 4(x9)
	lw x95, 1(x95)
	fmul x94, x94, x95
	fadd x93, x93, x94
	fmul x94, x92, x92
	lw x95, 4(x9)
	lw x95, 2(x95)
	fmul x94, x94, x95
	fadd x93, x93, x94
	lw x94, 3(x9)
	bne x94, zero, pretrace_pixels_beqelse_b5287
# B5286
	mv x90, x93
	j pretrace_pixels_cont_b5288 # adhoc jump(2)
pretrace_pixels_beqelse_b5287:
# B5287
	fmul x94, x91, x92
	lw x95, 9(x9)
	lw x95, 0(x95)
	fmul x94, x94, x95
	fadd x93, x93, x94
	fmul x92, x92, x90
	lw x94, 9(x9)
	lw x94, 1(x94)
	fmul x92, x92, x94
	fadd x92, x93, x92
	fmul x90, x90, x91
	lw x91, 9(x9)
	lw x91, 2(x91)
	fmul x90, x90, x91
	fadd x90, x92, x90
pretrace_pixels_cont_b5288:
# B5288
	lw x91, 1(x9)
	bne x91, x119, pretrace_pixels_beqelse_b5291
# B5289
	fsub x90, x90, x110
pretrace_pixels_beqelse_b5291:
# B5291
	lw x9, 6(x9)
	fle x90, zero, x90
	xori x90, x90, 1
	xor x9, x9, x90
	xori x9, x9, 1
pretrace_pixels_cont_b5292:
# B5292
	beq x9, zero, pretrace_pixels_bneelse_b5293
	j	pretrace_pixels_bfgtelse_b5226 # moved need extra jump for 5226 at B5292
pretrace_pixels_bfgtelse_b5300:
pretrace_pixels_bfneqelse_b5300:
pretrace_pixels_bneelse_b5300:
pretrace_pixels_cont_b5300:
# B5300
	addi x71, x71, 1
	j pretrace_pixels_loop_b5102 # loopback to while entry from B5300
pretrace_pixels_bneelse_b5301:
# B5301
	lw x71, 0(x24)
	bfle x71, x35, pretrace_pixels_bfgtelse_b5542
# B5303
	fle x71, x37, x71
	xori x71, x71, 1
	mv x72, x71
# B5304
	bne x72, zero, pretrace_pixels_beqelse_b5306
	j pretrace_pixels_cont_b5542 # adhoc jump(3)
pretrace_pixels_beqelse_b5306:
# B5306
	lw x71, 0(x12)
	slli x71, x71, 2
	lw x72, 0(x15)
	add x71, x71, x72
	lw x72, 0(x31)
	bne x71, x72, pretrace_pixels_beqelse_b5542
# B5307
	mv x74, x6
	mv x73, zero
pretrace_pixels_loop_b5309:
# B5309
	lwr x6, x74, x73
	lw x71, 0(x6)
	beq x71, x34, pretrace_pixels_bneelse_b5535
# B5311
	bne x71, x32, pretrace_pixels_beqelse_b5313
# B5312
	mv x71, x105
	j pretrace_pixels_cont_b5445 # adhoc jump(2)
pretrace_pixels_beqelse_b5313:
# B5313
	lwr x72, x118, x71
	lw x75, 0(x13)
	lw x76, 5(x72)
	lw x76, 0(x76)
	fsub x75, x75, x76
	lw x76, 1(x13)
	lw x77, 5(x72)
	lw x77, 1(x77)
	fsub x76, x76, x77
	lw x77, 2(x13)
	lw x78, 5(x72)
	lw x78, 2(x78)
	fsub x77, x77, x78
	lw x78, 1(x65)
	lwr x71, x78, x71
	lw x78, 1(x72)
	bne x78, x105, pretrace_pixels_beqelse_b5315
# B5314
	lw x78, 0(x65)
	lw x79, 0(x71)
	fsub x79, x79, x75
	lw x8, 1(x71)
	fmul x79, x79, x8
	lw x80, 1(x78)
	fmul x81, x79, x80
	fadd x81, x81, x76
	fabs x81, x81
	lw x82, 4(x72)
	lw x82, 1(x82)
	bfle x82, x81, pretrace_pixels_bfgtelse_b5321
# B5317
	lw x81, 2(x78)
	fmul x81, x79, x81
	fadd x81, x81, x77
	fabs x81, x81
	lw x83, 4(x72)
	lw x83, 2(x83)
	bfle x83, x81, pretrace_pixels_bfgtelse_b5321
# B5319
	feq x8, x8, zero
	xori x8, x8, 1
	mv x81, x8
# B5320
	bne x81, zero, pretrace_pixels_beqelse_b5322
pretrace_pixels_bfgtelse_b5321:
# B5321
	lw x79, 2(x71)
	fsub x79, x79, x76
	lw x8, 3(x71)
	fmul x79, x79, x8
	lw x81, 0(x78)
	fmul x83, x79, x81
	fadd x83, x83, x75
	fabs x83, x83
	lw x84, 4(x72)
	lw x84, 0(x84)
	bfle x84, x83, pretrace_pixels_bfgtelse_b5328
# B5324
	lw x78, 2(x78)
	fmul x78, x79, x78
	fadd x78, x78, x77
	fabs x78, x78
	lw x72, 4(x72)
	lw x72, 2(x72)
	bfle x72, x78, pretrace_pixels_bfgtelse_b5328
# B5326
	feq x72, x8, zero
	xori x72, x72, 1
	mv x78, x72
# B5327
	bne x78, zero, pretrace_pixels_beqelse_b5329
pretrace_pixels_bfgtelse_b5328:
# B5328
	lw x72, 4(x71)
	fsub x72, x72, x77
	lw x71, 5(x71)
	fmul x72, x72, x71
	fmul x77, x72, x81
	fadd x75, x77, x75
	fabs x75, x75
	bfle x84, x75, pretrace_pixels_bfgtelse_b5355
# B5331
	fmul x75, x72, x80
	fadd x75, x75, x76
	fabs x75, x75
	bfle x82, x75, pretrace_pixels_bfgtelse_b5355
# B5333
	feq x71, x71, zero
	xori x71, x71, 1
	mv x75, x71
# B5334
	bne x75, zero, pretrace_pixels_beqelse_b5336
	j pretrace_pixels_cont_b5355 # adhoc jump(3)
pretrace_pixels_beqelse_b5336:
# B5336
	sw x72, 0(x33)
	mv x71, x119
	j pretrace_pixels_cont_b5354 # adhoc jump(2)
pretrace_pixels_beqelse_b5329:
# B5329
	sw x79, 0(x33)
	mv x71, x106
	j pretrace_pixels_cont_b5354 # adhoc jump(2)
pretrace_pixels_beqelse_b5322:
# B5322
	sw x79, 0(x33)
	mv x71, x105
	j pretrace_pixels_cont_b5354 # adhoc jump(2)
pretrace_pixels_beqelse_b5315:
# B5315
	bne x78, x106, pretrace_pixels_beqelse_b5338
# B5337
	lw x72, 0(x71)
	bfle zero, x72, pretrace_pixels_bfgtelse_b5355
# B5340
	lw x72, 1(x71)
	fmul x72, x72, x75
	lw x75, 2(x71)
	fmul x75, x75, x76
	fadd x72, x72, x75
	lw x71, 3(x71)
	fmul x71, x71, x77
	fadd x71, x72, x71
	sw x71, 0(x33)
	mv x71, x105
	j pretrace_pixels_cont_b5354 # adhoc jump(2)
pretrace_pixels_beqelse_b5338:
# B5338
	lw x78, 0(x71)
	bfeq x78, zero, pretrace_pixels_bfneqelse_b5355
# B5341
	lw x79, 1(x71)
	fmul x79, x79, x75
	lw x8, 2(x71)
	fmul x8, x8, x76
	fadd x79, x79, x8
	lw x8, 3(x71)
	fmul x8, x8, x77
	fadd x79, x79, x8
	fmul x8, x75, x75
	lw x80, 4(x72)
	lw x80, 0(x80)
	fmul x8, x8, x80
	fmul x80, x76, x76
	lw x81, 4(x72)
	lw x81, 1(x81)
	fmul x80, x80, x81
	fadd x8, x8, x80
	fmul x80, x77, x77
	lw x81, 4(x72)
	lw x81, 2(x81)
	fmul x80, x80, x81
	fadd x8, x8, x80
	lw x80, 3(x72)
	bne x80, zero, pretrace_pixels_beqelse_b5344
# B5343
	mv x75, x8
	j pretrace_pixels_cont_b5345 # adhoc jump(2)
pretrace_pixels_beqelse_b5344:
# B5344
	fmul x80, x76, x77
	lw x81, 9(x72)
	lw x81, 0(x81)
	fmul x80, x80, x81
	fadd x8, x8, x80
	fmul x77, x77, x75
	lw x80, 9(x72)
	lw x80, 1(x80)
	fmul x77, x77, x80
	fadd x77, x8, x77
	fmul x75, x75, x76
	lw x76, 9(x72)
	lw x76, 2(x76)
	fmul x75, x75, x76
	fadd x75, x77, x75
pretrace_pixels_cont_b5345:
# B5345
	lw x76, 1(x72)
	bne x76, x119, pretrace_pixels_beqelse_b5348
# B5346
	fsub x75, x75, x110
pretrace_pixels_beqelse_b5348:
# B5348
	fmul x76, x79, x79
	fmul x75, x78, x75
	fsub x75, x76, x75
	bfle x75, zero, pretrace_pixels_bfgtelse_b5355
# B5350
	lw x72, 6(x72)
	fsqrt x75, x75
	bne x72, zero, pretrace_pixels_beqelse_b5352
# B5351
	fsub x72, x79, x75
	lw x71, 4(x71)
	fmul x71, x72, x71
	sw x71, 0(x33)
	j pretrace_pixels_cont_b5353 # adhoc jump(2)
pretrace_pixels_beqelse_b5352:
# B5352
	fadd x72, x79, x75
	lw x71, 4(x71)
	fmul x71, x72, x71
	sw x71, 0(x33)
pretrace_pixels_cont_b5353:
# B5353
	mv x71, x105
pretrace_pixels_cont_b5354:
# B5354
	bne x71, zero, pretrace_pixels_beqelse_b5356
pretrace_pixels_bfgtelse_b5355:
pretrace_pixels_bfneqelse_b5355:
pretrace_pixels_cont_b5355:
# B5355
	mv x71, zero
	j pretrace_pixels_cont_b5445 # adhoc jump(2)
pretrace_pixels_beqelse_b5356:
# B5356
	lw x71, 0(x33)
	bfle x35, x71, pretrace_pixels_bfgtelse_b5357
# B5358
	mv x72, x105
	mv x75, x6
pretrace_pixels_loop_b5359:
# B5359
	lwr x71, x75, x72
	beq x71, x34, pretrace_pixels_bneelse_b5443
# B5361
	lwr x71, x39, x71
	mv x77, x71
	mv x76, zero
pretrace_pixels_beqelse_b5362:
pretrace_pixels_loop_b5362:
# B5362
	lwr x71, x77, x76
	beq x71, x34, pretrace_pixels_bneelse_b5440
# B5364
	lwr x71, x77, x76
	lwr x78, x118, x71
	lw x79, 0(x13)
	lw x8, 5(x78)
	lw x8, 0(x8)
	fsub x8, x79, x8
	lw x80, 1(x13)
	lw x81, 5(x78)
	lw x81, 1(x81)
	fsub x81, x80, x81
	lw x82, 2(x13)
	lw x83, 5(x78)
	lw x83, 2(x83)
	fsub x83, x82, x83
	lw x84, 1(x65)
	lwr x84, x84, x71
	lw x85, 1(x78)
	bne x85, x105, pretrace_pixels_beqelse_b5366
# B5365
	lw x85, 0(x65)
	lw x86, 0(x84)
	fsub x86, x86, x8
	lw x87, 1(x84)
	fmul x86, x86, x87
	lw x88, 1(x85)
	fmul x89, x86, x88
	fadd x89, x89, x81
	fabs x89, x89
	lw x9, 4(x78)
	lw x9, 1(x9)
	bfle x9, x89, pretrace_pixels_bfgtelse_b5372
# B5368
	lw x89, 2(x85)
	fmul x89, x86, x89
	fadd x89, x89, x83
	fabs x89, x89
	lw x90, 4(x78)
	lw x90, 2(x90)
	bfle x90, x89, pretrace_pixels_bfgtelse_b5372
# B5370
	feq x87, x87, zero
	xori x87, x87, 1
	mv x89, x87
# B5371
	bne x89, zero, pretrace_pixels_beqelse_b5373
pretrace_pixels_bfgtelse_b5372:
# B5372
	lw x86, 2(x84)
	fsub x86, x86, x81
	lw x87, 3(x84)
	fmul x86, x86, x87
	lw x89, 0(x85)
	fmul x90, x86, x89
	fadd x90, x90, x8
	fabs x90, x90
	lw x91, 4(x78)
	lw x91, 0(x91)
	bfle x91, x90, pretrace_pixels_bfgtelse_b5379
# B5375
	lw x85, 2(x85)
	fmul x85, x86, x85
	fadd x85, x85, x83
	fabs x85, x85
	lw x78, 4(x78)
	lw x78, 2(x78)
	bfle x78, x85, pretrace_pixels_bfgtelse_b5379
# B5377
	feq x78, x87, zero
	xori x78, x78, 1
	mv x85, x78
# B5378
	bne x85, zero, pretrace_pixels_beqelse_b5380
pretrace_pixels_bfgtelse_b5379:
# B5379
	lw x78, 4(x84)
	fsub x78, x78, x83
	lw x83, 5(x84)
	fmul x78, x78, x83
	fmul x84, x78, x89
	fadd x8, x84, x8
	fabs x8, x8
	bfle x91, x8, pretrace_pixels_bfgtelse_b5386
# B5382
	fmul x8, x78, x88
	fadd x8, x8, x81
	fabs x8, x8
	bfle x9, x8, pretrace_pixels_bfgtelse_b5386
# B5384
	feq x8, x83, zero
	xori x8, x8, 1
	mv x81, x8
# B5385
	bne x81, zero, pretrace_pixels_beqelse_b5387
pretrace_pixels_bfgtelse_b5386:
# B5386
	mv x78, zero
	j pretrace_pixels_cont_b5405 # adhoc jump(2)
pretrace_pixels_beqelse_b5387:
# B5387
	sw x78, 0(x33)
	mv x78, x119
	j pretrace_pixels_cont_b5405 # adhoc jump(2)
pretrace_pixels_beqelse_b5380:
# B5380
	sw x86, 0(x33)
	mv x78, x106
	j pretrace_pixels_cont_b5405 # adhoc jump(2)
pretrace_pixels_beqelse_b5373:
# B5373
	sw x86, 0(x33)
	mv x78, x105
	j pretrace_pixels_cont_b5405 # adhoc jump(2)
pretrace_pixels_beqelse_b5366:
# B5366
	bne x85, x106, pretrace_pixels_beqelse_b5389
# B5388
	lw x78, 0(x84)
	bfle zero, x78, pretrace_pixels_bfgtelse_b5390
# B5391
	lw x78, 1(x84)
	fmul x78, x78, x8
	lw x8, 2(x84)
	fmul x8, x8, x81
	fadd x78, x78, x8
	lw x8, 3(x84)
	fmul x8, x8, x83
	fadd x78, x78, x8
	sw x78, 0(x33)
	mv x78, x105
	j pretrace_pixels_cont_b5405 # adhoc jump(2)
pretrace_pixels_bfgtelse_b5390:
# B5390
	mv x78, zero
	j pretrace_pixels_cont_b5405 # adhoc jump(2)
pretrace_pixels_beqelse_b5389:
# B5389
	lw x85, 0(x84)
	bfeq x85, zero, pretrace_pixels_bfneqelse_b5393
# B5392
	lw x86, 1(x84)
	fmul x86, x86, x8
	lw x87, 2(x84)
	fmul x87, x87, x81
	fadd x86, x86, x87
	lw x87, 3(x84)
	fmul x87, x87, x83
	fadd x86, x86, x87
	fmul x87, x8, x8
	lw x88, 4(x78)
	lw x88, 0(x88)
	fmul x87, x87, x88
	fmul x88, x81, x81
	lw x89, 4(x78)
	lw x89, 1(x89)
	fmul x88, x88, x89
	fadd x87, x87, x88
	fmul x88, x83, x83
	lw x89, 4(x78)
	lw x89, 2(x89)
	fmul x88, x88, x89
	fadd x87, x87, x88
	lw x88, 3(x78)
	bne x88, zero, pretrace_pixels_beqelse_b5395
# B5394
	mv x8, x87
	j pretrace_pixels_cont_b5396 # adhoc jump(2)
pretrace_pixels_beqelse_b5395:
# B5395
	fmul x88, x81, x83
	lw x89, 9(x78)
	lw x89, 0(x89)
	fmul x88, x88, x89
	fadd x87, x87, x88
	fmul x83, x83, x8
	lw x88, 9(x78)
	lw x88, 1(x88)
	fmul x83, x83, x88
	fadd x83, x87, x83
	fmul x8, x8, x81
	lw x81, 9(x78)
	lw x81, 2(x81)
	fmul x8, x8, x81
	fadd x8, x83, x8
pretrace_pixels_cont_b5396:
# B5396
	lw x81, 1(x78)
	bne x81, x119, pretrace_pixels_beqelse_b5399
# B5397
	fsub x8, x8, x110
pretrace_pixels_beqelse_b5399:
# B5399
	fmul x81, x86, x86
	fmul x8, x85, x8
	fsub x8, x81, x8
	bfle x8, zero, pretrace_pixels_bfgtelse_b5400
# B5401
	lw x78, 6(x78)
	fsqrt x8, x8
	bne x78, zero, pretrace_pixels_beqelse_b5403
# B5402
	fsub x78, x86, x8
	lw x8, 4(x84)
	fmul x78, x78, x8
	sw x78, 0(x33)
	j pretrace_pixels_cont_b5404 # adhoc jump(2)
pretrace_pixels_beqelse_b5403:
# B5403
	fadd x78, x86, x8
	lw x8, 4(x84)
	fmul x78, x78, x8
	sw x78, 0(x33)
pretrace_pixels_cont_b5404:
# B5404
	mv x78, x105
	j pretrace_pixels_cont_b5405 # adhoc jump(2)
pretrace_pixels_bfgtelse_b5400:
# B5400
	mv x78, zero
	j pretrace_pixels_cont_b5405 # adhoc jump(2)
pretrace_pixels_bfneqelse_b5393:
# B5393
	mv x78, zero
pretrace_pixels_cont_b5405:
# B5405
	lw x8, 0(x33)
	bne x78, zero, pretrace_pixels_beqelse_b5407
# B5406
	mv x78, zero
	j pretrace_pixels_cont_b5408 # adhoc jump(2)
pretrace_pixels_beqelse_b5407:
# B5407
	fle x78, x69, x8
	xori x78, x78, 1
pretrace_pixels_cont_b5408:
# B5408
	addi x76, x76, 1
	bne x78, zero, pretrace_pixels_beqelse_b5410
# B5409
	lwr x71, x118, x71
	lw x71, 6(x71)
	beq x71, zero, pretrace_pixels_bneelse_b5440
	j	pretrace_pixels_beqelse_b5362 # moved need extra jump for 5362 at B5409
pretrace_pixels_beqelse_b5410:
# B5410
	fadd x71, x8, x40
	lw x78, 0(x100)
	fmul x78, x78, x71
	fadd x78, x78, x79
	lw x79, 1(x100)
	fmul x79, x79, x71
	fadd x79, x79, x80
	lw x8, 2(x100)
	fmul x71, x8, x71
	fadd x71, x71, x82
	mv x80, x77
	mv x82, x79
	mv x83, x71
	mv x81, x78
	mv x8, zero
	j	pretrace_pixels_loop_b5413 # jumping over moved block
pretrace_pixels_bneelse_b5434:	#moved
# B5434
	addi x8, x8, 1
pretrace_pixels_loop_b5413:
# B5413
	lwr x71, x80, x8
	bne x71, x34, pretrace_pixels_beqelse_b5415
# B5414
	mv x78, x105
# B5436
	bne x78, zero, pretrace_pixels_beqelse_b5438
	j	pretrace_pixels_beqelse_b5362 # moved need extra jump for 5362 at B5436
pretrace_pixels_beqelse_b5438:
# B5438
	mv x71, x105
pretrace_pixels_cont_b5439:
# B5439
	bne x71, zero, pretrace_pixels_beqelse_b5441
pretrace_pixels_bneelse_b5440:
pretrace_pixels_cont_b5440:
# B5440
	addi x72, x72, 1
	j pretrace_pixels_loop_b5359 # loopback to while entry from B5440
pretrace_pixels_beqelse_b5441:
# B5441
	mv x76, x105
# B5442
	bne x76, zero, pretrace_pixels_beqelse_b5444
pretrace_pixels_bneelse_b5443:
# B5443
	mv x71, zero
	j pretrace_pixels_cont_b5445 # adhoc jump(2)
pretrace_pixels_beqelse_b5444:
# B5444
	mv x71, x105
	j pretrace_pixels_cont_b5445 # adhoc jump(2)
pretrace_pixels_beqelse_b5415:
# B5415
	lwr x71, x118, x71
	lw x78, 5(x71)
	lw x78, 0(x78)
	fsub x78, x81, x78
	lw x79, 5(x71)
	lw x79, 1(x79)
	fsub x79, x82, x79
	lw x84, 5(x71)
	lw x84, 2(x84)
	fsub x84, x83, x84
	lw x85, 1(x71)
	bne x85, x105, pretrace_pixels_beqelse_b5417
# B5416
	fabs x78, x78
	lw x85, 4(x71)
	lw x85, 0(x85)
	bfle x85, x78, pretrace_pixels_bfgtelse_b5423
# B5419
	fabs x78, x79
	lw x79, 4(x71)
	lw x79, 1(x79)
	bfle x79, x78, pretrace_pixels_bfgtelse_b5423
# B5421
	fabs x78, x84
	lw x79, 4(x71)
	lw x79, 2(x79)
	fle x78, x79, x78
	xori x78, x78, 1
	mv x79, x78
# B5422
	bne x79, zero, pretrace_pixels_beqelse_b5424
pretrace_pixels_bfgtelse_b5423:
# B5423
	lw x71, 6(x71)
	xori x71, x71, 1
	j pretrace_pixels_cont_b5433 # adhoc jump(2)
pretrace_pixels_beqelse_b5424:
# B5424
	lw x71, 6(x71)
	j pretrace_pixels_cont_b5433 # adhoc jump(2)
pretrace_pixels_beqelse_b5417:
# B5417
	bne x85, x106, pretrace_pixels_beqelse_b5426
# B5425
	lw x85, 4(x71)
	lw x86, 0(x85)
	fmul x78, x86, x78
	lw x86, 1(x85)
	fmul x79, x86, x79
	fadd x78, x78, x79
	lw x79, 2(x85)
	fmul x79, x79, x84
	fadd x78, x78, x79
	lw x71, 6(x71)
	fle x78, zero, x78
	xori x78, x78, 1
	xor x71, x71, x78
	xori x71, x71, 1
	j pretrace_pixels_cont_b5433 # adhoc jump(2)
pretrace_pixels_beqelse_b5426:
# B5426
	fmul x85, x78, x78
	lw x86, 4(x71)
	lw x86, 0(x86)
	fmul x85, x85, x86
	fmul x86, x79, x79
	lw x87, 4(x71)
	lw x87, 1(x87)
	fmul x86, x86, x87
	fadd x85, x85, x86
	fmul x86, x84, x84
	lw x87, 4(x71)
	lw x87, 2(x87)
	fmul x86, x86, x87
	fadd x85, x85, x86
	lw x86, 3(x71)
	bne x86, zero, pretrace_pixels_beqelse_b5428
# B5427
	mv x78, x85
	j pretrace_pixels_cont_b5429 # adhoc jump(2)
pretrace_pixels_beqelse_b5428:
# B5428
	fmul x86, x79, x84
	lw x87, 9(x71)
	lw x87, 0(x87)
	fmul x86, x86, x87
	fadd x85, x85, x86
	fmul x84, x84, x78
	lw x86, 9(x71)
	lw x86, 1(x86)
	fmul x84, x84, x86
	fadd x84, x85, x84
	fmul x78, x78, x79
	lw x79, 9(x71)
	lw x79, 2(x79)
	fmul x78, x78, x79
	fadd x78, x84, x78
pretrace_pixels_cont_b5429:
# B5429
	lw x79, 1(x71)
	bne x79, x119, pretrace_pixels_beqelse_b5432
# B5430
	fsub x78, x78, x110
pretrace_pixels_beqelse_b5432:
# B5432
	lw x71, 6(x71)
	fle x78, zero, x78
	xori x78, x78, 1
	xor x71, x71, x78
	xori x71, x71, 1
pretrace_pixels_cont_b5433:
# B5433
	beq x71, zero, pretrace_pixels_bneelse_b5434
	j	pretrace_pixels_beqelse_b5362 # moved need extra jump for 5362 at B5433
pretrace_pixels_bfgtelse_b5357:
# B5357
	mv x71, zero
pretrace_pixels_cont_b5445:
# B5445
	addi x72, x73, 1
	bne x71, zero, pretrace_pixels_beqelse_b5447
# B5446
	mv x73, x72
	j pretrace_pixels_loop_b5309 # loopback to while entry from B5446
pretrace_pixels_beqelse_b5447:
# B5447
	mv x73, x105
	mv x75, x6
pretrace_pixels_loop_b5448:
# B5448
	lwr x6, x75, x73
	beq x6, x34, pretrace_pixels_bneelse_b5532
# B5450
	lwr x6, x39, x6
	mv x76, x6
	mv x71, zero
pretrace_pixels_beqelse_b5451:
pretrace_pixels_loop_b5451:
# B5451
	lwr x6, x76, x71
	beq x6, x34, pretrace_pixels_bneelse_b5529
# B5453
	lwr x6, x76, x71
	lwr x77, x118, x6
	lw x78, 0(x13)
	lw x79, 5(x77)
	lw x79, 0(x79)
	fsub x79, x78, x79
	lw x8, 1(x13)
	lw x80, 5(x77)
	lw x80, 1(x80)
	fsub x80, x8, x80
	lw x81, 2(x13)
	lw x82, 5(x77)
	lw x82, 2(x82)
	fsub x82, x81, x82
	lw x83, 1(x65)
	lwr x83, x83, x6
	lw x84, 1(x77)
	bne x84, x105, pretrace_pixels_beqelse_b5455
# B5454
	lw x84, 0(x65)
	lw x85, 0(x83)
	fsub x85, x85, x79
	lw x86, 1(x83)
	fmul x85, x85, x86
	lw x87, 1(x84)
	fmul x88, x85, x87
	fadd x88, x88, x80
	fabs x88, x88
	lw x89, 4(x77)
	lw x89, 1(x89)
	bfle x89, x88, pretrace_pixels_bfgtelse_b5461
# B5457
	lw x88, 2(x84)
	fmul x88, x85, x88
	fadd x88, x88, x82
	fabs x88, x88
	lw x9, 4(x77)
	lw x9, 2(x9)
	bfle x9, x88, pretrace_pixels_bfgtelse_b5461
# B5459
	feq x86, x86, zero
	xori x86, x86, 1
	mv x88, x86
# B5460
	bne x88, zero, pretrace_pixels_beqelse_b5462
pretrace_pixels_bfgtelse_b5461:
# B5461
	lw x85, 2(x83)
	fsub x85, x85, x80
	lw x86, 3(x83)
	fmul x85, x85, x86
	lw x88, 0(x84)
	fmul x9, x85, x88
	fadd x9, x9, x79
	fabs x9, x9
	lw x90, 4(x77)
	lw x90, 0(x90)
	bfle x90, x9, pretrace_pixels_bfgtelse_b5468
# B5464
	lw x84, 2(x84)
	fmul x84, x85, x84
	fadd x84, x84, x82
	fabs x84, x84
	lw x77, 4(x77)
	lw x77, 2(x77)
	bfle x77, x84, pretrace_pixels_bfgtelse_b5468
# B5466
	feq x77, x86, zero
	xori x77, x77, 1
	mv x84, x77
# B5467
	bne x84, zero, pretrace_pixels_beqelse_b5469
pretrace_pixels_bfgtelse_b5468:
# B5468
	lw x77, 4(x83)
	fsub x77, x77, x82
	lw x82, 5(x83)
	fmul x77, x77, x82
	fmul x83, x77, x88
	fadd x79, x83, x79
	fabs x79, x79
	bfle x90, x79, pretrace_pixels_bfgtelse_b5475
# B5471
	fmul x79, x77, x87
	fadd x79, x79, x80
	fabs x79, x79
	bfle x89, x79, pretrace_pixels_bfgtelse_b5475
# B5473
	feq x79, x82, zero
	xori x79, x79, 1
	mv x80, x79
# B5474
	bne x80, zero, pretrace_pixels_beqelse_b5476
pretrace_pixels_bfgtelse_b5475:
# B5475
	mv x77, zero
	j pretrace_pixels_cont_b5494 # adhoc jump(2)
pretrace_pixels_beqelse_b5476:
# B5476
	sw x77, 0(x33)
	mv x77, x119
	j pretrace_pixels_cont_b5494 # adhoc jump(2)
pretrace_pixels_beqelse_b5469:
# B5469
	sw x85, 0(x33)
	mv x77, x106
	j pretrace_pixels_cont_b5494 # adhoc jump(2)
pretrace_pixels_beqelse_b5462:
# B5462
	sw x85, 0(x33)
	mv x77, x105
	j pretrace_pixels_cont_b5494 # adhoc jump(2)
pretrace_pixels_beqelse_b5455:
# B5455
	bne x84, x106, pretrace_pixels_beqelse_b5478
# B5477
	lw x77, 0(x83)
	bfle zero, x77, pretrace_pixels_bfgtelse_b5479
# B5480
	lw x77, 1(x83)
	fmul x77, x77, x79
	lw x79, 2(x83)
	fmul x79, x79, x80
	fadd x77, x77, x79
	lw x79, 3(x83)
	fmul x79, x79, x82
	fadd x77, x77, x79
	sw x77, 0(x33)
	mv x77, x105
	j pretrace_pixels_cont_b5494 # adhoc jump(2)
pretrace_pixels_bfgtelse_b5479:
# B5479
	mv x77, zero
	j pretrace_pixels_cont_b5494 # adhoc jump(2)
pretrace_pixels_beqelse_b5478:
# B5478
	lw x84, 0(x83)
	bfeq x84, zero, pretrace_pixels_bfneqelse_b5482
# B5481
	lw x85, 1(x83)
	fmul x85, x85, x79
	lw x86, 2(x83)
	fmul x86, x86, x80
	fadd x85, x85, x86
	lw x86, 3(x83)
	fmul x86, x86, x82
	fadd x85, x85, x86
	fmul x86, x79, x79
	lw x87, 4(x77)
	lw x87, 0(x87)
	fmul x86, x86, x87
	fmul x87, x80, x80
	lw x88, 4(x77)
	lw x88, 1(x88)
	fmul x87, x87, x88
	fadd x86, x86, x87
	fmul x87, x82, x82
	lw x88, 4(x77)
	lw x88, 2(x88)
	fmul x87, x87, x88
	fadd x86, x86, x87
	lw x87, 3(x77)
	bne x87, zero, pretrace_pixels_beqelse_b5484
# B5483
	mv x79, x86
	j pretrace_pixels_cont_b5485 # adhoc jump(2)
pretrace_pixels_beqelse_b5484:
# B5484
	fmul x87, x80, x82
	lw x88, 9(x77)
	lw x88, 0(x88)
	fmul x87, x87, x88
	fadd x86, x86, x87
	fmul x82, x82, x79
	lw x87, 9(x77)
	lw x87, 1(x87)
	fmul x82, x82, x87
	fadd x82, x86, x82
	fmul x79, x79, x80
	lw x80, 9(x77)
	lw x80, 2(x80)
	fmul x79, x79, x80
	fadd x79, x82, x79
pretrace_pixels_cont_b5485:
# B5485
	lw x80, 1(x77)
	bne x80, x119, pretrace_pixels_beqelse_b5488
# B5486
	fsub x79, x79, x110
pretrace_pixels_beqelse_b5488:
# B5488
	fmul x80, x85, x85
	fmul x79, x84, x79
	fsub x79, x80, x79
	bfle x79, zero, pretrace_pixels_bfgtelse_b5489
# B5490
	lw x77, 6(x77)
	fsqrt x79, x79
	bne x77, zero, pretrace_pixels_beqelse_b5492
# B5491
	fsub x77, x85, x79
	lw x79, 4(x83)
	fmul x77, x77, x79
	sw x77, 0(x33)
	j pretrace_pixels_cont_b5493 # adhoc jump(2)
pretrace_pixels_beqelse_b5492:
# B5492
	fadd x77, x85, x79
	lw x79, 4(x83)
	fmul x77, x77, x79
	sw x77, 0(x33)
pretrace_pixels_cont_b5493:
# B5493
	mv x77, x105
	j pretrace_pixels_cont_b5494 # adhoc jump(2)
pretrace_pixels_bfgtelse_b5489:
# B5489
	mv x77, zero
	j pretrace_pixels_cont_b5494 # adhoc jump(2)
pretrace_pixels_bfneqelse_b5482:
# B5482
	mv x77, zero
pretrace_pixels_cont_b5494:
# B5494
	lw x79, 0(x33)
	bne x77, zero, pretrace_pixels_beqelse_b5496
# B5495
	mv x77, zero
	j pretrace_pixels_cont_b5497 # adhoc jump(2)
pretrace_pixels_beqelse_b5496:
# B5496
	fle x77, x69, x79
	xori x77, x77, 1
pretrace_pixels_cont_b5497:
# B5497
	addi x71, x71, 1
	bne x77, zero, pretrace_pixels_beqelse_b5499
# B5498
	lwr x6, x118, x6
	lw x6, 6(x6)
	beq x6, zero, pretrace_pixels_bneelse_b5529
	j	pretrace_pixels_beqelse_b5451 # moved need extra jump for 5451 at B5498
pretrace_pixels_beqelse_b5499:
# B5499
	fadd x6, x79, x40
	lw x77, 0(x100)
	fmul x77, x77, x6
	fadd x77, x77, x78
	lw x78, 1(x100)
	fmul x78, x78, x6
	fadd x78, x78, x8
	lw x79, 2(x100)
	fmul x6, x79, x6
	fadd x6, x6, x81
	mv x80, x77
	mv x82, x6
	mv x8, x76
	mv x81, x78
	mv x79, zero
	j	pretrace_pixels_loop_b5502 # jumping over moved block
pretrace_pixels_bneelse_b5523:	#moved
# B5523
	addi x79, x79, 1
pretrace_pixels_loop_b5502:
# B5502
	lwr x6, x8, x79
	bne x6, x34, pretrace_pixels_beqelse_b5504
# B5503
	mv x77, x105
# B5525
	bne x77, zero, pretrace_pixels_beqelse_b5527
	j	pretrace_pixels_beqelse_b5451 # moved need extra jump for 5451 at B5525
pretrace_pixels_beqelse_b5527:
# B5527
	mv x6, x105
pretrace_pixels_cont_b5528:
# B5528
	bne x6, zero, pretrace_pixels_beqelse_b5530
pretrace_pixels_bneelse_b5529:
pretrace_pixels_cont_b5529:
# B5529
	addi x73, x73, 1
	j pretrace_pixels_loop_b5448 # loopback to while entry from B5529
pretrace_pixels_beqelse_b5530:
# B5530
	mv x71, x105
# B5531
	bne x71, zero, pretrace_pixels_beqelse_b5533
pretrace_pixels_bneelse_b5532:
# B5532
	mv x73, x72
	j pretrace_pixels_loop_b5309 # loopback to while entry from B5532
pretrace_pixels_beqelse_b5533:
# B5533
	mv x6, x105
# B5534
	bne x6, zero, pretrace_pixels_beqelse_b5542
pretrace_pixels_bneelse_b5535:
# B5535
	lw x36, 0(x36)
	lw x6, 0(x19)
	lw x71, 0(x36)
	fmul x6, x6, x71
	lw x71, 1(x19)
	lw x72, 1(x36)
	fmul x71, x71, x72
	fadd x6, x6, x71
	lw x71, 2(x19)
	lw x72, 2(x36)
	fmul x71, x71, x72
	fadd x6, x6, x71
	lw x31, 2(x31)
	fmul x71, x31, x68
	fmul x6, x71, x6
	lw x71, 0(x70)
	lw x72, 0(x36)
	fmul x71, x71, x72
	lw x72, 1(x70)
	lw x73, 1(x36)
	fmul x72, x72, x73
	fadd x71, x71, x72
	lw x72, 2(x70)
	lw x36, 2(x36)
	fmul x36, x72, x36
	fadd x36, x71, x36
	fmul x31, x31, x36
	bfle x6, zero, pretrace_pixels_bfgtelse_b5539
# B5538
	lw x36, 0(x107)
	lw x71, 0(x17)
	fmul x71, x6, x71
	fadd x36, x36, x71
	sw x36, 0(x107)
	lw x36, 1(x107)
	lw x71, 1(x17)
	fmul x71, x6, x71
	fadd x36, x36, x71
	sw x36, 1(x107)
	lw x36, 2(x107)
	lw x71, 2(x17)
	fmul x6, x6, x71
	fadd x36, x36, x6
	sw x36, 2(x107)
pretrace_pixels_bfgtelse_b5539:
# B5539
	bfle x31, zero, pretrace_pixels_bfgtelse_b5542
# B5541
	fmul x31, x31, x31
	fmul x31, x31, x31
	fmul x31, x31, x7
	lw x36, 0(x107)
	fadd x36, x36, x31
	sw x36, 0(x107)
	lw x36, 1(x107)
	fadd x36, x36, x31
	sw x36, 1(x107)
	lw x36, 2(x107)
	fadd x31, x36, x31
	sw x31, 2(x107)
pretrace_pixels_beqelse_b5542:
pretrace_pixels_bfgtelse_b5542:
pretrace_pixels_cont_b5542:
# B5542
	addi x67, x67, -1
	j pretrace_pixels_loop_b5099 # loopback to while entry from B5542
pretrace_pixels_beqelse_b5504:
# B5504
	lwr x6, x118, x6
	lw x77, 5(x6)
	lw x77, 0(x77)
	fsub x77, x80, x77
	lw x78, 5(x6)
	lw x78, 1(x78)
	fsub x78, x81, x78
	lw x83, 5(x6)
	lw x83, 2(x83)
	fsub x83, x82, x83
	lw x84, 1(x6)
	bne x84, x105, pretrace_pixels_beqelse_b5506
# B5505
	fabs x77, x77
	lw x84, 4(x6)
	lw x84, 0(x84)
	bfle x84, x77, pretrace_pixels_bfgtelse_b5512
# B5508
	fabs x77, x78
	lw x78, 4(x6)
	lw x78, 1(x78)
	bfle x78, x77, pretrace_pixels_bfgtelse_b5512
# B5510
	fabs x77, x83
	lw x78, 4(x6)
	lw x78, 2(x78)
	fle x77, x78, x77
	xori x77, x77, 1
	mv x78, x77
# B5511
	bne x78, zero, pretrace_pixels_beqelse_b5513
pretrace_pixels_bfgtelse_b5512:
# B5512
	lw x6, 6(x6)
	xori x6, x6, 1
	j pretrace_pixels_cont_b5522 # adhoc jump(2)
pretrace_pixels_beqelse_b5513:
# B5513
	lw x6, 6(x6)
	j pretrace_pixels_cont_b5522 # adhoc jump(2)
pretrace_pixels_beqelse_b5506:
# B5506
	bne x84, x106, pretrace_pixels_beqelse_b5515
# B5514
	lw x84, 4(x6)
	lw x85, 0(x84)
	fmul x77, x85, x77
	lw x85, 1(x84)
	fmul x78, x85, x78
	fadd x77, x77, x78
	lw x78, 2(x84)
	fmul x78, x78, x83
	fadd x77, x77, x78
	lw x6, 6(x6)
	fle x77, zero, x77
	xori x77, x77, 1
	xor x6, x6, x77
	xori x6, x6, 1
	j pretrace_pixels_cont_b5522 # adhoc jump(2)
pretrace_pixels_beqelse_b5515:
# B5515
	fmul x84, x77, x77
	lw x85, 4(x6)
	lw x85, 0(x85)
	fmul x84, x84, x85
	fmul x85, x78, x78
	lw x86, 4(x6)
	lw x86, 1(x86)
	fmul x85, x85, x86
	fadd x84, x84, x85
	fmul x85, x83, x83
	lw x86, 4(x6)
	lw x86, 2(x86)
	fmul x85, x85, x86
	fadd x84, x84, x85
	lw x85, 3(x6)
	bne x85, zero, pretrace_pixels_beqelse_b5517
# B5516
	mv x77, x84
	j pretrace_pixels_cont_b5518 # adhoc jump(2)
pretrace_pixels_beqelse_b5517:
# B5517
	fmul x85, x78, x83
	lw x86, 9(x6)
	lw x86, 0(x86)
	fmul x85, x85, x86
	fadd x84, x84, x85
	fmul x83, x83, x77
	lw x85, 9(x6)
	lw x85, 1(x85)
	fmul x83, x83, x85
	fadd x83, x84, x83
	fmul x77, x77, x78
	lw x78, 9(x6)
	lw x78, 2(x78)
	fmul x77, x77, x78
	fadd x77, x83, x77
pretrace_pixels_cont_b5518:
# B5518
	lw x78, 1(x6)
	bne x78, x119, pretrace_pixels_beqelse_b5521
# B5519
	fsub x77, x77, x110
pretrace_pixels_beqelse_b5521:
# B5521
	lw x6, 6(x6)
	fle x77, zero, x77
	xori x77, x77, 1
	xor x6, x6, x77
	xori x6, x6, 1
pretrace_pixels_cont_b5522:
# B5522
	beq x6, zero, pretrace_pixels_bneelse_b5523
	j	pretrace_pixels_beqelse_b5451 # moved need extra jump for 5451 at B5522
pretrace_pixels_bleelse_b5543:
# B5543
	bfle x26, x23, pretrace_pixels_bfgtelse_b5551
# B5545
	addi x30, x25, 1
	bge x25, x117, pretrace_pixels_bgtelse_b5548
# B5547
	add x4, x10, x30
	sw x34, 0(x4)
pretrace_pixels_bgtelse_b5548:
# B5548
	beq x38, x106, pretrace_pixels_bneelse_b5549
pretrace_pixels_bfgtelse_b5551:
pretrace_pixels_bleelse_b5551:
pretrace_pixels_bneelse_b5551:
pretrace_pixels_cont_b5551:
# B5551
	lwr x10, x111, x112
	lw x10, 0(x10)
	lw x100, 0(x107)
	sw x100, 0(x10)
	lw x100, 1(x107)
	sw x100, 1(x10)
	lw x100, 2(x107)
	sw x100, 2(x10)
	lwr x10, x111, x112
	lw x10, 6(x10)
	sw x113, 0(x10)
	lwr x10, x111, x112
	la x122, min_caml_diffuse_ray
	la x123, min_caml_dirvecs
	mv x125, zero
	mv x124, x10
pretrace_pixels_cont_b5552:
pretrace_pixels_loop_b5552:
# B5552
	bgt x125, x117, pretrace_pixels_bleelse_b5582
# B5553
	lw x10, 2(x124)
	lwr x10, x10, x125
	bgt zero, x10, pretrace_pixels_bleelse_b5582
# B5555
	lw x10, 3(x124)
	lwr x10, x10, x125
	beq x10, zero, pretrace_pixels_bneelse_b5581
# B5558
	lw x10, 6(x124)
	lw x10, 0(x10)
	sw zero, 0(x122)
	sw zero, 1(x122)
	sw zero, 2(x122)
	lw x100, 7(x124)
	lw x11, 1(x124)
	lwr x10, x123, x10
	lwr x100, x100, x125
	lwr x11, x11, x125
	lw x12, 0(x11)
	sw x12, 0(x120)
	lw x12, 1(x11)
	sw x12, 1(x120)
	lw x12, 2(x11)
	sw x12, 2(x120)
	lw x12, 0(x121)
	addi x12, x12, -1
	mv x14, x12
	mv x13, x11
pretrace_pixels_loop_b5559:
# B5559
	bgt zero, x14, pretrace_pixels_bleelse_b5573
# B5560
	lwr x12, x118, x14
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
	bne x16, x106, pretrace_pixels_beqelse_b5563
# B5562
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
	j pretrace_pixels_cont_b5572 # adhoc jump(2)
pretrace_pixels_beqelse_b5563:
# B5563
	bge x106, x16, pretrace_pixels_bgtelse_b5572
# B5565
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
	bne x21, zero, pretrace_pixels_beqelse_b5567
# B5566
	mv x12, x20
	j pretrace_pixels_cont_b5568 # adhoc jump(2)
pretrace_pixels_beqelse_b5567:
# B5567
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
pretrace_pixels_cont_b5568:
# B5568
	bne x16, x119, pretrace_pixels_beqelse_b5571
# B5569
	fsub x12, x12, x110
pretrace_pixels_beqelse_b5571:
# B5571
	sw x12, 3(x15)
pretrace_pixels_bgtelse_b5572:
pretrace_pixels_cont_b5572:
# B5572
	addi x14, x14, -1
	j pretrace_pixels_loop_b5559 # loopback to while entry from B5572
pretrace_pixels_bleelse_b5573:
# B5573
	li x12, 118
	lui x126, 274784
	lui x127, 799072
	mv x41, x10
	mv x44, x12
	mv x42, x100
	mv x43, x11
pretrace_pixels_loop_b5574:
# B5574
	bgt zero, x44, pretrace_pixels_bleelse_b5580
# B5575
	lwr x10, x41, x44
	lw x10, 0(x10)
	lw x100, 0(x10)
	lw x11, 0(x42)
	fmul x100, x100, x11
	lw x11, 1(x10)
	lw x12, 1(x42)
	fmul x11, x11, x12
	fadd x100, x100, x11
	lw x10, 2(x10)
	lw x11, 2(x42)
	fmul x10, x10, x11
	fadd x10, x100, x10
	bfle zero, x10, pretrace_pixels_bfgtelse_b5577
# B5578
	addi x100, x44, 1
	lwr x5, x41, x100
	fdiv x65, x10, x127
	addi	x2, x2, 33
	jal	trace_diffuse_ray.3077
	addi	x2, x2, -33
	j pretrace_pixels_cont_b5579 # adhoc jump(2)
pretrace_pixels_bfgtelse_b5577:
# B5577
	lwr x5, x41, x44
	fdiv x65, x10, x126
	addi	x2, x2, 33
	jal	trace_diffuse_ray.3077
	addi	x2, x2, -33
pretrace_pixels_cont_b5579:
# B5579
	addi x44, x44, -2
	j pretrace_pixels_loop_b5574 # loopback to while entry from B5579
pretrace_pixels_bleelse_b5580:
# B5580
	lw x10, 5(x124)
	lwr x10, x10, x125
	lw x100, 0(x122)
	sw x100, 0(x10)
	lw x100, 1(x122)
	sw x100, 1(x10)
	lw x100, 2(x122)
	sw x100, 2(x10)
pretrace_pixels_bneelse_b5581:
# B5581
	addi x125, x125, 1
	j pretrace_pixels_loop_b5552 # loopback to while entry from B5581
pretrace_pixels_bleelse_b5582:
# B5582
	addi x10, x112, -1
	addi x100, x113, 1
	li x11, 5
	bgt x11, x100, pretrace_pixels_bleelse_b5585
# B5583
	addi x100, x100, -5
pretrace_pixels_bleelse_b5585:
# B5585
	mv x112, x10
	mv x113, x100
	j pretrace_pixels_loop_b4443 # loopback to while entry from B5585
pretrace_pixels_beqelse_b5045:
# B5045
	lwr x36, x118, x36
	lw x72, 5(x36)
	lw x72, 0(x72)
	fsub x72, x76, x72
	lw x73, 5(x36)
	lw x73, 1(x73)
	fsub x73, x77, x73
	lw x79, 5(x36)
	lw x79, 2(x79)
	fsub x79, x78, x79
	lw x8, 1(x36)
	bne x8, x105, pretrace_pixels_beqelse_b5047
# B5046
	fabs x72, x72
	lw x8, 4(x36)
	lw x8, 0(x8)
	bfle x8, x72, pretrace_pixels_bfgtelse_b5053
# B5049
	fabs x72, x73
	lw x73, 4(x36)
	lw x73, 1(x73)
	bfle x73, x72, pretrace_pixels_bfgtelse_b5053
# B5051
	fabs x72, x79
	lw x73, 4(x36)
	lw x73, 2(x73)
	fle x72, x73, x72
	xori x72, x72, 1
	mv x73, x72
# B5052
	bne x73, zero, pretrace_pixels_beqelse_b5054
pretrace_pixels_bfgtelse_b5053:
# B5053
	lw x36, 6(x36)
	xori x36, x36, 1
	j pretrace_pixels_cont_b5063 # adhoc jump(2)
pretrace_pixels_beqelse_b5054:
# B5054
	lw x36, 6(x36)
	j pretrace_pixels_cont_b5063 # adhoc jump(2)
pretrace_pixels_beqelse_b5047:
# B5047
	bne x8, x106, pretrace_pixels_beqelse_b5056
# B5055
	lw x8, 4(x36)
	lw x80, 0(x8)
	fmul x72, x80, x72
	lw x80, 1(x8)
	fmul x73, x80, x73
	fadd x72, x72, x73
	lw x73, 2(x8)
	fmul x73, x73, x79
	fadd x72, x72, x73
	lw x36, 6(x36)
	fle x72, zero, x72
	xori x72, x72, 1
	xor x36, x36, x72
	xori x36, x36, 1
	j pretrace_pixels_cont_b5063 # adhoc jump(2)
pretrace_pixels_beqelse_b5056:
# B5056
	fmul x8, x72, x72
	lw x80, 4(x36)
	lw x80, 0(x80)
	fmul x8, x8, x80
	fmul x80, x73, x73
	lw x81, 4(x36)
	lw x81, 1(x81)
	fmul x80, x80, x81
	fadd x8, x8, x80
	fmul x80, x79, x79
	lw x81, 4(x36)
	lw x81, 2(x81)
	fmul x80, x80, x81
	fadd x8, x8, x80
	lw x80, 3(x36)
	bne x80, zero, pretrace_pixels_beqelse_b5058
# B5057
	mv x72, x8
	j pretrace_pixels_cont_b5059 # adhoc jump(2)
pretrace_pixels_beqelse_b5058:
# B5058
	fmul x80, x73, x79
	lw x81, 9(x36)
	lw x81, 0(x81)
	fmul x80, x80, x81
	fadd x8, x8, x80
	fmul x79, x79, x72
	lw x80, 9(x36)
	lw x80, 1(x80)
	fmul x79, x79, x80
	fadd x79, x8, x79
	fmul x72, x72, x73
	lw x73, 9(x36)
	lw x73, 2(x73)
	fmul x72, x72, x73
	fadd x72, x79, x72
pretrace_pixels_cont_b5059:
# B5059
	lw x73, 1(x36)
	bne x73, x119, pretrace_pixels_beqelse_b5062
# B5060
	fsub x72, x72, x110
pretrace_pixels_beqelse_b5062:
# B5062
	lw x36, 6(x36)
	fle x72, zero, x72
	xori x72, x72, 1
	xor x36, x36, x72
	xori x36, x36, 1
pretrace_pixels_cont_b5063:
# B5063
	beq x36, zero, pretrace_pixels_bneelse_b5064
	j	pretrace_pixels_beqelse_b4992 # moved need extra jump for 4992 at B5063
pretrace_pixels_bleelse_b4445:
# B4445
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
	sw	x55, 42(x2)
	sw	x56, 43(x2)
	sw	x57, 44(x2)
	sw	x58, 45(x2)
	sw	x59, 46(x2)
	sw	x60, 47(x2)
	sw	x61, 48(x2)
	sw	x62, 49(x2)
	sw	x63, 50(x2)
	sw	x64, 51(x2)
body_main:
# B5586
# B5587
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
	la x7, min_caml_Tt76904
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
	la x5, min_caml_Ta76917
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
	la x5, min_caml_Ta76922
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
	la x7, min_caml_Tt76963
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
	la x7, min_caml_Tt76976
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
	li x10, 512
	li x101, 6
	la x102, min_caml_image_size
	sw x10, 0(x102)
	li x103, 1
	sw x10, 1(x102)
	la x104, min_caml_image_center
	li x105, 2
	li x100, 256
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
	addi x10, x107, -2
	mv x109, x10
	mv x107, x5
	j	main_loop_b5588 # jumping over moved block
main_bgtelse_b5589:	#moved
# B5589
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
main_loop_b5588:
# B5588
	bge x109, zero, main_bgtelse_b5589
# B5591
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
	addi x10, x109, -2
	mv x111, x10
	mv x109, x5
	j	main_loop_b5592 # jumping over moved block
main_bgtelse_b5593:	#moved
# B5593
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
main_loop_b5592:
# B5592
	bge x111, zero, main_bgtelse_b5593
# B5595
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
	addi x10, x111, -2
	mv x113, x10
	mv x111, x5
	j	main_loop_b5596 # jumping over moved block
main_bgtelse_b5597:	#moved
# B5597
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
main_loop_b5596:
# B5596
	bge x113, zero, main_bgtelse_b5597
# B5599
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
main_loop_b5600:
# B5600
	bfle x13, x14, main_bfgtelse_b5603
# B5601
	fmul x14, x14, x114
	j main_loop_b5600 # loopback to while entry from B5601
main_bfgtelse_b5603:
# B5603
	mv x15, x12
	mv x16, x14
	j	main_loop_b5604 # jumping over moved block
main_bfgtelse_b5608:	#moved
# B5608
	mv x16, x13
main_loop_b5604:
# B5604
	bfle x113, x15, main_bfgtelse_b5606
# B5609
	lui x115, 263313
	addi x115, x115, -37
	fle x13, x115, x15
	bne x13, zero, main_beqelse_b5611
# B5610
	mv x14, x15
	j main_cont_b5612 # adhoc jump(2)
main_beqelse_b5611:
# B5611
	fsub x14, x15, x115
main_cont_b5612:
# B5612
	xori x13, x13, 1
	lui x116, 261265
	addi x116, x116, -37
	fle x15, x116, x14
	bne x15, zero, main_beqelse_b5614
	j main_cont_b5615 # adhoc jump(3)
main_beqelse_b5614:
# B5614
	fsub x14, x115, x14
main_cont_b5615:
# B5615
	xor x13, x15, x13
	lui x117, 259217
	addi x117, x117, -37
	lui x118, 260096
	lui x119, 782336
	lui x120, 250538
	addi x120, x120, 1929
	lui x121, 764728
	addi x121, x121, 262
	lui x122, 778923
	addi x122, x122, -1364
	lui x123, 245896
	addi x123, x123, 1638
	lui x124, 758998
	addi x124, x124, 1206
	bfle x117, x14, main_bfgtelse_b5617
main_cont_b5616:
# B5616
	fmul x14, x14, x14
	fmul x15, x14, x121
	fadd x15, x120, x15
	fmul x15, x14, x15
	fadd x15, x119, x15
	fmul x14, x14, x15
	fadd x14, x118, x14
	j main_cont_b5618 # adhoc jump(2)
main_bfgtelse_b5617:
# B5617
	fsub x14, x116, x14
	fmul x15, x14, x14
	fmul x16, x15, x124
	fadd x16, x123, x16
	fmul x16, x15, x16
	fadd x16, x122, x16
	fmul x15, x15, x16
	fadd x15, x118, x15
	fmul x14, x14, x15
main_cont_b5618:
# B5618
	fle x15, x14, zero
	beq x13, x15, main_bneelse_b5620
# B5619
	mv x13, x14
	j main_cont_b5621 # adhoc jump(2)
main_bneelse_b5620:
# B5620
	fsub x13, zero, x14
main_cont_b5621:
# B5621
	fle x100, x100, zero
	xori x100, x100, 1
	mv x15, x113
	mv x14, x12
main_loop_b5622:
# B5622
	bfle x14, x15, main_bfgtelse_b5625
# B5623
	fmul x15, x15, x114
	j main_loop_b5622 # loopback to while entry from B5623
main_bfgtelse_b5625:
# B5625
	mv x17, x15
	mv x16, x12
	j	main_loop_b5626 # jumping over moved block
main_bfgtelse_b5630:	#moved
# B5630
	mv x17, x12
main_loop_b5626:
# B5626
	bfle x113, x16, main_bfgtelse_b5628
# B5631
	fle x12, x115, x16
	bne x12, zero, main_beqelse_b5633
# B5632
	mv x14, x16
	j main_cont_b5634 # adhoc jump(2)
main_beqelse_b5633:
# B5633
	fsub x14, x16, x115
main_cont_b5634:
# B5634
	xor x100, x12, x100
	bfle x116, x14, main_bfgtelse_b5636
# B5635
	mv x12, x14
	j main_cont_b5637 # adhoc jump(2)
main_bfgtelse_b5636:
# B5636
	fsub x12, x115, x14
main_cont_b5637:
# B5637
	bfle x117, x12, main_bfgtelse_b5639
# B5638
	fmul x14, x12, x12
	fmul x15, x14, x124
	fadd x15, x123, x15
	fmul x15, x14, x15
	fadd x15, x122, x15
	fmul x14, x14, x15
	fadd x14, x118, x14
	fmul x12, x12, x14
	j main_cont_b5640 # adhoc jump(2)
main_bfgtelse_b5639:
# B5639
	fsub x12, x116, x12
	fmul x12, x12, x12
	fmul x14, x12, x121
	fadd x14, x120, x14
	fmul x14, x12, x14
	fadd x14, x119, x14
	fmul x12, x12, x14
	fadd x12, x118, x12
main_cont_b5640:
# B5640
	fle x14, x12, zero
	beq x100, x14, main_bneelse_b5642
# B5641
	mv x100, x12
	j main_cont_b5643 # adhoc jump(2)
main_bneelse_b5642:
# B5642
	fsub x100, zero, x12
main_cont_b5643:
# B5643
	in32 x12
	fmul x12, x12, x11
	fabs x14, x12
	mv x15, x14
	mv x16, x113
main_loop_b5644:
# B5644
	bfle x15, x16, main_bfgtelse_b5647
# B5645
	fmul x16, x16, x114
	j main_loop_b5644 # loopback to while entry from B5645
main_bfgtelse_b5647:
# B5647
	mv x18, x16
	mv x17, x14
	j	main_loop_b5648 # jumping over moved block
main_bfgtelse_b5652:	#moved
# B5652
	mv x18, x15
main_loop_b5648:
# B5648
	bfle x113, x17, main_bfgtelse_b5650
# B5653
	fle x15, x115, x17
	bne x15, zero, main_beqelse_b5655
# B5654
	mv x16, x17
	j main_cont_b5656 # adhoc jump(2)
main_beqelse_b5655:
# B5655
	fsub x16, x17, x115
main_cont_b5656:
# B5656
	xori x15, x15, 1
	fle x17, x116, x16
	bne x17, zero, main_beqelse_b5658
	j main_cont_b5659 # adhoc jump(3)
main_beqelse_b5658:
# B5658
	fsub x16, x115, x16
main_cont_b5659:
# B5659
	xor x15, x17, x15
	bfle x117, x16, main_bfgtelse_b5661
main_cont_b5660:
# B5660
	fmul x16, x16, x16
	fmul x17, x16, x121
	fadd x17, x120, x17
	fmul x17, x16, x17
	fadd x17, x119, x17
	fmul x16, x16, x17
	fadd x16, x118, x16
	j main_cont_b5662 # adhoc jump(2)
main_bfgtelse_b5661:
# B5661
	fsub x16, x116, x16
	fmul x17, x16, x16
	fmul x18, x17, x124
	fadd x18, x123, x18
	fmul x18, x17, x18
	fadd x18, x122, x18
	fmul x17, x17, x18
	fadd x17, x118, x17
	fmul x16, x16, x17
main_cont_b5662:
# B5662
	fle x17, x16, zero
	beq x15, x17, main_bneelse_b5664
# B5663
	mv x15, x16
	j main_cont_b5665 # adhoc jump(2)
main_bneelse_b5664:
# B5664
	fsub x15, zero, x16
main_cont_b5665:
# B5665
	fle x12, x12, zero
	xori x12, x12, 1
	mv x16, x14
	mv x17, x113
main_loop_b5666:
# B5666
	bfle x16, x17, main_bfgtelse_b5669
# B5667
	fmul x17, x17, x114
	j main_loop_b5666 # loopback to while entry from B5667
main_bfgtelse_b5669:
# B5669
	mv x18, x14
	mv x19, x17
	j	main_loop_b5670 # jumping over moved block
main_bfgtelse_b5674:	#moved
# B5674
	mv x19, x14
main_loop_b5670:
# B5670
	bfle x113, x18, main_bfgtelse_b5672
# B5675
	fle x14, x115, x18
	bne x14, zero, main_beqelse_b5677
# B5676
	mv x16, x18
	j main_cont_b5678 # adhoc jump(2)
main_beqelse_b5677:
# B5677
	fsub x16, x18, x115
main_cont_b5678:
# B5678
	xor x12, x14, x12
	bfle x116, x16, main_bfgtelse_b5680
# B5679
	mv x14, x16
	j main_cont_b5681 # adhoc jump(2)
main_bfgtelse_b5680:
# B5680
	fsub x14, x115, x16
main_cont_b5681:
# B5681
	bfle x117, x14, main_bfgtelse_b5683
# B5682
	fmul x16, x14, x14
	fmul x17, x16, x124
	fadd x17, x123, x17
	fmul x17, x16, x17
	fadd x17, x122, x17
	fmul x16, x16, x17
	fadd x16, x118, x16
	fmul x14, x14, x16
	j main_cont_b5684 # adhoc jump(2)
main_bfgtelse_b5683:
# B5683
	fsub x14, x116, x14
	fmul x14, x14, x14
	fmul x16, x14, x121
	fadd x16, x120, x16
	fmul x16, x14, x16
	fadd x16, x119, x16
	fmul x14, x14, x16
	fadd x14, x118, x14
main_cont_b5684:
# B5684
	fle x16, x14, zero
	beq x12, x16, main_bneelse_b5686
# B5685
	mv x12, x14
	j main_cont_b5687 # adhoc jump(2)
main_bneelse_b5686:
# B5686
	fsub x12, zero, x14
main_cont_b5687:
# B5687
	la x125, min_caml_screenz_dir
	fmul x14, x13, x12
	lui x16, 275584
	fmul x14, x14, x16
	sw x14, 0(x125)
	lui x14, 799872
	fmul x14, x100, x14
	sw x14, 1(x125)
	fmul x14, x13, x15
	fmul x14, x14, x16
	sw x14, 2(x125)
	la x126, min_caml_screenx_dir
	sw x15, 0(x126)
	sw zero, 1(x126)
	fsub x14, zero, x12
	sw x14, 2(x126)
	la x127, min_caml_screeny_dir
	fsub x100, zero, x100
	fmul x12, x100, x12
	sw x12, 0(x127)
	fsub x12, zero, x13
	sw x12, 1(x127)
	fmul x100, x100, x15
	sw x100, 2(x127)
	la x41, min_caml_viewpoint
	lw x100, 0(x10)
	lw x12, 0(x125)
	fsub x100, x100, x12
	sw x100, 0(x41)
	lw x100, 1(x10)
	lw x12, 1(x125)
	fsub x100, x100, x12
	sw x100, 1(x41)
	lw x10, 2(x10)
	lw x100, 2(x125)
	fsub x10, x10, x100
	sw x10, 2(x41)
	in32 x10
	in32 x10
	fmul x10, x10, x11
	fle x100, x10, zero
	xori x100, x100, 1
	fabs x10, x10
	mv x12, x10
	mv x13, x113
main_loop_b5688:
# B5688
	bfle x12, x13, main_bfgtelse_b5691
# B5689
	fmul x13, x13, x114
	j main_loop_b5688 # loopback to while entry from B5689
main_bfgtelse_b5691:
# B5691
	mv x15, x13
	mv x14, x10
	j	main_loop_b5692 # jumping over moved block
main_bfgtelse_b5696:	#moved
# B5696
	mv x15, x12
main_loop_b5692:
# B5692
	bfle x113, x14, main_bfgtelse_b5694
# B5697
	fle x12, x115, x14
	bne x12, zero, main_beqelse_b5699
# B5698
	mv x13, x14
	j main_cont_b5700 # adhoc jump(2)
main_beqelse_b5699:
# B5699
	fsub x13, x14, x115
main_cont_b5700:
# B5700
	xor x100, x12, x100
	bfle x116, x13, main_bfgtelse_b5702
# B5701
	mv x12, x13
	j main_cont_b5703 # adhoc jump(2)
main_bfgtelse_b5702:
# B5702
	fsub x12, x115, x13
main_cont_b5703:
# B5703
	bfle x117, x12, main_bfgtelse_b5705
# B5704
	fmul x13, x12, x12
	fmul x14, x13, x124
	fadd x14, x123, x14
	fmul x14, x13, x14
	fadd x14, x122, x14
	fmul x13, x13, x14
	fadd x13, x118, x13
	fmul x12, x12, x13
	j main_cont_b5706 # adhoc jump(2)
main_bfgtelse_b5705:
# B5705
	fsub x12, x116, x12
	fmul x12, x12, x12
	fmul x13, x12, x121
	fadd x13, x120, x13
	fmul x13, x12, x13
	fadd x13, x119, x13
	fmul x12, x12, x13
	fadd x12, x118, x12
main_cont_b5706:
# B5706
	fle x13, x12, zero
	beq x100, x13, main_bneelse_b5708
# B5707
	mv x100, x12
	j main_cont_b5709 # adhoc jump(2)
main_bneelse_b5708:
# B5708
	fsub x100, zero, x12
main_cont_b5709:
# B5709
	la x42, min_caml_light
	fsub x100, zero, x100
	sw x100, 1(x42)
	in32 x100
	fmul x100, x100, x11
	mv x12, x113
	mv x11, x10
main_loop_b5710:
# B5710
	bfle x11, x12, main_bfgtelse_b5713
# B5711
	fmul x12, x12, x114
	j main_loop_b5710 # loopback to while entry from B5711
main_bfgtelse_b5713:
# B5713
	mv x14, x12
	mv x13, x10
	j	main_loop_b5714 # jumping over moved block
main_bfgtelse_b5718:	#moved
# B5718
	mv x14, x10
main_loop_b5714:
# B5714
	bfle x113, x13, main_bfgtelse_b5716
# B5719
	fle x10, x115, x13
	bne x10, zero, main_beqelse_b5721
# B5720
	mv x11, x13
	j main_cont_b5722 # adhoc jump(2)
main_beqelse_b5721:
# B5721
	fsub x11, x13, x115
main_cont_b5722:
# B5722
	xori x10, x10, 1
	fle x12, x116, x11
	bne x12, zero, main_beqelse_b5724
	j main_cont_b5725 # adhoc jump(3)
main_beqelse_b5724:
# B5724
	fsub x11, x115, x11
main_cont_b5725:
# B5725
	xor x10, x12, x10
	bfle x117, x11, main_bfgtelse_b5727
main_cont_b5726:
# B5726
	fmul x11, x11, x11
	fmul x12, x11, x121
	fadd x12, x120, x12
	fmul x12, x11, x12
	fadd x12, x119, x12
	fmul x11, x11, x12
	fadd x11, x118, x11
	j main_cont_b5728 # adhoc jump(2)
main_bfgtelse_b5727:
# B5727
	fsub x11, x116, x11
	fmul x12, x11, x11
	fmul x13, x12, x124
	fadd x13, x123, x13
	fmul x13, x12, x13
	fadd x13, x122, x13
	fmul x12, x12, x13
	fadd x12, x118, x12
	fmul x11, x11, x12
main_cont_b5728:
# B5728
	fle x12, x11, zero
	beq x10, x12, main_bneelse_b5730
# B5729
	mv x10, x11
	j main_cont_b5731 # adhoc jump(2)
main_bneelse_b5730:
# B5730
	fsub x10, zero, x11
main_cont_b5731:
# B5731
	fle x11, x100, zero
	xori x11, x11, 1
	fabs x100, x100
	mv x12, x100
	mv x13, x113
main_loop_b5732:
# B5732
	bfle x12, x13, main_bfgtelse_b5735
# B5733
	fmul x13, x13, x114
	j main_loop_b5732 # loopback to while entry from B5733
main_bfgtelse_b5735:
# B5735
	mv x15, x13
	mv x14, x100
	j	main_loop_b5736 # jumping over moved block
main_bfgtelse_b5740:	#moved
# B5740
	mv x15, x12
main_loop_b5736:
# B5736
	bfle x113, x14, main_bfgtelse_b5738
# B5741
	fle x12, x115, x14
	bne x12, zero, main_beqelse_b5743
# B5742
	mv x13, x14
	j main_cont_b5744 # adhoc jump(2)
main_beqelse_b5743:
# B5743
	fsub x13, x14, x115
main_cont_b5744:
# B5744
	xor x11, x12, x11
	bfle x116, x13, main_bfgtelse_b5746
# B5745
	mv x12, x13
	j main_cont_b5747 # adhoc jump(2)
main_bfgtelse_b5746:
# B5746
	fsub x12, x115, x13
main_cont_b5747:
# B5747
	bfle x117, x12, main_bfgtelse_b5749
# B5748
	fmul x13, x12, x12
	fmul x14, x13, x124
	fadd x14, x123, x14
	fmul x14, x13, x14
	fadd x14, x122, x14
	fmul x13, x13, x14
	fadd x13, x118, x13
	fmul x12, x12, x13
	j main_cont_b5750 # adhoc jump(2)
main_bfgtelse_b5749:
# B5749
	fsub x12, x116, x12
	fmul x12, x12, x12
	fmul x13, x12, x121
	fadd x13, x120, x13
	fmul x13, x12, x13
	fadd x13, x119, x13
	fmul x12, x12, x13
	fadd x12, x118, x12
main_cont_b5750:
# B5750
	fle x13, x12, zero
	beq x11, x13, main_bneelse_b5752
# B5751
	mv x11, x12
	j main_cont_b5753 # adhoc jump(2)
main_bneelse_b5752:
# B5752
	fsub x11, zero, x12
main_cont_b5753:
# B5753
	fmul x11, x10, x11
	sw x11, 0(x42)
	mv x12, x100
	mv x13, x113
main_loop_b5754:
# B5754
	bfle x12, x13, main_bfgtelse_b5757
# B5755
	fmul x13, x13, x114
	j main_loop_b5754 # loopback to while entry from B5755
main_bfgtelse_b5757:
# B5757
	mv x14, x13
	mv x11, x100
	j	main_loop_b5758 # jumping over moved block
main_bfgtelse_b5762:	#moved
# B5762
	mv x14, x100
main_loop_b5758:
# B5758
	bfle x113, x11, main_bfgtelse_b5760
# B5763
	fle x100, x115, x11
	bne x100, zero, main_beqelse_b5765
	j main_cont_b5766 # adhoc jump(3)
main_beqelse_b5765:
# B5765
	fsub x11, x11, x115
main_cont_b5766:
# B5766
	xori x100, x100, 1
	fle x12, x116, x11
	bne x12, zero, main_beqelse_b5768
	j main_cont_b5769 # adhoc jump(3)
main_beqelse_b5768:
main_cont_b5768:
# B5768
	fsub x11, x115, x11
main_cont_b5769:
# B5769
	xor x100, x12, x100
	bfle x117, x11, main_bfgtelse_b5771
main_cont_b5770:
# B5770
	fmul x11, x11, x11
	fmul x12, x11, x121
	fadd x12, x120, x12
	fmul x12, x11, x12
	fadd x12, x119, x12
	fmul x11, x11, x12
	fadd x11, x118, x11
	j main_cont_b5772 # adhoc jump(2)
main_bfgtelse_b5771:
# B5771
	fsub x11, x116, x11
	fmul x12, x11, x11
	fmul x13, x12, x124
	fadd x13, x123, x13
	fmul x13, x12, x13
	fadd x13, x122, x13
	fmul x12, x12, x13
	fadd x12, x118, x12
	fmul x11, x11, x12
main_cont_b5772:
# B5772
	fle x12, x11, zero
	beq x100, x12, main_bneelse_b5774
# B5773
	mv x100, x11
	j main_cont_b5775 # adhoc jump(2)
main_bneelse_b5774:
# B5774
	fsub x100, zero, x11
main_cont_b5775:
# B5775
	fmul x10, x10, x100
	sw x10, 2(x42)
	la x10, min_caml_beam
	in32 x100
	sw x100, 0(x10)
	mv x5, zero
	addi	x2, x2, 53
	jal	read_object.2872
	addi	x2, x2, -53
	la x43, min_caml_and_net
	li x44, -1
	mv x45, zero
	j	main_loop_b5776 # jumping over moved block
main_beqelse_b5778:	#moved
# B5778
	add x4, x43, x45
	sw x5, 0(x4)
	addi x45, x45, 1
main_loop_b5776:
# B5776
	mv x5, zero
	addi	x2, x2, 53
	jal	read_net_item.2876
	addi	x2, x2, -53
	lw x10, 0(x5)
	bne x10, x44, main_beqelse_b5778
# B5779
	la x43, min_caml_or_net
	mv x5, zero
	addi	x2, x2, 53
	jal	read_or_network.2878
	addi	x2, x2, -53
	sw x5, 0(x43)
	li x10, 80
	out8 x10
	li x10, 54
	out8 x10
	li x44, 10
	out8 x44
	lw x10, 0(x102)
	li x45, 48
	li x46, 45
	bgt zero, x10, main_bleelse_b5781
# B5780
	mv x100, x10
	mv x11, zero
	j	main_loop_b5782 # jumping over moved block
main_bneelse_b5804:	#moved
# B5804
	sub x10, x100, x17
	addi x100, x14, 48
	out8 x100
	mv x11, x16
	mv x100, x10
main_loop_b5782:
# B5782
	mv x13, x44
	mv x12, x103
	mv x10, x100
	j	main_loop_b5783 # jumping over moved block
main_bgtelse_b5784:	#moved
# B5784
	slli x12, x13, 3
	slli x14, x13, 1
	add x12, x12, x14
	mv x4, x13
	mv x13, x12
	mv x12, x4
main_loop_b5783:
# B5783
	bge x10, x13, main_bgtelse_b5784
# B5786
	mv x15, x103
	mv x16, zero
	mv x14, x12
	j	main_loop_b5787 # jumping over moved block
main_bleelse_b5789:	#moved
# B5789
	slli x10, x15, 3
	slli x13, x15, 1
	add x15, x10, x13
	addi x16, x16, 1
main_loop_b5787:
# B5787
	bgt x14, x15, main_bleelse_b5789
# B5790
	sub x10, x11, x16
	addi x10, x10, -1
	mv x11, x10
	j	main_loop_b5791 # jumping over moved block
main_bleelse_b5793:	#moved
# B5793
	out8 x45
	addi x11, x11, -1
main_loop_b5791:
# B5791
	bgt x11, zero, main_bleelse_b5793
# B5794
	bne x16, zero, main_beqelse_b5796
# B5795
	addi x10, x100, 48
	out8 x10
	j main_cont_b5828 # adhoc jump(2)
main_beqelse_b5796:
# B5796
	mv x15, x12
	mv x13, x12
	mv x10, x100
	mv x14, x103
	j	main_loop_b5797 # jumping over moved block
main_bgtelse_b5798:	#moved
# B5798
	addi x14, x14, 1
	mv x15, x11
main_loop_b5797:
# B5797
	add x11, x15, x13
	bge x10, x11, main_bgtelse_b5798
# B5800
	mv x15, x12
	mv x18, x14
	mv x17, zero
	j	main_loop_b5801 # jumping over moved block
main_beqelse_b5803:	#moved
# B5803
	add x17, x17, x15
	addi x18, x18, -1
main_loop_b5801:
# B5801
	bne x18, zero, main_beqelse_b5803
	j	main_bneelse_b5804 # moved need extra jump for 5804 at B5801
main_bleelse_b5781:
# B5781
	out8 x46
	sub x10, zero, x10
	mv x100, x10
	mv x11, zero
	j	main_loop_b5805 # jumping over moved block
main_bneelse_b5827:	#moved
# B5827
	sub x10, x100, x17
	addi x100, x14, 48
	out8 x100
	mv x11, x16
	mv x100, x10
main_loop_b5805:
# B5805
	mv x13, x44
	mv x12, x103
	mv x10, x100
	j	main_loop_b5806 # jumping over moved block
main_bgtelse_b5807:	#moved
# B5807
	slli x12, x13, 3
	slli x14, x13, 1
	add x12, x12, x14
	mv x4, x13
	mv x13, x12
	mv x12, x4
main_loop_b5806:
# B5806
	bge x10, x13, main_bgtelse_b5807
# B5809
	mv x15, x103
	mv x16, zero
	mv x14, x12
	j	main_loop_b5810 # jumping over moved block
main_bleelse_b5812:	#moved
# B5812
	slli x10, x15, 3
	slli x13, x15, 1
	add x15, x10, x13
	addi x16, x16, 1
main_loop_b5810:
# B5810
	bgt x14, x15, main_bleelse_b5812
# B5813
	sub x10, x11, x16
	addi x10, x10, -1
	mv x11, x10
	j	main_loop_b5814 # jumping over moved block
main_bleelse_b5816:	#moved
# B5816
	out8 x45
	addi x11, x11, -1
main_loop_b5814:
# B5814
	bgt x11, zero, main_bleelse_b5816
# B5817
	bne x16, zero, main_beqelse_b5819
# B5818
	addi x10, x100, 48
	out8 x10
main_cont_b5828:
# B5828
	li x47, 32
	out8 x47
	lw x10, 1(x102)
	bgt zero, x10, main_bleelse_b5830
# B5829
	mv x100, x10
	mv x11, zero
	j	main_loop_b5831 # jumping over moved block
main_bneelse_b5853:	#moved
# B5853
	sub x10, x100, x17
	addi x100, x14, 48
	out8 x100
	mv x11, x16
	mv x100, x10
main_loop_b5831:
# B5831
	mv x13, x44
	mv x12, x103
	mv x10, x100
	j	main_loop_b5832 # jumping over moved block
main_bgtelse_b5833:	#moved
# B5833
	slli x12, x13, 3
	slli x14, x13, 1
	add x12, x12, x14
	mv x4, x13
	mv x13, x12
	mv x12, x4
main_loop_b5832:
# B5832
	bge x10, x13, main_bgtelse_b5833
# B5835
	mv x15, x103
	mv x16, zero
	mv x14, x12
	j	main_loop_b5836 # jumping over moved block
main_bleelse_b5838:	#moved
# B5838
	slli x10, x15, 3
	slli x13, x15, 1
	add x15, x10, x13
	addi x16, x16, 1
main_loop_b5836:
# B5836
	bgt x14, x15, main_bleelse_b5838
# B5839
	sub x10, x11, x16
	addi x10, x10, -1
	mv x11, x10
	j	main_loop_b5840 # jumping over moved block
main_bleelse_b5842:	#moved
# B5842
	out8 x45
	addi x11, x11, -1
main_loop_b5840:
# B5840
	bgt x11, zero, main_bleelse_b5842
# B5843
	bne x16, zero, main_beqelse_b5845
# B5844
	addi x10, x100, 48
	out8 x10
	j main_cont_b5877 # adhoc jump(2)
main_beqelse_b5845:
# B5845
	mv x15, x12
	mv x13, x12
	mv x10, x100
	mv x14, x103
	j	main_loop_b5846 # jumping over moved block
main_bgtelse_b5847:	#moved
# B5847
	addi x14, x14, 1
	mv x15, x11
main_loop_b5846:
# B5846
	add x11, x15, x13
	bge x10, x11, main_bgtelse_b5847
# B5849
	mv x15, x12
	mv x18, x14
	mv x17, zero
	j	main_loop_b5850 # jumping over moved block
main_beqelse_b5852:	#moved
# B5852
	add x17, x17, x15
	addi x18, x18, -1
main_loop_b5850:
# B5850
	bne x18, zero, main_beqelse_b5852
	j	main_bneelse_b5853 # moved need extra jump for 5853 at B5850
main_bleelse_b5830:
# B5830
	out8 x46
	sub x10, zero, x10
	mv x100, x10
	mv x11, zero
	j	main_loop_b5854 # jumping over moved block
main_bneelse_b5876:	#moved
# B5876
	sub x10, x100, x17
	addi x100, x14, 48
	out8 x100
	mv x11, x16
	mv x100, x10
main_loop_b5854:
# B5854
	mv x13, x44
	mv x12, x103
	mv x10, x100
	j	main_loop_b5855 # jumping over moved block
main_bgtelse_b5856:	#moved
# B5856
	slli x12, x13, 3
	slli x14, x13, 1
	add x12, x12, x14
	mv x4, x13
	mv x13, x12
	mv x12, x4
main_loop_b5855:
# B5855
	bge x10, x13, main_bgtelse_b5856
# B5858
	mv x15, x103
	mv x16, zero
	mv x14, x12
	j	main_loop_b5859 # jumping over moved block
main_bleelse_b5861:	#moved
# B5861
	slli x10, x15, 3
	slli x13, x15, 1
	add x15, x10, x13
	addi x16, x16, 1
main_loop_b5859:
# B5859
	bgt x14, x15, main_bleelse_b5861
# B5862
	sub x10, x11, x16
	addi x10, x10, -1
	mv x11, x10
	j	main_loop_b5863 # jumping over moved block
main_bleelse_b5865:	#moved
# B5865
	out8 x45
	addi x11, x11, -1
main_loop_b5863:
# B5863
	bgt x11, zero, main_bleelse_b5865
# B5866
	bne x16, zero, main_beqelse_b5868
# B5867
	addi x10, x100, 48
	out8 x10
main_cont_b5877:
# B5877
	out8 x47
	li x48, 255
	mv x10, x48
	mv x100, zero
	j	main_loop_b5878 # jumping over moved block
main_bneelse_b5900:	#moved
# B5900
	sub x10, x10, x17
	addi x100, x14, 48
	out8 x100
	mv x100, x16
main_loop_b5878:
# B5878
	mv x13, x44
	mv x12, x103
	mv x11, x10
	j	main_loop_b5879 # jumping over moved block
main_bgtelse_b5880:	#moved
# B5880
	slli x12, x13, 3
	slli x14, x13, 1
	add x12, x12, x14
	mv x4, x13
	mv x13, x12
	mv x12, x4
main_loop_b5879:
# B5879
	bge x11, x13, main_bgtelse_b5880
# B5882
	mv x15, x103
	mv x16, zero
	mv x14, x12
	j	main_loop_b5883 # jumping over moved block
main_bleelse_b5885:	#moved
# B5885
	slli x11, x15, 3
	slli x13, x15, 1
	add x15, x11, x13
	addi x16, x16, 1
main_loop_b5883:
# B5883
	bgt x14, x15, main_bleelse_b5885
# B5886
	sub x100, x100, x16
	addi x100, x100, -1
	mv x11, x100
	j	main_loop_b5887 # jumping over moved block
main_bleelse_b5889:	#moved
# B5889
	out8 x45
	addi x11, x11, -1
main_loop_b5887:
# B5887
	bgt x11, zero, main_bleelse_b5889
# B5890
	bne x16, zero, main_beqelse_b5892
# B5891
	addi x10, x10, 48
	out8 x10
# B5901
	out8 x44
	la x49, min_caml_dirvecs
	li x50, 120
	li x51, 118
	la x52, min_caml_n_objects
	mv x53, x112
	j	main_loop_b5902 # jumping over moved block
main_bleelse_b5908:	#moved
# B5908
	addi x53, x53, -1
main_loop_b5902:
# B5902
	bgt zero, x53, main_bleelse_b5909
# B5903
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
	mv x54, x5
	lw x5, 0(x52)
	mv x6, x54
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
	sw x54, 0(x6)
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
	add x4, x49, x53
	sw x5, 0(x4)
	lwr x10, x49, x53
	mv x54, x10
	mv x55, x51
	j	main_loop_b5905 # jumping over moved block
main_bgtelse_b5906:	#moved
# B5906
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
	mv x56, x5
	lw x5, 0(x52)
	mv x6, x56
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
	sw x56, 0(x10)
	add x4, x54, x55
	sw x10, 0(x4)
	addi x55, x55, -1
main_loop_b5905:
# B5905
	bge x55, zero, main_bgtelse_b5906
	j	main_bleelse_b5908 # moved need extra jump for 5908 at B5905
main_bleelse_b5909:
# B5909
	li x10, 9
	lui x100, 255181
	addi x100, x100, -819
	lui x11, 259686
	addi x11, x11, 1638
	lui x12, 253133
	addi x12, x12, -819
	lui x13, 257536
	lui x14, 262592
	mv x15, x10
	mv x16, zero
	mv x17, zero
main_loop_b5910:
# B5910
	bgt zero, x15, main_bleelse_b6139
# B5911
	itof x10, x15
	fmul x10, x10, x100
	fsub x10, x10, x11
	mv x20, x16
	mv x19, x10
	mv x21, x17
	mv x18, x112
main_loop_b5913:
# B5913
	bgt zero, x18, main_bleelse_b6135
# B5914
	itof x10, x18
	fmul x10, x10, x100
	fsub x22, x10, x11
	mv x27, x19
	mv x26, x22
	mv x25, zero
	mv x23, zero
	mv x24, zero
	mv x28, x20
	mv x29, x21
main_loop_b5916:
# B5916
	fmul x22, x25, x25
	lui x30, 780971
	addi x30, x30, -1366
	lui x31, 778533
	addi x31, x31, -1755
	lui x32, 253497
	addi x32, x32, -456
	lui x33, 777085
	addi x33, x33, 1646
	lui x34, 251742
	addi x34, x34, 1989
	bgt x110, x23, main_bleelse_b5918
# B5917
	fmul x23, x24, x24
	fadd x22, x23, x22
	fadd x22, x22, x118
	fsqrt x22, x22
	fdiv x23, x24, x22
	fdiv x24, x25, x22
	fdiv x22, x118, x22
	lwr x25, x49, x28
	lwr x26, x25, x29
	lw x26, 0(x26)
	sw x23, 0(x26)
	sw x24, 1(x26)
	sw x22, 2(x26)
	addi x26, x29, 40
	lwr x26, x25, x26
	lw x26, 0(x26)
	fsub x27, zero, x24
	sw x23, 0(x26)
	sw x22, 1(x26)
	sw x27, 2(x26)
	addi x26, x29, 80
	lwr x26, x25, x26
	lw x26, 0(x26)
	fsub x28, zero, x23
	sw x22, 0(x26)
	sw x28, 1(x26)
	sw x27, 2(x26)
	addi x26, x29, 1
	lwr x26, x25, x26
	lw x26, 0(x26)
	fsub x22, zero, x22
	sw x28, 0(x26)
	sw x27, 1(x26)
	sw x22, 2(x26)
	addi x26, x29, 41
	lwr x26, x25, x26
	lw x26, 0(x26)
	sw x28, 0(x26)
	sw x22, 1(x26)
	sw x24, 2(x26)
	addi x26, x29, 81
	lwr x25, x25, x26
	lw x25, 0(x25)
	sw x22, 0(x25)
	sw x23, 1(x25)
	sw x24, 2(x25)
# B6023
	fadd x10, x10, x12
	addi x22, x21, 2
	mv x27, x19
	mv x26, x10
	mv x25, zero
	mv x23, zero
	mv x24, zero
	mv x28, x20
	mv x29, x22
main_loop_b6024:
# B6024
	fmul x10, x25, x25
	bgt x110, x23, main_bleelse_b6026
# B6025
	fmul x22, x24, x24
	fadd x10, x22, x10
	fadd x10, x10, x118
	fsqrt x10, x10
	fdiv x22, x24, x10
	fdiv x23, x25, x10
	fdiv x10, x118, x10
	lwr x24, x49, x28
	lwr x25, x24, x29
	lw x25, 0(x25)
	sw x22, 0(x25)
	sw x23, 1(x25)
	sw x10, 2(x25)
	addi x25, x29, 40
	lwr x25, x24, x25
	lw x25, 0(x25)
	fsub x26, zero, x23
	sw x22, 0(x25)
	sw x10, 1(x25)
	sw x26, 2(x25)
	addi x25, x29, 80
	lwr x25, x24, x25
	lw x25, 0(x25)
	fsub x27, zero, x22
	sw x10, 0(x25)
	sw x27, 1(x25)
	sw x26, 2(x25)
	addi x25, x29, 1
	lwr x25, x24, x25
	lw x25, 0(x25)
	fsub x10, zero, x10
	sw x27, 0(x25)
	sw x26, 1(x25)
	sw x10, 2(x25)
	addi x25, x29, 41
	lwr x25, x24, x25
	lw x25, 0(x25)
	sw x27, 0(x25)
	sw x10, 1(x25)
	sw x23, 2(x25)
	addi x25, x29, 81
	lwr x24, x24, x25
	lw x24, 0(x24)
	sw x10, 0(x24)
	sw x22, 1(x24)
	sw x23, 2(x24)
# B6131
	addi x10, x18, -1
	addi x18, x20, 1
	bgt x110, x18, main_bleelse_b6134
# B6132
	addi x18, x18, -5
main_bleelse_b6134:
# B6134
	mv x20, x18
	mv x18, x10
	j main_loop_b5913 # loopback to while entry from B6134
main_bleelse_b6026:
# B6026
	fadd x10, x10, x12
	fsqrt x10, x10
	fdiv x22, x118, x10
	fle x24, x22, zero
	xori x24, x24, 1
	fabs x25, x22
	bfle x13, x25, main_bfgtelse_b6028
# B6027
	fmul x24, x22, x22
	fmul x25, x24, x34
	fadd x25, x33, x25
	fmul x25, x24, x25
	fadd x25, x32, x25
	fmul x25, x24, x25
	fadd x25, x31, x25
	fmul x25, x24, x25
	fadd x25, x100, x25
	fmul x25, x24, x25
	fadd x25, x30, x25
	fmul x24, x24, x25
	fadd x24, x118, x24
	fmul x22, x22, x24
	j main_cont_b6034 # adhoc jump(2)
main_bfgtelse_b6028:
# B6028
	bfle x14, x25, main_bfgtelse_b6030
# B6029
	fsub x22, x25, x118
	fadd x25, x25, x118
	fdiv x22, x22, x25
	fmul x25, x22, x22
	fmul x35, x25, x34
	fadd x35, x33, x35
	fmul x35, x25, x35
	fadd x35, x32, x35
	fmul x35, x25, x35
	fadd x35, x31, x35
	fmul x35, x25, x35
	fadd x35, x100, x35
	fmul x35, x25, x35
	fadd x35, x30, x35
	fmul x25, x25, x35
	fadd x25, x118, x25
	fmul x22, x22, x25
	fadd x22, x117, x22
	j main_cont_b6031 # adhoc jump(2)
main_bfgtelse_b6030:
# B6030
	fdiv x22, x118, x25
	fmul x25, x22, x22
	fmul x35, x25, x34
	fadd x35, x33, x35
	fmul x35, x25, x35
	fadd x35, x32, x35
	fmul x35, x25, x35
	fadd x35, x31, x35
	fmul x35, x25, x35
	fadd x35, x100, x35
	fmul x35, x25, x35
	fadd x35, x30, x35
	fmul x25, x25, x35
	fadd x25, x118, x25
	fmul x22, x22, x25
	fsub x22, x116, x22
main_cont_b6031:
# B6031
	bne x24, zero, main_beqelse_b6034
# B6032
	fsub x22, zero, x22
main_beqelse_b6034:
main_cont_b6034:
# B6034
	fmul x22, x22, x26
	fle x24, x22, zero
	xori x24, x24, 1
	fabs x22, x22
	mv x25, x22
	mv x35, x113
main_loop_b6035:
# B6035
	bfle x25, x35, main_bfgtelse_b6038
# B6036
	fmul x35, x35, x114
	j main_loop_b6035 # loopback to while entry from B6036
main_bfgtelse_b6038:
# B6038
	mv x37, x35
	mv x36, x22
	j	main_loop_b6039 # jumping over moved block
main_bfgtelse_b6043:	#moved
# B6043
	mv x37, x25
main_loop_b6039:
# B6039
	bfle x113, x36, main_bfgtelse_b6041
# B6044
	fle x25, x115, x36
	bne x25, zero, main_beqelse_b6046
# B6045
	mv x35, x36
	j main_cont_b6047 # adhoc jump(2)
main_beqelse_b6046:
# B6046
	fsub x35, x36, x115
main_cont_b6047:
# B6047
	xor x24, x25, x24
	bfle x116, x35, main_bfgtelse_b6049
# B6048
	mv x25, x35
	j main_cont_b6050 # adhoc jump(2)
main_bfgtelse_b6049:
# B6049
	fsub x25, x115, x35
main_cont_b6050:
# B6050
	bfle x117, x25, main_bfgtelse_b6052
# B6051
	fmul x35, x25, x25
	fmul x36, x35, x124
	fadd x36, x123, x36
	fmul x36, x35, x36
	fadd x36, x122, x36
	fmul x35, x35, x36
	fadd x35, x118, x35
	fmul x25, x25, x35
	j main_cont_b6053 # adhoc jump(2)
main_bfgtelse_b6052:
# B6052
	fsub x25, x116, x25
	fmul x25, x25, x25
	fmul x35, x25, x121
	fadd x35, x120, x35
	fmul x35, x25, x35
	fadd x35, x119, x35
	fmul x25, x25, x35
	fadd x25, x118, x25
main_cont_b6053:
# B6053
	fle x35, x25, zero
	beq x24, x35, main_bneelse_b6055
# B6054
	mv x24, x25
	j main_cont_b6056 # adhoc jump(2)
main_bneelse_b6055:
# B6055
	fsub x24, zero, x25
main_cont_b6056:
# B6056
	mv x25, x22
	mv x35, x113
main_loop_b6057:
# B6057
	bfle x25, x35, main_bfgtelse_b6060
# B6058
	fmul x35, x35, x114
	j main_loop_b6057 # loopback to while entry from B6058
main_bfgtelse_b6060:
# B6060
	mv x37, x35
	mv x36, x22
	j	main_loop_b6061 # jumping over moved block
main_bfgtelse_b6065:	#moved
# B6065
	mv x37, x22
main_loop_b6061:
# B6061
	bfle x113, x36, main_bfgtelse_b6063
# B6066
	fle x22, x115, x36
	bne x22, zero, main_beqelse_b6068
# B6067
	mv x25, x36
	j main_cont_b6069 # adhoc jump(2)
main_beqelse_b6068:
# B6068
	fsub x25, x36, x115
main_cont_b6069:
# B6069
	xori x22, x22, 1
	fle x35, x116, x25
	bne x35, zero, main_beqelse_b6071
	j main_cont_b6072 # adhoc jump(3)
main_beqelse_b6071:
# B6071
	fsub x25, x115, x25
main_cont_b6072:
# B6072
	xor x22, x35, x22
	bfle x117, x25, main_bfgtelse_b6074
main_cont_b6073:
# B6073
	fmul x25, x25, x25
	fmul x35, x25, x121
	fadd x35, x120, x35
	fmul x35, x25, x35
	fadd x35, x119, x35
	fmul x25, x25, x35
	fadd x25, x118, x25
	j main_cont_b6075 # adhoc jump(2)
main_bfgtelse_b6074:
# B6074
	fsub x25, x116, x25
	fmul x35, x25, x25
	fmul x36, x35, x124
	fadd x36, x123, x36
	fmul x36, x35, x36
	fadd x36, x122, x36
	fmul x35, x35, x36
	fadd x35, x118, x35
	fmul x25, x25, x35
main_cont_b6075:
# B6075
	fle x35, x25, zero
	beq x22, x35, main_bneelse_b6077
# B6076
	mv x22, x25
	j main_cont_b6078 # adhoc jump(2)
main_bneelse_b6077:
# B6077
	fsub x22, zero, x25
main_cont_b6078:
# B6078
	fdiv x22, x24, x22
	fmul x10, x22, x10
	addi x22, x23, 1
	fmul x23, x10, x10
	fadd x23, x23, x12
	fsqrt x23, x23
	fdiv x24, x118, x23
	fle x25, x24, zero
	xori x25, x25, 1
	fabs x35, x24
	bfle x13, x35, main_bfgtelse_b6080
# B6079
	fmul x25, x24, x24
	fmul x35, x25, x34
	fadd x35, x33, x35
	fmul x35, x25, x35
	fadd x35, x32, x35
	fmul x35, x25, x35
	fadd x35, x31, x35
	fmul x35, x25, x35
	fadd x35, x100, x35
	fmul x35, x25, x35
	fadd x35, x30, x35
	fmul x25, x25, x35
	fadd x25, x118, x25
	fmul x24, x24, x25
	j main_cont_b6086 # adhoc jump(2)
main_bfgtelse_b6080:
# B6080
	bfle x14, x35, main_bfgtelse_b6082
# B6081
	fsub x24, x35, x118
	fadd x35, x35, x118
	fdiv x24, x24, x35
	fmul x35, x24, x24
	fmul x36, x35, x34
	fadd x36, x33, x36
	fmul x36, x35, x36
	fadd x36, x32, x36
	fmul x36, x35, x36
	fadd x36, x31, x36
	fmul x36, x35, x36
	fadd x36, x100, x36
	fmul x36, x35, x36
	fadd x36, x30, x36
	fmul x35, x35, x36
	fadd x35, x118, x35
	fmul x24, x24, x35
	fadd x24, x117, x24
	j main_cont_b6083 # adhoc jump(2)
main_bfgtelse_b6082:
# B6082
	fdiv x24, x118, x35
	fmul x35, x24, x24
	fmul x36, x35, x34
	fadd x36, x33, x36
	fmul x36, x35, x36
	fadd x36, x32, x36
	fmul x36, x35, x36
	fadd x36, x31, x36
	fmul x36, x35, x36
	fadd x36, x100, x36
	fmul x36, x35, x36
	fadd x36, x30, x36
	fmul x35, x35, x36
	fadd x35, x118, x35
	fmul x24, x24, x35
	fsub x24, x116, x24
main_cont_b6083:
# B6083
	bne x25, zero, main_beqelse_b6086
# B6084
	fsub x24, zero, x24
main_beqelse_b6086:
main_cont_b6086:
# B6086
	fmul x24, x24, x27
	fle x25, x24, zero
	xori x25, x25, 1
	fabs x24, x24
	mv x35, x24
	mv x36, x113
main_loop_b6087:
# B6087
	bfle x35, x36, main_bfgtelse_b6090
# B6088
	fmul x36, x36, x114
	j main_loop_b6087 # loopback to while entry from B6088
main_bfgtelse_b6090:
# B6090
	mv x37, x24
	mv x38, x36
	j	main_loop_b6091 # jumping over moved block
main_bfgtelse_b6095:	#moved
# B6095
	mv x38, x35
main_loop_b6091:
# B6091
	bfle x113, x37, main_bfgtelse_b6093
# B6096
	fle x35, x115, x37
	bne x35, zero, main_beqelse_b6098
# B6097
	mv x36, x37
	j main_cont_b6099 # adhoc jump(2)
main_beqelse_b6098:
# B6098
	fsub x36, x37, x115
main_cont_b6099:
# B6099
	xor x25, x35, x25
	bfle x116, x36, main_bfgtelse_b6101
# B6100
	mv x35, x36
	j main_cont_b6102 # adhoc jump(2)
main_bfgtelse_b6101:
# B6101
	fsub x35, x115, x36
main_cont_b6102:
# B6102
	bfle x117, x35, main_bfgtelse_b6104
# B6103
	fmul x36, x35, x35
	fmul x37, x36, x124
	fadd x37, x123, x37
	fmul x37, x36, x37
	fadd x37, x122, x37
	fmul x36, x36, x37
	fadd x36, x118, x36
	fmul x35, x35, x36
	j main_cont_b6105 # adhoc jump(2)
main_bfgtelse_b6104:
# B6104
	fsub x35, x116, x35
	fmul x35, x35, x35
	fmul x36, x35, x121
	fadd x36, x120, x36
	fmul x36, x35, x36
	fadd x36, x119, x36
	fmul x35, x35, x36
	fadd x35, x118, x35
main_cont_b6105:
# B6105
	fle x36, x35, zero
	beq x25, x36, main_bneelse_b6107
# B6106
	mv x25, x35
	j main_cont_b6108 # adhoc jump(2)
main_bneelse_b6107:
# B6107
	fsub x25, zero, x35
main_cont_b6108:
# B6108
	mv x35, x24
	mv x36, x113
main_loop_b6109:
# B6109
	bfle x35, x36, main_bfgtelse_b6112
# B6110
	fmul x36, x36, x114
	j main_loop_b6109 # loopback to while entry from B6110
main_bfgtelse_b6112:
# B6112
	mv x37, x24
	mv x38, x36
	j	main_loop_b6113 # jumping over moved block
main_bfgtelse_b6117:	#moved
# B6117
	mv x38, x24
main_loop_b6113:
# B6113
	bfle x113, x37, main_bfgtelse_b6115
# B6118
	fle x24, x115, x37
	bne x24, zero, main_beqelse_b6120
# B6119
	mv x35, x37
	j main_cont_b6121 # adhoc jump(2)
main_beqelse_b6120:
# B6120
	fsub x35, x37, x115
main_cont_b6121:
# B6121
	xori x24, x24, 1
	fle x36, x116, x35
	bne x36, zero, main_beqelse_b6123
	j main_cont_b6124 # adhoc jump(3)
main_beqelse_b6123:
# B6123
	fsub x35, x115, x35
main_cont_b6124:
# B6124
	xor x24, x36, x24
	bfle x117, x35, main_bfgtelse_b6126
main_cont_b6125:
# B6125
	fmul x35, x35, x35
	fmul x36, x35, x121
	fadd x36, x120, x36
	fmul x36, x35, x36
	fadd x36, x119, x36
	fmul x35, x35, x36
	fadd x35, x118, x35
	j main_cont_b6127 # adhoc jump(2)
main_bfgtelse_b6126:
# B6126
	fsub x35, x116, x35
	fmul x36, x35, x35
	fmul x37, x36, x124
	fadd x37, x123, x37
	fmul x37, x36, x37
	fadd x37, x122, x37
	fmul x36, x36, x37
	fadd x36, x118, x36
	fmul x35, x35, x36
main_cont_b6127:
# B6127
	fle x36, x35, zero
	beq x24, x36, main_bneelse_b6129
# B6128
	mv x24, x35
	j main_cont_b6130 # adhoc jump(2)
main_bneelse_b6129:
# B6129
	fsub x24, zero, x35
main_cont_b6130:
# B6130
	fdiv x24, x25, x24
	fmul x23, x24, x23
	mv x25, x23
	mv x24, x10
	mv x23, x22
	j main_loop_b6024 # loopback to while entry from B6130
main_bfgtelse_b6115:
# B6115
	fdiv x24, x38, x114
	bfle x37, x38, main_bfgtelse_b6117
# B6116
	fsub x37, x37, x38
	mv x38, x24
	j main_loop_b6113 # loopback to while entry from B6116
main_bfgtelse_b6093:
# B6093
	fdiv x35, x38, x114
	bfle x37, x38, main_bfgtelse_b6095
# B6094
	fsub x37, x37, x38
	mv x38, x35
	j main_loop_b6091 # loopback to while entry from B6094
main_bfgtelse_b6063:
# B6063
	fdiv x22, x37, x114
	bfle x36, x37, main_bfgtelse_b6065
# B6064
	fsub x36, x36, x37
	mv x37, x22
	j main_loop_b6061 # loopback to while entry from B6064
main_bfgtelse_b6041:
# B6041
	fdiv x25, x37, x114
	bfle x36, x37, main_bfgtelse_b6043
# B6042
	fsub x36, x36, x37
	mv x37, x25
	j main_loop_b6039 # loopback to while entry from B6042
main_bleelse_b5918:
# B5918
	fadd x22, x22, x12
	fsqrt x22, x22
	fdiv x24, x118, x22
	fle x25, x24, zero
	xori x25, x25, 1
	fabs x35, x24
	bfle x13, x35, main_bfgtelse_b5920
# B5919
	fmul x25, x24, x24
	fmul x35, x25, x34
	fadd x35, x33, x35
	fmul x35, x25, x35
	fadd x35, x32, x35
	fmul x35, x25, x35
	fadd x35, x31, x35
	fmul x35, x25, x35
	fadd x35, x100, x35
	fmul x35, x25, x35
	fadd x35, x30, x35
	fmul x25, x25, x35
	fadd x25, x118, x25
	fmul x24, x24, x25
	j main_cont_b5926 # adhoc jump(2)
main_bfgtelse_b5920:
# B5920
	bfle x14, x35, main_bfgtelse_b5922
# B5921
	fsub x24, x35, x118
	fadd x35, x35, x118
	fdiv x24, x24, x35
	fmul x35, x24, x24
	fmul x36, x35, x34
	fadd x36, x33, x36
	fmul x36, x35, x36
	fadd x36, x32, x36
	fmul x36, x35, x36
	fadd x36, x31, x36
	fmul x36, x35, x36
	fadd x36, x100, x36
	fmul x36, x35, x36
	fadd x36, x30, x36
	fmul x35, x35, x36
	fadd x35, x118, x35
	fmul x24, x24, x35
	fadd x24, x117, x24
	j main_cont_b5923 # adhoc jump(2)
main_bfgtelse_b5922:
# B5922
	fdiv x24, x118, x35
	fmul x35, x24, x24
	fmul x36, x35, x34
	fadd x36, x33, x36
	fmul x36, x35, x36
	fadd x36, x32, x36
	fmul x36, x35, x36
	fadd x36, x31, x36
	fmul x36, x35, x36
	fadd x36, x100, x36
	fmul x36, x35, x36
	fadd x36, x30, x36
	fmul x35, x35, x36
	fadd x35, x118, x35
	fmul x24, x24, x35
	fsub x24, x116, x24
main_cont_b5923:
# B5923
	bne x25, zero, main_beqelse_b5926
# B5924
	fsub x24, zero, x24
main_beqelse_b5926:
main_cont_b5926:
# B5926
	fmul x24, x24, x26
	fle x25, x24, zero
	xori x25, x25, 1
	fabs x24, x24
	mv x35, x24
	mv x36, x113
main_loop_b5927:
# B5927
	bfle x35, x36, main_bfgtelse_b5930
# B5928
	fmul x36, x36, x114
	j main_loop_b5927 # loopback to while entry from B5928
main_bfgtelse_b5930:
# B5930
	mv x37, x24
	mv x38, x36
	j	main_loop_b5931 # jumping over moved block
main_bfgtelse_b5935:	#moved
# B5935
	mv x38, x35
main_loop_b5931:
# B5931
	bfle x113, x37, main_bfgtelse_b5933
# B5936
	fle x35, x115, x37
	bne x35, zero, main_beqelse_b5938
# B5937
	mv x36, x37
	j main_cont_b5939 # adhoc jump(2)
main_beqelse_b5938:
# B5938
	fsub x36, x37, x115
main_cont_b5939:
# B5939
	xor x25, x35, x25
	bfle x116, x36, main_bfgtelse_b5941
# B5940
	mv x35, x36
	j main_cont_b5942 # adhoc jump(2)
main_bfgtelse_b5941:
# B5941
	fsub x35, x115, x36
main_cont_b5942:
# B5942
	bfle x117, x35, main_bfgtelse_b5944
# B5943
	fmul x36, x35, x35
	fmul x37, x36, x124
	fadd x37, x123, x37
	fmul x37, x36, x37
	fadd x37, x122, x37
	fmul x36, x36, x37
	fadd x36, x118, x36
	fmul x35, x35, x36
	j main_cont_b5945 # adhoc jump(2)
main_bfgtelse_b5944:
# B5944
	fsub x35, x116, x35
	fmul x35, x35, x35
	fmul x36, x35, x121
	fadd x36, x120, x36
	fmul x36, x35, x36
	fadd x36, x119, x36
	fmul x35, x35, x36
	fadd x35, x118, x35
main_cont_b5945:
# B5945
	fle x36, x35, zero
	beq x25, x36, main_bneelse_b5947
# B5946
	mv x25, x35
	j main_cont_b5948 # adhoc jump(2)
main_bneelse_b5947:
# B5947
	fsub x25, zero, x35
main_cont_b5948:
# B5948
	mv x35, x24
	mv x36, x113
main_loop_b5949:
# B5949
	bfle x35, x36, main_bfgtelse_b5952
# B5950
	fmul x36, x36, x114
	j main_loop_b5949 # loopback to while entry from B5950
main_bfgtelse_b5952:
# B5952
	mv x37, x24
	mv x38, x36
	j	main_loop_b5953 # jumping over moved block
main_bfgtelse_b5957:	#moved
# B5957
	mv x38, x24
main_loop_b5953:
# B5953
	bfle x113, x37, main_bfgtelse_b5955
# B5958
	fle x24, x115, x37
	bne x24, zero, main_beqelse_b5960
# B5959
	mv x35, x37
	j main_cont_b5961 # adhoc jump(2)
main_beqelse_b5960:
# B5960
	fsub x35, x37, x115
main_cont_b5961:
# B5961
	xori x24, x24, 1
	fle x36, x116, x35
	bne x36, zero, main_beqelse_b5963
	j main_cont_b5964 # adhoc jump(3)
main_beqelse_b5963:
# B5963
	fsub x35, x115, x35
main_cont_b5964:
# B5964
	xor x24, x36, x24
	bfle x117, x35, main_bfgtelse_b5966
main_cont_b5965:
# B5965
	fmul x35, x35, x35
	fmul x36, x35, x121
	fadd x36, x120, x36
	fmul x36, x35, x36
	fadd x36, x119, x36
	fmul x35, x35, x36
	fadd x35, x118, x35
	j main_cont_b5967 # adhoc jump(2)
main_bfgtelse_b5966:
# B5966
	fsub x35, x116, x35
	fmul x36, x35, x35
	fmul x37, x36, x124
	fadd x37, x123, x37
	fmul x37, x36, x37
	fadd x37, x122, x37
	fmul x36, x36, x37
	fadd x36, x118, x36
	fmul x35, x35, x36
main_cont_b5967:
# B5967
	fle x36, x35, zero
	beq x24, x36, main_bneelse_b5969
# B5968
	mv x24, x35
	j main_cont_b5970 # adhoc jump(2)
main_bneelse_b5969:
# B5969
	fsub x24, zero, x35
main_cont_b5970:
# B5970
	fdiv x24, x25, x24
	fmul x22, x24, x22
	addi x23, x23, 1
	fmul x24, x22, x22
	fadd x24, x24, x12
	fsqrt x24, x24
	fdiv x25, x118, x24
	fle x35, x25, zero
	xori x35, x35, 1
	fabs x36, x25
	bfle x13, x36, main_bfgtelse_b5972
# B5971
	fmul x35, x25, x25
	fmul x34, x35, x34
	fadd x33, x33, x34
	fmul x33, x35, x33
	fadd x32, x32, x33
	fmul x32, x35, x32
	fadd x31, x31, x32
	fmul x31, x35, x31
	fadd x31, x100, x31
	fmul x31, x35, x31
	fadd x30, x30, x31
	fmul x30, x35, x30
	fadd x30, x118, x30
	fmul x25, x25, x30
	j main_cont_b5978 # adhoc jump(2)
main_bfgtelse_b5972:
# B5972
	bfle x14, x36, main_bfgtelse_b5974
# B5973
	fsub x25, x36, x118
	fadd x36, x36, x118
	fdiv x25, x25, x36
	fmul x36, x25, x25
	fmul x34, x36, x34
	fadd x33, x33, x34
	fmul x33, x36, x33
	fadd x32, x32, x33
	fmul x32, x36, x32
	fadd x31, x31, x32
	fmul x31, x36, x31
	fadd x31, x100, x31
	fmul x31, x36, x31
	fadd x30, x30, x31
	fmul x30, x36, x30
	fadd x30, x118, x30
	fmul x25, x25, x30
	fadd x25, x117, x25
	j main_cont_b5975 # adhoc jump(2)
main_bfgtelse_b5974:
# B5974
	fdiv x25, x118, x36
	fmul x36, x25, x25
	fmul x34, x36, x34
	fadd x33, x33, x34
	fmul x33, x36, x33
	fadd x32, x32, x33
	fmul x32, x36, x32
	fadd x31, x31, x32
	fmul x31, x36, x31
	fadd x31, x100, x31
	fmul x31, x36, x31
	fadd x30, x30, x31
	fmul x30, x36, x30
	fadd x30, x118, x30
	fmul x25, x25, x30
	fsub x25, x116, x25
main_cont_b5975:
# B5975
	bne x35, zero, main_beqelse_b5978
# B5976
	fsub x25, zero, x25
main_beqelse_b5978:
main_cont_b5978:
# B5978
	fmul x25, x25, x27
	fle x30, x25, zero
	xori x30, x30, 1
	fabs x25, x25
	mv x31, x25
	mv x32, x113
main_loop_b5979:
# B5979
	bfle x31, x32, main_bfgtelse_b5982
# B5980
	fmul x32, x32, x114
	j main_loop_b5979 # loopback to while entry from B5980
main_bfgtelse_b5982:
# B5982
	mv x33, x25
	mv x34, x32
	j	main_loop_b5983 # jumping over moved block
main_bfgtelse_b5987:	#moved
# B5987
	mv x34, x31
main_loop_b5983:
# B5983
	bfle x113, x33, main_bfgtelse_b5985
# B5988
	fle x31, x115, x33
	bne x31, zero, main_beqelse_b5990
# B5989
	mv x32, x33
	j main_cont_b5991 # adhoc jump(2)
main_beqelse_b5990:
# B5990
	fsub x32, x33, x115
main_cont_b5991:
# B5991
	xor x30, x31, x30
	bfle x116, x32, main_bfgtelse_b5993
# B5992
	mv x31, x32
	j main_cont_b5994 # adhoc jump(2)
main_bfgtelse_b5993:
# B5993
	fsub x31, x115, x32
main_cont_b5994:
# B5994
	bfle x117, x31, main_bfgtelse_b5996
# B5995
	fmul x32, x31, x31
	fmul x33, x32, x124
	fadd x33, x123, x33
	fmul x33, x32, x33
	fadd x33, x122, x33
	fmul x32, x32, x33
	fadd x32, x118, x32
	fmul x31, x31, x32
	j main_cont_b5997 # adhoc jump(2)
main_bfgtelse_b5996:
# B5996
	fsub x31, x116, x31
	fmul x31, x31, x31
	fmul x32, x31, x121
	fadd x32, x120, x32
	fmul x32, x31, x32
	fadd x32, x119, x32
	fmul x31, x31, x32
	fadd x31, x118, x31
main_cont_b5997:
# B5997
	fle x32, x31, zero
	beq x30, x32, main_bneelse_b5999
# B5998
	mv x30, x31
	j main_cont_b6000 # adhoc jump(2)
main_bneelse_b5999:
# B5999
	fsub x30, zero, x31
main_cont_b6000:
# B6000
	mv x31, x25
	mv x32, x113
main_loop_b6001:
# B6001
	bfle x31, x32, main_bfgtelse_b6004
# B6002
	fmul x32, x32, x114
	j main_loop_b6001 # loopback to while entry from B6002
main_bfgtelse_b6004:
# B6004
	mv x33, x25
	mv x34, x32
	j	main_loop_b6005 # jumping over moved block
main_bfgtelse_b6009:	#moved
# B6009
	mv x34, x25
main_loop_b6005:
# B6005
	bfle x113, x33, main_bfgtelse_b6007
# B6010
	fle x25, x115, x33
	bne x25, zero, main_beqelse_b6012
# B6011
	mv x31, x33
	j main_cont_b6013 # adhoc jump(2)
main_beqelse_b6012:
# B6012
	fsub x31, x33, x115
main_cont_b6013:
# B6013
	xori x25, x25, 1
	fle x32, x116, x31
	bne x32, zero, main_beqelse_b6015
	j main_cont_b6016 # adhoc jump(3)
main_beqelse_b6015:
# B6015
	fsub x31, x115, x31
main_cont_b6016:
# B6016
	xor x25, x32, x25
	bfle x117, x31, main_bfgtelse_b6018
main_cont_b6017:
# B6017
	fmul x31, x31, x31
	fmul x32, x31, x121
	fadd x32, x120, x32
	fmul x32, x31, x32
	fadd x32, x119, x32
	fmul x31, x31, x32
	fadd x31, x118, x31
	j main_cont_b6019 # adhoc jump(2)
main_bfgtelse_b6018:
# B6018
	fsub x31, x116, x31
	fmul x32, x31, x31
	fmul x33, x32, x124
	fadd x33, x123, x33
	fmul x33, x32, x33
	fadd x33, x122, x33
	fmul x32, x32, x33
	fadd x32, x118, x32
	fmul x31, x31, x32
main_cont_b6019:
# B6019
	fle x32, x31, zero
	beq x25, x32, main_bneelse_b6021
# B6020
	mv x25, x31
	j main_cont_b6022 # adhoc jump(2)
main_bneelse_b6021:
# B6021
	fsub x25, zero, x31
main_cont_b6022:
# B6022
	fdiv x25, x30, x25
	fmul x24, x25, x24
	mv x25, x24
	mv x24, x22
	j main_loop_b5916 # loopback to while entry from B6022
main_bfgtelse_b6007:
# B6007
	fdiv x25, x34, x114
	bfle x33, x34, main_bfgtelse_b6009
# B6008
	fsub x33, x33, x34
	mv x34, x25
	j main_loop_b6005 # loopback to while entry from B6008
main_bfgtelse_b5985:
# B5985
	fdiv x31, x34, x114
	bfle x33, x34, main_bfgtelse_b5987
# B5986
	fsub x33, x33, x34
	mv x34, x31
	j main_loop_b5983 # loopback to while entry from B5986
main_bfgtelse_b5955:
# B5955
	fdiv x24, x38, x114
	bfle x37, x38, main_bfgtelse_b5957
# B5956
	fsub x37, x37, x38
	mv x38, x24
	j main_loop_b5953 # loopback to while entry from B5956
main_bfgtelse_b5933:
# B5933
	fdiv x35, x38, x114
	bfle x37, x38, main_bfgtelse_b5935
# B5934
	fsub x37, x37, x38
	mv x38, x35
	j main_loop_b5931 # loopback to while entry from B5934
main_bleelse_b6135:
# B6135
	addi x10, x15, -1
	addi x15, x16, 2
	bgt x110, x15, main_bleelse_b6138
# B6136
	addi x15, x15, -5
main_bleelse_b6138:
# B6138
	addi x16, x17, 4
	mv x17, x16
	mv x16, x15
	mv x15, x10
	j main_loop_b5910 # loopback to while entry from B6138
main_bleelse_b6139:
# B6139
	li x113, 119
	la x115, min_caml_objects
	lui x116, 784384
	lui x117, 258048
	mv x119, x112
	j	main_loop_b6140 # jumping over moved block
main_bleelse_b6185:	#moved
# B6185
	addi x119, x119, -1
main_loop_b6140:
# B6140
	bgt zero, x119, main_bleelse_b6186
# B6141
	lwr x10, x49, x119
	mv x120, x10
	mv x121, x113
	j	main_loop_b6143 # jumping over moved block
main_bleelse_b6184:	#moved
# B6184
	addi x121, x121, -1
main_loop_b6143:
# B6143
	bgt zero, x121, main_bleelse_b6185
# B6144
	lwr x10, x120, x121
	lw x100, 0(x52)
	addi x100, x100, -1
	mv x122, x10
	mv x123, x100
main_loop_b6146:
# B6146
	bgt zero, x123, main_bleelse_b6184
# B6147
	lwr x124, x115, x123
	lw x50, 1(x122)
	lw x53, 0(x122)
	lw x10, 1(x124)
	bne x10, x103, main_beqelse_b6150
# B6149
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
	lw x10, 0(x53)
	bfeq x10, zero, main_bfneqelse_b6152
# B6151
	lw x100, 6(x124)
	fle x11, zero, x10
	xori x11, x11, 1
	xor x100, x100, x11
	lw x11, 4(x124)
	lw x11, 0(x11)
	bne x100, zero, main_beqelse_b6154
# B6153
	fsub x100, zero, x11
	j main_cont_b6155 # adhoc jump(2)
main_beqelse_b6154:
# B6154
	mv x100, x11
main_cont_b6155:
# B6155
	sw x100, 0(x5)
	fdiv x10, x118, x10
	sw x10, 1(x5)
	j main_cont_b6156 # adhoc jump(2)
main_bfneqelse_b6152:
# B6152
	sw zero, 1(x5)
main_cont_b6156:
# B6156
	lw x10, 1(x53)
	bfeq x10, zero, main_bfneqelse_b6158
# B6157
	lw x100, 6(x124)
	fle x11, zero, x10
	xori x11, x11, 1
	xor x100, x100, x11
	lw x11, 4(x124)
	lw x11, 1(x11)
	bne x100, zero, main_beqelse_b6160
# B6159
	fsub x100, zero, x11
	j main_cont_b6161 # adhoc jump(2)
main_beqelse_b6160:
# B6160
	mv x100, x11
main_cont_b6161:
# B6161
	sw x100, 2(x5)
	fdiv x10, x118, x10
	sw x10, 3(x5)
	j main_cont_b6162 # adhoc jump(2)
main_bfneqelse_b6158:
# B6158
	sw zero, 3(x5)
main_cont_b6162:
# B6162
	lw x10, 2(x53)
	bfeq x10, zero, main_bfneqelse_b6164
# B6163
	lw x100, 6(x124)
	fle x11, zero, x10
	xori x11, x11, 1
	xor x100, x100, x11
	lw x11, 4(x124)
	lw x11, 2(x11)
	bne x100, zero, main_beqelse_b6166
# B6165
	fsub x100, zero, x11
	j main_cont_b6167 # adhoc jump(2)
main_beqelse_b6166:
# B6166
	mv x100, x11
main_cont_b6167:
# B6167
	sw x100, 4(x5)
	fdiv x10, x118, x10
	sw x10, 5(x5)
	j main_cont_b6168 # adhoc jump(2)
main_bfneqelse_b6164:
# B6164
	sw zero, 5(x5)
main_cont_b6168:
# B6168
	add x4, x50, x123
	sw x5, 0(x4)
	j main_cont_b6183 # adhoc jump(2)
main_beqelse_b6150:
# B6150
	bne x10, x105, main_beqelse_b6170
# B6169
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
	lw x10, 0(x53)
	lw x100, 4(x124)
	lw x100, 0(x100)
	fmul x10, x10, x100
	lw x11, 1(x53)
	lw x12, 4(x124)
	lw x12, 1(x12)
	fmul x11, x11, x12
	fadd x10, x10, x11
	lw x11, 2(x53)
	lw x13, 4(x124)
	lw x13, 2(x13)
	fmul x11, x11, x13
	fadd x10, x10, x11
	bfle x10, zero, main_bfgtelse_b6171
# B6172
	fdiv x11, x116, x10
	sw x11, 0(x5)
	fdiv x100, x100, x10
	fsub x100, zero, x100
	sw x100, 1(x5)
	fdiv x100, x12, x10
	fsub x100, zero, x100
	sw x100, 2(x5)
	fdiv x10, x13, x10
	fsub x10, zero, x10
	sw x10, 3(x5)
	j main_cont_b6173 # adhoc jump(2)
main_bfgtelse_b6171:
# B6171
	sw zero, 0(x5)
main_cont_b6173:
# B6173
	add x4, x50, x123
	sw x5, 0(x4)
	j main_cont_b6183 # adhoc jump(2)
main_beqelse_b6170:
# B6170
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
	lw x10, 0(x53)
	lw x100, 1(x53)
	lw x11, 2(x53)
	fmul x12, x10, x10
	lw x13, 4(x124)
	lw x13, 0(x13)
	fmul x12, x12, x13
	fmul x13, x100, x100
	lw x14, 4(x124)
	lw x14, 1(x14)
	fmul x13, x13, x14
	fadd x12, x12, x13
	fmul x13, x11, x11
	lw x14, 4(x124)
	lw x14, 2(x14)
	fmul x13, x13, x14
	fadd x12, x12, x13
	lw x13, 3(x124)
	bne x13, zero, main_beqelse_b6175
	j main_cont_b6176 # adhoc jump(3)
main_beqelse_b6175:
# B6175
	fmul x13, x100, x11
	lw x14, 9(x124)
	lw x14, 0(x14)
	fmul x13, x13, x14
	fadd x12, x12, x13
	fmul x13, x11, x10
	lw x14, 9(x124)
	lw x14, 1(x14)
	fmul x13, x13, x14
	fadd x12, x12, x13
	fmul x13, x10, x100
	lw x14, 9(x124)
	lw x14, 2(x14)
	fmul x13, x13, x14
	fadd x12, x12, x13
main_cont_b6176:
# B6176
	lw x13, 4(x124)
	lw x13, 0(x13)
	fmul x13, x10, x13
	fsub x13, zero, x13
	lw x14, 4(x124)
	lw x14, 1(x14)
	fmul x14, x100, x14
	fsub x14, zero, x14
	lw x15, 4(x124)
	lw x15, 2(x15)
	fmul x15, x11, x15
	fsub x15, zero, x15
	sw x12, 0(x5)
	lw x16, 3(x124)
	bne x16, zero, main_beqelse_b6178
main_cont_b6177:
# B6177
	sw x13, 1(x5)
	sw x14, 2(x5)
	sw x15, 3(x5)
	j main_cont_b6179 # adhoc jump(2)
main_beqelse_b6178:
# B6178
	lw x16, 9(x124)
	lw x16, 1(x16)
	fmul x17, x11, x16
	lw x18, 9(x124)
	lw x18, 2(x18)
	fmul x19, x100, x18
	fadd x17, x17, x19
	fmul x17, x17, x117
	fsub x13, x13, x17
	sw x13, 1(x5)
	lw x13, 9(x124)
	lw x13, 0(x13)
	fmul x11, x11, x13
	fmul x17, x10, x18
	fadd x11, x11, x17
	fmul x11, x11, x117
	fsub x11, x14, x11
	sw x11, 2(x5)
	fmul x100, x100, x13
	fmul x10, x10, x16
	fadd x10, x100, x10
	fmul x10, x10, x117
	fsub x10, x15, x10
	sw x10, 3(x5)
main_cont_b6179:
# B6179
	bfeq x12, zero, main_bfneqelse_b6182
# B6180
	fdiv x10, x118, x12
	sw x10, 4(x5)
main_bfneqelse_b6182:
# B6182
	add x4, x50, x123
	sw x5, 0(x4)
main_cont_b6183:
# B6183
	addi x123, x123, -1
	j main_loop_b6146 # loopback to while entry from B6183
main_bleelse_b6186:
# B6186
	la x10, min_caml_light_dirvec
	lw x100, 0(x10)
	lw x11, 0(x42)
	sw x11, 0(x100)
	lw x11, 1(x42)
	sw x11, 1(x100)
	lw x11, 2(x42)
	sw x11, 2(x100)
	lw x100, 0(x52)
	addi x100, x100, -1
	mv x113, x10
	mv x119, x100
main_loop_b6187:
# B6187
	bgt zero, x119, main_bleelse_b6225
# B6188
	lwr x120, x115, x119
	lw x121, 1(x113)
	lw x122, 0(x113)
	lw x10, 1(x120)
	bne x10, x103, main_beqelse_b6191
# B6190
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
	lw x10, 0(x122)
	bfeq x10, zero, main_bfneqelse_b6193
# B6192
	lw x100, 6(x120)
	fle x11, zero, x10
	xori x11, x11, 1
	xor x100, x100, x11
	lw x11, 4(x120)
	lw x11, 0(x11)
	bne x100, zero, main_beqelse_b6195
# B6194
	fsub x100, zero, x11
	j main_cont_b6196 # adhoc jump(2)
main_beqelse_b6195:
# B6195
	mv x100, x11
main_cont_b6196:
# B6196
	sw x100, 0(x5)
	fdiv x10, x118, x10
	sw x10, 1(x5)
	j main_cont_b6197 # adhoc jump(2)
main_bfneqelse_b6193:
# B6193
	sw zero, 1(x5)
main_cont_b6197:
# B6197
	lw x10, 1(x122)
	bfeq x10, zero, main_bfneqelse_b6199
# B6198
	lw x100, 6(x120)
	fle x11, zero, x10
	xori x11, x11, 1
	xor x100, x100, x11
	lw x11, 4(x120)
	lw x11, 1(x11)
	bne x100, zero, main_beqelse_b6201
# B6200
	fsub x100, zero, x11
	j main_cont_b6202 # adhoc jump(2)
main_beqelse_b6201:
# B6201
	mv x100, x11
main_cont_b6202:
# B6202
	sw x100, 2(x5)
	fdiv x10, x118, x10
	sw x10, 3(x5)
	j main_cont_b6203 # adhoc jump(2)
main_bfneqelse_b6199:
# B6199
	sw zero, 3(x5)
main_cont_b6203:
# B6203
	lw x10, 2(x122)
	bfeq x10, zero, main_bfneqelse_b6205
# B6204
	lw x100, 6(x120)
	fle x11, zero, x10
	xori x11, x11, 1
	xor x100, x100, x11
	lw x11, 4(x120)
	lw x11, 2(x11)
	bne x100, zero, main_beqelse_b6207
# B6206
	fsub x100, zero, x11
	j main_cont_b6208 # adhoc jump(2)
main_beqelse_b6207:
# B6207
	mv x100, x11
main_cont_b6208:
# B6208
	sw x100, 4(x5)
	fdiv x10, x118, x10
	sw x10, 5(x5)
	j main_cont_b6209 # adhoc jump(2)
main_bfneqelse_b6205:
# B6205
	sw zero, 5(x5)
main_cont_b6209:
# B6209
	add x4, x121, x119
	sw x5, 0(x4)
	j main_cont_b6224 # adhoc jump(2)
main_beqelse_b6191:
# B6191
	bne x10, x105, main_beqelse_b6211
# B6210
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
	bfle x10, zero, main_bfgtelse_b6212
# B6213
	fdiv x100, x116, x10
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
	j main_cont_b6214 # adhoc jump(2)
main_bfgtelse_b6212:
# B6212
	sw zero, 0(x5)
main_cont_b6214:
# B6214
	add x4, x121, x119
	sw x5, 0(x4)
	j main_cont_b6224 # adhoc jump(2)
main_beqelse_b6211:
# B6211
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
	bne x13, zero, main_beqelse_b6216
	j main_cont_b6217 # adhoc jump(3)
main_beqelse_b6216:
# B6216
	fmul x13, x100, x11
	lw x14, 9(x120)
	lw x14, 0(x14)
	fmul x13, x13, x14
	fadd x12, x12, x13
	fmul x13, x11, x10
	lw x14, 9(x120)
	lw x14, 1(x14)
	fmul x13, x13, x14
	fadd x12, x12, x13
	fmul x13, x10, x100
	lw x14, 9(x120)
	lw x14, 2(x14)
	fmul x13, x13, x14
	fadd x12, x12, x13
main_cont_b6217:
# B6217
	lw x13, 4(x120)
	lw x13, 0(x13)
	fmul x13, x10, x13
	fsub x13, zero, x13
	lw x14, 4(x120)
	lw x14, 1(x14)
	fmul x14, x100, x14
	fsub x14, zero, x14
	lw x15, 4(x120)
	lw x15, 2(x15)
	fmul x15, x11, x15
	fsub x15, zero, x15
	sw x12, 0(x5)
	lw x16, 3(x120)
	bne x16, zero, main_beqelse_b6219
main_cont_b6218:
# B6218
	sw x13, 1(x5)
	sw x14, 2(x5)
	sw x15, 3(x5)
	j main_cont_b6220 # adhoc jump(2)
main_beqelse_b6219:
# B6219
	lw x16, 9(x120)
	lw x16, 1(x16)
	fmul x16, x11, x16
	lw x17, 9(x120)
	lw x17, 2(x17)
	fmul x17, x100, x17
	fadd x16, x16, x17
	fmul x16, x16, x117
	fsub x13, x13, x16
	sw x13, 1(x5)
	lw x13, 9(x120)
	lw x13, 0(x13)
	fmul x11, x11, x13
	lw x13, 9(x120)
	lw x13, 2(x13)
	fmul x13, x10, x13
	fadd x11, x11, x13
	fmul x11, x11, x117
	fsub x11, x14, x11
	sw x11, 2(x5)
	lw x11, 9(x120)
	lw x11, 0(x11)
	fmul x100, x100, x11
	lw x11, 9(x120)
	lw x11, 1(x11)
	fmul x10, x10, x11
	fadd x10, x100, x10
	fmul x10, x10, x117
	fsub x10, x15, x10
	sw x10, 3(x5)
main_cont_b6220:
# B6220
	bfeq x12, zero, main_bfneqelse_b6223
# B6221
	fdiv x10, x118, x12
	sw x10, 4(x5)
main_bfneqelse_b6223:
# B6223
	add x4, x121, x119
	sw x5, 0(x4)
main_cont_b6224:
# B6224
	addi x119, x119, -1
	j main_loop_b6187 # loopback to while entry from B6224
main_bleelse_b6225:
# B6225
	lw x113, 0(x52)
	addi x119, x113, -1
	bgt zero, x119, main_bleelse_b6392
# B6226
	lwr x10, x115, x119
	lw x100, 2(x10)
	bne x100, x105, main_beqelse_b6392
# B6228
	lw x100, 7(x10)
	lw x100, 0(x100)
	bfle x118, x100, main_bfgtelse_b6392
# B6231
	lw x100, 1(x10)
	slli x120, x119, 2
	la x121, min_caml_n_reflections
	addi x122, x120, 1
	la x123, min_caml_reflections
	bne x100, x103, main_beqelse_b6233
# B6232
	lw x114, 0(x121)
	lw x10, 7(x10)
	lw x10, 0(x10)
	fsub x124, x118, x10
	lw x50, 0(x42)
	fsub x53, zero, x50
	lw x54, 1(x42)
	fsub x55, zero, x54
	lw x56, 2(x42)
	fsub x57, zero, x56
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
	mv x58, x5
	mv x6, x58
	mv x5, x113
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
	mv x113, x3
	addi x3, x3, 2
	sw x5, 1(x113)
	sw x58, 0(x113)
	sw x50, 0(x58)
	sw x55, 1(x58)
	sw x57, 2(x58)
	mv x50, x119
	mv x119, x113
main_loop_b6234:
# B6234
	bgt zero, x50, main_bleelse_b6272
# B6235
	lwr x58, x115, x50
	lw x59, 1(x119)
	lw x60, 0(x119)
	lw x10, 1(x58)
	bne x10, x103, main_beqelse_b6238
# B6237
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
	lw x10, 0(x60)
	bfeq x10, zero, main_bfneqelse_b6240
# B6239
	lw x100, 6(x58)
	fle x11, zero, x10
	xori x11, x11, 1
	xor x100, x100, x11
	lw x11, 4(x58)
	lw x11, 0(x11)
	bne x100, zero, main_beqelse_b6242
# B6241
	fsub x100, zero, x11
	j main_cont_b6243 # adhoc jump(2)
main_beqelse_b6242:
# B6242
	mv x100, x11
main_cont_b6243:
# B6243
	sw x100, 0(x5)
	fdiv x10, x118, x10
	sw x10, 1(x5)
	j main_cont_b6244 # adhoc jump(2)
main_bfneqelse_b6240:
# B6240
	sw zero, 1(x5)
main_cont_b6244:
# B6244
	lw x10, 1(x60)
	bfeq x10, zero, main_bfneqelse_b6246
# B6245
	lw x100, 6(x58)
	fle x11, zero, x10
	xori x11, x11, 1
	xor x100, x100, x11
	lw x11, 4(x58)
	lw x11, 1(x11)
	bne x100, zero, main_beqelse_b6248
# B6247
	fsub x100, zero, x11
	j main_cont_b6249 # adhoc jump(2)
main_beqelse_b6248:
# B6248
	mv x100, x11
main_cont_b6249:
# B6249
	sw x100, 2(x5)
	fdiv x10, x118, x10
	sw x10, 3(x5)
	j main_cont_b6250 # adhoc jump(2)
main_bfneqelse_b6246:
# B6246
	sw zero, 3(x5)
main_cont_b6250:
# B6250
	lw x10, 2(x60)
	bfeq x10, zero, main_bfneqelse_b6252
# B6251
	lw x100, 6(x58)
	fle x11, zero, x10
	xori x11, x11, 1
	xor x100, x100, x11
	lw x11, 4(x58)
	lw x11, 2(x11)
	bne x100, zero, main_beqelse_b6254
# B6253
	fsub x100, zero, x11
	j main_cont_b6255 # adhoc jump(2)
main_beqelse_b6254:
# B6254
	mv x100, x11
main_cont_b6255:
# B6255
	sw x100, 4(x5)
	fdiv x10, x118, x10
	sw x10, 5(x5)
	j main_cont_b6256 # adhoc jump(2)
main_bfneqelse_b6252:
# B6252
	sw zero, 5(x5)
main_cont_b6256:
# B6256
	add x4, x59, x50
	sw x5, 0(x4)
	j main_cont_b6271 # adhoc jump(2)
main_beqelse_b6238:
# B6238
	bne x10, x105, main_beqelse_b6258
# B6257
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
	lw x10, 0(x60)
	lw x100, 4(x58)
	lw x100, 0(x100)
	fmul x10, x10, x100
	lw x11, 1(x60)
	lw x12, 4(x58)
	lw x12, 1(x12)
	fmul x11, x11, x12
	fadd x10, x10, x11
	lw x11, 2(x60)
	lw x13, 4(x58)
	lw x13, 2(x13)
	fmul x11, x11, x13
	fadd x10, x10, x11
	bfle x10, zero, main_bfgtelse_b6259
# B6260
	fdiv x11, x116, x10
	sw x11, 0(x5)
	fdiv x100, x100, x10
	fsub x100, zero, x100
	sw x100, 1(x5)
	fdiv x100, x12, x10
	fsub x100, zero, x100
	sw x100, 2(x5)
	fdiv x10, x13, x10
	fsub x10, zero, x10
	sw x10, 3(x5)
	j main_cont_b6261 # adhoc jump(2)
main_bfgtelse_b6259:
# B6259
	sw zero, 0(x5)
main_cont_b6261:
# B6261
	add x4, x59, x50
	sw x5, 0(x4)
	j main_cont_b6271 # adhoc jump(2)
main_beqelse_b6258:
# B6258
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
	lw x10, 0(x60)
	lw x100, 1(x60)
	lw x11, 2(x60)
	fmul x12, x10, x10
	lw x13, 4(x58)
	lw x13, 0(x13)
	fmul x12, x12, x13
	fmul x13, x100, x100
	lw x14, 4(x58)
	lw x14, 1(x14)
	fmul x13, x13, x14
	fadd x12, x12, x13
	fmul x13, x11, x11
	lw x14, 4(x58)
	lw x14, 2(x14)
	fmul x13, x13, x14
	fadd x12, x12, x13
	lw x13, 3(x58)
	bne x13, zero, main_beqelse_b6263
	j main_cont_b6264 # adhoc jump(3)
main_beqelse_b6263:
# B6263
	fmul x13, x100, x11
	lw x14, 9(x58)
	lw x14, 0(x14)
	fmul x13, x13, x14
	fadd x12, x12, x13
	fmul x13, x11, x10
	lw x14, 9(x58)
	lw x14, 1(x14)
	fmul x13, x13, x14
	fadd x12, x12, x13
	fmul x13, x10, x100
	lw x14, 9(x58)
	lw x14, 2(x14)
	fmul x13, x13, x14
	fadd x12, x12, x13
main_cont_b6264:
# B6264
	lw x13, 4(x58)
	lw x13, 0(x13)
	fmul x13, x10, x13
	fsub x13, zero, x13
	lw x14, 4(x58)
	lw x14, 1(x14)
	fmul x14, x100, x14
	fsub x14, zero, x14
	lw x15, 4(x58)
	lw x15, 2(x15)
	fmul x15, x11, x15
	fsub x15, zero, x15
	sw x12, 0(x5)
	lw x16, 3(x58)
	bne x16, zero, main_beqelse_b6266
main_cont_b6265:
# B6265
	sw x13, 1(x5)
	sw x14, 2(x5)
	sw x15, 3(x5)
	j main_cont_b6267 # adhoc jump(2)
main_beqelse_b6266:
# B6266
	lw x16, 9(x58)
	lw x16, 1(x16)
	fmul x17, x11, x16
	lw x18, 9(x58)
	lw x18, 2(x18)
	fmul x19, x100, x18
	fadd x17, x17, x19
	fmul x17, x17, x117
	fsub x13, x13, x17
	sw x13, 1(x5)
	lw x13, 9(x58)
	lw x13, 0(x13)
	fmul x11, x11, x13
	fmul x17, x10, x18
	fadd x11, x11, x17
	fmul x11, x11, x117
	fsub x11, x14, x11
	sw x11, 2(x5)
	fmul x100, x100, x13
	fmul x10, x10, x16
	fadd x10, x100, x10
	fmul x10, x10, x117
	fsub x10, x15, x10
	sw x10, 3(x5)
main_cont_b6267:
# B6267
	bfeq x12, zero, main_bfneqelse_b6270
# B6268
	fdiv x10, x118, x12
	sw x10, 4(x5)
main_bfneqelse_b6270:
# B6270
	add x4, x59, x50
	sw x5, 0(x4)
main_cont_b6271:
# B6271
	addi x50, x50, -1
	j main_loop_b6234 # loopback to while entry from B6271
main_bleelse_b6272:
# B6272
	mv x10, x3
	addi x3, x3, 3
	sw x124, 2(x10)
	sw x113, 1(x10)
	sw x122, 0(x10)
	add x4, x123, x114
	sw x10, 0(x4)
	addi x113, x114, 1
	addi x119, x120, 2
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
	mv x122, x5
	lw x50, 0(x52)
	mv x5, x50
	mv x6, x122
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
	mv x58, x3
	addi x3, x3, 2
	sw x5, 1(x58)
	sw x122, 0(x58)
	sw x53, 0(x122)
	sw x54, 1(x122)
	sw x57, 2(x122)
	addi x10, x50, -1
	mv x50, x10
	mv x122, x58
main_loop_b6273:
# B6273
	bgt zero, x50, main_bleelse_b6311
# B6274
	lwr x54, x115, x50
	lw x57, 1(x122)
	lw x59, 0(x122)
	lw x10, 1(x54)
	bne x10, x103, main_beqelse_b6277
# B6276
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
	lw x10, 0(x59)
	bfeq x10, zero, main_bfneqelse_b6279
# B6278
	lw x100, 6(x54)
	fle x11, zero, x10
	xori x11, x11, 1
	xor x100, x100, x11
	lw x11, 4(x54)
	lw x11, 0(x11)
	bne x100, zero, main_beqelse_b6281
# B6280
	fsub x100, zero, x11
	j main_cont_b6282 # adhoc jump(2)
main_beqelse_b6281:
# B6281
	mv x100, x11
main_cont_b6282:
# B6282
	sw x100, 0(x5)
	fdiv x10, x118, x10
	sw x10, 1(x5)
	j main_cont_b6283 # adhoc jump(2)
main_bfneqelse_b6279:
# B6279
	sw zero, 1(x5)
main_cont_b6283:
# B6283
	lw x10, 1(x59)
	bfeq x10, zero, main_bfneqelse_b6285
# B6284
	lw x100, 6(x54)
	fle x11, zero, x10
	xori x11, x11, 1
	xor x100, x100, x11
	lw x11, 4(x54)
	lw x11, 1(x11)
	bne x100, zero, main_beqelse_b6287
# B6286
	fsub x100, zero, x11
	j main_cont_b6288 # adhoc jump(2)
main_beqelse_b6287:
# B6287
	mv x100, x11
main_cont_b6288:
# B6288
	sw x100, 2(x5)
	fdiv x10, x118, x10
	sw x10, 3(x5)
	j main_cont_b6289 # adhoc jump(2)
main_bfneqelse_b6285:
# B6285
	sw zero, 3(x5)
main_cont_b6289:
# B6289
	lw x10, 2(x59)
	bfeq x10, zero, main_bfneqelse_b6291
# B6290
	lw x100, 6(x54)
	fle x11, zero, x10
	xori x11, x11, 1
	xor x100, x100, x11
	lw x11, 4(x54)
	lw x11, 2(x11)
	bne x100, zero, main_beqelse_b6293
# B6292
	fsub x100, zero, x11
	j main_cont_b6294 # adhoc jump(2)
main_beqelse_b6293:
# B6293
	mv x100, x11
main_cont_b6294:
# B6294
	sw x100, 4(x5)
	fdiv x10, x118, x10
	sw x10, 5(x5)
	j main_cont_b6295 # adhoc jump(2)
main_bfneqelse_b6291:
# B6291
	sw zero, 5(x5)
main_cont_b6295:
# B6295
	add x4, x57, x50
	sw x5, 0(x4)
	j main_cont_b6310 # adhoc jump(2)
main_beqelse_b6277:
# B6277
	bne x10, x105, main_beqelse_b6297
# B6296
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
	lw x10, 0(x59)
	lw x100, 4(x54)
	lw x100, 0(x100)
	fmul x10, x10, x100
	lw x11, 1(x59)
	lw x12, 4(x54)
	lw x12, 1(x12)
	fmul x11, x11, x12
	fadd x10, x10, x11
	lw x11, 2(x59)
	lw x13, 4(x54)
	lw x13, 2(x13)
	fmul x11, x11, x13
	fadd x10, x10, x11
	bfle x10, zero, main_bfgtelse_b6298
# B6299
	fdiv x11, x116, x10
	sw x11, 0(x5)
	fdiv x100, x100, x10
	fsub x100, zero, x100
	sw x100, 1(x5)
	fdiv x100, x12, x10
	fsub x100, zero, x100
	sw x100, 2(x5)
	fdiv x10, x13, x10
	fsub x10, zero, x10
	sw x10, 3(x5)
	j main_cont_b6300 # adhoc jump(2)
main_bfgtelse_b6298:
# B6298
	sw zero, 0(x5)
main_cont_b6300:
# B6300
	add x4, x57, x50
	sw x5, 0(x4)
	j main_cont_b6310 # adhoc jump(2)
main_beqelse_b6297:
# B6297
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
	lw x10, 0(x59)
	lw x100, 1(x59)
	lw x11, 2(x59)
	fmul x12, x10, x10
	lw x13, 4(x54)
	lw x13, 0(x13)
	fmul x12, x12, x13
	fmul x13, x100, x100
	lw x14, 4(x54)
	lw x14, 1(x14)
	fmul x13, x13, x14
	fadd x12, x12, x13
	fmul x13, x11, x11
	lw x14, 4(x54)
	lw x14, 2(x14)
	fmul x13, x13, x14
	fadd x12, x12, x13
	lw x13, 3(x54)
	bne x13, zero, main_beqelse_b6302
	j main_cont_b6303 # adhoc jump(3)
main_beqelse_b6302:
# B6302
	fmul x13, x100, x11
	lw x14, 9(x54)
	lw x14, 0(x14)
	fmul x13, x13, x14
	fadd x12, x12, x13
	fmul x13, x11, x10
	lw x14, 9(x54)
	lw x14, 1(x14)
	fmul x13, x13, x14
	fadd x12, x12, x13
	fmul x13, x10, x100
	lw x14, 9(x54)
	lw x14, 2(x14)
	fmul x13, x13, x14
	fadd x12, x12, x13
main_cont_b6303:
# B6303
	lw x13, 4(x54)
	lw x13, 0(x13)
	fmul x13, x10, x13
	fsub x13, zero, x13
	lw x14, 4(x54)
	lw x14, 1(x14)
	fmul x14, x100, x14
	fsub x14, zero, x14
	lw x15, 4(x54)
	lw x15, 2(x15)
	fmul x15, x11, x15
	fsub x15, zero, x15
	sw x12, 0(x5)
	lw x16, 3(x54)
	bne x16, zero, main_beqelse_b6305
main_cont_b6304:
# B6304
	sw x13, 1(x5)
	sw x14, 2(x5)
	sw x15, 3(x5)
	j main_cont_b6306 # adhoc jump(2)
main_beqelse_b6305:
# B6305
	lw x16, 9(x54)
	lw x16, 1(x16)
	fmul x17, x11, x16
	lw x18, 9(x54)
	lw x18, 2(x18)
	fmul x19, x100, x18
	fadd x17, x17, x19
	fmul x17, x17, x117
	fsub x13, x13, x17
	sw x13, 1(x5)
	lw x13, 9(x54)
	lw x13, 0(x13)
	fmul x11, x11, x13
	fmul x17, x10, x18
	fadd x11, x11, x17
	fmul x11, x11, x117
	fsub x11, x14, x11
	sw x11, 2(x5)
	fmul x100, x100, x13
	fmul x10, x10, x16
	fadd x10, x100, x10
	fmul x10, x10, x117
	fsub x10, x15, x10
	sw x10, 3(x5)
main_cont_b6306:
# B6306
	bfeq x12, zero, main_bfneqelse_b6309
# B6307
	fdiv x10, x118, x12
	sw x10, 4(x5)
main_bfneqelse_b6309:
# B6309
	add x4, x57, x50
	sw x5, 0(x4)
main_cont_b6310:
# B6310
	addi x50, x50, -1
	j main_loop_b6273 # loopback to while entry from B6310
main_bleelse_b6311:
# B6311
	mv x10, x3
	addi x3, x3, 3
	sw x124, 2(x10)
	sw x58, 1(x10)
	sw x119, 0(x10)
	add x4, x123, x113
	sw x10, 0(x4)
	addi x113, x114, 2
	addi x119, x120, 3
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
	mv x120, x5
	lw x122, 0(x52)
	mv x6, x120
	mv x5, x122
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
	sw x120, 0(x50)
	sw x53, 0(x120)
	sw x55, 1(x120)
	sw x56, 2(x120)
	addi x10, x122, -1
	mv x120, x50
	mv x122, x10
main_loop_b6312:
# B6312
	bgt zero, x122, main_bleelse_b6350
# B6313
	lwr x53, x115, x122
	lw x54, 1(x120)
	lw x55, 0(x120)
	lw x10, 1(x53)
	bne x10, x103, main_beqelse_b6316
# B6315
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
	lw x10, 0(x55)
	bfeq x10, zero, main_bfneqelse_b6318
# B6317
	lw x100, 6(x53)
	fle x11, zero, x10
	xori x11, x11, 1
	xor x100, x100, x11
	lw x11, 4(x53)
	lw x11, 0(x11)
	bne x100, zero, main_beqelse_b6320
# B6319
	fsub x100, zero, x11
	j main_cont_b6321 # adhoc jump(2)
main_beqelse_b6320:
# B6320
	mv x100, x11
main_cont_b6321:
# B6321
	sw x100, 0(x5)
	fdiv x10, x118, x10
	sw x10, 1(x5)
	j main_cont_b6322 # adhoc jump(2)
main_bfneqelse_b6318:
# B6318
	sw zero, 1(x5)
main_cont_b6322:
# B6322
	lw x10, 1(x55)
	bfeq x10, zero, main_bfneqelse_b6324
# B6323
	lw x100, 6(x53)
	fle x11, zero, x10
	xori x11, x11, 1
	xor x100, x100, x11
	lw x11, 4(x53)
	lw x11, 1(x11)
	bne x100, zero, main_beqelse_b6326
# B6325
	fsub x100, zero, x11
	j main_cont_b6327 # adhoc jump(2)
main_beqelse_b6326:
# B6326
	mv x100, x11
main_cont_b6327:
# B6327
	sw x100, 2(x5)
	fdiv x10, x118, x10
	sw x10, 3(x5)
	j main_cont_b6328 # adhoc jump(2)
main_bfneqelse_b6324:
# B6324
	sw zero, 3(x5)
main_cont_b6328:
# B6328
	lw x10, 2(x55)
	bfeq x10, zero, main_bfneqelse_b6330
# B6329
	lw x100, 6(x53)
	fle x11, zero, x10
	xori x11, x11, 1
	xor x100, x100, x11
	lw x11, 4(x53)
	lw x11, 2(x11)
	bne x100, zero, main_beqelse_b6332
# B6331
	fsub x100, zero, x11
	j main_cont_b6333 # adhoc jump(2)
main_beqelse_b6332:
# B6332
	mv x100, x11
main_cont_b6333:
# B6333
	sw x100, 4(x5)
	fdiv x10, x118, x10
	sw x10, 5(x5)
	j main_cont_b6334 # adhoc jump(2)
main_bfneqelse_b6330:
# B6330
	sw zero, 5(x5)
main_cont_b6334:
# B6334
	add x4, x54, x122
	sw x5, 0(x4)
	j main_cont_b6349 # adhoc jump(2)
main_beqelse_b6316:
# B6316
	bne x10, x105, main_beqelse_b6336
# B6335
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
	lw x10, 0(x55)
	lw x100, 4(x53)
	lw x100, 0(x100)
	fmul x10, x10, x100
	lw x11, 1(x55)
	lw x12, 4(x53)
	lw x12, 1(x12)
	fmul x11, x11, x12
	fadd x10, x10, x11
	lw x11, 2(x55)
	lw x13, 4(x53)
	lw x13, 2(x13)
	fmul x11, x11, x13
	fadd x10, x10, x11
	bfle x10, zero, main_bfgtelse_b6337
# B6338
	fdiv x11, x116, x10
	sw x11, 0(x5)
	fdiv x100, x100, x10
	fsub x100, zero, x100
	sw x100, 1(x5)
	fdiv x100, x12, x10
	fsub x100, zero, x100
	sw x100, 2(x5)
	fdiv x10, x13, x10
	fsub x10, zero, x10
	sw x10, 3(x5)
	j main_cont_b6339 # adhoc jump(2)
main_bfgtelse_b6337:
# B6337
	sw zero, 0(x5)
main_cont_b6339:
# B6339
	add x4, x54, x122
	sw x5, 0(x4)
	j main_cont_b6349 # adhoc jump(2)
main_beqelse_b6336:
# B6336
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
	lw x10, 0(x55)
	lw x100, 1(x55)
	lw x11, 2(x55)
	fmul x12, x10, x10
	lw x13, 4(x53)
	lw x13, 0(x13)
	fmul x12, x12, x13
	fmul x13, x100, x100
	lw x14, 4(x53)
	lw x14, 1(x14)
	fmul x13, x13, x14
	fadd x12, x12, x13
	fmul x13, x11, x11
	lw x14, 4(x53)
	lw x14, 2(x14)
	fmul x13, x13, x14
	fadd x12, x12, x13
	lw x13, 3(x53)
	bne x13, zero, main_beqelse_b6341
	j main_cont_b6342 # adhoc jump(3)
main_beqelse_b6341:
# B6341
	fmul x13, x100, x11
	lw x14, 9(x53)
	lw x14, 0(x14)
	fmul x13, x13, x14
	fadd x12, x12, x13
	fmul x13, x11, x10
	lw x14, 9(x53)
	lw x14, 1(x14)
	fmul x13, x13, x14
	fadd x12, x12, x13
	fmul x13, x10, x100
	lw x14, 9(x53)
	lw x14, 2(x14)
	fmul x13, x13, x14
	fadd x12, x12, x13
main_cont_b6342:
# B6342
	lw x13, 4(x53)
	lw x13, 0(x13)
	fmul x13, x10, x13
	fsub x13, zero, x13
	lw x14, 4(x53)
	lw x14, 1(x14)
	fmul x14, x100, x14
	fsub x14, zero, x14
	lw x15, 4(x53)
	lw x15, 2(x15)
	fmul x15, x11, x15
	fsub x15, zero, x15
	sw x12, 0(x5)
	lw x16, 3(x53)
	bne x16, zero, main_beqelse_b6344
main_cont_b6343:
# B6343
	sw x13, 1(x5)
	sw x14, 2(x5)
	sw x15, 3(x5)
	j main_cont_b6345 # adhoc jump(2)
main_beqelse_b6344:
# B6344
	lw x16, 9(x53)
	lw x16, 1(x16)
	fmul x17, x11, x16
	lw x18, 9(x53)
	lw x18, 2(x18)
	fmul x19, x100, x18
	fadd x17, x17, x19
	fmul x17, x17, x117
	fsub x13, x13, x17
	sw x13, 1(x5)
	lw x13, 9(x53)
	lw x13, 0(x13)
	fmul x11, x11, x13
	fmul x17, x10, x18
	fadd x11, x11, x17
	fmul x11, x11, x117
	fsub x11, x14, x11
	sw x11, 2(x5)
	fmul x100, x100, x13
	fmul x10, x10, x16
	fadd x10, x100, x10
	fmul x10, x10, x117
	fsub x10, x15, x10
	sw x10, 3(x5)
main_cont_b6345:
# B6345
	bfeq x12, zero, main_bfneqelse_b6348
# B6346
	fdiv x10, x118, x12
	sw x10, 4(x5)
main_bfneqelse_b6348:
# B6348
	add x4, x54, x122
	sw x5, 0(x4)
main_cont_b6349:
# B6349
	addi x122, x122, -1
	j main_loop_b6312 # loopback to while entry from B6349
main_bleelse_b6350:
# B6350
	mv x10, x3
	addi x3, x3, 3
	sw x124, 2(x10)
	sw x50, 1(x10)
	sw x119, 0(x10)
	add x4, x123, x113
	sw x10, 0(x4)
	addi x10, x114, 3
	sw x10, 0(x121)
	j main_cont_b6392 # adhoc jump(2)
main_beqelse_b6233:
# B6233
	bne x100, x105, main_beqelse_b6392
# B6351
	lw x120, 0(x121)
	lw x100, 7(x10)
	lw x100, 0(x100)
	fsub x124, x118, x100
	lw x100, 4(x10)
	lw x11, 0(x42)
	lw x12, 0(x100)
	fmul x12, x11, x12
	lw x13, 1(x42)
	lw x14, 1(x100)
	fmul x14, x13, x14
	fadd x12, x12, x14
	lw x14, 2(x42)
	lw x100, 2(x100)
	fmul x100, x14, x100
	fadd x100, x12, x100
	lw x12, 4(x10)
	lw x12, 0(x12)
	fmul x12, x114, x12
	fmul x12, x12, x100
	fsub x50, x12, x11
	lw x11, 4(x10)
	lw x11, 1(x11)
	fmul x11, x114, x11
	fmul x11, x11, x100
	fsub x53, x11, x13
	lw x10, 4(x10)
	lw x10, 2(x10)
	fmul x10, x114, x10
	fmul x10, x10, x100
	fsub x114, x10, x14
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
	mv x54, x5
	mv x6, x54
	mv x5, x113
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
	mv x113, x3
	addi x3, x3, 2
	sw x5, 1(x113)
	sw x54, 0(x113)
	sw x50, 0(x54)
	sw x53, 1(x54)
	sw x114, 2(x54)
	mv x114, x113
main_loop_b6353:
# B6353
	bgt zero, x119, main_bleelse_b6391
# B6354
	lwr x50, x115, x119
	lw x53, 1(x114)
	lw x54, 0(x114)
	lw x10, 1(x50)
	bne x10, x103, main_beqelse_b6357
# B6356
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
	lw x10, 0(x54)
	bfeq x10, zero, main_bfneqelse_b6359
# B6358
	lw x100, 6(x50)
	fle x11, zero, x10
	xori x11, x11, 1
	xor x100, x100, x11
	lw x11, 4(x50)
	lw x11, 0(x11)
	bne x100, zero, main_beqelse_b6361
# B6360
	fsub x100, zero, x11
	j main_cont_b6362 # adhoc jump(2)
main_beqelse_b6361:
# B6361
	mv x100, x11
main_cont_b6362:
# B6362
	sw x100, 0(x5)
	fdiv x10, x118, x10
	sw x10, 1(x5)
	j main_cont_b6363 # adhoc jump(2)
main_bfneqelse_b6359:
# B6359
	sw zero, 1(x5)
main_cont_b6363:
# B6363
	lw x10, 1(x54)
	bfeq x10, zero, main_bfneqelse_b6365
# B6364
	lw x100, 6(x50)
	fle x11, zero, x10
	xori x11, x11, 1
	xor x100, x100, x11
	lw x11, 4(x50)
	lw x11, 1(x11)
	bne x100, zero, main_beqelse_b6367
# B6366
	fsub x100, zero, x11
	j main_cont_b6368 # adhoc jump(2)
main_beqelse_b6367:
# B6367
	mv x100, x11
main_cont_b6368:
# B6368
	sw x100, 2(x5)
	fdiv x10, x118, x10
	sw x10, 3(x5)
	j main_cont_b6369 # adhoc jump(2)
main_bfneqelse_b6365:
# B6365
	sw zero, 3(x5)
main_cont_b6369:
# B6369
	lw x10, 2(x54)
	bfeq x10, zero, main_bfneqelse_b6371
# B6370
	lw x100, 6(x50)
	fle x11, zero, x10
	xori x11, x11, 1
	xor x100, x100, x11
	lw x11, 4(x50)
	lw x11, 2(x11)
	bne x100, zero, main_beqelse_b6373
# B6372
	fsub x100, zero, x11
	j main_cont_b6374 # adhoc jump(2)
main_beqelse_b6373:
# B6373
	mv x100, x11
main_cont_b6374:
# B6374
	sw x100, 4(x5)
	fdiv x10, x118, x10
	sw x10, 5(x5)
	j main_cont_b6375 # adhoc jump(2)
main_bfneqelse_b6371:
# B6371
	sw zero, 5(x5)
main_cont_b6375:
# B6375
	add x4, x53, x119
	sw x5, 0(x4)
	j main_cont_b6390 # adhoc jump(2)
main_beqelse_b6357:
# B6357
	bne x10, x105, main_beqelse_b6377
# B6376
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
	lw x10, 0(x54)
	lw x100, 4(x50)
	lw x100, 0(x100)
	fmul x10, x10, x100
	lw x11, 1(x54)
	lw x12, 4(x50)
	lw x12, 1(x12)
	fmul x11, x11, x12
	fadd x10, x10, x11
	lw x11, 2(x54)
	lw x13, 4(x50)
	lw x13, 2(x13)
	fmul x11, x11, x13
	fadd x10, x10, x11
	bfle x10, zero, main_bfgtelse_b6378
# B6379
	fdiv x11, x116, x10
	sw x11, 0(x5)
	fdiv x100, x100, x10
	fsub x100, zero, x100
	sw x100, 1(x5)
	fdiv x100, x12, x10
	fsub x100, zero, x100
	sw x100, 2(x5)
	fdiv x10, x13, x10
	fsub x10, zero, x10
	sw x10, 3(x5)
	j main_cont_b6380 # adhoc jump(2)
main_bfgtelse_b6378:
# B6378
	sw zero, 0(x5)
main_cont_b6380:
# B6380
	add x4, x53, x119
	sw x5, 0(x4)
	j main_cont_b6390 # adhoc jump(2)
main_beqelse_b6377:
# B6377
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
	lw x10, 0(x54)
	lw x100, 1(x54)
	lw x11, 2(x54)
	fmul x12, x10, x10
	lw x13, 4(x50)
	lw x13, 0(x13)
	fmul x12, x12, x13
	fmul x13, x100, x100
	lw x14, 4(x50)
	lw x14, 1(x14)
	fmul x13, x13, x14
	fadd x12, x12, x13
	fmul x13, x11, x11
	lw x14, 4(x50)
	lw x14, 2(x14)
	fmul x13, x13, x14
	fadd x12, x12, x13
	lw x13, 3(x50)
	bne x13, zero, main_beqelse_b6382
	j main_cont_b6383 # adhoc jump(3)
main_beqelse_b6382:
# B6382
	fmul x13, x100, x11
	lw x14, 9(x50)
	lw x14, 0(x14)
	fmul x13, x13, x14
	fadd x12, x12, x13
	fmul x13, x11, x10
	lw x14, 9(x50)
	lw x14, 1(x14)
	fmul x13, x13, x14
	fadd x12, x12, x13
	fmul x13, x10, x100
	lw x14, 9(x50)
	lw x14, 2(x14)
	fmul x13, x13, x14
	fadd x12, x12, x13
main_cont_b6383:
# B6383
	lw x13, 4(x50)
	lw x13, 0(x13)
	fmul x13, x10, x13
	fsub x13, zero, x13
	lw x14, 4(x50)
	lw x14, 1(x14)
	fmul x14, x100, x14
	fsub x14, zero, x14
	lw x15, 4(x50)
	lw x15, 2(x15)
	fmul x15, x11, x15
	fsub x15, zero, x15
	sw x12, 0(x5)
	lw x16, 3(x50)
	bne x16, zero, main_beqelse_b6385
main_cont_b6384:
# B6384
	sw x13, 1(x5)
	sw x14, 2(x5)
	sw x15, 3(x5)
	j main_cont_b6386 # adhoc jump(2)
main_beqelse_b6385:
# B6385
	lw x16, 9(x50)
	lw x16, 1(x16)
	fmul x17, x11, x16
	lw x18, 9(x50)
	lw x18, 2(x18)
	fmul x19, x100, x18
	fadd x17, x17, x19
	fmul x17, x17, x117
	fsub x13, x13, x17
	sw x13, 1(x5)
	lw x13, 9(x50)
	lw x13, 0(x13)
	fmul x11, x11, x13
	fmul x17, x10, x18
	fadd x11, x11, x17
	fmul x11, x11, x117
	fsub x11, x14, x11
	sw x11, 2(x5)
	fmul x100, x100, x13
	fmul x10, x10, x16
	fadd x10, x100, x10
	fmul x10, x10, x117
	fsub x10, x15, x10
	sw x10, 3(x5)
main_cont_b6386:
# B6386
	bfeq x12, zero, main_bfneqelse_b6389
# B6387
	fdiv x10, x118, x12
	sw x10, 4(x5)
main_bfneqelse_b6389:
# B6389
	add x4, x53, x119
	sw x5, 0(x4)
main_cont_b6390:
# B6390
	addi x119, x119, -1
	j main_loop_b6353 # loopback to while entry from B6390
main_bleelse_b6391:
# B6391
	mv x10, x3
	addi x3, x3, 3
	sw x124, 2(x10)
	sw x113, 1(x10)
	sw x122, 0(x10)
	add x4, x123, x120
	sw x10, 0(x4)
	addi x10, x120, 1
	sw x10, 0(x121)
main_beqelse_b6392:
main_bfgtelse_b6392:
main_bleelse_b6392:
main_cont_b6392:
# B6392
	lw x10, 0(x106)
	lw x100, 1(x104)
	sub x100, zero, x100
	itof x100, x100
	fmul x10, x10, x100
	lw x100, 0(x127)
	fmul x100, x10, x100
	lw x11, 0(x125)
	fadd x100, x100, x11
	lw x11, 1(x127)
	fmul x11, x10, x11
	lw x12, 1(x125)
	fadd x11, x11, x12
	lw x12, 2(x127)
	fmul x10, x10, x12
	lw x12, 2(x125)
	fadd x10, x10, x12
	lw x12, 0(x102)
	addi x12, x12, -1
	la x113, min_caml_ptrace_dirvec
	la x114, min_caml_rgb
	la x119, min_caml_startp
	la x120, min_caml_diffuse_ray
	la x121, min_caml_startp_fast
	lui x122, 274784
	lui x123, 799072
	la x124, min_caml_intersected_object_id
	la x50, min_caml_intersection_point
	la x53, min_caml_nvector
	la x54, min_caml_texture_color
	mv x58, x100
	mv x56, x12
	mv x55, x109
	mv x60, x10
	mv x59, x11
	mv x57, zero
main_loop_b6393:
# B6393
	bgt zero, x56, main_bleelse_b6483
# B6394
	lw x10, 0(x106)
	lw x100, 0(x104)
	sub x100, x56, x100
	itof x100, x100
	fmul x10, x10, x100
	lw x100, 0(x126)
	fmul x100, x10, x100
	fadd x100, x100, x58
	sw x100, 0(x113)
	lw x100, 1(x126)
	fmul x100, x10, x100
	fadd x100, x100, x59
	sw x100, 1(x113)
	lw x100, 2(x126)
	fmul x10, x10, x100
	fadd x10, x10, x60
	sw x10, 2(x113)
	lw x10, 0(x113)
	fmul x100, x10, x10
	lw x11, 1(x113)
	fmul x12, x11, x11
	fadd x100, x100, x12
	lw x12, 2(x113)
	fmul x13, x12, x12
	fadd x100, x100, x13
	fsqrt x100, x100
	bfeq x100, zero, main_bfneqelse_b6397
# B6396
	fdiv x100, x118, x100
	j main_cont_b6398 # adhoc jump(2)
main_bfneqelse_b6397:
# B6397
	mv x100, x118
main_cont_b6398:
# B6398
	fmul x10, x10, x100
	sw x10, 0(x113)
	fmul x10, x11, x100
	sw x10, 1(x113)
	fmul x10, x12, x100
	sw x10, 2(x113)
	sw zero, 0(x114)
	sw zero, 1(x114)
	sw zero, 2(x114)
	lw x10, 0(x41)
	sw x10, 0(x119)
	lw x10, 1(x41)
	sw x10, 1(x119)
	lw x10, 2(x41)
	sw x10, 2(x119)
	lwr x7, x55, x56
	mv x65, x118
	mv x66, zero
	mv x6, x113
	mv x5, zero
	addi	x2, x2, 53
	jal	trace_ray.3071
	addi	x2, x2, -53
	lwr x10, x55, x56
	lw x10, 0(x10)
	lw x100, 0(x114)
	sw x100, 0(x10)
	lw x100, 1(x114)
	sw x100, 1(x10)
	lw x100, 2(x114)
	sw x100, 2(x10)
	lwr x10, x55, x56
	lw x10, 6(x10)
	sw x57, 0(x10)
	lwr x10, x55, x56
	mv x61, x10
	mv x62, zero
main_loop_b6399:
# B6399
	bgt x62, x112, main_bleelse_b6479
# B6400
	lw x10, 2(x61)
	lwr x10, x10, x62
	bgt zero, x10, main_bleelse_b6479
# B6402
	lw x10, 3(x61)
	lwr x10, x10, x62
	beq x10, zero, main_bneelse_b6478
# B6405
	lw x10, 6(x61)
	lw x10, 0(x10)
	sw zero, 0(x120)
	sw zero, 1(x120)
	sw zero, 2(x120)
	lw x100, 7(x61)
	lw x11, 1(x61)
	lwr x10, x49, x10
	lwr x100, x100, x62
	lwr x11, x11, x62
	lw x12, 0(x11)
	sw x12, 0(x121)
	lw x12, 1(x11)
	sw x12, 1(x121)
	lw x12, 2(x11)
	sw x12, 2(x121)
	lw x12, 0(x52)
	addi x12, x12, -1
	mv x14, x12
	mv x13, x11
main_loop_b6406:
# B6406
	bgt zero, x14, main_bleelse_b6420
# B6407
	lwr x12, x115, x14
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
	bne x16, x105, main_beqelse_b6410
# B6409
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
	j main_cont_b6419 # adhoc jump(2)
main_beqelse_b6410:
# B6410
	bge x105, x16, main_bgtelse_b6419
# B6412
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
	bne x21, zero, main_beqelse_b6414
# B6413
	mv x12, x20
	j main_cont_b6415 # adhoc jump(2)
main_beqelse_b6414:
# B6414
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
main_cont_b6415:
# B6415
	bne x16, x108, main_beqelse_b6418
# B6416
	fsub x12, x12, x118
main_beqelse_b6418:
# B6418
	sw x12, 3(x15)
main_bgtelse_b6419:
main_cont_b6419:
# B6419
	addi x14, x14, -1
	j main_loop_b6406 # loopback to while entry from B6419
main_bleelse_b6420:
# B6420
	la x63, min_caml_intsec_rectside
	mv x64, x10
	mv x10, x100
	sw	x10, 52(x2)
	mv x100, x11
	sw	x100, 53(x2)
	mv x11, x51
	sw	x11, 54(x2)
main_loop_b6421:
# B6421
	bgt zero, x11, main_bleelse_b6477
# B6422
	lwr x12, x64, x11
	lw x12, 0(x12)
	lw x13, 0(x12)
	lw x14, 0(x10)
	fmul x13, x13, x14
	lw x14, 1(x12)
	lw x15, 1(x10)
	fmul x14, x14, x15
	fadd x13, x13, x14
	lw x12, 2(x12)
	lw x14, 2(x10)
	fmul x12, x12, x14
	fadd x12, x13, x12
	bfle zero, x12, main_bfgtelse_b6424
# B6425
	addi x13, x11, 1
	lwr x13, x64, x13
	sw	x13, 55(x2)
	fdiv x12, x12, x123
	sw	x12, 56(x2)
	mv x5, x13
	addi	x2, x2, 58
	jal	judge_intersection_fast.3048
	addi	x2, x2, -58
	sw	x5, 57(x2)
	beq x5, zero, main_bneelse_b6476
# B6452
	lw x10, 0(x124)
	lwr x10, x115, x10
	sw	x10, 58(x2)
	lw	x100, 55(x2)
	lw x11, 0(x100)
	lw x100, 1(x10)
	bne x100, x103, main_beqelse_b6454
# B6453
	lw x100, 0(x63)
	sw zero, 0(x53)
	sw zero, 1(x53)
	sw zero, 2(x53)
	addi x100, x100, -1
	lwr x11, x11, x100
	bfeq x11, zero, main_bfneqelse_b6456
# B6455
	bfle x11, zero, main_bfgtelse_b6457
# B6458
	lui x11, 260096
	j main_cont_b6459 # adhoc jump(2)
main_bfgtelse_b6457:
# B6457
	mv x11, x116
	j main_cont_b6459 # adhoc jump(2)
main_bfneqelse_b6456:
# B6456
	mv x11, zero
main_cont_b6459:
# B6459
	fsub x11, zero, x11
	add x4, x53, x100
	sw x11, 0(x4)
	j main_cont_b6470 # adhoc jump(2)
main_beqelse_b6454:
# B6454
	bne x100, x105, main_beqelse_b6461
# B6460
	lw x100, 4(x10)
	lw x100, 0(x100)
	fsub x100, zero, x100
	sw x100, 0(x53)
	lw x100, 4(x10)
	lw x100, 1(x100)
	fsub x100, zero, x100
	sw x100, 1(x53)
	lw x100, 4(x10)
	lw x100, 2(x100)
	fsub x100, zero, x100
	sw x100, 2(x53)
	j main_cont_b6470 # adhoc jump(2)
main_beqelse_b6461:
# B6461
	lw x100, 0(x50)
	lw x11, 5(x10)
	lw x11, 0(x11)
	fsub x100, x100, x11
	sw	x100, 59(x2)
	lw x11, 1(x50)
	lw x12, 5(x10)
	lw x12, 1(x12)
	fsub x11, x11, x12
	sw	x11, 60(x2)
	lw x12, 2(x50)
	lw x13, 5(x10)
	lw x13, 2(x13)
	fsub x12, x12, x13
	sw	x12, 61(x2)
	lw x13, 4(x10)
	lw x13, 0(x13)
	fmul x13, x100, x13
	sw	x13, 62(x2)
	lw x14, 4(x10)
	lw x14, 1(x14)
	fmul x14, x11, x14
	sw	x14, 63(x2)
	lw x15, 4(x10)
	lw x15, 2(x15)
	fmul x15, x12, x15
	sw	x15, 64(x2)
	lw x16, 3(x10)
	bne x16, zero, main_beqelse_b6463
# B6462
	sw x13, 0(x53)
	sw x14, 1(x53)
	sw x15, 2(x53)
	j main_cont_b6464 # adhoc jump(2)
main_beqelse_b6463:
# B6463
	lw x16, 9(x10)
	lw x16, 2(x16)
	fmul x16, x11, x16
	sw	x16, 65(x2)
	lw x17, 9(x10)
	lw x17, 1(x17)
	fmul x17, x12, x17
	sw	x17, 66(x2)
	fadd x16, x16, x17
	fmul x16, x16, x117
	fadd x13, x13, x16
	sw x13, 0(x53)
	lw x13, 9(x10)
	lw x13, 2(x13)
	fmul x13, x100, x13
	lw x16, 9(x10)
	lw x16, 0(x16)
	fmul x12, x12, x16
	fadd x12, x13, x12
	fmul x12, x12, x117
	fadd x12, x14, x12
	sw x12, 1(x53)
	lw x12, 9(x10)
	lw x12, 1(x12)
	fmul x100, x100, x12
	lw x12, 9(x10)
	lw x12, 0(x12)
	fmul x11, x11, x12
	fadd x100, x100, x11
	fmul x100, x100, x117
	fadd x100, x15, x100
	sw x100, 2(x53)
main_cont_b6464:
# B6464
	lw x100, 6(x10)
	lw x11, 0(x53)
	fmul x12, x11, x11
	lw x13, 1(x53)
	fmul x14, x13, x13
	fadd x12, x12, x14
	lw x14, 2(x53)
	fmul x15, x14, x14
	fadd x12, x12, x15
	fsqrt x12, x12
	bfeq x12, zero, main_bfneqelse_b6466
# B6465
	bne x100, zero, main_beqelse_b6468
# B6467
	fdiv x100, x118, x12
	j main_cont_b6469 # adhoc jump(2)
main_beqelse_b6468:
# B6468
	fdiv x100, x116, x12
	j main_cont_b6469 # adhoc jump(2)
main_bfneqelse_b6466:
# B6466
	lui x100, 260096
main_cont_b6469:
# B6469
	fmul x11, x11, x100
	sw x11, 0(x53)
	fmul x11, x13, x100
	sw x11, 1(x53)
	fmul x100, x14, x100
	sw x100, 2(x53)
main_cont_b6470:
# B6470
	mv x6, x50
	mv x5, x10
	addi	x2, x2, 68
	jal	utexture.3059
	addi	x2, x2, -68
	lw x6, 0(x43)
	mv x5, zero
	addi	x2, x2, 68
	jal	shadow_check_one_or_matrix.3019
	addi	x2, x2, -68
	sw	x5, 67(x2)
	bne x5, zero, main_beqelse_b6476
# B6471
	lw x10, 0(x53)
	lw x100, 0(x42)
	fmul x10, x10, x100
	lw x100, 1(x53)
	lw x11, 1(x42)
	fmul x100, x100, x11
	fadd x10, x10, x100
	lw x100, 2(x53)
	lw x11, 2(x42)
	fmul x100, x100, x11
	fadd x10, x10, x100
	fsub x10, zero, x10
	bfle x10, zero, main_bfgtelse_b6473
# B6474
	mv x100, x10
	j main_cont_b6475 # adhoc jump(2)
main_bfgtelse_b6473:
# B6473
	mv x100, zero
main_cont_b6475:
# B6475
	lw	x10, 56(x2)
	fmul x100, x10, x100
	lw	x11, 58(x2)
	lw x10, 7(x11)
	lw x10, 0(x10)
	fmul x10, x100, x10
	lw x100, 0(x120)
	lw x11, 0(x54)
	fmul x11, x10, x11
	fadd x100, x100, x11
	sw x100, 0(x120)
	lw x100, 1(x120)
	lw x11, 1(x54)
	fmul x11, x10, x11
	fadd x100, x100, x11
	sw x100, 1(x120)
	lw x100, 2(x120)
	lw x11, 2(x54)
	fmul x10, x10, x11
	fadd x10, x100, x10
	sw x10, 2(x120)
	j main_cont_b6476 # adhoc jump(2)
main_bfgtelse_b6424:
# B6424
	lwr x13, x64, x11
	sw	x13, 68(x2)
	fdiv x12, x12, x122
	sw	x12, 69(x2)
	mv x5, x13
	addi	x2, x2, 71
	jal	judge_intersection_fast.3048
	addi	x2, x2, -71
	sw	x5, 70(x2)
	beq x5, zero, main_bneelse_b6476
# B6427
	lw x10, 0(x124)
	lwr x10, x115, x10
	sw	x10, 71(x2)
	lw	x100, 68(x2)
	lw x11, 0(x100)
	lw x100, 1(x10)
	bne x100, x103, main_beqelse_b6429
# B6428
	lw x100, 0(x63)
	sw zero, 0(x53)
	sw zero, 1(x53)
	sw zero, 2(x53)
	addi x100, x100, -1
	lwr x11, x11, x100
	bfeq x11, zero, main_bfneqelse_b6431
# B6430
	bfle x11, zero, main_bfgtelse_b6432
# B6433
	lui x11, 260096
	j main_cont_b6434 # adhoc jump(2)
main_bfgtelse_b6432:
# B6432
	mv x11, x116
	j main_cont_b6434 # adhoc jump(2)
main_bfneqelse_b6431:
# B6431
	mv x11, zero
main_cont_b6434:
# B6434
	fsub x11, zero, x11
	add x4, x53, x100
	sw x11, 0(x4)
	j main_cont_b6445 # adhoc jump(2)
main_beqelse_b6429:
# B6429
	bne x100, x105, main_beqelse_b6436
# B6435
	lw x100, 4(x10)
	lw x100, 0(x100)
	fsub x100, zero, x100
	sw x100, 0(x53)
	lw x100, 4(x10)
	lw x100, 1(x100)
	fsub x100, zero, x100
	sw x100, 1(x53)
	lw x100, 4(x10)
	lw x100, 2(x100)
	fsub x100, zero, x100
	sw x100, 2(x53)
	j main_cont_b6445 # adhoc jump(2)
main_beqelse_b6436:
# B6436
	lw x100, 0(x50)
	lw x11, 5(x10)
	lw x11, 0(x11)
	fsub x100, x100, x11
	sw	x100, 72(x2)
	lw x11, 1(x50)
	lw x12, 5(x10)
	lw x12, 1(x12)
	fsub x11, x11, x12
	sw	x11, 73(x2)
	lw x12, 2(x50)
	lw x13, 5(x10)
	lw x13, 2(x13)
	fsub x12, x12, x13
	sw	x12, 74(x2)
	lw x13, 4(x10)
	lw x13, 0(x13)
	fmul x13, x100, x13
	sw	x13, 75(x2)
	lw x14, 4(x10)
	lw x14, 1(x14)
	fmul x14, x11, x14
	sw	x14, 76(x2)
	lw x15, 4(x10)
	lw x15, 2(x15)
	fmul x15, x12, x15
	sw	x15, 77(x2)
	lw x16, 3(x10)
	bne x16, zero, main_beqelse_b6438
# B6437
	sw x13, 0(x53)
	sw x14, 1(x53)
	sw x15, 2(x53)
	j main_cont_b6439 # adhoc jump(2)
main_beqelse_b6438:
# B6438
	lw x16, 9(x10)
	lw x16, 2(x16)
	fmul x16, x11, x16
	sw	x16, 78(x2)
	lw x17, 9(x10)
	lw x17, 1(x17)
	fmul x17, x12, x17
	sw	x17, 79(x2)
	fadd x16, x16, x17
	fmul x16, x16, x117
	fadd x13, x13, x16
	sw x13, 0(x53)
	lw x13, 9(x10)
	lw x13, 2(x13)
	fmul x13, x100, x13
	lw x16, 9(x10)
	lw x16, 0(x16)
	fmul x12, x12, x16
	fadd x12, x13, x12
	fmul x12, x12, x117
	fadd x12, x14, x12
	sw x12, 1(x53)
	lw x12, 9(x10)
	lw x12, 1(x12)
	fmul x100, x100, x12
	lw x12, 9(x10)
	lw x12, 0(x12)
	fmul x11, x11, x12
	fadd x100, x100, x11
	fmul x100, x100, x117
	fadd x100, x15, x100
	sw x100, 2(x53)
main_cont_b6439:
# B6439
	lw x100, 6(x10)
	lw x11, 0(x53)
	fmul x12, x11, x11
	lw x13, 1(x53)
	fmul x14, x13, x13
	fadd x12, x12, x14
	lw x14, 2(x53)
	fmul x15, x14, x14
	fadd x12, x12, x15
	fsqrt x12, x12
	bfeq x12, zero, main_bfneqelse_b6441
# B6440
	bne x100, zero, main_beqelse_b6443
# B6442
	fdiv x100, x118, x12
	j main_cont_b6444 # adhoc jump(2)
main_beqelse_b6443:
# B6443
	fdiv x100, x116, x12
	j main_cont_b6444 # adhoc jump(2)
main_bfneqelse_b6441:
# B6441
	lui x100, 260096
main_cont_b6444:
# B6444
	fmul x11, x11, x100
	sw x11, 0(x53)
	fmul x11, x13, x100
	sw x11, 1(x53)
	fmul x100, x14, x100
	sw x100, 2(x53)
main_cont_b6445:
# B6445
	mv x6, x50
	mv x5, x10
	addi	x2, x2, 81
	jal	utexture.3059
	addi	x2, x2, -81
	lw x6, 0(x43)
	mv x5, zero
	addi	x2, x2, 81
	jal	shadow_check_one_or_matrix.3019
	addi	x2, x2, -81
	sw	x5, 80(x2)
	bne x5, zero, main_beqelse_b6476
# B6446
	lw x10, 0(x53)
	lw x100, 0(x42)
	fmul x10, x10, x100
	lw x100, 1(x53)
	lw x11, 1(x42)
	fmul x100, x100, x11
	fadd x10, x10, x100
	lw x100, 2(x53)
	lw x11, 2(x42)
	fmul x100, x100, x11
	fadd x10, x10, x100
	fsub x10, zero, x10
	bfle x10, zero, main_bfgtelse_b6448
# B6449
	mv x100, x10
	j main_cont_b6450 # adhoc jump(2)
main_bfgtelse_b6448:
# B6448
	mv x100, zero
main_cont_b6450:
# B6450
	lw	x10, 69(x2)
	fmul x100, x10, x100
	lw	x11, 71(x2)
	lw x10, 7(x11)
	lw x10, 0(x10)
	fmul x10, x100, x10
	lw x100, 0(x120)
	lw x11, 0(x54)
	fmul x11, x10, x11
	fadd x100, x100, x11
	sw x100, 0(x120)
	lw x100, 1(x120)
	lw x11, 1(x54)
	fmul x11, x10, x11
	fadd x100, x100, x11
	sw x100, 1(x120)
	lw x100, 2(x120)
	lw x11, 2(x54)
	fmul x10, x10, x11
	fadd x10, x100, x10
	sw x10, 2(x120)
main_beqelse_b6476:
main_bneelse_b6476:
main_cont_b6476:
# B6476
	lw	x10, 54(x2)
	addi x100, x10, -2
	lw	x11, 53(x2)
	lw	x12, 52(x2)
	mv x10, x12
	sw	x10, 52(x2)
	mv x4, x11
	mv x11, x100
	sw	x11, 54(x2)
	mv x100, x4
	sw	x100, 53(x2)
	j main_loop_b6421 # loopback to while entry from B6476
main_bleelse_b6477:
# B6477
	lw x10, 5(x61)
	lwr x10, x10, x62
	lw x100, 0(x120)
	sw x100, 0(x10)
	lw x100, 1(x120)
	sw x100, 1(x10)
	lw x100, 2(x120)
	sw x100, 2(x10)
main_bneelse_b6478:
# B6478
	addi x62, x62, 1
	j main_loop_b6399 # loopback to while entry from B6478
main_bleelse_b6479:
# B6479
	addi x10, x56, -1
	addi x100, x57, 1
	bgt x110, x100, main_bleelse_b6482
# B6480
	addi x100, x100, -5
main_bleelse_b6482:
# B6482
	mv x56, x10
	mv x57, x100
	j main_loop_b6393 # loopback to while entry from B6482
main_bleelse_b6483:
# B6483
	mv x116, x101
	mv x101, zero
	mv x113, x105
main_loop_b6484:
# B6484
	lw x10, 1(x102)
	bge x101, x10, main_bgtelse_b6830
# B6486
	addi x10, x10, -1
	addi x117, x101, 1
	bge x101, x10, main_bgtelse_b6489
# B6488
	lw x10, 0(x106)
	lw x100, 1(x104)
	sub x100, x117, x100
	itof x100, x100
	fmul x10, x10, x100
	lw x100, 0(x127)
	fmul x100, x10, x100
	lw x11, 0(x125)
	fadd x65, x100, x11
	lw x100, 1(x127)
	fmul x100, x10, x100
	lw x11, 1(x125)
	fadd x66, x100, x11
	lw x100, 2(x127)
	fmul x10, x10, x100
	lw x100, 2(x125)
	fadd x67, x10, x100
	lw x10, 0(x102)
	addi x6, x10, -1
	mv x7, x113
	mv x5, x111
	addi	x2, x2, 82
	jal	pretrace_pixels.3136
	addi	x2, x2, -82
main_bgtelse_b6489:
# B6489
	mv x124, x116
	mv x10, zero
	mv x119, x107
	mv x123, x111
	mv x122, x109
main_loop_b6490:
# B6490
	lw x100, 0(x102)
	bge x10, x100, main_bgtelse_b6826
# B6492
	lwr x11, x122, x10
	lw x11, 0(x11)
	lw x12, 0(x11)
	sw x12, 0(x114)
	lw x12, 1(x11)
	sw x12, 1(x114)
	lw x11, 2(x11)
	sw x11, 2(x114)
	lw x11, 1(x102)
	addi x12, x101, 1
	addi x126, x10, 1
	bge x12, x11, main_bgtelse_b6502
# B6494
	bge zero, x101, main_bgtelse_b6502
# B6496
	bge x126, x100, main_bgtelse_b6502
# B6498
	bge zero, x10, main_bgtelse_b6502
# B6500
	mv x11, x100
# B6503
	mv x15, x123
	mv x16, zero
	mv x12, x101
	mv x100, x10
	mv x13, x119
	mv x14, x122
main_loop_b6602:
# B6602
	lwr x10, x14, x100
	bgt x16, x112, main_bleelse_b6645
# B6603
	lw x11, 2(x10)
	lwr x11, x11, x16
	bgt zero, x11, main_bleelse_b6645
# B6605
	lwr x11, x14, x100
	lw x11, 2(x11)
	lwr x11, x11, x16
	lwr x17, x13, x100
	lw x17, 2(x17)
	lwr x17, x17, x16
	addi x18, x100, -1
	addi x19, x100, 1
	bne x17, x11, main_beqelse_b6616
# B6607
	lwr x17, x15, x100
	lw x17, 2(x17)
	lwr x17, x17, x16
	bne x17, x11, main_beqelse_b6616
# B6609
	lwr x17, x14, x18
	lw x17, 2(x17)
	lwr x17, x17, x16
	bne x17, x11, main_beqelse_b6616
# B6611
	lwr x17, x14, x19
	lw x17, 2(x17)
	lwr x17, x17, x16
	bne x17, x11, main_beqelse_b6616
# B6613
	mv x17, x11
# B6617
	lw x10, 3(x10)
	lwr x10, x10, x16
	beq x10, zero, main_bneelse_b6644
# B6643
	lwr x10, x13, x100
	lw x10, 5(x10)
	lwr x11, x14, x18
	lw x11, 5(x11)
	lwr x17, x14, x100
	lw x17, 5(x17)
	lwr x18, x14, x19
	lw x18, 5(x18)
	lwr x19, x15, x100
	lw x19, 5(x19)
	lwr x10, x10, x16
	lw x20, 0(x10)
	sw x20, 0(x120)
	lw x20, 1(x10)
	sw x20, 1(x120)
	lw x10, 2(x10)
	sw x10, 2(x120)
	lwr x10, x11, x16
	lw x11, 0(x120)
	lw x20, 0(x10)
	fadd x11, x11, x20
	sw x11, 0(x120)
	lw x20, 1(x120)
	lw x21, 1(x10)
	fadd x20, x20, x21
	sw x20, 1(x120)
	lw x21, 2(x120)
	lw x10, 2(x10)
	fadd x10, x21, x10
	sw x10, 2(x120)
	lwr x17, x17, x16
	lw x21, 0(x17)
	fadd x11, x11, x21
	sw x11, 0(x120)
	lw x21, 1(x17)
	fadd x20, x20, x21
	sw x20, 1(x120)
	lw x17, 2(x17)
	fadd x10, x10, x17
	sw x10, 2(x120)
	lwr x17, x18, x16
	lw x18, 0(x17)
	fadd x11, x11, x18
	sw x11, 0(x120)
	lw x18, 1(x17)
	fadd x18, x20, x18
	sw x18, 1(x120)
	lw x17, 2(x17)
	fadd x10, x10, x17
	sw x10, 2(x120)
	lwr x17, x19, x16
	lw x19, 0(x17)
	fadd x11, x11, x19
	sw x11, 0(x120)
	lw x19, 1(x17)
	fadd x18, x18, x19
	sw x18, 1(x120)
	lw x17, 2(x17)
	fadd x10, x10, x17
	sw x10, 2(x120)
	lwr x17, x14, x100
	lw x17, 4(x17)
	lwr x17, x17, x16
	lw x19, 0(x114)
	lw x20, 0(x17)
	fmul x11, x20, x11
	fadd x11, x19, x11
	sw x11, 0(x114)
	lw x11, 1(x114)
	lw x19, 1(x17)
	fmul x18, x19, x18
	fadd x11, x11, x18
	sw x11, 1(x114)
	lw x11, 2(x114)
	lw x17, 2(x17)
	fmul x10, x17, x10
	fadd x10, x11, x10
	sw x10, 2(x114)
main_bneelse_b6644:
# B6644
	addi x16, x16, 1
	j main_loop_b6602 # loopback to while entry from B6644
main_beqelse_b6616:
# B6616
	lwr x10, x14, x100
	mv x42, x16
	mv x41, x10
main_loop_b6618:
# B6618
	bgt x42, x112, main_bleelse_b6645
# B6619
	lw x10, 2(x41)
	lwr x10, x10, x42
	bgt zero, x10, main_bleelse_b6645
# B6621
	lw x10, 3(x41)
	lwr x10, x10, x42
	beq x10, zero, main_bneelse_b6640
# B6624
	lw x10, 5(x41)
	lw x100, 7(x41)
	lw x11, 1(x41)
	lw x43, 4(x41)
	lwr x10, x10, x42
	lw x12, 0(x10)
	sw x12, 0(x120)
	lw x12, 1(x10)
	sw x12, 1(x120)
	lw x10, 2(x10)
	sw x10, 2(x120)
	lw x10, 6(x41)
	lw x50, 0(x10)
	lwr x53, x100, x42
	lwr x54, x11, x42
	beq x50, zero, main_bneelse_b6627
# B6626
	lw x5, 0(x49)
	mv x7, x54
	mv x6, x53
	addi	x2, x2, 82
	jal	trace_diffuse_rays.3085
	addi	x2, x2, -82
main_bneelse_b6627:
# B6627
	beq x50, x103, main_bneelse_b6630
# B6629
	lw x5, 1(x49)
	mv x7, x54
	mv x6, x53
	addi	x2, x2, 82
	jal	trace_diffuse_rays.3085
	addi	x2, x2, -82
main_bneelse_b6630:
# B6630
	beq x50, x105, main_bneelse_b6633
# B6632
	lw x5, 2(x49)
	mv x7, x54
	mv x6, x53
	addi	x2, x2, 82
	jal	trace_diffuse_rays.3085
	addi	x2, x2, -82
main_bneelse_b6633:
# B6633
	beq x50, x108, main_bneelse_b6636
# B6635
	lw x5, 3(x49)
	mv x7, x54
	mv x6, x53
	addi	x2, x2, 82
	jal	trace_diffuse_rays.3085
	addi	x2, x2, -82
main_bneelse_b6636:
# B6636
	beq x50, x112, main_bneelse_b6639
# B6638
	lw x5, 4(x49)
	mv x7, x54
	mv x6, x53
	addi	x2, x2, 82
	jal	trace_diffuse_rays.3085
	addi	x2, x2, -82
main_bneelse_b6639:
# B6639
	lwr x10, x43, x42
	lw x100, 0(x114)
	lw x11, 0(x10)
	lw x12, 0(x120)
	fmul x11, x11, x12
	fadd x100, x100, x11
	sw x100, 0(x114)
	lw x100, 1(x114)
	lw x11, 1(x10)
	lw x12, 1(x120)
	fmul x11, x11, x12
	fadd x100, x100, x11
	sw x100, 1(x114)
	lw x100, 2(x114)
	lw x10, 2(x10)
	lw x11, 2(x120)
	fmul x10, x10, x11
	fadd x10, x100, x10
	sw x10, 2(x114)
main_bneelse_b6640:
# B6640
	addi x42, x42, 1
	j main_loop_b6618 # loopback to while entry from B6640
main_bgtelse_b6502:
# B6502
	lwr x10, x122, x10
	mv x41, x10
	mv x42, zero
main_loop_b6504:
# B6504
	bgt x42, x112, main_bleelse_b6645
# B6505
	lw x10, 2(x41)
	lwr x10, x10, x42
	bgt zero, x10, main_bleelse_b6645
# B6507
	lw x10, 3(x41)
	lwr x10, x10, x42
	beq x10, zero, main_bneelse_b6601
# B6510
	lw x10, 5(x41)
	lw x100, 7(x41)
	lw x11, 1(x41)
	lw x43, 4(x41)
	lwr x10, x10, x42
	lw x12, 0(x10)
	sw x12, 0(x120)
	lw x12, 1(x10)
	sw x12, 1(x120)
	lw x10, 2(x10)
	sw x10, 2(x120)
	lw x10, 6(x41)
	lw x50, 0(x10)
	lwr x53, x100, x42
	lwr x54, x11, x42
	beq x50, zero, main_bneelse_b6528
# B6512
	lw x10, 0(x49)
	lw x100, 0(x54)
	sw x100, 0(x121)
	lw x100, 1(x54)
	sw x100, 1(x121)
	lw x100, 2(x54)
	sw x100, 2(x121)
	lw x100, 0(x52)
	addi x100, x100, -1
	mv x11, x54
	mv x12, x100
main_loop_b6513:
# B6513
	bgt zero, x12, main_bleelse_b6527
# B6514
	lwr x100, x115, x12
	lw x13, 10(x100)
	lw x14, 1(x100)
	lw x15, 0(x11)
	lw x16, 5(x100)
	lw x16, 0(x16)
	fsub x15, x15, x16
	sw x15, 0(x13)
	lw x15, 1(x11)
	lw x16, 5(x100)
	lw x16, 1(x16)
	fsub x15, x15, x16
	sw x15, 1(x13)
	lw x15, 2(x11)
	lw x16, 5(x100)
	lw x16, 2(x16)
	fsub x15, x15, x16
	sw x15, 2(x13)
	bne x14, x105, main_beqelse_b6517
# B6516
	lw x100, 4(x100)
	lw x14, 0(x13)
	lw x15, 1(x13)
	lw x16, 2(x13)
	lw x17, 0(x100)
	fmul x14, x17, x14
	lw x17, 1(x100)
	fmul x15, x17, x15
	fadd x14, x14, x15
	lw x100, 2(x100)
	fmul x100, x100, x16
	fadd x100, x14, x100
	sw x100, 3(x13)
	j main_cont_b6526 # adhoc jump(2)
main_beqelse_b6517:
# B6517
	bge x105, x14, main_bgtelse_b6526
# B6519
	lw x15, 0(x13)
	lw x16, 1(x13)
	lw x17, 2(x13)
	fmul x18, x15, x15
	lw x19, 4(x100)
	lw x19, 0(x19)
	fmul x18, x18, x19
	fmul x19, x16, x16
	lw x20, 4(x100)
	lw x20, 1(x20)
	fmul x19, x19, x20
	fadd x18, x18, x19
	fmul x19, x17, x17
	lw x20, 4(x100)
	lw x20, 2(x20)
	fmul x19, x19, x20
	fadd x18, x18, x19
	lw x19, 3(x100)
	bne x19, zero, main_beqelse_b6521
# B6520
	mv x100, x18
	j main_cont_b6522 # adhoc jump(2)
main_beqelse_b6521:
# B6521
	fmul x19, x16, x17
	lw x20, 9(x100)
	lw x20, 0(x20)
	fmul x19, x19, x20
	fadd x18, x18, x19
	fmul x17, x17, x15
	lw x19, 9(x100)
	lw x19, 1(x19)
	fmul x17, x17, x19
	fadd x17, x18, x17
	fmul x15, x15, x16
	lw x100, 9(x100)
	lw x100, 2(x100)
	fmul x100, x15, x100
	fadd x100, x17, x100
main_cont_b6522:
# B6522
	bne x14, x108, main_beqelse_b6525
# B6523
	fsub x100, x100, x118
main_beqelse_b6525:
# B6525
	sw x100, 3(x13)
main_bgtelse_b6526:
main_cont_b6526:
# B6526
	addi x12, x12, -1
	j main_loop_b6513 # loopback to while entry from B6526
main_bleelse_b6527:
# B6527
	mv x7, x54
	mv x5, x10
	mv x6, x53
	mv x8, x51
	addi	x2, x2, 82
	jal	iter_trace_diffuse_rays.3080
	addi	x2, x2, -82
main_bneelse_b6528:
# B6528
	beq x50, x103, main_bneelse_b6546
# B6530
	lw x10, 1(x49)
	lw x100, 0(x54)
	sw x100, 0(x121)
	lw x100, 1(x54)
	sw x100, 1(x121)
	lw x100, 2(x54)
	sw x100, 2(x121)
	lw x100, 0(x52)
	addi x100, x100, -1
	mv x11, x54
	mv x12, x100
main_loop_b6531:
# B6531
	bgt zero, x12, main_bleelse_b6545
# B6532
	lwr x100, x115, x12
	lw x13, 10(x100)
	lw x14, 1(x100)
	lw x15, 0(x11)
	lw x16, 5(x100)
	lw x16, 0(x16)
	fsub x15, x15, x16
	sw x15, 0(x13)
	lw x15, 1(x11)
	lw x16, 5(x100)
	lw x16, 1(x16)
	fsub x15, x15, x16
	sw x15, 1(x13)
	lw x15, 2(x11)
	lw x16, 5(x100)
	lw x16, 2(x16)
	fsub x15, x15, x16
	sw x15, 2(x13)
	bne x14, x105, main_beqelse_b6535
# B6534
	lw x100, 4(x100)
	lw x14, 0(x13)
	lw x15, 1(x13)
	lw x16, 2(x13)
	lw x17, 0(x100)
	fmul x14, x17, x14
	lw x17, 1(x100)
	fmul x15, x17, x15
	fadd x14, x14, x15
	lw x100, 2(x100)
	fmul x100, x100, x16
	fadd x100, x14, x100
	sw x100, 3(x13)
	j main_cont_b6544 # adhoc jump(2)
main_beqelse_b6535:
# B6535
	bge x105, x14, main_bgtelse_b6544
# B6537
	lw x15, 0(x13)
	lw x16, 1(x13)
	lw x17, 2(x13)
	fmul x18, x15, x15
	lw x19, 4(x100)
	lw x19, 0(x19)
	fmul x18, x18, x19
	fmul x19, x16, x16
	lw x20, 4(x100)
	lw x20, 1(x20)
	fmul x19, x19, x20
	fadd x18, x18, x19
	fmul x19, x17, x17
	lw x20, 4(x100)
	lw x20, 2(x20)
	fmul x19, x19, x20
	fadd x18, x18, x19
	lw x19, 3(x100)
	bne x19, zero, main_beqelse_b6539
# B6538
	mv x100, x18
	j main_cont_b6540 # adhoc jump(2)
main_beqelse_b6539:
# B6539
	fmul x19, x16, x17
	lw x20, 9(x100)
	lw x20, 0(x20)
	fmul x19, x19, x20
	fadd x18, x18, x19
	fmul x17, x17, x15
	lw x19, 9(x100)
	lw x19, 1(x19)
	fmul x17, x17, x19
	fadd x17, x18, x17
	fmul x15, x15, x16
	lw x100, 9(x100)
	lw x100, 2(x100)
	fmul x100, x15, x100
	fadd x100, x17, x100
main_cont_b6540:
# B6540
	bne x14, x108, main_beqelse_b6543
# B6541
	fsub x100, x100, x118
main_beqelse_b6543:
# B6543
	sw x100, 3(x13)
main_bgtelse_b6544:
main_cont_b6544:
# B6544
	addi x12, x12, -1
	j main_loop_b6531 # loopback to while entry from B6544
main_bleelse_b6545:
# B6545
	mv x7, x54
	mv x5, x10
	mv x6, x53
	mv x8, x51
	addi	x2, x2, 82
	jal	iter_trace_diffuse_rays.3080
	addi	x2, x2, -82
main_bneelse_b6546:
# B6546
	beq x50, x105, main_bneelse_b6564
# B6548
	lw x10, 2(x49)
	lw x100, 0(x54)
	sw x100, 0(x121)
	lw x100, 1(x54)
	sw x100, 1(x121)
	lw x100, 2(x54)
	sw x100, 2(x121)
	lw x100, 0(x52)
	addi x100, x100, -1
	mv x11, x54
	mv x12, x100
main_loop_b6549:
# B6549
	bgt zero, x12, main_bleelse_b6563
# B6550
	lwr x100, x115, x12
	lw x13, 10(x100)
	lw x14, 1(x100)
	lw x15, 0(x11)
	lw x16, 5(x100)
	lw x16, 0(x16)
	fsub x15, x15, x16
	sw x15, 0(x13)
	lw x15, 1(x11)
	lw x16, 5(x100)
	lw x16, 1(x16)
	fsub x15, x15, x16
	sw x15, 1(x13)
	lw x15, 2(x11)
	lw x16, 5(x100)
	lw x16, 2(x16)
	fsub x15, x15, x16
	sw x15, 2(x13)
	bne x14, x105, main_beqelse_b6553
# B6552
	lw x100, 4(x100)
	lw x14, 0(x13)
	lw x15, 1(x13)
	lw x16, 2(x13)
	lw x17, 0(x100)
	fmul x14, x17, x14
	lw x17, 1(x100)
	fmul x15, x17, x15
	fadd x14, x14, x15
	lw x100, 2(x100)
	fmul x100, x100, x16
	fadd x100, x14, x100
	sw x100, 3(x13)
	j main_cont_b6562 # adhoc jump(2)
main_beqelse_b6553:
# B6553
	bge x105, x14, main_bgtelse_b6562
# B6555
	lw x15, 0(x13)
	lw x16, 1(x13)
	lw x17, 2(x13)
	fmul x18, x15, x15
	lw x19, 4(x100)
	lw x19, 0(x19)
	fmul x18, x18, x19
	fmul x19, x16, x16
	lw x20, 4(x100)
	lw x20, 1(x20)
	fmul x19, x19, x20
	fadd x18, x18, x19
	fmul x19, x17, x17
	lw x20, 4(x100)
	lw x20, 2(x20)
	fmul x19, x19, x20
	fadd x18, x18, x19
	lw x19, 3(x100)
	bne x19, zero, main_beqelse_b6557
# B6556
	mv x100, x18
	j main_cont_b6558 # adhoc jump(2)
main_beqelse_b6557:
# B6557
	fmul x19, x16, x17
	lw x20, 9(x100)
	lw x20, 0(x20)
	fmul x19, x19, x20
	fadd x18, x18, x19
	fmul x17, x17, x15
	lw x19, 9(x100)
	lw x19, 1(x19)
	fmul x17, x17, x19
	fadd x17, x18, x17
	fmul x15, x15, x16
	lw x100, 9(x100)
	lw x100, 2(x100)
	fmul x100, x15, x100
	fadd x100, x17, x100
main_cont_b6558:
# B6558
	bne x14, x108, main_beqelse_b6561
# B6559
	fsub x100, x100, x118
main_beqelse_b6561:
# B6561
	sw x100, 3(x13)
main_bgtelse_b6562:
main_cont_b6562:
# B6562
	addi x12, x12, -1
	j main_loop_b6549 # loopback to while entry from B6562
main_bleelse_b6563:
# B6563
	mv x7, x54
	mv x5, x10
	mv x6, x53
	mv x8, x51
	addi	x2, x2, 82
	jal	iter_trace_diffuse_rays.3080
	addi	x2, x2, -82
main_bneelse_b6564:
# B6564
	beq x50, x108, main_bneelse_b6582
# B6566
	lw x10, 3(x49)
	lw x100, 0(x54)
	sw x100, 0(x121)
	lw x100, 1(x54)
	sw x100, 1(x121)
	lw x100, 2(x54)
	sw x100, 2(x121)
	lw x100, 0(x52)
	addi x100, x100, -1
	mv x11, x54
	mv x12, x100
main_loop_b6567:
# B6567
	bgt zero, x12, main_bleelse_b6581
# B6568
	lwr x100, x115, x12
	lw x13, 10(x100)
	lw x14, 1(x100)
	lw x15, 0(x11)
	lw x16, 5(x100)
	lw x16, 0(x16)
	fsub x15, x15, x16
	sw x15, 0(x13)
	lw x15, 1(x11)
	lw x16, 5(x100)
	lw x16, 1(x16)
	fsub x15, x15, x16
	sw x15, 1(x13)
	lw x15, 2(x11)
	lw x16, 5(x100)
	lw x16, 2(x16)
	fsub x15, x15, x16
	sw x15, 2(x13)
	bne x14, x105, main_beqelse_b6571
# B6570
	lw x100, 4(x100)
	lw x14, 0(x13)
	lw x15, 1(x13)
	lw x16, 2(x13)
	lw x17, 0(x100)
	fmul x14, x17, x14
	lw x17, 1(x100)
	fmul x15, x17, x15
	fadd x14, x14, x15
	lw x100, 2(x100)
	fmul x100, x100, x16
	fadd x100, x14, x100
	sw x100, 3(x13)
	j main_cont_b6580 # adhoc jump(2)
main_beqelse_b6571:
# B6571
	bge x105, x14, main_bgtelse_b6580
# B6573
	lw x15, 0(x13)
	lw x16, 1(x13)
	lw x17, 2(x13)
	fmul x18, x15, x15
	lw x19, 4(x100)
	lw x19, 0(x19)
	fmul x18, x18, x19
	fmul x19, x16, x16
	lw x20, 4(x100)
	lw x20, 1(x20)
	fmul x19, x19, x20
	fadd x18, x18, x19
	fmul x19, x17, x17
	lw x20, 4(x100)
	lw x20, 2(x20)
	fmul x19, x19, x20
	fadd x18, x18, x19
	lw x19, 3(x100)
	bne x19, zero, main_beqelse_b6575
# B6574
	mv x100, x18
	j main_cont_b6576 # adhoc jump(2)
main_beqelse_b6575:
# B6575
	fmul x19, x16, x17
	lw x20, 9(x100)
	lw x20, 0(x20)
	fmul x19, x19, x20
	fadd x18, x18, x19
	fmul x17, x17, x15
	lw x19, 9(x100)
	lw x19, 1(x19)
	fmul x17, x17, x19
	fadd x17, x18, x17
	fmul x15, x15, x16
	lw x100, 9(x100)
	lw x100, 2(x100)
	fmul x100, x15, x100
	fadd x100, x17, x100
main_cont_b6576:
# B6576
	bne x14, x108, main_beqelse_b6579
# B6577
	fsub x100, x100, x118
main_beqelse_b6579:
# B6579
	sw x100, 3(x13)
main_bgtelse_b6580:
main_cont_b6580:
# B6580
	addi x12, x12, -1
	j main_loop_b6567 # loopback to while entry from B6580
main_bleelse_b6581:
# B6581
	mv x7, x54
	mv x5, x10
	mv x6, x53
	mv x8, x51
	addi	x2, x2, 82
	jal	iter_trace_diffuse_rays.3080
	addi	x2, x2, -82
main_bneelse_b6582:
# B6582
	beq x50, x112, main_bneelse_b6600
# B6584
	lw x10, 4(x49)
	lw x100, 0(x54)
	sw x100, 0(x121)
	lw x100, 1(x54)
	sw x100, 1(x121)
	lw x100, 2(x54)
	sw x100, 2(x121)
	lw x100, 0(x52)
	addi x100, x100, -1
	mv x11, x54
	mv x12, x100
main_loop_b6585:
# B6585
	bgt zero, x12, main_bleelse_b6599
# B6586
	lwr x100, x115, x12
	lw x13, 10(x100)
	lw x14, 1(x100)
	lw x15, 0(x11)
	lw x16, 5(x100)
	lw x16, 0(x16)
	fsub x15, x15, x16
	sw x15, 0(x13)
	lw x15, 1(x11)
	lw x16, 5(x100)
	lw x16, 1(x16)
	fsub x15, x15, x16
	sw x15, 1(x13)
	lw x15, 2(x11)
	lw x16, 5(x100)
	lw x16, 2(x16)
	fsub x15, x15, x16
	sw x15, 2(x13)
	bne x14, x105, main_beqelse_b6589
# B6588
	lw x100, 4(x100)
	lw x14, 0(x13)
	lw x15, 1(x13)
	lw x16, 2(x13)
	lw x17, 0(x100)
	fmul x14, x17, x14
	lw x17, 1(x100)
	fmul x15, x17, x15
	fadd x14, x14, x15
	lw x100, 2(x100)
	fmul x100, x100, x16
	fadd x100, x14, x100
	sw x100, 3(x13)
	j main_cont_b6598 # adhoc jump(2)
main_beqelse_b6589:
# B6589
	bge x105, x14, main_bgtelse_b6598
# B6591
	lw x15, 0(x13)
	lw x16, 1(x13)
	lw x17, 2(x13)
	fmul x18, x15, x15
	lw x19, 4(x100)
	lw x19, 0(x19)
	fmul x18, x18, x19
	fmul x19, x16, x16
	lw x20, 4(x100)
	lw x20, 1(x20)
	fmul x19, x19, x20
	fadd x18, x18, x19
	fmul x19, x17, x17
	lw x20, 4(x100)
	lw x20, 2(x20)
	fmul x19, x19, x20
	fadd x18, x18, x19
	lw x19, 3(x100)
	bne x19, zero, main_beqelse_b6593
# B6592
	mv x100, x18
	j main_cont_b6594 # adhoc jump(2)
main_beqelse_b6593:
# B6593
	fmul x19, x16, x17
	lw x20, 9(x100)
	lw x20, 0(x20)
	fmul x19, x19, x20
	fadd x18, x18, x19
	fmul x17, x17, x15
	lw x19, 9(x100)
	lw x19, 1(x19)
	fmul x17, x17, x19
	fadd x17, x18, x17
	fmul x15, x15, x16
	lw x100, 9(x100)
	lw x100, 2(x100)
	fmul x100, x15, x100
	fadd x100, x17, x100
main_cont_b6594:
# B6594
	bne x14, x108, main_beqelse_b6597
# B6595
	fsub x100, x100, x118
main_beqelse_b6597:
# B6597
	sw x100, 3(x13)
main_bgtelse_b6598:
main_cont_b6598:
# B6598
	addi x12, x12, -1
	j main_loop_b6585 # loopback to while entry from B6598
main_bleelse_b6599:
# B6599
	mv x7, x54
	mv x5, x10
	mv x6, x53
	mv x8, x51
	addi	x2, x2, 82
	jal	iter_trace_diffuse_rays.3080
	addi	x2, x2, -82
main_bneelse_b6600:
# B6600
	lwr x10, x43, x42
	lw x100, 0(x114)
	lw x11, 0(x10)
	lw x12, 0(x120)
	fmul x11, x11, x12
	fadd x100, x100, x11
	sw x100, 0(x114)
	lw x100, 1(x114)
	lw x11, 1(x10)
	lw x12, 1(x120)
	fmul x11, x11, x12
	fadd x100, x100, x11
	sw x100, 1(x114)
	lw x100, 2(x114)
	lw x10, 2(x10)
	lw x11, 2(x120)
	fmul x10, x10, x11
	fadd x10, x100, x10
	sw x10, 2(x114)
main_bneelse_b6601:
# B6601
	addi x42, x42, 1
	j main_loop_b6504 # loopback to while entry from B6601
main_bleelse_b6645:
main_cont_b6645:
# B6645
	bne x124, x108, main_beqelse_b6647
main_cont_b6646:
# B6646
	lw x10, 0(x114)
	ftoi x10, x10
	bgt x10, x48, main_bleelse_b6649
# B6648
	bgt zero, x10, main_bleelse_b6651
# B6650
	mv x100, x10
	j main_cont_b6652 # adhoc jump(2)
main_bleelse_b6651:
# B6651
	mv x100, zero
	j main_cont_b6652 # adhoc jump(2)
main_bleelse_b6649:
# B6649
	mv x100, x48
main_cont_b6652:
# B6652
	bgt zero, x100, main_bleelse_b6654
# B6653
	mv x10, x100
	mv x11, zero
	j	main_loop_b6655 # jumping over moved block
main_bneelse_b6677:	#moved
# B6677
	sub x10, x10, x17
	addi x100, x14, 48
	out8 x100
	mv x11, x16
main_loop_b6655:
# B6655
	mv x13, x44
	mv x12, x103
	mv x100, x10
	j	main_loop_b6656 # jumping over moved block
main_bgtelse_b6657:	#moved
# B6657
	slli x12, x13, 3
	slli x14, x13, 1
	add x12, x12, x14
	mv x4, x13
	mv x13, x12
	mv x12, x4
main_loop_b6656:
# B6656
	bge x100, x13, main_bgtelse_b6657
# B6659
	mv x15, x103
	mv x16, zero
	mv x14, x12
	j	main_loop_b6660 # jumping over moved block
main_bleelse_b6662:	#moved
# B6662
	slli x100, x15, 3
	slli x13, x15, 1
	add x15, x100, x13
	addi x16, x16, 1
main_loop_b6660:
# B6660
	bgt x14, x15, main_bleelse_b6662
# B6663
	sub x100, x11, x16
	addi x100, x100, -1
	mv x11, x100
	j	main_loop_b6664 # jumping over moved block
main_bleelse_b6666:	#moved
# B6666
	out8 x45
	addi x11, x11, -1
main_loop_b6664:
# B6664
	bgt x11, zero, main_bleelse_b6666
# B6667
	bne x16, zero, main_beqelse_b6669
# B6668
	addi x10, x10, 48
	out8 x10
	j main_cont_b6701 # adhoc jump(2)
main_beqelse_b6669:
# B6669
	mv x15, x12
	mv x13, x12
	mv x100, x10
	mv x14, x103
	j	main_loop_b6670 # jumping over moved block
main_bgtelse_b6671:	#moved
# B6671
	addi x14, x14, 1
	mv x15, x11
main_loop_b6670:
# B6670
	add x11, x15, x13
	bge x100, x11, main_bgtelse_b6671
# B6673
	mv x15, x12
	mv x18, x14
	mv x17, zero
	j	main_loop_b6674 # jumping over moved block
main_beqelse_b6676:	#moved
# B6676
	add x17, x17, x15
	addi x18, x18, -1
main_loop_b6674:
# B6674
	bne x18, zero, main_beqelse_b6676
	j	main_bneelse_b6677 # moved need extra jump for 6677 at B6674
main_bleelse_b6654:
# B6654
	out8 x46
	sub x10, zero, x100
	mv x100, x10
	mv x11, zero
	j	main_loop_b6678 # jumping over moved block
main_bneelse_b6700:	#moved
# B6700
	sub x10, x100, x17
	addi x100, x14, 48
	out8 x100
	mv x11, x16
	mv x100, x10
main_loop_b6678:
# B6678
	mv x13, x44
	mv x12, x103
	mv x10, x100
	j	main_loop_b6679 # jumping over moved block
main_bgtelse_b6680:	#moved
# B6680
	slli x12, x13, 3
	slli x14, x13, 1
	add x12, x12, x14
	mv x4, x13
	mv x13, x12
	mv x12, x4
main_loop_b6679:
# B6679
	bge x10, x13, main_bgtelse_b6680
# B6682
	mv x15, x103
	mv x16, zero
	mv x14, x12
	j	main_loop_b6683 # jumping over moved block
main_bleelse_b6685:	#moved
# B6685
	slli x10, x15, 3
	slli x13, x15, 1
	add x15, x10, x13
	addi x16, x16, 1
main_loop_b6683:
# B6683
	bgt x14, x15, main_bleelse_b6685
# B6686
	sub x10, x11, x16
	addi x10, x10, -1
	mv x11, x10
	j	main_loop_b6687 # jumping over moved block
main_bleelse_b6689:	#moved
# B6689
	out8 x45
	addi x11, x11, -1
main_loop_b6687:
# B6687
	bgt x11, zero, main_bleelse_b6689
# B6690
	bne x16, zero, main_beqelse_b6692
# B6691
	addi x10, x100, 48
	out8 x10
main_cont_b6701:
# B6701
	out8 x47
	lw x10, 1(x114)
	ftoi x10, x10
	bgt x10, x48, main_bleelse_b6703
# B6702
	bgt zero, x10, main_bleelse_b6705
# B6704
	mv x100, x10
	j main_cont_b6706 # adhoc jump(2)
main_bleelse_b6705:
# B6705
	mv x100, zero
	j main_cont_b6706 # adhoc jump(2)
main_bleelse_b6703:
# B6703
	mv x100, x48
main_cont_b6706:
# B6706
	bgt zero, x100, main_bleelse_b6708
# B6707
	mv x10, x100
	mv x11, zero
	j	main_loop_b6709 # jumping over moved block
main_bneelse_b6731:	#moved
# B6731
	sub x10, x10, x17
	addi x100, x14, 48
	out8 x100
	mv x11, x16
main_loop_b6709:
# B6709
	mv x13, x44
	mv x12, x103
	mv x100, x10
	j	main_loop_b6710 # jumping over moved block
main_bgtelse_b6711:	#moved
# B6711
	slli x12, x13, 3
	slli x14, x13, 1
	add x12, x12, x14
	mv x4, x13
	mv x13, x12
	mv x12, x4
main_loop_b6710:
# B6710
	bge x100, x13, main_bgtelse_b6711
# B6713
	mv x15, x103
	mv x16, zero
	mv x14, x12
	j	main_loop_b6714 # jumping over moved block
main_bleelse_b6716:	#moved
# B6716
	slli x100, x15, 3
	slli x13, x15, 1
	add x15, x100, x13
	addi x16, x16, 1
main_loop_b6714:
# B6714
	bgt x14, x15, main_bleelse_b6716
# B6717
	sub x100, x11, x16
	addi x100, x100, -1
	mv x11, x100
	j	main_loop_b6718 # jumping over moved block
main_bleelse_b6720:	#moved
# B6720
	out8 x45
	addi x11, x11, -1
main_loop_b6718:
# B6718
	bgt x11, zero, main_bleelse_b6720
# B6721
	bne x16, zero, main_beqelse_b6723
# B6722
	addi x10, x10, 48
	out8 x10
	j main_cont_b6755 # adhoc jump(2)
main_beqelse_b6723:
# B6723
	mv x15, x12
	mv x13, x12
	mv x100, x10
	mv x14, x103
	j	main_loop_b6724 # jumping over moved block
main_bgtelse_b6725:	#moved
# B6725
	addi x14, x14, 1
	mv x15, x11
main_loop_b6724:
# B6724
	add x11, x15, x13
	bge x100, x11, main_bgtelse_b6725
# B6727
	mv x15, x12
	mv x18, x14
	mv x17, zero
	j	main_loop_b6728 # jumping over moved block
main_beqelse_b6730:	#moved
# B6730
	add x17, x17, x15
	addi x18, x18, -1
main_loop_b6728:
# B6728
	bne x18, zero, main_beqelse_b6730
	j	main_bneelse_b6731 # moved need extra jump for 6731 at B6728
main_bleelse_b6708:
# B6708
	out8 x46
	sub x10, zero, x100
	mv x100, x10
	mv x11, zero
	j	main_loop_b6732 # jumping over moved block
main_bneelse_b6754:	#moved
# B6754
	sub x10, x100, x17
	addi x100, x14, 48
	out8 x100
	mv x11, x16
	mv x100, x10
main_loop_b6732:
# B6732
	mv x13, x44
	mv x12, x103
	mv x10, x100
	j	main_loop_b6733 # jumping over moved block
main_bgtelse_b6734:	#moved
# B6734
	slli x12, x13, 3
	slli x14, x13, 1
	add x12, x12, x14
	mv x4, x13
	mv x13, x12
	mv x12, x4
main_loop_b6733:
# B6733
	bge x10, x13, main_bgtelse_b6734
# B6736
	mv x15, x103
	mv x16, zero
	mv x14, x12
	j	main_loop_b6737 # jumping over moved block
main_bleelse_b6739:	#moved
# B6739
	slli x10, x15, 3
	slli x13, x15, 1
	add x15, x10, x13
	addi x16, x16, 1
main_loop_b6737:
# B6737
	bgt x14, x15, main_bleelse_b6739
# B6740
	sub x10, x11, x16
	addi x10, x10, -1
	mv x11, x10
	j	main_loop_b6741 # jumping over moved block
main_bleelse_b6743:	#moved
# B6743
	out8 x45
	addi x11, x11, -1
main_loop_b6741:
# B6741
	bgt x11, zero, main_bleelse_b6743
# B6744
	bne x16, zero, main_beqelse_b6746
# B6745
	addi x10, x100, 48
	out8 x10
main_cont_b6755:
# B6755
	out8 x47
	lw x10, 2(x114)
	ftoi x10, x10
	bgt x10, x48, main_bleelse_b6757
# B6756
	bgt zero, x10, main_bleelse_b6759
# B6758
	mv x100, x10
	j main_cont_b6760 # adhoc jump(2)
main_bleelse_b6759:
# B6759
	mv x100, zero
	j main_cont_b6760 # adhoc jump(2)
main_bleelse_b6757:
# B6757
	mv x100, x48
main_cont_b6760:
# B6760
	bgt zero, x100, main_bleelse_b6762
# B6761
	mv x10, x100
	mv x11, zero
	j	main_loop_b6763 # jumping over moved block
main_bneelse_b6785:	#moved
# B6785
	sub x10, x10, x17
	addi x100, x14, 48
	out8 x100
	mv x11, x16
main_loop_b6763:
# B6763
	mv x13, x44
	mv x12, x103
	mv x100, x10
	j	main_loop_b6764 # jumping over moved block
main_bgtelse_b6765:	#moved
# B6765
	slli x12, x13, 3
	slli x14, x13, 1
	add x12, x12, x14
	mv x4, x13
	mv x13, x12
	mv x12, x4
main_loop_b6764:
# B6764
	bge x100, x13, main_bgtelse_b6765
# B6767
	mv x15, x103
	mv x16, zero
	mv x14, x12
	j	main_loop_b6768 # jumping over moved block
main_bleelse_b6770:	#moved
# B6770
	slli x100, x15, 3
	slli x13, x15, 1
	add x15, x100, x13
	addi x16, x16, 1
main_loop_b6768:
# B6768
	bgt x14, x15, main_bleelse_b6770
# B6771
	sub x100, x11, x16
	addi x100, x100, -1
	mv x11, x100
	j	main_loop_b6772 # jumping over moved block
main_bleelse_b6774:	#moved
# B6774
	out8 x45
	addi x11, x11, -1
main_loop_b6772:
# B6772
	bgt x11, zero, main_bleelse_b6774
# B6775
	bne x16, zero, main_beqelse_b6777
# B6776
	addi x10, x10, 48
	out8 x10
	j main_cont_b6809 # adhoc jump(2)
main_beqelse_b6777:
# B6777
	mv x15, x12
	mv x13, x12
	mv x100, x10
	mv x14, x103
	j	main_loop_b6778 # jumping over moved block
main_bgtelse_b6779:	#moved
# B6779
	addi x14, x14, 1
	mv x15, x11
main_loop_b6778:
# B6778
	add x11, x15, x13
	bge x100, x11, main_bgtelse_b6779
# B6781
	mv x15, x12
	mv x18, x14
	mv x17, zero
	j	main_loop_b6782 # jumping over moved block
main_beqelse_b6784:	#moved
# B6784
	add x17, x17, x15
	addi x18, x18, -1
main_loop_b6782:
# B6782
	bne x18, zero, main_beqelse_b6784
	j	main_bneelse_b6785 # moved need extra jump for 6785 at B6782
main_bleelse_b6762:
# B6762
	out8 x46
	sub x10, zero, x100
	mv x100, x10
	mv x11, zero
	j	main_loop_b6786 # jumping over moved block
main_bneelse_b6808:	#moved
# B6808
	sub x10, x100, x17
	addi x100, x14, 48
	out8 x100
	mv x11, x16
	mv x100, x10
main_loop_b6786:
# B6786
	mv x13, x44
	mv x12, x103
	mv x10, x100
	j	main_loop_b6787 # jumping over moved block
main_bgtelse_b6788:	#moved
# B6788
	slli x12, x13, 3
	slli x14, x13, 1
	add x12, x12, x14
	mv x4, x13
	mv x13, x12
	mv x12, x4
main_loop_b6787:
# B6787
	bge x10, x13, main_bgtelse_b6788
# B6790
	mv x15, x103
	mv x16, zero
	mv x14, x12
	j	main_loop_b6791 # jumping over moved block
main_bleelse_b6793:	#moved
# B6793
	slli x10, x15, 3
	slli x13, x15, 1
	add x15, x10, x13
	addi x16, x16, 1
main_loop_b6791:
# B6791
	bgt x14, x15, main_bleelse_b6793
# B6794
	sub x10, x11, x16
	addi x10, x10, -1
	mv x11, x10
	j	main_loop_b6795 # jumping over moved block
main_bleelse_b6797:	#moved
# B6797
	out8 x45
	addi x11, x11, -1
main_loop_b6795:
# B6795
	bgt x11, zero, main_bleelse_b6797
# B6798
	bne x16, zero, main_beqelse_b6800
# B6799
	addi x10, x100, 48
	out8 x10
main_cont_b6809:
# B6809
	out8 x44
	j main_cont_b6825 # adhoc jump(2)
main_beqelse_b6800:
# B6800
	mv x15, x12
	mv x13, x12
	mv x10, x100
	mv x14, x103
	j	main_loop_b6801 # jumping over moved block
main_bgtelse_b6802:	#moved
# B6802
	addi x14, x14, 1
	mv x15, x11
main_loop_b6801:
# B6801
	add x11, x15, x13
	bge x10, x11, main_bgtelse_b6802
# B6804
	mv x15, x12
	mv x18, x14
	mv x17, zero
	j	main_loop_b6805 # jumping over moved block
main_beqelse_b6807:	#moved
# B6807
	add x17, x17, x15
	addi x18, x18, -1
main_loop_b6805:
# B6805
	bne x18, zero, main_beqelse_b6807
	j	main_bneelse_b6808 # moved need extra jump for 6808 at B6805
main_beqelse_b6746:
# B6746
	mv x15, x12
	mv x13, x12
	mv x10, x100
	mv x14, x103
	j	main_loop_b6747 # jumping over moved block
main_bgtelse_b6748:	#moved
# B6748
	addi x14, x14, 1
	mv x15, x11
main_loop_b6747:
# B6747
	add x11, x15, x13
	bge x10, x11, main_bgtelse_b6748
# B6750
	mv x15, x12
	mv x18, x14
	mv x17, zero
	j	main_loop_b6751 # jumping over moved block
main_beqelse_b6753:	#moved
# B6753
	add x17, x17, x15
	addi x18, x18, -1
main_loop_b6751:
# B6751
	bne x18, zero, main_beqelse_b6753
	j	main_bneelse_b6754 # moved need extra jump for 6754 at B6751
main_beqelse_b6692:
# B6692
	mv x15, x12
	mv x13, x12
	mv x10, x100
	mv x14, x103
	j	main_loop_b6693 # jumping over moved block
main_bgtelse_b6694:	#moved
# B6694
	addi x14, x14, 1
	mv x15, x11
main_loop_b6693:
# B6693
	add x11, x15, x13
	bge x10, x11, main_bgtelse_b6694
# B6696
	mv x15, x12
	mv x18, x14
	mv x17, zero
	j	main_loop_b6697 # jumping over moved block
main_beqelse_b6699:	#moved
# B6699
	add x17, x17, x15
	addi x18, x18, -1
main_loop_b6697:
# B6697
	bne x18, zero, main_beqelse_b6699
	j	main_bneelse_b6700 # moved need extra jump for 6700 at B6697
main_beqelse_b6647:
# B6647
	lw x10, 0(x114)
	ftoi x10, x10
	bgt x10, x48, main_bleelse_b6811
# B6810
	bgt zero, x10, main_bleelse_b6813
# B6812
	mv x100, x10
	j main_cont_b6814 # adhoc jump(2)
main_bleelse_b6813:
# B6813
	mv x100, zero
	j main_cont_b6814 # adhoc jump(2)
main_bleelse_b6811:
# B6811
	mv x100, x48
main_cont_b6814:
# B6814
	out8 x100
	lw x10, 1(x114)
	ftoi x10, x10
	bgt x10, x48, main_bleelse_b6816
# B6815
	bgt zero, x10, main_bleelse_b6818
# B6817
	mv x100, x10
	j main_cont_b6819 # adhoc jump(2)
main_bleelse_b6818:
# B6818
	mv x100, zero
	j main_cont_b6819 # adhoc jump(2)
main_bleelse_b6816:
# B6816
	mv x100, x48
main_cont_b6819:
# B6819
	out8 x100
	lw x10, 2(x114)
	ftoi x10, x10
	bgt x10, x48, main_bleelse_b6821
# B6820
	bgt zero, x10, main_bleelse_b6823
# B6822
	mv x100, x10
	j main_cont_b6824 # adhoc jump(2)
main_bleelse_b6823:
# B6823
	mv x100, zero
	j main_cont_b6824 # adhoc jump(2)
main_bleelse_b6821:
# B6821
	mv x100, x48
main_cont_b6824:
# B6824
	out8 x100
main_cont_b6825:
# B6825
	mv x10, x126
	j main_loop_b6490 # loopback to while entry from B6825
main_bgtelse_b6826:
# B6826
	addi x10, x113, 2
	bgt x110, x10, main_bleelse_b6829
# B6827
	addi x10, x10, -5
main_bleelse_b6829:
# B6829
	mv x101, x117
	mv x113, x10
	mv x4, x109
	mv x109, x111
	mv x111, x107
	mv x107, x4
	j main_loop_b6484 # loopback to while entry from B6829
main_bgtelse_b6830:
# B6830
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
	lw	x55, 42(x2)
	lw	x56, 43(x2)
	lw	x57, 44(x2)
	lw	x58, 45(x2)
	lw	x59, 46(x2)
	lw	x60, 47(x2)
	lw	x61, 48(x2)
	lw	x62, 49(x2)
	lw	x63, 50(x2)
	lw	x64, 51(x2)
	j endp
main_beqelse_b5892:
# B5892
	mv x15, x12
	mv x13, x12
	mv x100, x10
	mv x14, x103
	j	main_loop_b5893 # jumping over moved block
main_bgtelse_b5894:	#moved
# B5894
	addi x14, x14, 1
	mv x15, x11
main_loop_b5893:
# B5893
	add x11, x15, x13
	bge x100, x11, main_bgtelse_b5894
# B5896
	mv x15, x12
	mv x18, x14
	mv x17, zero
	j	main_loop_b5897 # jumping over moved block
main_beqelse_b5899:	#moved
# B5899
	add x17, x17, x15
	addi x18, x18, -1
main_loop_b5897:
# B5897
	bne x18, zero, main_beqelse_b5899
	j	main_bneelse_b5900 # moved need extra jump for 5900 at B5897
main_beqelse_b5868:
# B5868
	mv x15, x12
	mv x13, x12
	mv x10, x100
	mv x14, x103
	j	main_loop_b5869 # jumping over moved block
main_bgtelse_b5870:	#moved
# B5870
	addi x14, x14, 1
	mv x15, x11
main_loop_b5869:
# B5869
	add x11, x15, x13
	bge x10, x11, main_bgtelse_b5870
# B5872
	mv x15, x12
	mv x18, x14
	mv x17, zero
	j	main_loop_b5873 # jumping over moved block
main_beqelse_b5875:	#moved
# B5875
	add x17, x17, x15
	addi x18, x18, -1
main_loop_b5873:
# B5873
	bne x18, zero, main_beqelse_b5875
	j	main_bneelse_b5876 # moved need extra jump for 5876 at B5873
main_beqelse_b5819:
# B5819
	mv x15, x12
	mv x13, x12
	mv x10, x100
	mv x14, x103
	j	main_loop_b5820 # jumping over moved block
main_bgtelse_b5821:	#moved
# B5821
	addi x14, x14, 1
	mv x15, x11
main_loop_b5820:
# B5820
	add x11, x15, x13
	bge x10, x11, main_bgtelse_b5821
# B5823
	mv x15, x12
	mv x18, x14
	mv x17, zero
	j	main_loop_b5824 # jumping over moved block
main_beqelse_b5826:	#moved
# B5826
	add x17, x17, x15
	addi x18, x18, -1
main_loop_b5824:
# B5824
	bne x18, zero, main_beqelse_b5826
	j	main_bneelse_b5827 # moved need extra jump for 5827 at B5824
main_bfgtelse_b5760:
# B5760
	fdiv x100, x14, x114
	bfle x11, x14, main_bfgtelse_b5762
# B5761
	fsub x11, x11, x14
	mv x14, x100
	j main_loop_b5758 # loopback to while entry from B5761
main_bfgtelse_b5738:
# B5738
	fdiv x12, x15, x114
	bfle x14, x15, main_bfgtelse_b5740
# B5739
	fsub x14, x14, x15
	mv x15, x12
	j main_loop_b5736 # loopback to while entry from B5739
main_bfgtelse_b5716:
# B5716
	fdiv x10, x14, x114
	bfle x13, x14, main_bfgtelse_b5718
# B5717
	fsub x13, x13, x14
	mv x14, x10
	j main_loop_b5714 # loopback to while entry from B5717
main_bfgtelse_b5694:
# B5694
	fdiv x12, x15, x114
	bfle x14, x15, main_bfgtelse_b5696
# B5695
	fsub x14, x14, x15
	mv x15, x12
	j main_loop_b5692 # loopback to while entry from B5695
main_bfgtelse_b5672:
# B5672
	fdiv x14, x19, x114
	bfle x18, x19, main_bfgtelse_b5674
# B5673
	fsub x18, x18, x19
	mv x19, x14
	j main_loop_b5670 # loopback to while entry from B5673
main_bfgtelse_b5650:
# B5650
	fdiv x15, x18, x114
	bfle x17, x18, main_bfgtelse_b5652
# B5651
	fsub x17, x17, x18
	mv x18, x15
	j main_loop_b5648 # loopback to while entry from B5651
main_bfgtelse_b5628:
# B5628
	fdiv x12, x17, x114
	bfle x16, x17, main_bfgtelse_b5630
# B5629
	fsub x16, x16, x17
	mv x17, x12
	j main_loop_b5626 # loopback to while entry from B5629
main_bfgtelse_b5606:
# B5606
	fdiv x13, x16, x114
	bfle x15, x16, main_bfgtelse_b5608
# B5607
	fsub x15, x15, x16
	mv x16, x13
	j main_loop_b5604 # loopback to while entry from B5607
#	main program ends
endp:
	j endp
