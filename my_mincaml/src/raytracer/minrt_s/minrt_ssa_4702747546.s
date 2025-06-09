	.data
min_caml_Ta79556:	space 1
min_caml_Ta79561:	space 1
min_caml_Tt79543:	space 11
min_caml_Tt79602:	space 2
min_caml_Tt79615:	space 4
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
	bgt	x101, x103, read_object_bleelse_b5
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
	beq	x104, x10, read_object_bneelse_b193
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
	beq	x107, zero, read_object_bneelse_b10
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
	bne	x105, x110, read_object_beqelse_b12
# B11
	li x116, 1
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
	bne	x105, x108, read_object_beqelse_b15
# B14
	lw x100, 0(x109)
	feq x11, x100, zero
	bne	x11, zero, read_object_beqelse_b17
# B16
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
	sw x100, 0(x109)
	lw x100, 1(x109)
	feq x11, x100, zero
	bne	x11, zero, read_object_beqelse_b25
# B24
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
	sw x100, 1(x109)
	lw x100, 2(x109)
	feq x11, x100, zero
	bne	x11, zero, read_object_beqelse_b33
# B32
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
	sw x100, 2(x109)
	j read_object_cont_b47 # adhoc jump(2)
read_object_beqelse_b15:
# B15
	bne	x105, x110, read_object_beqelse_b47
# B40
	xori x100, x112, 1
	lw x11, 0(x109)
	fmul x11, x11, x11
	lw x12, 1(x109)
	fmul x12, x12, x12
	fadd x11, x11, x12
	lw x12, 2(x109)
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
	lw x11, 0(x109)
	fmul x11, x11, x100
	sw x11, 0(x109)
	lw x11, 1(x109)
	fmul x11, x11, x100
	sw x11, 1(x109)
	lw x11, 2(x109)
	fmul x100, x11, x100
	sw x100, 2(x109)
read_object_beqelse_b47:
read_object_cont_b47:
# B47
	beq	x107, zero, read_object_bneelse_b191
# B49
	lw x100, 0(x115)
	fabs x100, x100
	lui x11, 265361
	addi x11, x11, -37
	lui x12, 262144
	mv x14, x11
	mv x13, x100
read_object_loop_b50:
# B50
	fle x15, x13, x14
	bne	x15, zero, read_object_beqelse_b53
# B51
	fmul x14, x14, x12
	j read_object_loop_b50 # loopback to while entry from B51
read_object_beqelse_b53:
# B53
	mv x16, x100
	mv x17, x14
read_object_loop_b54:
# B54
	fle x100, x11, x16
	beq	x100, zero, read_object_bneelse_b59
# B56
	fle x100, x16, x17
	fdiv x13, x17, x12
	bne	x100, zero, read_object_beqelse_b58
# B57
	fsub x16, x16, x17
	mv x17, x13
	j read_object_loop_b54 # loopback to while entry from B57
read_object_beqelse_b58:
# B58
	mv x17, x13
	j read_object_loop_b54 # loopback to while entry from B58
read_object_bneelse_b59:
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
	j read_object_cont_b68 # adhoc jump(3)
read_object_beqelse_b67:
# B67
	fsub x14, x100, x14
read_object_cont_b68:
# B68
	xor x13, x16, x13
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
	bne	x17, zero, read_object_beqelse_b70
read_object_cont_b69:
# B69
	fmul x14, x14, x14
	fmul x17, x14, x20
	fadd x17, x19, x17
	fmul x17, x14, x17
	fadd x17, x18, x17
	fmul x14, x14, x17
	fadd x14, x10, x14
	j read_object_cont_b71 # adhoc jump(2)
read_object_beqelse_b70:
# B70
	fsub x14, x15, x14
	fmul x17, x14, x14
	fmul x24, x17, x23
	fadd x24, x22, x24
	fmul x24, x17, x24
	fadd x24, x21, x24
	fmul x17, x17, x24
	fadd x17, x10, x17
	fmul x14, x14, x17
read_object_cont_b71:
# B71
	fle x17, x14, zero
	beq	x13, x17, read_object_bneelse_b73
# B72
	mv x13, x14
	j read_object_cont_b74 # adhoc jump(2)
read_object_bneelse_b73:
# B73
	fsub x13, zero, x14
read_object_cont_b74:
# B74
	lw x14, 0(x115)
	fle x17, x14, zero
	xori x17, x17, 1
	fabs x14, x14
	mv x25, x11
	mv x24, x14
read_object_loop_b75:
# B75
	fle x26, x24, x25
	bne	x26, zero, read_object_beqelse_b78
# B76
	fmul x25, x25, x12
	j read_object_loop_b75 # loopback to while entry from B76
read_object_beqelse_b78:
# B78
	mv x27, x14
	mv x28, x25
read_object_loop_b79:
# B79
	fle x14, x11, x27
	beq	x14, zero, read_object_bneelse_b84
# B81
	fle x14, x27, x28
	fdiv x24, x28, x12
	bne	x14, zero, read_object_beqelse_b83
# B82
	fsub x27, x27, x28
	mv x28, x24
	j read_object_loop_b79 # loopback to while entry from B82
read_object_beqelse_b83:
# B83
	mv x28, x24
	j read_object_loop_b79 # loopback to while entry from B83
read_object_bneelse_b84:
# B84
	fle x14, x100, x27
	bne	x14, zero, read_object_beqelse_b86
# B85
	mv x24, x27
	j read_object_cont_b87 # adhoc jump(2)
read_object_beqelse_b86:
# B86
	fsub x24, x27, x100
read_object_cont_b87:
# B87
	xor x14, x14, x17
	fle x17, x15, x24
	bne	x17, zero, read_object_beqelse_b89
# B88
	mv x17, x24
	j read_object_cont_b90 # adhoc jump(2)
read_object_beqelse_b89:
# B89
	fsub x17, x100, x24
read_object_cont_b90:
# B90
	fle x24, x16, x17
	bne	x24, zero, read_object_beqelse_b92
# B91
	fmul x24, x17, x17
	fmul x25, x24, x23
	fadd x25, x22, x25
	fmul x25, x24, x25
	fadd x25, x21, x25
	fmul x24, x24, x25
	fadd x24, x10, x24
	fmul x17, x17, x24
	j read_object_cont_b93 # adhoc jump(2)
read_object_beqelse_b92:
# B92
	fsub x17, x15, x17
	fmul x17, x17, x17
	fmul x24, x17, x20
	fadd x24, x19, x24
	fmul x24, x17, x24
	fadd x24, x18, x24
	fmul x17, x17, x24
	fadd x17, x10, x17
read_object_cont_b93:
# B93
	fle x24, x17, zero
	beq	x14, x24, read_object_bneelse_b95
# B94
	mv x14, x17
	j read_object_cont_b96 # adhoc jump(2)
read_object_bneelse_b95:
# B95
	fsub x14, zero, x17
read_object_cont_b96:
# B96
	lw x17, 1(x115)
	fabs x17, x17
	mv x25, x11
	mv x24, x17
read_object_loop_b97:
# B97
	fle x26, x24, x25
	bne	x26, zero, read_object_beqelse_b100
# B98
	fmul x25, x25, x12
	j read_object_loop_b97 # loopback to while entry from B98
read_object_beqelse_b100:
# B100
	mv x27, x17
	mv x28, x25
read_object_loop_b101:
# B101
	fle x17, x11, x27
	beq	x17, zero, read_object_bneelse_b106
# B103
	fle x17, x27, x28
	fdiv x24, x28, x12
	bne	x17, zero, read_object_beqelse_b105
# B104
	fsub x27, x27, x28
	mv x28, x24
	j read_object_loop_b101 # loopback to while entry from B104
read_object_beqelse_b105:
# B105
	mv x28, x24
	j read_object_loop_b101 # loopback to while entry from B105
read_object_bneelse_b106:
# B106
	fle x17, x100, x27
	bne	x17, zero, read_object_beqelse_b108
# B107
	mv x24, x27
	j read_object_cont_b109 # adhoc jump(2)
read_object_beqelse_b108:
# B108
	fsub x24, x27, x100
read_object_cont_b109:
# B109
	bne	x17, zero, read_object_beqelse_b111
# B110
	li x17, 1
	j read_object_cont_b112 # adhoc jump(2)
read_object_beqelse_b111:
# B111
	mv x17, zero
read_object_cont_b112:
# B112
	fle x25, x15, x24
	bne	x25, zero, read_object_beqelse_b114
	j read_object_cont_b115 # adhoc jump(3)
read_object_beqelse_b114:
# B114
	fsub x24, x100, x24
read_object_cont_b115:
# B115
	xor x17, x25, x17
	fle x25, x16, x24
	bne	x25, zero, read_object_beqelse_b117
read_object_cont_b116:
# B116
	fmul x24, x24, x24
	fmul x25, x24, x20
	fadd x25, x19, x25
	fmul x25, x24, x25
	fadd x25, x18, x25
	fmul x24, x24, x25
	fadd x24, x10, x24
	j read_object_cont_b118 # adhoc jump(2)
read_object_beqelse_b117:
# B117
	fsub x24, x15, x24
	fmul x25, x24, x24
	fmul x26, x25, x23
	fadd x26, x22, x26
	fmul x26, x25, x26
	fadd x26, x21, x26
	fmul x25, x25, x26
	fadd x25, x10, x25
	fmul x24, x24, x25
read_object_cont_b118:
# B118
	fle x25, x24, zero
	beq	x17, x25, read_object_bneelse_b120
# B119
	mv x17, x24
	j read_object_cont_b121 # adhoc jump(2)
read_object_bneelse_b120:
# B120
	fsub x17, zero, x24
read_object_cont_b121:
# B121
	lw x24, 1(x115)
	fle x25, x24, zero
	xori x25, x25, 1
	fabs x24, x24
	mv x27, x11
	mv x26, x24
read_object_loop_b122:
# B122
	fle x28, x26, x27
	bne	x28, zero, read_object_beqelse_b125
# B123
	fmul x27, x27, x12
	j read_object_loop_b122 # loopback to while entry from B123
read_object_beqelse_b125:
# B125
	mv x30, x27
	mv x29, x24
read_object_loop_b126:
# B126
	fle x24, x11, x29
	beq	x24, zero, read_object_bneelse_b131
# B128
	fle x24, x29, x30
	fdiv x26, x30, x12
	bne	x24, zero, read_object_beqelse_b130
# B129
	fsub x29, x29, x30
	mv x30, x26
	j read_object_loop_b126 # loopback to while entry from B129
read_object_beqelse_b130:
# B130
	mv x30, x26
	j read_object_loop_b126 # loopback to while entry from B130
read_object_bneelse_b131:
# B131
	fle x24, x100, x29
	bne	x24, zero, read_object_beqelse_b133
# B132
	mv x26, x29
	j read_object_cont_b134 # adhoc jump(2)
read_object_beqelse_b133:
# B133
	fsub x26, x29, x100
read_object_cont_b134:
# B134
	xor x24, x24, x25
	fle x25, x15, x26
	bne	x25, zero, read_object_beqelse_b136
# B135
	mv x25, x26
	j read_object_cont_b137 # adhoc jump(2)
read_object_beqelse_b136:
# B136
	fsub x25, x100, x26
read_object_cont_b137:
# B137
	fle x26, x16, x25
	bne	x26, zero, read_object_beqelse_b139
# B138
	fmul x26, x25, x25
	fmul x27, x26, x23
	fadd x27, x22, x27
	fmul x27, x26, x27
	fadd x27, x21, x27
	fmul x26, x26, x27
	fadd x26, x10, x26
	fmul x25, x25, x26
	j read_object_cont_b140 # adhoc jump(2)
read_object_beqelse_b139:
# B139
	fsub x25, x15, x25
	fmul x25, x25, x25
	fmul x26, x25, x20
	fadd x26, x19, x26
	fmul x26, x25, x26
	fadd x26, x18, x26
	fmul x25, x25, x26
	fadd x25, x10, x25
read_object_cont_b140:
# B140
	fle x26, x25, zero
	beq	x24, x26, read_object_bneelse_b142
# B141
	mv x24, x25
	j read_object_cont_b143 # adhoc jump(2)
read_object_bneelse_b142:
# B142
	fsub x24, zero, x25
read_object_cont_b143:
# B143
	lw x25, 2(x115)
	fabs x25, x25
	mv x27, x11
	mv x26, x25
read_object_loop_b144:
# B144
	fle x28, x26, x27
	bne	x28, zero, read_object_beqelse_b147
# B145
	fmul x27, x27, x12
	j read_object_loop_b144 # loopback to while entry from B145
read_object_beqelse_b147:
# B147
	mv x30, x27
	mv x29, x25
read_object_loop_b148:
# B148
	fle x25, x11, x29
	beq	x25, zero, read_object_bneelse_b153
# B150
	fle x25, x29, x30
	fdiv x26, x30, x12
	bne	x25, zero, read_object_beqelse_b152
# B151
	fsub x29, x29, x30
	mv x30, x26
	j read_object_loop_b148 # loopback to while entry from B151
read_object_beqelse_b152:
# B152
	mv x30, x26
	j read_object_loop_b148 # loopback to while entry from B152
read_object_bneelse_b153:
# B153
	fle x25, x100, x29
	bne	x25, zero, read_object_beqelse_b155
# B154
	mv x26, x29
	j read_object_cont_b156 # adhoc jump(2)
read_object_beqelse_b155:
# B155
	fsub x26, x29, x100
read_object_cont_b156:
# B156
	bne	x25, zero, read_object_beqelse_b158
# B157
	li x25, 1
	j read_object_cont_b159 # adhoc jump(2)
read_object_beqelse_b158:
# B158
	mv x25, zero
read_object_cont_b159:
# B159
	fle x27, x15, x26
	bne	x27, zero, read_object_beqelse_b161
	j read_object_cont_b162 # adhoc jump(3)
read_object_beqelse_b161:
# B161
	fsub x26, x100, x26
read_object_cont_b162:
# B162
	xor x25, x27, x25
	fle x27, x16, x26
	bne	x27, zero, read_object_beqelse_b164
read_object_cont_b163:
# B163
	fmul x26, x26, x26
	fmul x27, x26, x20
	fadd x27, x19, x27
	fmul x27, x26, x27
	fadd x27, x18, x27
	fmul x26, x26, x27
	fadd x26, x10, x26
	j read_object_cont_b165 # adhoc jump(2)
read_object_beqelse_b164:
# B164
	fsub x26, x15, x26
	fmul x27, x26, x26
	fmul x28, x27, x23
	fadd x28, x22, x28
	fmul x28, x27, x28
	fadd x28, x21, x28
	fmul x27, x27, x28
	fadd x27, x10, x27
	fmul x26, x26, x27
read_object_cont_b165:
# B165
	fle x27, x26, zero
	beq	x25, x27, read_object_bneelse_b167
# B166
	mv x25, x26
	j read_object_cont_b168 # adhoc jump(2)
read_object_bneelse_b167:
# B167
	fsub x25, zero, x26
read_object_cont_b168:
# B168
	lw x26, 2(x115)
	fle x27, x26, zero
	xori x27, x27, 1
	fabs x26, x26
	mv x28, x26
	mv x29, x11
read_object_loop_b169:
# B169
	fle x30, x28, x29
	bne	x30, zero, read_object_beqelse_b172
# B170
	fmul x29, x29, x12
	j read_object_loop_b169 # loopback to while entry from B170
read_object_beqelse_b172:
# B172
	mv x31, x26
	mv x32, x29
read_object_loop_b173:
# B173
	fle x26, x11, x31
	beq	x26, zero, read_object_bneelse_b178
# B175
	fle x26, x31, x32
	fdiv x28, x32, x12
	bne	x26, zero, read_object_beqelse_b177
# B176
	fsub x31, x31, x32
	mv x32, x28
	j read_object_loop_b173 # loopback to while entry from B176
read_object_beqelse_b177:
# B177
	mv x32, x28
	j read_object_loop_b173 # loopback to while entry from B177
read_object_bneelse_b178:
# B178
	fle x11, x100, x31
	bne	x11, zero, read_object_beqelse_b180
# B179
	mv x26, x31
	j read_object_cont_b181 # adhoc jump(2)
read_object_beqelse_b180:
# B180
	fsub x26, x31, x100
read_object_cont_b181:
# B181
	xor x11, x11, x27
	fle x27, x15, x26
	bne	x27, zero, read_object_beqelse_b183
# B182
	mv x100, x26
	j read_object_cont_b184 # adhoc jump(2)
read_object_beqelse_b183:
# B183
	fsub x100, x100, x26
read_object_cont_b184:
# B184
	fle x16, x16, x100
	bne	x16, zero, read_object_beqelse_b186
# B185
	fmul x15, x100, x100
	fmul x16, x15, x23
	fadd x16, x22, x16
	fmul x16, x15, x16
	fadd x16, x21, x16
	fmul x15, x15, x16
	fadd x10, x10, x15
	fmul x10, x100, x10
	j read_object_cont_b187 # adhoc jump(2)
read_object_beqelse_b186:
# B186
	fsub x100, x15, x100
	fmul x100, x100, x100
	fmul x15, x100, x20
	fadd x15, x19, x15
	fmul x15, x100, x15
	fadd x15, x18, x15
	fmul x100, x100, x15
	fadd x10, x10, x100
read_object_cont_b187:
# B187
	fle x100, x10, zero
	beq	x11, x100, read_object_bneelse_b189
	j read_object_cont_b190 # adhoc jump(3)
read_object_bneelse_b189:
# B189
	fsub x10, zero, x10
read_object_cont_b190:
# B190
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
	lw x17, 0(x109)
	lw x20, 1(x109)
	lw x21, 2(x109)
	fmul x22, x100, x100
	fmul x22, x17, x22
	fmul x23, x19, x19
	fmul x23, x20, x23
	fadd x22, x22, x23
	fmul x23, x16, x16
	fmul x23, x21, x23
	fadd x22, x22, x23
	sw x22, 0(x109)
	fmul x22, x15, x15
	fmul x22, x17, x22
	fmul x23, x11, x11
	fmul x23, x20, x23
	fadd x22, x22, x23
	fmul x23, x14, x14
	fmul x23, x21, x23
	fadd x22, x22, x23
	sw x22, 1(x109)
	fmul x22, x18, x18
	fmul x22, x17, x22
	fmul x23, x10, x10
	fmul x23, x20, x23
	fadd x22, x22, x23
	fmul x23, x13, x13
	fmul x23, x21, x23
	fadd x22, x22, x23
	sw x22, 2(x109)
	fmul x22, x17, x15
	fmul x22, x22, x18
	fmul x23, x20, x11
	fmul x23, x23, x10
	fadd x22, x22, x23
	fmul x23, x21, x14
	fmul x23, x23, x13
	fadd x22, x22, x23
	fmul x22, x12, x22
	sw x22, 0(x115)
	fmul x100, x17, x100
	fmul x17, x100, x18
	fmul x18, x20, x19
	fmul x10, x18, x10
	fadd x10, x17, x10
	fmul x16, x21, x16
	fmul x13, x16, x13
	fadd x10, x10, x13
	fmul x10, x12, x10
	sw x10, 1(x115)
	fmul x10, x100, x15
	fmul x100, x18, x11
	fadd x10, x10, x100
	fmul x100, x16, x14
	fadd x10, x10, x100
	fmul x10, x12, x10
	sw x10, 2(x115)
read_object_bneelse_b191:
read_object_cont_b191:
# B191
# B194
	addi x103, x103, 1
	j read_object_loop_b3 # loopback to while entry from B194
read_object_bneelse_b193:
# B193
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
# B195
	sw	x5, 0(x2)
# B196
	in32 x10
	sw	x10, 1(x2)
	li x100, -1
	bne	x10, x100, read_net_item_beqelse_b198
# B197
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
read_net_item_beqelse_b198:
# B198
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
# B199
	sw	x5, 0(x2)
# B200
	mv x5, zero
	sw	ra, 1(x2)
	addi	x2, x2, 2
	jal	read_net_item.2876
	addi	x2, x2, -2
	lw	ra, 1(x2)
	sw	x5, 1(x2)
	lw x10, 0(x5)
	li x100, -1
	bne	x10, x100, read_or_network_beqelse_b202
# B201
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
read_or_network_beqelse_b202:
# B202
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
# B203
# B204
	li x10, 1
	li x100, 99
	la x11, min_caml_light_dirvec
	la x12, min_caml_intersection_point
	la x13, min_caml_solver_dist
	lui x14, 777421
	addi x14, x14, -819
	mv x15, x5
	mv x16, x6
shadow_check_one_or_matrix_loop_b205:
# B205
	add x4, x16, x15
	lw x17, 0(x4)
	lw x18, 0(x17)
	li x19, -1
	bne	x18, x19, shadow_check_one_or_matrix_beqelse_b207
# B206
	mv x5, zero
	ret
shadow_check_one_or_matrix_beqelse_b207:
# B207
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
	bne	x18, x100, shadow_check_one_or_matrix_beqelse_b209
# B208
	mv x18, x10
	j shadow_check_one_or_matrix_cont_b341 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b209:
# B209
	add x4, x20, x18
	lw x28, 0(x4)
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
	add x4, x32, x18
	lw x18, 0(x4)
	lw x32, 1(x28)
	bne	x32, x10, shadow_check_one_or_matrix_beqelse_b211
# B210
	lw x32, 0(x11)
	lw x33, 0(x18)
	fsub x33, x33, x29
	lw x34, 1(x18)
	fmul x33, x33, x34
	lw x34, 1(x32)
	fmul x34, x33, x34
	fadd x34, x34, x30
	fabs x34, x34
	lw x35, 4(x28)
	lw x35, 1(x35)
	fle x34, x35, x34
	bne	x34, zero, shadow_check_one_or_matrix_beqelse_b217
# B213
	lw x34, 2(x32)
	fmul x34, x33, x34
	fadd x34, x34, x31
	fabs x34, x34
	lw x35, 4(x28)
	lw x35, 2(x35)
	fle x34, x35, x34
	bne	x34, zero, shadow_check_one_or_matrix_beqelse_b217
# B215
	lw x34, 1(x18)
	feq x34, x34, zero
	xori x34, x34, 1
	mv x35, x34
# B216
	bne	x35, zero, shadow_check_one_or_matrix_beqelse_b218
shadow_check_one_or_matrix_beqelse_b217:
# B217
	lw x33, 2(x18)
	fsub x33, x33, x30
	lw x34, 3(x18)
	fmul x33, x33, x34
	lw x34, 0(x32)
	fmul x34, x33, x34
	fadd x34, x34, x29
	fabs x34, x34
	lw x35, 4(x28)
	lw x35, 0(x35)
	fle x34, x35, x34
	bne	x34, zero, shadow_check_one_or_matrix_beqelse_b224
# B220
	lw x34, 2(x32)
	fmul x34, x33, x34
	fadd x34, x34, x31
	fabs x34, x34
	lw x35, 4(x28)
	lw x35, 2(x35)
	fle x34, x35, x34
	bne	x34, zero, shadow_check_one_or_matrix_beqelse_b224
# B222
	lw x34, 3(x18)
	feq x34, x34, zero
	xori x34, x34, 1
	mv x35, x34
# B223
	bne	x35, zero, shadow_check_one_or_matrix_beqelse_b225
shadow_check_one_or_matrix_beqelse_b224:
# B224
	lw x33, 4(x18)
	fsub x31, x33, x31
	lw x33, 5(x18)
	fmul x31, x31, x33
	lw x33, 0(x32)
	fmul x33, x31, x33
	fadd x29, x33, x29
	fabs x29, x29
	lw x33, 4(x28)
	lw x33, 0(x33)
	fle x29, x33, x29
	bne	x29, zero, shadow_check_one_or_matrix_beqelse_b231
# B227
	lw x29, 1(x32)
	fmul x29, x31, x29
	fadd x29, x29, x30
	fabs x29, x29
	lw x28, 4(x28)
	lw x28, 1(x28)
	fle x28, x28, x29
	bne	x28, zero, shadow_check_one_or_matrix_beqelse_b231
# B229
	lw x18, 5(x18)
	feq x18, x18, zero
	xori x18, x18, 1
	mv x28, x18
# B230
	bne	x28, zero, shadow_check_one_or_matrix_beqelse_b232
shadow_check_one_or_matrix_beqelse_b231:
# B231
	j shadow_check_one_or_matrix_cont_b251 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b232:
# B232
	sw x31, 0(x13)
	j shadow_check_one_or_matrix_cont_b252 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b225:
# B225
	sw x33, 0(x13)
	mv x18, x21
	j shadow_check_one_or_matrix_cont_b250 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b218:
# B218
	sw x33, 0(x13)
	mv x18, x10
	j shadow_check_one_or_matrix_cont_b250 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b211:
# B211
	bne	x32, x21, shadow_check_one_or_matrix_beqelse_b234
# B233
	lw x28, 0(x18)
	fle x28, zero, x28
	bne	x28, zero, shadow_check_one_or_matrix_beqelse_b251
# B236
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
	j shadow_check_one_or_matrix_cont_b250 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b234:
# B234
	lw x32, 0(x18)
	feq x33, x32, zero
	bne	x33, zero, shadow_check_one_or_matrix_beqelse_b251
# B237
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
	bne	x35, zero, shadow_check_one_or_matrix_beqelse_b240
# B239
	mv x29, x34
	j shadow_check_one_or_matrix_cont_b241 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b240:
# B240
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
shadow_check_one_or_matrix_cont_b241:
# B241
	lw x30, 1(x28)
	bne	x30, x22, shadow_check_one_or_matrix_beqelse_b244
# B242
	fsub x29, x29, x23
shadow_check_one_or_matrix_beqelse_b244:
# B244
	fmul x30, x33, x33
	fmul x29, x32, x29
	fsub x29, x30, x29
	fle x30, x29, zero
	bne	x30, zero, shadow_check_one_or_matrix_beqelse_b251
# B246
	lw x28, 6(x28)
	fsqrt x29, x29
	bne	x28, zero, shadow_check_one_or_matrix_beqelse_b248
# B247
	fsub x28, x33, x29
	lw x18, 4(x18)
	fmul x18, x28, x18
	sw x18, 0(x13)
	j shadow_check_one_or_matrix_cont_b249 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b248:
# B248
	fadd x28, x33, x29
	lw x18, 4(x18)
	fmul x18, x28, x18
	sw x18, 0(x13)
shadow_check_one_or_matrix_cont_b249:
# B249
	mv x18, x10
shadow_check_one_or_matrix_cont_b250:
# B250
	bne	x18, zero, shadow_check_one_or_matrix_beqelse_b252
shadow_check_one_or_matrix_beqelse_b251:
shadow_check_one_or_matrix_cont_b251:
# B251
	addi x15, x15, 1
	j shadow_check_one_or_matrix_cont_b342 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b252:
shadow_check_one_or_matrix_cont_b252:
# B252
	lw x18, 0(x13)
	fle x18, x14, x18
	beq	x18, zero, shadow_check_one_or_matrix_bneelse_b254
# B253
	addi x15, x15, 1
	j shadow_check_one_or_matrix_cont_b342 # adhoc jump(2)
shadow_check_one_or_matrix_bneelse_b254:
# B254
	mv x28, x10
	mv x29, x17
shadow_check_one_or_matrix_loop_b255:
# B255
	add x4, x29, x28
	lw x18, 0(x4)
	beq	x18, x19, shadow_check_one_or_matrix_bneelse_b339
# B257
	add x4, x24, x18
	lw x18, 0(x4)
	mv x31, x18
	mv x30, zero
shadow_check_one_or_matrix_loop_b258:
# B258
	add x4, x31, x30
	lw x18, 0(x4)
	beq	x18, x19, shadow_check_one_or_matrix_bneelse_b336
# B260
	add x4, x31, x30
	lw x18, 0(x4)
	add x4, x20, x18
	lw x32, 0(x4)
	lw x33, 0(x12)
	lw x34, 5(x32)
	lw x34, 0(x34)
	fsub x33, x33, x34
	lw x34, 1(x12)
	lw x35, 5(x32)
	lw x35, 1(x35)
	fsub x34, x34, x35
	lw x35, 2(x12)
	lw x36, 5(x32)
	lw x36, 2(x36)
	fsub x35, x35, x36
	lw x36, 1(x11)
	add x4, x36, x18
	lw x36, 0(x4)
	lw x37, 1(x32)
	bne	x37, x10, shadow_check_one_or_matrix_beqelse_b262
# B261
	lw x37, 0(x11)
	lw x38, 0(x36)
	fsub x38, x38, x33
	lw x39, 1(x36)
	fmul x38, x38, x39
	lw x39, 1(x37)
	fmul x39, x38, x39
	fadd x39, x39, x34
	fabs x39, x39
	lw x40, 4(x32)
	lw x40, 1(x40)
	fle x39, x40, x39
	bne	x39, zero, shadow_check_one_or_matrix_beqelse_b268
# B264
	lw x39, 2(x37)
	fmul x39, x38, x39
	fadd x39, x39, x35
	fabs x39, x39
	lw x40, 4(x32)
	lw x40, 2(x40)
	fle x39, x40, x39
	bne	x39, zero, shadow_check_one_or_matrix_beqelse_b268
# B266
	lw x39, 1(x36)
	feq x39, x39, zero
	xori x39, x39, 1
	mv x40, x39
# B267
	bne	x40, zero, shadow_check_one_or_matrix_beqelse_b269
shadow_check_one_or_matrix_beqelse_b268:
# B268
	lw x38, 2(x36)
	fsub x38, x38, x34
	lw x39, 3(x36)
	fmul x38, x38, x39
	lw x39, 0(x37)
	fmul x39, x38, x39
	fadd x39, x39, x33
	fabs x39, x39
	lw x40, 4(x32)
	lw x40, 0(x40)
	fle x39, x40, x39
	bne	x39, zero, shadow_check_one_or_matrix_beqelse_b275
# B271
	lw x39, 2(x37)
	fmul x39, x38, x39
	fadd x39, x39, x35
	fabs x39, x39
	lw x40, 4(x32)
	lw x40, 2(x40)
	fle x39, x40, x39
	bne	x39, zero, shadow_check_one_or_matrix_beqelse_b275
# B273
	lw x39, 3(x36)
	feq x39, x39, zero
	xori x39, x39, 1
	mv x40, x39
# B274
	bne	x40, zero, shadow_check_one_or_matrix_beqelse_b276
shadow_check_one_or_matrix_beqelse_b275:
# B275
	lw x38, 4(x36)
	fsub x35, x38, x35
	lw x38, 5(x36)
	fmul x35, x35, x38
	lw x38, 0(x37)
	fmul x38, x35, x38
	fadd x33, x38, x33
	fabs x33, x33
	lw x38, 4(x32)
	lw x38, 0(x38)
	fle x33, x38, x33
	bne	x33, zero, shadow_check_one_or_matrix_beqelse_b282
# B278
	lw x33, 1(x37)
	fmul x33, x35, x33
	fadd x33, x33, x34
	fabs x33, x33
	lw x32, 4(x32)
	lw x32, 1(x32)
	fle x32, x32, x33
	bne	x32, zero, shadow_check_one_or_matrix_beqelse_b282
# B280
	lw x32, 5(x36)
	feq x32, x32, zero
	xori x32, x32, 1
	mv x33, x32
# B281
	bne	x33, zero, shadow_check_one_or_matrix_beqelse_b283
shadow_check_one_or_matrix_beqelse_b282:
# B282
	lw x33, 0(x13)
	j shadow_check_one_or_matrix_cont_b302 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b283:
# B283
	sw x35, 0(x13)
	mv x32, x22
	j shadow_check_one_or_matrix_cont_b301 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b276:
# B276
	sw x38, 0(x13)
	mv x32, x21
	j shadow_check_one_or_matrix_cont_b301 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b269:
# B269
	sw x38, 0(x13)
	mv x32, x10
	j shadow_check_one_or_matrix_cont_b301 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b262:
# B262
	bne	x37, x21, shadow_check_one_or_matrix_beqelse_b285
# B284
	lw x32, 0(x36)
	fle x32, zero, x32
	beq	x32, zero, shadow_check_one_or_matrix_bneelse_b287
# B286
	lw x33, 0(x13)
	j shadow_check_one_or_matrix_cont_b302 # adhoc jump(2)
shadow_check_one_or_matrix_bneelse_b287:
# B287
	lw x32, 1(x36)
	fmul x32, x32, x33
	lw x33, 2(x36)
	fmul x33, x33, x34
	fadd x32, x32, x33
	lw x33, 3(x36)
	fmul x33, x33, x35
	fadd x32, x32, x33
	sw x32, 0(x13)
	mv x32, x10
	j shadow_check_one_or_matrix_cont_b301 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b285:
# B285
	lw x37, 0(x36)
	feq x38, x37, zero
	bne	x38, zero, shadow_check_one_or_matrix_beqelse_b289
# B288
	lw x38, 1(x36)
	fmul x38, x38, x33
	lw x39, 2(x36)
	fmul x39, x39, x34
	fadd x38, x38, x39
	lw x39, 3(x36)
	fmul x39, x39, x35
	fadd x38, x38, x39
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
	bne	x40, zero, shadow_check_one_or_matrix_beqelse_b291
# B290
	mv x33, x39
	j shadow_check_one_or_matrix_cont_b292 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b291:
# B291
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
shadow_check_one_or_matrix_cont_b292:
# B292
	lw x34, 1(x32)
	bne	x34, x22, shadow_check_one_or_matrix_beqelse_b295
# B293
	fsub x33, x33, x23
shadow_check_one_or_matrix_beqelse_b295:
# B295
	fmul x34, x38, x38
	fmul x33, x37, x33
	fsub x33, x34, x33
	fle x34, x33, zero
	beq	x34, zero, shadow_check_one_or_matrix_bneelse_b297
# B296
	lw x33, 0(x13)
	j shadow_check_one_or_matrix_cont_b302 # adhoc jump(2)
shadow_check_one_or_matrix_bneelse_b297:
# B297
	lw x32, 6(x32)
	fsqrt x33, x33
	bne	x32, zero, shadow_check_one_or_matrix_beqelse_b299
# B298
	fsub x32, x38, x33
	lw x33, 4(x36)
	fmul x32, x32, x33
	sw x32, 0(x13)
	j shadow_check_one_or_matrix_cont_b300 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b299:
# B299
	fadd x32, x38, x33
	lw x33, 4(x36)
	fmul x32, x32, x33
	sw x32, 0(x13)
shadow_check_one_or_matrix_cont_b300:
# B300
	mv x32, x10
shadow_check_one_or_matrix_cont_b301:
# B301
	lw x33, 0(x13)
	bne	x32, zero, shadow_check_one_or_matrix_beqelse_b303
	j shadow_check_one_or_matrix_cont_b302 # adhoc jump(3)
shadow_check_one_or_matrix_beqelse_b303:
# B303
	fle x32, x25, x33
	xori x32, x32, 1
# B304
	addi x30, x30, 1
	bne	x32, zero, shadow_check_one_or_matrix_beqelse_b306
	j shadow_check_one_or_matrix_cont_b305 # adhoc jump(3)
shadow_check_one_or_matrix_beqelse_b306:
# B306
	fadd x18, x33, x26
	lw x32, 0(x27)
	fmul x32, x32, x18
	lw x33, 0(x12)
	fadd x32, x32, x33
	lw x33, 1(x27)
	fmul x33, x33, x18
	lw x34, 1(x12)
	fadd x33, x33, x34
	lw x34, 2(x27)
	fmul x18, x34, x18
	lw x34, 2(x12)
	fadd x18, x18, x34
	mv x37, x33
	mv x35, x31
	mv x38, x18
	mv x34, zero
	mv x36, x32
shadow_check_one_or_matrix_loop_b309:
# B309
	add x4, x35, x34
	lw x18, 0(x4)
	bne	x18, x19, shadow_check_one_or_matrix_beqelse_b311
# B310
	mv x32, x10
# B332
	bne	x32, zero, shadow_check_one_or_matrix_beqelse_b334
	j shadow_check_one_or_matrix_cont_b333 # adhoc jump(3)
shadow_check_one_or_matrix_beqelse_b334:
# B334
	mv x18, x10
# B335
	bne	x18, zero, shadow_check_one_or_matrix_beqelse_b337
	j shadow_check_one_or_matrix_cont_b336 # adhoc jump(3)
shadow_check_one_or_matrix_beqelse_b337:
# B337
	mv x30, x10
# B338
	bne	x30, zero, shadow_check_one_or_matrix_beqelse_b340
shadow_check_one_or_matrix_bneelse_b339:
# B339
	addi x15, x15, 1
	j shadow_check_one_or_matrix_cont_b342 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b340:
# B340
	mv x18, x10
shadow_check_one_or_matrix_cont_b341:
# B341
	addi x15, x15, 1
	bne	x18, zero, shadow_check_one_or_matrix_beqelse_b343
shadow_check_one_or_matrix_cont_b342:
# B342
	j shadow_check_one_or_matrix_loop_b205 # loopback to while entry from B342
shadow_check_one_or_matrix_beqelse_b343:
# B343
	mv x28, x10
	mv x29, x17
shadow_check_one_or_matrix_loop_b344:
# B344
	add x4, x29, x28
	lw x17, 0(x4)
	beq	x17, x19, shadow_check_one_or_matrix_bneelse_b428
# B346
	add x4, x24, x17
	lw x17, 0(x4)
	mv x30, x17
	mv x18, zero
shadow_check_one_or_matrix_loop_b347:
# B347
	add x4, x30, x18
	lw x17, 0(x4)
	beq	x17, x19, shadow_check_one_or_matrix_bneelse_b425
# B349
	add x4, x30, x18
	lw x17, 0(x4)
	add x4, x20, x17
	lw x31, 0(x4)
	lw x32, 0(x12)
	lw x33, 5(x31)
	lw x33, 0(x33)
	fsub x32, x32, x33
	lw x33, 1(x12)
	lw x34, 5(x31)
	lw x34, 1(x34)
	fsub x33, x33, x34
	lw x34, 2(x12)
	lw x35, 5(x31)
	lw x35, 2(x35)
	fsub x34, x34, x35
	lw x35, 1(x11)
	add x4, x35, x17
	lw x35, 0(x4)
	lw x36, 1(x31)
	bne	x36, x10, shadow_check_one_or_matrix_beqelse_b351
# B350
	lw x36, 0(x11)
	lw x37, 0(x35)
	fsub x37, x37, x32
	lw x38, 1(x35)
	fmul x37, x37, x38
	lw x38, 1(x36)
	fmul x38, x37, x38
	fadd x38, x38, x33
	fabs x38, x38
	lw x39, 4(x31)
	lw x39, 1(x39)
	fle x38, x39, x38
	bne	x38, zero, shadow_check_one_or_matrix_beqelse_b357
# B353
	lw x38, 2(x36)
	fmul x38, x37, x38
	fadd x38, x38, x34
	fabs x38, x38
	lw x39, 4(x31)
	lw x39, 2(x39)
	fle x38, x39, x38
	bne	x38, zero, shadow_check_one_or_matrix_beqelse_b357
# B355
	lw x38, 1(x35)
	feq x38, x38, zero
	xori x38, x38, 1
	mv x39, x38
# B356
	bne	x39, zero, shadow_check_one_or_matrix_beqelse_b358
shadow_check_one_or_matrix_beqelse_b357:
# B357
	lw x37, 2(x35)
	fsub x37, x37, x33
	lw x38, 3(x35)
	fmul x37, x37, x38
	lw x38, 0(x36)
	fmul x38, x37, x38
	fadd x38, x38, x32
	fabs x38, x38
	lw x39, 4(x31)
	lw x39, 0(x39)
	fle x38, x39, x38
	bne	x38, zero, shadow_check_one_or_matrix_beqelse_b364
# B360
	lw x38, 2(x36)
	fmul x38, x37, x38
	fadd x38, x38, x34
	fabs x38, x38
	lw x39, 4(x31)
	lw x39, 2(x39)
	fle x38, x39, x38
	bne	x38, zero, shadow_check_one_or_matrix_beqelse_b364
# B362
	lw x38, 3(x35)
	feq x38, x38, zero
	xori x38, x38, 1
	mv x39, x38
# B363
	bne	x39, zero, shadow_check_one_or_matrix_beqelse_b365
shadow_check_one_or_matrix_beqelse_b364:
# B364
	lw x37, 4(x35)
	fsub x34, x37, x34
	lw x37, 5(x35)
	fmul x34, x34, x37
	lw x37, 0(x36)
	fmul x37, x34, x37
	fadd x32, x37, x32
	fabs x32, x32
	lw x37, 4(x31)
	lw x37, 0(x37)
	fle x32, x37, x32
	bne	x32, zero, shadow_check_one_or_matrix_beqelse_b371
# B367
	lw x32, 1(x36)
	fmul x32, x34, x32
	fadd x32, x32, x33
	fabs x32, x32
	lw x31, 4(x31)
	lw x31, 1(x31)
	fle x31, x31, x32
	bne	x31, zero, shadow_check_one_or_matrix_beqelse_b371
# B369
	lw x31, 5(x35)
	feq x31, x31, zero
	xori x31, x31, 1
	mv x32, x31
# B370
	bne	x32, zero, shadow_check_one_or_matrix_beqelse_b372
shadow_check_one_or_matrix_beqelse_b371:
# B371
	lw x32, 0(x13)
	j shadow_check_one_or_matrix_cont_b391 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b372:
# B372
	sw x34, 0(x13)
	mv x31, x22
	j shadow_check_one_or_matrix_cont_b390 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b365:
# B365
	sw x37, 0(x13)
	mv x31, x21
	j shadow_check_one_or_matrix_cont_b390 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b358:
# B358
	sw x37, 0(x13)
	mv x31, x10
	j shadow_check_one_or_matrix_cont_b390 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b351:
# B351
	bne	x36, x21, shadow_check_one_or_matrix_beqelse_b374
# B373
	lw x31, 0(x35)
	fle x31, zero, x31
	beq	x31, zero, shadow_check_one_or_matrix_bneelse_b376
# B375
	lw x32, 0(x13)
	j shadow_check_one_or_matrix_cont_b391 # adhoc jump(2)
shadow_check_one_or_matrix_bneelse_b376:
# B376
	lw x31, 1(x35)
	fmul x31, x31, x32
	lw x32, 2(x35)
	fmul x32, x32, x33
	fadd x31, x31, x32
	lw x32, 3(x35)
	fmul x32, x32, x34
	fadd x31, x31, x32
	sw x31, 0(x13)
	mv x31, x10
	j shadow_check_one_or_matrix_cont_b390 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b374:
# B374
	lw x36, 0(x35)
	feq x37, x36, zero
	bne	x37, zero, shadow_check_one_or_matrix_beqelse_b378
# B377
	lw x37, 1(x35)
	fmul x37, x37, x32
	lw x38, 2(x35)
	fmul x38, x38, x33
	fadd x37, x37, x38
	lw x38, 3(x35)
	fmul x38, x38, x34
	fadd x37, x37, x38
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
	bne	x39, zero, shadow_check_one_or_matrix_beqelse_b380
# B379
	mv x32, x38
	j shadow_check_one_or_matrix_cont_b381 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b380:
# B380
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
shadow_check_one_or_matrix_cont_b381:
# B381
	lw x33, 1(x31)
	bne	x33, x22, shadow_check_one_or_matrix_beqelse_b384
# B382
	fsub x32, x32, x23
shadow_check_one_or_matrix_beqelse_b384:
# B384
	fmul x33, x37, x37
	fmul x32, x36, x32
	fsub x32, x33, x32
	fle x33, x32, zero
	beq	x33, zero, shadow_check_one_or_matrix_bneelse_b386
# B385
	lw x32, 0(x13)
	j shadow_check_one_or_matrix_cont_b391 # adhoc jump(2)
shadow_check_one_or_matrix_bneelse_b386:
# B386
	lw x31, 6(x31)
	fsqrt x32, x32
	bne	x31, zero, shadow_check_one_or_matrix_beqelse_b388
# B387
	fsub x31, x37, x32
	lw x32, 4(x35)
	fmul x31, x31, x32
	sw x31, 0(x13)
	j shadow_check_one_or_matrix_cont_b389 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b388:
# B388
	fadd x31, x37, x32
	lw x32, 4(x35)
	fmul x31, x31, x32
	sw x31, 0(x13)
shadow_check_one_or_matrix_cont_b389:
# B389
	mv x31, x10
shadow_check_one_or_matrix_cont_b390:
# B390
	lw x32, 0(x13)
	bne	x31, zero, shadow_check_one_or_matrix_beqelse_b392
	j shadow_check_one_or_matrix_cont_b391 # adhoc jump(3)
shadow_check_one_or_matrix_beqelse_b392:
# B392
	fle x31, x25, x32
	xori x31, x31, 1
# B393
	addi x18, x18, 1
	bne	x31, zero, shadow_check_one_or_matrix_beqelse_b395
	j shadow_check_one_or_matrix_cont_b394 # adhoc jump(3)
shadow_check_one_or_matrix_beqelse_b395:
# B395
	fadd x17, x32, x26
	lw x31, 0(x27)
	fmul x31, x31, x17
	lw x32, 0(x12)
	fadd x31, x31, x32
	lw x32, 1(x27)
	fmul x32, x32, x17
	lw x33, 1(x12)
	fadd x32, x32, x33
	lw x33, 2(x27)
	fmul x17, x33, x17
	lw x33, 2(x12)
	fadd x17, x17, x33
	mv x37, x17
	mv x35, x31
	mv x34, x30
	mv x33, zero
	mv x36, x32
shadow_check_one_or_matrix_loop_b398:
# B398
	add x4, x34, x33
	lw x17, 0(x4)
	bne	x17, x19, shadow_check_one_or_matrix_beqelse_b400
# B399
	mv x31, x10
# B421
	bne	x31, zero, shadow_check_one_or_matrix_beqelse_b423
	j shadow_check_one_or_matrix_cont_b422 # adhoc jump(3)
shadow_check_one_or_matrix_beqelse_b423:
# B423
	mv x17, x10
# B424
	bne	x17, zero, shadow_check_one_or_matrix_beqelse_b426
	j shadow_check_one_or_matrix_cont_b425 # adhoc jump(3)
shadow_check_one_or_matrix_beqelse_b426:
# B426
	mv x18, x10
# B427
	bne	x18, zero, shadow_check_one_or_matrix_beqelse_b429
shadow_check_one_or_matrix_bneelse_b428:
# B428
	j shadow_check_one_or_matrix_loop_b205 # loopback to while entry from B428
shadow_check_one_or_matrix_beqelse_b429:
# B429
	mv x5, x10
	ret
shadow_check_one_or_matrix_beqelse_b400:
# B400
	add x4, x20, x17
	lw x17, 0(x4)
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
	bne	x39, x10, shadow_check_one_or_matrix_beqelse_b402
# B401
	fabs x31, x31
	lw x39, 4(x17)
	lw x39, 0(x39)
	fle x31, x39, x31
	bne	x31, zero, shadow_check_one_or_matrix_beqelse_b408
# B404
	fabs x31, x32
	lw x32, 4(x17)
	lw x32, 1(x32)
	fle x31, x32, x31
	bne	x31, zero, shadow_check_one_or_matrix_beqelse_b408
# B406
	fabs x31, x38
	lw x32, 4(x17)
	lw x32, 2(x32)
	fle x31, x32, x31
	xori x31, x31, 1
	mv x32, x31
# B407
	bne	x32, zero, shadow_check_one_or_matrix_beqelse_b409
shadow_check_one_or_matrix_beqelse_b408:
# B408
	lw x17, 6(x17)
	xori x17, x17, 1
	j shadow_check_one_or_matrix_cont_b418 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b409:
# B409
	lw x17, 6(x17)
	j shadow_check_one_or_matrix_cont_b418 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b402:
# B402
	bne	x39, x21, shadow_check_one_or_matrix_beqelse_b411
# B410
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
	j shadow_check_one_or_matrix_cont_b418 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b411:
# B411
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
	bne	x40, zero, shadow_check_one_or_matrix_beqelse_b413
# B412
	mv x31, x39
	j shadow_check_one_or_matrix_cont_b414 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b413:
# B413
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
shadow_check_one_or_matrix_cont_b414:
# B414
	lw x32, 1(x17)
	bne	x32, x22, shadow_check_one_or_matrix_beqelse_b417
# B415
	fsub x31, x31, x23
shadow_check_one_or_matrix_beqelse_b417:
# B417
	lw x17, 6(x17)
	fle x31, zero, x31
	xori x31, x31, 1
	xor x17, x17, x31
	xori x17, x17, 1
shadow_check_one_or_matrix_cont_b418:
# B418
	bne	x17, zero, shadow_check_one_or_matrix_beqelse_b422
# B419
	addi x33, x33, 1
	j shadow_check_one_or_matrix_loop_b398 # loopback to while entry from B419
shadow_check_one_or_matrix_beqelse_b422:
shadow_check_one_or_matrix_cont_b422:
# B422
	j shadow_check_one_or_matrix_loop_b347 # loopback to while entry from B422
shadow_check_one_or_matrix_beqelse_b378:
# B378
	lw x32, 0(x13)
shadow_check_one_or_matrix_cont_b391:
# B391
	addi x18, x18, 1
shadow_check_one_or_matrix_cont_b394:
# B394
	add x4, x20, x17
	lw x17, 0(x4)
	lw x17, 6(x17)
	beq	x17, zero, shadow_check_one_or_matrix_bneelse_b425
	j	shadow_check_one_or_matrix_loop_b347 # moved need extra jump
shadow_check_one_or_matrix_bneelse_b425:
shadow_check_one_or_matrix_cont_b425:
# B425
	addi x28, x28, 1
	j shadow_check_one_or_matrix_loop_b344 # loopback to while entry from B425
	j shadow_check_one_or_matrix_loop_b347 # loopback to while entry from B394
shadow_check_one_or_matrix_beqelse_b311:
# B311
	add x4, x20, x18
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
	bne	x40, x10, shadow_check_one_or_matrix_beqelse_b313
# B312
	fabs x32, x32
	lw x40, 4(x18)
	lw x40, 0(x40)
	fle x32, x40, x32
	bne	x32, zero, shadow_check_one_or_matrix_beqelse_b319
# B315
	fabs x32, x33
	lw x33, 4(x18)
	lw x33, 1(x33)
	fle x32, x33, x32
	bne	x32, zero, shadow_check_one_or_matrix_beqelse_b319
# B317
	fabs x32, x39
	lw x33, 4(x18)
	lw x33, 2(x33)
	fle x32, x33, x32
	xori x32, x32, 1
	mv x33, x32
# B318
	bne	x33, zero, shadow_check_one_or_matrix_beqelse_b320
shadow_check_one_or_matrix_beqelse_b319:
# B319
	lw x18, 6(x18)
	xori x18, x18, 1
	j shadow_check_one_or_matrix_cont_b329 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b320:
# B320
	lw x18, 6(x18)
	j shadow_check_one_or_matrix_cont_b329 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b313:
# B313
	bne	x40, x21, shadow_check_one_or_matrix_beqelse_b322
# B321
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
	j shadow_check_one_or_matrix_cont_b329 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b322:
# B322
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
	bne	x5, zero, shadow_check_one_or_matrix_beqelse_b324
# B323
	mv x32, x40
	j shadow_check_one_or_matrix_cont_b325 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b324:
# B324
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
shadow_check_one_or_matrix_cont_b325:
# B325
	lw x33, 1(x18)
	bne	x33, x22, shadow_check_one_or_matrix_beqelse_b328
# B326
	fsub x32, x32, x23
shadow_check_one_or_matrix_beqelse_b328:
# B328
	lw x18, 6(x18)
	fle x32, zero, x32
	xori x32, x32, 1
	xor x18, x18, x32
	xori x18, x18, 1
shadow_check_one_or_matrix_cont_b329:
# B329
	bne	x18, zero, shadow_check_one_or_matrix_beqelse_b333
# B330
	addi x34, x34, 1
	j shadow_check_one_or_matrix_loop_b309 # loopback to while entry from B330
shadow_check_one_or_matrix_beqelse_b333:
shadow_check_one_or_matrix_cont_b333:
# B333
	j shadow_check_one_or_matrix_loop_b258 # loopback to while entry from B333
shadow_check_one_or_matrix_beqelse_b289:
# B289
	lw x33, 0(x13)
shadow_check_one_or_matrix_cont_b302:
# B302
	addi x30, x30, 1
shadow_check_one_or_matrix_cont_b305:
# B305
	add x4, x20, x18
	lw x18, 0(x4)
	lw x18, 6(x18)
	beq	x18, zero, shadow_check_one_or_matrix_bneelse_b336
	j	shadow_check_one_or_matrix_loop_b258 # moved need extra jump
shadow_check_one_or_matrix_bneelse_b336:
shadow_check_one_or_matrix_cont_b336:
# B336
	addi x28, x28, 1
	j shadow_check_one_or_matrix_loop_b255 # loopback to while entry from B336
	j shadow_check_one_or_matrix_loop_b258 # loopback to while entry from B305
solve_each_element.3022:
# B430
# B431
	mv x10, x5
	mv x11, x7
	mv x100, x6
solve_each_element_beqelse_b432:
solve_each_element_loop_b432:
# B432
	add x4, x100, x10
	lw x12, 0(x4)
	li x13, 1
	li x14, -1
	bne	x12, x14, solve_each_element_beqelse_b434
# B433
	ret
solve_each_element_beqelse_b434:
# B434
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
	la x23, min_caml_solver_dist
	li x24, 3
	lui x25, 260096
	bne	x22, x13, solve_each_element_beqelse_b436
# B435
	lw x22, 0(x11)
	feq x22, x22, zero
	bne	x22, zero, solve_each_element_beqelse_b447
# B437
	lw x22, 4(x17)
	lw x26, 6(x17)
	lw x27, 0(x11)
	fle x27, zero, x27
	xori x27, x27, 1
	xor x26, x26, x27
	lw x27, 0(x22)
	bne	x26, zero, solve_each_element_beqelse_b440
# B439
	fsub x26, zero, x27
	j solve_each_element_cont_b441 # adhoc jump(2)
solve_each_element_beqelse_b440:
# B440
	mv x26, x27
solve_each_element_cont_b441:
# B441
	fsub x26, x26, x18
	lw x27, 0(x11)
	fdiv x26, x26, x27
	lw x27, 1(x11)
	fmul x27, x26, x27
	fadd x27, x27, x19
	fabs x27, x27
	lw x28, 1(x22)
	fle x27, x28, x27
	bne	x27, zero, solve_each_element_beqelse_b447
# B443
	lw x27, 2(x11)
	fmul x27, x26, x27
	fadd x27, x27, x21
	fabs x27, x27
	lw x22, 2(x22)
	fle x22, x22, x27
	bne	x22, zero, solve_each_element_beqelse_b447
# B445
	sw x26, 0(x23)
	mv x27, x13
# B446
	bne	x27, zero, solve_each_element_beqelse_b448
solve_each_element_beqelse_b447:
# B447
	lw x22, 1(x11)
	feq x22, x22, zero
	bne	x22, zero, solve_each_element_beqelse_b459
# B449
	lw x22, 4(x17)
	lw x26, 6(x17)
	lw x27, 1(x11)
	fle x27, zero, x27
	xori x27, x27, 1
	xor x26, x26, x27
	lw x27, 1(x22)
	bne	x26, zero, solve_each_element_beqelse_b452
# B451
	fsub x26, zero, x27
	j solve_each_element_cont_b453 # adhoc jump(2)
solve_each_element_beqelse_b452:
# B452
	mv x26, x27
solve_each_element_cont_b453:
# B453
	fsub x26, x26, x19
	lw x27, 1(x11)
	fdiv x26, x26, x27
	lw x27, 2(x11)
	fmul x27, x26, x27
	fadd x27, x27, x21
	fabs x27, x27
	lw x28, 2(x22)
	fle x27, x28, x27
	bne	x27, zero, solve_each_element_beqelse_b459
# B455
	lw x27, 0(x11)
	fmul x27, x26, x27
	fadd x27, x27, x18
	fabs x27, x27
	lw x22, 0(x22)
	fle x22, x22, x27
	bne	x22, zero, solve_each_element_beqelse_b459
# B457
	sw x26, 0(x23)
	mv x27, x13
# B458
	bne	x27, zero, solve_each_element_beqelse_b460
solve_each_element_beqelse_b459:
# B459
	lw x22, 2(x11)
	feq x22, x22, zero
	bne	x22, zero, solve_each_element_beqelse_b471
# B461
	lw x22, 4(x17)
	lw x17, 6(x17)
	lw x26, 2(x11)
	fle x26, zero, x26
	xori x26, x26, 1
	xor x17, x17, x26
	lw x26, 2(x22)
	bne	x17, zero, solve_each_element_beqelse_b464
# B463
	fsub x17, zero, x26
	j solve_each_element_cont_b465 # adhoc jump(2)
solve_each_element_beqelse_b464:
# B464
	mv x17, x26
solve_each_element_cont_b465:
# B465
	fsub x17, x17, x21
	lw x21, 2(x11)
	fdiv x17, x17, x21
	lw x21, 0(x11)
	fmul x21, x17, x21
	fadd x18, x21, x18
	fabs x18, x18
	lw x21, 0(x22)
	fle x18, x21, x18
	bne	x18, zero, solve_each_element_beqelse_b471
# B467
	lw x18, 1(x11)
	fmul x18, x17, x18
	fadd x18, x18, x19
	fabs x18, x18
	lw x19, 1(x22)
	fle x18, x19, x18
	bne	x18, zero, solve_each_element_beqelse_b471
# B469
	sw x17, 0(x23)
	mv x19, x13
# B470
	bne	x19, zero, solve_each_element_beqelse_b472
solve_each_element_beqelse_b471:
# B471
	mv x17, zero
	addi x10, x10, 1
	j solve_each_element_cont_b497 # adhoc jump(2)
solve_each_element_beqelse_b472:
# B472
	li x17, 3
	addi x10, x10, 1
	j solve_each_element_cont_b498 # adhoc jump(2)
solve_each_element_beqelse_b460:
# B460
	mv x17, x20
	j solve_each_element_cont_b496 # adhoc jump(2)
solve_each_element_beqelse_b448:
# B448
	mv x17, x13
	j solve_each_element_cont_b496 # adhoc jump(2)
solve_each_element_beqelse_b436:
# B436
	bne	x22, x20, solve_each_element_beqelse_b474
# B473
	lw x17, 4(x17)
	lw x22, 0(x11)
	lw x26, 0(x17)
	fmul x22, x22, x26
	lw x26, 1(x11)
	lw x27, 1(x17)
	fmul x26, x26, x27
	fadd x22, x22, x26
	lw x26, 2(x11)
	lw x27, 2(x17)
	fmul x26, x26, x27
	fadd x22, x22, x26
	fle x26, x22, zero
	beq	x26, zero, solve_each_element_bneelse_b476
# B475
	mv x17, zero
	addi x10, x10, 1
	j solve_each_element_cont_b497 # adhoc jump(2)
solve_each_element_bneelse_b476:
# B476
	lw x26, 0(x17)
	fmul x18, x26, x18
	lw x26, 1(x17)
	fmul x19, x26, x19
	fadd x18, x18, x19
	lw x17, 2(x17)
	fmul x17, x17, x21
	fadd x17, x18, x17
	fsub x17, zero, x17
	fdiv x17, x17, x22
	sw x17, 0(x23)
	mv x17, x13
	j solve_each_element_cont_b496 # adhoc jump(2)
solve_each_element_beqelse_b474:
# B474
	lw x22, 0(x11)
	lw x26, 1(x11)
	lw x27, 2(x11)
	fmul x28, x22, x22
	lw x29, 4(x17)
	lw x29, 0(x29)
	fmul x28, x28, x29
	fmul x29, x26, x26
	lw x30, 4(x17)
	lw x30, 1(x30)
	fmul x29, x29, x30
	fadd x28, x28, x29
	fmul x29, x27, x27
	lw x30, 4(x17)
	lw x30, 2(x30)
	fmul x29, x29, x30
	fadd x28, x28, x29
	lw x29, 3(x17)
	bne	x29, zero, solve_each_element_beqelse_b478
# B477
	mv x22, x28
	j solve_each_element_cont_b479 # adhoc jump(2)
solve_each_element_beqelse_b478:
# B478
	fmul x29, x26, x27
	lw x30, 9(x17)
	lw x30, 0(x30)
	fmul x29, x29, x30
	fadd x28, x28, x29
	fmul x27, x27, x22
	lw x29, 9(x17)
	lw x29, 1(x29)
	fmul x27, x27, x29
	fadd x27, x28, x27
	fmul x22, x22, x26
	lw x26, 9(x17)
	lw x26, 2(x26)
	fmul x22, x22, x26
	fadd x22, x27, x22
solve_each_element_cont_b479:
# B479
	feq x26, x22, zero
	bne	x26, zero, solve_each_element_beqelse_b481
# B480
	lw x26, 0(x11)
	lw x27, 1(x11)
	lw x28, 2(x11)
	fmul x29, x26, x18
	lw x30, 4(x17)
	lw x30, 0(x30)
	fmul x29, x29, x30
	fmul x30, x27, x19
	lw x31, 4(x17)
	lw x31, 1(x31)
	fmul x30, x30, x31
	fadd x29, x29, x30
	fmul x30, x28, x21
	lw x31, 4(x17)
	lw x31, 2(x31)
	fmul x30, x30, x31
	fadd x29, x29, x30
	lw x30, 3(x17)
	bne	x30, zero, solve_each_element_beqelse_b483
# B482
	mv x26, x29
	j solve_each_element_cont_b484 # adhoc jump(2)
solve_each_element_beqelse_b483:
# B483
	fmul x30, x28, x19
	fmul x31, x27, x21
	fadd x30, x30, x31
	lw x31, 9(x17)
	lw x31, 0(x31)
	fmul x30, x30, x31
	fmul x31, x26, x21
	fmul x28, x28, x18
	fadd x28, x31, x28
	lw x31, 9(x17)
	lw x31, 1(x31)
	fmul x28, x28, x31
	fadd x28, x30, x28
	fmul x26, x26, x19
	fmul x27, x27, x18
	fadd x26, x26, x27
	lw x27, 9(x17)
	lw x27, 2(x27)
	fmul x26, x26, x27
	fadd x26, x28, x26
	lui x27, 258048
	fmul x26, x26, x27
	fadd x26, x29, x26
solve_each_element_cont_b484:
# B484
	fmul x27, x18, x18
	lw x28, 4(x17)
	lw x28, 0(x28)
	fmul x27, x27, x28
	fmul x28, x19, x19
	lw x29, 4(x17)
	lw x29, 1(x29)
	fmul x28, x28, x29
	fadd x27, x27, x28
	fmul x28, x21, x21
	lw x29, 4(x17)
	lw x29, 2(x29)
	fmul x28, x28, x29
	fadd x27, x27, x28
	lw x28, 3(x17)
	bne	x28, zero, solve_each_element_beqelse_b486
# B485
	mv x18, x27
	j solve_each_element_cont_b487 # adhoc jump(2)
solve_each_element_beqelse_b486:
# B486
	fmul x28, x19, x21
	lw x29, 9(x17)
	lw x29, 0(x29)
	fmul x28, x28, x29
	fadd x27, x27, x28
	fmul x21, x21, x18
	lw x28, 9(x17)
	lw x28, 1(x28)
	fmul x21, x21, x28
	fadd x21, x27, x21
	fmul x18, x18, x19
	lw x19, 9(x17)
	lw x19, 2(x19)
	fmul x18, x18, x19
	fadd x18, x21, x18
solve_each_element_cont_b487:
# B487
	lw x19, 1(x17)
	bne	x19, x24, solve_each_element_beqelse_b490
# B488
	fsub x18, x18, x25
solve_each_element_beqelse_b490:
# B490
	fmul x19, x26, x26
	fmul x18, x22, x18
	fsub x18, x19, x18
	fle x19, x18, zero
	beq	x19, zero, solve_each_element_bneelse_b492
# B491
	mv x17, zero
	addi x10, x10, 1
	j solve_each_element_cont_b497 # adhoc jump(2)
solve_each_element_bneelse_b492:
# B492
	fsqrt x18, x18
	lw x17, 6(x17)
	bne	x17, zero, solve_each_element_beqelse_b494
# B493
	fsub x17, zero, x18
	j solve_each_element_cont_b495 # adhoc jump(2)
solve_each_element_beqelse_b494:
# B494
	mv x17, x18
solve_each_element_cont_b495:
# B495
	fsub x17, x17, x26
	fdiv x17, x17, x22
	sw x17, 0(x23)
	mv x17, x13
solve_each_element_cont_b496:
# B496
	addi x10, x10, 1
	bne	x17, zero, solve_each_element_beqelse_b498
	j solve_each_element_cont_b497 # adhoc jump(3)
solve_each_element_beqelse_b498:
solve_each_element_cont_b498:
# B498
	lw x18, 0(x23)
	fle x19, x18, zero
	bne	x19, zero, solve_each_element_beqelse_b531
# B502
	la x19, min_caml_tmin
	lw x21, 0(x19)
	fle x21, x21, x18
	bne	x21, zero, solve_each_element_beqelse_b531
# B504
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
	mv x29, x15
	mv x27, x21
	mv x26, x100
	mv x23, zero
	mv x28, x22
solve_each_element_loop_b505:
# B505
	add x4, x26, x23
	lw x30, 0(x4)
	bne	x30, x14, solve_each_element_beqelse_b507
# B506
	mv x31, x13
# B528
	bne	x31, zero, solve_each_element_beqelse_b530
	j solve_each_element_cont_b529 # adhoc jump(3)
solve_each_element_beqelse_b530:
# B530
	sw x18, 0(x19)
	la x13, min_caml_intersection_point
	sw x21, 0(x13)
	sw x22, 1(x13)
	sw x15, 2(x13)
	la x13, min_caml_intersected_object_id
	sw x12, 0(x13)
	la x12, min_caml_intsec_rectside
	sw x17, 0(x12)
	j solve_each_element_cont_b531 # adhoc jump(2)
solve_each_element_beqelse_b507:
# B507
	add x4, x16, x30
	lw x30, 0(x4)
	lw x31, 5(x30)
	lw x31, 0(x31)
	fsub x31, x27, x31
	lw x32, 5(x30)
	lw x32, 1(x32)
	fsub x32, x28, x32
	lw x33, 5(x30)
	lw x33, 2(x33)
	fsub x33, x29, x33
	lw x34, 1(x30)
	bne	x34, x13, solve_each_element_beqelse_b509
# B508
	fabs x31, x31
	lw x34, 4(x30)
	lw x34, 0(x34)
	fle x31, x34, x31
	bne	x31, zero, solve_each_element_beqelse_b515
# B511
	fabs x31, x32
	lw x32, 4(x30)
	lw x32, 1(x32)
	fle x31, x32, x31
	bne	x31, zero, solve_each_element_beqelse_b515
# B513
	fabs x31, x33
	lw x32, 4(x30)
	lw x32, 2(x32)
	fle x31, x32, x31
	xori x31, x31, 1
	mv x32, x31
# B514
	bne	x32, zero, solve_each_element_beqelse_b516
solve_each_element_beqelse_b515:
# B515
	lw x30, 6(x30)
	xori x30, x30, 1
	j solve_each_element_cont_b525 # adhoc jump(2)
solve_each_element_beqelse_b516:
# B516
	lw x30, 6(x30)
	j solve_each_element_cont_b525 # adhoc jump(2)
solve_each_element_beqelse_b509:
# B509
	bne	x34, x20, solve_each_element_beqelse_b518
# B517
	lw x34, 4(x30)
	lw x35, 0(x34)
	fmul x31, x35, x31
	lw x35, 1(x34)
	fmul x32, x35, x32
	fadd x31, x31, x32
	lw x32, 2(x34)
	fmul x32, x32, x33
	fadd x31, x31, x32
	lw x30, 6(x30)
	fle x31, zero, x31
	xori x31, x31, 1
	xor x30, x30, x31
	xori x30, x30, 1
	j solve_each_element_cont_b525 # adhoc jump(2)
solve_each_element_beqelse_b518:
# B518
	fmul x34, x31, x31
	lw x35, 4(x30)
	lw x35, 0(x35)
	fmul x34, x34, x35
	fmul x35, x32, x32
	lw x36, 4(x30)
	lw x36, 1(x36)
	fmul x35, x35, x36
	fadd x34, x34, x35
	fmul x35, x33, x33
	lw x36, 4(x30)
	lw x36, 2(x36)
	fmul x35, x35, x36
	fadd x34, x34, x35
	lw x35, 3(x30)
	bne	x35, zero, solve_each_element_beqelse_b520
# B519
	mv x31, x34
	j solve_each_element_cont_b521 # adhoc jump(2)
solve_each_element_beqelse_b520:
# B520
	fmul x35, x32, x33
	lw x36, 9(x30)
	lw x36, 0(x36)
	fmul x35, x35, x36
	fadd x34, x34, x35
	fmul x33, x33, x31
	lw x35, 9(x30)
	lw x35, 1(x35)
	fmul x33, x33, x35
	fadd x33, x34, x33
	fmul x31, x31, x32
	lw x32, 9(x30)
	lw x32, 2(x32)
	fmul x31, x31, x32
	fadd x31, x33, x31
solve_each_element_cont_b521:
# B521
	lw x32, 1(x30)
	bne	x32, x24, solve_each_element_beqelse_b524
# B522
	fsub x31, x31, x25
solve_each_element_beqelse_b524:
# B524
	lw x30, 6(x30)
	fle x31, zero, x31
	xori x31, x31, 1
	xor x30, x30, x31
	xori x30, x30, 1
solve_each_element_cont_b525:
# B525
	bne	x30, zero, solve_each_element_beqelse_b529
# B526
	addi x23, x23, 1
	j solve_each_element_loop_b505 # loopback to while entry from B526
solve_each_element_beqelse_b529:
solve_each_element_cont_b529:
# B529
solve_each_element_beqelse_b531:
solve_each_element_cont_b531:
# B531
	j solve_each_element_loop_b432 # loopback to while entry from B531
solve_each_element_beqelse_b481:
# B481
	mv x17, zero
	addi x10, x10, 1
solve_each_element_cont_b497:
# B497
	add x4, x16, x12
	lw x12, 0(x4)
	lw x12, 6(x12)
	bne	x12, zero, solve_each_element_beqelse_b432
# B499
	ret
judge_intersection_fast.3048:
# B532
# B533
	la x10, min_caml_tmin
	lui x100, 321255
	addi x100, x100, -1240
	sw x100, 0(x10)
	la x100, min_caml_or_net
	lw x100, 0(x100)
	li x11, 1
	li x12, 99
	la x13, min_caml_solver_dist
	mv x15, x100
	mv x16, x5
	mv x14, zero
judge_intersection_fast_loop_b534:
# B534
	add x4, x15, x14
	lw x100, 0(x4)
	lw x17, 0(x100)
	li x18, -1
	beq	x17, x18, judge_intersection_fast_bneelse_b733
# B536
	la x19, min_caml_and_net
	la x20, min_caml_objects
	li x21, 2
	lui x22, 246333
	addi x22, x22, 1802
	la x23, min_caml_startp_fast
	li x24, 3
	lui x25, 260096
	la x26, min_caml_intersection_point
	la x27, min_caml_intersected_object_id
	la x28, min_caml_intsec_rectside
	bne	x17, x12, judge_intersection_fast_beqelse_b538
# B537
	mv x31, x16
	mv x30, x100
	mv x29, x11
judge_intersection_fast_loop_b539:
# B539
	add x4, x30, x29
	lw x100, 0(x4)
	beq	x100, x18, judge_intersection_fast_bneelse_b732
# B541
	add x4, x19, x100
	lw x100, 0(x4)
	mv x33, x31
	mv x17, zero
	mv x32, x100
judge_intersection_fast_loop_b542:
# B542
	lw x100, 0(x33)
	add x4, x32, x17
	lw x34, 0(x4)
	beq	x34, x18, judge_intersection_fast_bneelse_b615
# B544
	add x4, x20, x34
	lw x35, 0(x4)
	lw x36, 10(x35)
	lw x37, 0(x36)
	lw x38, 1(x36)
	lw x39, 2(x36)
	lw x40, 1(x33)
	add x4, x40, x34
	lw x40, 0(x4)
	lw x5, 1(x35)
	bne	x5, x11, judge_intersection_fast_beqelse_b546
# B545
	lw x36, 0(x33)
	lw x5, 0(x40)
	fsub x5, x5, x37
	lw x6, 1(x40)
	fmul x5, x5, x6
	lw x6, 1(x36)
	fmul x6, x5, x6
	fadd x6, x6, x38
	fabs x6, x6
	lw x65, 4(x35)
	lw x65, 1(x65)
	fle x6, x65, x6
	bne	x6, zero, judge_intersection_fast_beqelse_b552
# B548
	lw x6, 2(x36)
	fmul x6, x5, x6
	fadd x6, x6, x39
	fabs x6, x6
	lw x65, 4(x35)
	lw x65, 2(x65)
	fle x6, x65, x6
	bne	x6, zero, judge_intersection_fast_beqelse_b552
# B550
	lw x6, 1(x40)
	feq x6, x6, zero
	xori x6, x6, 1
	mv x65, x6
# B551
	bne	x65, zero, judge_intersection_fast_beqelse_b553
judge_intersection_fast_beqelse_b552:
# B552
	lw x5, 2(x40)
	fsub x5, x5, x38
	lw x6, 3(x40)
	fmul x5, x5, x6
	lw x6, 0(x36)
	fmul x6, x5, x6
	fadd x6, x6, x37
	fabs x6, x6
	lw x65, 4(x35)
	lw x65, 0(x65)
	fle x6, x65, x6
	bne	x6, zero, judge_intersection_fast_beqelse_b559
# B555
	lw x6, 2(x36)
	fmul x6, x5, x6
	fadd x6, x6, x39
	fabs x6, x6
	lw x65, 4(x35)
	lw x65, 2(x65)
	fle x6, x65, x6
	bne	x6, zero, judge_intersection_fast_beqelse_b559
# B557
	lw x6, 3(x40)
	feq x6, x6, zero
	xori x6, x6, 1
	mv x65, x6
# B558
	bne	x65, zero, judge_intersection_fast_beqelse_b560
judge_intersection_fast_beqelse_b559:
# B559
	lw x5, 4(x40)
	fsub x39, x5, x39
	lw x5, 5(x40)
	fmul x39, x39, x5
	lw x5, 0(x36)
	fmul x5, x39, x5
	fadd x37, x5, x37
	fabs x37, x37
	lw x5, 4(x35)
	lw x5, 0(x5)
	fle x37, x5, x37
	bne	x37, zero, judge_intersection_fast_beqelse_b566
# B562
	lw x36, 1(x36)
	fmul x36, x39, x36
	fadd x36, x36, x38
	fabs x36, x36
	lw x35, 4(x35)
	lw x35, 1(x35)
	fle x35, x35, x36
	bne	x35, zero, judge_intersection_fast_beqelse_b566
# B564
	lw x35, 5(x40)
	feq x35, x35, zero
	xori x35, x35, 1
	mv x36, x35
# B565
	bne	x36, zero, judge_intersection_fast_beqelse_b567
judge_intersection_fast_beqelse_b566:
# B566
	mv x35, zero
	addi x17, x17, 1
	j judge_intersection_fast_cont_b580 # adhoc jump(2)
judge_intersection_fast_beqelse_b567:
# B567
	sw x39, 0(x13)
	li x35, 3
	addi x17, x17, 1
	j judge_intersection_fast_cont_b581 # adhoc jump(2)
judge_intersection_fast_beqelse_b560:
# B560
	sw x5, 0(x13)
	mv x35, x21
	j judge_intersection_fast_cont_b579 # adhoc jump(2)
judge_intersection_fast_beqelse_b553:
# B553
	sw x5, 0(x13)
	mv x35, x11
	j judge_intersection_fast_cont_b579 # adhoc jump(2)
judge_intersection_fast_beqelse_b546:
# B546
	bne	x5, x21, judge_intersection_fast_beqelse_b569
# B568
	lw x35, 0(x40)
	fle x35, zero, x35
	beq	x35, zero, judge_intersection_fast_bneelse_b571
# B570
	mv x35, zero
	addi x17, x17, 1
	j judge_intersection_fast_cont_b580 # adhoc jump(2)
judge_intersection_fast_bneelse_b571:
# B571
	lw x35, 0(x40)
	lw x36, 3(x36)
	fmul x35, x35, x36
	sw x35, 0(x13)
	mv x35, x11
	j judge_intersection_fast_cont_b579 # adhoc jump(2)
judge_intersection_fast_beqelse_b569:
# B569
	lw x5, 0(x40)
	feq x6, x5, zero
	bne	x6, zero, judge_intersection_fast_beqelse_b573
# B572
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
	fle x38, x36, zero
	beq	x38, zero, judge_intersection_fast_bneelse_b575
# B574
	mv x35, zero
	addi x17, x17, 1
	j judge_intersection_fast_cont_b580 # adhoc jump(2)
judge_intersection_fast_bneelse_b575:
# B575
	lw x35, 6(x35)
	fsqrt x36, x36
	bne	x35, zero, judge_intersection_fast_beqelse_b577
# B576
	fsub x35, x37, x36
	lw x36, 4(x40)
	fmul x35, x35, x36
	sw x35, 0(x13)
	j judge_intersection_fast_cont_b578 # adhoc jump(2)
judge_intersection_fast_beqelse_b577:
# B577
	fadd x35, x37, x36
	lw x36, 4(x40)
	fmul x35, x35, x36
	sw x35, 0(x13)
judge_intersection_fast_cont_b578:
# B578
	mv x35, x11
judge_intersection_fast_cont_b579:
# B579
	addi x17, x17, 1
	bne	x35, zero, judge_intersection_fast_beqelse_b581
	j judge_intersection_fast_cont_b580 # adhoc jump(3)
judge_intersection_fast_beqelse_b581:
judge_intersection_fast_cont_b581:
# B581
	lw x36, 0(x13)
	fle x37, x36, zero
	bne	x37, zero, judge_intersection_fast_beqelse_b614
# B585
	lw x37, 0(x10)
	fle x37, x37, x36
	bne	x37, zero, judge_intersection_fast_beqelse_b614
# B587
	fadd x36, x36, x22
	lw x37, 0(x100)
	fmul x37, x37, x36
	lw x38, 0(x23)
	fadd x37, x37, x38
	lw x38, 1(x100)
	fmul x38, x38, x36
	lw x39, 1(x23)
	fadd x38, x38, x39
	lw x100, 2(x100)
	fmul x100, x100, x36
	lw x39, 2(x23)
	fadd x100, x100, x39
	mv x5, x37
	mv x40, x32
	mv x6, x38
	mv x65, x100
	mv x39, zero
judge_intersection_fast_loop_b588:
# B588
	add x4, x40, x39
	lw x66, 0(x4)
	bne	x66, x18, judge_intersection_fast_beqelse_b590
# B589
	mv x67, x11
# B611
	bne	x67, zero, judge_intersection_fast_beqelse_b613
	j judge_intersection_fast_cont_b612 # adhoc jump(3)
judge_intersection_fast_beqelse_b613:
# B613
	sw x36, 0(x10)
	sw x37, 0(x26)
	sw x38, 1(x26)
	sw x100, 2(x26)
	sw x34, 0(x27)
	sw x35, 0(x28)
	j judge_intersection_fast_cont_b614 # adhoc jump(2)
judge_intersection_fast_beqelse_b590:
# B590
	add x4, x20, x66
	lw x66, 0(x4)
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
	bne	x7, x11, judge_intersection_fast_beqelse_b592
# B591
	fabs x67, x67
	lw x7, 4(x66)
	lw x7, 0(x7)
	fle x67, x7, x67
	bne	x67, zero, judge_intersection_fast_beqelse_b598
# B594
	fabs x67, x68
	lw x68, 4(x66)
	lw x68, 1(x68)
	fle x67, x68, x67
	bne	x67, zero, judge_intersection_fast_beqelse_b598
# B596
	fabs x67, x69
	lw x68, 4(x66)
	lw x68, 2(x68)
	fle x67, x68, x67
	xori x67, x67, 1
	mv x68, x67
# B597
	bne	x68, zero, judge_intersection_fast_beqelse_b599
judge_intersection_fast_beqelse_b598:
# B598
	lw x66, 6(x66)
	xori x66, x66, 1
	j judge_intersection_fast_cont_b608 # adhoc jump(2)
judge_intersection_fast_beqelse_b599:
# B599
	lw x66, 6(x66)
	j judge_intersection_fast_cont_b608 # adhoc jump(2)
judge_intersection_fast_beqelse_b592:
# B592
	bne	x7, x21, judge_intersection_fast_beqelse_b601
# B600
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
	j judge_intersection_fast_cont_b608 # adhoc jump(2)
judge_intersection_fast_beqelse_b601:
# B601
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
	bne	x70, zero, judge_intersection_fast_beqelse_b603
# B602
	mv x67, x7
	j judge_intersection_fast_cont_b604 # adhoc jump(2)
judge_intersection_fast_beqelse_b603:
# B603
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
judge_intersection_fast_cont_b604:
# B604
	lw x68, 1(x66)
	bne	x68, x24, judge_intersection_fast_beqelse_b607
# B605
	fsub x67, x67, x25
judge_intersection_fast_beqelse_b607:
# B607
	lw x66, 6(x66)
	fle x67, zero, x67
	xori x67, x67, 1
	xor x66, x66, x67
	xori x66, x66, 1
judge_intersection_fast_cont_b608:
# B608
	bne	x66, zero, judge_intersection_fast_beqelse_b612
# B609
	addi x39, x39, 1
	j judge_intersection_fast_loop_b588 # loopback to while entry from B609
judge_intersection_fast_beqelse_b612:
judge_intersection_fast_cont_b612:
# B612
judge_intersection_fast_beqelse_b614:
judge_intersection_fast_cont_b614:
# B614
	j judge_intersection_fast_loop_b542 # loopback to while entry from B614
judge_intersection_fast_beqelse_b573:
# B573
	mv x35, zero
	addi x17, x17, 1
judge_intersection_fast_cont_b580:
# B580
	add x4, x20, x34
	lw x100, 0(x4)
	lw x100, 6(x100)
	beq	x100, zero, judge_intersection_fast_bneelse_b615
	j	judge_intersection_fast_loop_b542 # moved need extra jump
judge_intersection_fast_bneelse_b615:
# B615
	addi x29, x29, 1
	j judge_intersection_fast_loop_b539 # loopback to while entry from B615
	j judge_intersection_fast_loop_b542 # loopback to while entry from B580
judge_intersection_fast_beqelse_b538:
# B538
	add x4, x20, x17
	lw x29, 0(x4)
	lw x30, 10(x29)
	lw x31, 0(x30)
	lw x32, 1(x30)
	lw x33, 2(x30)
	lw x34, 1(x16)
	add x4, x34, x17
	lw x17, 0(x4)
	lw x34, 1(x29)
	bne	x34, x11, judge_intersection_fast_beqelse_b617
# B616
	lw x30, 0(x16)
	lw x34, 0(x17)
	fsub x34, x34, x31
	lw x35, 1(x17)
	fmul x34, x34, x35
	lw x35, 1(x30)
	fmul x35, x34, x35
	fadd x35, x35, x32
	fabs x35, x35
	lw x36, 4(x29)
	lw x36, 1(x36)
	fle x35, x36, x35
	bne	x35, zero, judge_intersection_fast_beqelse_b623
# B619
	lw x35, 2(x30)
	fmul x35, x34, x35
	fadd x35, x35, x33
	fabs x35, x35
	lw x36, 4(x29)
	lw x36, 2(x36)
	fle x35, x36, x35
	bne	x35, zero, judge_intersection_fast_beqelse_b623
# B621
	lw x35, 1(x17)
	feq x35, x35, zero
	xori x35, x35, 1
	mv x36, x35
# B622
	bne	x36, zero, judge_intersection_fast_beqelse_b624
judge_intersection_fast_beqelse_b623:
# B623
	lw x34, 2(x17)
	fsub x34, x34, x32
	lw x35, 3(x17)
	fmul x34, x34, x35
	lw x35, 0(x30)
	fmul x35, x34, x35
	fadd x35, x35, x31
	fabs x35, x35
	lw x36, 4(x29)
	lw x36, 0(x36)
	fle x35, x36, x35
	bne	x35, zero, judge_intersection_fast_beqelse_b630
# B626
	lw x35, 2(x30)
	fmul x35, x34, x35
	fadd x35, x35, x33
	fabs x35, x35
	lw x36, 4(x29)
	lw x36, 2(x36)
	fle x35, x36, x35
	bne	x35, zero, judge_intersection_fast_beqelse_b630
# B628
	lw x35, 3(x17)
	feq x35, x35, zero
	xori x35, x35, 1
	mv x36, x35
# B629
	bne	x36, zero, judge_intersection_fast_beqelse_b631
judge_intersection_fast_beqelse_b630:
# B630
	lw x34, 4(x17)
	fsub x33, x34, x33
	lw x34, 5(x17)
	fmul x33, x33, x34
	lw x34, 0(x30)
	fmul x34, x33, x34
	fadd x31, x34, x31
	fabs x31, x31
	lw x34, 4(x29)
	lw x34, 0(x34)
	fle x31, x34, x31
	bne	x31, zero, judge_intersection_fast_beqelse_b637
# B633
	lw x30, 1(x30)
	fmul x30, x33, x30
	fadd x30, x30, x32
	fabs x30, x30
	lw x29, 4(x29)
	lw x29, 1(x29)
	fle x29, x29, x30
	bne	x29, zero, judge_intersection_fast_beqelse_b637
# B635
	lw x17, 5(x17)
	feq x17, x17, zero
	xori x17, x17, 1
	mv x29, x17
# B636
	bne	x29, zero, judge_intersection_fast_beqelse_b638
judge_intersection_fast_beqelse_b637:
# B637
	j judge_intersection_fast_cont_b651 # adhoc jump(2)
judge_intersection_fast_beqelse_b638:
# B638
	sw x33, 0(x13)
	mv x17, x24
	j judge_intersection_fast_cont_b650 # adhoc jump(2)
judge_intersection_fast_beqelse_b631:
# B631
	sw x34, 0(x13)
	mv x17, x21
	j judge_intersection_fast_cont_b650 # adhoc jump(2)
judge_intersection_fast_beqelse_b624:
# B624
	sw x34, 0(x13)
	mv x17, x11
	j judge_intersection_fast_cont_b650 # adhoc jump(2)
judge_intersection_fast_beqelse_b617:
# B617
	bne	x34, x21, judge_intersection_fast_beqelse_b640
# B639
	lw x29, 0(x17)
	fle x29, zero, x29
	bne	x29, zero, judge_intersection_fast_beqelse_b651
# B642
	lw x17, 0(x17)
	lw x29, 3(x30)
	fmul x17, x17, x29
	sw x17, 0(x13)
	mv x17, x11
	j judge_intersection_fast_cont_b650 # adhoc jump(2)
judge_intersection_fast_beqelse_b640:
# B640
	lw x34, 0(x17)
	feq x35, x34, zero
	bne	x35, zero, judge_intersection_fast_beqelse_b651
# B643
	lw x35, 1(x17)
	fmul x31, x35, x31
	lw x35, 2(x17)
	fmul x32, x35, x32
	fadd x31, x31, x32
	lw x32, 3(x17)
	fmul x32, x32, x33
	fadd x31, x31, x32
	lw x30, 3(x30)
	fmul x32, x31, x31
	fmul x30, x34, x30
	fsub x30, x32, x30
	fle x32, x30, zero
	bne	x32, zero, judge_intersection_fast_beqelse_b651
# B646
	lw x29, 6(x29)
	fsqrt x30, x30
	bne	x29, zero, judge_intersection_fast_beqelse_b648
# B647
	fsub x29, x31, x30
	lw x17, 4(x17)
	fmul x17, x29, x17
	sw x17, 0(x13)
	j judge_intersection_fast_cont_b649 # adhoc jump(2)
judge_intersection_fast_beqelse_b648:
# B648
	fadd x29, x31, x30
	lw x17, 4(x17)
	fmul x17, x29, x17
	sw x17, 0(x13)
judge_intersection_fast_cont_b649:
# B649
	mv x17, x11
judge_intersection_fast_cont_b650:
# B650
	bne	x17, zero, judge_intersection_fast_beqelse_b652
judge_intersection_fast_beqelse_b651:
judge_intersection_fast_cont_b651:
# B651
	j judge_intersection_fast_cont_b732 # adhoc jump(2)
judge_intersection_fast_beqelse_b652:
# B652
	lw x17, 0(x13)
	lw x29, 0(x10)
	fle x17, x29, x17
	bne	x17, zero, judge_intersection_fast_beqelse_b732
# B654
	mv x31, x16
	mv x30, x100
	mv x29, x11
judge_intersection_fast_loop_b655:
# B655
	add x4, x30, x29
	lw x100, 0(x4)
	beq	x100, x18, judge_intersection_fast_bneelse_b732
# B657
	add x4, x19, x100
	lw x100, 0(x4)
	mv x33, x31
	mv x17, zero
	mv x32, x100
judge_intersection_fast_loop_b658:
# B658
	lw x100, 0(x33)
	add x4, x32, x17
	lw x34, 0(x4)
	beq	x34, x18, judge_intersection_fast_bneelse_b731
# B660
	add x4, x20, x34
	lw x35, 0(x4)
	lw x36, 10(x35)
	lw x37, 0(x36)
	lw x38, 1(x36)
	lw x39, 2(x36)
	lw x40, 1(x33)
	add x4, x40, x34
	lw x40, 0(x4)
	lw x5, 1(x35)
	bne	x5, x11, judge_intersection_fast_beqelse_b662
# B661
	lw x36, 0(x33)
	lw x5, 0(x40)
	fsub x5, x5, x37
	lw x6, 1(x40)
	fmul x5, x5, x6
	lw x6, 1(x36)
	fmul x6, x5, x6
	fadd x6, x6, x38
	fabs x6, x6
	lw x65, 4(x35)
	lw x65, 1(x65)
	fle x6, x65, x6
	bne	x6, zero, judge_intersection_fast_beqelse_b668
# B664
	lw x6, 2(x36)
	fmul x6, x5, x6
	fadd x6, x6, x39
	fabs x6, x6
	lw x65, 4(x35)
	lw x65, 2(x65)
	fle x6, x65, x6
	bne	x6, zero, judge_intersection_fast_beqelse_b668
# B666
	lw x6, 1(x40)
	feq x6, x6, zero
	xori x6, x6, 1
	mv x65, x6
# B667
	bne	x65, zero, judge_intersection_fast_beqelse_b669
judge_intersection_fast_beqelse_b668:
# B668
	lw x5, 2(x40)
	fsub x5, x5, x38
	lw x6, 3(x40)
	fmul x5, x5, x6
	lw x6, 0(x36)
	fmul x6, x5, x6
	fadd x6, x6, x37
	fabs x6, x6
	lw x65, 4(x35)
	lw x65, 0(x65)
	fle x6, x65, x6
	bne	x6, zero, judge_intersection_fast_beqelse_b675
# B671
	lw x6, 2(x36)
	fmul x6, x5, x6
	fadd x6, x6, x39
	fabs x6, x6
	lw x65, 4(x35)
	lw x65, 2(x65)
	fle x6, x65, x6
	bne	x6, zero, judge_intersection_fast_beqelse_b675
# B673
	lw x6, 3(x40)
	feq x6, x6, zero
	xori x6, x6, 1
	mv x65, x6
# B674
	bne	x65, zero, judge_intersection_fast_beqelse_b676
judge_intersection_fast_beqelse_b675:
# B675
	lw x5, 4(x40)
	fsub x39, x5, x39
	lw x5, 5(x40)
	fmul x39, x39, x5
	lw x5, 0(x36)
	fmul x5, x39, x5
	fadd x37, x5, x37
	fabs x37, x37
	lw x5, 4(x35)
	lw x5, 0(x5)
	fle x37, x5, x37
	bne	x37, zero, judge_intersection_fast_beqelse_b682
# B678
	lw x36, 1(x36)
	fmul x36, x39, x36
	fadd x36, x36, x38
	fabs x36, x36
	lw x35, 4(x35)
	lw x35, 1(x35)
	fle x35, x35, x36
	bne	x35, zero, judge_intersection_fast_beqelse_b682
# B680
	lw x35, 5(x40)
	feq x35, x35, zero
	xori x35, x35, 1
	mv x36, x35
# B681
	bne	x36, zero, judge_intersection_fast_beqelse_b683
judge_intersection_fast_beqelse_b682:
# B682
	mv x35, zero
	addi x17, x17, 1
	j judge_intersection_fast_cont_b696 # adhoc jump(2)
judge_intersection_fast_beqelse_b683:
# B683
	sw x39, 0(x13)
	mv x35, x24
	j judge_intersection_fast_cont_b695 # adhoc jump(2)
judge_intersection_fast_beqelse_b676:
# B676
	sw x5, 0(x13)
	mv x35, x21
	j judge_intersection_fast_cont_b695 # adhoc jump(2)
judge_intersection_fast_beqelse_b669:
# B669
	sw x5, 0(x13)
	mv x35, x11
	j judge_intersection_fast_cont_b695 # adhoc jump(2)
judge_intersection_fast_beqelse_b662:
# B662
	bne	x5, x21, judge_intersection_fast_beqelse_b685
# B684
	lw x35, 0(x40)
	fle x35, zero, x35
	beq	x35, zero, judge_intersection_fast_bneelse_b687
# B686
	mv x35, zero
	addi x17, x17, 1
	j judge_intersection_fast_cont_b696 # adhoc jump(2)
judge_intersection_fast_bneelse_b687:
# B687
	lw x35, 0(x40)
	lw x36, 3(x36)
	fmul x35, x35, x36
	sw x35, 0(x13)
	mv x35, x11
	j judge_intersection_fast_cont_b695 # adhoc jump(2)
judge_intersection_fast_beqelse_b685:
# B685
	lw x5, 0(x40)
	feq x6, x5, zero
	bne	x6, zero, judge_intersection_fast_beqelse_b689
# B688
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
	fle x38, x36, zero
	beq	x38, zero, judge_intersection_fast_bneelse_b691
# B690
	mv x35, zero
	addi x17, x17, 1
	j judge_intersection_fast_cont_b696 # adhoc jump(2)
judge_intersection_fast_bneelse_b691:
# B691
	lw x35, 6(x35)
	fsqrt x36, x36
	bne	x35, zero, judge_intersection_fast_beqelse_b693
# B692
	fsub x35, x37, x36
	lw x36, 4(x40)
	fmul x35, x35, x36
	sw x35, 0(x13)
	j judge_intersection_fast_cont_b694 # adhoc jump(2)
judge_intersection_fast_beqelse_b693:
# B693
	fadd x35, x37, x36
	lw x36, 4(x40)
	fmul x35, x35, x36
	sw x35, 0(x13)
judge_intersection_fast_cont_b694:
# B694
	mv x35, x11
judge_intersection_fast_cont_b695:
# B695
	addi x17, x17, 1
	bne	x35, zero, judge_intersection_fast_beqelse_b697
	j judge_intersection_fast_cont_b696 # adhoc jump(3)
judge_intersection_fast_beqelse_b697:
# B697
	lw x36, 0(x13)
	fle x37, x36, zero
	bne	x37, zero, judge_intersection_fast_beqelse_b730
# B701
	lw x37, 0(x10)
	fle x37, x37, x36
	bne	x37, zero, judge_intersection_fast_beqelse_b730
# B703
	fadd x36, x36, x22
	lw x37, 0(x100)
	fmul x37, x37, x36
	lw x38, 0(x23)
	fadd x37, x37, x38
	lw x38, 1(x100)
	fmul x38, x38, x36
	lw x39, 1(x23)
	fadd x38, x38, x39
	lw x100, 2(x100)
	fmul x100, x100, x36
	lw x39, 2(x23)
	fadd x100, x100, x39
	mv x5, x37
	mv x40, x32
	mv x6, x38
	mv x65, x100
	mv x39, zero
judge_intersection_fast_loop_b704:
# B704
	add x4, x40, x39
	lw x66, 0(x4)
	bne	x66, x18, judge_intersection_fast_beqelse_b706
# B705
	mv x67, x11
# B727
	bne	x67, zero, judge_intersection_fast_beqelse_b729
	j judge_intersection_fast_cont_b728 # adhoc jump(3)
judge_intersection_fast_beqelse_b729:
# B729
	sw x36, 0(x10)
	sw x37, 0(x26)
	sw x38, 1(x26)
	sw x100, 2(x26)
	sw x34, 0(x27)
	sw x35, 0(x28)
	j judge_intersection_fast_cont_b730 # adhoc jump(2)
judge_intersection_fast_beqelse_b706:
# B706
	add x4, x20, x66
	lw x66, 0(x4)
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
	bne	x7, x11, judge_intersection_fast_beqelse_b708
# B707
	fabs x67, x67
	lw x7, 4(x66)
	lw x7, 0(x7)
	fle x67, x7, x67
	bne	x67, zero, judge_intersection_fast_beqelse_b714
# B710
	fabs x67, x68
	lw x68, 4(x66)
	lw x68, 1(x68)
	fle x67, x68, x67
	bne	x67, zero, judge_intersection_fast_beqelse_b714
# B712
	fabs x67, x69
	lw x68, 4(x66)
	lw x68, 2(x68)
	fle x67, x68, x67
	xori x67, x67, 1
	mv x68, x67
# B713
	bne	x68, zero, judge_intersection_fast_beqelse_b715
judge_intersection_fast_beqelse_b714:
# B714
	lw x66, 6(x66)
	xori x66, x66, 1
	j judge_intersection_fast_cont_b724 # adhoc jump(2)
judge_intersection_fast_beqelse_b715:
# B715
	lw x66, 6(x66)
	j judge_intersection_fast_cont_b724 # adhoc jump(2)
judge_intersection_fast_beqelse_b708:
# B708
	bne	x7, x21, judge_intersection_fast_beqelse_b717
# B716
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
	j judge_intersection_fast_cont_b724 # adhoc jump(2)
judge_intersection_fast_beqelse_b717:
# B717
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
	bne	x70, zero, judge_intersection_fast_beqelse_b719
# B718
	mv x67, x7
	j judge_intersection_fast_cont_b720 # adhoc jump(2)
judge_intersection_fast_beqelse_b719:
# B719
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
judge_intersection_fast_cont_b720:
# B720
	lw x68, 1(x66)
	bne	x68, x24, judge_intersection_fast_beqelse_b723
# B721
	fsub x67, x67, x25
judge_intersection_fast_beqelse_b723:
# B723
	lw x66, 6(x66)
	fle x67, zero, x67
	xori x67, x67, 1
	xor x66, x66, x67
	xori x66, x66, 1
judge_intersection_fast_cont_b724:
# B724
	bne	x66, zero, judge_intersection_fast_beqelse_b728
# B725
	addi x39, x39, 1
	j judge_intersection_fast_loop_b704 # loopback to while entry from B725
judge_intersection_fast_beqelse_b728:
judge_intersection_fast_cont_b728:
# B728
judge_intersection_fast_beqelse_b730:
judge_intersection_fast_cont_b730:
# B730
	j judge_intersection_fast_loop_b658 # loopback to while entry from B730
judge_intersection_fast_beqelse_b689:
# B689
	mv x35, zero
	addi x17, x17, 1
judge_intersection_fast_cont_b696:
# B696
	add x4, x20, x34
	lw x100, 0(x4)
	lw x100, 6(x100)
	beq	x100, zero, judge_intersection_fast_bneelse_b731
	j	judge_intersection_fast_loop_b658 # moved need extra jump
judge_intersection_fast_bneelse_b731:
# B731
	addi x29, x29, 1
	j judge_intersection_fast_loop_b655 # loopback to while entry from B731
	j judge_intersection_fast_loop_b658 # loopback to while entry from B696
judge_intersection_fast_beqelse_b732:
judge_intersection_fast_bneelse_b732:
judge_intersection_fast_cont_b732:
# B732
	addi x14, x14, 1
	j judge_intersection_fast_loop_b534 # loopback to while entry from B732
judge_intersection_fast_bneelse_b733:
# B733
	lw x10, 0(x10)
	lui x100, 777421
	addi x100, x100, -819
	fle x100, x10, x100
	beq	x100, zero, judge_intersection_fast_bneelse_b735
# B734
	mv x5, zero
	ret
judge_intersection_fast_bneelse_b735:
# B735
	lui x100, 314348
	addi x100, x100, -992
	fle x10, x100, x10
	xori x5, x10, 1
	ret
utexture.3059:
# B736
# B737
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
	bne	x10, x11, utexture_beqelse_b739
# B738
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
	bne	x10, zero, utexture_beqelse_b741
# B740
	bne	x11, zero, utexture_beqelse_b743
# B742
	lui x10, 276464
	j utexture_cont_b746 # adhoc jump(2)
utexture_beqelse_b743:
# B743
	mv x10, zero
	j utexture_cont_b746 # adhoc jump(2)
utexture_beqelse_b741:
# B741
	bne	x11, zero, utexture_beqelse_b745
# B744
	mv x10, zero
	j utexture_cont_b746 # adhoc jump(2)
utexture_beqelse_b745:
# B745
	lui x10, 276464
utexture_cont_b746:
# B746
	sw x10, 1(x100)
	ret
utexture_beqelse_b739:
# B739
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
	bne	x10, x12, utexture_beqelse_b748
# B747
	lw x10, 1(x6)
	lui x11, 256000
	fmul x10, x10, x11
	fle x11, x10, zero
	xori x11, x11, 1
	fabs x10, x10
	mv x12, x10
	mv x13, x14
utexture_loop_b749:
# B749
	fle x27, x12, x13
	bne	x27, zero, utexture_beqelse_b752
# B750
	fmul x13, x13, x15
	j utexture_loop_b749 # loopback to while entry from B750
utexture_beqelse_b752:
# B752
	mv x28, x10
	mv x29, x13
utexture_loop_b753:
# B753
	fle x10, x14, x28
	beq	x10, zero, utexture_bneelse_b758
# B755
	fle x10, x28, x29
	fdiv x12, x29, x15
	bne	x10, zero, utexture_beqelse_b757
# B756
	fsub x28, x28, x29
	mv x29, x12
	j utexture_loop_b753 # loopback to while entry from B756
utexture_beqelse_b757:
# B757
	mv x29, x12
	j utexture_loop_b753 # loopback to while entry from B757
utexture_bneelse_b758:
# B758
	fle x10, x16, x28
	bne	x10, zero, utexture_beqelse_b760
# B759
	mv x12, x28
	j utexture_cont_b761 # adhoc jump(2)
utexture_beqelse_b760:
# B760
	fsub x12, x28, x16
utexture_cont_b761:
# B761
	xor x10, x10, x11
	fle x11, x17, x12
	bne	x11, zero, utexture_beqelse_b763
# B762
	mv x11, x12
	j utexture_cont_b764 # adhoc jump(2)
utexture_beqelse_b763:
# B763
	fsub x11, x16, x12
utexture_cont_b764:
# B764
	fle x12, x18, x11
	bne	x12, zero, utexture_beqelse_b766
# B765
	fmul x12, x11, x11
	fmul x13, x12, x22
	fadd x13, x21, x13
	fmul x13, x12, x13
	fadd x13, x20, x13
	fmul x12, x12, x13
	fadd x12, x19, x12
	fmul x11, x11, x12
	j utexture_cont_b767 # adhoc jump(2)
utexture_beqelse_b766:
# B766
	fsub x11, x17, x11
	fmul x11, x11, x11
	fmul x12, x11, x25
	fadd x12, x24, x12
	fmul x12, x11, x12
	fadd x12, x23, x12
	fmul x11, x11, x12
	fadd x11, x19, x11
utexture_cont_b767:
# B767
	fle x12, x11, zero
	beq	x10, x12, utexture_bneelse_b769
# B768
	mv x10, x11
	j utexture_cont_b770 # adhoc jump(2)
utexture_bneelse_b769:
# B769
	fsub x10, zero, x11
utexture_cont_b770:
# B770
	fmul x10, x10, x10
	fmul x11, x26, x10
	sw x11, 0(x100)
	fsub x10, x19, x10
	fmul x10, x26, x10
	sw x10, 1(x100)
	ret
utexture_beqelse_b748:
# B748
	li x12, 3
	lui x27, 263313
	addi x27, x27, -37
	bne	x10, x12, utexture_beqelse_b772
# B771
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
utexture_loop_b773:
# B773
	fle x27, x12, x13
	bne	x27, zero, utexture_beqelse_b776
# B774
	fmul x13, x13, x15
	j utexture_loop_b773 # loopback to while entry from B774
utexture_beqelse_b776:
# B776
	mv x28, x10
	mv x29, x13
utexture_loop_b777:
# B777
	fle x10, x14, x28
	beq	x10, zero, utexture_bneelse_b782
# B779
	fle x10, x28, x29
	fdiv x12, x29, x15
	bne	x10, zero, utexture_beqelse_b781
# B780
	fsub x28, x28, x29
	mv x29, x12
	j utexture_loop_b777 # loopback to while entry from B780
utexture_beqelse_b781:
# B781
	mv x29, x12
	j utexture_loop_b777 # loopback to while entry from B781
utexture_bneelse_b782:
# B782
	fle x10, x16, x28
	bne	x10, zero, utexture_beqelse_b784
# B783
	mv x12, x28
	j utexture_cont_b785 # adhoc jump(2)
utexture_beqelse_b784:
# B784
	fsub x12, x28, x16
utexture_cont_b785:
# B785
	bne	x10, zero, utexture_beqelse_b787
# B786
	mv x13, x11
	j utexture_cont_b788 # adhoc jump(2)
utexture_beqelse_b787:
# B787
	mv x13, zero
utexture_cont_b788:
# B788
	fle x10, x17, x12
	bne	x10, zero, utexture_beqelse_b790
# B789
	mv x11, x12
	j utexture_cont_b791 # adhoc jump(2)
utexture_beqelse_b790:
# B790
	fsub x11, x16, x12
utexture_cont_b791:
# B791
	xor x10, x10, x13
	fle x12, x18, x11
	bne	x12, zero, utexture_beqelse_b793
# B792
	fmul x11, x11, x11
	fmul x12, x11, x25
	fadd x12, x24, x12
	fmul x12, x11, x12
	fadd x12, x23, x12
	fmul x11, x11, x12
	fadd x11, x19, x11
	j utexture_cont_b794 # adhoc jump(2)
utexture_beqelse_b793:
# B793
	fsub x11, x17, x11
	fmul x12, x11, x11
	fmul x13, x12, x22
	fadd x13, x21, x13
	fmul x13, x12, x13
	fadd x13, x20, x13
	fmul x12, x12, x13
	fadd x12, x19, x12
	fmul x11, x11, x12
utexture_cont_b794:
# B794
	fle x12, x11, zero
	beq	x10, x12, utexture_bneelse_b796
# B795
	mv x10, x11
	j utexture_cont_b797 # adhoc jump(2)
utexture_bneelse_b796:
# B796
	fsub x10, zero, x11
utexture_cont_b797:
# B797
	fmul x10, x10, x10
	fmul x11, x10, x26
	sw x11, 1(x100)
	fsub x10, x19, x10
	fmul x10, x10, x26
	sw x10, 2(x100)
	ret
utexture_beqelse_b772:
# B772
	li x11, 4
	bne	x10, x11, utexture_beqelse_b799
# B798
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
	beq	x13, zero, utexture_bneelse_b801
# B800
	fdiv x10, x11, x10
	fabs x10, x10
	fle x11, x10, zero
	xori x11, x11, 1
	fabs x13, x10
	fle x29, x15, x13
	bne	x29, zero, utexture_beqelse_b803
# B802
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
	j utexture_cont_b809 # adhoc jump(2)
utexture_beqelse_b803:
# B803
	fle x10, x25, x13
	bne	x10, zero, utexture_beqelse_b805
# B804
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
	j utexture_cont_b806 # adhoc jump(2)
utexture_beqelse_b805:
# B805
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
utexture_cont_b806:
# B806
	bne	x11, zero, utexture_beqelse_b809
# B807
	fsub x10, zero, x10
utexture_beqelse_b809:
utexture_cont_b809:
# B809
	fmul x10, x10, x28
	fdiv x10, x10, x27
	j utexture_cont_b810 # adhoc jump(2)
utexture_bneelse_b801:
# B801
	lui x10, 268032
utexture_cont_b810:
# B810
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
	beq	x13, zero, utexture_bneelse_b812
# B811
	fdiv x11, x11, x12
	fabs x11, x11
	fle x12, x11, zero
	xori x12, x12, 1
	fabs x13, x11
	fle x14, x15, x13
	bne	x14, zero, utexture_beqelse_b814
# B813
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
	j utexture_cont_b820 # adhoc jump(2)
utexture_beqelse_b814:
# B814
	fle x11, x25, x13
	bne	x11, zero, utexture_beqelse_b816
# B815
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
	j utexture_cont_b817 # adhoc jump(2)
utexture_beqelse_b816:
# B816
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
utexture_cont_b817:
# B817
	bne	x12, zero, utexture_beqelse_b820
# B818
	fsub x11, zero, x11
utexture_beqelse_b820:
utexture_cont_b820:
# B820
	fmul x11, x11, x28
	fdiv x11, x11, x27
	j utexture_cont_b821 # adhoc jump(2)
utexture_bneelse_b812:
# B812
	lui x11, 268032
utexture_cont_b821:
# B821
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
	beq	x11, zero, utexture_bneelse_b823
# B822
	mv x12, x10
	j utexture_cont_b824 # adhoc jump(2)
utexture_bneelse_b823:
# B823
	mv x12, zero
utexture_cont_b824:
# B824
	fmul x10, x26, x12
	lui x11, 256410
	addi x11, x11, -1638
	fdiv x10, x10, x11
	sw x10, 2(x100)
	ret
utexture_beqelse_b799:
# B799
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
body_trace_ray.3071:
# B825
# B826
	mv x103, x6
	mv x105, x66
	mv x104, x7
	mv x101, x5
	mv x102, x65
trace_ray_loop_b827:
# B827
	li x106, 4
	bgt	x101, x106, trace_ray_bleelse_b829
# B828
	lw x107, 2(x104)
	la x108, min_caml_tmin
	lui x109, 321255
	addi x109, x109, -1240
	sw x109, 0(x108)
	la x110, min_caml_or_net
	lw x10, 0(x110)
	li x111, 1
	li x112, 99
	la x113, min_caml_startp
	la x114, min_caml_solver_dist
	mv x116, x10
	mv x115, zero
	mv x117, x103
trace_ray_loop_b830:
# B830
	add x4, x116, x115
	lw x10, 0(x4)
	lw x100, 0(x10)
	li x118, -1
	la x119, min_caml_and_net
	la x11, min_caml_objects
	li x12, 2
	lui x13, 258048
	li x14, 3
	lui x15, 260096
	beq	x100, x118, trace_ray_bneelse_b908
# B832
	bne	x100, x112, trace_ray_beqelse_b834
# B833
	mv x122, x117
	mv x121, x10
	mv x120, x111
trace_ray_loop_b835:
# B835
	add x4, x121, x120
	lw x10, 0(x4)
	beq	x10, x118, trace_ray_bneelse_b907
# B837
	add x4, x119, x10
	lw x6, 0(x4)
	mv x7, x122
	mv x5, zero
	addi	x2, x2, 24
	jal	solve_each_element.3022
	addi	x2, x2, -24
	addi x120, x120, 1
	j trace_ray_loop_b835 # loopback to while entry from B837
trace_ray_beqelse_b834:
# B834
	add x4, x11, x100
	lw x100, 0(x4)
	lw x11, 0(x113)
	lw x16, 5(x100)
	lw x16, 0(x16)
	fsub x11, x11, x16
	lw x16, 1(x113)
	lw x17, 5(x100)
	lw x17, 1(x17)
	fsub x16, x16, x17
	lw x17, 2(x113)
	lw x18, 5(x100)
	lw x18, 2(x18)
	fsub x17, x17, x18
	lw x18, 1(x100)
	bne	x18, x111, trace_ray_beqelse_b839
# B838
	lw x13, 0(x117)
	feq x13, x13, zero
	bne	x13, zero, trace_ray_beqelse_b850
# B840
	lw x13, 4(x100)
	lw x14, 6(x100)
	lw x15, 0(x117)
	fle x15, zero, x15
	xori x15, x15, 1
	xor x14, x14, x15
	lw x15, 0(x13)
	bne	x14, zero, trace_ray_beqelse_b843
# B842
	fsub x14, zero, x15
	j trace_ray_cont_b844 # adhoc jump(2)
trace_ray_beqelse_b843:
# B843
	mv x14, x15
trace_ray_cont_b844:
# B844
	fsub x14, x14, x11
	lw x15, 0(x117)
	fdiv x14, x14, x15
	lw x15, 1(x117)
	fmul x15, x14, x15
	fadd x15, x15, x16
	fabs x15, x15
	lw x18, 1(x13)
	fle x15, x18, x15
	bne	x15, zero, trace_ray_beqelse_b850
# B846
	lw x15, 2(x117)
	fmul x15, x14, x15
	fadd x15, x15, x17
	fabs x15, x15
	lw x13, 2(x13)
	fle x13, x13, x15
	bne	x13, zero, trace_ray_beqelse_b850
# B848
	sw x14, 0(x114)
	mv x15, x111
# B849
	bne	x15, zero, trace_ray_beqelse_b851
trace_ray_beqelse_b850:
# B850
	lw x13, 1(x117)
	feq x13, x13, zero
	bne	x13, zero, trace_ray_beqelse_b862
# B852
	lw x13, 4(x100)
	lw x14, 6(x100)
	lw x15, 1(x117)
	fle x15, zero, x15
	xori x15, x15, 1
	xor x14, x14, x15
	lw x15, 1(x13)
	bne	x14, zero, trace_ray_beqelse_b855
# B854
	fsub x14, zero, x15
	j trace_ray_cont_b856 # adhoc jump(2)
trace_ray_beqelse_b855:
# B855
	mv x14, x15
trace_ray_cont_b856:
# B856
	fsub x14, x14, x16
	lw x15, 1(x117)
	fdiv x14, x14, x15
	lw x15, 2(x117)
	fmul x15, x14, x15
	fadd x15, x15, x17
	fabs x15, x15
	lw x18, 2(x13)
	fle x15, x18, x15
	bne	x15, zero, trace_ray_beqelse_b862
# B858
	lw x15, 0(x117)
	fmul x15, x14, x15
	fadd x15, x15, x11
	fabs x15, x15
	lw x13, 0(x13)
	fle x13, x13, x15
	bne	x13, zero, trace_ray_beqelse_b862
# B860
	sw x14, 0(x114)
	mv x15, x111
# B861
	bne	x15, zero, trace_ray_beqelse_b863
trace_ray_beqelse_b862:
# B862
	lw x12, 2(x117)
	feq x12, x12, zero
	bne	x12, zero, trace_ray_beqelse_b874
# B864
	lw x12, 4(x100)
	lw x100, 6(x100)
	lw x13, 2(x117)
	fle x13, zero, x13
	xori x13, x13, 1
	xor x100, x100, x13
	lw x13, 2(x12)
	bne	x100, zero, trace_ray_beqelse_b867
# B866
	fsub x100, zero, x13
	j trace_ray_cont_b868 # adhoc jump(2)
trace_ray_beqelse_b867:
# B867
	mv x100, x13
trace_ray_cont_b868:
# B868
	fsub x100, x100, x17
	lw x13, 2(x117)
	fdiv x100, x100, x13
	lw x13, 0(x117)
	fmul x13, x100, x13
	fadd x11, x13, x11
	fabs x11, x11
	lw x13, 0(x12)
	fle x11, x13, x11
	bne	x11, zero, trace_ray_beqelse_b874
# B870
	lw x11, 1(x117)
	fmul x11, x100, x11
	fadd x11, x11, x16
	fabs x11, x11
	lw x12, 1(x12)
	fle x11, x12, x11
	bne	x11, zero, trace_ray_beqelse_b874
# B872
	sw x100, 0(x114)
	mv x12, x111
# B873
	bne	x12, zero, trace_ray_beqelse_b901
trace_ray_beqelse_b874:
# B874
	j trace_ray_cont_b900 # adhoc jump(2)
trace_ray_beqelse_b863:
# B863
	mv x100, x12
	j trace_ray_cont_b899 # adhoc jump(2)
trace_ray_beqelse_b851:
# B851
	mv x100, x111
	j trace_ray_cont_b899 # adhoc jump(2)
trace_ray_beqelse_b839:
# B839
	bne	x18, x12, trace_ray_beqelse_b877
# B876
	lw x100, 4(x100)
	lw x12, 0(x117)
	lw x13, 0(x100)
	fmul x12, x12, x13
	lw x13, 1(x117)
	lw x14, 1(x100)
	fmul x13, x13, x14
	fadd x12, x12, x13
	lw x13, 2(x117)
	lw x14, 2(x100)
	fmul x13, x13, x14
	fadd x12, x12, x13
	fle x13, x12, zero
	bne	x13, zero, trace_ray_beqelse_b900
# B879
	lw x13, 0(x100)
	fmul x11, x13, x11
	lw x13, 1(x100)
	fmul x13, x13, x16
	fadd x11, x11, x13
	lw x100, 2(x100)
	fmul x100, x100, x17
	fadd x100, x11, x100
	fsub x100, zero, x100
	fdiv x100, x100, x12
	sw x100, 0(x114)
	mv x100, x111
	j trace_ray_cont_b899 # adhoc jump(2)
trace_ray_beqelse_b877:
# B877
	lw x12, 0(x117)
	lw x18, 1(x117)
	lw x19, 2(x117)
	fmul x20, x12, x12
	lw x21, 4(x100)
	lw x21, 0(x21)
	fmul x20, x20, x21
	fmul x21, x18, x18
	lw x22, 4(x100)
	lw x22, 1(x22)
	fmul x21, x21, x22
	fadd x20, x20, x21
	fmul x21, x19, x19
	lw x22, 4(x100)
	lw x22, 2(x22)
	fmul x21, x21, x22
	fadd x20, x20, x21
	lw x21, 3(x100)
	bne	x21, zero, trace_ray_beqelse_b881
# B880
	mv x12, x20
	j trace_ray_cont_b882 # adhoc jump(2)
trace_ray_beqelse_b881:
# B881
	fmul x21, x18, x19
	lw x22, 9(x100)
	lw x22, 0(x22)
	fmul x21, x21, x22
	fadd x20, x20, x21
	fmul x19, x19, x12
	lw x21, 9(x100)
	lw x21, 1(x21)
	fmul x19, x19, x21
	fadd x19, x20, x19
	fmul x12, x12, x18
	lw x18, 9(x100)
	lw x18, 2(x18)
	fmul x12, x12, x18
	fadd x12, x19, x12
trace_ray_cont_b882:
# B882
	feq x18, x12, zero
	bne	x18, zero, trace_ray_beqelse_b900
# B883
	lw x18, 0(x117)
	lw x19, 1(x117)
	lw x20, 2(x117)
	fmul x21, x18, x11
	lw x22, 4(x100)
	lw x22, 0(x22)
	fmul x21, x21, x22
	fmul x22, x19, x16
	lw x23, 4(x100)
	lw x23, 1(x23)
	fmul x22, x22, x23
	fadd x21, x21, x22
	fmul x22, x20, x17
	lw x23, 4(x100)
	lw x23, 2(x23)
	fmul x22, x22, x23
	fadd x21, x21, x22
	lw x22, 3(x100)
	bne	x22, zero, trace_ray_beqelse_b886
# B885
	mv x13, x21
	j trace_ray_cont_b887 # adhoc jump(2)
trace_ray_beqelse_b886:
# B886
	fmul x22, x20, x16
	fmul x23, x19, x17
	fadd x22, x22, x23
	lw x23, 9(x100)
	lw x23, 0(x23)
	fmul x22, x22, x23
	fmul x23, x18, x17
	fmul x20, x20, x11
	fadd x20, x23, x20
	lw x23, 9(x100)
	lw x23, 1(x23)
	fmul x20, x20, x23
	fadd x20, x22, x20
	fmul x18, x18, x16
	fmul x19, x19, x11
	fadd x18, x18, x19
	lw x19, 9(x100)
	lw x19, 2(x19)
	fmul x18, x18, x19
	fadd x18, x20, x18
	fmul x13, x18, x13
	fadd x13, x21, x13
trace_ray_cont_b887:
# B887
	fmul x18, x11, x11
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
	bne	x19, zero, trace_ray_beqelse_b889
# B888
	mv x11, x18
	j trace_ray_cont_b890 # adhoc jump(2)
trace_ray_beqelse_b889:
# B889
	fmul x19, x16, x17
	lw x20, 9(x100)
	lw x20, 0(x20)
	fmul x19, x19, x20
	fadd x18, x18, x19
	fmul x17, x17, x11
	lw x19, 9(x100)
	lw x19, 1(x19)
	fmul x17, x17, x19
	fadd x17, x18, x17
	fmul x11, x11, x16
	lw x16, 9(x100)
	lw x16, 2(x16)
	fmul x11, x11, x16
	fadd x11, x17, x11
trace_ray_cont_b890:
# B890
	lw x16, 1(x100)
	bne	x16, x14, trace_ray_beqelse_b893
# B891
	fsub x11, x11, x15
trace_ray_beqelse_b893:
# B893
	fmul x14, x13, x13
	fmul x11, x12, x11
	fsub x11, x14, x11
	fle x14, x11, zero
	bne	x14, zero, trace_ray_beqelse_b900
# B895
	fsqrt x11, x11
	lw x100, 6(x100)
	bne	x100, zero, trace_ray_beqelse_b897
# B896
	fsub x100, zero, x11
	j trace_ray_cont_b898 # adhoc jump(2)
trace_ray_beqelse_b897:
# B897
	mv x100, x11
trace_ray_cont_b898:
# B898
	fsub x100, x100, x13
	fdiv x100, x100, x12
	sw x100, 0(x114)
	mv x100, x111
trace_ray_cont_b899:
# B899
	bne	x100, zero, trace_ray_beqelse_b901
trace_ray_beqelse_b900:
trace_ray_cont_b900:
# B900
	j trace_ray_cont_b907 # adhoc jump(2)
trace_ray_beqelse_b901:
# B901
	lw x100, 0(x114)
	lw x11, 0(x108)
	fle x100, x11, x100
	bne	x100, zero, trace_ray_beqelse_b907
# B903
	mv x122, x117
	mv x121, x10
	mv x120, x111
trace_ray_loop_b904:
# B904
	add x4, x121, x120
	lw x10, 0(x4)
	beq	x10, x118, trace_ray_bneelse_b907
# B906
	add x4, x119, x10
	lw x6, 0(x4)
	mv x7, x122
	mv x5, zero
	addi	x2, x2, 24
	jal	solve_each_element.3022
	addi	x2, x2, -24
	addi x120, x120, 1
	j trace_ray_loop_b904 # loopback to while entry from B906
trace_ray_beqelse_b907:
trace_ray_bneelse_b907:
trace_ray_cont_b907:
# B907
	addi x115, x115, 1
	j trace_ray_loop_b830 # loopback to while entry from B907
trace_ray_bneelse_b908:
# B908
	lw x10, 0(x108)
	lui x100, 777421
	addi x100, x100, -819
	fle x16, x10, x100
	lui x17, 314348
	addi x17, x17, -992
	beq	x16, zero, trace_ray_bneelse_b910
# B909
	la x16, min_caml_light
	la x18, min_caml_rgb
	j trace_ray_cont_b912 # adhoc jump(2)
trace_ray_bneelse_b910:
# B910
	fle x10, x17, x10
	xori x10, x10, 1
# B911
	la x16, min_caml_light
	la x18, min_caml_rgb
	bne	x10, zero, trace_ray_beqelse_b913
trace_ray_cont_b912:
# B912
	add x4, x107, x101
	sw x118, 0(x4)
	bne	x101, zero, trace_ray_beqelse_b915
# B914
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
	ret
trace_ray_beqelse_b915:
# B915
	lw x10, 0(x103)
	lw x100, 0(x16)
	fmul x10, x10, x100
	lw x100, 1(x103)
	lw x11, 1(x16)
	fmul x100, x100, x11
	fadd x10, x10, x100
	lw x100, 2(x103)
	lw x11, 2(x16)
	fmul x100, x100, x11
	fadd x10, x10, x100
	fsub x10, zero, x10
	fle x100, x10, zero
	beq	x100, zero, trace_ray_bneelse_b917
# B916
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
	ret
trace_ray_bneelse_b917:
# B917
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
	add x4, x18, x12
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
	ret
trace_ray_beqelse_b913:
# B913
	la x10, min_caml_intersected_object_id
	lw x19, 0(x10)
	add x4, x11, x19
	lw x20, 0(x4)
	lw x21, 2(x20)
	lw x22, 7(x20)
	lw x22, 0(x22)
	fmul x22, x22, x102
	lw x23, 1(x20)
	la x24, min_caml_intsec_rectside
	la x25, min_caml_nvector
	la x26, min_caml_intersection_point
	bne	x23, x111, trace_ray_beqelse_b919
# B918
	lw x23, 0(x24)
	sw zero, 0(x25)
	sw zero, 1(x25)
	sw zero, 2(x25)
	addi x23, x23, -1
	add x4, x103, x23
	lw x27, 0(x4)
	feq x28, x27, zero
	bne	x28, zero, trace_ray_beqelse_b921
# B920
	fle x27, x27, zero
	beq	x27, zero, trace_ray_bneelse_b923
# B922
	lui x27, 784384
	j trace_ray_cont_b924 # adhoc jump(2)
trace_ray_bneelse_b923:
# B923
	mv x27, x15
	j trace_ray_cont_b924 # adhoc jump(2)
trace_ray_beqelse_b921:
# B921
	mv x27, zero
trace_ray_cont_b924:
# B924
	fsub x27, zero, x27
	add x4, x25, x23
	sw x27, 0(x4)
	j trace_ray_cont_b935 # adhoc jump(2)
trace_ray_beqelse_b919:
# B919
	bne	x23, x12, trace_ray_beqelse_b926
# B925
	lw x23, 4(x20)
	lw x23, 0(x23)
	fsub x23, zero, x23
	sw x23, 0(x25)
	lw x23, 4(x20)
	lw x23, 1(x23)
	fsub x23, zero, x23
	sw x23, 1(x25)
	lw x23, 4(x20)
	lw x23, 2(x23)
	fsub x23, zero, x23
	sw x23, 2(x25)
	j trace_ray_cont_b935 # adhoc jump(2)
trace_ray_beqelse_b926:
# B926
	lw x23, 0(x26)
	lw x27, 5(x20)
	lw x27, 0(x27)
	fsub x23, x23, x27
	lw x27, 1(x26)
	lw x28, 5(x20)
	lw x28, 1(x28)
	fsub x27, x27, x28
	lw x28, 2(x26)
	lw x29, 5(x20)
	lw x29, 2(x29)
	fsub x28, x28, x29
	lw x29, 4(x20)
	lw x29, 0(x29)
	fmul x29, x23, x29
	lw x30, 4(x20)
	lw x30, 1(x30)
	fmul x30, x27, x30
	lw x31, 4(x20)
	lw x31, 2(x31)
	fmul x31, x28, x31
	lw x32, 3(x20)
	bne	x32, zero, trace_ray_beqelse_b928
# B927
	sw x29, 0(x25)
	sw x30, 1(x25)
	sw x31, 2(x25)
	j trace_ray_cont_b929 # adhoc jump(2)
trace_ray_beqelse_b928:
# B928
	lw x32, 9(x20)
	lw x32, 2(x32)
	fmul x32, x27, x32
	lw x33, 9(x20)
	lw x33, 1(x33)
	fmul x33, x28, x33
	fadd x32, x32, x33
	fmul x32, x32, x13
	fadd x29, x29, x32
	sw x29, 0(x25)
	lw x29, 9(x20)
	lw x29, 2(x29)
	fmul x29, x23, x29
	lw x32, 9(x20)
	lw x32, 0(x32)
	fmul x28, x28, x32
	fadd x28, x29, x28
	fmul x28, x28, x13
	fadd x28, x30, x28
	sw x28, 1(x25)
	lw x28, 9(x20)
	lw x28, 1(x28)
	fmul x23, x23, x28
	lw x28, 9(x20)
	lw x28, 0(x28)
	fmul x27, x27, x28
	fadd x23, x23, x27
	fmul x23, x23, x13
	fadd x23, x31, x23
	sw x23, 2(x25)
trace_ray_cont_b929:
# B929
	lw x23, 6(x20)
	lw x27, 0(x25)
	fmul x27, x27, x27
	lw x28, 1(x25)
	fmul x28, x28, x28
	fadd x27, x27, x28
	lw x28, 2(x25)
	fmul x28, x28, x28
	fadd x27, x27, x28
	fsqrt x27, x27
	feq x28, x27, zero
	bne	x28, zero, trace_ray_beqelse_b931
# B930
	bne	x23, zero, trace_ray_beqelse_b933
# B932
	fdiv x23, x15, x27
	j trace_ray_cont_b934 # adhoc jump(2)
trace_ray_beqelse_b933:
# B933
	lui x23, 784384
	fdiv x23, x23, x27
	j trace_ray_cont_b934 # adhoc jump(2)
trace_ray_beqelse_b931:
# B931
	mv x23, x15
trace_ray_cont_b934:
# B934
	lw x27, 0(x25)
	fmul x27, x27, x23
	sw x27, 0(x25)
	lw x27, 1(x25)
	fmul x27, x27, x23
	sw x27, 1(x25)
	lw x27, 2(x25)
	fmul x23, x27, x23
	sw x23, 2(x25)
trace_ray_cont_b935:
# B935
	lw x23, 0(x26)
	sw x23, 0(x113)
	lw x23, 1(x26)
	sw x23, 1(x113)
	lw x23, 2(x26)
	sw x23, 2(x113)
	lw x23, 0(x20)
	la x27, min_caml_texture_color
	lw x28, 8(x20)
	lw x28, 0(x28)
	sw x28, 0(x27)
	lw x28, 8(x20)
	lw x28, 1(x28)
	sw x28, 1(x27)
	lw x28, 8(x20)
	lw x28, 2(x28)
	sw x28, 2(x27)
	lui x28, 266752
	bne	x23, x111, trace_ray_beqelse_b937
# B936
	lw x23, 0(x26)
	lw x29, 5(x20)
	lw x29, 0(x29)
	fsub x23, x23, x29
	lui x29, 251085
	addi x29, x29, -819
	fmul x30, x23, x29
	floor x30, x30
	lui x31, 268800
	fmul x30, x30, x31
	fsub x23, x23, x30
	fle x23, x28, x23
	xori x23, x23, 1
	lw x30, 2(x26)
	lw x32, 5(x20)
	lw x32, 2(x32)
	fsub x30, x30, x32
	fmul x29, x30, x29
	floor x29, x29
	fmul x29, x29, x31
	fsub x29, x30, x29
	fle x28, x28, x29
	xori x28, x28, 1
	bne	x23, zero, trace_ray_beqelse_b939
# B938
	bne	x28, zero, trace_ray_beqelse_b941
# B940
	lui x23, 276464
	j trace_ray_cont_b944 # adhoc jump(2)
trace_ray_beqelse_b941:
# B941
	mv x23, zero
	j trace_ray_cont_b944 # adhoc jump(2)
trace_ray_beqelse_b939:
# B939
	bne	x28, zero, trace_ray_beqelse_b943
# B942
	mv x23, zero
	j trace_ray_cont_b944 # adhoc jump(2)
trace_ray_beqelse_b943:
# B943
	lui x23, 276464
trace_ray_cont_b944:
# B944
	sw x23, 1(x27)
	j trace_ray_cont_b1023 # adhoc jump(2)
trace_ray_beqelse_b937:
# B937
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
	bne	x23, x12, trace_ray_beqelse_b946
# B945
	lw x23, 1(x26)
	lui x28, 256000
	fmul x23, x23, x28
	fle x28, x23, zero
	xori x28, x28, 1
	fabs x23, x23
	mv x5, x23
	mv x6, x29
trace_ray_loop_b947:
# B947
	fle x65, x5, x6
	bne	x65, zero, trace_ray_beqelse_b950
# B948
	fmul x6, x6, x30
	j trace_ray_loop_b947 # loopback to while entry from B948
trace_ray_beqelse_b950:
# B950
	mv x66, x23
	mv x67, x6
trace_ray_loop_b951:
# B951
	fle x23, x29, x66
	beq	x23, zero, trace_ray_bneelse_b956
# B953
	fle x23, x66, x67
	fdiv x5, x67, x30
	bne	x23, zero, trace_ray_beqelse_b955
# B954
	fsub x66, x66, x67
	mv x67, x5
	j trace_ray_loop_b951 # loopback to while entry from B954
trace_ray_beqelse_b955:
# B955
	mv x67, x5
	j trace_ray_loop_b951 # loopback to while entry from B955
trace_ray_bneelse_b956:
# B956
	fle x23, x31, x66
	bne	x23, zero, trace_ray_beqelse_b958
# B957
	mv x29, x66
	j trace_ray_cont_b959 # adhoc jump(2)
trace_ray_beqelse_b958:
# B958
	fsub x29, x66, x31
trace_ray_cont_b959:
# B959
	xor x23, x23, x28
	fle x28, x32, x29
	bne	x28, zero, trace_ray_beqelse_b961
# B960
	mv x28, x29
	j trace_ray_cont_b962 # adhoc jump(2)
trace_ray_beqelse_b961:
# B961
	fsub x28, x31, x29
trace_ray_cont_b962:
# B962
	fle x29, x33, x28
	bne	x29, zero, trace_ray_beqelse_b964
# B963
	fmul x29, x28, x28
	fmul x30, x29, x36
	fadd x30, x35, x30
	fmul x30, x29, x30
	fadd x30, x34, x30
	fmul x29, x29, x30
	fadd x29, x15, x29
	fmul x28, x28, x29
	j trace_ray_cont_b965 # adhoc jump(2)
trace_ray_beqelse_b964:
# B964
	fsub x28, x32, x28
	fmul x28, x28, x28
	fmul x29, x28, x39
	fadd x29, x38, x29
	fmul x29, x28, x29
	fadd x29, x37, x29
	fmul x28, x28, x29
	fadd x28, x15, x28
trace_ray_cont_b965:
# B965
	fle x29, x28, zero
	beq	x23, x29, trace_ray_bneelse_b967
# B966
	mv x23, x28
	j trace_ray_cont_b968 # adhoc jump(2)
trace_ray_bneelse_b967:
# B967
	fsub x23, zero, x28
trace_ray_cont_b968:
# B968
	fmul x23, x23, x23
	fmul x28, x40, x23
	sw x28, 0(x27)
	fsub x23, x15, x23
	fmul x23, x40, x23
	sw x23, 1(x27)
	j trace_ray_cont_b1023 # adhoc jump(2)
trace_ray_beqelse_b946:
# B946
	lui x5, 263313
	addi x5, x5, -37
	bne	x23, x14, trace_ray_beqelse_b970
# B969
	lw x23, 0(x26)
	lw x6, 5(x20)
	lw x6, 0(x6)
	fsub x23, x23, x6
	lw x6, 2(x26)
	lw x65, 5(x20)
	lw x65, 2(x65)
	fsub x6, x6, x65
	fmul x23, x23, x23
	fmul x6, x6, x6
	fadd x23, x23, x6
	fsqrt x23, x23
	fdiv x23, x23, x28
	floor x28, x23
	fsub x23, x23, x28
	fmul x23, x23, x5
	fabs x23, x23
	mv x28, x23
	mv x5, x29
trace_ray_loop_b971:
# B971
	fle x6, x28, x5
	bne	x6, zero, trace_ray_beqelse_b974
# B972
	fmul x5, x5, x30
	j trace_ray_loop_b971 # loopback to while entry from B972
trace_ray_beqelse_b974:
# B974
	mv x65, x23
	mv x66, x5
trace_ray_loop_b975:
# B975
	fle x23, x29, x65
	beq	x23, zero, trace_ray_bneelse_b980
# B977
	fle x23, x65, x66
	fdiv x28, x66, x30
	bne	x23, zero, trace_ray_beqelse_b979
# B978
	fsub x65, x65, x66
	mv x66, x28
	j trace_ray_loop_b975 # loopback to while entry from B978
trace_ray_beqelse_b979:
# B979
	mv x66, x28
	j trace_ray_loop_b975 # loopback to while entry from B979
trace_ray_bneelse_b980:
# B980
	fle x23, x31, x65
	bne	x23, zero, trace_ray_beqelse_b982
# B981
	mv x28, x65
	j trace_ray_cont_b983 # adhoc jump(2)
trace_ray_beqelse_b982:
# B982
	fsub x28, x65, x31
trace_ray_cont_b983:
# B983
	bne	x23, zero, trace_ray_beqelse_b985
# B984
	mv x29, x111
	j trace_ray_cont_b986 # adhoc jump(2)
trace_ray_beqelse_b985:
# B985
	mv x29, zero
trace_ray_cont_b986:
# B986
	fle x23, x32, x28
	bne	x23, zero, trace_ray_beqelse_b988
	j trace_ray_cont_b989 # adhoc jump(3)
trace_ray_beqelse_b988:
# B988
	fsub x28, x31, x28
trace_ray_cont_b989:
# B989
	xor x23, x23, x29
	fle x29, x33, x28
	bne	x29, zero, trace_ray_beqelse_b991
trace_ray_cont_b990:
# B990
	fmul x28, x28, x28
	fmul x29, x28, x39
	fadd x29, x38, x29
	fmul x29, x28, x29
	fadd x29, x37, x29
	fmul x28, x28, x29
	fadd x28, x15, x28
	j trace_ray_cont_b992 # adhoc jump(2)
trace_ray_beqelse_b991:
# B991
	fsub x28, x32, x28
	fmul x29, x28, x28
	fmul x30, x29, x36
	fadd x30, x35, x30
	fmul x30, x29, x30
	fadd x30, x34, x30
	fmul x29, x29, x30
	fadd x29, x15, x29
	fmul x28, x28, x29
trace_ray_cont_b992:
# B992
	fle x29, x28, zero
	beq	x23, x29, trace_ray_bneelse_b994
# B993
	mv x23, x28
	j trace_ray_cont_b995 # adhoc jump(2)
trace_ray_bneelse_b994:
# B994
	fsub x23, zero, x28
trace_ray_cont_b995:
# B995
	fmul x23, x23, x23
	fmul x28, x23, x40
	sw x28, 1(x27)
	fsub x23, x15, x23
	fmul x23, x23, x40
	sw x23, 2(x27)
	j trace_ray_cont_b1023 # adhoc jump(2)
trace_ray_beqelse_b970:
# B970
	bne	x23, x106, trace_ray_beqelse_b1023
# B996
	lw x23, 0(x26)
	lw x28, 5(x20)
	lw x28, 0(x28)
	fsub x23, x23, x28
	lw x28, 4(x20)
	lw x28, 0(x28)
	fsqrt x28, x28
	fmul x23, x23, x28
	lw x28, 2(x26)
	lw x29, 5(x20)
	lw x29, 2(x29)
	fsub x28, x28, x29
	lw x29, 4(x20)
	lw x29, 2(x29)
	fsqrt x29, x29
	fmul x28, x28, x29
	fmul x29, x23, x23
	fmul x30, x28, x28
	fadd x29, x29, x30
	fabs x30, x23
	lui x31, 232731
	addi x31, x31, 1815
	fle x30, x31, x30
	lui x34, 257536
	lui x35, 780971
	addi x35, x35, -1366
	lui x36, 255181
	addi x36, x36, -819
	lui x37, 778533
	addi x37, x37, -1755
	lui x38, 253497
	addi x38, x38, -456
	lui x39, 777085
	addi x39, x39, 1646
	lui x6, 251742
	addi x6, x6, 1989
	lui x65, 262592
	lui x66, 270080
	beq	x30, zero, trace_ray_bneelse_b999
# B998
	fdiv x23, x28, x23
	fabs x23, x23
	fle x28, x23, zero
	xori x28, x28, 1
	fabs x30, x23
	fle x67, x34, x30
	bne	x67, zero, trace_ray_beqelse_b1001
# B1000
	fmul x28, x23, x23
	fmul x30, x28, x6
	fadd x30, x39, x30
	fmul x30, x28, x30
	fadd x30, x38, x30
	fmul x30, x28, x30
	fadd x30, x37, x30
	fmul x30, x28, x30
	fadd x30, x36, x30
	fmul x30, x28, x30
	fadd x30, x35, x30
	fmul x28, x28, x30
	fadd x28, x15, x28
	fmul x23, x23, x28
	j trace_ray_cont_b1007 # adhoc jump(2)
trace_ray_beqelse_b1001:
# B1001
	fle x23, x65, x30
	bne	x23, zero, trace_ray_beqelse_b1003
# B1002
	fsub x23, x30, x15
	fadd x30, x30, x15
	fdiv x23, x23, x30
	fmul x30, x23, x23
	fmul x67, x30, x6
	fadd x67, x39, x67
	fmul x67, x30, x67
	fadd x67, x38, x67
	fmul x67, x30, x67
	fadd x67, x37, x67
	fmul x67, x30, x67
	fadd x67, x36, x67
	fmul x67, x30, x67
	fadd x67, x35, x67
	fmul x30, x30, x67
	fadd x30, x15, x30
	fmul x23, x23, x30
	fadd x23, x33, x23
	j trace_ray_cont_b1004 # adhoc jump(2)
trace_ray_beqelse_b1003:
# B1003
	fdiv x23, x15, x30
	fmul x30, x23, x23
	fmul x67, x30, x6
	fadd x67, x39, x67
	fmul x67, x30, x67
	fadd x67, x38, x67
	fmul x67, x30, x67
	fadd x67, x37, x67
	fmul x67, x30, x67
	fadd x67, x36, x67
	fmul x67, x30, x67
	fadd x67, x35, x67
	fmul x30, x30, x67
	fadd x30, x15, x30
	fmul x23, x23, x30
	fsub x23, x32, x23
trace_ray_cont_b1004:
# B1004
	bne	x28, zero, trace_ray_beqelse_b1007
# B1005
	fsub x23, zero, x23
trace_ray_beqelse_b1007:
trace_ray_cont_b1007:
# B1007
	fmul x23, x23, x66
	fdiv x23, x23, x5
	j trace_ray_cont_b1008 # adhoc jump(2)
trace_ray_bneelse_b999:
# B999
	lui x23, 268032
trace_ray_cont_b1008:
# B1008
	floor x28, x23
	fsub x23, x23, x28
	lw x28, 1(x26)
	lw x30, 5(x20)
	lw x30, 1(x30)
	fsub x28, x28, x30
	lw x30, 4(x20)
	lw x30, 1(x30)
	fsqrt x30, x30
	fmul x28, x28, x30
	fabs x30, x29
	fle x30, x31, x30
	beq	x30, zero, trace_ray_bneelse_b1010
# B1009
	fdiv x28, x28, x29
	fabs x28, x28
	fle x29, x28, zero
	xori x29, x29, 1
	fabs x30, x28
	fle x31, x34, x30
	bne	x31, zero, trace_ray_beqelse_b1012
# B1011
	fmul x29, x28, x28
	fmul x30, x29, x6
	fadd x30, x39, x30
	fmul x30, x29, x30
	fadd x30, x38, x30
	fmul x30, x29, x30
	fadd x30, x37, x30
	fmul x30, x29, x30
	fadd x30, x36, x30
	fmul x30, x29, x30
	fadd x30, x35, x30
	fmul x29, x29, x30
	fadd x29, x15, x29
	fmul x28, x28, x29
	j trace_ray_cont_b1018 # adhoc jump(2)
trace_ray_beqelse_b1012:
# B1012
	fle x28, x65, x30
	bne	x28, zero, trace_ray_beqelse_b1014
# B1013
	fsub x28, x30, x15
	fadd x30, x30, x15
	fdiv x28, x28, x30
	fmul x30, x28, x28
	fmul x31, x30, x6
	fadd x31, x39, x31
	fmul x31, x30, x31
	fadd x31, x38, x31
	fmul x31, x30, x31
	fadd x31, x37, x31
	fmul x31, x30, x31
	fadd x31, x36, x31
	fmul x31, x30, x31
	fadd x31, x35, x31
	fmul x30, x30, x31
	fadd x30, x15, x30
	fmul x28, x28, x30
	fadd x28, x33, x28
	j trace_ray_cont_b1015 # adhoc jump(2)
trace_ray_beqelse_b1014:
# B1014
	fdiv x28, x15, x30
	fmul x30, x28, x28
	fmul x31, x30, x6
	fadd x31, x39, x31
	fmul x31, x30, x31
	fadd x31, x38, x31
	fmul x31, x30, x31
	fadd x31, x37, x31
	fmul x31, x30, x31
	fadd x31, x36, x31
	fmul x31, x30, x31
	fadd x31, x35, x31
	fmul x30, x30, x31
	fadd x30, x15, x30
	fmul x28, x28, x30
	fsub x28, x32, x28
trace_ray_cont_b1015:
# B1015
	bne	x29, zero, trace_ray_beqelse_b1018
# B1016
	fsub x28, zero, x28
trace_ray_beqelse_b1018:
trace_ray_cont_b1018:
# B1018
	fmul x28, x28, x66
	fdiv x28, x28, x5
	j trace_ray_cont_b1019 # adhoc jump(2)
trace_ray_bneelse_b1010:
# B1010
	lui x28, 268032
trace_ray_cont_b1019:
# B1019
	floor x29, x28
	fsub x28, x28, x29
	lui x29, 254362
	addi x29, x29, -1638
	fsub x23, x13, x23
	fmul x23, x23, x23
	fsub x23, x29, x23
	fsub x28, x13, x28
	fmul x28, x28, x28
	fsub x23, x23, x28
	fle x28, zero, x23
	beq	x28, zero, trace_ray_bneelse_b1021
# B1020
	mv x29, x23
	j trace_ray_cont_b1022 # adhoc jump(2)
trace_ray_bneelse_b1021:
# B1021
	mv x29, zero
trace_ray_cont_b1022:
# B1022
	fmul x23, x40, x29
	lui x28, 256410
	addi x28, x28, -1638
	fdiv x23, x23, x28
	sw x23, 2(x27)
trace_ray_beqelse_b1023:
trace_ray_cont_b1023:
# B1023
	slli x19, x19, 2
	lw x23, 0(x24)
	add x19, x19, x23
	add x4, x107, x101
	sw x19, 0(x4)
	lw x19, 1(x104)
	add x4, x19, x101
	lw x19, 0(x4)
	lw x23, 0(x26)
	sw x23, 0(x19)
	lw x23, 1(x26)
	sw x23, 1(x19)
	lw x23, 2(x26)
	sw x23, 2(x19)
	lw x19, 3(x104)
	lw x23, 7(x20)
	lw x23, 0(x23)
	fle x13, x13, x23
	beq	x13, zero, trace_ray_bneelse_b1025
# B1024
	add x4, x19, x101
	sw x111, 0(x4)
	lw x13, 4(x104)
	add x4, x13, x101
	lw x19, 0(x4)
	lw x23, 0(x27)
	sw x23, 0(x19)
	lw x23, 1(x27)
	sw x23, 1(x19)
	lw x23, 2(x27)
	sw x23, 2(x19)
	add x4, x13, x101
	lw x13, 0(x4)
	lui x19, 276480
	fdiv x19, x15, x19
	fmul x19, x19, x22
	lw x23, 0(x13)
	fmul x23, x23, x19
	sw x23, 0(x13)
	lw x23, 1(x13)
	fmul x23, x23, x19
	sw x23, 1(x13)
	lw x23, 2(x13)
	fmul x19, x23, x19
	sw x19, 2(x13)
	lw x13, 7(x104)
	add x4, x13, x101
	lw x13, 0(x4)
	lw x19, 0(x25)
	sw x19, 0(x13)
	lw x19, 1(x25)
	sw x19, 1(x13)
	lw x19, 2(x25)
	sw x19, 2(x13)
	j trace_ray_cont_b1026 # adhoc jump(2)
trace_ray_bneelse_b1025:
# B1025
	add x4, x19, x101
	sw zero, 0(x4)
trace_ray_cont_b1026:
# B1026
	lui x13, 786432
	lw x19, 0(x103)
	lw x23, 0(x25)
	fmul x19, x19, x23
	lw x23, 1(x103)
	lw x28, 1(x25)
	fmul x23, x23, x28
	fadd x19, x19, x23
	lw x23, 2(x103)
	lw x28, 2(x25)
	fmul x23, x23, x28
	fadd x19, x19, x23
	fmul x13, x13, x19
	lw x19, 0(x103)
	lw x23, 0(x25)
	fmul x23, x13, x23
	fadd x19, x19, x23
	sw x19, 0(x103)
	lw x19, 1(x103)
	lw x23, 1(x25)
	fmul x23, x13, x23
	fadd x19, x19, x23
	sw x19, 1(x103)
	lw x19, 2(x103)
	lw x23, 2(x25)
	fmul x13, x13, x23
	fadd x13, x19, x13
	sw x13, 2(x103)
	lw x13, 7(x20)
	lw x13, 1(x13)
	fmul x13, x102, x13
	lw x19, 0(x110)
	la x23, min_caml_light_dirvec
	mv x28, zero
	mv x29, x19
trace_ray_loop_b1027:
# B1027
	add x4, x29, x28
	lw x19, 0(x4)
	lw x30, 0(x19)
	lui x31, 779469
	addi x31, x31, -819
	lui x32, 246333
	addi x32, x32, 1802
	beq	x30, x118, trace_ray_bneelse_b1253
# B1029
	bne	x30, x112, trace_ray_beqelse_b1031
# B1030
	mv x30, x111
	j trace_ray_cont_b1163 # adhoc jump(2)
trace_ray_beqelse_b1031:
# B1031
	add x4, x11, x30
	lw x33, 0(x4)
	lw x34, 0(x26)
	lw x35, 5(x33)
	lw x35, 0(x35)
	fsub x34, x34, x35
	lw x35, 1(x26)
	lw x36, 5(x33)
	lw x36, 1(x36)
	fsub x35, x35, x36
	lw x36, 2(x26)
	lw x37, 5(x33)
	lw x37, 2(x37)
	fsub x36, x36, x37
	lw x37, 1(x23)
	add x4, x37, x30
	lw x30, 0(x4)
	lw x37, 1(x33)
	bne	x37, x111, trace_ray_beqelse_b1033
# B1032
	lw x37, 0(x23)
	lw x38, 0(x30)
	fsub x38, x38, x34
	lw x39, 1(x30)
	fmul x38, x38, x39
	lw x39, 1(x37)
	fmul x39, x38, x39
	fadd x39, x39, x35
	fabs x39, x39
	lw x40, 4(x33)
	lw x40, 1(x40)
	fle x39, x40, x39
	bne	x39, zero, trace_ray_beqelse_b1039
# B1035
	lw x39, 2(x37)
	fmul x39, x38, x39
	fadd x39, x39, x36
	fabs x39, x39
	lw x40, 4(x33)
	lw x40, 2(x40)
	fle x39, x40, x39
	bne	x39, zero, trace_ray_beqelse_b1039
# B1037
	lw x39, 1(x30)
	feq x39, x39, zero
	xori x39, x39, 1
	mv x40, x39
# B1038
	bne	x40, zero, trace_ray_beqelse_b1040
trace_ray_beqelse_b1039:
# B1039
	lw x38, 2(x30)
	fsub x38, x38, x35
	lw x39, 3(x30)
	fmul x38, x38, x39
	lw x39, 0(x37)
	fmul x39, x38, x39
	fadd x39, x39, x34
	fabs x39, x39
	lw x40, 4(x33)
	lw x40, 0(x40)
	fle x39, x40, x39
	bne	x39, zero, trace_ray_beqelse_b1046
# B1042
	lw x39, 2(x37)
	fmul x39, x38, x39
	fadd x39, x39, x36
	fabs x39, x39
	lw x40, 4(x33)
	lw x40, 2(x40)
	fle x39, x40, x39
	bne	x39, zero, trace_ray_beqelse_b1046
# B1044
	lw x39, 3(x30)
	feq x39, x39, zero
	xori x39, x39, 1
	mv x40, x39
# B1045
	bne	x40, zero, trace_ray_beqelse_b1047
trace_ray_beqelse_b1046:
# B1046
	lw x38, 4(x30)
	fsub x36, x38, x36
	lw x38, 5(x30)
	fmul x36, x36, x38
	lw x38, 0(x37)
	fmul x38, x36, x38
	fadd x34, x38, x34
	fabs x34, x34
	lw x38, 4(x33)
	lw x38, 0(x38)
	fle x34, x38, x34
	bne	x34, zero, trace_ray_beqelse_b1053
# B1049
	lw x34, 1(x37)
	fmul x34, x36, x34
	fadd x34, x34, x35
	fabs x34, x34
	lw x33, 4(x33)
	lw x33, 1(x33)
	fle x33, x33, x34
	bne	x33, zero, trace_ray_beqelse_b1053
# B1051
	lw x30, 5(x30)
	feq x30, x30, zero
	xori x30, x30, 1
	mv x33, x30
# B1052
	bne	x33, zero, trace_ray_beqelse_b1054
trace_ray_beqelse_b1053:
# B1053
	j trace_ray_cont_b1073 # adhoc jump(2)
trace_ray_beqelse_b1054:
# B1054
	sw x36, 0(x114)
	mv x30, x14
	j trace_ray_cont_b1072 # adhoc jump(2)
trace_ray_beqelse_b1047:
# B1047
	sw x38, 0(x114)
	mv x30, x12
	j trace_ray_cont_b1072 # adhoc jump(2)
trace_ray_beqelse_b1040:
# B1040
	sw x38, 0(x114)
	mv x30, x111
	j trace_ray_cont_b1072 # adhoc jump(2)
trace_ray_beqelse_b1033:
# B1033
	bne	x37, x12, trace_ray_beqelse_b1056
# B1055
	lw x33, 0(x30)
	fle x33, zero, x33
	bne	x33, zero, trace_ray_beqelse_b1073
# B1058
	lw x33, 1(x30)
	fmul x33, x33, x34
	lw x34, 2(x30)
	fmul x34, x34, x35
	fadd x33, x33, x34
	lw x30, 3(x30)
	fmul x30, x30, x36
	fadd x30, x33, x30
	sw x30, 0(x114)
	mv x30, x111
	j trace_ray_cont_b1072 # adhoc jump(2)
trace_ray_beqelse_b1056:
# B1056
	lw x37, 0(x30)
	feq x38, x37, zero
	bne	x38, zero, trace_ray_beqelse_b1073
# B1059
	lw x38, 1(x30)
	fmul x38, x38, x34
	lw x39, 2(x30)
	fmul x39, x39, x35
	fadd x38, x38, x39
	lw x39, 3(x30)
	fmul x39, x39, x36
	fadd x38, x38, x39
	fmul x39, x34, x34
	lw x40, 4(x33)
	lw x40, 0(x40)
	fmul x39, x39, x40
	fmul x40, x35, x35
	lw x5, 4(x33)
	lw x5, 1(x5)
	fmul x40, x40, x5
	fadd x39, x39, x40
	fmul x40, x36, x36
	lw x5, 4(x33)
	lw x5, 2(x5)
	fmul x40, x40, x5
	fadd x39, x39, x40
	lw x40, 3(x33)
	bne	x40, zero, trace_ray_beqelse_b1062
# B1061
	mv x34, x39
	j trace_ray_cont_b1063 # adhoc jump(2)
trace_ray_beqelse_b1062:
# B1062
	fmul x40, x35, x36
	lw x5, 9(x33)
	lw x5, 0(x5)
	fmul x40, x40, x5
	fadd x39, x39, x40
	fmul x36, x36, x34
	lw x40, 9(x33)
	lw x40, 1(x40)
	fmul x36, x36, x40
	fadd x36, x39, x36
	fmul x34, x34, x35
	lw x35, 9(x33)
	lw x35, 2(x35)
	fmul x34, x34, x35
	fadd x34, x36, x34
trace_ray_cont_b1063:
# B1063
	lw x35, 1(x33)
	bne	x35, x14, trace_ray_beqelse_b1066
# B1064
	fsub x34, x34, x15
trace_ray_beqelse_b1066:
# B1066
	fmul x35, x38, x38
	fmul x34, x37, x34
	fsub x34, x35, x34
	fle x35, x34, zero
	bne	x35, zero, trace_ray_beqelse_b1073
# B1068
	lw x33, 6(x33)
	fsqrt x34, x34
	bne	x33, zero, trace_ray_beqelse_b1070
# B1069
	fsub x33, x38, x34
	lw x30, 4(x30)
	fmul x30, x33, x30
	sw x30, 0(x114)
	j trace_ray_cont_b1071 # adhoc jump(2)
trace_ray_beqelse_b1070:
# B1070
	fadd x33, x38, x34
	lw x30, 4(x30)
	fmul x30, x33, x30
	sw x30, 0(x114)
trace_ray_cont_b1071:
# B1071
	mv x30, x111
trace_ray_cont_b1072:
# B1072
	bne	x30, zero, trace_ray_beqelse_b1074
trace_ray_beqelse_b1073:
trace_ray_cont_b1073:
# B1073
	addi x28, x28, 1
	j trace_ray_cont_b1164 # adhoc jump(2)
trace_ray_beqelse_b1074:
# B1074
	lw x30, 0(x114)
	fle x30, x100, x30
	beq	x30, zero, trace_ray_bneelse_b1076
# B1075
	addi x28, x28, 1
	j trace_ray_cont_b1164 # adhoc jump(2)
trace_ray_bneelse_b1076:
# B1076
	mv x34, x19
	mv x33, x111
trace_ray_loop_b1077:
# B1077
	add x4, x34, x33
	lw x30, 0(x4)
	beq	x30, x118, trace_ray_bneelse_b1161
# B1079
	add x4, x119, x30
	lw x30, 0(x4)
	mv x35, zero
	mv x36, x30
trace_ray_loop_b1080:
# B1080
	add x4, x36, x35
	lw x30, 0(x4)
	beq	x30, x118, trace_ray_bneelse_b1158
# B1082
	add x4, x36, x35
	lw x30, 0(x4)
	add x4, x11, x30
	lw x37, 0(x4)
	lw x38, 0(x26)
	lw x39, 5(x37)
	lw x39, 0(x39)
	fsub x38, x38, x39
	lw x39, 1(x26)
	lw x40, 5(x37)
	lw x40, 1(x40)
	fsub x39, x39, x40
	lw x40, 2(x26)
	lw x5, 5(x37)
	lw x5, 2(x5)
	fsub x40, x40, x5
	lw x5, 1(x23)
	add x4, x5, x30
	lw x5, 0(x4)
	lw x6, 1(x37)
	bne	x6, x111, trace_ray_beqelse_b1084
# B1083
	lw x6, 0(x23)
	lw x65, 0(x5)
	fsub x65, x65, x38
	lw x66, 1(x5)
	fmul x65, x65, x66
	lw x66, 1(x6)
	fmul x66, x65, x66
	fadd x66, x66, x39
	fabs x66, x66
	lw x67, 4(x37)
	lw x67, 1(x67)
	fle x66, x67, x66
	bne	x66, zero, trace_ray_beqelse_b1090
# B1086
	lw x66, 2(x6)
	fmul x66, x65, x66
	fadd x66, x66, x40
	fabs x66, x66
	lw x67, 4(x37)
	lw x67, 2(x67)
	fle x66, x67, x66
	bne	x66, zero, trace_ray_beqelse_b1090
# B1088
	lw x66, 1(x5)
	feq x66, x66, zero
	xori x66, x66, 1
	mv x67, x66
# B1089
	bne	x67, zero, trace_ray_beqelse_b1091
trace_ray_beqelse_b1090:
# B1090
	lw x65, 2(x5)
	fsub x65, x65, x39
	lw x66, 3(x5)
	fmul x65, x65, x66
	lw x66, 0(x6)
	fmul x66, x65, x66
	fadd x66, x66, x38
	fabs x66, x66
	lw x67, 4(x37)
	lw x67, 0(x67)
	fle x66, x67, x66
	bne	x66, zero, trace_ray_beqelse_b1097
# B1093
	lw x66, 2(x6)
	fmul x66, x65, x66
	fadd x66, x66, x40
	fabs x66, x66
	lw x67, 4(x37)
	lw x67, 2(x67)
	fle x66, x67, x66
	bne	x66, zero, trace_ray_beqelse_b1097
# B1095
	lw x66, 3(x5)
	feq x66, x66, zero
	xori x66, x66, 1
	mv x67, x66
# B1096
	bne	x67, zero, trace_ray_beqelse_b1098
trace_ray_beqelse_b1097:
# B1097
	lw x65, 4(x5)
	fsub x40, x65, x40
	lw x65, 5(x5)
	fmul x40, x40, x65
	lw x65, 0(x6)
	fmul x65, x40, x65
	fadd x38, x65, x38
	fabs x38, x38
	lw x65, 4(x37)
	lw x65, 0(x65)
	fle x38, x65, x38
	bne	x38, zero, trace_ray_beqelse_b1104
# B1100
	lw x38, 1(x6)
	fmul x38, x40, x38
	fadd x38, x38, x39
	fabs x38, x38
	lw x37, 4(x37)
	lw x37, 1(x37)
	fle x37, x37, x38
	bne	x37, zero, trace_ray_beqelse_b1104
# B1102
	lw x37, 5(x5)
	feq x37, x37, zero
	xori x37, x37, 1
	mv x38, x37
# B1103
	bne	x38, zero, trace_ray_beqelse_b1105
trace_ray_beqelse_b1104:
# B1104
	lw x38, 0(x114)
	j trace_ray_cont_b1124 # adhoc jump(2)
trace_ray_beqelse_b1105:
# B1105
	sw x40, 0(x114)
	mv x37, x14
	j trace_ray_cont_b1123 # adhoc jump(2)
trace_ray_beqelse_b1098:
# B1098
	sw x65, 0(x114)
	mv x37, x12
	j trace_ray_cont_b1123 # adhoc jump(2)
trace_ray_beqelse_b1091:
# B1091
	sw x65, 0(x114)
	mv x37, x111
	j trace_ray_cont_b1123 # adhoc jump(2)
trace_ray_beqelse_b1084:
# B1084
	bne	x6, x12, trace_ray_beqelse_b1107
# B1106
	lw x37, 0(x5)
	fle x37, zero, x37
	beq	x37, zero, trace_ray_bneelse_b1109
# B1108
	lw x38, 0(x114)
	j trace_ray_cont_b1124 # adhoc jump(2)
trace_ray_bneelse_b1109:
# B1109
	lw x37, 1(x5)
	fmul x37, x37, x38
	lw x38, 2(x5)
	fmul x38, x38, x39
	fadd x37, x37, x38
	lw x38, 3(x5)
	fmul x38, x38, x40
	fadd x37, x37, x38
	sw x37, 0(x114)
	mv x37, x111
	j trace_ray_cont_b1123 # adhoc jump(2)
trace_ray_beqelse_b1107:
# B1107
	lw x6, 0(x5)
	feq x65, x6, zero
	bne	x65, zero, trace_ray_beqelse_b1111
# B1110
	lw x65, 1(x5)
	fmul x65, x65, x38
	lw x66, 2(x5)
	fmul x66, x66, x39
	fadd x65, x65, x66
	lw x66, 3(x5)
	fmul x66, x66, x40
	fadd x65, x65, x66
	fmul x66, x38, x38
	lw x67, 4(x37)
	lw x67, 0(x67)
	fmul x66, x66, x67
	fmul x67, x39, x39
	lw x68, 4(x37)
	lw x68, 1(x68)
	fmul x67, x67, x68
	fadd x66, x66, x67
	fmul x67, x40, x40
	lw x68, 4(x37)
	lw x68, 2(x68)
	fmul x67, x67, x68
	fadd x66, x66, x67
	lw x67, 3(x37)
	bne	x67, zero, trace_ray_beqelse_b1113
# B1112
	mv x38, x66
	j trace_ray_cont_b1114 # adhoc jump(2)
trace_ray_beqelse_b1113:
# B1113
	fmul x67, x39, x40
	lw x68, 9(x37)
	lw x68, 0(x68)
	fmul x67, x67, x68
	fadd x66, x66, x67
	fmul x40, x40, x38
	lw x67, 9(x37)
	lw x67, 1(x67)
	fmul x40, x40, x67
	fadd x40, x66, x40
	fmul x38, x38, x39
	lw x39, 9(x37)
	lw x39, 2(x39)
	fmul x38, x38, x39
	fadd x38, x40, x38
trace_ray_cont_b1114:
# B1114
	lw x39, 1(x37)
	bne	x39, x14, trace_ray_beqelse_b1117
# B1115
	fsub x38, x38, x15
trace_ray_beqelse_b1117:
# B1117
	fmul x39, x65, x65
	fmul x38, x6, x38
	fsub x38, x39, x38
	fle x39, x38, zero
	beq	x39, zero, trace_ray_bneelse_b1119
# B1118
	lw x38, 0(x114)
	j trace_ray_cont_b1124 # adhoc jump(2)
trace_ray_bneelse_b1119:
# B1119
	lw x37, 6(x37)
	fsqrt x38, x38
	bne	x37, zero, trace_ray_beqelse_b1121
# B1120
	fsub x37, x65, x38
	lw x38, 4(x5)
	fmul x37, x37, x38
	sw x37, 0(x114)
	j trace_ray_cont_b1122 # adhoc jump(2)
trace_ray_beqelse_b1121:
# B1121
	fadd x37, x65, x38
	lw x38, 4(x5)
	fmul x37, x37, x38
	sw x37, 0(x114)
trace_ray_cont_b1122:
# B1122
	mv x37, x111
trace_ray_cont_b1123:
# B1123
	lw x38, 0(x114)
	bne	x37, zero, trace_ray_beqelse_b1125
	j trace_ray_cont_b1124 # adhoc jump(3)
trace_ray_beqelse_b1125:
# B1125
	fle x37, x31, x38
	xori x37, x37, 1
# B1126
	addi x35, x35, 1
	bne	x37, zero, trace_ray_beqelse_b1128
	j trace_ray_cont_b1127 # adhoc jump(3)
trace_ray_beqelse_b1128:
# B1128
	fadd x30, x38, x32
	lw x37, 0(x16)
	fmul x37, x37, x30
	lw x38, 0(x26)
	fadd x37, x37, x38
	lw x38, 1(x16)
	fmul x38, x38, x30
	lw x39, 1(x26)
	fadd x38, x38, x39
	lw x39, 2(x16)
	fmul x30, x39, x30
	lw x39, 2(x26)
	fadd x30, x30, x39
	mv x5, x37
	mv x40, x36
	mv x6, x38
	mv x65, x30
	mv x39, zero
trace_ray_loop_b1131:
# B1131
	add x4, x40, x39
	lw x30, 0(x4)
	bne	x30, x118, trace_ray_beqelse_b1133
# B1132
	mv x37, x111
# B1154
	bne	x37, zero, trace_ray_beqelse_b1156
	j trace_ray_cont_b1155 # adhoc jump(3)
trace_ray_beqelse_b1156:
# B1156
	mv x30, x111
# B1157
	bne	x30, zero, trace_ray_beqelse_b1159
	j trace_ray_cont_b1158 # adhoc jump(3)
trace_ray_beqelse_b1159:
# B1159
	mv x35, x111
# B1160
	bne	x35, zero, trace_ray_beqelse_b1162
trace_ray_bneelse_b1161:
# B1161
	addi x28, x28, 1
	j trace_ray_cont_b1164 # adhoc jump(2)
trace_ray_beqelse_b1162:
# B1162
	mv x30, x111
trace_ray_cont_b1163:
# B1163
	addi x28, x28, 1
	bne	x30, zero, trace_ray_beqelse_b1165
trace_ray_cont_b1164:
# B1164
	j trace_ray_loop_b1027 # loopback to while entry from B1164
trace_ray_beqelse_b1165:
# B1165
	mv x34, x19
	mv x33, x111
trace_ray_loop_b1166:
# B1166
	add x4, x34, x33
	lw x19, 0(x4)
	beq	x19, x118, trace_ray_bneelse_b1250
# B1168
	add x4, x119, x19
	lw x19, 0(x4)
	mv x35, x19
	mv x30, zero
trace_ray_loop_b1169:
# B1169
	add x4, x35, x30
	lw x19, 0(x4)
	beq	x19, x118, trace_ray_bneelse_b1247
# B1171
	add x4, x35, x30
	lw x19, 0(x4)
	add x4, x11, x19
	lw x36, 0(x4)
	lw x37, 0(x26)
	lw x38, 5(x36)
	lw x38, 0(x38)
	fsub x37, x37, x38
	lw x38, 1(x26)
	lw x39, 5(x36)
	lw x39, 1(x39)
	fsub x38, x38, x39
	lw x39, 2(x26)
	lw x40, 5(x36)
	lw x40, 2(x40)
	fsub x39, x39, x40
	lw x40, 1(x23)
	add x4, x40, x19
	lw x40, 0(x4)
	lw x5, 1(x36)
	bne	x5, x111, trace_ray_beqelse_b1173
# B1172
	lw x5, 0(x23)
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
	bne	x65, zero, trace_ray_beqelse_b1179
# B1175
	lw x65, 2(x5)
	fmul x65, x6, x65
	fadd x65, x65, x39
	fabs x65, x65
	lw x66, 4(x36)
	lw x66, 2(x66)
	fle x65, x66, x65
	bne	x65, zero, trace_ray_beqelse_b1179
# B1177
	lw x65, 1(x40)
	feq x65, x65, zero
	xori x65, x65, 1
	mv x66, x65
# B1178
	bne	x66, zero, trace_ray_beqelse_b1180
trace_ray_beqelse_b1179:
# B1179
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
	bne	x65, zero, trace_ray_beqelse_b1186
# B1182
	lw x65, 2(x5)
	fmul x65, x6, x65
	fadd x65, x65, x39
	fabs x65, x65
	lw x66, 4(x36)
	lw x66, 2(x66)
	fle x65, x66, x65
	bne	x65, zero, trace_ray_beqelse_b1186
# B1184
	lw x65, 3(x40)
	feq x65, x65, zero
	xori x65, x65, 1
	mv x66, x65
# B1185
	bne	x66, zero, trace_ray_beqelse_b1187
trace_ray_beqelse_b1186:
# B1186
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
	bne	x37, zero, trace_ray_beqelse_b1193
# B1189
	lw x37, 1(x5)
	fmul x37, x39, x37
	fadd x37, x37, x38
	fabs x37, x37
	lw x36, 4(x36)
	lw x36, 1(x36)
	fle x36, x36, x37
	bne	x36, zero, trace_ray_beqelse_b1193
# B1191
	lw x36, 5(x40)
	feq x36, x36, zero
	xori x36, x36, 1
	mv x37, x36
# B1192
	bne	x37, zero, trace_ray_beqelse_b1194
trace_ray_beqelse_b1193:
# B1193
	lw x37, 0(x114)
	j trace_ray_cont_b1213 # adhoc jump(2)
trace_ray_beqelse_b1194:
# B1194
	sw x39, 0(x114)
	mv x36, x14
	j trace_ray_cont_b1212 # adhoc jump(2)
trace_ray_beqelse_b1187:
# B1187
	sw x6, 0(x114)
	mv x36, x12
	j trace_ray_cont_b1212 # adhoc jump(2)
trace_ray_beqelse_b1180:
# B1180
	sw x6, 0(x114)
	mv x36, x111
	j trace_ray_cont_b1212 # adhoc jump(2)
trace_ray_beqelse_b1173:
# B1173
	bne	x5, x12, trace_ray_beqelse_b1196
# B1195
	lw x36, 0(x40)
	fle x36, zero, x36
	beq	x36, zero, trace_ray_bneelse_b1198
# B1197
	lw x37, 0(x114)
	j trace_ray_cont_b1213 # adhoc jump(2)
trace_ray_bneelse_b1198:
# B1198
	lw x36, 1(x40)
	fmul x36, x36, x37
	lw x37, 2(x40)
	fmul x37, x37, x38
	fadd x36, x36, x37
	lw x37, 3(x40)
	fmul x37, x37, x39
	fadd x36, x36, x37
	sw x36, 0(x114)
	mv x36, x111
	j trace_ray_cont_b1212 # adhoc jump(2)
trace_ray_beqelse_b1196:
# B1196
	lw x5, 0(x40)
	feq x6, x5, zero
	bne	x6, zero, trace_ray_beqelse_b1200
# B1199
	lw x6, 1(x40)
	fmul x6, x6, x37
	lw x65, 2(x40)
	fmul x65, x65, x38
	fadd x6, x6, x65
	lw x65, 3(x40)
	fmul x65, x65, x39
	fadd x6, x6, x65
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
	bne	x66, zero, trace_ray_beqelse_b1202
# B1201
	mv x37, x65
	j trace_ray_cont_b1203 # adhoc jump(2)
trace_ray_beqelse_b1202:
# B1202
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
trace_ray_cont_b1203:
# B1203
	lw x38, 1(x36)
	bne	x38, x14, trace_ray_beqelse_b1206
# B1204
	fsub x37, x37, x15
trace_ray_beqelse_b1206:
# B1206
	fmul x38, x6, x6
	fmul x37, x5, x37
	fsub x37, x38, x37
	fle x38, x37, zero
	beq	x38, zero, trace_ray_bneelse_b1208
# B1207
	lw x37, 0(x114)
	j trace_ray_cont_b1213 # adhoc jump(2)
trace_ray_bneelse_b1208:
# B1208
	lw x36, 6(x36)
	fsqrt x37, x37
	bne	x36, zero, trace_ray_beqelse_b1210
# B1209
	fsub x36, x6, x37
	lw x37, 4(x40)
	fmul x36, x36, x37
	sw x36, 0(x114)
	j trace_ray_cont_b1211 # adhoc jump(2)
trace_ray_beqelse_b1210:
# B1210
	fadd x36, x6, x37
	lw x37, 4(x40)
	fmul x36, x36, x37
	sw x36, 0(x114)
trace_ray_cont_b1211:
# B1211
	mv x36, x111
trace_ray_cont_b1212:
# B1212
	lw x37, 0(x114)
	bne	x36, zero, trace_ray_beqelse_b1214
	j trace_ray_cont_b1213 # adhoc jump(3)
trace_ray_beqelse_b1214:
# B1214
	fle x36, x31, x37
	xori x36, x36, 1
# B1215
	addi x30, x30, 1
	bne	x36, zero, trace_ray_beqelse_b1217
	j trace_ray_cont_b1216 # adhoc jump(3)
trace_ray_beqelse_b1217:
# B1217
	fadd x19, x37, x32
	lw x36, 0(x16)
	fmul x36, x36, x19
	lw x37, 0(x26)
	fadd x36, x36, x37
	lw x37, 1(x16)
	fmul x37, x37, x19
	lw x38, 1(x26)
	fadd x37, x37, x38
	lw x38, 2(x16)
	fmul x19, x38, x19
	lw x38, 2(x26)
	fadd x19, x19, x38
	mv x5, x37
	mv x40, x36
	mv x39, x35
	mv x38, zero
	mv x6, x19
trace_ray_loop_b1220:
# B1220
	add x4, x39, x38
	lw x19, 0(x4)
	bne	x19, x118, trace_ray_beqelse_b1222
# B1221
	mv x36, x111
# B1243
	bne	x36, zero, trace_ray_beqelse_b1245
	j trace_ray_cont_b1244 # adhoc jump(3)
trace_ray_beqelse_b1245:
# B1245
	mv x19, x111
# B1246
	bne	x19, zero, trace_ray_beqelse_b1248
	j trace_ray_cont_b1247 # adhoc jump(3)
trace_ray_beqelse_b1248:
# B1248
	mv x30, x111
# B1249
	bne	x30, zero, trace_ray_beqelse_b1251
trace_ray_bneelse_b1250:
# B1250
	j trace_ray_loop_b1027 # loopback to while entry from B1250
trace_ray_beqelse_b1251:
# B1251
	mv x19, x111
# B1252
	bne	x19, zero, trace_ray_beqelse_b1260
trace_ray_bneelse_b1253:
# B1253
	lw x19, 0(x25)
	lw x28, 0(x16)
	fmul x19, x19, x28
	lw x28, 1(x25)
	lw x29, 1(x16)
	fmul x28, x28, x29
	fadd x19, x19, x28
	lw x28, 2(x25)
	lw x29, 2(x16)
	fmul x28, x28, x29
	fadd x19, x19, x28
	fsub x19, zero, x19
	fmul x19, x19, x22
	lw x28, 0(x103)
	lw x29, 0(x16)
	fmul x28, x28, x29
	lw x29, 1(x103)
	lw x30, 1(x16)
	fmul x29, x29, x30
	fadd x28, x28, x29
	lw x29, 2(x103)
	lw x30, 2(x16)
	fmul x29, x29, x30
	fadd x28, x28, x29
	fsub x28, zero, x28
	fle x29, x19, zero
	bne	x29, zero, trace_ray_beqelse_b1257
# B1256
	lw x29, 0(x18)
	lw x30, 0(x27)
	fmul x30, x19, x30
	fadd x29, x29, x30
	sw x29, 0(x18)
	lw x29, 1(x18)
	lw x30, 1(x27)
	fmul x30, x19, x30
	fadd x29, x29, x30
	sw x29, 1(x18)
	lw x29, 2(x18)
	lw x30, 2(x27)
	fmul x19, x19, x30
	fadd x19, x29, x19
	sw x19, 2(x18)
trace_ray_beqelse_b1257:
# B1257
	fle x19, x28, zero
	bne	x19, zero, trace_ray_beqelse_b1260
# B1259
	fmul x19, x28, x28
	fmul x19, x19, x19
	fmul x19, x19, x13
	lw x28, 0(x18)
	fadd x28, x28, x19
	sw x28, 0(x18)
	lw x28, 1(x18)
	fadd x28, x28, x19
	sw x28, 1(x18)
	lw x28, 2(x18)
	fadd x19, x28, x19
	sw x19, 2(x18)
trace_ray_beqelse_b1260:
# B1260
	la x19, min_caml_startp_fast
	lw x28, 0(x26)
	sw x28, 0(x19)
	lw x28, 1(x26)
	sw x28, 1(x19)
	lw x28, 2(x26)
	sw x28, 2(x19)
	la x28, min_caml_n_objects
	lw x28, 0(x28)
	addi x28, x28, -1
	mv x29, x26
	mv x30, x28
trace_ray_loop_b1261:
# B1261
	bgt	zero, x30, trace_ray_bleelse_b1275
# B1262
	add x4, x11, x30
	lw x28, 0(x4)
	lw x33, 10(x28)
	lw x34, 1(x28)
	lw x35, 0(x29)
	lw x36, 5(x28)
	lw x36, 0(x36)
	fsub x35, x35, x36
	sw x35, 0(x33)
	lw x35, 1(x29)
	lw x36, 5(x28)
	lw x36, 1(x36)
	fsub x35, x35, x36
	sw x35, 1(x33)
	lw x35, 2(x29)
	lw x36, 5(x28)
	lw x36, 2(x36)
	fsub x35, x35, x36
	sw x35, 2(x33)
	bne	x34, x12, trace_ray_beqelse_b1265
# B1264
	lw x28, 4(x28)
	lw x34, 0(x33)
	lw x35, 1(x33)
	lw x36, 2(x33)
	lw x37, 0(x28)
	fmul x34, x37, x34
	lw x37, 1(x28)
	fmul x35, x37, x35
	fadd x34, x34, x35
	lw x28, 2(x28)
	fmul x28, x28, x36
	fadd x28, x34, x28
	sw x28, 3(x33)
	j trace_ray_cont_b1274 # adhoc jump(2)
trace_ray_beqelse_b1265:
# B1265
	bge	x12, x34, trace_ray_bgtelse_b1274
# B1267
	lw x35, 0(x33)
	lw x36, 1(x33)
	lw x37, 2(x33)
	fmul x38, x35, x35
	lw x39, 4(x28)
	lw x39, 0(x39)
	fmul x38, x38, x39
	fmul x39, x36, x36
	lw x40, 4(x28)
	lw x40, 1(x40)
	fmul x39, x39, x40
	fadd x38, x38, x39
	fmul x39, x37, x37
	lw x40, 4(x28)
	lw x40, 2(x40)
	fmul x39, x39, x40
	fadd x38, x38, x39
	lw x39, 3(x28)
	bne	x39, zero, trace_ray_beqelse_b1269
# B1268
	mv x28, x38
	j trace_ray_cont_b1270 # adhoc jump(2)
trace_ray_beqelse_b1269:
# B1269
	fmul x39, x36, x37
	lw x40, 9(x28)
	lw x40, 0(x40)
	fmul x39, x39, x40
	fadd x38, x38, x39
	fmul x37, x37, x35
	lw x39, 9(x28)
	lw x39, 1(x39)
	fmul x37, x37, x39
	fadd x37, x38, x37
	fmul x35, x35, x36
	lw x28, 9(x28)
	lw x28, 2(x28)
	fmul x28, x35, x28
	fadd x28, x37, x28
trace_ray_cont_b1270:
# B1270
	bne	x34, x14, trace_ray_beqelse_b1273
# B1271
	fsub x28, x28, x15
trace_ray_beqelse_b1273:
# B1273
	sw x28, 3(x33)
trace_ray_bgtelse_b1274:
trace_ray_cont_b1274:
# B1274
	addi x30, x30, -1
	j trace_ray_loop_b1261 # loopback to while entry from B1274
trace_ray_bleelse_b1275:
# B1275
	la x28, min_caml_n_reflections
	lw x28, 0(x28)
	addi x28, x28, -1
	la x29, min_caml_reflections
	mv x35, x103
	mv x34, x13
	mv x30, x28
	mv x33, x22
trace_ray_loop_b1276:
# B1276
	bgt	zero, x30, trace_ray_bleelse_b1720
# B1277
	add x4, x29, x30
	lw x13, 0(x4)
	lw x22, 1(x13)
	sw x109, 0(x108)
	lw x28, 0(x110)
	mv x37, x28
	mv x38, x22
	mv x36, zero
trace_ray_loop_b1279:
# B1279
	add x4, x37, x36
	lw x28, 0(x4)
	lw x39, 0(x28)
	beq	x39, x118, trace_ray_bneelse_b1478
# B1281
	bne	x39, x112, trace_ray_beqelse_b1283
# B1282
	mv x40, x111
	mv x6, x38
	mv x5, x28
trace_ray_loop_b1284:
# B1284
	add x4, x5, x40
	lw x28, 0(x4)
	beq	x28, x118, trace_ray_bneelse_b1477
# B1286
	add x4, x119, x28
	lw x28, 0(x4)
	mv x66, x6
	mv x65, x28
	mv x39, zero
trace_ray_loop_b1287:
# B1287
	lw x28, 0(x66)
	add x4, x65, x39
	lw x67, 0(x4)
	beq	x67, x118, trace_ray_bneelse_b1360
# B1289
	add x4, x11, x67
	lw x68, 0(x4)
	lw x69, 10(x68)
	lw x7, 0(x69)
	lw x70, 1(x69)
	lw x71, 2(x69)
	lw x72, 1(x66)
	add x4, x72, x67
	lw x72, 0(x4)
	lw x73, 1(x68)
	bne	x73, x111, trace_ray_beqelse_b1291
# B1290
	lw x69, 0(x66)
	lw x73, 0(x72)
	fsub x73, x73, x7
	lw x74, 1(x72)
	fmul x73, x73, x74
	lw x74, 1(x69)
	fmul x74, x73, x74
	fadd x74, x74, x70
	fabs x74, x74
	lw x75, 4(x68)
	lw x75, 1(x75)
	fle x74, x75, x74
	bne	x74, zero, trace_ray_beqelse_b1297
# B1293
	lw x74, 2(x69)
	fmul x74, x73, x74
	fadd x74, x74, x71
	fabs x74, x74
	lw x75, 4(x68)
	lw x75, 2(x75)
	fle x74, x75, x74
	bne	x74, zero, trace_ray_beqelse_b1297
# B1295
	lw x74, 1(x72)
	feq x74, x74, zero
	xori x74, x74, 1
	mv x75, x74
# B1296
	bne	x75, zero, trace_ray_beqelse_b1298
trace_ray_beqelse_b1297:
# B1297
	lw x73, 2(x72)
	fsub x73, x73, x70
	lw x74, 3(x72)
	fmul x73, x73, x74
	lw x74, 0(x69)
	fmul x74, x73, x74
	fadd x74, x74, x7
	fabs x74, x74
	lw x75, 4(x68)
	lw x75, 0(x75)
	fle x74, x75, x74
	bne	x74, zero, trace_ray_beqelse_b1304
# B1300
	lw x74, 2(x69)
	fmul x74, x73, x74
	fadd x74, x74, x71
	fabs x74, x74
	lw x75, 4(x68)
	lw x75, 2(x75)
	fle x74, x75, x74
	bne	x74, zero, trace_ray_beqelse_b1304
# B1302
	lw x74, 3(x72)
	feq x74, x74, zero
	xori x74, x74, 1
	mv x75, x74
# B1303
	bne	x75, zero, trace_ray_beqelse_b1305
trace_ray_beqelse_b1304:
# B1304
	lw x73, 4(x72)
	fsub x71, x73, x71
	lw x73, 5(x72)
	fmul x71, x71, x73
	lw x73, 0(x69)
	fmul x73, x71, x73
	fadd x7, x73, x7
	fabs x7, x7
	lw x73, 4(x68)
	lw x73, 0(x73)
	fle x7, x73, x7
	bne	x7, zero, trace_ray_beqelse_b1311
# B1307
	lw x69, 1(x69)
	fmul x69, x71, x69
	fadd x69, x69, x70
	fabs x69, x69
	lw x68, 4(x68)
	lw x68, 1(x68)
	fle x68, x68, x69
	bne	x68, zero, trace_ray_beqelse_b1311
# B1309
	lw x68, 5(x72)
	feq x68, x68, zero
	xori x68, x68, 1
	mv x69, x68
# B1310
	bne	x69, zero, trace_ray_beqelse_b1312
trace_ray_beqelse_b1311:
# B1311
	mv x68, zero
	addi x39, x39, 1
	j trace_ray_cont_b1325 # adhoc jump(2)
trace_ray_beqelse_b1312:
# B1312
	sw x71, 0(x114)
	mv x68, x14
	j trace_ray_cont_b1324 # adhoc jump(2)
trace_ray_beqelse_b1305:
# B1305
	sw x73, 0(x114)
	mv x68, x12
	j trace_ray_cont_b1324 # adhoc jump(2)
trace_ray_beqelse_b1298:
# B1298
	sw x73, 0(x114)
	mv x68, x111
	j trace_ray_cont_b1324 # adhoc jump(2)
trace_ray_beqelse_b1291:
# B1291
	bne	x73, x12, trace_ray_beqelse_b1314
# B1313
	lw x68, 0(x72)
	fle x68, zero, x68
	beq	x68, zero, trace_ray_bneelse_b1316
# B1315
	mv x68, zero
	addi x39, x39, 1
	j trace_ray_cont_b1325 # adhoc jump(2)
trace_ray_bneelse_b1316:
# B1316
	lw x68, 0(x72)
	lw x69, 3(x69)
	fmul x68, x68, x69
	sw x68, 0(x114)
	mv x68, x111
	j trace_ray_cont_b1324 # adhoc jump(2)
trace_ray_beqelse_b1314:
# B1314
	lw x73, 0(x72)
	feq x74, x73, zero
	bne	x74, zero, trace_ray_beqelse_b1318
# B1317
	lw x74, 1(x72)
	fmul x7, x74, x7
	lw x74, 2(x72)
	fmul x70, x74, x70
	fadd x7, x7, x70
	lw x70, 3(x72)
	fmul x70, x70, x71
	fadd x7, x7, x70
	lw x69, 3(x69)
	fmul x70, x7, x7
	fmul x69, x73, x69
	fsub x69, x70, x69
	fle x70, x69, zero
	beq	x70, zero, trace_ray_bneelse_b1320
# B1319
	mv x68, zero
	addi x39, x39, 1
	j trace_ray_cont_b1325 # adhoc jump(2)
trace_ray_bneelse_b1320:
# B1320
	lw x68, 6(x68)
	fsqrt x69, x69
	bne	x68, zero, trace_ray_beqelse_b1322
# B1321
	fsub x68, x7, x69
	lw x69, 4(x72)
	fmul x68, x68, x69
	sw x68, 0(x114)
	j trace_ray_cont_b1323 # adhoc jump(2)
trace_ray_beqelse_b1322:
# B1322
	fadd x68, x7, x69
	lw x69, 4(x72)
	fmul x68, x68, x69
	sw x68, 0(x114)
trace_ray_cont_b1323:
# B1323
	mv x68, x111
trace_ray_cont_b1324:
# B1324
	addi x39, x39, 1
	bne	x68, zero, trace_ray_beqelse_b1326
	j trace_ray_cont_b1325 # adhoc jump(3)
trace_ray_beqelse_b1326:
# B1326
	lw x69, 0(x114)
	fle x7, x69, zero
	bne	x7, zero, trace_ray_beqelse_b1359
# B1330
	lw x7, 0(x108)
	fle x7, x7, x69
	bne	x7, zero, trace_ray_beqelse_b1359
# B1332
	fadd x69, x69, x32
	lw x7, 0(x28)
	fmul x7, x7, x69
	lw x70, 0(x19)
	fadd x7, x7, x70
	lw x70, 1(x28)
	fmul x70, x70, x69
	lw x71, 1(x19)
	fadd x70, x70, x71
	lw x28, 2(x28)
	fmul x28, x28, x69
	lw x71, 2(x19)
	fadd x28, x28, x71
	mv x74, x70
	mv x72, x65
	mv x73, x7
	mv x75, x28
	mv x71, zero
trace_ray_loop_b1333:
# B1333
	add x4, x72, x71
	lw x76, 0(x4)
	bne	x76, x118, trace_ray_beqelse_b1335
# B1334
	mv x77, x111
# B1356
	bne	x77, zero, trace_ray_beqelse_b1358
	j trace_ray_cont_b1357 # adhoc jump(3)
trace_ray_beqelse_b1358:
# B1358
	sw x69, 0(x108)
	sw x7, 0(x26)
	sw x70, 1(x26)
	sw x28, 2(x26)
	sw x67, 0(x10)
	sw x68, 0(x24)
	j trace_ray_cont_b1359 # adhoc jump(2)
trace_ray_beqelse_b1335:
# B1335
	add x4, x11, x76
	lw x76, 0(x4)
	lw x77, 5(x76)
	lw x77, 0(x77)
	fsub x77, x73, x77
	lw x78, 5(x76)
	lw x78, 1(x78)
	fsub x78, x74, x78
	lw x79, 5(x76)
	lw x79, 2(x79)
	fsub x79, x75, x79
	lw x8, 1(x76)
	bne	x8, x111, trace_ray_beqelse_b1337
# B1336
	fabs x77, x77
	lw x8, 4(x76)
	lw x8, 0(x8)
	fle x77, x8, x77
	bne	x77, zero, trace_ray_beqelse_b1343
# B1339
	fabs x77, x78
	lw x78, 4(x76)
	lw x78, 1(x78)
	fle x77, x78, x77
	bne	x77, zero, trace_ray_beqelse_b1343
# B1341
	fabs x77, x79
	lw x78, 4(x76)
	lw x78, 2(x78)
	fle x77, x78, x77
	xori x77, x77, 1
	mv x78, x77
# B1342
	bne	x78, zero, trace_ray_beqelse_b1344
trace_ray_beqelse_b1343:
# B1343
	lw x76, 6(x76)
	xori x76, x76, 1
	j trace_ray_cont_b1353 # adhoc jump(2)
trace_ray_beqelse_b1344:
# B1344
	lw x76, 6(x76)
	j trace_ray_cont_b1353 # adhoc jump(2)
trace_ray_beqelse_b1337:
# B1337
	bne	x8, x12, trace_ray_beqelse_b1346
# B1345
	lw x8, 4(x76)
	lw x80, 0(x8)
	fmul x77, x80, x77
	lw x80, 1(x8)
	fmul x78, x80, x78
	fadd x77, x77, x78
	lw x78, 2(x8)
	fmul x78, x78, x79
	fadd x77, x77, x78
	lw x76, 6(x76)
	fle x77, zero, x77
	xori x77, x77, 1
	xor x76, x76, x77
	xori x76, x76, 1
	j trace_ray_cont_b1353 # adhoc jump(2)
trace_ray_beqelse_b1346:
# B1346
	fmul x8, x77, x77
	lw x80, 4(x76)
	lw x80, 0(x80)
	fmul x8, x8, x80
	fmul x80, x78, x78
	lw x81, 4(x76)
	lw x81, 1(x81)
	fmul x80, x80, x81
	fadd x8, x8, x80
	fmul x80, x79, x79
	lw x81, 4(x76)
	lw x81, 2(x81)
	fmul x80, x80, x81
	fadd x8, x8, x80
	lw x80, 3(x76)
	bne	x80, zero, trace_ray_beqelse_b1348
# B1347
	mv x77, x8
	j trace_ray_cont_b1349 # adhoc jump(2)
trace_ray_beqelse_b1348:
# B1348
	fmul x80, x78, x79
	lw x81, 9(x76)
	lw x81, 0(x81)
	fmul x80, x80, x81
	fadd x8, x8, x80
	fmul x79, x79, x77
	lw x80, 9(x76)
	lw x80, 1(x80)
	fmul x79, x79, x80
	fadd x79, x8, x79
	fmul x77, x77, x78
	lw x78, 9(x76)
	lw x78, 2(x78)
	fmul x77, x77, x78
	fadd x77, x79, x77
trace_ray_cont_b1349:
# B1349
	lw x78, 1(x76)
	bne	x78, x14, trace_ray_beqelse_b1352
# B1350
	fsub x77, x77, x15
trace_ray_beqelse_b1352:
# B1352
	lw x76, 6(x76)
	fle x77, zero, x77
	xori x77, x77, 1
	xor x76, x76, x77
	xori x76, x76, 1
trace_ray_cont_b1353:
# B1353
	bne	x76, zero, trace_ray_beqelse_b1357
# B1354
	addi x71, x71, 1
	j trace_ray_loop_b1333 # loopback to while entry from B1354
trace_ray_beqelse_b1357:
trace_ray_cont_b1357:
# B1357
trace_ray_beqelse_b1359:
trace_ray_cont_b1359:
# B1359
	j trace_ray_loop_b1287 # loopback to while entry from B1359
trace_ray_beqelse_b1318:
# B1318
	mv x68, zero
	addi x39, x39, 1
trace_ray_cont_b1325:
# B1325
	add x4, x11, x67
	lw x28, 0(x4)
	lw x28, 6(x28)
	beq	x28, zero, trace_ray_bneelse_b1360
	j	trace_ray_loop_b1287 # moved need extra jump
trace_ray_bneelse_b1360:
# B1360
	addi x40, x40, 1
	j trace_ray_loop_b1284 # loopback to while entry from B1360
	j trace_ray_loop_b1287 # loopback to while entry from B1325
trace_ray_beqelse_b1283:
# B1283
	add x4, x11, x39
	lw x40, 0(x4)
	lw x5, 10(x40)
	lw x6, 0(x5)
	lw x65, 1(x5)
	lw x66, 2(x5)
	lw x67, 1(x38)
	add x4, x67, x39
	lw x39, 0(x4)
	lw x67, 1(x40)
	bne	x67, x111, trace_ray_beqelse_b1362
# B1361
	lw x5, 0(x38)
	lw x67, 0(x39)
	fsub x67, x67, x6
	lw x68, 1(x39)
	fmul x67, x67, x68
	lw x68, 1(x5)
	fmul x68, x67, x68
	fadd x68, x68, x65
	fabs x68, x68
	lw x69, 4(x40)
	lw x69, 1(x69)
	fle x68, x69, x68
	bne	x68, zero, trace_ray_beqelse_b1368
# B1364
	lw x68, 2(x5)
	fmul x68, x67, x68
	fadd x68, x68, x66
	fabs x68, x68
	lw x69, 4(x40)
	lw x69, 2(x69)
	fle x68, x69, x68
	bne	x68, zero, trace_ray_beqelse_b1368
# B1366
	lw x68, 1(x39)
	feq x68, x68, zero
	xori x68, x68, 1
	mv x69, x68
# B1367
	bne	x69, zero, trace_ray_beqelse_b1369
trace_ray_beqelse_b1368:
# B1368
	lw x67, 2(x39)
	fsub x67, x67, x65
	lw x68, 3(x39)
	fmul x67, x67, x68
	lw x68, 0(x5)
	fmul x68, x67, x68
	fadd x68, x68, x6
	fabs x68, x68
	lw x69, 4(x40)
	lw x69, 0(x69)
	fle x68, x69, x68
	bne	x68, zero, trace_ray_beqelse_b1375
# B1371
	lw x68, 2(x5)
	fmul x68, x67, x68
	fadd x68, x68, x66
	fabs x68, x68
	lw x69, 4(x40)
	lw x69, 2(x69)
	fle x68, x69, x68
	bne	x68, zero, trace_ray_beqelse_b1375
# B1373
	lw x68, 3(x39)
	feq x68, x68, zero
	xori x68, x68, 1
	mv x69, x68
# B1374
	bne	x69, zero, trace_ray_beqelse_b1376
trace_ray_beqelse_b1375:
# B1375
	lw x67, 4(x39)
	fsub x66, x67, x66
	lw x67, 5(x39)
	fmul x66, x66, x67
	lw x67, 0(x5)
	fmul x67, x66, x67
	fadd x6, x67, x6
	fabs x6, x6
	lw x67, 4(x40)
	lw x67, 0(x67)
	fle x6, x67, x6
	bne	x6, zero, trace_ray_beqelse_b1382
# B1378
	lw x5, 1(x5)
	fmul x5, x66, x5
	fadd x5, x5, x65
	fabs x5, x5
	lw x40, 4(x40)
	lw x40, 1(x40)
	fle x40, x40, x5
	bne	x40, zero, trace_ray_beqelse_b1382
# B1380
	lw x39, 5(x39)
	feq x39, x39, zero
	xori x39, x39, 1
	mv x40, x39
# B1381
	bne	x40, zero, trace_ray_beqelse_b1383
trace_ray_beqelse_b1382:
# B1382
	j trace_ray_cont_b1396 # adhoc jump(2)
trace_ray_beqelse_b1383:
# B1383
	sw x66, 0(x114)
	mv x39, x14
	j trace_ray_cont_b1395 # adhoc jump(2)
trace_ray_beqelse_b1376:
# B1376
	sw x67, 0(x114)
	mv x39, x12
	j trace_ray_cont_b1395 # adhoc jump(2)
trace_ray_beqelse_b1369:
# B1369
	sw x67, 0(x114)
	mv x39, x111
	j trace_ray_cont_b1395 # adhoc jump(2)
trace_ray_beqelse_b1362:
# B1362
	bne	x67, x12, trace_ray_beqelse_b1385
# B1384
	lw x40, 0(x39)
	fle x40, zero, x40
	bne	x40, zero, trace_ray_beqelse_b1396
# B1387
	lw x39, 0(x39)
	lw x40, 3(x5)
	fmul x39, x39, x40
	sw x39, 0(x114)
	mv x39, x111
	j trace_ray_cont_b1395 # adhoc jump(2)
trace_ray_beqelse_b1385:
# B1385
	lw x67, 0(x39)
	feq x68, x67, zero
	bne	x68, zero, trace_ray_beqelse_b1396
# B1388
	lw x68, 1(x39)
	fmul x6, x68, x6
	lw x68, 2(x39)
	fmul x65, x68, x65
	fadd x6, x6, x65
	lw x65, 3(x39)
	fmul x65, x65, x66
	fadd x6, x6, x65
	lw x5, 3(x5)
	fmul x65, x6, x6
	fmul x5, x67, x5
	fsub x5, x65, x5
	fle x65, x5, zero
	bne	x65, zero, trace_ray_beqelse_b1396
# B1391
	lw x40, 6(x40)
	fsqrt x5, x5
	bne	x40, zero, trace_ray_beqelse_b1393
# B1392
	fsub x40, x6, x5
	lw x39, 4(x39)
	fmul x39, x40, x39
	sw x39, 0(x114)
	j trace_ray_cont_b1394 # adhoc jump(2)
trace_ray_beqelse_b1393:
# B1393
	fadd x40, x6, x5
	lw x39, 4(x39)
	fmul x39, x40, x39
	sw x39, 0(x114)
trace_ray_cont_b1394:
# B1394
	mv x39, x111
trace_ray_cont_b1395:
# B1395
	bne	x39, zero, trace_ray_beqelse_b1397
trace_ray_beqelse_b1396:
trace_ray_cont_b1396:
# B1396
	j trace_ray_cont_b1477 # adhoc jump(2)
trace_ray_beqelse_b1397:
# B1397
	lw x39, 0(x114)
	lw x40, 0(x108)
	fle x39, x40, x39
	bne	x39, zero, trace_ray_beqelse_b1477
# B1399
	mv x40, x111
	mv x6, x38
	mv x5, x28
trace_ray_loop_b1400:
# B1400
	add x4, x5, x40
	lw x28, 0(x4)
	beq	x28, x118, trace_ray_bneelse_b1477
# B1402
	add x4, x119, x28
	lw x28, 0(x4)
	mv x66, x6
	mv x65, x28
	mv x39, zero
trace_ray_loop_b1403:
# B1403
	lw x28, 0(x66)
	add x4, x65, x39
	lw x67, 0(x4)
	beq	x67, x118, trace_ray_bneelse_b1476
# B1405
	add x4, x11, x67
	lw x68, 0(x4)
	lw x69, 10(x68)
	lw x7, 0(x69)
	lw x70, 1(x69)
	lw x71, 2(x69)
	lw x72, 1(x66)
	add x4, x72, x67
	lw x72, 0(x4)
	lw x73, 1(x68)
	bne	x73, x111, trace_ray_beqelse_b1407
# B1406
	lw x69, 0(x66)
	lw x73, 0(x72)
	fsub x73, x73, x7
	lw x74, 1(x72)
	fmul x73, x73, x74
	lw x74, 1(x69)
	fmul x74, x73, x74
	fadd x74, x74, x70
	fabs x74, x74
	lw x75, 4(x68)
	lw x75, 1(x75)
	fle x74, x75, x74
	bne	x74, zero, trace_ray_beqelse_b1413
# B1409
	lw x74, 2(x69)
	fmul x74, x73, x74
	fadd x74, x74, x71
	fabs x74, x74
	lw x75, 4(x68)
	lw x75, 2(x75)
	fle x74, x75, x74
	bne	x74, zero, trace_ray_beqelse_b1413
# B1411
	lw x74, 1(x72)
	feq x74, x74, zero
	xori x74, x74, 1
	mv x75, x74
# B1412
	bne	x75, zero, trace_ray_beqelse_b1414
trace_ray_beqelse_b1413:
# B1413
	lw x73, 2(x72)
	fsub x73, x73, x70
	lw x74, 3(x72)
	fmul x73, x73, x74
	lw x74, 0(x69)
	fmul x74, x73, x74
	fadd x74, x74, x7
	fabs x74, x74
	lw x75, 4(x68)
	lw x75, 0(x75)
	fle x74, x75, x74
	bne	x74, zero, trace_ray_beqelse_b1420
# B1416
	lw x74, 2(x69)
	fmul x74, x73, x74
	fadd x74, x74, x71
	fabs x74, x74
	lw x75, 4(x68)
	lw x75, 2(x75)
	fle x74, x75, x74
	bne	x74, zero, trace_ray_beqelse_b1420
# B1418
	lw x74, 3(x72)
	feq x74, x74, zero
	xori x74, x74, 1
	mv x75, x74
# B1419
	bne	x75, zero, trace_ray_beqelse_b1421
trace_ray_beqelse_b1420:
# B1420
	lw x73, 4(x72)
	fsub x71, x73, x71
	lw x73, 5(x72)
	fmul x71, x71, x73
	lw x73, 0(x69)
	fmul x73, x71, x73
	fadd x7, x73, x7
	fabs x7, x7
	lw x73, 4(x68)
	lw x73, 0(x73)
	fle x7, x73, x7
	bne	x7, zero, trace_ray_beqelse_b1427
# B1423
	lw x69, 1(x69)
	fmul x69, x71, x69
	fadd x69, x69, x70
	fabs x69, x69
	lw x68, 4(x68)
	lw x68, 1(x68)
	fle x68, x68, x69
	bne	x68, zero, trace_ray_beqelse_b1427
# B1425
	lw x68, 5(x72)
	feq x68, x68, zero
	xori x68, x68, 1
	mv x69, x68
# B1426
	bne	x69, zero, trace_ray_beqelse_b1428
trace_ray_beqelse_b1427:
# B1427
	mv x68, zero
	addi x39, x39, 1
	j trace_ray_cont_b1441 # adhoc jump(2)
trace_ray_beqelse_b1428:
# B1428
	sw x71, 0(x114)
	mv x68, x14
	j trace_ray_cont_b1440 # adhoc jump(2)
trace_ray_beqelse_b1421:
# B1421
	sw x73, 0(x114)
	mv x68, x12
	j trace_ray_cont_b1440 # adhoc jump(2)
trace_ray_beqelse_b1414:
# B1414
	sw x73, 0(x114)
	mv x68, x111
	j trace_ray_cont_b1440 # adhoc jump(2)
trace_ray_beqelse_b1407:
# B1407
	bne	x73, x12, trace_ray_beqelse_b1430
# B1429
	lw x68, 0(x72)
	fle x68, zero, x68
	beq	x68, zero, trace_ray_bneelse_b1432
# B1431
	mv x68, zero
	addi x39, x39, 1
	j trace_ray_cont_b1441 # adhoc jump(2)
trace_ray_bneelse_b1432:
# B1432
	lw x68, 0(x72)
	lw x69, 3(x69)
	fmul x68, x68, x69
	sw x68, 0(x114)
	mv x68, x111
	j trace_ray_cont_b1440 # adhoc jump(2)
trace_ray_beqelse_b1430:
# B1430
	lw x73, 0(x72)
	feq x74, x73, zero
	bne	x74, zero, trace_ray_beqelse_b1434
# B1433
	lw x74, 1(x72)
	fmul x7, x74, x7
	lw x74, 2(x72)
	fmul x70, x74, x70
	fadd x7, x7, x70
	lw x70, 3(x72)
	fmul x70, x70, x71
	fadd x7, x7, x70
	lw x69, 3(x69)
	fmul x70, x7, x7
	fmul x69, x73, x69
	fsub x69, x70, x69
	fle x70, x69, zero
	beq	x70, zero, trace_ray_bneelse_b1436
# B1435
	mv x68, zero
	addi x39, x39, 1
	j trace_ray_cont_b1441 # adhoc jump(2)
trace_ray_bneelse_b1436:
# B1436
	lw x68, 6(x68)
	fsqrt x69, x69
	bne	x68, zero, trace_ray_beqelse_b1438
# B1437
	fsub x68, x7, x69
	lw x69, 4(x72)
	fmul x68, x68, x69
	sw x68, 0(x114)
	j trace_ray_cont_b1439 # adhoc jump(2)
trace_ray_beqelse_b1438:
# B1438
	fadd x68, x7, x69
	lw x69, 4(x72)
	fmul x68, x68, x69
	sw x68, 0(x114)
trace_ray_cont_b1439:
# B1439
	mv x68, x111
trace_ray_cont_b1440:
# B1440
	addi x39, x39, 1
	bne	x68, zero, trace_ray_beqelse_b1442
	j trace_ray_cont_b1441 # adhoc jump(3)
trace_ray_beqelse_b1442:
# B1442
	lw x69, 0(x114)
	fle x7, x69, zero
	bne	x7, zero, trace_ray_beqelse_b1475
# B1446
	lw x7, 0(x108)
	fle x7, x7, x69
	bne	x7, zero, trace_ray_beqelse_b1475
# B1448
	fadd x69, x69, x32
	lw x7, 0(x28)
	fmul x7, x7, x69
	lw x70, 0(x19)
	fadd x7, x7, x70
	lw x70, 1(x28)
	fmul x70, x70, x69
	lw x71, 1(x19)
	fadd x70, x70, x71
	lw x28, 2(x28)
	fmul x28, x28, x69
	lw x71, 2(x19)
	fadd x28, x28, x71
	mv x74, x70
	mv x72, x65
	mv x73, x7
	mv x75, x28
	mv x71, zero
trace_ray_loop_b1449:
# B1449
	add x4, x72, x71
	lw x76, 0(x4)
	bne	x76, x118, trace_ray_beqelse_b1451
# B1450
	mv x77, x111
# B1472
	bne	x77, zero, trace_ray_beqelse_b1474
	j trace_ray_cont_b1473 # adhoc jump(3)
trace_ray_beqelse_b1474:
# B1474
	sw x69, 0(x108)
	sw x7, 0(x26)
	sw x70, 1(x26)
	sw x28, 2(x26)
	sw x67, 0(x10)
	sw x68, 0(x24)
	j trace_ray_cont_b1475 # adhoc jump(2)
trace_ray_beqelse_b1451:
# B1451
	add x4, x11, x76
	lw x76, 0(x4)
	lw x77, 5(x76)
	lw x77, 0(x77)
	fsub x77, x73, x77
	lw x78, 5(x76)
	lw x78, 1(x78)
	fsub x78, x74, x78
	lw x79, 5(x76)
	lw x79, 2(x79)
	fsub x79, x75, x79
	lw x8, 1(x76)
	bne	x8, x111, trace_ray_beqelse_b1453
# B1452
	fabs x77, x77
	lw x8, 4(x76)
	lw x8, 0(x8)
	fle x77, x8, x77
	bne	x77, zero, trace_ray_beqelse_b1459
# B1455
	fabs x77, x78
	lw x78, 4(x76)
	lw x78, 1(x78)
	fle x77, x78, x77
	bne	x77, zero, trace_ray_beqelse_b1459
# B1457
	fabs x77, x79
	lw x78, 4(x76)
	lw x78, 2(x78)
	fle x77, x78, x77
	xori x77, x77, 1
	mv x78, x77
# B1458
	bne	x78, zero, trace_ray_beqelse_b1460
trace_ray_beqelse_b1459:
# B1459
	lw x76, 6(x76)
	xori x76, x76, 1
	j trace_ray_cont_b1469 # adhoc jump(2)
trace_ray_beqelse_b1460:
# B1460
	lw x76, 6(x76)
	j trace_ray_cont_b1469 # adhoc jump(2)
trace_ray_beqelse_b1453:
# B1453
	bne	x8, x12, trace_ray_beqelse_b1462
# B1461
	lw x8, 4(x76)
	lw x80, 0(x8)
	fmul x77, x80, x77
	lw x80, 1(x8)
	fmul x78, x80, x78
	fadd x77, x77, x78
	lw x78, 2(x8)
	fmul x78, x78, x79
	fadd x77, x77, x78
	lw x76, 6(x76)
	fle x77, zero, x77
	xori x77, x77, 1
	xor x76, x76, x77
	xori x76, x76, 1
	j trace_ray_cont_b1469 # adhoc jump(2)
trace_ray_beqelse_b1462:
# B1462
	fmul x8, x77, x77
	lw x80, 4(x76)
	lw x80, 0(x80)
	fmul x8, x8, x80
	fmul x80, x78, x78
	lw x81, 4(x76)
	lw x81, 1(x81)
	fmul x80, x80, x81
	fadd x8, x8, x80
	fmul x80, x79, x79
	lw x81, 4(x76)
	lw x81, 2(x81)
	fmul x80, x80, x81
	fadd x8, x8, x80
	lw x80, 3(x76)
	bne	x80, zero, trace_ray_beqelse_b1464
# B1463
	mv x77, x8
	j trace_ray_cont_b1465 # adhoc jump(2)
trace_ray_beqelse_b1464:
# B1464
	fmul x80, x78, x79
	lw x81, 9(x76)
	lw x81, 0(x81)
	fmul x80, x80, x81
	fadd x8, x8, x80
	fmul x79, x79, x77
	lw x80, 9(x76)
	lw x80, 1(x80)
	fmul x79, x79, x80
	fadd x79, x8, x79
	fmul x77, x77, x78
	lw x78, 9(x76)
	lw x78, 2(x78)
	fmul x77, x77, x78
	fadd x77, x79, x77
trace_ray_cont_b1465:
# B1465
	lw x78, 1(x76)
	bne	x78, x14, trace_ray_beqelse_b1468
# B1466
	fsub x77, x77, x15
trace_ray_beqelse_b1468:
# B1468
	lw x76, 6(x76)
	fle x77, zero, x77
	xori x77, x77, 1
	xor x76, x76, x77
	xori x76, x76, 1
trace_ray_cont_b1469:
# B1469
	bne	x76, zero, trace_ray_beqelse_b1473
# B1470
	addi x71, x71, 1
	j trace_ray_loop_b1449 # loopback to while entry from B1470
trace_ray_beqelse_b1473:
trace_ray_cont_b1473:
# B1473
trace_ray_beqelse_b1475:
trace_ray_cont_b1475:
# B1475
	j trace_ray_loop_b1403 # loopback to while entry from B1475
trace_ray_beqelse_b1434:
# B1434
	mv x68, zero
	addi x39, x39, 1
trace_ray_cont_b1441:
# B1441
	add x4, x11, x67
	lw x28, 0(x4)
	lw x28, 6(x28)
	beq	x28, zero, trace_ray_bneelse_b1476
	j	trace_ray_loop_b1403 # moved need extra jump
trace_ray_bneelse_b1476:
# B1476
	addi x40, x40, 1
	j trace_ray_loop_b1400 # loopback to while entry from B1476
	j trace_ray_loop_b1403 # loopback to while entry from B1441
trace_ray_beqelse_b1477:
trace_ray_bneelse_b1477:
trace_ray_cont_b1477:
# B1477
	addi x36, x36, 1
	j trace_ray_loop_b1279 # loopback to while entry from B1477
trace_ray_bneelse_b1478:
# B1478
	lw x28, 0(x108)
	fle x36, x28, x100
	bne	x36, zero, trace_ray_beqelse_b1482
# B1480
	fle x28, x17, x28
	xori x28, x28, 1
	mv x36, x28
# B1481
	bne	x36, zero, trace_ray_beqelse_b1483
trace_ray_beqelse_b1482:
# B1482
	j trace_ray_cont_b1719 # adhoc jump(2)
trace_ray_beqelse_b1483:
# B1483
	lw x28, 0(x10)
	slli x28, x28, 2
	lw x36, 0(x24)
	add x28, x28, x36
	lw x36, 0(x13)
	bne	x28, x36, trace_ray_beqelse_b1719
# B1484
	lw x28, 0(x110)
	mv x37, x28
	mv x36, zero
trace_ray_loop_b1486:
# B1486
	add x4, x37, x36
	lw x28, 0(x4)
	lw x38, 0(x28)
	beq	x38, x118, trace_ray_bneelse_b1712
# B1488
	bne	x38, x112, trace_ray_beqelse_b1490
# B1489
	mv x38, x111
	j trace_ray_cont_b1622 # adhoc jump(2)
trace_ray_beqelse_b1490:
# B1490
	add x4, x11, x38
	lw x39, 0(x4)
	lw x40, 0(x26)
	lw x5, 5(x39)
	lw x5, 0(x5)
	fsub x40, x40, x5
	lw x5, 1(x26)
	lw x6, 5(x39)
	lw x6, 1(x6)
	fsub x5, x5, x6
	lw x6, 2(x26)
	lw x65, 5(x39)
	lw x65, 2(x65)
	fsub x6, x6, x65
	lw x65, 1(x23)
	add x4, x65, x38
	lw x38, 0(x4)
	lw x65, 1(x39)
	bne	x65, x111, trace_ray_beqelse_b1492
# B1491
	lw x65, 0(x23)
	lw x66, 0(x38)
	fsub x66, x66, x40
	lw x67, 1(x38)
	fmul x66, x66, x67
	lw x67, 1(x65)
	fmul x67, x66, x67
	fadd x67, x67, x5
	fabs x67, x67
	lw x68, 4(x39)
	lw x68, 1(x68)
	fle x67, x68, x67
	bne	x67, zero, trace_ray_beqelse_b1498
# B1494
	lw x67, 2(x65)
	fmul x67, x66, x67
	fadd x67, x67, x6
	fabs x67, x67
	lw x68, 4(x39)
	lw x68, 2(x68)
	fle x67, x68, x67
	bne	x67, zero, trace_ray_beqelse_b1498
# B1496
	lw x67, 1(x38)
	feq x67, x67, zero
	xori x67, x67, 1
	mv x68, x67
# B1497
	bne	x68, zero, trace_ray_beqelse_b1499
trace_ray_beqelse_b1498:
# B1498
	lw x66, 2(x38)
	fsub x66, x66, x5
	lw x67, 3(x38)
	fmul x66, x66, x67
	lw x67, 0(x65)
	fmul x67, x66, x67
	fadd x67, x67, x40
	fabs x67, x67
	lw x68, 4(x39)
	lw x68, 0(x68)
	fle x67, x68, x67
	bne	x67, zero, trace_ray_beqelse_b1505
# B1501
	lw x67, 2(x65)
	fmul x67, x66, x67
	fadd x67, x67, x6
	fabs x67, x67
	lw x68, 4(x39)
	lw x68, 2(x68)
	fle x67, x68, x67
	bne	x67, zero, trace_ray_beqelse_b1505
# B1503
	lw x67, 3(x38)
	feq x67, x67, zero
	xori x67, x67, 1
	mv x68, x67
# B1504
	bne	x68, zero, trace_ray_beqelse_b1506
trace_ray_beqelse_b1505:
# B1505
	lw x66, 4(x38)
	fsub x6, x66, x6
	lw x66, 5(x38)
	fmul x6, x6, x66
	lw x66, 0(x65)
	fmul x66, x6, x66
	fadd x40, x66, x40
	fabs x40, x40
	lw x66, 4(x39)
	lw x66, 0(x66)
	fle x40, x66, x40
	bne	x40, zero, trace_ray_beqelse_b1512
# B1508
	lw x40, 1(x65)
	fmul x40, x6, x40
	fadd x40, x40, x5
	fabs x40, x40
	lw x39, 4(x39)
	lw x39, 1(x39)
	fle x39, x39, x40
	bne	x39, zero, trace_ray_beqelse_b1512
# B1510
	lw x38, 5(x38)
	feq x38, x38, zero
	xori x38, x38, 1
	mv x39, x38
# B1511
	bne	x39, zero, trace_ray_beqelse_b1513
trace_ray_beqelse_b1512:
# B1512
	j trace_ray_cont_b1532 # adhoc jump(2)
trace_ray_beqelse_b1513:
# B1513
	sw x6, 0(x114)
	mv x38, x14
	j trace_ray_cont_b1531 # adhoc jump(2)
trace_ray_beqelse_b1506:
# B1506
	sw x66, 0(x114)
	mv x38, x12
	j trace_ray_cont_b1531 # adhoc jump(2)
trace_ray_beqelse_b1499:
# B1499
	sw x66, 0(x114)
	mv x38, x111
	j trace_ray_cont_b1531 # adhoc jump(2)
trace_ray_beqelse_b1492:
# B1492
	bne	x65, x12, trace_ray_beqelse_b1515
# B1514
	lw x39, 0(x38)
	fle x39, zero, x39
	bne	x39, zero, trace_ray_beqelse_b1532
# B1517
	lw x39, 1(x38)
	fmul x39, x39, x40
	lw x40, 2(x38)
	fmul x40, x40, x5
	fadd x39, x39, x40
	lw x38, 3(x38)
	fmul x38, x38, x6
	fadd x38, x39, x38
	sw x38, 0(x114)
	mv x38, x111
	j trace_ray_cont_b1531 # adhoc jump(2)
trace_ray_beqelse_b1515:
# B1515
	lw x65, 0(x38)
	feq x66, x65, zero
	bne	x66, zero, trace_ray_beqelse_b1532
# B1518
	lw x66, 1(x38)
	fmul x66, x66, x40
	lw x67, 2(x38)
	fmul x67, x67, x5
	fadd x66, x66, x67
	lw x67, 3(x38)
	fmul x67, x67, x6
	fadd x66, x66, x67
	fmul x67, x40, x40
	lw x68, 4(x39)
	lw x68, 0(x68)
	fmul x67, x67, x68
	fmul x68, x5, x5
	lw x69, 4(x39)
	lw x69, 1(x69)
	fmul x68, x68, x69
	fadd x67, x67, x68
	fmul x68, x6, x6
	lw x69, 4(x39)
	lw x69, 2(x69)
	fmul x68, x68, x69
	fadd x67, x67, x68
	lw x68, 3(x39)
	bne	x68, zero, trace_ray_beqelse_b1521
# B1520
	mv x40, x67
	j trace_ray_cont_b1522 # adhoc jump(2)
trace_ray_beqelse_b1521:
# B1521
	fmul x68, x5, x6
	lw x69, 9(x39)
	lw x69, 0(x69)
	fmul x68, x68, x69
	fadd x67, x67, x68
	fmul x6, x6, x40
	lw x68, 9(x39)
	lw x68, 1(x68)
	fmul x6, x6, x68
	fadd x6, x67, x6
	fmul x40, x40, x5
	lw x5, 9(x39)
	lw x5, 2(x5)
	fmul x40, x40, x5
	fadd x40, x6, x40
trace_ray_cont_b1522:
# B1522
	lw x5, 1(x39)
	bne	x5, x14, trace_ray_beqelse_b1525
# B1523
	fsub x40, x40, x15
trace_ray_beqelse_b1525:
# B1525
	fmul x5, x66, x66
	fmul x40, x65, x40
	fsub x40, x5, x40
	fle x5, x40, zero
	bne	x5, zero, trace_ray_beqelse_b1532
# B1527
	lw x39, 6(x39)
	fsqrt x40, x40
	bne	x39, zero, trace_ray_beqelse_b1529
# B1528
	fsub x39, x66, x40
	lw x38, 4(x38)
	fmul x38, x39, x38
	sw x38, 0(x114)
	j trace_ray_cont_b1530 # adhoc jump(2)
trace_ray_beqelse_b1529:
# B1529
	fadd x39, x66, x40
	lw x38, 4(x38)
	fmul x38, x39, x38
	sw x38, 0(x114)
trace_ray_cont_b1530:
# B1530
	mv x38, x111
trace_ray_cont_b1531:
# B1531
	bne	x38, zero, trace_ray_beqelse_b1533
trace_ray_beqelse_b1532:
trace_ray_cont_b1532:
# B1532
	addi x36, x36, 1
	j trace_ray_cont_b1623 # adhoc jump(2)
trace_ray_beqelse_b1533:
# B1533
	lw x38, 0(x114)
	fle x38, x100, x38
	beq	x38, zero, trace_ray_bneelse_b1535
# B1534
	addi x36, x36, 1
	j trace_ray_cont_b1623 # adhoc jump(2)
trace_ray_bneelse_b1535:
# B1535
	mv x40, x28
	mv x39, x111
trace_ray_loop_b1536:
# B1536
	add x4, x40, x39
	lw x38, 0(x4)
	beq	x38, x118, trace_ray_bneelse_b1620
# B1538
	add x4, x119, x38
	lw x38, 0(x4)
	mv x6, x38
	mv x5, zero
trace_ray_loop_b1539:
# B1539
	add x4, x6, x5
	lw x38, 0(x4)
	beq	x38, x118, trace_ray_bneelse_b1617
# B1541
	add x4, x6, x5
	lw x38, 0(x4)
	add x4, x11, x38
	lw x65, 0(x4)
	lw x66, 0(x26)
	lw x67, 5(x65)
	lw x67, 0(x67)
	fsub x66, x66, x67
	lw x67, 1(x26)
	lw x68, 5(x65)
	lw x68, 1(x68)
	fsub x67, x67, x68
	lw x68, 2(x26)
	lw x69, 5(x65)
	lw x69, 2(x69)
	fsub x68, x68, x69
	lw x69, 1(x23)
	add x4, x69, x38
	lw x69, 0(x4)
	lw x7, 1(x65)
	bne	x7, x111, trace_ray_beqelse_b1543
# B1542
	lw x7, 0(x23)
	lw x70, 0(x69)
	fsub x70, x70, x66
	lw x71, 1(x69)
	fmul x70, x70, x71
	lw x71, 1(x7)
	fmul x71, x70, x71
	fadd x71, x71, x67
	fabs x71, x71
	lw x72, 4(x65)
	lw x72, 1(x72)
	fle x71, x72, x71
	bne	x71, zero, trace_ray_beqelse_b1549
# B1545
	lw x71, 2(x7)
	fmul x71, x70, x71
	fadd x71, x71, x68
	fabs x71, x71
	lw x72, 4(x65)
	lw x72, 2(x72)
	fle x71, x72, x71
	bne	x71, zero, trace_ray_beqelse_b1549
# B1547
	lw x71, 1(x69)
	feq x71, x71, zero
	xori x71, x71, 1
	mv x72, x71
# B1548
	bne	x72, zero, trace_ray_beqelse_b1550
trace_ray_beqelse_b1549:
# B1549
	lw x70, 2(x69)
	fsub x70, x70, x67
	lw x71, 3(x69)
	fmul x70, x70, x71
	lw x71, 0(x7)
	fmul x71, x70, x71
	fadd x71, x71, x66
	fabs x71, x71
	lw x72, 4(x65)
	lw x72, 0(x72)
	fle x71, x72, x71
	bne	x71, zero, trace_ray_beqelse_b1556
# B1552
	lw x71, 2(x7)
	fmul x71, x70, x71
	fadd x71, x71, x68
	fabs x71, x71
	lw x72, 4(x65)
	lw x72, 2(x72)
	fle x71, x72, x71
	bne	x71, zero, trace_ray_beqelse_b1556
# B1554
	lw x71, 3(x69)
	feq x71, x71, zero
	xori x71, x71, 1
	mv x72, x71
# B1555
	bne	x72, zero, trace_ray_beqelse_b1557
trace_ray_beqelse_b1556:
# B1556
	lw x70, 4(x69)
	fsub x68, x70, x68
	lw x70, 5(x69)
	fmul x68, x68, x70
	lw x70, 0(x7)
	fmul x70, x68, x70
	fadd x66, x70, x66
	fabs x66, x66
	lw x70, 4(x65)
	lw x70, 0(x70)
	fle x66, x70, x66
	bne	x66, zero, trace_ray_beqelse_b1563
# B1559
	lw x66, 1(x7)
	fmul x66, x68, x66
	fadd x66, x66, x67
	fabs x66, x66
	lw x65, 4(x65)
	lw x65, 1(x65)
	fle x65, x65, x66
	bne	x65, zero, trace_ray_beqelse_b1563
# B1561
	lw x65, 5(x69)
	feq x65, x65, zero
	xori x65, x65, 1
	mv x66, x65
# B1562
	bne	x66, zero, trace_ray_beqelse_b1564
trace_ray_beqelse_b1563:
# B1563
	lw x66, 0(x114)
	j trace_ray_cont_b1583 # adhoc jump(2)
trace_ray_beqelse_b1564:
# B1564
	sw x68, 0(x114)
	mv x65, x14
	j trace_ray_cont_b1582 # adhoc jump(2)
trace_ray_beqelse_b1557:
# B1557
	sw x70, 0(x114)
	mv x65, x12
	j trace_ray_cont_b1582 # adhoc jump(2)
trace_ray_beqelse_b1550:
# B1550
	sw x70, 0(x114)
	mv x65, x111
	j trace_ray_cont_b1582 # adhoc jump(2)
trace_ray_beqelse_b1543:
# B1543
	bne	x7, x12, trace_ray_beqelse_b1566
# B1565
	lw x65, 0(x69)
	fle x65, zero, x65
	beq	x65, zero, trace_ray_bneelse_b1568
# B1567
	lw x66, 0(x114)
	j trace_ray_cont_b1583 # adhoc jump(2)
trace_ray_bneelse_b1568:
# B1568
	lw x65, 1(x69)
	fmul x65, x65, x66
	lw x66, 2(x69)
	fmul x66, x66, x67
	fadd x65, x65, x66
	lw x66, 3(x69)
	fmul x66, x66, x68
	fadd x65, x65, x66
	sw x65, 0(x114)
	mv x65, x111
	j trace_ray_cont_b1582 # adhoc jump(2)
trace_ray_beqelse_b1566:
# B1566
	lw x7, 0(x69)
	feq x70, x7, zero
	bne	x70, zero, trace_ray_beqelse_b1570
# B1569
	lw x70, 1(x69)
	fmul x70, x70, x66
	lw x71, 2(x69)
	fmul x71, x71, x67
	fadd x70, x70, x71
	lw x71, 3(x69)
	fmul x71, x71, x68
	fadd x70, x70, x71
	fmul x71, x66, x66
	lw x72, 4(x65)
	lw x72, 0(x72)
	fmul x71, x71, x72
	fmul x72, x67, x67
	lw x73, 4(x65)
	lw x73, 1(x73)
	fmul x72, x72, x73
	fadd x71, x71, x72
	fmul x72, x68, x68
	lw x73, 4(x65)
	lw x73, 2(x73)
	fmul x72, x72, x73
	fadd x71, x71, x72
	lw x72, 3(x65)
	bne	x72, zero, trace_ray_beqelse_b1572
# B1571
	mv x66, x71
	j trace_ray_cont_b1573 # adhoc jump(2)
trace_ray_beqelse_b1572:
# B1572
	fmul x72, x67, x68
	lw x73, 9(x65)
	lw x73, 0(x73)
	fmul x72, x72, x73
	fadd x71, x71, x72
	fmul x68, x68, x66
	lw x72, 9(x65)
	lw x72, 1(x72)
	fmul x68, x68, x72
	fadd x68, x71, x68
	fmul x66, x66, x67
	lw x67, 9(x65)
	lw x67, 2(x67)
	fmul x66, x66, x67
	fadd x66, x68, x66
trace_ray_cont_b1573:
# B1573
	lw x67, 1(x65)
	bne	x67, x14, trace_ray_beqelse_b1576
# B1574
	fsub x66, x66, x15
trace_ray_beqelse_b1576:
# B1576
	fmul x67, x70, x70
	fmul x66, x7, x66
	fsub x66, x67, x66
	fle x67, x66, zero
	beq	x67, zero, trace_ray_bneelse_b1578
# B1577
	lw x66, 0(x114)
	j trace_ray_cont_b1583 # adhoc jump(2)
trace_ray_bneelse_b1578:
# B1578
	lw x65, 6(x65)
	fsqrt x66, x66
	bne	x65, zero, trace_ray_beqelse_b1580
# B1579
	fsub x65, x70, x66
	lw x66, 4(x69)
	fmul x65, x65, x66
	sw x65, 0(x114)
	j trace_ray_cont_b1581 # adhoc jump(2)
trace_ray_beqelse_b1580:
# B1580
	fadd x65, x70, x66
	lw x66, 4(x69)
	fmul x65, x65, x66
	sw x65, 0(x114)
trace_ray_cont_b1581:
# B1581
	mv x65, x111
trace_ray_cont_b1582:
# B1582
	lw x66, 0(x114)
	bne	x65, zero, trace_ray_beqelse_b1584
	j trace_ray_cont_b1583 # adhoc jump(3)
trace_ray_beqelse_b1584:
# B1584
	fle x65, x31, x66
	xori x65, x65, 1
# B1585
	addi x5, x5, 1
	bne	x65, zero, trace_ray_beqelse_b1587
	j trace_ray_cont_b1586 # adhoc jump(3)
trace_ray_beqelse_b1587:
# B1587
	fadd x38, x66, x32
	lw x65, 0(x16)
	fmul x65, x65, x38
	lw x66, 0(x26)
	fadd x65, x65, x66
	lw x66, 1(x16)
	fmul x66, x66, x38
	lw x67, 1(x26)
	fadd x66, x66, x67
	lw x67, 2(x16)
	fmul x38, x67, x38
	lw x67, 2(x26)
	fadd x38, x38, x67
	mv x70, x38
	mv x7, x66
	mv x67, zero
	mv x68, x6
	mv x69, x65
trace_ray_loop_b1590:
# B1590
	add x4, x68, x67
	lw x38, 0(x4)
	bne	x38, x118, trace_ray_beqelse_b1592
# B1591
	mv x65, x111
# B1613
	bne	x65, zero, trace_ray_beqelse_b1615
	j trace_ray_cont_b1614 # adhoc jump(3)
trace_ray_beqelse_b1615:
# B1615
	mv x38, x111
# B1616
	bne	x38, zero, trace_ray_beqelse_b1618
	j trace_ray_cont_b1617 # adhoc jump(3)
trace_ray_beqelse_b1618:
# B1618
	mv x5, x111
# B1619
	bne	x5, zero, trace_ray_beqelse_b1621
trace_ray_bneelse_b1620:
# B1620
	addi x36, x36, 1
	j trace_ray_cont_b1623 # adhoc jump(2)
trace_ray_beqelse_b1621:
# B1621
	mv x38, x111
trace_ray_cont_b1622:
# B1622
	addi x36, x36, 1
	bne	x38, zero, trace_ray_beqelse_b1624
trace_ray_cont_b1623:
# B1623
	j trace_ray_loop_b1486 # loopback to while entry from B1623
trace_ray_beqelse_b1624:
# B1624
	mv x40, x28
	mv x39, x111
trace_ray_loop_b1625:
# B1625
	add x4, x40, x39
	lw x28, 0(x4)
	beq	x28, x118, trace_ray_bneelse_b1709
# B1627
	add x4, x119, x28
	lw x28, 0(x4)
	mv x38, zero
	mv x5, x28
trace_ray_loop_b1628:
# B1628
	add x4, x5, x38
	lw x28, 0(x4)
	beq	x28, x118, trace_ray_bneelse_b1706
# B1630
	add x4, x5, x38
	lw x28, 0(x4)
	add x4, x11, x28
	lw x6, 0(x4)
	lw x65, 0(x26)
	lw x66, 5(x6)
	lw x66, 0(x66)
	fsub x65, x65, x66
	lw x66, 1(x26)
	lw x67, 5(x6)
	lw x67, 1(x67)
	fsub x66, x66, x67
	lw x67, 2(x26)
	lw x68, 5(x6)
	lw x68, 2(x68)
	fsub x67, x67, x68
	lw x68, 1(x23)
	add x4, x68, x28
	lw x68, 0(x4)
	lw x69, 1(x6)
	bne	x69, x111, trace_ray_beqelse_b1632
# B1631
	lw x69, 0(x23)
	lw x7, 0(x68)
	fsub x7, x7, x65
	lw x70, 1(x68)
	fmul x7, x7, x70
	lw x70, 1(x69)
	fmul x70, x7, x70
	fadd x70, x70, x66
	fabs x70, x70
	lw x71, 4(x6)
	lw x71, 1(x71)
	fle x70, x71, x70
	bne	x70, zero, trace_ray_beqelse_b1638
# B1634
	lw x70, 2(x69)
	fmul x70, x7, x70
	fadd x70, x70, x67
	fabs x70, x70
	lw x71, 4(x6)
	lw x71, 2(x71)
	fle x70, x71, x70
	bne	x70, zero, trace_ray_beqelse_b1638
# B1636
	lw x70, 1(x68)
	feq x70, x70, zero
	xori x70, x70, 1
	mv x71, x70
# B1637
	bne	x71, zero, trace_ray_beqelse_b1639
trace_ray_beqelse_b1638:
# B1638
	lw x7, 2(x68)
	fsub x7, x7, x66
	lw x70, 3(x68)
	fmul x7, x7, x70
	lw x70, 0(x69)
	fmul x70, x7, x70
	fadd x70, x70, x65
	fabs x70, x70
	lw x71, 4(x6)
	lw x71, 0(x71)
	fle x70, x71, x70
	bne	x70, zero, trace_ray_beqelse_b1645
# B1641
	lw x70, 2(x69)
	fmul x70, x7, x70
	fadd x70, x70, x67
	fabs x70, x70
	lw x71, 4(x6)
	lw x71, 2(x71)
	fle x70, x71, x70
	bne	x70, zero, trace_ray_beqelse_b1645
# B1643
	lw x70, 3(x68)
	feq x70, x70, zero
	xori x70, x70, 1
	mv x71, x70
# B1644
	bne	x71, zero, trace_ray_beqelse_b1646
trace_ray_beqelse_b1645:
# B1645
	lw x7, 4(x68)
	fsub x67, x7, x67
	lw x7, 5(x68)
	fmul x67, x67, x7
	lw x7, 0(x69)
	fmul x7, x67, x7
	fadd x65, x7, x65
	fabs x65, x65
	lw x7, 4(x6)
	lw x7, 0(x7)
	fle x65, x7, x65
	bne	x65, zero, trace_ray_beqelse_b1652
# B1648
	lw x65, 1(x69)
	fmul x65, x67, x65
	fadd x65, x65, x66
	fabs x65, x65
	lw x6, 4(x6)
	lw x6, 1(x6)
	fle x6, x6, x65
	bne	x6, zero, trace_ray_beqelse_b1652
# B1650
	lw x6, 5(x68)
	feq x6, x6, zero
	xori x6, x6, 1
	mv x65, x6
# B1651
	bne	x65, zero, trace_ray_beqelse_b1653
trace_ray_beqelse_b1652:
# B1652
	lw x65, 0(x114)
	j trace_ray_cont_b1672 # adhoc jump(2)
trace_ray_beqelse_b1653:
# B1653
	sw x67, 0(x114)
	mv x6, x14
	j trace_ray_cont_b1671 # adhoc jump(2)
trace_ray_beqelse_b1646:
# B1646
	sw x7, 0(x114)
	mv x6, x12
	j trace_ray_cont_b1671 # adhoc jump(2)
trace_ray_beqelse_b1639:
# B1639
	sw x7, 0(x114)
	mv x6, x111
	j trace_ray_cont_b1671 # adhoc jump(2)
trace_ray_beqelse_b1632:
# B1632
	bne	x69, x12, trace_ray_beqelse_b1655
# B1654
	lw x6, 0(x68)
	fle x6, zero, x6
	beq	x6, zero, trace_ray_bneelse_b1657
# B1656
	lw x65, 0(x114)
	j trace_ray_cont_b1672 # adhoc jump(2)
trace_ray_bneelse_b1657:
# B1657
	lw x6, 1(x68)
	fmul x6, x6, x65
	lw x65, 2(x68)
	fmul x65, x65, x66
	fadd x6, x6, x65
	lw x65, 3(x68)
	fmul x65, x65, x67
	fadd x6, x6, x65
	sw x6, 0(x114)
	mv x6, x111
	j trace_ray_cont_b1671 # adhoc jump(2)
trace_ray_beqelse_b1655:
# B1655
	lw x69, 0(x68)
	feq x7, x69, zero
	bne	x7, zero, trace_ray_beqelse_b1659
# B1658
	lw x7, 1(x68)
	fmul x7, x7, x65
	lw x70, 2(x68)
	fmul x70, x70, x66
	fadd x7, x7, x70
	lw x70, 3(x68)
	fmul x70, x70, x67
	fadd x7, x7, x70
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
	bne	x71, zero, trace_ray_beqelse_b1661
# B1660
	mv x65, x70
	j trace_ray_cont_b1662 # adhoc jump(2)
trace_ray_beqelse_b1661:
# B1661
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
trace_ray_cont_b1662:
# B1662
	lw x66, 1(x6)
	bne	x66, x14, trace_ray_beqelse_b1665
# B1663
	fsub x65, x65, x15
trace_ray_beqelse_b1665:
# B1665
	fmul x66, x7, x7
	fmul x65, x69, x65
	fsub x65, x66, x65
	fle x66, x65, zero
	beq	x66, zero, trace_ray_bneelse_b1667
# B1666
	lw x65, 0(x114)
	j trace_ray_cont_b1672 # adhoc jump(2)
trace_ray_bneelse_b1667:
# B1667
	lw x6, 6(x6)
	fsqrt x65, x65
	bne	x6, zero, trace_ray_beqelse_b1669
# B1668
	fsub x6, x7, x65
	lw x65, 4(x68)
	fmul x6, x6, x65
	sw x6, 0(x114)
	j trace_ray_cont_b1670 # adhoc jump(2)
trace_ray_beqelse_b1669:
# B1669
	fadd x6, x7, x65
	lw x65, 4(x68)
	fmul x6, x6, x65
	sw x6, 0(x114)
trace_ray_cont_b1670:
# B1670
	mv x6, x111
trace_ray_cont_b1671:
# B1671
	lw x65, 0(x114)
	bne	x6, zero, trace_ray_beqelse_b1673
	j trace_ray_cont_b1672 # adhoc jump(3)
trace_ray_beqelse_b1673:
# B1673
	fle x6, x31, x65
	xori x6, x6, 1
# B1674
	addi x38, x38, 1
	bne	x6, zero, trace_ray_beqelse_b1676
	j trace_ray_cont_b1675 # adhoc jump(3)
trace_ray_beqelse_b1676:
# B1676
	fadd x28, x65, x32
	lw x6, 0(x16)
	fmul x6, x6, x28
	lw x65, 0(x26)
	fadd x6, x6, x65
	lw x65, 1(x16)
	fmul x65, x65, x28
	lw x66, 1(x26)
	fadd x65, x65, x66
	lw x66, 2(x16)
	fmul x28, x66, x28
	lw x66, 2(x26)
	fadd x28, x28, x66
	mv x66, zero
	mv x7, x28
	mv x67, x5
	mv x68, x6
	mv x69, x65
trace_ray_loop_b1679:
# B1679
	add x4, x67, x66
	lw x28, 0(x4)
	bne	x28, x118, trace_ray_beqelse_b1681
# B1680
	mv x6, x111
# B1702
	bne	x6, zero, trace_ray_beqelse_b1704
	j trace_ray_cont_b1703 # adhoc jump(3)
trace_ray_beqelse_b1704:
# B1704
	mv x28, x111
# B1705
	bne	x28, zero, trace_ray_beqelse_b1707
	j trace_ray_cont_b1706 # adhoc jump(3)
trace_ray_beqelse_b1707:
# B1707
	mv x38, x111
# B1708
	bne	x38, zero, trace_ray_beqelse_b1710
trace_ray_bneelse_b1709:
# B1709
	j trace_ray_loop_b1486 # loopback to while entry from B1709
trace_ray_beqelse_b1710:
# B1710
	mv x28, x111
# B1711
	bne	x28, zero, trace_ray_beqelse_b1719
trace_ray_bneelse_b1712:
# B1712
	lw x28, 0(x22)
	lw x36, 0(x25)
	lw x37, 0(x28)
	fmul x36, x36, x37
	lw x37, 1(x25)
	lw x38, 1(x28)
	fmul x37, x37, x38
	fadd x36, x36, x37
	lw x37, 2(x25)
	lw x28, 2(x28)
	fmul x28, x37, x28
	fadd x28, x36, x28
	lw x13, 2(x13)
	fmul x36, x13, x33
	fmul x28, x36, x28
	lw x22, 0(x22)
	lw x36, 0(x35)
	lw x37, 0(x22)
	fmul x36, x36, x37
	lw x37, 1(x35)
	lw x38, 1(x22)
	fmul x37, x37, x38
	fadd x36, x36, x37
	lw x37, 2(x35)
	lw x22, 2(x22)
	fmul x22, x37, x22
	fadd x22, x36, x22
	fmul x13, x13, x22
	fle x22, x28, zero
	bne	x22, zero, trace_ray_beqelse_b1716
# B1715
	lw x22, 0(x18)
	lw x36, 0(x27)
	fmul x36, x28, x36
	fadd x22, x22, x36
	sw x22, 0(x18)
	lw x22, 1(x18)
	lw x36, 1(x27)
	fmul x36, x28, x36
	fadd x22, x22, x36
	sw x22, 1(x18)
	lw x22, 2(x18)
	lw x36, 2(x27)
	fmul x28, x28, x36
	fadd x22, x22, x28
	sw x22, 2(x18)
trace_ray_beqelse_b1716:
# B1716
	fle x22, x13, zero
	bne	x22, zero, trace_ray_beqelse_b1719
# B1718
	fmul x13, x13, x13
	fmul x13, x13, x13
	fmul x13, x13, x34
	lw x22, 0(x18)
	fadd x22, x22, x13
	sw x22, 0(x18)
	lw x22, 1(x18)
	fadd x22, x22, x13
	sw x22, 1(x18)
	lw x22, 2(x18)
	fadd x13, x22, x13
	sw x13, 2(x18)
trace_ray_beqelse_b1719:
trace_ray_cont_b1719:
# B1719
	addi x30, x30, -1
	j trace_ray_loop_b1276 # loopback to while entry from B1719
trace_ray_beqelse_b1681:
# B1681
	add x4, x11, x28
	lw x28, 0(x4)
	lw x6, 5(x28)
	lw x6, 0(x6)
	fsub x6, x68, x6
	lw x65, 5(x28)
	lw x65, 1(x65)
	fsub x65, x69, x65
	lw x70, 5(x28)
	lw x70, 2(x70)
	fsub x70, x7, x70
	lw x71, 1(x28)
	bne	x71, x111, trace_ray_beqelse_b1683
# B1682
	fabs x6, x6
	lw x71, 4(x28)
	lw x71, 0(x71)
	fle x6, x71, x6
	bne	x6, zero, trace_ray_beqelse_b1689
# B1685
	fabs x6, x65
	lw x65, 4(x28)
	lw x65, 1(x65)
	fle x6, x65, x6
	bne	x6, zero, trace_ray_beqelse_b1689
# B1687
	fabs x6, x70
	lw x65, 4(x28)
	lw x65, 2(x65)
	fle x6, x65, x6
	xori x6, x6, 1
	mv x65, x6
# B1688
	bne	x65, zero, trace_ray_beqelse_b1690
trace_ray_beqelse_b1689:
# B1689
	lw x28, 6(x28)
	xori x28, x28, 1
	j trace_ray_cont_b1699 # adhoc jump(2)
trace_ray_beqelse_b1690:
# B1690
	lw x28, 6(x28)
	j trace_ray_cont_b1699 # adhoc jump(2)
trace_ray_beqelse_b1683:
# B1683
	bne	x71, x12, trace_ray_beqelse_b1692
# B1691
	lw x71, 4(x28)
	lw x72, 0(x71)
	fmul x6, x72, x6
	lw x72, 1(x71)
	fmul x65, x72, x65
	fadd x6, x6, x65
	lw x65, 2(x71)
	fmul x65, x65, x70
	fadd x6, x6, x65
	lw x28, 6(x28)
	fle x6, zero, x6
	xori x6, x6, 1
	xor x28, x28, x6
	xori x28, x28, 1
	j trace_ray_cont_b1699 # adhoc jump(2)
trace_ray_beqelse_b1692:
# B1692
	fmul x71, x6, x6
	lw x72, 4(x28)
	lw x72, 0(x72)
	fmul x71, x71, x72
	fmul x72, x65, x65
	lw x73, 4(x28)
	lw x73, 1(x73)
	fmul x72, x72, x73
	fadd x71, x71, x72
	fmul x72, x70, x70
	lw x73, 4(x28)
	lw x73, 2(x73)
	fmul x72, x72, x73
	fadd x71, x71, x72
	lw x72, 3(x28)
	bne	x72, zero, trace_ray_beqelse_b1694
# B1693
	mv x6, x71
	j trace_ray_cont_b1695 # adhoc jump(2)
trace_ray_beqelse_b1694:
# B1694
	fmul x72, x65, x70
	lw x73, 9(x28)
	lw x73, 0(x73)
	fmul x72, x72, x73
	fadd x71, x71, x72
	fmul x70, x70, x6
	lw x72, 9(x28)
	lw x72, 1(x72)
	fmul x70, x70, x72
	fadd x70, x71, x70
	fmul x6, x6, x65
	lw x65, 9(x28)
	lw x65, 2(x65)
	fmul x6, x6, x65
	fadd x6, x70, x6
trace_ray_cont_b1695:
# B1695
	lw x65, 1(x28)
	bne	x65, x14, trace_ray_beqelse_b1698
# B1696
	fsub x6, x6, x15
trace_ray_beqelse_b1698:
# B1698
	lw x28, 6(x28)
	fle x6, zero, x6
	xori x6, x6, 1
	xor x28, x28, x6
	xori x28, x28, 1
trace_ray_cont_b1699:
# B1699
	bne	x28, zero, trace_ray_beqelse_b1703
# B1700
	addi x66, x66, 1
	j trace_ray_loop_b1679 # loopback to while entry from B1700
trace_ray_beqelse_b1703:
trace_ray_cont_b1703:
# B1703
	j trace_ray_loop_b1628 # loopback to while entry from B1703
trace_ray_beqelse_b1659:
# B1659
	lw x65, 0(x114)
trace_ray_cont_b1672:
# B1672
	addi x38, x38, 1
trace_ray_cont_b1675:
# B1675
	add x4, x11, x28
	lw x28, 0(x4)
	lw x28, 6(x28)
	beq	x28, zero, trace_ray_bneelse_b1706
	j	trace_ray_loop_b1628 # moved need extra jump
trace_ray_bneelse_b1706:
trace_ray_cont_b1706:
# B1706
	addi x39, x39, 1
	j trace_ray_loop_b1625 # loopback to while entry from B1706
	j trace_ray_loop_b1628 # loopback to while entry from B1675
trace_ray_beqelse_b1592:
# B1592
	add x4, x11, x38
	lw x38, 0(x4)
	lw x65, 5(x38)
	lw x65, 0(x65)
	fsub x65, x69, x65
	lw x66, 5(x38)
	lw x66, 1(x66)
	fsub x66, x7, x66
	lw x71, 5(x38)
	lw x71, 2(x71)
	fsub x71, x70, x71
	lw x72, 1(x38)
	bne	x72, x111, trace_ray_beqelse_b1594
# B1593
	fabs x65, x65
	lw x72, 4(x38)
	lw x72, 0(x72)
	fle x65, x72, x65
	bne	x65, zero, trace_ray_beqelse_b1600
# B1596
	fabs x65, x66
	lw x66, 4(x38)
	lw x66, 1(x66)
	fle x65, x66, x65
	bne	x65, zero, trace_ray_beqelse_b1600
# B1598
	fabs x65, x71
	lw x66, 4(x38)
	lw x66, 2(x66)
	fle x65, x66, x65
	xori x65, x65, 1
	mv x66, x65
# B1599
	bne	x66, zero, trace_ray_beqelse_b1601
trace_ray_beqelse_b1600:
# B1600
	lw x38, 6(x38)
	xori x38, x38, 1
	j trace_ray_cont_b1610 # adhoc jump(2)
trace_ray_beqelse_b1601:
# B1601
	lw x38, 6(x38)
	j trace_ray_cont_b1610 # adhoc jump(2)
trace_ray_beqelse_b1594:
# B1594
	bne	x72, x12, trace_ray_beqelse_b1603
# B1602
	lw x72, 4(x38)
	lw x73, 0(x72)
	fmul x65, x73, x65
	lw x73, 1(x72)
	fmul x66, x73, x66
	fadd x65, x65, x66
	lw x66, 2(x72)
	fmul x66, x66, x71
	fadd x65, x65, x66
	lw x38, 6(x38)
	fle x65, zero, x65
	xori x65, x65, 1
	xor x38, x38, x65
	xori x38, x38, 1
	j trace_ray_cont_b1610 # adhoc jump(2)
trace_ray_beqelse_b1603:
# B1603
	fmul x72, x65, x65
	lw x73, 4(x38)
	lw x73, 0(x73)
	fmul x72, x72, x73
	fmul x73, x66, x66
	lw x74, 4(x38)
	lw x74, 1(x74)
	fmul x73, x73, x74
	fadd x72, x72, x73
	fmul x73, x71, x71
	lw x74, 4(x38)
	lw x74, 2(x74)
	fmul x73, x73, x74
	fadd x72, x72, x73
	lw x73, 3(x38)
	bne	x73, zero, trace_ray_beqelse_b1605
# B1604
	mv x65, x72
	j trace_ray_cont_b1606 # adhoc jump(2)
trace_ray_beqelse_b1605:
# B1605
	fmul x73, x66, x71
	lw x74, 9(x38)
	lw x74, 0(x74)
	fmul x73, x73, x74
	fadd x72, x72, x73
	fmul x71, x71, x65
	lw x73, 9(x38)
	lw x73, 1(x73)
	fmul x71, x71, x73
	fadd x71, x72, x71
	fmul x65, x65, x66
	lw x66, 9(x38)
	lw x66, 2(x66)
	fmul x65, x65, x66
	fadd x65, x71, x65
trace_ray_cont_b1606:
# B1606
	lw x66, 1(x38)
	bne	x66, x14, trace_ray_beqelse_b1609
# B1607
	fsub x65, x65, x15
trace_ray_beqelse_b1609:
# B1609
	lw x38, 6(x38)
	fle x65, zero, x65
	xori x65, x65, 1
	xor x38, x38, x65
	xori x38, x38, 1
trace_ray_cont_b1610:
# B1610
	bne	x38, zero, trace_ray_beqelse_b1614
# B1611
	addi x67, x67, 1
	j trace_ray_loop_b1590 # loopback to while entry from B1611
trace_ray_beqelse_b1614:
trace_ray_cont_b1614:
# B1614
	j trace_ray_loop_b1539 # loopback to while entry from B1614
trace_ray_beqelse_b1570:
# B1570
	lw x66, 0(x114)
trace_ray_cont_b1583:
# B1583
	addi x5, x5, 1
trace_ray_cont_b1586:
# B1586
	add x4, x11, x38
	lw x38, 0(x4)
	lw x38, 6(x38)
	beq	x38, zero, trace_ray_bneelse_b1617
	j	trace_ray_loop_b1539 # moved need extra jump
trace_ray_bneelse_b1617:
trace_ray_cont_b1617:
# B1617
	addi x39, x39, 1
	j trace_ray_loop_b1536 # loopback to while entry from B1617
	j trace_ray_loop_b1539 # loopback to while entry from B1586
trace_ray_bleelse_b1720:
# B1720
	lui x10, 253133
	addi x10, x10, -819
	fle x10, x102, x10
	beq	x10, zero, trace_ray_bneelse_b1722
# B1721
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
	ret
trace_ray_bneelse_b1722:
# B1722
	addi x10, x101, 1
	bge	x101, x106, trace_ray_bgtelse_b1725
# B1724
	add x4, x107, x10
	sw x118, 0(x4)
trace_ray_bgtelse_b1725:
# B1725
	bne	x21, x12, trace_ray_beqelse_b1727
# B1726
	lw x100, 7(x20)
	lw x100, 0(x100)
	fsub x100, x15, x100
	lw x11, 0(x108)
	mv x101, x10
	fmul x102, x102, x100
	fadd x105, x105, x11
	j trace_ray_loop_b827 # loopback to while entry from B1726
trace_ray_beqelse_b1727:
# B1727
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
	ret
trace_ray_beqelse_b1222:
# B1222
	add x4, x11, x19
	lw x19, 0(x4)
	lw x36, 5(x19)
	lw x36, 0(x36)
	fsub x36, x40, x36
	lw x37, 5(x19)
	lw x37, 1(x37)
	fsub x37, x5, x37
	lw x65, 5(x19)
	lw x65, 2(x65)
	fsub x65, x6, x65
	lw x66, 1(x19)
	bne	x66, x111, trace_ray_beqelse_b1224
# B1223
	fabs x36, x36
	lw x66, 4(x19)
	lw x66, 0(x66)
	fle x36, x66, x36
	bne	x36, zero, trace_ray_beqelse_b1230
# B1226
	fabs x36, x37
	lw x37, 4(x19)
	lw x37, 1(x37)
	fle x36, x37, x36
	bne	x36, zero, trace_ray_beqelse_b1230
# B1228
	fabs x36, x65
	lw x37, 4(x19)
	lw x37, 2(x37)
	fle x36, x37, x36
	xori x36, x36, 1
	mv x37, x36
# B1229
	bne	x37, zero, trace_ray_beqelse_b1231
trace_ray_beqelse_b1230:
# B1230
	lw x19, 6(x19)
	xori x19, x19, 1
	j trace_ray_cont_b1240 # adhoc jump(2)
trace_ray_beqelse_b1231:
# B1231
	lw x19, 6(x19)
	j trace_ray_cont_b1240 # adhoc jump(2)
trace_ray_beqelse_b1224:
# B1224
	bne	x66, x12, trace_ray_beqelse_b1233
# B1232
	lw x66, 4(x19)
	lw x67, 0(x66)
	fmul x36, x67, x36
	lw x67, 1(x66)
	fmul x37, x67, x37
	fadd x36, x36, x37
	lw x37, 2(x66)
	fmul x37, x37, x65
	fadd x36, x36, x37
	lw x19, 6(x19)
	fle x36, zero, x36
	xori x36, x36, 1
	xor x19, x19, x36
	xori x19, x19, 1
	j trace_ray_cont_b1240 # adhoc jump(2)
trace_ray_beqelse_b1233:
# B1233
	fmul x66, x36, x36
	lw x67, 4(x19)
	lw x67, 0(x67)
	fmul x66, x66, x67
	fmul x67, x37, x37
	lw x68, 4(x19)
	lw x68, 1(x68)
	fmul x67, x67, x68
	fadd x66, x66, x67
	fmul x67, x65, x65
	lw x68, 4(x19)
	lw x68, 2(x68)
	fmul x67, x67, x68
	fadd x66, x66, x67
	lw x67, 3(x19)
	bne	x67, zero, trace_ray_beqelse_b1235
# B1234
	mv x36, x66
	j trace_ray_cont_b1236 # adhoc jump(2)
trace_ray_beqelse_b1235:
# B1235
	fmul x67, x37, x65
	lw x68, 9(x19)
	lw x68, 0(x68)
	fmul x67, x67, x68
	fadd x66, x66, x67
	fmul x65, x65, x36
	lw x67, 9(x19)
	lw x67, 1(x67)
	fmul x65, x65, x67
	fadd x65, x66, x65
	fmul x36, x36, x37
	lw x37, 9(x19)
	lw x37, 2(x37)
	fmul x36, x36, x37
	fadd x36, x65, x36
trace_ray_cont_b1236:
# B1236
	lw x37, 1(x19)
	bne	x37, x14, trace_ray_beqelse_b1239
# B1237
	fsub x36, x36, x15
trace_ray_beqelse_b1239:
# B1239
	lw x19, 6(x19)
	fle x36, zero, x36
	xori x36, x36, 1
	xor x19, x19, x36
	xori x19, x19, 1
trace_ray_cont_b1240:
# B1240
	bne	x19, zero, trace_ray_beqelse_b1244
# B1241
	addi x38, x38, 1
	j trace_ray_loop_b1220 # loopback to while entry from B1241
trace_ray_beqelse_b1244:
trace_ray_cont_b1244:
# B1244
	j trace_ray_loop_b1169 # loopback to while entry from B1244
trace_ray_beqelse_b1200:
# B1200
	lw x37, 0(x114)
trace_ray_cont_b1213:
# B1213
	addi x30, x30, 1
trace_ray_cont_b1216:
# B1216
	add x4, x11, x19
	lw x19, 0(x4)
	lw x19, 6(x19)
	beq	x19, zero, trace_ray_bneelse_b1247
	j	trace_ray_loop_b1169 # moved need extra jump
trace_ray_bneelse_b1247:
trace_ray_cont_b1247:
# B1247
	addi x33, x33, 1
	j trace_ray_loop_b1166 # loopback to while entry from B1247
	j trace_ray_loop_b1169 # loopback to while entry from B1216
trace_ray_beqelse_b1133:
# B1133
	add x4, x11, x30
	lw x30, 0(x4)
	lw x37, 5(x30)
	lw x37, 0(x37)
	fsub x37, x5, x37
	lw x38, 5(x30)
	lw x38, 1(x38)
	fsub x38, x6, x38
	lw x66, 5(x30)
	lw x66, 2(x66)
	fsub x66, x65, x66
	lw x67, 1(x30)
	bne	x67, x111, trace_ray_beqelse_b1135
# B1134
	fabs x37, x37
	lw x67, 4(x30)
	lw x67, 0(x67)
	fle x37, x67, x37
	bne	x37, zero, trace_ray_beqelse_b1141
# B1137
	fabs x37, x38
	lw x38, 4(x30)
	lw x38, 1(x38)
	fle x37, x38, x37
	bne	x37, zero, trace_ray_beqelse_b1141
# B1139
	fabs x37, x66
	lw x38, 4(x30)
	lw x38, 2(x38)
	fle x37, x38, x37
	xori x37, x37, 1
	mv x38, x37
# B1140
	bne	x38, zero, trace_ray_beqelse_b1142
trace_ray_beqelse_b1141:
# B1141
	lw x30, 6(x30)
	xori x30, x30, 1
	j trace_ray_cont_b1151 # adhoc jump(2)
trace_ray_beqelse_b1142:
# B1142
	lw x30, 6(x30)
	j trace_ray_cont_b1151 # adhoc jump(2)
trace_ray_beqelse_b1135:
# B1135
	bne	x67, x12, trace_ray_beqelse_b1144
# B1143
	lw x67, 4(x30)
	lw x68, 0(x67)
	fmul x37, x68, x37
	lw x68, 1(x67)
	fmul x38, x68, x38
	fadd x37, x37, x38
	lw x38, 2(x67)
	fmul x38, x38, x66
	fadd x37, x37, x38
	lw x30, 6(x30)
	fle x37, zero, x37
	xori x37, x37, 1
	xor x30, x30, x37
	xori x30, x30, 1
	j trace_ray_cont_b1151 # adhoc jump(2)
trace_ray_beqelse_b1144:
# B1144
	fmul x67, x37, x37
	lw x68, 4(x30)
	lw x68, 0(x68)
	fmul x67, x67, x68
	fmul x68, x38, x38
	lw x69, 4(x30)
	lw x69, 1(x69)
	fmul x68, x68, x69
	fadd x67, x67, x68
	fmul x68, x66, x66
	lw x69, 4(x30)
	lw x69, 2(x69)
	fmul x68, x68, x69
	fadd x67, x67, x68
	lw x68, 3(x30)
	bne	x68, zero, trace_ray_beqelse_b1146
# B1145
	mv x37, x67
	j trace_ray_cont_b1147 # adhoc jump(2)
trace_ray_beqelse_b1146:
# B1146
	fmul x68, x38, x66
	lw x69, 9(x30)
	lw x69, 0(x69)
	fmul x68, x68, x69
	fadd x67, x67, x68
	fmul x66, x66, x37
	lw x68, 9(x30)
	lw x68, 1(x68)
	fmul x66, x66, x68
	fadd x66, x67, x66
	fmul x37, x37, x38
	lw x38, 9(x30)
	lw x38, 2(x38)
	fmul x37, x37, x38
	fadd x37, x66, x37
trace_ray_cont_b1147:
# B1147
	lw x38, 1(x30)
	bne	x38, x14, trace_ray_beqelse_b1150
# B1148
	fsub x37, x37, x15
trace_ray_beqelse_b1150:
# B1150
	lw x30, 6(x30)
	fle x37, zero, x37
	xori x37, x37, 1
	xor x30, x30, x37
	xori x30, x30, 1
trace_ray_cont_b1151:
# B1151
	bne	x30, zero, trace_ray_beqelse_b1155
# B1152
	addi x39, x39, 1
	j trace_ray_loop_b1131 # loopback to while entry from B1152
trace_ray_beqelse_b1155:
trace_ray_cont_b1155:
# B1155
	j trace_ray_loop_b1080 # loopback to while entry from B1155
trace_ray_beqelse_b1111:
# B1111
	lw x38, 0(x114)
trace_ray_cont_b1124:
# B1124
	addi x35, x35, 1
trace_ray_cont_b1127:
# B1127
	add x4, x11, x30
	lw x30, 0(x4)
	lw x30, 6(x30)
	beq	x30, zero, trace_ray_bneelse_b1158
	j	trace_ray_loop_b1080 # moved need extra jump
trace_ray_bneelse_b1158:
trace_ray_cont_b1158:
# B1158
	addi x33, x33, 1
	j trace_ray_loop_b1077 # loopback to while entry from B1158
	j trace_ray_loop_b1080 # loopback to while entry from B1127
trace_ray_bleelse_b829:
# B829
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
	ret
trace_diffuse_ray.3077:
# B1728
# B1729
	la x10, min_caml_tmin
	lui x100, 321255
	addi x100, x100, -1240
	sw x100, 0(x10)
	la x100, min_caml_or_net
	lw x11, 0(x100)
	li x12, 1
	li x13, 99
	la x14, min_caml_solver_dist
	mv x15, zero
	mv x16, x11
	mv x17, x5
trace_diffuse_ray_loop_b1730:
# B1730
	add x4, x16, x15
	lw x11, 0(x4)
	lw x18, 0(x11)
	li x19, -1
	la x20, min_caml_and_net
	la x21, min_caml_objects
	li x22, 2
	lui x23, 246333
	addi x23, x23, 1802
	li x24, 3
	lui x25, 260096
	la x26, min_caml_intersection_point
	la x27, min_caml_intersected_object_id
	la x28, min_caml_intsec_rectside
	beq	x18, x19, trace_diffuse_ray_bneelse_b1929
# B1732
	la x29, min_caml_startp_fast
	bne	x18, x13, trace_diffuse_ray_beqelse_b1734
# B1733
	mv x31, x11
	mv x30, x12
	mv x32, x17
trace_diffuse_ray_loop_b1735:
# B1735
	add x4, x31, x30
	lw x11, 0(x4)
	beq	x11, x19, trace_diffuse_ray_bneelse_b1928
# B1737
	add x4, x20, x11
	lw x11, 0(x4)
	mv x34, x32
	mv x18, zero
	mv x33, x11
trace_diffuse_ray_loop_b1738:
# B1738
	lw x11, 0(x34)
	add x4, x33, x18
	lw x35, 0(x4)
	beq	x35, x19, trace_diffuse_ray_bneelse_b1811
# B1740
	add x4, x21, x35
	lw x36, 0(x4)
	lw x37, 10(x36)
	lw x38, 0(x37)
	lw x39, 1(x37)
	lw x40, 2(x37)
	lw x6, 1(x34)
	add x4, x6, x35
	lw x6, 0(x4)
	lw x66, 1(x36)
	bne	x66, x12, trace_diffuse_ray_beqelse_b1742
# B1741
	lw x37, 0(x34)
	lw x66, 0(x6)
	fsub x66, x66, x38
	lw x67, 1(x6)
	fmul x66, x66, x67
	lw x67, 1(x37)
	fmul x67, x66, x67
	fadd x67, x67, x39
	fabs x67, x67
	lw x68, 4(x36)
	lw x68, 1(x68)
	fle x67, x68, x67
	bne	x67, zero, trace_diffuse_ray_beqelse_b1748
# B1744
	lw x67, 2(x37)
	fmul x67, x66, x67
	fadd x67, x67, x40
	fabs x67, x67
	lw x68, 4(x36)
	lw x68, 2(x68)
	fle x67, x68, x67
	bne	x67, zero, trace_diffuse_ray_beqelse_b1748
# B1746
	lw x67, 1(x6)
	feq x67, x67, zero
	xori x67, x67, 1
	mv x68, x67
# B1747
	bne	x68, zero, trace_diffuse_ray_beqelse_b1749
trace_diffuse_ray_beqelse_b1748:
# B1748
	lw x66, 2(x6)
	fsub x66, x66, x39
	lw x67, 3(x6)
	fmul x66, x66, x67
	lw x67, 0(x37)
	fmul x67, x66, x67
	fadd x67, x67, x38
	fabs x67, x67
	lw x68, 4(x36)
	lw x68, 0(x68)
	fle x67, x68, x67
	bne	x67, zero, trace_diffuse_ray_beqelse_b1755
# B1751
	lw x67, 2(x37)
	fmul x67, x66, x67
	fadd x67, x67, x40
	fabs x67, x67
	lw x68, 4(x36)
	lw x68, 2(x68)
	fle x67, x68, x67
	bne	x67, zero, trace_diffuse_ray_beqelse_b1755
# B1753
	lw x67, 3(x6)
	feq x67, x67, zero
	xori x67, x67, 1
	mv x68, x67
# B1754
	bne	x68, zero, trace_diffuse_ray_beqelse_b1756
trace_diffuse_ray_beqelse_b1755:
# B1755
	lw x66, 4(x6)
	fsub x40, x66, x40
	lw x66, 5(x6)
	fmul x40, x40, x66
	lw x66, 0(x37)
	fmul x66, x40, x66
	fadd x38, x66, x38
	fabs x38, x38
	lw x66, 4(x36)
	lw x66, 0(x66)
	fle x38, x66, x38
	bne	x38, zero, trace_diffuse_ray_beqelse_b1762
# B1758
	lw x37, 1(x37)
	fmul x37, x40, x37
	fadd x37, x37, x39
	fabs x37, x37
	lw x36, 4(x36)
	lw x36, 1(x36)
	fle x36, x36, x37
	bne	x36, zero, trace_diffuse_ray_beqelse_b1762
# B1760
	lw x36, 5(x6)
	feq x36, x36, zero
	xori x36, x36, 1
	mv x37, x36
# B1761
	bne	x37, zero, trace_diffuse_ray_beqelse_b1763
trace_diffuse_ray_beqelse_b1762:
# B1762
	mv x36, zero
	addi x18, x18, 1
	j trace_diffuse_ray_cont_b1776 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1763:
# B1763
	sw x40, 0(x14)
	li x36, 3
	addi x18, x18, 1
	j trace_diffuse_ray_cont_b1777 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1756:
# B1756
	sw x66, 0(x14)
	mv x36, x22
	j trace_diffuse_ray_cont_b1775 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1749:
# B1749
	sw x66, 0(x14)
	mv x36, x12
	j trace_diffuse_ray_cont_b1775 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1742:
# B1742
	bne	x66, x22, trace_diffuse_ray_beqelse_b1765
# B1764
	lw x36, 0(x6)
	fle x36, zero, x36
	beq	x36, zero, trace_diffuse_ray_bneelse_b1767
# B1766
	mv x36, zero
	addi x18, x18, 1
	j trace_diffuse_ray_cont_b1776 # adhoc jump(2)
trace_diffuse_ray_bneelse_b1767:
# B1767
	lw x36, 0(x6)
	lw x37, 3(x37)
	fmul x36, x36, x37
	sw x36, 0(x14)
	mv x36, x12
	j trace_diffuse_ray_cont_b1775 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1765:
# B1765
	lw x66, 0(x6)
	feq x67, x66, zero
	bne	x67, zero, trace_diffuse_ray_beqelse_b1769
# B1768
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
	fle x39, x37, zero
	beq	x39, zero, trace_diffuse_ray_bneelse_b1771
# B1770
	mv x36, zero
	addi x18, x18, 1
	j trace_diffuse_ray_cont_b1776 # adhoc jump(2)
trace_diffuse_ray_bneelse_b1771:
# B1771
	lw x36, 6(x36)
	fsqrt x37, x37
	bne	x36, zero, trace_diffuse_ray_beqelse_b1773
# B1772
	fsub x36, x38, x37
	lw x37, 4(x6)
	fmul x36, x36, x37
	sw x36, 0(x14)
	j trace_diffuse_ray_cont_b1774 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1773:
# B1773
	fadd x36, x38, x37
	lw x37, 4(x6)
	fmul x36, x36, x37
	sw x36, 0(x14)
trace_diffuse_ray_cont_b1774:
# B1774
	mv x36, x12
trace_diffuse_ray_cont_b1775:
# B1775
	addi x18, x18, 1
	bne	x36, zero, trace_diffuse_ray_beqelse_b1777
	j trace_diffuse_ray_cont_b1776 # adhoc jump(3)
trace_diffuse_ray_beqelse_b1777:
trace_diffuse_ray_cont_b1777:
# B1777
	lw x37, 0(x14)
	fle x38, x37, zero
	bne	x38, zero, trace_diffuse_ray_beqelse_b1810
# B1781
	lw x38, 0(x10)
	fle x38, x38, x37
	bne	x38, zero, trace_diffuse_ray_beqelse_b1810
# B1783
	fadd x37, x37, x23
	lw x38, 0(x11)
	fmul x38, x38, x37
	lw x39, 0(x29)
	fadd x38, x38, x39
	lw x39, 1(x11)
	fmul x39, x39, x37
	lw x40, 1(x29)
	fadd x39, x39, x40
	lw x11, 2(x11)
	fmul x11, x11, x37
	lw x40, 2(x29)
	fadd x11, x11, x40
	mv x40, zero
	mv x66, x38
	mv x67, x39
	mv x68, x11
	mv x6, x33
trace_diffuse_ray_loop_b1784:
# B1784
	add x4, x6, x40
	lw x69, 0(x4)
	bne	x69, x19, trace_diffuse_ray_beqelse_b1786
# B1785
	mv x7, x12
# B1807
	bne	x7, zero, trace_diffuse_ray_beqelse_b1809
	j trace_diffuse_ray_cont_b1808 # adhoc jump(3)
trace_diffuse_ray_beqelse_b1809:
# B1809
	sw x37, 0(x10)
	sw x38, 0(x26)
	sw x39, 1(x26)
	sw x11, 2(x26)
	sw x35, 0(x27)
	sw x36, 0(x28)
	j trace_diffuse_ray_cont_b1810 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1786:
# B1786
	add x4, x21, x69
	lw x69, 0(x4)
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
	bne	x72, x12, trace_diffuse_ray_beqelse_b1788
# B1787
	fabs x7, x7
	lw x72, 4(x69)
	lw x72, 0(x72)
	fle x7, x72, x7
	bne	x7, zero, trace_diffuse_ray_beqelse_b1794
# B1790
	fabs x7, x70
	lw x70, 4(x69)
	lw x70, 1(x70)
	fle x7, x70, x7
	bne	x7, zero, trace_diffuse_ray_beqelse_b1794
# B1792
	fabs x7, x71
	lw x70, 4(x69)
	lw x70, 2(x70)
	fle x7, x70, x7
	xori x7, x7, 1
	mv x70, x7
# B1793
	bne	x70, zero, trace_diffuse_ray_beqelse_b1795
trace_diffuse_ray_beqelse_b1794:
# B1794
	lw x69, 6(x69)
	xori x69, x69, 1
	j trace_diffuse_ray_cont_b1804 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1795:
# B1795
	lw x69, 6(x69)
	j trace_diffuse_ray_cont_b1804 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1788:
# B1788
	bne	x72, x22, trace_diffuse_ray_beqelse_b1797
# B1796
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
	j trace_diffuse_ray_cont_b1804 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1797:
# B1797
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
	bne	x73, zero, trace_diffuse_ray_beqelse_b1799
# B1798
	mv x7, x72
	j trace_diffuse_ray_cont_b1800 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1799:
# B1799
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
trace_diffuse_ray_cont_b1800:
# B1800
	lw x70, 1(x69)
	bne	x70, x24, trace_diffuse_ray_beqelse_b1803
# B1801
	fsub x7, x7, x25
trace_diffuse_ray_beqelse_b1803:
# B1803
	lw x69, 6(x69)
	fle x7, zero, x7
	xori x7, x7, 1
	xor x69, x69, x7
	xori x69, x69, 1
trace_diffuse_ray_cont_b1804:
# B1804
	bne	x69, zero, trace_diffuse_ray_beqelse_b1808
# B1805
	addi x40, x40, 1
	j trace_diffuse_ray_loop_b1784 # loopback to while entry from B1805
trace_diffuse_ray_beqelse_b1808:
trace_diffuse_ray_cont_b1808:
# B1808
trace_diffuse_ray_beqelse_b1810:
trace_diffuse_ray_cont_b1810:
# B1810
	j trace_diffuse_ray_loop_b1738 # loopback to while entry from B1810
trace_diffuse_ray_beqelse_b1769:
# B1769
	mv x36, zero
	addi x18, x18, 1
trace_diffuse_ray_cont_b1776:
# B1776
	add x4, x21, x35
	lw x11, 0(x4)
	lw x11, 6(x11)
	beq	x11, zero, trace_diffuse_ray_bneelse_b1811
	j	trace_diffuse_ray_loop_b1738 # moved need extra jump
trace_diffuse_ray_bneelse_b1811:
# B1811
	addi x30, x30, 1
	j trace_diffuse_ray_loop_b1735 # loopback to while entry from B1811
	j trace_diffuse_ray_loop_b1738 # loopback to while entry from B1776
trace_diffuse_ray_beqelse_b1734:
# B1734
	add x4, x21, x18
	lw x30, 0(x4)
	lw x31, 10(x30)
	lw x32, 0(x31)
	lw x33, 1(x31)
	lw x34, 2(x31)
	lw x35, 1(x17)
	add x4, x35, x18
	lw x18, 0(x4)
	lw x35, 1(x30)
	bne	x35, x12, trace_diffuse_ray_beqelse_b1813
# B1812
	lw x31, 0(x17)
	lw x35, 0(x18)
	fsub x35, x35, x32
	lw x36, 1(x18)
	fmul x35, x35, x36
	lw x36, 1(x31)
	fmul x36, x35, x36
	fadd x36, x36, x33
	fabs x36, x36
	lw x37, 4(x30)
	lw x37, 1(x37)
	fle x36, x37, x36
	bne	x36, zero, trace_diffuse_ray_beqelse_b1819
# B1815
	lw x36, 2(x31)
	fmul x36, x35, x36
	fadd x36, x36, x34
	fabs x36, x36
	lw x37, 4(x30)
	lw x37, 2(x37)
	fle x36, x37, x36
	bne	x36, zero, trace_diffuse_ray_beqelse_b1819
# B1817
	lw x36, 1(x18)
	feq x36, x36, zero
	xori x36, x36, 1
	mv x37, x36
# B1818
	bne	x37, zero, trace_diffuse_ray_beqelse_b1820
trace_diffuse_ray_beqelse_b1819:
# B1819
	lw x35, 2(x18)
	fsub x35, x35, x33
	lw x36, 3(x18)
	fmul x35, x35, x36
	lw x36, 0(x31)
	fmul x36, x35, x36
	fadd x36, x36, x32
	fabs x36, x36
	lw x37, 4(x30)
	lw x37, 0(x37)
	fle x36, x37, x36
	bne	x36, zero, trace_diffuse_ray_beqelse_b1826
# B1822
	lw x36, 2(x31)
	fmul x36, x35, x36
	fadd x36, x36, x34
	fabs x36, x36
	lw x37, 4(x30)
	lw x37, 2(x37)
	fle x36, x37, x36
	bne	x36, zero, trace_diffuse_ray_beqelse_b1826
# B1824
	lw x36, 3(x18)
	feq x36, x36, zero
	xori x36, x36, 1
	mv x37, x36
# B1825
	bne	x37, zero, trace_diffuse_ray_beqelse_b1827
trace_diffuse_ray_beqelse_b1826:
# B1826
	lw x35, 4(x18)
	fsub x34, x35, x34
	lw x35, 5(x18)
	fmul x34, x34, x35
	lw x35, 0(x31)
	fmul x35, x34, x35
	fadd x32, x35, x32
	fabs x32, x32
	lw x35, 4(x30)
	lw x35, 0(x35)
	fle x32, x35, x32
	bne	x32, zero, trace_diffuse_ray_beqelse_b1833
# B1829
	lw x31, 1(x31)
	fmul x31, x34, x31
	fadd x31, x31, x33
	fabs x31, x31
	lw x30, 4(x30)
	lw x30, 1(x30)
	fle x30, x30, x31
	bne	x30, zero, trace_diffuse_ray_beqelse_b1833
# B1831
	lw x18, 5(x18)
	feq x18, x18, zero
	xori x18, x18, 1
	mv x30, x18
# B1832
	bne	x30, zero, trace_diffuse_ray_beqelse_b1834
trace_diffuse_ray_beqelse_b1833:
# B1833
	j trace_diffuse_ray_cont_b1847 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1834:
# B1834
	sw x34, 0(x14)
	mv x18, x24
	j trace_diffuse_ray_cont_b1846 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1827:
# B1827
	sw x35, 0(x14)
	mv x18, x22
	j trace_diffuse_ray_cont_b1846 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1820:
# B1820
	sw x35, 0(x14)
	mv x18, x12
	j trace_diffuse_ray_cont_b1846 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1813:
# B1813
	bne	x35, x22, trace_diffuse_ray_beqelse_b1836
# B1835
	lw x30, 0(x18)
	fle x30, zero, x30
	bne	x30, zero, trace_diffuse_ray_beqelse_b1847
# B1838
	lw x18, 0(x18)
	lw x30, 3(x31)
	fmul x18, x18, x30
	sw x18, 0(x14)
	mv x18, x12
	j trace_diffuse_ray_cont_b1846 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1836:
# B1836
	lw x35, 0(x18)
	feq x36, x35, zero
	bne	x36, zero, trace_diffuse_ray_beqelse_b1847
# B1839
	lw x36, 1(x18)
	fmul x32, x36, x32
	lw x36, 2(x18)
	fmul x33, x36, x33
	fadd x32, x32, x33
	lw x33, 3(x18)
	fmul x33, x33, x34
	fadd x32, x32, x33
	lw x31, 3(x31)
	fmul x33, x32, x32
	fmul x31, x35, x31
	fsub x31, x33, x31
	fle x33, x31, zero
	bne	x33, zero, trace_diffuse_ray_beqelse_b1847
# B1842
	lw x30, 6(x30)
	fsqrt x31, x31
	bne	x30, zero, trace_diffuse_ray_beqelse_b1844
# B1843
	fsub x30, x32, x31
	lw x18, 4(x18)
	fmul x18, x30, x18
	sw x18, 0(x14)
	j trace_diffuse_ray_cont_b1845 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1844:
# B1844
	fadd x30, x32, x31
	lw x18, 4(x18)
	fmul x18, x30, x18
	sw x18, 0(x14)
trace_diffuse_ray_cont_b1845:
# B1845
	mv x18, x12
trace_diffuse_ray_cont_b1846:
# B1846
	bne	x18, zero, trace_diffuse_ray_beqelse_b1848
trace_diffuse_ray_beqelse_b1847:
trace_diffuse_ray_cont_b1847:
# B1847
	j trace_diffuse_ray_cont_b1928 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1848:
# B1848
	lw x18, 0(x14)
	lw x30, 0(x10)
	fle x18, x30, x18
	bne	x18, zero, trace_diffuse_ray_beqelse_b1928
# B1850
	mv x31, x11
	mv x30, x12
	mv x32, x17
trace_diffuse_ray_loop_b1851:
# B1851
	add x4, x31, x30
	lw x11, 0(x4)
	beq	x11, x19, trace_diffuse_ray_bneelse_b1928
# B1853
	add x4, x20, x11
	lw x11, 0(x4)
	mv x34, x32
	mv x18, zero
	mv x33, x11
trace_diffuse_ray_loop_b1854:
# B1854
	lw x11, 0(x34)
	add x4, x33, x18
	lw x35, 0(x4)
	beq	x35, x19, trace_diffuse_ray_bneelse_b1927
# B1856
	add x4, x21, x35
	lw x36, 0(x4)
	lw x37, 10(x36)
	lw x38, 0(x37)
	lw x39, 1(x37)
	lw x40, 2(x37)
	lw x6, 1(x34)
	add x4, x6, x35
	lw x6, 0(x4)
	lw x66, 1(x36)
	bne	x66, x12, trace_diffuse_ray_beqelse_b1858
# B1857
	lw x37, 0(x34)
	lw x66, 0(x6)
	fsub x66, x66, x38
	lw x67, 1(x6)
	fmul x66, x66, x67
	lw x67, 1(x37)
	fmul x67, x66, x67
	fadd x67, x67, x39
	fabs x67, x67
	lw x68, 4(x36)
	lw x68, 1(x68)
	fle x67, x68, x67
	bne	x67, zero, trace_diffuse_ray_beqelse_b1864
# B1860
	lw x67, 2(x37)
	fmul x67, x66, x67
	fadd x67, x67, x40
	fabs x67, x67
	lw x68, 4(x36)
	lw x68, 2(x68)
	fle x67, x68, x67
	bne	x67, zero, trace_diffuse_ray_beqelse_b1864
# B1862
	lw x67, 1(x6)
	feq x67, x67, zero
	xori x67, x67, 1
	mv x68, x67
# B1863
	bne	x68, zero, trace_diffuse_ray_beqelse_b1865
trace_diffuse_ray_beqelse_b1864:
# B1864
	lw x66, 2(x6)
	fsub x66, x66, x39
	lw x67, 3(x6)
	fmul x66, x66, x67
	lw x67, 0(x37)
	fmul x67, x66, x67
	fadd x67, x67, x38
	fabs x67, x67
	lw x68, 4(x36)
	lw x68, 0(x68)
	fle x67, x68, x67
	bne	x67, zero, trace_diffuse_ray_beqelse_b1871
# B1867
	lw x67, 2(x37)
	fmul x67, x66, x67
	fadd x67, x67, x40
	fabs x67, x67
	lw x68, 4(x36)
	lw x68, 2(x68)
	fle x67, x68, x67
	bne	x67, zero, trace_diffuse_ray_beqelse_b1871
# B1869
	lw x67, 3(x6)
	feq x67, x67, zero
	xori x67, x67, 1
	mv x68, x67
# B1870
	bne	x68, zero, trace_diffuse_ray_beqelse_b1872
trace_diffuse_ray_beqelse_b1871:
# B1871
	lw x66, 4(x6)
	fsub x40, x66, x40
	lw x66, 5(x6)
	fmul x40, x40, x66
	lw x66, 0(x37)
	fmul x66, x40, x66
	fadd x38, x66, x38
	fabs x38, x38
	lw x66, 4(x36)
	lw x66, 0(x66)
	fle x38, x66, x38
	bne	x38, zero, trace_diffuse_ray_beqelse_b1878
# B1874
	lw x37, 1(x37)
	fmul x37, x40, x37
	fadd x37, x37, x39
	fabs x37, x37
	lw x36, 4(x36)
	lw x36, 1(x36)
	fle x36, x36, x37
	bne	x36, zero, trace_diffuse_ray_beqelse_b1878
# B1876
	lw x36, 5(x6)
	feq x36, x36, zero
	xori x36, x36, 1
	mv x37, x36
# B1877
	bne	x37, zero, trace_diffuse_ray_beqelse_b1879
trace_diffuse_ray_beqelse_b1878:
# B1878
	mv x36, zero
	addi x18, x18, 1
	j trace_diffuse_ray_cont_b1892 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1879:
# B1879
	sw x40, 0(x14)
	mv x36, x24
	j trace_diffuse_ray_cont_b1891 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1872:
# B1872
	sw x66, 0(x14)
	mv x36, x22
	j trace_diffuse_ray_cont_b1891 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1865:
# B1865
	sw x66, 0(x14)
	mv x36, x12
	j trace_diffuse_ray_cont_b1891 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1858:
# B1858
	bne	x66, x22, trace_diffuse_ray_beqelse_b1881
# B1880
	lw x36, 0(x6)
	fle x36, zero, x36
	beq	x36, zero, trace_diffuse_ray_bneelse_b1883
# B1882
	mv x36, zero
	addi x18, x18, 1
	j trace_diffuse_ray_cont_b1892 # adhoc jump(2)
trace_diffuse_ray_bneelse_b1883:
# B1883
	lw x36, 0(x6)
	lw x37, 3(x37)
	fmul x36, x36, x37
	sw x36, 0(x14)
	mv x36, x12
	j trace_diffuse_ray_cont_b1891 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1881:
# B1881
	lw x66, 0(x6)
	feq x67, x66, zero
	bne	x67, zero, trace_diffuse_ray_beqelse_b1885
# B1884
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
	fle x39, x37, zero
	beq	x39, zero, trace_diffuse_ray_bneelse_b1887
# B1886
	mv x36, zero
	addi x18, x18, 1
	j trace_diffuse_ray_cont_b1892 # adhoc jump(2)
trace_diffuse_ray_bneelse_b1887:
# B1887
	lw x36, 6(x36)
	fsqrt x37, x37
	bne	x36, zero, trace_diffuse_ray_beqelse_b1889
# B1888
	fsub x36, x38, x37
	lw x37, 4(x6)
	fmul x36, x36, x37
	sw x36, 0(x14)
	j trace_diffuse_ray_cont_b1890 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1889:
# B1889
	fadd x36, x38, x37
	lw x37, 4(x6)
	fmul x36, x36, x37
	sw x36, 0(x14)
trace_diffuse_ray_cont_b1890:
# B1890
	mv x36, x12
trace_diffuse_ray_cont_b1891:
# B1891
	addi x18, x18, 1
	bne	x36, zero, trace_diffuse_ray_beqelse_b1893
	j trace_diffuse_ray_cont_b1892 # adhoc jump(3)
trace_diffuse_ray_beqelse_b1893:
# B1893
	lw x37, 0(x14)
	fle x38, x37, zero
	bne	x38, zero, trace_diffuse_ray_beqelse_b1926
# B1897
	lw x38, 0(x10)
	fle x38, x38, x37
	bne	x38, zero, trace_diffuse_ray_beqelse_b1926
# B1899
	fadd x37, x37, x23
	lw x38, 0(x11)
	fmul x38, x38, x37
	lw x39, 0(x29)
	fadd x38, x38, x39
	lw x39, 1(x11)
	fmul x39, x39, x37
	lw x40, 1(x29)
	fadd x39, x39, x40
	lw x11, 2(x11)
	fmul x11, x11, x37
	lw x40, 2(x29)
	fadd x11, x11, x40
	mv x40, zero
	mv x66, x38
	mv x67, x39
	mv x68, x11
	mv x6, x33
trace_diffuse_ray_loop_b1900:
# B1900
	add x4, x6, x40
	lw x69, 0(x4)
	bne	x69, x19, trace_diffuse_ray_beqelse_b1902
# B1901
	mv x7, x12
# B1923
	bne	x7, zero, trace_diffuse_ray_beqelse_b1925
	j trace_diffuse_ray_cont_b1924 # adhoc jump(3)
trace_diffuse_ray_beqelse_b1925:
# B1925
	sw x37, 0(x10)
	sw x38, 0(x26)
	sw x39, 1(x26)
	sw x11, 2(x26)
	sw x35, 0(x27)
	sw x36, 0(x28)
	j trace_diffuse_ray_cont_b1926 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1902:
# B1902
	add x4, x21, x69
	lw x69, 0(x4)
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
	bne	x72, x12, trace_diffuse_ray_beqelse_b1904
# B1903
	fabs x7, x7
	lw x72, 4(x69)
	lw x72, 0(x72)
	fle x7, x72, x7
	bne	x7, zero, trace_diffuse_ray_beqelse_b1910
# B1906
	fabs x7, x70
	lw x70, 4(x69)
	lw x70, 1(x70)
	fle x7, x70, x7
	bne	x7, zero, trace_diffuse_ray_beqelse_b1910
# B1908
	fabs x7, x71
	lw x70, 4(x69)
	lw x70, 2(x70)
	fle x7, x70, x7
	xori x7, x7, 1
	mv x70, x7
# B1909
	bne	x70, zero, trace_diffuse_ray_beqelse_b1911
trace_diffuse_ray_beqelse_b1910:
# B1910
	lw x69, 6(x69)
	xori x69, x69, 1
	j trace_diffuse_ray_cont_b1920 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1911:
# B1911
	lw x69, 6(x69)
	j trace_diffuse_ray_cont_b1920 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1904:
# B1904
	bne	x72, x22, trace_diffuse_ray_beqelse_b1913
# B1912
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
	j trace_diffuse_ray_cont_b1920 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1913:
# B1913
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
	bne	x73, zero, trace_diffuse_ray_beqelse_b1915
# B1914
	mv x7, x72
	j trace_diffuse_ray_cont_b1916 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1915:
# B1915
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
trace_diffuse_ray_cont_b1916:
# B1916
	lw x70, 1(x69)
	bne	x70, x24, trace_diffuse_ray_beqelse_b1919
# B1917
	fsub x7, x7, x25
trace_diffuse_ray_beqelse_b1919:
# B1919
	lw x69, 6(x69)
	fle x7, zero, x7
	xori x7, x7, 1
	xor x69, x69, x7
	xori x69, x69, 1
trace_diffuse_ray_cont_b1920:
# B1920
	bne	x69, zero, trace_diffuse_ray_beqelse_b1924
# B1921
	addi x40, x40, 1
	j trace_diffuse_ray_loop_b1900 # loopback to while entry from B1921
trace_diffuse_ray_beqelse_b1924:
trace_diffuse_ray_cont_b1924:
# B1924
trace_diffuse_ray_beqelse_b1926:
trace_diffuse_ray_cont_b1926:
# B1926
	j trace_diffuse_ray_loop_b1854 # loopback to while entry from B1926
trace_diffuse_ray_beqelse_b1885:
# B1885
	mv x36, zero
	addi x18, x18, 1
trace_diffuse_ray_cont_b1892:
# B1892
	add x4, x21, x35
	lw x11, 0(x4)
	lw x11, 6(x11)
	beq	x11, zero, trace_diffuse_ray_bneelse_b1927
	j	trace_diffuse_ray_loop_b1854 # moved need extra jump
trace_diffuse_ray_bneelse_b1927:
# B1927
	addi x30, x30, 1
	j trace_diffuse_ray_loop_b1851 # loopback to while entry from B1927
	j trace_diffuse_ray_loop_b1854 # loopback to while entry from B1892
trace_diffuse_ray_beqelse_b1928:
trace_diffuse_ray_bneelse_b1928:
trace_diffuse_ray_cont_b1928:
# B1928
	addi x15, x15, 1
	j trace_diffuse_ray_loop_b1730 # loopback to while entry from B1928
trace_diffuse_ray_bneelse_b1929:
# B1929
	lw x10, 0(x10)
	lui x11, 777421
	addi x11, x11, -819
	fle x15, x10, x11
	bne	x15, zero, trace_diffuse_ray_beqelse_b1933
# B1931
	lui x15, 314348
	addi x15, x15, -992
	fle x10, x15, x10
	xori x10, x10, 1
	mv x15, x10
# B1932
	bne	x15, zero, trace_diffuse_ray_beqelse_b1934
trace_diffuse_ray_beqelse_b1933:
# B1933
	ret
trace_diffuse_ray_beqelse_b1934:
# B1934
	lw x10, 0(x27)
	add x4, x21, x10
	lw x10, 0(x4)
	lw x15, 0(x5)
	lw x16, 1(x10)
	la x17, min_caml_nvector
	lui x18, 258048
	bne	x16, x12, trace_diffuse_ray_beqelse_b1936
# B1935
	lw x16, 0(x28)
	sw zero, 0(x17)
	sw zero, 1(x17)
	sw zero, 2(x17)
	addi x16, x16, -1
	add x4, x15, x16
	lw x15, 0(x4)
	feq x27, x15, zero
	bne	x27, zero, trace_diffuse_ray_beqelse_b1938
# B1937
	fle x15, x15, zero
	beq	x15, zero, trace_diffuse_ray_bneelse_b1940
# B1939
	lui x15, 784384
	j trace_diffuse_ray_cont_b1941 # adhoc jump(2)
trace_diffuse_ray_bneelse_b1940:
# B1940
	mv x15, x25
	j trace_diffuse_ray_cont_b1941 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1938:
# B1938
	mv x15, zero
trace_diffuse_ray_cont_b1941:
# B1941
	fsub x15, zero, x15
	add x4, x17, x16
	sw x15, 0(x4)
	j trace_diffuse_ray_cont_b1952 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1936:
# B1936
	bne	x16, x22, trace_diffuse_ray_beqelse_b1943
# B1942
	lw x15, 4(x10)
	lw x15, 0(x15)
	fsub x15, zero, x15
	sw x15, 0(x17)
	lw x15, 4(x10)
	lw x15, 1(x15)
	fsub x15, zero, x15
	sw x15, 1(x17)
	lw x15, 4(x10)
	lw x15, 2(x15)
	fsub x15, zero, x15
	sw x15, 2(x17)
	j trace_diffuse_ray_cont_b1952 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1943:
# B1943
	lw x15, 0(x26)
	lw x16, 5(x10)
	lw x16, 0(x16)
	fsub x15, x15, x16
	lw x16, 1(x26)
	lw x27, 5(x10)
	lw x27, 1(x27)
	fsub x16, x16, x27
	lw x27, 2(x26)
	lw x28, 5(x10)
	lw x28, 2(x28)
	fsub x27, x27, x28
	lw x28, 4(x10)
	lw x28, 0(x28)
	fmul x28, x15, x28
	lw x29, 4(x10)
	lw x29, 1(x29)
	fmul x29, x16, x29
	lw x30, 4(x10)
	lw x30, 2(x30)
	fmul x30, x27, x30
	lw x31, 3(x10)
	bne	x31, zero, trace_diffuse_ray_beqelse_b1945
# B1944
	sw x28, 0(x17)
	sw x29, 1(x17)
	sw x30, 2(x17)
	j trace_diffuse_ray_cont_b1946 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1945:
# B1945
	lw x31, 9(x10)
	lw x31, 2(x31)
	fmul x31, x16, x31
	lw x32, 9(x10)
	lw x32, 1(x32)
	fmul x32, x27, x32
	fadd x31, x31, x32
	fmul x31, x31, x18
	fadd x28, x28, x31
	sw x28, 0(x17)
	lw x28, 9(x10)
	lw x28, 2(x28)
	fmul x28, x15, x28
	lw x31, 9(x10)
	lw x31, 0(x31)
	fmul x27, x27, x31
	fadd x27, x28, x27
	fmul x27, x27, x18
	fadd x27, x29, x27
	sw x27, 1(x17)
	lw x27, 9(x10)
	lw x27, 1(x27)
	fmul x15, x15, x27
	lw x27, 9(x10)
	lw x27, 0(x27)
	fmul x16, x16, x27
	fadd x15, x15, x16
	fmul x15, x15, x18
	fadd x15, x30, x15
	sw x15, 2(x17)
trace_diffuse_ray_cont_b1946:
# B1946
	lw x15, 6(x10)
	lw x16, 0(x17)
	fmul x16, x16, x16
	lw x27, 1(x17)
	fmul x27, x27, x27
	fadd x16, x16, x27
	lw x27, 2(x17)
	fmul x27, x27, x27
	fadd x16, x16, x27
	fsqrt x16, x16
	feq x27, x16, zero
	bne	x27, zero, trace_diffuse_ray_beqelse_b1948
# B1947
	bne	x15, zero, trace_diffuse_ray_beqelse_b1950
# B1949
	fdiv x15, x25, x16
	j trace_diffuse_ray_cont_b1951 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1950:
# B1950
	lui x15, 784384
	fdiv x15, x15, x16
	j trace_diffuse_ray_cont_b1951 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1948:
# B1948
	mv x15, x25
trace_diffuse_ray_cont_b1951:
# B1951
	lw x16, 0(x17)
	fmul x16, x16, x15
	sw x16, 0(x17)
	lw x16, 1(x17)
	fmul x16, x16, x15
	sw x16, 1(x17)
	lw x16, 2(x17)
	fmul x15, x16, x15
	sw x15, 2(x17)
trace_diffuse_ray_cont_b1952:
# B1952
	lw x15, 0(x10)
	la x16, min_caml_texture_color
	lw x27, 8(x10)
	lw x27, 0(x27)
	sw x27, 0(x16)
	lw x27, 8(x10)
	lw x27, 1(x27)
	sw x27, 1(x16)
	lw x27, 8(x10)
	lw x27, 2(x27)
	sw x27, 2(x16)
	lui x27, 266752
	bne	x15, x12, trace_diffuse_ray_beqelse_b1954
# B1953
	lw x15, 0(x26)
	lw x18, 5(x10)
	lw x18, 0(x18)
	fsub x15, x15, x18
	lui x18, 251085
	addi x18, x18, -819
	fmul x28, x15, x18
	floor x28, x28
	lui x29, 268800
	fmul x28, x28, x29
	fsub x15, x15, x28
	fle x15, x27, x15
	xori x15, x15, 1
	lw x28, 2(x26)
	lw x30, 5(x10)
	lw x30, 2(x30)
	fsub x28, x28, x30
	fmul x18, x28, x18
	floor x18, x18
	fmul x18, x18, x29
	fsub x18, x28, x18
	fle x18, x27, x18
	xori x18, x18, 1
	bne	x15, zero, trace_diffuse_ray_beqelse_b1956
# B1955
	bne	x18, zero, trace_diffuse_ray_beqelse_b1958
# B1957
	lui x15, 276464
	j trace_diffuse_ray_cont_b1961 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1958:
# B1958
	mv x15, zero
	j trace_diffuse_ray_cont_b1961 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1956:
# B1956
	bne	x18, zero, trace_diffuse_ray_beqelse_b1960
# B1959
	mv x15, zero
	j trace_diffuse_ray_cont_b1961 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1960:
# B1960
	lui x15, 276464
trace_diffuse_ray_cont_b1961:
# B1961
	sw x15, 1(x16)
	j trace_diffuse_ray_cont_b2040 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1954:
# B1954
	lui x28, 265361
	addi x28, x28, -37
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
	bne	x15, x22, trace_diffuse_ray_beqelse_b1963
# B1962
	lw x15, 1(x26)
	lui x18, 256000
	fmul x15, x15, x18
	fle x18, x15, zero
	xori x18, x18, 1
	fabs x15, x15
	mv x27, x15
	mv x40, x28
trace_diffuse_ray_loop_b1964:
# B1964
	fle x5, x27, x40
	bne	x5, zero, trace_diffuse_ray_beqelse_b1967
# B1965
	fmul x40, x40, x29
	j trace_diffuse_ray_loop_b1964 # loopback to while entry from B1965
trace_diffuse_ray_beqelse_b1967:
# B1967
	mv x6, x15
	mv x66, x40
trace_diffuse_ray_loop_b1968:
# B1968
	fle x15, x28, x6
	beq	x15, zero, trace_diffuse_ray_bneelse_b1973
# B1970
	fle x15, x6, x66
	fdiv x27, x66, x29
	bne	x15, zero, trace_diffuse_ray_beqelse_b1972
# B1971
	fsub x6, x6, x66
	mv x66, x27
	j trace_diffuse_ray_loop_b1968 # loopback to while entry from B1971
trace_diffuse_ray_beqelse_b1972:
# B1972
	mv x66, x27
	j trace_diffuse_ray_loop_b1968 # loopback to while entry from B1972
trace_diffuse_ray_bneelse_b1973:
# B1973
	fle x15, x30, x6
	bne	x15, zero, trace_diffuse_ray_beqelse_b1975
# B1974
	mv x27, x6
	j trace_diffuse_ray_cont_b1976 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1975:
# B1975
	fsub x27, x6, x30
trace_diffuse_ray_cont_b1976:
# B1976
	xor x15, x15, x18
	fle x18, x31, x27
	bne	x18, zero, trace_diffuse_ray_beqelse_b1978
# B1977
	mv x18, x27
	j trace_diffuse_ray_cont_b1979 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1978:
# B1978
	fsub x18, x30, x27
trace_diffuse_ray_cont_b1979:
# B1979
	fle x27, x32, x18
	bne	x27, zero, trace_diffuse_ray_beqelse_b1981
# B1980
	fmul x27, x18, x18
	fmul x28, x27, x35
	fadd x28, x34, x28
	fmul x28, x27, x28
	fadd x28, x33, x28
	fmul x27, x27, x28
	fadd x27, x25, x27
	fmul x18, x18, x27
	j trace_diffuse_ray_cont_b1982 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1981:
# B1981
	fsub x18, x31, x18
	fmul x18, x18, x18
	fmul x27, x18, x38
	fadd x27, x37, x27
	fmul x27, x18, x27
	fadd x27, x36, x27
	fmul x18, x18, x27
	fadd x18, x25, x18
trace_diffuse_ray_cont_b1982:
# B1982
	fle x27, x18, zero
	beq	x15, x27, trace_diffuse_ray_bneelse_b1984
# B1983
	mv x15, x18
	j trace_diffuse_ray_cont_b1985 # adhoc jump(2)
trace_diffuse_ray_bneelse_b1984:
# B1984
	fsub x15, zero, x18
trace_diffuse_ray_cont_b1985:
# B1985
	fmul x15, x15, x15
	fmul x18, x39, x15
	sw x18, 0(x16)
	fsub x15, x25, x15
	fmul x15, x39, x15
	sw x15, 1(x16)
	j trace_diffuse_ray_cont_b2040 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1963:
# B1963
	lui x40, 263313
	addi x40, x40, -37
	bne	x15, x24, trace_diffuse_ray_beqelse_b1987
# B1986
	lw x15, 0(x26)
	lw x18, 5(x10)
	lw x18, 0(x18)
	fsub x15, x15, x18
	lw x18, 2(x26)
	lw x5, 5(x10)
	lw x5, 2(x5)
	fsub x18, x18, x5
	fmul x15, x15, x15
	fmul x18, x18, x18
	fadd x15, x15, x18
	fsqrt x15, x15
	fdiv x15, x15, x27
	floor x18, x15
	fsub x15, x15, x18
	fmul x15, x15, x40
	fabs x15, x15
	mv x18, x15
	mv x27, x28
trace_diffuse_ray_loop_b1988:
# B1988
	fle x40, x18, x27
	bne	x40, zero, trace_diffuse_ray_beqelse_b1991
# B1989
	fmul x27, x27, x29
	j trace_diffuse_ray_loop_b1988 # loopback to while entry from B1989
trace_diffuse_ray_beqelse_b1991:
# B1991
	mv x5, x15
	mv x6, x27
trace_diffuse_ray_loop_b1992:
# B1992
	fle x15, x28, x5
	beq	x15, zero, trace_diffuse_ray_bneelse_b1997
# B1994
	fle x15, x5, x6
	fdiv x18, x6, x29
	bne	x15, zero, trace_diffuse_ray_beqelse_b1996
# B1995
	fsub x5, x5, x6
	mv x6, x18
	j trace_diffuse_ray_loop_b1992 # loopback to while entry from B1995
trace_diffuse_ray_beqelse_b1996:
# B1996
	mv x6, x18
	j trace_diffuse_ray_loop_b1992 # loopback to while entry from B1996
trace_diffuse_ray_bneelse_b1997:
# B1997
	fle x15, x30, x5
	bne	x15, zero, trace_diffuse_ray_beqelse_b1999
# B1998
	mv x18, x5
	j trace_diffuse_ray_cont_b2000 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1999:
# B1999
	fsub x18, x5, x30
trace_diffuse_ray_cont_b2000:
# B2000
	bne	x15, zero, trace_diffuse_ray_beqelse_b2002
# B2001
	mv x27, x12
	j trace_diffuse_ray_cont_b2003 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2002:
# B2002
	mv x27, zero
trace_diffuse_ray_cont_b2003:
# B2003
	fle x15, x31, x18
	bne	x15, zero, trace_diffuse_ray_beqelse_b2005
	j trace_diffuse_ray_cont_b2006 # adhoc jump(3)
trace_diffuse_ray_beqelse_b2005:
# B2005
	fsub x18, x30, x18
trace_diffuse_ray_cont_b2006:
# B2006
	xor x15, x15, x27
	fle x27, x32, x18
	bne	x27, zero, trace_diffuse_ray_beqelse_b2008
trace_diffuse_ray_cont_b2007:
# B2007
	fmul x18, x18, x18
	fmul x27, x18, x38
	fadd x27, x37, x27
	fmul x27, x18, x27
	fadd x27, x36, x27
	fmul x18, x18, x27
	fadd x18, x25, x18
	j trace_diffuse_ray_cont_b2009 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2008:
# B2008
	fsub x18, x31, x18
	fmul x27, x18, x18
	fmul x28, x27, x35
	fadd x28, x34, x28
	fmul x28, x27, x28
	fadd x28, x33, x28
	fmul x27, x27, x28
	fadd x27, x25, x27
	fmul x18, x18, x27
trace_diffuse_ray_cont_b2009:
# B2009
	fle x27, x18, zero
	beq	x15, x27, trace_diffuse_ray_bneelse_b2011
# B2010
	mv x15, x18
	j trace_diffuse_ray_cont_b2012 # adhoc jump(2)
trace_diffuse_ray_bneelse_b2011:
# B2011
	fsub x15, zero, x18
trace_diffuse_ray_cont_b2012:
# B2012
	fmul x15, x15, x15
	fmul x18, x15, x39
	sw x18, 1(x16)
	fsub x15, x25, x15
	fmul x15, x15, x39
	sw x15, 2(x16)
	j trace_diffuse_ray_cont_b2040 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1987:
# B1987
	li x27, 4
	bne	x15, x27, trace_diffuse_ray_beqelse_b2040
# B2013
	lw x15, 0(x26)
	lw x27, 5(x10)
	lw x27, 0(x27)
	fsub x15, x15, x27
	lw x27, 4(x10)
	lw x27, 0(x27)
	fsqrt x27, x27
	fmul x15, x15, x27
	lw x27, 2(x26)
	lw x28, 5(x10)
	lw x28, 2(x28)
	fsub x27, x27, x28
	lw x28, 4(x10)
	lw x28, 2(x28)
	fsqrt x28, x28
	fmul x27, x27, x28
	fmul x28, x15, x15
	fmul x29, x27, x27
	fadd x28, x28, x29
	fabs x29, x15
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
	beq	x29, zero, trace_diffuse_ray_bneelse_b2016
# B2015
	fdiv x15, x27, x15
	fabs x15, x15
	fle x27, x15, zero
	xori x27, x27, 1
	fabs x29, x15
	fle x67, x33, x29
	bne	x67, zero, trace_diffuse_ray_beqelse_b2018
# B2017
	fmul x27, x15, x15
	fmul x29, x27, x5
	fadd x29, x38, x29
	fmul x29, x27, x29
	fadd x29, x37, x29
	fmul x29, x27, x29
	fadd x29, x36, x29
	fmul x29, x27, x29
	fadd x29, x35, x29
	fmul x29, x27, x29
	fadd x29, x34, x29
	fmul x27, x27, x29
	fadd x27, x25, x27
	fmul x15, x15, x27
	j trace_diffuse_ray_cont_b2024 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2018:
# B2018
	fle x15, x6, x29
	bne	x15, zero, trace_diffuse_ray_beqelse_b2020
# B2019
	fsub x15, x29, x25
	fadd x29, x29, x25
	fdiv x15, x15, x29
	fmul x29, x15, x15
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
	fadd x29, x25, x29
	fmul x15, x15, x29
	fadd x15, x32, x15
	j trace_diffuse_ray_cont_b2021 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2020:
# B2020
	fdiv x15, x25, x29
	fmul x29, x15, x15
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
	fadd x29, x25, x29
	fmul x15, x15, x29
	fsub x15, x31, x15
trace_diffuse_ray_cont_b2021:
# B2021
	bne	x27, zero, trace_diffuse_ray_beqelse_b2024
# B2022
	fsub x15, zero, x15
trace_diffuse_ray_beqelse_b2024:
trace_diffuse_ray_cont_b2024:
# B2024
	fmul x15, x15, x66
	fdiv x15, x15, x40
	j trace_diffuse_ray_cont_b2025 # adhoc jump(2)
trace_diffuse_ray_bneelse_b2016:
# B2016
	lui x15, 268032
trace_diffuse_ray_cont_b2025:
# B2025
	floor x27, x15
	fsub x15, x15, x27
	lw x27, 1(x26)
	lw x29, 5(x10)
	lw x29, 1(x29)
	fsub x27, x27, x29
	lw x29, 4(x10)
	lw x29, 1(x29)
	fsqrt x29, x29
	fmul x27, x27, x29
	fabs x29, x28
	fle x29, x30, x29
	beq	x29, zero, trace_diffuse_ray_bneelse_b2027
# B2026
	fdiv x27, x27, x28
	fabs x27, x27
	fle x28, x27, zero
	xori x28, x28, 1
	fabs x29, x27
	fle x30, x33, x29
	bne	x30, zero, trace_diffuse_ray_beqelse_b2029
# B2028
	fmul x28, x27, x27
	fmul x29, x28, x5
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
	fadd x28, x25, x28
	fmul x27, x27, x28
	j trace_diffuse_ray_cont_b2035 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2029:
# B2029
	fle x27, x6, x29
	bne	x27, zero, trace_diffuse_ray_beqelse_b2031
# B2030
	fsub x27, x29, x25
	fadd x29, x29, x25
	fdiv x27, x27, x29
	fmul x29, x27, x27
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
	fadd x29, x25, x29
	fmul x27, x27, x29
	fadd x27, x32, x27
	j trace_diffuse_ray_cont_b2032 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2031:
# B2031
	fdiv x27, x25, x29
	fmul x29, x27, x27
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
	fadd x29, x25, x29
	fmul x27, x27, x29
	fsub x27, x31, x27
trace_diffuse_ray_cont_b2032:
# B2032
	bne	x28, zero, trace_diffuse_ray_beqelse_b2035
# B2033
	fsub x27, zero, x27
trace_diffuse_ray_beqelse_b2035:
trace_diffuse_ray_cont_b2035:
# B2035
	fmul x27, x27, x66
	fdiv x27, x27, x40
	j trace_diffuse_ray_cont_b2036 # adhoc jump(2)
trace_diffuse_ray_bneelse_b2027:
# B2027
	lui x27, 268032
trace_diffuse_ray_cont_b2036:
# B2036
	floor x28, x27
	fsub x27, x27, x28
	lui x28, 254362
	addi x28, x28, -1638
	fsub x15, x18, x15
	fmul x15, x15, x15
	fsub x15, x28, x15
	fsub x18, x18, x27
	fmul x18, x18, x18
	fsub x15, x15, x18
	fle x18, zero, x15
	beq	x18, zero, trace_diffuse_ray_bneelse_b2038
# B2037
	mv x27, x15
	j trace_diffuse_ray_cont_b2039 # adhoc jump(2)
trace_diffuse_ray_bneelse_b2038:
# B2038
	mv x27, zero
trace_diffuse_ray_cont_b2039:
# B2039
	fmul x15, x39, x27
	lui x18, 256410
	addi x18, x18, -1638
	fdiv x15, x15, x18
	sw x15, 2(x16)
trace_diffuse_ray_beqelse_b2040:
trace_diffuse_ray_cont_b2040:
# B2040
	lw x100, 0(x100)
	la x15, min_caml_light_dirvec
	mv x27, x100
	mv x18, zero
trace_diffuse_ray_loop_b2041:
# B2041
	add x4, x27, x18
	lw x100, 0(x4)
	lw x28, 0(x100)
	la x29, min_caml_light
	beq	x28, x19, trace_diffuse_ray_bneelse_b2267
# B2043
	lui x30, 779469
	addi x30, x30, -819
	bne	x28, x13, trace_diffuse_ray_beqelse_b2045
# B2044
	mv x28, x12
	j trace_diffuse_ray_cont_b2177 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2045:
# B2045
	add x4, x21, x28
	lw x31, 0(x4)
	lw x32, 0(x26)
	lw x33, 5(x31)
	lw x33, 0(x33)
	fsub x32, x32, x33
	lw x33, 1(x26)
	lw x34, 5(x31)
	lw x34, 1(x34)
	fsub x33, x33, x34
	lw x34, 2(x26)
	lw x35, 5(x31)
	lw x35, 2(x35)
	fsub x34, x34, x35
	lw x35, 1(x15)
	add x4, x35, x28
	lw x28, 0(x4)
	lw x35, 1(x31)
	bne	x35, x12, trace_diffuse_ray_beqelse_b2047
# B2046
	lw x35, 0(x15)
	lw x36, 0(x28)
	fsub x36, x36, x32
	lw x37, 1(x28)
	fmul x36, x36, x37
	lw x37, 1(x35)
	fmul x37, x36, x37
	fadd x37, x37, x33
	fabs x37, x37
	lw x38, 4(x31)
	lw x38, 1(x38)
	fle x37, x38, x37
	bne	x37, zero, trace_diffuse_ray_beqelse_b2053
# B2049
	lw x37, 2(x35)
	fmul x37, x36, x37
	fadd x37, x37, x34
	fabs x37, x37
	lw x38, 4(x31)
	lw x38, 2(x38)
	fle x37, x38, x37
	bne	x37, zero, trace_diffuse_ray_beqelse_b2053
# B2051
	lw x37, 1(x28)
	feq x37, x37, zero
	xori x37, x37, 1
	mv x38, x37
# B2052
	bne	x38, zero, trace_diffuse_ray_beqelse_b2054
trace_diffuse_ray_beqelse_b2053:
# B2053
	lw x36, 2(x28)
	fsub x36, x36, x33
	lw x37, 3(x28)
	fmul x36, x36, x37
	lw x37, 0(x35)
	fmul x37, x36, x37
	fadd x37, x37, x32
	fabs x37, x37
	lw x38, 4(x31)
	lw x38, 0(x38)
	fle x37, x38, x37
	bne	x37, zero, trace_diffuse_ray_beqelse_b2060
# B2056
	lw x37, 2(x35)
	fmul x37, x36, x37
	fadd x37, x37, x34
	fabs x37, x37
	lw x38, 4(x31)
	lw x38, 2(x38)
	fle x37, x38, x37
	bne	x37, zero, trace_diffuse_ray_beqelse_b2060
# B2058
	lw x37, 3(x28)
	feq x37, x37, zero
	xori x37, x37, 1
	mv x38, x37
# B2059
	bne	x38, zero, trace_diffuse_ray_beqelse_b2061
trace_diffuse_ray_beqelse_b2060:
# B2060
	lw x36, 4(x28)
	fsub x34, x36, x34
	lw x36, 5(x28)
	fmul x34, x34, x36
	lw x36, 0(x35)
	fmul x36, x34, x36
	fadd x32, x36, x32
	fabs x32, x32
	lw x36, 4(x31)
	lw x36, 0(x36)
	fle x32, x36, x32
	bne	x32, zero, trace_diffuse_ray_beqelse_b2067
# B2063
	lw x32, 1(x35)
	fmul x32, x34, x32
	fadd x32, x32, x33
	fabs x32, x32
	lw x31, 4(x31)
	lw x31, 1(x31)
	fle x31, x31, x32
	bne	x31, zero, trace_diffuse_ray_beqelse_b2067
# B2065
	lw x28, 5(x28)
	feq x28, x28, zero
	xori x28, x28, 1
	mv x31, x28
# B2066
	bne	x31, zero, trace_diffuse_ray_beqelse_b2068
trace_diffuse_ray_beqelse_b2067:
# B2067
	j trace_diffuse_ray_cont_b2087 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2068:
# B2068
	sw x34, 0(x14)
	mv x28, x24
	j trace_diffuse_ray_cont_b2086 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2061:
# B2061
	sw x36, 0(x14)
	mv x28, x22
	j trace_diffuse_ray_cont_b2086 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2054:
# B2054
	sw x36, 0(x14)
	mv x28, x12
	j trace_diffuse_ray_cont_b2086 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2047:
# B2047
	bne	x35, x22, trace_diffuse_ray_beqelse_b2070
# B2069
	lw x31, 0(x28)
	fle x31, zero, x31
	bne	x31, zero, trace_diffuse_ray_beqelse_b2087
# B2072
	lw x31, 1(x28)
	fmul x31, x31, x32
	lw x32, 2(x28)
	fmul x32, x32, x33
	fadd x31, x31, x32
	lw x28, 3(x28)
	fmul x28, x28, x34
	fadd x28, x31, x28
	sw x28, 0(x14)
	mv x28, x12
	j trace_diffuse_ray_cont_b2086 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2070:
# B2070
	lw x35, 0(x28)
	feq x36, x35, zero
	bne	x36, zero, trace_diffuse_ray_beqelse_b2087
# B2073
	lw x36, 1(x28)
	fmul x36, x36, x32
	lw x37, 2(x28)
	fmul x37, x37, x33
	fadd x36, x36, x37
	lw x37, 3(x28)
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
	bne	x38, zero, trace_diffuse_ray_beqelse_b2076
# B2075
	mv x32, x37
	j trace_diffuse_ray_cont_b2077 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2076:
# B2076
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
trace_diffuse_ray_cont_b2077:
# B2077
	lw x33, 1(x31)
	bne	x33, x24, trace_diffuse_ray_beqelse_b2080
# B2078
	fsub x32, x32, x25
trace_diffuse_ray_beqelse_b2080:
# B2080
	fmul x33, x36, x36
	fmul x32, x35, x32
	fsub x32, x33, x32
	fle x33, x32, zero
	bne	x33, zero, trace_diffuse_ray_beqelse_b2087
# B2082
	lw x31, 6(x31)
	fsqrt x32, x32
	bne	x31, zero, trace_diffuse_ray_beqelse_b2084
# B2083
	fsub x31, x36, x32
	lw x28, 4(x28)
	fmul x28, x31, x28
	sw x28, 0(x14)
	j trace_diffuse_ray_cont_b2085 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2084:
# B2084
	fadd x31, x36, x32
	lw x28, 4(x28)
	fmul x28, x31, x28
	sw x28, 0(x14)
trace_diffuse_ray_cont_b2085:
# B2085
	mv x28, x12
trace_diffuse_ray_cont_b2086:
# B2086
	bne	x28, zero, trace_diffuse_ray_beqelse_b2088
trace_diffuse_ray_beqelse_b2087:
trace_diffuse_ray_cont_b2087:
# B2087
	addi x18, x18, 1
	j trace_diffuse_ray_cont_b2178 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2088:
# B2088
	lw x28, 0(x14)
	fle x28, x11, x28
	beq	x28, zero, trace_diffuse_ray_bneelse_b2090
# B2089
	addi x18, x18, 1
	j trace_diffuse_ray_cont_b2178 # adhoc jump(2)
trace_diffuse_ray_bneelse_b2090:
# B2090
	mv x31, x12
	mv x32, x100
trace_diffuse_ray_loop_b2091:
# B2091
	add x4, x32, x31
	lw x28, 0(x4)
	beq	x28, x19, trace_diffuse_ray_bneelse_b2175
# B2093
	add x4, x20, x28
	lw x28, 0(x4)
	mv x34, x28
	mv x33, zero
trace_diffuse_ray_loop_b2094:
# B2094
	add x4, x34, x33
	lw x28, 0(x4)
	beq	x28, x19, trace_diffuse_ray_bneelse_b2172
# B2096
	add x4, x34, x33
	lw x28, 0(x4)
	add x4, x21, x28
	lw x35, 0(x4)
	lw x36, 0(x26)
	lw x37, 5(x35)
	lw x37, 0(x37)
	fsub x36, x36, x37
	lw x37, 1(x26)
	lw x38, 5(x35)
	lw x38, 1(x38)
	fsub x37, x37, x38
	lw x38, 2(x26)
	lw x39, 5(x35)
	lw x39, 2(x39)
	fsub x38, x38, x39
	lw x39, 1(x15)
	add x4, x39, x28
	lw x39, 0(x4)
	lw x40, 1(x35)
	bne	x40, x12, trace_diffuse_ray_beqelse_b2098
# B2097
	lw x40, 0(x15)
	lw x5, 0(x39)
	fsub x5, x5, x36
	lw x6, 1(x39)
	fmul x5, x5, x6
	lw x6, 1(x40)
	fmul x6, x5, x6
	fadd x6, x6, x37
	fabs x6, x6
	lw x66, 4(x35)
	lw x66, 1(x66)
	fle x6, x66, x6
	bne	x6, zero, trace_diffuse_ray_beqelse_b2104
# B2100
	lw x6, 2(x40)
	fmul x6, x5, x6
	fadd x6, x6, x38
	fabs x6, x6
	lw x66, 4(x35)
	lw x66, 2(x66)
	fle x6, x66, x6
	bne	x6, zero, trace_diffuse_ray_beqelse_b2104
# B2102
	lw x6, 1(x39)
	feq x6, x6, zero
	xori x6, x6, 1
	mv x66, x6
# B2103
	bne	x66, zero, trace_diffuse_ray_beqelse_b2105
trace_diffuse_ray_beqelse_b2104:
# B2104
	lw x5, 2(x39)
	fsub x5, x5, x37
	lw x6, 3(x39)
	fmul x5, x5, x6
	lw x6, 0(x40)
	fmul x6, x5, x6
	fadd x6, x6, x36
	fabs x6, x6
	lw x66, 4(x35)
	lw x66, 0(x66)
	fle x6, x66, x6
	bne	x6, zero, trace_diffuse_ray_beqelse_b2111
# B2107
	lw x6, 2(x40)
	fmul x6, x5, x6
	fadd x6, x6, x38
	fabs x6, x6
	lw x66, 4(x35)
	lw x66, 2(x66)
	fle x6, x66, x6
	bne	x6, zero, trace_diffuse_ray_beqelse_b2111
# B2109
	lw x6, 3(x39)
	feq x6, x6, zero
	xori x6, x6, 1
	mv x66, x6
# B2110
	bne	x66, zero, trace_diffuse_ray_beqelse_b2112
trace_diffuse_ray_beqelse_b2111:
# B2111
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
	bne	x36, zero, trace_diffuse_ray_beqelse_b2118
# B2114
	lw x36, 1(x40)
	fmul x36, x38, x36
	fadd x36, x36, x37
	fabs x36, x36
	lw x35, 4(x35)
	lw x35, 1(x35)
	fle x35, x35, x36
	bne	x35, zero, trace_diffuse_ray_beqelse_b2118
# B2116
	lw x35, 5(x39)
	feq x35, x35, zero
	xori x35, x35, 1
	mv x36, x35
# B2117
	bne	x36, zero, trace_diffuse_ray_beqelse_b2119
trace_diffuse_ray_beqelse_b2118:
# B2118
	lw x36, 0(x14)
	j trace_diffuse_ray_cont_b2138 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2119:
# B2119
	sw x38, 0(x14)
	mv x35, x24
	j trace_diffuse_ray_cont_b2137 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2112:
# B2112
	sw x5, 0(x14)
	mv x35, x22
	j trace_diffuse_ray_cont_b2137 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2105:
# B2105
	sw x5, 0(x14)
	mv x35, x12
	j trace_diffuse_ray_cont_b2137 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2098:
# B2098
	bne	x40, x22, trace_diffuse_ray_beqelse_b2121
# B2120
	lw x35, 0(x39)
	fle x35, zero, x35
	beq	x35, zero, trace_diffuse_ray_bneelse_b2123
# B2122
	lw x36, 0(x14)
	j trace_diffuse_ray_cont_b2138 # adhoc jump(2)
trace_diffuse_ray_bneelse_b2123:
# B2123
	lw x35, 1(x39)
	fmul x35, x35, x36
	lw x36, 2(x39)
	fmul x36, x36, x37
	fadd x35, x35, x36
	lw x36, 3(x39)
	fmul x36, x36, x38
	fadd x35, x35, x36
	sw x35, 0(x14)
	mv x35, x12
	j trace_diffuse_ray_cont_b2137 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2121:
# B2121
	lw x40, 0(x39)
	feq x5, x40, zero
	bne	x5, zero, trace_diffuse_ray_beqelse_b2125
# B2124
	lw x5, 1(x39)
	fmul x5, x5, x36
	lw x6, 2(x39)
	fmul x6, x6, x37
	fadd x5, x5, x6
	lw x6, 3(x39)
	fmul x6, x6, x38
	fadd x5, x5, x6
	fmul x6, x36, x36
	lw x66, 4(x35)
	lw x66, 0(x66)
	fmul x6, x6, x66
	fmul x66, x37, x37
	lw x67, 4(x35)
	lw x67, 1(x67)
	fmul x66, x66, x67
	fadd x6, x6, x66
	fmul x66, x38, x38
	lw x67, 4(x35)
	lw x67, 2(x67)
	fmul x66, x66, x67
	fadd x6, x6, x66
	lw x66, 3(x35)
	bne	x66, zero, trace_diffuse_ray_beqelse_b2127
# B2126
	mv x36, x6
	j trace_diffuse_ray_cont_b2128 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2127:
# B2127
	fmul x66, x37, x38
	lw x67, 9(x35)
	lw x67, 0(x67)
	fmul x66, x66, x67
	fadd x6, x6, x66
	fmul x38, x38, x36
	lw x66, 9(x35)
	lw x66, 1(x66)
	fmul x38, x38, x66
	fadd x38, x6, x38
	fmul x36, x36, x37
	lw x37, 9(x35)
	lw x37, 2(x37)
	fmul x36, x36, x37
	fadd x36, x38, x36
trace_diffuse_ray_cont_b2128:
# B2128
	lw x37, 1(x35)
	bne	x37, x24, trace_diffuse_ray_beqelse_b2131
# B2129
	fsub x36, x36, x25
trace_diffuse_ray_beqelse_b2131:
# B2131
	fmul x37, x5, x5
	fmul x36, x40, x36
	fsub x36, x37, x36
	fle x37, x36, zero
	beq	x37, zero, trace_diffuse_ray_bneelse_b2133
# B2132
	lw x36, 0(x14)
	j trace_diffuse_ray_cont_b2138 # adhoc jump(2)
trace_diffuse_ray_bneelse_b2133:
# B2133
	lw x35, 6(x35)
	fsqrt x36, x36
	bne	x35, zero, trace_diffuse_ray_beqelse_b2135
# B2134
	fsub x35, x5, x36
	lw x36, 4(x39)
	fmul x35, x35, x36
	sw x35, 0(x14)
	j trace_diffuse_ray_cont_b2136 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2135:
# B2135
	fadd x35, x5, x36
	lw x36, 4(x39)
	fmul x35, x35, x36
	sw x35, 0(x14)
trace_diffuse_ray_cont_b2136:
# B2136
	mv x35, x12
trace_diffuse_ray_cont_b2137:
# B2137
	lw x36, 0(x14)
	bne	x35, zero, trace_diffuse_ray_beqelse_b2139
	j trace_diffuse_ray_cont_b2138 # adhoc jump(3)
trace_diffuse_ray_beqelse_b2139:
# B2139
	fle x35, x30, x36
	xori x35, x35, 1
# B2140
	addi x33, x33, 1
	bne	x35, zero, trace_diffuse_ray_beqelse_b2142
	j trace_diffuse_ray_cont_b2141 # adhoc jump(3)
trace_diffuse_ray_beqelse_b2142:
# B2142
	fadd x28, x36, x23
	lw x35, 0(x29)
	fmul x35, x35, x28
	lw x36, 0(x26)
	fadd x35, x35, x36
	lw x36, 1(x29)
	fmul x36, x36, x28
	lw x37, 1(x26)
	fadd x36, x36, x37
	lw x37, 2(x29)
	fmul x28, x37, x28
	lw x37, 2(x26)
	fadd x28, x28, x37
	mv x37, zero
	mv x40, x36
	mv x39, x35
	mv x38, x34
	mv x5, x28
trace_diffuse_ray_loop_b2145:
# B2145
	add x4, x38, x37
	lw x28, 0(x4)
	bne	x28, x19, trace_diffuse_ray_beqelse_b2147
# B2146
	mv x35, x12
# B2168
	bne	x35, zero, trace_diffuse_ray_beqelse_b2170
	j trace_diffuse_ray_cont_b2169 # adhoc jump(3)
trace_diffuse_ray_beqelse_b2170:
# B2170
	mv x28, x12
# B2171
	bne	x28, zero, trace_diffuse_ray_beqelse_b2173
	j trace_diffuse_ray_cont_b2172 # adhoc jump(3)
trace_diffuse_ray_beqelse_b2173:
# B2173
	mv x33, x12
# B2174
	bne	x33, zero, trace_diffuse_ray_beqelse_b2176
trace_diffuse_ray_bneelse_b2175:
# B2175
	addi x18, x18, 1
	j trace_diffuse_ray_cont_b2178 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2176:
# B2176
	mv x28, x12
trace_diffuse_ray_cont_b2177:
# B2177
	addi x18, x18, 1
	bne	x28, zero, trace_diffuse_ray_beqelse_b2179
trace_diffuse_ray_cont_b2178:
# B2178
	j trace_diffuse_ray_loop_b2041 # loopback to while entry from B2178
trace_diffuse_ray_beqelse_b2179:
# B2179
	mv x31, x12
	mv x32, x100
trace_diffuse_ray_loop_b2180:
# B2180
	add x4, x32, x31
	lw x100, 0(x4)
	beq	x100, x19, trace_diffuse_ray_bneelse_b2264
# B2182
	add x4, x20, x100
	lw x100, 0(x4)
	mv x28, zero
	mv x33, x100
trace_diffuse_ray_loop_b2183:
# B2183
	add x4, x33, x28
	lw x100, 0(x4)
	beq	x100, x19, trace_diffuse_ray_bneelse_b2261
# B2185
	add x4, x33, x28
	lw x100, 0(x4)
	add x4, x21, x100
	lw x34, 0(x4)
	lw x35, 0(x26)
	lw x36, 5(x34)
	lw x36, 0(x36)
	fsub x35, x35, x36
	lw x36, 1(x26)
	lw x37, 5(x34)
	lw x37, 1(x37)
	fsub x36, x36, x37
	lw x37, 2(x26)
	lw x38, 5(x34)
	lw x38, 2(x38)
	fsub x37, x37, x38
	lw x38, 1(x15)
	add x4, x38, x100
	lw x38, 0(x4)
	lw x39, 1(x34)
	bne	x39, x12, trace_diffuse_ray_beqelse_b2187
# B2186
	lw x39, 0(x15)
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
	bne	x5, zero, trace_diffuse_ray_beqelse_b2193
# B2189
	lw x5, 2(x39)
	fmul x5, x40, x5
	fadd x5, x5, x37
	fabs x5, x5
	lw x6, 4(x34)
	lw x6, 2(x6)
	fle x5, x6, x5
	bne	x5, zero, trace_diffuse_ray_beqelse_b2193
# B2191
	lw x5, 1(x38)
	feq x5, x5, zero
	xori x5, x5, 1
	mv x6, x5
# B2192
	bne	x6, zero, trace_diffuse_ray_beqelse_b2194
trace_diffuse_ray_beqelse_b2193:
# B2193
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
	bne	x5, zero, trace_diffuse_ray_beqelse_b2200
# B2196
	lw x5, 2(x39)
	fmul x5, x40, x5
	fadd x5, x5, x37
	fabs x5, x5
	lw x6, 4(x34)
	lw x6, 2(x6)
	fle x5, x6, x5
	bne	x5, zero, trace_diffuse_ray_beqelse_b2200
# B2198
	lw x5, 3(x38)
	feq x5, x5, zero
	xori x5, x5, 1
	mv x6, x5
# B2199
	bne	x6, zero, trace_diffuse_ray_beqelse_b2201
trace_diffuse_ray_beqelse_b2200:
# B2200
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
	bne	x35, zero, trace_diffuse_ray_beqelse_b2207
# B2203
	lw x35, 1(x39)
	fmul x35, x37, x35
	fadd x35, x35, x36
	fabs x35, x35
	lw x34, 4(x34)
	lw x34, 1(x34)
	fle x34, x34, x35
	bne	x34, zero, trace_diffuse_ray_beqelse_b2207
# B2205
	lw x34, 5(x38)
	feq x34, x34, zero
	xori x34, x34, 1
	mv x35, x34
# B2206
	bne	x35, zero, trace_diffuse_ray_beqelse_b2208
trace_diffuse_ray_beqelse_b2207:
# B2207
	lw x35, 0(x14)
	j trace_diffuse_ray_cont_b2227 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2208:
# B2208
	sw x37, 0(x14)
	mv x34, x24
	j trace_diffuse_ray_cont_b2226 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2201:
# B2201
	sw x40, 0(x14)
	mv x34, x22
	j trace_diffuse_ray_cont_b2226 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2194:
# B2194
	sw x40, 0(x14)
	mv x34, x12
	j trace_diffuse_ray_cont_b2226 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2187:
# B2187
	bne	x39, x22, trace_diffuse_ray_beqelse_b2210
# B2209
	lw x34, 0(x38)
	fle x34, zero, x34
	beq	x34, zero, trace_diffuse_ray_bneelse_b2212
# B2211
	lw x35, 0(x14)
	j trace_diffuse_ray_cont_b2227 # adhoc jump(2)
trace_diffuse_ray_bneelse_b2212:
# B2212
	lw x34, 1(x38)
	fmul x34, x34, x35
	lw x35, 2(x38)
	fmul x35, x35, x36
	fadd x34, x34, x35
	lw x35, 3(x38)
	fmul x35, x35, x37
	fadd x34, x34, x35
	sw x34, 0(x14)
	mv x34, x12
	j trace_diffuse_ray_cont_b2226 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2210:
# B2210
	lw x39, 0(x38)
	feq x40, x39, zero
	bne	x40, zero, trace_diffuse_ray_beqelse_b2214
# B2213
	lw x40, 1(x38)
	fmul x40, x40, x35
	lw x5, 2(x38)
	fmul x5, x5, x36
	fadd x40, x40, x5
	lw x5, 3(x38)
	fmul x5, x5, x37
	fadd x40, x40, x5
	fmul x5, x35, x35
	lw x6, 4(x34)
	lw x6, 0(x6)
	fmul x5, x5, x6
	fmul x6, x36, x36
	lw x66, 4(x34)
	lw x66, 1(x66)
	fmul x6, x6, x66
	fadd x5, x5, x6
	fmul x6, x37, x37
	lw x66, 4(x34)
	lw x66, 2(x66)
	fmul x6, x6, x66
	fadd x5, x5, x6
	lw x6, 3(x34)
	bne	x6, zero, trace_diffuse_ray_beqelse_b2216
# B2215
	mv x35, x5
	j trace_diffuse_ray_cont_b2217 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2216:
# B2216
	fmul x6, x36, x37
	lw x66, 9(x34)
	lw x66, 0(x66)
	fmul x6, x6, x66
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
trace_diffuse_ray_cont_b2217:
# B2217
	lw x36, 1(x34)
	bne	x36, x24, trace_diffuse_ray_beqelse_b2220
# B2218
	fsub x35, x35, x25
trace_diffuse_ray_beqelse_b2220:
# B2220
	fmul x36, x40, x40
	fmul x35, x39, x35
	fsub x35, x36, x35
	fle x36, x35, zero
	beq	x36, zero, trace_diffuse_ray_bneelse_b2222
# B2221
	lw x35, 0(x14)
	j trace_diffuse_ray_cont_b2227 # adhoc jump(2)
trace_diffuse_ray_bneelse_b2222:
# B2222
	lw x34, 6(x34)
	fsqrt x35, x35
	bne	x34, zero, trace_diffuse_ray_beqelse_b2224
# B2223
	fsub x34, x40, x35
	lw x35, 4(x38)
	fmul x34, x34, x35
	sw x34, 0(x14)
	j trace_diffuse_ray_cont_b2225 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2224:
# B2224
	fadd x34, x40, x35
	lw x35, 4(x38)
	fmul x34, x34, x35
	sw x34, 0(x14)
trace_diffuse_ray_cont_b2225:
# B2225
	mv x34, x12
trace_diffuse_ray_cont_b2226:
# B2226
	lw x35, 0(x14)
	bne	x34, zero, trace_diffuse_ray_beqelse_b2228
	j trace_diffuse_ray_cont_b2227 # adhoc jump(3)
trace_diffuse_ray_beqelse_b2228:
# B2228
	fle x34, x30, x35
	xori x34, x34, 1
# B2229
	addi x28, x28, 1
	bne	x34, zero, trace_diffuse_ray_beqelse_b2231
	j trace_diffuse_ray_cont_b2230 # adhoc jump(3)
trace_diffuse_ray_beqelse_b2231:
# B2231
	fadd x100, x35, x23
	lw x34, 0(x29)
	fmul x34, x34, x100
	lw x35, 0(x26)
	fadd x34, x34, x35
	lw x35, 1(x29)
	fmul x35, x35, x100
	lw x36, 1(x26)
	fadd x35, x35, x36
	lw x36, 2(x29)
	fmul x100, x36, x100
	lw x36, 2(x26)
	fadd x100, x100, x36
	mv x37, x33
	mv x40, x100
	mv x39, x35
	mv x38, x34
	mv x36, zero
trace_diffuse_ray_loop_b2234:
# B2234
	add x4, x37, x36
	lw x100, 0(x4)
	bne	x100, x19, trace_diffuse_ray_beqelse_b2236
# B2235
	mv x34, x12
# B2257
	bne	x34, zero, trace_diffuse_ray_beqelse_b2259
	j trace_diffuse_ray_cont_b2258 # adhoc jump(3)
trace_diffuse_ray_beqelse_b2259:
# B2259
	mv x100, x12
# B2260
	bne	x100, zero, trace_diffuse_ray_beqelse_b2262
	j trace_diffuse_ray_cont_b2261 # adhoc jump(3)
trace_diffuse_ray_beqelse_b2262:
# B2262
	mv x28, x12
# B2263
	bne	x28, zero, trace_diffuse_ray_beqelse_b2265
trace_diffuse_ray_bneelse_b2264:
# B2264
	j trace_diffuse_ray_loop_b2041 # loopback to while entry from B2264
trace_diffuse_ray_beqelse_b2265:
# B2265
	mv x100, x12
# B2266
	bne	x100, zero, trace_diffuse_ray_beqelse_b2268
trace_diffuse_ray_bneelse_b2267:
# B2267
	lw x100, 0(x17)
	lw x11, 0(x29)
	fmul x100, x100, x11
	lw x11, 1(x17)
	lw x12, 1(x29)
	fmul x11, x11, x12
	fadd x100, x100, x11
	lw x11, 2(x17)
	lw x12, 2(x29)
	fmul x11, x11, x12
	fadd x100, x100, x11
	fsub x100, zero, x100
	fle x11, x100, zero
	beq	x11, zero, trace_diffuse_ray_bneelse_b2270
# B2269
	mv x12, zero
	j trace_diffuse_ray_cont_b2271 # adhoc jump(2)
trace_diffuse_ray_bneelse_b2270:
# B2270
	mv x12, x100
trace_diffuse_ray_cont_b2271:
# B2271
	la x100, min_caml_diffuse_ray
	fmul x11, x65, x12
	lw x10, 7(x10)
	lw x10, 0(x10)
	fmul x10, x11, x10
	lw x11, 0(x100)
	lw x12, 0(x16)
	fmul x12, x10, x12
	fadd x11, x11, x12
	sw x11, 0(x100)
	lw x11, 1(x100)
	lw x12, 1(x16)
	fmul x12, x10, x12
	fadd x11, x11, x12
	sw x11, 1(x100)
	lw x11, 2(x100)
	lw x12, 2(x16)
	fmul x10, x10, x12
	fadd x10, x11, x10
	sw x10, 2(x100)
	ret
trace_diffuse_ray_beqelse_b2268:
# B2268
	ret
trace_diffuse_ray_beqelse_b2236:
# B2236
	add x4, x21, x100
	lw x100, 0(x4)
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
	bne	x6, x12, trace_diffuse_ray_beqelse_b2238
# B2237
	fabs x34, x34
	lw x6, 4(x100)
	lw x6, 0(x6)
	fle x34, x6, x34
	bne	x34, zero, trace_diffuse_ray_beqelse_b2244
# B2240
	fabs x34, x35
	lw x35, 4(x100)
	lw x35, 1(x35)
	fle x34, x35, x34
	bne	x34, zero, trace_diffuse_ray_beqelse_b2244
# B2242
	fabs x34, x5
	lw x35, 4(x100)
	lw x35, 2(x35)
	fle x34, x35, x34
	xori x34, x34, 1
	mv x35, x34
# B2243
	bne	x35, zero, trace_diffuse_ray_beqelse_b2245
trace_diffuse_ray_beqelse_b2244:
# B2244
	lw x100, 6(x100)
	xori x100, x100, 1
	j trace_diffuse_ray_cont_b2254 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2245:
# B2245
	lw x100, 6(x100)
	j trace_diffuse_ray_cont_b2254 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2238:
# B2238
	bne	x6, x22, trace_diffuse_ray_beqelse_b2247
# B2246
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
	j trace_diffuse_ray_cont_b2254 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2247:
# B2247
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
	bne	x66, zero, trace_diffuse_ray_beqelse_b2249
# B2248
	mv x34, x6
	j trace_diffuse_ray_cont_b2250 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2249:
# B2249
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
trace_diffuse_ray_cont_b2250:
# B2250
	lw x35, 1(x100)
	bne	x35, x24, trace_diffuse_ray_beqelse_b2253
# B2251
	fsub x34, x34, x25
trace_diffuse_ray_beqelse_b2253:
# B2253
	lw x100, 6(x100)
	fle x34, zero, x34
	xori x34, x34, 1
	xor x100, x100, x34
	xori x100, x100, 1
trace_diffuse_ray_cont_b2254:
# B2254
	bne	x100, zero, trace_diffuse_ray_beqelse_b2258
# B2255
	addi x36, x36, 1
	j trace_diffuse_ray_loop_b2234 # loopback to while entry from B2255
trace_diffuse_ray_beqelse_b2258:
trace_diffuse_ray_cont_b2258:
# B2258
	j trace_diffuse_ray_loop_b2183 # loopback to while entry from B2258
trace_diffuse_ray_beqelse_b2214:
# B2214
	lw x35, 0(x14)
trace_diffuse_ray_cont_b2227:
# B2227
	addi x28, x28, 1
trace_diffuse_ray_cont_b2230:
# B2230
	add x4, x21, x100
	lw x100, 0(x4)
	lw x100, 6(x100)
	beq	x100, zero, trace_diffuse_ray_bneelse_b2261
	j	trace_diffuse_ray_loop_b2183 # moved need extra jump
trace_diffuse_ray_bneelse_b2261:
trace_diffuse_ray_cont_b2261:
# B2261
	addi x31, x31, 1
	j trace_diffuse_ray_loop_b2180 # loopback to while entry from B2261
	j trace_diffuse_ray_loop_b2183 # loopback to while entry from B2230
trace_diffuse_ray_beqelse_b2147:
# B2147
	add x4, x21, x28
	lw x28, 0(x4)
	lw x35, 5(x28)
	lw x35, 0(x35)
	fsub x35, x39, x35
	lw x36, 5(x28)
	lw x36, 1(x36)
	fsub x36, x40, x36
	lw x6, 5(x28)
	lw x6, 2(x6)
	fsub x6, x5, x6
	lw x66, 1(x28)
	bne	x66, x12, trace_diffuse_ray_beqelse_b2149
# B2148
	fabs x35, x35
	lw x66, 4(x28)
	lw x66, 0(x66)
	fle x35, x66, x35
	bne	x35, zero, trace_diffuse_ray_beqelse_b2155
# B2151
	fabs x35, x36
	lw x36, 4(x28)
	lw x36, 1(x36)
	fle x35, x36, x35
	bne	x35, zero, trace_diffuse_ray_beqelse_b2155
# B2153
	fabs x35, x6
	lw x36, 4(x28)
	lw x36, 2(x36)
	fle x35, x36, x35
	xori x35, x35, 1
	mv x36, x35
# B2154
	bne	x36, zero, trace_diffuse_ray_beqelse_b2156
trace_diffuse_ray_beqelse_b2155:
# B2155
	lw x28, 6(x28)
	xori x28, x28, 1
	j trace_diffuse_ray_cont_b2165 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2156:
# B2156
	lw x28, 6(x28)
	j trace_diffuse_ray_cont_b2165 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2149:
# B2149
	bne	x66, x22, trace_diffuse_ray_beqelse_b2158
# B2157
	lw x66, 4(x28)
	lw x67, 0(x66)
	fmul x35, x67, x35
	lw x67, 1(x66)
	fmul x36, x67, x36
	fadd x35, x35, x36
	lw x36, 2(x66)
	fmul x36, x36, x6
	fadd x35, x35, x36
	lw x28, 6(x28)
	fle x35, zero, x35
	xori x35, x35, 1
	xor x28, x28, x35
	xori x28, x28, 1
	j trace_diffuse_ray_cont_b2165 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2158:
# B2158
	fmul x66, x35, x35
	lw x67, 4(x28)
	lw x67, 0(x67)
	fmul x66, x66, x67
	fmul x67, x36, x36
	lw x68, 4(x28)
	lw x68, 1(x68)
	fmul x67, x67, x68
	fadd x66, x66, x67
	fmul x67, x6, x6
	lw x68, 4(x28)
	lw x68, 2(x68)
	fmul x67, x67, x68
	fadd x66, x66, x67
	lw x67, 3(x28)
	bne	x67, zero, trace_diffuse_ray_beqelse_b2160
# B2159
	mv x35, x66
	j trace_diffuse_ray_cont_b2161 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2160:
# B2160
	fmul x67, x36, x6
	lw x68, 9(x28)
	lw x68, 0(x68)
	fmul x67, x67, x68
	fadd x66, x66, x67
	fmul x6, x6, x35
	lw x67, 9(x28)
	lw x67, 1(x67)
	fmul x6, x6, x67
	fadd x6, x66, x6
	fmul x35, x35, x36
	lw x36, 9(x28)
	lw x36, 2(x36)
	fmul x35, x35, x36
	fadd x35, x6, x35
trace_diffuse_ray_cont_b2161:
# B2161
	lw x36, 1(x28)
	bne	x36, x24, trace_diffuse_ray_beqelse_b2164
# B2162
	fsub x35, x35, x25
trace_diffuse_ray_beqelse_b2164:
# B2164
	lw x28, 6(x28)
	fle x35, zero, x35
	xori x35, x35, 1
	xor x28, x28, x35
	xori x28, x28, 1
trace_diffuse_ray_cont_b2165:
# B2165
	bne	x28, zero, trace_diffuse_ray_beqelse_b2169
# B2166
	addi x37, x37, 1
	j trace_diffuse_ray_loop_b2145 # loopback to while entry from B2166
trace_diffuse_ray_beqelse_b2169:
trace_diffuse_ray_cont_b2169:
# B2169
	j trace_diffuse_ray_loop_b2094 # loopback to while entry from B2169
trace_diffuse_ray_beqelse_b2125:
# B2125
	lw x36, 0(x14)
trace_diffuse_ray_cont_b2138:
# B2138
	addi x33, x33, 1
trace_diffuse_ray_cont_b2141:
# B2141
	add x4, x21, x28
	lw x28, 0(x4)
	lw x28, 6(x28)
	beq	x28, zero, trace_diffuse_ray_bneelse_b2172
	j	trace_diffuse_ray_loop_b2094 # moved need extra jump
trace_diffuse_ray_bneelse_b2172:
trace_diffuse_ray_cont_b2172:
# B2172
	addi x31, x31, 1
	j trace_diffuse_ray_loop_b2091 # loopback to while entry from B2172
	j trace_diffuse_ray_loop_b2094 # loopback to while entry from B2141
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
# B2272
# B2273
	lui x10, 274784
	li x100, 1
	lui x11, 799072
	li x12, 2
	mv x15, x7
	mv x16, x8
	mv x14, x6
	mv x13, x5
iter_trace_diffuse_rays_loop_b2274:
# B2274
	bgt	zero, x16, iter_trace_diffuse_rays_bleelse_b2276
# B2275
	add x4, x13, x16
	lw x17, 0(x4)
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
	li x29, 3
	lui x30, 260096
	la x31, min_caml_intersection_point
	la x32, min_caml_intersected_object_id
	la x33, min_caml_intsec_rectside
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
	beq	x18, zero, iter_trace_diffuse_rays_bneelse_b2278
# B2277
	add x4, x13, x16
	lw x18, 0(x4)
	fdiv x17, x17, x10
	sw x20, 0(x19)
	lw x20, 0(x21)
	mv x94, x20
	mv x93, zero
	mv x95, x18
iter_trace_diffuse_rays_loop_b2279:
# B2279
	add x4, x94, x93
	lw x20, 0(x4)
	lw x96, 0(x20)
	beq	x96, x24, iter_trace_diffuse_rays_bneelse_b2478
# B2281
	bne	x96, x22, iter_trace_diffuse_rays_beqelse_b2283
# B2282
	mv x97, x100
	mv x98, x20
	mv x99, x95
iter_trace_diffuse_rays_loop_b2284:
# B2284
	add x4, x98, x97
	lw x20, 0(x4)
	beq	x20, x24, iter_trace_diffuse_rays_bneelse_b2477
# B2286
	add x4, x25, x20
	lw x20, 0(x4)
	mv x101, x20
	mv x102, x99
	mv x96, zero
iter_trace_diffuse_rays_loop_b2287:
# B2287
	lw x20, 0(x102)
	add x4, x101, x96
	lw x103, 0(x4)
	beq	x103, x24, iter_trace_diffuse_rays_bneelse_b2360
# B2289
	add x4, x26, x103
	lw x104, 0(x4)
	lw x105, 10(x104)
	lw x106, 0(x105)
	lw x107, 1(x105)
	lw x108, 2(x105)
	lw x109, 1(x102)
	add x4, x109, x103
	lw x109, 0(x4)
	lw x110, 1(x104)
	bne	x110, x100, iter_trace_diffuse_rays_beqelse_b2291
# B2290
	lw x105, 0(x102)
	lw x110, 0(x109)
	fsub x110, x110, x106
	lw x111, 1(x109)
	fmul x110, x110, x111
	lw x111, 1(x105)
	fmul x111, x110, x111
	fadd x111, x111, x107
	fabs x111, x111
	lw x112, 4(x104)
	lw x112, 1(x112)
	fle x111, x112, x111
	bne	x111, zero, iter_trace_diffuse_rays_beqelse_b2297
# B2293
	lw x111, 2(x105)
	fmul x111, x110, x111
	fadd x111, x111, x108
	fabs x111, x111
	lw x112, 4(x104)
	lw x112, 2(x112)
	fle x111, x112, x111
	bne	x111, zero, iter_trace_diffuse_rays_beqelse_b2297
# B2295
	lw x111, 1(x109)
	feq x111, x111, zero
	xori x111, x111, 1
	mv x112, x111
# B2296
	bne	x112, zero, iter_trace_diffuse_rays_beqelse_b2298
iter_trace_diffuse_rays_beqelse_b2297:
# B2297
	lw x110, 2(x109)
	fsub x110, x110, x107
	lw x111, 3(x109)
	fmul x110, x110, x111
	lw x111, 0(x105)
	fmul x111, x110, x111
	fadd x111, x111, x106
	fabs x111, x111
	lw x112, 4(x104)
	lw x112, 0(x112)
	fle x111, x112, x111
	bne	x111, zero, iter_trace_diffuse_rays_beqelse_b2304
# B2300
	lw x111, 2(x105)
	fmul x111, x110, x111
	fadd x111, x111, x108
	fabs x111, x111
	lw x112, 4(x104)
	lw x112, 2(x112)
	fle x111, x112, x111
	bne	x111, zero, iter_trace_diffuse_rays_beqelse_b2304
# B2302
	lw x111, 3(x109)
	feq x111, x111, zero
	xori x111, x111, 1
	mv x112, x111
# B2303
	bne	x112, zero, iter_trace_diffuse_rays_beqelse_b2305
iter_trace_diffuse_rays_beqelse_b2304:
# B2304
	lw x110, 4(x109)
	fsub x108, x110, x108
	lw x110, 5(x109)
	fmul x108, x108, x110
	lw x110, 0(x105)
	fmul x110, x108, x110
	fadd x106, x110, x106
	fabs x106, x106
	lw x110, 4(x104)
	lw x110, 0(x110)
	fle x106, x110, x106
	bne	x106, zero, iter_trace_diffuse_rays_beqelse_b2311
# B2307
	lw x105, 1(x105)
	fmul x105, x108, x105
	fadd x105, x105, x107
	fabs x105, x105
	lw x104, 4(x104)
	lw x104, 1(x104)
	fle x104, x104, x105
	bne	x104, zero, iter_trace_diffuse_rays_beqelse_b2311
# B2309
	lw x104, 5(x109)
	feq x104, x104, zero
	xori x104, x104, 1
	mv x105, x104
# B2310
	bne	x105, zero, iter_trace_diffuse_rays_beqelse_b2312
iter_trace_diffuse_rays_beqelse_b2311:
# B2311
	mv x104, zero
	addi x96, x96, 1
	j iter_trace_diffuse_rays_cont_b2325 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2312:
# B2312
	sw x108, 0(x23)
	li x104, 3
	addi x96, x96, 1
	j iter_trace_diffuse_rays_cont_b2326 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2305:
# B2305
	sw x110, 0(x23)
	mv x104, x12
	j iter_trace_diffuse_rays_cont_b2324 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2298:
# B2298
	sw x110, 0(x23)
	mv x104, x100
	j iter_trace_diffuse_rays_cont_b2324 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2291:
# B2291
	bne	x110, x12, iter_trace_diffuse_rays_beqelse_b2314
# B2313
	lw x104, 0(x109)
	fle x104, zero, x104
	beq	x104, zero, iter_trace_diffuse_rays_bneelse_b2316
# B2315
	mv x104, zero
	addi x96, x96, 1
	j iter_trace_diffuse_rays_cont_b2325 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2316:
# B2316
	lw x104, 0(x109)
	lw x105, 3(x105)
	fmul x104, x104, x105
	sw x104, 0(x23)
	mv x104, x100
	j iter_trace_diffuse_rays_cont_b2324 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2314:
# B2314
	lw x110, 0(x109)
	feq x111, x110, zero
	bne	x111, zero, iter_trace_diffuse_rays_beqelse_b2318
# B2317
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
	fle x107, x105, zero
	beq	x107, zero, iter_trace_diffuse_rays_bneelse_b2320
# B2319
	mv x104, zero
	addi x96, x96, 1
	j iter_trace_diffuse_rays_cont_b2325 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2320:
# B2320
	lw x104, 6(x104)
	fsqrt x105, x105
	bne	x104, zero, iter_trace_diffuse_rays_beqelse_b2322
# B2321
	fsub x104, x106, x105
	lw x105, 4(x109)
	fmul x104, x104, x105
	sw x104, 0(x23)
	j iter_trace_diffuse_rays_cont_b2323 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2322:
# B2322
	fadd x104, x106, x105
	lw x105, 4(x109)
	fmul x104, x104, x105
	sw x104, 0(x23)
iter_trace_diffuse_rays_cont_b2323:
# B2323
	mv x104, x100
iter_trace_diffuse_rays_cont_b2324:
# B2324
	addi x96, x96, 1
	bne	x104, zero, iter_trace_diffuse_rays_beqelse_b2326
	j iter_trace_diffuse_rays_cont_b2325 # adhoc jump(3)
iter_trace_diffuse_rays_beqelse_b2326:
iter_trace_diffuse_rays_cont_b2326:
# B2326
	lw x105, 0(x23)
	fle x106, x105, zero
	bne	x106, zero, iter_trace_diffuse_rays_beqelse_b2359
# B2330
	lw x106, 0(x19)
	fle x106, x106, x105
	bne	x106, zero, iter_trace_diffuse_rays_beqelse_b2359
# B2332
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
iter_trace_diffuse_rays_loop_b2333:
# B2333
	add x4, x109, x108
	lw x113, 0(x4)
	bne	x113, x24, iter_trace_diffuse_rays_beqelse_b2335
# B2334
	mv x114, x100
# B2356
	bne	x114, zero, iter_trace_diffuse_rays_beqelse_b2358
	j iter_trace_diffuse_rays_cont_b2357 # adhoc jump(3)
iter_trace_diffuse_rays_beqelse_b2358:
# B2358
	sw x105, 0(x19)
	sw x106, 0(x31)
	sw x107, 1(x31)
	sw x20, 2(x31)
	sw x103, 0(x32)
	sw x104, 0(x33)
	j iter_trace_diffuse_rays_cont_b2359 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2335:
# B2335
	add x4, x26, x113
	lw x113, 0(x4)
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
	bne	x117, x100, iter_trace_diffuse_rays_beqelse_b2337
# B2336
	fabs x114, x114
	lw x117, 4(x113)
	lw x117, 0(x117)
	fle x114, x117, x114
	bne	x114, zero, iter_trace_diffuse_rays_beqelse_b2343
# B2339
	fabs x114, x115
	lw x115, 4(x113)
	lw x115, 1(x115)
	fle x114, x115, x114
	bne	x114, zero, iter_trace_diffuse_rays_beqelse_b2343
# B2341
	fabs x114, x116
	lw x115, 4(x113)
	lw x115, 2(x115)
	fle x114, x115, x114
	xori x114, x114, 1
	mv x115, x114
# B2342
	bne	x115, zero, iter_trace_diffuse_rays_beqelse_b2344
iter_trace_diffuse_rays_beqelse_b2343:
# B2343
	lw x113, 6(x113)
	xori x113, x113, 1
	j iter_trace_diffuse_rays_cont_b2353 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2344:
# B2344
	lw x113, 6(x113)
	j iter_trace_diffuse_rays_cont_b2353 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2337:
# B2337
	bne	x117, x12, iter_trace_diffuse_rays_beqelse_b2346
# B2345
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
	j iter_trace_diffuse_rays_cont_b2353 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2346:
# B2346
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
	bne	x118, zero, iter_trace_diffuse_rays_beqelse_b2348
# B2347
	mv x114, x117
	j iter_trace_diffuse_rays_cont_b2349 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2348:
# B2348
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
iter_trace_diffuse_rays_cont_b2349:
# B2349
	lw x115, 1(x113)
	bne	x115, x29, iter_trace_diffuse_rays_beqelse_b2352
# B2350
	fsub x114, x114, x30
iter_trace_diffuse_rays_beqelse_b2352:
# B2352
	lw x113, 6(x113)
	fle x114, zero, x114
	xori x114, x114, 1
	xor x113, x113, x114
	xori x113, x113, 1
iter_trace_diffuse_rays_cont_b2353:
# B2353
	bne	x113, zero, iter_trace_diffuse_rays_beqelse_b2357
# B2354
	addi x108, x108, 1
	j iter_trace_diffuse_rays_loop_b2333 # loopback to while entry from B2354
iter_trace_diffuse_rays_beqelse_b2357:
iter_trace_diffuse_rays_cont_b2357:
# B2357
iter_trace_diffuse_rays_beqelse_b2359:
iter_trace_diffuse_rays_cont_b2359:
# B2359
	j iter_trace_diffuse_rays_loop_b2287 # loopback to while entry from B2359
iter_trace_diffuse_rays_beqelse_b2318:
# B2318
	mv x104, zero
	addi x96, x96, 1
iter_trace_diffuse_rays_cont_b2325:
# B2325
	add x4, x26, x103
	lw x20, 0(x4)
	lw x20, 6(x20)
	beq	x20, zero, iter_trace_diffuse_rays_bneelse_b2360
	j	iter_trace_diffuse_rays_loop_b2287 # moved need extra jump
iter_trace_diffuse_rays_bneelse_b2360:
# B2360
	addi x97, x97, 1
	j iter_trace_diffuse_rays_loop_b2284 # loopback to while entry from B2360
	j iter_trace_diffuse_rays_loop_b2287 # loopback to while entry from B2325
iter_trace_diffuse_rays_beqelse_b2283:
# B2283
	add x4, x26, x96
	lw x97, 0(x4)
	lw x98, 10(x97)
	lw x99, 0(x98)
	lw x101, 1(x98)
	lw x102, 2(x98)
	lw x103, 1(x95)
	add x4, x103, x96
	lw x96, 0(x4)
	lw x103, 1(x97)
	bne	x103, x100, iter_trace_diffuse_rays_beqelse_b2362
# B2361
	lw x98, 0(x95)
	lw x103, 0(x96)
	fsub x103, x103, x99
	lw x104, 1(x96)
	fmul x103, x103, x104
	lw x104, 1(x98)
	fmul x104, x103, x104
	fadd x104, x104, x101
	fabs x104, x104
	lw x105, 4(x97)
	lw x105, 1(x105)
	fle x104, x105, x104
	bne	x104, zero, iter_trace_diffuse_rays_beqelse_b2368
# B2364
	lw x104, 2(x98)
	fmul x104, x103, x104
	fadd x104, x104, x102
	fabs x104, x104
	lw x105, 4(x97)
	lw x105, 2(x105)
	fle x104, x105, x104
	bne	x104, zero, iter_trace_diffuse_rays_beqelse_b2368
# B2366
	lw x104, 1(x96)
	feq x104, x104, zero
	xori x104, x104, 1
	mv x105, x104
# B2367
	bne	x105, zero, iter_trace_diffuse_rays_beqelse_b2369
iter_trace_diffuse_rays_beqelse_b2368:
# B2368
	lw x103, 2(x96)
	fsub x103, x103, x101
	lw x104, 3(x96)
	fmul x103, x103, x104
	lw x104, 0(x98)
	fmul x104, x103, x104
	fadd x104, x104, x99
	fabs x104, x104
	lw x105, 4(x97)
	lw x105, 0(x105)
	fle x104, x105, x104
	bne	x104, zero, iter_trace_diffuse_rays_beqelse_b2375
# B2371
	lw x104, 2(x98)
	fmul x104, x103, x104
	fadd x104, x104, x102
	fabs x104, x104
	lw x105, 4(x97)
	lw x105, 2(x105)
	fle x104, x105, x104
	bne	x104, zero, iter_trace_diffuse_rays_beqelse_b2375
# B2373
	lw x104, 3(x96)
	feq x104, x104, zero
	xori x104, x104, 1
	mv x105, x104
# B2374
	bne	x105, zero, iter_trace_diffuse_rays_beqelse_b2376
iter_trace_diffuse_rays_beqelse_b2375:
# B2375
	lw x103, 4(x96)
	fsub x102, x103, x102
	lw x103, 5(x96)
	fmul x102, x102, x103
	lw x103, 0(x98)
	fmul x103, x102, x103
	fadd x99, x103, x99
	fabs x99, x99
	lw x103, 4(x97)
	lw x103, 0(x103)
	fle x99, x103, x99
	bne	x99, zero, iter_trace_diffuse_rays_beqelse_b2382
# B2378
	lw x98, 1(x98)
	fmul x98, x102, x98
	fadd x98, x98, x101
	fabs x98, x98
	lw x97, 4(x97)
	lw x97, 1(x97)
	fle x97, x97, x98
	bne	x97, zero, iter_trace_diffuse_rays_beqelse_b2382
# B2380
	lw x96, 5(x96)
	feq x96, x96, zero
	xori x96, x96, 1
	mv x97, x96
# B2381
	bne	x97, zero, iter_trace_diffuse_rays_beqelse_b2383
iter_trace_diffuse_rays_beqelse_b2382:
# B2382
	j iter_trace_diffuse_rays_cont_b2396 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2383:
# B2383
	sw x102, 0(x23)
	mv x96, x29
	j iter_trace_diffuse_rays_cont_b2395 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2376:
# B2376
	sw x103, 0(x23)
	mv x96, x12
	j iter_trace_diffuse_rays_cont_b2395 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2369:
# B2369
	sw x103, 0(x23)
	mv x96, x100
	j iter_trace_diffuse_rays_cont_b2395 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2362:
# B2362
	bne	x103, x12, iter_trace_diffuse_rays_beqelse_b2385
# B2384
	lw x97, 0(x96)
	fle x97, zero, x97
	bne	x97, zero, iter_trace_diffuse_rays_beqelse_b2396
# B2387
	lw x96, 0(x96)
	lw x97, 3(x98)
	fmul x96, x96, x97
	sw x96, 0(x23)
	mv x96, x100
	j iter_trace_diffuse_rays_cont_b2395 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2385:
# B2385
	lw x103, 0(x96)
	feq x104, x103, zero
	bne	x104, zero, iter_trace_diffuse_rays_beqelse_b2396
# B2388
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
	fle x101, x98, zero
	bne	x101, zero, iter_trace_diffuse_rays_beqelse_b2396
# B2391
	lw x97, 6(x97)
	fsqrt x98, x98
	bne	x97, zero, iter_trace_diffuse_rays_beqelse_b2393
# B2392
	fsub x97, x99, x98
	lw x96, 4(x96)
	fmul x96, x97, x96
	sw x96, 0(x23)
	j iter_trace_diffuse_rays_cont_b2394 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2393:
# B2393
	fadd x97, x99, x98
	lw x96, 4(x96)
	fmul x96, x97, x96
	sw x96, 0(x23)
iter_trace_diffuse_rays_cont_b2394:
# B2394
	mv x96, x100
iter_trace_diffuse_rays_cont_b2395:
# B2395
	bne	x96, zero, iter_trace_diffuse_rays_beqelse_b2397
iter_trace_diffuse_rays_beqelse_b2396:
iter_trace_diffuse_rays_cont_b2396:
# B2396
	j iter_trace_diffuse_rays_cont_b2477 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2397:
# B2397
	lw x96, 0(x23)
	lw x97, 0(x19)
	fle x96, x97, x96
	bne	x96, zero, iter_trace_diffuse_rays_beqelse_b2477
# B2399
	mv x97, x100
	mv x98, x20
	mv x99, x95
iter_trace_diffuse_rays_loop_b2400:
# B2400
	add x4, x98, x97
	lw x20, 0(x4)
	beq	x20, x24, iter_trace_diffuse_rays_bneelse_b2477
# B2402
	add x4, x25, x20
	lw x20, 0(x4)
	mv x101, x20
	mv x102, x99
	mv x96, zero
iter_trace_diffuse_rays_loop_b2403:
# B2403
	lw x20, 0(x102)
	add x4, x101, x96
	lw x103, 0(x4)
	beq	x103, x24, iter_trace_diffuse_rays_bneelse_b2476
# B2405
	add x4, x26, x103
	lw x104, 0(x4)
	lw x105, 10(x104)
	lw x106, 0(x105)
	lw x107, 1(x105)
	lw x108, 2(x105)
	lw x109, 1(x102)
	add x4, x109, x103
	lw x109, 0(x4)
	lw x110, 1(x104)
	bne	x110, x100, iter_trace_diffuse_rays_beqelse_b2407
# B2406
	lw x105, 0(x102)
	lw x110, 0(x109)
	fsub x110, x110, x106
	lw x111, 1(x109)
	fmul x110, x110, x111
	lw x111, 1(x105)
	fmul x111, x110, x111
	fadd x111, x111, x107
	fabs x111, x111
	lw x112, 4(x104)
	lw x112, 1(x112)
	fle x111, x112, x111
	bne	x111, zero, iter_trace_diffuse_rays_beqelse_b2413
# B2409
	lw x111, 2(x105)
	fmul x111, x110, x111
	fadd x111, x111, x108
	fabs x111, x111
	lw x112, 4(x104)
	lw x112, 2(x112)
	fle x111, x112, x111
	bne	x111, zero, iter_trace_diffuse_rays_beqelse_b2413
# B2411
	lw x111, 1(x109)
	feq x111, x111, zero
	xori x111, x111, 1
	mv x112, x111
# B2412
	bne	x112, zero, iter_trace_diffuse_rays_beqelse_b2414
iter_trace_diffuse_rays_beqelse_b2413:
# B2413
	lw x110, 2(x109)
	fsub x110, x110, x107
	lw x111, 3(x109)
	fmul x110, x110, x111
	lw x111, 0(x105)
	fmul x111, x110, x111
	fadd x111, x111, x106
	fabs x111, x111
	lw x112, 4(x104)
	lw x112, 0(x112)
	fle x111, x112, x111
	bne	x111, zero, iter_trace_diffuse_rays_beqelse_b2420
# B2416
	lw x111, 2(x105)
	fmul x111, x110, x111
	fadd x111, x111, x108
	fabs x111, x111
	lw x112, 4(x104)
	lw x112, 2(x112)
	fle x111, x112, x111
	bne	x111, zero, iter_trace_diffuse_rays_beqelse_b2420
# B2418
	lw x111, 3(x109)
	feq x111, x111, zero
	xori x111, x111, 1
	mv x112, x111
# B2419
	bne	x112, zero, iter_trace_diffuse_rays_beqelse_b2421
iter_trace_diffuse_rays_beqelse_b2420:
# B2420
	lw x110, 4(x109)
	fsub x108, x110, x108
	lw x110, 5(x109)
	fmul x108, x108, x110
	lw x110, 0(x105)
	fmul x110, x108, x110
	fadd x106, x110, x106
	fabs x106, x106
	lw x110, 4(x104)
	lw x110, 0(x110)
	fle x106, x110, x106
	bne	x106, zero, iter_trace_diffuse_rays_beqelse_b2427
# B2423
	lw x105, 1(x105)
	fmul x105, x108, x105
	fadd x105, x105, x107
	fabs x105, x105
	lw x104, 4(x104)
	lw x104, 1(x104)
	fle x104, x104, x105
	bne	x104, zero, iter_trace_diffuse_rays_beqelse_b2427
# B2425
	lw x104, 5(x109)
	feq x104, x104, zero
	xori x104, x104, 1
	mv x105, x104
# B2426
	bne	x105, zero, iter_trace_diffuse_rays_beqelse_b2428
iter_trace_diffuse_rays_beqelse_b2427:
# B2427
	mv x104, zero
	addi x96, x96, 1
	j iter_trace_diffuse_rays_cont_b2441 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2428:
# B2428
	sw x108, 0(x23)
	mv x104, x29
	j iter_trace_diffuse_rays_cont_b2440 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2421:
# B2421
	sw x110, 0(x23)
	mv x104, x12
	j iter_trace_diffuse_rays_cont_b2440 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2414:
# B2414
	sw x110, 0(x23)
	mv x104, x100
	j iter_trace_diffuse_rays_cont_b2440 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2407:
# B2407
	bne	x110, x12, iter_trace_diffuse_rays_beqelse_b2430
# B2429
	lw x104, 0(x109)
	fle x104, zero, x104
	beq	x104, zero, iter_trace_diffuse_rays_bneelse_b2432
# B2431
	mv x104, zero
	addi x96, x96, 1
	j iter_trace_diffuse_rays_cont_b2441 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2432:
# B2432
	lw x104, 0(x109)
	lw x105, 3(x105)
	fmul x104, x104, x105
	sw x104, 0(x23)
	mv x104, x100
	j iter_trace_diffuse_rays_cont_b2440 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2430:
# B2430
	lw x110, 0(x109)
	feq x111, x110, zero
	bne	x111, zero, iter_trace_diffuse_rays_beqelse_b2434
# B2433
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
	fle x107, x105, zero
	beq	x107, zero, iter_trace_diffuse_rays_bneelse_b2436
# B2435
	mv x104, zero
	addi x96, x96, 1
	j iter_trace_diffuse_rays_cont_b2441 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2436:
# B2436
	lw x104, 6(x104)
	fsqrt x105, x105
	bne	x104, zero, iter_trace_diffuse_rays_beqelse_b2438
# B2437
	fsub x104, x106, x105
	lw x105, 4(x109)
	fmul x104, x104, x105
	sw x104, 0(x23)
	j iter_trace_diffuse_rays_cont_b2439 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2438:
# B2438
	fadd x104, x106, x105
	lw x105, 4(x109)
	fmul x104, x104, x105
	sw x104, 0(x23)
iter_trace_diffuse_rays_cont_b2439:
# B2439
	mv x104, x100
iter_trace_diffuse_rays_cont_b2440:
# B2440
	addi x96, x96, 1
	bne	x104, zero, iter_trace_diffuse_rays_beqelse_b2442
	j iter_trace_diffuse_rays_cont_b2441 # adhoc jump(3)
iter_trace_diffuse_rays_beqelse_b2442:
# B2442
	lw x105, 0(x23)
	fle x106, x105, zero
	bne	x106, zero, iter_trace_diffuse_rays_beqelse_b2475
# B2446
	lw x106, 0(x19)
	fle x106, x106, x105
	bne	x106, zero, iter_trace_diffuse_rays_beqelse_b2475
# B2448
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
iter_trace_diffuse_rays_loop_b2449:
# B2449
	add x4, x109, x108
	lw x113, 0(x4)
	bne	x113, x24, iter_trace_diffuse_rays_beqelse_b2451
# B2450
	mv x114, x100
# B2472
	bne	x114, zero, iter_trace_diffuse_rays_beqelse_b2474
	j iter_trace_diffuse_rays_cont_b2473 # adhoc jump(3)
iter_trace_diffuse_rays_beqelse_b2474:
# B2474
	sw x105, 0(x19)
	sw x106, 0(x31)
	sw x107, 1(x31)
	sw x20, 2(x31)
	sw x103, 0(x32)
	sw x104, 0(x33)
	j iter_trace_diffuse_rays_cont_b2475 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2451:
# B2451
	add x4, x26, x113
	lw x113, 0(x4)
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
	bne	x117, x100, iter_trace_diffuse_rays_beqelse_b2453
# B2452
	fabs x114, x114
	lw x117, 4(x113)
	lw x117, 0(x117)
	fle x114, x117, x114
	bne	x114, zero, iter_trace_diffuse_rays_beqelse_b2459
# B2455
	fabs x114, x115
	lw x115, 4(x113)
	lw x115, 1(x115)
	fle x114, x115, x114
	bne	x114, zero, iter_trace_diffuse_rays_beqelse_b2459
# B2457
	fabs x114, x116
	lw x115, 4(x113)
	lw x115, 2(x115)
	fle x114, x115, x114
	xori x114, x114, 1
	mv x115, x114
# B2458
	bne	x115, zero, iter_trace_diffuse_rays_beqelse_b2460
iter_trace_diffuse_rays_beqelse_b2459:
# B2459
	lw x113, 6(x113)
	xori x113, x113, 1
	j iter_trace_diffuse_rays_cont_b2469 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2460:
# B2460
	lw x113, 6(x113)
	j iter_trace_diffuse_rays_cont_b2469 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2453:
# B2453
	bne	x117, x12, iter_trace_diffuse_rays_beqelse_b2462
# B2461
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
	j iter_trace_diffuse_rays_cont_b2469 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2462:
# B2462
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
	bne	x118, zero, iter_trace_diffuse_rays_beqelse_b2464
# B2463
	mv x114, x117
	j iter_trace_diffuse_rays_cont_b2465 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2464:
# B2464
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
iter_trace_diffuse_rays_cont_b2465:
# B2465
	lw x115, 1(x113)
	bne	x115, x29, iter_trace_diffuse_rays_beqelse_b2468
# B2466
	fsub x114, x114, x30
iter_trace_diffuse_rays_beqelse_b2468:
# B2468
	lw x113, 6(x113)
	fle x114, zero, x114
	xori x114, x114, 1
	xor x113, x113, x114
	xori x113, x113, 1
iter_trace_diffuse_rays_cont_b2469:
# B2469
	bne	x113, zero, iter_trace_diffuse_rays_beqelse_b2473
# B2470
	addi x108, x108, 1
	j iter_trace_diffuse_rays_loop_b2449 # loopback to while entry from B2470
iter_trace_diffuse_rays_beqelse_b2473:
iter_trace_diffuse_rays_cont_b2473:
# B2473
iter_trace_diffuse_rays_beqelse_b2475:
iter_trace_diffuse_rays_cont_b2475:
# B2475
	j iter_trace_diffuse_rays_loop_b2403 # loopback to while entry from B2475
iter_trace_diffuse_rays_beqelse_b2434:
# B2434
	mv x104, zero
	addi x96, x96, 1
iter_trace_diffuse_rays_cont_b2441:
# B2441
	add x4, x26, x103
	lw x20, 0(x4)
	lw x20, 6(x20)
	beq	x20, zero, iter_trace_diffuse_rays_bneelse_b2476
	j	iter_trace_diffuse_rays_loop_b2403 # moved need extra jump
iter_trace_diffuse_rays_bneelse_b2476:
# B2476
	addi x97, x97, 1
	j iter_trace_diffuse_rays_loop_b2400 # loopback to while entry from B2476
	j iter_trace_diffuse_rays_loop_b2403 # loopback to while entry from B2441
iter_trace_diffuse_rays_beqelse_b2477:
iter_trace_diffuse_rays_bneelse_b2477:
iter_trace_diffuse_rays_cont_b2477:
# B2477
	addi x93, x93, 1
	j iter_trace_diffuse_rays_loop_b2279 # loopback to while entry from B2477
iter_trace_diffuse_rays_bneelse_b2478:
# B2478
	lw x19, 0(x19)
	fle x20, x19, x34
	bne	x20, zero, iter_trace_diffuse_rays_beqelse_b2482
# B2480
	fle x19, x35, x19
	xori x19, x19, 1
	mv x20, x19
# B2481
	bne	x20, zero, iter_trace_diffuse_rays_beqelse_b2483
iter_trace_diffuse_rays_beqelse_b2482:
# B2482
	j iter_trace_diffuse_rays_cont_b3363 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2483:
# B2483
	lw x19, 0(x32)
	add x4, x26, x19
	lw x19, 0(x4)
	lw x18, 0(x18)
	lw x20, 1(x19)
	bne	x20, x100, iter_trace_diffuse_rays_beqelse_b2485
# B2484
	lw x20, 0(x33)
	sw zero, 0(x36)
	sw zero, 1(x36)
	sw zero, 2(x36)
	addi x20, x20, -1
	add x4, x18, x20
	lw x18, 0(x4)
	feq x28, x18, zero
	bne	x28, zero, iter_trace_diffuse_rays_beqelse_b2487
# B2486
	fle x18, x18, zero
	beq	x18, zero, iter_trace_diffuse_rays_bneelse_b2489
# B2488
	lui x18, 784384
	j iter_trace_diffuse_rays_cont_b2490 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2489:
# B2489
	mv x18, x30
	j iter_trace_diffuse_rays_cont_b2490 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2487:
# B2487
	mv x18, zero
iter_trace_diffuse_rays_cont_b2490:
# B2490
	fsub x18, zero, x18
	add x4, x36, x20
	sw x18, 0(x4)
	j iter_trace_diffuse_rays_cont_b2501 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2485:
# B2485
	bne	x20, x12, iter_trace_diffuse_rays_beqelse_b2492
# B2491
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
	j iter_trace_diffuse_rays_cont_b2501 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2492:
# B2492
	lw x18, 0(x31)
	lw x20, 5(x19)
	lw x20, 0(x20)
	fsub x18, x18, x20
	lw x20, 1(x31)
	lw x28, 5(x19)
	lw x28, 1(x28)
	fsub x20, x20, x28
	lw x28, 2(x31)
	lw x32, 5(x19)
	lw x32, 2(x32)
	fsub x28, x28, x32
	lw x32, 4(x19)
	lw x32, 0(x32)
	fmul x32, x18, x32
	lw x33, 4(x19)
	lw x33, 1(x33)
	fmul x33, x20, x33
	lw x35, 4(x19)
	lw x35, 2(x35)
	fmul x35, x28, x35
	lw x93, 3(x19)
	bne	x93, zero, iter_trace_diffuse_rays_beqelse_b2494
# B2493
	sw x32, 0(x36)
	sw x33, 1(x36)
	sw x35, 2(x36)
	j iter_trace_diffuse_rays_cont_b2495 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2494:
# B2494
	lw x93, 9(x19)
	lw x93, 2(x93)
	fmul x93, x20, x93
	lw x94, 9(x19)
	lw x94, 1(x94)
	fmul x94, x28, x94
	fadd x93, x93, x94
	fmul x93, x93, x37
	fadd x32, x32, x93
	sw x32, 0(x36)
	lw x32, 9(x19)
	lw x32, 2(x32)
	fmul x32, x18, x32
	lw x93, 9(x19)
	lw x93, 0(x93)
	fmul x28, x28, x93
	fadd x28, x32, x28
	fmul x28, x28, x37
	fadd x28, x33, x28
	sw x28, 1(x36)
	lw x28, 9(x19)
	lw x28, 1(x28)
	fmul x18, x18, x28
	lw x28, 9(x19)
	lw x28, 0(x28)
	fmul x20, x20, x28
	fadd x18, x18, x20
	fmul x18, x18, x37
	fadd x18, x35, x18
	sw x18, 2(x36)
iter_trace_diffuse_rays_cont_b2495:
# B2495
	lw x18, 6(x19)
	lw x20, 0(x36)
	fmul x20, x20, x20
	lw x28, 1(x36)
	fmul x28, x28, x28
	fadd x20, x20, x28
	lw x28, 2(x36)
	fmul x28, x28, x28
	fadd x20, x20, x28
	fsqrt x20, x20
	feq x28, x20, zero
	bne	x28, zero, iter_trace_diffuse_rays_beqelse_b2497
# B2496
	bne	x18, zero, iter_trace_diffuse_rays_beqelse_b2499
# B2498
	fdiv x18, x30, x20
	j iter_trace_diffuse_rays_cont_b2500 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2499:
# B2499
	fdiv x18, x38, x20
	j iter_trace_diffuse_rays_cont_b2500 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2497:
# B2497
	mv x18, x30
iter_trace_diffuse_rays_cont_b2500:
# B2500
	lw x20, 0(x36)
	fmul x20, x20, x18
	sw x20, 0(x36)
	lw x20, 1(x36)
	fmul x20, x20, x18
	sw x20, 1(x36)
	lw x20, 2(x36)
	fmul x18, x20, x18
	sw x18, 2(x36)
iter_trace_diffuse_rays_cont_b2501:
# B2501
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
	bne	x18, x100, iter_trace_diffuse_rays_beqelse_b2503
# B2502
	lw x18, 0(x31)
	lw x20, 5(x19)
	lw x20, 0(x20)
	fsub x18, x18, x20
	fmul x20, x18, x40
	floor x20, x20
	fmul x20, x20, x5
	fsub x18, x18, x20
	fle x18, x6, x18
	xori x18, x18, 1
	lw x20, 2(x31)
	lw x28, 5(x19)
	lw x28, 2(x28)
	fsub x20, x20, x28
	fmul x28, x20, x40
	floor x28, x28
	fmul x28, x28, x5
	fsub x20, x20, x28
	fle x20, x6, x20
	xori x20, x20, 1
	bne	x18, zero, iter_trace_diffuse_rays_beqelse_b2505
# B2504
	bne	x20, zero, iter_trace_diffuse_rays_beqelse_b2507
# B2506
	lui x18, 276464
	j iter_trace_diffuse_rays_cont_b2510 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2507:
# B2507
	mv x18, zero
	j iter_trace_diffuse_rays_cont_b2510 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2505:
# B2505
	bne	x20, zero, iter_trace_diffuse_rays_beqelse_b2509
# B2508
	mv x18, zero
	j iter_trace_diffuse_rays_cont_b2510 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2509:
# B2509
	lui x18, 276464
iter_trace_diffuse_rays_cont_b2510:
# B2510
	sw x18, 1(x39)
	j iter_trace_diffuse_rays_cont_b2589 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2503:
# B2503
	bne	x18, x12, iter_trace_diffuse_rays_beqelse_b2512
# B2511
	lw x18, 1(x31)
	fmul x18, x18, x65
	fle x20, x18, zero
	xori x20, x20, 1
	fabs x18, x18
	mv x32, x66
	mv x28, x18
iter_trace_diffuse_rays_loop_b2513:
# B2513
	fle x33, x28, x32
	bne	x33, zero, iter_trace_diffuse_rays_beqelse_b2516
# B2514
	fmul x32, x32, x67
	j iter_trace_diffuse_rays_loop_b2513 # loopback to while entry from B2514
iter_trace_diffuse_rays_beqelse_b2516:
# B2516
	mv x37, x32
	mv x35, x18
iter_trace_diffuse_rays_loop_b2517:
# B2517
	fle x18, x66, x35
	beq	x18, zero, iter_trace_diffuse_rays_bneelse_b2522
# B2519
	fle x18, x35, x37
	fdiv x28, x37, x67
	bne	x18, zero, iter_trace_diffuse_rays_beqelse_b2521
# B2520
	fsub x35, x35, x37
	mv x37, x28
	j iter_trace_diffuse_rays_loop_b2517 # loopback to while entry from B2520
iter_trace_diffuse_rays_beqelse_b2521:
# B2521
	mv x37, x28
	j iter_trace_diffuse_rays_loop_b2517 # loopback to while entry from B2521
iter_trace_diffuse_rays_bneelse_b2522:
# B2522
	fle x18, x68, x35
	bne	x18, zero, iter_trace_diffuse_rays_beqelse_b2524
# B2523
	mv x28, x35
	j iter_trace_diffuse_rays_cont_b2525 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2524:
# B2524
	fsub x28, x35, x68
iter_trace_diffuse_rays_cont_b2525:
# B2525
	xor x18, x18, x20
	fle x20, x69, x28
	bne	x20, zero, iter_trace_diffuse_rays_beqelse_b2527
# B2526
	mv x20, x28
	j iter_trace_diffuse_rays_cont_b2528 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2527:
# B2527
	fsub x20, x68, x28
iter_trace_diffuse_rays_cont_b2528:
# B2528
	fle x28, x7, x20
	bne	x28, zero, iter_trace_diffuse_rays_beqelse_b2530
# B2529
	fmul x28, x20, x20
	fmul x32, x28, x72
	fadd x32, x71, x32
	fmul x32, x28, x32
	fadd x32, x70, x32
	fmul x28, x28, x32
	fadd x28, x30, x28
	fmul x20, x20, x28
	j iter_trace_diffuse_rays_cont_b2531 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2530:
# B2530
	fsub x20, x69, x20
	fmul x20, x20, x20
	fmul x28, x20, x75
	fadd x28, x74, x28
	fmul x28, x20, x28
	fadd x28, x73, x28
	fmul x20, x20, x28
	fadd x20, x30, x20
iter_trace_diffuse_rays_cont_b2531:
# B2531
	fle x28, x20, zero
	beq	x18, x28, iter_trace_diffuse_rays_bneelse_b2533
# B2532
	mv x18, x20
	j iter_trace_diffuse_rays_cont_b2534 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2533:
# B2533
	fsub x18, zero, x20
iter_trace_diffuse_rays_cont_b2534:
# B2534
	fmul x18, x18, x18
	fmul x20, x76, x18
	sw x20, 0(x39)
	fsub x18, x30, x18
	fmul x18, x76, x18
	sw x18, 1(x39)
	j iter_trace_diffuse_rays_cont_b2589 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2512:
# B2512
	bne	x18, x29, iter_trace_diffuse_rays_beqelse_b2536
# B2535
	lw x18, 0(x31)
	lw x20, 5(x19)
	lw x20, 0(x20)
	fsub x18, x18, x20
	lw x20, 2(x31)
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
iter_trace_diffuse_rays_loop_b2537:
# B2537
	fle x32, x20, x28
	bne	x32, zero, iter_trace_diffuse_rays_beqelse_b2540
# B2538
	fmul x28, x28, x67
	j iter_trace_diffuse_rays_loop_b2537 # loopback to while entry from B2538
iter_trace_diffuse_rays_beqelse_b2540:
# B2540
	mv x35, x28
	mv x33, x18
iter_trace_diffuse_rays_loop_b2541:
# B2541
	fle x18, x66, x33
	beq	x18, zero, iter_trace_diffuse_rays_bneelse_b2546
# B2543
	fle x18, x33, x35
	fdiv x20, x35, x67
	bne	x18, zero, iter_trace_diffuse_rays_beqelse_b2545
# B2544
	fsub x33, x33, x35
	mv x35, x20
	j iter_trace_diffuse_rays_loop_b2541 # loopback to while entry from B2544
iter_trace_diffuse_rays_beqelse_b2545:
# B2545
	mv x35, x20
	j iter_trace_diffuse_rays_loop_b2541 # loopback to while entry from B2545
iter_trace_diffuse_rays_bneelse_b2546:
# B2546
	fle x18, x68, x33
	bne	x18, zero, iter_trace_diffuse_rays_beqelse_b2548
# B2547
	mv x20, x33
	j iter_trace_diffuse_rays_cont_b2549 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2548:
# B2548
	fsub x20, x33, x68
iter_trace_diffuse_rays_cont_b2549:
# B2549
	bne	x18, zero, iter_trace_diffuse_rays_beqelse_b2551
# B2550
	mv x28, x100
	j iter_trace_diffuse_rays_cont_b2552 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2551:
# B2551
	mv x28, zero
iter_trace_diffuse_rays_cont_b2552:
# B2552
	fle x18, x69, x20
	bne	x18, zero, iter_trace_diffuse_rays_beqelse_b2554
	j iter_trace_diffuse_rays_cont_b2555 # adhoc jump(3)
iter_trace_diffuse_rays_beqelse_b2554:
# B2554
	fsub x20, x68, x20
iter_trace_diffuse_rays_cont_b2555:
# B2555
	xor x18, x18, x28
	fle x28, x7, x20
	bne	x28, zero, iter_trace_diffuse_rays_beqelse_b2557
iter_trace_diffuse_rays_cont_b2556:
# B2556
	fmul x20, x20, x20
	fmul x28, x20, x75
	fadd x28, x74, x28
	fmul x28, x20, x28
	fadd x28, x73, x28
	fmul x20, x20, x28
	fadd x20, x30, x20
	j iter_trace_diffuse_rays_cont_b2558 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2557:
# B2557
	fsub x20, x69, x20
	fmul x28, x20, x20
	fmul x32, x28, x72
	fadd x32, x71, x32
	fmul x32, x28, x32
	fadd x32, x70, x32
	fmul x28, x28, x32
	fadd x28, x30, x28
	fmul x20, x20, x28
iter_trace_diffuse_rays_cont_b2558:
# B2558
	fle x28, x20, zero
	beq	x18, x28, iter_trace_diffuse_rays_bneelse_b2560
# B2559
	mv x18, x20
	j iter_trace_diffuse_rays_cont_b2561 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2560:
# B2560
	fsub x18, zero, x20
iter_trace_diffuse_rays_cont_b2561:
# B2561
	fmul x18, x18, x18
	fmul x20, x18, x76
	sw x20, 1(x39)
	fsub x18, x30, x18
	fmul x18, x18, x76
	sw x18, 2(x39)
	j iter_trace_diffuse_rays_cont_b2589 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2536:
# B2536
	bne	x18, x78, iter_trace_diffuse_rays_beqelse_b2589
# B2562
	lw x18, 0(x31)
	lw x20, 5(x19)
	lw x20, 0(x20)
	fsub x18, x18, x20
	lw x20, 4(x19)
	lw x20, 0(x20)
	fsqrt x20, x20
	fmul x18, x18, x20
	lw x20, 2(x31)
	lw x28, 5(x19)
	lw x28, 2(x28)
	fsub x20, x20, x28
	lw x28, 4(x19)
	lw x28, 2(x28)
	fsqrt x28, x28
	fmul x20, x20, x28
	fmul x28, x18, x18
	fmul x32, x20, x20
	fadd x28, x28, x32
	fabs x32, x18
	fle x32, x79, x32
	beq	x32, zero, iter_trace_diffuse_rays_bneelse_b2565
# B2564
	fdiv x18, x20, x18
	fabs x18, x18
	fle x20, x18, zero
	xori x20, x20, 1
	fabs x32, x18
	fle x33, x8, x32
	bne	x33, zero, iter_trace_diffuse_rays_beqelse_b2567
# B2566
	fmul x20, x18, x18
	fmul x32, x20, x85
	fadd x32, x84, x32
	fmul x32, x20, x32
	fadd x32, x83, x32
	fmul x32, x20, x32
	fadd x32, x82, x32
	fmul x32, x20, x32
	fadd x32, x81, x32
	fmul x32, x20, x32
	fadd x32, x80, x32
	fmul x20, x20, x32
	fadd x20, x30, x20
	fmul x18, x18, x20
	j iter_trace_diffuse_rays_cont_b2573 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2567:
# B2567
	fle x18, x86, x32
	bne	x18, zero, iter_trace_diffuse_rays_beqelse_b2569
# B2568
	fsub x18, x32, x30
	fadd x32, x32, x30
	fdiv x18, x18, x32
	fmul x32, x18, x18
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
	fadd x32, x30, x32
	fmul x18, x18, x32
	fadd x18, x7, x18
	j iter_trace_diffuse_rays_cont_b2570 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2569:
# B2569
	fdiv x18, x30, x32
	fmul x32, x18, x18
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
	fadd x32, x30, x32
	fmul x18, x18, x32
	fsub x18, x69, x18
iter_trace_diffuse_rays_cont_b2570:
# B2570
	bne	x20, zero, iter_trace_diffuse_rays_beqelse_b2573
# B2571
	fsub x18, zero, x18
iter_trace_diffuse_rays_beqelse_b2573:
iter_trace_diffuse_rays_cont_b2573:
# B2573
	fmul x18, x18, x87
	fdiv x18, x18, x77
	j iter_trace_diffuse_rays_cont_b2574 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2565:
# B2565
	lui x18, 268032
iter_trace_diffuse_rays_cont_b2574:
# B2574
	floor x20, x18
	fsub x18, x18, x20
	lw x20, 1(x31)
	lw x32, 5(x19)
	lw x32, 1(x32)
	fsub x20, x20, x32
	lw x32, 4(x19)
	lw x32, 1(x32)
	fsqrt x32, x32
	fmul x20, x20, x32
	fabs x32, x28
	fle x32, x79, x32
	beq	x32, zero, iter_trace_diffuse_rays_bneelse_b2576
# B2575
	fdiv x20, x20, x28
	fabs x20, x20
	fle x28, x20, zero
	xori x28, x28, 1
	fabs x32, x20
	fle x33, x8, x32
	bne	x33, zero, iter_trace_diffuse_rays_beqelse_b2578
# B2577
	fmul x28, x20, x20
	fmul x32, x28, x85
	fadd x32, x84, x32
	fmul x32, x28, x32
	fadd x32, x83, x32
	fmul x32, x28, x32
	fadd x32, x82, x32
	fmul x32, x28, x32
	fadd x32, x81, x32
	fmul x32, x28, x32
	fadd x32, x80, x32
	fmul x28, x28, x32
	fadd x28, x30, x28
	fmul x20, x20, x28
	j iter_trace_diffuse_rays_cont_b2584 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2578:
# B2578
	fle x20, x86, x32
	bne	x20, zero, iter_trace_diffuse_rays_beqelse_b2580
# B2579
	fsub x20, x32, x30
	fadd x32, x32, x30
	fdiv x20, x20, x32
	fmul x32, x20, x20
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
	fadd x32, x30, x32
	fmul x20, x20, x32
	fadd x20, x7, x20
	j iter_trace_diffuse_rays_cont_b2581 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2580:
# B2580
	fdiv x20, x30, x32
	fmul x32, x20, x20
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
	fadd x32, x30, x32
	fmul x20, x20, x32
	fsub x20, x69, x20
iter_trace_diffuse_rays_cont_b2581:
# B2581
	bne	x28, zero, iter_trace_diffuse_rays_beqelse_b2584
# B2582
	fsub x20, zero, x20
iter_trace_diffuse_rays_beqelse_b2584:
iter_trace_diffuse_rays_cont_b2584:
# B2584
	fmul x20, x20, x87
	fdiv x20, x20, x77
	j iter_trace_diffuse_rays_cont_b2585 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2576:
# B2576
	lui x20, 268032
iter_trace_diffuse_rays_cont_b2585:
# B2585
	floor x28, x20
	fsub x20, x20, x28
	fsub x18, x37, x18
	fmul x18, x18, x18
	fsub x18, x88, x18
	fsub x20, x37, x20
	fmul x20, x20, x20
	fsub x18, x18, x20
	fle x20, zero, x18
	beq	x20, zero, iter_trace_diffuse_rays_bneelse_b2587
# B2586
	mv x28, x18
	j iter_trace_diffuse_rays_cont_b2588 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2587:
# B2587
	mv x28, zero
iter_trace_diffuse_rays_cont_b2588:
# B2588
	fmul x18, x76, x28
	fdiv x18, x18, x89
	sw x18, 2(x39)
iter_trace_diffuse_rays_beqelse_b2589:
iter_trace_diffuse_rays_cont_b2589:
# B2589
	lw x18, 0(x21)
	mv x21, x18
	mv x20, zero
iter_trace_diffuse_rays_loop_b2590:
# B2590
	add x4, x21, x20
	lw x18, 0(x4)
	lw x28, 0(x18)
	beq	x28, x24, iter_trace_diffuse_rays_bneelse_b2816
# B2592
	bne	x28, x22, iter_trace_diffuse_rays_beqelse_b2594
# B2593
	mv x28, x100
	j iter_trace_diffuse_rays_cont_b2726 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2594:
# B2594
	add x4, x26, x28
	lw x32, 0(x4)
	lw x33, 0(x31)
	lw x35, 5(x32)
	lw x35, 0(x35)
	fsub x33, x33, x35
	lw x35, 1(x31)
	lw x37, 5(x32)
	lw x37, 1(x37)
	fsub x35, x35, x37
	lw x37, 2(x31)
	lw x38, 5(x32)
	lw x38, 2(x38)
	fsub x37, x37, x38
	lw x38, 1(x9)
	add x4, x38, x28
	lw x28, 0(x4)
	lw x38, 1(x32)
	bne	x38, x100, iter_trace_diffuse_rays_beqelse_b2596
# B2595
	lw x38, 0(x9)
	lw x40, 0(x28)
	fsub x40, x40, x33
	lw x5, 1(x28)
	fmul x40, x40, x5
	lw x5, 1(x38)
	fmul x5, x40, x5
	fadd x5, x5, x35
	fabs x5, x5
	lw x6, 4(x32)
	lw x6, 1(x6)
	fle x5, x6, x5
	bne	x5, zero, iter_trace_diffuse_rays_beqelse_b2602
# B2598
	lw x5, 2(x38)
	fmul x5, x40, x5
	fadd x5, x5, x37
	fabs x5, x5
	lw x6, 4(x32)
	lw x6, 2(x6)
	fle x5, x6, x5
	bne	x5, zero, iter_trace_diffuse_rays_beqelse_b2602
# B2600
	lw x5, 1(x28)
	feq x5, x5, zero
	xori x5, x5, 1
	mv x6, x5
# B2601
	bne	x6, zero, iter_trace_diffuse_rays_beqelse_b2603
iter_trace_diffuse_rays_beqelse_b2602:
# B2602
	lw x40, 2(x28)
	fsub x40, x40, x35
	lw x5, 3(x28)
	fmul x40, x40, x5
	lw x5, 0(x38)
	fmul x5, x40, x5
	fadd x5, x5, x33
	fabs x5, x5
	lw x6, 4(x32)
	lw x6, 0(x6)
	fle x5, x6, x5
	bne	x5, zero, iter_trace_diffuse_rays_beqelse_b2609
# B2605
	lw x5, 2(x38)
	fmul x5, x40, x5
	fadd x5, x5, x37
	fabs x5, x5
	lw x6, 4(x32)
	lw x6, 2(x6)
	fle x5, x6, x5
	bne	x5, zero, iter_trace_diffuse_rays_beqelse_b2609
# B2607
	lw x5, 3(x28)
	feq x5, x5, zero
	xori x5, x5, 1
	mv x6, x5
# B2608
	bne	x6, zero, iter_trace_diffuse_rays_beqelse_b2610
iter_trace_diffuse_rays_beqelse_b2609:
# B2609
	lw x40, 4(x28)
	fsub x37, x40, x37
	lw x40, 5(x28)
	fmul x37, x37, x40
	lw x40, 0(x38)
	fmul x40, x37, x40
	fadd x33, x40, x33
	fabs x33, x33
	lw x40, 4(x32)
	lw x40, 0(x40)
	fle x33, x40, x33
	bne	x33, zero, iter_trace_diffuse_rays_beqelse_b2616
# B2612
	lw x33, 1(x38)
	fmul x33, x37, x33
	fadd x33, x33, x35
	fabs x33, x33
	lw x32, 4(x32)
	lw x32, 1(x32)
	fle x32, x32, x33
	bne	x32, zero, iter_trace_diffuse_rays_beqelse_b2616
# B2614
	lw x28, 5(x28)
	feq x28, x28, zero
	xori x28, x28, 1
	mv x32, x28
# B2615
	bne	x32, zero, iter_trace_diffuse_rays_beqelse_b2617
iter_trace_diffuse_rays_beqelse_b2616:
# B2616
	j iter_trace_diffuse_rays_cont_b2636 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2617:
# B2617
	sw x37, 0(x23)
	mv x28, x29
	j iter_trace_diffuse_rays_cont_b2635 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2610:
# B2610
	sw x40, 0(x23)
	mv x28, x12
	j iter_trace_diffuse_rays_cont_b2635 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2603:
# B2603
	sw x40, 0(x23)
	mv x28, x100
	j iter_trace_diffuse_rays_cont_b2635 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2596:
# B2596
	bne	x38, x12, iter_trace_diffuse_rays_beqelse_b2619
# B2618
	lw x32, 0(x28)
	fle x32, zero, x32
	bne	x32, zero, iter_trace_diffuse_rays_beqelse_b2636
# B2621
	lw x32, 1(x28)
	fmul x32, x32, x33
	lw x33, 2(x28)
	fmul x33, x33, x35
	fadd x32, x32, x33
	lw x28, 3(x28)
	fmul x28, x28, x37
	fadd x28, x32, x28
	sw x28, 0(x23)
	mv x28, x100
	j iter_trace_diffuse_rays_cont_b2635 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2619:
# B2619
	lw x38, 0(x28)
	feq x40, x38, zero
	bne	x40, zero, iter_trace_diffuse_rays_beqelse_b2636
# B2622
	lw x40, 1(x28)
	fmul x40, x40, x33
	lw x5, 2(x28)
	fmul x5, x5, x35
	fadd x40, x40, x5
	lw x5, 3(x28)
	fmul x5, x5, x37
	fadd x40, x40, x5
	fmul x5, x33, x33
	lw x6, 4(x32)
	lw x6, 0(x6)
	fmul x5, x5, x6
	fmul x6, x35, x35
	lw x65, 4(x32)
	lw x65, 1(x65)
	fmul x6, x6, x65
	fadd x5, x5, x6
	fmul x6, x37, x37
	lw x65, 4(x32)
	lw x65, 2(x65)
	fmul x6, x6, x65
	fadd x5, x5, x6
	lw x6, 3(x32)
	bne	x6, zero, iter_trace_diffuse_rays_beqelse_b2625
# B2624
	mv x33, x5
	j iter_trace_diffuse_rays_cont_b2626 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2625:
# B2625
	fmul x6, x35, x37
	lw x65, 9(x32)
	lw x65, 0(x65)
	fmul x6, x6, x65
	fadd x5, x5, x6
	fmul x37, x37, x33
	lw x6, 9(x32)
	lw x6, 1(x6)
	fmul x37, x37, x6
	fadd x37, x5, x37
	fmul x33, x33, x35
	lw x35, 9(x32)
	lw x35, 2(x35)
	fmul x33, x33, x35
	fadd x33, x37, x33
iter_trace_diffuse_rays_cont_b2626:
# B2626
	lw x35, 1(x32)
	bne	x35, x29, iter_trace_diffuse_rays_beqelse_b2629
# B2627
	fsub x33, x33, x30
iter_trace_diffuse_rays_beqelse_b2629:
# B2629
	fmul x35, x40, x40
	fmul x33, x38, x33
	fsub x33, x35, x33
	fle x35, x33, zero
	bne	x35, zero, iter_trace_diffuse_rays_beqelse_b2636
# B2631
	lw x32, 6(x32)
	fsqrt x33, x33
	bne	x32, zero, iter_trace_diffuse_rays_beqelse_b2633
# B2632
	fsub x32, x40, x33
	lw x28, 4(x28)
	fmul x28, x32, x28
	sw x28, 0(x23)
	j iter_trace_diffuse_rays_cont_b2634 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2633:
# B2633
	fadd x32, x40, x33
	lw x28, 4(x28)
	fmul x28, x32, x28
	sw x28, 0(x23)
iter_trace_diffuse_rays_cont_b2634:
# B2634
	mv x28, x100
iter_trace_diffuse_rays_cont_b2635:
# B2635
	bne	x28, zero, iter_trace_diffuse_rays_beqelse_b2637
iter_trace_diffuse_rays_beqelse_b2636:
iter_trace_diffuse_rays_cont_b2636:
# B2636
	addi x20, x20, 1
	j iter_trace_diffuse_rays_cont_b2727 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2637:
# B2637
	lw x28, 0(x23)
	fle x28, x34, x28
	beq	x28, zero, iter_trace_diffuse_rays_bneelse_b2639
# B2638
	addi x20, x20, 1
	j iter_trace_diffuse_rays_cont_b2727 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2639:
# B2639
	mv x33, x18
	mv x32, x100
iter_trace_diffuse_rays_loop_b2640:
# B2640
	add x4, x33, x32
	lw x28, 0(x4)
	beq	x28, x24, iter_trace_diffuse_rays_bneelse_b2724
# B2642
	add x4, x25, x28
	lw x28, 0(x4)
	mv x37, x28
	mv x35, zero
iter_trace_diffuse_rays_loop_b2643:
# B2643
	add x4, x37, x35
	lw x28, 0(x4)
	beq	x28, x24, iter_trace_diffuse_rays_bneelse_b2721
# B2645
	add x4, x37, x35
	lw x28, 0(x4)
	add x4, x26, x28
	lw x38, 0(x4)
	lw x40, 0(x31)
	lw x5, 5(x38)
	lw x5, 0(x5)
	fsub x40, x40, x5
	lw x5, 1(x31)
	lw x6, 5(x38)
	lw x6, 1(x6)
	fsub x5, x5, x6
	lw x6, 2(x31)
	lw x65, 5(x38)
	lw x65, 2(x65)
	fsub x6, x6, x65
	lw x65, 1(x9)
	add x4, x65, x28
	lw x65, 0(x4)
	lw x66, 1(x38)
	bne	x66, x100, iter_trace_diffuse_rays_beqelse_b2647
# B2646
	lw x66, 0(x9)
	lw x67, 0(x65)
	fsub x67, x67, x40
	lw x68, 1(x65)
	fmul x67, x67, x68
	lw x68, 1(x66)
	fmul x68, x67, x68
	fadd x68, x68, x5
	fabs x68, x68
	lw x69, 4(x38)
	lw x69, 1(x69)
	fle x68, x69, x68
	bne	x68, zero, iter_trace_diffuse_rays_beqelse_b2653
# B2649
	lw x68, 2(x66)
	fmul x68, x67, x68
	fadd x68, x68, x6
	fabs x68, x68
	lw x69, 4(x38)
	lw x69, 2(x69)
	fle x68, x69, x68
	bne	x68, zero, iter_trace_diffuse_rays_beqelse_b2653
# B2651
	lw x68, 1(x65)
	feq x68, x68, zero
	xori x68, x68, 1
	mv x69, x68
# B2652
	bne	x69, zero, iter_trace_diffuse_rays_beqelse_b2654
iter_trace_diffuse_rays_beqelse_b2653:
# B2653
	lw x67, 2(x65)
	fsub x67, x67, x5
	lw x68, 3(x65)
	fmul x67, x67, x68
	lw x68, 0(x66)
	fmul x68, x67, x68
	fadd x68, x68, x40
	fabs x68, x68
	lw x69, 4(x38)
	lw x69, 0(x69)
	fle x68, x69, x68
	bne	x68, zero, iter_trace_diffuse_rays_beqelse_b2660
# B2656
	lw x68, 2(x66)
	fmul x68, x67, x68
	fadd x68, x68, x6
	fabs x68, x68
	lw x69, 4(x38)
	lw x69, 2(x69)
	fle x68, x69, x68
	bne	x68, zero, iter_trace_diffuse_rays_beqelse_b2660
# B2658
	lw x68, 3(x65)
	feq x68, x68, zero
	xori x68, x68, 1
	mv x69, x68
# B2659
	bne	x69, zero, iter_trace_diffuse_rays_beqelse_b2661
iter_trace_diffuse_rays_beqelse_b2660:
# B2660
	lw x67, 4(x65)
	fsub x6, x67, x6
	lw x67, 5(x65)
	fmul x6, x6, x67
	lw x67, 0(x66)
	fmul x67, x6, x67
	fadd x40, x67, x40
	fabs x40, x40
	lw x67, 4(x38)
	lw x67, 0(x67)
	fle x40, x67, x40
	bne	x40, zero, iter_trace_diffuse_rays_beqelse_b2667
# B2663
	lw x40, 1(x66)
	fmul x40, x6, x40
	fadd x40, x40, x5
	fabs x40, x40
	lw x38, 4(x38)
	lw x38, 1(x38)
	fle x38, x38, x40
	bne	x38, zero, iter_trace_diffuse_rays_beqelse_b2667
# B2665
	lw x38, 5(x65)
	feq x38, x38, zero
	xori x38, x38, 1
	mv x40, x38
# B2666
	bne	x40, zero, iter_trace_diffuse_rays_beqelse_b2668
iter_trace_diffuse_rays_beqelse_b2667:
# B2667
	lw x40, 0(x23)
	j iter_trace_diffuse_rays_cont_b2687 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2668:
# B2668
	sw x6, 0(x23)
	mv x38, x29
	j iter_trace_diffuse_rays_cont_b2686 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2661:
# B2661
	sw x67, 0(x23)
	mv x38, x12
	j iter_trace_diffuse_rays_cont_b2686 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2654:
# B2654
	sw x67, 0(x23)
	mv x38, x100
	j iter_trace_diffuse_rays_cont_b2686 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2647:
# B2647
	bne	x66, x12, iter_trace_diffuse_rays_beqelse_b2670
# B2669
	lw x38, 0(x65)
	fle x38, zero, x38
	beq	x38, zero, iter_trace_diffuse_rays_bneelse_b2672
# B2671
	lw x40, 0(x23)
	j iter_trace_diffuse_rays_cont_b2687 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2672:
# B2672
	lw x38, 1(x65)
	fmul x38, x38, x40
	lw x40, 2(x65)
	fmul x40, x40, x5
	fadd x38, x38, x40
	lw x40, 3(x65)
	fmul x40, x40, x6
	fadd x38, x38, x40
	sw x38, 0(x23)
	mv x38, x100
	j iter_trace_diffuse_rays_cont_b2686 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2670:
# B2670
	lw x66, 0(x65)
	feq x67, x66, zero
	bne	x67, zero, iter_trace_diffuse_rays_beqelse_b2674
# B2673
	lw x67, 1(x65)
	fmul x67, x67, x40
	lw x68, 2(x65)
	fmul x68, x68, x5
	fadd x67, x67, x68
	lw x68, 3(x65)
	fmul x68, x68, x6
	fadd x67, x67, x68
	fmul x68, x40, x40
	lw x69, 4(x38)
	lw x69, 0(x69)
	fmul x68, x68, x69
	fmul x69, x5, x5
	lw x7, 4(x38)
	lw x7, 1(x7)
	fmul x69, x69, x7
	fadd x68, x68, x69
	fmul x69, x6, x6
	lw x7, 4(x38)
	lw x7, 2(x7)
	fmul x69, x69, x7
	fadd x68, x68, x69
	lw x69, 3(x38)
	bne	x69, zero, iter_trace_diffuse_rays_beqelse_b2676
# B2675
	mv x40, x68
	j iter_trace_diffuse_rays_cont_b2677 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2676:
# B2676
	fmul x69, x5, x6
	lw x7, 9(x38)
	lw x7, 0(x7)
	fmul x69, x69, x7
	fadd x68, x68, x69
	fmul x6, x6, x40
	lw x69, 9(x38)
	lw x69, 1(x69)
	fmul x6, x6, x69
	fadd x6, x68, x6
	fmul x40, x40, x5
	lw x5, 9(x38)
	lw x5, 2(x5)
	fmul x40, x40, x5
	fadd x40, x6, x40
iter_trace_diffuse_rays_cont_b2677:
# B2677
	lw x5, 1(x38)
	bne	x5, x29, iter_trace_diffuse_rays_beqelse_b2680
# B2678
	fsub x40, x40, x30
iter_trace_diffuse_rays_beqelse_b2680:
# B2680
	fmul x5, x67, x67
	fmul x40, x66, x40
	fsub x40, x5, x40
	fle x5, x40, zero
	beq	x5, zero, iter_trace_diffuse_rays_bneelse_b2682
# B2681
	lw x40, 0(x23)
	j iter_trace_diffuse_rays_cont_b2687 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2682:
# B2682
	lw x38, 6(x38)
	fsqrt x40, x40
	bne	x38, zero, iter_trace_diffuse_rays_beqelse_b2684
# B2683
	fsub x38, x67, x40
	lw x40, 4(x65)
	fmul x38, x38, x40
	sw x38, 0(x23)
	j iter_trace_diffuse_rays_cont_b2685 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2684:
# B2684
	fadd x38, x67, x40
	lw x40, 4(x65)
	fmul x38, x38, x40
	sw x38, 0(x23)
iter_trace_diffuse_rays_cont_b2685:
# B2685
	mv x38, x100
iter_trace_diffuse_rays_cont_b2686:
# B2686
	lw x40, 0(x23)
	bne	x38, zero, iter_trace_diffuse_rays_beqelse_b2688
	j iter_trace_diffuse_rays_cont_b2687 # adhoc jump(3)
iter_trace_diffuse_rays_beqelse_b2688:
# B2688
	fle x38, x90, x40
	xori x38, x38, 1
# B2689
	addi x35, x35, 1
	bne	x38, zero, iter_trace_diffuse_rays_beqelse_b2691
	j iter_trace_diffuse_rays_cont_b2690 # adhoc jump(3)
iter_trace_diffuse_rays_beqelse_b2691:
# B2691
	fadd x28, x40, x27
	lw x38, 0(x91)
	fmul x38, x38, x28
	lw x40, 0(x31)
	fadd x38, x38, x40
	lw x40, 1(x91)
	fmul x40, x40, x28
	lw x5, 1(x31)
	fadd x40, x40, x5
	lw x5, 2(x91)
	fmul x28, x5, x28
	lw x5, 2(x31)
	fadd x28, x28, x5
	mv x6, x37
	mv x66, x40
	mv x65, x38
	mv x67, x28
	mv x5, zero
iter_trace_diffuse_rays_loop_b2694:
# B2694
	add x4, x6, x5
	lw x28, 0(x4)
	bne	x28, x24, iter_trace_diffuse_rays_beqelse_b2696
# B2695
	mv x38, x100
# B2717
	bne	x38, zero, iter_trace_diffuse_rays_beqelse_b2719
	j iter_trace_diffuse_rays_cont_b2718 # adhoc jump(3)
iter_trace_diffuse_rays_beqelse_b2719:
# B2719
	mv x28, x100
# B2720
	bne	x28, zero, iter_trace_diffuse_rays_beqelse_b2722
	j iter_trace_diffuse_rays_cont_b2721 # adhoc jump(3)
iter_trace_diffuse_rays_beqelse_b2722:
# B2722
	mv x35, x100
# B2723
	bne	x35, zero, iter_trace_diffuse_rays_beqelse_b2725
iter_trace_diffuse_rays_bneelse_b2724:
# B2724
	addi x20, x20, 1
	j iter_trace_diffuse_rays_cont_b2727 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2725:
# B2725
	mv x28, x100
iter_trace_diffuse_rays_cont_b2726:
# B2726
	addi x20, x20, 1
	bne	x28, zero, iter_trace_diffuse_rays_beqelse_b2728
iter_trace_diffuse_rays_cont_b2727:
# B2727
	j iter_trace_diffuse_rays_loop_b2590 # loopback to while entry from B2727
iter_trace_diffuse_rays_beqelse_b2728:
# B2728
	mv x33, x18
	mv x32, x100
iter_trace_diffuse_rays_loop_b2729:
# B2729
	add x4, x33, x32
	lw x18, 0(x4)
	beq	x18, x24, iter_trace_diffuse_rays_bneelse_b2813
# B2731
	add x4, x25, x18
	lw x18, 0(x4)
	mv x35, x18
	mv x28, zero
iter_trace_diffuse_rays_loop_b2732:
# B2732
	add x4, x35, x28
	lw x18, 0(x4)
	beq	x18, x24, iter_trace_diffuse_rays_bneelse_b2810
# B2734
	add x4, x35, x28
	lw x18, 0(x4)
	add x4, x26, x18
	lw x37, 0(x4)
	lw x38, 0(x31)
	lw x40, 5(x37)
	lw x40, 0(x40)
	fsub x38, x38, x40
	lw x40, 1(x31)
	lw x5, 5(x37)
	lw x5, 1(x5)
	fsub x40, x40, x5
	lw x5, 2(x31)
	lw x6, 5(x37)
	lw x6, 2(x6)
	fsub x5, x5, x6
	lw x6, 1(x9)
	add x4, x6, x18
	lw x6, 0(x4)
	lw x65, 1(x37)
	bne	x65, x100, iter_trace_diffuse_rays_beqelse_b2736
# B2735
	lw x65, 0(x9)
	lw x66, 0(x6)
	fsub x66, x66, x38
	lw x67, 1(x6)
	fmul x66, x66, x67
	lw x67, 1(x65)
	fmul x67, x66, x67
	fadd x67, x67, x40
	fabs x67, x67
	lw x68, 4(x37)
	lw x68, 1(x68)
	fle x67, x68, x67
	bne	x67, zero, iter_trace_diffuse_rays_beqelse_b2742
# B2738
	lw x67, 2(x65)
	fmul x67, x66, x67
	fadd x67, x67, x5
	fabs x67, x67
	lw x68, 4(x37)
	lw x68, 2(x68)
	fle x67, x68, x67
	bne	x67, zero, iter_trace_diffuse_rays_beqelse_b2742
# B2740
	lw x67, 1(x6)
	feq x67, x67, zero
	xori x67, x67, 1
	mv x68, x67
# B2741
	bne	x68, zero, iter_trace_diffuse_rays_beqelse_b2743
iter_trace_diffuse_rays_beqelse_b2742:
# B2742
	lw x66, 2(x6)
	fsub x66, x66, x40
	lw x67, 3(x6)
	fmul x66, x66, x67
	lw x67, 0(x65)
	fmul x67, x66, x67
	fadd x67, x67, x38
	fabs x67, x67
	lw x68, 4(x37)
	lw x68, 0(x68)
	fle x67, x68, x67
	bne	x67, zero, iter_trace_diffuse_rays_beqelse_b2749
# B2745
	lw x67, 2(x65)
	fmul x67, x66, x67
	fadd x67, x67, x5
	fabs x67, x67
	lw x68, 4(x37)
	lw x68, 2(x68)
	fle x67, x68, x67
	bne	x67, zero, iter_trace_diffuse_rays_beqelse_b2749
# B2747
	lw x67, 3(x6)
	feq x67, x67, zero
	xori x67, x67, 1
	mv x68, x67
# B2748
	bne	x68, zero, iter_trace_diffuse_rays_beqelse_b2750
iter_trace_diffuse_rays_beqelse_b2749:
# B2749
	lw x66, 4(x6)
	fsub x5, x66, x5
	lw x66, 5(x6)
	fmul x5, x5, x66
	lw x66, 0(x65)
	fmul x66, x5, x66
	fadd x38, x66, x38
	fabs x38, x38
	lw x66, 4(x37)
	lw x66, 0(x66)
	fle x38, x66, x38
	bne	x38, zero, iter_trace_diffuse_rays_beqelse_b2756
# B2752
	lw x38, 1(x65)
	fmul x38, x5, x38
	fadd x38, x38, x40
	fabs x38, x38
	lw x37, 4(x37)
	lw x37, 1(x37)
	fle x37, x37, x38
	bne	x37, zero, iter_trace_diffuse_rays_beqelse_b2756
# B2754
	lw x37, 5(x6)
	feq x37, x37, zero
	xori x37, x37, 1
	mv x38, x37
# B2755
	bne	x38, zero, iter_trace_diffuse_rays_beqelse_b2757
iter_trace_diffuse_rays_beqelse_b2756:
# B2756
	lw x38, 0(x23)
	j iter_trace_diffuse_rays_cont_b2776 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2757:
# B2757
	sw x5, 0(x23)
	mv x37, x29
	j iter_trace_diffuse_rays_cont_b2775 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2750:
# B2750
	sw x66, 0(x23)
	mv x37, x12
	j iter_trace_diffuse_rays_cont_b2775 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2743:
# B2743
	sw x66, 0(x23)
	mv x37, x100
	j iter_trace_diffuse_rays_cont_b2775 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2736:
# B2736
	bne	x65, x12, iter_trace_diffuse_rays_beqelse_b2759
# B2758
	lw x37, 0(x6)
	fle x37, zero, x37
	beq	x37, zero, iter_trace_diffuse_rays_bneelse_b2761
# B2760
	lw x38, 0(x23)
	j iter_trace_diffuse_rays_cont_b2776 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2761:
# B2761
	lw x37, 1(x6)
	fmul x37, x37, x38
	lw x38, 2(x6)
	fmul x38, x38, x40
	fadd x37, x37, x38
	lw x38, 3(x6)
	fmul x38, x38, x5
	fadd x37, x37, x38
	sw x37, 0(x23)
	mv x37, x100
	j iter_trace_diffuse_rays_cont_b2775 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2759:
# B2759
	lw x65, 0(x6)
	feq x66, x65, zero
	bne	x66, zero, iter_trace_diffuse_rays_beqelse_b2763
# B2762
	lw x66, 1(x6)
	fmul x66, x66, x38
	lw x67, 2(x6)
	fmul x67, x67, x40
	fadd x66, x66, x67
	lw x67, 3(x6)
	fmul x67, x67, x5
	fadd x66, x66, x67
	fmul x67, x38, x38
	lw x68, 4(x37)
	lw x68, 0(x68)
	fmul x67, x67, x68
	fmul x68, x40, x40
	lw x69, 4(x37)
	lw x69, 1(x69)
	fmul x68, x68, x69
	fadd x67, x67, x68
	fmul x68, x5, x5
	lw x69, 4(x37)
	lw x69, 2(x69)
	fmul x68, x68, x69
	fadd x67, x67, x68
	lw x68, 3(x37)
	bne	x68, zero, iter_trace_diffuse_rays_beqelse_b2765
# B2764
	mv x38, x67
	j iter_trace_diffuse_rays_cont_b2766 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2765:
# B2765
	fmul x68, x40, x5
	lw x69, 9(x37)
	lw x69, 0(x69)
	fmul x68, x68, x69
	fadd x67, x67, x68
	fmul x5, x5, x38
	lw x68, 9(x37)
	lw x68, 1(x68)
	fmul x5, x5, x68
	fadd x5, x67, x5
	fmul x38, x38, x40
	lw x40, 9(x37)
	lw x40, 2(x40)
	fmul x38, x38, x40
	fadd x38, x5, x38
iter_trace_diffuse_rays_cont_b2766:
# B2766
	lw x40, 1(x37)
	bne	x40, x29, iter_trace_diffuse_rays_beqelse_b2769
# B2767
	fsub x38, x38, x30
iter_trace_diffuse_rays_beqelse_b2769:
# B2769
	fmul x40, x66, x66
	fmul x38, x65, x38
	fsub x38, x40, x38
	fle x40, x38, zero
	beq	x40, zero, iter_trace_diffuse_rays_bneelse_b2771
# B2770
	lw x38, 0(x23)
	j iter_trace_diffuse_rays_cont_b2776 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2771:
# B2771
	lw x37, 6(x37)
	fsqrt x38, x38
	bne	x37, zero, iter_trace_diffuse_rays_beqelse_b2773
# B2772
	fsub x37, x66, x38
	lw x38, 4(x6)
	fmul x37, x37, x38
	sw x37, 0(x23)
	j iter_trace_diffuse_rays_cont_b2774 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2773:
# B2773
	fadd x37, x66, x38
	lw x38, 4(x6)
	fmul x37, x37, x38
	sw x37, 0(x23)
iter_trace_diffuse_rays_cont_b2774:
# B2774
	mv x37, x100
iter_trace_diffuse_rays_cont_b2775:
# B2775
	lw x38, 0(x23)
	bne	x37, zero, iter_trace_diffuse_rays_beqelse_b2777
	j iter_trace_diffuse_rays_cont_b2776 # adhoc jump(3)
iter_trace_diffuse_rays_beqelse_b2777:
# B2777
	fle x37, x90, x38
	xori x37, x37, 1
# B2778
	addi x28, x28, 1
	bne	x37, zero, iter_trace_diffuse_rays_beqelse_b2780
	j iter_trace_diffuse_rays_cont_b2779 # adhoc jump(3)
iter_trace_diffuse_rays_beqelse_b2780:
# B2780
	fadd x18, x38, x27
	lw x37, 0(x91)
	fmul x37, x37, x18
	lw x38, 0(x31)
	fadd x37, x37, x38
	lw x38, 1(x91)
	fmul x38, x38, x18
	lw x40, 1(x31)
	fadd x38, x38, x40
	lw x40, 2(x91)
	fmul x18, x40, x18
	lw x40, 2(x31)
	fadd x18, x18, x40
	mv x6, x37
	mv x40, zero
	mv x5, x35
	mv x65, x38
	mv x66, x18
iter_trace_diffuse_rays_loop_b2783:
# B2783
	add x4, x5, x40
	lw x18, 0(x4)
	bne	x18, x24, iter_trace_diffuse_rays_beqelse_b2785
# B2784
	mv x37, x100
# B2806
	bne	x37, zero, iter_trace_diffuse_rays_beqelse_b2808
	j iter_trace_diffuse_rays_cont_b2807 # adhoc jump(3)
iter_trace_diffuse_rays_beqelse_b2808:
# B2808
	mv x18, x100
# B2809
	bne	x18, zero, iter_trace_diffuse_rays_beqelse_b2811
	j iter_trace_diffuse_rays_cont_b2810 # adhoc jump(3)
iter_trace_diffuse_rays_beqelse_b2811:
# B2811
	mv x28, x100
# B2812
	bne	x28, zero, iter_trace_diffuse_rays_beqelse_b2814
iter_trace_diffuse_rays_bneelse_b2813:
# B2813
	j iter_trace_diffuse_rays_loop_b2590 # loopback to while entry from B2813
iter_trace_diffuse_rays_beqelse_b2814:
# B2814
	mv x18, x100
# B2815
	bne	x18, zero, iter_trace_diffuse_rays_beqelse_b3363
iter_trace_diffuse_rays_bneelse_b2816:
# B2816
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
	fle x20, x18, zero
	beq	x20, zero, iter_trace_diffuse_rays_bneelse_b2819
# B2818
	mv x21, zero
	j iter_trace_diffuse_rays_cont_b2820 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2819:
# B2819
	mv x21, x18
iter_trace_diffuse_rays_cont_b2820:
# B2820
	fmul x17, x17, x21
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
	j iter_trace_diffuse_rays_cont_b3363 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2785:
# B2785
	add x4, x26, x18
	lw x18, 0(x4)
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
	bne	x68, x100, iter_trace_diffuse_rays_beqelse_b2787
# B2786
	fabs x37, x37
	lw x68, 4(x18)
	lw x68, 0(x68)
	fle x37, x68, x37
	bne	x37, zero, iter_trace_diffuse_rays_beqelse_b2793
# B2789
	fabs x37, x38
	lw x38, 4(x18)
	lw x38, 1(x38)
	fle x37, x38, x37
	bne	x37, zero, iter_trace_diffuse_rays_beqelse_b2793
# B2791
	fabs x37, x67
	lw x38, 4(x18)
	lw x38, 2(x38)
	fle x37, x38, x37
	xori x37, x37, 1
	mv x38, x37
# B2792
	bne	x38, zero, iter_trace_diffuse_rays_beqelse_b2794
iter_trace_diffuse_rays_beqelse_b2793:
# B2793
	lw x18, 6(x18)
	xori x18, x18, 1
	j iter_trace_diffuse_rays_cont_b2803 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2794:
# B2794
	lw x18, 6(x18)
	j iter_trace_diffuse_rays_cont_b2803 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2787:
# B2787
	bne	x68, x12, iter_trace_diffuse_rays_beqelse_b2796
# B2795
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
	j iter_trace_diffuse_rays_cont_b2803 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2796:
# B2796
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
	bne	x69, zero, iter_trace_diffuse_rays_beqelse_b2798
# B2797
	mv x37, x68
	j iter_trace_diffuse_rays_cont_b2799 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2798:
# B2798
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
iter_trace_diffuse_rays_cont_b2799:
# B2799
	lw x38, 1(x18)
	bne	x38, x29, iter_trace_diffuse_rays_beqelse_b2802
# B2800
	fsub x37, x37, x30
iter_trace_diffuse_rays_beqelse_b2802:
# B2802
	lw x18, 6(x18)
	fle x37, zero, x37
	xori x37, x37, 1
	xor x18, x18, x37
	xori x18, x18, 1
iter_trace_diffuse_rays_cont_b2803:
# B2803
	bne	x18, zero, iter_trace_diffuse_rays_beqelse_b2807
# B2804
	addi x40, x40, 1
	j iter_trace_diffuse_rays_loop_b2783 # loopback to while entry from B2804
iter_trace_diffuse_rays_beqelse_b2807:
iter_trace_diffuse_rays_cont_b2807:
# B2807
	j iter_trace_diffuse_rays_loop_b2732 # loopback to while entry from B2807
iter_trace_diffuse_rays_beqelse_b2763:
# B2763
	lw x38, 0(x23)
iter_trace_diffuse_rays_cont_b2776:
# B2776
	addi x28, x28, 1
iter_trace_diffuse_rays_cont_b2779:
# B2779
	add x4, x26, x18
	lw x18, 0(x4)
	lw x18, 6(x18)
	beq	x18, zero, iter_trace_diffuse_rays_bneelse_b2810
	j	iter_trace_diffuse_rays_loop_b2732 # moved need extra jump
iter_trace_diffuse_rays_bneelse_b2810:
iter_trace_diffuse_rays_cont_b2810:
# B2810
	addi x32, x32, 1
	j iter_trace_diffuse_rays_loop_b2729 # loopback to while entry from B2810
	j iter_trace_diffuse_rays_loop_b2732 # loopback to while entry from B2779
iter_trace_diffuse_rays_beqelse_b2696:
# B2696
	add x4, x26, x28
	lw x28, 0(x4)
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
	bne	x69, x100, iter_trace_diffuse_rays_beqelse_b2698
# B2697
	fabs x38, x38
	lw x69, 4(x28)
	lw x69, 0(x69)
	fle x38, x69, x38
	bne	x38, zero, iter_trace_diffuse_rays_beqelse_b2704
# B2700
	fabs x38, x40
	lw x40, 4(x28)
	lw x40, 1(x40)
	fle x38, x40, x38
	bne	x38, zero, iter_trace_diffuse_rays_beqelse_b2704
# B2702
	fabs x38, x68
	lw x40, 4(x28)
	lw x40, 2(x40)
	fle x38, x40, x38
	xori x38, x38, 1
	mv x40, x38
# B2703
	bne	x40, zero, iter_trace_diffuse_rays_beqelse_b2705
iter_trace_diffuse_rays_beqelse_b2704:
# B2704
	lw x28, 6(x28)
	xori x28, x28, 1
	j iter_trace_diffuse_rays_cont_b2714 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2705:
# B2705
	lw x28, 6(x28)
	j iter_trace_diffuse_rays_cont_b2714 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2698:
# B2698
	bne	x69, x12, iter_trace_diffuse_rays_beqelse_b2707
# B2706
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
	j iter_trace_diffuse_rays_cont_b2714 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2707:
# B2707
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
	bne	x7, zero, iter_trace_diffuse_rays_beqelse_b2709
# B2708
	mv x38, x69
	j iter_trace_diffuse_rays_cont_b2710 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2709:
# B2709
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
iter_trace_diffuse_rays_cont_b2710:
# B2710
	lw x40, 1(x28)
	bne	x40, x29, iter_trace_diffuse_rays_beqelse_b2713
# B2711
	fsub x38, x38, x30
iter_trace_diffuse_rays_beqelse_b2713:
# B2713
	lw x28, 6(x28)
	fle x38, zero, x38
	xori x38, x38, 1
	xor x28, x28, x38
	xori x28, x28, 1
iter_trace_diffuse_rays_cont_b2714:
# B2714
	bne	x28, zero, iter_trace_diffuse_rays_beqelse_b2718
# B2715
	addi x5, x5, 1
	j iter_trace_diffuse_rays_loop_b2694 # loopback to while entry from B2715
iter_trace_diffuse_rays_beqelse_b2718:
iter_trace_diffuse_rays_cont_b2718:
# B2718
	j iter_trace_diffuse_rays_loop_b2643 # loopback to while entry from B2718
iter_trace_diffuse_rays_beqelse_b2674:
# B2674
	lw x40, 0(x23)
iter_trace_diffuse_rays_cont_b2687:
# B2687
	addi x35, x35, 1
iter_trace_diffuse_rays_cont_b2690:
# B2690
	add x4, x26, x28
	lw x28, 0(x4)
	lw x28, 6(x28)
	beq	x28, zero, iter_trace_diffuse_rays_bneelse_b2721
	j	iter_trace_diffuse_rays_loop_b2643 # moved need extra jump
iter_trace_diffuse_rays_bneelse_b2721:
iter_trace_diffuse_rays_cont_b2721:
# B2721
	addi x32, x32, 1
	j iter_trace_diffuse_rays_loop_b2640 # loopback to while entry from B2721
	j iter_trace_diffuse_rays_loop_b2643 # loopback to while entry from B2690
iter_trace_diffuse_rays_bneelse_b2278:
# B2278
	addi x18, x16, 1
	add x4, x13, x18
	lw x18, 0(x4)
	fdiv x17, x17, x11
	sw x20, 0(x19)
	lw x20, 0(x21)
	mv x94, x20
	mv x93, zero
	mv x95, x18
iter_trace_diffuse_rays_loop_b2821:
# B2821
	add x4, x94, x93
	lw x20, 0(x4)
	lw x96, 0(x20)
	beq	x96, x24, iter_trace_diffuse_rays_bneelse_b3020
# B2823
	bne	x96, x22, iter_trace_diffuse_rays_beqelse_b2825
# B2824
	mv x97, x100
	mv x98, x20
	mv x99, x95
iter_trace_diffuse_rays_loop_b2826:
# B2826
	add x4, x98, x97
	lw x20, 0(x4)
	beq	x20, x24, iter_trace_diffuse_rays_bneelse_b3019
# B2828
	add x4, x25, x20
	lw x20, 0(x4)
	mv x101, x20
	mv x102, x99
	mv x96, zero
iter_trace_diffuse_rays_loop_b2829:
# B2829
	lw x20, 0(x102)
	add x4, x101, x96
	lw x103, 0(x4)
	beq	x103, x24, iter_trace_diffuse_rays_bneelse_b2902
# B2831
	add x4, x26, x103
	lw x104, 0(x4)
	lw x105, 10(x104)
	lw x106, 0(x105)
	lw x107, 1(x105)
	lw x108, 2(x105)
	lw x109, 1(x102)
	add x4, x109, x103
	lw x109, 0(x4)
	lw x110, 1(x104)
	bne	x110, x100, iter_trace_diffuse_rays_beqelse_b2833
# B2832
	lw x105, 0(x102)
	lw x110, 0(x109)
	fsub x110, x110, x106
	lw x111, 1(x109)
	fmul x110, x110, x111
	lw x111, 1(x105)
	fmul x111, x110, x111
	fadd x111, x111, x107
	fabs x111, x111
	lw x112, 4(x104)
	lw x112, 1(x112)
	fle x111, x112, x111
	bne	x111, zero, iter_trace_diffuse_rays_beqelse_b2839
# B2835
	lw x111, 2(x105)
	fmul x111, x110, x111
	fadd x111, x111, x108
	fabs x111, x111
	lw x112, 4(x104)
	lw x112, 2(x112)
	fle x111, x112, x111
	bne	x111, zero, iter_trace_diffuse_rays_beqelse_b2839
# B2837
	lw x111, 1(x109)
	feq x111, x111, zero
	xori x111, x111, 1
	mv x112, x111
# B2838
	bne	x112, zero, iter_trace_diffuse_rays_beqelse_b2840
iter_trace_diffuse_rays_beqelse_b2839:
# B2839
	lw x110, 2(x109)
	fsub x110, x110, x107
	lw x111, 3(x109)
	fmul x110, x110, x111
	lw x111, 0(x105)
	fmul x111, x110, x111
	fadd x111, x111, x106
	fabs x111, x111
	lw x112, 4(x104)
	lw x112, 0(x112)
	fle x111, x112, x111
	bne	x111, zero, iter_trace_diffuse_rays_beqelse_b2846
# B2842
	lw x111, 2(x105)
	fmul x111, x110, x111
	fadd x111, x111, x108
	fabs x111, x111
	lw x112, 4(x104)
	lw x112, 2(x112)
	fle x111, x112, x111
	bne	x111, zero, iter_trace_diffuse_rays_beqelse_b2846
# B2844
	lw x111, 3(x109)
	feq x111, x111, zero
	xori x111, x111, 1
	mv x112, x111
# B2845
	bne	x112, zero, iter_trace_diffuse_rays_beqelse_b2847
iter_trace_diffuse_rays_beqelse_b2846:
# B2846
	lw x110, 4(x109)
	fsub x108, x110, x108
	lw x110, 5(x109)
	fmul x108, x108, x110
	lw x110, 0(x105)
	fmul x110, x108, x110
	fadd x106, x110, x106
	fabs x106, x106
	lw x110, 4(x104)
	lw x110, 0(x110)
	fle x106, x110, x106
	bne	x106, zero, iter_trace_diffuse_rays_beqelse_b2853
# B2849
	lw x105, 1(x105)
	fmul x105, x108, x105
	fadd x105, x105, x107
	fabs x105, x105
	lw x104, 4(x104)
	lw x104, 1(x104)
	fle x104, x104, x105
	bne	x104, zero, iter_trace_diffuse_rays_beqelse_b2853
# B2851
	lw x104, 5(x109)
	feq x104, x104, zero
	xori x104, x104, 1
	mv x105, x104
# B2852
	bne	x105, zero, iter_trace_diffuse_rays_beqelse_b2854
iter_trace_diffuse_rays_beqelse_b2853:
# B2853
	mv x104, zero
	addi x96, x96, 1
	j iter_trace_diffuse_rays_cont_b2867 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2854:
# B2854
	sw x108, 0(x23)
	mv x104, x29
	j iter_trace_diffuse_rays_cont_b2866 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2847:
# B2847
	sw x110, 0(x23)
	mv x104, x12
	j iter_trace_diffuse_rays_cont_b2866 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2840:
# B2840
	sw x110, 0(x23)
	mv x104, x100
	j iter_trace_diffuse_rays_cont_b2866 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2833:
# B2833
	bne	x110, x12, iter_trace_diffuse_rays_beqelse_b2856
# B2855
	lw x104, 0(x109)
	fle x104, zero, x104
	beq	x104, zero, iter_trace_diffuse_rays_bneelse_b2858
# B2857
	mv x104, zero
	addi x96, x96, 1
	j iter_trace_diffuse_rays_cont_b2867 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2858:
# B2858
	lw x104, 0(x109)
	lw x105, 3(x105)
	fmul x104, x104, x105
	sw x104, 0(x23)
	mv x104, x100
	j iter_trace_diffuse_rays_cont_b2866 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2856:
# B2856
	lw x110, 0(x109)
	feq x111, x110, zero
	bne	x111, zero, iter_trace_diffuse_rays_beqelse_b2860
# B2859
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
	fle x107, x105, zero
	beq	x107, zero, iter_trace_diffuse_rays_bneelse_b2862
# B2861
	mv x104, zero
	addi x96, x96, 1
	j iter_trace_diffuse_rays_cont_b2867 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2862:
# B2862
	lw x104, 6(x104)
	fsqrt x105, x105
	bne	x104, zero, iter_trace_diffuse_rays_beqelse_b2864
# B2863
	fsub x104, x106, x105
	lw x105, 4(x109)
	fmul x104, x104, x105
	sw x104, 0(x23)
	j iter_trace_diffuse_rays_cont_b2865 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2864:
# B2864
	fadd x104, x106, x105
	lw x105, 4(x109)
	fmul x104, x104, x105
	sw x104, 0(x23)
iter_trace_diffuse_rays_cont_b2865:
# B2865
	mv x104, x100
iter_trace_diffuse_rays_cont_b2866:
# B2866
	addi x96, x96, 1
	bne	x104, zero, iter_trace_diffuse_rays_beqelse_b2868
	j iter_trace_diffuse_rays_cont_b2867 # adhoc jump(3)
iter_trace_diffuse_rays_beqelse_b2868:
# B2868
	lw x105, 0(x23)
	fle x106, x105, zero
	bne	x106, zero, iter_trace_diffuse_rays_beqelse_b2901
# B2872
	lw x106, 0(x19)
	fle x106, x106, x105
	bne	x106, zero, iter_trace_diffuse_rays_beqelse_b2901
# B2874
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
iter_trace_diffuse_rays_loop_b2875:
# B2875
	add x4, x109, x108
	lw x113, 0(x4)
	bne	x113, x24, iter_trace_diffuse_rays_beqelse_b2877
# B2876
	mv x114, x100
# B2898
	bne	x114, zero, iter_trace_diffuse_rays_beqelse_b2900
	j iter_trace_diffuse_rays_cont_b2899 # adhoc jump(3)
iter_trace_diffuse_rays_beqelse_b2900:
# B2900
	sw x105, 0(x19)
	sw x106, 0(x31)
	sw x107, 1(x31)
	sw x20, 2(x31)
	sw x103, 0(x32)
	sw x104, 0(x33)
	j iter_trace_diffuse_rays_cont_b2901 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2877:
# B2877
	add x4, x26, x113
	lw x113, 0(x4)
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
	bne	x117, x100, iter_trace_diffuse_rays_beqelse_b2879
# B2878
	fabs x114, x114
	lw x117, 4(x113)
	lw x117, 0(x117)
	fle x114, x117, x114
	bne	x114, zero, iter_trace_diffuse_rays_beqelse_b2885
# B2881
	fabs x114, x115
	lw x115, 4(x113)
	lw x115, 1(x115)
	fle x114, x115, x114
	bne	x114, zero, iter_trace_diffuse_rays_beqelse_b2885
# B2883
	fabs x114, x116
	lw x115, 4(x113)
	lw x115, 2(x115)
	fle x114, x115, x114
	xori x114, x114, 1
	mv x115, x114
# B2884
	bne	x115, zero, iter_trace_diffuse_rays_beqelse_b2886
iter_trace_diffuse_rays_beqelse_b2885:
# B2885
	lw x113, 6(x113)
	xori x113, x113, 1
	j iter_trace_diffuse_rays_cont_b2895 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2886:
# B2886
	lw x113, 6(x113)
	j iter_trace_diffuse_rays_cont_b2895 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2879:
# B2879
	bne	x117, x12, iter_trace_diffuse_rays_beqelse_b2888
# B2887
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
	j iter_trace_diffuse_rays_cont_b2895 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2888:
# B2888
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
	bne	x118, zero, iter_trace_diffuse_rays_beqelse_b2890
# B2889
	mv x114, x117
	j iter_trace_diffuse_rays_cont_b2891 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2890:
# B2890
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
iter_trace_diffuse_rays_cont_b2891:
# B2891
	lw x115, 1(x113)
	bne	x115, x29, iter_trace_diffuse_rays_beqelse_b2894
# B2892
	fsub x114, x114, x30
iter_trace_diffuse_rays_beqelse_b2894:
# B2894
	lw x113, 6(x113)
	fle x114, zero, x114
	xori x114, x114, 1
	xor x113, x113, x114
	xori x113, x113, 1
iter_trace_diffuse_rays_cont_b2895:
# B2895
	bne	x113, zero, iter_trace_diffuse_rays_beqelse_b2899
# B2896
	addi x108, x108, 1
	j iter_trace_diffuse_rays_loop_b2875 # loopback to while entry from B2896
iter_trace_diffuse_rays_beqelse_b2899:
iter_trace_diffuse_rays_cont_b2899:
# B2899
iter_trace_diffuse_rays_beqelse_b2901:
iter_trace_diffuse_rays_cont_b2901:
# B2901
	j iter_trace_diffuse_rays_loop_b2829 # loopback to while entry from B2901
iter_trace_diffuse_rays_beqelse_b2860:
# B2860
	mv x104, zero
	addi x96, x96, 1
iter_trace_diffuse_rays_cont_b2867:
# B2867
	add x4, x26, x103
	lw x20, 0(x4)
	lw x20, 6(x20)
	beq	x20, zero, iter_trace_diffuse_rays_bneelse_b2902
	j	iter_trace_diffuse_rays_loop_b2829 # moved need extra jump
iter_trace_diffuse_rays_bneelse_b2902:
# B2902
	addi x97, x97, 1
	j iter_trace_diffuse_rays_loop_b2826 # loopback to while entry from B2902
	j iter_trace_diffuse_rays_loop_b2829 # loopback to while entry from B2867
iter_trace_diffuse_rays_beqelse_b2825:
# B2825
	add x4, x26, x96
	lw x97, 0(x4)
	lw x98, 10(x97)
	lw x99, 0(x98)
	lw x101, 1(x98)
	lw x102, 2(x98)
	lw x103, 1(x95)
	add x4, x103, x96
	lw x96, 0(x4)
	lw x103, 1(x97)
	bne	x103, x100, iter_trace_diffuse_rays_beqelse_b2904
# B2903
	lw x98, 0(x95)
	lw x103, 0(x96)
	fsub x103, x103, x99
	lw x104, 1(x96)
	fmul x103, x103, x104
	lw x104, 1(x98)
	fmul x104, x103, x104
	fadd x104, x104, x101
	fabs x104, x104
	lw x105, 4(x97)
	lw x105, 1(x105)
	fle x104, x105, x104
	bne	x104, zero, iter_trace_diffuse_rays_beqelse_b2910
# B2906
	lw x104, 2(x98)
	fmul x104, x103, x104
	fadd x104, x104, x102
	fabs x104, x104
	lw x105, 4(x97)
	lw x105, 2(x105)
	fle x104, x105, x104
	bne	x104, zero, iter_trace_diffuse_rays_beqelse_b2910
# B2908
	lw x104, 1(x96)
	feq x104, x104, zero
	xori x104, x104, 1
	mv x105, x104
# B2909
	bne	x105, zero, iter_trace_diffuse_rays_beqelse_b2911
iter_trace_diffuse_rays_beqelse_b2910:
# B2910
	lw x103, 2(x96)
	fsub x103, x103, x101
	lw x104, 3(x96)
	fmul x103, x103, x104
	lw x104, 0(x98)
	fmul x104, x103, x104
	fadd x104, x104, x99
	fabs x104, x104
	lw x105, 4(x97)
	lw x105, 0(x105)
	fle x104, x105, x104
	bne	x104, zero, iter_trace_diffuse_rays_beqelse_b2917
# B2913
	lw x104, 2(x98)
	fmul x104, x103, x104
	fadd x104, x104, x102
	fabs x104, x104
	lw x105, 4(x97)
	lw x105, 2(x105)
	fle x104, x105, x104
	bne	x104, zero, iter_trace_diffuse_rays_beqelse_b2917
# B2915
	lw x104, 3(x96)
	feq x104, x104, zero
	xori x104, x104, 1
	mv x105, x104
# B2916
	bne	x105, zero, iter_trace_diffuse_rays_beqelse_b2918
iter_trace_diffuse_rays_beqelse_b2917:
# B2917
	lw x103, 4(x96)
	fsub x102, x103, x102
	lw x103, 5(x96)
	fmul x102, x102, x103
	lw x103, 0(x98)
	fmul x103, x102, x103
	fadd x99, x103, x99
	fabs x99, x99
	lw x103, 4(x97)
	lw x103, 0(x103)
	fle x99, x103, x99
	bne	x99, zero, iter_trace_diffuse_rays_beqelse_b2924
# B2920
	lw x98, 1(x98)
	fmul x98, x102, x98
	fadd x98, x98, x101
	fabs x98, x98
	lw x97, 4(x97)
	lw x97, 1(x97)
	fle x97, x97, x98
	bne	x97, zero, iter_trace_diffuse_rays_beqelse_b2924
# B2922
	lw x96, 5(x96)
	feq x96, x96, zero
	xori x96, x96, 1
	mv x97, x96
# B2923
	bne	x97, zero, iter_trace_diffuse_rays_beqelse_b2925
iter_trace_diffuse_rays_beqelse_b2924:
# B2924
	j iter_trace_diffuse_rays_cont_b2938 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2925:
# B2925
	sw x102, 0(x23)
	mv x96, x29
	j iter_trace_diffuse_rays_cont_b2937 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2918:
# B2918
	sw x103, 0(x23)
	mv x96, x12
	j iter_trace_diffuse_rays_cont_b2937 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2911:
# B2911
	sw x103, 0(x23)
	mv x96, x100
	j iter_trace_diffuse_rays_cont_b2937 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2904:
# B2904
	bne	x103, x12, iter_trace_diffuse_rays_beqelse_b2927
# B2926
	lw x97, 0(x96)
	fle x97, zero, x97
	bne	x97, zero, iter_trace_diffuse_rays_beqelse_b2938
# B2929
	lw x96, 0(x96)
	lw x97, 3(x98)
	fmul x96, x96, x97
	sw x96, 0(x23)
	mv x96, x100
	j iter_trace_diffuse_rays_cont_b2937 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2927:
# B2927
	lw x103, 0(x96)
	feq x104, x103, zero
	bne	x104, zero, iter_trace_diffuse_rays_beqelse_b2938
# B2930
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
	fle x101, x98, zero
	bne	x101, zero, iter_trace_diffuse_rays_beqelse_b2938
# B2933
	lw x97, 6(x97)
	fsqrt x98, x98
	bne	x97, zero, iter_trace_diffuse_rays_beqelse_b2935
# B2934
	fsub x97, x99, x98
	lw x96, 4(x96)
	fmul x96, x97, x96
	sw x96, 0(x23)
	j iter_trace_diffuse_rays_cont_b2936 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2935:
# B2935
	fadd x97, x99, x98
	lw x96, 4(x96)
	fmul x96, x97, x96
	sw x96, 0(x23)
iter_trace_diffuse_rays_cont_b2936:
# B2936
	mv x96, x100
iter_trace_diffuse_rays_cont_b2937:
# B2937
	bne	x96, zero, iter_trace_diffuse_rays_beqelse_b2939
iter_trace_diffuse_rays_beqelse_b2938:
iter_trace_diffuse_rays_cont_b2938:
# B2938
	j iter_trace_diffuse_rays_cont_b3019 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2939:
# B2939
	lw x96, 0(x23)
	lw x97, 0(x19)
	fle x96, x97, x96
	bne	x96, zero, iter_trace_diffuse_rays_beqelse_b3019
# B2941
	mv x97, x100
	mv x98, x20
	mv x99, x95
iter_trace_diffuse_rays_loop_b2942:
# B2942
	add x4, x98, x97
	lw x20, 0(x4)
	beq	x20, x24, iter_trace_diffuse_rays_bneelse_b3019
# B2944
	add x4, x25, x20
	lw x20, 0(x4)
	mv x101, x20
	mv x102, x99
	mv x96, zero
iter_trace_diffuse_rays_loop_b2945:
# B2945
	lw x20, 0(x102)
	add x4, x101, x96
	lw x103, 0(x4)
	beq	x103, x24, iter_trace_diffuse_rays_bneelse_b3018
# B2947
	add x4, x26, x103
	lw x104, 0(x4)
	lw x105, 10(x104)
	lw x106, 0(x105)
	lw x107, 1(x105)
	lw x108, 2(x105)
	lw x109, 1(x102)
	add x4, x109, x103
	lw x109, 0(x4)
	lw x110, 1(x104)
	bne	x110, x100, iter_trace_diffuse_rays_beqelse_b2949
# B2948
	lw x105, 0(x102)
	lw x110, 0(x109)
	fsub x110, x110, x106
	lw x111, 1(x109)
	fmul x110, x110, x111
	lw x111, 1(x105)
	fmul x111, x110, x111
	fadd x111, x111, x107
	fabs x111, x111
	lw x112, 4(x104)
	lw x112, 1(x112)
	fle x111, x112, x111
	bne	x111, zero, iter_trace_diffuse_rays_beqelse_b2955
# B2951
	lw x111, 2(x105)
	fmul x111, x110, x111
	fadd x111, x111, x108
	fabs x111, x111
	lw x112, 4(x104)
	lw x112, 2(x112)
	fle x111, x112, x111
	bne	x111, zero, iter_trace_diffuse_rays_beqelse_b2955
# B2953
	lw x111, 1(x109)
	feq x111, x111, zero
	xori x111, x111, 1
	mv x112, x111
# B2954
	bne	x112, zero, iter_trace_diffuse_rays_beqelse_b2956
iter_trace_diffuse_rays_beqelse_b2955:
# B2955
	lw x110, 2(x109)
	fsub x110, x110, x107
	lw x111, 3(x109)
	fmul x110, x110, x111
	lw x111, 0(x105)
	fmul x111, x110, x111
	fadd x111, x111, x106
	fabs x111, x111
	lw x112, 4(x104)
	lw x112, 0(x112)
	fle x111, x112, x111
	bne	x111, zero, iter_trace_diffuse_rays_beqelse_b2962
# B2958
	lw x111, 2(x105)
	fmul x111, x110, x111
	fadd x111, x111, x108
	fabs x111, x111
	lw x112, 4(x104)
	lw x112, 2(x112)
	fle x111, x112, x111
	bne	x111, zero, iter_trace_diffuse_rays_beqelse_b2962
# B2960
	lw x111, 3(x109)
	feq x111, x111, zero
	xori x111, x111, 1
	mv x112, x111
# B2961
	bne	x112, zero, iter_trace_diffuse_rays_beqelse_b2963
iter_trace_diffuse_rays_beqelse_b2962:
# B2962
	lw x110, 4(x109)
	fsub x108, x110, x108
	lw x110, 5(x109)
	fmul x108, x108, x110
	lw x110, 0(x105)
	fmul x110, x108, x110
	fadd x106, x110, x106
	fabs x106, x106
	lw x110, 4(x104)
	lw x110, 0(x110)
	fle x106, x110, x106
	bne	x106, zero, iter_trace_diffuse_rays_beqelse_b2969
# B2965
	lw x105, 1(x105)
	fmul x105, x108, x105
	fadd x105, x105, x107
	fabs x105, x105
	lw x104, 4(x104)
	lw x104, 1(x104)
	fle x104, x104, x105
	bne	x104, zero, iter_trace_diffuse_rays_beqelse_b2969
# B2967
	lw x104, 5(x109)
	feq x104, x104, zero
	xori x104, x104, 1
	mv x105, x104
# B2968
	bne	x105, zero, iter_trace_diffuse_rays_beqelse_b2970
iter_trace_diffuse_rays_beqelse_b2969:
# B2969
	mv x104, zero
	addi x96, x96, 1
	j iter_trace_diffuse_rays_cont_b2983 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2970:
# B2970
	sw x108, 0(x23)
	mv x104, x29
	j iter_trace_diffuse_rays_cont_b2982 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2963:
# B2963
	sw x110, 0(x23)
	mv x104, x12
	j iter_trace_diffuse_rays_cont_b2982 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2956:
# B2956
	sw x110, 0(x23)
	mv x104, x100
	j iter_trace_diffuse_rays_cont_b2982 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2949:
# B2949
	bne	x110, x12, iter_trace_diffuse_rays_beqelse_b2972
# B2971
	lw x104, 0(x109)
	fle x104, zero, x104
	beq	x104, zero, iter_trace_diffuse_rays_bneelse_b2974
# B2973
	mv x104, zero
	addi x96, x96, 1
	j iter_trace_diffuse_rays_cont_b2983 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2974:
# B2974
	lw x104, 0(x109)
	lw x105, 3(x105)
	fmul x104, x104, x105
	sw x104, 0(x23)
	mv x104, x100
	j iter_trace_diffuse_rays_cont_b2982 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2972:
# B2972
	lw x110, 0(x109)
	feq x111, x110, zero
	bne	x111, zero, iter_trace_diffuse_rays_beqelse_b2976
# B2975
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
	fle x107, x105, zero
	beq	x107, zero, iter_trace_diffuse_rays_bneelse_b2978
# B2977
	mv x104, zero
	addi x96, x96, 1
	j iter_trace_diffuse_rays_cont_b2983 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2978:
# B2978
	lw x104, 6(x104)
	fsqrt x105, x105
	bne	x104, zero, iter_trace_diffuse_rays_beqelse_b2980
# B2979
	fsub x104, x106, x105
	lw x105, 4(x109)
	fmul x104, x104, x105
	sw x104, 0(x23)
	j iter_trace_diffuse_rays_cont_b2981 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2980:
# B2980
	fadd x104, x106, x105
	lw x105, 4(x109)
	fmul x104, x104, x105
	sw x104, 0(x23)
iter_trace_diffuse_rays_cont_b2981:
# B2981
	mv x104, x100
iter_trace_diffuse_rays_cont_b2982:
# B2982
	addi x96, x96, 1
	bne	x104, zero, iter_trace_diffuse_rays_beqelse_b2984
	j iter_trace_diffuse_rays_cont_b2983 # adhoc jump(3)
iter_trace_diffuse_rays_beqelse_b2984:
# B2984
	lw x105, 0(x23)
	fle x106, x105, zero
	bne	x106, zero, iter_trace_diffuse_rays_beqelse_b3017
# B2988
	lw x106, 0(x19)
	fle x106, x106, x105
	bne	x106, zero, iter_trace_diffuse_rays_beqelse_b3017
# B2990
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
iter_trace_diffuse_rays_loop_b2991:
# B2991
	add x4, x109, x108
	lw x113, 0(x4)
	bne	x113, x24, iter_trace_diffuse_rays_beqelse_b2993
# B2992
	mv x114, x100
# B3014
	bne	x114, zero, iter_trace_diffuse_rays_beqelse_b3016
	j iter_trace_diffuse_rays_cont_b3015 # adhoc jump(3)
iter_trace_diffuse_rays_beqelse_b3016:
# B3016
	sw x105, 0(x19)
	sw x106, 0(x31)
	sw x107, 1(x31)
	sw x20, 2(x31)
	sw x103, 0(x32)
	sw x104, 0(x33)
	j iter_trace_diffuse_rays_cont_b3017 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2993:
# B2993
	add x4, x26, x113
	lw x113, 0(x4)
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
	bne	x117, x100, iter_trace_diffuse_rays_beqelse_b2995
# B2994
	fabs x114, x114
	lw x117, 4(x113)
	lw x117, 0(x117)
	fle x114, x117, x114
	bne	x114, zero, iter_trace_diffuse_rays_beqelse_b3001
# B2997
	fabs x114, x115
	lw x115, 4(x113)
	lw x115, 1(x115)
	fle x114, x115, x114
	bne	x114, zero, iter_trace_diffuse_rays_beqelse_b3001
# B2999
	fabs x114, x116
	lw x115, 4(x113)
	lw x115, 2(x115)
	fle x114, x115, x114
	xori x114, x114, 1
	mv x115, x114
# B3000
	bne	x115, zero, iter_trace_diffuse_rays_beqelse_b3002
iter_trace_diffuse_rays_beqelse_b3001:
# B3001
	lw x113, 6(x113)
	xori x113, x113, 1
	j iter_trace_diffuse_rays_cont_b3011 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3002:
# B3002
	lw x113, 6(x113)
	j iter_trace_diffuse_rays_cont_b3011 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2995:
# B2995
	bne	x117, x12, iter_trace_diffuse_rays_beqelse_b3004
# B3003
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
	j iter_trace_diffuse_rays_cont_b3011 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3004:
# B3004
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
	bne	x118, zero, iter_trace_diffuse_rays_beqelse_b3006
# B3005
	mv x114, x117
	j iter_trace_diffuse_rays_cont_b3007 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3006:
# B3006
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
iter_trace_diffuse_rays_cont_b3007:
# B3007
	lw x115, 1(x113)
	bne	x115, x29, iter_trace_diffuse_rays_beqelse_b3010
# B3008
	fsub x114, x114, x30
iter_trace_diffuse_rays_beqelse_b3010:
# B3010
	lw x113, 6(x113)
	fle x114, zero, x114
	xori x114, x114, 1
	xor x113, x113, x114
	xori x113, x113, 1
iter_trace_diffuse_rays_cont_b3011:
# B3011
	bne	x113, zero, iter_trace_diffuse_rays_beqelse_b3015
# B3012
	addi x108, x108, 1
	j iter_trace_diffuse_rays_loop_b2991 # loopback to while entry from B3012
iter_trace_diffuse_rays_beqelse_b3015:
iter_trace_diffuse_rays_cont_b3015:
# B3015
iter_trace_diffuse_rays_beqelse_b3017:
iter_trace_diffuse_rays_cont_b3017:
# B3017
	j iter_trace_diffuse_rays_loop_b2945 # loopback to while entry from B3017
iter_trace_diffuse_rays_beqelse_b2976:
# B2976
	mv x104, zero
	addi x96, x96, 1
iter_trace_diffuse_rays_cont_b2983:
# B2983
	add x4, x26, x103
	lw x20, 0(x4)
	lw x20, 6(x20)
	beq	x20, zero, iter_trace_diffuse_rays_bneelse_b3018
	j	iter_trace_diffuse_rays_loop_b2945 # moved need extra jump
iter_trace_diffuse_rays_bneelse_b3018:
# B3018
	addi x97, x97, 1
	j iter_trace_diffuse_rays_loop_b2942 # loopback to while entry from B3018
	j iter_trace_diffuse_rays_loop_b2945 # loopback to while entry from B2983
iter_trace_diffuse_rays_beqelse_b3019:
iter_trace_diffuse_rays_bneelse_b3019:
iter_trace_diffuse_rays_cont_b3019:
# B3019
	addi x93, x93, 1
	j iter_trace_diffuse_rays_loop_b2821 # loopback to while entry from B3019
iter_trace_diffuse_rays_bneelse_b3020:
# B3020
	lw x19, 0(x19)
	fle x20, x19, x34
	bne	x20, zero, iter_trace_diffuse_rays_beqelse_b3024
# B3022
	fle x19, x35, x19
	xori x19, x19, 1
	mv x20, x19
# B3023
	bne	x20, zero, iter_trace_diffuse_rays_beqelse_b3025
iter_trace_diffuse_rays_beqelse_b3024:
# B3024
	j iter_trace_diffuse_rays_cont_b3363 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3025:
# B3025
	lw x19, 0(x32)
	add x4, x26, x19
	lw x19, 0(x4)
	lw x18, 0(x18)
	lw x20, 1(x19)
	bne	x20, x100, iter_trace_diffuse_rays_beqelse_b3027
# B3026
	lw x20, 0(x33)
	sw zero, 0(x36)
	sw zero, 1(x36)
	sw zero, 2(x36)
	addi x20, x20, -1
	add x4, x18, x20
	lw x18, 0(x4)
	feq x28, x18, zero
	bne	x28, zero, iter_trace_diffuse_rays_beqelse_b3029
# B3028
	fle x18, x18, zero
	beq	x18, zero, iter_trace_diffuse_rays_bneelse_b3031
# B3030
	mv x18, x38
	j iter_trace_diffuse_rays_cont_b3032 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b3031:
# B3031
	mv x18, x30
	j iter_trace_diffuse_rays_cont_b3032 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3029:
# B3029
	mv x18, zero
iter_trace_diffuse_rays_cont_b3032:
# B3032
	fsub x18, zero, x18
	add x4, x36, x20
	sw x18, 0(x4)
	j iter_trace_diffuse_rays_cont_b3043 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3027:
# B3027
	bne	x20, x12, iter_trace_diffuse_rays_beqelse_b3034
# B3033
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
	j iter_trace_diffuse_rays_cont_b3043 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3034:
# B3034
	lw x18, 0(x31)
	lw x20, 5(x19)
	lw x20, 0(x20)
	fsub x18, x18, x20
	lw x20, 1(x31)
	lw x28, 5(x19)
	lw x28, 1(x28)
	fsub x20, x20, x28
	lw x28, 2(x31)
	lw x32, 5(x19)
	lw x32, 2(x32)
	fsub x28, x28, x32
	lw x32, 4(x19)
	lw x32, 0(x32)
	fmul x32, x18, x32
	lw x33, 4(x19)
	lw x33, 1(x33)
	fmul x33, x20, x33
	lw x35, 4(x19)
	lw x35, 2(x35)
	fmul x35, x28, x35
	lw x93, 3(x19)
	bne	x93, zero, iter_trace_diffuse_rays_beqelse_b3036
# B3035
	sw x32, 0(x36)
	sw x33, 1(x36)
	sw x35, 2(x36)
	j iter_trace_diffuse_rays_cont_b3037 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3036:
# B3036
	lw x93, 9(x19)
	lw x93, 2(x93)
	fmul x93, x20, x93
	lw x94, 9(x19)
	lw x94, 1(x94)
	fmul x94, x28, x94
	fadd x93, x93, x94
	fmul x93, x93, x37
	fadd x32, x32, x93
	sw x32, 0(x36)
	lw x32, 9(x19)
	lw x32, 2(x32)
	fmul x32, x18, x32
	lw x93, 9(x19)
	lw x93, 0(x93)
	fmul x28, x28, x93
	fadd x28, x32, x28
	fmul x28, x28, x37
	fadd x28, x33, x28
	sw x28, 1(x36)
	lw x28, 9(x19)
	lw x28, 1(x28)
	fmul x18, x18, x28
	lw x28, 9(x19)
	lw x28, 0(x28)
	fmul x20, x20, x28
	fadd x18, x18, x20
	fmul x18, x18, x37
	fadd x18, x35, x18
	sw x18, 2(x36)
iter_trace_diffuse_rays_cont_b3037:
# B3037
	lw x18, 6(x19)
	lw x20, 0(x36)
	fmul x20, x20, x20
	lw x28, 1(x36)
	fmul x28, x28, x28
	fadd x20, x20, x28
	lw x28, 2(x36)
	fmul x28, x28, x28
	fadd x20, x20, x28
	fsqrt x20, x20
	feq x28, x20, zero
	bne	x28, zero, iter_trace_diffuse_rays_beqelse_b3039
# B3038
	bne	x18, zero, iter_trace_diffuse_rays_beqelse_b3041
# B3040
	fdiv x18, x30, x20
	j iter_trace_diffuse_rays_cont_b3042 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3041:
# B3041
	fdiv x18, x38, x20
	j iter_trace_diffuse_rays_cont_b3042 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3039:
# B3039
	mv x18, x30
iter_trace_diffuse_rays_cont_b3042:
# B3042
	lw x20, 0(x36)
	fmul x20, x20, x18
	sw x20, 0(x36)
	lw x20, 1(x36)
	fmul x20, x20, x18
	sw x20, 1(x36)
	lw x20, 2(x36)
	fmul x18, x20, x18
	sw x18, 2(x36)
iter_trace_diffuse_rays_cont_b3043:
# B3043
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
	bne	x18, x100, iter_trace_diffuse_rays_beqelse_b3045
# B3044
	lw x18, 0(x31)
	lw x20, 5(x19)
	lw x20, 0(x20)
	fsub x18, x18, x20
	fmul x20, x18, x40
	floor x20, x20
	fmul x20, x20, x5
	fsub x18, x18, x20
	fle x18, x6, x18
	xori x18, x18, 1
	lw x20, 2(x31)
	lw x28, 5(x19)
	lw x28, 2(x28)
	fsub x20, x20, x28
	fmul x28, x20, x40
	floor x28, x28
	fmul x28, x28, x5
	fsub x20, x20, x28
	fle x20, x6, x20
	xori x20, x20, 1
	bne	x18, zero, iter_trace_diffuse_rays_beqelse_b3047
# B3046
	bne	x20, zero, iter_trace_diffuse_rays_beqelse_b3049
# B3048
	mv x28, x76
	j iter_trace_diffuse_rays_cont_b3052 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3049:
# B3049
	mv x28, zero
	j iter_trace_diffuse_rays_cont_b3052 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3047:
# B3047
	bne	x20, zero, iter_trace_diffuse_rays_beqelse_b3051
# B3050
	mv x28, zero
	j iter_trace_diffuse_rays_cont_b3052 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3051:
# B3051
	mv x28, x76
iter_trace_diffuse_rays_cont_b3052:
# B3052
	sw x28, 1(x39)
	j iter_trace_diffuse_rays_cont_b3131 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3045:
# B3045
	bne	x18, x12, iter_trace_diffuse_rays_beqelse_b3054
# B3053
	lw x18, 1(x31)
	fmul x18, x18, x65
	fle x20, x18, zero
	xori x20, x20, 1
	fabs x18, x18
	mv x32, x66
	mv x28, x18
iter_trace_diffuse_rays_loop_b3055:
# B3055
	fle x33, x28, x32
	bne	x33, zero, iter_trace_diffuse_rays_beqelse_b3058
# B3056
	fmul x32, x32, x67
	j iter_trace_diffuse_rays_loop_b3055 # loopback to while entry from B3056
iter_trace_diffuse_rays_beqelse_b3058:
# B3058
	mv x37, x32
	mv x35, x18
iter_trace_diffuse_rays_loop_b3059:
# B3059
	fle x18, x66, x35
	beq	x18, zero, iter_trace_diffuse_rays_bneelse_b3064
# B3061
	fle x18, x35, x37
	fdiv x28, x37, x67
	bne	x18, zero, iter_trace_diffuse_rays_beqelse_b3063
# B3062
	fsub x35, x35, x37
	mv x37, x28
	j iter_trace_diffuse_rays_loop_b3059 # loopback to while entry from B3062
iter_trace_diffuse_rays_beqelse_b3063:
# B3063
	mv x37, x28
	j iter_trace_diffuse_rays_loop_b3059 # loopback to while entry from B3063
iter_trace_diffuse_rays_bneelse_b3064:
# B3064
	fle x18, x68, x35
	bne	x18, zero, iter_trace_diffuse_rays_beqelse_b3066
# B3065
	mv x28, x35
	j iter_trace_diffuse_rays_cont_b3067 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3066:
# B3066
	fsub x28, x35, x68
iter_trace_diffuse_rays_cont_b3067:
# B3067
	xor x18, x18, x20
	fle x20, x69, x28
	bne	x20, zero, iter_trace_diffuse_rays_beqelse_b3069
# B3068
	mv x20, x28
	j iter_trace_diffuse_rays_cont_b3070 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3069:
# B3069
	fsub x20, x68, x28
iter_trace_diffuse_rays_cont_b3070:
# B3070
	fle x28, x7, x20
	bne	x28, zero, iter_trace_diffuse_rays_beqelse_b3072
# B3071
	fmul x28, x20, x20
	fmul x32, x28, x72
	fadd x32, x71, x32
	fmul x32, x28, x32
	fadd x32, x70, x32
	fmul x28, x28, x32
	fadd x28, x30, x28
	fmul x20, x20, x28
	j iter_trace_diffuse_rays_cont_b3073 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3072:
# B3072
	fsub x20, x69, x20
	fmul x20, x20, x20
	fmul x28, x20, x75
	fadd x28, x74, x28
	fmul x28, x20, x28
	fadd x28, x73, x28
	fmul x20, x20, x28
	fadd x20, x30, x20
iter_trace_diffuse_rays_cont_b3073:
# B3073
	fle x28, x20, zero
	beq	x18, x28, iter_trace_diffuse_rays_bneelse_b3075
# B3074
	mv x18, x20
	j iter_trace_diffuse_rays_cont_b3076 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b3075:
# B3075
	fsub x18, zero, x20
iter_trace_diffuse_rays_cont_b3076:
# B3076
	fmul x18, x18, x18
	fmul x20, x76, x18
	sw x20, 0(x39)
	fsub x18, x30, x18
	fmul x18, x76, x18
	sw x18, 1(x39)
	j iter_trace_diffuse_rays_cont_b3131 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3054:
# B3054
	bne	x18, x29, iter_trace_diffuse_rays_beqelse_b3078
# B3077
	lw x18, 0(x31)
	lw x20, 5(x19)
	lw x20, 0(x20)
	fsub x18, x18, x20
	lw x20, 2(x31)
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
iter_trace_diffuse_rays_loop_b3079:
# B3079
	fle x32, x20, x28
	bne	x32, zero, iter_trace_diffuse_rays_beqelse_b3082
# B3080
	fmul x28, x28, x67
	j iter_trace_diffuse_rays_loop_b3079 # loopback to while entry from B3080
iter_trace_diffuse_rays_beqelse_b3082:
# B3082
	mv x35, x28
	mv x33, x18
iter_trace_diffuse_rays_loop_b3083:
# B3083
	fle x18, x66, x33
	beq	x18, zero, iter_trace_diffuse_rays_bneelse_b3088
# B3085
	fle x18, x33, x35
	fdiv x20, x35, x67
	bne	x18, zero, iter_trace_diffuse_rays_beqelse_b3087
# B3086
	fsub x33, x33, x35
	mv x35, x20
	j iter_trace_diffuse_rays_loop_b3083 # loopback to while entry from B3086
iter_trace_diffuse_rays_beqelse_b3087:
# B3087
	mv x35, x20
	j iter_trace_diffuse_rays_loop_b3083 # loopback to while entry from B3087
iter_trace_diffuse_rays_bneelse_b3088:
# B3088
	fle x18, x68, x33
	bne	x18, zero, iter_trace_diffuse_rays_beqelse_b3090
# B3089
	mv x20, x33
	j iter_trace_diffuse_rays_cont_b3091 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3090:
# B3090
	fsub x20, x33, x68
iter_trace_diffuse_rays_cont_b3091:
# B3091
	bne	x18, zero, iter_trace_diffuse_rays_beqelse_b3093
# B3092
	mv x28, x100
	j iter_trace_diffuse_rays_cont_b3094 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3093:
# B3093
	mv x28, zero
iter_trace_diffuse_rays_cont_b3094:
# B3094
	fle x18, x69, x20
	bne	x18, zero, iter_trace_diffuse_rays_beqelse_b3096
	j iter_trace_diffuse_rays_cont_b3097 # adhoc jump(3)
iter_trace_diffuse_rays_beqelse_b3096:
# B3096
	fsub x20, x68, x20
iter_trace_diffuse_rays_cont_b3097:
# B3097
	xor x18, x18, x28
	fle x28, x7, x20
	bne	x28, zero, iter_trace_diffuse_rays_beqelse_b3099
iter_trace_diffuse_rays_cont_b3098:
# B3098
	fmul x20, x20, x20
	fmul x28, x20, x75
	fadd x28, x74, x28
	fmul x28, x20, x28
	fadd x28, x73, x28
	fmul x20, x20, x28
	fadd x20, x30, x20
	j iter_trace_diffuse_rays_cont_b3100 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3099:
# B3099
	fsub x20, x69, x20
	fmul x28, x20, x20
	fmul x32, x28, x72
	fadd x32, x71, x32
	fmul x32, x28, x32
	fadd x32, x70, x32
	fmul x28, x28, x32
	fadd x28, x30, x28
	fmul x20, x20, x28
iter_trace_diffuse_rays_cont_b3100:
# B3100
	fle x28, x20, zero
	beq	x18, x28, iter_trace_diffuse_rays_bneelse_b3102
# B3101
	mv x18, x20
	j iter_trace_diffuse_rays_cont_b3103 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b3102:
# B3102
	fsub x18, zero, x20
iter_trace_diffuse_rays_cont_b3103:
# B3103
	fmul x18, x18, x18
	fmul x20, x18, x76
	sw x20, 1(x39)
	fsub x18, x30, x18
	fmul x18, x18, x76
	sw x18, 2(x39)
	j iter_trace_diffuse_rays_cont_b3131 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3078:
# B3078
	bne	x18, x78, iter_trace_diffuse_rays_beqelse_b3131
# B3104
	lw x18, 0(x31)
	lw x20, 5(x19)
	lw x20, 0(x20)
	fsub x18, x18, x20
	lw x20, 4(x19)
	lw x20, 0(x20)
	fsqrt x20, x20
	fmul x18, x18, x20
	lw x20, 2(x31)
	lw x28, 5(x19)
	lw x28, 2(x28)
	fsub x20, x20, x28
	lw x28, 4(x19)
	lw x28, 2(x28)
	fsqrt x28, x28
	fmul x20, x20, x28
	fmul x28, x18, x18
	fmul x32, x20, x20
	fadd x28, x28, x32
	fabs x32, x18
	fle x32, x79, x32
	beq	x32, zero, iter_trace_diffuse_rays_bneelse_b3107
# B3106
	fdiv x18, x20, x18
	fabs x18, x18
	fle x20, x18, zero
	xori x20, x20, 1
	fabs x32, x18
	fle x33, x8, x32
	bne	x33, zero, iter_trace_diffuse_rays_beqelse_b3109
# B3108
	fmul x20, x18, x18
	fmul x32, x20, x85
	fadd x32, x84, x32
	fmul x32, x20, x32
	fadd x32, x83, x32
	fmul x32, x20, x32
	fadd x32, x82, x32
	fmul x32, x20, x32
	fadd x32, x81, x32
	fmul x32, x20, x32
	fadd x32, x80, x32
	fmul x20, x20, x32
	fadd x20, x30, x20
	fmul x18, x18, x20
	j iter_trace_diffuse_rays_cont_b3115 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3109:
# B3109
	fle x18, x86, x32
	bne	x18, zero, iter_trace_diffuse_rays_beqelse_b3111
# B3110
	fsub x18, x32, x30
	fadd x32, x32, x30
	fdiv x18, x18, x32
	fmul x32, x18, x18
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
	fadd x32, x30, x32
	fmul x18, x18, x32
	fadd x18, x7, x18
	j iter_trace_diffuse_rays_cont_b3112 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3111:
# B3111
	fdiv x18, x30, x32
	fmul x32, x18, x18
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
	fadd x32, x30, x32
	fmul x18, x18, x32
	fsub x18, x69, x18
iter_trace_diffuse_rays_cont_b3112:
# B3112
	bne	x20, zero, iter_trace_diffuse_rays_beqelse_b3115
# B3113
	fsub x18, zero, x18
iter_trace_diffuse_rays_beqelse_b3115:
iter_trace_diffuse_rays_cont_b3115:
# B3115
	fmul x18, x18, x87
	fdiv x18, x18, x77
	j iter_trace_diffuse_rays_cont_b3116 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b3107:
# B3107
	lui x18, 268032
iter_trace_diffuse_rays_cont_b3116:
# B3116
	floor x20, x18
	fsub x18, x18, x20
	lw x20, 1(x31)
	lw x32, 5(x19)
	lw x32, 1(x32)
	fsub x20, x20, x32
	lw x32, 4(x19)
	lw x32, 1(x32)
	fsqrt x32, x32
	fmul x20, x20, x32
	fabs x32, x28
	fle x32, x79, x32
	beq	x32, zero, iter_trace_diffuse_rays_bneelse_b3118
# B3117
	fdiv x20, x20, x28
	fabs x20, x20
	fle x28, x20, zero
	xori x28, x28, 1
	fabs x32, x20
	fle x33, x8, x32
	bne	x33, zero, iter_trace_diffuse_rays_beqelse_b3120
# B3119
	fmul x28, x20, x20
	fmul x32, x28, x85
	fadd x32, x84, x32
	fmul x32, x28, x32
	fadd x32, x83, x32
	fmul x32, x28, x32
	fadd x32, x82, x32
	fmul x32, x28, x32
	fadd x32, x81, x32
	fmul x32, x28, x32
	fadd x32, x80, x32
	fmul x28, x28, x32
	fadd x28, x30, x28
	fmul x20, x20, x28
	j iter_trace_diffuse_rays_cont_b3126 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3120:
# B3120
	fle x20, x86, x32
	bne	x20, zero, iter_trace_diffuse_rays_beqelse_b3122
# B3121
	fsub x20, x32, x30
	fadd x32, x32, x30
	fdiv x20, x20, x32
	fmul x32, x20, x20
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
	fadd x32, x30, x32
	fmul x20, x20, x32
	fadd x20, x7, x20
	j iter_trace_diffuse_rays_cont_b3123 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3122:
# B3122
	fdiv x20, x30, x32
	fmul x32, x20, x20
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
	fadd x32, x30, x32
	fmul x20, x20, x32
	fsub x20, x69, x20
iter_trace_diffuse_rays_cont_b3123:
# B3123
	bne	x28, zero, iter_trace_diffuse_rays_beqelse_b3126
# B3124
	fsub x20, zero, x20
iter_trace_diffuse_rays_beqelse_b3126:
iter_trace_diffuse_rays_cont_b3126:
# B3126
	fmul x20, x20, x87
	fdiv x20, x20, x77
	j iter_trace_diffuse_rays_cont_b3127 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b3118:
# B3118
	lui x20, 268032
iter_trace_diffuse_rays_cont_b3127:
# B3127
	floor x28, x20
	fsub x20, x20, x28
	fsub x18, x37, x18
	fmul x18, x18, x18
	fsub x18, x88, x18
	fsub x20, x37, x20
	fmul x20, x20, x20
	fsub x18, x18, x20
	fle x20, zero, x18
	beq	x20, zero, iter_trace_diffuse_rays_bneelse_b3129
# B3128
	mv x28, x18
	j iter_trace_diffuse_rays_cont_b3130 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b3129:
# B3129
	mv x28, zero
iter_trace_diffuse_rays_cont_b3130:
# B3130
	fmul x18, x76, x28
	fdiv x18, x18, x89
	sw x18, 2(x39)
iter_trace_diffuse_rays_beqelse_b3131:
iter_trace_diffuse_rays_cont_b3131:
# B3131
	lw x18, 0(x21)
	mv x21, x18
	mv x20, zero
iter_trace_diffuse_rays_loop_b3132:
# B3132
	add x4, x21, x20
	lw x18, 0(x4)
	lw x28, 0(x18)
	beq	x28, x24, iter_trace_diffuse_rays_bneelse_b3358
# B3134
	bne	x28, x22, iter_trace_diffuse_rays_beqelse_b3136
# B3135
	mv x28, x100
	j iter_trace_diffuse_rays_cont_b3268 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3136:
# B3136
	add x4, x26, x28
	lw x32, 0(x4)
	lw x33, 0(x31)
	lw x35, 5(x32)
	lw x35, 0(x35)
	fsub x33, x33, x35
	lw x35, 1(x31)
	lw x37, 5(x32)
	lw x37, 1(x37)
	fsub x35, x35, x37
	lw x37, 2(x31)
	lw x38, 5(x32)
	lw x38, 2(x38)
	fsub x37, x37, x38
	lw x38, 1(x9)
	add x4, x38, x28
	lw x28, 0(x4)
	lw x38, 1(x32)
	bne	x38, x100, iter_trace_diffuse_rays_beqelse_b3138
# B3137
	lw x38, 0(x9)
	lw x40, 0(x28)
	fsub x40, x40, x33
	lw x5, 1(x28)
	fmul x40, x40, x5
	lw x5, 1(x38)
	fmul x5, x40, x5
	fadd x5, x5, x35
	fabs x5, x5
	lw x6, 4(x32)
	lw x6, 1(x6)
	fle x5, x6, x5
	bne	x5, zero, iter_trace_diffuse_rays_beqelse_b3144
# B3140
	lw x5, 2(x38)
	fmul x5, x40, x5
	fadd x5, x5, x37
	fabs x5, x5
	lw x6, 4(x32)
	lw x6, 2(x6)
	fle x5, x6, x5
	bne	x5, zero, iter_trace_diffuse_rays_beqelse_b3144
# B3142
	lw x5, 1(x28)
	feq x5, x5, zero
	xori x5, x5, 1
	mv x6, x5
# B3143
	bne	x6, zero, iter_trace_diffuse_rays_beqelse_b3145
iter_trace_diffuse_rays_beqelse_b3144:
# B3144
	lw x40, 2(x28)
	fsub x40, x40, x35
	lw x5, 3(x28)
	fmul x40, x40, x5
	lw x5, 0(x38)
	fmul x5, x40, x5
	fadd x5, x5, x33
	fabs x5, x5
	lw x6, 4(x32)
	lw x6, 0(x6)
	fle x5, x6, x5
	bne	x5, zero, iter_trace_diffuse_rays_beqelse_b3151
# B3147
	lw x5, 2(x38)
	fmul x5, x40, x5
	fadd x5, x5, x37
	fabs x5, x5
	lw x6, 4(x32)
	lw x6, 2(x6)
	fle x5, x6, x5
	bne	x5, zero, iter_trace_diffuse_rays_beqelse_b3151
# B3149
	lw x5, 3(x28)
	feq x5, x5, zero
	xori x5, x5, 1
	mv x6, x5
# B3150
	bne	x6, zero, iter_trace_diffuse_rays_beqelse_b3152
iter_trace_diffuse_rays_beqelse_b3151:
# B3151
	lw x40, 4(x28)
	fsub x37, x40, x37
	lw x40, 5(x28)
	fmul x37, x37, x40
	lw x40, 0(x38)
	fmul x40, x37, x40
	fadd x33, x40, x33
	fabs x33, x33
	lw x40, 4(x32)
	lw x40, 0(x40)
	fle x33, x40, x33
	bne	x33, zero, iter_trace_diffuse_rays_beqelse_b3158
# B3154
	lw x33, 1(x38)
	fmul x33, x37, x33
	fadd x33, x33, x35
	fabs x33, x33
	lw x32, 4(x32)
	lw x32, 1(x32)
	fle x32, x32, x33
	bne	x32, zero, iter_trace_diffuse_rays_beqelse_b3158
# B3156
	lw x28, 5(x28)
	feq x28, x28, zero
	xori x28, x28, 1
	mv x32, x28
# B3157
	bne	x32, zero, iter_trace_diffuse_rays_beqelse_b3159
iter_trace_diffuse_rays_beqelse_b3158:
# B3158
	j iter_trace_diffuse_rays_cont_b3178 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3159:
# B3159
	sw x37, 0(x23)
	mv x28, x29
	j iter_trace_diffuse_rays_cont_b3177 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3152:
# B3152
	sw x40, 0(x23)
	mv x28, x12
	j iter_trace_diffuse_rays_cont_b3177 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3145:
# B3145
	sw x40, 0(x23)
	mv x28, x100
	j iter_trace_diffuse_rays_cont_b3177 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3138:
# B3138
	bne	x38, x12, iter_trace_diffuse_rays_beqelse_b3161
# B3160
	lw x32, 0(x28)
	fle x32, zero, x32
	bne	x32, zero, iter_trace_diffuse_rays_beqelse_b3178
# B3163
	lw x32, 1(x28)
	fmul x32, x32, x33
	lw x33, 2(x28)
	fmul x33, x33, x35
	fadd x32, x32, x33
	lw x28, 3(x28)
	fmul x28, x28, x37
	fadd x28, x32, x28
	sw x28, 0(x23)
	mv x28, x100
	j iter_trace_diffuse_rays_cont_b3177 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3161:
# B3161
	lw x38, 0(x28)
	feq x40, x38, zero
	bne	x40, zero, iter_trace_diffuse_rays_beqelse_b3178
# B3164
	lw x40, 1(x28)
	fmul x40, x40, x33
	lw x5, 2(x28)
	fmul x5, x5, x35
	fadd x40, x40, x5
	lw x5, 3(x28)
	fmul x5, x5, x37
	fadd x40, x40, x5
	fmul x5, x33, x33
	lw x6, 4(x32)
	lw x6, 0(x6)
	fmul x5, x5, x6
	fmul x6, x35, x35
	lw x65, 4(x32)
	lw x65, 1(x65)
	fmul x6, x6, x65
	fadd x5, x5, x6
	fmul x6, x37, x37
	lw x65, 4(x32)
	lw x65, 2(x65)
	fmul x6, x6, x65
	fadd x5, x5, x6
	lw x6, 3(x32)
	bne	x6, zero, iter_trace_diffuse_rays_beqelse_b3167
# B3166
	mv x33, x5
	j iter_trace_diffuse_rays_cont_b3168 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3167:
# B3167
	fmul x6, x35, x37
	lw x65, 9(x32)
	lw x65, 0(x65)
	fmul x6, x6, x65
	fadd x5, x5, x6
	fmul x37, x37, x33
	lw x6, 9(x32)
	lw x6, 1(x6)
	fmul x37, x37, x6
	fadd x37, x5, x37
	fmul x33, x33, x35
	lw x35, 9(x32)
	lw x35, 2(x35)
	fmul x33, x33, x35
	fadd x33, x37, x33
iter_trace_diffuse_rays_cont_b3168:
# B3168
	lw x35, 1(x32)
	bne	x35, x29, iter_trace_diffuse_rays_beqelse_b3171
# B3169
	fsub x33, x33, x30
iter_trace_diffuse_rays_beqelse_b3171:
# B3171
	fmul x35, x40, x40
	fmul x33, x38, x33
	fsub x33, x35, x33
	fle x35, x33, zero
	bne	x35, zero, iter_trace_diffuse_rays_beqelse_b3178
# B3173
	lw x32, 6(x32)
	fsqrt x33, x33
	bne	x32, zero, iter_trace_diffuse_rays_beqelse_b3175
# B3174
	fsub x32, x40, x33
	lw x28, 4(x28)
	fmul x28, x32, x28
	sw x28, 0(x23)
	j iter_trace_diffuse_rays_cont_b3176 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3175:
# B3175
	fadd x32, x40, x33
	lw x28, 4(x28)
	fmul x28, x32, x28
	sw x28, 0(x23)
iter_trace_diffuse_rays_cont_b3176:
# B3176
	mv x28, x100
iter_trace_diffuse_rays_cont_b3177:
# B3177
	bne	x28, zero, iter_trace_diffuse_rays_beqelse_b3179
iter_trace_diffuse_rays_beqelse_b3178:
iter_trace_diffuse_rays_cont_b3178:
# B3178
	addi x20, x20, 1
	j iter_trace_diffuse_rays_cont_b3269 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3179:
# B3179
	lw x28, 0(x23)
	fle x28, x34, x28
	beq	x28, zero, iter_trace_diffuse_rays_bneelse_b3181
# B3180
	addi x20, x20, 1
	j iter_trace_diffuse_rays_cont_b3269 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b3181:
# B3181
	mv x33, x18
	mv x32, x100
iter_trace_diffuse_rays_loop_b3182:
# B3182
	add x4, x33, x32
	lw x28, 0(x4)
	beq	x28, x24, iter_trace_diffuse_rays_bneelse_b3266
# B3184
	add x4, x25, x28
	lw x28, 0(x4)
	mv x37, x28
	mv x35, zero
iter_trace_diffuse_rays_loop_b3185:
# B3185
	add x4, x37, x35
	lw x28, 0(x4)
	beq	x28, x24, iter_trace_diffuse_rays_bneelse_b3263
# B3187
	add x4, x37, x35
	lw x28, 0(x4)
	add x4, x26, x28
	lw x38, 0(x4)
	lw x40, 0(x31)
	lw x5, 5(x38)
	lw x5, 0(x5)
	fsub x40, x40, x5
	lw x5, 1(x31)
	lw x6, 5(x38)
	lw x6, 1(x6)
	fsub x5, x5, x6
	lw x6, 2(x31)
	lw x65, 5(x38)
	lw x65, 2(x65)
	fsub x6, x6, x65
	lw x65, 1(x9)
	add x4, x65, x28
	lw x65, 0(x4)
	lw x66, 1(x38)
	bne	x66, x100, iter_trace_diffuse_rays_beqelse_b3189
# B3188
	lw x66, 0(x9)
	lw x67, 0(x65)
	fsub x67, x67, x40
	lw x68, 1(x65)
	fmul x67, x67, x68
	lw x68, 1(x66)
	fmul x68, x67, x68
	fadd x68, x68, x5
	fabs x68, x68
	lw x69, 4(x38)
	lw x69, 1(x69)
	fle x68, x69, x68
	bne	x68, zero, iter_trace_diffuse_rays_beqelse_b3195
# B3191
	lw x68, 2(x66)
	fmul x68, x67, x68
	fadd x68, x68, x6
	fabs x68, x68
	lw x69, 4(x38)
	lw x69, 2(x69)
	fle x68, x69, x68
	bne	x68, zero, iter_trace_diffuse_rays_beqelse_b3195
# B3193
	lw x68, 1(x65)
	feq x68, x68, zero
	xori x68, x68, 1
	mv x69, x68
# B3194
	bne	x69, zero, iter_trace_diffuse_rays_beqelse_b3196
iter_trace_diffuse_rays_beqelse_b3195:
# B3195
	lw x67, 2(x65)
	fsub x67, x67, x5
	lw x68, 3(x65)
	fmul x67, x67, x68
	lw x68, 0(x66)
	fmul x68, x67, x68
	fadd x68, x68, x40
	fabs x68, x68
	lw x69, 4(x38)
	lw x69, 0(x69)
	fle x68, x69, x68
	bne	x68, zero, iter_trace_diffuse_rays_beqelse_b3202
# B3198
	lw x68, 2(x66)
	fmul x68, x67, x68
	fadd x68, x68, x6
	fabs x68, x68
	lw x69, 4(x38)
	lw x69, 2(x69)
	fle x68, x69, x68
	bne	x68, zero, iter_trace_diffuse_rays_beqelse_b3202
# B3200
	lw x68, 3(x65)
	feq x68, x68, zero
	xori x68, x68, 1
	mv x69, x68
# B3201
	bne	x69, zero, iter_trace_diffuse_rays_beqelse_b3203
iter_trace_diffuse_rays_beqelse_b3202:
# B3202
	lw x67, 4(x65)
	fsub x6, x67, x6
	lw x67, 5(x65)
	fmul x6, x6, x67
	lw x67, 0(x66)
	fmul x67, x6, x67
	fadd x40, x67, x40
	fabs x40, x40
	lw x67, 4(x38)
	lw x67, 0(x67)
	fle x40, x67, x40
	bne	x40, zero, iter_trace_diffuse_rays_beqelse_b3209
# B3205
	lw x40, 1(x66)
	fmul x40, x6, x40
	fadd x40, x40, x5
	fabs x40, x40
	lw x38, 4(x38)
	lw x38, 1(x38)
	fle x38, x38, x40
	bne	x38, zero, iter_trace_diffuse_rays_beqelse_b3209
# B3207
	lw x38, 5(x65)
	feq x38, x38, zero
	xori x38, x38, 1
	mv x40, x38
# B3208
	bne	x40, zero, iter_trace_diffuse_rays_beqelse_b3210
iter_trace_diffuse_rays_beqelse_b3209:
# B3209
	lw x40, 0(x23)
	j iter_trace_diffuse_rays_cont_b3229 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3210:
# B3210
	sw x6, 0(x23)
	mv x38, x29
	j iter_trace_diffuse_rays_cont_b3228 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3203:
# B3203
	sw x67, 0(x23)
	mv x38, x12
	j iter_trace_diffuse_rays_cont_b3228 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3196:
# B3196
	sw x67, 0(x23)
	mv x38, x100
	j iter_trace_diffuse_rays_cont_b3228 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3189:
# B3189
	bne	x66, x12, iter_trace_diffuse_rays_beqelse_b3212
# B3211
	lw x38, 0(x65)
	fle x38, zero, x38
	beq	x38, zero, iter_trace_diffuse_rays_bneelse_b3214
# B3213
	lw x40, 0(x23)
	j iter_trace_diffuse_rays_cont_b3229 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b3214:
# B3214
	lw x38, 1(x65)
	fmul x38, x38, x40
	lw x40, 2(x65)
	fmul x40, x40, x5
	fadd x38, x38, x40
	lw x40, 3(x65)
	fmul x40, x40, x6
	fadd x38, x38, x40
	sw x38, 0(x23)
	mv x38, x100
	j iter_trace_diffuse_rays_cont_b3228 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3212:
# B3212
	lw x66, 0(x65)
	feq x67, x66, zero
	bne	x67, zero, iter_trace_diffuse_rays_beqelse_b3216
# B3215
	lw x67, 1(x65)
	fmul x67, x67, x40
	lw x68, 2(x65)
	fmul x68, x68, x5
	fadd x67, x67, x68
	lw x68, 3(x65)
	fmul x68, x68, x6
	fadd x67, x67, x68
	fmul x68, x40, x40
	lw x69, 4(x38)
	lw x69, 0(x69)
	fmul x68, x68, x69
	fmul x69, x5, x5
	lw x7, 4(x38)
	lw x7, 1(x7)
	fmul x69, x69, x7
	fadd x68, x68, x69
	fmul x69, x6, x6
	lw x7, 4(x38)
	lw x7, 2(x7)
	fmul x69, x69, x7
	fadd x68, x68, x69
	lw x69, 3(x38)
	bne	x69, zero, iter_trace_diffuse_rays_beqelse_b3218
# B3217
	mv x40, x68
	j iter_trace_diffuse_rays_cont_b3219 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3218:
# B3218
	fmul x69, x5, x6
	lw x7, 9(x38)
	lw x7, 0(x7)
	fmul x69, x69, x7
	fadd x68, x68, x69
	fmul x6, x6, x40
	lw x69, 9(x38)
	lw x69, 1(x69)
	fmul x6, x6, x69
	fadd x6, x68, x6
	fmul x40, x40, x5
	lw x5, 9(x38)
	lw x5, 2(x5)
	fmul x40, x40, x5
	fadd x40, x6, x40
iter_trace_diffuse_rays_cont_b3219:
# B3219
	lw x5, 1(x38)
	bne	x5, x29, iter_trace_diffuse_rays_beqelse_b3222
# B3220
	fsub x40, x40, x30
iter_trace_diffuse_rays_beqelse_b3222:
# B3222
	fmul x5, x67, x67
	fmul x40, x66, x40
	fsub x40, x5, x40
	fle x5, x40, zero
	beq	x5, zero, iter_trace_diffuse_rays_bneelse_b3224
# B3223
	lw x40, 0(x23)
	j iter_trace_diffuse_rays_cont_b3229 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b3224:
# B3224
	lw x38, 6(x38)
	fsqrt x40, x40
	bne	x38, zero, iter_trace_diffuse_rays_beqelse_b3226
# B3225
	fsub x38, x67, x40
	lw x40, 4(x65)
	fmul x38, x38, x40
	sw x38, 0(x23)
	j iter_trace_diffuse_rays_cont_b3227 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3226:
# B3226
	fadd x38, x67, x40
	lw x40, 4(x65)
	fmul x38, x38, x40
	sw x38, 0(x23)
iter_trace_diffuse_rays_cont_b3227:
# B3227
	mv x38, x100
iter_trace_diffuse_rays_cont_b3228:
# B3228
	lw x40, 0(x23)
	bne	x38, zero, iter_trace_diffuse_rays_beqelse_b3230
	j iter_trace_diffuse_rays_cont_b3229 # adhoc jump(3)
iter_trace_diffuse_rays_beqelse_b3230:
# B3230
	fle x38, x90, x40
	xori x38, x38, 1
# B3231
	addi x35, x35, 1
	bne	x38, zero, iter_trace_diffuse_rays_beqelse_b3233
	j iter_trace_diffuse_rays_cont_b3232 # adhoc jump(3)
iter_trace_diffuse_rays_beqelse_b3233:
# B3233
	fadd x28, x40, x27
	lw x38, 0(x91)
	fmul x38, x38, x28
	lw x40, 0(x31)
	fadd x38, x38, x40
	lw x40, 1(x91)
	fmul x40, x40, x28
	lw x5, 1(x31)
	fadd x40, x40, x5
	lw x5, 2(x91)
	fmul x28, x5, x28
	lw x5, 2(x31)
	fadd x28, x28, x5
	mv x6, x37
	mv x66, x40
	mv x65, x38
	mv x67, x28
	mv x5, zero
iter_trace_diffuse_rays_loop_b3236:
# B3236
	add x4, x6, x5
	lw x28, 0(x4)
	bne	x28, x24, iter_trace_diffuse_rays_beqelse_b3238
# B3237
	mv x38, x100
# B3259
	bne	x38, zero, iter_trace_diffuse_rays_beqelse_b3261
	j iter_trace_diffuse_rays_cont_b3260 # adhoc jump(3)
iter_trace_diffuse_rays_beqelse_b3261:
# B3261
	mv x28, x100
# B3262
	bne	x28, zero, iter_trace_diffuse_rays_beqelse_b3264
	j iter_trace_diffuse_rays_cont_b3263 # adhoc jump(3)
iter_trace_diffuse_rays_beqelse_b3264:
# B3264
	mv x35, x100
# B3265
	bne	x35, zero, iter_trace_diffuse_rays_beqelse_b3267
iter_trace_diffuse_rays_bneelse_b3266:
# B3266
	addi x20, x20, 1
	j iter_trace_diffuse_rays_cont_b3269 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3267:
# B3267
	mv x28, x100
iter_trace_diffuse_rays_cont_b3268:
# B3268
	addi x20, x20, 1
	bne	x28, zero, iter_trace_diffuse_rays_beqelse_b3270
iter_trace_diffuse_rays_cont_b3269:
# B3269
	j iter_trace_diffuse_rays_loop_b3132 # loopback to while entry from B3269
iter_trace_diffuse_rays_beqelse_b3270:
# B3270
	mv x33, x18
	mv x32, x100
iter_trace_diffuse_rays_loop_b3271:
# B3271
	add x4, x33, x32
	lw x18, 0(x4)
	beq	x18, x24, iter_trace_diffuse_rays_bneelse_b3355
# B3273
	add x4, x25, x18
	lw x18, 0(x4)
	mv x35, x18
	mv x28, zero
iter_trace_diffuse_rays_loop_b3274:
# B3274
	add x4, x35, x28
	lw x18, 0(x4)
	beq	x18, x24, iter_trace_diffuse_rays_bneelse_b3352
# B3276
	add x4, x35, x28
	lw x18, 0(x4)
	add x4, x26, x18
	lw x37, 0(x4)
	lw x38, 0(x31)
	lw x40, 5(x37)
	lw x40, 0(x40)
	fsub x38, x38, x40
	lw x40, 1(x31)
	lw x5, 5(x37)
	lw x5, 1(x5)
	fsub x40, x40, x5
	lw x5, 2(x31)
	lw x6, 5(x37)
	lw x6, 2(x6)
	fsub x5, x5, x6
	lw x6, 1(x9)
	add x4, x6, x18
	lw x6, 0(x4)
	lw x65, 1(x37)
	bne	x65, x100, iter_trace_diffuse_rays_beqelse_b3278
# B3277
	lw x65, 0(x9)
	lw x66, 0(x6)
	fsub x66, x66, x38
	lw x67, 1(x6)
	fmul x66, x66, x67
	lw x67, 1(x65)
	fmul x67, x66, x67
	fadd x67, x67, x40
	fabs x67, x67
	lw x68, 4(x37)
	lw x68, 1(x68)
	fle x67, x68, x67
	bne	x67, zero, iter_trace_diffuse_rays_beqelse_b3284
# B3280
	lw x67, 2(x65)
	fmul x67, x66, x67
	fadd x67, x67, x5
	fabs x67, x67
	lw x68, 4(x37)
	lw x68, 2(x68)
	fle x67, x68, x67
	bne	x67, zero, iter_trace_diffuse_rays_beqelse_b3284
# B3282
	lw x67, 1(x6)
	feq x67, x67, zero
	xori x67, x67, 1
	mv x68, x67
# B3283
	bne	x68, zero, iter_trace_diffuse_rays_beqelse_b3285
iter_trace_diffuse_rays_beqelse_b3284:
# B3284
	lw x66, 2(x6)
	fsub x66, x66, x40
	lw x67, 3(x6)
	fmul x66, x66, x67
	lw x67, 0(x65)
	fmul x67, x66, x67
	fadd x67, x67, x38
	fabs x67, x67
	lw x68, 4(x37)
	lw x68, 0(x68)
	fle x67, x68, x67
	bne	x67, zero, iter_trace_diffuse_rays_beqelse_b3291
# B3287
	lw x67, 2(x65)
	fmul x67, x66, x67
	fadd x67, x67, x5
	fabs x67, x67
	lw x68, 4(x37)
	lw x68, 2(x68)
	fle x67, x68, x67
	bne	x67, zero, iter_trace_diffuse_rays_beqelse_b3291
# B3289
	lw x67, 3(x6)
	feq x67, x67, zero
	xori x67, x67, 1
	mv x68, x67
# B3290
	bne	x68, zero, iter_trace_diffuse_rays_beqelse_b3292
iter_trace_diffuse_rays_beqelse_b3291:
# B3291
	lw x66, 4(x6)
	fsub x5, x66, x5
	lw x66, 5(x6)
	fmul x5, x5, x66
	lw x66, 0(x65)
	fmul x66, x5, x66
	fadd x38, x66, x38
	fabs x38, x38
	lw x66, 4(x37)
	lw x66, 0(x66)
	fle x38, x66, x38
	bne	x38, zero, iter_trace_diffuse_rays_beqelse_b3298
# B3294
	lw x38, 1(x65)
	fmul x38, x5, x38
	fadd x38, x38, x40
	fabs x38, x38
	lw x37, 4(x37)
	lw x37, 1(x37)
	fle x37, x37, x38
	bne	x37, zero, iter_trace_diffuse_rays_beqelse_b3298
# B3296
	lw x37, 5(x6)
	feq x37, x37, zero
	xori x37, x37, 1
	mv x38, x37
# B3297
	bne	x38, zero, iter_trace_diffuse_rays_beqelse_b3299
iter_trace_diffuse_rays_beqelse_b3298:
# B3298
	lw x38, 0(x23)
	j iter_trace_diffuse_rays_cont_b3318 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3299:
# B3299
	sw x5, 0(x23)
	mv x37, x29
	j iter_trace_diffuse_rays_cont_b3317 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3292:
# B3292
	sw x66, 0(x23)
	mv x37, x12
	j iter_trace_diffuse_rays_cont_b3317 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3285:
# B3285
	sw x66, 0(x23)
	mv x37, x100
	j iter_trace_diffuse_rays_cont_b3317 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3278:
# B3278
	bne	x65, x12, iter_trace_diffuse_rays_beqelse_b3301
# B3300
	lw x37, 0(x6)
	fle x37, zero, x37
	beq	x37, zero, iter_trace_diffuse_rays_bneelse_b3303
# B3302
	lw x38, 0(x23)
	j iter_trace_diffuse_rays_cont_b3318 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b3303:
# B3303
	lw x37, 1(x6)
	fmul x37, x37, x38
	lw x38, 2(x6)
	fmul x38, x38, x40
	fadd x37, x37, x38
	lw x38, 3(x6)
	fmul x38, x38, x5
	fadd x37, x37, x38
	sw x37, 0(x23)
	mv x37, x100
	j iter_trace_diffuse_rays_cont_b3317 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3301:
# B3301
	lw x65, 0(x6)
	feq x66, x65, zero
	bne	x66, zero, iter_trace_diffuse_rays_beqelse_b3305
# B3304
	lw x66, 1(x6)
	fmul x66, x66, x38
	lw x67, 2(x6)
	fmul x67, x67, x40
	fadd x66, x66, x67
	lw x67, 3(x6)
	fmul x67, x67, x5
	fadd x66, x66, x67
	fmul x67, x38, x38
	lw x68, 4(x37)
	lw x68, 0(x68)
	fmul x67, x67, x68
	fmul x68, x40, x40
	lw x69, 4(x37)
	lw x69, 1(x69)
	fmul x68, x68, x69
	fadd x67, x67, x68
	fmul x68, x5, x5
	lw x69, 4(x37)
	lw x69, 2(x69)
	fmul x68, x68, x69
	fadd x67, x67, x68
	lw x68, 3(x37)
	bne	x68, zero, iter_trace_diffuse_rays_beqelse_b3307
# B3306
	mv x38, x67
	j iter_trace_diffuse_rays_cont_b3308 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3307:
# B3307
	fmul x68, x40, x5
	lw x69, 9(x37)
	lw x69, 0(x69)
	fmul x68, x68, x69
	fadd x67, x67, x68
	fmul x5, x5, x38
	lw x68, 9(x37)
	lw x68, 1(x68)
	fmul x5, x5, x68
	fadd x5, x67, x5
	fmul x38, x38, x40
	lw x40, 9(x37)
	lw x40, 2(x40)
	fmul x38, x38, x40
	fadd x38, x5, x38
iter_trace_diffuse_rays_cont_b3308:
# B3308
	lw x40, 1(x37)
	bne	x40, x29, iter_trace_diffuse_rays_beqelse_b3311
# B3309
	fsub x38, x38, x30
iter_trace_diffuse_rays_beqelse_b3311:
# B3311
	fmul x40, x66, x66
	fmul x38, x65, x38
	fsub x38, x40, x38
	fle x40, x38, zero
	beq	x40, zero, iter_trace_diffuse_rays_bneelse_b3313
# B3312
	lw x38, 0(x23)
	j iter_trace_diffuse_rays_cont_b3318 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b3313:
# B3313
	lw x37, 6(x37)
	fsqrt x38, x38
	bne	x37, zero, iter_trace_diffuse_rays_beqelse_b3315
# B3314
	fsub x37, x66, x38
	lw x38, 4(x6)
	fmul x37, x37, x38
	sw x37, 0(x23)
	j iter_trace_diffuse_rays_cont_b3316 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3315:
# B3315
	fadd x37, x66, x38
	lw x38, 4(x6)
	fmul x37, x37, x38
	sw x37, 0(x23)
iter_trace_diffuse_rays_cont_b3316:
# B3316
	mv x37, x100
iter_trace_diffuse_rays_cont_b3317:
# B3317
	lw x38, 0(x23)
	bne	x37, zero, iter_trace_diffuse_rays_beqelse_b3319
	j iter_trace_diffuse_rays_cont_b3318 # adhoc jump(3)
iter_trace_diffuse_rays_beqelse_b3319:
# B3319
	fle x37, x90, x38
	xori x37, x37, 1
# B3320
	addi x28, x28, 1
	bne	x37, zero, iter_trace_diffuse_rays_beqelse_b3322
	j iter_trace_diffuse_rays_cont_b3321 # adhoc jump(3)
iter_trace_diffuse_rays_beqelse_b3322:
# B3322
	fadd x18, x38, x27
	lw x37, 0(x91)
	fmul x37, x37, x18
	lw x38, 0(x31)
	fadd x37, x37, x38
	lw x38, 1(x91)
	fmul x38, x38, x18
	lw x40, 1(x31)
	fadd x38, x38, x40
	lw x40, 2(x91)
	fmul x18, x40, x18
	lw x40, 2(x31)
	fadd x18, x18, x40
	mv x6, x37
	mv x40, zero
	mv x5, x35
	mv x65, x38
	mv x66, x18
iter_trace_diffuse_rays_loop_b3325:
# B3325
	add x4, x5, x40
	lw x18, 0(x4)
	bne	x18, x24, iter_trace_diffuse_rays_beqelse_b3327
# B3326
	mv x37, x100
# B3348
	bne	x37, zero, iter_trace_diffuse_rays_beqelse_b3350
	j iter_trace_diffuse_rays_cont_b3349 # adhoc jump(3)
iter_trace_diffuse_rays_beqelse_b3350:
# B3350
	mv x18, x100
# B3351
	bne	x18, zero, iter_trace_diffuse_rays_beqelse_b3353
	j iter_trace_diffuse_rays_cont_b3352 # adhoc jump(3)
iter_trace_diffuse_rays_beqelse_b3353:
# B3353
	mv x28, x100
# B3354
	bne	x28, zero, iter_trace_diffuse_rays_beqelse_b3356
iter_trace_diffuse_rays_bneelse_b3355:
# B3355
	j iter_trace_diffuse_rays_loop_b3132 # loopback to while entry from B3355
iter_trace_diffuse_rays_beqelse_b3356:
# B3356
	mv x18, x100
# B3357
	bne	x18, zero, iter_trace_diffuse_rays_beqelse_b3363
iter_trace_diffuse_rays_bneelse_b3358:
# B3358
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
	fle x20, x18, zero
	beq	x20, zero, iter_trace_diffuse_rays_bneelse_b3361
# B3360
	mv x21, zero
	j iter_trace_diffuse_rays_cont_b3362 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b3361:
# B3361
	mv x21, x18
iter_trace_diffuse_rays_cont_b3362:
# B3362
	fmul x17, x17, x21
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
iter_trace_diffuse_rays_beqelse_b3363:
iter_trace_diffuse_rays_cont_b3363:
# B3363
	addi x16, x16, -2
	j iter_trace_diffuse_rays_loop_b2274 # loopback to while entry from B3363
iter_trace_diffuse_rays_beqelse_b3327:
# B3327
	add x4, x26, x18
	lw x18, 0(x4)
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
	bne	x68, x100, iter_trace_diffuse_rays_beqelse_b3329
# B3328
	fabs x37, x37
	lw x68, 4(x18)
	lw x68, 0(x68)
	fle x37, x68, x37
	bne	x37, zero, iter_trace_diffuse_rays_beqelse_b3335
# B3331
	fabs x37, x38
	lw x38, 4(x18)
	lw x38, 1(x38)
	fle x37, x38, x37
	bne	x37, zero, iter_trace_diffuse_rays_beqelse_b3335
# B3333
	fabs x37, x67
	lw x38, 4(x18)
	lw x38, 2(x38)
	fle x37, x38, x37
	xori x37, x37, 1
	mv x38, x37
# B3334
	bne	x38, zero, iter_trace_diffuse_rays_beqelse_b3336
iter_trace_diffuse_rays_beqelse_b3335:
# B3335
	lw x18, 6(x18)
	xori x18, x18, 1
	j iter_trace_diffuse_rays_cont_b3345 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3336:
# B3336
	lw x18, 6(x18)
	j iter_trace_diffuse_rays_cont_b3345 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3329:
# B3329
	bne	x68, x12, iter_trace_diffuse_rays_beqelse_b3338
# B3337
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
	j iter_trace_diffuse_rays_cont_b3345 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3338:
# B3338
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
	bne	x69, zero, iter_trace_diffuse_rays_beqelse_b3340
# B3339
	mv x37, x68
	j iter_trace_diffuse_rays_cont_b3341 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3340:
# B3340
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
iter_trace_diffuse_rays_cont_b3341:
# B3341
	lw x38, 1(x18)
	bne	x38, x29, iter_trace_diffuse_rays_beqelse_b3344
# B3342
	fsub x37, x37, x30
iter_trace_diffuse_rays_beqelse_b3344:
# B3344
	lw x18, 6(x18)
	fle x37, zero, x37
	xori x37, x37, 1
	xor x18, x18, x37
	xori x18, x18, 1
iter_trace_diffuse_rays_cont_b3345:
# B3345
	bne	x18, zero, iter_trace_diffuse_rays_beqelse_b3349
# B3346
	addi x40, x40, 1
	j iter_trace_diffuse_rays_loop_b3325 # loopback to while entry from B3346
iter_trace_diffuse_rays_beqelse_b3349:
iter_trace_diffuse_rays_cont_b3349:
# B3349
	j iter_trace_diffuse_rays_loop_b3274 # loopback to while entry from B3349
iter_trace_diffuse_rays_beqelse_b3305:
# B3305
	lw x38, 0(x23)
iter_trace_diffuse_rays_cont_b3318:
# B3318
	addi x28, x28, 1
iter_trace_diffuse_rays_cont_b3321:
# B3321
	add x4, x26, x18
	lw x18, 0(x4)
	lw x18, 6(x18)
	beq	x18, zero, iter_trace_diffuse_rays_bneelse_b3352
	j	iter_trace_diffuse_rays_loop_b3274 # moved need extra jump
iter_trace_diffuse_rays_bneelse_b3352:
iter_trace_diffuse_rays_cont_b3352:
# B3352
	addi x32, x32, 1
	j iter_trace_diffuse_rays_loop_b3271 # loopback to while entry from B3352
	j iter_trace_diffuse_rays_loop_b3274 # loopback to while entry from B3321
iter_trace_diffuse_rays_beqelse_b3238:
# B3238
	add x4, x26, x28
	lw x28, 0(x4)
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
	bne	x69, x100, iter_trace_diffuse_rays_beqelse_b3240
# B3239
	fabs x38, x38
	lw x69, 4(x28)
	lw x69, 0(x69)
	fle x38, x69, x38
	bne	x38, zero, iter_trace_diffuse_rays_beqelse_b3246
# B3242
	fabs x38, x40
	lw x40, 4(x28)
	lw x40, 1(x40)
	fle x38, x40, x38
	bne	x38, zero, iter_trace_diffuse_rays_beqelse_b3246
# B3244
	fabs x38, x68
	lw x40, 4(x28)
	lw x40, 2(x40)
	fle x38, x40, x38
	xori x38, x38, 1
	mv x40, x38
# B3245
	bne	x40, zero, iter_trace_diffuse_rays_beqelse_b3247
iter_trace_diffuse_rays_beqelse_b3246:
# B3246
	lw x28, 6(x28)
	xori x28, x28, 1
	j iter_trace_diffuse_rays_cont_b3256 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3247:
# B3247
	lw x28, 6(x28)
	j iter_trace_diffuse_rays_cont_b3256 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3240:
# B3240
	bne	x69, x12, iter_trace_diffuse_rays_beqelse_b3249
# B3248
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
	j iter_trace_diffuse_rays_cont_b3256 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3249:
# B3249
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
	bne	x7, zero, iter_trace_diffuse_rays_beqelse_b3251
# B3250
	mv x38, x69
	j iter_trace_diffuse_rays_cont_b3252 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3251:
# B3251
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
iter_trace_diffuse_rays_cont_b3252:
# B3252
	lw x40, 1(x28)
	bne	x40, x29, iter_trace_diffuse_rays_beqelse_b3255
# B3253
	fsub x38, x38, x30
iter_trace_diffuse_rays_beqelse_b3255:
# B3255
	lw x28, 6(x28)
	fle x38, zero, x38
	xori x38, x38, 1
	xor x28, x28, x38
	xori x28, x28, 1
iter_trace_diffuse_rays_cont_b3256:
# B3256
	bne	x28, zero, iter_trace_diffuse_rays_beqelse_b3260
# B3257
	addi x5, x5, 1
	j iter_trace_diffuse_rays_loop_b3236 # loopback to while entry from B3257
iter_trace_diffuse_rays_beqelse_b3260:
iter_trace_diffuse_rays_cont_b3260:
# B3260
	j iter_trace_diffuse_rays_loop_b3185 # loopback to while entry from B3260
iter_trace_diffuse_rays_beqelse_b3216:
# B3216
	lw x40, 0(x23)
iter_trace_diffuse_rays_cont_b3229:
# B3229
	addi x35, x35, 1
iter_trace_diffuse_rays_cont_b3232:
# B3232
	add x4, x26, x28
	lw x28, 0(x4)
	lw x28, 6(x28)
	beq	x28, zero, iter_trace_diffuse_rays_bneelse_b3263
	j	iter_trace_diffuse_rays_loop_b3185 # moved need extra jump
iter_trace_diffuse_rays_bneelse_b3263:
iter_trace_diffuse_rays_cont_b3263:
# B3263
	addi x32, x32, 1
	j iter_trace_diffuse_rays_loop_b3182 # loopback to while entry from B3263
	j iter_trace_diffuse_rays_loop_b3185 # loopback to while entry from B3232
iter_trace_diffuse_rays_bleelse_b2276:
# B2276
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
# B3364
# B3365
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
trace_diffuse_rays_loop_b3366:
# B3366
	la x12, min_caml_objects
	li x15, 3
	lui x16, 260096
	bgt	zero, x14, trace_diffuse_rays_bleelse_b3380
# B3367
	add x4, x12, x14
	lw x12, 0(x4)
	lw x17, 10(x12)
	lw x18, 1(x12)
	lw x19, 0(x13)
	lw x20, 5(x12)
	lw x20, 0(x20)
	fsub x19, x19, x20
	sw x19, 0(x17)
	lw x19, 1(x13)
	lw x20, 5(x12)
	lw x20, 1(x20)
	fsub x19, x19, x20
	sw x19, 1(x17)
	lw x19, 2(x13)
	lw x20, 5(x12)
	lw x20, 2(x20)
	fsub x19, x19, x20
	sw x19, 2(x17)
	bne	x18, x11, trace_diffuse_rays_beqelse_b3370
# B3369
	lw x12, 4(x12)
	lw x15, 0(x17)
	lw x16, 1(x17)
	lw x18, 2(x17)
	lw x19, 0(x12)
	fmul x15, x19, x15
	lw x19, 1(x12)
	fmul x16, x19, x16
	fadd x15, x15, x16
	lw x12, 2(x12)
	fmul x12, x12, x18
	fadd x12, x15, x12
	sw x12, 3(x17)
	j trace_diffuse_rays_cont_b3379 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3370:
# B3370
	bge	x11, x18, trace_diffuse_rays_bgtelse_b3379
# B3372
	lw x19, 0(x17)
	lw x20, 1(x17)
	lw x21, 2(x17)
	fmul x22, x19, x19
	lw x23, 4(x12)
	lw x23, 0(x23)
	fmul x22, x22, x23
	fmul x23, x20, x20
	lw x24, 4(x12)
	lw x24, 1(x24)
	fmul x23, x23, x24
	fadd x22, x22, x23
	fmul x23, x21, x21
	lw x24, 4(x12)
	lw x24, 2(x24)
	fmul x23, x23, x24
	fadd x22, x22, x23
	lw x23, 3(x12)
	bne	x23, zero, trace_diffuse_rays_beqelse_b3374
# B3373
	mv x12, x22
	j trace_diffuse_rays_cont_b3375 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3374:
# B3374
	fmul x23, x20, x21
	lw x24, 9(x12)
	lw x24, 0(x24)
	fmul x23, x23, x24
	fadd x22, x22, x23
	fmul x21, x21, x19
	lw x23, 9(x12)
	lw x23, 1(x23)
	fmul x21, x21, x23
	fadd x21, x22, x21
	fmul x19, x19, x20
	lw x12, 9(x12)
	lw x12, 2(x12)
	fmul x12, x19, x12
	fadd x12, x21, x12
trace_diffuse_rays_cont_b3375:
# B3375
	bne	x18, x15, trace_diffuse_rays_beqelse_b3378
# B3376
	fsub x12, x12, x16
trace_diffuse_rays_beqelse_b3378:
# B3378
	sw x12, 3(x17)
trace_diffuse_rays_bgtelse_b3379:
trace_diffuse_rays_cont_b3379:
# B3379
	addi x14, x14, -1
	j trace_diffuse_rays_loop_b3366 # loopback to while entry from B3379
trace_diffuse_rays_bleelse_b3380:
# B3380
	li x13, 118
	lui x14, 274784
	lui x17, 799072
	mv x20, x7
	mv x19, x6
	mv x18, x5
	mv x21, x13
trace_diffuse_rays_loop_b3381:
# B3381
	bgt	zero, x21, trace_diffuse_rays_bleelse_b3383
# B3382
	add x4, x18, x21
	lw x13, 0(x4)
	lw x13, 0(x13)
	lw x22, 0(x13)
	lw x23, 0(x19)
	fmul x22, x22, x23
	lw x23, 1(x13)
	lw x24, 1(x19)
	fmul x23, x23, x24
	fadd x22, x22, x23
	lw x13, 2(x13)
	lw x23, 2(x19)
	fmul x13, x13, x23
	fadd x13, x22, x13
	fle x22, zero, x13
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
	beq	x22, zero, trace_diffuse_rays_bneelse_b3385
# B3384
	add x4, x18, x21
	lw x22, 0(x4)
	fdiv x13, x13, x14
	sw x24, 0(x23)
	lw x24, 0(x25)
	mv x94, x24
	mv x93, zero
	mv x95, x22
trace_diffuse_rays_loop_b3386:
# B3386
	add x4, x94, x93
	lw x24, 0(x4)
	lw x96, 0(x24)
	beq	x96, x28, trace_diffuse_rays_bneelse_b3585
# B3388
	bne	x96, x26, trace_diffuse_rays_beqelse_b3390
# B3389
	mv x97, x100
	mv x98, x24
	mv x99, x95
trace_diffuse_rays_loop_b3391:
# B3391
	add x4, x98, x97
	lw x24, 0(x4)
	beq	x24, x28, trace_diffuse_rays_bneelse_b3584
# B3393
	add x4, x29, x24
	lw x24, 0(x4)
	mv x101, x24
	mv x102, x99
	mv x96, zero
trace_diffuse_rays_loop_b3394:
# B3394
	lw x24, 0(x102)
	add x4, x101, x96
	lw x103, 0(x4)
	beq	x103, x28, trace_diffuse_rays_bneelse_b3467
# B3396
	add x4, x12, x103
	lw x104, 0(x4)
	lw x105, 10(x104)
	lw x106, 0(x105)
	lw x107, 1(x105)
	lw x108, 2(x105)
	lw x109, 1(x102)
	add x4, x109, x103
	lw x109, 0(x4)
	lw x110, 1(x104)
	bne	x110, x100, trace_diffuse_rays_beqelse_b3398
# B3397
	lw x105, 0(x102)
	lw x110, 0(x109)
	fsub x110, x110, x106
	lw x111, 1(x109)
	fmul x110, x110, x111
	lw x111, 1(x105)
	fmul x111, x110, x111
	fadd x111, x111, x107
	fabs x111, x111
	lw x112, 4(x104)
	lw x112, 1(x112)
	fle x111, x112, x111
	bne	x111, zero, trace_diffuse_rays_beqelse_b3404
# B3400
	lw x111, 2(x105)
	fmul x111, x110, x111
	fadd x111, x111, x108
	fabs x111, x111
	lw x112, 4(x104)
	lw x112, 2(x112)
	fle x111, x112, x111
	bne	x111, zero, trace_diffuse_rays_beqelse_b3404
# B3402
	lw x111, 1(x109)
	feq x111, x111, zero
	xori x111, x111, 1
	mv x112, x111
# B3403
	bne	x112, zero, trace_diffuse_rays_beqelse_b3405
trace_diffuse_rays_beqelse_b3404:
# B3404
	lw x110, 2(x109)
	fsub x110, x110, x107
	lw x111, 3(x109)
	fmul x110, x110, x111
	lw x111, 0(x105)
	fmul x111, x110, x111
	fadd x111, x111, x106
	fabs x111, x111
	lw x112, 4(x104)
	lw x112, 0(x112)
	fle x111, x112, x111
	bne	x111, zero, trace_diffuse_rays_beqelse_b3411
# B3407
	lw x111, 2(x105)
	fmul x111, x110, x111
	fadd x111, x111, x108
	fabs x111, x111
	lw x112, 4(x104)
	lw x112, 2(x112)
	fle x111, x112, x111
	bne	x111, zero, trace_diffuse_rays_beqelse_b3411
# B3409
	lw x111, 3(x109)
	feq x111, x111, zero
	xori x111, x111, 1
	mv x112, x111
# B3410
	bne	x112, zero, trace_diffuse_rays_beqelse_b3412
trace_diffuse_rays_beqelse_b3411:
# B3411
	lw x110, 4(x109)
	fsub x108, x110, x108
	lw x110, 5(x109)
	fmul x108, x108, x110
	lw x110, 0(x105)
	fmul x110, x108, x110
	fadd x106, x110, x106
	fabs x106, x106
	lw x110, 4(x104)
	lw x110, 0(x110)
	fle x106, x110, x106
	bne	x106, zero, trace_diffuse_rays_beqelse_b3418
# B3414
	lw x105, 1(x105)
	fmul x105, x108, x105
	fadd x105, x105, x107
	fabs x105, x105
	lw x104, 4(x104)
	lw x104, 1(x104)
	fle x104, x104, x105
	bne	x104, zero, trace_diffuse_rays_beqelse_b3418
# B3416
	lw x104, 5(x109)
	feq x104, x104, zero
	xori x104, x104, 1
	mv x105, x104
# B3417
	bne	x105, zero, trace_diffuse_rays_beqelse_b3419
trace_diffuse_rays_beqelse_b3418:
# B3418
	mv x104, zero
	addi x96, x96, 1
	j trace_diffuse_rays_cont_b3432 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3419:
# B3419
	sw x108, 0(x27)
	mv x104, x15
	j trace_diffuse_rays_cont_b3431 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3412:
# B3412
	sw x110, 0(x27)
	mv x104, x11
	j trace_diffuse_rays_cont_b3431 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3405:
# B3405
	sw x110, 0(x27)
	mv x104, x100
	j trace_diffuse_rays_cont_b3431 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3398:
# B3398
	bne	x110, x11, trace_diffuse_rays_beqelse_b3421
# B3420
	lw x104, 0(x109)
	fle x104, zero, x104
	beq	x104, zero, trace_diffuse_rays_bneelse_b3423
# B3422
	mv x104, zero
	addi x96, x96, 1
	j trace_diffuse_rays_cont_b3432 # adhoc jump(2)
trace_diffuse_rays_bneelse_b3423:
# B3423
	lw x104, 0(x109)
	lw x105, 3(x105)
	fmul x104, x104, x105
	sw x104, 0(x27)
	mv x104, x100
	j trace_diffuse_rays_cont_b3431 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3421:
# B3421
	lw x110, 0(x109)
	feq x111, x110, zero
	bne	x111, zero, trace_diffuse_rays_beqelse_b3425
# B3424
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
	fle x107, x105, zero
	beq	x107, zero, trace_diffuse_rays_bneelse_b3427
# B3426
	mv x104, zero
	addi x96, x96, 1
	j trace_diffuse_rays_cont_b3432 # adhoc jump(2)
trace_diffuse_rays_bneelse_b3427:
# B3427
	lw x104, 6(x104)
	fsqrt x105, x105
	bne	x104, zero, trace_diffuse_rays_beqelse_b3429
# B3428
	fsub x104, x106, x105
	lw x105, 4(x109)
	fmul x104, x104, x105
	sw x104, 0(x27)
	j trace_diffuse_rays_cont_b3430 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3429:
# B3429
	fadd x104, x106, x105
	lw x105, 4(x109)
	fmul x104, x104, x105
	sw x104, 0(x27)
trace_diffuse_rays_cont_b3430:
# B3430
	mv x104, x100
trace_diffuse_rays_cont_b3431:
# B3431
	addi x96, x96, 1
	bne	x104, zero, trace_diffuse_rays_beqelse_b3433
	j trace_diffuse_rays_cont_b3432 # adhoc jump(3)
trace_diffuse_rays_beqelse_b3433:
# B3433
	lw x105, 0(x27)
	fle x106, x105, zero
	bne	x106, zero, trace_diffuse_rays_beqelse_b3466
# B3437
	lw x106, 0(x23)
	fle x106, x106, x105
	bne	x106, zero, trace_diffuse_rays_beqelse_b3466
# B3439
	fadd x105, x105, x30
	lw x106, 0(x24)
	fmul x106, x106, x105
	lw x107, 0(x10)
	fadd x106, x106, x107
	lw x107, 1(x24)
	fmul x107, x107, x105
	lw x108, 1(x10)
	fadd x107, x107, x108
	lw x24, 2(x24)
	fmul x24, x24, x105
	lw x108, 2(x10)
	fadd x24, x24, x108
	mv x110, x106
	mv x111, x107
	mv x112, x24
	mv x109, x101
	mv x108, zero
trace_diffuse_rays_loop_b3440:
# B3440
	add x4, x109, x108
	lw x113, 0(x4)
	bne	x113, x28, trace_diffuse_rays_beqelse_b3442
# B3441
	mv x114, x100
# B3463
	bne	x114, zero, trace_diffuse_rays_beqelse_b3465
	j trace_diffuse_rays_cont_b3464 # adhoc jump(3)
trace_diffuse_rays_beqelse_b3465:
# B3465
	sw x105, 0(x23)
	sw x106, 0(x31)
	sw x107, 1(x31)
	sw x24, 2(x31)
	sw x103, 0(x32)
	sw x104, 0(x33)
	j trace_diffuse_rays_cont_b3466 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3442:
# B3442
	add x4, x12, x113
	lw x113, 0(x4)
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
	bne	x117, x100, trace_diffuse_rays_beqelse_b3444
# B3443
	fabs x114, x114
	lw x117, 4(x113)
	lw x117, 0(x117)
	fle x114, x117, x114
	bne	x114, zero, trace_diffuse_rays_beqelse_b3450
# B3446
	fabs x114, x115
	lw x115, 4(x113)
	lw x115, 1(x115)
	fle x114, x115, x114
	bne	x114, zero, trace_diffuse_rays_beqelse_b3450
# B3448
	fabs x114, x116
	lw x115, 4(x113)
	lw x115, 2(x115)
	fle x114, x115, x114
	xori x114, x114, 1
	mv x115, x114
# B3449
	bne	x115, zero, trace_diffuse_rays_beqelse_b3451
trace_diffuse_rays_beqelse_b3450:
# B3450
	lw x113, 6(x113)
	xori x113, x113, 1
	j trace_diffuse_rays_cont_b3460 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3451:
# B3451
	lw x113, 6(x113)
	j trace_diffuse_rays_cont_b3460 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3444:
# B3444
	bne	x117, x11, trace_diffuse_rays_beqelse_b3453
# B3452
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
	j trace_diffuse_rays_cont_b3460 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3453:
# B3453
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
	bne	x118, zero, trace_diffuse_rays_beqelse_b3455
# B3454
	mv x114, x117
	j trace_diffuse_rays_cont_b3456 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3455:
# B3455
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
trace_diffuse_rays_cont_b3456:
# B3456
	lw x115, 1(x113)
	bne	x115, x15, trace_diffuse_rays_beqelse_b3459
# B3457
	fsub x114, x114, x16
trace_diffuse_rays_beqelse_b3459:
# B3459
	lw x113, 6(x113)
	fle x114, zero, x114
	xori x114, x114, 1
	xor x113, x113, x114
	xori x113, x113, 1
trace_diffuse_rays_cont_b3460:
# B3460
	bne	x113, zero, trace_diffuse_rays_beqelse_b3464
# B3461
	addi x108, x108, 1
	j trace_diffuse_rays_loop_b3440 # loopback to while entry from B3461
trace_diffuse_rays_beqelse_b3464:
trace_diffuse_rays_cont_b3464:
# B3464
trace_diffuse_rays_beqelse_b3466:
trace_diffuse_rays_cont_b3466:
# B3466
	j trace_diffuse_rays_loop_b3394 # loopback to while entry from B3466
trace_diffuse_rays_beqelse_b3425:
# B3425
	mv x104, zero
	addi x96, x96, 1
trace_diffuse_rays_cont_b3432:
# B3432
	add x4, x12, x103
	lw x24, 0(x4)
	lw x24, 6(x24)
	beq	x24, zero, trace_diffuse_rays_bneelse_b3467
	j	trace_diffuse_rays_loop_b3394 # moved need extra jump
trace_diffuse_rays_bneelse_b3467:
# B3467
	addi x97, x97, 1
	j trace_diffuse_rays_loop_b3391 # loopback to while entry from B3467
	j trace_diffuse_rays_loop_b3394 # loopback to while entry from B3432
trace_diffuse_rays_beqelse_b3390:
# B3390
	add x4, x12, x96
	lw x97, 0(x4)
	lw x98, 10(x97)
	lw x99, 0(x98)
	lw x101, 1(x98)
	lw x102, 2(x98)
	lw x103, 1(x95)
	add x4, x103, x96
	lw x96, 0(x4)
	lw x103, 1(x97)
	bne	x103, x100, trace_diffuse_rays_beqelse_b3469
# B3468
	lw x98, 0(x95)
	lw x103, 0(x96)
	fsub x103, x103, x99
	lw x104, 1(x96)
	fmul x103, x103, x104
	lw x104, 1(x98)
	fmul x104, x103, x104
	fadd x104, x104, x101
	fabs x104, x104
	lw x105, 4(x97)
	lw x105, 1(x105)
	fle x104, x105, x104
	bne	x104, zero, trace_diffuse_rays_beqelse_b3475
# B3471
	lw x104, 2(x98)
	fmul x104, x103, x104
	fadd x104, x104, x102
	fabs x104, x104
	lw x105, 4(x97)
	lw x105, 2(x105)
	fle x104, x105, x104
	bne	x104, zero, trace_diffuse_rays_beqelse_b3475
# B3473
	lw x104, 1(x96)
	feq x104, x104, zero
	xori x104, x104, 1
	mv x105, x104
# B3474
	bne	x105, zero, trace_diffuse_rays_beqelse_b3476
trace_diffuse_rays_beqelse_b3475:
# B3475
	lw x103, 2(x96)
	fsub x103, x103, x101
	lw x104, 3(x96)
	fmul x103, x103, x104
	lw x104, 0(x98)
	fmul x104, x103, x104
	fadd x104, x104, x99
	fabs x104, x104
	lw x105, 4(x97)
	lw x105, 0(x105)
	fle x104, x105, x104
	bne	x104, zero, trace_diffuse_rays_beqelse_b3482
# B3478
	lw x104, 2(x98)
	fmul x104, x103, x104
	fadd x104, x104, x102
	fabs x104, x104
	lw x105, 4(x97)
	lw x105, 2(x105)
	fle x104, x105, x104
	bne	x104, zero, trace_diffuse_rays_beqelse_b3482
# B3480
	lw x104, 3(x96)
	feq x104, x104, zero
	xori x104, x104, 1
	mv x105, x104
# B3481
	bne	x105, zero, trace_diffuse_rays_beqelse_b3483
trace_diffuse_rays_beqelse_b3482:
# B3482
	lw x103, 4(x96)
	fsub x102, x103, x102
	lw x103, 5(x96)
	fmul x102, x102, x103
	lw x103, 0(x98)
	fmul x103, x102, x103
	fadd x99, x103, x99
	fabs x99, x99
	lw x103, 4(x97)
	lw x103, 0(x103)
	fle x99, x103, x99
	bne	x99, zero, trace_diffuse_rays_beqelse_b3489
# B3485
	lw x98, 1(x98)
	fmul x98, x102, x98
	fadd x98, x98, x101
	fabs x98, x98
	lw x97, 4(x97)
	lw x97, 1(x97)
	fle x97, x97, x98
	bne	x97, zero, trace_diffuse_rays_beqelse_b3489
# B3487
	lw x96, 5(x96)
	feq x96, x96, zero
	xori x96, x96, 1
	mv x97, x96
# B3488
	bne	x97, zero, trace_diffuse_rays_beqelse_b3490
trace_diffuse_rays_beqelse_b3489:
# B3489
	j trace_diffuse_rays_cont_b3503 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3490:
# B3490
	sw x102, 0(x27)
	mv x96, x15
	j trace_diffuse_rays_cont_b3502 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3483:
# B3483
	sw x103, 0(x27)
	mv x96, x11
	j trace_diffuse_rays_cont_b3502 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3476:
# B3476
	sw x103, 0(x27)
	mv x96, x100
	j trace_diffuse_rays_cont_b3502 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3469:
# B3469
	bne	x103, x11, trace_diffuse_rays_beqelse_b3492
# B3491
	lw x97, 0(x96)
	fle x97, zero, x97
	bne	x97, zero, trace_diffuse_rays_beqelse_b3503
# B3494
	lw x96, 0(x96)
	lw x97, 3(x98)
	fmul x96, x96, x97
	sw x96, 0(x27)
	mv x96, x100
	j trace_diffuse_rays_cont_b3502 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3492:
# B3492
	lw x103, 0(x96)
	feq x104, x103, zero
	bne	x104, zero, trace_diffuse_rays_beqelse_b3503
# B3495
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
	fle x101, x98, zero
	bne	x101, zero, trace_diffuse_rays_beqelse_b3503
# B3498
	lw x97, 6(x97)
	fsqrt x98, x98
	bne	x97, zero, trace_diffuse_rays_beqelse_b3500
# B3499
	fsub x97, x99, x98
	lw x96, 4(x96)
	fmul x96, x97, x96
	sw x96, 0(x27)
	j trace_diffuse_rays_cont_b3501 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3500:
# B3500
	fadd x97, x99, x98
	lw x96, 4(x96)
	fmul x96, x97, x96
	sw x96, 0(x27)
trace_diffuse_rays_cont_b3501:
# B3501
	mv x96, x100
trace_diffuse_rays_cont_b3502:
# B3502
	bne	x96, zero, trace_diffuse_rays_beqelse_b3504
trace_diffuse_rays_beqelse_b3503:
trace_diffuse_rays_cont_b3503:
# B3503
	j trace_diffuse_rays_cont_b3584 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3504:
# B3504
	lw x96, 0(x27)
	lw x97, 0(x23)
	fle x96, x97, x96
	bne	x96, zero, trace_diffuse_rays_beqelse_b3584
# B3506
	mv x97, x100
	mv x98, x24
	mv x99, x95
trace_diffuse_rays_loop_b3507:
# B3507
	add x4, x98, x97
	lw x24, 0(x4)
	beq	x24, x28, trace_diffuse_rays_bneelse_b3584
# B3509
	add x4, x29, x24
	lw x24, 0(x4)
	mv x101, x24
	mv x102, x99
	mv x96, zero
trace_diffuse_rays_loop_b3510:
# B3510
	lw x24, 0(x102)
	add x4, x101, x96
	lw x103, 0(x4)
	beq	x103, x28, trace_diffuse_rays_bneelse_b3583
# B3512
	add x4, x12, x103
	lw x104, 0(x4)
	lw x105, 10(x104)
	lw x106, 0(x105)
	lw x107, 1(x105)
	lw x108, 2(x105)
	lw x109, 1(x102)
	add x4, x109, x103
	lw x109, 0(x4)
	lw x110, 1(x104)
	bne	x110, x100, trace_diffuse_rays_beqelse_b3514
# B3513
	lw x105, 0(x102)
	lw x110, 0(x109)
	fsub x110, x110, x106
	lw x111, 1(x109)
	fmul x110, x110, x111
	lw x111, 1(x105)
	fmul x111, x110, x111
	fadd x111, x111, x107
	fabs x111, x111
	lw x112, 4(x104)
	lw x112, 1(x112)
	fle x111, x112, x111
	bne	x111, zero, trace_diffuse_rays_beqelse_b3520
# B3516
	lw x111, 2(x105)
	fmul x111, x110, x111
	fadd x111, x111, x108
	fabs x111, x111
	lw x112, 4(x104)
	lw x112, 2(x112)
	fle x111, x112, x111
	bne	x111, zero, trace_diffuse_rays_beqelse_b3520
# B3518
	lw x111, 1(x109)
	feq x111, x111, zero
	xori x111, x111, 1
	mv x112, x111
# B3519
	bne	x112, zero, trace_diffuse_rays_beqelse_b3521
trace_diffuse_rays_beqelse_b3520:
# B3520
	lw x110, 2(x109)
	fsub x110, x110, x107
	lw x111, 3(x109)
	fmul x110, x110, x111
	lw x111, 0(x105)
	fmul x111, x110, x111
	fadd x111, x111, x106
	fabs x111, x111
	lw x112, 4(x104)
	lw x112, 0(x112)
	fle x111, x112, x111
	bne	x111, zero, trace_diffuse_rays_beqelse_b3527
# B3523
	lw x111, 2(x105)
	fmul x111, x110, x111
	fadd x111, x111, x108
	fabs x111, x111
	lw x112, 4(x104)
	lw x112, 2(x112)
	fle x111, x112, x111
	bne	x111, zero, trace_diffuse_rays_beqelse_b3527
# B3525
	lw x111, 3(x109)
	feq x111, x111, zero
	xori x111, x111, 1
	mv x112, x111
# B3526
	bne	x112, zero, trace_diffuse_rays_beqelse_b3528
trace_diffuse_rays_beqelse_b3527:
# B3527
	lw x110, 4(x109)
	fsub x108, x110, x108
	lw x110, 5(x109)
	fmul x108, x108, x110
	lw x110, 0(x105)
	fmul x110, x108, x110
	fadd x106, x110, x106
	fabs x106, x106
	lw x110, 4(x104)
	lw x110, 0(x110)
	fle x106, x110, x106
	bne	x106, zero, trace_diffuse_rays_beqelse_b3534
# B3530
	lw x105, 1(x105)
	fmul x105, x108, x105
	fadd x105, x105, x107
	fabs x105, x105
	lw x104, 4(x104)
	lw x104, 1(x104)
	fle x104, x104, x105
	bne	x104, zero, trace_diffuse_rays_beqelse_b3534
# B3532
	lw x104, 5(x109)
	feq x104, x104, zero
	xori x104, x104, 1
	mv x105, x104
# B3533
	bne	x105, zero, trace_diffuse_rays_beqelse_b3535
trace_diffuse_rays_beqelse_b3534:
# B3534
	mv x104, zero
	addi x96, x96, 1
	j trace_diffuse_rays_cont_b3548 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3535:
# B3535
	sw x108, 0(x27)
	mv x104, x15
	j trace_diffuse_rays_cont_b3547 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3528:
# B3528
	sw x110, 0(x27)
	mv x104, x11
	j trace_diffuse_rays_cont_b3547 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3521:
# B3521
	sw x110, 0(x27)
	mv x104, x100
	j trace_diffuse_rays_cont_b3547 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3514:
# B3514
	bne	x110, x11, trace_diffuse_rays_beqelse_b3537
# B3536
	lw x104, 0(x109)
	fle x104, zero, x104
	beq	x104, zero, trace_diffuse_rays_bneelse_b3539
# B3538
	mv x104, zero
	addi x96, x96, 1
	j trace_diffuse_rays_cont_b3548 # adhoc jump(2)
trace_diffuse_rays_bneelse_b3539:
# B3539
	lw x104, 0(x109)
	lw x105, 3(x105)
	fmul x104, x104, x105
	sw x104, 0(x27)
	mv x104, x100
	j trace_diffuse_rays_cont_b3547 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3537:
# B3537
	lw x110, 0(x109)
	feq x111, x110, zero
	bne	x111, zero, trace_diffuse_rays_beqelse_b3541
# B3540
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
	fle x107, x105, zero
	beq	x107, zero, trace_diffuse_rays_bneelse_b3543
# B3542
	mv x104, zero
	addi x96, x96, 1
	j trace_diffuse_rays_cont_b3548 # adhoc jump(2)
trace_diffuse_rays_bneelse_b3543:
# B3543
	lw x104, 6(x104)
	fsqrt x105, x105
	bne	x104, zero, trace_diffuse_rays_beqelse_b3545
# B3544
	fsub x104, x106, x105
	lw x105, 4(x109)
	fmul x104, x104, x105
	sw x104, 0(x27)
	j trace_diffuse_rays_cont_b3546 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3545:
# B3545
	fadd x104, x106, x105
	lw x105, 4(x109)
	fmul x104, x104, x105
	sw x104, 0(x27)
trace_diffuse_rays_cont_b3546:
# B3546
	mv x104, x100
trace_diffuse_rays_cont_b3547:
# B3547
	addi x96, x96, 1
	bne	x104, zero, trace_diffuse_rays_beqelse_b3549
	j trace_diffuse_rays_cont_b3548 # adhoc jump(3)
trace_diffuse_rays_beqelse_b3549:
# B3549
	lw x105, 0(x27)
	fle x106, x105, zero
	bne	x106, zero, trace_diffuse_rays_beqelse_b3582
# B3553
	lw x106, 0(x23)
	fle x106, x106, x105
	bne	x106, zero, trace_diffuse_rays_beqelse_b3582
# B3555
	fadd x105, x105, x30
	lw x106, 0(x24)
	fmul x106, x106, x105
	lw x107, 0(x10)
	fadd x106, x106, x107
	lw x107, 1(x24)
	fmul x107, x107, x105
	lw x108, 1(x10)
	fadd x107, x107, x108
	lw x24, 2(x24)
	fmul x24, x24, x105
	lw x108, 2(x10)
	fadd x24, x24, x108
	mv x110, x106
	mv x111, x107
	mv x112, x24
	mv x109, x101
	mv x108, zero
trace_diffuse_rays_loop_b3556:
# B3556
	add x4, x109, x108
	lw x113, 0(x4)
	bne	x113, x28, trace_diffuse_rays_beqelse_b3558
# B3557
	mv x114, x100
# B3579
	bne	x114, zero, trace_diffuse_rays_beqelse_b3581
	j trace_diffuse_rays_cont_b3580 # adhoc jump(3)
trace_diffuse_rays_beqelse_b3581:
# B3581
	sw x105, 0(x23)
	sw x106, 0(x31)
	sw x107, 1(x31)
	sw x24, 2(x31)
	sw x103, 0(x32)
	sw x104, 0(x33)
	j trace_diffuse_rays_cont_b3582 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3558:
# B3558
	add x4, x12, x113
	lw x113, 0(x4)
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
	bne	x117, x100, trace_diffuse_rays_beqelse_b3560
# B3559
	fabs x114, x114
	lw x117, 4(x113)
	lw x117, 0(x117)
	fle x114, x117, x114
	bne	x114, zero, trace_diffuse_rays_beqelse_b3566
# B3562
	fabs x114, x115
	lw x115, 4(x113)
	lw x115, 1(x115)
	fle x114, x115, x114
	bne	x114, zero, trace_diffuse_rays_beqelse_b3566
# B3564
	fabs x114, x116
	lw x115, 4(x113)
	lw x115, 2(x115)
	fle x114, x115, x114
	xori x114, x114, 1
	mv x115, x114
# B3565
	bne	x115, zero, trace_diffuse_rays_beqelse_b3567
trace_diffuse_rays_beqelse_b3566:
# B3566
	lw x113, 6(x113)
	xori x113, x113, 1
	j trace_diffuse_rays_cont_b3576 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3567:
# B3567
	lw x113, 6(x113)
	j trace_diffuse_rays_cont_b3576 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3560:
# B3560
	bne	x117, x11, trace_diffuse_rays_beqelse_b3569
# B3568
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
	j trace_diffuse_rays_cont_b3576 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3569:
# B3569
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
	bne	x118, zero, trace_diffuse_rays_beqelse_b3571
# B3570
	mv x114, x117
	j trace_diffuse_rays_cont_b3572 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3571:
# B3571
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
trace_diffuse_rays_cont_b3572:
# B3572
	lw x115, 1(x113)
	bne	x115, x15, trace_diffuse_rays_beqelse_b3575
# B3573
	fsub x114, x114, x16
trace_diffuse_rays_beqelse_b3575:
# B3575
	lw x113, 6(x113)
	fle x114, zero, x114
	xori x114, x114, 1
	xor x113, x113, x114
	xori x113, x113, 1
trace_diffuse_rays_cont_b3576:
# B3576
	bne	x113, zero, trace_diffuse_rays_beqelse_b3580
# B3577
	addi x108, x108, 1
	j trace_diffuse_rays_loop_b3556 # loopback to while entry from B3577
trace_diffuse_rays_beqelse_b3580:
trace_diffuse_rays_cont_b3580:
# B3580
trace_diffuse_rays_beqelse_b3582:
trace_diffuse_rays_cont_b3582:
# B3582
	j trace_diffuse_rays_loop_b3510 # loopback to while entry from B3582
trace_diffuse_rays_beqelse_b3541:
# B3541
	mv x104, zero
	addi x96, x96, 1
trace_diffuse_rays_cont_b3548:
# B3548
	add x4, x12, x103
	lw x24, 0(x4)
	lw x24, 6(x24)
	beq	x24, zero, trace_diffuse_rays_bneelse_b3583
	j	trace_diffuse_rays_loop_b3510 # moved need extra jump
trace_diffuse_rays_bneelse_b3583:
# B3583
	addi x97, x97, 1
	j trace_diffuse_rays_loop_b3507 # loopback to while entry from B3583
	j trace_diffuse_rays_loop_b3510 # loopback to while entry from B3548
trace_diffuse_rays_beqelse_b3584:
trace_diffuse_rays_bneelse_b3584:
trace_diffuse_rays_cont_b3584:
# B3584
	addi x93, x93, 1
	j trace_diffuse_rays_loop_b3386 # loopback to while entry from B3584
trace_diffuse_rays_bneelse_b3585:
# B3585
	lw x23, 0(x23)
	fle x24, x23, x34
	bne	x24, zero, trace_diffuse_rays_beqelse_b3589
# B3587
	fle x23, x35, x23
	xori x23, x23, 1
	mv x24, x23
# B3588
	bne	x24, zero, trace_diffuse_rays_beqelse_b3590
trace_diffuse_rays_beqelse_b3589:
# B3589
	j trace_diffuse_rays_cont_b4470 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3590:
# B3590
	lw x23, 0(x32)
	add x4, x12, x23
	lw x23, 0(x4)
	lw x22, 0(x22)
	lw x24, 1(x23)
	bne	x24, x100, trace_diffuse_rays_beqelse_b3592
# B3591
	lw x24, 0(x33)
	sw zero, 0(x36)
	sw zero, 1(x36)
	sw zero, 2(x36)
	addi x24, x24, -1
	add x4, x22, x24
	lw x22, 0(x4)
	feq x32, x22, zero
	bne	x32, zero, trace_diffuse_rays_beqelse_b3594
# B3593
	fle x22, x22, zero
	beq	x22, zero, trace_diffuse_rays_bneelse_b3596
# B3595
	lui x22, 784384
	j trace_diffuse_rays_cont_b3597 # adhoc jump(2)
trace_diffuse_rays_bneelse_b3596:
# B3596
	mv x22, x16
	j trace_diffuse_rays_cont_b3597 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3594:
# B3594
	mv x22, zero
trace_diffuse_rays_cont_b3597:
# B3597
	fsub x22, zero, x22
	add x4, x36, x24
	sw x22, 0(x4)
	j trace_diffuse_rays_cont_b3608 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3592:
# B3592
	bne	x24, x11, trace_diffuse_rays_beqelse_b3599
# B3598
	lw x22, 4(x23)
	lw x22, 0(x22)
	fsub x22, zero, x22
	sw x22, 0(x36)
	lw x22, 4(x23)
	lw x22, 1(x22)
	fsub x22, zero, x22
	sw x22, 1(x36)
	lw x22, 4(x23)
	lw x22, 2(x22)
	fsub x22, zero, x22
	sw x22, 2(x36)
	j trace_diffuse_rays_cont_b3608 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3599:
# B3599
	lw x22, 0(x31)
	lw x24, 5(x23)
	lw x24, 0(x24)
	fsub x22, x22, x24
	lw x24, 1(x31)
	lw x32, 5(x23)
	lw x32, 1(x32)
	fsub x24, x24, x32
	lw x32, 2(x31)
	lw x33, 5(x23)
	lw x33, 2(x33)
	fsub x32, x32, x33
	lw x33, 4(x23)
	lw x33, 0(x33)
	fmul x33, x22, x33
	lw x35, 4(x23)
	lw x35, 1(x35)
	fmul x35, x24, x35
	lw x93, 4(x23)
	lw x93, 2(x93)
	fmul x93, x32, x93
	lw x94, 3(x23)
	bne	x94, zero, trace_diffuse_rays_beqelse_b3601
# B3600
	sw x33, 0(x36)
	sw x35, 1(x36)
	sw x93, 2(x36)
	j trace_diffuse_rays_cont_b3602 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3601:
# B3601
	lw x94, 9(x23)
	lw x94, 2(x94)
	fmul x94, x24, x94
	lw x95, 9(x23)
	lw x95, 1(x95)
	fmul x95, x32, x95
	fadd x94, x94, x95
	fmul x94, x94, x37
	fadd x33, x33, x94
	sw x33, 0(x36)
	lw x33, 9(x23)
	lw x33, 2(x33)
	fmul x33, x22, x33
	lw x94, 9(x23)
	lw x94, 0(x94)
	fmul x32, x32, x94
	fadd x32, x33, x32
	fmul x32, x32, x37
	fadd x32, x35, x32
	sw x32, 1(x36)
	lw x32, 9(x23)
	lw x32, 1(x32)
	fmul x22, x22, x32
	lw x32, 9(x23)
	lw x32, 0(x32)
	fmul x24, x24, x32
	fadd x22, x22, x24
	fmul x22, x22, x37
	fadd x22, x93, x22
	sw x22, 2(x36)
trace_diffuse_rays_cont_b3602:
# B3602
	lw x22, 6(x23)
	lw x24, 0(x36)
	fmul x24, x24, x24
	lw x32, 1(x36)
	fmul x32, x32, x32
	fadd x24, x24, x32
	lw x32, 2(x36)
	fmul x32, x32, x32
	fadd x24, x24, x32
	fsqrt x24, x24
	feq x32, x24, zero
	bne	x32, zero, trace_diffuse_rays_beqelse_b3604
# B3603
	bne	x22, zero, trace_diffuse_rays_beqelse_b3606
# B3605
	fdiv x22, x16, x24
	j trace_diffuse_rays_cont_b3607 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3606:
# B3606
	fdiv x22, x38, x24
	j trace_diffuse_rays_cont_b3607 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3604:
# B3604
	mv x22, x16
trace_diffuse_rays_cont_b3607:
# B3607
	lw x24, 0(x36)
	fmul x24, x24, x22
	sw x24, 0(x36)
	lw x24, 1(x36)
	fmul x24, x24, x22
	sw x24, 1(x36)
	lw x24, 2(x36)
	fmul x22, x24, x22
	sw x22, 2(x36)
trace_diffuse_rays_cont_b3608:
# B3608
	lw x22, 0(x23)
	lw x24, 8(x23)
	lw x24, 0(x24)
	sw x24, 0(x39)
	lw x24, 8(x23)
	lw x24, 1(x24)
	sw x24, 1(x39)
	lw x24, 8(x23)
	lw x24, 2(x24)
	sw x24, 2(x39)
	bne	x22, x100, trace_diffuse_rays_beqelse_b3610
# B3609
	lw x22, 0(x31)
	lw x24, 5(x23)
	lw x24, 0(x24)
	fsub x22, x22, x24
	fmul x24, x22, x40
	floor x24, x24
	fmul x24, x24, x5
	fsub x22, x22, x24
	fle x22, x6, x22
	xori x22, x22, 1
	lw x24, 2(x31)
	lw x32, 5(x23)
	lw x32, 2(x32)
	fsub x24, x24, x32
	fmul x32, x24, x40
	floor x32, x32
	fmul x32, x32, x5
	fsub x24, x24, x32
	fle x24, x6, x24
	xori x24, x24, 1
	bne	x22, zero, trace_diffuse_rays_beqelse_b3612
# B3611
	bne	x24, zero, trace_diffuse_rays_beqelse_b3614
# B3613
	lui x22, 276464
	j trace_diffuse_rays_cont_b3617 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3614:
# B3614
	mv x22, zero
	j trace_diffuse_rays_cont_b3617 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3612:
# B3612
	bne	x24, zero, trace_diffuse_rays_beqelse_b3616
# B3615
	mv x22, zero
	j trace_diffuse_rays_cont_b3617 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3616:
# B3616
	lui x22, 276464
trace_diffuse_rays_cont_b3617:
# B3617
	sw x22, 1(x39)
	j trace_diffuse_rays_cont_b3696 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3610:
# B3610
	bne	x22, x11, trace_diffuse_rays_beqelse_b3619
# B3618
	lw x22, 1(x31)
	fmul x22, x22, x65
	fle x24, x22, zero
	xori x24, x24, 1
	fabs x22, x22
	mv x33, x66
	mv x32, x22
trace_diffuse_rays_loop_b3620:
# B3620
	fle x35, x32, x33
	bne	x35, zero, trace_diffuse_rays_beqelse_b3623
# B3621
	fmul x33, x33, x67
	j trace_diffuse_rays_loop_b3620 # loopback to while entry from B3621
trace_diffuse_rays_beqelse_b3623:
# B3623
	mv x37, x22
	mv x38, x33
trace_diffuse_rays_loop_b3624:
# B3624
	fle x22, x66, x37
	beq	x22, zero, trace_diffuse_rays_bneelse_b3629
# B3626
	fle x22, x37, x38
	fdiv x32, x38, x67
	bne	x22, zero, trace_diffuse_rays_beqelse_b3628
# B3627
	fsub x37, x37, x38
	mv x38, x32
	j trace_diffuse_rays_loop_b3624 # loopback to while entry from B3627
trace_diffuse_rays_beqelse_b3628:
# B3628
	mv x38, x32
	j trace_diffuse_rays_loop_b3624 # loopback to while entry from B3628
trace_diffuse_rays_bneelse_b3629:
# B3629
	fle x22, x68, x37
	bne	x22, zero, trace_diffuse_rays_beqelse_b3631
# B3630
	mv x32, x37
	j trace_diffuse_rays_cont_b3632 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3631:
# B3631
	fsub x32, x37, x68
trace_diffuse_rays_cont_b3632:
# B3632
	xor x22, x22, x24
	fle x24, x69, x32
	bne	x24, zero, trace_diffuse_rays_beqelse_b3634
# B3633
	mv x24, x32
	j trace_diffuse_rays_cont_b3635 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3634:
# B3634
	fsub x24, x68, x32
trace_diffuse_rays_cont_b3635:
# B3635
	fle x32, x7, x24
	bne	x32, zero, trace_diffuse_rays_beqelse_b3637
# B3636
	fmul x32, x24, x24
	fmul x33, x32, x72
	fadd x33, x71, x33
	fmul x33, x32, x33
	fadd x33, x70, x33
	fmul x32, x32, x33
	fadd x32, x16, x32
	fmul x24, x24, x32
	j trace_diffuse_rays_cont_b3638 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3637:
# B3637
	fsub x24, x69, x24
	fmul x24, x24, x24
	fmul x32, x24, x75
	fadd x32, x74, x32
	fmul x32, x24, x32
	fadd x32, x73, x32
	fmul x24, x24, x32
	fadd x24, x16, x24
trace_diffuse_rays_cont_b3638:
# B3638
	fle x32, x24, zero
	beq	x22, x32, trace_diffuse_rays_bneelse_b3640
# B3639
	mv x22, x24
	j trace_diffuse_rays_cont_b3641 # adhoc jump(2)
trace_diffuse_rays_bneelse_b3640:
# B3640
	fsub x22, zero, x24
trace_diffuse_rays_cont_b3641:
# B3641
	fmul x22, x22, x22
	fmul x24, x76, x22
	sw x24, 0(x39)
	fsub x22, x16, x22
	fmul x22, x76, x22
	sw x22, 1(x39)
	j trace_diffuse_rays_cont_b3696 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3619:
# B3619
	bne	x22, x15, trace_diffuse_rays_beqelse_b3643
# B3642
	lw x22, 0(x31)
	lw x24, 5(x23)
	lw x24, 0(x24)
	fsub x22, x22, x24
	lw x24, 2(x31)
	lw x32, 5(x23)
	lw x32, 2(x32)
	fsub x24, x24, x32
	fmul x22, x22, x22
	fmul x24, x24, x24
	fadd x22, x22, x24
	fsqrt x22, x22
	fdiv x22, x22, x6
	floor x24, x22
	fsub x22, x22, x24
	fmul x22, x22, x77
	fabs x22, x22
	mv x32, x66
	mv x24, x22
trace_diffuse_rays_loop_b3644:
# B3644
	fle x33, x24, x32
	bne	x33, zero, trace_diffuse_rays_beqelse_b3647
# B3645
	fmul x32, x32, x67
	j trace_diffuse_rays_loop_b3644 # loopback to while entry from B3645
trace_diffuse_rays_beqelse_b3647:
# B3647
	mv x37, x32
	mv x35, x22
trace_diffuse_rays_loop_b3648:
# B3648
	fle x22, x66, x35
	beq	x22, zero, trace_diffuse_rays_bneelse_b3653
# B3650
	fle x22, x35, x37
	fdiv x24, x37, x67
	bne	x22, zero, trace_diffuse_rays_beqelse_b3652
# B3651
	fsub x35, x35, x37
	mv x37, x24
	j trace_diffuse_rays_loop_b3648 # loopback to while entry from B3651
trace_diffuse_rays_beqelse_b3652:
# B3652
	mv x37, x24
	j trace_diffuse_rays_loop_b3648 # loopback to while entry from B3652
trace_diffuse_rays_bneelse_b3653:
# B3653
	fle x22, x68, x35
	bne	x22, zero, trace_diffuse_rays_beqelse_b3655
# B3654
	mv x24, x35
	j trace_diffuse_rays_cont_b3656 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3655:
# B3655
	fsub x24, x35, x68
trace_diffuse_rays_cont_b3656:
# B3656
	bne	x22, zero, trace_diffuse_rays_beqelse_b3658
# B3657
	mv x32, x100
	j trace_diffuse_rays_cont_b3659 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3658:
# B3658
	mv x32, zero
trace_diffuse_rays_cont_b3659:
# B3659
	fle x22, x69, x24
	bne	x22, zero, trace_diffuse_rays_beqelse_b3661
	j trace_diffuse_rays_cont_b3662 # adhoc jump(3)
trace_diffuse_rays_beqelse_b3661:
# B3661
	fsub x24, x68, x24
trace_diffuse_rays_cont_b3662:
# B3662
	xor x22, x22, x32
	fle x32, x7, x24
	bne	x32, zero, trace_diffuse_rays_beqelse_b3664
trace_diffuse_rays_cont_b3663:
# B3663
	fmul x24, x24, x24
	fmul x32, x24, x75
	fadd x32, x74, x32
	fmul x32, x24, x32
	fadd x32, x73, x32
	fmul x24, x24, x32
	fadd x24, x16, x24
	j trace_diffuse_rays_cont_b3665 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3664:
# B3664
	fsub x24, x69, x24
	fmul x32, x24, x24
	fmul x33, x32, x72
	fadd x33, x71, x33
	fmul x33, x32, x33
	fadd x33, x70, x33
	fmul x32, x32, x33
	fadd x32, x16, x32
	fmul x24, x24, x32
trace_diffuse_rays_cont_b3665:
# B3665
	fle x32, x24, zero
	beq	x22, x32, trace_diffuse_rays_bneelse_b3667
# B3666
	mv x22, x24
	j trace_diffuse_rays_cont_b3668 # adhoc jump(2)
trace_diffuse_rays_bneelse_b3667:
# B3667
	fsub x22, zero, x24
trace_diffuse_rays_cont_b3668:
# B3668
	fmul x22, x22, x22
	fmul x24, x22, x76
	sw x24, 1(x39)
	fsub x22, x16, x22
	fmul x22, x22, x76
	sw x22, 2(x39)
	j trace_diffuse_rays_cont_b3696 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3643:
# B3643
	bne	x22, x78, trace_diffuse_rays_beqelse_b3696
# B3669
	lw x22, 0(x31)
	lw x24, 5(x23)
	lw x24, 0(x24)
	fsub x22, x22, x24
	lw x24, 4(x23)
	lw x24, 0(x24)
	fsqrt x24, x24
	fmul x22, x22, x24
	lw x24, 2(x31)
	lw x32, 5(x23)
	lw x32, 2(x32)
	fsub x24, x24, x32
	lw x32, 4(x23)
	lw x32, 2(x32)
	fsqrt x32, x32
	fmul x24, x24, x32
	fmul x32, x22, x22
	fmul x33, x24, x24
	fadd x32, x32, x33
	fabs x33, x22
	fle x33, x79, x33
	beq	x33, zero, trace_diffuse_rays_bneelse_b3672
# B3671
	fdiv x22, x24, x22
	fabs x22, x22
	fle x24, x22, zero
	xori x24, x24, 1
	fabs x33, x22
	fle x35, x8, x33
	bne	x35, zero, trace_diffuse_rays_beqelse_b3674
# B3673
	fmul x24, x22, x22
	fmul x33, x24, x85
	fadd x33, x84, x33
	fmul x33, x24, x33
	fadd x33, x83, x33
	fmul x33, x24, x33
	fadd x33, x82, x33
	fmul x33, x24, x33
	fadd x33, x81, x33
	fmul x33, x24, x33
	fadd x33, x80, x33
	fmul x24, x24, x33
	fadd x24, x16, x24
	fmul x22, x22, x24
	j trace_diffuse_rays_cont_b3680 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3674:
# B3674
	fle x22, x86, x33
	bne	x22, zero, trace_diffuse_rays_beqelse_b3676
# B3675
	fsub x22, x33, x16
	fadd x33, x33, x16
	fdiv x22, x22, x33
	fmul x33, x22, x22
	fmul x35, x33, x85
	fadd x35, x84, x35
	fmul x35, x33, x35
	fadd x35, x83, x35
	fmul x35, x33, x35
	fadd x35, x82, x35
	fmul x35, x33, x35
	fadd x35, x81, x35
	fmul x35, x33, x35
	fadd x35, x80, x35
	fmul x33, x33, x35
	fadd x33, x16, x33
	fmul x22, x22, x33
	fadd x22, x7, x22
	j trace_diffuse_rays_cont_b3677 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3676:
# B3676
	fdiv x22, x16, x33
	fmul x33, x22, x22
	fmul x35, x33, x85
	fadd x35, x84, x35
	fmul x35, x33, x35
	fadd x35, x83, x35
	fmul x35, x33, x35
	fadd x35, x82, x35
	fmul x35, x33, x35
	fadd x35, x81, x35
	fmul x35, x33, x35
	fadd x35, x80, x35
	fmul x33, x33, x35
	fadd x33, x16, x33
	fmul x22, x22, x33
	fsub x22, x69, x22
trace_diffuse_rays_cont_b3677:
# B3677
	bne	x24, zero, trace_diffuse_rays_beqelse_b3680
# B3678
	fsub x22, zero, x22
trace_diffuse_rays_beqelse_b3680:
trace_diffuse_rays_cont_b3680:
# B3680
	fmul x22, x22, x87
	fdiv x22, x22, x77
	j trace_diffuse_rays_cont_b3681 # adhoc jump(2)
trace_diffuse_rays_bneelse_b3672:
# B3672
	lui x22, 268032
trace_diffuse_rays_cont_b3681:
# B3681
	floor x24, x22
	fsub x22, x22, x24
	lw x24, 1(x31)
	lw x33, 5(x23)
	lw x33, 1(x33)
	fsub x24, x24, x33
	lw x33, 4(x23)
	lw x33, 1(x33)
	fsqrt x33, x33
	fmul x24, x24, x33
	fabs x33, x32
	fle x33, x79, x33
	beq	x33, zero, trace_diffuse_rays_bneelse_b3683
# B3682
	fdiv x24, x24, x32
	fabs x24, x24
	fle x32, x24, zero
	xori x32, x32, 1
	fabs x33, x24
	fle x35, x8, x33
	bne	x35, zero, trace_diffuse_rays_beqelse_b3685
# B3684
	fmul x32, x24, x24
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
	fadd x32, x16, x32
	fmul x24, x24, x32
	j trace_diffuse_rays_cont_b3691 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3685:
# B3685
	fle x24, x86, x33
	bne	x24, zero, trace_diffuse_rays_beqelse_b3687
# B3686
	fsub x24, x33, x16
	fadd x33, x33, x16
	fdiv x24, x24, x33
	fmul x33, x24, x24
	fmul x35, x33, x85
	fadd x35, x84, x35
	fmul x35, x33, x35
	fadd x35, x83, x35
	fmul x35, x33, x35
	fadd x35, x82, x35
	fmul x35, x33, x35
	fadd x35, x81, x35
	fmul x35, x33, x35
	fadd x35, x80, x35
	fmul x33, x33, x35
	fadd x33, x16, x33
	fmul x24, x24, x33
	fadd x24, x7, x24
	j trace_diffuse_rays_cont_b3688 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3687:
# B3687
	fdiv x24, x16, x33
	fmul x33, x24, x24
	fmul x35, x33, x85
	fadd x35, x84, x35
	fmul x35, x33, x35
	fadd x35, x83, x35
	fmul x35, x33, x35
	fadd x35, x82, x35
	fmul x35, x33, x35
	fadd x35, x81, x35
	fmul x35, x33, x35
	fadd x35, x80, x35
	fmul x33, x33, x35
	fadd x33, x16, x33
	fmul x24, x24, x33
	fsub x24, x69, x24
trace_diffuse_rays_cont_b3688:
# B3688
	bne	x32, zero, trace_diffuse_rays_beqelse_b3691
# B3689
	fsub x24, zero, x24
trace_diffuse_rays_beqelse_b3691:
trace_diffuse_rays_cont_b3691:
# B3691
	fmul x24, x24, x87
	fdiv x24, x24, x77
	j trace_diffuse_rays_cont_b3692 # adhoc jump(2)
trace_diffuse_rays_bneelse_b3683:
# B3683
	lui x24, 268032
trace_diffuse_rays_cont_b3692:
# B3692
	floor x32, x24
	fsub x24, x24, x32
	fsub x22, x37, x22
	fmul x22, x22, x22
	fsub x22, x88, x22
	fsub x24, x37, x24
	fmul x24, x24, x24
	fsub x22, x22, x24
	fle x24, zero, x22
	beq	x24, zero, trace_diffuse_rays_bneelse_b3694
# B3693
	mv x32, x22
	j trace_diffuse_rays_cont_b3695 # adhoc jump(2)
trace_diffuse_rays_bneelse_b3694:
# B3694
	mv x32, zero
trace_diffuse_rays_cont_b3695:
# B3695
	fmul x22, x76, x32
	fdiv x22, x22, x89
	sw x22, 2(x39)
trace_diffuse_rays_beqelse_b3696:
trace_diffuse_rays_cont_b3696:
# B3696
	lw x22, 0(x25)
	mv x25, x22
	mv x24, zero
trace_diffuse_rays_loop_b3697:
# B3697
	add x4, x25, x24
	lw x22, 0(x4)
	lw x32, 0(x22)
	beq	x32, x28, trace_diffuse_rays_bneelse_b3923
# B3699
	bne	x32, x26, trace_diffuse_rays_beqelse_b3701
# B3700
	mv x32, x100
	j trace_diffuse_rays_cont_b3833 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3701:
# B3701
	add x4, x12, x32
	lw x33, 0(x4)
	lw x35, 0(x31)
	lw x37, 5(x33)
	lw x37, 0(x37)
	fsub x35, x35, x37
	lw x37, 1(x31)
	lw x38, 5(x33)
	lw x38, 1(x38)
	fsub x37, x37, x38
	lw x38, 2(x31)
	lw x40, 5(x33)
	lw x40, 2(x40)
	fsub x38, x38, x40
	lw x40, 1(x9)
	add x4, x40, x32
	lw x32, 0(x4)
	lw x40, 1(x33)
	bne	x40, x100, trace_diffuse_rays_beqelse_b3703
# B3702
	lw x40, 0(x9)
	lw x5, 0(x32)
	fsub x5, x5, x35
	lw x6, 1(x32)
	fmul x5, x5, x6
	lw x6, 1(x40)
	fmul x6, x5, x6
	fadd x6, x6, x37
	fabs x6, x6
	lw x65, 4(x33)
	lw x65, 1(x65)
	fle x6, x65, x6
	bne	x6, zero, trace_diffuse_rays_beqelse_b3709
# B3705
	lw x6, 2(x40)
	fmul x6, x5, x6
	fadd x6, x6, x38
	fabs x6, x6
	lw x65, 4(x33)
	lw x65, 2(x65)
	fle x6, x65, x6
	bne	x6, zero, trace_diffuse_rays_beqelse_b3709
# B3707
	lw x6, 1(x32)
	feq x6, x6, zero
	xori x6, x6, 1
	mv x65, x6
# B3708
	bne	x65, zero, trace_diffuse_rays_beqelse_b3710
trace_diffuse_rays_beqelse_b3709:
# B3709
	lw x5, 2(x32)
	fsub x5, x5, x37
	lw x6, 3(x32)
	fmul x5, x5, x6
	lw x6, 0(x40)
	fmul x6, x5, x6
	fadd x6, x6, x35
	fabs x6, x6
	lw x65, 4(x33)
	lw x65, 0(x65)
	fle x6, x65, x6
	bne	x6, zero, trace_diffuse_rays_beqelse_b3716
# B3712
	lw x6, 2(x40)
	fmul x6, x5, x6
	fadd x6, x6, x38
	fabs x6, x6
	lw x65, 4(x33)
	lw x65, 2(x65)
	fle x6, x65, x6
	bne	x6, zero, trace_diffuse_rays_beqelse_b3716
# B3714
	lw x6, 3(x32)
	feq x6, x6, zero
	xori x6, x6, 1
	mv x65, x6
# B3715
	bne	x65, zero, trace_diffuse_rays_beqelse_b3717
trace_diffuse_rays_beqelse_b3716:
# B3716
	lw x5, 4(x32)
	fsub x38, x5, x38
	lw x5, 5(x32)
	fmul x38, x38, x5
	lw x5, 0(x40)
	fmul x5, x38, x5
	fadd x35, x5, x35
	fabs x35, x35
	lw x5, 4(x33)
	lw x5, 0(x5)
	fle x35, x5, x35
	bne	x35, zero, trace_diffuse_rays_beqelse_b3723
# B3719
	lw x35, 1(x40)
	fmul x35, x38, x35
	fadd x35, x35, x37
	fabs x35, x35
	lw x33, 4(x33)
	lw x33, 1(x33)
	fle x33, x33, x35
	bne	x33, zero, trace_diffuse_rays_beqelse_b3723
# B3721
	lw x32, 5(x32)
	feq x32, x32, zero
	xori x32, x32, 1
	mv x33, x32
# B3722
	bne	x33, zero, trace_diffuse_rays_beqelse_b3724
trace_diffuse_rays_beqelse_b3723:
# B3723
	j trace_diffuse_rays_cont_b3743 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3724:
# B3724
	sw x38, 0(x27)
	mv x32, x15
	j trace_diffuse_rays_cont_b3742 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3717:
# B3717
	sw x5, 0(x27)
	mv x32, x11
	j trace_diffuse_rays_cont_b3742 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3710:
# B3710
	sw x5, 0(x27)
	mv x32, x100
	j trace_diffuse_rays_cont_b3742 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3703:
# B3703
	bne	x40, x11, trace_diffuse_rays_beqelse_b3726
# B3725
	lw x33, 0(x32)
	fle x33, zero, x33
	bne	x33, zero, trace_diffuse_rays_beqelse_b3743
# B3728
	lw x33, 1(x32)
	fmul x33, x33, x35
	lw x35, 2(x32)
	fmul x35, x35, x37
	fadd x33, x33, x35
	lw x32, 3(x32)
	fmul x32, x32, x38
	fadd x32, x33, x32
	sw x32, 0(x27)
	mv x32, x100
	j trace_diffuse_rays_cont_b3742 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3726:
# B3726
	lw x40, 0(x32)
	feq x5, x40, zero
	bne	x5, zero, trace_diffuse_rays_beqelse_b3743
# B3729
	lw x5, 1(x32)
	fmul x5, x5, x35
	lw x6, 2(x32)
	fmul x6, x6, x37
	fadd x5, x5, x6
	lw x6, 3(x32)
	fmul x6, x6, x38
	fadd x5, x5, x6
	fmul x6, x35, x35
	lw x65, 4(x33)
	lw x65, 0(x65)
	fmul x6, x6, x65
	fmul x65, x37, x37
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
	bne	x65, zero, trace_diffuse_rays_beqelse_b3732
# B3731
	mv x35, x6
	j trace_diffuse_rays_cont_b3733 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3732:
# B3732
	fmul x65, x37, x38
	lw x66, 9(x33)
	lw x66, 0(x66)
	fmul x65, x65, x66
	fadd x6, x6, x65
	fmul x38, x38, x35
	lw x65, 9(x33)
	lw x65, 1(x65)
	fmul x38, x38, x65
	fadd x38, x6, x38
	fmul x35, x35, x37
	lw x37, 9(x33)
	lw x37, 2(x37)
	fmul x35, x35, x37
	fadd x35, x38, x35
trace_diffuse_rays_cont_b3733:
# B3733
	lw x37, 1(x33)
	bne	x37, x15, trace_diffuse_rays_beqelse_b3736
# B3734
	fsub x35, x35, x16
trace_diffuse_rays_beqelse_b3736:
# B3736
	fmul x37, x5, x5
	fmul x35, x40, x35
	fsub x35, x37, x35
	fle x37, x35, zero
	bne	x37, zero, trace_diffuse_rays_beqelse_b3743
# B3738
	lw x33, 6(x33)
	fsqrt x35, x35
	bne	x33, zero, trace_diffuse_rays_beqelse_b3740
# B3739
	fsub x33, x5, x35
	lw x32, 4(x32)
	fmul x32, x33, x32
	sw x32, 0(x27)
	j trace_diffuse_rays_cont_b3741 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3740:
# B3740
	fadd x33, x5, x35
	lw x32, 4(x32)
	fmul x32, x33, x32
	sw x32, 0(x27)
trace_diffuse_rays_cont_b3741:
# B3741
	mv x32, x100
trace_diffuse_rays_cont_b3742:
# B3742
	bne	x32, zero, trace_diffuse_rays_beqelse_b3744
trace_diffuse_rays_beqelse_b3743:
trace_diffuse_rays_cont_b3743:
# B3743
	addi x24, x24, 1
	j trace_diffuse_rays_cont_b3834 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3744:
# B3744
	lw x32, 0(x27)
	fle x32, x34, x32
	beq	x32, zero, trace_diffuse_rays_bneelse_b3746
# B3745
	addi x24, x24, 1
	j trace_diffuse_rays_cont_b3834 # adhoc jump(2)
trace_diffuse_rays_bneelse_b3746:
# B3746
	mv x35, x22
	mv x33, x100
trace_diffuse_rays_loop_b3747:
# B3747
	add x4, x35, x33
	lw x32, 0(x4)
	beq	x32, x28, trace_diffuse_rays_bneelse_b3831
# B3749
	add x4, x29, x32
	lw x32, 0(x4)
	mv x37, zero
	mv x38, x32
trace_diffuse_rays_loop_b3750:
# B3750
	add x4, x38, x37
	lw x32, 0(x4)
	beq	x32, x28, trace_diffuse_rays_bneelse_b3828
# B3752
	add x4, x38, x37
	lw x32, 0(x4)
	add x4, x12, x32
	lw x40, 0(x4)
	lw x5, 0(x31)
	lw x6, 5(x40)
	lw x6, 0(x6)
	fsub x5, x5, x6
	lw x6, 1(x31)
	lw x65, 5(x40)
	lw x65, 1(x65)
	fsub x6, x6, x65
	lw x65, 2(x31)
	lw x66, 5(x40)
	lw x66, 2(x66)
	fsub x65, x65, x66
	lw x66, 1(x9)
	add x4, x66, x32
	lw x66, 0(x4)
	lw x67, 1(x40)
	bne	x67, x100, trace_diffuse_rays_beqelse_b3754
# B3753
	lw x67, 0(x9)
	lw x68, 0(x66)
	fsub x68, x68, x5
	lw x69, 1(x66)
	fmul x68, x68, x69
	lw x69, 1(x67)
	fmul x69, x68, x69
	fadd x69, x69, x6
	fabs x69, x69
	lw x7, 4(x40)
	lw x7, 1(x7)
	fle x69, x7, x69
	bne	x69, zero, trace_diffuse_rays_beqelse_b3760
# B3756
	lw x69, 2(x67)
	fmul x69, x68, x69
	fadd x69, x69, x65
	fabs x69, x69
	lw x7, 4(x40)
	lw x7, 2(x7)
	fle x69, x7, x69
	bne	x69, zero, trace_diffuse_rays_beqelse_b3760
# B3758
	lw x69, 1(x66)
	feq x69, x69, zero
	xori x69, x69, 1
	mv x7, x69
# B3759
	bne	x7, zero, trace_diffuse_rays_beqelse_b3761
trace_diffuse_rays_beqelse_b3760:
# B3760
	lw x68, 2(x66)
	fsub x68, x68, x6
	lw x69, 3(x66)
	fmul x68, x68, x69
	lw x69, 0(x67)
	fmul x69, x68, x69
	fadd x69, x69, x5
	fabs x69, x69
	lw x7, 4(x40)
	lw x7, 0(x7)
	fle x69, x7, x69
	bne	x69, zero, trace_diffuse_rays_beqelse_b3767
# B3763
	lw x69, 2(x67)
	fmul x69, x68, x69
	fadd x69, x69, x65
	fabs x69, x69
	lw x7, 4(x40)
	lw x7, 2(x7)
	fle x69, x7, x69
	bne	x69, zero, trace_diffuse_rays_beqelse_b3767
# B3765
	lw x69, 3(x66)
	feq x69, x69, zero
	xori x69, x69, 1
	mv x7, x69
# B3766
	bne	x7, zero, trace_diffuse_rays_beqelse_b3768
trace_diffuse_rays_beqelse_b3767:
# B3767
	lw x68, 4(x66)
	fsub x65, x68, x65
	lw x68, 5(x66)
	fmul x65, x65, x68
	lw x68, 0(x67)
	fmul x68, x65, x68
	fadd x5, x68, x5
	fabs x5, x5
	lw x68, 4(x40)
	lw x68, 0(x68)
	fle x5, x68, x5
	bne	x5, zero, trace_diffuse_rays_beqelse_b3774
# B3770
	lw x5, 1(x67)
	fmul x5, x65, x5
	fadd x5, x5, x6
	fabs x5, x5
	lw x40, 4(x40)
	lw x40, 1(x40)
	fle x40, x40, x5
	bne	x40, zero, trace_diffuse_rays_beqelse_b3774
# B3772
	lw x40, 5(x66)
	feq x40, x40, zero
	xori x40, x40, 1
	mv x5, x40
# B3773
	bne	x5, zero, trace_diffuse_rays_beqelse_b3775
trace_diffuse_rays_beqelse_b3774:
# B3774
	lw x5, 0(x27)
	j trace_diffuse_rays_cont_b3794 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3775:
# B3775
	sw x65, 0(x27)
	mv x40, x15
	j trace_diffuse_rays_cont_b3793 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3768:
# B3768
	sw x68, 0(x27)
	mv x40, x11
	j trace_diffuse_rays_cont_b3793 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3761:
# B3761
	sw x68, 0(x27)
	mv x40, x100
	j trace_diffuse_rays_cont_b3793 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3754:
# B3754
	bne	x67, x11, trace_diffuse_rays_beqelse_b3777
# B3776
	lw x40, 0(x66)
	fle x40, zero, x40
	beq	x40, zero, trace_diffuse_rays_bneelse_b3779
# B3778
	lw x5, 0(x27)
	j trace_diffuse_rays_cont_b3794 # adhoc jump(2)
trace_diffuse_rays_bneelse_b3779:
# B3779
	lw x40, 1(x66)
	fmul x40, x40, x5
	lw x5, 2(x66)
	fmul x5, x5, x6
	fadd x40, x40, x5
	lw x5, 3(x66)
	fmul x5, x5, x65
	fadd x40, x40, x5
	sw x40, 0(x27)
	mv x40, x100
	j trace_diffuse_rays_cont_b3793 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3777:
# B3777
	lw x67, 0(x66)
	feq x68, x67, zero
	bne	x68, zero, trace_diffuse_rays_beqelse_b3781
# B3780
	lw x68, 1(x66)
	fmul x68, x68, x5
	lw x69, 2(x66)
	fmul x69, x69, x6
	fadd x68, x68, x69
	lw x69, 3(x66)
	fmul x69, x69, x65
	fadd x68, x68, x69
	fmul x69, x5, x5
	lw x7, 4(x40)
	lw x7, 0(x7)
	fmul x69, x69, x7
	fmul x7, x6, x6
	lw x70, 4(x40)
	lw x70, 1(x70)
	fmul x7, x7, x70
	fadd x69, x69, x7
	fmul x7, x65, x65
	lw x70, 4(x40)
	lw x70, 2(x70)
	fmul x7, x7, x70
	fadd x69, x69, x7
	lw x7, 3(x40)
	bne	x7, zero, trace_diffuse_rays_beqelse_b3783
# B3782
	mv x5, x69
	j trace_diffuse_rays_cont_b3784 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3783:
# B3783
	fmul x7, x6, x65
	lw x70, 9(x40)
	lw x70, 0(x70)
	fmul x7, x7, x70
	fadd x69, x69, x7
	fmul x65, x65, x5
	lw x7, 9(x40)
	lw x7, 1(x7)
	fmul x65, x65, x7
	fadd x65, x69, x65
	fmul x5, x5, x6
	lw x6, 9(x40)
	lw x6, 2(x6)
	fmul x5, x5, x6
	fadd x5, x65, x5
trace_diffuse_rays_cont_b3784:
# B3784
	lw x6, 1(x40)
	bne	x6, x15, trace_diffuse_rays_beqelse_b3787
# B3785
	fsub x5, x5, x16
trace_diffuse_rays_beqelse_b3787:
# B3787
	fmul x6, x68, x68
	fmul x5, x67, x5
	fsub x5, x6, x5
	fle x6, x5, zero
	beq	x6, zero, trace_diffuse_rays_bneelse_b3789
# B3788
	lw x5, 0(x27)
	j trace_diffuse_rays_cont_b3794 # adhoc jump(2)
trace_diffuse_rays_bneelse_b3789:
# B3789
	lw x40, 6(x40)
	fsqrt x5, x5
	bne	x40, zero, trace_diffuse_rays_beqelse_b3791
# B3790
	fsub x40, x68, x5
	lw x5, 4(x66)
	fmul x40, x40, x5
	sw x40, 0(x27)
	j trace_diffuse_rays_cont_b3792 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3791:
# B3791
	fadd x40, x68, x5
	lw x5, 4(x66)
	fmul x40, x40, x5
	sw x40, 0(x27)
trace_diffuse_rays_cont_b3792:
# B3792
	mv x40, x100
trace_diffuse_rays_cont_b3793:
# B3793
	lw x5, 0(x27)
	bne	x40, zero, trace_diffuse_rays_beqelse_b3795
	j trace_diffuse_rays_cont_b3794 # adhoc jump(3)
trace_diffuse_rays_beqelse_b3795:
# B3795
	fle x40, x90, x5
	xori x40, x40, 1
# B3796
	addi x37, x37, 1
	bne	x40, zero, trace_diffuse_rays_beqelse_b3798
	j trace_diffuse_rays_cont_b3797 # adhoc jump(3)
trace_diffuse_rays_beqelse_b3798:
# B3798
	fadd x32, x5, x30
	lw x40, 0(x91)
	fmul x40, x40, x32
	lw x5, 0(x31)
	fadd x40, x40, x5
	lw x5, 1(x91)
	fmul x5, x5, x32
	lw x6, 1(x31)
	fadd x5, x5, x6
	lw x6, 2(x91)
	fmul x32, x6, x32
	lw x6, 2(x31)
	fadd x32, x32, x6
	mv x66, x40
	mv x65, x38
	mv x67, x5
	mv x68, x32
	mv x6, zero
trace_diffuse_rays_loop_b3801:
# B3801
	add x4, x65, x6
	lw x32, 0(x4)
	bne	x32, x28, trace_diffuse_rays_beqelse_b3803
# B3802
	mv x40, x100
# B3824
	bne	x40, zero, trace_diffuse_rays_beqelse_b3826
	j trace_diffuse_rays_cont_b3825 # adhoc jump(3)
trace_diffuse_rays_beqelse_b3826:
# B3826
	mv x32, x100
# B3827
	bne	x32, zero, trace_diffuse_rays_beqelse_b3829
	j trace_diffuse_rays_cont_b3828 # adhoc jump(3)
trace_diffuse_rays_beqelse_b3829:
# B3829
	mv x37, x100
# B3830
	bne	x37, zero, trace_diffuse_rays_beqelse_b3832
trace_diffuse_rays_bneelse_b3831:
# B3831
	addi x24, x24, 1
	j trace_diffuse_rays_cont_b3834 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3832:
# B3832
	mv x32, x100
trace_diffuse_rays_cont_b3833:
# B3833
	addi x24, x24, 1
	bne	x32, zero, trace_diffuse_rays_beqelse_b3835
trace_diffuse_rays_cont_b3834:
# B3834
	j trace_diffuse_rays_loop_b3697 # loopback to while entry from B3834
trace_diffuse_rays_beqelse_b3835:
# B3835
	mv x35, x22
	mv x33, x100
trace_diffuse_rays_loop_b3836:
# B3836
	add x4, x35, x33
	lw x22, 0(x4)
	beq	x22, x28, trace_diffuse_rays_bneelse_b3920
# B3838
	add x4, x29, x22
	lw x22, 0(x4)
	mv x37, x22
	mv x32, zero
trace_diffuse_rays_loop_b3839:
# B3839
	add x4, x37, x32
	lw x22, 0(x4)
	beq	x22, x28, trace_diffuse_rays_bneelse_b3917
# B3841
	add x4, x37, x32
	lw x22, 0(x4)
	add x4, x12, x22
	lw x38, 0(x4)
	lw x40, 0(x31)
	lw x5, 5(x38)
	lw x5, 0(x5)
	fsub x40, x40, x5
	lw x5, 1(x31)
	lw x6, 5(x38)
	lw x6, 1(x6)
	fsub x5, x5, x6
	lw x6, 2(x31)
	lw x65, 5(x38)
	lw x65, 2(x65)
	fsub x6, x6, x65
	lw x65, 1(x9)
	add x4, x65, x22
	lw x65, 0(x4)
	lw x66, 1(x38)
	bne	x66, x100, trace_diffuse_rays_beqelse_b3843
# B3842
	lw x66, 0(x9)
	lw x67, 0(x65)
	fsub x67, x67, x40
	lw x68, 1(x65)
	fmul x67, x67, x68
	lw x68, 1(x66)
	fmul x68, x67, x68
	fadd x68, x68, x5
	fabs x68, x68
	lw x69, 4(x38)
	lw x69, 1(x69)
	fle x68, x69, x68
	bne	x68, zero, trace_diffuse_rays_beqelse_b3849
# B3845
	lw x68, 2(x66)
	fmul x68, x67, x68
	fadd x68, x68, x6
	fabs x68, x68
	lw x69, 4(x38)
	lw x69, 2(x69)
	fle x68, x69, x68
	bne	x68, zero, trace_diffuse_rays_beqelse_b3849
# B3847
	lw x68, 1(x65)
	feq x68, x68, zero
	xori x68, x68, 1
	mv x69, x68
# B3848
	bne	x69, zero, trace_diffuse_rays_beqelse_b3850
trace_diffuse_rays_beqelse_b3849:
# B3849
	lw x67, 2(x65)
	fsub x67, x67, x5
	lw x68, 3(x65)
	fmul x67, x67, x68
	lw x68, 0(x66)
	fmul x68, x67, x68
	fadd x68, x68, x40
	fabs x68, x68
	lw x69, 4(x38)
	lw x69, 0(x69)
	fle x68, x69, x68
	bne	x68, zero, trace_diffuse_rays_beqelse_b3856
# B3852
	lw x68, 2(x66)
	fmul x68, x67, x68
	fadd x68, x68, x6
	fabs x68, x68
	lw x69, 4(x38)
	lw x69, 2(x69)
	fle x68, x69, x68
	bne	x68, zero, trace_diffuse_rays_beqelse_b3856
# B3854
	lw x68, 3(x65)
	feq x68, x68, zero
	xori x68, x68, 1
	mv x69, x68
# B3855
	bne	x69, zero, trace_diffuse_rays_beqelse_b3857
trace_diffuse_rays_beqelse_b3856:
# B3856
	lw x67, 4(x65)
	fsub x6, x67, x6
	lw x67, 5(x65)
	fmul x6, x6, x67
	lw x67, 0(x66)
	fmul x67, x6, x67
	fadd x40, x67, x40
	fabs x40, x40
	lw x67, 4(x38)
	lw x67, 0(x67)
	fle x40, x67, x40
	bne	x40, zero, trace_diffuse_rays_beqelse_b3863
# B3859
	lw x40, 1(x66)
	fmul x40, x6, x40
	fadd x40, x40, x5
	fabs x40, x40
	lw x38, 4(x38)
	lw x38, 1(x38)
	fle x38, x38, x40
	bne	x38, zero, trace_diffuse_rays_beqelse_b3863
# B3861
	lw x38, 5(x65)
	feq x38, x38, zero
	xori x38, x38, 1
	mv x40, x38
# B3862
	bne	x40, zero, trace_diffuse_rays_beqelse_b3864
trace_diffuse_rays_beqelse_b3863:
# B3863
	lw x40, 0(x27)
	j trace_diffuse_rays_cont_b3883 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3864:
# B3864
	sw x6, 0(x27)
	mv x38, x15
	j trace_diffuse_rays_cont_b3882 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3857:
# B3857
	sw x67, 0(x27)
	mv x38, x11
	j trace_diffuse_rays_cont_b3882 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3850:
# B3850
	sw x67, 0(x27)
	mv x38, x100
	j trace_diffuse_rays_cont_b3882 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3843:
# B3843
	bne	x66, x11, trace_diffuse_rays_beqelse_b3866
# B3865
	lw x38, 0(x65)
	fle x38, zero, x38
	beq	x38, zero, trace_diffuse_rays_bneelse_b3868
# B3867
	lw x40, 0(x27)
	j trace_diffuse_rays_cont_b3883 # adhoc jump(2)
trace_diffuse_rays_bneelse_b3868:
# B3868
	lw x38, 1(x65)
	fmul x38, x38, x40
	lw x40, 2(x65)
	fmul x40, x40, x5
	fadd x38, x38, x40
	lw x40, 3(x65)
	fmul x40, x40, x6
	fadd x38, x38, x40
	sw x38, 0(x27)
	mv x38, x100
	j trace_diffuse_rays_cont_b3882 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3866:
# B3866
	lw x66, 0(x65)
	feq x67, x66, zero
	bne	x67, zero, trace_diffuse_rays_beqelse_b3870
# B3869
	lw x67, 1(x65)
	fmul x67, x67, x40
	lw x68, 2(x65)
	fmul x68, x68, x5
	fadd x67, x67, x68
	lw x68, 3(x65)
	fmul x68, x68, x6
	fadd x67, x67, x68
	fmul x68, x40, x40
	lw x69, 4(x38)
	lw x69, 0(x69)
	fmul x68, x68, x69
	fmul x69, x5, x5
	lw x7, 4(x38)
	lw x7, 1(x7)
	fmul x69, x69, x7
	fadd x68, x68, x69
	fmul x69, x6, x6
	lw x7, 4(x38)
	lw x7, 2(x7)
	fmul x69, x69, x7
	fadd x68, x68, x69
	lw x69, 3(x38)
	bne	x69, zero, trace_diffuse_rays_beqelse_b3872
# B3871
	mv x40, x68
	j trace_diffuse_rays_cont_b3873 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3872:
# B3872
	fmul x69, x5, x6
	lw x7, 9(x38)
	lw x7, 0(x7)
	fmul x69, x69, x7
	fadd x68, x68, x69
	fmul x6, x6, x40
	lw x69, 9(x38)
	lw x69, 1(x69)
	fmul x6, x6, x69
	fadd x6, x68, x6
	fmul x40, x40, x5
	lw x5, 9(x38)
	lw x5, 2(x5)
	fmul x40, x40, x5
	fadd x40, x6, x40
trace_diffuse_rays_cont_b3873:
# B3873
	lw x5, 1(x38)
	bne	x5, x15, trace_diffuse_rays_beqelse_b3876
# B3874
	fsub x40, x40, x16
trace_diffuse_rays_beqelse_b3876:
# B3876
	fmul x5, x67, x67
	fmul x40, x66, x40
	fsub x40, x5, x40
	fle x5, x40, zero
	beq	x5, zero, trace_diffuse_rays_bneelse_b3878
# B3877
	lw x40, 0(x27)
	j trace_diffuse_rays_cont_b3883 # adhoc jump(2)
trace_diffuse_rays_bneelse_b3878:
# B3878
	lw x38, 6(x38)
	fsqrt x40, x40
	bne	x38, zero, trace_diffuse_rays_beqelse_b3880
# B3879
	fsub x38, x67, x40
	lw x40, 4(x65)
	fmul x38, x38, x40
	sw x38, 0(x27)
	j trace_diffuse_rays_cont_b3881 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3880:
# B3880
	fadd x38, x67, x40
	lw x40, 4(x65)
	fmul x38, x38, x40
	sw x38, 0(x27)
trace_diffuse_rays_cont_b3881:
# B3881
	mv x38, x100
trace_diffuse_rays_cont_b3882:
# B3882
	lw x40, 0(x27)
	bne	x38, zero, trace_diffuse_rays_beqelse_b3884
	j trace_diffuse_rays_cont_b3883 # adhoc jump(3)
trace_diffuse_rays_beqelse_b3884:
# B3884
	fle x38, x90, x40
	xori x38, x38, 1
# B3885
	addi x32, x32, 1
	bne	x38, zero, trace_diffuse_rays_beqelse_b3887
	j trace_diffuse_rays_cont_b3886 # adhoc jump(3)
trace_diffuse_rays_beqelse_b3887:
# B3887
	fadd x22, x40, x30
	lw x38, 0(x91)
	fmul x38, x38, x22
	lw x40, 0(x31)
	fadd x38, x38, x40
	lw x40, 1(x91)
	fmul x40, x40, x22
	lw x5, 1(x31)
	fadd x40, x40, x5
	lw x5, 2(x91)
	fmul x22, x5, x22
	lw x5, 2(x31)
	fadd x22, x22, x5
	mv x6, x37
	mv x66, x40
	mv x65, x38
	mv x67, x22
	mv x5, zero
trace_diffuse_rays_loop_b3890:
# B3890
	add x4, x6, x5
	lw x22, 0(x4)
	bne	x22, x28, trace_diffuse_rays_beqelse_b3892
# B3891
	mv x38, x100
# B3913
	bne	x38, zero, trace_diffuse_rays_beqelse_b3915
	j trace_diffuse_rays_cont_b3914 # adhoc jump(3)
trace_diffuse_rays_beqelse_b3915:
# B3915
	mv x22, x100
# B3916
	bne	x22, zero, trace_diffuse_rays_beqelse_b3918
	j trace_diffuse_rays_cont_b3917 # adhoc jump(3)
trace_diffuse_rays_beqelse_b3918:
# B3918
	mv x32, x100
# B3919
	bne	x32, zero, trace_diffuse_rays_beqelse_b3921
trace_diffuse_rays_bneelse_b3920:
# B3920
	j trace_diffuse_rays_loop_b3697 # loopback to while entry from B3920
trace_diffuse_rays_beqelse_b3921:
# B3921
	mv x22, x100
# B3922
	bne	x22, zero, trace_diffuse_rays_beqelse_b4470
trace_diffuse_rays_bneelse_b3923:
# B3923
	lw x22, 0(x36)
	lw x24, 0(x91)
	fmul x22, x22, x24
	lw x24, 1(x36)
	lw x25, 1(x91)
	fmul x24, x24, x25
	fadd x22, x22, x24
	lw x24, 2(x36)
	lw x25, 2(x91)
	fmul x24, x24, x25
	fadd x22, x22, x24
	fsub x22, zero, x22
	fle x24, x22, zero
	beq	x24, zero, trace_diffuse_rays_bneelse_b3926
# B3925
	mv x25, zero
	j trace_diffuse_rays_cont_b3927 # adhoc jump(2)
trace_diffuse_rays_bneelse_b3926:
# B3926
	mv x25, x22
trace_diffuse_rays_cont_b3927:
# B3927
	fmul x13, x13, x25
	lw x22, 7(x23)
	lw x22, 0(x22)
	fmul x13, x13, x22
	lw x22, 0(x92)
	lw x23, 0(x39)
	fmul x23, x13, x23
	fadd x22, x22, x23
	sw x22, 0(x92)
	lw x22, 1(x92)
	lw x23, 1(x39)
	fmul x23, x13, x23
	fadd x22, x22, x23
	sw x22, 1(x92)
	lw x22, 2(x92)
	lw x23, 2(x39)
	fmul x13, x13, x23
	fadd x13, x22, x13
	sw x13, 2(x92)
	j trace_diffuse_rays_cont_b4470 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3892:
# B3892
	add x4, x12, x22
	lw x22, 0(x4)
	lw x38, 5(x22)
	lw x38, 0(x38)
	fsub x38, x65, x38
	lw x40, 5(x22)
	lw x40, 1(x40)
	fsub x40, x66, x40
	lw x68, 5(x22)
	lw x68, 2(x68)
	fsub x68, x67, x68
	lw x69, 1(x22)
	bne	x69, x100, trace_diffuse_rays_beqelse_b3894
# B3893
	fabs x38, x38
	lw x69, 4(x22)
	lw x69, 0(x69)
	fle x38, x69, x38
	bne	x38, zero, trace_diffuse_rays_beqelse_b3900
# B3896
	fabs x38, x40
	lw x40, 4(x22)
	lw x40, 1(x40)
	fle x38, x40, x38
	bne	x38, zero, trace_diffuse_rays_beqelse_b3900
# B3898
	fabs x38, x68
	lw x40, 4(x22)
	lw x40, 2(x40)
	fle x38, x40, x38
	xori x38, x38, 1
	mv x40, x38
# B3899
	bne	x40, zero, trace_diffuse_rays_beqelse_b3901
trace_diffuse_rays_beqelse_b3900:
# B3900
	lw x22, 6(x22)
	xori x22, x22, 1
	j trace_diffuse_rays_cont_b3910 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3901:
# B3901
	lw x22, 6(x22)
	j trace_diffuse_rays_cont_b3910 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3894:
# B3894
	bne	x69, x11, trace_diffuse_rays_beqelse_b3903
# B3902
	lw x69, 4(x22)
	lw x7, 0(x69)
	fmul x38, x7, x38
	lw x7, 1(x69)
	fmul x40, x7, x40
	fadd x38, x38, x40
	lw x40, 2(x69)
	fmul x40, x40, x68
	fadd x38, x38, x40
	lw x22, 6(x22)
	fle x38, zero, x38
	xori x38, x38, 1
	xor x22, x22, x38
	xori x22, x22, 1
	j trace_diffuse_rays_cont_b3910 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3903:
# B3903
	fmul x69, x38, x38
	lw x7, 4(x22)
	lw x7, 0(x7)
	fmul x69, x69, x7
	fmul x7, x40, x40
	lw x70, 4(x22)
	lw x70, 1(x70)
	fmul x7, x7, x70
	fadd x69, x69, x7
	fmul x7, x68, x68
	lw x70, 4(x22)
	lw x70, 2(x70)
	fmul x7, x7, x70
	fadd x69, x69, x7
	lw x7, 3(x22)
	bne	x7, zero, trace_diffuse_rays_beqelse_b3905
# B3904
	mv x38, x69
	j trace_diffuse_rays_cont_b3906 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3905:
# B3905
	fmul x7, x40, x68
	lw x70, 9(x22)
	lw x70, 0(x70)
	fmul x7, x7, x70
	fadd x69, x69, x7
	fmul x68, x68, x38
	lw x7, 9(x22)
	lw x7, 1(x7)
	fmul x68, x68, x7
	fadd x68, x69, x68
	fmul x38, x38, x40
	lw x40, 9(x22)
	lw x40, 2(x40)
	fmul x38, x38, x40
	fadd x38, x68, x38
trace_diffuse_rays_cont_b3906:
# B3906
	lw x40, 1(x22)
	bne	x40, x15, trace_diffuse_rays_beqelse_b3909
# B3907
	fsub x38, x38, x16
trace_diffuse_rays_beqelse_b3909:
# B3909
	lw x22, 6(x22)
	fle x38, zero, x38
	xori x38, x38, 1
	xor x22, x22, x38
	xori x22, x22, 1
trace_diffuse_rays_cont_b3910:
# B3910
	bne	x22, zero, trace_diffuse_rays_beqelse_b3914
# B3911
	addi x5, x5, 1
	j trace_diffuse_rays_loop_b3890 # loopback to while entry from B3911
trace_diffuse_rays_beqelse_b3914:
trace_diffuse_rays_cont_b3914:
# B3914
	j trace_diffuse_rays_loop_b3839 # loopback to while entry from B3914
trace_diffuse_rays_beqelse_b3870:
# B3870
	lw x40, 0(x27)
trace_diffuse_rays_cont_b3883:
# B3883
	addi x32, x32, 1
trace_diffuse_rays_cont_b3886:
# B3886
	add x4, x12, x22
	lw x22, 0(x4)
	lw x22, 6(x22)
	beq	x22, zero, trace_diffuse_rays_bneelse_b3917
	j	trace_diffuse_rays_loop_b3839 # moved need extra jump
trace_diffuse_rays_bneelse_b3917:
trace_diffuse_rays_cont_b3917:
# B3917
	addi x33, x33, 1
	j trace_diffuse_rays_loop_b3836 # loopback to while entry from B3917
	j trace_diffuse_rays_loop_b3839 # loopback to while entry from B3886
trace_diffuse_rays_beqelse_b3803:
# B3803
	add x4, x12, x32
	lw x32, 0(x4)
	lw x40, 5(x32)
	lw x40, 0(x40)
	fsub x40, x66, x40
	lw x5, 5(x32)
	lw x5, 1(x5)
	fsub x5, x67, x5
	lw x69, 5(x32)
	lw x69, 2(x69)
	fsub x69, x68, x69
	lw x7, 1(x32)
	bne	x7, x100, trace_diffuse_rays_beqelse_b3805
# B3804
	fabs x40, x40
	lw x7, 4(x32)
	lw x7, 0(x7)
	fle x40, x7, x40
	bne	x40, zero, trace_diffuse_rays_beqelse_b3811
# B3807
	fabs x40, x5
	lw x5, 4(x32)
	lw x5, 1(x5)
	fle x40, x5, x40
	bne	x40, zero, trace_diffuse_rays_beqelse_b3811
# B3809
	fabs x40, x69
	lw x5, 4(x32)
	lw x5, 2(x5)
	fle x40, x5, x40
	xori x40, x40, 1
	mv x5, x40
# B3810
	bne	x5, zero, trace_diffuse_rays_beqelse_b3812
trace_diffuse_rays_beqelse_b3811:
# B3811
	lw x32, 6(x32)
	xori x32, x32, 1
	j trace_diffuse_rays_cont_b3821 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3812:
# B3812
	lw x32, 6(x32)
	j trace_diffuse_rays_cont_b3821 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3805:
# B3805
	bne	x7, x11, trace_diffuse_rays_beqelse_b3814
# B3813
	lw x7, 4(x32)
	lw x70, 0(x7)
	fmul x40, x70, x40
	lw x70, 1(x7)
	fmul x5, x70, x5
	fadd x40, x40, x5
	lw x5, 2(x7)
	fmul x5, x5, x69
	fadd x40, x40, x5
	lw x32, 6(x32)
	fle x40, zero, x40
	xori x40, x40, 1
	xor x32, x32, x40
	xori x32, x32, 1
	j trace_diffuse_rays_cont_b3821 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3814:
# B3814
	fmul x7, x40, x40
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
	bne	x70, zero, trace_diffuse_rays_beqelse_b3816
# B3815
	mv x40, x7
	j trace_diffuse_rays_cont_b3817 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3816:
# B3816
	fmul x70, x5, x69
	lw x71, 9(x32)
	lw x71, 0(x71)
	fmul x70, x70, x71
	fadd x7, x7, x70
	fmul x69, x69, x40
	lw x70, 9(x32)
	lw x70, 1(x70)
	fmul x69, x69, x70
	fadd x69, x7, x69
	fmul x40, x40, x5
	lw x5, 9(x32)
	lw x5, 2(x5)
	fmul x40, x40, x5
	fadd x40, x69, x40
trace_diffuse_rays_cont_b3817:
# B3817
	lw x5, 1(x32)
	bne	x5, x15, trace_diffuse_rays_beqelse_b3820
# B3818
	fsub x40, x40, x16
trace_diffuse_rays_beqelse_b3820:
# B3820
	lw x32, 6(x32)
	fle x40, zero, x40
	xori x40, x40, 1
	xor x32, x32, x40
	xori x32, x32, 1
trace_diffuse_rays_cont_b3821:
# B3821
	bne	x32, zero, trace_diffuse_rays_beqelse_b3825
# B3822
	addi x6, x6, 1
	j trace_diffuse_rays_loop_b3801 # loopback to while entry from B3822
trace_diffuse_rays_beqelse_b3825:
trace_diffuse_rays_cont_b3825:
# B3825
	j trace_diffuse_rays_loop_b3750 # loopback to while entry from B3825
trace_diffuse_rays_beqelse_b3781:
# B3781
	lw x5, 0(x27)
trace_diffuse_rays_cont_b3794:
# B3794
	addi x37, x37, 1
trace_diffuse_rays_cont_b3797:
# B3797
	add x4, x12, x32
	lw x32, 0(x4)
	lw x32, 6(x32)
	beq	x32, zero, trace_diffuse_rays_bneelse_b3828
	j	trace_diffuse_rays_loop_b3750 # moved need extra jump
trace_diffuse_rays_bneelse_b3828:
trace_diffuse_rays_cont_b3828:
# B3828
	addi x33, x33, 1
	j trace_diffuse_rays_loop_b3747 # loopback to while entry from B3828
	j trace_diffuse_rays_loop_b3750 # loopback to while entry from B3797
trace_diffuse_rays_bneelse_b3385:
# B3385
	addi x22, x21, 1
	add x4, x18, x22
	lw x22, 0(x4)
	fdiv x13, x13, x17
	sw x24, 0(x23)
	lw x24, 0(x25)
	mv x94, x24
	mv x93, zero
	mv x95, x22
trace_diffuse_rays_loop_b3928:
# B3928
	add x4, x94, x93
	lw x24, 0(x4)
	lw x96, 0(x24)
	beq	x96, x28, trace_diffuse_rays_bneelse_b4127
# B3930
	bne	x96, x26, trace_diffuse_rays_beqelse_b3932
# B3931
	mv x97, x100
	mv x98, x24
	mv x99, x95
trace_diffuse_rays_loop_b3933:
# B3933
	add x4, x98, x97
	lw x24, 0(x4)
	beq	x24, x28, trace_diffuse_rays_bneelse_b4126
# B3935
	add x4, x29, x24
	lw x24, 0(x4)
	mv x101, x24
	mv x102, x99
	mv x96, zero
trace_diffuse_rays_loop_b3936:
# B3936
	lw x24, 0(x102)
	add x4, x101, x96
	lw x103, 0(x4)
	beq	x103, x28, trace_diffuse_rays_bneelse_b4009
# B3938
	add x4, x12, x103
	lw x104, 0(x4)
	lw x105, 10(x104)
	lw x106, 0(x105)
	lw x107, 1(x105)
	lw x108, 2(x105)
	lw x109, 1(x102)
	add x4, x109, x103
	lw x109, 0(x4)
	lw x110, 1(x104)
	bne	x110, x100, trace_diffuse_rays_beqelse_b3940
# B3939
	lw x105, 0(x102)
	lw x110, 0(x109)
	fsub x110, x110, x106
	lw x111, 1(x109)
	fmul x110, x110, x111
	lw x111, 1(x105)
	fmul x111, x110, x111
	fadd x111, x111, x107
	fabs x111, x111
	lw x112, 4(x104)
	lw x112, 1(x112)
	fle x111, x112, x111
	bne	x111, zero, trace_diffuse_rays_beqelse_b3946
# B3942
	lw x111, 2(x105)
	fmul x111, x110, x111
	fadd x111, x111, x108
	fabs x111, x111
	lw x112, 4(x104)
	lw x112, 2(x112)
	fle x111, x112, x111
	bne	x111, zero, trace_diffuse_rays_beqelse_b3946
# B3944
	lw x111, 1(x109)
	feq x111, x111, zero
	xori x111, x111, 1
	mv x112, x111
# B3945
	bne	x112, zero, trace_diffuse_rays_beqelse_b3947
trace_diffuse_rays_beqelse_b3946:
# B3946
	lw x110, 2(x109)
	fsub x110, x110, x107
	lw x111, 3(x109)
	fmul x110, x110, x111
	lw x111, 0(x105)
	fmul x111, x110, x111
	fadd x111, x111, x106
	fabs x111, x111
	lw x112, 4(x104)
	lw x112, 0(x112)
	fle x111, x112, x111
	bne	x111, zero, trace_diffuse_rays_beqelse_b3953
# B3949
	lw x111, 2(x105)
	fmul x111, x110, x111
	fadd x111, x111, x108
	fabs x111, x111
	lw x112, 4(x104)
	lw x112, 2(x112)
	fle x111, x112, x111
	bne	x111, zero, trace_diffuse_rays_beqelse_b3953
# B3951
	lw x111, 3(x109)
	feq x111, x111, zero
	xori x111, x111, 1
	mv x112, x111
# B3952
	bne	x112, zero, trace_diffuse_rays_beqelse_b3954
trace_diffuse_rays_beqelse_b3953:
# B3953
	lw x110, 4(x109)
	fsub x108, x110, x108
	lw x110, 5(x109)
	fmul x108, x108, x110
	lw x110, 0(x105)
	fmul x110, x108, x110
	fadd x106, x110, x106
	fabs x106, x106
	lw x110, 4(x104)
	lw x110, 0(x110)
	fle x106, x110, x106
	bne	x106, zero, trace_diffuse_rays_beqelse_b3960
# B3956
	lw x105, 1(x105)
	fmul x105, x108, x105
	fadd x105, x105, x107
	fabs x105, x105
	lw x104, 4(x104)
	lw x104, 1(x104)
	fle x104, x104, x105
	bne	x104, zero, trace_diffuse_rays_beqelse_b3960
# B3958
	lw x104, 5(x109)
	feq x104, x104, zero
	xori x104, x104, 1
	mv x105, x104
# B3959
	bne	x105, zero, trace_diffuse_rays_beqelse_b3961
trace_diffuse_rays_beqelse_b3960:
# B3960
	mv x104, zero
	addi x96, x96, 1
	j trace_diffuse_rays_cont_b3974 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3961:
# B3961
	sw x108, 0(x27)
	mv x104, x15
	j trace_diffuse_rays_cont_b3973 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3954:
# B3954
	sw x110, 0(x27)
	mv x104, x11
	j trace_diffuse_rays_cont_b3973 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3947:
# B3947
	sw x110, 0(x27)
	mv x104, x100
	j trace_diffuse_rays_cont_b3973 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3940:
# B3940
	bne	x110, x11, trace_diffuse_rays_beqelse_b3963
# B3962
	lw x104, 0(x109)
	fle x104, zero, x104
	beq	x104, zero, trace_diffuse_rays_bneelse_b3965
# B3964
	mv x104, zero
	addi x96, x96, 1
	j trace_diffuse_rays_cont_b3974 # adhoc jump(2)
trace_diffuse_rays_bneelse_b3965:
# B3965
	lw x104, 0(x109)
	lw x105, 3(x105)
	fmul x104, x104, x105
	sw x104, 0(x27)
	mv x104, x100
	j trace_diffuse_rays_cont_b3973 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3963:
# B3963
	lw x110, 0(x109)
	feq x111, x110, zero
	bne	x111, zero, trace_diffuse_rays_beqelse_b3967
# B3966
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
	fle x107, x105, zero
	beq	x107, zero, trace_diffuse_rays_bneelse_b3969
# B3968
	mv x104, zero
	addi x96, x96, 1
	j trace_diffuse_rays_cont_b3974 # adhoc jump(2)
trace_diffuse_rays_bneelse_b3969:
# B3969
	lw x104, 6(x104)
	fsqrt x105, x105
	bne	x104, zero, trace_diffuse_rays_beqelse_b3971
# B3970
	fsub x104, x106, x105
	lw x105, 4(x109)
	fmul x104, x104, x105
	sw x104, 0(x27)
	j trace_diffuse_rays_cont_b3972 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3971:
# B3971
	fadd x104, x106, x105
	lw x105, 4(x109)
	fmul x104, x104, x105
	sw x104, 0(x27)
trace_diffuse_rays_cont_b3972:
# B3972
	mv x104, x100
trace_diffuse_rays_cont_b3973:
# B3973
	addi x96, x96, 1
	bne	x104, zero, trace_diffuse_rays_beqelse_b3975
	j trace_diffuse_rays_cont_b3974 # adhoc jump(3)
trace_diffuse_rays_beqelse_b3975:
# B3975
	lw x105, 0(x27)
	fle x106, x105, zero
	bne	x106, zero, trace_diffuse_rays_beqelse_b4008
# B3979
	lw x106, 0(x23)
	fle x106, x106, x105
	bne	x106, zero, trace_diffuse_rays_beqelse_b4008
# B3981
	fadd x105, x105, x30
	lw x106, 0(x24)
	fmul x106, x106, x105
	lw x107, 0(x10)
	fadd x106, x106, x107
	lw x107, 1(x24)
	fmul x107, x107, x105
	lw x108, 1(x10)
	fadd x107, x107, x108
	lw x24, 2(x24)
	fmul x24, x24, x105
	lw x108, 2(x10)
	fadd x24, x24, x108
	mv x110, x106
	mv x111, x107
	mv x112, x24
	mv x109, x101
	mv x108, zero
trace_diffuse_rays_loop_b3982:
# B3982
	add x4, x109, x108
	lw x113, 0(x4)
	bne	x113, x28, trace_diffuse_rays_beqelse_b3984
# B3983
	mv x114, x100
# B4005
	bne	x114, zero, trace_diffuse_rays_beqelse_b4007
	j trace_diffuse_rays_cont_b4006 # adhoc jump(3)
trace_diffuse_rays_beqelse_b4007:
# B4007
	sw x105, 0(x23)
	sw x106, 0(x31)
	sw x107, 1(x31)
	sw x24, 2(x31)
	sw x103, 0(x32)
	sw x104, 0(x33)
	j trace_diffuse_rays_cont_b4008 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3984:
# B3984
	add x4, x12, x113
	lw x113, 0(x4)
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
	bne	x117, x100, trace_diffuse_rays_beqelse_b3986
# B3985
	fabs x114, x114
	lw x117, 4(x113)
	lw x117, 0(x117)
	fle x114, x117, x114
	bne	x114, zero, trace_diffuse_rays_beqelse_b3992
# B3988
	fabs x114, x115
	lw x115, 4(x113)
	lw x115, 1(x115)
	fle x114, x115, x114
	bne	x114, zero, trace_diffuse_rays_beqelse_b3992
# B3990
	fabs x114, x116
	lw x115, 4(x113)
	lw x115, 2(x115)
	fle x114, x115, x114
	xori x114, x114, 1
	mv x115, x114
# B3991
	bne	x115, zero, trace_diffuse_rays_beqelse_b3993
trace_diffuse_rays_beqelse_b3992:
# B3992
	lw x113, 6(x113)
	xori x113, x113, 1
	j trace_diffuse_rays_cont_b4002 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3993:
# B3993
	lw x113, 6(x113)
	j trace_diffuse_rays_cont_b4002 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3986:
# B3986
	bne	x117, x11, trace_diffuse_rays_beqelse_b3995
# B3994
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
	j trace_diffuse_rays_cont_b4002 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3995:
# B3995
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
	bne	x118, zero, trace_diffuse_rays_beqelse_b3997
# B3996
	mv x114, x117
	j trace_diffuse_rays_cont_b3998 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3997:
# B3997
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
trace_diffuse_rays_cont_b3998:
# B3998
	lw x115, 1(x113)
	bne	x115, x15, trace_diffuse_rays_beqelse_b4001
# B3999
	fsub x114, x114, x16
trace_diffuse_rays_beqelse_b4001:
# B4001
	lw x113, 6(x113)
	fle x114, zero, x114
	xori x114, x114, 1
	xor x113, x113, x114
	xori x113, x113, 1
trace_diffuse_rays_cont_b4002:
# B4002
	bne	x113, zero, trace_diffuse_rays_beqelse_b4006
# B4003
	addi x108, x108, 1
	j trace_diffuse_rays_loop_b3982 # loopback to while entry from B4003
trace_diffuse_rays_beqelse_b4006:
trace_diffuse_rays_cont_b4006:
# B4006
trace_diffuse_rays_beqelse_b4008:
trace_diffuse_rays_cont_b4008:
# B4008
	j trace_diffuse_rays_loop_b3936 # loopback to while entry from B4008
trace_diffuse_rays_beqelse_b3967:
# B3967
	mv x104, zero
	addi x96, x96, 1
trace_diffuse_rays_cont_b3974:
# B3974
	add x4, x12, x103
	lw x24, 0(x4)
	lw x24, 6(x24)
	beq	x24, zero, trace_diffuse_rays_bneelse_b4009
	j	trace_diffuse_rays_loop_b3936 # moved need extra jump
trace_diffuse_rays_bneelse_b4009:
# B4009
	addi x97, x97, 1
	j trace_diffuse_rays_loop_b3933 # loopback to while entry from B4009
	j trace_diffuse_rays_loop_b3936 # loopback to while entry from B3974
trace_diffuse_rays_beqelse_b3932:
# B3932
	add x4, x12, x96
	lw x97, 0(x4)
	lw x98, 10(x97)
	lw x99, 0(x98)
	lw x101, 1(x98)
	lw x102, 2(x98)
	lw x103, 1(x95)
	add x4, x103, x96
	lw x96, 0(x4)
	lw x103, 1(x97)
	bne	x103, x100, trace_diffuse_rays_beqelse_b4011
# B4010
	lw x98, 0(x95)
	lw x103, 0(x96)
	fsub x103, x103, x99
	lw x104, 1(x96)
	fmul x103, x103, x104
	lw x104, 1(x98)
	fmul x104, x103, x104
	fadd x104, x104, x101
	fabs x104, x104
	lw x105, 4(x97)
	lw x105, 1(x105)
	fle x104, x105, x104
	bne	x104, zero, trace_diffuse_rays_beqelse_b4017
# B4013
	lw x104, 2(x98)
	fmul x104, x103, x104
	fadd x104, x104, x102
	fabs x104, x104
	lw x105, 4(x97)
	lw x105, 2(x105)
	fle x104, x105, x104
	bne	x104, zero, trace_diffuse_rays_beqelse_b4017
# B4015
	lw x104, 1(x96)
	feq x104, x104, zero
	xori x104, x104, 1
	mv x105, x104
# B4016
	bne	x105, zero, trace_diffuse_rays_beqelse_b4018
trace_diffuse_rays_beqelse_b4017:
# B4017
	lw x103, 2(x96)
	fsub x103, x103, x101
	lw x104, 3(x96)
	fmul x103, x103, x104
	lw x104, 0(x98)
	fmul x104, x103, x104
	fadd x104, x104, x99
	fabs x104, x104
	lw x105, 4(x97)
	lw x105, 0(x105)
	fle x104, x105, x104
	bne	x104, zero, trace_diffuse_rays_beqelse_b4024
# B4020
	lw x104, 2(x98)
	fmul x104, x103, x104
	fadd x104, x104, x102
	fabs x104, x104
	lw x105, 4(x97)
	lw x105, 2(x105)
	fle x104, x105, x104
	bne	x104, zero, trace_diffuse_rays_beqelse_b4024
# B4022
	lw x104, 3(x96)
	feq x104, x104, zero
	xori x104, x104, 1
	mv x105, x104
# B4023
	bne	x105, zero, trace_diffuse_rays_beqelse_b4025
trace_diffuse_rays_beqelse_b4024:
# B4024
	lw x103, 4(x96)
	fsub x102, x103, x102
	lw x103, 5(x96)
	fmul x102, x102, x103
	lw x103, 0(x98)
	fmul x103, x102, x103
	fadd x99, x103, x99
	fabs x99, x99
	lw x103, 4(x97)
	lw x103, 0(x103)
	fle x99, x103, x99
	bne	x99, zero, trace_diffuse_rays_beqelse_b4031
# B4027
	lw x98, 1(x98)
	fmul x98, x102, x98
	fadd x98, x98, x101
	fabs x98, x98
	lw x97, 4(x97)
	lw x97, 1(x97)
	fle x97, x97, x98
	bne	x97, zero, trace_diffuse_rays_beqelse_b4031
# B4029
	lw x96, 5(x96)
	feq x96, x96, zero
	xori x96, x96, 1
	mv x97, x96
# B4030
	bne	x97, zero, trace_diffuse_rays_beqelse_b4032
trace_diffuse_rays_beqelse_b4031:
# B4031
	j trace_diffuse_rays_cont_b4045 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4032:
# B4032
	sw x102, 0(x27)
	mv x96, x15
	j trace_diffuse_rays_cont_b4044 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4025:
# B4025
	sw x103, 0(x27)
	mv x96, x11
	j trace_diffuse_rays_cont_b4044 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4018:
# B4018
	sw x103, 0(x27)
	mv x96, x100
	j trace_diffuse_rays_cont_b4044 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4011:
# B4011
	bne	x103, x11, trace_diffuse_rays_beqelse_b4034
# B4033
	lw x97, 0(x96)
	fle x97, zero, x97
	bne	x97, zero, trace_diffuse_rays_beqelse_b4045
# B4036
	lw x96, 0(x96)
	lw x97, 3(x98)
	fmul x96, x96, x97
	sw x96, 0(x27)
	mv x96, x100
	j trace_diffuse_rays_cont_b4044 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4034:
# B4034
	lw x103, 0(x96)
	feq x104, x103, zero
	bne	x104, zero, trace_diffuse_rays_beqelse_b4045
# B4037
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
	fle x101, x98, zero
	bne	x101, zero, trace_diffuse_rays_beqelse_b4045
# B4040
	lw x97, 6(x97)
	fsqrt x98, x98
	bne	x97, zero, trace_diffuse_rays_beqelse_b4042
# B4041
	fsub x97, x99, x98
	lw x96, 4(x96)
	fmul x96, x97, x96
	sw x96, 0(x27)
	j trace_diffuse_rays_cont_b4043 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4042:
# B4042
	fadd x97, x99, x98
	lw x96, 4(x96)
	fmul x96, x97, x96
	sw x96, 0(x27)
trace_diffuse_rays_cont_b4043:
# B4043
	mv x96, x100
trace_diffuse_rays_cont_b4044:
# B4044
	bne	x96, zero, trace_diffuse_rays_beqelse_b4046
trace_diffuse_rays_beqelse_b4045:
trace_diffuse_rays_cont_b4045:
# B4045
	j trace_diffuse_rays_cont_b4126 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4046:
# B4046
	lw x96, 0(x27)
	lw x97, 0(x23)
	fle x96, x97, x96
	bne	x96, zero, trace_diffuse_rays_beqelse_b4126
# B4048
	mv x97, x100
	mv x98, x24
	mv x99, x95
trace_diffuse_rays_loop_b4049:
# B4049
	add x4, x98, x97
	lw x24, 0(x4)
	beq	x24, x28, trace_diffuse_rays_bneelse_b4126
# B4051
	add x4, x29, x24
	lw x24, 0(x4)
	mv x101, x24
	mv x102, x99
	mv x96, zero
trace_diffuse_rays_loop_b4052:
# B4052
	lw x24, 0(x102)
	add x4, x101, x96
	lw x103, 0(x4)
	beq	x103, x28, trace_diffuse_rays_bneelse_b4125
# B4054
	add x4, x12, x103
	lw x104, 0(x4)
	lw x105, 10(x104)
	lw x106, 0(x105)
	lw x107, 1(x105)
	lw x108, 2(x105)
	lw x109, 1(x102)
	add x4, x109, x103
	lw x109, 0(x4)
	lw x110, 1(x104)
	bne	x110, x100, trace_diffuse_rays_beqelse_b4056
# B4055
	lw x105, 0(x102)
	lw x110, 0(x109)
	fsub x110, x110, x106
	lw x111, 1(x109)
	fmul x110, x110, x111
	lw x111, 1(x105)
	fmul x111, x110, x111
	fadd x111, x111, x107
	fabs x111, x111
	lw x112, 4(x104)
	lw x112, 1(x112)
	fle x111, x112, x111
	bne	x111, zero, trace_diffuse_rays_beqelse_b4062
# B4058
	lw x111, 2(x105)
	fmul x111, x110, x111
	fadd x111, x111, x108
	fabs x111, x111
	lw x112, 4(x104)
	lw x112, 2(x112)
	fle x111, x112, x111
	bne	x111, zero, trace_diffuse_rays_beqelse_b4062
# B4060
	lw x111, 1(x109)
	feq x111, x111, zero
	xori x111, x111, 1
	mv x112, x111
# B4061
	bne	x112, zero, trace_diffuse_rays_beqelse_b4063
trace_diffuse_rays_beqelse_b4062:
# B4062
	lw x110, 2(x109)
	fsub x110, x110, x107
	lw x111, 3(x109)
	fmul x110, x110, x111
	lw x111, 0(x105)
	fmul x111, x110, x111
	fadd x111, x111, x106
	fabs x111, x111
	lw x112, 4(x104)
	lw x112, 0(x112)
	fle x111, x112, x111
	bne	x111, zero, trace_diffuse_rays_beqelse_b4069
# B4065
	lw x111, 2(x105)
	fmul x111, x110, x111
	fadd x111, x111, x108
	fabs x111, x111
	lw x112, 4(x104)
	lw x112, 2(x112)
	fle x111, x112, x111
	bne	x111, zero, trace_diffuse_rays_beqelse_b4069
# B4067
	lw x111, 3(x109)
	feq x111, x111, zero
	xori x111, x111, 1
	mv x112, x111
# B4068
	bne	x112, zero, trace_diffuse_rays_beqelse_b4070
trace_diffuse_rays_beqelse_b4069:
# B4069
	lw x110, 4(x109)
	fsub x108, x110, x108
	lw x110, 5(x109)
	fmul x108, x108, x110
	lw x110, 0(x105)
	fmul x110, x108, x110
	fadd x106, x110, x106
	fabs x106, x106
	lw x110, 4(x104)
	lw x110, 0(x110)
	fle x106, x110, x106
	bne	x106, zero, trace_diffuse_rays_beqelse_b4076
# B4072
	lw x105, 1(x105)
	fmul x105, x108, x105
	fadd x105, x105, x107
	fabs x105, x105
	lw x104, 4(x104)
	lw x104, 1(x104)
	fle x104, x104, x105
	bne	x104, zero, trace_diffuse_rays_beqelse_b4076
# B4074
	lw x104, 5(x109)
	feq x104, x104, zero
	xori x104, x104, 1
	mv x105, x104
# B4075
	bne	x105, zero, trace_diffuse_rays_beqelse_b4077
trace_diffuse_rays_beqelse_b4076:
# B4076
	mv x104, zero
	addi x96, x96, 1
	j trace_diffuse_rays_cont_b4090 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4077:
# B4077
	sw x108, 0(x27)
	mv x104, x15
	j trace_diffuse_rays_cont_b4089 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4070:
# B4070
	sw x110, 0(x27)
	mv x104, x11
	j trace_diffuse_rays_cont_b4089 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4063:
# B4063
	sw x110, 0(x27)
	mv x104, x100
	j trace_diffuse_rays_cont_b4089 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4056:
# B4056
	bne	x110, x11, trace_diffuse_rays_beqelse_b4079
# B4078
	lw x104, 0(x109)
	fle x104, zero, x104
	beq	x104, zero, trace_diffuse_rays_bneelse_b4081
# B4080
	mv x104, zero
	addi x96, x96, 1
	j trace_diffuse_rays_cont_b4090 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4081:
# B4081
	lw x104, 0(x109)
	lw x105, 3(x105)
	fmul x104, x104, x105
	sw x104, 0(x27)
	mv x104, x100
	j trace_diffuse_rays_cont_b4089 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4079:
# B4079
	lw x110, 0(x109)
	feq x111, x110, zero
	bne	x111, zero, trace_diffuse_rays_beqelse_b4083
# B4082
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
	fle x107, x105, zero
	beq	x107, zero, trace_diffuse_rays_bneelse_b4085
# B4084
	mv x104, zero
	addi x96, x96, 1
	j trace_diffuse_rays_cont_b4090 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4085:
# B4085
	lw x104, 6(x104)
	fsqrt x105, x105
	bne	x104, zero, trace_diffuse_rays_beqelse_b4087
# B4086
	fsub x104, x106, x105
	lw x105, 4(x109)
	fmul x104, x104, x105
	sw x104, 0(x27)
	j trace_diffuse_rays_cont_b4088 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4087:
# B4087
	fadd x104, x106, x105
	lw x105, 4(x109)
	fmul x104, x104, x105
	sw x104, 0(x27)
trace_diffuse_rays_cont_b4088:
# B4088
	mv x104, x100
trace_diffuse_rays_cont_b4089:
# B4089
	addi x96, x96, 1
	bne	x104, zero, trace_diffuse_rays_beqelse_b4091
	j trace_diffuse_rays_cont_b4090 # adhoc jump(3)
trace_diffuse_rays_beqelse_b4091:
# B4091
	lw x105, 0(x27)
	fle x106, x105, zero
	bne	x106, zero, trace_diffuse_rays_beqelse_b4124
# B4095
	lw x106, 0(x23)
	fle x106, x106, x105
	bne	x106, zero, trace_diffuse_rays_beqelse_b4124
# B4097
	fadd x105, x105, x30
	lw x106, 0(x24)
	fmul x106, x106, x105
	lw x107, 0(x10)
	fadd x106, x106, x107
	lw x107, 1(x24)
	fmul x107, x107, x105
	lw x108, 1(x10)
	fadd x107, x107, x108
	lw x24, 2(x24)
	fmul x24, x24, x105
	lw x108, 2(x10)
	fadd x24, x24, x108
	mv x110, x106
	mv x111, x107
	mv x112, x24
	mv x109, x101
	mv x108, zero
trace_diffuse_rays_loop_b4098:
# B4098
	add x4, x109, x108
	lw x113, 0(x4)
	bne	x113, x28, trace_diffuse_rays_beqelse_b4100
# B4099
	mv x114, x100
# B4121
	bne	x114, zero, trace_diffuse_rays_beqelse_b4123
	j trace_diffuse_rays_cont_b4122 # adhoc jump(3)
trace_diffuse_rays_beqelse_b4123:
# B4123
	sw x105, 0(x23)
	sw x106, 0(x31)
	sw x107, 1(x31)
	sw x24, 2(x31)
	sw x103, 0(x32)
	sw x104, 0(x33)
	j trace_diffuse_rays_cont_b4124 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4100:
# B4100
	add x4, x12, x113
	lw x113, 0(x4)
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
	bne	x117, x100, trace_diffuse_rays_beqelse_b4102
# B4101
	fabs x114, x114
	lw x117, 4(x113)
	lw x117, 0(x117)
	fle x114, x117, x114
	bne	x114, zero, trace_diffuse_rays_beqelse_b4108
# B4104
	fabs x114, x115
	lw x115, 4(x113)
	lw x115, 1(x115)
	fle x114, x115, x114
	bne	x114, zero, trace_diffuse_rays_beqelse_b4108
# B4106
	fabs x114, x116
	lw x115, 4(x113)
	lw x115, 2(x115)
	fle x114, x115, x114
	xori x114, x114, 1
	mv x115, x114
# B4107
	bne	x115, zero, trace_diffuse_rays_beqelse_b4109
trace_diffuse_rays_beqelse_b4108:
# B4108
	lw x113, 6(x113)
	xori x113, x113, 1
	j trace_diffuse_rays_cont_b4118 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4109:
# B4109
	lw x113, 6(x113)
	j trace_diffuse_rays_cont_b4118 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4102:
# B4102
	bne	x117, x11, trace_diffuse_rays_beqelse_b4111
# B4110
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
	j trace_diffuse_rays_cont_b4118 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4111:
# B4111
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
	bne	x118, zero, trace_diffuse_rays_beqelse_b4113
# B4112
	mv x114, x117
	j trace_diffuse_rays_cont_b4114 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4113:
# B4113
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
trace_diffuse_rays_cont_b4114:
# B4114
	lw x115, 1(x113)
	bne	x115, x15, trace_diffuse_rays_beqelse_b4117
# B4115
	fsub x114, x114, x16
trace_diffuse_rays_beqelse_b4117:
# B4117
	lw x113, 6(x113)
	fle x114, zero, x114
	xori x114, x114, 1
	xor x113, x113, x114
	xori x113, x113, 1
trace_diffuse_rays_cont_b4118:
# B4118
	bne	x113, zero, trace_diffuse_rays_beqelse_b4122
# B4119
	addi x108, x108, 1
	j trace_diffuse_rays_loop_b4098 # loopback to while entry from B4119
trace_diffuse_rays_beqelse_b4122:
trace_diffuse_rays_cont_b4122:
# B4122
trace_diffuse_rays_beqelse_b4124:
trace_diffuse_rays_cont_b4124:
# B4124
	j trace_diffuse_rays_loop_b4052 # loopback to while entry from B4124
trace_diffuse_rays_beqelse_b4083:
# B4083
	mv x104, zero
	addi x96, x96, 1
trace_diffuse_rays_cont_b4090:
# B4090
	add x4, x12, x103
	lw x24, 0(x4)
	lw x24, 6(x24)
	beq	x24, zero, trace_diffuse_rays_bneelse_b4125
	j	trace_diffuse_rays_loop_b4052 # moved need extra jump
trace_diffuse_rays_bneelse_b4125:
# B4125
	addi x97, x97, 1
	j trace_diffuse_rays_loop_b4049 # loopback to while entry from B4125
	j trace_diffuse_rays_loop_b4052 # loopback to while entry from B4090
trace_diffuse_rays_beqelse_b4126:
trace_diffuse_rays_bneelse_b4126:
trace_diffuse_rays_cont_b4126:
# B4126
	addi x93, x93, 1
	j trace_diffuse_rays_loop_b3928 # loopback to while entry from B4126
trace_diffuse_rays_bneelse_b4127:
# B4127
	lw x23, 0(x23)
	fle x24, x23, x34
	bne	x24, zero, trace_diffuse_rays_beqelse_b4131
# B4129
	fle x23, x35, x23
	xori x23, x23, 1
	mv x24, x23
# B4130
	bne	x24, zero, trace_diffuse_rays_beqelse_b4132
trace_diffuse_rays_beqelse_b4131:
# B4131
	j trace_diffuse_rays_cont_b4470 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4132:
# B4132
	lw x23, 0(x32)
	add x4, x12, x23
	lw x23, 0(x4)
	lw x22, 0(x22)
	lw x24, 1(x23)
	bne	x24, x100, trace_diffuse_rays_beqelse_b4134
# B4133
	lw x24, 0(x33)
	sw zero, 0(x36)
	sw zero, 1(x36)
	sw zero, 2(x36)
	addi x24, x24, -1
	add x4, x22, x24
	lw x22, 0(x4)
	feq x32, x22, zero
	bne	x32, zero, trace_diffuse_rays_beqelse_b4136
# B4135
	fle x22, x22, zero
	beq	x22, zero, trace_diffuse_rays_bneelse_b4138
# B4137
	mv x22, x38
	j trace_diffuse_rays_cont_b4139 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4138:
# B4138
	mv x22, x16
	j trace_diffuse_rays_cont_b4139 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4136:
# B4136
	mv x22, zero
trace_diffuse_rays_cont_b4139:
# B4139
	fsub x22, zero, x22
	add x4, x36, x24
	sw x22, 0(x4)
	j trace_diffuse_rays_cont_b4150 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4134:
# B4134
	bne	x24, x11, trace_diffuse_rays_beqelse_b4141
# B4140
	lw x22, 4(x23)
	lw x22, 0(x22)
	fsub x22, zero, x22
	sw x22, 0(x36)
	lw x22, 4(x23)
	lw x22, 1(x22)
	fsub x22, zero, x22
	sw x22, 1(x36)
	lw x22, 4(x23)
	lw x22, 2(x22)
	fsub x22, zero, x22
	sw x22, 2(x36)
	j trace_diffuse_rays_cont_b4150 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4141:
# B4141
	lw x22, 0(x31)
	lw x24, 5(x23)
	lw x24, 0(x24)
	fsub x22, x22, x24
	lw x24, 1(x31)
	lw x32, 5(x23)
	lw x32, 1(x32)
	fsub x24, x24, x32
	lw x32, 2(x31)
	lw x33, 5(x23)
	lw x33, 2(x33)
	fsub x32, x32, x33
	lw x33, 4(x23)
	lw x33, 0(x33)
	fmul x33, x22, x33
	lw x35, 4(x23)
	lw x35, 1(x35)
	fmul x35, x24, x35
	lw x93, 4(x23)
	lw x93, 2(x93)
	fmul x93, x32, x93
	lw x94, 3(x23)
	bne	x94, zero, trace_diffuse_rays_beqelse_b4143
# B4142
	sw x33, 0(x36)
	sw x35, 1(x36)
	sw x93, 2(x36)
	j trace_diffuse_rays_cont_b4144 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4143:
# B4143
	lw x94, 9(x23)
	lw x94, 2(x94)
	fmul x94, x24, x94
	lw x95, 9(x23)
	lw x95, 1(x95)
	fmul x95, x32, x95
	fadd x94, x94, x95
	fmul x94, x94, x37
	fadd x33, x33, x94
	sw x33, 0(x36)
	lw x33, 9(x23)
	lw x33, 2(x33)
	fmul x33, x22, x33
	lw x94, 9(x23)
	lw x94, 0(x94)
	fmul x32, x32, x94
	fadd x32, x33, x32
	fmul x32, x32, x37
	fadd x32, x35, x32
	sw x32, 1(x36)
	lw x32, 9(x23)
	lw x32, 1(x32)
	fmul x22, x22, x32
	lw x32, 9(x23)
	lw x32, 0(x32)
	fmul x24, x24, x32
	fadd x22, x22, x24
	fmul x22, x22, x37
	fadd x22, x93, x22
	sw x22, 2(x36)
trace_diffuse_rays_cont_b4144:
# B4144
	lw x22, 6(x23)
	lw x24, 0(x36)
	fmul x24, x24, x24
	lw x32, 1(x36)
	fmul x32, x32, x32
	fadd x24, x24, x32
	lw x32, 2(x36)
	fmul x32, x32, x32
	fadd x24, x24, x32
	fsqrt x24, x24
	feq x32, x24, zero
	bne	x32, zero, trace_diffuse_rays_beqelse_b4146
# B4145
	bne	x22, zero, trace_diffuse_rays_beqelse_b4148
# B4147
	fdiv x22, x16, x24
	j trace_diffuse_rays_cont_b4149 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4148:
# B4148
	fdiv x22, x38, x24
	j trace_diffuse_rays_cont_b4149 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4146:
# B4146
	mv x22, x16
trace_diffuse_rays_cont_b4149:
# B4149
	lw x24, 0(x36)
	fmul x24, x24, x22
	sw x24, 0(x36)
	lw x24, 1(x36)
	fmul x24, x24, x22
	sw x24, 1(x36)
	lw x24, 2(x36)
	fmul x22, x24, x22
	sw x22, 2(x36)
trace_diffuse_rays_cont_b4150:
# B4150
	lw x22, 0(x23)
	lw x24, 8(x23)
	lw x24, 0(x24)
	sw x24, 0(x39)
	lw x24, 8(x23)
	lw x24, 1(x24)
	sw x24, 1(x39)
	lw x24, 8(x23)
	lw x24, 2(x24)
	sw x24, 2(x39)
	bne	x22, x100, trace_diffuse_rays_beqelse_b4152
# B4151
	lw x22, 0(x31)
	lw x24, 5(x23)
	lw x24, 0(x24)
	fsub x22, x22, x24
	fmul x24, x22, x40
	floor x24, x24
	fmul x24, x24, x5
	fsub x22, x22, x24
	fle x22, x6, x22
	xori x22, x22, 1
	lw x24, 2(x31)
	lw x32, 5(x23)
	lw x32, 2(x32)
	fsub x24, x24, x32
	fmul x32, x24, x40
	floor x32, x32
	fmul x32, x32, x5
	fsub x24, x24, x32
	fle x24, x6, x24
	xori x24, x24, 1
	bne	x22, zero, trace_diffuse_rays_beqelse_b4154
# B4153
	bne	x24, zero, trace_diffuse_rays_beqelse_b4156
# B4155
	mv x32, x76
	j trace_diffuse_rays_cont_b4159 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4156:
# B4156
	mv x32, zero
	j trace_diffuse_rays_cont_b4159 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4154:
# B4154
	bne	x24, zero, trace_diffuse_rays_beqelse_b4158
# B4157
	mv x32, zero
	j trace_diffuse_rays_cont_b4159 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4158:
# B4158
	mv x32, x76
trace_diffuse_rays_cont_b4159:
# B4159
	sw x32, 1(x39)
	j trace_diffuse_rays_cont_b4238 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4152:
# B4152
	bne	x22, x11, trace_diffuse_rays_beqelse_b4161
# B4160
	lw x22, 1(x31)
	fmul x22, x22, x65
	fle x24, x22, zero
	xori x24, x24, 1
	fabs x22, x22
	mv x33, x66
	mv x32, x22
trace_diffuse_rays_loop_b4162:
# B4162
	fle x35, x32, x33
	bne	x35, zero, trace_diffuse_rays_beqelse_b4165
# B4163
	fmul x33, x33, x67
	j trace_diffuse_rays_loop_b4162 # loopback to while entry from B4163
trace_diffuse_rays_beqelse_b4165:
# B4165
	mv x37, x22
	mv x38, x33
trace_diffuse_rays_loop_b4166:
# B4166
	fle x22, x66, x37
	beq	x22, zero, trace_diffuse_rays_bneelse_b4171
# B4168
	fle x22, x37, x38
	fdiv x32, x38, x67
	bne	x22, zero, trace_diffuse_rays_beqelse_b4170
# B4169
	fsub x37, x37, x38
	mv x38, x32
	j trace_diffuse_rays_loop_b4166 # loopback to while entry from B4169
trace_diffuse_rays_beqelse_b4170:
# B4170
	mv x38, x32
	j trace_diffuse_rays_loop_b4166 # loopback to while entry from B4170
trace_diffuse_rays_bneelse_b4171:
# B4171
	fle x22, x68, x37
	bne	x22, zero, trace_diffuse_rays_beqelse_b4173
# B4172
	mv x32, x37
	j trace_diffuse_rays_cont_b4174 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4173:
# B4173
	fsub x32, x37, x68
trace_diffuse_rays_cont_b4174:
# B4174
	xor x22, x22, x24
	fle x24, x69, x32
	bne	x24, zero, trace_diffuse_rays_beqelse_b4176
# B4175
	mv x24, x32
	j trace_diffuse_rays_cont_b4177 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4176:
# B4176
	fsub x24, x68, x32
trace_diffuse_rays_cont_b4177:
# B4177
	fle x32, x7, x24
	bne	x32, zero, trace_diffuse_rays_beqelse_b4179
# B4178
	fmul x32, x24, x24
	fmul x33, x32, x72
	fadd x33, x71, x33
	fmul x33, x32, x33
	fadd x33, x70, x33
	fmul x32, x32, x33
	fadd x32, x16, x32
	fmul x24, x24, x32
	j trace_diffuse_rays_cont_b4180 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4179:
# B4179
	fsub x24, x69, x24
	fmul x24, x24, x24
	fmul x32, x24, x75
	fadd x32, x74, x32
	fmul x32, x24, x32
	fadd x32, x73, x32
	fmul x24, x24, x32
	fadd x24, x16, x24
trace_diffuse_rays_cont_b4180:
# B4180
	fle x32, x24, zero
	beq	x22, x32, trace_diffuse_rays_bneelse_b4182
# B4181
	mv x22, x24
	j trace_diffuse_rays_cont_b4183 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4182:
# B4182
	fsub x22, zero, x24
trace_diffuse_rays_cont_b4183:
# B4183
	fmul x22, x22, x22
	fmul x24, x76, x22
	sw x24, 0(x39)
	fsub x22, x16, x22
	fmul x22, x76, x22
	sw x22, 1(x39)
	j trace_diffuse_rays_cont_b4238 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4161:
# B4161
	bne	x22, x15, trace_diffuse_rays_beqelse_b4185
# B4184
	lw x22, 0(x31)
	lw x24, 5(x23)
	lw x24, 0(x24)
	fsub x22, x22, x24
	lw x24, 2(x31)
	lw x32, 5(x23)
	lw x32, 2(x32)
	fsub x24, x24, x32
	fmul x22, x22, x22
	fmul x24, x24, x24
	fadd x22, x22, x24
	fsqrt x22, x22
	fdiv x22, x22, x6
	floor x24, x22
	fsub x22, x22, x24
	fmul x22, x22, x77
	fabs x22, x22
	mv x32, x66
	mv x24, x22
trace_diffuse_rays_loop_b4186:
# B4186
	fle x33, x24, x32
	bne	x33, zero, trace_diffuse_rays_beqelse_b4189
# B4187
	fmul x32, x32, x67
	j trace_diffuse_rays_loop_b4186 # loopback to while entry from B4187
trace_diffuse_rays_beqelse_b4189:
# B4189
	mv x37, x32
	mv x35, x22
trace_diffuse_rays_loop_b4190:
# B4190
	fle x22, x66, x35
	beq	x22, zero, trace_diffuse_rays_bneelse_b4195
# B4192
	fle x22, x35, x37
	fdiv x24, x37, x67
	bne	x22, zero, trace_diffuse_rays_beqelse_b4194
# B4193
	fsub x35, x35, x37
	mv x37, x24
	j trace_diffuse_rays_loop_b4190 # loopback to while entry from B4193
trace_diffuse_rays_beqelse_b4194:
# B4194
	mv x37, x24
	j trace_diffuse_rays_loop_b4190 # loopback to while entry from B4194
trace_diffuse_rays_bneelse_b4195:
# B4195
	fle x22, x68, x35
	bne	x22, zero, trace_diffuse_rays_beqelse_b4197
# B4196
	mv x24, x35
	j trace_diffuse_rays_cont_b4198 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4197:
# B4197
	fsub x24, x35, x68
trace_diffuse_rays_cont_b4198:
# B4198
	bne	x22, zero, trace_diffuse_rays_beqelse_b4200
# B4199
	mv x32, x100
	j trace_diffuse_rays_cont_b4201 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4200:
# B4200
	mv x32, zero
trace_diffuse_rays_cont_b4201:
# B4201
	fle x22, x69, x24
	bne	x22, zero, trace_diffuse_rays_beqelse_b4203
	j trace_diffuse_rays_cont_b4204 # adhoc jump(3)
trace_diffuse_rays_beqelse_b4203:
# B4203
	fsub x24, x68, x24
trace_diffuse_rays_cont_b4204:
# B4204
	xor x22, x22, x32
	fle x32, x7, x24
	bne	x32, zero, trace_diffuse_rays_beqelse_b4206
trace_diffuse_rays_cont_b4205:
# B4205
	fmul x24, x24, x24
	fmul x32, x24, x75
	fadd x32, x74, x32
	fmul x32, x24, x32
	fadd x32, x73, x32
	fmul x24, x24, x32
	fadd x24, x16, x24
	j trace_diffuse_rays_cont_b4207 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4206:
# B4206
	fsub x24, x69, x24
	fmul x32, x24, x24
	fmul x33, x32, x72
	fadd x33, x71, x33
	fmul x33, x32, x33
	fadd x33, x70, x33
	fmul x32, x32, x33
	fadd x32, x16, x32
	fmul x24, x24, x32
trace_diffuse_rays_cont_b4207:
# B4207
	fle x32, x24, zero
	beq	x22, x32, trace_diffuse_rays_bneelse_b4209
# B4208
	mv x22, x24
	j trace_diffuse_rays_cont_b4210 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4209:
# B4209
	fsub x22, zero, x24
trace_diffuse_rays_cont_b4210:
# B4210
	fmul x22, x22, x22
	fmul x24, x22, x76
	sw x24, 1(x39)
	fsub x22, x16, x22
	fmul x22, x22, x76
	sw x22, 2(x39)
	j trace_diffuse_rays_cont_b4238 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4185:
# B4185
	bne	x22, x78, trace_diffuse_rays_beqelse_b4238
# B4211
	lw x22, 0(x31)
	lw x24, 5(x23)
	lw x24, 0(x24)
	fsub x22, x22, x24
	lw x24, 4(x23)
	lw x24, 0(x24)
	fsqrt x24, x24
	fmul x22, x22, x24
	lw x24, 2(x31)
	lw x32, 5(x23)
	lw x32, 2(x32)
	fsub x24, x24, x32
	lw x32, 4(x23)
	lw x32, 2(x32)
	fsqrt x32, x32
	fmul x24, x24, x32
	fmul x32, x22, x22
	fmul x33, x24, x24
	fadd x32, x32, x33
	fabs x33, x22
	fle x33, x79, x33
	beq	x33, zero, trace_diffuse_rays_bneelse_b4214
# B4213
	fdiv x22, x24, x22
	fabs x22, x22
	fle x24, x22, zero
	xori x24, x24, 1
	fabs x33, x22
	fle x35, x8, x33
	bne	x35, zero, trace_diffuse_rays_beqelse_b4216
# B4215
	fmul x24, x22, x22
	fmul x33, x24, x85
	fadd x33, x84, x33
	fmul x33, x24, x33
	fadd x33, x83, x33
	fmul x33, x24, x33
	fadd x33, x82, x33
	fmul x33, x24, x33
	fadd x33, x81, x33
	fmul x33, x24, x33
	fadd x33, x80, x33
	fmul x24, x24, x33
	fadd x24, x16, x24
	fmul x22, x22, x24
	j trace_diffuse_rays_cont_b4222 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4216:
# B4216
	fle x22, x86, x33
	bne	x22, zero, trace_diffuse_rays_beqelse_b4218
# B4217
	fsub x22, x33, x16
	fadd x33, x33, x16
	fdiv x22, x22, x33
	fmul x33, x22, x22
	fmul x35, x33, x85
	fadd x35, x84, x35
	fmul x35, x33, x35
	fadd x35, x83, x35
	fmul x35, x33, x35
	fadd x35, x82, x35
	fmul x35, x33, x35
	fadd x35, x81, x35
	fmul x35, x33, x35
	fadd x35, x80, x35
	fmul x33, x33, x35
	fadd x33, x16, x33
	fmul x22, x22, x33
	fadd x22, x7, x22
	j trace_diffuse_rays_cont_b4219 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4218:
# B4218
	fdiv x22, x16, x33
	fmul x33, x22, x22
	fmul x35, x33, x85
	fadd x35, x84, x35
	fmul x35, x33, x35
	fadd x35, x83, x35
	fmul x35, x33, x35
	fadd x35, x82, x35
	fmul x35, x33, x35
	fadd x35, x81, x35
	fmul x35, x33, x35
	fadd x35, x80, x35
	fmul x33, x33, x35
	fadd x33, x16, x33
	fmul x22, x22, x33
	fsub x22, x69, x22
trace_diffuse_rays_cont_b4219:
# B4219
	bne	x24, zero, trace_diffuse_rays_beqelse_b4222
# B4220
	fsub x22, zero, x22
trace_diffuse_rays_beqelse_b4222:
trace_diffuse_rays_cont_b4222:
# B4222
	fmul x22, x22, x87
	fdiv x22, x22, x77
	j trace_diffuse_rays_cont_b4223 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4214:
# B4214
	lui x22, 268032
trace_diffuse_rays_cont_b4223:
# B4223
	floor x24, x22
	fsub x22, x22, x24
	lw x24, 1(x31)
	lw x33, 5(x23)
	lw x33, 1(x33)
	fsub x24, x24, x33
	lw x33, 4(x23)
	lw x33, 1(x33)
	fsqrt x33, x33
	fmul x24, x24, x33
	fabs x33, x32
	fle x33, x79, x33
	beq	x33, zero, trace_diffuse_rays_bneelse_b4225
# B4224
	fdiv x24, x24, x32
	fabs x24, x24
	fle x32, x24, zero
	xori x32, x32, 1
	fabs x33, x24
	fle x35, x8, x33
	bne	x35, zero, trace_diffuse_rays_beqelse_b4227
# B4226
	fmul x32, x24, x24
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
	fadd x32, x16, x32
	fmul x24, x24, x32
	j trace_diffuse_rays_cont_b4233 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4227:
# B4227
	fle x24, x86, x33
	bne	x24, zero, trace_diffuse_rays_beqelse_b4229
# B4228
	fsub x24, x33, x16
	fadd x33, x33, x16
	fdiv x24, x24, x33
	fmul x33, x24, x24
	fmul x35, x33, x85
	fadd x35, x84, x35
	fmul x35, x33, x35
	fadd x35, x83, x35
	fmul x35, x33, x35
	fadd x35, x82, x35
	fmul x35, x33, x35
	fadd x35, x81, x35
	fmul x35, x33, x35
	fadd x35, x80, x35
	fmul x33, x33, x35
	fadd x33, x16, x33
	fmul x24, x24, x33
	fadd x24, x7, x24
	j trace_diffuse_rays_cont_b4230 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4229:
# B4229
	fdiv x24, x16, x33
	fmul x33, x24, x24
	fmul x35, x33, x85
	fadd x35, x84, x35
	fmul x35, x33, x35
	fadd x35, x83, x35
	fmul x35, x33, x35
	fadd x35, x82, x35
	fmul x35, x33, x35
	fadd x35, x81, x35
	fmul x35, x33, x35
	fadd x35, x80, x35
	fmul x33, x33, x35
	fadd x33, x16, x33
	fmul x24, x24, x33
	fsub x24, x69, x24
trace_diffuse_rays_cont_b4230:
# B4230
	bne	x32, zero, trace_diffuse_rays_beqelse_b4233
# B4231
	fsub x24, zero, x24
trace_diffuse_rays_beqelse_b4233:
trace_diffuse_rays_cont_b4233:
# B4233
	fmul x24, x24, x87
	fdiv x24, x24, x77
	j trace_diffuse_rays_cont_b4234 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4225:
# B4225
	lui x24, 268032
trace_diffuse_rays_cont_b4234:
# B4234
	floor x32, x24
	fsub x24, x24, x32
	fsub x22, x37, x22
	fmul x22, x22, x22
	fsub x22, x88, x22
	fsub x24, x37, x24
	fmul x24, x24, x24
	fsub x22, x22, x24
	fle x24, zero, x22
	beq	x24, zero, trace_diffuse_rays_bneelse_b4236
# B4235
	mv x32, x22
	j trace_diffuse_rays_cont_b4237 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4236:
# B4236
	mv x32, zero
trace_diffuse_rays_cont_b4237:
# B4237
	fmul x22, x76, x32
	fdiv x22, x22, x89
	sw x22, 2(x39)
trace_diffuse_rays_beqelse_b4238:
trace_diffuse_rays_cont_b4238:
# B4238
	lw x22, 0(x25)
	mv x25, x22
	mv x24, zero
trace_diffuse_rays_loop_b4239:
# B4239
	add x4, x25, x24
	lw x22, 0(x4)
	lw x32, 0(x22)
	beq	x32, x28, trace_diffuse_rays_bneelse_b4465
# B4241
	bne	x32, x26, trace_diffuse_rays_beqelse_b4243
# B4242
	mv x32, x100
	j trace_diffuse_rays_cont_b4375 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4243:
# B4243
	add x4, x12, x32
	lw x33, 0(x4)
	lw x35, 0(x31)
	lw x37, 5(x33)
	lw x37, 0(x37)
	fsub x35, x35, x37
	lw x37, 1(x31)
	lw x38, 5(x33)
	lw x38, 1(x38)
	fsub x37, x37, x38
	lw x38, 2(x31)
	lw x40, 5(x33)
	lw x40, 2(x40)
	fsub x38, x38, x40
	lw x40, 1(x9)
	add x4, x40, x32
	lw x32, 0(x4)
	lw x40, 1(x33)
	bne	x40, x100, trace_diffuse_rays_beqelse_b4245
# B4244
	lw x40, 0(x9)
	lw x5, 0(x32)
	fsub x5, x5, x35
	lw x6, 1(x32)
	fmul x5, x5, x6
	lw x6, 1(x40)
	fmul x6, x5, x6
	fadd x6, x6, x37
	fabs x6, x6
	lw x65, 4(x33)
	lw x65, 1(x65)
	fle x6, x65, x6
	bne	x6, zero, trace_diffuse_rays_beqelse_b4251
# B4247
	lw x6, 2(x40)
	fmul x6, x5, x6
	fadd x6, x6, x38
	fabs x6, x6
	lw x65, 4(x33)
	lw x65, 2(x65)
	fle x6, x65, x6
	bne	x6, zero, trace_diffuse_rays_beqelse_b4251
# B4249
	lw x6, 1(x32)
	feq x6, x6, zero
	xori x6, x6, 1
	mv x65, x6
# B4250
	bne	x65, zero, trace_diffuse_rays_beqelse_b4252
trace_diffuse_rays_beqelse_b4251:
# B4251
	lw x5, 2(x32)
	fsub x5, x5, x37
	lw x6, 3(x32)
	fmul x5, x5, x6
	lw x6, 0(x40)
	fmul x6, x5, x6
	fadd x6, x6, x35
	fabs x6, x6
	lw x65, 4(x33)
	lw x65, 0(x65)
	fle x6, x65, x6
	bne	x6, zero, trace_diffuse_rays_beqelse_b4258
# B4254
	lw x6, 2(x40)
	fmul x6, x5, x6
	fadd x6, x6, x38
	fabs x6, x6
	lw x65, 4(x33)
	lw x65, 2(x65)
	fle x6, x65, x6
	bne	x6, zero, trace_diffuse_rays_beqelse_b4258
# B4256
	lw x6, 3(x32)
	feq x6, x6, zero
	xori x6, x6, 1
	mv x65, x6
# B4257
	bne	x65, zero, trace_diffuse_rays_beqelse_b4259
trace_diffuse_rays_beqelse_b4258:
# B4258
	lw x5, 4(x32)
	fsub x38, x5, x38
	lw x5, 5(x32)
	fmul x38, x38, x5
	lw x5, 0(x40)
	fmul x5, x38, x5
	fadd x35, x5, x35
	fabs x35, x35
	lw x5, 4(x33)
	lw x5, 0(x5)
	fle x35, x5, x35
	bne	x35, zero, trace_diffuse_rays_beqelse_b4265
# B4261
	lw x35, 1(x40)
	fmul x35, x38, x35
	fadd x35, x35, x37
	fabs x35, x35
	lw x33, 4(x33)
	lw x33, 1(x33)
	fle x33, x33, x35
	bne	x33, zero, trace_diffuse_rays_beqelse_b4265
# B4263
	lw x32, 5(x32)
	feq x32, x32, zero
	xori x32, x32, 1
	mv x33, x32
# B4264
	bne	x33, zero, trace_diffuse_rays_beqelse_b4266
trace_diffuse_rays_beqelse_b4265:
# B4265
	j trace_diffuse_rays_cont_b4285 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4266:
# B4266
	sw x38, 0(x27)
	mv x32, x15
	j trace_diffuse_rays_cont_b4284 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4259:
# B4259
	sw x5, 0(x27)
	mv x32, x11
	j trace_diffuse_rays_cont_b4284 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4252:
# B4252
	sw x5, 0(x27)
	mv x32, x100
	j trace_diffuse_rays_cont_b4284 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4245:
# B4245
	bne	x40, x11, trace_diffuse_rays_beqelse_b4268
# B4267
	lw x33, 0(x32)
	fle x33, zero, x33
	bne	x33, zero, trace_diffuse_rays_beqelse_b4285
# B4270
	lw x33, 1(x32)
	fmul x33, x33, x35
	lw x35, 2(x32)
	fmul x35, x35, x37
	fadd x33, x33, x35
	lw x32, 3(x32)
	fmul x32, x32, x38
	fadd x32, x33, x32
	sw x32, 0(x27)
	mv x32, x100
	j trace_diffuse_rays_cont_b4284 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4268:
# B4268
	lw x40, 0(x32)
	feq x5, x40, zero
	bne	x5, zero, trace_diffuse_rays_beqelse_b4285
# B4271
	lw x5, 1(x32)
	fmul x5, x5, x35
	lw x6, 2(x32)
	fmul x6, x6, x37
	fadd x5, x5, x6
	lw x6, 3(x32)
	fmul x6, x6, x38
	fadd x5, x5, x6
	fmul x6, x35, x35
	lw x65, 4(x33)
	lw x65, 0(x65)
	fmul x6, x6, x65
	fmul x65, x37, x37
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
	bne	x65, zero, trace_diffuse_rays_beqelse_b4274
# B4273
	mv x35, x6
	j trace_diffuse_rays_cont_b4275 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4274:
# B4274
	fmul x65, x37, x38
	lw x66, 9(x33)
	lw x66, 0(x66)
	fmul x65, x65, x66
	fadd x6, x6, x65
	fmul x38, x38, x35
	lw x65, 9(x33)
	lw x65, 1(x65)
	fmul x38, x38, x65
	fadd x38, x6, x38
	fmul x35, x35, x37
	lw x37, 9(x33)
	lw x37, 2(x37)
	fmul x35, x35, x37
	fadd x35, x38, x35
trace_diffuse_rays_cont_b4275:
# B4275
	lw x37, 1(x33)
	bne	x37, x15, trace_diffuse_rays_beqelse_b4278
# B4276
	fsub x35, x35, x16
trace_diffuse_rays_beqelse_b4278:
# B4278
	fmul x37, x5, x5
	fmul x35, x40, x35
	fsub x35, x37, x35
	fle x37, x35, zero
	bne	x37, zero, trace_diffuse_rays_beqelse_b4285
# B4280
	lw x33, 6(x33)
	fsqrt x35, x35
	bne	x33, zero, trace_diffuse_rays_beqelse_b4282
# B4281
	fsub x33, x5, x35
	lw x32, 4(x32)
	fmul x32, x33, x32
	sw x32, 0(x27)
	j trace_diffuse_rays_cont_b4283 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4282:
# B4282
	fadd x33, x5, x35
	lw x32, 4(x32)
	fmul x32, x33, x32
	sw x32, 0(x27)
trace_diffuse_rays_cont_b4283:
# B4283
	mv x32, x100
trace_diffuse_rays_cont_b4284:
# B4284
	bne	x32, zero, trace_diffuse_rays_beqelse_b4286
trace_diffuse_rays_beqelse_b4285:
trace_diffuse_rays_cont_b4285:
# B4285
	addi x24, x24, 1
	j trace_diffuse_rays_cont_b4376 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4286:
# B4286
	lw x32, 0(x27)
	fle x32, x34, x32
	beq	x32, zero, trace_diffuse_rays_bneelse_b4288
# B4287
	addi x24, x24, 1
	j trace_diffuse_rays_cont_b4376 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4288:
# B4288
	mv x35, x22
	mv x33, x100
trace_diffuse_rays_loop_b4289:
# B4289
	add x4, x35, x33
	lw x32, 0(x4)
	beq	x32, x28, trace_diffuse_rays_bneelse_b4373
# B4291
	add x4, x29, x32
	lw x32, 0(x4)
	mv x37, zero
	mv x38, x32
trace_diffuse_rays_loop_b4292:
# B4292
	add x4, x38, x37
	lw x32, 0(x4)
	beq	x32, x28, trace_diffuse_rays_bneelse_b4370
# B4294
	add x4, x38, x37
	lw x32, 0(x4)
	add x4, x12, x32
	lw x40, 0(x4)
	lw x5, 0(x31)
	lw x6, 5(x40)
	lw x6, 0(x6)
	fsub x5, x5, x6
	lw x6, 1(x31)
	lw x65, 5(x40)
	lw x65, 1(x65)
	fsub x6, x6, x65
	lw x65, 2(x31)
	lw x66, 5(x40)
	lw x66, 2(x66)
	fsub x65, x65, x66
	lw x66, 1(x9)
	add x4, x66, x32
	lw x66, 0(x4)
	lw x67, 1(x40)
	bne	x67, x100, trace_diffuse_rays_beqelse_b4296
# B4295
	lw x67, 0(x9)
	lw x68, 0(x66)
	fsub x68, x68, x5
	lw x69, 1(x66)
	fmul x68, x68, x69
	lw x69, 1(x67)
	fmul x69, x68, x69
	fadd x69, x69, x6
	fabs x69, x69
	lw x7, 4(x40)
	lw x7, 1(x7)
	fle x69, x7, x69
	bne	x69, zero, trace_diffuse_rays_beqelse_b4302
# B4298
	lw x69, 2(x67)
	fmul x69, x68, x69
	fadd x69, x69, x65
	fabs x69, x69
	lw x7, 4(x40)
	lw x7, 2(x7)
	fle x69, x7, x69
	bne	x69, zero, trace_diffuse_rays_beqelse_b4302
# B4300
	lw x69, 1(x66)
	feq x69, x69, zero
	xori x69, x69, 1
	mv x7, x69
# B4301
	bne	x7, zero, trace_diffuse_rays_beqelse_b4303
trace_diffuse_rays_beqelse_b4302:
# B4302
	lw x68, 2(x66)
	fsub x68, x68, x6
	lw x69, 3(x66)
	fmul x68, x68, x69
	lw x69, 0(x67)
	fmul x69, x68, x69
	fadd x69, x69, x5
	fabs x69, x69
	lw x7, 4(x40)
	lw x7, 0(x7)
	fle x69, x7, x69
	bne	x69, zero, trace_diffuse_rays_beqelse_b4309
# B4305
	lw x69, 2(x67)
	fmul x69, x68, x69
	fadd x69, x69, x65
	fabs x69, x69
	lw x7, 4(x40)
	lw x7, 2(x7)
	fle x69, x7, x69
	bne	x69, zero, trace_diffuse_rays_beqelse_b4309
# B4307
	lw x69, 3(x66)
	feq x69, x69, zero
	xori x69, x69, 1
	mv x7, x69
# B4308
	bne	x7, zero, trace_diffuse_rays_beqelse_b4310
trace_diffuse_rays_beqelse_b4309:
# B4309
	lw x68, 4(x66)
	fsub x65, x68, x65
	lw x68, 5(x66)
	fmul x65, x65, x68
	lw x68, 0(x67)
	fmul x68, x65, x68
	fadd x5, x68, x5
	fabs x5, x5
	lw x68, 4(x40)
	lw x68, 0(x68)
	fle x5, x68, x5
	bne	x5, zero, trace_diffuse_rays_beqelse_b4316
# B4312
	lw x5, 1(x67)
	fmul x5, x65, x5
	fadd x5, x5, x6
	fabs x5, x5
	lw x40, 4(x40)
	lw x40, 1(x40)
	fle x40, x40, x5
	bne	x40, zero, trace_diffuse_rays_beqelse_b4316
# B4314
	lw x40, 5(x66)
	feq x40, x40, zero
	xori x40, x40, 1
	mv x5, x40
# B4315
	bne	x5, zero, trace_diffuse_rays_beqelse_b4317
trace_diffuse_rays_beqelse_b4316:
# B4316
	lw x5, 0(x27)
	j trace_diffuse_rays_cont_b4336 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4317:
# B4317
	sw x65, 0(x27)
	mv x40, x15
	j trace_diffuse_rays_cont_b4335 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4310:
# B4310
	sw x68, 0(x27)
	mv x40, x11
	j trace_diffuse_rays_cont_b4335 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4303:
# B4303
	sw x68, 0(x27)
	mv x40, x100
	j trace_diffuse_rays_cont_b4335 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4296:
# B4296
	bne	x67, x11, trace_diffuse_rays_beqelse_b4319
# B4318
	lw x40, 0(x66)
	fle x40, zero, x40
	beq	x40, zero, trace_diffuse_rays_bneelse_b4321
# B4320
	lw x5, 0(x27)
	j trace_diffuse_rays_cont_b4336 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4321:
# B4321
	lw x40, 1(x66)
	fmul x40, x40, x5
	lw x5, 2(x66)
	fmul x5, x5, x6
	fadd x40, x40, x5
	lw x5, 3(x66)
	fmul x5, x5, x65
	fadd x40, x40, x5
	sw x40, 0(x27)
	mv x40, x100
	j trace_diffuse_rays_cont_b4335 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4319:
# B4319
	lw x67, 0(x66)
	feq x68, x67, zero
	bne	x68, zero, trace_diffuse_rays_beqelse_b4323
# B4322
	lw x68, 1(x66)
	fmul x68, x68, x5
	lw x69, 2(x66)
	fmul x69, x69, x6
	fadd x68, x68, x69
	lw x69, 3(x66)
	fmul x69, x69, x65
	fadd x68, x68, x69
	fmul x69, x5, x5
	lw x7, 4(x40)
	lw x7, 0(x7)
	fmul x69, x69, x7
	fmul x7, x6, x6
	lw x70, 4(x40)
	lw x70, 1(x70)
	fmul x7, x7, x70
	fadd x69, x69, x7
	fmul x7, x65, x65
	lw x70, 4(x40)
	lw x70, 2(x70)
	fmul x7, x7, x70
	fadd x69, x69, x7
	lw x7, 3(x40)
	bne	x7, zero, trace_diffuse_rays_beqelse_b4325
# B4324
	mv x5, x69
	j trace_diffuse_rays_cont_b4326 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4325:
# B4325
	fmul x7, x6, x65
	lw x70, 9(x40)
	lw x70, 0(x70)
	fmul x7, x7, x70
	fadd x69, x69, x7
	fmul x65, x65, x5
	lw x7, 9(x40)
	lw x7, 1(x7)
	fmul x65, x65, x7
	fadd x65, x69, x65
	fmul x5, x5, x6
	lw x6, 9(x40)
	lw x6, 2(x6)
	fmul x5, x5, x6
	fadd x5, x65, x5
trace_diffuse_rays_cont_b4326:
# B4326
	lw x6, 1(x40)
	bne	x6, x15, trace_diffuse_rays_beqelse_b4329
# B4327
	fsub x5, x5, x16
trace_diffuse_rays_beqelse_b4329:
# B4329
	fmul x6, x68, x68
	fmul x5, x67, x5
	fsub x5, x6, x5
	fle x6, x5, zero
	beq	x6, zero, trace_diffuse_rays_bneelse_b4331
# B4330
	lw x5, 0(x27)
	j trace_diffuse_rays_cont_b4336 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4331:
# B4331
	lw x40, 6(x40)
	fsqrt x5, x5
	bne	x40, zero, trace_diffuse_rays_beqelse_b4333
# B4332
	fsub x40, x68, x5
	lw x5, 4(x66)
	fmul x40, x40, x5
	sw x40, 0(x27)
	j trace_diffuse_rays_cont_b4334 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4333:
# B4333
	fadd x40, x68, x5
	lw x5, 4(x66)
	fmul x40, x40, x5
	sw x40, 0(x27)
trace_diffuse_rays_cont_b4334:
# B4334
	mv x40, x100
trace_diffuse_rays_cont_b4335:
# B4335
	lw x5, 0(x27)
	bne	x40, zero, trace_diffuse_rays_beqelse_b4337
	j trace_diffuse_rays_cont_b4336 # adhoc jump(3)
trace_diffuse_rays_beqelse_b4337:
# B4337
	fle x40, x90, x5
	xori x40, x40, 1
# B4338
	addi x37, x37, 1
	bne	x40, zero, trace_diffuse_rays_beqelse_b4340
	j trace_diffuse_rays_cont_b4339 # adhoc jump(3)
trace_diffuse_rays_beqelse_b4340:
# B4340
	fadd x32, x5, x30
	lw x40, 0(x91)
	fmul x40, x40, x32
	lw x5, 0(x31)
	fadd x40, x40, x5
	lw x5, 1(x91)
	fmul x5, x5, x32
	lw x6, 1(x31)
	fadd x5, x5, x6
	lw x6, 2(x91)
	fmul x32, x6, x32
	lw x6, 2(x31)
	fadd x32, x32, x6
	mv x66, x40
	mv x65, x38
	mv x67, x5
	mv x68, x32
	mv x6, zero
trace_diffuse_rays_loop_b4343:
# B4343
	add x4, x65, x6
	lw x32, 0(x4)
	bne	x32, x28, trace_diffuse_rays_beqelse_b4345
# B4344
	mv x40, x100
# B4366
	bne	x40, zero, trace_diffuse_rays_beqelse_b4368
	j trace_diffuse_rays_cont_b4367 # adhoc jump(3)
trace_diffuse_rays_beqelse_b4368:
# B4368
	mv x32, x100
# B4369
	bne	x32, zero, trace_diffuse_rays_beqelse_b4371
	j trace_diffuse_rays_cont_b4370 # adhoc jump(3)
trace_diffuse_rays_beqelse_b4371:
# B4371
	mv x37, x100
# B4372
	bne	x37, zero, trace_diffuse_rays_beqelse_b4374
trace_diffuse_rays_bneelse_b4373:
# B4373
	addi x24, x24, 1
	j trace_diffuse_rays_cont_b4376 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4374:
# B4374
	mv x32, x100
trace_diffuse_rays_cont_b4375:
# B4375
	addi x24, x24, 1
	bne	x32, zero, trace_diffuse_rays_beqelse_b4377
trace_diffuse_rays_cont_b4376:
# B4376
	j trace_diffuse_rays_loop_b4239 # loopback to while entry from B4376
trace_diffuse_rays_beqelse_b4377:
# B4377
	mv x35, x22
	mv x33, x100
trace_diffuse_rays_loop_b4378:
# B4378
	add x4, x35, x33
	lw x22, 0(x4)
	beq	x22, x28, trace_diffuse_rays_bneelse_b4462
# B4380
	add x4, x29, x22
	lw x22, 0(x4)
	mv x37, x22
	mv x32, zero
trace_diffuse_rays_loop_b4381:
# B4381
	add x4, x37, x32
	lw x22, 0(x4)
	beq	x22, x28, trace_diffuse_rays_bneelse_b4459
# B4383
	add x4, x37, x32
	lw x22, 0(x4)
	add x4, x12, x22
	lw x38, 0(x4)
	lw x40, 0(x31)
	lw x5, 5(x38)
	lw x5, 0(x5)
	fsub x40, x40, x5
	lw x5, 1(x31)
	lw x6, 5(x38)
	lw x6, 1(x6)
	fsub x5, x5, x6
	lw x6, 2(x31)
	lw x65, 5(x38)
	lw x65, 2(x65)
	fsub x6, x6, x65
	lw x65, 1(x9)
	add x4, x65, x22
	lw x65, 0(x4)
	lw x66, 1(x38)
	bne	x66, x100, trace_diffuse_rays_beqelse_b4385
# B4384
	lw x66, 0(x9)
	lw x67, 0(x65)
	fsub x67, x67, x40
	lw x68, 1(x65)
	fmul x67, x67, x68
	lw x68, 1(x66)
	fmul x68, x67, x68
	fadd x68, x68, x5
	fabs x68, x68
	lw x69, 4(x38)
	lw x69, 1(x69)
	fle x68, x69, x68
	bne	x68, zero, trace_diffuse_rays_beqelse_b4391
# B4387
	lw x68, 2(x66)
	fmul x68, x67, x68
	fadd x68, x68, x6
	fabs x68, x68
	lw x69, 4(x38)
	lw x69, 2(x69)
	fle x68, x69, x68
	bne	x68, zero, trace_diffuse_rays_beqelse_b4391
# B4389
	lw x68, 1(x65)
	feq x68, x68, zero
	xori x68, x68, 1
	mv x69, x68
# B4390
	bne	x69, zero, trace_diffuse_rays_beqelse_b4392
trace_diffuse_rays_beqelse_b4391:
# B4391
	lw x67, 2(x65)
	fsub x67, x67, x5
	lw x68, 3(x65)
	fmul x67, x67, x68
	lw x68, 0(x66)
	fmul x68, x67, x68
	fadd x68, x68, x40
	fabs x68, x68
	lw x69, 4(x38)
	lw x69, 0(x69)
	fle x68, x69, x68
	bne	x68, zero, trace_diffuse_rays_beqelse_b4398
# B4394
	lw x68, 2(x66)
	fmul x68, x67, x68
	fadd x68, x68, x6
	fabs x68, x68
	lw x69, 4(x38)
	lw x69, 2(x69)
	fle x68, x69, x68
	bne	x68, zero, trace_diffuse_rays_beqelse_b4398
# B4396
	lw x68, 3(x65)
	feq x68, x68, zero
	xori x68, x68, 1
	mv x69, x68
# B4397
	bne	x69, zero, trace_diffuse_rays_beqelse_b4399
trace_diffuse_rays_beqelse_b4398:
# B4398
	lw x67, 4(x65)
	fsub x6, x67, x6
	lw x67, 5(x65)
	fmul x6, x6, x67
	lw x67, 0(x66)
	fmul x67, x6, x67
	fadd x40, x67, x40
	fabs x40, x40
	lw x67, 4(x38)
	lw x67, 0(x67)
	fle x40, x67, x40
	bne	x40, zero, trace_diffuse_rays_beqelse_b4405
# B4401
	lw x40, 1(x66)
	fmul x40, x6, x40
	fadd x40, x40, x5
	fabs x40, x40
	lw x38, 4(x38)
	lw x38, 1(x38)
	fle x38, x38, x40
	bne	x38, zero, trace_diffuse_rays_beqelse_b4405
# B4403
	lw x38, 5(x65)
	feq x38, x38, zero
	xori x38, x38, 1
	mv x40, x38
# B4404
	bne	x40, zero, trace_diffuse_rays_beqelse_b4406
trace_diffuse_rays_beqelse_b4405:
# B4405
	lw x40, 0(x27)
	j trace_diffuse_rays_cont_b4425 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4406:
# B4406
	sw x6, 0(x27)
	mv x38, x15
	j trace_diffuse_rays_cont_b4424 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4399:
# B4399
	sw x67, 0(x27)
	mv x38, x11
	j trace_diffuse_rays_cont_b4424 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4392:
# B4392
	sw x67, 0(x27)
	mv x38, x100
	j trace_diffuse_rays_cont_b4424 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4385:
# B4385
	bne	x66, x11, trace_diffuse_rays_beqelse_b4408
# B4407
	lw x38, 0(x65)
	fle x38, zero, x38
	beq	x38, zero, trace_diffuse_rays_bneelse_b4410
# B4409
	lw x40, 0(x27)
	j trace_diffuse_rays_cont_b4425 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4410:
# B4410
	lw x38, 1(x65)
	fmul x38, x38, x40
	lw x40, 2(x65)
	fmul x40, x40, x5
	fadd x38, x38, x40
	lw x40, 3(x65)
	fmul x40, x40, x6
	fadd x38, x38, x40
	sw x38, 0(x27)
	mv x38, x100
	j trace_diffuse_rays_cont_b4424 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4408:
# B4408
	lw x66, 0(x65)
	feq x67, x66, zero
	bne	x67, zero, trace_diffuse_rays_beqelse_b4412
# B4411
	lw x67, 1(x65)
	fmul x67, x67, x40
	lw x68, 2(x65)
	fmul x68, x68, x5
	fadd x67, x67, x68
	lw x68, 3(x65)
	fmul x68, x68, x6
	fadd x67, x67, x68
	fmul x68, x40, x40
	lw x69, 4(x38)
	lw x69, 0(x69)
	fmul x68, x68, x69
	fmul x69, x5, x5
	lw x7, 4(x38)
	lw x7, 1(x7)
	fmul x69, x69, x7
	fadd x68, x68, x69
	fmul x69, x6, x6
	lw x7, 4(x38)
	lw x7, 2(x7)
	fmul x69, x69, x7
	fadd x68, x68, x69
	lw x69, 3(x38)
	bne	x69, zero, trace_diffuse_rays_beqelse_b4414
# B4413
	mv x40, x68
	j trace_diffuse_rays_cont_b4415 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4414:
# B4414
	fmul x69, x5, x6
	lw x7, 9(x38)
	lw x7, 0(x7)
	fmul x69, x69, x7
	fadd x68, x68, x69
	fmul x6, x6, x40
	lw x69, 9(x38)
	lw x69, 1(x69)
	fmul x6, x6, x69
	fadd x6, x68, x6
	fmul x40, x40, x5
	lw x5, 9(x38)
	lw x5, 2(x5)
	fmul x40, x40, x5
	fadd x40, x6, x40
trace_diffuse_rays_cont_b4415:
# B4415
	lw x5, 1(x38)
	bne	x5, x15, trace_diffuse_rays_beqelse_b4418
# B4416
	fsub x40, x40, x16
trace_diffuse_rays_beqelse_b4418:
# B4418
	fmul x5, x67, x67
	fmul x40, x66, x40
	fsub x40, x5, x40
	fle x5, x40, zero
	beq	x5, zero, trace_diffuse_rays_bneelse_b4420
# B4419
	lw x40, 0(x27)
	j trace_diffuse_rays_cont_b4425 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4420:
# B4420
	lw x38, 6(x38)
	fsqrt x40, x40
	bne	x38, zero, trace_diffuse_rays_beqelse_b4422
# B4421
	fsub x38, x67, x40
	lw x40, 4(x65)
	fmul x38, x38, x40
	sw x38, 0(x27)
	j trace_diffuse_rays_cont_b4423 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4422:
# B4422
	fadd x38, x67, x40
	lw x40, 4(x65)
	fmul x38, x38, x40
	sw x38, 0(x27)
trace_diffuse_rays_cont_b4423:
# B4423
	mv x38, x100
trace_diffuse_rays_cont_b4424:
# B4424
	lw x40, 0(x27)
	bne	x38, zero, trace_diffuse_rays_beqelse_b4426
	j trace_diffuse_rays_cont_b4425 # adhoc jump(3)
trace_diffuse_rays_beqelse_b4426:
# B4426
	fle x38, x90, x40
	xori x38, x38, 1
# B4427
	addi x32, x32, 1
	bne	x38, zero, trace_diffuse_rays_beqelse_b4429
	j trace_diffuse_rays_cont_b4428 # adhoc jump(3)
trace_diffuse_rays_beqelse_b4429:
# B4429
	fadd x22, x40, x30
	lw x38, 0(x91)
	fmul x38, x38, x22
	lw x40, 0(x31)
	fadd x38, x38, x40
	lw x40, 1(x91)
	fmul x40, x40, x22
	lw x5, 1(x31)
	fadd x40, x40, x5
	lw x5, 2(x91)
	fmul x22, x5, x22
	lw x5, 2(x31)
	fadd x22, x22, x5
	mv x6, x37
	mv x66, x40
	mv x65, x38
	mv x67, x22
	mv x5, zero
trace_diffuse_rays_loop_b4432:
# B4432
	add x4, x6, x5
	lw x22, 0(x4)
	bne	x22, x28, trace_diffuse_rays_beqelse_b4434
# B4433
	mv x38, x100
# B4455
	bne	x38, zero, trace_diffuse_rays_beqelse_b4457
	j trace_diffuse_rays_cont_b4456 # adhoc jump(3)
trace_diffuse_rays_beqelse_b4457:
# B4457
	mv x22, x100
# B4458
	bne	x22, zero, trace_diffuse_rays_beqelse_b4460
	j trace_diffuse_rays_cont_b4459 # adhoc jump(3)
trace_diffuse_rays_beqelse_b4460:
# B4460
	mv x32, x100
# B4461
	bne	x32, zero, trace_diffuse_rays_beqelse_b4463
trace_diffuse_rays_bneelse_b4462:
# B4462
	j trace_diffuse_rays_loop_b4239 # loopback to while entry from B4462
trace_diffuse_rays_beqelse_b4463:
# B4463
	mv x22, x100
# B4464
	bne	x22, zero, trace_diffuse_rays_beqelse_b4470
trace_diffuse_rays_bneelse_b4465:
# B4465
	lw x22, 0(x36)
	lw x24, 0(x91)
	fmul x22, x22, x24
	lw x24, 1(x36)
	lw x25, 1(x91)
	fmul x24, x24, x25
	fadd x22, x22, x24
	lw x24, 2(x36)
	lw x25, 2(x91)
	fmul x24, x24, x25
	fadd x22, x22, x24
	fsub x22, zero, x22
	fle x24, x22, zero
	beq	x24, zero, trace_diffuse_rays_bneelse_b4468
# B4467
	mv x25, zero
	j trace_diffuse_rays_cont_b4469 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4468:
# B4468
	mv x25, x22
trace_diffuse_rays_cont_b4469:
# B4469
	fmul x13, x13, x25
	lw x22, 7(x23)
	lw x22, 0(x22)
	fmul x13, x13, x22
	lw x22, 0(x92)
	lw x23, 0(x39)
	fmul x23, x13, x23
	fadd x22, x22, x23
	sw x22, 0(x92)
	lw x22, 1(x92)
	lw x23, 1(x39)
	fmul x23, x13, x23
	fadd x22, x22, x23
	sw x22, 1(x92)
	lw x22, 2(x92)
	lw x23, 2(x39)
	fmul x13, x13, x23
	fadd x13, x22, x13
	sw x13, 2(x92)
trace_diffuse_rays_beqelse_b4470:
trace_diffuse_rays_cont_b4470:
# B4470
	addi x21, x21, -2
	j trace_diffuse_rays_loop_b3381 # loopback to while entry from B4470
trace_diffuse_rays_beqelse_b4434:
# B4434
	add x4, x12, x22
	lw x22, 0(x4)
	lw x38, 5(x22)
	lw x38, 0(x38)
	fsub x38, x65, x38
	lw x40, 5(x22)
	lw x40, 1(x40)
	fsub x40, x66, x40
	lw x68, 5(x22)
	lw x68, 2(x68)
	fsub x68, x67, x68
	lw x69, 1(x22)
	bne	x69, x100, trace_diffuse_rays_beqelse_b4436
# B4435
	fabs x38, x38
	lw x69, 4(x22)
	lw x69, 0(x69)
	fle x38, x69, x38
	bne	x38, zero, trace_diffuse_rays_beqelse_b4442
# B4438
	fabs x38, x40
	lw x40, 4(x22)
	lw x40, 1(x40)
	fle x38, x40, x38
	bne	x38, zero, trace_diffuse_rays_beqelse_b4442
# B4440
	fabs x38, x68
	lw x40, 4(x22)
	lw x40, 2(x40)
	fle x38, x40, x38
	xori x38, x38, 1
	mv x40, x38
# B4441
	bne	x40, zero, trace_diffuse_rays_beqelse_b4443
trace_diffuse_rays_beqelse_b4442:
# B4442
	lw x22, 6(x22)
	xori x22, x22, 1
	j trace_diffuse_rays_cont_b4452 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4443:
# B4443
	lw x22, 6(x22)
	j trace_diffuse_rays_cont_b4452 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4436:
# B4436
	bne	x69, x11, trace_diffuse_rays_beqelse_b4445
# B4444
	lw x69, 4(x22)
	lw x7, 0(x69)
	fmul x38, x7, x38
	lw x7, 1(x69)
	fmul x40, x7, x40
	fadd x38, x38, x40
	lw x40, 2(x69)
	fmul x40, x40, x68
	fadd x38, x38, x40
	lw x22, 6(x22)
	fle x38, zero, x38
	xori x38, x38, 1
	xor x22, x22, x38
	xori x22, x22, 1
	j trace_diffuse_rays_cont_b4452 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4445:
# B4445
	fmul x69, x38, x38
	lw x7, 4(x22)
	lw x7, 0(x7)
	fmul x69, x69, x7
	fmul x7, x40, x40
	lw x70, 4(x22)
	lw x70, 1(x70)
	fmul x7, x7, x70
	fadd x69, x69, x7
	fmul x7, x68, x68
	lw x70, 4(x22)
	lw x70, 2(x70)
	fmul x7, x7, x70
	fadd x69, x69, x7
	lw x7, 3(x22)
	bne	x7, zero, trace_diffuse_rays_beqelse_b4447
# B4446
	mv x38, x69
	j trace_diffuse_rays_cont_b4448 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4447:
# B4447
	fmul x7, x40, x68
	lw x70, 9(x22)
	lw x70, 0(x70)
	fmul x7, x7, x70
	fadd x69, x69, x7
	fmul x68, x68, x38
	lw x7, 9(x22)
	lw x7, 1(x7)
	fmul x68, x68, x7
	fadd x68, x69, x68
	fmul x38, x38, x40
	lw x40, 9(x22)
	lw x40, 2(x40)
	fmul x38, x38, x40
	fadd x38, x68, x38
trace_diffuse_rays_cont_b4448:
# B4448
	lw x40, 1(x22)
	bne	x40, x15, trace_diffuse_rays_beqelse_b4451
# B4449
	fsub x38, x38, x16
trace_diffuse_rays_beqelse_b4451:
# B4451
	lw x22, 6(x22)
	fle x38, zero, x38
	xori x38, x38, 1
	xor x22, x22, x38
	xori x22, x22, 1
trace_diffuse_rays_cont_b4452:
# B4452
	bne	x22, zero, trace_diffuse_rays_beqelse_b4456
# B4453
	addi x5, x5, 1
	j trace_diffuse_rays_loop_b4432 # loopback to while entry from B4453
trace_diffuse_rays_beqelse_b4456:
trace_diffuse_rays_cont_b4456:
# B4456
	j trace_diffuse_rays_loop_b4381 # loopback to while entry from B4456
trace_diffuse_rays_beqelse_b4412:
# B4412
	lw x40, 0(x27)
trace_diffuse_rays_cont_b4425:
# B4425
	addi x32, x32, 1
trace_diffuse_rays_cont_b4428:
# B4428
	add x4, x12, x22
	lw x22, 0(x4)
	lw x22, 6(x22)
	beq	x22, zero, trace_diffuse_rays_bneelse_b4459
	j	trace_diffuse_rays_loop_b4381 # moved need extra jump
trace_diffuse_rays_bneelse_b4459:
trace_diffuse_rays_cont_b4459:
# B4459
	addi x33, x33, 1
	j trace_diffuse_rays_loop_b4378 # loopback to while entry from B4459
	j trace_diffuse_rays_loop_b4381 # loopback to while entry from B4428
trace_diffuse_rays_beqelse_b4345:
# B4345
	add x4, x12, x32
	lw x32, 0(x4)
	lw x40, 5(x32)
	lw x40, 0(x40)
	fsub x40, x66, x40
	lw x5, 5(x32)
	lw x5, 1(x5)
	fsub x5, x67, x5
	lw x69, 5(x32)
	lw x69, 2(x69)
	fsub x69, x68, x69
	lw x7, 1(x32)
	bne	x7, x100, trace_diffuse_rays_beqelse_b4347
# B4346
	fabs x40, x40
	lw x7, 4(x32)
	lw x7, 0(x7)
	fle x40, x7, x40
	bne	x40, zero, trace_diffuse_rays_beqelse_b4353
# B4349
	fabs x40, x5
	lw x5, 4(x32)
	lw x5, 1(x5)
	fle x40, x5, x40
	bne	x40, zero, trace_diffuse_rays_beqelse_b4353
# B4351
	fabs x40, x69
	lw x5, 4(x32)
	lw x5, 2(x5)
	fle x40, x5, x40
	xori x40, x40, 1
	mv x5, x40
# B4352
	bne	x5, zero, trace_diffuse_rays_beqelse_b4354
trace_diffuse_rays_beqelse_b4353:
# B4353
	lw x32, 6(x32)
	xori x32, x32, 1
	j trace_diffuse_rays_cont_b4363 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4354:
# B4354
	lw x32, 6(x32)
	j trace_diffuse_rays_cont_b4363 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4347:
# B4347
	bne	x7, x11, trace_diffuse_rays_beqelse_b4356
# B4355
	lw x7, 4(x32)
	lw x70, 0(x7)
	fmul x40, x70, x40
	lw x70, 1(x7)
	fmul x5, x70, x5
	fadd x40, x40, x5
	lw x5, 2(x7)
	fmul x5, x5, x69
	fadd x40, x40, x5
	lw x32, 6(x32)
	fle x40, zero, x40
	xori x40, x40, 1
	xor x32, x32, x40
	xori x32, x32, 1
	j trace_diffuse_rays_cont_b4363 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4356:
# B4356
	fmul x7, x40, x40
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
	bne	x70, zero, trace_diffuse_rays_beqelse_b4358
# B4357
	mv x40, x7
	j trace_diffuse_rays_cont_b4359 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4358:
# B4358
	fmul x70, x5, x69
	lw x71, 9(x32)
	lw x71, 0(x71)
	fmul x70, x70, x71
	fadd x7, x7, x70
	fmul x69, x69, x40
	lw x70, 9(x32)
	lw x70, 1(x70)
	fmul x69, x69, x70
	fadd x69, x7, x69
	fmul x40, x40, x5
	lw x5, 9(x32)
	lw x5, 2(x5)
	fmul x40, x40, x5
	fadd x40, x69, x40
trace_diffuse_rays_cont_b4359:
# B4359
	lw x5, 1(x32)
	bne	x5, x15, trace_diffuse_rays_beqelse_b4362
# B4360
	fsub x40, x40, x16
trace_diffuse_rays_beqelse_b4362:
# B4362
	lw x32, 6(x32)
	fle x40, zero, x40
	xori x40, x40, 1
	xor x32, x32, x40
	xori x32, x32, 1
trace_diffuse_rays_cont_b4363:
# B4363
	bne	x32, zero, trace_diffuse_rays_beqelse_b4367
# B4364
	addi x6, x6, 1
	j trace_diffuse_rays_loop_b4343 # loopback to while entry from B4364
trace_diffuse_rays_beqelse_b4367:
trace_diffuse_rays_cont_b4367:
# B4367
	j trace_diffuse_rays_loop_b4292 # loopback to while entry from B4367
trace_diffuse_rays_beqelse_b4323:
# B4323
	lw x5, 0(x27)
trace_diffuse_rays_cont_b4336:
# B4336
	addi x37, x37, 1
trace_diffuse_rays_cont_b4339:
# B4339
	add x4, x12, x32
	lw x32, 0(x4)
	lw x32, 6(x32)
	beq	x32, zero, trace_diffuse_rays_bneelse_b4370
	j	trace_diffuse_rays_loop_b4292 # moved need extra jump
trace_diffuse_rays_bneelse_b4370:
trace_diffuse_rays_cont_b4370:
# B4370
	addi x33, x33, 1
	j trace_diffuse_rays_loop_b4289 # loopback to while entry from B4370
	j trace_diffuse_rays_loop_b4292 # loopback to while entry from B4339
trace_diffuse_rays_bleelse_b3383:
# B3383
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
body_pretrace_pixels.3136:
# B4471
# B4472
	mv x106, x67
	mv x103, x7
	mv x105, x66
	mv x101, x5
	mv x102, x6
	mv x104, x65
pretrace_pixels_loop_b4473:
# B4473
	bgt	zero, x102, pretrace_pixels_bleelse_b4475
# B4474
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
	lui x108, 260096
	lui x13, 784384
	bne	x11, zero, pretrace_pixels_beqelse_b4477
# B4476
	bne	zero, zero, pretrace_pixels_beqelse_b4479
# B4478
	fdiv x10, x108, x10
	j pretrace_pixels_cont_b4480 # adhoc jump(2)
pretrace_pixels_beqelse_b4479:
# B4479
	fdiv x10, x13, x10
	j pretrace_pixels_cont_b4480 # adhoc jump(2)
pretrace_pixels_beqelse_b4477:
# B4477
	lui x10, 260096
pretrace_pixels_cont_b4480:
# B4480
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
	add x4, x101, x102
	lw x14, 0(x4)
	mv x15, zero
	mv x16, x108
	mv x18, x14
	mv x17, x100
	mv x19, zero
pretrace_pixels_loop_b4481:
# B4481
	li x109, 4
	la x110, min_caml_objects
	li x111, 3
	la x112, min_caml_startp_fast
	la x113, min_caml_n_objects
	bgt	x15, x109, pretrace_pixels_bleelse_b5584
# B4482
	lw x100, 2(x18)
	la x14, min_caml_tmin
	lui x20, 321255
	addi x20, x20, -1240
	sw x20, 0(x14)
	la x21, min_caml_or_net
	lw x22, 0(x21)
	li x23, 99
	la x24, min_caml_solver_dist
	mv x27, x17
	mv x26, x22
	mv x25, zero
pretrace_pixels_loop_b4484:
# B4484
	add x4, x26, x25
	lw x22, 0(x4)
	lw x28, 0(x22)
	li x29, -1
	la x30, min_caml_and_net
	lui x31, 258048
	lui x32, 246333
	addi x32, x32, 1802
	la x33, min_caml_intersection_point
	la x34, min_caml_intersected_object_id
	la x35, min_caml_intsec_rectside
	beq	x28, x29, pretrace_pixels_bneelse_b4764
# B4486
	bne	x28, x23, pretrace_pixels_beqelse_b4488
# B4487
	mv x38, x27
	mv x37, x22
	mv x36, x12
pretrace_pixels_loop_b4489:
# B4489
	add x4, x37, x36
	lw x22, 0(x4)
	beq	x22, x29, pretrace_pixels_bneelse_b4763
# B4491
	add x4, x30, x22
	lw x22, 0(x4)
	mv x40, x38
	mv x28, zero
	mv x39, x22
pretrace_pixels_loop_b4492:
# B4492
	add x4, x39, x28
	lw x22, 0(x4)
	beq	x22, x29, pretrace_pixels_bneelse_b4592
# B4494
	add x4, x110, x22
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
	bne	x67, x12, pretrace_pixels_beqelse_b4496
# B4495
	lw x67, 0(x40)
	feq x67, x67, zero
	bne	x67, zero, pretrace_pixels_beqelse_b4507
# B4497
	lw x67, 4(x5)
	lw x68, 6(x5)
	lw x69, 0(x40)
	fle x69, zero, x69
	xori x69, x69, 1
	xor x68, x68, x69
	lw x69, 0(x67)
	bne	x68, zero, pretrace_pixels_beqelse_b4500
# B4499
	fsub x68, zero, x69
	j pretrace_pixels_cont_b4501 # adhoc jump(2)
pretrace_pixels_beqelse_b4500:
# B4500
	mv x68, x69
pretrace_pixels_cont_b4501:
# B4501
	fsub x68, x68, x6
	lw x69, 0(x40)
	fdiv x68, x68, x69
	lw x69, 1(x40)
	fmul x69, x68, x69
	fadd x69, x69, x65
	fabs x69, x69
	lw x7, 1(x67)
	fle x69, x7, x69
	bne	x69, zero, pretrace_pixels_beqelse_b4507
# B4503
	lw x69, 2(x40)
	fmul x69, x68, x69
	fadd x69, x69, x66
	fabs x69, x69
	lw x67, 2(x67)
	fle x67, x67, x69
	bne	x67, zero, pretrace_pixels_beqelse_b4507
# B4505
	sw x68, 0(x24)
	mv x69, x12
# B4506
	bne	x69, zero, pretrace_pixels_beqelse_b4508
pretrace_pixels_beqelse_b4507:
# B4507
	lw x67, 1(x40)
	feq x67, x67, zero
	bne	x67, zero, pretrace_pixels_beqelse_b4519
# B4509
	lw x67, 4(x5)
	lw x68, 6(x5)
	lw x69, 1(x40)
	fle x69, zero, x69
	xori x69, x69, 1
	xor x68, x68, x69
	lw x69, 1(x67)
	bne	x68, zero, pretrace_pixels_beqelse_b4512
# B4511
	fsub x68, zero, x69
	j pretrace_pixels_cont_b4513 # adhoc jump(2)
pretrace_pixels_beqelse_b4512:
# B4512
	mv x68, x69
pretrace_pixels_cont_b4513:
# B4513
	fsub x68, x68, x65
	lw x69, 1(x40)
	fdiv x68, x68, x69
	lw x69, 2(x40)
	fmul x69, x68, x69
	fadd x69, x69, x66
	fabs x69, x69
	lw x7, 2(x67)
	fle x69, x7, x69
	bne	x69, zero, pretrace_pixels_beqelse_b4519
# B4515
	lw x69, 0(x40)
	fmul x69, x68, x69
	fadd x69, x69, x6
	fabs x69, x69
	lw x67, 0(x67)
	fle x67, x67, x69
	bne	x67, zero, pretrace_pixels_beqelse_b4519
# B4517
	sw x68, 0(x24)
	mv x69, x12
# B4518
	bne	x69, zero, pretrace_pixels_beqelse_b4520
pretrace_pixels_beqelse_b4519:
# B4519
	lw x67, 2(x40)
	feq x67, x67, zero
	bne	x67, zero, pretrace_pixels_beqelse_b4531
# B4521
	lw x67, 4(x5)
	lw x5, 6(x5)
	lw x68, 2(x40)
	fle x68, zero, x68
	xori x68, x68, 1
	xor x5, x5, x68
	lw x68, 2(x67)
	bne	x5, zero, pretrace_pixels_beqelse_b4524
# B4523
	fsub x5, zero, x68
	j pretrace_pixels_cont_b4525 # adhoc jump(2)
pretrace_pixels_beqelse_b4524:
# B4524
	mv x5, x68
pretrace_pixels_cont_b4525:
# B4525
	fsub x5, x5, x66
	lw x66, 2(x40)
	fdiv x5, x5, x66
	lw x66, 0(x40)
	fmul x66, x5, x66
	fadd x6, x66, x6
	fabs x6, x6
	lw x66, 0(x67)
	fle x6, x66, x6
	bne	x6, zero, pretrace_pixels_beqelse_b4531
# B4527
	lw x6, 1(x40)
	fmul x6, x5, x6
	fadd x6, x6, x65
	fabs x6, x6
	lw x65, 1(x67)
	fle x6, x65, x6
	bne	x6, zero, pretrace_pixels_beqelse_b4531
# B4529
	sw x5, 0(x24)
	mv x65, x12
# B4530
	bne	x65, zero, pretrace_pixels_beqelse_b4532
pretrace_pixels_beqelse_b4531:
# B4531
	mv x5, zero
	addi x28, x28, 1
	j pretrace_pixels_cont_b4557 # adhoc jump(2)
pretrace_pixels_beqelse_b4532:
# B4532
	li x5, 3
	addi x28, x28, 1
	j pretrace_pixels_cont_b4558 # adhoc jump(2)
pretrace_pixels_beqelse_b4520:
# B4520
	mv x5, x107
	j pretrace_pixels_cont_b4556 # adhoc jump(2)
pretrace_pixels_beqelse_b4508:
# B4508
	mv x5, x12
	j pretrace_pixels_cont_b4556 # adhoc jump(2)
pretrace_pixels_beqelse_b4496:
# B4496
	bne	x67, x107, pretrace_pixels_beqelse_b4534
# B4533
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
	beq	x68, zero, pretrace_pixels_bneelse_b4536
# B4535
	mv x5, zero
	addi x28, x28, 1
	j pretrace_pixels_cont_b4557 # adhoc jump(2)
pretrace_pixels_bneelse_b4536:
# B4536
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
	sw x5, 0(x24)
	mv x5, x12
	j pretrace_pixels_cont_b4556 # adhoc jump(2)
pretrace_pixels_beqelse_b4534:
# B4534
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
	bne	x70, zero, pretrace_pixels_beqelse_b4538
# B4537
	mv x67, x7
	j pretrace_pixels_cont_b4539 # adhoc jump(2)
pretrace_pixels_beqelse_b4538:
# B4538
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
pretrace_pixels_cont_b4539:
# B4539
	feq x68, x67, zero
	bne	x68, zero, pretrace_pixels_beqelse_b4541
# B4540
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
	bne	x71, zero, pretrace_pixels_beqelse_b4543
# B4542
	mv x68, x70
	j pretrace_pixels_cont_b4544 # adhoc jump(2)
pretrace_pixels_beqelse_b4543:
# B4543
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
	fmul x68, x68, x31
	fadd x68, x70, x68
pretrace_pixels_cont_b4544:
# B4544
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
	bne	x7, zero, pretrace_pixels_beqelse_b4546
# B4545
	mv x6, x69
	j pretrace_pixels_cont_b4547 # adhoc jump(2)
pretrace_pixels_beqelse_b4546:
# B4546
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
pretrace_pixels_cont_b4547:
# B4547
	lw x65, 1(x5)
	bne	x65, x111, pretrace_pixels_beqelse_b4550
# B4548
	fsub x6, x6, x108
pretrace_pixels_beqelse_b4550:
# B4550
	fmul x65, x68, x68
	fmul x6, x67, x6
	fsub x6, x65, x6
	fle x65, x6, zero
	beq	x65, zero, pretrace_pixels_bneelse_b4552
# B4551
	mv x5, zero
	addi x28, x28, 1
	j pretrace_pixels_cont_b4557 # adhoc jump(2)
pretrace_pixels_bneelse_b4552:
# B4552
	fsqrt x6, x6
	lw x5, 6(x5)
	bne	x5, zero, pretrace_pixels_beqelse_b4554
# B4553
	fsub x5, zero, x6
	j pretrace_pixels_cont_b4555 # adhoc jump(2)
pretrace_pixels_beqelse_b4554:
# B4554
	mv x5, x6
pretrace_pixels_cont_b4555:
# B4555
	fsub x5, x5, x68
	fdiv x5, x5, x67
	sw x5, 0(x24)
	mv x5, x12
pretrace_pixels_cont_b4556:
# B4556
	addi x28, x28, 1
	bne	x5, zero, pretrace_pixels_beqelse_b4558
	j pretrace_pixels_cont_b4557 # adhoc jump(3)
pretrace_pixels_beqelse_b4558:
pretrace_pixels_cont_b4558:
# B4558
	lw x6, 0(x24)
	fle x65, x6, zero
	bne	x65, zero, pretrace_pixels_beqelse_b4591
# B4562
	lw x65, 0(x14)
	fle x65, x65, x6
	bne	x65, zero, pretrace_pixels_beqelse_b4591
# B4564
	fadd x6, x6, x32
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
pretrace_pixels_loop_b4565:
# B4565
	add x4, x69, x68
	lw x72, 0(x4)
	bne	x72, x29, pretrace_pixels_beqelse_b4567
# B4566
	mv x73, x12
# B4588
	bne	x73, zero, pretrace_pixels_beqelse_b4590
	j pretrace_pixels_cont_b4589 # adhoc jump(3)
pretrace_pixels_beqelse_b4590:
# B4590
	sw x6, 0(x14)
	sw x65, 0(x33)
	sw x66, 1(x33)
	sw x67, 2(x33)
	sw x22, 0(x34)
	sw x5, 0(x35)
	j pretrace_pixels_cont_b4591 # adhoc jump(2)
pretrace_pixels_beqelse_b4567:
# B4567
	add x4, x110, x72
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
	bne	x76, x12, pretrace_pixels_beqelse_b4569
# B4568
	fabs x73, x73
	lw x76, 4(x72)
	lw x76, 0(x76)
	fle x73, x76, x73
	bne	x73, zero, pretrace_pixels_beqelse_b4575
# B4571
	fabs x73, x74
	lw x74, 4(x72)
	lw x74, 1(x74)
	fle x73, x74, x73
	bne	x73, zero, pretrace_pixels_beqelse_b4575
# B4573
	fabs x73, x75
	lw x74, 4(x72)
	lw x74, 2(x74)
	fle x73, x74, x73
	xori x73, x73, 1
	mv x74, x73
# B4574
	bne	x74, zero, pretrace_pixels_beqelse_b4576
pretrace_pixels_beqelse_b4575:
# B4575
	lw x72, 6(x72)
	xori x72, x72, 1
	j pretrace_pixels_cont_b4585 # adhoc jump(2)
pretrace_pixels_beqelse_b4576:
# B4576
	lw x72, 6(x72)
	j pretrace_pixels_cont_b4585 # adhoc jump(2)
pretrace_pixels_beqelse_b4569:
# B4569
	bne	x76, x107, pretrace_pixels_beqelse_b4578
# B4577
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
	xor x72, x72, x73
	xori x72, x72, 1
	j pretrace_pixels_cont_b4585 # adhoc jump(2)
pretrace_pixels_beqelse_b4578:
# B4578
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
	bne	x77, zero, pretrace_pixels_beqelse_b4580
# B4579
	mv x73, x76
	j pretrace_pixels_cont_b4581 # adhoc jump(2)
pretrace_pixels_beqelse_b4580:
# B4580
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
pretrace_pixels_cont_b4581:
# B4581
	lw x74, 1(x72)
	bne	x74, x111, pretrace_pixels_beqelse_b4584
# B4582
	fsub x73, x73, x108
pretrace_pixels_beqelse_b4584:
# B4584
	lw x72, 6(x72)
	fle x73, zero, x73
	xori x73, x73, 1
	xor x72, x72, x73
	xori x72, x72, 1
pretrace_pixels_cont_b4585:
# B4585
	bne	x72, zero, pretrace_pixels_beqelse_b4589
# B4586
	addi x68, x68, 1
	j pretrace_pixels_loop_b4565 # loopback to while entry from B4586
pretrace_pixels_beqelse_b4589:
pretrace_pixels_cont_b4589:
# B4589
pretrace_pixels_beqelse_b4591:
pretrace_pixels_cont_b4591:
# B4591
	j pretrace_pixels_loop_b4492 # loopback to while entry from B4591
pretrace_pixels_beqelse_b4541:
# B4541
	mv x5, zero
	addi x28, x28, 1
pretrace_pixels_cont_b4557:
# B4557
	add x4, x110, x22
	lw x22, 0(x4)
	lw x22, 6(x22)
	beq	x22, zero, pretrace_pixels_bneelse_b4592
	j	pretrace_pixels_loop_b4492 # moved need extra jump
pretrace_pixels_bneelse_b4592:
# B4592
	addi x36, x36, 1
	j pretrace_pixels_loop_b4489 # loopback to while entry from B4592
	j pretrace_pixels_loop_b4492 # loopback to while entry from B4557
pretrace_pixels_beqelse_b4488:
# B4488
	add x4, x110, x28
	lw x28, 0(x4)
	lw x36, 0(x11)
	lw x37, 5(x28)
	lw x37, 0(x37)
	fsub x36, x36, x37
	lw x37, 1(x11)
	lw x38, 5(x28)
	lw x38, 1(x38)
	fsub x37, x37, x38
	lw x38, 2(x11)
	lw x39, 5(x28)
	lw x39, 2(x39)
	fsub x38, x38, x39
	lw x39, 1(x28)
	bne	x39, x12, pretrace_pixels_beqelse_b4594
# B4593
	lw x39, 0(x27)
	feq x39, x39, zero
	bne	x39, zero, pretrace_pixels_beqelse_b4605
# B4595
	lw x39, 4(x28)
	lw x40, 6(x28)
	lw x5, 0(x27)
	fle x5, zero, x5
	xori x5, x5, 1
	xor x40, x40, x5
	lw x5, 0(x39)
	bne	x40, zero, pretrace_pixels_beqelse_b4598
# B4597
	fsub x40, zero, x5
	j pretrace_pixels_cont_b4599 # adhoc jump(2)
pretrace_pixels_beqelse_b4598:
# B4598
	mv x40, x5
pretrace_pixels_cont_b4599:
# B4599
	fsub x40, x40, x36
	lw x5, 0(x27)
	fdiv x40, x40, x5
	lw x5, 1(x27)
	fmul x5, x40, x5
	fadd x5, x5, x37
	fabs x5, x5
	lw x6, 1(x39)
	fle x5, x6, x5
	bne	x5, zero, pretrace_pixels_beqelse_b4605
# B4601
	lw x5, 2(x27)
	fmul x5, x40, x5
	fadd x5, x5, x38
	fabs x5, x5
	lw x39, 2(x39)
	fle x39, x39, x5
	bne	x39, zero, pretrace_pixels_beqelse_b4605
# B4603
	sw x40, 0(x24)
	mv x5, x12
# B4604
	bne	x5, zero, pretrace_pixels_beqelse_b4606
pretrace_pixels_beqelse_b4605:
# B4605
	lw x39, 1(x27)
	feq x39, x39, zero
	bne	x39, zero, pretrace_pixels_beqelse_b4617
# B4607
	lw x39, 4(x28)
	lw x40, 6(x28)
	lw x5, 1(x27)
	fle x5, zero, x5
	xori x5, x5, 1
	xor x40, x40, x5
	lw x5, 1(x39)
	bne	x40, zero, pretrace_pixels_beqelse_b4610
# B4609
	fsub x40, zero, x5
	j pretrace_pixels_cont_b4611 # adhoc jump(2)
pretrace_pixels_beqelse_b4610:
# B4610
	mv x40, x5
pretrace_pixels_cont_b4611:
# B4611
	fsub x40, x40, x37
	lw x5, 1(x27)
	fdiv x40, x40, x5
	lw x5, 2(x27)
	fmul x5, x40, x5
	fadd x5, x5, x38
	fabs x5, x5
	lw x6, 2(x39)
	fle x5, x6, x5
	bne	x5, zero, pretrace_pixels_beqelse_b4617
# B4613
	lw x5, 0(x27)
	fmul x5, x40, x5
	fadd x5, x5, x36
	fabs x5, x5
	lw x39, 0(x39)
	fle x39, x39, x5
	bne	x39, zero, pretrace_pixels_beqelse_b4617
# B4615
	sw x40, 0(x24)
	mv x5, x12
# B4616
	bne	x5, zero, pretrace_pixels_beqelse_b4618
pretrace_pixels_beqelse_b4617:
# B4617
	lw x39, 2(x27)
	feq x39, x39, zero
	bne	x39, zero, pretrace_pixels_beqelse_b4629
# B4619
	lw x39, 4(x28)
	lw x28, 6(x28)
	lw x40, 2(x27)
	fle x40, zero, x40
	xori x40, x40, 1
	xor x28, x28, x40
	lw x40, 2(x39)
	bne	x28, zero, pretrace_pixels_beqelse_b4622
# B4621
	fsub x28, zero, x40
	j pretrace_pixels_cont_b4623 # adhoc jump(2)
pretrace_pixels_beqelse_b4622:
# B4622
	mv x28, x40
pretrace_pixels_cont_b4623:
# B4623
	fsub x28, x28, x38
	lw x38, 2(x27)
	fdiv x28, x28, x38
	lw x38, 0(x27)
	fmul x38, x28, x38
	fadd x36, x38, x36
	fabs x36, x36
	lw x38, 0(x39)
	fle x36, x38, x36
	bne	x36, zero, pretrace_pixels_beqelse_b4629
# B4625
	lw x36, 1(x27)
	fmul x36, x28, x36
	fadd x36, x36, x37
	fabs x36, x36
	lw x37, 1(x39)
	fle x36, x37, x36
	bne	x36, zero, pretrace_pixels_beqelse_b4629
# B4627
	sw x28, 0(x24)
	mv x37, x12
# B4628
	bne	x37, zero, pretrace_pixels_beqelse_b4630
pretrace_pixels_beqelse_b4629:
# B4629
	j pretrace_pixels_cont_b4655 # adhoc jump(2)
pretrace_pixels_beqelse_b4630:
# B4630
	mv x28, x111
	j pretrace_pixels_cont_b4654 # adhoc jump(2)
pretrace_pixels_beqelse_b4618:
# B4618
	mv x28, x107
	j pretrace_pixels_cont_b4654 # adhoc jump(2)
pretrace_pixels_beqelse_b4606:
# B4606
	mv x28, x12
	j pretrace_pixels_cont_b4654 # adhoc jump(2)
pretrace_pixels_beqelse_b4594:
# B4594
	bne	x39, x107, pretrace_pixels_beqelse_b4632
# B4631
	lw x28, 4(x28)
	lw x39, 0(x27)
	lw x40, 0(x28)
	fmul x39, x39, x40
	lw x40, 1(x27)
	lw x5, 1(x28)
	fmul x40, x40, x5
	fadd x39, x39, x40
	lw x40, 2(x27)
	lw x5, 2(x28)
	fmul x40, x40, x5
	fadd x39, x39, x40
	fle x40, x39, zero
	bne	x40, zero, pretrace_pixels_beqelse_b4655
# B4634
	lw x40, 0(x28)
	fmul x36, x40, x36
	lw x40, 1(x28)
	fmul x37, x40, x37
	fadd x36, x36, x37
	lw x28, 2(x28)
	fmul x28, x28, x38
	fadd x28, x36, x28
	fsub x28, zero, x28
	fdiv x28, x28, x39
	sw x28, 0(x24)
	mv x28, x12
	j pretrace_pixels_cont_b4654 # adhoc jump(2)
pretrace_pixels_beqelse_b4632:
# B4632
	lw x39, 0(x27)
	lw x40, 1(x27)
	lw x5, 2(x27)
	fmul x6, x39, x39
	lw x65, 4(x28)
	lw x65, 0(x65)
	fmul x6, x6, x65
	fmul x65, x40, x40
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
	bne	x65, zero, pretrace_pixels_beqelse_b4636
# B4635
	mv x39, x6
	j pretrace_pixels_cont_b4637 # adhoc jump(2)
pretrace_pixels_beqelse_b4636:
# B4636
	fmul x65, x40, x5
	lw x66, 9(x28)
	lw x66, 0(x66)
	fmul x65, x65, x66
	fadd x6, x6, x65
	fmul x5, x5, x39
	lw x65, 9(x28)
	lw x65, 1(x65)
	fmul x5, x5, x65
	fadd x5, x6, x5
	fmul x39, x39, x40
	lw x40, 9(x28)
	lw x40, 2(x40)
	fmul x39, x39, x40
	fadd x39, x5, x39
pretrace_pixels_cont_b4637:
# B4637
	feq x40, x39, zero
	bne	x40, zero, pretrace_pixels_beqelse_b4655
# B4638
	lw x40, 0(x27)
	lw x5, 1(x27)
	lw x6, 2(x27)
	fmul x65, x40, x36
	lw x66, 4(x28)
	lw x66, 0(x66)
	fmul x65, x65, x66
	fmul x66, x5, x37
	lw x67, 4(x28)
	lw x67, 1(x67)
	fmul x66, x66, x67
	fadd x65, x65, x66
	fmul x66, x6, x38
	lw x67, 4(x28)
	lw x67, 2(x67)
	fmul x66, x66, x67
	fadd x65, x65, x66
	lw x66, 3(x28)
	bne	x66, zero, pretrace_pixels_beqelse_b4641
# B4640
	mv x40, x65
	j pretrace_pixels_cont_b4642 # adhoc jump(2)
pretrace_pixels_beqelse_b4641:
# B4641
	fmul x66, x6, x37
	fmul x67, x5, x38
	fadd x66, x66, x67
	lw x67, 9(x28)
	lw x67, 0(x67)
	fmul x66, x66, x67
	fmul x67, x40, x38
	fmul x6, x6, x36
	fadd x6, x67, x6
	lw x67, 9(x28)
	lw x67, 1(x67)
	fmul x6, x6, x67
	fadd x6, x66, x6
	fmul x40, x40, x37
	fmul x5, x5, x36
	fadd x40, x40, x5
	lw x5, 9(x28)
	lw x5, 2(x5)
	fmul x40, x40, x5
	fadd x40, x6, x40
	fmul x40, x40, x31
	fadd x40, x65, x40
pretrace_pixels_cont_b4642:
# B4642
	fmul x5, x36, x36
	lw x6, 4(x28)
	lw x6, 0(x6)
	fmul x5, x5, x6
	fmul x6, x37, x37
	lw x65, 4(x28)
	lw x65, 1(x65)
	fmul x6, x6, x65
	fadd x5, x5, x6
	fmul x6, x38, x38
	lw x65, 4(x28)
	lw x65, 2(x65)
	fmul x6, x6, x65
	fadd x5, x5, x6
	lw x6, 3(x28)
	bne	x6, zero, pretrace_pixels_beqelse_b4644
# B4643
	mv x36, x5
	j pretrace_pixels_cont_b4645 # adhoc jump(2)
pretrace_pixels_beqelse_b4644:
# B4644
	fmul x6, x37, x38
	lw x65, 9(x28)
	lw x65, 0(x65)
	fmul x6, x6, x65
	fadd x5, x5, x6
	fmul x38, x38, x36
	lw x6, 9(x28)
	lw x6, 1(x6)
	fmul x38, x38, x6
	fadd x38, x5, x38
	fmul x36, x36, x37
	lw x37, 9(x28)
	lw x37, 2(x37)
	fmul x36, x36, x37
	fadd x36, x38, x36
pretrace_pixels_cont_b4645:
# B4645
	lw x37, 1(x28)
	bne	x37, x111, pretrace_pixels_beqelse_b4648
# B4646
	fsub x36, x36, x108
pretrace_pixels_beqelse_b4648:
# B4648
	fmul x37, x40, x40
	fmul x36, x39, x36
	fsub x36, x37, x36
	fle x37, x36, zero
	bne	x37, zero, pretrace_pixels_beqelse_b4655
# B4650
	fsqrt x36, x36
	lw x28, 6(x28)
	bne	x28, zero, pretrace_pixels_beqelse_b4652
# B4651
	fsub x28, zero, x36
	j pretrace_pixels_cont_b4653 # adhoc jump(2)
pretrace_pixels_beqelse_b4652:
# B4652
	mv x28, x36
pretrace_pixels_cont_b4653:
# B4653
	fsub x28, x28, x40
	fdiv x28, x28, x39
	sw x28, 0(x24)
	mv x28, x12
pretrace_pixels_cont_b4654:
# B4654
	bne	x28, zero, pretrace_pixels_beqelse_b4656
pretrace_pixels_beqelse_b4655:
pretrace_pixels_cont_b4655:
# B4655
	j pretrace_pixels_cont_b4763 # adhoc jump(2)
pretrace_pixels_beqelse_b4656:
# B4656
	lw x28, 0(x24)
	lw x36, 0(x14)
	fle x28, x36, x28
	bne	x28, zero, pretrace_pixels_beqelse_b4763
# B4658
	mv x38, x27
	mv x37, x22
	mv x36, x12
pretrace_pixels_loop_b4659:
# B4659
	add x4, x37, x36
	lw x22, 0(x4)
	beq	x22, x29, pretrace_pixels_bneelse_b4763
# B4661
	add x4, x30, x22
	lw x22, 0(x4)
	mv x40, x38
	mv x28, zero
	mv x39, x22
pretrace_pixels_loop_b4662:
# B4662
	add x4, x39, x28
	lw x22, 0(x4)
	beq	x22, x29, pretrace_pixels_bneelse_b4762
# B4664
	add x4, x110, x22
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
	bne	x67, x12, pretrace_pixels_beqelse_b4666
# B4665
	lw x67, 0(x40)
	feq x67, x67, zero
	bne	x67, zero, pretrace_pixels_beqelse_b4677
# B4667
	lw x67, 4(x5)
	lw x68, 6(x5)
	lw x69, 0(x40)
	fle x69, zero, x69
	xori x69, x69, 1
	xor x68, x68, x69
	lw x69, 0(x67)
	bne	x68, zero, pretrace_pixels_beqelse_b4670
# B4669
	fsub x68, zero, x69
	j pretrace_pixels_cont_b4671 # adhoc jump(2)
pretrace_pixels_beqelse_b4670:
# B4670
	mv x68, x69
pretrace_pixels_cont_b4671:
# B4671
	fsub x68, x68, x6
	lw x69, 0(x40)
	fdiv x68, x68, x69
	lw x69, 1(x40)
	fmul x69, x68, x69
	fadd x69, x69, x65
	fabs x69, x69
	lw x7, 1(x67)
	fle x69, x7, x69
	bne	x69, zero, pretrace_pixels_beqelse_b4677
# B4673
	lw x69, 2(x40)
	fmul x69, x68, x69
	fadd x69, x69, x66
	fabs x69, x69
	lw x67, 2(x67)
	fle x67, x67, x69
	bne	x67, zero, pretrace_pixels_beqelse_b4677
# B4675
	sw x68, 0(x24)
	mv x69, x12
# B4676
	bne	x69, zero, pretrace_pixels_beqelse_b4678
pretrace_pixels_beqelse_b4677:
# B4677
	lw x67, 1(x40)
	feq x67, x67, zero
	bne	x67, zero, pretrace_pixels_beqelse_b4689
# B4679
	lw x67, 4(x5)
	lw x68, 6(x5)
	lw x69, 1(x40)
	fle x69, zero, x69
	xori x69, x69, 1
	xor x68, x68, x69
	lw x69, 1(x67)
	bne	x68, zero, pretrace_pixels_beqelse_b4682
# B4681
	fsub x68, zero, x69
	j pretrace_pixels_cont_b4683 # adhoc jump(2)
pretrace_pixels_beqelse_b4682:
# B4682
	mv x68, x69
pretrace_pixels_cont_b4683:
# B4683
	fsub x68, x68, x65
	lw x69, 1(x40)
	fdiv x68, x68, x69
	lw x69, 2(x40)
	fmul x69, x68, x69
	fadd x69, x69, x66
	fabs x69, x69
	lw x7, 2(x67)
	fle x69, x7, x69
	bne	x69, zero, pretrace_pixels_beqelse_b4689
# B4685
	lw x69, 0(x40)
	fmul x69, x68, x69
	fadd x69, x69, x6
	fabs x69, x69
	lw x67, 0(x67)
	fle x67, x67, x69
	bne	x67, zero, pretrace_pixels_beqelse_b4689
# B4687
	sw x68, 0(x24)
	mv x69, x12
# B4688
	bne	x69, zero, pretrace_pixels_beqelse_b4690
pretrace_pixels_beqelse_b4689:
# B4689
	lw x67, 2(x40)
	feq x67, x67, zero
	bne	x67, zero, pretrace_pixels_beqelse_b4701
# B4691
	lw x67, 4(x5)
	lw x5, 6(x5)
	lw x68, 2(x40)
	fle x68, zero, x68
	xori x68, x68, 1
	xor x5, x5, x68
	lw x68, 2(x67)
	bne	x5, zero, pretrace_pixels_beqelse_b4694
# B4693
	fsub x5, zero, x68
	j pretrace_pixels_cont_b4695 # adhoc jump(2)
pretrace_pixels_beqelse_b4694:
# B4694
	mv x5, x68
pretrace_pixels_cont_b4695:
# B4695
	fsub x5, x5, x66
	lw x66, 2(x40)
	fdiv x5, x5, x66
	lw x66, 0(x40)
	fmul x66, x5, x66
	fadd x6, x66, x6
	fabs x6, x6
	lw x66, 0(x67)
	fle x6, x66, x6
	bne	x6, zero, pretrace_pixels_beqelse_b4701
# B4697
	lw x6, 1(x40)
	fmul x6, x5, x6
	fadd x6, x6, x65
	fabs x6, x6
	lw x65, 1(x67)
	fle x6, x65, x6
	bne	x6, zero, pretrace_pixels_beqelse_b4701
# B4699
	sw x5, 0(x24)
	mv x65, x12
# B4700
	bne	x65, zero, pretrace_pixels_beqelse_b4702
pretrace_pixels_beqelse_b4701:
# B4701
	mv x5, zero
	addi x28, x28, 1
	j pretrace_pixels_cont_b4727 # adhoc jump(2)
pretrace_pixels_beqelse_b4702:
# B4702
	mv x5, x111
	j pretrace_pixels_cont_b4726 # adhoc jump(2)
pretrace_pixels_beqelse_b4690:
# B4690
	mv x5, x107
	j pretrace_pixels_cont_b4726 # adhoc jump(2)
pretrace_pixels_beqelse_b4678:
# B4678
	mv x5, x12
	j pretrace_pixels_cont_b4726 # adhoc jump(2)
pretrace_pixels_beqelse_b4666:
# B4666
	bne	x67, x107, pretrace_pixels_beqelse_b4704
# B4703
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
	beq	x68, zero, pretrace_pixels_bneelse_b4706
# B4705
	mv x5, zero
	addi x28, x28, 1
	j pretrace_pixels_cont_b4727 # adhoc jump(2)
pretrace_pixels_bneelse_b4706:
# B4706
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
	sw x5, 0(x24)
	mv x5, x12
	j pretrace_pixels_cont_b4726 # adhoc jump(2)
pretrace_pixels_beqelse_b4704:
# B4704
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
	bne	x70, zero, pretrace_pixels_beqelse_b4708
# B4707
	mv x67, x7
	j pretrace_pixels_cont_b4709 # adhoc jump(2)
pretrace_pixels_beqelse_b4708:
# B4708
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
pretrace_pixels_cont_b4709:
# B4709
	feq x68, x67, zero
	bne	x68, zero, pretrace_pixels_beqelse_b4711
# B4710
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
	bne	x71, zero, pretrace_pixels_beqelse_b4713
# B4712
	mv x68, x70
	j pretrace_pixels_cont_b4714 # adhoc jump(2)
pretrace_pixels_beqelse_b4713:
# B4713
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
	fmul x68, x68, x31
	fadd x68, x70, x68
pretrace_pixels_cont_b4714:
# B4714
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
	bne	x7, zero, pretrace_pixels_beqelse_b4716
# B4715
	mv x6, x69
	j pretrace_pixels_cont_b4717 # adhoc jump(2)
pretrace_pixels_beqelse_b4716:
# B4716
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
pretrace_pixels_cont_b4717:
# B4717
	lw x65, 1(x5)
	bne	x65, x111, pretrace_pixels_beqelse_b4720
# B4718
	fsub x6, x6, x108
pretrace_pixels_beqelse_b4720:
# B4720
	fmul x65, x68, x68
	fmul x6, x67, x6
	fsub x6, x65, x6
	fle x65, x6, zero
	beq	x65, zero, pretrace_pixels_bneelse_b4722
# B4721
	mv x5, zero
	addi x28, x28, 1
	j pretrace_pixels_cont_b4727 # adhoc jump(2)
pretrace_pixels_bneelse_b4722:
# B4722
	fsqrt x6, x6
	lw x5, 6(x5)
	bne	x5, zero, pretrace_pixels_beqelse_b4724
# B4723
	fsub x5, zero, x6
	j pretrace_pixels_cont_b4725 # adhoc jump(2)
pretrace_pixels_beqelse_b4724:
# B4724
	mv x5, x6
pretrace_pixels_cont_b4725:
# B4725
	fsub x5, x5, x68
	fdiv x5, x5, x67
	sw x5, 0(x24)
	mv x5, x12
pretrace_pixels_cont_b4726:
# B4726
	addi x28, x28, 1
	bne	x5, zero, pretrace_pixels_beqelse_b4728
	j pretrace_pixels_cont_b4727 # adhoc jump(3)
pretrace_pixels_beqelse_b4728:
# B4728
	lw x6, 0(x24)
	fle x65, x6, zero
	bne	x65, zero, pretrace_pixels_beqelse_b4761
# B4732
	lw x65, 0(x14)
	fle x65, x65, x6
	bne	x65, zero, pretrace_pixels_beqelse_b4761
# B4734
	fadd x6, x6, x32
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
pretrace_pixels_loop_b4735:
# B4735
	add x4, x69, x68
	lw x72, 0(x4)
	bne	x72, x29, pretrace_pixels_beqelse_b4737
# B4736
	mv x73, x12
# B4758
	bne	x73, zero, pretrace_pixels_beqelse_b4760
	j pretrace_pixels_cont_b4759 # adhoc jump(3)
pretrace_pixels_beqelse_b4760:
# B4760
	sw x6, 0(x14)
	sw x65, 0(x33)
	sw x66, 1(x33)
	sw x67, 2(x33)
	sw x22, 0(x34)
	sw x5, 0(x35)
	j pretrace_pixels_cont_b4761 # adhoc jump(2)
pretrace_pixels_beqelse_b4737:
# B4737
	add x4, x110, x72
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
	bne	x76, x12, pretrace_pixels_beqelse_b4739
# B4738
	fabs x73, x73
	lw x76, 4(x72)
	lw x76, 0(x76)
	fle x73, x76, x73
	bne	x73, zero, pretrace_pixels_beqelse_b4745
# B4741
	fabs x73, x74
	lw x74, 4(x72)
	lw x74, 1(x74)
	fle x73, x74, x73
	bne	x73, zero, pretrace_pixels_beqelse_b4745
# B4743
	fabs x73, x75
	lw x74, 4(x72)
	lw x74, 2(x74)
	fle x73, x74, x73
	xori x73, x73, 1
	mv x74, x73
# B4744
	bne	x74, zero, pretrace_pixels_beqelse_b4746
pretrace_pixels_beqelse_b4745:
# B4745
	lw x72, 6(x72)
	xori x72, x72, 1
	j pretrace_pixels_cont_b4755 # adhoc jump(2)
pretrace_pixels_beqelse_b4746:
# B4746
	lw x72, 6(x72)
	j pretrace_pixels_cont_b4755 # adhoc jump(2)
pretrace_pixels_beqelse_b4739:
# B4739
	bne	x76, x107, pretrace_pixels_beqelse_b4748
# B4747
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
	xor x72, x72, x73
	xori x72, x72, 1
	j pretrace_pixels_cont_b4755 # adhoc jump(2)
pretrace_pixels_beqelse_b4748:
# B4748
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
	bne	x77, zero, pretrace_pixels_beqelse_b4750
# B4749
	mv x73, x76
	j pretrace_pixels_cont_b4751 # adhoc jump(2)
pretrace_pixels_beqelse_b4750:
# B4750
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
pretrace_pixels_cont_b4751:
# B4751
	lw x74, 1(x72)
	bne	x74, x111, pretrace_pixels_beqelse_b4754
# B4752
	fsub x73, x73, x108
pretrace_pixels_beqelse_b4754:
# B4754
	lw x72, 6(x72)
	fle x73, zero, x73
	xori x73, x73, 1
	xor x72, x72, x73
	xori x72, x72, 1
pretrace_pixels_cont_b4755:
# B4755
	bne	x72, zero, pretrace_pixels_beqelse_b4759
# B4756
	addi x68, x68, 1
	j pretrace_pixels_loop_b4735 # loopback to while entry from B4756
pretrace_pixels_beqelse_b4759:
pretrace_pixels_cont_b4759:
# B4759
pretrace_pixels_beqelse_b4761:
pretrace_pixels_cont_b4761:
# B4761
	j pretrace_pixels_loop_b4662 # loopback to while entry from B4761
pretrace_pixels_beqelse_b4711:
# B4711
	mv x5, zero
	addi x28, x28, 1
pretrace_pixels_cont_b4727:
# B4727
	add x4, x110, x22
	lw x22, 0(x4)
	lw x22, 6(x22)
	beq	x22, zero, pretrace_pixels_bneelse_b4762
	j	pretrace_pixels_loop_b4662 # moved need extra jump
pretrace_pixels_bneelse_b4762:
# B4762
	addi x36, x36, 1
	j pretrace_pixels_loop_b4659 # loopback to while entry from B4762
	j pretrace_pixels_loop_b4662 # loopback to while entry from B4727
pretrace_pixels_beqelse_b4763:
pretrace_pixels_bneelse_b4763:
pretrace_pixels_cont_b4763:
# B4763
	addi x25, x25, 1
	j pretrace_pixels_loop_b4484 # loopback to while entry from B4763
pretrace_pixels_bneelse_b4764:
# B4764
	lw x22, 0(x14)
	lui x25, 777421
	addi x25, x25, -819
	fle x26, x22, x25
	lui x27, 314348
	addi x27, x27, -992
	beq	x26, zero, pretrace_pixels_bneelse_b4766
# B4765
	la x26, min_caml_light
	j pretrace_pixels_cont_b4768 # adhoc jump(2)
pretrace_pixels_bneelse_b4766:
# B4766
	fle x22, x27, x22
	xori x22, x22, 1
# B4767
	la x26, min_caml_light
	bne	x22, zero, pretrace_pixels_beqelse_b4769
pretrace_pixels_cont_b4768:
# B4768
	add x4, x100, x15
	sw x29, 0(x4)
	beq	x15, zero, pretrace_pixels_bneelse_b5584
# B4771
	lw x100, 0(x17)
	lw x11, 0(x26)
	fmul x100, x100, x11
	lw x11, 1(x17)
	lw x12, 1(x26)
	fmul x11, x11, x12
	fadd x100, x100, x11
	lw x11, 2(x17)
	lw x12, 2(x26)
	fmul x11, x11, x12
	fadd x100, x100, x11
	fsub x100, zero, x100
	fle x11, x100, zero
	bne	x11, zero, pretrace_pixels_beqelse_b5584
# B4773
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
	j pretrace_pixels_cont_b5584 # adhoc jump(2)
pretrace_pixels_beqelse_b4769:
# B4769
	lw x22, 0(x34)
	add x4, x110, x22
	lw x28, 0(x4)
	lw x36, 2(x28)
	lw x37, 7(x28)
	lw x37, 0(x37)
	fmul x37, x37, x16
	lw x38, 1(x28)
	la x39, min_caml_nvector
	bne	x38, x12, pretrace_pixels_beqelse_b4775
# B4774
	lw x38, 0(x35)
	sw zero, 0(x39)
	sw zero, 1(x39)
	sw zero, 2(x39)
	addi x38, x38, -1
	add x4, x17, x38
	lw x40, 0(x4)
	feq x5, x40, zero
	bne	x5, zero, pretrace_pixels_beqelse_b4777
# B4776
	fle x40, x40, zero
	beq	x40, zero, pretrace_pixels_bneelse_b4779
# B4778
	mv x40, x13
	j pretrace_pixels_cont_b4780 # adhoc jump(2)
pretrace_pixels_bneelse_b4779:
# B4779
	mv x40, x108
	j pretrace_pixels_cont_b4780 # adhoc jump(2)
pretrace_pixels_beqelse_b4777:
# B4777
	mv x40, zero
pretrace_pixels_cont_b4780:
# B4780
	fsub x40, zero, x40
	add x4, x39, x38
	sw x40, 0(x4)
	j pretrace_pixels_cont_b4791 # adhoc jump(2)
pretrace_pixels_beqelse_b4775:
# B4775
	bne	x38, x107, pretrace_pixels_beqelse_b4782
# B4781
	lw x38, 4(x28)
	lw x38, 0(x38)
	fsub x38, zero, x38
	sw x38, 0(x39)
	lw x38, 4(x28)
	lw x38, 1(x38)
	fsub x38, zero, x38
	sw x38, 1(x39)
	lw x38, 4(x28)
	lw x38, 2(x38)
	fsub x38, zero, x38
	sw x38, 2(x39)
	j pretrace_pixels_cont_b4791 # adhoc jump(2)
pretrace_pixels_beqelse_b4782:
# B4782
	lw x38, 0(x33)
	lw x40, 5(x28)
	lw x40, 0(x40)
	fsub x38, x38, x40
	lw x40, 1(x33)
	lw x5, 5(x28)
	lw x5, 1(x5)
	fsub x40, x40, x5
	lw x5, 2(x33)
	lw x6, 5(x28)
	lw x6, 2(x6)
	fsub x5, x5, x6
	lw x6, 4(x28)
	lw x6, 0(x6)
	fmul x6, x38, x6
	lw x65, 4(x28)
	lw x65, 1(x65)
	fmul x65, x40, x65
	lw x66, 4(x28)
	lw x66, 2(x66)
	fmul x66, x5, x66
	lw x67, 3(x28)
	bne	x67, zero, pretrace_pixels_beqelse_b4784
# B4783
	sw x6, 0(x39)
	sw x65, 1(x39)
	sw x66, 2(x39)
	j pretrace_pixels_cont_b4785 # adhoc jump(2)
pretrace_pixels_beqelse_b4784:
# B4784
	lw x67, 9(x28)
	lw x67, 2(x67)
	fmul x67, x40, x67
	lw x68, 9(x28)
	lw x68, 1(x68)
	fmul x68, x5, x68
	fadd x67, x67, x68
	fmul x67, x67, x31
	fadd x6, x6, x67
	sw x6, 0(x39)
	lw x6, 9(x28)
	lw x6, 2(x6)
	fmul x6, x38, x6
	lw x67, 9(x28)
	lw x67, 0(x67)
	fmul x5, x5, x67
	fadd x5, x6, x5
	fmul x5, x5, x31
	fadd x5, x65, x5
	sw x5, 1(x39)
	lw x5, 9(x28)
	lw x5, 1(x5)
	fmul x38, x38, x5
	lw x5, 9(x28)
	lw x5, 0(x5)
	fmul x40, x40, x5
	fadd x38, x38, x40
	fmul x38, x38, x31
	fadd x38, x66, x38
	sw x38, 2(x39)
pretrace_pixels_cont_b4785:
# B4785
	lw x38, 6(x28)
	lw x40, 0(x39)
	fmul x40, x40, x40
	lw x5, 1(x39)
	fmul x5, x5, x5
	fadd x40, x40, x5
	lw x5, 2(x39)
	fmul x5, x5, x5
	fadd x40, x40, x5
	fsqrt x40, x40
	feq x5, x40, zero
	bne	x5, zero, pretrace_pixels_beqelse_b4787
# B4786
	bne	x38, zero, pretrace_pixels_beqelse_b4789
# B4788
	fdiv x38, x108, x40
	j pretrace_pixels_cont_b4790 # adhoc jump(2)
pretrace_pixels_beqelse_b4789:
# B4789
	fdiv x38, x13, x40
	j pretrace_pixels_cont_b4790 # adhoc jump(2)
pretrace_pixels_beqelse_b4787:
# B4787
	mv x38, x108
pretrace_pixels_cont_b4790:
# B4790
	lw x40, 0(x39)
	fmul x40, x40, x38
	sw x40, 0(x39)
	lw x40, 1(x39)
	fmul x40, x40, x38
	sw x40, 1(x39)
	lw x40, 2(x39)
	fmul x38, x40, x38
	sw x38, 2(x39)
pretrace_pixels_cont_b4791:
# B4791
	lw x38, 0(x33)
	sw x38, 0(x11)
	lw x38, 1(x33)
	sw x38, 1(x11)
	lw x38, 2(x33)
	sw x38, 2(x11)
	lw x38, 0(x28)
	la x40, min_caml_texture_color
	lw x5, 8(x28)
	lw x5, 0(x5)
	sw x5, 0(x40)
	lw x5, 8(x28)
	lw x5, 1(x5)
	sw x5, 1(x40)
	lw x5, 8(x28)
	lw x5, 2(x5)
	sw x5, 2(x40)
	lui x5, 266752
	bne	x38, x12, pretrace_pixels_beqelse_b4793
# B4792
	lw x38, 0(x33)
	lw x6, 5(x28)
	lw x6, 0(x6)
	fsub x38, x38, x6
	lui x6, 251085
	addi x6, x6, -819
	fmul x65, x38, x6
	floor x65, x65
	lui x66, 268800
	fmul x65, x65, x66
	fsub x38, x38, x65
	fle x38, x5, x38
	xori x38, x38, 1
	lw x65, 2(x33)
	lw x67, 5(x28)
	lw x67, 2(x67)
	fsub x65, x65, x67
	fmul x6, x65, x6
	floor x6, x6
	fmul x6, x6, x66
	fsub x6, x65, x6
	fle x5, x5, x6
	xori x5, x5, 1
	bne	x38, zero, pretrace_pixels_beqelse_b4795
# B4794
	bne	x5, zero, pretrace_pixels_beqelse_b4797
# B4796
	lui x38, 276464
	j pretrace_pixels_cont_b4800 # adhoc jump(2)
pretrace_pixels_beqelse_b4797:
# B4797
	mv x38, zero
	j pretrace_pixels_cont_b4800 # adhoc jump(2)
pretrace_pixels_beqelse_b4795:
# B4795
	bne	x5, zero, pretrace_pixels_beqelse_b4799
# B4798
	mv x38, zero
	j pretrace_pixels_cont_b4800 # adhoc jump(2)
pretrace_pixels_beqelse_b4799:
# B4799
	lui x38, 276464
pretrace_pixels_cont_b4800:
# B4800
	sw x38, 1(x40)
	j pretrace_pixels_cont_b4879 # adhoc jump(2)
pretrace_pixels_beqelse_b4793:
# B4793
	lui x6, 265361
	addi x6, x6, -37
	lui x65, 262144
	lui x66, 263313
	addi x66, x66, -37
	lui x67, 261265
	addi x67, x67, -37
	lui x68, 259217
	addi x68, x68, -37
	lui x69, 778923
	addi x69, x69, -1364
	lui x7, 245896
	addi x7, x7, 1638
	lui x70, 758998
	addi x70, x70, 1206
	lui x71, 782336
	lui x72, 250538
	addi x72, x72, 1929
	lui x73, 764728
	addi x73, x73, 262
	lui x74, 276464
	bne	x38, x107, pretrace_pixels_beqelse_b4802
# B4801
	lw x38, 1(x33)
	lui x5, 256000
	fmul x38, x38, x5
	fle x5, x38, zero
	xori x5, x5, 1
	fabs x38, x38
	mv x76, x6
	mv x75, x38
pretrace_pixels_loop_b4803:
# B4803
	fle x77, x75, x76
	bne	x77, zero, pretrace_pixels_beqelse_b4806
# B4804
	fmul x76, x76, x65
	j pretrace_pixels_loop_b4803 # loopback to while entry from B4804
pretrace_pixels_beqelse_b4806:
# B4806
	mv x79, x76
	mv x78, x38
pretrace_pixels_loop_b4807:
# B4807
	fle x38, x6, x78
	beq	x38, zero, pretrace_pixels_bneelse_b4812
# B4809
	fle x38, x78, x79
	fdiv x75, x79, x65
	bne	x38, zero, pretrace_pixels_beqelse_b4811
# B4810
	fsub x78, x78, x79
	mv x79, x75
	j pretrace_pixels_loop_b4807 # loopback to while entry from B4810
pretrace_pixels_beqelse_b4811:
# B4811
	mv x79, x75
	j pretrace_pixels_loop_b4807 # loopback to while entry from B4811
pretrace_pixels_bneelse_b4812:
# B4812
	fle x38, x66, x78
	bne	x38, zero, pretrace_pixels_beqelse_b4814
# B4813
	mv x6, x78
	j pretrace_pixels_cont_b4815 # adhoc jump(2)
pretrace_pixels_beqelse_b4814:
# B4814
	fsub x6, x78, x66
pretrace_pixels_cont_b4815:
# B4815
	xor x38, x38, x5
	fle x5, x67, x6
	bne	x5, zero, pretrace_pixels_beqelse_b4817
# B4816
	mv x5, x6
	j pretrace_pixels_cont_b4818 # adhoc jump(2)
pretrace_pixels_beqelse_b4817:
# B4817
	fsub x5, x66, x6
pretrace_pixels_cont_b4818:
# B4818
	fle x6, x68, x5
	bne	x6, zero, pretrace_pixels_beqelse_b4820
# B4819
	fmul x6, x5, x5
	fmul x65, x6, x70
	fadd x65, x7, x65
	fmul x65, x6, x65
	fadd x65, x69, x65
	fmul x6, x6, x65
	fadd x6, x108, x6
	fmul x5, x5, x6
	j pretrace_pixels_cont_b4821 # adhoc jump(2)
pretrace_pixels_beqelse_b4820:
# B4820
	fsub x5, x67, x5
	fmul x5, x5, x5
	fmul x6, x5, x73
	fadd x6, x72, x6
	fmul x6, x5, x6
	fadd x6, x71, x6
	fmul x5, x5, x6
	fadd x5, x108, x5
pretrace_pixels_cont_b4821:
# B4821
	fle x6, x5, zero
	beq	x38, x6, pretrace_pixels_bneelse_b4823
# B4822
	mv x38, x5
	j pretrace_pixels_cont_b4824 # adhoc jump(2)
pretrace_pixels_bneelse_b4823:
# B4823
	fsub x38, zero, x5
pretrace_pixels_cont_b4824:
# B4824
	fmul x38, x38, x38
	fmul x5, x74, x38
	sw x5, 0(x40)
	fsub x38, x108, x38
	fmul x38, x74, x38
	sw x38, 1(x40)
	j pretrace_pixels_cont_b4879 # adhoc jump(2)
pretrace_pixels_beqelse_b4802:
# B4802
	lui x75, 263313
	addi x75, x75, -37
	bne	x38, x111, pretrace_pixels_beqelse_b4826
# B4825
	lw x38, 0(x33)
	lw x76, 5(x28)
	lw x76, 0(x76)
	fsub x38, x38, x76
	lw x76, 2(x33)
	lw x77, 5(x28)
	lw x77, 2(x77)
	fsub x76, x76, x77
	fmul x38, x38, x38
	fmul x76, x76, x76
	fadd x38, x38, x76
	fsqrt x38, x38
	fdiv x38, x38, x5
	floor x5, x38
	fsub x38, x38, x5
	fmul x38, x38, x75
	fabs x38, x38
	mv x5, x38
	mv x75, x6
pretrace_pixels_loop_b4827:
# B4827
	fle x76, x5, x75
	bne	x76, zero, pretrace_pixels_beqelse_b4830
# B4828
	fmul x75, x75, x65
	j pretrace_pixels_loop_b4827 # loopback to while entry from B4828
pretrace_pixels_beqelse_b4830:
# B4830
	mv x77, x38
	mv x78, x75
pretrace_pixels_loop_b4831:
# B4831
	fle x38, x6, x77
	beq	x38, zero, pretrace_pixels_bneelse_b4836
# B4833
	fle x38, x77, x78
	fdiv x5, x78, x65
	bne	x38, zero, pretrace_pixels_beqelse_b4835
# B4834
	fsub x77, x77, x78
	mv x78, x5
	j pretrace_pixels_loop_b4831 # loopback to while entry from B4834
pretrace_pixels_beqelse_b4835:
# B4835
	mv x78, x5
	j pretrace_pixels_loop_b4831 # loopback to while entry from B4835
pretrace_pixels_bneelse_b4836:
# B4836
	fle x38, x66, x77
	bne	x38, zero, pretrace_pixels_beqelse_b4838
# B4837
	mv x5, x77
	j pretrace_pixels_cont_b4839 # adhoc jump(2)
pretrace_pixels_beqelse_b4838:
# B4838
	fsub x5, x77, x66
pretrace_pixels_cont_b4839:
# B4839
	bne	x38, zero, pretrace_pixels_beqelse_b4841
# B4840
	mv x6, x12
	j pretrace_pixels_cont_b4842 # adhoc jump(2)
pretrace_pixels_beqelse_b4841:
# B4841
	mv x6, zero
pretrace_pixels_cont_b4842:
# B4842
	fle x38, x67, x5
	bne	x38, zero, pretrace_pixels_beqelse_b4844
	j pretrace_pixels_cont_b4845 # adhoc jump(3)
pretrace_pixels_beqelse_b4844:
# B4844
	fsub x5, x66, x5
pretrace_pixels_cont_b4845:
# B4845
	xor x38, x38, x6
	fle x6, x68, x5
	bne	x6, zero, pretrace_pixels_beqelse_b4847
pretrace_pixels_cont_b4846:
# B4846
	fmul x5, x5, x5
	fmul x6, x5, x73
	fadd x6, x72, x6
	fmul x6, x5, x6
	fadd x6, x71, x6
	fmul x5, x5, x6
	fadd x5, x108, x5
	j pretrace_pixels_cont_b4848 # adhoc jump(2)
pretrace_pixels_beqelse_b4847:
# B4847
	fsub x5, x67, x5
	fmul x6, x5, x5
	fmul x65, x6, x70
	fadd x65, x7, x65
	fmul x65, x6, x65
	fadd x65, x69, x65
	fmul x6, x6, x65
	fadd x6, x108, x6
	fmul x5, x5, x6
pretrace_pixels_cont_b4848:
# B4848
	fle x6, x5, zero
	beq	x38, x6, pretrace_pixels_bneelse_b4850
# B4849
	mv x38, x5
	j pretrace_pixels_cont_b4851 # adhoc jump(2)
pretrace_pixels_bneelse_b4850:
# B4850
	fsub x38, zero, x5
pretrace_pixels_cont_b4851:
# B4851
	fmul x38, x38, x38
	fmul x5, x38, x74
	sw x5, 1(x40)
	fsub x38, x108, x38
	fmul x38, x38, x74
	sw x38, 2(x40)
	j pretrace_pixels_cont_b4879 # adhoc jump(2)
pretrace_pixels_beqelse_b4826:
# B4826
	bne	x38, x109, pretrace_pixels_beqelse_b4879
# B4852
	lw x38, 0(x33)
	lw x5, 5(x28)
	lw x5, 0(x5)
	fsub x38, x38, x5
	lw x5, 4(x28)
	lw x5, 0(x5)
	fsqrt x5, x5
	fmul x38, x38, x5
	lw x5, 2(x33)
	lw x6, 5(x28)
	lw x6, 2(x6)
	fsub x5, x5, x6
	lw x6, 4(x28)
	lw x6, 2(x6)
	fsqrt x6, x6
	fmul x5, x5, x6
	fmul x6, x38, x38
	fmul x65, x5, x5
	fadd x6, x6, x65
	fabs x65, x38
	lui x66, 232731
	addi x66, x66, 1815
	fle x65, x66, x65
	lui x69, 257536
	lui x7, 780971
	addi x7, x7, -1366
	lui x70, 255181
	addi x70, x70, -819
	lui x71, 778533
	addi x71, x71, -1755
	lui x72, 253497
	addi x72, x72, -456
	lui x73, 777085
	addi x73, x73, 1646
	lui x76, 251742
	addi x76, x76, 1989
	lui x77, 262592
	lui x78, 270080
	beq	x65, zero, pretrace_pixels_bneelse_b4855
# B4854
	fdiv x38, x5, x38
	fabs x38, x38
	fle x5, x38, zero
	xori x5, x5, 1
	fabs x65, x38
	fle x79, x69, x65
	bne	x79, zero, pretrace_pixels_beqelse_b4857
# B4856
	fmul x5, x38, x38
	fmul x65, x5, x76
	fadd x65, x73, x65
	fmul x65, x5, x65
	fadd x65, x72, x65
	fmul x65, x5, x65
	fadd x65, x71, x65
	fmul x65, x5, x65
	fadd x65, x70, x65
	fmul x65, x5, x65
	fadd x65, x7, x65
	fmul x5, x5, x65
	fadd x5, x108, x5
	fmul x38, x38, x5
	j pretrace_pixels_cont_b4863 # adhoc jump(2)
pretrace_pixels_beqelse_b4857:
# B4857
	fle x38, x77, x65
	bne	x38, zero, pretrace_pixels_beqelse_b4859
# B4858
	fsub x38, x65, x108
	fadd x65, x65, x108
	fdiv x38, x38, x65
	fmul x65, x38, x38
	fmul x79, x65, x76
	fadd x79, x73, x79
	fmul x79, x65, x79
	fadd x79, x72, x79
	fmul x79, x65, x79
	fadd x79, x71, x79
	fmul x79, x65, x79
	fadd x79, x70, x79
	fmul x79, x65, x79
	fadd x79, x7, x79
	fmul x65, x65, x79
	fadd x65, x108, x65
	fmul x38, x38, x65
	fadd x38, x68, x38
	j pretrace_pixels_cont_b4860 # adhoc jump(2)
pretrace_pixels_beqelse_b4859:
# B4859
	fdiv x38, x108, x65
	fmul x65, x38, x38
	fmul x79, x65, x76
	fadd x79, x73, x79
	fmul x79, x65, x79
	fadd x79, x72, x79
	fmul x79, x65, x79
	fadd x79, x71, x79
	fmul x79, x65, x79
	fadd x79, x70, x79
	fmul x79, x65, x79
	fadd x79, x7, x79
	fmul x65, x65, x79
	fadd x65, x108, x65
	fmul x38, x38, x65
	fsub x38, x67, x38
pretrace_pixels_cont_b4860:
# B4860
	bne	x5, zero, pretrace_pixels_beqelse_b4863
# B4861
	fsub x38, zero, x38
pretrace_pixels_beqelse_b4863:
pretrace_pixels_cont_b4863:
# B4863
	fmul x38, x38, x78
	fdiv x38, x38, x75
	j pretrace_pixels_cont_b4864 # adhoc jump(2)
pretrace_pixels_bneelse_b4855:
# B4855
	lui x38, 268032
pretrace_pixels_cont_b4864:
# B4864
	floor x5, x38
	fsub x38, x38, x5
	lw x5, 1(x33)
	lw x65, 5(x28)
	lw x65, 1(x65)
	fsub x5, x5, x65
	lw x65, 4(x28)
	lw x65, 1(x65)
	fsqrt x65, x65
	fmul x5, x5, x65
	fabs x65, x6
	fle x65, x66, x65
	beq	x65, zero, pretrace_pixels_bneelse_b4866
# B4865
	fdiv x5, x5, x6
	fabs x5, x5
	fle x6, x5, zero
	xori x6, x6, 1
	fabs x65, x5
	fle x66, x69, x65
	bne	x66, zero, pretrace_pixels_beqelse_b4868
# B4867
	fmul x6, x5, x5
	fmul x65, x6, x76
	fadd x65, x73, x65
	fmul x65, x6, x65
	fadd x65, x72, x65
	fmul x65, x6, x65
	fadd x65, x71, x65
	fmul x65, x6, x65
	fadd x65, x70, x65
	fmul x65, x6, x65
	fadd x65, x7, x65
	fmul x6, x6, x65
	fadd x6, x108, x6
	fmul x5, x5, x6
	j pretrace_pixels_cont_b4874 # adhoc jump(2)
pretrace_pixels_beqelse_b4868:
# B4868
	fle x5, x77, x65
	bne	x5, zero, pretrace_pixels_beqelse_b4870
# B4869
	fsub x5, x65, x108
	fadd x65, x65, x108
	fdiv x5, x5, x65
	fmul x65, x5, x5
	fmul x66, x65, x76
	fadd x66, x73, x66
	fmul x66, x65, x66
	fadd x66, x72, x66
	fmul x66, x65, x66
	fadd x66, x71, x66
	fmul x66, x65, x66
	fadd x66, x70, x66
	fmul x66, x65, x66
	fadd x66, x7, x66
	fmul x65, x65, x66
	fadd x65, x108, x65
	fmul x5, x5, x65
	fadd x5, x68, x5
	j pretrace_pixels_cont_b4871 # adhoc jump(2)
pretrace_pixels_beqelse_b4870:
# B4870
	fdiv x5, x108, x65
	fmul x65, x5, x5
	fmul x66, x65, x76
	fadd x66, x73, x66
	fmul x66, x65, x66
	fadd x66, x72, x66
	fmul x66, x65, x66
	fadd x66, x71, x66
	fmul x66, x65, x66
	fadd x66, x70, x66
	fmul x66, x65, x66
	fadd x66, x7, x66
	fmul x65, x65, x66
	fadd x65, x108, x65
	fmul x5, x5, x65
	fsub x5, x67, x5
pretrace_pixels_cont_b4871:
# B4871
	bne	x6, zero, pretrace_pixels_beqelse_b4874
# B4872
	fsub x5, zero, x5
pretrace_pixels_beqelse_b4874:
pretrace_pixels_cont_b4874:
# B4874
	fmul x5, x5, x78
	fdiv x5, x5, x75
	j pretrace_pixels_cont_b4875 # adhoc jump(2)
pretrace_pixels_bneelse_b4866:
# B4866
	lui x5, 268032
pretrace_pixels_cont_b4875:
# B4875
	floor x6, x5
	fsub x5, x5, x6
	lui x6, 254362
	addi x6, x6, -1638
	fsub x38, x31, x38
	fmul x38, x38, x38
	fsub x38, x6, x38
	fsub x5, x31, x5
	fmul x5, x5, x5
	fsub x38, x38, x5
	fle x5, zero, x38
	beq	x5, zero, pretrace_pixels_bneelse_b4877
# B4876
	mv x6, x38
	j pretrace_pixels_cont_b4878 # adhoc jump(2)
pretrace_pixels_bneelse_b4877:
# B4877
	mv x6, zero
pretrace_pixels_cont_b4878:
# B4878
	fmul x38, x74, x6
	lui x5, 256410
	addi x5, x5, -1638
	fdiv x38, x38, x5
	sw x38, 2(x40)
pretrace_pixels_beqelse_b4879:
pretrace_pixels_cont_b4879:
# B4879
	slli x22, x22, 2
	lw x38, 0(x35)
	add x22, x22, x38
	add x4, x100, x15
	sw x22, 0(x4)
	lw x22, 1(x18)
	add x4, x22, x15
	lw x22, 0(x4)
	lw x38, 0(x33)
	sw x38, 0(x22)
	lw x38, 1(x33)
	sw x38, 1(x22)
	lw x38, 2(x33)
	sw x38, 2(x22)
	lw x22, 3(x18)
	lw x38, 7(x28)
	lw x38, 0(x38)
	fle x31, x31, x38
	beq	x31, zero, pretrace_pixels_bneelse_b4881
# B4880
	add x4, x22, x15
	sw x12, 0(x4)
	lw x22, 4(x18)
	add x4, x22, x15
	lw x31, 0(x4)
	lw x38, 0(x40)
	sw x38, 0(x31)
	lw x38, 1(x40)
	sw x38, 1(x31)
	lw x38, 2(x40)
	sw x38, 2(x31)
	add x4, x22, x15
	lw x22, 0(x4)
	lui x31, 276480
	fdiv x31, x108, x31
	fmul x31, x31, x37
	lw x38, 0(x22)
	fmul x38, x38, x31
	sw x38, 0(x22)
	lw x38, 1(x22)
	fmul x38, x38, x31
	sw x38, 1(x22)
	lw x38, 2(x22)
	fmul x31, x38, x31
	sw x31, 2(x22)
	lw x22, 7(x18)
	add x4, x22, x15
	lw x22, 0(x4)
	lw x31, 0(x39)
	sw x31, 0(x22)
	lw x31, 1(x39)
	sw x31, 1(x22)
	lw x31, 2(x39)
	sw x31, 2(x22)
	j pretrace_pixels_cont_b4882 # adhoc jump(2)
pretrace_pixels_bneelse_b4881:
# B4881
	add x4, x22, x15
	sw zero, 0(x4)
pretrace_pixels_cont_b4882:
# B4882
	lui x22, 786432
	lw x31, 0(x17)
	lw x38, 0(x39)
	fmul x31, x31, x38
	lw x38, 1(x17)
	lw x5, 1(x39)
	fmul x38, x38, x5
	fadd x31, x31, x38
	lw x38, 2(x17)
	lw x5, 2(x39)
	fmul x38, x38, x5
	fadd x31, x31, x38
	fmul x22, x22, x31
	lw x31, 0(x17)
	lw x38, 0(x39)
	fmul x38, x22, x38
	fadd x31, x31, x38
	sw x31, 0(x17)
	lw x31, 1(x17)
	lw x38, 1(x39)
	fmul x38, x22, x38
	fadd x31, x31, x38
	sw x31, 1(x17)
	lw x31, 2(x17)
	lw x38, 2(x39)
	fmul x22, x22, x38
	fadd x22, x31, x22
	sw x22, 2(x17)
	lw x22, 7(x28)
	lw x22, 1(x22)
	fmul x22, x16, x22
	lw x31, 0(x21)
	la x38, min_caml_light_dirvec
	mv x6, x31
	mv x5, zero
pretrace_pixels_loop_b4883:
# B4883
	add x4, x6, x5
	lw x31, 0(x4)
	lw x65, 0(x31)
	lui x66, 779469
	addi x66, x66, -819
	beq	x65, x29, pretrace_pixels_bneelse_b5109
# B4885
	bne	x65, x23, pretrace_pixels_beqelse_b4887
# B4886
	mv x65, x12
	j pretrace_pixels_cont_b5019 # adhoc jump(2)
pretrace_pixels_beqelse_b4887:
# B4887
	add x4, x110, x65
	lw x67, 0(x4)
	lw x68, 0(x33)
	lw x69, 5(x67)
	lw x69, 0(x69)
	fsub x68, x68, x69
	lw x69, 1(x33)
	lw x7, 5(x67)
	lw x7, 1(x7)
	fsub x69, x69, x7
	lw x7, 2(x33)
	lw x70, 5(x67)
	lw x70, 2(x70)
	fsub x7, x7, x70
	lw x70, 1(x38)
	add x4, x70, x65
	lw x65, 0(x4)
	lw x70, 1(x67)
	bne	x70, x12, pretrace_pixels_beqelse_b4889
# B4888
	lw x70, 0(x38)
	lw x71, 0(x65)
	fsub x71, x71, x68
	lw x72, 1(x65)
	fmul x71, x71, x72
	lw x72, 1(x70)
	fmul x72, x71, x72
	fadd x72, x72, x69
	fabs x72, x72
	lw x73, 4(x67)
	lw x73, 1(x73)
	fle x72, x73, x72
	bne	x72, zero, pretrace_pixels_beqelse_b4895
# B4891
	lw x72, 2(x70)
	fmul x72, x71, x72
	fadd x72, x72, x7
	fabs x72, x72
	lw x73, 4(x67)
	lw x73, 2(x73)
	fle x72, x73, x72
	bne	x72, zero, pretrace_pixels_beqelse_b4895
# B4893
	lw x72, 1(x65)
	feq x72, x72, zero
	xori x72, x72, 1
	mv x73, x72
# B4894
	bne	x73, zero, pretrace_pixels_beqelse_b4896
pretrace_pixels_beqelse_b4895:
# B4895
	lw x71, 2(x65)
	fsub x71, x71, x69
	lw x72, 3(x65)
	fmul x71, x71, x72
	lw x72, 0(x70)
	fmul x72, x71, x72
	fadd x72, x72, x68
	fabs x72, x72
	lw x73, 4(x67)
	lw x73, 0(x73)
	fle x72, x73, x72
	bne	x72, zero, pretrace_pixels_beqelse_b4902
# B4898
	lw x72, 2(x70)
	fmul x72, x71, x72
	fadd x72, x72, x7
	fabs x72, x72
	lw x73, 4(x67)
	lw x73, 2(x73)
	fle x72, x73, x72
	bne	x72, zero, pretrace_pixels_beqelse_b4902
# B4900
	lw x72, 3(x65)
	feq x72, x72, zero
	xori x72, x72, 1
	mv x73, x72
# B4901
	bne	x73, zero, pretrace_pixels_beqelse_b4903
pretrace_pixels_beqelse_b4902:
# B4902
	lw x71, 4(x65)
	fsub x7, x71, x7
	lw x71, 5(x65)
	fmul x7, x7, x71
	lw x71, 0(x70)
	fmul x71, x7, x71
	fadd x68, x71, x68
	fabs x68, x68
	lw x71, 4(x67)
	lw x71, 0(x71)
	fle x68, x71, x68
	bne	x68, zero, pretrace_pixels_beqelse_b4909
# B4905
	lw x68, 1(x70)
	fmul x68, x7, x68
	fadd x68, x68, x69
	fabs x68, x68
	lw x67, 4(x67)
	lw x67, 1(x67)
	fle x67, x67, x68
	bne	x67, zero, pretrace_pixels_beqelse_b4909
# B4907
	lw x65, 5(x65)
	feq x65, x65, zero
	xori x65, x65, 1
	mv x67, x65
# B4908
	bne	x67, zero, pretrace_pixels_beqelse_b4910
pretrace_pixels_beqelse_b4909:
# B4909
	j pretrace_pixels_cont_b4929 # adhoc jump(2)
pretrace_pixels_beqelse_b4910:
# B4910
	sw x7, 0(x24)
	mv x65, x111
	j pretrace_pixels_cont_b4928 # adhoc jump(2)
pretrace_pixels_beqelse_b4903:
# B4903
	sw x71, 0(x24)
	mv x65, x107
	j pretrace_pixels_cont_b4928 # adhoc jump(2)
pretrace_pixels_beqelse_b4896:
# B4896
	sw x71, 0(x24)
	mv x65, x12
	j pretrace_pixels_cont_b4928 # adhoc jump(2)
pretrace_pixels_beqelse_b4889:
# B4889
	bne	x70, x107, pretrace_pixels_beqelse_b4912
# B4911
	lw x67, 0(x65)
	fle x67, zero, x67
	bne	x67, zero, pretrace_pixels_beqelse_b4929
# B4914
	lw x67, 1(x65)
	fmul x67, x67, x68
	lw x68, 2(x65)
	fmul x68, x68, x69
	fadd x67, x67, x68
	lw x65, 3(x65)
	fmul x65, x65, x7
	fadd x65, x67, x65
	sw x65, 0(x24)
	mv x65, x12
	j pretrace_pixels_cont_b4928 # adhoc jump(2)
pretrace_pixels_beqelse_b4912:
# B4912
	lw x70, 0(x65)
	feq x71, x70, zero
	bne	x71, zero, pretrace_pixels_beqelse_b4929
# B4915
	lw x71, 1(x65)
	fmul x71, x71, x68
	lw x72, 2(x65)
	fmul x72, x72, x69
	fadd x71, x71, x72
	lw x72, 3(x65)
	fmul x72, x72, x7
	fadd x71, x71, x72
	fmul x72, x68, x68
	lw x73, 4(x67)
	lw x73, 0(x73)
	fmul x72, x72, x73
	fmul x73, x69, x69
	lw x74, 4(x67)
	lw x74, 1(x74)
	fmul x73, x73, x74
	fadd x72, x72, x73
	fmul x73, x7, x7
	lw x74, 4(x67)
	lw x74, 2(x74)
	fmul x73, x73, x74
	fadd x72, x72, x73
	lw x73, 3(x67)
	bne	x73, zero, pretrace_pixels_beqelse_b4918
# B4917
	mv x68, x72
	j pretrace_pixels_cont_b4919 # adhoc jump(2)
pretrace_pixels_beqelse_b4918:
# B4918
	fmul x73, x69, x7
	lw x74, 9(x67)
	lw x74, 0(x74)
	fmul x73, x73, x74
	fadd x72, x72, x73
	fmul x7, x7, x68
	lw x73, 9(x67)
	lw x73, 1(x73)
	fmul x7, x7, x73
	fadd x7, x72, x7
	fmul x68, x68, x69
	lw x69, 9(x67)
	lw x69, 2(x69)
	fmul x68, x68, x69
	fadd x68, x7, x68
pretrace_pixels_cont_b4919:
# B4919
	lw x69, 1(x67)
	bne	x69, x111, pretrace_pixels_beqelse_b4922
# B4920
	fsub x68, x68, x108
pretrace_pixels_beqelse_b4922:
# B4922
	fmul x69, x71, x71
	fmul x68, x70, x68
	fsub x68, x69, x68
	fle x69, x68, zero
	bne	x69, zero, pretrace_pixels_beqelse_b4929
# B4924
	lw x67, 6(x67)
	fsqrt x68, x68
	bne	x67, zero, pretrace_pixels_beqelse_b4926
# B4925
	fsub x67, x71, x68
	lw x65, 4(x65)
	fmul x65, x67, x65
	sw x65, 0(x24)
	j pretrace_pixels_cont_b4927 # adhoc jump(2)
pretrace_pixels_beqelse_b4926:
# B4926
	fadd x67, x71, x68
	lw x65, 4(x65)
	fmul x65, x67, x65
	sw x65, 0(x24)
pretrace_pixels_cont_b4927:
# B4927
	mv x65, x12
pretrace_pixels_cont_b4928:
# B4928
	bne	x65, zero, pretrace_pixels_beqelse_b4930
pretrace_pixels_beqelse_b4929:
pretrace_pixels_cont_b4929:
# B4929
	addi x5, x5, 1
	j pretrace_pixels_cont_b5020 # adhoc jump(2)
pretrace_pixels_beqelse_b4930:
# B4930
	lw x65, 0(x24)
	fle x65, x25, x65
	beq	x65, zero, pretrace_pixels_bneelse_b4932
# B4931
	addi x5, x5, 1
	j pretrace_pixels_cont_b5020 # adhoc jump(2)
pretrace_pixels_bneelse_b4932:
# B4932
	mv x68, x31
	mv x67, x12
pretrace_pixels_loop_b4933:
# B4933
	add x4, x68, x67
	lw x65, 0(x4)
	beq	x65, x29, pretrace_pixels_bneelse_b5017
# B4935
	add x4, x30, x65
	lw x65, 0(x4)
	mv x7, x65
	mv x69, zero
pretrace_pixels_loop_b4936:
# B4936
	add x4, x7, x69
	lw x65, 0(x4)
	beq	x65, x29, pretrace_pixels_bneelse_b5014
# B4938
	add x4, x7, x69
	lw x65, 0(x4)
	add x4, x110, x65
	lw x70, 0(x4)
	lw x71, 0(x33)
	lw x72, 5(x70)
	lw x72, 0(x72)
	fsub x71, x71, x72
	lw x72, 1(x33)
	lw x73, 5(x70)
	lw x73, 1(x73)
	fsub x72, x72, x73
	lw x73, 2(x33)
	lw x74, 5(x70)
	lw x74, 2(x74)
	fsub x73, x73, x74
	lw x74, 1(x38)
	add x4, x74, x65
	lw x74, 0(x4)
	lw x75, 1(x70)
	bne	x75, x12, pretrace_pixels_beqelse_b4940
# B4939
	lw x75, 0(x38)
	lw x76, 0(x74)
	fsub x76, x76, x71
	lw x77, 1(x74)
	fmul x76, x76, x77
	lw x77, 1(x75)
	fmul x77, x76, x77
	fadd x77, x77, x72
	fabs x77, x77
	lw x78, 4(x70)
	lw x78, 1(x78)
	fle x77, x78, x77
	bne	x77, zero, pretrace_pixels_beqelse_b4946
# B4942
	lw x77, 2(x75)
	fmul x77, x76, x77
	fadd x77, x77, x73
	fabs x77, x77
	lw x78, 4(x70)
	lw x78, 2(x78)
	fle x77, x78, x77
	bne	x77, zero, pretrace_pixels_beqelse_b4946
# B4944
	lw x77, 1(x74)
	feq x77, x77, zero
	xori x77, x77, 1
	mv x78, x77
# B4945
	bne	x78, zero, pretrace_pixels_beqelse_b4947
pretrace_pixels_beqelse_b4946:
# B4946
	lw x76, 2(x74)
	fsub x76, x76, x72
	lw x77, 3(x74)
	fmul x76, x76, x77
	lw x77, 0(x75)
	fmul x77, x76, x77
	fadd x77, x77, x71
	fabs x77, x77
	lw x78, 4(x70)
	lw x78, 0(x78)
	fle x77, x78, x77
	bne	x77, zero, pretrace_pixels_beqelse_b4953
# B4949
	lw x77, 2(x75)
	fmul x77, x76, x77
	fadd x77, x77, x73
	fabs x77, x77
	lw x78, 4(x70)
	lw x78, 2(x78)
	fle x77, x78, x77
	bne	x77, zero, pretrace_pixels_beqelse_b4953
# B4951
	lw x77, 3(x74)
	feq x77, x77, zero
	xori x77, x77, 1
	mv x78, x77
# B4952
	bne	x78, zero, pretrace_pixels_beqelse_b4954
pretrace_pixels_beqelse_b4953:
# B4953
	lw x76, 4(x74)
	fsub x73, x76, x73
	lw x76, 5(x74)
	fmul x73, x73, x76
	lw x76, 0(x75)
	fmul x76, x73, x76
	fadd x71, x76, x71
	fabs x71, x71
	lw x76, 4(x70)
	lw x76, 0(x76)
	fle x71, x76, x71
	bne	x71, zero, pretrace_pixels_beqelse_b4960
# B4956
	lw x71, 1(x75)
	fmul x71, x73, x71
	fadd x71, x71, x72
	fabs x71, x71
	lw x70, 4(x70)
	lw x70, 1(x70)
	fle x70, x70, x71
	bne	x70, zero, pretrace_pixels_beqelse_b4960
# B4958
	lw x70, 5(x74)
	feq x70, x70, zero
	xori x70, x70, 1
	mv x71, x70
# B4959
	bne	x71, zero, pretrace_pixels_beqelse_b4961
pretrace_pixels_beqelse_b4960:
# B4960
	lw x71, 0(x24)
	j pretrace_pixels_cont_b4980 # adhoc jump(2)
pretrace_pixels_beqelse_b4961:
# B4961
	sw x73, 0(x24)
	mv x70, x111
	j pretrace_pixels_cont_b4979 # adhoc jump(2)
pretrace_pixels_beqelse_b4954:
# B4954
	sw x76, 0(x24)
	mv x70, x107
	j pretrace_pixels_cont_b4979 # adhoc jump(2)
pretrace_pixels_beqelse_b4947:
# B4947
	sw x76, 0(x24)
	mv x70, x12
	j pretrace_pixels_cont_b4979 # adhoc jump(2)
pretrace_pixels_beqelse_b4940:
# B4940
	bne	x75, x107, pretrace_pixels_beqelse_b4963
# B4962
	lw x70, 0(x74)
	fle x70, zero, x70
	beq	x70, zero, pretrace_pixels_bneelse_b4965
# B4964
	lw x71, 0(x24)
	j pretrace_pixels_cont_b4980 # adhoc jump(2)
pretrace_pixels_bneelse_b4965:
# B4965
	lw x70, 1(x74)
	fmul x70, x70, x71
	lw x71, 2(x74)
	fmul x71, x71, x72
	fadd x70, x70, x71
	lw x71, 3(x74)
	fmul x71, x71, x73
	fadd x70, x70, x71
	sw x70, 0(x24)
	mv x70, x12
	j pretrace_pixels_cont_b4979 # adhoc jump(2)
pretrace_pixels_beqelse_b4963:
# B4963
	lw x75, 0(x74)
	feq x76, x75, zero
	bne	x76, zero, pretrace_pixels_beqelse_b4967
# B4966
	lw x76, 1(x74)
	fmul x76, x76, x71
	lw x77, 2(x74)
	fmul x77, x77, x72
	fadd x76, x76, x77
	lw x77, 3(x74)
	fmul x77, x77, x73
	fadd x76, x76, x77
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
	bne	x78, zero, pretrace_pixels_beqelse_b4969
# B4968
	mv x71, x77
	j pretrace_pixels_cont_b4970 # adhoc jump(2)
pretrace_pixels_beqelse_b4969:
# B4969
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
pretrace_pixels_cont_b4970:
# B4970
	lw x72, 1(x70)
	bne	x72, x111, pretrace_pixels_beqelse_b4973
# B4971
	fsub x71, x71, x108
pretrace_pixels_beqelse_b4973:
# B4973
	fmul x72, x76, x76
	fmul x71, x75, x71
	fsub x71, x72, x71
	fle x72, x71, zero
	beq	x72, zero, pretrace_pixels_bneelse_b4975
# B4974
	lw x71, 0(x24)
	j pretrace_pixels_cont_b4980 # adhoc jump(2)
pretrace_pixels_bneelse_b4975:
# B4975
	lw x70, 6(x70)
	fsqrt x71, x71
	bne	x70, zero, pretrace_pixels_beqelse_b4977
# B4976
	fsub x70, x76, x71
	lw x71, 4(x74)
	fmul x70, x70, x71
	sw x70, 0(x24)
	j pretrace_pixels_cont_b4978 # adhoc jump(2)
pretrace_pixels_beqelse_b4977:
# B4977
	fadd x70, x76, x71
	lw x71, 4(x74)
	fmul x70, x70, x71
	sw x70, 0(x24)
pretrace_pixels_cont_b4978:
# B4978
	mv x70, x12
pretrace_pixels_cont_b4979:
# B4979
	lw x71, 0(x24)
	bne	x70, zero, pretrace_pixels_beqelse_b4981
	j pretrace_pixels_cont_b4980 # adhoc jump(3)
pretrace_pixels_beqelse_b4981:
# B4981
	fle x70, x66, x71
	xori x70, x70, 1
# B4982
	addi x69, x69, 1
	bne	x70, zero, pretrace_pixels_beqelse_b4984
	j pretrace_pixels_cont_b4983 # adhoc jump(3)
pretrace_pixels_beqelse_b4984:
# B4984
	fadd x65, x71, x32
	lw x70, 0(x26)
	fmul x70, x70, x65
	lw x71, 0(x33)
	fadd x70, x70, x71
	lw x71, 1(x26)
	fmul x71, x71, x65
	lw x72, 1(x33)
	fadd x71, x71, x72
	lw x72, 2(x26)
	fmul x65, x72, x65
	lw x72, 2(x33)
	fadd x65, x65, x72
	mv x74, x70
	mv x72, zero
	mv x76, x65
	mv x73, x7
	mv x75, x71
pretrace_pixels_loop_b4987:
# B4987
	add x4, x73, x72
	lw x65, 0(x4)
	bne	x65, x29, pretrace_pixels_beqelse_b4989
# B4988
	mv x70, x12
# B5010
	bne	x70, zero, pretrace_pixels_beqelse_b5012
	j pretrace_pixels_cont_b5011 # adhoc jump(3)
pretrace_pixels_beqelse_b5012:
# B5012
	mv x65, x12
# B5013
	bne	x65, zero, pretrace_pixels_beqelse_b5015
	j pretrace_pixels_cont_b5014 # adhoc jump(3)
pretrace_pixels_beqelse_b5015:
# B5015
	mv x69, x12
# B5016
	bne	x69, zero, pretrace_pixels_beqelse_b5018
pretrace_pixels_bneelse_b5017:
# B5017
	addi x5, x5, 1
	j pretrace_pixels_cont_b5020 # adhoc jump(2)
pretrace_pixels_beqelse_b5018:
# B5018
	mv x65, x12
pretrace_pixels_cont_b5019:
# B5019
	addi x5, x5, 1
	bne	x65, zero, pretrace_pixels_beqelse_b5021
pretrace_pixels_cont_b5020:
# B5020
	j pretrace_pixels_loop_b4883 # loopback to while entry from B5020
pretrace_pixels_beqelse_b5021:
# B5021
	mv x68, x31
	mv x67, x12
pretrace_pixels_loop_b5022:
# B5022
	add x4, x68, x67
	lw x31, 0(x4)
	beq	x31, x29, pretrace_pixels_bneelse_b5106
# B5024
	add x4, x30, x31
	lw x31, 0(x4)
	mv x69, x31
	mv x65, zero
pretrace_pixels_loop_b5025:
# B5025
	add x4, x69, x65
	lw x31, 0(x4)
	beq	x31, x29, pretrace_pixels_bneelse_b5103
# B5027
	add x4, x69, x65
	lw x31, 0(x4)
	add x4, x110, x31
	lw x7, 0(x4)
	lw x70, 0(x33)
	lw x71, 5(x7)
	lw x71, 0(x71)
	fsub x70, x70, x71
	lw x71, 1(x33)
	lw x72, 5(x7)
	lw x72, 1(x72)
	fsub x71, x71, x72
	lw x72, 2(x33)
	lw x73, 5(x7)
	lw x73, 2(x73)
	fsub x72, x72, x73
	lw x73, 1(x38)
	add x4, x73, x31
	lw x73, 0(x4)
	lw x74, 1(x7)
	bne	x74, x12, pretrace_pixels_beqelse_b5029
# B5028
	lw x74, 0(x38)
	lw x75, 0(x73)
	fsub x75, x75, x70
	lw x76, 1(x73)
	fmul x75, x75, x76
	lw x76, 1(x74)
	fmul x76, x75, x76
	fadd x76, x76, x71
	fabs x76, x76
	lw x77, 4(x7)
	lw x77, 1(x77)
	fle x76, x77, x76
	bne	x76, zero, pretrace_pixels_beqelse_b5035
# B5031
	lw x76, 2(x74)
	fmul x76, x75, x76
	fadd x76, x76, x72
	fabs x76, x76
	lw x77, 4(x7)
	lw x77, 2(x77)
	fle x76, x77, x76
	bne	x76, zero, pretrace_pixels_beqelse_b5035
# B5033
	lw x76, 1(x73)
	feq x76, x76, zero
	xori x76, x76, 1
	mv x77, x76
# B5034
	bne	x77, zero, pretrace_pixels_beqelse_b5036
pretrace_pixels_beqelse_b5035:
# B5035
	lw x75, 2(x73)
	fsub x75, x75, x71
	lw x76, 3(x73)
	fmul x75, x75, x76
	lw x76, 0(x74)
	fmul x76, x75, x76
	fadd x76, x76, x70
	fabs x76, x76
	lw x77, 4(x7)
	lw x77, 0(x77)
	fle x76, x77, x76
	bne	x76, zero, pretrace_pixels_beqelse_b5042
# B5038
	lw x76, 2(x74)
	fmul x76, x75, x76
	fadd x76, x76, x72
	fabs x76, x76
	lw x77, 4(x7)
	lw x77, 2(x77)
	fle x76, x77, x76
	bne	x76, zero, pretrace_pixels_beqelse_b5042
# B5040
	lw x76, 3(x73)
	feq x76, x76, zero
	xori x76, x76, 1
	mv x77, x76
# B5041
	bne	x77, zero, pretrace_pixels_beqelse_b5043
pretrace_pixels_beqelse_b5042:
# B5042
	lw x75, 4(x73)
	fsub x72, x75, x72
	lw x75, 5(x73)
	fmul x72, x72, x75
	lw x75, 0(x74)
	fmul x75, x72, x75
	fadd x70, x75, x70
	fabs x70, x70
	lw x75, 4(x7)
	lw x75, 0(x75)
	fle x70, x75, x70
	bne	x70, zero, pretrace_pixels_beqelse_b5049
# B5045
	lw x70, 1(x74)
	fmul x70, x72, x70
	fadd x70, x70, x71
	fabs x70, x70
	lw x7, 4(x7)
	lw x7, 1(x7)
	fle x7, x7, x70
	bne	x7, zero, pretrace_pixels_beqelse_b5049
# B5047
	lw x7, 5(x73)
	feq x7, x7, zero
	xori x7, x7, 1
	mv x70, x7
# B5048
	bne	x70, zero, pretrace_pixels_beqelse_b5050
pretrace_pixels_beqelse_b5049:
# B5049
	lw x70, 0(x24)
	j pretrace_pixels_cont_b5069 # adhoc jump(2)
pretrace_pixels_beqelse_b5050:
# B5050
	sw x72, 0(x24)
	mv x7, x111
	j pretrace_pixels_cont_b5068 # adhoc jump(2)
pretrace_pixels_beqelse_b5043:
# B5043
	sw x75, 0(x24)
	mv x7, x107
	j pretrace_pixels_cont_b5068 # adhoc jump(2)
pretrace_pixels_beqelse_b5036:
# B5036
	sw x75, 0(x24)
	mv x7, x12
	j pretrace_pixels_cont_b5068 # adhoc jump(2)
pretrace_pixels_beqelse_b5029:
# B5029
	bne	x74, x107, pretrace_pixels_beqelse_b5052
# B5051
	lw x7, 0(x73)
	fle x7, zero, x7
	beq	x7, zero, pretrace_pixels_bneelse_b5054
# B5053
	lw x70, 0(x24)
	j pretrace_pixels_cont_b5069 # adhoc jump(2)
pretrace_pixels_bneelse_b5054:
# B5054
	lw x7, 1(x73)
	fmul x7, x7, x70
	lw x70, 2(x73)
	fmul x70, x70, x71
	fadd x7, x7, x70
	lw x70, 3(x73)
	fmul x70, x70, x72
	fadd x7, x7, x70
	sw x7, 0(x24)
	mv x7, x12
	j pretrace_pixels_cont_b5068 # adhoc jump(2)
pretrace_pixels_beqelse_b5052:
# B5052
	lw x74, 0(x73)
	feq x75, x74, zero
	bne	x75, zero, pretrace_pixels_beqelse_b5056
# B5055
	lw x75, 1(x73)
	fmul x75, x75, x70
	lw x76, 2(x73)
	fmul x76, x76, x71
	fadd x75, x75, x76
	lw x76, 3(x73)
	fmul x76, x76, x72
	fadd x75, x75, x76
	fmul x76, x70, x70
	lw x77, 4(x7)
	lw x77, 0(x77)
	fmul x76, x76, x77
	fmul x77, x71, x71
	lw x78, 4(x7)
	lw x78, 1(x78)
	fmul x77, x77, x78
	fadd x76, x76, x77
	fmul x77, x72, x72
	lw x78, 4(x7)
	lw x78, 2(x78)
	fmul x77, x77, x78
	fadd x76, x76, x77
	lw x77, 3(x7)
	bne	x77, zero, pretrace_pixels_beqelse_b5058
# B5057
	mv x70, x76
	j pretrace_pixels_cont_b5059 # adhoc jump(2)
pretrace_pixels_beqelse_b5058:
# B5058
	fmul x77, x71, x72
	lw x78, 9(x7)
	lw x78, 0(x78)
	fmul x77, x77, x78
	fadd x76, x76, x77
	fmul x72, x72, x70
	lw x77, 9(x7)
	lw x77, 1(x77)
	fmul x72, x72, x77
	fadd x72, x76, x72
	fmul x70, x70, x71
	lw x71, 9(x7)
	lw x71, 2(x71)
	fmul x70, x70, x71
	fadd x70, x72, x70
pretrace_pixels_cont_b5059:
# B5059
	lw x71, 1(x7)
	bne	x71, x111, pretrace_pixels_beqelse_b5062
# B5060
	fsub x70, x70, x108
pretrace_pixels_beqelse_b5062:
# B5062
	fmul x71, x75, x75
	fmul x70, x74, x70
	fsub x70, x71, x70
	fle x71, x70, zero
	beq	x71, zero, pretrace_pixels_bneelse_b5064
# B5063
	lw x70, 0(x24)
	j pretrace_pixels_cont_b5069 # adhoc jump(2)
pretrace_pixels_bneelse_b5064:
# B5064
	lw x7, 6(x7)
	fsqrt x70, x70
	bne	x7, zero, pretrace_pixels_beqelse_b5066
# B5065
	fsub x7, x75, x70
	lw x70, 4(x73)
	fmul x7, x7, x70
	sw x7, 0(x24)
	j pretrace_pixels_cont_b5067 # adhoc jump(2)
pretrace_pixels_beqelse_b5066:
# B5066
	fadd x7, x75, x70
	lw x70, 4(x73)
	fmul x7, x7, x70
	sw x7, 0(x24)
pretrace_pixels_cont_b5067:
# B5067
	mv x7, x12
pretrace_pixels_cont_b5068:
# B5068
	lw x70, 0(x24)
	bne	x7, zero, pretrace_pixels_beqelse_b5070
	j pretrace_pixels_cont_b5069 # adhoc jump(3)
pretrace_pixels_beqelse_b5070:
# B5070
	fle x7, x66, x70
	xori x7, x7, 1
# B5071
	addi x65, x65, 1
	bne	x7, zero, pretrace_pixels_beqelse_b5073
	j pretrace_pixels_cont_b5072 # adhoc jump(3)
pretrace_pixels_beqelse_b5073:
# B5073
	fadd x31, x70, x32
	lw x7, 0(x26)
	fmul x7, x7, x31
	lw x70, 0(x33)
	fadd x7, x7, x70
	lw x70, 1(x26)
	fmul x70, x70, x31
	lw x71, 1(x33)
	fadd x70, x70, x71
	lw x71, 2(x26)
	fmul x31, x71, x31
	lw x71, 2(x33)
	fadd x31, x31, x71
	mv x74, x70
	mv x75, x31
	mv x72, x69
	mv x73, x7
	mv x71, zero
pretrace_pixels_loop_b5076:
# B5076
	add x4, x72, x71
	lw x31, 0(x4)
	bne	x31, x29, pretrace_pixels_beqelse_b5078
# B5077
	mv x7, x12
# B5099
	bne	x7, zero, pretrace_pixels_beqelse_b5101
	j pretrace_pixels_cont_b5100 # adhoc jump(3)
pretrace_pixels_beqelse_b5101:
# B5101
	mv x31, x12
# B5102
	bne	x31, zero, pretrace_pixels_beqelse_b5104
	j pretrace_pixels_cont_b5103 # adhoc jump(3)
pretrace_pixels_beqelse_b5104:
# B5104
	mv x65, x12
# B5105
	bne	x65, zero, pretrace_pixels_beqelse_b5107
pretrace_pixels_bneelse_b5106:
# B5106
	j pretrace_pixels_loop_b4883 # loopback to while entry from B5106
pretrace_pixels_beqelse_b5107:
# B5107
	mv x31, x12
# B5108
	bne	x31, zero, pretrace_pixels_beqelse_b5116
pretrace_pixels_bneelse_b5109:
# B5109
	lw x31, 0(x39)
	lw x5, 0(x26)
	fmul x31, x31, x5
	lw x5, 1(x39)
	lw x6, 1(x26)
	fmul x5, x5, x6
	fadd x31, x31, x5
	lw x5, 2(x39)
	lw x6, 2(x26)
	fmul x5, x5, x6
	fadd x31, x31, x5
	fsub x31, zero, x31
	fmul x31, x31, x37
	lw x5, 0(x17)
	lw x6, 0(x26)
	fmul x5, x5, x6
	lw x6, 1(x17)
	lw x65, 1(x26)
	fmul x6, x6, x65
	fadd x5, x5, x6
	lw x6, 2(x17)
	lw x65, 2(x26)
	fmul x6, x6, x65
	fadd x5, x5, x6
	fsub x5, zero, x5
	fle x6, x31, zero
	bne	x6, zero, pretrace_pixels_beqelse_b5113
# B5112
	lw x6, 0(x10)
	lw x65, 0(x40)
	fmul x65, x31, x65
	fadd x6, x6, x65
	sw x6, 0(x10)
	lw x6, 1(x10)
	lw x65, 1(x40)
	fmul x65, x31, x65
	fadd x6, x6, x65
	sw x6, 1(x10)
	lw x6, 2(x10)
	lw x65, 2(x40)
	fmul x31, x31, x65
	fadd x31, x6, x31
	sw x31, 2(x10)
pretrace_pixels_beqelse_b5113:
# B5113
	fle x31, x5, zero
	bne	x31, zero, pretrace_pixels_beqelse_b5116
# B5115
	fmul x31, x5, x5
	fmul x31, x31, x31
	fmul x31, x31, x22
	lw x5, 0(x10)
	fadd x5, x5, x31
	sw x5, 0(x10)
	lw x5, 1(x10)
	fadd x5, x5, x31
	sw x5, 1(x10)
	lw x5, 2(x10)
	fadd x31, x5, x31
	sw x31, 2(x10)
pretrace_pixels_beqelse_b5116:
# B5116
	lw x31, 0(x33)
	sw x31, 0(x112)
	lw x31, 1(x33)
	sw x31, 1(x112)
	lw x31, 2(x33)
	sw x31, 2(x112)
	lw x31, 0(x113)
	addi x31, x31, -1
	mv x6, x31
	mv x5, x33
pretrace_pixels_loop_b5117:
# B5117
	bgt	zero, x6, pretrace_pixels_bleelse_b5131
# B5118
	add x4, x110, x6
	lw x31, 0(x4)
	lw x65, 10(x31)
	lw x67, 1(x31)
	lw x68, 0(x5)
	lw x69, 5(x31)
	lw x69, 0(x69)
	fsub x68, x68, x69
	sw x68, 0(x65)
	lw x68, 1(x5)
	lw x69, 5(x31)
	lw x69, 1(x69)
	fsub x68, x68, x69
	sw x68, 1(x65)
	lw x68, 2(x5)
	lw x69, 5(x31)
	lw x69, 2(x69)
	fsub x68, x68, x69
	sw x68, 2(x65)
	bne	x67, x107, pretrace_pixels_beqelse_b5121
# B5120
	lw x31, 4(x31)
	lw x67, 0(x65)
	lw x68, 1(x65)
	lw x69, 2(x65)
	lw x7, 0(x31)
	fmul x67, x7, x67
	lw x7, 1(x31)
	fmul x68, x7, x68
	fadd x67, x67, x68
	lw x31, 2(x31)
	fmul x31, x31, x69
	fadd x31, x67, x31
	sw x31, 3(x65)
	j pretrace_pixels_cont_b5130 # adhoc jump(2)
pretrace_pixels_beqelse_b5121:
# B5121
	bge	x107, x67, pretrace_pixels_bgtelse_b5130
# B5123
	lw x68, 0(x65)
	lw x69, 1(x65)
	lw x7, 2(x65)
	fmul x70, x68, x68
	lw x71, 4(x31)
	lw x71, 0(x71)
	fmul x70, x70, x71
	fmul x71, x69, x69
	lw x72, 4(x31)
	lw x72, 1(x72)
	fmul x71, x71, x72
	fadd x70, x70, x71
	fmul x71, x7, x7
	lw x72, 4(x31)
	lw x72, 2(x72)
	fmul x71, x71, x72
	fadd x70, x70, x71
	lw x71, 3(x31)
	bne	x71, zero, pretrace_pixels_beqelse_b5125
# B5124
	mv x31, x70
	j pretrace_pixels_cont_b5126 # adhoc jump(2)
pretrace_pixels_beqelse_b5125:
# B5125
	fmul x71, x69, x7
	lw x72, 9(x31)
	lw x72, 0(x72)
	fmul x71, x71, x72
	fadd x70, x70, x71
	fmul x7, x7, x68
	lw x71, 9(x31)
	lw x71, 1(x71)
	fmul x7, x7, x71
	fadd x7, x70, x7
	fmul x68, x68, x69
	lw x31, 9(x31)
	lw x31, 2(x31)
	fmul x31, x68, x31
	fadd x31, x7, x31
pretrace_pixels_cont_b5126:
# B5126
	bne	x67, x111, pretrace_pixels_beqelse_b5129
# B5127
	fsub x31, x31, x108
pretrace_pixels_beqelse_b5129:
# B5129
	sw x31, 3(x65)
pretrace_pixels_bgtelse_b5130:
pretrace_pixels_cont_b5130:
# B5130
	addi x6, x6, -1
	j pretrace_pixels_loop_b5117 # loopback to while entry from B5130
pretrace_pixels_bleelse_b5131:
# B5131
	la x31, min_caml_n_reflections
	lw x31, 0(x31)
	addi x31, x31, -1
	la x5, min_caml_reflections
	mv x65, x37
	mv x6, x31
	mv x67, x22
	mv x68, x17
pretrace_pixels_loop_b5132:
# B5132
	bgt	zero, x6, pretrace_pixels_bleelse_b5576
# B5133
	add x4, x5, x6
	lw x22, 0(x4)
	lw x31, 1(x22)
	sw x20, 0(x14)
	lw x37, 0(x21)
	mv x70, x31
	mv x7, x37
	mv x69, zero
pretrace_pixels_loop_b5135:
# B5135
	add x4, x7, x69
	lw x37, 0(x4)
	lw x71, 0(x37)
	beq	x71, x29, pretrace_pixels_bneelse_b5334
# B5137
	bne	x71, x23, pretrace_pixels_beqelse_b5139
# B5138
	mv x74, x70
	mv x73, x37
	mv x72, x12
pretrace_pixels_loop_b5140:
# B5140
	add x4, x73, x72
	lw x37, 0(x4)
	beq	x37, x29, pretrace_pixels_bneelse_b5333
# B5142
	add x4, x30, x37
	lw x37, 0(x4)
	mv x75, x37
	mv x76, x74
	mv x71, zero
pretrace_pixels_loop_b5143:
# B5143
	lw x37, 0(x76)
	add x4, x75, x71
	lw x77, 0(x4)
	beq	x77, x29, pretrace_pixels_bneelse_b5216
# B5145
	add x4, x110, x77
	lw x78, 0(x4)
	lw x79, 10(x78)
	lw x8, 0(x79)
	lw x80, 1(x79)
	lw x81, 2(x79)
	lw x82, 1(x76)
	add x4, x82, x77
	lw x82, 0(x4)
	lw x83, 1(x78)
	bne	x83, x12, pretrace_pixels_beqelse_b5147
# B5146
	lw x79, 0(x76)
	lw x83, 0(x82)
	fsub x83, x83, x8
	lw x84, 1(x82)
	fmul x83, x83, x84
	lw x84, 1(x79)
	fmul x84, x83, x84
	fadd x84, x84, x80
	fabs x84, x84
	lw x85, 4(x78)
	lw x85, 1(x85)
	fle x84, x85, x84
	bne	x84, zero, pretrace_pixels_beqelse_b5153
# B5149
	lw x84, 2(x79)
	fmul x84, x83, x84
	fadd x84, x84, x81
	fabs x84, x84
	lw x85, 4(x78)
	lw x85, 2(x85)
	fle x84, x85, x84
	bne	x84, zero, pretrace_pixels_beqelse_b5153
# B5151
	lw x84, 1(x82)
	feq x84, x84, zero
	xori x84, x84, 1
	mv x85, x84
# B5152
	bne	x85, zero, pretrace_pixels_beqelse_b5154
pretrace_pixels_beqelse_b5153:
# B5153
	lw x83, 2(x82)
	fsub x83, x83, x80
	lw x84, 3(x82)
	fmul x83, x83, x84
	lw x84, 0(x79)
	fmul x84, x83, x84
	fadd x84, x84, x8
	fabs x84, x84
	lw x85, 4(x78)
	lw x85, 0(x85)
	fle x84, x85, x84
	bne	x84, zero, pretrace_pixels_beqelse_b5160
# B5156
	lw x84, 2(x79)
	fmul x84, x83, x84
	fadd x84, x84, x81
	fabs x84, x84
	lw x85, 4(x78)
	lw x85, 2(x85)
	fle x84, x85, x84
	bne	x84, zero, pretrace_pixels_beqelse_b5160
# B5158
	lw x84, 3(x82)
	feq x84, x84, zero
	xori x84, x84, 1
	mv x85, x84
# B5159
	bne	x85, zero, pretrace_pixels_beqelse_b5161
pretrace_pixels_beqelse_b5160:
# B5160
	lw x83, 4(x82)
	fsub x81, x83, x81
	lw x83, 5(x82)
	fmul x81, x81, x83
	lw x83, 0(x79)
	fmul x83, x81, x83
	fadd x8, x83, x8
	fabs x8, x8
	lw x83, 4(x78)
	lw x83, 0(x83)
	fle x8, x83, x8
	bne	x8, zero, pretrace_pixels_beqelse_b5167
# B5163
	lw x79, 1(x79)
	fmul x79, x81, x79
	fadd x79, x79, x80
	fabs x79, x79
	lw x78, 4(x78)
	lw x78, 1(x78)
	fle x78, x78, x79
	bne	x78, zero, pretrace_pixels_beqelse_b5167
# B5165
	lw x78, 5(x82)
	feq x78, x78, zero
	xori x78, x78, 1
	mv x79, x78
# B5166
	bne	x79, zero, pretrace_pixels_beqelse_b5168
pretrace_pixels_beqelse_b5167:
# B5167
	mv x78, zero
	addi x71, x71, 1
	j pretrace_pixels_cont_b5181 # adhoc jump(2)
pretrace_pixels_beqelse_b5168:
# B5168
	sw x81, 0(x24)
	mv x78, x111
	j pretrace_pixels_cont_b5180 # adhoc jump(2)
pretrace_pixels_beqelse_b5161:
# B5161
	sw x83, 0(x24)
	mv x78, x107
	j pretrace_pixels_cont_b5180 # adhoc jump(2)
pretrace_pixels_beqelse_b5154:
# B5154
	sw x83, 0(x24)
	mv x78, x12
	j pretrace_pixels_cont_b5180 # adhoc jump(2)
pretrace_pixels_beqelse_b5147:
# B5147
	bne	x83, x107, pretrace_pixels_beqelse_b5170
# B5169
	lw x78, 0(x82)
	fle x78, zero, x78
	beq	x78, zero, pretrace_pixels_bneelse_b5172
# B5171
	mv x78, zero
	addi x71, x71, 1
	j pretrace_pixels_cont_b5181 # adhoc jump(2)
pretrace_pixels_bneelse_b5172:
# B5172
	lw x78, 0(x82)
	lw x79, 3(x79)
	fmul x78, x78, x79
	sw x78, 0(x24)
	mv x78, x12
	j pretrace_pixels_cont_b5180 # adhoc jump(2)
pretrace_pixels_beqelse_b5170:
# B5170
	lw x83, 0(x82)
	feq x84, x83, zero
	bne	x84, zero, pretrace_pixels_beqelse_b5174
# B5173
	lw x84, 1(x82)
	fmul x8, x84, x8
	lw x84, 2(x82)
	fmul x80, x84, x80
	fadd x8, x8, x80
	lw x80, 3(x82)
	fmul x80, x80, x81
	fadd x8, x8, x80
	lw x79, 3(x79)
	fmul x80, x8, x8
	fmul x79, x83, x79
	fsub x79, x80, x79
	fle x80, x79, zero
	beq	x80, zero, pretrace_pixels_bneelse_b5176
# B5175
	mv x78, zero
	addi x71, x71, 1
	j pretrace_pixels_cont_b5181 # adhoc jump(2)
pretrace_pixels_bneelse_b5176:
# B5176
	lw x78, 6(x78)
	fsqrt x79, x79
	bne	x78, zero, pretrace_pixels_beqelse_b5178
# B5177
	fsub x78, x8, x79
	lw x79, 4(x82)
	fmul x78, x78, x79
	sw x78, 0(x24)
	j pretrace_pixels_cont_b5179 # adhoc jump(2)
pretrace_pixels_beqelse_b5178:
# B5178
	fadd x78, x8, x79
	lw x79, 4(x82)
	fmul x78, x78, x79
	sw x78, 0(x24)
pretrace_pixels_cont_b5179:
# B5179
	mv x78, x12
pretrace_pixels_cont_b5180:
# B5180
	addi x71, x71, 1
	bne	x78, zero, pretrace_pixels_beqelse_b5182
	j pretrace_pixels_cont_b5181 # adhoc jump(3)
pretrace_pixels_beqelse_b5182:
# B5182
	lw x79, 0(x24)
	fle x8, x79, zero
	bne	x8, zero, pretrace_pixels_beqelse_b5215
# B5186
	lw x8, 0(x14)
	fle x8, x8, x79
	bne	x8, zero, pretrace_pixels_beqelse_b5215
# B5188
	fadd x79, x79, x32
	lw x8, 0(x37)
	fmul x8, x8, x79
	lw x80, 0(x112)
	fadd x8, x8, x80
	lw x80, 1(x37)
	fmul x80, x80, x79
	lw x81, 1(x112)
	fadd x80, x80, x81
	lw x37, 2(x37)
	fmul x37, x37, x79
	lw x81, 2(x112)
	fadd x37, x37, x81
	mv x85, x37
	mv x82, x75
	mv x83, x8
	mv x81, zero
	mv x84, x80
pretrace_pixels_loop_b5189:
# B5189
	add x4, x82, x81
	lw x86, 0(x4)
	bne	x86, x29, pretrace_pixels_beqelse_b5191
# B5190
	mv x87, x12
# B5212
	bne	x87, zero, pretrace_pixels_beqelse_b5214
	j pretrace_pixels_cont_b5213 # adhoc jump(3)
pretrace_pixels_beqelse_b5214:
# B5214
	sw x79, 0(x14)
	sw x8, 0(x33)
	sw x80, 1(x33)
	sw x37, 2(x33)
	sw x77, 0(x34)
	sw x78, 0(x35)
	j pretrace_pixels_cont_b5215 # adhoc jump(2)
pretrace_pixels_beqelse_b5191:
# B5191
	add x4, x110, x86
	lw x86, 0(x4)
	lw x87, 5(x86)
	lw x87, 0(x87)
	fsub x87, x83, x87
	lw x88, 5(x86)
	lw x88, 1(x88)
	fsub x88, x84, x88
	lw x89, 5(x86)
	lw x89, 2(x89)
	fsub x89, x85, x89
	lw x9, 1(x86)
	bne	x9, x12, pretrace_pixels_beqelse_b5193
# B5192
	fabs x87, x87
	lw x9, 4(x86)
	lw x9, 0(x9)
	fle x87, x9, x87
	bne	x87, zero, pretrace_pixels_beqelse_b5199
# B5195
	fabs x87, x88
	lw x88, 4(x86)
	lw x88, 1(x88)
	fle x87, x88, x87
	bne	x87, zero, pretrace_pixels_beqelse_b5199
# B5197
	fabs x87, x89
	lw x88, 4(x86)
	lw x88, 2(x88)
	fle x87, x88, x87
	xori x87, x87, 1
	mv x88, x87
# B5198
	bne	x88, zero, pretrace_pixels_beqelse_b5200
pretrace_pixels_beqelse_b5199:
# B5199
	lw x86, 6(x86)
	xori x86, x86, 1
	j pretrace_pixels_cont_b5209 # adhoc jump(2)
pretrace_pixels_beqelse_b5200:
# B5200
	lw x86, 6(x86)
	j pretrace_pixels_cont_b5209 # adhoc jump(2)
pretrace_pixels_beqelse_b5193:
# B5193
	bne	x9, x107, pretrace_pixels_beqelse_b5202
# B5201
	lw x9, 4(x86)
	lw x90, 0(x9)
	fmul x87, x90, x87
	lw x90, 1(x9)
	fmul x88, x90, x88
	fadd x87, x87, x88
	lw x88, 2(x9)
	fmul x88, x88, x89
	fadd x87, x87, x88
	lw x86, 6(x86)
	fle x87, zero, x87
	xori x87, x87, 1
	xor x86, x86, x87
	xori x86, x86, 1
	j pretrace_pixels_cont_b5209 # adhoc jump(2)
pretrace_pixels_beqelse_b5202:
# B5202
	fmul x9, x87, x87
	lw x90, 4(x86)
	lw x90, 0(x90)
	fmul x9, x9, x90
	fmul x90, x88, x88
	lw x91, 4(x86)
	lw x91, 1(x91)
	fmul x90, x90, x91
	fadd x9, x9, x90
	fmul x90, x89, x89
	lw x91, 4(x86)
	lw x91, 2(x91)
	fmul x90, x90, x91
	fadd x9, x9, x90
	lw x90, 3(x86)
	bne	x90, zero, pretrace_pixels_beqelse_b5204
# B5203
	mv x87, x9
	j pretrace_pixels_cont_b5205 # adhoc jump(2)
pretrace_pixels_beqelse_b5204:
# B5204
	fmul x90, x88, x89
	lw x91, 9(x86)
	lw x91, 0(x91)
	fmul x90, x90, x91
	fadd x9, x9, x90
	fmul x89, x89, x87
	lw x90, 9(x86)
	lw x90, 1(x90)
	fmul x89, x89, x90
	fadd x89, x9, x89
	fmul x87, x87, x88
	lw x88, 9(x86)
	lw x88, 2(x88)
	fmul x87, x87, x88
	fadd x87, x89, x87
pretrace_pixels_cont_b5205:
# B5205
	lw x88, 1(x86)
	bne	x88, x111, pretrace_pixels_beqelse_b5208
# B5206
	fsub x87, x87, x108
pretrace_pixels_beqelse_b5208:
# B5208
	lw x86, 6(x86)
	fle x87, zero, x87
	xori x87, x87, 1
	xor x86, x86, x87
	xori x86, x86, 1
pretrace_pixels_cont_b5209:
# B5209
	bne	x86, zero, pretrace_pixels_beqelse_b5213
# B5210
	addi x81, x81, 1
	j pretrace_pixels_loop_b5189 # loopback to while entry from B5210
pretrace_pixels_beqelse_b5213:
pretrace_pixels_cont_b5213:
# B5213
pretrace_pixels_beqelse_b5215:
pretrace_pixels_cont_b5215:
# B5215
	j pretrace_pixels_loop_b5143 # loopback to while entry from B5215
pretrace_pixels_beqelse_b5174:
# B5174
	mv x78, zero
	addi x71, x71, 1
pretrace_pixels_cont_b5181:
# B5181
	add x4, x110, x77
	lw x37, 0(x4)
	lw x37, 6(x37)
	beq	x37, zero, pretrace_pixels_bneelse_b5216
	j	pretrace_pixels_loop_b5143 # moved need extra jump
pretrace_pixels_bneelse_b5216:
# B5216
	addi x72, x72, 1
	j pretrace_pixels_loop_b5140 # loopback to while entry from B5216
	j pretrace_pixels_loop_b5143 # loopback to while entry from B5181
pretrace_pixels_beqelse_b5139:
# B5139
	add x4, x110, x71
	lw x72, 0(x4)
	lw x73, 10(x72)
	lw x74, 0(x73)
	lw x75, 1(x73)
	lw x76, 2(x73)
	lw x77, 1(x70)
	add x4, x77, x71
	lw x71, 0(x4)
	lw x77, 1(x72)
	bne	x77, x12, pretrace_pixels_beqelse_b5218
# B5217
	lw x73, 0(x70)
	lw x77, 0(x71)
	fsub x77, x77, x74
	lw x78, 1(x71)
	fmul x77, x77, x78
	lw x78, 1(x73)
	fmul x78, x77, x78
	fadd x78, x78, x75
	fabs x78, x78
	lw x79, 4(x72)
	lw x79, 1(x79)
	fle x78, x79, x78
	bne	x78, zero, pretrace_pixels_beqelse_b5224
# B5220
	lw x78, 2(x73)
	fmul x78, x77, x78
	fadd x78, x78, x76
	fabs x78, x78
	lw x79, 4(x72)
	lw x79, 2(x79)
	fle x78, x79, x78
	bne	x78, zero, pretrace_pixels_beqelse_b5224
# B5222
	lw x78, 1(x71)
	feq x78, x78, zero
	xori x78, x78, 1
	mv x79, x78
# B5223
	bne	x79, zero, pretrace_pixels_beqelse_b5225
pretrace_pixels_beqelse_b5224:
# B5224
	lw x77, 2(x71)
	fsub x77, x77, x75
	lw x78, 3(x71)
	fmul x77, x77, x78
	lw x78, 0(x73)
	fmul x78, x77, x78
	fadd x78, x78, x74
	fabs x78, x78
	lw x79, 4(x72)
	lw x79, 0(x79)
	fle x78, x79, x78
	bne	x78, zero, pretrace_pixels_beqelse_b5231
# B5227
	lw x78, 2(x73)
	fmul x78, x77, x78
	fadd x78, x78, x76
	fabs x78, x78
	lw x79, 4(x72)
	lw x79, 2(x79)
	fle x78, x79, x78
	bne	x78, zero, pretrace_pixels_beqelse_b5231
# B5229
	lw x78, 3(x71)
	feq x78, x78, zero
	xori x78, x78, 1
	mv x79, x78
# B5230
	bne	x79, zero, pretrace_pixels_beqelse_b5232
pretrace_pixels_beqelse_b5231:
# B5231
	lw x77, 4(x71)
	fsub x76, x77, x76
	lw x77, 5(x71)
	fmul x76, x76, x77
	lw x77, 0(x73)
	fmul x77, x76, x77
	fadd x74, x77, x74
	fabs x74, x74
	lw x77, 4(x72)
	lw x77, 0(x77)
	fle x74, x77, x74
	bne	x74, zero, pretrace_pixels_beqelse_b5238
# B5234
	lw x73, 1(x73)
	fmul x73, x76, x73
	fadd x73, x73, x75
	fabs x73, x73
	lw x72, 4(x72)
	lw x72, 1(x72)
	fle x72, x72, x73
	bne	x72, zero, pretrace_pixels_beqelse_b5238
# B5236
	lw x71, 5(x71)
	feq x71, x71, zero
	xori x71, x71, 1
	mv x72, x71
# B5237
	bne	x72, zero, pretrace_pixels_beqelse_b5239
pretrace_pixels_beqelse_b5238:
# B5238
	j pretrace_pixels_cont_b5252 # adhoc jump(2)
pretrace_pixels_beqelse_b5239:
# B5239
	sw x76, 0(x24)
	mv x71, x111
	j pretrace_pixels_cont_b5251 # adhoc jump(2)
pretrace_pixels_beqelse_b5232:
# B5232
	sw x77, 0(x24)
	mv x71, x107
	j pretrace_pixels_cont_b5251 # adhoc jump(2)
pretrace_pixels_beqelse_b5225:
# B5225
	sw x77, 0(x24)
	mv x71, x12
	j pretrace_pixels_cont_b5251 # adhoc jump(2)
pretrace_pixels_beqelse_b5218:
# B5218
	bne	x77, x107, pretrace_pixels_beqelse_b5241
# B5240
	lw x72, 0(x71)
	fle x72, zero, x72
	bne	x72, zero, pretrace_pixels_beqelse_b5252
# B5243
	lw x71, 0(x71)
	lw x72, 3(x73)
	fmul x71, x71, x72
	sw x71, 0(x24)
	mv x71, x12
	j pretrace_pixels_cont_b5251 # adhoc jump(2)
pretrace_pixels_beqelse_b5241:
# B5241
	lw x77, 0(x71)
	feq x78, x77, zero
	bne	x78, zero, pretrace_pixels_beqelse_b5252
# B5244
	lw x78, 1(x71)
	fmul x74, x78, x74
	lw x78, 2(x71)
	fmul x75, x78, x75
	fadd x74, x74, x75
	lw x75, 3(x71)
	fmul x75, x75, x76
	fadd x74, x74, x75
	lw x73, 3(x73)
	fmul x75, x74, x74
	fmul x73, x77, x73
	fsub x73, x75, x73
	fle x75, x73, zero
	bne	x75, zero, pretrace_pixels_beqelse_b5252
# B5247
	lw x72, 6(x72)
	fsqrt x73, x73
	bne	x72, zero, pretrace_pixels_beqelse_b5249
# B5248
	fsub x72, x74, x73
	lw x71, 4(x71)
	fmul x71, x72, x71
	sw x71, 0(x24)
	j pretrace_pixels_cont_b5250 # adhoc jump(2)
pretrace_pixels_beqelse_b5249:
# B5249
	fadd x72, x74, x73
	lw x71, 4(x71)
	fmul x71, x72, x71
	sw x71, 0(x24)
pretrace_pixels_cont_b5250:
# B5250
	mv x71, x12
pretrace_pixels_cont_b5251:
# B5251
	bne	x71, zero, pretrace_pixels_beqelse_b5253
pretrace_pixels_beqelse_b5252:
pretrace_pixels_cont_b5252:
# B5252
	j pretrace_pixels_cont_b5333 # adhoc jump(2)
pretrace_pixels_beqelse_b5253:
# B5253
	lw x71, 0(x24)
	lw x72, 0(x14)
	fle x71, x72, x71
	bne	x71, zero, pretrace_pixels_beqelse_b5333
# B5255
	mv x74, x70
	mv x73, x37
	mv x72, x12
pretrace_pixels_loop_b5256:
# B5256
	add x4, x73, x72
	lw x37, 0(x4)
	beq	x37, x29, pretrace_pixels_bneelse_b5333
# B5258
	add x4, x30, x37
	lw x37, 0(x4)
	mv x75, x37
	mv x76, x74
	mv x71, zero
pretrace_pixels_loop_b5259:
# B5259
	lw x37, 0(x76)
	add x4, x75, x71
	lw x77, 0(x4)
	beq	x77, x29, pretrace_pixels_bneelse_b5332
# B5261
	add x4, x110, x77
	lw x78, 0(x4)
	lw x79, 10(x78)
	lw x8, 0(x79)
	lw x80, 1(x79)
	lw x81, 2(x79)
	lw x82, 1(x76)
	add x4, x82, x77
	lw x82, 0(x4)
	lw x83, 1(x78)
	bne	x83, x12, pretrace_pixels_beqelse_b5263
# B5262
	lw x79, 0(x76)
	lw x83, 0(x82)
	fsub x83, x83, x8
	lw x84, 1(x82)
	fmul x83, x83, x84
	lw x84, 1(x79)
	fmul x84, x83, x84
	fadd x84, x84, x80
	fabs x84, x84
	lw x85, 4(x78)
	lw x85, 1(x85)
	fle x84, x85, x84
	bne	x84, zero, pretrace_pixels_beqelse_b5269
# B5265
	lw x84, 2(x79)
	fmul x84, x83, x84
	fadd x84, x84, x81
	fabs x84, x84
	lw x85, 4(x78)
	lw x85, 2(x85)
	fle x84, x85, x84
	bne	x84, zero, pretrace_pixels_beqelse_b5269
# B5267
	lw x84, 1(x82)
	feq x84, x84, zero
	xori x84, x84, 1
	mv x85, x84
# B5268
	bne	x85, zero, pretrace_pixels_beqelse_b5270
pretrace_pixels_beqelse_b5269:
# B5269
	lw x83, 2(x82)
	fsub x83, x83, x80
	lw x84, 3(x82)
	fmul x83, x83, x84
	lw x84, 0(x79)
	fmul x84, x83, x84
	fadd x84, x84, x8
	fabs x84, x84
	lw x85, 4(x78)
	lw x85, 0(x85)
	fle x84, x85, x84
	bne	x84, zero, pretrace_pixels_beqelse_b5276
# B5272
	lw x84, 2(x79)
	fmul x84, x83, x84
	fadd x84, x84, x81
	fabs x84, x84
	lw x85, 4(x78)
	lw x85, 2(x85)
	fle x84, x85, x84
	bne	x84, zero, pretrace_pixels_beqelse_b5276
# B5274
	lw x84, 3(x82)
	feq x84, x84, zero
	xori x84, x84, 1
	mv x85, x84
# B5275
	bne	x85, zero, pretrace_pixels_beqelse_b5277
pretrace_pixels_beqelse_b5276:
# B5276
	lw x83, 4(x82)
	fsub x81, x83, x81
	lw x83, 5(x82)
	fmul x81, x81, x83
	lw x83, 0(x79)
	fmul x83, x81, x83
	fadd x8, x83, x8
	fabs x8, x8
	lw x83, 4(x78)
	lw x83, 0(x83)
	fle x8, x83, x8
	bne	x8, zero, pretrace_pixels_beqelse_b5283
# B5279
	lw x79, 1(x79)
	fmul x79, x81, x79
	fadd x79, x79, x80
	fabs x79, x79
	lw x78, 4(x78)
	lw x78, 1(x78)
	fle x78, x78, x79
	bne	x78, zero, pretrace_pixels_beqelse_b5283
# B5281
	lw x78, 5(x82)
	feq x78, x78, zero
	xori x78, x78, 1
	mv x79, x78
# B5282
	bne	x79, zero, pretrace_pixels_beqelse_b5284
pretrace_pixels_beqelse_b5283:
# B5283
	mv x78, zero
	addi x71, x71, 1
	j pretrace_pixels_cont_b5297 # adhoc jump(2)
pretrace_pixels_beqelse_b5284:
# B5284
	sw x81, 0(x24)
	mv x78, x111
	j pretrace_pixels_cont_b5296 # adhoc jump(2)
pretrace_pixels_beqelse_b5277:
# B5277
	sw x83, 0(x24)
	mv x78, x107
	j pretrace_pixels_cont_b5296 # adhoc jump(2)
pretrace_pixels_beqelse_b5270:
# B5270
	sw x83, 0(x24)
	mv x78, x12
	j pretrace_pixels_cont_b5296 # adhoc jump(2)
pretrace_pixels_beqelse_b5263:
# B5263
	bne	x83, x107, pretrace_pixels_beqelse_b5286
# B5285
	lw x78, 0(x82)
	fle x78, zero, x78
	beq	x78, zero, pretrace_pixels_bneelse_b5288
# B5287
	mv x78, zero
	addi x71, x71, 1
	j pretrace_pixels_cont_b5297 # adhoc jump(2)
pretrace_pixels_bneelse_b5288:
# B5288
	lw x78, 0(x82)
	lw x79, 3(x79)
	fmul x78, x78, x79
	sw x78, 0(x24)
	mv x78, x12
	j pretrace_pixels_cont_b5296 # adhoc jump(2)
pretrace_pixels_beqelse_b5286:
# B5286
	lw x83, 0(x82)
	feq x84, x83, zero
	bne	x84, zero, pretrace_pixels_beqelse_b5290
# B5289
	lw x84, 1(x82)
	fmul x8, x84, x8
	lw x84, 2(x82)
	fmul x80, x84, x80
	fadd x8, x8, x80
	lw x80, 3(x82)
	fmul x80, x80, x81
	fadd x8, x8, x80
	lw x79, 3(x79)
	fmul x80, x8, x8
	fmul x79, x83, x79
	fsub x79, x80, x79
	fle x80, x79, zero
	beq	x80, zero, pretrace_pixels_bneelse_b5292
# B5291
	mv x78, zero
	addi x71, x71, 1
	j pretrace_pixels_cont_b5297 # adhoc jump(2)
pretrace_pixels_bneelse_b5292:
# B5292
	lw x78, 6(x78)
	fsqrt x79, x79
	bne	x78, zero, pretrace_pixels_beqelse_b5294
# B5293
	fsub x78, x8, x79
	lw x79, 4(x82)
	fmul x78, x78, x79
	sw x78, 0(x24)
	j pretrace_pixels_cont_b5295 # adhoc jump(2)
pretrace_pixels_beqelse_b5294:
# B5294
	fadd x78, x8, x79
	lw x79, 4(x82)
	fmul x78, x78, x79
	sw x78, 0(x24)
pretrace_pixels_cont_b5295:
# B5295
	mv x78, x12
pretrace_pixels_cont_b5296:
# B5296
	addi x71, x71, 1
	bne	x78, zero, pretrace_pixels_beqelse_b5298
	j pretrace_pixels_cont_b5297 # adhoc jump(3)
pretrace_pixels_beqelse_b5298:
# B5298
	lw x79, 0(x24)
	fle x8, x79, zero
	bne	x8, zero, pretrace_pixels_beqelse_b5331
# B5302
	lw x8, 0(x14)
	fle x8, x8, x79
	bne	x8, zero, pretrace_pixels_beqelse_b5331
# B5304
	fadd x79, x79, x32
	lw x8, 0(x37)
	fmul x8, x8, x79
	lw x80, 0(x112)
	fadd x8, x8, x80
	lw x80, 1(x37)
	fmul x80, x80, x79
	lw x81, 1(x112)
	fadd x80, x80, x81
	lw x37, 2(x37)
	fmul x37, x37, x79
	lw x81, 2(x112)
	fadd x37, x37, x81
	mv x85, x37
	mv x82, x75
	mv x83, x8
	mv x81, zero
	mv x84, x80
pretrace_pixels_loop_b5305:
# B5305
	add x4, x82, x81
	lw x86, 0(x4)
	bne	x86, x29, pretrace_pixels_beqelse_b5307
# B5306
	mv x87, x12
# B5328
	bne	x87, zero, pretrace_pixels_beqelse_b5330
	j pretrace_pixels_cont_b5329 # adhoc jump(3)
pretrace_pixels_beqelse_b5330:
# B5330
	sw x79, 0(x14)
	sw x8, 0(x33)
	sw x80, 1(x33)
	sw x37, 2(x33)
	sw x77, 0(x34)
	sw x78, 0(x35)
	j pretrace_pixels_cont_b5331 # adhoc jump(2)
pretrace_pixels_beqelse_b5307:
# B5307
	add x4, x110, x86
	lw x86, 0(x4)
	lw x87, 5(x86)
	lw x87, 0(x87)
	fsub x87, x83, x87
	lw x88, 5(x86)
	lw x88, 1(x88)
	fsub x88, x84, x88
	lw x89, 5(x86)
	lw x89, 2(x89)
	fsub x89, x85, x89
	lw x9, 1(x86)
	bne	x9, x12, pretrace_pixels_beqelse_b5309
# B5308
	fabs x87, x87
	lw x9, 4(x86)
	lw x9, 0(x9)
	fle x87, x9, x87
	bne	x87, zero, pretrace_pixels_beqelse_b5315
# B5311
	fabs x87, x88
	lw x88, 4(x86)
	lw x88, 1(x88)
	fle x87, x88, x87
	bne	x87, zero, pretrace_pixels_beqelse_b5315
# B5313
	fabs x87, x89
	lw x88, 4(x86)
	lw x88, 2(x88)
	fle x87, x88, x87
	xori x87, x87, 1
	mv x88, x87
# B5314
	bne	x88, zero, pretrace_pixels_beqelse_b5316
pretrace_pixels_beqelse_b5315:
# B5315
	lw x86, 6(x86)
	xori x86, x86, 1
	j pretrace_pixels_cont_b5325 # adhoc jump(2)
pretrace_pixels_beqelse_b5316:
# B5316
	lw x86, 6(x86)
	j pretrace_pixels_cont_b5325 # adhoc jump(2)
pretrace_pixels_beqelse_b5309:
# B5309
	bne	x9, x107, pretrace_pixels_beqelse_b5318
# B5317
	lw x9, 4(x86)
	lw x90, 0(x9)
	fmul x87, x90, x87
	lw x90, 1(x9)
	fmul x88, x90, x88
	fadd x87, x87, x88
	lw x88, 2(x9)
	fmul x88, x88, x89
	fadd x87, x87, x88
	lw x86, 6(x86)
	fle x87, zero, x87
	xori x87, x87, 1
	xor x86, x86, x87
	xori x86, x86, 1
	j pretrace_pixels_cont_b5325 # adhoc jump(2)
pretrace_pixels_beqelse_b5318:
# B5318
	fmul x9, x87, x87
	lw x90, 4(x86)
	lw x90, 0(x90)
	fmul x9, x9, x90
	fmul x90, x88, x88
	lw x91, 4(x86)
	lw x91, 1(x91)
	fmul x90, x90, x91
	fadd x9, x9, x90
	fmul x90, x89, x89
	lw x91, 4(x86)
	lw x91, 2(x91)
	fmul x90, x90, x91
	fadd x9, x9, x90
	lw x90, 3(x86)
	bne	x90, zero, pretrace_pixels_beqelse_b5320
# B5319
	mv x87, x9
	j pretrace_pixels_cont_b5321 # adhoc jump(2)
pretrace_pixels_beqelse_b5320:
# B5320
	fmul x90, x88, x89
	lw x91, 9(x86)
	lw x91, 0(x91)
	fmul x90, x90, x91
	fadd x9, x9, x90
	fmul x89, x89, x87
	lw x90, 9(x86)
	lw x90, 1(x90)
	fmul x89, x89, x90
	fadd x89, x9, x89
	fmul x87, x87, x88
	lw x88, 9(x86)
	lw x88, 2(x88)
	fmul x87, x87, x88
	fadd x87, x89, x87
pretrace_pixels_cont_b5321:
# B5321
	lw x88, 1(x86)
	bne	x88, x111, pretrace_pixels_beqelse_b5324
# B5322
	fsub x87, x87, x108
pretrace_pixels_beqelse_b5324:
# B5324
	lw x86, 6(x86)
	fle x87, zero, x87
	xori x87, x87, 1
	xor x86, x86, x87
	xori x86, x86, 1
pretrace_pixels_cont_b5325:
# B5325
	bne	x86, zero, pretrace_pixels_beqelse_b5329
# B5326
	addi x81, x81, 1
	j pretrace_pixels_loop_b5305 # loopback to while entry from B5326
pretrace_pixels_beqelse_b5329:
pretrace_pixels_cont_b5329:
# B5329
pretrace_pixels_beqelse_b5331:
pretrace_pixels_cont_b5331:
# B5331
	j pretrace_pixels_loop_b5259 # loopback to while entry from B5331
pretrace_pixels_beqelse_b5290:
# B5290
	mv x78, zero
	addi x71, x71, 1
pretrace_pixels_cont_b5297:
# B5297
	add x4, x110, x77
	lw x37, 0(x4)
	lw x37, 6(x37)
	beq	x37, zero, pretrace_pixels_bneelse_b5332
	j	pretrace_pixels_loop_b5259 # moved need extra jump
pretrace_pixels_bneelse_b5332:
# B5332
	addi x72, x72, 1
	j pretrace_pixels_loop_b5256 # loopback to while entry from B5332
	j pretrace_pixels_loop_b5259 # loopback to while entry from B5297
pretrace_pixels_beqelse_b5333:
pretrace_pixels_bneelse_b5333:
pretrace_pixels_cont_b5333:
# B5333
	addi x69, x69, 1
	j pretrace_pixels_loop_b5135 # loopback to while entry from B5333
pretrace_pixels_bneelse_b5334:
# B5334
	lw x37, 0(x14)
	fle x69, x37, x25
	bne	x69, zero, pretrace_pixels_beqelse_b5338
# B5336
	fle x37, x27, x37
	xori x37, x37, 1
	mv x69, x37
# B5337
	bne	x69, zero, pretrace_pixels_beqelse_b5339
pretrace_pixels_beqelse_b5338:
# B5338
	j pretrace_pixels_cont_b5575 # adhoc jump(2)
pretrace_pixels_beqelse_b5339:
# B5339
	lw x37, 0(x34)
	slli x37, x37, 2
	lw x69, 0(x35)
	add x37, x37, x69
	lw x69, 0(x22)
	bne	x37, x69, pretrace_pixels_beqelse_b5575
# B5340
	lw x37, 0(x21)
	mv x7, x37
	mv x69, zero
pretrace_pixels_loop_b5342:
# B5342
	add x4, x7, x69
	lw x37, 0(x4)
	lw x70, 0(x37)
	beq	x70, x29, pretrace_pixels_bneelse_b5568
# B5344
	bne	x70, x23, pretrace_pixels_beqelse_b5346
# B5345
	mv x70, x12
	j pretrace_pixels_cont_b5478 # adhoc jump(2)
pretrace_pixels_beqelse_b5346:
# B5346
	add x4, x110, x70
	lw x71, 0(x4)
	lw x72, 0(x33)
	lw x73, 5(x71)
	lw x73, 0(x73)
	fsub x72, x72, x73
	lw x73, 1(x33)
	lw x74, 5(x71)
	lw x74, 1(x74)
	fsub x73, x73, x74
	lw x74, 2(x33)
	lw x75, 5(x71)
	lw x75, 2(x75)
	fsub x74, x74, x75
	lw x75, 1(x38)
	add x4, x75, x70
	lw x70, 0(x4)
	lw x75, 1(x71)
	bne	x75, x12, pretrace_pixels_beqelse_b5348
# B5347
	lw x75, 0(x38)
	lw x76, 0(x70)
	fsub x76, x76, x72
	lw x77, 1(x70)
	fmul x76, x76, x77
	lw x77, 1(x75)
	fmul x77, x76, x77
	fadd x77, x77, x73
	fabs x77, x77
	lw x78, 4(x71)
	lw x78, 1(x78)
	fle x77, x78, x77
	bne	x77, zero, pretrace_pixels_beqelse_b5354
# B5350
	lw x77, 2(x75)
	fmul x77, x76, x77
	fadd x77, x77, x74
	fabs x77, x77
	lw x78, 4(x71)
	lw x78, 2(x78)
	fle x77, x78, x77
	bne	x77, zero, pretrace_pixels_beqelse_b5354
# B5352
	lw x77, 1(x70)
	feq x77, x77, zero
	xori x77, x77, 1
	mv x78, x77
# B5353
	bne	x78, zero, pretrace_pixels_beqelse_b5355
pretrace_pixels_beqelse_b5354:
# B5354
	lw x76, 2(x70)
	fsub x76, x76, x73
	lw x77, 3(x70)
	fmul x76, x76, x77
	lw x77, 0(x75)
	fmul x77, x76, x77
	fadd x77, x77, x72
	fabs x77, x77
	lw x78, 4(x71)
	lw x78, 0(x78)
	fle x77, x78, x77
	bne	x77, zero, pretrace_pixels_beqelse_b5361
# B5357
	lw x77, 2(x75)
	fmul x77, x76, x77
	fadd x77, x77, x74
	fabs x77, x77
	lw x78, 4(x71)
	lw x78, 2(x78)
	fle x77, x78, x77
	bne	x77, zero, pretrace_pixels_beqelse_b5361
# B5359
	lw x77, 3(x70)
	feq x77, x77, zero
	xori x77, x77, 1
	mv x78, x77
# B5360
	bne	x78, zero, pretrace_pixels_beqelse_b5362
pretrace_pixels_beqelse_b5361:
# B5361
	lw x76, 4(x70)
	fsub x74, x76, x74
	lw x76, 5(x70)
	fmul x74, x74, x76
	lw x76, 0(x75)
	fmul x76, x74, x76
	fadd x72, x76, x72
	fabs x72, x72
	lw x76, 4(x71)
	lw x76, 0(x76)
	fle x72, x76, x72
	bne	x72, zero, pretrace_pixels_beqelse_b5368
# B5364
	lw x72, 1(x75)
	fmul x72, x74, x72
	fadd x72, x72, x73
	fabs x72, x72
	lw x71, 4(x71)
	lw x71, 1(x71)
	fle x71, x71, x72
	bne	x71, zero, pretrace_pixels_beqelse_b5368
# B5366
	lw x70, 5(x70)
	feq x70, x70, zero
	xori x70, x70, 1
	mv x71, x70
# B5367
	bne	x71, zero, pretrace_pixels_beqelse_b5369
pretrace_pixels_beqelse_b5368:
# B5368
	j pretrace_pixels_cont_b5388 # adhoc jump(2)
pretrace_pixels_beqelse_b5369:
# B5369
	sw x74, 0(x24)
	mv x70, x111
	j pretrace_pixels_cont_b5387 # adhoc jump(2)
pretrace_pixels_beqelse_b5362:
# B5362
	sw x76, 0(x24)
	mv x70, x107
	j pretrace_pixels_cont_b5387 # adhoc jump(2)
pretrace_pixels_beqelse_b5355:
# B5355
	sw x76, 0(x24)
	mv x70, x12
	j pretrace_pixels_cont_b5387 # adhoc jump(2)
pretrace_pixels_beqelse_b5348:
# B5348
	bne	x75, x107, pretrace_pixels_beqelse_b5371
# B5370
	lw x71, 0(x70)
	fle x71, zero, x71
	bne	x71, zero, pretrace_pixels_beqelse_b5388
# B5373
	lw x71, 1(x70)
	fmul x71, x71, x72
	lw x72, 2(x70)
	fmul x72, x72, x73
	fadd x71, x71, x72
	lw x70, 3(x70)
	fmul x70, x70, x74
	fadd x70, x71, x70
	sw x70, 0(x24)
	mv x70, x12
	j pretrace_pixels_cont_b5387 # adhoc jump(2)
pretrace_pixels_beqelse_b5371:
# B5371
	lw x75, 0(x70)
	feq x76, x75, zero
	bne	x76, zero, pretrace_pixels_beqelse_b5388
# B5374
	lw x76, 1(x70)
	fmul x76, x76, x72
	lw x77, 2(x70)
	fmul x77, x77, x73
	fadd x76, x76, x77
	lw x77, 3(x70)
	fmul x77, x77, x74
	fadd x76, x76, x77
	fmul x77, x72, x72
	lw x78, 4(x71)
	lw x78, 0(x78)
	fmul x77, x77, x78
	fmul x78, x73, x73
	lw x79, 4(x71)
	lw x79, 1(x79)
	fmul x78, x78, x79
	fadd x77, x77, x78
	fmul x78, x74, x74
	lw x79, 4(x71)
	lw x79, 2(x79)
	fmul x78, x78, x79
	fadd x77, x77, x78
	lw x78, 3(x71)
	bne	x78, zero, pretrace_pixels_beqelse_b5377
# B5376
	mv x72, x77
	j pretrace_pixels_cont_b5378 # adhoc jump(2)
pretrace_pixels_beqelse_b5377:
# B5377
	fmul x78, x73, x74
	lw x79, 9(x71)
	lw x79, 0(x79)
	fmul x78, x78, x79
	fadd x77, x77, x78
	fmul x74, x74, x72
	lw x78, 9(x71)
	lw x78, 1(x78)
	fmul x74, x74, x78
	fadd x74, x77, x74
	fmul x72, x72, x73
	lw x73, 9(x71)
	lw x73, 2(x73)
	fmul x72, x72, x73
	fadd x72, x74, x72
pretrace_pixels_cont_b5378:
# B5378
	lw x73, 1(x71)
	bne	x73, x111, pretrace_pixels_beqelse_b5381
# B5379
	fsub x72, x72, x108
pretrace_pixels_beqelse_b5381:
# B5381
	fmul x73, x76, x76
	fmul x72, x75, x72
	fsub x72, x73, x72
	fle x73, x72, zero
	bne	x73, zero, pretrace_pixels_beqelse_b5388
# B5383
	lw x71, 6(x71)
	fsqrt x72, x72
	bne	x71, zero, pretrace_pixels_beqelse_b5385
# B5384
	fsub x71, x76, x72
	lw x70, 4(x70)
	fmul x70, x71, x70
	sw x70, 0(x24)
	j pretrace_pixels_cont_b5386 # adhoc jump(2)
pretrace_pixels_beqelse_b5385:
# B5385
	fadd x71, x76, x72
	lw x70, 4(x70)
	fmul x70, x71, x70
	sw x70, 0(x24)
pretrace_pixels_cont_b5386:
# B5386
	mv x70, x12
pretrace_pixels_cont_b5387:
# B5387
	bne	x70, zero, pretrace_pixels_beqelse_b5389
pretrace_pixels_beqelse_b5388:
pretrace_pixels_cont_b5388:
# B5388
	addi x69, x69, 1
	j pretrace_pixels_cont_b5479 # adhoc jump(2)
pretrace_pixels_beqelse_b5389:
# B5389
	lw x70, 0(x24)
	fle x70, x25, x70
	beq	x70, zero, pretrace_pixels_bneelse_b5391
# B5390
	addi x69, x69, 1
	j pretrace_pixels_cont_b5479 # adhoc jump(2)
pretrace_pixels_bneelse_b5391:
# B5391
	mv x72, x37
	mv x71, x12
pretrace_pixels_loop_b5392:
# B5392
	add x4, x72, x71
	lw x70, 0(x4)
	beq	x70, x29, pretrace_pixels_bneelse_b5476
# B5394
	add x4, x30, x70
	lw x70, 0(x4)
	mv x74, x70
	mv x73, zero
pretrace_pixels_loop_b5395:
# B5395
	add x4, x74, x73
	lw x70, 0(x4)
	beq	x70, x29, pretrace_pixels_bneelse_b5473
# B5397
	add x4, x74, x73
	lw x70, 0(x4)
	add x4, x110, x70
	lw x75, 0(x4)
	lw x76, 0(x33)
	lw x77, 5(x75)
	lw x77, 0(x77)
	fsub x76, x76, x77
	lw x77, 1(x33)
	lw x78, 5(x75)
	lw x78, 1(x78)
	fsub x77, x77, x78
	lw x78, 2(x33)
	lw x79, 5(x75)
	lw x79, 2(x79)
	fsub x78, x78, x79
	lw x79, 1(x38)
	add x4, x79, x70
	lw x79, 0(x4)
	lw x8, 1(x75)
	bne	x8, x12, pretrace_pixels_beqelse_b5399
# B5398
	lw x8, 0(x38)
	lw x80, 0(x79)
	fsub x80, x80, x76
	lw x81, 1(x79)
	fmul x80, x80, x81
	lw x81, 1(x8)
	fmul x81, x80, x81
	fadd x81, x81, x77
	fabs x81, x81
	lw x82, 4(x75)
	lw x82, 1(x82)
	fle x81, x82, x81
	bne	x81, zero, pretrace_pixels_beqelse_b5405
# B5401
	lw x81, 2(x8)
	fmul x81, x80, x81
	fadd x81, x81, x78
	fabs x81, x81
	lw x82, 4(x75)
	lw x82, 2(x82)
	fle x81, x82, x81
	bne	x81, zero, pretrace_pixels_beqelse_b5405
# B5403
	lw x81, 1(x79)
	feq x81, x81, zero
	xori x81, x81, 1
	mv x82, x81
# B5404
	bne	x82, zero, pretrace_pixels_beqelse_b5406
pretrace_pixels_beqelse_b5405:
# B5405
	lw x80, 2(x79)
	fsub x80, x80, x77
	lw x81, 3(x79)
	fmul x80, x80, x81
	lw x81, 0(x8)
	fmul x81, x80, x81
	fadd x81, x81, x76
	fabs x81, x81
	lw x82, 4(x75)
	lw x82, 0(x82)
	fle x81, x82, x81
	bne	x81, zero, pretrace_pixels_beqelse_b5412
# B5408
	lw x81, 2(x8)
	fmul x81, x80, x81
	fadd x81, x81, x78
	fabs x81, x81
	lw x82, 4(x75)
	lw x82, 2(x82)
	fle x81, x82, x81
	bne	x81, zero, pretrace_pixels_beqelse_b5412
# B5410
	lw x81, 3(x79)
	feq x81, x81, zero
	xori x81, x81, 1
	mv x82, x81
# B5411
	bne	x82, zero, pretrace_pixels_beqelse_b5413
pretrace_pixels_beqelse_b5412:
# B5412
	lw x80, 4(x79)
	fsub x78, x80, x78
	lw x80, 5(x79)
	fmul x78, x78, x80
	lw x80, 0(x8)
	fmul x80, x78, x80
	fadd x76, x80, x76
	fabs x76, x76
	lw x80, 4(x75)
	lw x80, 0(x80)
	fle x76, x80, x76
	bne	x76, zero, pretrace_pixels_beqelse_b5419
# B5415
	lw x76, 1(x8)
	fmul x76, x78, x76
	fadd x76, x76, x77
	fabs x76, x76
	lw x75, 4(x75)
	lw x75, 1(x75)
	fle x75, x75, x76
	bne	x75, zero, pretrace_pixels_beqelse_b5419
# B5417
	lw x75, 5(x79)
	feq x75, x75, zero
	xori x75, x75, 1
	mv x76, x75
# B5418
	bne	x76, zero, pretrace_pixels_beqelse_b5420
pretrace_pixels_beqelse_b5419:
# B5419
	lw x76, 0(x24)
	j pretrace_pixels_cont_b5439 # adhoc jump(2)
pretrace_pixels_beqelse_b5420:
# B5420
	sw x78, 0(x24)
	mv x75, x111
	j pretrace_pixels_cont_b5438 # adhoc jump(2)
pretrace_pixels_beqelse_b5413:
# B5413
	sw x80, 0(x24)
	mv x75, x107
	j pretrace_pixels_cont_b5438 # adhoc jump(2)
pretrace_pixels_beqelse_b5406:
# B5406
	sw x80, 0(x24)
	mv x75, x12
	j pretrace_pixels_cont_b5438 # adhoc jump(2)
pretrace_pixels_beqelse_b5399:
# B5399
	bne	x8, x107, pretrace_pixels_beqelse_b5422
# B5421
	lw x75, 0(x79)
	fle x75, zero, x75
	beq	x75, zero, pretrace_pixels_bneelse_b5424
# B5423
	lw x76, 0(x24)
	j pretrace_pixels_cont_b5439 # adhoc jump(2)
pretrace_pixels_bneelse_b5424:
# B5424
	lw x75, 1(x79)
	fmul x75, x75, x76
	lw x76, 2(x79)
	fmul x76, x76, x77
	fadd x75, x75, x76
	lw x76, 3(x79)
	fmul x76, x76, x78
	fadd x75, x75, x76
	sw x75, 0(x24)
	mv x75, x12
	j pretrace_pixels_cont_b5438 # adhoc jump(2)
pretrace_pixels_beqelse_b5422:
# B5422
	lw x8, 0(x79)
	feq x80, x8, zero
	bne	x80, zero, pretrace_pixels_beqelse_b5426
# B5425
	lw x80, 1(x79)
	fmul x80, x80, x76
	lw x81, 2(x79)
	fmul x81, x81, x77
	fadd x80, x80, x81
	lw x81, 3(x79)
	fmul x81, x81, x78
	fadd x80, x80, x81
	fmul x81, x76, x76
	lw x82, 4(x75)
	lw x82, 0(x82)
	fmul x81, x81, x82
	fmul x82, x77, x77
	lw x83, 4(x75)
	lw x83, 1(x83)
	fmul x82, x82, x83
	fadd x81, x81, x82
	fmul x82, x78, x78
	lw x83, 4(x75)
	lw x83, 2(x83)
	fmul x82, x82, x83
	fadd x81, x81, x82
	lw x82, 3(x75)
	bne	x82, zero, pretrace_pixels_beqelse_b5428
# B5427
	mv x76, x81
	j pretrace_pixels_cont_b5429 # adhoc jump(2)
pretrace_pixels_beqelse_b5428:
# B5428
	fmul x82, x77, x78
	lw x83, 9(x75)
	lw x83, 0(x83)
	fmul x82, x82, x83
	fadd x81, x81, x82
	fmul x78, x78, x76
	lw x82, 9(x75)
	lw x82, 1(x82)
	fmul x78, x78, x82
	fadd x78, x81, x78
	fmul x76, x76, x77
	lw x77, 9(x75)
	lw x77, 2(x77)
	fmul x76, x76, x77
	fadd x76, x78, x76
pretrace_pixels_cont_b5429:
# B5429
	lw x77, 1(x75)
	bne	x77, x111, pretrace_pixels_beqelse_b5432
# B5430
	fsub x76, x76, x108
pretrace_pixels_beqelse_b5432:
# B5432
	fmul x77, x80, x80
	fmul x76, x8, x76
	fsub x76, x77, x76
	fle x77, x76, zero
	beq	x77, zero, pretrace_pixels_bneelse_b5434
# B5433
	lw x76, 0(x24)
	j pretrace_pixels_cont_b5439 # adhoc jump(2)
pretrace_pixels_bneelse_b5434:
# B5434
	lw x75, 6(x75)
	fsqrt x76, x76
	bne	x75, zero, pretrace_pixels_beqelse_b5436
# B5435
	fsub x75, x80, x76
	lw x76, 4(x79)
	fmul x75, x75, x76
	sw x75, 0(x24)
	j pretrace_pixels_cont_b5437 # adhoc jump(2)
pretrace_pixels_beqelse_b5436:
# B5436
	fadd x75, x80, x76
	lw x76, 4(x79)
	fmul x75, x75, x76
	sw x75, 0(x24)
pretrace_pixels_cont_b5437:
# B5437
	mv x75, x12
pretrace_pixels_cont_b5438:
# B5438
	lw x76, 0(x24)
	bne	x75, zero, pretrace_pixels_beqelse_b5440
	j pretrace_pixels_cont_b5439 # adhoc jump(3)
pretrace_pixels_beqelse_b5440:
# B5440
	fle x75, x66, x76
	xori x75, x75, 1
# B5441
	addi x73, x73, 1
	bne	x75, zero, pretrace_pixels_beqelse_b5443
	j pretrace_pixels_cont_b5442 # adhoc jump(3)
pretrace_pixels_beqelse_b5443:
# B5443
	fadd x70, x76, x32
	lw x75, 0(x26)
	fmul x75, x75, x70
	lw x76, 0(x33)
	fadd x75, x75, x76
	lw x76, 1(x26)
	fmul x76, x76, x70
	lw x77, 1(x33)
	fadd x76, x76, x77
	lw x77, 2(x26)
	fmul x70, x77, x70
	lw x77, 2(x33)
	fadd x70, x70, x77
	mv x77, zero
	mv x80, x70
	mv x8, x76
	mv x78, x74
	mv x79, x75
pretrace_pixels_loop_b5446:
# B5446
	add x4, x78, x77
	lw x70, 0(x4)
	bne	x70, x29, pretrace_pixels_beqelse_b5448
# B5447
	mv x75, x12
# B5469
	bne	x75, zero, pretrace_pixels_beqelse_b5471
	j pretrace_pixels_cont_b5470 # adhoc jump(3)
pretrace_pixels_beqelse_b5471:
# B5471
	mv x70, x12
# B5472
	bne	x70, zero, pretrace_pixels_beqelse_b5474
	j pretrace_pixels_cont_b5473 # adhoc jump(3)
pretrace_pixels_beqelse_b5474:
# B5474
	mv x73, x12
# B5475
	bne	x73, zero, pretrace_pixels_beqelse_b5477
pretrace_pixels_bneelse_b5476:
# B5476
	addi x69, x69, 1
	j pretrace_pixels_cont_b5479 # adhoc jump(2)
pretrace_pixels_beqelse_b5477:
# B5477
	mv x70, x12
pretrace_pixels_cont_b5478:
# B5478
	addi x69, x69, 1
	bne	x70, zero, pretrace_pixels_beqelse_b5480
pretrace_pixels_cont_b5479:
# B5479
	j pretrace_pixels_loop_b5342 # loopback to while entry from B5479
pretrace_pixels_beqelse_b5480:
# B5480
	mv x72, x37
	mv x71, x12
pretrace_pixels_loop_b5481:
# B5481
	add x4, x72, x71
	lw x37, 0(x4)
	beq	x37, x29, pretrace_pixels_bneelse_b5565
# B5483
	add x4, x30, x37
	lw x37, 0(x4)
	mv x70, zero
	mv x73, x37
pretrace_pixels_loop_b5484:
# B5484
	add x4, x73, x70
	lw x37, 0(x4)
	beq	x37, x29, pretrace_pixels_bneelse_b5562
# B5486
	add x4, x73, x70
	lw x37, 0(x4)
	add x4, x110, x37
	lw x74, 0(x4)
	lw x75, 0(x33)
	lw x76, 5(x74)
	lw x76, 0(x76)
	fsub x75, x75, x76
	lw x76, 1(x33)
	lw x77, 5(x74)
	lw x77, 1(x77)
	fsub x76, x76, x77
	lw x77, 2(x33)
	lw x78, 5(x74)
	lw x78, 2(x78)
	fsub x77, x77, x78
	lw x78, 1(x38)
	add x4, x78, x37
	lw x78, 0(x4)
	lw x79, 1(x74)
	bne	x79, x12, pretrace_pixels_beqelse_b5488
# B5487
	lw x79, 0(x38)
	lw x8, 0(x78)
	fsub x8, x8, x75
	lw x80, 1(x78)
	fmul x8, x8, x80
	lw x80, 1(x79)
	fmul x80, x8, x80
	fadd x80, x80, x76
	fabs x80, x80
	lw x81, 4(x74)
	lw x81, 1(x81)
	fle x80, x81, x80
	bne	x80, zero, pretrace_pixels_beqelse_b5494
# B5490
	lw x80, 2(x79)
	fmul x80, x8, x80
	fadd x80, x80, x77
	fabs x80, x80
	lw x81, 4(x74)
	lw x81, 2(x81)
	fle x80, x81, x80
	bne	x80, zero, pretrace_pixels_beqelse_b5494
# B5492
	lw x80, 1(x78)
	feq x80, x80, zero
	xori x80, x80, 1
	mv x81, x80
# B5493
	bne	x81, zero, pretrace_pixels_beqelse_b5495
pretrace_pixels_beqelse_b5494:
# B5494
	lw x8, 2(x78)
	fsub x8, x8, x76
	lw x80, 3(x78)
	fmul x8, x8, x80
	lw x80, 0(x79)
	fmul x80, x8, x80
	fadd x80, x80, x75
	fabs x80, x80
	lw x81, 4(x74)
	lw x81, 0(x81)
	fle x80, x81, x80
	bne	x80, zero, pretrace_pixels_beqelse_b5501
# B5497
	lw x80, 2(x79)
	fmul x80, x8, x80
	fadd x80, x80, x77
	fabs x80, x80
	lw x81, 4(x74)
	lw x81, 2(x81)
	fle x80, x81, x80
	bne	x80, zero, pretrace_pixels_beqelse_b5501
# B5499
	lw x80, 3(x78)
	feq x80, x80, zero
	xori x80, x80, 1
	mv x81, x80
# B5500
	bne	x81, zero, pretrace_pixels_beqelse_b5502
pretrace_pixels_beqelse_b5501:
# B5501
	lw x8, 4(x78)
	fsub x77, x8, x77
	lw x8, 5(x78)
	fmul x77, x77, x8
	lw x8, 0(x79)
	fmul x8, x77, x8
	fadd x75, x8, x75
	fabs x75, x75
	lw x8, 4(x74)
	lw x8, 0(x8)
	fle x75, x8, x75
	bne	x75, zero, pretrace_pixels_beqelse_b5508
# B5504
	lw x75, 1(x79)
	fmul x75, x77, x75
	fadd x75, x75, x76
	fabs x75, x75
	lw x74, 4(x74)
	lw x74, 1(x74)
	fle x74, x74, x75
	bne	x74, zero, pretrace_pixels_beqelse_b5508
# B5506
	lw x74, 5(x78)
	feq x74, x74, zero
	xori x74, x74, 1
	mv x75, x74
# B5507
	bne	x75, zero, pretrace_pixels_beqelse_b5509
pretrace_pixels_beqelse_b5508:
# B5508
	lw x75, 0(x24)
	j pretrace_pixels_cont_b5528 # adhoc jump(2)
pretrace_pixels_beqelse_b5509:
# B5509
	sw x77, 0(x24)
	mv x74, x111
	j pretrace_pixels_cont_b5527 # adhoc jump(2)
pretrace_pixels_beqelse_b5502:
# B5502
	sw x8, 0(x24)
	mv x74, x107
	j pretrace_pixels_cont_b5527 # adhoc jump(2)
pretrace_pixels_beqelse_b5495:
# B5495
	sw x8, 0(x24)
	mv x74, x12
	j pretrace_pixels_cont_b5527 # adhoc jump(2)
pretrace_pixels_beqelse_b5488:
# B5488
	bne	x79, x107, pretrace_pixels_beqelse_b5511
# B5510
	lw x74, 0(x78)
	fle x74, zero, x74
	beq	x74, zero, pretrace_pixels_bneelse_b5513
# B5512
	lw x75, 0(x24)
	j pretrace_pixels_cont_b5528 # adhoc jump(2)
pretrace_pixels_bneelse_b5513:
# B5513
	lw x74, 1(x78)
	fmul x74, x74, x75
	lw x75, 2(x78)
	fmul x75, x75, x76
	fadd x74, x74, x75
	lw x75, 3(x78)
	fmul x75, x75, x77
	fadd x74, x74, x75
	sw x74, 0(x24)
	mv x74, x12
	j pretrace_pixels_cont_b5527 # adhoc jump(2)
pretrace_pixels_beqelse_b5511:
# B5511
	lw x79, 0(x78)
	feq x8, x79, zero
	bne	x8, zero, pretrace_pixels_beqelse_b5515
# B5514
	lw x8, 1(x78)
	fmul x8, x8, x75
	lw x80, 2(x78)
	fmul x80, x80, x76
	fadd x8, x8, x80
	lw x80, 3(x78)
	fmul x80, x80, x77
	fadd x8, x8, x80
	fmul x80, x75, x75
	lw x81, 4(x74)
	lw x81, 0(x81)
	fmul x80, x80, x81
	fmul x81, x76, x76
	lw x82, 4(x74)
	lw x82, 1(x82)
	fmul x81, x81, x82
	fadd x80, x80, x81
	fmul x81, x77, x77
	lw x82, 4(x74)
	lw x82, 2(x82)
	fmul x81, x81, x82
	fadd x80, x80, x81
	lw x81, 3(x74)
	bne	x81, zero, pretrace_pixels_beqelse_b5517
# B5516
	mv x75, x80
	j pretrace_pixels_cont_b5518 # adhoc jump(2)
pretrace_pixels_beqelse_b5517:
# B5517
	fmul x81, x76, x77
	lw x82, 9(x74)
	lw x82, 0(x82)
	fmul x81, x81, x82
	fadd x80, x80, x81
	fmul x77, x77, x75
	lw x81, 9(x74)
	lw x81, 1(x81)
	fmul x77, x77, x81
	fadd x77, x80, x77
	fmul x75, x75, x76
	lw x76, 9(x74)
	lw x76, 2(x76)
	fmul x75, x75, x76
	fadd x75, x77, x75
pretrace_pixels_cont_b5518:
# B5518
	lw x76, 1(x74)
	bne	x76, x111, pretrace_pixels_beqelse_b5521
# B5519
	fsub x75, x75, x108
pretrace_pixels_beqelse_b5521:
# B5521
	fmul x76, x8, x8
	fmul x75, x79, x75
	fsub x75, x76, x75
	fle x76, x75, zero
	beq	x76, zero, pretrace_pixels_bneelse_b5523
# B5522
	lw x75, 0(x24)
	j pretrace_pixels_cont_b5528 # adhoc jump(2)
pretrace_pixels_bneelse_b5523:
# B5523
	lw x74, 6(x74)
	fsqrt x75, x75
	bne	x74, zero, pretrace_pixels_beqelse_b5525
# B5524
	fsub x74, x8, x75
	lw x75, 4(x78)
	fmul x74, x74, x75
	sw x74, 0(x24)
	j pretrace_pixels_cont_b5526 # adhoc jump(2)
pretrace_pixels_beqelse_b5525:
# B5525
	fadd x74, x8, x75
	lw x75, 4(x78)
	fmul x74, x74, x75
	sw x74, 0(x24)
pretrace_pixels_cont_b5526:
# B5526
	mv x74, x12
pretrace_pixels_cont_b5527:
# B5527
	lw x75, 0(x24)
	bne	x74, zero, pretrace_pixels_beqelse_b5529
	j pretrace_pixels_cont_b5528 # adhoc jump(3)
pretrace_pixels_beqelse_b5529:
# B5529
	fle x74, x66, x75
	xori x74, x74, 1
# B5530
	addi x70, x70, 1
	bne	x74, zero, pretrace_pixels_beqelse_b5532
	j pretrace_pixels_cont_b5531 # adhoc jump(3)
pretrace_pixels_beqelse_b5532:
# B5532
	fadd x37, x75, x32
	lw x74, 0(x26)
	fmul x74, x74, x37
	lw x75, 0(x33)
	fadd x74, x74, x75
	lw x75, 1(x26)
	fmul x75, x75, x37
	lw x76, 1(x33)
	fadd x75, x75, x76
	lw x76, 2(x26)
	fmul x37, x76, x37
	lw x76, 2(x33)
	fadd x37, x37, x76
	mv x77, x73
	mv x8, x37
	mv x76, zero
	mv x78, x74
	mv x79, x75
pretrace_pixels_loop_b5535:
# B5535
	add x4, x77, x76
	lw x37, 0(x4)
	bne	x37, x29, pretrace_pixels_beqelse_b5537
# B5536
	mv x74, x12
# B5558
	bne	x74, zero, pretrace_pixels_beqelse_b5560
	j pretrace_pixels_cont_b5559 # adhoc jump(3)
pretrace_pixels_beqelse_b5560:
# B5560
	mv x37, x12
# B5561
	bne	x37, zero, pretrace_pixels_beqelse_b5563
	j pretrace_pixels_cont_b5562 # adhoc jump(3)
pretrace_pixels_beqelse_b5563:
# B5563
	mv x70, x12
# B5564
	bne	x70, zero, pretrace_pixels_beqelse_b5566
pretrace_pixels_bneelse_b5565:
# B5565
	j pretrace_pixels_loop_b5342 # loopback to while entry from B5565
pretrace_pixels_beqelse_b5566:
# B5566
	mv x37, x12
# B5567
	bne	x37, zero, pretrace_pixels_beqelse_b5575
pretrace_pixels_bneelse_b5568:
# B5568
	lw x37, 0(x31)
	lw x69, 0(x39)
	lw x7, 0(x37)
	fmul x69, x69, x7
	lw x7, 1(x39)
	lw x70, 1(x37)
	fmul x7, x7, x70
	fadd x69, x69, x7
	lw x7, 2(x39)
	lw x37, 2(x37)
	fmul x37, x7, x37
	fadd x37, x69, x37
	lw x22, 2(x22)
	fmul x69, x22, x65
	fmul x37, x69, x37
	lw x31, 0(x31)
	lw x69, 0(x68)
	lw x7, 0(x31)
	fmul x69, x69, x7
	lw x7, 1(x68)
	lw x70, 1(x31)
	fmul x7, x7, x70
	fadd x69, x69, x7
	lw x7, 2(x68)
	lw x31, 2(x31)
	fmul x31, x7, x31
	fadd x31, x69, x31
	fmul x22, x22, x31
	fle x31, x37, zero
	bne	x31, zero, pretrace_pixels_beqelse_b5572
# B5571
	lw x31, 0(x10)
	lw x69, 0(x40)
	fmul x69, x37, x69
	fadd x31, x31, x69
	sw x31, 0(x10)
	lw x31, 1(x10)
	lw x69, 1(x40)
	fmul x69, x37, x69
	fadd x31, x31, x69
	sw x31, 1(x10)
	lw x31, 2(x10)
	lw x69, 2(x40)
	fmul x37, x37, x69
	fadd x31, x31, x37
	sw x31, 2(x10)
pretrace_pixels_beqelse_b5572:
# B5572
	fle x31, x22, zero
	bne	x31, zero, pretrace_pixels_beqelse_b5575
# B5574
	fmul x22, x22, x22
	fmul x22, x22, x22
	fmul x22, x22, x67
	lw x31, 0(x10)
	fadd x31, x31, x22
	sw x31, 0(x10)
	lw x31, 1(x10)
	fadd x31, x31, x22
	sw x31, 1(x10)
	lw x31, 2(x10)
	fadd x22, x31, x22
	sw x22, 2(x10)
pretrace_pixels_beqelse_b5575:
pretrace_pixels_cont_b5575:
# B5575
	addi x6, x6, -1
	j pretrace_pixels_loop_b5132 # loopback to while entry from B5575
pretrace_pixels_beqelse_b5537:
# B5537
	add x4, x110, x37
	lw x37, 0(x4)
	lw x74, 5(x37)
	lw x74, 0(x74)
	fsub x74, x78, x74
	lw x75, 5(x37)
	lw x75, 1(x75)
	fsub x75, x79, x75
	lw x80, 5(x37)
	lw x80, 2(x80)
	fsub x80, x8, x80
	lw x81, 1(x37)
	bne	x81, x12, pretrace_pixels_beqelse_b5539
# B5538
	fabs x74, x74
	lw x81, 4(x37)
	lw x81, 0(x81)
	fle x74, x81, x74
	bne	x74, zero, pretrace_pixels_beqelse_b5545
# B5541
	fabs x74, x75
	lw x75, 4(x37)
	lw x75, 1(x75)
	fle x74, x75, x74
	bne	x74, zero, pretrace_pixels_beqelse_b5545
# B5543
	fabs x74, x80
	lw x75, 4(x37)
	lw x75, 2(x75)
	fle x74, x75, x74
	xori x74, x74, 1
	mv x75, x74
# B5544
	bne	x75, zero, pretrace_pixels_beqelse_b5546
pretrace_pixels_beqelse_b5545:
# B5545
	lw x37, 6(x37)
	xori x37, x37, 1
	j pretrace_pixels_cont_b5555 # adhoc jump(2)
pretrace_pixels_beqelse_b5546:
# B5546
	lw x37, 6(x37)
	j pretrace_pixels_cont_b5555 # adhoc jump(2)
pretrace_pixels_beqelse_b5539:
# B5539
	bne	x81, x107, pretrace_pixels_beqelse_b5548
# B5547
	lw x81, 4(x37)
	lw x82, 0(x81)
	fmul x74, x82, x74
	lw x82, 1(x81)
	fmul x75, x82, x75
	fadd x74, x74, x75
	lw x75, 2(x81)
	fmul x75, x75, x80
	fadd x74, x74, x75
	lw x37, 6(x37)
	fle x74, zero, x74
	xori x74, x74, 1
	xor x37, x37, x74
	xori x37, x37, 1
	j pretrace_pixels_cont_b5555 # adhoc jump(2)
pretrace_pixels_beqelse_b5548:
# B5548
	fmul x81, x74, x74
	lw x82, 4(x37)
	lw x82, 0(x82)
	fmul x81, x81, x82
	fmul x82, x75, x75
	lw x83, 4(x37)
	lw x83, 1(x83)
	fmul x82, x82, x83
	fadd x81, x81, x82
	fmul x82, x80, x80
	lw x83, 4(x37)
	lw x83, 2(x83)
	fmul x82, x82, x83
	fadd x81, x81, x82
	lw x82, 3(x37)
	bne	x82, zero, pretrace_pixels_beqelse_b5550
# B5549
	mv x74, x81
	j pretrace_pixels_cont_b5551 # adhoc jump(2)
pretrace_pixels_beqelse_b5550:
# B5550
	fmul x82, x75, x80
	lw x83, 9(x37)
	lw x83, 0(x83)
	fmul x82, x82, x83
	fadd x81, x81, x82
	fmul x80, x80, x74
	lw x82, 9(x37)
	lw x82, 1(x82)
	fmul x80, x80, x82
	fadd x80, x81, x80
	fmul x74, x74, x75
	lw x75, 9(x37)
	lw x75, 2(x75)
	fmul x74, x74, x75
	fadd x74, x80, x74
pretrace_pixels_cont_b5551:
# B5551
	lw x75, 1(x37)
	bne	x75, x111, pretrace_pixels_beqelse_b5554
# B5552
	fsub x74, x74, x108
pretrace_pixels_beqelse_b5554:
# B5554
	lw x37, 6(x37)
	fle x74, zero, x74
	xori x74, x74, 1
	xor x37, x37, x74
	xori x37, x37, 1
pretrace_pixels_cont_b5555:
# B5555
	bne	x37, zero, pretrace_pixels_beqelse_b5559
# B5556
	addi x76, x76, 1
	j pretrace_pixels_loop_b5535 # loopback to while entry from B5556
pretrace_pixels_beqelse_b5559:
pretrace_pixels_cont_b5559:
# B5559
	j pretrace_pixels_loop_b5484 # loopback to while entry from B5559
pretrace_pixels_beqelse_b5515:
# B5515
	lw x75, 0(x24)
pretrace_pixels_cont_b5528:
# B5528
	addi x70, x70, 1
pretrace_pixels_cont_b5531:
# B5531
	add x4, x110, x37
	lw x37, 0(x4)
	lw x37, 6(x37)
	beq	x37, zero, pretrace_pixels_bneelse_b5562
	j	pretrace_pixels_loop_b5484 # moved need extra jump
pretrace_pixels_bneelse_b5562:
pretrace_pixels_cont_b5562:
# B5562
	addi x71, x71, 1
	j pretrace_pixels_loop_b5481 # loopback to while entry from B5562
	j pretrace_pixels_loop_b5484 # loopback to while entry from B5531
pretrace_pixels_beqelse_b5448:
# B5448
	add x4, x110, x70
	lw x70, 0(x4)
	lw x75, 5(x70)
	lw x75, 0(x75)
	fsub x75, x79, x75
	lw x76, 5(x70)
	lw x76, 1(x76)
	fsub x76, x8, x76
	lw x81, 5(x70)
	lw x81, 2(x81)
	fsub x81, x80, x81
	lw x82, 1(x70)
	bne	x82, x12, pretrace_pixels_beqelse_b5450
# B5449
	fabs x75, x75
	lw x82, 4(x70)
	lw x82, 0(x82)
	fle x75, x82, x75
	bne	x75, zero, pretrace_pixels_beqelse_b5456
# B5452
	fabs x75, x76
	lw x76, 4(x70)
	lw x76, 1(x76)
	fle x75, x76, x75
	bne	x75, zero, pretrace_pixels_beqelse_b5456
# B5454
	fabs x75, x81
	lw x76, 4(x70)
	lw x76, 2(x76)
	fle x75, x76, x75
	xori x75, x75, 1
	mv x76, x75
# B5455
	bne	x76, zero, pretrace_pixels_beqelse_b5457
pretrace_pixels_beqelse_b5456:
# B5456
	lw x70, 6(x70)
	xori x70, x70, 1
	j pretrace_pixels_cont_b5466 # adhoc jump(2)
pretrace_pixels_beqelse_b5457:
# B5457
	lw x70, 6(x70)
	j pretrace_pixels_cont_b5466 # adhoc jump(2)
pretrace_pixels_beqelse_b5450:
# B5450
	bne	x82, x107, pretrace_pixels_beqelse_b5459
# B5458
	lw x82, 4(x70)
	lw x83, 0(x82)
	fmul x75, x83, x75
	lw x83, 1(x82)
	fmul x76, x83, x76
	fadd x75, x75, x76
	lw x76, 2(x82)
	fmul x76, x76, x81
	fadd x75, x75, x76
	lw x70, 6(x70)
	fle x75, zero, x75
	xori x75, x75, 1
	xor x70, x70, x75
	xori x70, x70, 1
	j pretrace_pixels_cont_b5466 # adhoc jump(2)
pretrace_pixels_beqelse_b5459:
# B5459
	fmul x82, x75, x75
	lw x83, 4(x70)
	lw x83, 0(x83)
	fmul x82, x82, x83
	fmul x83, x76, x76
	lw x84, 4(x70)
	lw x84, 1(x84)
	fmul x83, x83, x84
	fadd x82, x82, x83
	fmul x83, x81, x81
	lw x84, 4(x70)
	lw x84, 2(x84)
	fmul x83, x83, x84
	fadd x82, x82, x83
	lw x83, 3(x70)
	bne	x83, zero, pretrace_pixels_beqelse_b5461
# B5460
	mv x75, x82
	j pretrace_pixels_cont_b5462 # adhoc jump(2)
pretrace_pixels_beqelse_b5461:
# B5461
	fmul x83, x76, x81
	lw x84, 9(x70)
	lw x84, 0(x84)
	fmul x83, x83, x84
	fadd x82, x82, x83
	fmul x81, x81, x75
	lw x83, 9(x70)
	lw x83, 1(x83)
	fmul x81, x81, x83
	fadd x81, x82, x81
	fmul x75, x75, x76
	lw x76, 9(x70)
	lw x76, 2(x76)
	fmul x75, x75, x76
	fadd x75, x81, x75
pretrace_pixels_cont_b5462:
# B5462
	lw x76, 1(x70)
	bne	x76, x111, pretrace_pixels_beqelse_b5465
# B5463
	fsub x75, x75, x108
pretrace_pixels_beqelse_b5465:
# B5465
	lw x70, 6(x70)
	fle x75, zero, x75
	xori x75, x75, 1
	xor x70, x70, x75
	xori x70, x70, 1
pretrace_pixels_cont_b5466:
# B5466
	bne	x70, zero, pretrace_pixels_beqelse_b5470
# B5467
	addi x77, x77, 1
	j pretrace_pixels_loop_b5446 # loopback to while entry from B5467
pretrace_pixels_beqelse_b5470:
pretrace_pixels_cont_b5470:
# B5470
	j pretrace_pixels_loop_b5395 # loopback to while entry from B5470
pretrace_pixels_beqelse_b5426:
# B5426
	lw x76, 0(x24)
pretrace_pixels_cont_b5439:
# B5439
	addi x73, x73, 1
pretrace_pixels_cont_b5442:
# B5442
	add x4, x110, x70
	lw x70, 0(x4)
	lw x70, 6(x70)
	beq	x70, zero, pretrace_pixels_bneelse_b5473
	j	pretrace_pixels_loop_b5395 # moved need extra jump
pretrace_pixels_bneelse_b5473:
pretrace_pixels_cont_b5473:
# B5473
	addi x71, x71, 1
	j pretrace_pixels_loop_b5392 # loopback to while entry from B5473
	j pretrace_pixels_loop_b5395 # loopback to while entry from B5442
pretrace_pixels_bleelse_b5576:
# B5576
	lui x20, 253133
	addi x20, x20, -819
	fle x20, x16, x20
	bne	x20, zero, pretrace_pixels_beqelse_b5584
# B5578
	addi x20, x15, 1
	bge	x15, x109, pretrace_pixels_bgtelse_b5581
# B5580
	add x4, x100, x20
	sw x29, 0(x4)
pretrace_pixels_bgtelse_b5581:
# B5581
	bne	x36, x107, pretrace_pixels_beqelse_b5584
# B5582
	lw x100, 7(x28)
	lw x100, 0(x100)
	fsub x100, x108, x100
	lw x14, 0(x14)
	mv x15, x20
	fmul x16, x16, x100
	fadd x19, x19, x14
	j pretrace_pixels_loop_b4481 # loopback to while entry from B5582
pretrace_pixels_beqelse_b5584:
pretrace_pixels_bleelse_b5584:
pretrace_pixels_bneelse_b5584:
pretrace_pixels_cont_b5584:
# B5584
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
	la x114, min_caml_diffuse_ray
	la x115, min_caml_dirvecs
	mv x116, x10
	mv x117, zero
pretrace_pixels_cont_b5585:
pretrace_pixels_loop_b5585:
# B5585
	bgt	x117, x109, pretrace_pixels_bleelse_b5615
# B5586
	lw x10, 2(x116)
	add x4, x10, x117
	lw x10, 0(x4)
	bgt	zero, x10, pretrace_pixels_bleelse_b5615
# B5588
	lw x10, 3(x116)
	add x4, x10, x117
	lw x10, 0(x4)
	beq	x10, zero, pretrace_pixels_bneelse_b5614
# B5591
	lw x10, 6(x116)
	lw x10, 0(x10)
	sw zero, 0(x114)
	sw zero, 1(x114)
	sw zero, 2(x114)
	lw x100, 7(x116)
	lw x11, 1(x116)
	add x4, x115, x10
	lw x10, 0(x4)
	add x4, x100, x117
	lw x100, 0(x4)
	add x4, x11, x117
	lw x11, 0(x4)
	lw x12, 0(x11)
	sw x12, 0(x112)
	lw x12, 1(x11)
	sw x12, 1(x112)
	lw x12, 2(x11)
	sw x12, 2(x112)
	lw x12, 0(x113)
	addi x12, x12, -1
	mv x14, x12
	mv x13, x11
pretrace_pixels_loop_b5592:
# B5592
	bgt	zero, x14, pretrace_pixels_bleelse_b5606
# B5593
	add x4, x110, x14
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
	bne	x16, x107, pretrace_pixels_beqelse_b5596
# B5595
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
	j pretrace_pixels_cont_b5605 # adhoc jump(2)
pretrace_pixels_beqelse_b5596:
# B5596
	bge	x107, x16, pretrace_pixels_bgtelse_b5605
# B5598
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
	bne	x21, zero, pretrace_pixels_beqelse_b5600
# B5599
	mv x12, x20
	j pretrace_pixels_cont_b5601 # adhoc jump(2)
pretrace_pixels_beqelse_b5600:
# B5600
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
pretrace_pixels_cont_b5601:
# B5601
	bne	x16, x111, pretrace_pixels_beqelse_b5604
# B5602
	fsub x12, x12, x108
pretrace_pixels_beqelse_b5604:
# B5604
	sw x12, 3(x15)
pretrace_pixels_bgtelse_b5605:
pretrace_pixels_cont_b5605:
# B5605
	addi x14, x14, -1
	j pretrace_pixels_loop_b5592 # loopback to while entry from B5605
pretrace_pixels_bleelse_b5606:
# B5606
	li x12, 118
	lui x118, 274784
	lui x119, 799072
	mv x123, x12
	mv x120, x10
	mv x121, x100
	mv x122, x11
pretrace_pixels_loop_b5607:
# B5607
	bgt	zero, x123, pretrace_pixels_bleelse_b5613
# B5608
	add x4, x120, x123
	lw x10, 0(x4)
	lw x10, 0(x10)
	lw x100, 0(x10)
	lw x11, 0(x121)
	fmul x100, x100, x11
	lw x11, 1(x10)
	lw x12, 1(x121)
	fmul x11, x11, x12
	fadd x100, x100, x11
	lw x10, 2(x10)
	lw x11, 2(x121)
	fmul x10, x10, x11
	fadd x10, x100, x10
	fle x100, zero, x10
	beq	x100, zero, pretrace_pixels_bneelse_b5611
# B5610
	add x4, x120, x123
	lw x5, 0(x4)
	fdiv x65, x10, x118
	addi	x2, x2, 25
	jal	trace_diffuse_ray.3077
	addi	x2, x2, -25
	j pretrace_pixels_cont_b5612 # adhoc jump(2)
pretrace_pixels_bneelse_b5611:
# B5611
	addi x100, x123, 1
	add x4, x120, x100
	lw x5, 0(x4)
	fdiv x65, x10, x119
	addi	x2, x2, 25
	jal	trace_diffuse_ray.3077
	addi	x2, x2, -25
pretrace_pixels_cont_b5612:
# B5612
	addi x123, x123, -2
	j pretrace_pixels_loop_b5607 # loopback to while entry from B5612
pretrace_pixels_bleelse_b5613:
# B5613
	lw x10, 5(x116)
	add x4, x10, x117
	lw x10, 0(x4)
	lw x100, 0(x114)
	sw x100, 0(x10)
	lw x100, 1(x114)
	sw x100, 1(x10)
	lw x100, 2(x114)
	sw x100, 2(x10)
pretrace_pixels_bneelse_b5614:
# B5614
	addi x117, x117, 1
	j pretrace_pixels_loop_b5585 # loopback to while entry from B5614
pretrace_pixels_bleelse_b5615:
# B5615
	addi x10, x102, -1
	addi x100, x103, 1
	li x11, 5
	bgt	x11, x100, pretrace_pixels_bleelse_b5618
# B5616
	addi x100, x100, -5
pretrace_pixels_bleelse_b5618:
# B5618
	mv x102, x10
	mv x103, x100
	j pretrace_pixels_loop_b4473 # loopback to while entry from B5618
pretrace_pixels_beqelse_b5078:
# B5078
	add x4, x110, x31
	lw x31, 0(x4)
	lw x7, 5(x31)
	lw x7, 0(x7)
	fsub x7, x73, x7
	lw x70, 5(x31)
	lw x70, 1(x70)
	fsub x70, x74, x70
	lw x76, 5(x31)
	lw x76, 2(x76)
	fsub x76, x75, x76
	lw x77, 1(x31)
	bne	x77, x12, pretrace_pixels_beqelse_b5080
# B5079
	fabs x7, x7
	lw x77, 4(x31)
	lw x77, 0(x77)
	fle x7, x77, x7
	bne	x7, zero, pretrace_pixels_beqelse_b5086
# B5082
	fabs x7, x70
	lw x70, 4(x31)
	lw x70, 1(x70)
	fle x7, x70, x7
	bne	x7, zero, pretrace_pixels_beqelse_b5086
# B5084
	fabs x7, x76
	lw x70, 4(x31)
	lw x70, 2(x70)
	fle x7, x70, x7
	xori x7, x7, 1
	mv x70, x7
# B5085
	bne	x70, zero, pretrace_pixels_beqelse_b5087
pretrace_pixels_beqelse_b5086:
# B5086
	lw x31, 6(x31)
	xori x31, x31, 1
	j pretrace_pixels_cont_b5096 # adhoc jump(2)
pretrace_pixels_beqelse_b5087:
# B5087
	lw x31, 6(x31)
	j pretrace_pixels_cont_b5096 # adhoc jump(2)
pretrace_pixels_beqelse_b5080:
# B5080
	bne	x77, x107, pretrace_pixels_beqelse_b5089
# B5088
	lw x77, 4(x31)
	lw x78, 0(x77)
	fmul x7, x78, x7
	lw x78, 1(x77)
	fmul x70, x78, x70
	fadd x7, x7, x70
	lw x70, 2(x77)
	fmul x70, x70, x76
	fadd x7, x7, x70
	lw x31, 6(x31)
	fle x7, zero, x7
	xori x7, x7, 1
	xor x31, x31, x7
	xori x31, x31, 1
	j pretrace_pixels_cont_b5096 # adhoc jump(2)
pretrace_pixels_beqelse_b5089:
# B5089
	fmul x77, x7, x7
	lw x78, 4(x31)
	lw x78, 0(x78)
	fmul x77, x77, x78
	fmul x78, x70, x70
	lw x79, 4(x31)
	lw x79, 1(x79)
	fmul x78, x78, x79
	fadd x77, x77, x78
	fmul x78, x76, x76
	lw x79, 4(x31)
	lw x79, 2(x79)
	fmul x78, x78, x79
	fadd x77, x77, x78
	lw x78, 3(x31)
	bne	x78, zero, pretrace_pixels_beqelse_b5091
# B5090
	mv x7, x77
	j pretrace_pixels_cont_b5092 # adhoc jump(2)
pretrace_pixels_beqelse_b5091:
# B5091
	fmul x78, x70, x76
	lw x79, 9(x31)
	lw x79, 0(x79)
	fmul x78, x78, x79
	fadd x77, x77, x78
	fmul x76, x76, x7
	lw x78, 9(x31)
	lw x78, 1(x78)
	fmul x76, x76, x78
	fadd x76, x77, x76
	fmul x7, x7, x70
	lw x70, 9(x31)
	lw x70, 2(x70)
	fmul x7, x7, x70
	fadd x7, x76, x7
pretrace_pixels_cont_b5092:
# B5092
	lw x70, 1(x31)
	bne	x70, x111, pretrace_pixels_beqelse_b5095
# B5093
	fsub x7, x7, x108
pretrace_pixels_beqelse_b5095:
# B5095
	lw x31, 6(x31)
	fle x7, zero, x7
	xori x7, x7, 1
	xor x31, x31, x7
	xori x31, x31, 1
pretrace_pixels_cont_b5096:
# B5096
	bne	x31, zero, pretrace_pixels_beqelse_b5100
# B5097
	addi x71, x71, 1
	j pretrace_pixels_loop_b5076 # loopback to while entry from B5097
pretrace_pixels_beqelse_b5100:
pretrace_pixels_cont_b5100:
# B5100
	j pretrace_pixels_loop_b5025 # loopback to while entry from B5100
pretrace_pixels_beqelse_b5056:
# B5056
	lw x70, 0(x24)
pretrace_pixels_cont_b5069:
# B5069
	addi x65, x65, 1
pretrace_pixels_cont_b5072:
# B5072
	add x4, x110, x31
	lw x31, 0(x4)
	lw x31, 6(x31)
	beq	x31, zero, pretrace_pixels_bneelse_b5103
	j	pretrace_pixels_loop_b5025 # moved need extra jump
pretrace_pixels_bneelse_b5103:
pretrace_pixels_cont_b5103:
# B5103
	addi x67, x67, 1
	j pretrace_pixels_loop_b5022 # loopback to while entry from B5103
	j pretrace_pixels_loop_b5025 # loopback to while entry from B5072
pretrace_pixels_beqelse_b4989:
# B4989
	add x4, x110, x65
	lw x65, 0(x4)
	lw x70, 5(x65)
	lw x70, 0(x70)
	fsub x70, x74, x70
	lw x71, 5(x65)
	lw x71, 1(x71)
	fsub x71, x75, x71
	lw x77, 5(x65)
	lw x77, 2(x77)
	fsub x77, x76, x77
	lw x78, 1(x65)
	bne	x78, x12, pretrace_pixels_beqelse_b4991
# B4990
	fabs x70, x70
	lw x78, 4(x65)
	lw x78, 0(x78)
	fle x70, x78, x70
	bne	x70, zero, pretrace_pixels_beqelse_b4997
# B4993
	fabs x70, x71
	lw x71, 4(x65)
	lw x71, 1(x71)
	fle x70, x71, x70
	bne	x70, zero, pretrace_pixels_beqelse_b4997
# B4995
	fabs x70, x77
	lw x71, 4(x65)
	lw x71, 2(x71)
	fle x70, x71, x70
	xori x70, x70, 1
	mv x71, x70
# B4996
	bne	x71, zero, pretrace_pixels_beqelse_b4998
pretrace_pixels_beqelse_b4997:
# B4997
	lw x65, 6(x65)
	xori x65, x65, 1
	j pretrace_pixels_cont_b5007 # adhoc jump(2)
pretrace_pixels_beqelse_b4998:
# B4998
	lw x65, 6(x65)
	j pretrace_pixels_cont_b5007 # adhoc jump(2)
pretrace_pixels_beqelse_b4991:
# B4991
	bne	x78, x107, pretrace_pixels_beqelse_b5000
# B4999
	lw x78, 4(x65)
	lw x79, 0(x78)
	fmul x70, x79, x70
	lw x79, 1(x78)
	fmul x71, x79, x71
	fadd x70, x70, x71
	lw x71, 2(x78)
	fmul x71, x71, x77
	fadd x70, x70, x71
	lw x65, 6(x65)
	fle x70, zero, x70
	xori x70, x70, 1
	xor x65, x65, x70
	xori x65, x65, 1
	j pretrace_pixels_cont_b5007 # adhoc jump(2)
pretrace_pixels_beqelse_b5000:
# B5000
	fmul x78, x70, x70
	lw x79, 4(x65)
	lw x79, 0(x79)
	fmul x78, x78, x79
	fmul x79, x71, x71
	lw x8, 4(x65)
	lw x8, 1(x8)
	fmul x79, x79, x8
	fadd x78, x78, x79
	fmul x79, x77, x77
	lw x8, 4(x65)
	lw x8, 2(x8)
	fmul x79, x79, x8
	fadd x78, x78, x79
	lw x79, 3(x65)
	bne	x79, zero, pretrace_pixels_beqelse_b5002
# B5001
	mv x70, x78
	j pretrace_pixels_cont_b5003 # adhoc jump(2)
pretrace_pixels_beqelse_b5002:
# B5002
	fmul x79, x71, x77
	lw x8, 9(x65)
	lw x8, 0(x8)
	fmul x79, x79, x8
	fadd x78, x78, x79
	fmul x77, x77, x70
	lw x79, 9(x65)
	lw x79, 1(x79)
	fmul x77, x77, x79
	fadd x77, x78, x77
	fmul x70, x70, x71
	lw x71, 9(x65)
	lw x71, 2(x71)
	fmul x70, x70, x71
	fadd x70, x77, x70
pretrace_pixels_cont_b5003:
# B5003
	lw x71, 1(x65)
	bne	x71, x111, pretrace_pixels_beqelse_b5006
# B5004
	fsub x70, x70, x108
pretrace_pixels_beqelse_b5006:
# B5006
	lw x65, 6(x65)
	fle x70, zero, x70
	xori x70, x70, 1
	xor x65, x65, x70
	xori x65, x65, 1
pretrace_pixels_cont_b5007:
# B5007
	bne	x65, zero, pretrace_pixels_beqelse_b5011
# B5008
	addi x72, x72, 1
	j pretrace_pixels_loop_b4987 # loopback to while entry from B5008
pretrace_pixels_beqelse_b5011:
pretrace_pixels_cont_b5011:
# B5011
	j pretrace_pixels_loop_b4936 # loopback to while entry from B5011
pretrace_pixels_beqelse_b4967:
# B4967
	lw x71, 0(x24)
pretrace_pixels_cont_b4980:
# B4980
	addi x69, x69, 1
pretrace_pixels_cont_b4983:
# B4983
	add x4, x110, x65
	lw x65, 0(x4)
	lw x65, 6(x65)
	beq	x65, zero, pretrace_pixels_bneelse_b5014
	j	pretrace_pixels_loop_b4936 # moved need extra jump
pretrace_pixels_bneelse_b5014:
pretrace_pixels_cont_b5014:
# B5014
	addi x67, x67, 1
	j pretrace_pixels_loop_b4933 # loopback to while entry from B5014
	j pretrace_pixels_loop_b4936 # loopback to while entry from B4983
pretrace_pixels_bleelse_b4475:
# B4475
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
body_main:
# B5619
# B5620
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
	la x7, min_caml_Tt79543
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
	la x5, min_caml_Ta79556
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
	la x5, min_caml_Ta79561
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
	la x7, min_caml_Tt79602
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
	la x7, min_caml_Tt79615
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
main_loop_b5621:
# B5621
	bgt	zero, x109, main_bleelse_b5624
# B5622
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
	j main_loop_b5621 # loopback to while entry from B5622
main_bleelse_b5624:
# B5624
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
main_loop_b5625:
# B5625
	bgt	zero, x111, main_bleelse_b5628
# B5626
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
	j main_loop_b5625 # loopback to while entry from B5626
main_bleelse_b5628:
# B5628
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
main_loop_b5629:
# B5629
	bgt	zero, x113, main_bleelse_b5632
# B5630
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
	j main_loop_b5629 # loopback to while entry from B5630
main_bleelse_b5632:
# B5632
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
main_loop_b5633:
# B5633
	fle x15, x13, x14
	bne	x15, zero, main_beqelse_b5636
# B5634
	fmul x14, x14, x114
	j main_loop_b5633 # loopback to while entry from B5634
main_beqelse_b5636:
# B5636
	mv x16, x12
	mv x17, x14
main_loop_b5637:
# B5637
	fle x13, x113, x16
	beq	x13, zero, main_bneelse_b5642
# B5639
	fle x13, x16, x17
	fdiv x14, x17, x114
	bne	x13, zero, main_beqelse_b5641
# B5640
	fsub x16, x16, x17
	mv x17, x14
	j main_loop_b5637 # loopback to while entry from B5640
main_beqelse_b5641:
# B5641
	mv x17, x14
	j main_loop_b5637 # loopback to while entry from B5641
main_bneelse_b5642:
# B5642
	lui x115, 263313
	addi x115, x115, -37
	fle x13, x115, x16
	bne	x13, zero, main_beqelse_b5644
# B5643
	mv x14, x16
	j main_cont_b5645 # adhoc jump(2)
main_beqelse_b5644:
# B5644
	fsub x14, x16, x115
main_cont_b5645:
# B5645
	bne	x13, zero, main_beqelse_b5647
# B5646
	li x13, 1
	j main_cont_b5648 # adhoc jump(2)
main_beqelse_b5647:
# B5647
	mv x13, zero
main_cont_b5648:
# B5648
	lui x116, 261265
	addi x116, x116, -37
	fle x15, x116, x14
	bne	x15, zero, main_beqelse_b5650
	j main_cont_b5651 # adhoc jump(3)
main_beqelse_b5650:
# B5650
	fsub x14, x115, x14
main_cont_b5651:
# B5651
	xor x13, x15, x13
	lui x117, 259217
	addi x117, x117, -37
	fle x15, x117, x14
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
	bne	x15, zero, main_beqelse_b5653
main_cont_b5652:
# B5652
	fmul x14, x14, x14
	fmul x15, x14, x121
	fadd x15, x120, x15
	fmul x15, x14, x15
	fadd x15, x119, x15
	fmul x14, x14, x15
	fadd x14, x118, x14
	j main_cont_b5654 # adhoc jump(2)
main_beqelse_b5653:
# B5653
	fsub x14, x116, x14
	fmul x15, x14, x14
	fmul x16, x15, x124
	fadd x16, x123, x16
	fmul x16, x15, x16
	fadd x16, x122, x16
	fmul x15, x15, x16
	fadd x15, x118, x15
	fmul x14, x14, x15
main_cont_b5654:
# B5654
	fle x15, x14, zero
	beq	x13, x15, main_bneelse_b5656
# B5655
	mv x13, x14
	j main_cont_b5657 # adhoc jump(2)
main_bneelse_b5656:
# B5656
	fsub x13, zero, x14
main_cont_b5657:
# B5657
	fle x100, x100, zero
	xori x100, x100, 1
	mv x15, x113
	mv x14, x12
main_loop_b5658:
# B5658
	fle x16, x14, x15
	bne	x16, zero, main_beqelse_b5661
# B5659
	fmul x15, x15, x114
	j main_loop_b5658 # loopback to while entry from B5659
main_beqelse_b5661:
# B5661
	mv x18, x15
	mv x17, x12
main_loop_b5662:
# B5662
	fle x12, x113, x17
	beq	x12, zero, main_bneelse_b5667
# B5664
	fle x12, x17, x18
	fdiv x14, x18, x114
	bne	x12, zero, main_beqelse_b5666
# B5665
	fsub x17, x17, x18
	mv x18, x14
	j main_loop_b5662 # loopback to while entry from B5665
main_beqelse_b5666:
# B5666
	mv x18, x14
	j main_loop_b5662 # loopback to while entry from B5666
main_bneelse_b5667:
# B5667
	fle x12, x115, x17
	bne	x12, zero, main_beqelse_b5669
# B5668
	mv x14, x17
	j main_cont_b5670 # adhoc jump(2)
main_beqelse_b5669:
# B5669
	fsub x14, x17, x115
main_cont_b5670:
# B5670
	xor x100, x12, x100
	fle x12, x116, x14
	bne	x12, zero, main_beqelse_b5672
# B5671
	mv x12, x14
	j main_cont_b5673 # adhoc jump(2)
main_beqelse_b5672:
# B5672
	fsub x12, x115, x14
main_cont_b5673:
# B5673
	fle x14, x117, x12
	bne	x14, zero, main_beqelse_b5675
# B5674
	fmul x14, x12, x12
	fmul x15, x14, x124
	fadd x15, x123, x15
	fmul x15, x14, x15
	fadd x15, x122, x15
	fmul x14, x14, x15
	fadd x14, x118, x14
	fmul x12, x12, x14
	j main_cont_b5676 # adhoc jump(2)
main_beqelse_b5675:
# B5675
	fsub x12, x116, x12
	fmul x12, x12, x12
	fmul x14, x12, x121
	fadd x14, x120, x14
	fmul x14, x12, x14
	fadd x14, x119, x14
	fmul x12, x12, x14
	fadd x12, x118, x12
main_cont_b5676:
# B5676
	fle x14, x12, zero
	beq	x100, x14, main_bneelse_b5678
# B5677
	mv x100, x12
	j main_cont_b5679 # adhoc jump(2)
main_bneelse_b5678:
# B5678
	fsub x100, zero, x12
main_cont_b5679:
# B5679
	in32 x12
	fmul x12, x12, x11
	fabs x14, x12
	mv x15, x14
	mv x16, x113
main_loop_b5680:
# B5680
	fle x17, x15, x16
	bne	x17, zero, main_beqelse_b5683
# B5681
	fmul x16, x16, x114
	j main_loop_b5680 # loopback to while entry from B5681
main_beqelse_b5683:
# B5683
	mv x19, x16
	mv x18, x14
main_loop_b5684:
# B5684
	fle x15, x113, x18
	beq	x15, zero, main_bneelse_b5689
# B5686
	fle x15, x18, x19
	fdiv x16, x19, x114
	bne	x15, zero, main_beqelse_b5688
# B5687
	fsub x18, x18, x19
	mv x19, x16
	j main_loop_b5684 # loopback to while entry from B5687
main_beqelse_b5688:
# B5688
	mv x19, x16
	j main_loop_b5684 # loopback to while entry from B5688
main_bneelse_b5689:
# B5689
	fle x15, x115, x18
	bne	x15, zero, main_beqelse_b5691
# B5690
	mv x16, x18
	j main_cont_b5692 # adhoc jump(2)
main_beqelse_b5691:
# B5691
	fsub x16, x18, x115
main_cont_b5692:
# B5692
	bne	x15, zero, main_beqelse_b5694
# B5693
	li x15, 1
	j main_cont_b5695 # adhoc jump(2)
main_beqelse_b5694:
# B5694
	mv x15, zero
main_cont_b5695:
# B5695
	fle x17, x116, x16
	bne	x17, zero, main_beqelse_b5697
	j main_cont_b5698 # adhoc jump(3)
main_beqelse_b5697:
# B5697
	fsub x16, x115, x16
main_cont_b5698:
# B5698
	xor x15, x17, x15
	fle x17, x117, x16
	bne	x17, zero, main_beqelse_b5700
main_cont_b5699:
# B5699
	fmul x16, x16, x16
	fmul x17, x16, x121
	fadd x17, x120, x17
	fmul x17, x16, x17
	fadd x17, x119, x17
	fmul x16, x16, x17
	fadd x16, x118, x16
	j main_cont_b5701 # adhoc jump(2)
main_beqelse_b5700:
# B5700
	fsub x16, x116, x16
	fmul x17, x16, x16
	fmul x18, x17, x124
	fadd x18, x123, x18
	fmul x18, x17, x18
	fadd x18, x122, x18
	fmul x17, x17, x18
	fadd x17, x118, x17
	fmul x16, x16, x17
main_cont_b5701:
# B5701
	fle x17, x16, zero
	beq	x15, x17, main_bneelse_b5703
# B5702
	mv x15, x16
	j main_cont_b5704 # adhoc jump(2)
main_bneelse_b5703:
# B5703
	fsub x15, zero, x16
main_cont_b5704:
# B5704
	fle x12, x12, zero
	xori x12, x12, 1
	mv x16, x14
	mv x17, x113
main_loop_b5705:
# B5705
	fle x18, x16, x17
	bne	x18, zero, main_beqelse_b5708
# B5706
	fmul x17, x17, x114
	j main_loop_b5705 # loopback to while entry from B5706
main_beqelse_b5708:
# B5708
	mv x19, x14
	mv x20, x17
main_loop_b5709:
# B5709
	fle x14, x113, x19
	beq	x14, zero, main_bneelse_b5714
# B5711
	fle x14, x19, x20
	fdiv x16, x20, x114
	bne	x14, zero, main_beqelse_b5713
# B5712
	fsub x19, x19, x20
	mv x20, x16
	j main_loop_b5709 # loopback to while entry from B5712
main_beqelse_b5713:
# B5713
	mv x20, x16
	j main_loop_b5709 # loopback to while entry from B5713
main_bneelse_b5714:
# B5714
	fle x14, x115, x19
	bne	x14, zero, main_beqelse_b5716
# B5715
	mv x16, x19
	j main_cont_b5717 # adhoc jump(2)
main_beqelse_b5716:
# B5716
	fsub x16, x19, x115
main_cont_b5717:
# B5717
	xor x12, x14, x12
	fle x14, x116, x16
	bne	x14, zero, main_beqelse_b5719
# B5718
	mv x14, x16
	j main_cont_b5720 # adhoc jump(2)
main_beqelse_b5719:
# B5719
	fsub x14, x115, x16
main_cont_b5720:
# B5720
	fle x16, x117, x14
	bne	x16, zero, main_beqelse_b5722
# B5721
	fmul x16, x14, x14
	fmul x17, x16, x124
	fadd x17, x123, x17
	fmul x17, x16, x17
	fadd x17, x122, x17
	fmul x16, x16, x17
	fadd x16, x118, x16
	fmul x14, x14, x16
	j main_cont_b5723 # adhoc jump(2)
main_beqelse_b5722:
# B5722
	fsub x14, x116, x14
	fmul x14, x14, x14
	fmul x16, x14, x121
	fadd x16, x120, x16
	fmul x16, x14, x16
	fadd x16, x119, x16
	fmul x14, x14, x16
	fadd x14, x118, x14
main_cont_b5723:
# B5723
	fle x16, x14, zero
	beq	x12, x16, main_bneelse_b5725
# B5724
	mv x12, x14
	j main_cont_b5726 # adhoc jump(2)
main_bneelse_b5725:
# B5725
	fsub x12, zero, x14
main_cont_b5726:
# B5726
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
main_loop_b5727:
# B5727
	fle x14, x12, x13
	bne	x14, zero, main_beqelse_b5730
# B5728
	fmul x13, x13, x114
	j main_loop_b5727 # loopback to while entry from B5728
main_beqelse_b5730:
# B5730
	mv x15, x10
	mv x16, x13
main_loop_b5731:
# B5731
	fle x12, x113, x15
	beq	x12, zero, main_bneelse_b5736
# B5733
	fle x12, x15, x16
	fdiv x13, x16, x114
	bne	x12, zero, main_beqelse_b5735
# B5734
	fsub x15, x15, x16
	mv x16, x13
	j main_loop_b5731 # loopback to while entry from B5734
main_beqelse_b5735:
# B5735
	mv x16, x13
	j main_loop_b5731 # loopback to while entry from B5735
main_bneelse_b5736:
# B5736
	fle x12, x115, x15
	bne	x12, zero, main_beqelse_b5738
# B5737
	mv x13, x15
	j main_cont_b5739 # adhoc jump(2)
main_beqelse_b5738:
# B5738
	fsub x13, x15, x115
main_cont_b5739:
# B5739
	xor x100, x12, x100
	fle x12, x116, x13
	bne	x12, zero, main_beqelse_b5741
# B5740
	mv x12, x13
	j main_cont_b5742 # adhoc jump(2)
main_beqelse_b5741:
# B5741
	fsub x12, x115, x13
main_cont_b5742:
# B5742
	fle x13, x117, x12
	bne	x13, zero, main_beqelse_b5744
# B5743
	fmul x13, x12, x12
	fmul x14, x13, x124
	fadd x14, x123, x14
	fmul x14, x13, x14
	fadd x14, x122, x14
	fmul x13, x13, x14
	fadd x13, x118, x13
	fmul x12, x12, x13
	j main_cont_b5745 # adhoc jump(2)
main_beqelse_b5744:
# B5744
	fsub x12, x116, x12
	fmul x12, x12, x12
	fmul x13, x12, x121
	fadd x13, x120, x13
	fmul x13, x12, x13
	fadd x13, x119, x13
	fmul x12, x12, x13
	fadd x12, x118, x12
main_cont_b5745:
# B5745
	fle x13, x12, zero
	beq	x100, x13, main_bneelse_b5747
# B5746
	mv x100, x12
	j main_cont_b5748 # adhoc jump(2)
main_bneelse_b5747:
# B5747
	fsub x100, zero, x12
main_cont_b5748:
# B5748
	la x42, min_caml_light
	fsub x100, zero, x100
	sw x100, 1(x42)
	in32 x100
	fmul x100, x100, x11
	mv x12, x113
	mv x11, x10
main_loop_b5749:
# B5749
	fle x13, x11, x12
	bne	x13, zero, main_beqelse_b5752
# B5750
	fmul x12, x12, x114
	j main_loop_b5749 # loopback to while entry from B5750
main_beqelse_b5752:
# B5752
	mv x15, x12
	mv x14, x10
main_loop_b5753:
# B5753
	fle x10, x113, x14
	beq	x10, zero, main_bneelse_b5758
# B5755
	fle x10, x14, x15
	fdiv x11, x15, x114
	bne	x10, zero, main_beqelse_b5757
# B5756
	fsub x14, x14, x15
	mv x15, x11
	j main_loop_b5753 # loopback to while entry from B5756
main_beqelse_b5757:
# B5757
	mv x15, x11
	j main_loop_b5753 # loopback to while entry from B5757
main_bneelse_b5758:
# B5758
	fle x10, x115, x14
	bne	x10, zero, main_beqelse_b5760
# B5759
	mv x11, x14
	j main_cont_b5761 # adhoc jump(2)
main_beqelse_b5760:
# B5760
	fsub x11, x14, x115
main_cont_b5761:
# B5761
	bne	x10, zero, main_beqelse_b5763
# B5762
	li x10, 1
	j main_cont_b5764 # adhoc jump(2)
main_beqelse_b5763:
# B5763
	mv x10, zero
main_cont_b5764:
# B5764
	fle x12, x116, x11
	bne	x12, zero, main_beqelse_b5766
	j main_cont_b5767 # adhoc jump(3)
main_beqelse_b5766:
# B5766
	fsub x11, x115, x11
main_cont_b5767:
# B5767
	xor x10, x12, x10
	fle x12, x117, x11
	bne	x12, zero, main_beqelse_b5769
main_cont_b5768:
# B5768
	fmul x11, x11, x11
	fmul x12, x11, x121
	fadd x12, x120, x12
	fmul x12, x11, x12
	fadd x12, x119, x12
	fmul x11, x11, x12
	fadd x11, x118, x11
	j main_cont_b5770 # adhoc jump(2)
main_beqelse_b5769:
# B5769
	fsub x11, x116, x11
	fmul x12, x11, x11
	fmul x13, x12, x124
	fadd x13, x123, x13
	fmul x13, x12, x13
	fadd x13, x122, x13
	fmul x12, x12, x13
	fadd x12, x118, x12
	fmul x11, x11, x12
main_cont_b5770:
# B5770
	fle x12, x11, zero
	beq	x10, x12, main_bneelse_b5772
# B5771
	mv x10, x11
	j main_cont_b5773 # adhoc jump(2)
main_bneelse_b5772:
# B5772
	fsub x10, zero, x11
main_cont_b5773:
# B5773
	fle x11, x100, zero
	xori x11, x11, 1
	fabs x100, x100
	mv x12, x100
	mv x13, x113
main_loop_b5774:
# B5774
	fle x14, x12, x13
	bne	x14, zero, main_beqelse_b5777
# B5775
	fmul x13, x13, x114
	j main_loop_b5774 # loopback to while entry from B5775
main_beqelse_b5777:
# B5777
	mv x15, x100
	mv x16, x13
main_loop_b5778:
# B5778
	fle x12, x113, x15
	beq	x12, zero, main_bneelse_b5783
# B5780
	fle x12, x15, x16
	fdiv x13, x16, x114
	bne	x12, zero, main_beqelse_b5782
# B5781
	fsub x15, x15, x16
	mv x16, x13
	j main_loop_b5778 # loopback to while entry from B5781
main_beqelse_b5782:
# B5782
	mv x16, x13
	j main_loop_b5778 # loopback to while entry from B5782
main_bneelse_b5783:
# B5783
	fle x12, x115, x15
	bne	x12, zero, main_beqelse_b5785
# B5784
	mv x13, x15
	j main_cont_b5786 # adhoc jump(2)
main_beqelse_b5785:
# B5785
	fsub x13, x15, x115
main_cont_b5786:
# B5786
	xor x11, x12, x11
	fle x12, x116, x13
	bne	x12, zero, main_beqelse_b5788
# B5787
	mv x12, x13
	j main_cont_b5789 # adhoc jump(2)
main_beqelse_b5788:
# B5788
	fsub x12, x115, x13
main_cont_b5789:
# B5789
	fle x13, x117, x12
	bne	x13, zero, main_beqelse_b5791
# B5790
	fmul x13, x12, x12
	fmul x14, x13, x124
	fadd x14, x123, x14
	fmul x14, x13, x14
	fadd x14, x122, x14
	fmul x13, x13, x14
	fadd x13, x118, x13
	fmul x12, x12, x13
	j main_cont_b5792 # adhoc jump(2)
main_beqelse_b5791:
# B5791
	fsub x12, x116, x12
	fmul x12, x12, x12
	fmul x13, x12, x121
	fadd x13, x120, x13
	fmul x13, x12, x13
	fadd x13, x119, x13
	fmul x12, x12, x13
	fadd x12, x118, x12
main_cont_b5792:
# B5792
	fle x13, x12, zero
	beq	x11, x13, main_bneelse_b5794
# B5793
	mv x11, x12
	j main_cont_b5795 # adhoc jump(2)
main_bneelse_b5794:
# B5794
	fsub x11, zero, x12
main_cont_b5795:
# B5795
	fmul x11, x10, x11
	sw x11, 0(x42)
	mv x12, x100
	mv x13, x113
main_loop_b5796:
# B5796
	fle x11, x12, x13
	bne	x11, zero, main_beqelse_b5799
# B5797
	fmul x13, x13, x114
	j main_loop_b5796 # loopback to while entry from B5797
main_beqelse_b5799:
# B5799
	mv x15, x13
	mv x14, x100
main_loop_b5800:
# B5800
	fle x100, x113, x14
	beq	x100, zero, main_bneelse_b5805
# B5802
	fle x100, x14, x15
	fdiv x11, x15, x114
	bne	x100, zero, main_beqelse_b5804
# B5803
	fsub x14, x14, x15
	mv x15, x11
	j main_loop_b5800 # loopback to while entry from B5803
main_beqelse_b5804:
# B5804
	mv x15, x11
	j main_loop_b5800 # loopback to while entry from B5804
main_bneelse_b5805:
# B5805
	fle x100, x115, x14
	bne	x100, zero, main_beqelse_b5807
# B5806
	mv x11, x14
	j main_cont_b5808 # adhoc jump(2)
main_beqelse_b5807:
# B5807
	fsub x11, x14, x115
main_cont_b5808:
# B5808
	bne	x100, zero, main_beqelse_b5810
# B5809
	li x100, 1
	j main_cont_b5811 # adhoc jump(2)
main_beqelse_b5810:
# B5810
	mv x100, zero
main_cont_b5811:
# B5811
	fle x12, x116, x11
	bne	x12, zero, main_beqelse_b5813
	j main_cont_b5814 # adhoc jump(3)
main_beqelse_b5813:
# B5813
	fsub x11, x115, x11
main_cont_b5814:
# B5814
	xor x100, x12, x100
	fle x12, x117, x11
	bne	x12, zero, main_beqelse_b5816
main_cont_b5815:
# B5815
	fmul x11, x11, x11
	fmul x12, x11, x121
	fadd x12, x120, x12
	fmul x12, x11, x12
	fadd x12, x119, x12
	fmul x11, x11, x12
	fadd x11, x118, x11
	j main_cont_b5817 # adhoc jump(2)
main_beqelse_b5816:
# B5816
	fsub x11, x116, x11
	fmul x12, x11, x11
	fmul x13, x12, x124
	fadd x13, x123, x13
	fmul x13, x12, x13
	fadd x13, x122, x13
	fmul x12, x12, x13
	fadd x12, x118, x12
	fmul x11, x11, x12
main_cont_b5817:
# B5817
	fle x12, x11, zero
	beq	x100, x12, main_bneelse_b5819
# B5818
	mv x100, x11
	j main_cont_b5820 # adhoc jump(2)
main_bneelse_b5819:
# B5819
	fsub x100, zero, x11
main_cont_b5820:
# B5820
	fmul x10, x10, x100
	sw x10, 2(x42)
	la x10, min_caml_beam
	in32 x100
	sw x100, 0(x10)
	mv x5, zero
	addi	x2, x2, 52
	jal	read_object.2872
	addi	x2, x2, -52
	la x43, min_caml_and_net
	mv x44, zero
main_loop_b5821:
# B5821
	mv x5, zero
	addi	x2, x2, 52
	jal	read_net_item.2876
	addi	x2, x2, -52
	lw x10, 0(x5)
	li x100, -1
	beq	x10, x100, main_bneelse_b5824
# B5823
	add x4, x43, x44
	sw x5, 0(x4)
	addi x44, x44, 1
	j main_loop_b5821 # loopback to while entry from B5823
main_bneelse_b5824:
# B5824
	la x43, min_caml_or_net
	mv x5, zero
	addi	x2, x2, 52
	jal	read_or_network.2878
	addi	x2, x2, -52
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
	bgt	zero, x10, main_bleelse_b5826
# B5825
	mv x100, x10
	mv x11, zero
main_loop_b5827:
# B5827
	mv x13, x44
	mv x12, x103
	mv x10, x100
main_loop_b5828:
# B5828
	bgt	x13, x10, main_bleelse_b5831
# B5829
	slli x12, x13, 3
	slli x14, x13, 1
	add x12, x12, x14
	mv x4, x13
	mv x13, x12
	mv x12, x4
	j main_loop_b5828 # loopback to while entry from B5829
main_bleelse_b5831:
# B5831
	mv x15, x103
	mv x16, zero
	mv x14, x12
main_loop_b5832:
# B5832
	bge	x15, x14, main_bgtelse_b5835
# B5834
	slli x10, x15, 3
	slli x13, x15, 1
	add x15, x10, x13
	addi x16, x16, 1
	j main_loop_b5832 # loopback to while entry from B5834
main_bgtelse_b5835:
# B5835
	sub x10, x11, x16
	addi x10, x10, -1
	mv x11, x10
main_loop_b5836:
# B5836
	bge	zero, x11, main_bgtelse_b5839
# B5838
	out8 x45
	addi x11, x11, -1
	j main_loop_b5836 # loopback to while entry from B5838
main_bgtelse_b5839:
# B5839
	bne	x16, zero, main_beqelse_b5841
# B5840
	addi x10, x100, 48
	out8 x10
	j main_cont_b5873 # adhoc jump(2)
main_beqelse_b5841:
# B5841
	mv x15, x12
	mv x13, x12
	mv x10, x100
	mv x14, x103
main_loop_b5842:
# B5842
	add x11, x15, x13
	bgt	x11, x10, main_bleelse_b5845
# B5843
	addi x14, x14, 1
	mv x15, x11
	j main_loop_b5842 # loopback to while entry from B5843
main_bleelse_b5845:
# B5845
	mv x15, x12
	mv x18, x14
	mv x17, zero
main_loop_b5846:
# B5846
	beq	x18, zero, main_bneelse_b5849
# B5848
	add x17, x17, x15
	addi x18, x18, -1
	j main_loop_b5846 # loopback to while entry from B5848
main_bneelse_b5849:
# B5849
	sub x10, x100, x17
	addi x100, x14, 48
	out8 x100
	mv x11, x16
	mv x100, x10
	j main_loop_b5827 # loopback to while entry from B5849
main_bleelse_b5826:
# B5826
	out8 x46
	sub x10, zero, x10
	mv x100, x10
	mv x11, zero
main_loop_b5850:
# B5850
	mv x13, x44
	mv x12, x103
	mv x10, x100
main_loop_b5851:
# B5851
	bgt	x13, x10, main_bleelse_b5854
# B5852
	slli x12, x13, 3
	slli x14, x13, 1
	add x12, x12, x14
	mv x4, x13
	mv x13, x12
	mv x12, x4
	j main_loop_b5851 # loopback to while entry from B5852
main_bleelse_b5854:
# B5854
	mv x15, x103
	mv x16, zero
	mv x14, x12
main_loop_b5855:
# B5855
	bge	x15, x14, main_bgtelse_b5858
# B5857
	slli x10, x15, 3
	slli x13, x15, 1
	add x15, x10, x13
	addi x16, x16, 1
	j main_loop_b5855 # loopback to while entry from B5857
main_bgtelse_b5858:
# B5858
	sub x10, x11, x16
	addi x10, x10, -1
	mv x11, x10
main_loop_b5859:
# B5859
	bge	zero, x11, main_bgtelse_b5862
# B5861
	out8 x45
	addi x11, x11, -1
	j main_loop_b5859 # loopback to while entry from B5861
main_bgtelse_b5862:
# B5862
	bne	x16, zero, main_beqelse_b5864
# B5863
	addi x10, x100, 48
	out8 x10
main_cont_b5873:
# B5873
	li x47, 32
	out8 x47
	lw x10, 1(x102)
	bgt	zero, x10, main_bleelse_b5875
# B5874
	mv x100, x10
	mv x11, zero
main_loop_b5876:
# B5876
	mv x13, x44
	mv x12, x103
	mv x10, x100
main_loop_b5877:
# B5877
	bgt	x13, x10, main_bleelse_b5880
# B5878
	slli x12, x13, 3
	slli x14, x13, 1
	add x12, x12, x14
	mv x4, x13
	mv x13, x12
	mv x12, x4
	j main_loop_b5877 # loopback to while entry from B5878
main_bleelse_b5880:
# B5880
	mv x15, x103
	mv x16, zero
	mv x14, x12
main_loop_b5881:
# B5881
	bge	x15, x14, main_bgtelse_b5884
# B5883
	slli x10, x15, 3
	slli x13, x15, 1
	add x15, x10, x13
	addi x16, x16, 1
	j main_loop_b5881 # loopback to while entry from B5883
main_bgtelse_b5884:
# B5884
	sub x10, x11, x16
	addi x10, x10, -1
	mv x11, x10
main_loop_b5885:
# B5885
	bge	zero, x11, main_bgtelse_b5888
# B5887
	out8 x45
	addi x11, x11, -1
	j main_loop_b5885 # loopback to while entry from B5887
main_bgtelse_b5888:
# B5888
	bne	x16, zero, main_beqelse_b5890
# B5889
	addi x10, x100, 48
	out8 x10
	j main_cont_b5922 # adhoc jump(2)
main_beqelse_b5890:
# B5890
	mv x15, x12
	mv x13, x12
	mv x10, x100
	mv x14, x103
main_loop_b5891:
# B5891
	add x11, x15, x13
	bgt	x11, x10, main_bleelse_b5894
# B5892
	addi x14, x14, 1
	mv x15, x11
	j main_loop_b5891 # loopback to while entry from B5892
main_bleelse_b5894:
# B5894
	mv x15, x12
	mv x18, x14
	mv x17, zero
main_loop_b5895:
# B5895
	beq	x18, zero, main_bneelse_b5898
# B5897
	add x17, x17, x15
	addi x18, x18, -1
	j main_loop_b5895 # loopback to while entry from B5897
main_bneelse_b5898:
# B5898
	sub x10, x100, x17
	addi x100, x14, 48
	out8 x100
	mv x11, x16
	mv x100, x10
	j main_loop_b5876 # loopback to while entry from B5898
main_bleelse_b5875:
# B5875
	out8 x46
	sub x10, zero, x10
	mv x100, x10
	mv x11, zero
main_loop_b5899:
# B5899
	mv x13, x44
	mv x12, x103
	mv x10, x100
main_loop_b5900:
# B5900
	bgt	x13, x10, main_bleelse_b5903
# B5901
	slli x12, x13, 3
	slli x14, x13, 1
	add x12, x12, x14
	mv x4, x13
	mv x13, x12
	mv x12, x4
	j main_loop_b5900 # loopback to while entry from B5901
main_bleelse_b5903:
# B5903
	mv x15, x103
	mv x16, zero
	mv x14, x12
main_loop_b5904:
# B5904
	bge	x15, x14, main_bgtelse_b5907
# B5906
	slli x10, x15, 3
	slli x13, x15, 1
	add x15, x10, x13
	addi x16, x16, 1
	j main_loop_b5904 # loopback to while entry from B5906
main_bgtelse_b5907:
# B5907
	sub x10, x11, x16
	addi x10, x10, -1
	mv x11, x10
main_loop_b5908:
# B5908
	bge	zero, x11, main_bgtelse_b5911
# B5910
	out8 x45
	addi x11, x11, -1
	j main_loop_b5908 # loopback to while entry from B5910
main_bgtelse_b5911:
# B5911
	bne	x16, zero, main_beqelse_b5913
# B5912
	addi x10, x100, 48
	out8 x10
main_cont_b5922:
# B5922
	out8 x47
	li x48, 255
	mv x10, x48
	mv x100, zero
main_loop_b5923:
# B5923
	mv x13, x44
	mv x12, x103
	mv x11, x10
main_loop_b5924:
# B5924
	bgt	x13, x11, main_bleelse_b5927
# B5925
	slli x12, x13, 3
	slli x14, x13, 1
	add x12, x12, x14
	mv x4, x13
	mv x13, x12
	mv x12, x4
	j main_loop_b5924 # loopback to while entry from B5925
main_bleelse_b5927:
# B5927
	mv x15, x103
	mv x16, zero
	mv x14, x12
main_loop_b5928:
# B5928
	bge	x15, x14, main_bgtelse_b5931
# B5930
	slli x11, x15, 3
	slli x13, x15, 1
	add x15, x11, x13
	addi x16, x16, 1
	j main_loop_b5928 # loopback to while entry from B5930
main_bgtelse_b5931:
# B5931
	sub x100, x100, x16
	addi x100, x100, -1
	mv x11, x100
main_loop_b5932:
# B5932
	bge	zero, x11, main_bgtelse_b5935
# B5934
	out8 x45
	addi x11, x11, -1
	j main_loop_b5932 # loopback to while entry from B5934
main_bgtelse_b5935:
# B5935
	bne	x16, zero, main_beqelse_b5937
# B5936
	addi x10, x10, 48
	out8 x10
# B5946
	out8 x44
	la x49, min_caml_dirvecs
	li x50, 120
	li x51, 118
	mv x52, x112
main_loop_b5947:
# B5947
	la x53, min_caml_n_objects
	bgt	zero, x52, main_bleelse_b5954
# B5948
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
	lw x5, 0(x53)
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
	add x4, x49, x52
	sw x5, 0(x4)
	add x4, x49, x52
	lw x10, 0(x4)
	mv x54, x10
	mv x55, x51
main_loop_b5950:
# B5950
	bgt	zero, x55, main_bleelse_b5953
# B5951
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
	lw x5, 0(x53)
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
	j main_loop_b5950 # loopback to while entry from B5951
main_bleelse_b5953:
# B5953
	addi x52, x52, -1
	j main_loop_b5947 # loopback to while entry from B5953
main_bleelse_b5954:
# B5954
	li x10, 9
	lui x100, 255181
	addi x100, x100, -819
	lui x11, 259686
	addi x11, x11, 1638
	mv x12, x10
	mv x14, zero
	mv x13, zero
main_loop_b5955:
# B5955
	bgt	zero, x12, main_bleelse_b6196
# B5956
	itof x10, x12
	fmul x10, x10, x100
	fsub x10, x10, x11
	lui x15, 253133
	addi x15, x15, -819
	mv x16, x112
	mv x17, x10
	mv x19, x14
	mv x18, x13
main_loop_b5958:
# B5958
	bgt	zero, x16, main_bleelse_b6192
# B5959
	itof x10, x16
	fmul x10, x10, x100
	fsub x20, x10, x11
	mv x27, x19
	mv x26, x18
	mv x25, x17
	mv x23, zero
	mv x24, x20
	mv x22, zero
	mv x21, zero
main_loop_b5961:
# B5961
	fmul x20, x23, x23
	lui x28, 257536
	lui x29, 780971
	addi x29, x29, -1366
	lui x30, 778533
	addi x30, x30, -1755
	lui x31, 253497
	addi x31, x31, -456
	lui x32, 777085
	addi x32, x32, 1646
	lui x33, 251742
	addi x33, x33, 1989
	lui x34, 262592
	bgt	x110, x21, main_bleelse_b5963
# B5962
	fmul x21, x22, x22
	fadd x20, x21, x20
	fadd x20, x20, x118
	fsqrt x20, x20
	fdiv x21, x22, x20
	fdiv x22, x23, x20
	fdiv x20, x118, x20
	add x4, x49, x26
	lw x23, 0(x4)
	add x4, x23, x27
	lw x24, 0(x4)
	lw x24, 0(x24)
	sw x21, 0(x24)
	sw x22, 1(x24)
	sw x20, 2(x24)
	addi x24, x27, 40
	add x4, x23, x24
	lw x24, 0(x4)
	lw x24, 0(x24)
	fsub x25, zero, x22
	sw x21, 0(x24)
	sw x20, 1(x24)
	sw x25, 2(x24)
	addi x24, x27, 80
	add x4, x23, x24
	lw x24, 0(x4)
	lw x24, 0(x24)
	fsub x26, zero, x21
	sw x20, 0(x24)
	sw x26, 1(x24)
	sw x25, 2(x24)
	addi x24, x27, 1
	add x4, x23, x24
	lw x24, 0(x4)
	lw x24, 0(x24)
	fsub x20, zero, x20
	sw x26, 0(x24)
	sw x25, 1(x24)
	sw x20, 2(x24)
	addi x24, x27, 41
	add x4, x23, x24
	lw x24, 0(x4)
	lw x24, 0(x24)
	sw x26, 0(x24)
	sw x20, 1(x24)
	sw x22, 2(x24)
	addi x24, x27, 81
	add x4, x23, x24
	lw x23, 0(x4)
	lw x23, 0(x23)
	sw x20, 0(x23)
	sw x21, 1(x23)
	sw x22, 2(x23)
# B6074
	fadd x10, x10, x15
	addi x20, x19, 2
	mv x27, x20
	mv x26, x18
	mv x25, x17
	mv x24, x10
	mv x23, zero
	mv x22, zero
	mv x21, zero
main_loop_b6075:
# B6075
	fmul x10, x23, x23
	bgt	x110, x21, main_bleelse_b6077
# B6076
	fmul x20, x22, x22
	fadd x10, x20, x10
	fadd x10, x10, x118
	fsqrt x10, x10
	fdiv x20, x22, x10
	fdiv x21, x23, x10
	fdiv x10, x118, x10
	add x4, x49, x26
	lw x22, 0(x4)
	add x4, x22, x27
	lw x23, 0(x4)
	lw x23, 0(x23)
	sw x20, 0(x23)
	sw x21, 1(x23)
	sw x10, 2(x23)
	addi x23, x27, 40
	add x4, x22, x23
	lw x23, 0(x4)
	lw x23, 0(x23)
	fsub x24, zero, x21
	sw x20, 0(x23)
	sw x10, 1(x23)
	sw x24, 2(x23)
	addi x23, x27, 80
	add x4, x22, x23
	lw x23, 0(x4)
	lw x23, 0(x23)
	fsub x25, zero, x20
	sw x10, 0(x23)
	sw x25, 1(x23)
	sw x24, 2(x23)
	addi x23, x27, 1
	add x4, x22, x23
	lw x23, 0(x4)
	lw x23, 0(x23)
	fsub x10, zero, x10
	sw x25, 0(x23)
	sw x24, 1(x23)
	sw x10, 2(x23)
	addi x23, x27, 41
	add x4, x22, x23
	lw x23, 0(x4)
	lw x23, 0(x23)
	sw x25, 0(x23)
	sw x10, 1(x23)
	sw x21, 2(x23)
	addi x23, x27, 81
	add x4, x22, x23
	lw x22, 0(x4)
	lw x22, 0(x22)
	sw x10, 0(x22)
	sw x20, 1(x22)
	sw x21, 2(x22)
# B6188
	addi x10, x16, -1
	addi x16, x18, 1
	bgt	x110, x16, main_bleelse_b6191
# B6189
	addi x16, x16, -5
main_bleelse_b6191:
# B6191
	mv x18, x16
	mv x16, x10
	j main_loop_b5958 # loopback to while entry from B6191
main_bleelse_b6077:
# B6077
	fadd x10, x10, x15
	fsqrt x10, x10
	fdiv x20, x118, x10
	fle x22, x20, zero
	xori x22, x22, 1
	fabs x23, x20
	fle x35, x28, x23
	bne	x35, zero, main_beqelse_b6079
# B6078
	fmul x22, x20, x20
	fmul x23, x22, x33
	fadd x23, x32, x23
	fmul x23, x22, x23
	fadd x23, x31, x23
	fmul x23, x22, x23
	fadd x23, x30, x23
	fmul x23, x22, x23
	fadd x23, x100, x23
	fmul x23, x22, x23
	fadd x23, x29, x23
	fmul x22, x22, x23
	fadd x22, x118, x22
	fmul x20, x20, x22
	j main_cont_b6085 # adhoc jump(2)
main_beqelse_b6079:
# B6079
	fle x20, x34, x23
	bne	x20, zero, main_beqelse_b6081
# B6080
	fsub x20, x23, x118
	fadd x23, x23, x118
	fdiv x20, x20, x23
	fmul x23, x20, x20
	fmul x35, x23, x33
	fadd x35, x32, x35
	fmul x35, x23, x35
	fadd x35, x31, x35
	fmul x35, x23, x35
	fadd x35, x30, x35
	fmul x35, x23, x35
	fadd x35, x100, x35
	fmul x35, x23, x35
	fadd x35, x29, x35
	fmul x23, x23, x35
	fadd x23, x118, x23
	fmul x20, x20, x23
	fadd x20, x117, x20
	j main_cont_b6082 # adhoc jump(2)
main_beqelse_b6081:
# B6081
	fdiv x20, x118, x23
	fmul x23, x20, x20
	fmul x35, x23, x33
	fadd x35, x32, x35
	fmul x35, x23, x35
	fadd x35, x31, x35
	fmul x35, x23, x35
	fadd x35, x30, x35
	fmul x35, x23, x35
	fadd x35, x100, x35
	fmul x35, x23, x35
	fadd x35, x29, x35
	fmul x23, x23, x35
	fadd x23, x118, x23
	fmul x20, x20, x23
	fsub x20, x116, x20
main_cont_b6082:
# B6082
	bne	x22, zero, main_beqelse_b6085
# B6083
	fsub x20, zero, x20
main_beqelse_b6085:
main_cont_b6085:
# B6085
	fmul x20, x20, x24
	fle x22, x20, zero
	xori x22, x22, 1
	fabs x20, x20
	mv x23, x20
	mv x35, x113
main_loop_b6086:
# B6086
	fle x36, x23, x35
	bne	x36, zero, main_beqelse_b6089
# B6087
	fmul x35, x35, x114
	j main_loop_b6086 # loopback to while entry from B6087
main_beqelse_b6089:
# B6089
	mv x37, x20
	mv x38, x35
main_loop_b6090:
# B6090
	fle x23, x113, x37
	beq	x23, zero, main_bneelse_b6095
# B6092
	fle x23, x37, x38
	fdiv x35, x38, x114
	bne	x23, zero, main_beqelse_b6094
# B6093
	fsub x37, x37, x38
	mv x38, x35
	j main_loop_b6090 # loopback to while entry from B6093
main_beqelse_b6094:
# B6094
	mv x38, x35
	j main_loop_b6090 # loopback to while entry from B6094
main_bneelse_b6095:
# B6095
	fle x23, x115, x37
	bne	x23, zero, main_beqelse_b6097
# B6096
	mv x35, x37
	j main_cont_b6098 # adhoc jump(2)
main_beqelse_b6097:
# B6097
	fsub x35, x37, x115
main_cont_b6098:
# B6098
	xor x22, x23, x22
	fle x23, x116, x35
	bne	x23, zero, main_beqelse_b6100
# B6099
	mv x23, x35
	j main_cont_b6101 # adhoc jump(2)
main_beqelse_b6100:
# B6100
	fsub x23, x115, x35
main_cont_b6101:
# B6101
	fle x35, x117, x23
	bne	x35, zero, main_beqelse_b6103
# B6102
	fmul x35, x23, x23
	fmul x36, x35, x124
	fadd x36, x123, x36
	fmul x36, x35, x36
	fadd x36, x122, x36
	fmul x35, x35, x36
	fadd x35, x118, x35
	fmul x23, x23, x35
	j main_cont_b6104 # adhoc jump(2)
main_beqelse_b6103:
# B6103
	fsub x23, x116, x23
	fmul x23, x23, x23
	fmul x35, x23, x121
	fadd x35, x120, x35
	fmul x35, x23, x35
	fadd x35, x119, x35
	fmul x23, x23, x35
	fadd x23, x118, x23
main_cont_b6104:
# B6104
	fle x35, x23, zero
	beq	x22, x35, main_bneelse_b6106
# B6105
	mv x22, x23
	j main_cont_b6107 # adhoc jump(2)
main_bneelse_b6106:
# B6106
	fsub x22, zero, x23
main_cont_b6107:
# B6107
	mv x23, x20
	mv x35, x113
main_loop_b6108:
# B6108
	fle x36, x23, x35
	bne	x36, zero, main_beqelse_b6111
# B6109
	fmul x35, x35, x114
	j main_loop_b6108 # loopback to while entry from B6109
main_beqelse_b6111:
# B6111
	mv x37, x20
	mv x38, x35
main_loop_b6112:
# B6112
	fle x20, x113, x37
	beq	x20, zero, main_bneelse_b6117
# B6114
	fle x20, x37, x38
	fdiv x23, x38, x114
	bne	x20, zero, main_beqelse_b6116
# B6115
	fsub x37, x37, x38
	mv x38, x23
	j main_loop_b6112 # loopback to while entry from B6115
main_beqelse_b6116:
# B6116
	mv x38, x23
	j main_loop_b6112 # loopback to while entry from B6116
main_bneelse_b6117:
# B6117
	fle x20, x115, x37
	bne	x20, zero, main_beqelse_b6119
# B6118
	mv x23, x37
	j main_cont_b6120 # adhoc jump(2)
main_beqelse_b6119:
# B6119
	fsub x23, x37, x115
main_cont_b6120:
# B6120
	bne	x20, zero, main_beqelse_b6122
# B6121
	li x20, 1
	j main_cont_b6123 # adhoc jump(2)
main_beqelse_b6122:
# B6122
	mv x20, zero
main_cont_b6123:
# B6123
	fle x35, x116, x23
	bne	x35, zero, main_beqelse_b6125
	j main_cont_b6126 # adhoc jump(3)
main_beqelse_b6125:
# B6125
	fsub x23, x115, x23
main_cont_b6126:
# B6126
	xor x20, x35, x20
	fle x35, x117, x23
	bne	x35, zero, main_beqelse_b6128
main_cont_b6127:
# B6127
	fmul x23, x23, x23
	fmul x35, x23, x121
	fadd x35, x120, x35
	fmul x35, x23, x35
	fadd x35, x119, x35
	fmul x23, x23, x35
	fadd x23, x118, x23
	j main_cont_b6129 # adhoc jump(2)
main_beqelse_b6128:
# B6128
	fsub x23, x116, x23
	fmul x35, x23, x23
	fmul x36, x35, x124
	fadd x36, x123, x36
	fmul x36, x35, x36
	fadd x36, x122, x36
	fmul x35, x35, x36
	fadd x35, x118, x35
	fmul x23, x23, x35
main_cont_b6129:
# B6129
	fle x35, x23, zero
	beq	x20, x35, main_bneelse_b6131
# B6130
	mv x20, x23
	j main_cont_b6132 # adhoc jump(2)
main_bneelse_b6131:
# B6131
	fsub x20, zero, x23
main_cont_b6132:
# B6132
	fdiv x20, x22, x20
	fmul x10, x20, x10
	addi x20, x21, 1
	fmul x21, x10, x10
	fadd x21, x21, x15
	fsqrt x21, x21
	fdiv x22, x118, x21
	fle x23, x22, zero
	xori x23, x23, 1
	fabs x35, x22
	fle x36, x28, x35
	bne	x36, zero, main_beqelse_b6134
# B6133
	fmul x23, x22, x22
	fmul x35, x23, x33
	fadd x35, x32, x35
	fmul x35, x23, x35
	fadd x35, x31, x35
	fmul x35, x23, x35
	fadd x35, x30, x35
	fmul x35, x23, x35
	fadd x35, x100, x35
	fmul x35, x23, x35
	fadd x35, x29, x35
	fmul x23, x23, x35
	fadd x23, x118, x23
	fmul x22, x22, x23
	j main_cont_b6140 # adhoc jump(2)
main_beqelse_b6134:
# B6134
	fle x22, x34, x35
	bne	x22, zero, main_beqelse_b6136
# B6135
	fsub x22, x35, x118
	fadd x35, x35, x118
	fdiv x22, x22, x35
	fmul x35, x22, x22
	fmul x36, x35, x33
	fadd x36, x32, x36
	fmul x36, x35, x36
	fadd x36, x31, x36
	fmul x36, x35, x36
	fadd x36, x30, x36
	fmul x36, x35, x36
	fadd x36, x100, x36
	fmul x36, x35, x36
	fadd x36, x29, x36
	fmul x35, x35, x36
	fadd x35, x118, x35
	fmul x22, x22, x35
	fadd x22, x117, x22
	j main_cont_b6137 # adhoc jump(2)
main_beqelse_b6136:
# B6136
	fdiv x22, x118, x35
	fmul x35, x22, x22
	fmul x36, x35, x33
	fadd x36, x32, x36
	fmul x36, x35, x36
	fadd x36, x31, x36
	fmul x36, x35, x36
	fadd x36, x30, x36
	fmul x36, x35, x36
	fadd x36, x100, x36
	fmul x36, x35, x36
	fadd x36, x29, x36
	fmul x35, x35, x36
	fadd x35, x118, x35
	fmul x22, x22, x35
	fsub x22, x116, x22
main_cont_b6137:
# B6137
	bne	x23, zero, main_beqelse_b6140
# B6138
	fsub x22, zero, x22
main_beqelse_b6140:
main_cont_b6140:
# B6140
	fmul x22, x22, x25
	fle x23, x22, zero
	xori x23, x23, 1
	fabs x22, x22
	mv x35, x22
	mv x36, x113
main_loop_b6141:
# B6141
	fle x37, x35, x36
	bne	x37, zero, main_beqelse_b6144
# B6142
	fmul x36, x36, x114
	j main_loop_b6141 # loopback to while entry from B6142
main_beqelse_b6144:
# B6144
	mv x38, x22
	mv x39, x36
main_loop_b6145:
# B6145
	fle x35, x113, x38
	beq	x35, zero, main_bneelse_b6150
# B6147
	fle x35, x38, x39
	fdiv x36, x39, x114
	bne	x35, zero, main_beqelse_b6149
# B6148
	fsub x38, x38, x39
	mv x39, x36
	j main_loop_b6145 # loopback to while entry from B6148
main_beqelse_b6149:
# B6149
	mv x39, x36
	j main_loop_b6145 # loopback to while entry from B6149
main_bneelse_b6150:
# B6150
	fle x35, x115, x38
	bne	x35, zero, main_beqelse_b6152
# B6151
	mv x36, x38
	j main_cont_b6153 # adhoc jump(2)
main_beqelse_b6152:
# B6152
	fsub x36, x38, x115
main_cont_b6153:
# B6153
	xor x23, x35, x23
	fle x35, x116, x36
	bne	x35, zero, main_beqelse_b6155
# B6154
	mv x35, x36
	j main_cont_b6156 # adhoc jump(2)
main_beqelse_b6155:
# B6155
	fsub x35, x115, x36
main_cont_b6156:
# B6156
	fle x36, x117, x35
	bne	x36, zero, main_beqelse_b6158
# B6157
	fmul x36, x35, x35
	fmul x37, x36, x124
	fadd x37, x123, x37
	fmul x37, x36, x37
	fadd x37, x122, x37
	fmul x36, x36, x37
	fadd x36, x118, x36
	fmul x35, x35, x36
	j main_cont_b6159 # adhoc jump(2)
main_beqelse_b6158:
# B6158
	fsub x35, x116, x35
	fmul x35, x35, x35
	fmul x36, x35, x121
	fadd x36, x120, x36
	fmul x36, x35, x36
	fadd x36, x119, x36
	fmul x35, x35, x36
	fadd x35, x118, x35
main_cont_b6159:
# B6159
	fle x36, x35, zero
	beq	x23, x36, main_bneelse_b6161
# B6160
	mv x23, x35
	j main_cont_b6162 # adhoc jump(2)
main_bneelse_b6161:
# B6161
	fsub x23, zero, x35
main_cont_b6162:
# B6162
	mv x35, x22
	mv x36, x113
main_loop_b6163:
# B6163
	fle x37, x35, x36
	bne	x37, zero, main_beqelse_b6166
# B6164
	fmul x36, x36, x114
	j main_loop_b6163 # loopback to while entry from B6164
main_beqelse_b6166:
# B6166
	mv x38, x22
	mv x39, x36
main_loop_b6167:
# B6167
	fle x22, x113, x38
	beq	x22, zero, main_bneelse_b6172
# B6169
	fle x22, x38, x39
	fdiv x35, x39, x114
	bne	x22, zero, main_beqelse_b6171
# B6170
	fsub x38, x38, x39
	mv x39, x35
	j main_loop_b6167 # loopback to while entry from B6170
main_beqelse_b6171:
# B6171
	mv x39, x35
	j main_loop_b6167 # loopback to while entry from B6171
main_bneelse_b6172:
# B6172
	fle x22, x115, x38
	bne	x22, zero, main_beqelse_b6174
# B6173
	mv x35, x38
	j main_cont_b6175 # adhoc jump(2)
main_beqelse_b6174:
# B6174
	fsub x35, x38, x115
main_cont_b6175:
# B6175
	bne	x22, zero, main_beqelse_b6177
# B6176
	li x22, 1
	j main_cont_b6178 # adhoc jump(2)
main_beqelse_b6177:
# B6177
	mv x22, zero
main_cont_b6178:
# B6178
	fle x36, x116, x35
	bne	x36, zero, main_beqelse_b6180
	j main_cont_b6181 # adhoc jump(3)
main_beqelse_b6180:
# B6180
	fsub x35, x115, x35
main_cont_b6181:
# B6181
	xor x22, x36, x22
	fle x36, x117, x35
	bne	x36, zero, main_beqelse_b6183
main_cont_b6182:
# B6182
	fmul x35, x35, x35
	fmul x36, x35, x121
	fadd x36, x120, x36
	fmul x36, x35, x36
	fadd x36, x119, x36
	fmul x35, x35, x36
	fadd x35, x118, x35
	j main_cont_b6184 # adhoc jump(2)
main_beqelse_b6183:
# B6183
	fsub x35, x116, x35
	fmul x36, x35, x35
	fmul x37, x36, x124
	fadd x37, x123, x37
	fmul x37, x36, x37
	fadd x37, x122, x37
	fmul x36, x36, x37
	fadd x36, x118, x36
	fmul x35, x35, x36
main_cont_b6184:
# B6184
	fle x36, x35, zero
	beq	x22, x36, main_bneelse_b6186
# B6185
	mv x22, x35
	j main_cont_b6187 # adhoc jump(2)
main_bneelse_b6186:
# B6186
	fsub x22, zero, x35
main_cont_b6187:
# B6187
	fdiv x22, x23, x22
	fmul x21, x22, x21
	mv x22, x10
	mv x23, x21
	mv x21, x20
	j main_loop_b6075 # loopback to while entry from B6187
main_bleelse_b5963:
# B5963
	fadd x20, x20, x15
	fsqrt x20, x20
	fdiv x22, x118, x20
	fle x23, x22, zero
	xori x23, x23, 1
	fabs x35, x22
	fle x36, x28, x35
	bne	x36, zero, main_beqelse_b5965
# B5964
	fmul x23, x22, x22
	fmul x35, x23, x33
	fadd x35, x32, x35
	fmul x35, x23, x35
	fadd x35, x31, x35
	fmul x35, x23, x35
	fadd x35, x30, x35
	fmul x35, x23, x35
	fadd x35, x100, x35
	fmul x35, x23, x35
	fadd x35, x29, x35
	fmul x23, x23, x35
	fadd x23, x118, x23
	fmul x22, x22, x23
	j main_cont_b5971 # adhoc jump(2)
main_beqelse_b5965:
# B5965
	fle x22, x34, x35
	bne	x22, zero, main_beqelse_b5967
# B5966
	fsub x22, x35, x118
	fadd x35, x35, x118
	fdiv x22, x22, x35
	fmul x35, x22, x22
	fmul x36, x35, x33
	fadd x36, x32, x36
	fmul x36, x35, x36
	fadd x36, x31, x36
	fmul x36, x35, x36
	fadd x36, x30, x36
	fmul x36, x35, x36
	fadd x36, x100, x36
	fmul x36, x35, x36
	fadd x36, x29, x36
	fmul x35, x35, x36
	fadd x35, x118, x35
	fmul x22, x22, x35
	fadd x22, x117, x22
	j main_cont_b5968 # adhoc jump(2)
main_beqelse_b5967:
# B5967
	fdiv x22, x118, x35
	fmul x35, x22, x22
	fmul x36, x35, x33
	fadd x36, x32, x36
	fmul x36, x35, x36
	fadd x36, x31, x36
	fmul x36, x35, x36
	fadd x36, x30, x36
	fmul x36, x35, x36
	fadd x36, x100, x36
	fmul x36, x35, x36
	fadd x36, x29, x36
	fmul x35, x35, x36
	fadd x35, x118, x35
	fmul x22, x22, x35
	fsub x22, x116, x22
main_cont_b5968:
# B5968
	bne	x23, zero, main_beqelse_b5971
# B5969
	fsub x22, zero, x22
main_beqelse_b5971:
main_cont_b5971:
# B5971
	fmul x22, x22, x24
	fle x23, x22, zero
	xori x23, x23, 1
	fabs x22, x22
	mv x35, x22
	mv x36, x113
main_loop_b5972:
# B5972
	fle x37, x35, x36
	bne	x37, zero, main_beqelse_b5975
# B5973
	fmul x36, x36, x114
	j main_loop_b5972 # loopback to while entry from B5973
main_beqelse_b5975:
# B5975
	mv x38, x22
	mv x39, x36
main_loop_b5976:
# B5976
	fle x35, x113, x38
	beq	x35, zero, main_bneelse_b5981
# B5978
	fle x35, x38, x39
	fdiv x36, x39, x114
	bne	x35, zero, main_beqelse_b5980
# B5979
	fsub x38, x38, x39
	mv x39, x36
	j main_loop_b5976 # loopback to while entry from B5979
main_beqelse_b5980:
# B5980
	mv x39, x36
	j main_loop_b5976 # loopback to while entry from B5980
main_bneelse_b5981:
# B5981
	fle x35, x115, x38
	bne	x35, zero, main_beqelse_b5983
# B5982
	mv x36, x38
	j main_cont_b5984 # adhoc jump(2)
main_beqelse_b5983:
# B5983
	fsub x36, x38, x115
main_cont_b5984:
# B5984
	xor x23, x35, x23
	fle x35, x116, x36
	bne	x35, zero, main_beqelse_b5986
# B5985
	mv x35, x36
	j main_cont_b5987 # adhoc jump(2)
main_beqelse_b5986:
# B5986
	fsub x35, x115, x36
main_cont_b5987:
# B5987
	fle x36, x117, x35
	bne	x36, zero, main_beqelse_b5989
# B5988
	fmul x36, x35, x35
	fmul x37, x36, x124
	fadd x37, x123, x37
	fmul x37, x36, x37
	fadd x37, x122, x37
	fmul x36, x36, x37
	fadd x36, x118, x36
	fmul x35, x35, x36
	j main_cont_b5990 # adhoc jump(2)
main_beqelse_b5989:
# B5989
	fsub x35, x116, x35
	fmul x35, x35, x35
	fmul x36, x35, x121
	fadd x36, x120, x36
	fmul x36, x35, x36
	fadd x36, x119, x36
	fmul x35, x35, x36
	fadd x35, x118, x35
main_cont_b5990:
# B5990
	fle x36, x35, zero
	beq	x23, x36, main_bneelse_b5992
# B5991
	mv x23, x35
	j main_cont_b5993 # adhoc jump(2)
main_bneelse_b5992:
# B5992
	fsub x23, zero, x35
main_cont_b5993:
# B5993
	mv x35, x22
	mv x36, x113
main_loop_b5994:
# B5994
	fle x37, x35, x36
	bne	x37, zero, main_beqelse_b5997
# B5995
	fmul x36, x36, x114
	j main_loop_b5994 # loopback to while entry from B5995
main_beqelse_b5997:
# B5997
	mv x38, x22
	mv x39, x36
main_loop_b5998:
# B5998
	fle x22, x113, x38
	beq	x22, zero, main_bneelse_b6003
# B6000
	fle x22, x38, x39
	fdiv x35, x39, x114
	bne	x22, zero, main_beqelse_b6002
# B6001
	fsub x38, x38, x39
	mv x39, x35
	j main_loop_b5998 # loopback to while entry from B6001
main_beqelse_b6002:
# B6002
	mv x39, x35
	j main_loop_b5998 # loopback to while entry from B6002
main_bneelse_b6003:
# B6003
	fle x22, x115, x38
	bne	x22, zero, main_beqelse_b6005
# B6004
	mv x35, x38
	j main_cont_b6006 # adhoc jump(2)
main_beqelse_b6005:
# B6005
	fsub x35, x38, x115
main_cont_b6006:
# B6006
	bne	x22, zero, main_beqelse_b6008
# B6007
	li x22, 1
	j main_cont_b6009 # adhoc jump(2)
main_beqelse_b6008:
# B6008
	mv x22, zero
main_cont_b6009:
# B6009
	fle x36, x116, x35
	bne	x36, zero, main_beqelse_b6011
	j main_cont_b6012 # adhoc jump(3)
main_beqelse_b6011:
# B6011
	fsub x35, x115, x35
main_cont_b6012:
# B6012
	xor x22, x36, x22
	fle x36, x117, x35
	bne	x36, zero, main_beqelse_b6014
main_cont_b6013:
# B6013
	fmul x35, x35, x35
	fmul x36, x35, x121
	fadd x36, x120, x36
	fmul x36, x35, x36
	fadd x36, x119, x36
	fmul x35, x35, x36
	fadd x35, x118, x35
	j main_cont_b6015 # adhoc jump(2)
main_beqelse_b6014:
# B6014
	fsub x35, x116, x35
	fmul x36, x35, x35
	fmul x37, x36, x124
	fadd x37, x123, x37
	fmul x37, x36, x37
	fadd x37, x122, x37
	fmul x36, x36, x37
	fadd x36, x118, x36
	fmul x35, x35, x36
main_cont_b6015:
# B6015
	fle x36, x35, zero
	beq	x22, x36, main_bneelse_b6017
# B6016
	mv x22, x35
	j main_cont_b6018 # adhoc jump(2)
main_bneelse_b6017:
# B6017
	fsub x22, zero, x35
main_cont_b6018:
# B6018
	fdiv x22, x23, x22
	fmul x20, x22, x20
	addi x21, x21, 1
	fmul x22, x20, x20
	fadd x22, x22, x15
	fsqrt x22, x22
	fdiv x23, x118, x22
	fle x35, x23, zero
	xori x35, x35, 1
	fabs x36, x23
	fle x28, x28, x36
	bne	x28, zero, main_beqelse_b6020
# B6019
	fmul x28, x23, x23
	fmul x33, x28, x33
	fadd x32, x32, x33
	fmul x32, x28, x32
	fadd x31, x31, x32
	fmul x31, x28, x31
	fadd x30, x30, x31
	fmul x30, x28, x30
	fadd x30, x100, x30
	fmul x30, x28, x30
	fadd x29, x29, x30
	fmul x28, x28, x29
	fadd x28, x118, x28
	fmul x23, x23, x28
	j main_cont_b6026 # adhoc jump(2)
main_beqelse_b6020:
# B6020
	fle x23, x34, x36
	bne	x23, zero, main_beqelse_b6022
# B6021
	fsub x23, x36, x118
	fadd x28, x36, x118
	fdiv x23, x23, x28
	fmul x28, x23, x23
	fmul x33, x28, x33
	fadd x32, x32, x33
	fmul x32, x28, x32
	fadd x31, x31, x32
	fmul x31, x28, x31
	fadd x30, x30, x31
	fmul x30, x28, x30
	fadd x30, x100, x30
	fmul x30, x28, x30
	fadd x29, x29, x30
	fmul x28, x28, x29
	fadd x28, x118, x28
	fmul x23, x23, x28
	fadd x23, x117, x23
	j main_cont_b6023 # adhoc jump(2)
main_beqelse_b6022:
# B6022
	fdiv x23, x118, x36
	fmul x28, x23, x23
	fmul x33, x28, x33
	fadd x32, x32, x33
	fmul x32, x28, x32
	fadd x31, x31, x32
	fmul x31, x28, x31
	fadd x30, x30, x31
	fmul x30, x28, x30
	fadd x30, x100, x30
	fmul x30, x28, x30
	fadd x29, x29, x30
	fmul x28, x28, x29
	fadd x28, x118, x28
	fmul x23, x23, x28
	fsub x23, x116, x23
main_cont_b6023:
# B6023
	bne	x35, zero, main_beqelse_b6026
# B6024
	fsub x23, zero, x23
main_beqelse_b6026:
main_cont_b6026:
# B6026
	fmul x23, x23, x25
	fle x28, x23, zero
	xori x28, x28, 1
	fabs x23, x23
	mv x29, x23
	mv x30, x113
main_loop_b6027:
# B6027
	fle x31, x29, x30
	bne	x31, zero, main_beqelse_b6030
# B6028
	fmul x30, x30, x114
	j main_loop_b6027 # loopback to while entry from B6028
main_beqelse_b6030:
# B6030
	mv x32, x23
	mv x33, x30
main_loop_b6031:
# B6031
	fle x29, x113, x32
	beq	x29, zero, main_bneelse_b6036
# B6033
	fle x29, x32, x33
	fdiv x30, x33, x114
	bne	x29, zero, main_beqelse_b6035
# B6034
	fsub x32, x32, x33
	mv x33, x30
	j main_loop_b6031 # loopback to while entry from B6034
main_beqelse_b6035:
# B6035
	mv x33, x30
	j main_loop_b6031 # loopback to while entry from B6035
main_bneelse_b6036:
# B6036
	fle x29, x115, x32
	bne	x29, zero, main_beqelse_b6038
# B6037
	mv x30, x32
	j main_cont_b6039 # adhoc jump(2)
main_beqelse_b6038:
# B6038
	fsub x30, x32, x115
main_cont_b6039:
# B6039
	xor x28, x29, x28
	fle x29, x116, x30
	bne	x29, zero, main_beqelse_b6041
# B6040
	mv x29, x30
	j main_cont_b6042 # adhoc jump(2)
main_beqelse_b6041:
# B6041
	fsub x29, x115, x30
main_cont_b6042:
# B6042
	fle x30, x117, x29
	bne	x30, zero, main_beqelse_b6044
# B6043
	fmul x30, x29, x29
	fmul x31, x30, x124
	fadd x31, x123, x31
	fmul x31, x30, x31
	fadd x31, x122, x31
	fmul x30, x30, x31
	fadd x30, x118, x30
	fmul x29, x29, x30
	j main_cont_b6045 # adhoc jump(2)
main_beqelse_b6044:
# B6044
	fsub x29, x116, x29
	fmul x29, x29, x29
	fmul x30, x29, x121
	fadd x30, x120, x30
	fmul x30, x29, x30
	fadd x30, x119, x30
	fmul x29, x29, x30
	fadd x29, x118, x29
main_cont_b6045:
# B6045
	fle x30, x29, zero
	beq	x28, x30, main_bneelse_b6047
# B6046
	mv x28, x29
	j main_cont_b6048 # adhoc jump(2)
main_bneelse_b6047:
# B6047
	fsub x28, zero, x29
main_cont_b6048:
# B6048
	mv x29, x23
	mv x30, x113
main_loop_b6049:
# B6049
	fle x31, x29, x30
	bne	x31, zero, main_beqelse_b6052
# B6050
	fmul x30, x30, x114
	j main_loop_b6049 # loopback to while entry from B6050
main_beqelse_b6052:
# B6052
	mv x32, x23
	mv x33, x30
main_loop_b6053:
# B6053
	fle x23, x113, x32
	beq	x23, zero, main_bneelse_b6058
# B6055
	fle x23, x32, x33
	fdiv x29, x33, x114
	bne	x23, zero, main_beqelse_b6057
# B6056
	fsub x32, x32, x33
	mv x33, x29
	j main_loop_b6053 # loopback to while entry from B6056
main_beqelse_b6057:
# B6057
	mv x33, x29
	j main_loop_b6053 # loopback to while entry from B6057
main_bneelse_b6058:
# B6058
	fle x23, x115, x32
	bne	x23, zero, main_beqelse_b6060
# B6059
	mv x29, x32
	j main_cont_b6061 # adhoc jump(2)
main_beqelse_b6060:
# B6060
	fsub x29, x32, x115
main_cont_b6061:
# B6061
	bne	x23, zero, main_beqelse_b6063
# B6062
	li x23, 1
	j main_cont_b6064 # adhoc jump(2)
main_beqelse_b6063:
# B6063
	mv x23, zero
main_cont_b6064:
# B6064
	fle x30, x116, x29
	bne	x30, zero, main_beqelse_b6066
	j main_cont_b6067 # adhoc jump(3)
main_beqelse_b6066:
# B6066
	fsub x29, x115, x29
main_cont_b6067:
# B6067
	xor x23, x30, x23
	fle x30, x117, x29
	bne	x30, zero, main_beqelse_b6069
main_cont_b6068:
# B6068
	fmul x29, x29, x29
	fmul x30, x29, x121
	fadd x30, x120, x30
	fmul x30, x29, x30
	fadd x30, x119, x30
	fmul x29, x29, x30
	fadd x29, x118, x29
	j main_cont_b6070 # adhoc jump(2)
main_beqelse_b6069:
# B6069
	fsub x29, x116, x29
	fmul x30, x29, x29
	fmul x31, x30, x124
	fadd x31, x123, x31
	fmul x31, x30, x31
	fadd x31, x122, x31
	fmul x30, x30, x31
	fadd x30, x118, x30
	fmul x29, x29, x30
main_cont_b6070:
# B6070
	fle x30, x29, zero
	beq	x23, x30, main_bneelse_b6072
# B6071
	mv x23, x29
	j main_cont_b6073 # adhoc jump(2)
main_bneelse_b6072:
# B6072
	fsub x23, zero, x29
main_cont_b6073:
# B6073
	fdiv x23, x28, x23
	fmul x22, x23, x22
	mv x23, x22
	mv x22, x20
	j main_loop_b5961 # loopback to while entry from B6073
main_bleelse_b6192:
# B6192
	addi x10, x12, -1
	addi x12, x13, 2
	bgt	x110, x12, main_bleelse_b6195
# B6193
	addi x12, x12, -5
main_bleelse_b6195:
# B6195
	addi x13, x14, 4
	mv x14, x13
	mv x13, x12
	mv x12, x10
	j main_loop_b5955 # loopback to while entry from B6195
main_bleelse_b6196:
# B6196
	li x113, 119
	mv x115, x112
main_loop_b6197:
# B6197
	la x116, min_caml_objects
	lui x117, 784384
	lui x119, 258048
	bgt	zero, x115, main_bleelse_b6243
# B6198
	add x4, x49, x115
	lw x10, 0(x4)
	mv x120, x10
	mv x121, x113
main_loop_b6200:
# B6200
	bgt	zero, x121, main_bleelse_b6242
# B6201
	add x4, x120, x121
	lw x10, 0(x4)
	lw x100, 0(x53)
	addi x100, x100, -1
	mv x122, x10
	mv x123, x100
main_loop_b6203:
# B6203
	bgt	zero, x123, main_bleelse_b6241
# B6204
	add x4, x116, x123
	lw x124, 0(x4)
	lw x50, 1(x122)
	lw x52, 0(x122)
	lw x10, 1(x124)
	bne	x10, x103, main_beqelse_b6207
# B6206
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
	lw x10, 0(x52)
	feq x10, x10, zero
	bne	x10, zero, main_beqelse_b6209
# B6208
	lw x10, 6(x124)
	lw x100, 0(x52)
	fle x100, zero, x100
	xori x100, x100, 1
	xor x10, x10, x100
	lw x100, 4(x124)
	lw x100, 0(x100)
	bne	x10, zero, main_beqelse_b6211
# B6210
	fsub x10, zero, x100
	j main_cont_b6212 # adhoc jump(2)
main_beqelse_b6211:
# B6211
	mv x10, x100
main_cont_b6212:
# B6212
	sw x10, 0(x5)
	lw x10, 0(x52)
	fdiv x10, x118, x10
	sw x10, 1(x5)
	j main_cont_b6213 # adhoc jump(2)
main_beqelse_b6209:
# B6209
	sw zero, 1(x5)
main_cont_b6213:
# B6213
	lw x10, 1(x52)
	feq x10, x10, zero
	bne	x10, zero, main_beqelse_b6215
# B6214
	lw x10, 6(x124)
	lw x100, 1(x52)
	fle x100, zero, x100
	xori x100, x100, 1
	xor x10, x10, x100
	lw x100, 4(x124)
	lw x100, 1(x100)
	bne	x10, zero, main_beqelse_b6217
# B6216
	fsub x10, zero, x100
	j main_cont_b6218 # adhoc jump(2)
main_beqelse_b6217:
# B6217
	mv x10, x100
main_cont_b6218:
# B6218
	sw x10, 2(x5)
	lw x10, 1(x52)
	fdiv x10, x118, x10
	sw x10, 3(x5)
	j main_cont_b6219 # adhoc jump(2)
main_beqelse_b6215:
# B6215
	sw zero, 3(x5)
main_cont_b6219:
# B6219
	lw x10, 2(x52)
	feq x10, x10, zero
	bne	x10, zero, main_beqelse_b6221
# B6220
	lw x10, 6(x124)
	lw x100, 2(x52)
	fle x100, zero, x100
	xori x100, x100, 1
	xor x10, x10, x100
	lw x100, 4(x124)
	lw x100, 2(x100)
	bne	x10, zero, main_beqelse_b6223
# B6222
	fsub x10, zero, x100
	j main_cont_b6224 # adhoc jump(2)
main_beqelse_b6223:
# B6223
	mv x10, x100
main_cont_b6224:
# B6224
	sw x10, 4(x5)
	lw x10, 2(x52)
	fdiv x10, x118, x10
	sw x10, 5(x5)
	j main_cont_b6225 # adhoc jump(2)
main_beqelse_b6221:
# B6221
	sw zero, 5(x5)
main_cont_b6225:
# B6225
	add x4, x50, x123
	sw x5, 0(x4)
	j main_cont_b6240 # adhoc jump(2)
main_beqelse_b6207:
# B6207
	bne	x10, x105, main_beqelse_b6227
# B6226
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
	lw x10, 0(x52)
	lw x100, 4(x124)
	lw x100, 0(x100)
	fmul x10, x10, x100
	lw x100, 1(x52)
	lw x11, 4(x124)
	lw x11, 1(x11)
	fmul x100, x100, x11
	fadd x10, x10, x100
	lw x100, 2(x52)
	lw x11, 4(x124)
	lw x11, 2(x11)
	fmul x100, x100, x11
	fadd x10, x10, x100
	fle x100, x10, zero
	beq	x100, zero, main_bneelse_b6229
# B6228
	sw zero, 0(x5)
	j main_cont_b6230 # adhoc jump(2)
main_bneelse_b6229:
# B6229
	fdiv x100, x117, x10
	sw x100, 0(x5)
	lw x100, 4(x124)
	lw x100, 0(x100)
	fdiv x100, x100, x10
	fsub x100, zero, x100
	sw x100, 1(x5)
	lw x100, 4(x124)
	lw x100, 1(x100)
	fdiv x100, x100, x10
	fsub x100, zero, x100
	sw x100, 2(x5)
	lw x100, 4(x124)
	lw x100, 2(x100)
	fdiv x10, x100, x10
	fsub x10, zero, x10
	sw x10, 3(x5)
main_cont_b6230:
# B6230
	add x4, x50, x123
	sw x5, 0(x4)
	j main_cont_b6240 # adhoc jump(2)
main_beqelse_b6227:
# B6227
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
	lw x10, 0(x52)
	lw x100, 1(x52)
	lw x11, 2(x52)
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
	bne	x13, zero, main_beqelse_b6232
# B6231
	mv x10, x12
	j main_cont_b6233 # adhoc jump(2)
main_beqelse_b6232:
# B6232
	fmul x13, x100, x11
	lw x14, 9(x124)
	lw x14, 0(x14)
	fmul x13, x13, x14
	fadd x12, x12, x13
	fmul x11, x11, x10
	lw x13, 9(x124)
	lw x13, 1(x13)
	fmul x11, x11, x13
	fadd x11, x12, x11
	fmul x10, x10, x100
	lw x100, 9(x124)
	lw x100, 2(x100)
	fmul x10, x10, x100
	fadd x10, x11, x10
main_cont_b6233:
# B6233
	lw x100, 0(x52)
	lw x11, 4(x124)
	lw x11, 0(x11)
	fmul x100, x100, x11
	fsub x100, zero, x100
	lw x11, 1(x52)
	lw x12, 4(x124)
	lw x12, 1(x12)
	fmul x11, x11, x12
	fsub x11, zero, x11
	lw x12, 2(x52)
	lw x13, 4(x124)
	lw x13, 2(x13)
	fmul x12, x12, x13
	fsub x12, zero, x12
	sw x10, 0(x5)
	lw x13, 3(x124)
	bne	x13, zero, main_beqelse_b6235
# B6234
	sw x100, 1(x5)
	sw x11, 2(x5)
	sw x12, 3(x5)
	j main_cont_b6236 # adhoc jump(2)
main_beqelse_b6235:
# B6235
	lw x13, 2(x52)
	lw x14, 9(x124)
	lw x14, 1(x14)
	fmul x13, x13, x14
	lw x14, 1(x52)
	lw x15, 9(x124)
	lw x15, 2(x15)
	fmul x14, x14, x15
	fadd x13, x13, x14
	fmul x13, x13, x119
	fsub x100, x100, x13
	sw x100, 1(x5)
	lw x100, 2(x52)
	lw x13, 9(x124)
	lw x13, 0(x13)
	fmul x100, x100, x13
	lw x13, 0(x52)
	lw x14, 9(x124)
	lw x14, 2(x14)
	fmul x13, x13, x14
	fadd x100, x100, x13
	fmul x100, x100, x119
	fsub x100, x11, x100
	sw x100, 2(x5)
	lw x100, 1(x52)
	lw x11, 9(x124)
	lw x11, 0(x11)
	fmul x100, x100, x11
	lw x11, 0(x52)
	lw x13, 9(x124)
	lw x13, 1(x13)
	fmul x11, x11, x13
	fadd x100, x100, x11
	fmul x100, x100, x119
	fsub x100, x12, x100
	sw x100, 3(x5)
main_cont_b6236:
# B6236
	feq x100, x10, zero
	bne	x100, zero, main_beqelse_b6239
# B6237
	fdiv x10, x118, x10
	sw x10, 4(x5)
main_beqelse_b6239:
# B6239
	add x4, x50, x123
	sw x5, 0(x4)
main_cont_b6240:
# B6240
	addi x123, x123, -1
	j main_loop_b6203 # loopback to while entry from B6240
main_bleelse_b6241:
# B6241
	addi x121, x121, -1
	j main_loop_b6200 # loopback to while entry from B6241
main_bleelse_b6242:
# B6242
	addi x115, x115, -1
	j main_loop_b6197 # loopback to while entry from B6242
main_bleelse_b6243:
# B6243
	la x10, min_caml_light_dirvec
	lw x100, 0(x10)
	lw x11, 0(x42)
	sw x11, 0(x100)
	lw x11, 1(x42)
	sw x11, 1(x100)
	lw x11, 2(x42)
	sw x11, 2(x100)
	lw x100, 0(x53)
	addi x100, x100, -1
	mv x115, x100
	mv x113, x10
main_loop_b6244:
# B6244
	bgt	zero, x115, main_bleelse_b6282
# B6245
	add x4, x116, x115
	lw x120, 0(x4)
	lw x121, 1(x113)
	lw x122, 0(x113)
	lw x10, 1(x120)
	bne	x10, x103, main_beqelse_b6248
# B6247
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
	feq x10, x10, zero
	bne	x10, zero, main_beqelse_b6250
# B6249
	lw x10, 6(x120)
	lw x100, 0(x122)
	fle x100, zero, x100
	xori x100, x100, 1
	xor x10, x10, x100
	lw x100, 4(x120)
	lw x100, 0(x100)
	bne	x10, zero, main_beqelse_b6252
# B6251
	fsub x10, zero, x100
	j main_cont_b6253 # adhoc jump(2)
main_beqelse_b6252:
# B6252
	mv x10, x100
main_cont_b6253:
# B6253
	sw x10, 0(x5)
	lw x10, 0(x122)
	fdiv x10, x118, x10
	sw x10, 1(x5)
	j main_cont_b6254 # adhoc jump(2)
main_beqelse_b6250:
# B6250
	sw zero, 1(x5)
main_cont_b6254:
# B6254
	lw x10, 1(x122)
	feq x10, x10, zero
	bne	x10, zero, main_beqelse_b6256
# B6255
	lw x10, 6(x120)
	lw x100, 1(x122)
	fle x100, zero, x100
	xori x100, x100, 1
	xor x10, x10, x100
	lw x100, 4(x120)
	lw x100, 1(x100)
	bne	x10, zero, main_beqelse_b6258
# B6257
	fsub x10, zero, x100
	j main_cont_b6259 # adhoc jump(2)
main_beqelse_b6258:
# B6258
	mv x10, x100
main_cont_b6259:
# B6259
	sw x10, 2(x5)
	lw x10, 1(x122)
	fdiv x10, x118, x10
	sw x10, 3(x5)
	j main_cont_b6260 # adhoc jump(2)
main_beqelse_b6256:
# B6256
	sw zero, 3(x5)
main_cont_b6260:
# B6260
	lw x10, 2(x122)
	feq x10, x10, zero
	bne	x10, zero, main_beqelse_b6262
# B6261
	lw x10, 6(x120)
	lw x100, 2(x122)
	fle x100, zero, x100
	xori x100, x100, 1
	xor x10, x10, x100
	lw x100, 4(x120)
	lw x100, 2(x100)
	bne	x10, zero, main_beqelse_b6264
# B6263
	fsub x10, zero, x100
	j main_cont_b6265 # adhoc jump(2)
main_beqelse_b6264:
# B6264
	mv x10, x100
main_cont_b6265:
# B6265
	sw x10, 4(x5)
	lw x10, 2(x122)
	fdiv x10, x118, x10
	sw x10, 5(x5)
	j main_cont_b6266 # adhoc jump(2)
main_beqelse_b6262:
# B6262
	sw zero, 5(x5)
main_cont_b6266:
# B6266
	add x4, x121, x115
	sw x5, 0(x4)
	j main_cont_b6281 # adhoc jump(2)
main_beqelse_b6248:
# B6248
	bne	x10, x105, main_beqelse_b6268
# B6267
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
	fle x100, x10, zero
	beq	x100, zero, main_bneelse_b6270
# B6269
	sw zero, 0(x5)
	j main_cont_b6271 # adhoc jump(2)
main_bneelse_b6270:
# B6270
	fdiv x100, x117, x10
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
main_cont_b6271:
# B6271
	add x4, x121, x115
	sw x5, 0(x4)
	j main_cont_b6281 # adhoc jump(2)
main_beqelse_b6268:
# B6268
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
	bne	x13, zero, main_beqelse_b6273
# B6272
	mv x10, x12
	j main_cont_b6274 # adhoc jump(2)
main_beqelse_b6273:
# B6273
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
main_cont_b6274:
# B6274
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
	bne	x13, zero, main_beqelse_b6276
# B6275
	sw x100, 1(x5)
	sw x11, 2(x5)
	sw x12, 3(x5)
	j main_cont_b6277 # adhoc jump(2)
main_beqelse_b6276:
# B6276
	lw x13, 2(x122)
	lw x14, 9(x120)
	lw x14, 1(x14)
	fmul x13, x13, x14
	lw x14, 1(x122)
	lw x15, 9(x120)
	lw x15, 2(x15)
	fmul x14, x14, x15
	fadd x13, x13, x14
	fmul x13, x13, x119
	fsub x100, x100, x13
	sw x100, 1(x5)
	lw x100, 2(x122)
	lw x13, 9(x120)
	lw x13, 0(x13)
	fmul x100, x100, x13
	lw x13, 0(x122)
	lw x14, 9(x120)
	lw x14, 2(x14)
	fmul x13, x13, x14
	fadd x100, x100, x13
	fmul x100, x100, x119
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
	fmul x100, x100, x119
	fsub x100, x12, x100
	sw x100, 3(x5)
main_cont_b6277:
# B6277
	feq x100, x10, zero
	bne	x100, zero, main_beqelse_b6280
# B6278
	fdiv x10, x118, x10
	sw x10, 4(x5)
main_beqelse_b6280:
# B6280
	add x4, x121, x115
	sw x5, 0(x4)
main_cont_b6281:
# B6281
	addi x115, x115, -1
	j main_loop_b6244 # loopback to while entry from B6281
main_bleelse_b6282:
# B6282
	lw x10, 0(x53)
	addi x10, x10, -1
	bgt	zero, x10, main_bleelse_b6449
# B6283
	add x4, x116, x10
	lw x100, 0(x4)
	lw x11, 2(x100)
	bne	x11, x105, main_beqelse_b6449
# B6285
	lw x11, 7(x100)
	lw x11, 0(x11)
	fle x11, x118, x11
	bne	x11, zero, main_beqelse_b6449
# B6288
	lw x11, 1(x100)
	slli x113, x10, 2
	la x115, min_caml_n_reflections
	addi x120, x113, 1
	la x121, min_caml_reflections
	bne	x11, x103, main_beqelse_b6290
# B6289
	lw x114, 0(x115)
	lw x10, 7(x100)
	lw x10, 0(x10)
	fsub x122, x118, x10
	lw x10, 0(x42)
	fsub x123, zero, x10
	lw x10, 1(x42)
	fsub x124, zero, x10
	lw x10, 2(x42)
	fsub x50, zero, x10
	lw x52, 0(x42)
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
	mv x54, x5
	lw x5, 0(x53)
	mv x6, x54
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
	mv x55, x3
	addi x3, x3, 2
	sw x5, 1(x55)
	sw x54, 0(x55)
	sw x52, 0(x54)
	sw x124, 1(x54)
	sw x50, 2(x54)
	lw x10, 0(x53)
	addi x10, x10, -1
	mv x52, x55
	mv x54, x10
main_loop_b6291:
# B6291
	bgt	zero, x54, main_bleelse_b6329
# B6292
	add x4, x116, x54
	lw x56, 0(x4)
	lw x57, 1(x52)
	lw x58, 0(x52)
	lw x10, 1(x56)
	bne	x10, x103, main_beqelse_b6295
# B6294
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
	lw x10, 0(x58)
	feq x10, x10, zero
	bne	x10, zero, main_beqelse_b6297
# B6296
	lw x10, 6(x56)
	lw x100, 0(x58)
	fle x100, zero, x100
	xori x100, x100, 1
	xor x10, x10, x100
	lw x100, 4(x56)
	lw x100, 0(x100)
	bne	x10, zero, main_beqelse_b6299
# B6298
	fsub x10, zero, x100
	j main_cont_b6300 # adhoc jump(2)
main_beqelse_b6299:
# B6299
	mv x10, x100
main_cont_b6300:
# B6300
	sw x10, 0(x5)
	lw x10, 0(x58)
	fdiv x10, x118, x10
	sw x10, 1(x5)
	j main_cont_b6301 # adhoc jump(2)
main_beqelse_b6297:
# B6297
	sw zero, 1(x5)
main_cont_b6301:
# B6301
	lw x10, 1(x58)
	feq x10, x10, zero
	bne	x10, zero, main_beqelse_b6303
# B6302
	lw x10, 6(x56)
	lw x100, 1(x58)
	fle x100, zero, x100
	xori x100, x100, 1
	xor x10, x10, x100
	lw x100, 4(x56)
	lw x100, 1(x100)
	bne	x10, zero, main_beqelse_b6305
# B6304
	fsub x10, zero, x100
	j main_cont_b6306 # adhoc jump(2)
main_beqelse_b6305:
# B6305
	mv x10, x100
main_cont_b6306:
# B6306
	sw x10, 2(x5)
	lw x10, 1(x58)
	fdiv x10, x118, x10
	sw x10, 3(x5)
	j main_cont_b6307 # adhoc jump(2)
main_beqelse_b6303:
# B6303
	sw zero, 3(x5)
main_cont_b6307:
# B6307
	lw x10, 2(x58)
	feq x10, x10, zero
	bne	x10, zero, main_beqelse_b6309
# B6308
	lw x10, 6(x56)
	lw x100, 2(x58)
	fle x100, zero, x100
	xori x100, x100, 1
	xor x10, x10, x100
	lw x100, 4(x56)
	lw x100, 2(x100)
	bne	x10, zero, main_beqelse_b6311
# B6310
	fsub x10, zero, x100
	j main_cont_b6312 # adhoc jump(2)
main_beqelse_b6311:
# B6311
	mv x10, x100
main_cont_b6312:
# B6312
	sw x10, 4(x5)
	lw x10, 2(x58)
	fdiv x10, x118, x10
	sw x10, 5(x5)
	j main_cont_b6313 # adhoc jump(2)
main_beqelse_b6309:
# B6309
	sw zero, 5(x5)
main_cont_b6313:
# B6313
	add x4, x57, x54
	sw x5, 0(x4)
	j main_cont_b6328 # adhoc jump(2)
main_beqelse_b6295:
# B6295
	bne	x10, x105, main_beqelse_b6315
# B6314
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
	lw x10, 0(x58)
	lw x100, 4(x56)
	lw x100, 0(x100)
	fmul x10, x10, x100
	lw x100, 1(x58)
	lw x11, 4(x56)
	lw x11, 1(x11)
	fmul x100, x100, x11
	fadd x10, x10, x100
	lw x100, 2(x58)
	lw x11, 4(x56)
	lw x11, 2(x11)
	fmul x100, x100, x11
	fadd x10, x10, x100
	fle x100, x10, zero
	beq	x100, zero, main_bneelse_b6317
# B6316
	sw zero, 0(x5)
	j main_cont_b6318 # adhoc jump(2)
main_bneelse_b6317:
# B6317
	fdiv x100, x117, x10
	sw x100, 0(x5)
	lw x100, 4(x56)
	lw x100, 0(x100)
	fdiv x100, x100, x10
	fsub x100, zero, x100
	sw x100, 1(x5)
	lw x100, 4(x56)
	lw x100, 1(x100)
	fdiv x100, x100, x10
	fsub x100, zero, x100
	sw x100, 2(x5)
	lw x100, 4(x56)
	lw x100, 2(x100)
	fdiv x10, x100, x10
	fsub x10, zero, x10
	sw x10, 3(x5)
main_cont_b6318:
# B6318
	add x4, x57, x54
	sw x5, 0(x4)
	j main_cont_b6328 # adhoc jump(2)
main_beqelse_b6315:
# B6315
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
	lw x10, 0(x58)
	lw x100, 1(x58)
	lw x11, 2(x58)
	fmul x12, x10, x10
	lw x13, 4(x56)
	lw x13, 0(x13)
	fmul x12, x12, x13
	fmul x13, x100, x100
	lw x14, 4(x56)
	lw x14, 1(x14)
	fmul x13, x13, x14
	fadd x12, x12, x13
	fmul x13, x11, x11
	lw x14, 4(x56)
	lw x14, 2(x14)
	fmul x13, x13, x14
	fadd x12, x12, x13
	lw x13, 3(x56)
	bne	x13, zero, main_beqelse_b6320
# B6319
	mv x10, x12
	j main_cont_b6321 # adhoc jump(2)
main_beqelse_b6320:
# B6320
	fmul x13, x100, x11
	lw x14, 9(x56)
	lw x14, 0(x14)
	fmul x13, x13, x14
	fadd x12, x12, x13
	fmul x11, x11, x10
	lw x13, 9(x56)
	lw x13, 1(x13)
	fmul x11, x11, x13
	fadd x11, x12, x11
	fmul x10, x10, x100
	lw x100, 9(x56)
	lw x100, 2(x100)
	fmul x10, x10, x100
	fadd x10, x11, x10
main_cont_b6321:
# B6321
	lw x100, 0(x58)
	lw x11, 4(x56)
	lw x11, 0(x11)
	fmul x100, x100, x11
	fsub x100, zero, x100
	lw x11, 1(x58)
	lw x12, 4(x56)
	lw x12, 1(x12)
	fmul x11, x11, x12
	fsub x11, zero, x11
	lw x12, 2(x58)
	lw x13, 4(x56)
	lw x13, 2(x13)
	fmul x12, x12, x13
	fsub x12, zero, x12
	sw x10, 0(x5)
	lw x13, 3(x56)
	bne	x13, zero, main_beqelse_b6323
# B6322
	sw x100, 1(x5)
	sw x11, 2(x5)
	sw x12, 3(x5)
	j main_cont_b6324 # adhoc jump(2)
main_beqelse_b6323:
# B6323
	lw x13, 2(x58)
	lw x14, 9(x56)
	lw x14, 1(x14)
	fmul x13, x13, x14
	lw x14, 1(x58)
	lw x15, 9(x56)
	lw x15, 2(x15)
	fmul x14, x14, x15
	fadd x13, x13, x14
	fmul x13, x13, x119
	fsub x100, x100, x13
	sw x100, 1(x5)
	lw x100, 2(x58)
	lw x13, 9(x56)
	lw x13, 0(x13)
	fmul x100, x100, x13
	lw x13, 0(x58)
	lw x14, 9(x56)
	lw x14, 2(x14)
	fmul x13, x13, x14
	fadd x100, x100, x13
	fmul x100, x100, x119
	fsub x100, x11, x100
	sw x100, 2(x5)
	lw x100, 1(x58)
	lw x11, 9(x56)
	lw x11, 0(x11)
	fmul x100, x100, x11
	lw x11, 0(x58)
	lw x13, 9(x56)
	lw x13, 1(x13)
	fmul x11, x11, x13
	fadd x100, x100, x11
	fmul x100, x100, x119
	fsub x100, x12, x100
	sw x100, 3(x5)
main_cont_b6324:
# B6324
	feq x100, x10, zero
	bne	x100, zero, main_beqelse_b6327
# B6325
	fdiv x10, x118, x10
	sw x10, 4(x5)
main_beqelse_b6327:
# B6327
	add x4, x57, x54
	sw x5, 0(x4)
main_cont_b6328:
# B6328
	addi x54, x54, -1
	j main_loop_b6291 # loopback to while entry from B6328
main_bleelse_b6329:
# B6329
	mv x10, x3
	addi x3, x3, 3
	sw x122, 2(x10)
	sw x55, 1(x10)
	sw x120, 0(x10)
	add x4, x121, x114
	sw x10, 0(x4)
	addi x120, x114, 1
	addi x52, x113, 2
	lw x54, 1(x42)
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
	mv x55, x5
	lw x5, 0(x53)
	mv x6, x55
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
	mv x56, x3
	addi x3, x3, 2
	sw x5, 1(x56)
	sw x55, 0(x56)
	sw x123, 0(x55)
	sw x54, 1(x55)
	sw x50, 2(x55)
	lw x10, 0(x53)
	addi x10, x10, -1
	mv x54, x10
	mv x50, x56
main_loop_b6330:
# B6330
	bgt	zero, x54, main_bleelse_b6368
# B6331
	add x4, x116, x54
	lw x55, 0(x4)
	lw x57, 1(x50)
	lw x58, 0(x50)
	lw x10, 1(x55)
	bne	x10, x103, main_beqelse_b6334
# B6333
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
	lw x10, 0(x58)
	feq x10, x10, zero
	bne	x10, zero, main_beqelse_b6336
# B6335
	lw x10, 6(x55)
	lw x100, 0(x58)
	fle x100, zero, x100
	xori x100, x100, 1
	xor x10, x10, x100
	lw x100, 4(x55)
	lw x100, 0(x100)
	bne	x10, zero, main_beqelse_b6338
# B6337
	fsub x10, zero, x100
	j main_cont_b6339 # adhoc jump(2)
main_beqelse_b6338:
# B6338
	mv x10, x100
main_cont_b6339:
# B6339
	sw x10, 0(x5)
	lw x10, 0(x58)
	fdiv x10, x118, x10
	sw x10, 1(x5)
	j main_cont_b6340 # adhoc jump(2)
main_beqelse_b6336:
# B6336
	sw zero, 1(x5)
main_cont_b6340:
# B6340
	lw x10, 1(x58)
	feq x10, x10, zero
	bne	x10, zero, main_beqelse_b6342
# B6341
	lw x10, 6(x55)
	lw x100, 1(x58)
	fle x100, zero, x100
	xori x100, x100, 1
	xor x10, x10, x100
	lw x100, 4(x55)
	lw x100, 1(x100)
	bne	x10, zero, main_beqelse_b6344
# B6343
	fsub x10, zero, x100
	j main_cont_b6345 # adhoc jump(2)
main_beqelse_b6344:
# B6344
	mv x10, x100
main_cont_b6345:
# B6345
	sw x10, 2(x5)
	lw x10, 1(x58)
	fdiv x10, x118, x10
	sw x10, 3(x5)
	j main_cont_b6346 # adhoc jump(2)
main_beqelse_b6342:
# B6342
	sw zero, 3(x5)
main_cont_b6346:
# B6346
	lw x10, 2(x58)
	feq x10, x10, zero
	bne	x10, zero, main_beqelse_b6348
# B6347
	lw x10, 6(x55)
	lw x100, 2(x58)
	fle x100, zero, x100
	xori x100, x100, 1
	xor x10, x10, x100
	lw x100, 4(x55)
	lw x100, 2(x100)
	bne	x10, zero, main_beqelse_b6350
# B6349
	fsub x10, zero, x100
	j main_cont_b6351 # adhoc jump(2)
main_beqelse_b6350:
# B6350
	mv x10, x100
main_cont_b6351:
# B6351
	sw x10, 4(x5)
	lw x10, 2(x58)
	fdiv x10, x118, x10
	sw x10, 5(x5)
	j main_cont_b6352 # adhoc jump(2)
main_beqelse_b6348:
# B6348
	sw zero, 5(x5)
main_cont_b6352:
# B6352
	add x4, x57, x54
	sw x5, 0(x4)
	j main_cont_b6367 # adhoc jump(2)
main_beqelse_b6334:
# B6334
	bne	x10, x105, main_beqelse_b6354
# B6353
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
	lw x10, 0(x58)
	lw x100, 4(x55)
	lw x100, 0(x100)
	fmul x10, x10, x100
	lw x100, 1(x58)
	lw x11, 4(x55)
	lw x11, 1(x11)
	fmul x100, x100, x11
	fadd x10, x10, x100
	lw x100, 2(x58)
	lw x11, 4(x55)
	lw x11, 2(x11)
	fmul x100, x100, x11
	fadd x10, x10, x100
	fle x100, x10, zero
	beq	x100, zero, main_bneelse_b6356
# B6355
	sw zero, 0(x5)
	j main_cont_b6357 # adhoc jump(2)
main_bneelse_b6356:
# B6356
	fdiv x100, x117, x10
	sw x100, 0(x5)
	lw x100, 4(x55)
	lw x100, 0(x100)
	fdiv x100, x100, x10
	fsub x100, zero, x100
	sw x100, 1(x5)
	lw x100, 4(x55)
	lw x100, 1(x100)
	fdiv x100, x100, x10
	fsub x100, zero, x100
	sw x100, 2(x5)
	lw x100, 4(x55)
	lw x100, 2(x100)
	fdiv x10, x100, x10
	fsub x10, zero, x10
	sw x10, 3(x5)
main_cont_b6357:
# B6357
	add x4, x57, x54
	sw x5, 0(x4)
	j main_cont_b6367 # adhoc jump(2)
main_beqelse_b6354:
# B6354
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
	lw x10, 0(x58)
	lw x100, 1(x58)
	lw x11, 2(x58)
	fmul x12, x10, x10
	lw x13, 4(x55)
	lw x13, 0(x13)
	fmul x12, x12, x13
	fmul x13, x100, x100
	lw x14, 4(x55)
	lw x14, 1(x14)
	fmul x13, x13, x14
	fadd x12, x12, x13
	fmul x13, x11, x11
	lw x14, 4(x55)
	lw x14, 2(x14)
	fmul x13, x13, x14
	fadd x12, x12, x13
	lw x13, 3(x55)
	bne	x13, zero, main_beqelse_b6359
# B6358
	mv x10, x12
	j main_cont_b6360 # adhoc jump(2)
main_beqelse_b6359:
# B6359
	fmul x13, x100, x11
	lw x14, 9(x55)
	lw x14, 0(x14)
	fmul x13, x13, x14
	fadd x12, x12, x13
	fmul x11, x11, x10
	lw x13, 9(x55)
	lw x13, 1(x13)
	fmul x11, x11, x13
	fadd x11, x12, x11
	fmul x10, x10, x100
	lw x100, 9(x55)
	lw x100, 2(x100)
	fmul x10, x10, x100
	fadd x10, x11, x10
main_cont_b6360:
# B6360
	lw x100, 0(x58)
	lw x11, 4(x55)
	lw x11, 0(x11)
	fmul x100, x100, x11
	fsub x100, zero, x100
	lw x11, 1(x58)
	lw x12, 4(x55)
	lw x12, 1(x12)
	fmul x11, x11, x12
	fsub x11, zero, x11
	lw x12, 2(x58)
	lw x13, 4(x55)
	lw x13, 2(x13)
	fmul x12, x12, x13
	fsub x12, zero, x12
	sw x10, 0(x5)
	lw x13, 3(x55)
	bne	x13, zero, main_beqelse_b6362
# B6361
	sw x100, 1(x5)
	sw x11, 2(x5)
	sw x12, 3(x5)
	j main_cont_b6363 # adhoc jump(2)
main_beqelse_b6362:
# B6362
	lw x13, 2(x58)
	lw x14, 9(x55)
	lw x14, 1(x14)
	fmul x13, x13, x14
	lw x14, 1(x58)
	lw x15, 9(x55)
	lw x15, 2(x15)
	fmul x14, x14, x15
	fadd x13, x13, x14
	fmul x13, x13, x119
	fsub x100, x100, x13
	sw x100, 1(x5)
	lw x100, 2(x58)
	lw x13, 9(x55)
	lw x13, 0(x13)
	fmul x100, x100, x13
	lw x13, 0(x58)
	lw x14, 9(x55)
	lw x14, 2(x14)
	fmul x13, x13, x14
	fadd x100, x100, x13
	fmul x100, x100, x119
	fsub x100, x11, x100
	sw x100, 2(x5)
	lw x100, 1(x58)
	lw x11, 9(x55)
	lw x11, 0(x11)
	fmul x100, x100, x11
	lw x11, 0(x58)
	lw x13, 9(x55)
	lw x13, 1(x13)
	fmul x11, x11, x13
	fadd x100, x100, x11
	fmul x100, x100, x119
	fsub x100, x12, x100
	sw x100, 3(x5)
main_cont_b6363:
# B6363
	feq x100, x10, zero
	bne	x100, zero, main_beqelse_b6366
# B6364
	fdiv x10, x118, x10
	sw x10, 4(x5)
main_beqelse_b6366:
# B6366
	add x4, x57, x54
	sw x5, 0(x4)
main_cont_b6367:
# B6367
	addi x54, x54, -1
	j main_loop_b6330 # loopback to while entry from B6367
main_bleelse_b6368:
# B6368
	mv x10, x3
	addi x3, x3, 3
	sw x122, 2(x10)
	sw x56, 1(x10)
	sw x52, 0(x10)
	add x4, x121, x120
	sw x10, 0(x4)
	addi x120, x114, 2
	addi x113, x113, 3
	lw x50, 2(x42)
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
	mv x52, x5
	lw x5, 0(x53)
	mv x6, x52
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
	mv x54, x3
	addi x3, x3, 2
	sw x5, 1(x54)
	sw x52, 0(x54)
	sw x123, 0(x52)
	sw x124, 1(x52)
	sw x50, 2(x52)
	lw x10, 0(x53)
	addi x10, x10, -1
	mv x123, x54
	mv x124, x10
main_loop_b6369:
# B6369
	bgt	zero, x124, main_bleelse_b6407
# B6370
	add x4, x116, x124
	lw x50, 0(x4)
	lw x52, 1(x123)
	lw x55, 0(x123)
	lw x10, 1(x50)
	bne	x10, x103, main_beqelse_b6373
# B6372
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
	feq x10, x10, zero
	bne	x10, zero, main_beqelse_b6375
# B6374
	lw x10, 6(x50)
	lw x100, 0(x55)
	fle x100, zero, x100
	xori x100, x100, 1
	xor x10, x10, x100
	lw x100, 4(x50)
	lw x100, 0(x100)
	bne	x10, zero, main_beqelse_b6377
# B6376
	fsub x10, zero, x100
	j main_cont_b6378 # adhoc jump(2)
main_beqelse_b6377:
# B6377
	mv x10, x100
main_cont_b6378:
# B6378
	sw x10, 0(x5)
	lw x10, 0(x55)
	fdiv x10, x118, x10
	sw x10, 1(x5)
	j main_cont_b6379 # adhoc jump(2)
main_beqelse_b6375:
# B6375
	sw zero, 1(x5)
main_cont_b6379:
# B6379
	lw x10, 1(x55)
	feq x10, x10, zero
	bne	x10, zero, main_beqelse_b6381
# B6380
	lw x10, 6(x50)
	lw x100, 1(x55)
	fle x100, zero, x100
	xori x100, x100, 1
	xor x10, x10, x100
	lw x100, 4(x50)
	lw x100, 1(x100)
	bne	x10, zero, main_beqelse_b6383
# B6382
	fsub x10, zero, x100
	j main_cont_b6384 # adhoc jump(2)
main_beqelse_b6383:
# B6383
	mv x10, x100
main_cont_b6384:
# B6384
	sw x10, 2(x5)
	lw x10, 1(x55)
	fdiv x10, x118, x10
	sw x10, 3(x5)
	j main_cont_b6385 # adhoc jump(2)
main_beqelse_b6381:
# B6381
	sw zero, 3(x5)
main_cont_b6385:
# B6385
	lw x10, 2(x55)
	feq x10, x10, zero
	bne	x10, zero, main_beqelse_b6387
# B6386
	lw x10, 6(x50)
	lw x100, 2(x55)
	fle x100, zero, x100
	xori x100, x100, 1
	xor x10, x10, x100
	lw x100, 4(x50)
	lw x100, 2(x100)
	bne	x10, zero, main_beqelse_b6389
# B6388
	fsub x10, zero, x100
	j main_cont_b6390 # adhoc jump(2)
main_beqelse_b6389:
# B6389
	mv x10, x100
main_cont_b6390:
# B6390
	sw x10, 4(x5)
	lw x10, 2(x55)
	fdiv x10, x118, x10
	sw x10, 5(x5)
	j main_cont_b6391 # adhoc jump(2)
main_beqelse_b6387:
# B6387
	sw zero, 5(x5)
main_cont_b6391:
# B6391
	add x4, x52, x124
	sw x5, 0(x4)
	j main_cont_b6406 # adhoc jump(2)
main_beqelse_b6373:
# B6373
	bne	x10, x105, main_beqelse_b6393
# B6392
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
	lw x100, 4(x50)
	lw x100, 0(x100)
	fmul x10, x10, x100
	lw x100, 1(x55)
	lw x11, 4(x50)
	lw x11, 1(x11)
	fmul x100, x100, x11
	fadd x10, x10, x100
	lw x100, 2(x55)
	lw x11, 4(x50)
	lw x11, 2(x11)
	fmul x100, x100, x11
	fadd x10, x10, x100
	fle x100, x10, zero
	beq	x100, zero, main_bneelse_b6395
# B6394
	sw zero, 0(x5)
	j main_cont_b6396 # adhoc jump(2)
main_bneelse_b6395:
# B6395
	fdiv x100, x117, x10
	sw x100, 0(x5)
	lw x100, 4(x50)
	lw x100, 0(x100)
	fdiv x100, x100, x10
	fsub x100, zero, x100
	sw x100, 1(x5)
	lw x100, 4(x50)
	lw x100, 1(x100)
	fdiv x100, x100, x10
	fsub x100, zero, x100
	sw x100, 2(x5)
	lw x100, 4(x50)
	lw x100, 2(x100)
	fdiv x10, x100, x10
	fsub x10, zero, x10
	sw x10, 3(x5)
main_cont_b6396:
# B6396
	add x4, x52, x124
	sw x5, 0(x4)
	j main_cont_b6406 # adhoc jump(2)
main_beqelse_b6393:
# B6393
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
	bne	x13, zero, main_beqelse_b6398
# B6397
	mv x10, x12
	j main_cont_b6399 # adhoc jump(2)
main_beqelse_b6398:
# B6398
	fmul x13, x100, x11
	lw x14, 9(x50)
	lw x14, 0(x14)
	fmul x13, x13, x14
	fadd x12, x12, x13
	fmul x11, x11, x10
	lw x13, 9(x50)
	lw x13, 1(x13)
	fmul x11, x11, x13
	fadd x11, x12, x11
	fmul x10, x10, x100
	lw x100, 9(x50)
	lw x100, 2(x100)
	fmul x10, x10, x100
	fadd x10, x11, x10
main_cont_b6399:
# B6399
	lw x100, 0(x55)
	lw x11, 4(x50)
	lw x11, 0(x11)
	fmul x100, x100, x11
	fsub x100, zero, x100
	lw x11, 1(x55)
	lw x12, 4(x50)
	lw x12, 1(x12)
	fmul x11, x11, x12
	fsub x11, zero, x11
	lw x12, 2(x55)
	lw x13, 4(x50)
	lw x13, 2(x13)
	fmul x12, x12, x13
	fsub x12, zero, x12
	sw x10, 0(x5)
	lw x13, 3(x50)
	bne	x13, zero, main_beqelse_b6401
# B6400
	sw x100, 1(x5)
	sw x11, 2(x5)
	sw x12, 3(x5)
	j main_cont_b6402 # adhoc jump(2)
main_beqelse_b6401:
# B6401
	lw x13, 2(x55)
	lw x14, 9(x50)
	lw x14, 1(x14)
	fmul x13, x13, x14
	lw x14, 1(x55)
	lw x15, 9(x50)
	lw x15, 2(x15)
	fmul x14, x14, x15
	fadd x13, x13, x14
	fmul x13, x13, x119
	fsub x100, x100, x13
	sw x100, 1(x5)
	lw x100, 2(x55)
	lw x13, 9(x50)
	lw x13, 0(x13)
	fmul x100, x100, x13
	lw x13, 0(x55)
	lw x14, 9(x50)
	lw x14, 2(x14)
	fmul x13, x13, x14
	fadd x100, x100, x13
	fmul x100, x100, x119
	fsub x100, x11, x100
	sw x100, 2(x5)
	lw x100, 1(x55)
	lw x11, 9(x50)
	lw x11, 0(x11)
	fmul x100, x100, x11
	lw x11, 0(x55)
	lw x13, 9(x50)
	lw x13, 1(x13)
	fmul x11, x11, x13
	fadd x100, x100, x11
	fmul x100, x100, x119
	fsub x100, x12, x100
	sw x100, 3(x5)
main_cont_b6402:
# B6402
	feq x100, x10, zero
	bne	x100, zero, main_beqelse_b6405
# B6403
	fdiv x10, x118, x10
	sw x10, 4(x5)
main_beqelse_b6405:
# B6405
	add x4, x52, x124
	sw x5, 0(x4)
main_cont_b6406:
# B6406
	addi x124, x124, -1
	j main_loop_b6369 # loopback to while entry from B6406
main_bleelse_b6407:
# B6407
	mv x10, x3
	addi x3, x3, 3
	sw x122, 2(x10)
	sw x54, 1(x10)
	sw x113, 0(x10)
	add x4, x121, x120
	sw x10, 0(x4)
	addi x10, x114, 3
	sw x10, 0(x115)
	j main_cont_b6449 # adhoc jump(2)
main_beqelse_b6290:
# B6290
	bne	x11, x105, main_beqelse_b6449
# B6408
	lw x113, 0(x115)
	lw x10, 7(x100)
	lw x10, 0(x10)
	fsub x122, x118, x10
	lw x10, 4(x100)
	lw x11, 0(x42)
	lw x12, 0(x10)
	fmul x11, x11, x12
	lw x12, 1(x42)
	lw x13, 1(x10)
	fmul x12, x12, x13
	fadd x11, x11, x12
	lw x12, 2(x42)
	lw x10, 2(x10)
	fmul x10, x12, x10
	fadd x10, x11, x10
	lw x11, 4(x100)
	lw x11, 0(x11)
	fmul x11, x114, x11
	fmul x11, x11, x10
	lw x12, 0(x42)
	fsub x123, x11, x12
	lw x11, 4(x100)
	lw x11, 1(x11)
	fmul x11, x114, x11
	fmul x11, x11, x10
	lw x12, 1(x42)
	fsub x124, x11, x12
	lw x100, 4(x100)
	lw x100, 2(x100)
	fmul x100, x114, x100
	fmul x10, x100, x10
	lw x100, 2(x42)
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
	mv x50, x5
	lw x5, 0(x53)
	mv x6, x50
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
	mv x52, x3
	addi x3, x3, 2
	sw x5, 1(x52)
	sw x50, 0(x52)
	sw x123, 0(x50)
	sw x124, 1(x50)
	sw x114, 2(x50)
	lw x10, 0(x53)
	addi x10, x10, -1
	mv x114, x52
	mv x123, x10
main_loop_b6410:
# B6410
	bgt	zero, x123, main_bleelse_b6448
# B6411
	add x4, x116, x123
	lw x124, 0(x4)
	lw x50, 1(x114)
	lw x54, 0(x114)
	lw x10, 1(x124)
	bne	x10, x103, main_beqelse_b6414
# B6413
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
	feq x10, x10, zero
	bne	x10, zero, main_beqelse_b6416
# B6415
	lw x10, 6(x124)
	lw x100, 0(x54)
	fle x100, zero, x100
	xori x100, x100, 1
	xor x10, x10, x100
	lw x100, 4(x124)
	lw x100, 0(x100)
	bne	x10, zero, main_beqelse_b6418
# B6417
	fsub x10, zero, x100
	j main_cont_b6419 # adhoc jump(2)
main_beqelse_b6418:
# B6418
	mv x10, x100
main_cont_b6419:
# B6419
	sw x10, 0(x5)
	lw x10, 0(x54)
	fdiv x10, x118, x10
	sw x10, 1(x5)
	j main_cont_b6420 # adhoc jump(2)
main_beqelse_b6416:
# B6416
	sw zero, 1(x5)
main_cont_b6420:
# B6420
	lw x10, 1(x54)
	feq x10, x10, zero
	bne	x10, zero, main_beqelse_b6422
# B6421
	lw x10, 6(x124)
	lw x100, 1(x54)
	fle x100, zero, x100
	xori x100, x100, 1
	xor x10, x10, x100
	lw x100, 4(x124)
	lw x100, 1(x100)
	bne	x10, zero, main_beqelse_b6424
# B6423
	fsub x10, zero, x100
	j main_cont_b6425 # adhoc jump(2)
main_beqelse_b6424:
# B6424
	mv x10, x100
main_cont_b6425:
# B6425
	sw x10, 2(x5)
	lw x10, 1(x54)
	fdiv x10, x118, x10
	sw x10, 3(x5)
	j main_cont_b6426 # adhoc jump(2)
main_beqelse_b6422:
# B6422
	sw zero, 3(x5)
main_cont_b6426:
# B6426
	lw x10, 2(x54)
	feq x10, x10, zero
	bne	x10, zero, main_beqelse_b6428
# B6427
	lw x10, 6(x124)
	lw x100, 2(x54)
	fle x100, zero, x100
	xori x100, x100, 1
	xor x10, x10, x100
	lw x100, 4(x124)
	lw x100, 2(x100)
	bne	x10, zero, main_beqelse_b6430
# B6429
	fsub x10, zero, x100
	j main_cont_b6431 # adhoc jump(2)
main_beqelse_b6430:
# B6430
	mv x10, x100
main_cont_b6431:
# B6431
	sw x10, 4(x5)
	lw x10, 2(x54)
	fdiv x10, x118, x10
	sw x10, 5(x5)
	j main_cont_b6432 # adhoc jump(2)
main_beqelse_b6428:
# B6428
	sw zero, 5(x5)
main_cont_b6432:
# B6432
	add x4, x50, x123
	sw x5, 0(x4)
	j main_cont_b6447 # adhoc jump(2)
main_beqelse_b6414:
# B6414
	bne	x10, x105, main_beqelse_b6434
# B6433
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
	lw x100, 4(x124)
	lw x100, 0(x100)
	fmul x10, x10, x100
	lw x100, 1(x54)
	lw x11, 4(x124)
	lw x11, 1(x11)
	fmul x100, x100, x11
	fadd x10, x10, x100
	lw x100, 2(x54)
	lw x11, 4(x124)
	lw x11, 2(x11)
	fmul x100, x100, x11
	fadd x10, x10, x100
	fle x100, x10, zero
	beq	x100, zero, main_bneelse_b6436
# B6435
	sw zero, 0(x5)
	j main_cont_b6437 # adhoc jump(2)
main_bneelse_b6436:
# B6436
	fdiv x100, x117, x10
	sw x100, 0(x5)
	lw x100, 4(x124)
	lw x100, 0(x100)
	fdiv x100, x100, x10
	fsub x100, zero, x100
	sw x100, 1(x5)
	lw x100, 4(x124)
	lw x100, 1(x100)
	fdiv x100, x100, x10
	fsub x100, zero, x100
	sw x100, 2(x5)
	lw x100, 4(x124)
	lw x100, 2(x100)
	fdiv x10, x100, x10
	fsub x10, zero, x10
	sw x10, 3(x5)
main_cont_b6437:
# B6437
	add x4, x50, x123
	sw x5, 0(x4)
	j main_cont_b6447 # adhoc jump(2)
main_beqelse_b6434:
# B6434
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
	bne	x13, zero, main_beqelse_b6439
# B6438
	mv x10, x12
	j main_cont_b6440 # adhoc jump(2)
main_beqelse_b6439:
# B6439
	fmul x13, x100, x11
	lw x14, 9(x124)
	lw x14, 0(x14)
	fmul x13, x13, x14
	fadd x12, x12, x13
	fmul x11, x11, x10
	lw x13, 9(x124)
	lw x13, 1(x13)
	fmul x11, x11, x13
	fadd x11, x12, x11
	fmul x10, x10, x100
	lw x100, 9(x124)
	lw x100, 2(x100)
	fmul x10, x10, x100
	fadd x10, x11, x10
main_cont_b6440:
# B6440
	lw x100, 0(x54)
	lw x11, 4(x124)
	lw x11, 0(x11)
	fmul x100, x100, x11
	fsub x100, zero, x100
	lw x11, 1(x54)
	lw x12, 4(x124)
	lw x12, 1(x12)
	fmul x11, x11, x12
	fsub x11, zero, x11
	lw x12, 2(x54)
	lw x13, 4(x124)
	lw x13, 2(x13)
	fmul x12, x12, x13
	fsub x12, zero, x12
	sw x10, 0(x5)
	lw x13, 3(x124)
	bne	x13, zero, main_beqelse_b6442
# B6441
	sw x100, 1(x5)
	sw x11, 2(x5)
	sw x12, 3(x5)
	j main_cont_b6443 # adhoc jump(2)
main_beqelse_b6442:
# B6442
	lw x13, 2(x54)
	lw x14, 9(x124)
	lw x14, 1(x14)
	fmul x13, x13, x14
	lw x14, 1(x54)
	lw x15, 9(x124)
	lw x15, 2(x15)
	fmul x14, x14, x15
	fadd x13, x13, x14
	fmul x13, x13, x119
	fsub x100, x100, x13
	sw x100, 1(x5)
	lw x100, 2(x54)
	lw x13, 9(x124)
	lw x13, 0(x13)
	fmul x100, x100, x13
	lw x13, 0(x54)
	lw x14, 9(x124)
	lw x14, 2(x14)
	fmul x13, x13, x14
	fadd x100, x100, x13
	fmul x100, x100, x119
	fsub x100, x11, x100
	sw x100, 2(x5)
	lw x100, 1(x54)
	lw x11, 9(x124)
	lw x11, 0(x11)
	fmul x100, x100, x11
	lw x11, 0(x54)
	lw x13, 9(x124)
	lw x13, 1(x13)
	fmul x11, x11, x13
	fadd x100, x100, x11
	fmul x100, x100, x119
	fsub x100, x12, x100
	sw x100, 3(x5)
main_cont_b6443:
# B6443
	feq x100, x10, zero
	bne	x100, zero, main_beqelse_b6446
# B6444
	fdiv x10, x118, x10
	sw x10, 4(x5)
main_beqelse_b6446:
# B6446
	add x4, x50, x123
	sw x5, 0(x4)
main_cont_b6447:
# B6447
	addi x123, x123, -1
	j main_loop_b6410 # loopback to while entry from B6447
main_bleelse_b6448:
# B6448
	mv x10, x3
	addi x3, x3, 3
	sw x122, 2(x10)
	sw x52, 1(x10)
	sw x120, 0(x10)
	add x4, x121, x113
	sw x10, 0(x4)
	addi x10, x113, 1
	sw x10, 0(x115)
main_beqelse_b6449:
main_bleelse_b6449:
main_cont_b6449:
# B6449
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
	mv x115, zero
	mv x114, x12
	mv x122, x10
	mv x121, x11
	mv x120, x100
	mv x113, x109
main_loop_b6450:
# B6450
	la x123, min_caml_rgb
	la x124, min_caml_diffuse_ray
	la x50, min_caml_startp_fast
	bgt	zero, x114, main_bleelse_b6542
# B6451
	lw x10, 0(x106)
	lw x100, 0(x104)
	sub x100, x114, x100
	itof x100, x100
	fmul x10, x10, x100
	la x100, min_caml_ptrace_dirvec
	lw x11, 0(x126)
	fmul x11, x10, x11
	fadd x11, x11, x120
	sw x11, 0(x100)
	lw x11, 1(x126)
	fmul x11, x10, x11
	fadd x11, x11, x121
	sw x11, 1(x100)
	lw x11, 2(x126)
	fmul x10, x10, x11
	fadd x10, x10, x122
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
	bne	x11, zero, main_beqelse_b6454
# B6453
	bne	zero, zero, main_beqelse_b6456
# B6455
	fdiv x10, x118, x10
	j main_cont_b6457 # adhoc jump(2)
main_beqelse_b6456:
# B6456
	fdiv x10, x117, x10
	j main_cont_b6457 # adhoc jump(2)
main_beqelse_b6454:
# B6454
	mv x10, x118
main_cont_b6457:
# B6457
	lw x11, 0(x100)
	fmul x11, x11, x10
	sw x11, 0(x100)
	lw x11, 1(x100)
	fmul x11, x11, x10
	sw x11, 1(x100)
	lw x11, 2(x100)
	fmul x10, x11, x10
	sw x10, 2(x100)
	sw zero, 0(x123)
	sw zero, 1(x123)
	sw zero, 2(x123)
	la x10, min_caml_startp
	lw x11, 0(x41)
	sw x11, 0(x10)
	lw x11, 1(x41)
	sw x11, 1(x10)
	lw x11, 2(x41)
	sw x11, 2(x10)
	add x4, x113, x114
	lw x7, 0(x4)
	mv x65, x118
	mv x66, zero
	mv x6, x100
	mv x5, zero
	addi	x2, x2, 52
	jal	trace_ray.3071
	addi	x2, x2, -52
	add x4, x113, x114
	lw x10, 0(x4)
	lw x10, 0(x10)
	lw x100, 0(x123)
	sw x100, 0(x10)
	lw x100, 1(x123)
	sw x100, 1(x10)
	lw x100, 2(x123)
	sw x100, 2(x10)
	add x4, x113, x114
	lw x10, 0(x4)
	lw x10, 6(x10)
	sw x115, 0(x10)
	add x4, x113, x114
	lw x10, 0(x4)
	mv x52, zero
	mv x123, x10
main_loop_b6458:
# B6458
	bgt	x52, x112, main_bleelse_b6538
# B6459
	lw x10, 2(x123)
	add x4, x10, x52
	lw x10, 0(x4)
	bgt	zero, x10, main_bleelse_b6538
# B6461
	lw x10, 3(x123)
	add x4, x10, x52
	lw x10, 0(x4)
	beq	x10, zero, main_bneelse_b6537
# B6464
	lw x10, 6(x123)
	lw x10, 0(x10)
	sw zero, 0(x124)
	sw zero, 1(x124)
	sw zero, 2(x124)
	lw x100, 7(x123)
	lw x11, 1(x123)
	add x4, x49, x10
	lw x10, 0(x4)
	add x4, x100, x52
	lw x100, 0(x4)
	add x4, x11, x52
	lw x11, 0(x4)
	lw x12, 0(x11)
	sw x12, 0(x50)
	lw x12, 1(x11)
	sw x12, 1(x50)
	lw x12, 2(x11)
	sw x12, 2(x50)
	lw x12, 0(x53)
	addi x12, x12, -1
	mv x14, x12
	mv x13, x11
main_loop_b6465:
# B6465
	bgt	zero, x14, main_bleelse_b6479
# B6466
	add x4, x116, x14
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
	bne	x16, x105, main_beqelse_b6469
# B6468
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
	j main_cont_b6478 # adhoc jump(2)
main_beqelse_b6469:
# B6469
	bge	x105, x16, main_bgtelse_b6478
# B6471
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
	bne	x21, zero, main_beqelse_b6473
# B6472
	mv x12, x20
	j main_cont_b6474 # adhoc jump(2)
main_beqelse_b6473:
# B6473
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
main_cont_b6474:
# B6474
	bne	x16, x108, main_beqelse_b6477
# B6475
	fsub x12, x12, x118
main_beqelse_b6477:
# B6477
	sw x12, 3(x15)
main_bgtelse_b6478:
main_cont_b6478:
# B6478
	addi x14, x14, -1
	j main_loop_b6465 # loopback to while entry from B6478
main_bleelse_b6479:
# B6479
	lui x54, 274784
	lui x55, 799072
	mv x58, x11
	mv x56, x10
	mv x59, x51
	mv x57, x100
main_loop_b6480:
# B6480
	bgt	zero, x59, main_bleelse_b6536
# B6481
	add x4, x56, x59
	lw x10, 0(x4)
	lw x10, 0(x10)
	lw x100, 0(x10)
	lw x11, 0(x57)
	fmul x100, x100, x11
	lw x11, 1(x10)
	lw x12, 1(x57)
	fmul x11, x11, x12
	fadd x100, x100, x11
	lw x10, 2(x10)
	lw x11, 2(x57)
	fmul x10, x10, x11
	fadd x10, x100, x10
	fle x100, zero, x10
	la x60, min_caml_intersected_object_id
	la x61, min_caml_intsec_rectside
	la x11, min_caml_nvector
	la x12, min_caml_texture_color
	beq	x100, zero, main_bneelse_b6484
# B6483
	add x4, x56, x59
	lw x62, 0(x4)
	fdiv x63, x10, x54
	mv x5, x62
	addi	x2, x2, 52
	jal	judge_intersection_fast.3048
	addi	x2, x2, -52
	beq	x5, zero, main_bneelse_b6535
# B6486
	lw x10, 0(x60)
	add x4, x116, x10
	lw x60, 0(x4)
	lw x10, 0(x62)
	lw x100, 1(x60)
	la x11, min_caml_intersection_point
	bne	x100, x103, main_beqelse_b6488
# B6487
	lw x100, 0(x61)
	la x12, min_caml_nvector
	sw zero, 0(x12)
	sw zero, 1(x12)
	sw zero, 2(x12)
	addi x100, x100, -1
	add x4, x10, x100
	lw x10, 0(x4)
	feq x13, x10, zero
	bne	x13, zero, main_beqelse_b6490
# B6489
	fle x10, x10, zero
	beq	x10, zero, main_bneelse_b6492
# B6491
	mv x10, x117
	j main_cont_b6493 # adhoc jump(2)
main_bneelse_b6492:
# B6492
	lui x10, 260096
	j main_cont_b6493 # adhoc jump(2)
main_beqelse_b6490:
# B6490
	mv x10, zero
main_cont_b6493:
# B6493
	fsub x10, zero, x10
	add x4, x12, x100
	sw x10, 0(x4)
	j main_cont_b6504 # adhoc jump(2)
main_beqelse_b6488:
# B6488
	bne	x100, x105, main_beqelse_b6495
# B6494
	lw x10, 4(x60)
	lw x10, 0(x10)
	fsub x10, zero, x10
	la x100, min_caml_nvector
	sw x10, 0(x100)
	lw x10, 4(x60)
	lw x10, 1(x10)
	fsub x10, zero, x10
	sw x10, 1(x100)
	lw x10, 4(x60)
	lw x10, 2(x10)
	fsub x10, zero, x10
	sw x10, 2(x100)
	j main_cont_b6504 # adhoc jump(2)
main_beqelse_b6495:
# B6495
	lw x10, 0(x11)
	lw x100, 5(x60)
	lw x100, 0(x100)
	fsub x10, x10, x100
	lw x100, 1(x11)
	lw x12, 5(x60)
	lw x12, 1(x12)
	fsub x100, x100, x12
	lw x12, 2(x11)
	lw x13, 5(x60)
	lw x13, 2(x13)
	fsub x12, x12, x13
	lw x13, 4(x60)
	lw x13, 0(x13)
	fmul x13, x10, x13
	lw x14, 4(x60)
	lw x14, 1(x14)
	fmul x14, x100, x14
	lw x15, 4(x60)
	lw x15, 2(x15)
	fmul x15, x12, x15
	lw x16, 3(x60)
	bne	x16, zero, main_beqelse_b6497
# B6496
	la x17, min_caml_nvector
	sw x13, 0(x17)
	sw x14, 1(x17)
	sw x15, 2(x17)
	j main_cont_b6498 # adhoc jump(2)
main_beqelse_b6497:
# B6497
	lw x16, 9(x60)
	lw x16, 2(x16)
	fmul x16, x100, x16
	lw x17, 9(x60)
	lw x17, 1(x17)
	fmul x17, x12, x17
	fadd x16, x16, x17
	fmul x16, x16, x119
	fadd x13, x13, x16
	la x16, min_caml_nvector
	sw x13, 0(x16)
	lw x13, 9(x60)
	lw x13, 2(x13)
	fmul x13, x10, x13
	lw x17, 9(x60)
	lw x17, 0(x17)
	fmul x12, x12, x17
	fadd x12, x13, x12
	fmul x12, x12, x119
	fadd x12, x14, x12
	sw x12, 1(x16)
	lw x12, 9(x60)
	lw x12, 1(x12)
	fmul x10, x10, x12
	lw x12, 9(x60)
	lw x12, 0(x12)
	fmul x100, x100, x12
	fadd x10, x10, x100
	fmul x10, x10, x119
	fadd x10, x15, x10
	sw x10, 2(x16)
main_cont_b6498:
# B6498
	lw x10, 6(x60)
	la x100, min_caml_nvector
	lw x12, 0(x100)
	fmul x12, x12, x12
	lw x13, 1(x100)
	fmul x13, x13, x13
	fadd x12, x12, x13
	lw x13, 2(x100)
	fmul x13, x13, x13
	fadd x12, x12, x13
	fsqrt x12, x12
	feq x13, x12, zero
	bne	x13, zero, main_beqelse_b6500
# B6499
	bne	x10, zero, main_beqelse_b6502
# B6501
	fdiv x10, x118, x12
	j main_cont_b6503 # adhoc jump(2)
main_beqelse_b6502:
# B6502
	fdiv x10, x117, x12
	j main_cont_b6503 # adhoc jump(2)
main_beqelse_b6500:
# B6500
	lui x10, 260096
main_cont_b6503:
# B6503
	lw x12, 0(x100)
	fmul x12, x12, x10
	sw x12, 0(x100)
	lw x12, 1(x100)
	fmul x12, x12, x10
	sw x12, 1(x100)
	lw x12, 2(x100)
	fmul x10, x12, x10
	sw x10, 2(x100)
main_cont_b6504:
# B6504
	mv x6, x11
	mv x5, x60
	addi	x2, x2, 52
	jal	utexture.3059
	addi	x2, x2, -52
	lw x6, 0(x43)
	mv x5, zero
	addi	x2, x2, 52
	jal	shadow_check_one_or_matrix.3019
	addi	x2, x2, -52
	bne	x5, zero, main_beqelse_b6535
# B6505
	la x10, min_caml_nvector
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
	fsub x10, zero, x10
	fle x100, x10, zero
	beq	x100, zero, main_bneelse_b6508
# B6507
	mv x11, zero
	j main_cont_b6509 # adhoc jump(2)
main_bneelse_b6508:
# B6508
	mv x11, x10
main_cont_b6509:
# B6509
	fmul x10, x63, x11
	lw x100, 7(x60)
	lw x100, 0(x100)
	fmul x10, x10, x100
	lw x100, 0(x124)
	la x11, min_caml_texture_color
	lw x12, 0(x11)
	fmul x12, x10, x12
	fadd x100, x100, x12
	sw x100, 0(x124)
	lw x100, 1(x124)
	lw x12, 1(x11)
	fmul x12, x10, x12
	fadd x100, x100, x12
	sw x100, 1(x124)
	lw x100, 2(x124)
	lw x11, 2(x11)
	fmul x10, x10, x11
	fadd x10, x100, x10
	sw x10, 2(x124)
	j main_cont_b6535 # adhoc jump(2)
main_bneelse_b6484:
# B6484
	addi x100, x59, 1
	add x4, x56, x100
	lw x62, 0(x4)
	fdiv x63, x10, x55
	mv x5, x62
	addi	x2, x2, 52
	jal	judge_intersection_fast.3048
	addi	x2, x2, -52
	beq	x5, zero, main_bneelse_b6535
# B6511
	lw x10, 0(x60)
	add x4, x116, x10
	lw x60, 0(x4)
	lw x10, 0(x62)
	lw x100, 1(x60)
	la x11, min_caml_intersection_point
	bne	x100, x103, main_beqelse_b6513
# B6512
	lw x100, 0(x61)
	la x12, min_caml_nvector
	sw zero, 0(x12)
	sw zero, 1(x12)
	sw zero, 2(x12)
	addi x100, x100, -1
	add x4, x10, x100
	lw x10, 0(x4)
	feq x13, x10, zero
	bne	x13, zero, main_beqelse_b6515
# B6514
	fle x10, x10, zero
	beq	x10, zero, main_bneelse_b6517
# B6516
	mv x10, x117
	j main_cont_b6518 # adhoc jump(2)
main_bneelse_b6517:
# B6517
	lui x10, 260096
	j main_cont_b6518 # adhoc jump(2)
main_beqelse_b6515:
# B6515
	mv x10, zero
main_cont_b6518:
# B6518
	fsub x10, zero, x10
	add x4, x12, x100
	sw x10, 0(x4)
	j main_cont_b6529 # adhoc jump(2)
main_beqelse_b6513:
# B6513
	bne	x100, x105, main_beqelse_b6520
# B6519
	lw x10, 4(x60)
	lw x10, 0(x10)
	fsub x10, zero, x10
	la x100, min_caml_nvector
	sw x10, 0(x100)
	lw x10, 4(x60)
	lw x10, 1(x10)
	fsub x10, zero, x10
	sw x10, 1(x100)
	lw x10, 4(x60)
	lw x10, 2(x10)
	fsub x10, zero, x10
	sw x10, 2(x100)
	j main_cont_b6529 # adhoc jump(2)
main_beqelse_b6520:
# B6520
	lw x10, 0(x11)
	lw x100, 5(x60)
	lw x100, 0(x100)
	fsub x10, x10, x100
	lw x100, 1(x11)
	lw x12, 5(x60)
	lw x12, 1(x12)
	fsub x100, x100, x12
	lw x12, 2(x11)
	lw x13, 5(x60)
	lw x13, 2(x13)
	fsub x12, x12, x13
	lw x13, 4(x60)
	lw x13, 0(x13)
	fmul x13, x10, x13
	lw x14, 4(x60)
	lw x14, 1(x14)
	fmul x14, x100, x14
	lw x15, 4(x60)
	lw x15, 2(x15)
	fmul x15, x12, x15
	lw x16, 3(x60)
	bne	x16, zero, main_beqelse_b6522
# B6521
	la x17, min_caml_nvector
	sw x13, 0(x17)
	sw x14, 1(x17)
	sw x15, 2(x17)
	j main_cont_b6523 # adhoc jump(2)
main_beqelse_b6522:
# B6522
	lw x16, 9(x60)
	lw x16, 2(x16)
	fmul x16, x100, x16
	lw x17, 9(x60)
	lw x17, 1(x17)
	fmul x17, x12, x17
	fadd x16, x16, x17
	fmul x16, x16, x119
	fadd x13, x13, x16
	la x16, min_caml_nvector
	sw x13, 0(x16)
	lw x13, 9(x60)
	lw x13, 2(x13)
	fmul x13, x10, x13
	lw x17, 9(x60)
	lw x17, 0(x17)
	fmul x12, x12, x17
	fadd x12, x13, x12
	fmul x12, x12, x119
	fadd x12, x14, x12
	sw x12, 1(x16)
	lw x12, 9(x60)
	lw x12, 1(x12)
	fmul x10, x10, x12
	lw x12, 9(x60)
	lw x12, 0(x12)
	fmul x100, x100, x12
	fadd x10, x10, x100
	fmul x10, x10, x119
	fadd x10, x15, x10
	sw x10, 2(x16)
main_cont_b6523:
# B6523
	lw x10, 6(x60)
	la x100, min_caml_nvector
	lw x12, 0(x100)
	fmul x12, x12, x12
	lw x13, 1(x100)
	fmul x13, x13, x13
	fadd x12, x12, x13
	lw x13, 2(x100)
	fmul x13, x13, x13
	fadd x12, x12, x13
	fsqrt x12, x12
	feq x13, x12, zero
	bne	x13, zero, main_beqelse_b6525
# B6524
	bne	x10, zero, main_beqelse_b6527
# B6526
	fdiv x10, x118, x12
	j main_cont_b6528 # adhoc jump(2)
main_beqelse_b6527:
# B6527
	fdiv x10, x117, x12
	j main_cont_b6528 # adhoc jump(2)
main_beqelse_b6525:
# B6525
	lui x10, 260096
main_cont_b6528:
# B6528
	lw x12, 0(x100)
	fmul x12, x12, x10
	sw x12, 0(x100)
	lw x12, 1(x100)
	fmul x12, x12, x10
	sw x12, 1(x100)
	lw x12, 2(x100)
	fmul x10, x12, x10
	sw x10, 2(x100)
main_cont_b6529:
# B6529
	mv x6, x11
	mv x5, x60
	addi	x2, x2, 52
	jal	utexture.3059
	addi	x2, x2, -52
	lw x6, 0(x43)
	mv x5, zero
	addi	x2, x2, 52
	jal	shadow_check_one_or_matrix.3019
	addi	x2, x2, -52
	bne	x5, zero, main_beqelse_b6535
# B6530
	la x10, min_caml_nvector
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
	fsub x10, zero, x10
	fle x100, x10, zero
	beq	x100, zero, main_bneelse_b6533
# B6532
	mv x11, zero
	j main_cont_b6534 # adhoc jump(2)
main_bneelse_b6533:
# B6533
	mv x11, x10
main_cont_b6534:
# B6534
	fmul x10, x63, x11
	lw x100, 7(x60)
	lw x100, 0(x100)
	fmul x10, x10, x100
	lw x100, 0(x124)
	la x11, min_caml_texture_color
	lw x12, 0(x11)
	fmul x12, x10, x12
	fadd x100, x100, x12
	sw x100, 0(x124)
	lw x100, 1(x124)
	lw x12, 1(x11)
	fmul x12, x10, x12
	fadd x100, x100, x12
	sw x100, 1(x124)
	lw x100, 2(x124)
	lw x11, 2(x11)
	fmul x10, x10, x11
	fadd x10, x100, x10
	sw x10, 2(x124)
main_beqelse_b6535:
main_bneelse_b6535:
main_cont_b6535:
# B6535
	addi x59, x59, -2
	j main_loop_b6480 # loopback to while entry from B6535
main_bleelse_b6536:
# B6536
	lw x10, 5(x123)
	add x4, x10, x52
	lw x10, 0(x4)
	lw x100, 0(x124)
	sw x100, 0(x10)
	lw x100, 1(x124)
	sw x100, 1(x10)
	lw x100, 2(x124)
	sw x100, 2(x10)
main_bneelse_b6537:
# B6537
	addi x52, x52, 1
	j main_loop_b6458 # loopback to while entry from B6537
main_bleelse_b6538:
# B6538
	addi x10, x114, -1
	addi x100, x115, 1
	bgt	x110, x100, main_bleelse_b6541
# B6539
	addi x100, x100, -5
main_bleelse_b6541:
# B6541
	mv x115, x100
	mv x114, x10
	j main_loop_b6450 # loopback to while entry from B6541
main_bleelse_b6542:
# B6542
	mv x114, x101
	mv x101, zero
	mv x113, x105
main_loop_b6543:
# B6543
	lw x10, 1(x102)
	bge	x101, x10, main_bgtelse_b6889
# B6545
	lw x10, 1(x102)
	addi x10, x10, -1
	addi x115, x101, 1
	bge	x101, x10, main_bgtelse_b6548
# B6547
	lw x10, 0(x106)
	lw x100, 1(x104)
	sub x100, x115, x100
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
	addi	x2, x2, 52
	jal	pretrace_pixels.3136
	addi	x2, x2, -52
main_bgtelse_b6548:
# B6548
	mv x118, x109
	mv x117, x107
	mv x10, zero
	mv x119, x111
	mv x120, x114
main_loop_b6549:
# B6549
	lw x100, 0(x102)
	bge	x10, x100, main_bgtelse_b6885
# B6551
	add x4, x118, x10
	lw x100, 0(x4)
	lw x100, 0(x100)
	lw x11, 0(x100)
	sw x11, 0(x123)
	lw x11, 1(x100)
	sw x11, 1(x123)
	lw x100, 2(x100)
	sw x100, 2(x123)
	lw x100, 1(x102)
	addi x11, x101, 1
	addi x121, x10, 1
	bge	x11, x100, main_bgtelse_b6561
# B6553
	bge	zero, x101, main_bgtelse_b6561
# B6555
	lw x100, 0(x102)
	bge	x121, x100, main_bgtelse_b6561
# B6557
	bgt	x10, zero, main_bleelse_b6562
main_bgtelse_b6561:
# B6561
	add x4, x118, x10
	lw x10, 0(x4)
	mv x122, x10
	mv x126, zero
main_loop_b6563:
# B6563
	bgt	x126, x112, main_bleelse_b6704
# B6564
	lw x10, 2(x122)
	add x4, x10, x126
	lw x10, 0(x4)
	bgt	zero, x10, main_bleelse_b6704
# B6566
	lw x10, 3(x122)
	add x4, x10, x126
	lw x10, 0(x4)
	beq	x10, zero, main_bneelse_b6660
# B6569
	lw x10, 5(x122)
	lw x100, 7(x122)
	lw x11, 1(x122)
	lw x41, 4(x122)
	add x4, x10, x126
	lw x10, 0(x4)
	lw x12, 0(x10)
	sw x12, 0(x124)
	lw x12, 1(x10)
	sw x12, 1(x124)
	lw x10, 2(x10)
	sw x10, 2(x124)
	lw x10, 6(x122)
	lw x42, 0(x10)
	add x4, x100, x126
	lw x43, 0(x4)
	add x4, x11, x126
	lw x52, 0(x4)
	lui x10, 260096
	beq	x42, zero, main_bneelse_b6587
# B6571
	lw x100, 0(x49)
	lw x11, 0(x52)
	sw x11, 0(x50)
	lw x11, 1(x52)
	sw x11, 1(x50)
	lw x11, 2(x52)
	sw x11, 2(x50)
	lw x11, 0(x53)
	addi x11, x11, -1
	mv x12, x52
	mv x13, x11
main_loop_b6572:
# B6572
	bgt	zero, x13, main_bleelse_b6586
# B6573
	add x4, x116, x13
	lw x11, 0(x4)
	lw x14, 10(x11)
	lw x15, 1(x11)
	lw x16, 0(x12)
	lw x17, 5(x11)
	lw x17, 0(x17)
	fsub x16, x16, x17
	sw x16, 0(x14)
	lw x16, 1(x12)
	lw x17, 5(x11)
	lw x17, 1(x17)
	fsub x16, x16, x17
	sw x16, 1(x14)
	lw x16, 2(x12)
	lw x17, 5(x11)
	lw x17, 2(x17)
	fsub x16, x16, x17
	sw x16, 2(x14)
	bne	x15, x105, main_beqelse_b6576
# B6575
	lw x11, 4(x11)
	lw x15, 0(x14)
	lw x16, 1(x14)
	lw x17, 2(x14)
	lw x18, 0(x11)
	fmul x15, x18, x15
	lw x18, 1(x11)
	fmul x16, x18, x16
	fadd x15, x15, x16
	lw x11, 2(x11)
	fmul x11, x11, x17
	fadd x11, x15, x11
	sw x11, 3(x14)
	j main_cont_b6585 # adhoc jump(2)
main_beqelse_b6576:
# B6576
	bge	x105, x15, main_bgtelse_b6585
# B6578
	lw x16, 0(x14)
	lw x17, 1(x14)
	lw x18, 2(x14)
	fmul x19, x16, x16
	lw x20, 4(x11)
	lw x20, 0(x20)
	fmul x19, x19, x20
	fmul x20, x17, x17
	lw x21, 4(x11)
	lw x21, 1(x21)
	fmul x20, x20, x21
	fadd x19, x19, x20
	fmul x20, x18, x18
	lw x21, 4(x11)
	lw x21, 2(x21)
	fmul x20, x20, x21
	fadd x19, x19, x20
	lw x20, 3(x11)
	bne	x20, zero, main_beqelse_b6580
# B6579
	mv x11, x19
	j main_cont_b6581 # adhoc jump(2)
main_beqelse_b6580:
# B6580
	fmul x20, x17, x18
	lw x21, 9(x11)
	lw x21, 0(x21)
	fmul x20, x20, x21
	fadd x19, x19, x20
	fmul x18, x18, x16
	lw x20, 9(x11)
	lw x20, 1(x20)
	fmul x18, x18, x20
	fadd x18, x19, x18
	fmul x16, x16, x17
	lw x11, 9(x11)
	lw x11, 2(x11)
	fmul x11, x16, x11
	fadd x11, x18, x11
main_cont_b6581:
# B6581
	bne	x15, x108, main_beqelse_b6584
# B6582
	fsub x11, x11, x10
main_beqelse_b6584:
# B6584
	sw x11, 3(x14)
main_bgtelse_b6585:
main_cont_b6585:
# B6585
	addi x13, x13, -1
	j main_loop_b6572 # loopback to while entry from B6585
main_bleelse_b6586:
# B6586
	mv x7, x52
	mv x6, x43
	mv x5, x100
	mv x8, x51
	addi	x2, x2, 52
	jal	iter_trace_diffuse_rays.3080
	addi	x2, x2, -52
main_bneelse_b6587:
# B6587
	beq	x42, x103, main_bneelse_b6605
# B6589
	lw x10, 1(x49)
	lw x100, 0(x52)
	sw x100, 0(x50)
	lw x100, 1(x52)
	sw x100, 1(x50)
	lw x100, 2(x52)
	sw x100, 2(x50)
	lw x100, 0(x53)
	addi x100, x100, -1
	mv x11, x52
	mv x12, x100
main_loop_b6590:
# B6590
	bgt	zero, x12, main_bleelse_b6604
# B6591
	add x4, x116, x12
	lw x100, 0(x4)
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
	bne	x14, x105, main_beqelse_b6594
# B6593
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
	j main_cont_b6603 # adhoc jump(2)
main_beqelse_b6594:
# B6594
	bge	x105, x14, main_bgtelse_b6603
# B6596
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
	bne	x19, zero, main_beqelse_b6598
# B6597
	mv x100, x18
	j main_cont_b6599 # adhoc jump(2)
main_beqelse_b6598:
# B6598
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
main_cont_b6599:
# B6599
	bne	x14, x108, main_beqelse_b6602
# B6600
	lui x15, 260096
	fsub x100, x100, x15
main_beqelse_b6602:
# B6602
	sw x100, 3(x13)
main_bgtelse_b6603:
main_cont_b6603:
# B6603
	addi x12, x12, -1
	j main_loop_b6590 # loopback to while entry from B6603
main_bleelse_b6604:
# B6604
	mv x7, x52
	mv x5, x10
	mv x6, x43
	mv x8, x51
	addi	x2, x2, 52
	jal	iter_trace_diffuse_rays.3080
	addi	x2, x2, -52
main_bneelse_b6605:
# B6605
	beq	x42, x105, main_bneelse_b6623
# B6607
	lw x10, 2(x49)
	lw x100, 0(x52)
	sw x100, 0(x50)
	lw x100, 1(x52)
	sw x100, 1(x50)
	lw x100, 2(x52)
	sw x100, 2(x50)
	lw x100, 0(x53)
	addi x100, x100, -1
	mv x11, x52
	mv x12, x100
main_loop_b6608:
# B6608
	bgt	zero, x12, main_bleelse_b6622
# B6609
	add x4, x116, x12
	lw x100, 0(x4)
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
	bne	x14, x105, main_beqelse_b6612
# B6611
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
	j main_cont_b6621 # adhoc jump(2)
main_beqelse_b6612:
# B6612
	bge	x105, x14, main_bgtelse_b6621
# B6614
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
	bne	x19, zero, main_beqelse_b6616
# B6615
	mv x100, x18
	j main_cont_b6617 # adhoc jump(2)
main_beqelse_b6616:
# B6616
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
main_cont_b6617:
# B6617
	bne	x14, x108, main_beqelse_b6620
# B6618
	lui x15, 260096
	fsub x100, x100, x15
main_beqelse_b6620:
# B6620
	sw x100, 3(x13)
main_bgtelse_b6621:
main_cont_b6621:
# B6621
	addi x12, x12, -1
	j main_loop_b6608 # loopback to while entry from B6621
main_bleelse_b6622:
# B6622
	mv x7, x52
	mv x5, x10
	mv x6, x43
	mv x8, x51
	addi	x2, x2, 52
	jal	iter_trace_diffuse_rays.3080
	addi	x2, x2, -52
main_bneelse_b6623:
# B6623
	beq	x42, x108, main_bneelse_b6641
# B6625
	lw x10, 3(x49)
	lw x100, 0(x52)
	sw x100, 0(x50)
	lw x100, 1(x52)
	sw x100, 1(x50)
	lw x100, 2(x52)
	sw x100, 2(x50)
	lw x100, 0(x53)
	addi x100, x100, -1
	mv x11, x52
	mv x12, x100
main_loop_b6626:
# B6626
	bgt	zero, x12, main_bleelse_b6640
# B6627
	add x4, x116, x12
	lw x100, 0(x4)
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
	bne	x14, x105, main_beqelse_b6630
# B6629
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
	j main_cont_b6639 # adhoc jump(2)
main_beqelse_b6630:
# B6630
	bge	x105, x14, main_bgtelse_b6639
# B6632
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
	bne	x19, zero, main_beqelse_b6634
# B6633
	mv x100, x18
	j main_cont_b6635 # adhoc jump(2)
main_beqelse_b6634:
# B6634
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
main_cont_b6635:
# B6635
	bne	x14, x108, main_beqelse_b6638
# B6636
	lui x15, 260096
	fsub x100, x100, x15
main_beqelse_b6638:
# B6638
	sw x100, 3(x13)
main_bgtelse_b6639:
main_cont_b6639:
# B6639
	addi x12, x12, -1
	j main_loop_b6626 # loopback to while entry from B6639
main_bleelse_b6640:
# B6640
	mv x7, x52
	mv x5, x10
	mv x6, x43
	mv x8, x51
	addi	x2, x2, 52
	jal	iter_trace_diffuse_rays.3080
	addi	x2, x2, -52
main_bneelse_b6641:
# B6641
	beq	x42, x112, main_bneelse_b6659
# B6643
	lw x10, 4(x49)
	lw x100, 0(x52)
	sw x100, 0(x50)
	lw x100, 1(x52)
	sw x100, 1(x50)
	lw x100, 2(x52)
	sw x100, 2(x50)
	lw x100, 0(x53)
	addi x100, x100, -1
	mv x11, x52
	mv x12, x100
main_loop_b6644:
# B6644
	bgt	zero, x12, main_bleelse_b6658
# B6645
	add x4, x116, x12
	lw x100, 0(x4)
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
	bne	x14, x105, main_beqelse_b6648
# B6647
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
	j main_cont_b6657 # adhoc jump(2)
main_beqelse_b6648:
# B6648
	bge	x105, x14, main_bgtelse_b6657
# B6650
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
	bne	x19, zero, main_beqelse_b6652
# B6651
	mv x100, x18
	j main_cont_b6653 # adhoc jump(2)
main_beqelse_b6652:
# B6652
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
main_cont_b6653:
# B6653
	bne	x14, x108, main_beqelse_b6656
# B6654
	lui x15, 260096
	fsub x100, x100, x15
main_beqelse_b6656:
# B6656
	sw x100, 3(x13)
main_bgtelse_b6657:
main_cont_b6657:
# B6657
	addi x12, x12, -1
	j main_loop_b6644 # loopback to while entry from B6657
main_bleelse_b6658:
# B6658
	mv x7, x52
	mv x5, x10
	mv x6, x43
	mv x8, x51
	addi	x2, x2, 52
	jal	iter_trace_diffuse_rays.3080
	addi	x2, x2, -52
main_bneelse_b6659:
# B6659
	add x4, x41, x126
	lw x10, 0(x4)
	lw x100, 0(x123)
	lw x11, 0(x10)
	lw x12, 0(x124)
	fmul x11, x11, x12
	fadd x100, x100, x11
	sw x100, 0(x123)
	lw x100, 1(x123)
	lw x11, 1(x10)
	lw x12, 1(x124)
	fmul x11, x11, x12
	fadd x100, x100, x11
	sw x100, 1(x123)
	lw x100, 2(x123)
	lw x10, 2(x10)
	lw x11, 2(x124)
	fmul x10, x10, x11
	fadd x10, x100, x10
	sw x10, 2(x123)
main_bneelse_b6660:
# B6660
	addi x126, x126, 1
	j main_loop_b6563 # loopback to while entry from B6660
main_bleelse_b6562:
# B6562
	mv x15, x119
	mv x14, x118
	mv x16, zero
	mv x13, x117
	mv x12, x101
	mv x100, x10
main_loop_b6661:
# B6661
	add x4, x14, x100
	lw x10, 0(x4)
	bgt	x16, x112, main_bleelse_b6704
# B6662
	lw x11, 2(x10)
	add x4, x11, x16
	lw x11, 0(x4)
	bgt	zero, x11, main_bleelse_b6704
# B6664
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
	bne	x17, x11, main_beqelse_b6675
# B6666
	add x4, x15, x100
	lw x17, 0(x4)
	lw x17, 2(x17)
	add x4, x17, x16
	lw x17, 0(x4)
	bne	x17, x11, main_beqelse_b6675
# B6668
	add x4, x14, x18
	lw x17, 0(x4)
	lw x17, 2(x17)
	add x4, x17, x16
	lw x17, 0(x4)
	bne	x17, x11, main_beqelse_b6675
# B6670
	add x4, x14, x19
	lw x17, 0(x4)
	lw x17, 2(x17)
	add x4, x17, x16
	lw x17, 0(x4)
	bne	x17, x11, main_beqelse_b6675
# B6676
	lw x10, 3(x10)
	add x4, x10, x16
	lw x10, 0(x4)
	beq	x10, zero, main_bneelse_b6703
# B6702
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
	sw x20, 0(x124)
	lw x20, 1(x10)
	sw x20, 1(x124)
	lw x10, 2(x10)
	sw x10, 2(x124)
	add x4, x11, x16
	lw x10, 0(x4)
	lw x11, 0(x124)
	lw x20, 0(x10)
	fadd x11, x11, x20
	sw x11, 0(x124)
	lw x11, 1(x124)
	lw x20, 1(x10)
	fadd x11, x11, x20
	sw x11, 1(x124)
	lw x11, 2(x124)
	lw x10, 2(x10)
	fadd x10, x11, x10
	sw x10, 2(x124)
	add x4, x17, x16
	lw x10, 0(x4)
	lw x11, 0(x124)
	lw x17, 0(x10)
	fadd x11, x11, x17
	sw x11, 0(x124)
	lw x11, 1(x124)
	lw x17, 1(x10)
	fadd x11, x11, x17
	sw x11, 1(x124)
	lw x11, 2(x124)
	lw x10, 2(x10)
	fadd x10, x11, x10
	sw x10, 2(x124)
	add x4, x18, x16
	lw x10, 0(x4)
	lw x11, 0(x124)
	lw x17, 0(x10)
	fadd x11, x11, x17
	sw x11, 0(x124)
	lw x11, 1(x124)
	lw x17, 1(x10)
	fadd x11, x11, x17
	sw x11, 1(x124)
	lw x11, 2(x124)
	lw x10, 2(x10)
	fadd x10, x11, x10
	sw x10, 2(x124)
	add x4, x19, x16
	lw x10, 0(x4)
	lw x11, 0(x124)
	lw x17, 0(x10)
	fadd x11, x11, x17
	sw x11, 0(x124)
	lw x11, 1(x124)
	lw x17, 1(x10)
	fadd x11, x11, x17
	sw x11, 1(x124)
	lw x11, 2(x124)
	lw x10, 2(x10)
	fadd x10, x11, x10
	sw x10, 2(x124)
	add x4, x14, x100
	lw x10, 0(x4)
	lw x10, 4(x10)
	add x4, x10, x16
	lw x10, 0(x4)
	lw x11, 0(x123)
	lw x17, 0(x10)
	lw x18, 0(x124)
	fmul x17, x17, x18
	fadd x11, x11, x17
	sw x11, 0(x123)
	lw x11, 1(x123)
	lw x17, 1(x10)
	lw x18, 1(x124)
	fmul x17, x17, x18
	fadd x11, x11, x17
	sw x11, 1(x123)
	lw x11, 2(x123)
	lw x10, 2(x10)
	lw x17, 2(x124)
	fmul x10, x10, x17
	fadd x10, x11, x10
	sw x10, 2(x123)
main_bneelse_b6703:
# B6703
	addi x16, x16, 1
	j main_loop_b6661 # loopback to while entry from B6703
main_beqelse_b6675:
# B6675
	add x4, x14, x100
	lw x10, 0(x4)
	mv x126, x16
	mv x122, x10
main_loop_b6677:
# B6677
	bgt	x126, x112, main_bleelse_b6700
# B6678
	lw x10, 2(x122)
	add x4, x10, x126
	lw x10, 0(x4)
	bgt	zero, x10, main_bleelse_b6700
# B6680
	lw x10, 3(x122)
	add x4, x10, x126
	lw x10, 0(x4)
	beq	x10, zero, main_bneelse_b6699
# B6683
	lw x10, 5(x122)
	lw x100, 7(x122)
	lw x11, 1(x122)
	lw x41, 4(x122)
	add x4, x10, x126
	lw x10, 0(x4)
	lw x12, 0(x10)
	sw x12, 0(x124)
	lw x12, 1(x10)
	sw x12, 1(x124)
	lw x10, 2(x10)
	sw x10, 2(x124)
	lw x10, 6(x122)
	lw x42, 0(x10)
	add x4, x100, x126
	lw x43, 0(x4)
	add x4, x11, x126
	lw x52, 0(x4)
	beq	x42, zero, main_bneelse_b6686
# B6685
	lw x5, 0(x49)
	mv x7, x52
	mv x6, x43
	addi	x2, x2, 52
	jal	trace_diffuse_rays.3085
	addi	x2, x2, -52
main_bneelse_b6686:
# B6686
	beq	x42, x103, main_bneelse_b6689
# B6688
	lw x5, 1(x49)
	mv x7, x52
	mv x6, x43
	addi	x2, x2, 52
	jal	trace_diffuse_rays.3085
	addi	x2, x2, -52
main_bneelse_b6689:
# B6689
	beq	x42, x105, main_bneelse_b6692
# B6691
	lw x5, 2(x49)
	mv x7, x52
	mv x6, x43
	addi	x2, x2, 52
	jal	trace_diffuse_rays.3085
	addi	x2, x2, -52
main_bneelse_b6692:
# B6692
	beq	x42, x108, main_bneelse_b6695
# B6694
	lw x5, 3(x49)
	mv x7, x52
	mv x6, x43
	addi	x2, x2, 52
	jal	trace_diffuse_rays.3085
	addi	x2, x2, -52
main_bneelse_b6695:
# B6695
	beq	x42, x112, main_bneelse_b6698
# B6697
	lw x5, 4(x49)
	mv x7, x52
	mv x6, x43
	addi	x2, x2, 52
	jal	trace_diffuse_rays.3085
	addi	x2, x2, -52
main_bneelse_b6698:
# B6698
	add x4, x41, x126
	lw x10, 0(x4)
	lw x100, 0(x123)
	lw x11, 0(x10)
	lw x12, 0(x124)
	fmul x11, x11, x12
	fadd x100, x100, x11
	sw x100, 0(x123)
	lw x100, 1(x123)
	lw x11, 1(x10)
	lw x12, 1(x124)
	fmul x11, x11, x12
	fadd x100, x100, x11
	sw x100, 1(x123)
	lw x100, 2(x123)
	lw x10, 2(x10)
	lw x11, 2(x124)
	fmul x10, x10, x11
	fadd x10, x100, x10
	sw x10, 2(x123)
main_bneelse_b6699:
# B6699
	addi x126, x126, 1
	j main_loop_b6677 # loopback to while entry from B6699
main_bleelse_b6700:
# B6700
main_bleelse_b6704:
main_cont_b6704:
# B6704
	bne	x120, x108, main_beqelse_b6706
main_cont_b6705:
# B6705
	lw x10, 0(x123)
	ftoi x10, x10
	bgt	x10, x48, main_bleelse_b6708
# B6707
	bgt	zero, x10, main_bleelse_b6710
# B6709
	mv x100, x10
	j main_cont_b6711 # adhoc jump(2)
main_bleelse_b6710:
# B6710
	mv x100, zero
	j main_cont_b6711 # adhoc jump(2)
main_bleelse_b6708:
# B6708
	mv x100, x48
main_cont_b6711:
# B6711
	bgt	zero, x100, main_bleelse_b6713
# B6712
	mv x10, x100
	mv x11, zero
main_loop_b6714:
# B6714
	mv x13, x44
	mv x12, x103
	mv x100, x10
main_loop_b6715:
# B6715
	bgt	x13, x100, main_bleelse_b6718
# B6716
	slli x12, x13, 3
	slli x14, x13, 1
	add x12, x12, x14
	mv x4, x13
	mv x13, x12
	mv x12, x4
	j main_loop_b6715 # loopback to while entry from B6716
main_bleelse_b6718:
# B6718
	mv x15, x103
	mv x16, zero
	mv x14, x12
main_loop_b6719:
# B6719
	bge	x15, x14, main_bgtelse_b6722
# B6721
	slli x100, x15, 3
	slli x13, x15, 1
	add x15, x100, x13
	addi x16, x16, 1
	j main_loop_b6719 # loopback to while entry from B6721
main_bgtelse_b6722:
# B6722
	sub x100, x11, x16
	addi x100, x100, -1
	mv x11, x100
main_loop_b6723:
# B6723
	bge	zero, x11, main_bgtelse_b6726
# B6725
	out8 x45
	addi x11, x11, -1
	j main_loop_b6723 # loopback to while entry from B6725
main_bgtelse_b6726:
# B6726
	bne	x16, zero, main_beqelse_b6728
# B6727
	addi x10, x10, 48
	out8 x10
	j main_cont_b6760 # adhoc jump(2)
main_beqelse_b6728:
# B6728
	mv x15, x12
	mv x13, x12
	mv x100, x10
	mv x14, x103
main_loop_b6729:
# B6729
	add x11, x15, x13
	bgt	x11, x100, main_bleelse_b6732
# B6730
	addi x14, x14, 1
	mv x15, x11
	j main_loop_b6729 # loopback to while entry from B6730
main_bleelse_b6732:
# B6732
	mv x15, x12
	mv x18, x14
	mv x17, zero
main_loop_b6733:
# B6733
	beq	x18, zero, main_bneelse_b6736
# B6735
	add x17, x17, x15
	addi x18, x18, -1
	j main_loop_b6733 # loopback to while entry from B6735
main_bneelse_b6736:
# B6736
	sub x10, x10, x17
	addi x100, x14, 48
	out8 x100
	mv x11, x16
	j main_loop_b6714 # loopback to while entry from B6736
main_bleelse_b6713:
# B6713
	out8 x46
	sub x10, zero, x100
	mv x100, x10
	mv x11, zero
main_loop_b6737:
# B6737
	mv x13, x44
	mv x12, x103
	mv x10, x100
main_loop_b6738:
# B6738
	bgt	x13, x10, main_bleelse_b6741
# B6739
	slli x12, x13, 3
	slli x14, x13, 1
	add x12, x12, x14
	mv x4, x13
	mv x13, x12
	mv x12, x4
	j main_loop_b6738 # loopback to while entry from B6739
main_bleelse_b6741:
# B6741
	mv x15, x103
	mv x16, zero
	mv x14, x12
main_loop_b6742:
# B6742
	bge	x15, x14, main_bgtelse_b6745
# B6744
	slli x10, x15, 3
	slli x13, x15, 1
	add x15, x10, x13
	addi x16, x16, 1
	j main_loop_b6742 # loopback to while entry from B6744
main_bgtelse_b6745:
# B6745
	sub x10, x11, x16
	addi x10, x10, -1
	mv x11, x10
main_loop_b6746:
# B6746
	bge	zero, x11, main_bgtelse_b6749
# B6748
	out8 x45
	addi x11, x11, -1
	j main_loop_b6746 # loopback to while entry from B6748
main_bgtelse_b6749:
# B6749
	bne	x16, zero, main_beqelse_b6751
# B6750
	addi x10, x100, 48
	out8 x10
main_cont_b6760:
# B6760
	out8 x47
	lw x10, 1(x123)
	ftoi x10, x10
	bgt	x10, x48, main_bleelse_b6762
# B6761
	bgt	zero, x10, main_bleelse_b6764
# B6763
	mv x100, x10
	j main_cont_b6765 # adhoc jump(2)
main_bleelse_b6764:
# B6764
	mv x100, zero
	j main_cont_b6765 # adhoc jump(2)
main_bleelse_b6762:
# B6762
	mv x100, x48
main_cont_b6765:
# B6765
	bgt	zero, x100, main_bleelse_b6767
# B6766
	mv x10, x100
	mv x11, zero
main_loop_b6768:
# B6768
	mv x13, x44
	mv x12, x103
	mv x100, x10
main_loop_b6769:
# B6769
	bgt	x13, x100, main_bleelse_b6772
# B6770
	slli x12, x13, 3
	slli x14, x13, 1
	add x12, x12, x14
	mv x4, x13
	mv x13, x12
	mv x12, x4
	j main_loop_b6769 # loopback to while entry from B6770
main_bleelse_b6772:
# B6772
	mv x15, x103
	mv x16, zero
	mv x14, x12
main_loop_b6773:
# B6773
	bge	x15, x14, main_bgtelse_b6776
# B6775
	slli x100, x15, 3
	slli x13, x15, 1
	add x15, x100, x13
	addi x16, x16, 1
	j main_loop_b6773 # loopback to while entry from B6775
main_bgtelse_b6776:
# B6776
	sub x100, x11, x16
	addi x100, x100, -1
	mv x11, x100
main_loop_b6777:
# B6777
	bge	zero, x11, main_bgtelse_b6780
# B6779
	out8 x45
	addi x11, x11, -1
	j main_loop_b6777 # loopback to while entry from B6779
main_bgtelse_b6780:
# B6780
	bne	x16, zero, main_beqelse_b6782
# B6781
	addi x10, x10, 48
	out8 x10
	j main_cont_b6814 # adhoc jump(2)
main_beqelse_b6782:
# B6782
	mv x15, x12
	mv x13, x12
	mv x100, x10
	mv x14, x103
main_loop_b6783:
# B6783
	add x11, x15, x13
	bgt	x11, x100, main_bleelse_b6786
# B6784
	addi x14, x14, 1
	mv x15, x11
	j main_loop_b6783 # loopback to while entry from B6784
main_bleelse_b6786:
# B6786
	mv x15, x12
	mv x18, x14
	mv x17, zero
main_loop_b6787:
# B6787
	beq	x18, zero, main_bneelse_b6790
# B6789
	add x17, x17, x15
	addi x18, x18, -1
	j main_loop_b6787 # loopback to while entry from B6789
main_bneelse_b6790:
# B6790
	sub x10, x10, x17
	addi x100, x14, 48
	out8 x100
	mv x11, x16
	j main_loop_b6768 # loopback to while entry from B6790
main_bleelse_b6767:
# B6767
	out8 x46
	sub x10, zero, x100
	mv x100, x10
	mv x11, zero
main_loop_b6791:
# B6791
	mv x13, x44
	mv x12, x103
	mv x10, x100
main_loop_b6792:
# B6792
	bgt	x13, x10, main_bleelse_b6795
# B6793
	slli x12, x13, 3
	slli x14, x13, 1
	add x12, x12, x14
	mv x4, x13
	mv x13, x12
	mv x12, x4
	j main_loop_b6792 # loopback to while entry from B6793
main_bleelse_b6795:
# B6795
	mv x15, x103
	mv x16, zero
	mv x14, x12
main_loop_b6796:
# B6796
	bge	x15, x14, main_bgtelse_b6799
# B6798
	slli x10, x15, 3
	slli x13, x15, 1
	add x15, x10, x13
	addi x16, x16, 1
	j main_loop_b6796 # loopback to while entry from B6798
main_bgtelse_b6799:
# B6799
	sub x10, x11, x16
	addi x10, x10, -1
	mv x11, x10
main_loop_b6800:
# B6800
	bge	zero, x11, main_bgtelse_b6803
# B6802
	out8 x45
	addi x11, x11, -1
	j main_loop_b6800 # loopback to while entry from B6802
main_bgtelse_b6803:
# B6803
	bne	x16, zero, main_beqelse_b6805
# B6804
	addi x10, x100, 48
	out8 x10
main_cont_b6814:
# B6814
	out8 x47
	lw x10, 2(x123)
	ftoi x10, x10
	bgt	x10, x48, main_bleelse_b6816
# B6815
	bgt	zero, x10, main_bleelse_b6818
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
	bgt	zero, x100, main_bleelse_b6821
# B6820
	mv x10, x100
	mv x11, zero
main_loop_b6822:
# B6822
	mv x13, x44
	mv x12, x103
	mv x100, x10
main_loop_b6823:
# B6823
	bgt	x13, x100, main_bleelse_b6826
# B6824
	slli x12, x13, 3
	slli x14, x13, 1
	add x12, x12, x14
	mv x4, x13
	mv x13, x12
	mv x12, x4
	j main_loop_b6823 # loopback to while entry from B6824
main_bleelse_b6826:
# B6826
	mv x15, x103
	mv x16, zero
	mv x14, x12
main_loop_b6827:
# B6827
	bge	x15, x14, main_bgtelse_b6830
# B6829
	slli x100, x15, 3
	slli x13, x15, 1
	add x15, x100, x13
	addi x16, x16, 1
	j main_loop_b6827 # loopback to while entry from B6829
main_bgtelse_b6830:
# B6830
	sub x100, x11, x16
	addi x100, x100, -1
	mv x11, x100
main_loop_b6831:
# B6831
	bge	zero, x11, main_bgtelse_b6834
# B6833
	out8 x45
	addi x11, x11, -1
	j main_loop_b6831 # loopback to while entry from B6833
main_bgtelse_b6834:
# B6834
	bne	x16, zero, main_beqelse_b6836
# B6835
	addi x10, x10, 48
	out8 x10
	j main_cont_b6868 # adhoc jump(2)
main_beqelse_b6836:
# B6836
	mv x15, x12
	mv x13, x12
	mv x100, x10
	mv x14, x103
main_loop_b6837:
# B6837
	add x11, x15, x13
	bgt	x11, x100, main_bleelse_b6840
# B6838
	addi x14, x14, 1
	mv x15, x11
	j main_loop_b6837 # loopback to while entry from B6838
main_bleelse_b6840:
# B6840
	mv x15, x12
	mv x18, x14
	mv x17, zero
main_loop_b6841:
# B6841
	beq	x18, zero, main_bneelse_b6844
# B6843
	add x17, x17, x15
	addi x18, x18, -1
	j main_loop_b6841 # loopback to while entry from B6843
main_bneelse_b6844:
# B6844
	sub x10, x10, x17
	addi x100, x14, 48
	out8 x100
	mv x11, x16
	j main_loop_b6822 # loopback to while entry from B6844
main_bleelse_b6821:
# B6821
	out8 x46
	sub x10, zero, x100
	mv x100, x10
	mv x11, zero
main_loop_b6845:
# B6845
	mv x13, x44
	mv x12, x103
	mv x10, x100
main_loop_b6846:
# B6846
	bgt	x13, x10, main_bleelse_b6849
# B6847
	slli x12, x13, 3
	slli x14, x13, 1
	add x12, x12, x14
	mv x4, x13
	mv x13, x12
	mv x12, x4
	j main_loop_b6846 # loopback to while entry from B6847
main_bleelse_b6849:
# B6849
	mv x15, x103
	mv x16, zero
	mv x14, x12
main_loop_b6850:
# B6850
	bge	x15, x14, main_bgtelse_b6853
# B6852
	slli x10, x15, 3
	slli x13, x15, 1
	add x15, x10, x13
	addi x16, x16, 1
	j main_loop_b6850 # loopback to while entry from B6852
main_bgtelse_b6853:
# B6853
	sub x10, x11, x16
	addi x10, x10, -1
	mv x11, x10
main_loop_b6854:
# B6854
	bge	zero, x11, main_bgtelse_b6857
# B6856
	out8 x45
	addi x11, x11, -1
	j main_loop_b6854 # loopback to while entry from B6856
main_bgtelse_b6857:
# B6857
	bne	x16, zero, main_beqelse_b6859
# B6858
	addi x10, x100, 48
	out8 x10
main_cont_b6868:
# B6868
	out8 x44
	j main_cont_b6884 # adhoc jump(2)
main_beqelse_b6859:
# B6859
	mv x15, x12
	mv x13, x12
	mv x10, x100
	mv x14, x103
main_loop_b6860:
# B6860
	add x11, x15, x13
	bgt	x11, x10, main_bleelse_b6863
# B6861
	addi x14, x14, 1
	mv x15, x11
	j main_loop_b6860 # loopback to while entry from B6861
main_bleelse_b6863:
# B6863
	mv x15, x12
	mv x18, x14
	mv x17, zero
main_loop_b6864:
# B6864
	beq	x18, zero, main_bneelse_b6867
# B6866
	add x17, x17, x15
	addi x18, x18, -1
	j main_loop_b6864 # loopback to while entry from B6866
main_bneelse_b6867:
# B6867
	sub x10, x100, x17
	addi x100, x14, 48
	out8 x100
	mv x11, x16
	mv x100, x10
	j main_loop_b6845 # loopback to while entry from B6867
main_beqelse_b6805:
# B6805
	mv x15, x12
	mv x13, x12
	mv x10, x100
	mv x14, x103
main_loop_b6806:
# B6806
	add x11, x15, x13
	bgt	x11, x10, main_bleelse_b6809
# B6807
	addi x14, x14, 1
	mv x15, x11
	j main_loop_b6806 # loopback to while entry from B6807
main_bleelse_b6809:
# B6809
	mv x15, x12
	mv x18, x14
	mv x17, zero
main_loop_b6810:
# B6810
	beq	x18, zero, main_bneelse_b6813
# B6812
	add x17, x17, x15
	addi x18, x18, -1
	j main_loop_b6810 # loopback to while entry from B6812
main_bneelse_b6813:
# B6813
	sub x10, x100, x17
	addi x100, x14, 48
	out8 x100
	mv x11, x16
	mv x100, x10
	j main_loop_b6791 # loopback to while entry from B6813
main_beqelse_b6751:
# B6751
	mv x15, x12
	mv x13, x12
	mv x10, x100
	mv x14, x103
main_loop_b6752:
# B6752
	add x11, x15, x13
	bgt	x11, x10, main_bleelse_b6755
# B6753
	addi x14, x14, 1
	mv x15, x11
	j main_loop_b6752 # loopback to while entry from B6753
main_bleelse_b6755:
# B6755
	mv x15, x12
	mv x18, x14
	mv x17, zero
main_loop_b6756:
# B6756
	beq	x18, zero, main_bneelse_b6759
# B6758
	add x17, x17, x15
	addi x18, x18, -1
	j main_loop_b6756 # loopback to while entry from B6758
main_bneelse_b6759:
# B6759
	sub x10, x100, x17
	addi x100, x14, 48
	out8 x100
	mv x11, x16
	mv x100, x10
	j main_loop_b6737 # loopback to while entry from B6759
main_beqelse_b6706:
# B6706
	lw x10, 0(x123)
	ftoi x10, x10
	bgt	x10, x48, main_bleelse_b6870
# B6869
	bgt	zero, x10, main_bleelse_b6872
# B6871
	mv x100, x10
	j main_cont_b6873 # adhoc jump(2)
main_bleelse_b6872:
# B6872
	mv x100, zero
	j main_cont_b6873 # adhoc jump(2)
main_bleelse_b6870:
# B6870
	mv x100, x48
main_cont_b6873:
# B6873
	out8 x100
	lw x10, 1(x123)
	ftoi x10, x10
	bgt	x10, x48, main_bleelse_b6875
# B6874
	bgt	zero, x10, main_bleelse_b6877
# B6876
	mv x100, x10
	j main_cont_b6878 # adhoc jump(2)
main_bleelse_b6877:
# B6877
	mv x100, zero
	j main_cont_b6878 # adhoc jump(2)
main_bleelse_b6875:
# B6875
	mv x100, x48
main_cont_b6878:
# B6878
	out8 x100
	lw x10, 2(x123)
	ftoi x10, x10
	bgt	x10, x48, main_bleelse_b6880
# B6879
	bgt	zero, x10, main_bleelse_b6882
# B6881
	mv x100, x10
	j main_cont_b6883 # adhoc jump(2)
main_bleelse_b6882:
# B6882
	mv x100, zero
	j main_cont_b6883 # adhoc jump(2)
main_bleelse_b6880:
# B6880
	mv x100, x48
main_cont_b6883:
# B6883
	out8 x100
main_cont_b6884:
# B6884
	mv x10, x121
	j main_loop_b6549 # loopback to while entry from B6884
main_bgtelse_b6885:
# B6885
	addi x10, x113, 2
	bgt	x110, x10, main_bleelse_b6888
# B6886
	addi x10, x10, -5
main_bleelse_b6888:
# B6888
	mv x101, x115
	mv x113, x10
	mv x4, x109
	mv x109, x111
	mv x111, x107
	mv x107, x4
	j main_loop_b6543 # loopback to while entry from B6888
main_bgtelse_b6889:
# B6889
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
	j endp
main_beqelse_b5937:
# B5937
	mv x15, x12
	mv x13, x12
	mv x100, x10
	mv x14, x103
main_loop_b5938:
# B5938
	add x11, x15, x13
	bgt	x11, x100, main_bleelse_b5941
# B5939
	addi x14, x14, 1
	mv x15, x11
	j main_loop_b5938 # loopback to while entry from B5939
main_bleelse_b5941:
# B5941
	mv x15, x12
	mv x18, x14
	mv x17, zero
main_loop_b5942:
# B5942
	beq	x18, zero, main_bneelse_b5945
# B5944
	add x17, x17, x15
	addi x18, x18, -1
	j main_loop_b5942 # loopback to while entry from B5944
main_bneelse_b5945:
# B5945
	sub x10, x10, x17
	addi x100, x14, 48
	out8 x100
	mv x100, x16
	j main_loop_b5923 # loopback to while entry from B5945
main_beqelse_b5913:
# B5913
	mv x15, x12
	mv x13, x12
	mv x10, x100
	mv x14, x103
main_loop_b5914:
# B5914
	add x11, x15, x13
	bgt	x11, x10, main_bleelse_b5917
# B5915
	addi x14, x14, 1
	mv x15, x11
	j main_loop_b5914 # loopback to while entry from B5915
main_bleelse_b5917:
# B5917
	mv x15, x12
	mv x18, x14
	mv x17, zero
main_loop_b5918:
# B5918
	beq	x18, zero, main_bneelse_b5921
# B5920
	add x17, x17, x15
	addi x18, x18, -1
	j main_loop_b5918 # loopback to while entry from B5920
main_bneelse_b5921:
# B5921
	sub x10, x100, x17
	addi x100, x14, 48
	out8 x100
	mv x11, x16
	mv x100, x10
	j main_loop_b5899 # loopback to while entry from B5921
main_beqelse_b5864:
# B5864
	mv x15, x12
	mv x13, x12
	mv x10, x100
	mv x14, x103
main_loop_b5865:
# B5865
	add x11, x15, x13
	bgt	x11, x10, main_bleelse_b5868
# B5866
	addi x14, x14, 1
	mv x15, x11
	j main_loop_b5865 # loopback to while entry from B5866
main_bleelse_b5868:
# B5868
	mv x15, x12
	mv x18, x14
	mv x17, zero
main_loop_b5869:
# B5869
	beq	x18, zero, main_bneelse_b5872
# B5871
	add x17, x17, x15
	addi x18, x18, -1
	j main_loop_b5869 # loopback to while entry from B5871
main_bneelse_b5872:
# B5872
	sub x10, x100, x17
	addi x100, x14, 48
	out8 x100
	mv x11, x16
	mv x100, x10
	j main_loop_b5850 # loopback to while entry from B5872
#	main program ends
endp:
	j endp
