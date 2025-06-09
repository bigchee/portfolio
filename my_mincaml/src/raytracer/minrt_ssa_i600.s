	.data
min_caml_Ta80089:	space 1
min_caml_Ta80094:	space 1
min_caml_Tt80076:	space 11
min_caml_Tt80135:	space 2
min_caml_Tt80148:	space 4
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
read_object.3074:
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
body_read_object.3074:
# B1
	mv x101, x5
	j	read_object_loop_b2
read_object_beqelse_b211:	#moved
# B211
	addi x10, x101, 1
	mv x101, x10
read_object_loop_b2:
# B2
	li x10, 60
	bgt	x10, x101, read_object_bleelse_b4
# B3
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
read_object_bleelse_b4:
# B4
	in32 x102
	li x10, -1
	bne	x102, x10, read_object_beqelse_b6
# B5
	mv x10, zero
	j read_object_cont_b209 # adhoc jump(2)
read_object_beqelse_b6:
# B6
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
	beq	x105, zero, read_object_bneelse_b7
# B8
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
read_object_bneelse_b7:
# B7
read_object_cont_b9:
# B9
	bne	x103, x108, read_object_beqelse_b11
# B10
	li x10, 1
	mv x114, x10
	j read_object_cont_b12 # adhoc jump(2)
read_object_beqelse_b11:
# B11
	mv x114, x110
read_object_cont_b12:
# B12
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
	bne	x103, x106, read_object_beqelse_b14
# B13
	lw x100, 0(x107)
	feq x11, x100, zero
	bne	x11, zero, read_object_beqelse_b16
# B15
	feq x11, x100, zero
	bne	x11, zero, read_object_beqelse_b18
# B17
	fle x11, x100, zero
	beq	x11, zero, read_object_bneelse_b20
# B19
	lui x11, 784384
	j read_object_cont_b21 # adhoc jump(2)
read_object_bneelse_b20:
# B20
	lui x11, 260096
	j read_object_cont_b21 # adhoc jump(2)
read_object_beqelse_b18:
# B18
	mv x11, zero
read_object_cont_b21:
# B21
	fmul x100, x100, x100
	fdiv x100, x11, x100
	j read_object_cont_b22 # adhoc jump(2)
read_object_beqelse_b16:
# B16
	mv x100, zero
read_object_cont_b22:
# B22
	sw x100, 0(x107)
	lw x100, 1(x107)
	feq x11, x100, zero
	bne	x11, zero, read_object_beqelse_b24
# B23
	feq x11, x100, zero
	bne	x11, zero, read_object_beqelse_b26
# B25
	fle x11, x100, zero
	beq	x11, zero, read_object_bneelse_b28
# B27
	lui x11, 784384
	j read_object_cont_b29 # adhoc jump(2)
read_object_bneelse_b28:
# B28
	lui x11, 260096
	j read_object_cont_b29 # adhoc jump(2)
read_object_beqelse_b26:
# B26
	mv x11, zero
read_object_cont_b29:
# B29
	fmul x100, x100, x100
	fdiv x100, x11, x100
	j read_object_cont_b30 # adhoc jump(2)
read_object_beqelse_b24:
# B24
	mv x100, zero
read_object_cont_b30:
# B30
	sw x100, 1(x107)
	lw x100, 2(x107)
	feq x11, x100, zero
	bne	x11, zero, read_object_beqelse_b32
# B31
	feq x11, x100, zero
	bne	x11, zero, read_object_beqelse_b34
# B33
	fle x11, x100, zero
	beq	x11, zero, read_object_bneelse_b36
# B35
	lui x11, 784384
	j read_object_cont_b37 # adhoc jump(2)
read_object_bneelse_b36:
# B36
	lui x11, 260096
	j read_object_cont_b37 # adhoc jump(2)
read_object_beqelse_b34:
# B34
	mv x11, zero
read_object_cont_b37:
# B37
	fmul x100, x100, x100
	fdiv x100, x11, x100
	j read_object_cont_b38 # adhoc jump(2)
read_object_beqelse_b32:
# B32
	mv x100, zero
read_object_cont_b38:
# B38
	sw x100, 2(x107)
	j read_object_cont_b46 # adhoc jump(2)
read_object_beqelse_b14:
# B14
	bne	x103, x108, read_object_beqelse_b40
# B39
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
	bne	x12, zero, read_object_beqelse_b42
# B41
	bne	x100, zero, read_object_beqelse_b44
# B43
	fdiv x100, x10, x11
	j read_object_cont_b45 # adhoc jump(2)
read_object_beqelse_b44:
# B44
	lui x100, 784384
	fdiv x100, x100, x11
	j read_object_cont_b45 # adhoc jump(2)
read_object_beqelse_b42:
# B42
	lui x100, 260096
read_object_cont_b45:
# B45
	lw x11, 0(x107)
	fmul x11, x11, x100
	sw x11, 0(x107)
	lw x11, 1(x107)
	fmul x11, x11, x100
	sw x11, 1(x107)
	lw x11, 2(x107)
	fmul x100, x11, x100
	sw x100, 2(x107)
read_object_beqelse_b40:
# B40
read_object_cont_b46:
# B46
	beq	x105, zero, read_object_bneelse_b47
# B48
	lw x100, 0(x113)
	fabs x100, x100
	lui x11, 265361
	addi x11, x11, -37
	lui x12, 262144
	mv x14, x11
	mv x13, x100
	j	read_object_loop_b49
read_object_bneelse_b50:	#moved
# B50
	fmul x14, x14, x12
read_object_loop_b49:
# B49
	fle x15, x13, x14
	beq	x15, zero, read_object_bneelse_b50
# B51
# B52
	mv x16, x100
	mv x17, x14
	j	read_object_loop_b53
read_object_beqelse_b57:	#moved
# B57
	fdiv x100, x17, x12
	mv x17, x100
read_object_loop_b53:
# B53
	fle x100, x11, x16
	beq	x100, zero, read_object_bneelse_b54
# B55
	fle x100, x16, x17
	bne	x100, zero, read_object_beqelse_b57
# B56
	fsub x100, x16, x17
	fdiv x13, x17, x12
	mv x16, x100
	mv x17, x13
	j	read_object_loop_b53
read_object_bneelse_b54:
# B54
# B58
	lui x100, 263313
	addi x100, x100, -37
	fle x13, x100, x16
	bne	x13, zero, read_object_beqelse_b60
# B59
	mv x14, x16
	j read_object_cont_b61 # adhoc jump(2)
read_object_beqelse_b60:
# B60
	fsub x14, x16, x100
read_object_cont_b61:
# B61
	bne	x13, zero, read_object_beqelse_b63
# B62
	li x13, 1
	j read_object_cont_b64 # adhoc jump(2)
read_object_beqelse_b63:
# B63
	mv x13, zero
read_object_cont_b64:
# B64
	lui x15, 261265
	addi x15, x15, -37
	fle x16, x15, x14
	bne	x16, zero, read_object_beqelse_b66
# B65
	j read_object_cont_b67 # adhoc jump(2)
read_object_beqelse_b66:
# B66
	fsub x14, x100, x14
read_object_cont_b67:
# B67
	bne	x16, zero, read_object_beqelse_b69
# B68
	j read_object_cont_b70 # adhoc jump(2)
read_object_beqelse_b69:
# B69
	xori x13, x13, 1
read_object_cont_b70:
# B70
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
	bne	x17, zero, read_object_beqelse_b72
# B71
	fmul x14, x14, x14
	fmul x17, x14, x20
	fadd x17, x19, x17
	fmul x17, x14, x17
	fadd x17, x18, x17
	fmul x14, x14, x17
	fadd x14, x10, x14
	j read_object_cont_b73 # adhoc jump(2)
read_object_beqelse_b72:
# B72
	fsub x14, x15, x14
	fmul x17, x14, x14
	fmul x24, x17, x23
	fadd x24, x22, x24
	fmul x24, x17, x24
	fadd x24, x21, x24
	fmul x17, x17, x24
	fadd x17, x10, x17
	fmul x14, x14, x17
read_object_cont_b73:
# B73
	fle x17, x14, zero
	beq	x13, x17, read_object_bneelse_b75
# B74
	mv x13, x14
	j read_object_cont_b76 # adhoc jump(2)
read_object_bneelse_b75:
# B75
	fsub x13, zero, x14
read_object_cont_b76:
# B76
	lw x14, 0(x113)
	fle x17, x14, zero
	xori x17, x17, 1
	fabs x14, x14
	mv x25, x11
	mv x24, x14
	j	read_object_loop_b77
read_object_bneelse_b78:	#moved
# B78
	fmul x25, x25, x12
read_object_loop_b77:
# B77
	fle x26, x24, x25
	beq	x26, zero, read_object_bneelse_b78
# B79
# B80
	mv x27, x14
	mv x28, x25
	j	read_object_loop_b81
read_object_beqelse_b85:	#moved
# B85
	fdiv x14, x28, x12
	mv x28, x14
read_object_loop_b81:
# B81
	fle x14, x11, x27
	beq	x14, zero, read_object_bneelse_b82
# B83
	fle x14, x27, x28
	bne	x14, zero, read_object_beqelse_b85
# B84
	fsub x14, x27, x28
	fdiv x24, x28, x12
	mv x27, x14
	mv x28, x24
	j	read_object_loop_b81
read_object_bneelse_b82:
# B82
# B86
	fle x14, x100, x27
	bne	x14, zero, read_object_beqelse_b88
# B87
	mv x24, x27
	j read_object_cont_b89 # adhoc jump(2)
read_object_beqelse_b88:
# B88
	fsub x24, x27, x100
read_object_cont_b89:
# B89
	bne	x14, zero, read_object_beqelse_b91
# B90
	mv x14, x17
	j read_object_cont_b92 # adhoc jump(2)
read_object_beqelse_b91:
# B91
	xori x14, x17, 1
read_object_cont_b92:
# B92
	fle x17, x15, x24
	bne	x17, zero, read_object_beqelse_b94
# B93
	mv x17, x24
	j read_object_cont_b95 # adhoc jump(2)
read_object_beqelse_b94:
# B94
	fsub x17, x100, x24
read_object_cont_b95:
# B95
	fle x24, x16, x17
	bne	x24, zero, read_object_beqelse_b97
# B96
	fmul x24, x17, x17
	fmul x25, x24, x23
	fadd x25, x22, x25
	fmul x25, x24, x25
	fadd x25, x21, x25
	fmul x24, x24, x25
	fadd x24, x10, x24
	fmul x17, x17, x24
	j read_object_cont_b98 # adhoc jump(2)
read_object_beqelse_b97:
# B97
	fsub x17, x15, x17
	fmul x17, x17, x17
	fmul x24, x17, x20
	fadd x24, x19, x24
	fmul x24, x17, x24
	fadd x24, x18, x24
	fmul x17, x17, x24
	fadd x17, x10, x17
read_object_cont_b98:
# B98
	fle x24, x17, zero
	beq	x14, x24, read_object_bneelse_b100
# B99
	mv x14, x17
	j read_object_cont_b101 # adhoc jump(2)
read_object_bneelse_b100:
# B100
	fsub x14, zero, x17
read_object_cont_b101:
# B101
	lw x17, 1(x113)
	fabs x17, x17
	mv x25, x11
	mv x24, x17
	j	read_object_loop_b102
read_object_bneelse_b103:	#moved
# B103
	fmul x25, x25, x12
read_object_loop_b102:
# B102
	fle x26, x24, x25
	beq	x26, zero, read_object_bneelse_b103
# B104
# B105
	mv x27, x17
	mv x28, x25
	j	read_object_loop_b106
read_object_beqelse_b110:	#moved
# B110
	fdiv x17, x28, x12
	mv x28, x17
read_object_loop_b106:
# B106
	fle x17, x11, x27
	beq	x17, zero, read_object_bneelse_b107
# B108
	fle x17, x27, x28
	bne	x17, zero, read_object_beqelse_b110
# B109
	fsub x17, x27, x28
	fdiv x24, x28, x12
	mv x27, x17
	mv x28, x24
	j	read_object_loop_b106
read_object_bneelse_b107:
# B107
# B111
	fle x17, x100, x27
	bne	x17, zero, read_object_beqelse_b113
# B112
	mv x24, x27
	j read_object_cont_b114 # adhoc jump(2)
read_object_beqelse_b113:
# B113
	fsub x24, x27, x100
read_object_cont_b114:
# B114
	bne	x17, zero, read_object_beqelse_b116
# B115
	li x17, 1
	j read_object_cont_b117 # adhoc jump(2)
read_object_beqelse_b116:
# B116
	mv x17, zero
read_object_cont_b117:
# B117
	fle x25, x15, x24
	bne	x25, zero, read_object_beqelse_b119
# B118
	j read_object_cont_b120 # adhoc jump(2)
read_object_beqelse_b119:
# B119
	fsub x24, x100, x24
read_object_cont_b120:
# B120
	bne	x25, zero, read_object_beqelse_b122
# B121
	j read_object_cont_b123 # adhoc jump(2)
read_object_beqelse_b122:
# B122
	xori x17, x17, 1
read_object_cont_b123:
# B123
	fle x25, x16, x24
	bne	x25, zero, read_object_beqelse_b125
# B124
	fmul x24, x24, x24
	fmul x25, x24, x20
	fadd x25, x19, x25
	fmul x25, x24, x25
	fadd x25, x18, x25
	fmul x24, x24, x25
	fadd x24, x10, x24
	j read_object_cont_b126 # adhoc jump(2)
read_object_beqelse_b125:
# B125
	fsub x24, x15, x24
	fmul x25, x24, x24
	fmul x26, x25, x23
	fadd x26, x22, x26
	fmul x26, x25, x26
	fadd x26, x21, x26
	fmul x25, x25, x26
	fadd x25, x10, x25
	fmul x24, x24, x25
read_object_cont_b126:
# B126
	fle x25, x24, zero
	beq	x17, x25, read_object_bneelse_b128
# B127
	mv x17, x24
	j read_object_cont_b129 # adhoc jump(2)
read_object_bneelse_b128:
# B128
	fsub x17, zero, x24
read_object_cont_b129:
# B129
	lw x24, 1(x113)
	fle x25, x24, zero
	xori x25, x25, 1
	fabs x24, x24
	mv x27, x11
	mv x26, x24
	j	read_object_loop_b130
read_object_bneelse_b131:	#moved
# B131
	fmul x27, x27, x12
read_object_loop_b130:
# B130
	fle x28, x26, x27
	beq	x28, zero, read_object_bneelse_b131
# B132
# B133
	mv x30, x27
	mv x29, x24
	j	read_object_loop_b134
read_object_beqelse_b138:	#moved
# B138
	fdiv x24, x30, x12
	mv x30, x24
read_object_loop_b134:
# B134
	fle x24, x11, x29
	beq	x24, zero, read_object_bneelse_b135
# B136
	fle x24, x29, x30
	bne	x24, zero, read_object_beqelse_b138
# B137
	fsub x24, x29, x30
	fdiv x26, x30, x12
	mv x30, x26
	mv x29, x24
	j	read_object_loop_b134
read_object_bneelse_b135:
# B135
# B139
	fle x24, x100, x29
	bne	x24, zero, read_object_beqelse_b141
# B140
	mv x26, x29
	j read_object_cont_b142 # adhoc jump(2)
read_object_beqelse_b141:
# B141
	fsub x26, x29, x100
read_object_cont_b142:
# B142
	bne	x24, zero, read_object_beqelse_b144
# B143
	mv x24, x25
	j read_object_cont_b145 # adhoc jump(2)
read_object_beqelse_b144:
# B144
	xori x24, x25, 1
read_object_cont_b145:
# B145
	fle x25, x15, x26
	bne	x25, zero, read_object_beqelse_b147
# B146
	mv x25, x26
	j read_object_cont_b148 # adhoc jump(2)
read_object_beqelse_b147:
# B147
	fsub x25, x100, x26
read_object_cont_b148:
# B148
	fle x26, x16, x25
	bne	x26, zero, read_object_beqelse_b150
# B149
	fmul x26, x25, x25
	fmul x27, x26, x23
	fadd x27, x22, x27
	fmul x27, x26, x27
	fadd x27, x21, x27
	fmul x26, x26, x27
	fadd x26, x10, x26
	fmul x25, x25, x26
	j read_object_cont_b151 # adhoc jump(2)
read_object_beqelse_b150:
# B150
	fsub x25, x15, x25
	fmul x25, x25, x25
	fmul x26, x25, x20
	fadd x26, x19, x26
	fmul x26, x25, x26
	fadd x26, x18, x26
	fmul x25, x25, x26
	fadd x25, x10, x25
read_object_cont_b151:
# B151
	fle x26, x25, zero
	beq	x24, x26, read_object_bneelse_b153
# B152
	mv x24, x25
	j read_object_cont_b154 # adhoc jump(2)
read_object_bneelse_b153:
# B153
	fsub x24, zero, x25
read_object_cont_b154:
# B154
	lw x25, 2(x113)
	fabs x25, x25
	mv x27, x11
	mv x26, x25
	j	read_object_loop_b155
read_object_bneelse_b156:	#moved
# B156
	fmul x27, x27, x12
read_object_loop_b155:
# B155
	fle x28, x26, x27
	beq	x28, zero, read_object_bneelse_b156
# B157
# B158
	mv x30, x27
	mv x29, x25
	j	read_object_loop_b159
read_object_beqelse_b163:	#moved
# B163
	fdiv x25, x30, x12
	mv x30, x25
read_object_loop_b159:
# B159
	fle x25, x11, x29
	beq	x25, zero, read_object_bneelse_b160
# B161
	fle x25, x29, x30
	bne	x25, zero, read_object_beqelse_b163
# B162
	fsub x25, x29, x30
	fdiv x26, x30, x12
	mv x30, x26
	mv x29, x25
	j	read_object_loop_b159
read_object_bneelse_b160:
# B160
# B164
	fle x25, x100, x29
	bne	x25, zero, read_object_beqelse_b166
# B165
	mv x26, x29
	j read_object_cont_b167 # adhoc jump(2)
read_object_beqelse_b166:
# B166
	fsub x26, x29, x100
read_object_cont_b167:
# B167
	bne	x25, zero, read_object_beqelse_b169
# B168
	li x25, 1
	j read_object_cont_b170 # adhoc jump(2)
read_object_beqelse_b169:
# B169
	mv x25, zero
read_object_cont_b170:
# B170
	fle x27, x15, x26
	bne	x27, zero, read_object_beqelse_b172
# B171
	j read_object_cont_b173 # adhoc jump(2)
read_object_beqelse_b172:
# B172
	fsub x26, x100, x26
read_object_cont_b173:
# B173
	bne	x27, zero, read_object_beqelse_b175
# B174
	j read_object_cont_b176 # adhoc jump(2)
read_object_beqelse_b175:
# B175
	xori x25, x25, 1
read_object_cont_b176:
# B176
	fle x27, x16, x26
	bne	x27, zero, read_object_beqelse_b178
# B177
	fmul x26, x26, x26
	fmul x27, x26, x20
	fadd x27, x19, x27
	fmul x27, x26, x27
	fadd x27, x18, x27
	fmul x26, x26, x27
	fadd x26, x10, x26
	j read_object_cont_b179 # adhoc jump(2)
read_object_beqelse_b178:
# B178
	fsub x26, x15, x26
	fmul x27, x26, x26
	fmul x28, x27, x23
	fadd x28, x22, x28
	fmul x28, x27, x28
	fadd x28, x21, x28
	fmul x27, x27, x28
	fadd x27, x10, x27
	fmul x26, x26, x27
read_object_cont_b179:
# B179
	fle x27, x26, zero
	beq	x25, x27, read_object_bneelse_b181
# B180
	mv x25, x26
	j read_object_cont_b182 # adhoc jump(2)
read_object_bneelse_b181:
# B181
	fsub x25, zero, x26
read_object_cont_b182:
# B182
	lw x26, 2(x113)
	fle x27, x26, zero
	xori x27, x27, 1
	fabs x26, x26
	mv x28, x26
	mv x29, x11
	j	read_object_loop_b183
read_object_bneelse_b184:	#moved
# B184
	fmul x29, x29, x12
read_object_loop_b183:
# B183
	fle x30, x28, x29
	beq	x30, zero, read_object_bneelse_b184
# B185
# B186
	mv x31, x26
	mv x32, x29
	j	read_object_loop_b187
read_object_beqelse_b191:	#moved
# B191
	fdiv x26, x32, x12
	mv x32, x26
read_object_loop_b187:
# B187
	fle x26, x11, x31
	beq	x26, zero, read_object_bneelse_b188
# B189
	fle x26, x31, x32
	bne	x26, zero, read_object_beqelse_b191
# B190
	fsub x26, x31, x32
	fdiv x28, x32, x12
	mv x31, x26
	mv x32, x28
	j	read_object_loop_b187
read_object_bneelse_b188:
# B188
# B192
	fle x11, x100, x31
	bne	x11, zero, read_object_beqelse_b194
# B193
	mv x26, x31
	j read_object_cont_b195 # adhoc jump(2)
read_object_beqelse_b194:
# B194
	fsub x26, x31, x100
read_object_cont_b195:
# B195
	bne	x11, zero, read_object_beqelse_b197
# B196
	mv x11, x27
	j read_object_cont_b198 # adhoc jump(2)
read_object_beqelse_b197:
# B197
	xori x11, x27, 1
read_object_cont_b198:
# B198
	fle x27, x15, x26
	bne	x27, zero, read_object_beqelse_b200
# B199
	mv x100, x26
	j read_object_cont_b201 # adhoc jump(2)
read_object_beqelse_b200:
# B200
	fsub x100, x100, x26
read_object_cont_b201:
# B201
	fle x16, x16, x100
	bne	x16, zero, read_object_beqelse_b203
# B202
	fmul x15, x100, x100
	fmul x16, x15, x23
	fadd x16, x22, x16
	fmul x16, x15, x16
	fadd x16, x21, x16
	fmul x15, x15, x16
	fadd x10, x10, x15
	fmul x10, x100, x10
	j read_object_cont_b204 # adhoc jump(2)
read_object_beqelse_b203:
# B203
	fsub x100, x15, x100
	fmul x100, x100, x100
	fmul x15, x100, x20
	fadd x15, x19, x15
	fmul x15, x100, x15
	fadd x15, x18, x15
	fmul x100, x100, x15
	fadd x10, x10, x100
read_object_cont_b204:
# B204
	fle x100, x10, zero
	beq	x11, x100, read_object_bneelse_b206
# B205
	j read_object_cont_b207 # adhoc jump(2)
read_object_bneelse_b206:
# B206
	fsub x10, zero, x10
read_object_cont_b207:
# B207
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
read_object_bneelse_b47:
# B47
read_object_cont_b208:
# B208
	li x10, 1
read_object_cont_b209:
# B209
	bne	x10, zero, read_object_beqelse_b211
# B210
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
read_net_item.3078:
# B212
	sw	x5, 0(x2)
# B213
	in32 x10
	sw	x10, 1(x2)
	li x100, -1
	bne	x10, x100, read_net_item_beqelse_b215
# B214
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
read_net_item_beqelse_b215:
# B215
	addi x5, x5, 1
	sw	ra, 2(x2)
	addi	x2, x2, 3
	jal	read_net_item.3078
	addi	x2, x2, -3
	lw	ra, 2(x2)
	lw	x10, 1(x2)
	lw	x100, 0(x2)
	add x4, x5, x100
	sw x10, 0(x4)
	ret
read_or_network.3080:
# B216
	sw	x5, 0(x2)
# B217
	mv x5, zero
	sw	ra, 1(x2)
	addi	x2, x2, 2
	jal	read_net_item.3078
	addi	x2, x2, -2
	lw	ra, 1(x2)
	sw	x5, 1(x2)
	lw x10, 0(x5)
	li x100, -1
	bne	x10, x100, read_or_network_beqelse_b219
# B218
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
read_or_network_beqelse_b219:
# B219
	lw	x11, 0(x2)
	addi x5, x11, 1
	sw	ra, 2(x2)
	addi	x2, x2, 3
	jal	read_or_network.3080
	addi	x2, x2, -3
	lw	ra, 2(x2)
	lw	x10, 1(x2)
	lw	x100, 0(x2)
	add x4, x5, x100
	sw x10, 0(x4)
	ret
shadow_check_one_or_matrix.3221:
# B220
	mv x10, x5
	mv x100, x6
	j	shadow_check_one_or_matrix_loop_b221
shadow_check_one_or_matrix_bneelse_b456:	#moved
# B456
shadow_check_one_or_matrix_loop_b221:
# B221
	add x4, x100, x10
	lw x11, 0(x4)
	lw x12, 0(x11)
	li x13, 1
	li x14, -1
	bne	x12, x14, shadow_check_one_or_matrix_beqelse_b223
# B222
	mv x5, zero
	ret
shadow_check_one_or_matrix_beqelse_b223:
# B223
	li x15, 99
	bne	x12, x15, shadow_check_one_or_matrix_beqelse_b225
# B224
	li x12, 1
	j shadow_check_one_or_matrix_cont_b363 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b225:
# B225
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
	bne	x23, x13, shadow_check_one_or_matrix_beqelse_b227
# B226
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
	beq	x25, zero, shadow_check_one_or_matrix_bneelse_b229
# B228
	mv x25, zero
	j shadow_check_one_or_matrix_cont_b232 # adhoc jump(2)
shadow_check_one_or_matrix_bneelse_b229:
# B229
	lw x25, 2(x23)
	fmul x25, x24, x25
	fadd x25, x25, x22
	fabs x25, x25
	lw x26, 4(x18)
	lw x26, 2(x26)
	fle x25, x26, x25
	beq	x25, zero, shadow_check_one_or_matrix_bneelse_b231
# B230
	mv x25, zero
	j shadow_check_one_or_matrix_cont_b232 # adhoc jump(2)
shadow_check_one_or_matrix_bneelse_b231:
# B231
	lw x25, 1(x12)
	feq x25, x25, zero
	xori x25, x25, 1
shadow_check_one_or_matrix_cont_b232:
# B232
	bne	x25, zero, shadow_check_one_or_matrix_beqelse_b234
# B233
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
	beq	x25, zero, shadow_check_one_or_matrix_bneelse_b236
# B235
	mv x25, zero
	j shadow_check_one_or_matrix_cont_b239 # adhoc jump(2)
shadow_check_one_or_matrix_bneelse_b236:
# B236
	lw x25, 2(x23)
	fmul x25, x24, x25
	fadd x25, x25, x22
	fabs x25, x25
	lw x26, 4(x18)
	lw x26, 2(x26)
	fle x25, x26, x25
	beq	x25, zero, shadow_check_one_or_matrix_bneelse_b238
# B237
	mv x25, zero
	j shadow_check_one_or_matrix_cont_b239 # adhoc jump(2)
shadow_check_one_or_matrix_bneelse_b238:
# B238
	lw x25, 3(x12)
	feq x25, x25, zero
	xori x25, x25, 1
shadow_check_one_or_matrix_cont_b239:
# B239
	bne	x25, zero, shadow_check_one_or_matrix_beqelse_b241
# B240
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
	beq	x19, zero, shadow_check_one_or_matrix_bneelse_b243
# B242
	mv x12, zero
	j shadow_check_one_or_matrix_cont_b246 # adhoc jump(2)
shadow_check_one_or_matrix_bneelse_b243:
# B243
	lw x19, 1(x23)
	fmul x19, x22, x19
	fadd x19, x19, x20
	fabs x19, x19
	lw x18, 4(x18)
	lw x18, 1(x18)
	fle x18, x18, x19
	beq	x18, zero, shadow_check_one_or_matrix_bneelse_b245
# B244
	mv x12, zero
	j shadow_check_one_or_matrix_cont_b246 # adhoc jump(2)
shadow_check_one_or_matrix_bneelse_b245:
# B245
	lw x12, 5(x12)
	feq x12, x12, zero
	xori x12, x12, 1
shadow_check_one_or_matrix_cont_b246:
# B246
	bne	x12, zero, shadow_check_one_or_matrix_beqelse_b248
# B247
	mv x12, zero
	j shadow_check_one_or_matrix_cont_b266 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b248:
# B248
	la x12, min_caml_solver_dist
	sw x22, 0(x12)
	li x12, 3
	j shadow_check_one_or_matrix_cont_b266 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b241:
# B241
	la x12, min_caml_solver_dist
	sw x24, 0(x12)
	li x12, 2
	j shadow_check_one_or_matrix_cont_b266 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b234:
# B234
	la x12, min_caml_solver_dist
	sw x24, 0(x12)
	li x12, 1
	j shadow_check_one_or_matrix_cont_b266 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b227:
# B227
	bne	x23, x21, shadow_check_one_or_matrix_beqelse_b250
# B249
	lw x18, 0(x12)
	fle x18, zero, x18
	beq	x18, zero, shadow_check_one_or_matrix_bneelse_b252
# B251
	mv x12, zero
	j shadow_check_one_or_matrix_cont_b266 # adhoc jump(2)
shadow_check_one_or_matrix_bneelse_b252:
# B252
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
	li x12, 1
	j shadow_check_one_or_matrix_cont_b266 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b250:
# B250
	lw x23, 0(x12)
	feq x24, x23, zero
	bne	x24, zero, shadow_check_one_or_matrix_beqelse_b254
# B253
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
	bne	x27, zero, shadow_check_one_or_matrix_beqelse_b256
# B255
	mv x19, x26
	j shadow_check_one_or_matrix_cont_b257 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b256:
# B256
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
shadow_check_one_or_matrix_cont_b257:
# B257
	lw x20, 1(x18)
	bne	x20, x25, shadow_check_one_or_matrix_beqelse_b259
# B258
	lui x20, 260096
	fsub x19, x19, x20
	j shadow_check_one_or_matrix_cont_b260 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b259:
# B259
shadow_check_one_or_matrix_cont_b260:
# B260
	fmul x20, x24, x24
	fmul x19, x23, x19
	fsub x19, x20, x19
	fle x20, x19, zero
	beq	x20, zero, shadow_check_one_or_matrix_bneelse_b262
# B261
	mv x12, zero
	j shadow_check_one_or_matrix_cont_b266 # adhoc jump(2)
shadow_check_one_or_matrix_bneelse_b262:
# B262
	lw x18, 6(x18)
	bne	x18, zero, shadow_check_one_or_matrix_beqelse_b264
# B263
	la x18, min_caml_solver_dist
	fsqrt x19, x19
	fsub x19, x24, x19
	lw x12, 4(x12)
	fmul x12, x19, x12
	sw x12, 0(x18)
	j shadow_check_one_or_matrix_cont_b265 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b264:
# B264
	la x18, min_caml_solver_dist
	fsqrt x19, x19
	fadd x19, x24, x19
	lw x12, 4(x12)
	fmul x12, x19, x12
	sw x12, 0(x18)
shadow_check_one_or_matrix_cont_b265:
# B265
	li x12, 1
	j shadow_check_one_or_matrix_cont_b266 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b254:
# B254
	mv x12, zero
shadow_check_one_or_matrix_cont_b266:
# B266
	bne	x12, zero, shadow_check_one_or_matrix_beqelse_b268
# B267
	mv x12, zero
	j shadow_check_one_or_matrix_cont_b363 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b268:
# B268
	la x12, min_caml_solver_dist
	lw x18, 0(x12)
	lui x19, 777421
	addi x19, x19, -819
	fle x18, x19, x18
	beq	x18, zero, shadow_check_one_or_matrix_bneelse_b270
# B269
	mv x12, zero
	j shadow_check_one_or_matrix_cont_b363 # adhoc jump(2)
shadow_check_one_or_matrix_bneelse_b270:
# B270
	mv x20, x11
	mv x19, x13
	j	shadow_check_one_or_matrix_loop_b271
shadow_check_one_or_matrix_bneelse_b358:	#moved
# B358
	addi x18, x19, 1
	mv x19, x18
shadow_check_one_or_matrix_loop_b271:
# B271
	add x4, x20, x19
	lw x18, 0(x4)
	bne	x18, x14, shadow_check_one_or_matrix_beqelse_b273
# B272
	mv x18, zero
	j shadow_check_one_or_matrix_cont_b360 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b273:
# B273
	la x22, min_caml_and_net
	add x4, x22, x18
	lw x18, 0(x4)
	mv x23, x18
	mv x22, zero
	j	shadow_check_one_or_matrix_loop_b274
shadow_check_one_or_matrix_bneelse_b355:	#moved
# B355
shadow_check_one_or_matrix_loop_b274:
# B274
	add x4, x23, x22
	lw x18, 0(x4)
	bne	x18, x14, shadow_check_one_or_matrix_beqelse_b276
# B275
	mv x18, zero
	j shadow_check_one_or_matrix_cont_b357 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b276:
# B276
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
	bne	x29, x13, shadow_check_one_or_matrix_beqelse_b278
# B277
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
	beq	x31, zero, shadow_check_one_or_matrix_bneelse_b280
# B279
	mv x31, zero
	j shadow_check_one_or_matrix_cont_b283 # adhoc jump(2)
shadow_check_one_or_matrix_bneelse_b280:
# B280
	lw x31, 2(x29)
	fmul x31, x30, x31
	fadd x31, x31, x27
	fabs x31, x31
	lw x32, 4(x24)
	lw x32, 2(x32)
	fle x31, x32, x31
	beq	x31, zero, shadow_check_one_or_matrix_bneelse_b282
# B281
	mv x31, zero
	j shadow_check_one_or_matrix_cont_b283 # adhoc jump(2)
shadow_check_one_or_matrix_bneelse_b282:
# B282
	lw x31, 1(x28)
	feq x31, x31, zero
	xori x31, x31, 1
shadow_check_one_or_matrix_cont_b283:
# B283
	bne	x31, zero, shadow_check_one_or_matrix_beqelse_b285
# B284
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
	beq	x31, zero, shadow_check_one_or_matrix_bneelse_b287
# B286
	mv x31, zero
	j shadow_check_one_or_matrix_cont_b290 # adhoc jump(2)
shadow_check_one_or_matrix_bneelse_b287:
# B287
	lw x31, 2(x29)
	fmul x31, x30, x31
	fadd x31, x31, x27
	fabs x31, x31
	lw x32, 4(x24)
	lw x32, 2(x32)
	fle x31, x32, x31
	beq	x31, zero, shadow_check_one_or_matrix_bneelse_b289
# B288
	mv x31, zero
	j shadow_check_one_or_matrix_cont_b290 # adhoc jump(2)
shadow_check_one_or_matrix_bneelse_b289:
# B289
	lw x31, 3(x28)
	feq x31, x31, zero
	xori x31, x31, 1
shadow_check_one_or_matrix_cont_b290:
# B290
	bne	x31, zero, shadow_check_one_or_matrix_beqelse_b292
# B291
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
	beq	x25, zero, shadow_check_one_or_matrix_bneelse_b294
# B293
	mv x24, zero
	j shadow_check_one_or_matrix_cont_b297 # adhoc jump(2)
shadow_check_one_or_matrix_bneelse_b294:
# B294
	lw x25, 1(x29)
	fmul x25, x27, x25
	fadd x25, x25, x26
	fabs x25, x25
	lw x24, 4(x24)
	lw x24, 1(x24)
	fle x24, x24, x25
	beq	x24, zero, shadow_check_one_or_matrix_bneelse_b296
# B295
	mv x24, zero
	j shadow_check_one_or_matrix_cont_b297 # adhoc jump(2)
shadow_check_one_or_matrix_bneelse_b296:
# B296
	lw x24, 5(x28)
	feq x24, x24, zero
	xori x24, x24, 1
shadow_check_one_or_matrix_cont_b297:
# B297
	bne	x24, zero, shadow_check_one_or_matrix_beqelse_b299
# B298
	mv x24, zero
	j shadow_check_one_or_matrix_cont_b317 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b299:
# B299
	sw x27, 0(x12)
	li x24, 3
	j shadow_check_one_or_matrix_cont_b317 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b292:
# B292
	sw x30, 0(x12)
	li x24, 2
	j shadow_check_one_or_matrix_cont_b317 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b285:
# B285
	sw x30, 0(x12)
	li x24, 1
	j shadow_check_one_or_matrix_cont_b317 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b278:
# B278
	bne	x29, x21, shadow_check_one_or_matrix_beqelse_b301
# B300
	lw x24, 0(x28)
	fle x24, zero, x24
	beq	x24, zero, shadow_check_one_or_matrix_bneelse_b303
# B302
	mv x24, zero
	j shadow_check_one_or_matrix_cont_b317 # adhoc jump(2)
shadow_check_one_or_matrix_bneelse_b303:
# B303
	lw x24, 1(x28)
	fmul x24, x24, x25
	lw x25, 2(x28)
	fmul x25, x25, x26
	fadd x24, x24, x25
	lw x25, 3(x28)
	fmul x25, x25, x27
	fadd x24, x24, x25
	sw x24, 0(x12)
	li x24, 1
	j shadow_check_one_or_matrix_cont_b317 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b301:
# B301
	lw x29, 0(x28)
	feq x30, x29, zero
	bne	x30, zero, shadow_check_one_or_matrix_beqelse_b305
# B304
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
	bne	x33, zero, shadow_check_one_or_matrix_beqelse_b307
# B306
	mv x25, x32
	j shadow_check_one_or_matrix_cont_b308 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b307:
# B307
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
shadow_check_one_or_matrix_cont_b308:
# B308
	lw x26, 1(x24)
	bne	x26, x31, shadow_check_one_or_matrix_beqelse_b310
# B309
	lui x26, 260096
	fsub x25, x25, x26
	j shadow_check_one_or_matrix_cont_b311 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b310:
# B310
shadow_check_one_or_matrix_cont_b311:
# B311
	fmul x26, x30, x30
	fmul x25, x29, x25
	fsub x25, x26, x25
	fle x26, x25, zero
	beq	x26, zero, shadow_check_one_or_matrix_bneelse_b313
# B312
	mv x24, zero
	j shadow_check_one_or_matrix_cont_b317 # adhoc jump(2)
shadow_check_one_or_matrix_bneelse_b313:
# B313
	lw x24, 6(x24)
	bne	x24, zero, shadow_check_one_or_matrix_beqelse_b315
# B314
	fsqrt x24, x25
	fsub x24, x30, x24
	lw x25, 4(x28)
	fmul x24, x24, x25
	sw x24, 0(x12)
	j shadow_check_one_or_matrix_cont_b316 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b315:
# B315
	fsqrt x24, x25
	fadd x24, x30, x24
	lw x25, 4(x28)
	fmul x24, x24, x25
	sw x24, 0(x12)
shadow_check_one_or_matrix_cont_b316:
# B316
	li x24, 1
	j shadow_check_one_or_matrix_cont_b317 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b305:
# B305
	mv x24, zero
shadow_check_one_or_matrix_cont_b317:
# B317
	lw x25, 0(x12)
	bne	x24, zero, shadow_check_one_or_matrix_beqelse_b319
# B318
	mv x24, zero
	j shadow_check_one_or_matrix_cont_b320 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b319:
# B319
	lui x24, 779469
	addi x24, x24, -819
	fle x24, x24, x25
	xori x24, x24, 1
shadow_check_one_or_matrix_cont_b320:
# B320
	addi x22, x22, 1
	bne	x24, zero, shadow_check_one_or_matrix_beqelse_b322
# B321
	add x4, x17, x18
	lw x18, 0(x4)
	lw x18, 6(x18)
	bne	x18, zero, shadow_check_one_or_matrix_beqelse_b324
# B323
	mv x18, zero
	j shadow_check_one_or_matrix_cont_b357 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b324:
# B324
	j	shadow_check_one_or_matrix_loop_b274
shadow_check_one_or_matrix_beqelse_b322:
# B322
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
	j	shadow_check_one_or_matrix_loop_b325
shadow_check_one_or_matrix_bneelse_b352:	#moved
# B352
	addi x18, x24, 1
	mv x24, x18
shadow_check_one_or_matrix_loop_b325:
# B325
	add x4, x27, x24
	lw x18, 0(x4)
	bne	x18, x14, shadow_check_one_or_matrix_beqelse_b327
# B326
	li x18, 1
	j shadow_check_one_or_matrix_cont_b354 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b327:
# B327
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
	bne	x32, x13, shadow_check_one_or_matrix_beqelse_b329
# B328
	fabs x25, x25
	lw x32, 4(x18)
	lw x32, 0(x32)
	fle x25, x32, x25
	beq	x25, zero, shadow_check_one_or_matrix_bneelse_b331
# B330
	mv x25, zero
	j shadow_check_one_or_matrix_cont_b334 # adhoc jump(2)
shadow_check_one_or_matrix_bneelse_b331:
# B331
	fabs x25, x26
	lw x26, 4(x18)
	lw x26, 1(x26)
	fle x25, x26, x25
	beq	x25, zero, shadow_check_one_or_matrix_bneelse_b333
# B332
	mv x25, zero
	j shadow_check_one_or_matrix_cont_b334 # adhoc jump(2)
shadow_check_one_or_matrix_bneelse_b333:
# B333
	fabs x25, x31
	lw x26, 4(x18)
	lw x26, 2(x26)
	fle x25, x26, x25
	xori x25, x25, 1
shadow_check_one_or_matrix_cont_b334:
# B334
	bne	x25, zero, shadow_check_one_or_matrix_beqelse_b336
# B335
	lw x18, 6(x18)
	xori x18, x18, 1
	j shadow_check_one_or_matrix_cont_b351 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b336:
# B336
	lw x18, 6(x18)
	j shadow_check_one_or_matrix_cont_b351 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b329:
# B329
	bne	x32, x21, shadow_check_one_or_matrix_beqelse_b338
# B337
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
	bne	x18, zero, shadow_check_one_or_matrix_beqelse_b340
# B339
	mv x18, x25
	j shadow_check_one_or_matrix_cont_b341 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b340:
# B340
	xori x18, x25, 1
shadow_check_one_or_matrix_cont_b341:
# B341
	xori x18, x18, 1
	j shadow_check_one_or_matrix_cont_b351 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b338:
# B338
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
	bne	x33, zero, shadow_check_one_or_matrix_beqelse_b343
# B342
	mv x25, x32
	j shadow_check_one_or_matrix_cont_b344 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b343:
# B343
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
shadow_check_one_or_matrix_cont_b344:
# B344
	lw x26, 1(x18)
	li x31, 3
	bne	x26, x31, shadow_check_one_or_matrix_beqelse_b346
# B345
	lui x26, 260096
	fsub x25, x25, x26
	j shadow_check_one_or_matrix_cont_b347 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b346:
# B346
shadow_check_one_or_matrix_cont_b347:
# B347
	lw x18, 6(x18)
	fle x25, zero, x25
	xori x25, x25, 1
	bne	x18, zero, shadow_check_one_or_matrix_beqelse_b349
# B348
	mv x18, x25
	j shadow_check_one_or_matrix_cont_b350 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b349:
# B349
	xori x18, x25, 1
shadow_check_one_or_matrix_cont_b350:
# B350
	xori x18, x18, 1
shadow_check_one_or_matrix_cont_b351:
# B351
	beq	x18, zero, shadow_check_one_or_matrix_bneelse_b352
# B353
	mv x18, zero
shadow_check_one_or_matrix_cont_b354:
# B354
	beq	x18, zero, shadow_check_one_or_matrix_bneelse_b355
# B356
	mv x18, x13
shadow_check_one_or_matrix_cont_b357:
# B357
	beq	x18, zero, shadow_check_one_or_matrix_bneelse_b358
# B359
	mv x18, x13
shadow_check_one_or_matrix_cont_b360:
# B360
	bne	x18, zero, shadow_check_one_or_matrix_beqelse_b362
# B361
	mv x12, zero
	j shadow_check_one_or_matrix_cont_b363 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b362:
# B362
	mv x12, x13
shadow_check_one_or_matrix_cont_b363:
# B363
	addi x10, x10, 1
	beq	x12, zero, shadow_check_one_or_matrix_bneelse_b364
# B365
	mv x15, x13
	mv x16, x11
	j	shadow_check_one_or_matrix_loop_b366
shadow_check_one_or_matrix_bneelse_b453:	#moved
# B453
	addi x11, x15, 1
	mv x15, x11
shadow_check_one_or_matrix_loop_b366:
# B366
	add x4, x16, x15
	lw x11, 0(x4)
	bne	x11, x14, shadow_check_one_or_matrix_beqelse_b368
# B367
	mv x11, zero
	j shadow_check_one_or_matrix_cont_b455 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b368:
# B368
	la x12, min_caml_and_net
	add x4, x12, x11
	lw x11, 0(x4)
	mv x12, zero
	mv x17, x11
	j	shadow_check_one_or_matrix_loop_b369
shadow_check_one_or_matrix_bneelse_b450:	#moved
# B450
shadow_check_one_or_matrix_loop_b369:
# B369
	add x4, x17, x12
	lw x11, 0(x4)
	bne	x11, x14, shadow_check_one_or_matrix_beqelse_b371
# B370
	mv x11, zero
	j shadow_check_one_or_matrix_cont_b452 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b371:
# B371
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
	bne	x27, x13, shadow_check_one_or_matrix_beqelse_b373
# B372
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
	beq	x28, zero, shadow_check_one_or_matrix_bneelse_b375
# B374
	mv x28, zero
	j shadow_check_one_or_matrix_cont_b378 # adhoc jump(2)
shadow_check_one_or_matrix_bneelse_b375:
# B375
	lw x28, 2(x18)
	fmul x28, x27, x28
	fadd x28, x28, x25
	fabs x28, x28
	lw x29, 4(x21)
	lw x29, 2(x29)
	fle x28, x29, x28
	beq	x28, zero, shadow_check_one_or_matrix_bneelse_b377
# B376
	mv x28, zero
	j shadow_check_one_or_matrix_cont_b378 # adhoc jump(2)
shadow_check_one_or_matrix_bneelse_b377:
# B377
	lw x28, 1(x26)
	feq x28, x28, zero
	xori x28, x28, 1
shadow_check_one_or_matrix_cont_b378:
# B378
	bne	x28, zero, shadow_check_one_or_matrix_beqelse_b380
# B379
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
	beq	x28, zero, shadow_check_one_or_matrix_bneelse_b382
# B381
	mv x28, zero
	j shadow_check_one_or_matrix_cont_b385 # adhoc jump(2)
shadow_check_one_or_matrix_bneelse_b382:
# B382
	lw x28, 2(x18)
	fmul x28, x27, x28
	fadd x28, x28, x25
	fabs x28, x28
	lw x29, 4(x21)
	lw x29, 2(x29)
	fle x28, x29, x28
	beq	x28, zero, shadow_check_one_or_matrix_bneelse_b384
# B383
	mv x28, zero
	j shadow_check_one_or_matrix_cont_b385 # adhoc jump(2)
shadow_check_one_or_matrix_bneelse_b384:
# B384
	lw x28, 3(x26)
	feq x28, x28, zero
	xori x28, x28, 1
shadow_check_one_or_matrix_cont_b385:
# B385
	bne	x28, zero, shadow_check_one_or_matrix_beqelse_b387
# B386
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
	beq	x22, zero, shadow_check_one_or_matrix_bneelse_b389
# B388
	mv x18, zero
	j shadow_check_one_or_matrix_cont_b392 # adhoc jump(2)
shadow_check_one_or_matrix_bneelse_b389:
# B389
	lw x18, 1(x18)
	fmul x18, x25, x18
	fadd x18, x18, x23
	fabs x18, x18
	lw x21, 4(x21)
	lw x21, 1(x21)
	fle x18, x21, x18
	beq	x18, zero, shadow_check_one_or_matrix_bneelse_b391
# B390
	mv x18, zero
	j shadow_check_one_or_matrix_cont_b392 # adhoc jump(2)
shadow_check_one_or_matrix_bneelse_b391:
# B391
	lw x18, 5(x26)
	feq x18, x18, zero
	xori x18, x18, 1
shadow_check_one_or_matrix_cont_b392:
# B392
	bne	x18, zero, shadow_check_one_or_matrix_beqelse_b394
# B393
	mv x18, zero
	j shadow_check_one_or_matrix_cont_b412 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b394:
# B394
	la x18, min_caml_solver_dist
	sw x25, 0(x18)
	li x18, 3
	j shadow_check_one_or_matrix_cont_b412 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b387:
# B387
	la x18, min_caml_solver_dist
	sw x27, 0(x18)
	li x18, 2
	j shadow_check_one_or_matrix_cont_b412 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b380:
# B380
	la x18, min_caml_solver_dist
	sw x27, 0(x18)
	li x18, 1
	j shadow_check_one_or_matrix_cont_b412 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b373:
# B373
	bne	x27, x24, shadow_check_one_or_matrix_beqelse_b396
# B395
	lw x18, 0(x26)
	fle x18, zero, x18
	beq	x18, zero, shadow_check_one_or_matrix_bneelse_b398
# B397
	mv x18, zero
	j shadow_check_one_or_matrix_cont_b412 # adhoc jump(2)
shadow_check_one_or_matrix_bneelse_b398:
# B398
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
	li x18, 1
	j shadow_check_one_or_matrix_cont_b412 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b396:
# B396
	lw x18, 0(x26)
	feq x27, x18, zero
	bne	x27, zero, shadow_check_one_or_matrix_beqelse_b400
# B399
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
	bne	x30, zero, shadow_check_one_or_matrix_beqelse_b402
# B401
	mv x22, x29
	j shadow_check_one_or_matrix_cont_b403 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b402:
# B402
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
shadow_check_one_or_matrix_cont_b403:
# B403
	lw x23, 1(x21)
	bne	x23, x28, shadow_check_one_or_matrix_beqelse_b405
# B404
	lui x23, 260096
	fsub x22, x22, x23
	j shadow_check_one_or_matrix_cont_b406 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b405:
# B405
shadow_check_one_or_matrix_cont_b406:
# B406
	fmul x23, x27, x27
	fmul x18, x18, x22
	fsub x18, x23, x18
	fle x22, x18, zero
	beq	x22, zero, shadow_check_one_or_matrix_bneelse_b408
# B407
	mv x18, zero
	j shadow_check_one_or_matrix_cont_b412 # adhoc jump(2)
shadow_check_one_or_matrix_bneelse_b408:
# B408
	lw x21, 6(x21)
	bne	x21, zero, shadow_check_one_or_matrix_beqelse_b410
# B409
	la x21, min_caml_solver_dist
	fsqrt x18, x18
	fsub x18, x27, x18
	lw x22, 4(x26)
	fmul x18, x18, x22
	sw x18, 0(x21)
	j shadow_check_one_or_matrix_cont_b411 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b410:
# B410
	la x21, min_caml_solver_dist
	fsqrt x18, x18
	fadd x18, x27, x18
	lw x22, 4(x26)
	fmul x18, x18, x22
	sw x18, 0(x21)
shadow_check_one_or_matrix_cont_b411:
# B411
	li x18, 1
	j shadow_check_one_or_matrix_cont_b412 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b400:
# B400
	mv x18, zero
shadow_check_one_or_matrix_cont_b412:
# B412
	la x21, min_caml_solver_dist
	lw x21, 0(x21)
	bne	x18, zero, shadow_check_one_or_matrix_beqelse_b414
# B413
	mv x18, zero
	j shadow_check_one_or_matrix_cont_b415 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b414:
# B414
	lui x18, 779469
	addi x18, x18, -819
	fle x18, x18, x21
	xori x18, x18, 1
shadow_check_one_or_matrix_cont_b415:
# B415
	addi x12, x12, 1
	bne	x18, zero, shadow_check_one_or_matrix_beqelse_b417
# B416
	add x4, x20, x11
	lw x11, 0(x4)
	lw x11, 6(x11)
	bne	x11, zero, shadow_check_one_or_matrix_beqelse_b419
# B418
	mv x11, zero
	j shadow_check_one_or_matrix_cont_b452 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b419:
# B419
	j	shadow_check_one_or_matrix_loop_b369
shadow_check_one_or_matrix_beqelse_b417:
# B417
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
	j	shadow_check_one_or_matrix_loop_b420
shadow_check_one_or_matrix_bneelse_b447:	#moved
# B447
	addi x11, x18, 1
	mv x18, x11
shadow_check_one_or_matrix_loop_b420:
# B420
	add x4, x19, x18
	lw x11, 0(x4)
	bne	x11, x14, shadow_check_one_or_matrix_beqelse_b422
# B421
	li x11, 1
	j shadow_check_one_or_matrix_cont_b449 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b422:
# B422
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
	bne	x28, x13, shadow_check_one_or_matrix_beqelse_b424
# B423
	fabs x21, x21
	lw x28, 4(x11)
	lw x28, 0(x28)
	fle x21, x28, x21
	beq	x21, zero, shadow_check_one_or_matrix_bneelse_b426
# B425
	mv x21, zero
	j shadow_check_one_or_matrix_cont_b429 # adhoc jump(2)
shadow_check_one_or_matrix_bneelse_b426:
# B426
	fabs x21, x22
	lw x22, 4(x11)
	lw x22, 1(x22)
	fle x21, x22, x21
	beq	x21, zero, shadow_check_one_or_matrix_bneelse_b428
# B427
	mv x21, zero
	j shadow_check_one_or_matrix_cont_b429 # adhoc jump(2)
shadow_check_one_or_matrix_bneelse_b428:
# B428
	fabs x21, x27
	lw x22, 4(x11)
	lw x22, 2(x22)
	fle x21, x22, x21
	xori x21, x21, 1
shadow_check_one_or_matrix_cont_b429:
# B429
	bne	x21, zero, shadow_check_one_or_matrix_beqelse_b431
# B430
	lw x11, 6(x11)
	xori x11, x11, 1
	j shadow_check_one_or_matrix_cont_b446 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b431:
# B431
	lw x11, 6(x11)
	j shadow_check_one_or_matrix_cont_b446 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b424:
# B424
	bne	x28, x24, shadow_check_one_or_matrix_beqelse_b433
# B432
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
	bne	x11, zero, shadow_check_one_or_matrix_beqelse_b435
# B434
	mv x11, x21
	j shadow_check_one_or_matrix_cont_b436 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b435:
# B435
	xori x11, x21, 1
shadow_check_one_or_matrix_cont_b436:
# B436
	xori x11, x11, 1
	j shadow_check_one_or_matrix_cont_b446 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b433:
# B433
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
	bne	x29, zero, shadow_check_one_or_matrix_beqelse_b438
# B437
	mv x21, x28
	j shadow_check_one_or_matrix_cont_b439 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b438:
# B438
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
shadow_check_one_or_matrix_cont_b439:
# B439
	lw x22, 1(x11)
	li x27, 3
	bne	x22, x27, shadow_check_one_or_matrix_beqelse_b441
# B440
	lui x22, 260096
	fsub x21, x21, x22
	j shadow_check_one_or_matrix_cont_b442 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b441:
# B441
shadow_check_one_or_matrix_cont_b442:
# B442
	lw x11, 6(x11)
	fle x21, zero, x21
	xori x21, x21, 1
	bne	x11, zero, shadow_check_one_or_matrix_beqelse_b444
# B443
	mv x11, x21
	j shadow_check_one_or_matrix_cont_b445 # adhoc jump(2)
shadow_check_one_or_matrix_beqelse_b444:
# B444
	xori x11, x21, 1
shadow_check_one_or_matrix_cont_b445:
# B445
	xori x11, x11, 1
shadow_check_one_or_matrix_cont_b446:
# B446
	beq	x11, zero, shadow_check_one_or_matrix_bneelse_b447
# B448
	mv x11, zero
shadow_check_one_or_matrix_cont_b449:
# B449
	beq	x11, zero, shadow_check_one_or_matrix_bneelse_b450
# B451
	mv x11, x13
shadow_check_one_or_matrix_cont_b452:
# B452
	beq	x11, zero, shadow_check_one_or_matrix_bneelse_b453
# B454
	mv x11, x13
shadow_check_one_or_matrix_cont_b455:
# B455
	beq	x11, zero, shadow_check_one_or_matrix_bneelse_b456
# B457
	mv x5, x13
	ret
shadow_check_one_or_matrix_bneelse_b364:
# B364
	j	shadow_check_one_or_matrix_loop_b221
solve_each_element.3224:
# B458
	mv x10, x5
	mv x11, x7
	mv x100, x6
solve_each_element_loop_b459:
# B459
	add x4, x100, x10
	lw x12, 0(x4)
	li x13, 1
	li x14, -1
	bne	x12, x14, solve_each_element_beqelse_b461
# B460
	ret
solve_each_element_beqelse_b461:
# B461
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
	bne	x22, x13, solve_each_element_beqelse_b463
# B462
	lw x22, 0(x11)
	feq x22, x22, zero
	bne	x22, zero, solve_each_element_beqelse_b465
# B464
	lw x22, 4(x17)
	lw x23, 6(x17)
	lw x24, 0(x11)
	fle x24, zero, x24
	xori x24, x24, 1
	bne	x23, zero, solve_each_element_beqelse_b467
# B466
	mv x23, x24
	j solve_each_element_cont_b468 # adhoc jump(2)
solve_each_element_beqelse_b467:
# B467
	xori x23, x24, 1
solve_each_element_cont_b468:
# B468
	lw x24, 0(x22)
	bne	x23, zero, solve_each_element_beqelse_b470
# B469
	fsub x23, zero, x24
	j solve_each_element_cont_b471 # adhoc jump(2)
solve_each_element_beqelse_b470:
# B470
	mv x23, x24
solve_each_element_cont_b471:
# B471
	fsub x23, x23, x18
	lw x24, 0(x11)
	fdiv x23, x23, x24
	lw x24, 1(x11)
	fmul x24, x23, x24
	fadd x24, x24, x19
	fabs x24, x24
	lw x25, 1(x22)
	fle x24, x25, x24
	beq	x24, zero, solve_each_element_bneelse_b473
# B472
	mv x22, zero
	j solve_each_element_cont_b476 # adhoc jump(2)
solve_each_element_bneelse_b473:
# B473
	lw x24, 2(x11)
	fmul x24, x23, x24
	fadd x24, x24, x21
	fabs x24, x24
	lw x22, 2(x22)
	fle x22, x22, x24
	beq	x22, zero, solve_each_element_bneelse_b475
# B474
	mv x22, zero
	j solve_each_element_cont_b476 # adhoc jump(2)
solve_each_element_bneelse_b475:
# B475
	la x22, min_caml_solver_dist
	sw x23, 0(x22)
	li x22, 1
	j solve_each_element_cont_b476 # adhoc jump(2)
solve_each_element_beqelse_b465:
# B465
	mv x22, zero
solve_each_element_cont_b476:
# B476
	bne	x22, zero, solve_each_element_beqelse_b478
# B477
	lw x22, 1(x11)
	feq x22, x22, zero
	bne	x22, zero, solve_each_element_beqelse_b480
# B479
	lw x22, 4(x17)
	lw x23, 6(x17)
	lw x24, 1(x11)
	fle x24, zero, x24
	xori x24, x24, 1
	bne	x23, zero, solve_each_element_beqelse_b482
# B481
	mv x23, x24
	j solve_each_element_cont_b483 # adhoc jump(2)
solve_each_element_beqelse_b482:
# B482
	xori x23, x24, 1
solve_each_element_cont_b483:
# B483
	lw x24, 1(x22)
	bne	x23, zero, solve_each_element_beqelse_b485
# B484
	fsub x23, zero, x24
	j solve_each_element_cont_b486 # adhoc jump(2)
solve_each_element_beqelse_b485:
# B485
	mv x23, x24
solve_each_element_cont_b486:
# B486
	fsub x23, x23, x19
	lw x24, 1(x11)
	fdiv x23, x23, x24
	lw x24, 2(x11)
	fmul x24, x23, x24
	fadd x24, x24, x21
	fabs x24, x24
	lw x25, 2(x22)
	fle x24, x25, x24
	beq	x24, zero, solve_each_element_bneelse_b488
# B487
	mv x22, zero
	j solve_each_element_cont_b491 # adhoc jump(2)
solve_each_element_bneelse_b488:
# B488
	lw x24, 0(x11)
	fmul x24, x23, x24
	fadd x24, x24, x18
	fabs x24, x24
	lw x22, 0(x22)
	fle x22, x22, x24
	beq	x22, zero, solve_each_element_bneelse_b490
# B489
	mv x22, zero
	j solve_each_element_cont_b491 # adhoc jump(2)
solve_each_element_bneelse_b490:
# B490
	la x22, min_caml_solver_dist
	sw x23, 0(x22)
	li x22, 1
	j solve_each_element_cont_b491 # adhoc jump(2)
solve_each_element_beqelse_b480:
# B480
	mv x22, zero
solve_each_element_cont_b491:
# B491
	bne	x22, zero, solve_each_element_beqelse_b493
# B492
	lw x22, 2(x11)
	feq x22, x22, zero
	bne	x22, zero, solve_each_element_beqelse_b495
# B494
	lw x22, 4(x17)
	lw x17, 6(x17)
	lw x23, 2(x11)
	fle x23, zero, x23
	xori x23, x23, 1
	bne	x17, zero, solve_each_element_beqelse_b497
# B496
	mv x17, x23
	j solve_each_element_cont_b498 # adhoc jump(2)
solve_each_element_beqelse_b497:
# B497
	xori x17, x23, 1
solve_each_element_cont_b498:
# B498
	lw x23, 2(x22)
	bne	x17, zero, solve_each_element_beqelse_b500
# B499
	fsub x17, zero, x23
	j solve_each_element_cont_b501 # adhoc jump(2)
solve_each_element_beqelse_b500:
# B500
	mv x17, x23
solve_each_element_cont_b501:
# B501
	fsub x17, x17, x21
	lw x21, 2(x11)
	fdiv x17, x17, x21
	lw x21, 0(x11)
	fmul x21, x17, x21
	fadd x18, x21, x18
	fabs x18, x18
	lw x21, 0(x22)
	fle x18, x21, x18
	beq	x18, zero, solve_each_element_bneelse_b503
# B502
	mv x17, zero
	j solve_each_element_cont_b506 # adhoc jump(2)
solve_each_element_bneelse_b503:
# B503
	lw x18, 1(x11)
	fmul x18, x17, x18
	fadd x18, x18, x19
	fabs x18, x18
	lw x19, 1(x22)
	fle x18, x19, x18
	beq	x18, zero, solve_each_element_bneelse_b505
# B504
	mv x17, zero
	j solve_each_element_cont_b506 # adhoc jump(2)
solve_each_element_bneelse_b505:
# B505
	la x18, min_caml_solver_dist
	sw x17, 0(x18)
	li x17, 1
	j solve_each_element_cont_b506 # adhoc jump(2)
solve_each_element_beqelse_b495:
# B495
	mv x17, zero
solve_each_element_cont_b506:
# B506
	bne	x17, zero, solve_each_element_beqelse_b508
# B507
	mv x17, zero
	j solve_each_element_cont_b532 # adhoc jump(2)
solve_each_element_beqelse_b508:
# B508
	li x17, 3
	j solve_each_element_cont_b532 # adhoc jump(2)
solve_each_element_beqelse_b493:
# B493
	li x17, 2
	j solve_each_element_cont_b532 # adhoc jump(2)
solve_each_element_beqelse_b478:
# B478
	li x17, 1
	j solve_each_element_cont_b532 # adhoc jump(2)
solve_each_element_beqelse_b463:
# B463
	bne	x22, x20, solve_each_element_beqelse_b510
# B509
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
	beq	x23, zero, solve_each_element_bneelse_b512
# B511
	mv x17, zero
	j solve_each_element_cont_b532 # adhoc jump(2)
solve_each_element_bneelse_b512:
# B512
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
	j solve_each_element_cont_b532 # adhoc jump(2)
solve_each_element_beqelse_b510:
# B510
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
	bne	x26, zero, solve_each_element_beqelse_b514
# B513
	mv x22, x25
	j solve_each_element_cont_b515 # adhoc jump(2)
solve_each_element_beqelse_b514:
# B514
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
solve_each_element_cont_b515:
# B515
	feq x23, x22, zero
	bne	x23, zero, solve_each_element_beqelse_b517
# B516
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
	bne	x27, zero, solve_each_element_beqelse_b519
# B518
	mv x23, x26
	j solve_each_element_cont_b520 # adhoc jump(2)
solve_each_element_beqelse_b519:
# B519
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
solve_each_element_cont_b520:
# B520
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
	bne	x25, zero, solve_each_element_beqelse_b522
# B521
	mv x18, x24
	j solve_each_element_cont_b523 # adhoc jump(2)
solve_each_element_beqelse_b522:
# B522
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
solve_each_element_cont_b523:
# B523
	lw x19, 1(x17)
	li x21, 3
	bne	x19, x21, solve_each_element_beqelse_b525
# B524
	lui x19, 260096
	fsub x18, x18, x19
	j solve_each_element_cont_b526 # adhoc jump(2)
solve_each_element_beqelse_b525:
# B525
solve_each_element_cont_b526:
# B526
	fmul x19, x23, x23
	fmul x18, x22, x18
	fsub x18, x19, x18
	fle x19, x18, zero
	beq	x19, zero, solve_each_element_bneelse_b528
# B527
	mv x17, zero
	j solve_each_element_cont_b532 # adhoc jump(2)
solve_each_element_bneelse_b528:
# B528
	fsqrt x18, x18
	lw x17, 6(x17)
	bne	x17, zero, solve_each_element_beqelse_b530
# B529
	fsub x17, zero, x18
	j solve_each_element_cont_b531 # adhoc jump(2)
solve_each_element_beqelse_b530:
# B530
	mv x17, x18
solve_each_element_cont_b531:
# B531
	la x18, min_caml_solver_dist
	fsub x17, x17, x23
	fdiv x17, x17, x22
	sw x17, 0(x18)
	li x17, 1
	j solve_each_element_cont_b532 # adhoc jump(2)
solve_each_element_beqelse_b517:
# B517
	mv x17, zero
solve_each_element_cont_b532:
# B532
	addi x10, x10, 1
	bne	x17, zero, solve_each_element_beqelse_b534
# B533
	add x4, x16, x12
	lw x12, 0(x4)
	lw x12, 6(x12)
	bne	x12, zero, solve_each_element_beqelse_b536
# B535
	ret
solve_each_element_beqelse_b536:
# B536
	j	solve_each_element_loop_b459
solve_each_element_beqelse_b534:
# B534
	la x18, min_caml_solver_dist
	lw x18, 0(x18)
	fle x19, x18, zero
	bne	x19, zero, solve_each_element_beqelse_b537
# B538
	la x19, min_caml_tmin
	lw x21, 0(x19)
	fle x21, x21, x18
	bne	x21, zero, solve_each_element_beqelse_b539
# B540
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
	j	solve_each_element_loop_b541
solve_each_element_bneelse_b568:	#moved
# B568
	addi x23, x23, 1
solve_each_element_loop_b541:
# B541
	add x4, x24, x23
	lw x28, 0(x4)
	bne	x28, x14, solve_each_element_beqelse_b543
# B542
	li x13, 1
	j solve_each_element_cont_b570 # adhoc jump(2)
solve_each_element_beqelse_b543:
# B543
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
	bne	x32, x13, solve_each_element_beqelse_b545
# B544
	fabs x29, x29
	lw x32, 4(x28)
	lw x32, 0(x32)
	fle x29, x32, x29
	beq	x29, zero, solve_each_element_bneelse_b547
# B546
	mv x29, zero
	j solve_each_element_cont_b550 # adhoc jump(2)
solve_each_element_bneelse_b547:
# B547
	fabs x29, x30
	lw x30, 4(x28)
	lw x30, 1(x30)
	fle x29, x30, x29
	beq	x29, zero, solve_each_element_bneelse_b549
# B548
	mv x29, zero
	j solve_each_element_cont_b550 # adhoc jump(2)
solve_each_element_bneelse_b549:
# B549
	fabs x29, x31
	lw x30, 4(x28)
	lw x30, 2(x30)
	fle x29, x30, x29
	xori x29, x29, 1
solve_each_element_cont_b550:
# B550
	bne	x29, zero, solve_each_element_beqelse_b552
# B551
	lw x28, 6(x28)
	xori x28, x28, 1
	j solve_each_element_cont_b567 # adhoc jump(2)
solve_each_element_beqelse_b552:
# B552
	lw x28, 6(x28)
	j solve_each_element_cont_b567 # adhoc jump(2)
solve_each_element_beqelse_b545:
# B545
	bne	x32, x20, solve_each_element_beqelse_b554
# B553
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
	bne	x28, zero, solve_each_element_beqelse_b556
# B555
	mv x28, x29
	j solve_each_element_cont_b557 # adhoc jump(2)
solve_each_element_beqelse_b556:
# B556
	xori x28, x29, 1
solve_each_element_cont_b557:
# B557
	xori x28, x28, 1
	j solve_each_element_cont_b567 # adhoc jump(2)
solve_each_element_beqelse_b554:
# B554
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
	bne	x33, zero, solve_each_element_beqelse_b559
# B558
	mv x29, x32
	j solve_each_element_cont_b560 # adhoc jump(2)
solve_each_element_beqelse_b559:
# B559
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
solve_each_element_cont_b560:
# B560
	lw x30, 1(x28)
	li x31, 3
	bne	x30, x31, solve_each_element_beqelse_b562
# B561
	lui x30, 260096
	fsub x29, x29, x30
	j solve_each_element_cont_b563 # adhoc jump(2)
solve_each_element_beqelse_b562:
# B562
solve_each_element_cont_b563:
# B563
	lw x28, 6(x28)
	fle x29, zero, x29
	xori x29, x29, 1
	bne	x28, zero, solve_each_element_beqelse_b565
# B564
	mv x28, x29
	j solve_each_element_cont_b566 # adhoc jump(2)
solve_each_element_beqelse_b565:
# B565
	xori x28, x29, 1
solve_each_element_cont_b566:
# B566
	xori x28, x28, 1
solve_each_element_cont_b567:
# B567
	beq	x28, zero, solve_each_element_bneelse_b568
# B569
	mv x13, zero
solve_each_element_cont_b570:
# B570
	beq	x13, zero, solve_each_element_bneelse_b571
# B572
	sw x18, 0(x19)
	la x13, min_caml_intersection_point
	sw x21, 0(x13)
	sw x22, 1(x13)
	sw x15, 2(x13)
	la x13, min_caml_intersected_object_id
	sw x12, 0(x13)
	la x12, min_caml_intsec_rectside
	sw x17, 0(x12)
solve_each_element_bneelse_b571:
# B571
solve_each_element_beqelse_b539:
# B539
solve_each_element_beqelse_b537:
# B537
solve_each_element_cont_b573:
# B573
	j	solve_each_element_loop_b459
judge_intersection_fast.3250:
# B574
# B575
	la x10, min_caml_tmin
	lui x100, 321255
	addi x100, x100, -1240
	sw x100, 0(x10)
	la x100, min_caml_or_net
	lw x100, 0(x100)
	mv x12, x100
	mv x11, zero
	mv x13, x5
judge_intersection_fast_loop_b576:
# B576
	add x4, x12, x11
	lw x100, 0(x4)
	lw x14, 0(x100)
	li x15, 1
	li x16, -1
	beq	x14, x16, judge_intersection_fast_bneelse_b577
# B578
	li x17, 99
	li x18, 2
	la x19, min_caml_solver_dist
	li x20, 3
	la x21, min_caml_intersection_point
	la x22, min_caml_intersected_object_id
	la x23, min_caml_intsec_rectside
	bne	x14, x17, judge_intersection_fast_beqelse_b580
# B579
	mv x24, x15
	mv x26, x13
	mv x25, x100
judge_intersection_fast_loop_b581:
# B581
	add x4, x25, x24
	lw x100, 0(x4)
	beq	x100, x16, judge_intersection_fast_bneelse_b582
# B583
	la x14, min_caml_and_net
	add x4, x14, x100
	lw x100, 0(x4)
	mv x27, x26
	mv x14, zero
	mv x17, x100
judge_intersection_fast_loop_b584:
# B584
	lw x100, 0(x27)
	add x4, x17, x14
	lw x28, 0(x4)
	beq	x28, x16, judge_intersection_fast_bneelse_b585
# B586
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
	bne	x36, x15, judge_intersection_fast_beqelse_b588
# B587
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
	beq	x37, zero, judge_intersection_fast_bneelse_b590
# B589
	mv x37, zero
	j judge_intersection_fast_cont_b593 # adhoc jump(2)
judge_intersection_fast_bneelse_b590:
# B590
	lw x37, 2(x31)
	fmul x37, x36, x37
	fadd x37, x37, x34
	fabs x37, x37
	lw x38, 4(x30)
	lw x38, 2(x38)
	fle x37, x38, x37
	beq	x37, zero, judge_intersection_fast_bneelse_b592
# B591
	mv x37, zero
	j judge_intersection_fast_cont_b593 # adhoc jump(2)
judge_intersection_fast_bneelse_b592:
# B592
	lw x37, 1(x35)
	feq x37, x37, zero
	xori x37, x37, 1
judge_intersection_fast_cont_b593:
# B593
	bne	x37, zero, judge_intersection_fast_beqelse_b595
# B594
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
	beq	x37, zero, judge_intersection_fast_bneelse_b597
# B596
	mv x37, zero
	j judge_intersection_fast_cont_b600 # adhoc jump(2)
judge_intersection_fast_bneelse_b597:
# B597
	lw x37, 2(x31)
	fmul x37, x36, x37
	fadd x37, x37, x34
	fabs x37, x37
	lw x38, 4(x30)
	lw x38, 2(x38)
	fle x37, x38, x37
	beq	x37, zero, judge_intersection_fast_bneelse_b599
# B598
	mv x37, zero
	j judge_intersection_fast_cont_b600 # adhoc jump(2)
judge_intersection_fast_bneelse_b599:
# B599
	lw x37, 3(x35)
	feq x37, x37, zero
	xori x37, x37, 1
judge_intersection_fast_cont_b600:
# B600
	bne	x37, zero, judge_intersection_fast_beqelse_b602
# B601
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
	beq	x32, zero, judge_intersection_fast_bneelse_b604
# B603
	mv x30, zero
	j judge_intersection_fast_cont_b607 # adhoc jump(2)
judge_intersection_fast_bneelse_b604:
# B604
	lw x31, 1(x31)
	fmul x31, x34, x31
	fadd x31, x31, x33
	fabs x31, x31
	lw x30, 4(x30)
	lw x30, 1(x30)
	fle x30, x30, x31
	beq	x30, zero, judge_intersection_fast_bneelse_b606
# B605
	mv x30, zero
	j judge_intersection_fast_cont_b607 # adhoc jump(2)
judge_intersection_fast_bneelse_b606:
# B606
	lw x30, 5(x35)
	feq x30, x30, zero
	xori x30, x30, 1
judge_intersection_fast_cont_b607:
# B607
	bne	x30, zero, judge_intersection_fast_beqelse_b609
# B608
	mv x30, zero
	j judge_intersection_fast_cont_b621 # adhoc jump(2)
judge_intersection_fast_beqelse_b609:
# B609
	la x30, min_caml_solver_dist
	sw x34, 0(x30)
	li x30, 3
	j judge_intersection_fast_cont_b621 # adhoc jump(2)
judge_intersection_fast_beqelse_b602:
# B602
	la x30, min_caml_solver_dist
	sw x36, 0(x30)
	li x30, 2
	j judge_intersection_fast_cont_b621 # adhoc jump(2)
judge_intersection_fast_beqelse_b595:
# B595
	la x30, min_caml_solver_dist
	sw x36, 0(x30)
	li x30, 1
	j judge_intersection_fast_cont_b621 # adhoc jump(2)
judge_intersection_fast_beqelse_b588:
# B588
	bne	x36, x18, judge_intersection_fast_beqelse_b611
# B610
	lw x30, 0(x35)
	fle x30, zero, x30
	beq	x30, zero, judge_intersection_fast_bneelse_b613
# B612
	mv x30, zero
	j judge_intersection_fast_cont_b621 # adhoc jump(2)
judge_intersection_fast_bneelse_b613:
# B613
	la x30, min_caml_solver_dist
	lw x32, 0(x35)
	lw x31, 3(x31)
	fmul x31, x32, x31
	sw x31, 0(x30)
	li x30, 1
	j judge_intersection_fast_cont_b621 # adhoc jump(2)
judge_intersection_fast_beqelse_b611:
# B611
	lw x36, 0(x35)
	feq x37, x36, zero
	bne	x37, zero, judge_intersection_fast_beqelse_b615
# B614
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
	beq	x33, zero, judge_intersection_fast_bneelse_b617
# B616
	mv x30, zero
	j judge_intersection_fast_cont_b621 # adhoc jump(2)
judge_intersection_fast_bneelse_b617:
# B617
	lw x30, 6(x30)
	bne	x30, zero, judge_intersection_fast_beqelse_b619
# B618
	la x30, min_caml_solver_dist
	fsqrt x31, x31
	fsub x31, x32, x31
	lw x32, 4(x35)
	fmul x31, x31, x32
	sw x31, 0(x30)
	j judge_intersection_fast_cont_b620 # adhoc jump(2)
judge_intersection_fast_beqelse_b619:
# B619
	la x30, min_caml_solver_dist
	fsqrt x31, x31
	fadd x31, x32, x31
	lw x32, 4(x35)
	fmul x31, x31, x32
	sw x31, 0(x30)
judge_intersection_fast_cont_b620:
# B620
	li x30, 1
	j judge_intersection_fast_cont_b621 # adhoc jump(2)
judge_intersection_fast_beqelse_b615:
# B615
	mv x30, zero
judge_intersection_fast_cont_b621:
# B621
	addi x14, x14, 1
	bne	x30, zero, judge_intersection_fast_beqelse_b623
# B622
	add x4, x29, x28
	lw x100, 0(x4)
	lw x100, 6(x100)
	bne	x100, zero, judge_intersection_fast_beqelse_b625
# B624
	j judge_intersection_fast_cont_b663 # adhoc jump(2)
judge_intersection_fast_beqelse_b625:
# B625
	j	judge_intersection_fast_loop_b584
judge_intersection_fast_beqelse_b623:
# B623
	lw x31, 0(x19)
	fle x32, x31, zero
	bne	x32, zero, judge_intersection_fast_beqelse_b626
# B627
	lw x32, 0(x10)
	fle x32, x32, x31
	bne	x32, zero, judge_intersection_fast_beqelse_b628
# B629
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
	j	judge_intersection_fast_loop_b630
judge_intersection_fast_bneelse_b657:	#moved
# B657
	addi x33, x33, 1
judge_intersection_fast_loop_b630:
# B630
	add x4, x35, x33
	lw x39, 0(x4)
	bne	x39, x16, judge_intersection_fast_beqelse_b632
# B631
	li x29, 1
	j judge_intersection_fast_cont_b659 # adhoc jump(2)
judge_intersection_fast_beqelse_b632:
# B632
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
	bne	x65, x15, judge_intersection_fast_beqelse_b634
# B633
	fabs x40, x40
	lw x65, 4(x39)
	lw x65, 0(x65)
	fle x40, x65, x40
	beq	x40, zero, judge_intersection_fast_bneelse_b636
# B635
	mv x40, zero
	j judge_intersection_fast_cont_b639 # adhoc jump(2)
judge_intersection_fast_bneelse_b636:
# B636
	fabs x40, x5
	lw x5, 4(x39)
	lw x5, 1(x5)
	fle x40, x5, x40
	beq	x40, zero, judge_intersection_fast_bneelse_b638
# B637
	mv x40, zero
	j judge_intersection_fast_cont_b639 # adhoc jump(2)
judge_intersection_fast_bneelse_b638:
# B638
	fabs x40, x6
	lw x5, 4(x39)
	lw x5, 2(x5)
	fle x40, x5, x40
	xori x40, x40, 1
judge_intersection_fast_cont_b639:
# B639
	bne	x40, zero, judge_intersection_fast_beqelse_b641
# B640
	lw x39, 6(x39)
	xori x39, x39, 1
	j judge_intersection_fast_cont_b656 # adhoc jump(2)
judge_intersection_fast_beqelse_b641:
# B641
	lw x39, 6(x39)
	j judge_intersection_fast_cont_b656 # adhoc jump(2)
judge_intersection_fast_beqelse_b634:
# B634
	bne	x65, x18, judge_intersection_fast_beqelse_b643
# B642
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
	bne	x39, zero, judge_intersection_fast_beqelse_b645
# B644
	mv x39, x40
	j judge_intersection_fast_cont_b646 # adhoc jump(2)
judge_intersection_fast_beqelse_b645:
# B645
	xori x39, x40, 1
judge_intersection_fast_cont_b646:
# B646
	xori x39, x39, 1
	j judge_intersection_fast_cont_b656 # adhoc jump(2)
judge_intersection_fast_beqelse_b643:
# B643
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
	bne	x66, zero, judge_intersection_fast_beqelse_b648
# B647
	mv x40, x65
	j judge_intersection_fast_cont_b649 # adhoc jump(2)
judge_intersection_fast_beqelse_b648:
# B648
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
judge_intersection_fast_cont_b649:
# B649
	lw x5, 1(x39)
	bne	x5, x20, judge_intersection_fast_beqelse_b651
# B650
	lui x5, 260096
	fsub x40, x40, x5
	j judge_intersection_fast_cont_b652 # adhoc jump(2)
judge_intersection_fast_beqelse_b651:
# B651
judge_intersection_fast_cont_b652:
# B652
	lw x39, 6(x39)
	fle x40, zero, x40
	xori x40, x40, 1
	bne	x39, zero, judge_intersection_fast_beqelse_b654
# B653
	mv x39, x40
	j judge_intersection_fast_cont_b655 # adhoc jump(2)
judge_intersection_fast_beqelse_b654:
# B654
	xori x39, x40, 1
judge_intersection_fast_cont_b655:
# B655
	xori x39, x39, 1
judge_intersection_fast_cont_b656:
# B656
	beq	x39, zero, judge_intersection_fast_bneelse_b657
# B658
	mv x29, zero
judge_intersection_fast_cont_b659:
# B659
	beq	x29, zero, judge_intersection_fast_bneelse_b660
# B661
	sw x31, 0(x10)
	sw x32, 0(x21)
	sw x34, 1(x21)
	sw x100, 2(x21)
	sw x28, 0(x22)
	sw x30, 0(x23)
judge_intersection_fast_bneelse_b660:
# B660
judge_intersection_fast_beqelse_b628:
# B628
judge_intersection_fast_beqelse_b626:
# B626
judge_intersection_fast_cont_b662:
# B662
	j	judge_intersection_fast_loop_b584
judge_intersection_fast_bneelse_b585:
# B585
judge_intersection_fast_cont_b663:
# B663
	addi x100, x24, 1
	mv x24, x100
	j	judge_intersection_fast_loop_b581
judge_intersection_fast_bneelse_b582:
# B582
	j judge_intersection_fast_cont_b786 # adhoc jump(2)
judge_intersection_fast_beqelse_b580:
# B580
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
	bne	x30, x15, judge_intersection_fast_beqelse_b665
# B664
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
	beq	x31, zero, judge_intersection_fast_bneelse_b667
# B666
	mv x31, zero
	j judge_intersection_fast_cont_b670 # adhoc jump(2)
judge_intersection_fast_bneelse_b667:
# B667
	lw x31, 2(x25)
	fmul x31, x30, x31
	fadd x31, x31, x29
	fabs x31, x31
	lw x32, 4(x24)
	lw x32, 2(x32)
	fle x31, x32, x31
	beq	x31, zero, judge_intersection_fast_bneelse_b669
# B668
	mv x31, zero
	j judge_intersection_fast_cont_b670 # adhoc jump(2)
judge_intersection_fast_bneelse_b669:
# B669
	lw x31, 1(x14)
	feq x31, x31, zero
	xori x31, x31, 1
judge_intersection_fast_cont_b670:
# B670
	bne	x31, zero, judge_intersection_fast_beqelse_b672
# B671
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
	beq	x31, zero, judge_intersection_fast_bneelse_b674
# B673
	mv x31, zero
	j judge_intersection_fast_cont_b677 # adhoc jump(2)
judge_intersection_fast_bneelse_b674:
# B674
	lw x31, 2(x25)
	fmul x31, x30, x31
	fadd x31, x31, x29
	fabs x31, x31
	lw x32, 4(x24)
	lw x32, 2(x32)
	fle x31, x32, x31
	beq	x31, zero, judge_intersection_fast_bneelse_b676
# B675
	mv x31, zero
	j judge_intersection_fast_cont_b677 # adhoc jump(2)
judge_intersection_fast_bneelse_b676:
# B676
	lw x31, 3(x14)
	feq x31, x31, zero
	xori x31, x31, 1
judge_intersection_fast_cont_b677:
# B677
	bne	x31, zero, judge_intersection_fast_beqelse_b679
# B678
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
	beq	x26, zero, judge_intersection_fast_bneelse_b681
# B680
	mv x14, zero
	j judge_intersection_fast_cont_b684 # adhoc jump(2)
judge_intersection_fast_bneelse_b681:
# B681
	lw x25, 1(x25)
	fmul x25, x18, x25
	fadd x25, x25, x27
	fabs x25, x25
	lw x24, 4(x24)
	lw x24, 1(x24)
	fle x24, x24, x25
	beq	x24, zero, judge_intersection_fast_bneelse_b683
# B682
	mv x14, zero
	j judge_intersection_fast_cont_b684 # adhoc jump(2)
judge_intersection_fast_bneelse_b683:
# B683
	lw x14, 5(x14)
	feq x14, x14, zero
	xori x14, x14, 1
judge_intersection_fast_cont_b684:
# B684
	bne	x14, zero, judge_intersection_fast_beqelse_b686
# B685
	mv x18, zero
	j judge_intersection_fast_cont_b698 # adhoc jump(2)
judge_intersection_fast_beqelse_b686:
# B686
	sw x18, 0(x19)
	mv x18, x20
	j judge_intersection_fast_cont_b698 # adhoc jump(2)
judge_intersection_fast_beqelse_b679:
# B679
	sw x30, 0(x19)
	j judge_intersection_fast_cont_b698 # adhoc jump(2)
judge_intersection_fast_beqelse_b672:
# B672
	sw x30, 0(x19)
	mv x18, x15
	j judge_intersection_fast_cont_b698 # adhoc jump(2)
judge_intersection_fast_beqelse_b665:
# B665
	bne	x30, x28, judge_intersection_fast_beqelse_b688
# B687
	lw x18, 0(x14)
	fle x18, zero, x18
	beq	x18, zero, judge_intersection_fast_bneelse_b690
# B689
	mv x18, zero
	j judge_intersection_fast_cont_b698 # adhoc jump(2)
judge_intersection_fast_bneelse_b690:
# B690
	lw x14, 0(x14)
	lw x18, 3(x25)
	fmul x14, x14, x18
	sw x14, 0(x19)
	mv x18, x15
	j judge_intersection_fast_cont_b698 # adhoc jump(2)
judge_intersection_fast_beqelse_b688:
# B688
	lw x18, 0(x14)
	feq x20, x18, zero
	bne	x20, zero, judge_intersection_fast_beqelse_b692
# B691
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
	beq	x25, zero, judge_intersection_fast_bneelse_b694
# B693
	mv x18, zero
	j judge_intersection_fast_cont_b698 # adhoc jump(2)
judge_intersection_fast_bneelse_b694:
# B694
	lw x24, 6(x24)
	fsqrt x18, x18
	bne	x24, zero, judge_intersection_fast_beqelse_b696
# B695
	fsub x18, x20, x18
	lw x14, 4(x14)
	fmul x14, x18, x14
	sw x14, 0(x19)
	j judge_intersection_fast_cont_b697 # adhoc jump(2)
judge_intersection_fast_beqelse_b696:
# B696
	fadd x18, x20, x18
	lw x14, 4(x14)
	fmul x14, x18, x14
	sw x14, 0(x19)
judge_intersection_fast_cont_b697:
# B697
	mv x18, x15
	j judge_intersection_fast_cont_b698 # adhoc jump(2)
judge_intersection_fast_beqelse_b692:
# B692
	mv x18, zero
judge_intersection_fast_cont_b698:
# B698
	beq	x18, zero, judge_intersection_fast_bneelse_b699
# B700
	lw x14, 0(x19)
	lw x18, 0(x10)
	fle x14, x18, x14
	bne	x14, zero, judge_intersection_fast_beqelse_b701
# B702
	mv x18, x15
	mv x24, x13
	mv x20, x100
judge_intersection_fast_loop_b703:
# B703
	add x4, x20, x18
	lw x100, 0(x4)
	beq	x100, x16, judge_intersection_fast_bneelse_b704
# B705
	la x14, min_caml_and_net
	add x4, x14, x100
	lw x100, 0(x4)
	mv x26, x24
	mv x25, x100
	mv x14, zero
judge_intersection_fast_loop_b706:
# B706
	lw x100, 0(x26)
	add x4, x25, x14
	lw x27, 0(x4)
	beq	x27, x16, judge_intersection_fast_bneelse_b707
# B708
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
	bne	x35, x15, judge_intersection_fast_beqelse_b710
# B709
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
	beq	x36, zero, judge_intersection_fast_bneelse_b712
# B711
	mv x36, zero
	j judge_intersection_fast_cont_b715 # adhoc jump(2)
judge_intersection_fast_bneelse_b712:
# B712
	lw x36, 2(x30)
	fmul x36, x35, x36
	fadd x36, x36, x33
	fabs x36, x36
	lw x37, 4(x29)
	lw x37, 2(x37)
	fle x36, x37, x36
	beq	x36, zero, judge_intersection_fast_bneelse_b714
# B713
	mv x36, zero
	j judge_intersection_fast_cont_b715 # adhoc jump(2)
judge_intersection_fast_bneelse_b714:
# B714
	lw x36, 1(x34)
	feq x36, x36, zero
	xori x36, x36, 1
judge_intersection_fast_cont_b715:
# B715
	bne	x36, zero, judge_intersection_fast_beqelse_b717
# B716
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
	beq	x36, zero, judge_intersection_fast_bneelse_b719
# B718
	mv x36, zero
	j judge_intersection_fast_cont_b722 # adhoc jump(2)
judge_intersection_fast_bneelse_b719:
# B719
	lw x36, 2(x30)
	fmul x36, x35, x36
	fadd x36, x36, x33
	fabs x36, x36
	lw x37, 4(x29)
	lw x37, 2(x37)
	fle x36, x37, x36
	beq	x36, zero, judge_intersection_fast_bneelse_b721
# B720
	mv x36, zero
	j judge_intersection_fast_cont_b722 # adhoc jump(2)
judge_intersection_fast_bneelse_b721:
# B721
	lw x36, 3(x34)
	feq x36, x36, zero
	xori x36, x36, 1
judge_intersection_fast_cont_b722:
# B722
	bne	x36, zero, judge_intersection_fast_beqelse_b724
# B723
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
	beq	x31, zero, judge_intersection_fast_bneelse_b726
# B725
	mv x29, zero
	j judge_intersection_fast_cont_b729 # adhoc jump(2)
judge_intersection_fast_bneelse_b726:
# B726
	lw x30, 1(x30)
	fmul x30, x33, x30
	fadd x30, x30, x32
	fabs x30, x30
	lw x29, 4(x29)
	lw x29, 1(x29)
	fle x29, x29, x30
	beq	x29, zero, judge_intersection_fast_bneelse_b728
# B727
	mv x29, zero
	j judge_intersection_fast_cont_b729 # adhoc jump(2)
judge_intersection_fast_bneelse_b728:
# B728
	lw x29, 5(x34)
	feq x29, x29, zero
	xori x29, x29, 1
judge_intersection_fast_cont_b729:
# B729
	bne	x29, zero, judge_intersection_fast_beqelse_b731
# B730
	mv x29, zero
	j judge_intersection_fast_cont_b743 # adhoc jump(2)
judge_intersection_fast_beqelse_b731:
# B731
	sw x33, 0(x19)
	li x29, 3
	j judge_intersection_fast_cont_b743 # adhoc jump(2)
judge_intersection_fast_beqelse_b724:
# B724
	sw x35, 0(x19)
	li x29, 2
	j judge_intersection_fast_cont_b743 # adhoc jump(2)
judge_intersection_fast_beqelse_b717:
# B717
	sw x35, 0(x19)
	li x29, 1
	j judge_intersection_fast_cont_b743 # adhoc jump(2)
judge_intersection_fast_beqelse_b710:
# B710
	bne	x35, x28, judge_intersection_fast_beqelse_b733
# B732
	lw x29, 0(x34)
	fle x29, zero, x29
	beq	x29, zero, judge_intersection_fast_bneelse_b735
# B734
	mv x29, zero
	j judge_intersection_fast_cont_b743 # adhoc jump(2)
judge_intersection_fast_bneelse_b735:
# B735
	lw x29, 0(x34)
	lw x30, 3(x30)
	fmul x29, x29, x30
	sw x29, 0(x19)
	li x29, 1
	j judge_intersection_fast_cont_b743 # adhoc jump(2)
judge_intersection_fast_beqelse_b733:
# B733
	lw x35, 0(x34)
	feq x36, x35, zero
	bne	x36, zero, judge_intersection_fast_beqelse_b737
# B736
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
	beq	x32, zero, judge_intersection_fast_bneelse_b739
# B738
	mv x29, zero
	j judge_intersection_fast_cont_b743 # adhoc jump(2)
judge_intersection_fast_bneelse_b739:
# B739
	lw x29, 6(x29)
	bne	x29, zero, judge_intersection_fast_beqelse_b741
# B740
	fsqrt x29, x30
	fsub x29, x31, x29
	lw x30, 4(x34)
	fmul x29, x29, x30
	sw x29, 0(x19)
	j judge_intersection_fast_cont_b742 # adhoc jump(2)
judge_intersection_fast_beqelse_b741:
# B741
	fsqrt x29, x30
	fadd x29, x31, x29
	lw x30, 4(x34)
	fmul x29, x29, x30
	sw x29, 0(x19)
judge_intersection_fast_cont_b742:
# B742
	li x29, 1
	j judge_intersection_fast_cont_b743 # adhoc jump(2)
judge_intersection_fast_beqelse_b737:
# B737
	mv x29, zero
judge_intersection_fast_cont_b743:
# B743
	addi x14, x14, 1
	bne	x29, zero, judge_intersection_fast_beqelse_b745
# B744
	add x4, x17, x27
	lw x100, 0(x4)
	lw x100, 6(x100)
	bne	x100, zero, judge_intersection_fast_beqelse_b747
# B746
	j judge_intersection_fast_cont_b785 # adhoc jump(2)
judge_intersection_fast_beqelse_b747:
# B747
	j	judge_intersection_fast_loop_b706
judge_intersection_fast_beqelse_b745:
# B745
	lw x30, 0(x19)
	fle x31, x30, zero
	bne	x31, zero, judge_intersection_fast_beqelse_b748
# B749
	lw x31, 0(x10)
	fle x31, x31, x30
	bne	x31, zero, judge_intersection_fast_beqelse_b750
# B751
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
	j	judge_intersection_fast_loop_b752
judge_intersection_fast_bneelse_b779:	#moved
# B779
	addi x32, x32, 1
judge_intersection_fast_loop_b752:
# B752
	add x4, x34, x32
	lw x38, 0(x4)
	bne	x38, x16, judge_intersection_fast_beqelse_b754
# B753
	li x32, 1
	j judge_intersection_fast_cont_b781 # adhoc jump(2)
judge_intersection_fast_beqelse_b754:
# B754
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
	bne	x6, x15, judge_intersection_fast_beqelse_b756
# B755
	fabs x39, x39
	lw x6, 4(x38)
	lw x6, 0(x6)
	fle x39, x6, x39
	beq	x39, zero, judge_intersection_fast_bneelse_b758
# B757
	mv x39, zero
	j judge_intersection_fast_cont_b761 # adhoc jump(2)
judge_intersection_fast_bneelse_b758:
# B758
	fabs x39, x40
	lw x40, 4(x38)
	lw x40, 1(x40)
	fle x39, x40, x39
	beq	x39, zero, judge_intersection_fast_bneelse_b760
# B759
	mv x39, zero
	j judge_intersection_fast_cont_b761 # adhoc jump(2)
judge_intersection_fast_bneelse_b760:
# B760
	fabs x39, x5
	lw x40, 4(x38)
	lw x40, 2(x40)
	fle x39, x40, x39
	xori x39, x39, 1
judge_intersection_fast_cont_b761:
# B761
	bne	x39, zero, judge_intersection_fast_beqelse_b763
# B762
	lw x38, 6(x38)
	xori x38, x38, 1
	j judge_intersection_fast_cont_b778 # adhoc jump(2)
judge_intersection_fast_beqelse_b763:
# B763
	lw x38, 6(x38)
	j judge_intersection_fast_cont_b778 # adhoc jump(2)
judge_intersection_fast_beqelse_b756:
# B756
	bne	x6, x28, judge_intersection_fast_beqelse_b765
# B764
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
	bne	x38, zero, judge_intersection_fast_beqelse_b767
# B766
	mv x38, x39
	j judge_intersection_fast_cont_b768 # adhoc jump(2)
judge_intersection_fast_beqelse_b767:
# B767
	xori x38, x39, 1
judge_intersection_fast_cont_b768:
# B768
	xori x38, x38, 1
	j judge_intersection_fast_cont_b778 # adhoc jump(2)
judge_intersection_fast_beqelse_b765:
# B765
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
	bne	x65, zero, judge_intersection_fast_beqelse_b770
# B769
	mv x39, x6
	j judge_intersection_fast_cont_b771 # adhoc jump(2)
judge_intersection_fast_beqelse_b770:
# B770
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
judge_intersection_fast_cont_b771:
# B771
	lw x40, 1(x38)
	li x5, 3
	bne	x40, x5, judge_intersection_fast_beqelse_b773
# B772
	lui x40, 260096
	fsub x39, x39, x40
	j judge_intersection_fast_cont_b774 # adhoc jump(2)
judge_intersection_fast_beqelse_b773:
# B773
judge_intersection_fast_cont_b774:
# B774
	lw x38, 6(x38)
	fle x39, zero, x39
	xori x39, x39, 1
	bne	x38, zero, judge_intersection_fast_beqelse_b776
# B775
	mv x38, x39
	j judge_intersection_fast_cont_b777 # adhoc jump(2)
judge_intersection_fast_beqelse_b776:
# B776
	xori x38, x39, 1
judge_intersection_fast_cont_b777:
# B777
	xori x38, x38, 1
judge_intersection_fast_cont_b778:
# B778
	beq	x38, zero, judge_intersection_fast_bneelse_b779
# B780
	mv x32, zero
judge_intersection_fast_cont_b781:
# B781
	beq	x32, zero, judge_intersection_fast_bneelse_b782
# B783
	sw x30, 0(x10)
	sw x31, 0(x21)
	sw x33, 1(x21)
	sw x100, 2(x21)
	sw x27, 0(x22)
	sw x29, 0(x23)
judge_intersection_fast_bneelse_b782:
# B782
judge_intersection_fast_beqelse_b750:
# B750
judge_intersection_fast_beqelse_b748:
# B748
judge_intersection_fast_cont_b784:
# B784
	j	judge_intersection_fast_loop_b706
judge_intersection_fast_bneelse_b707:
# B707
judge_intersection_fast_cont_b785:
# B785
	addi x100, x18, 1
	mv x18, x100
	j	judge_intersection_fast_loop_b703
judge_intersection_fast_bneelse_b704:
# B704
judge_intersection_fast_beqelse_b701:
# B701
judge_intersection_fast_bneelse_b699:
# B699
judge_intersection_fast_cont_b786:
# B786
	addi x100, x11, 1
	mv x11, x100
	j	judge_intersection_fast_loop_b576
judge_intersection_fast_bneelse_b577:
# B577
# B787
	lw x10, 0(x10)
	lui x100, 777421
	addi x100, x100, -819
	fle x100, x10, x100
	beq	x100, zero, judge_intersection_fast_bneelse_b789
# B788
	mv x5, zero
	ret
judge_intersection_fast_bneelse_b789:
# B789
	lui x100, 314348
	addi x100, x100, -992
	fle x10, x100, x10
	xori x5, x10, 1
	ret
utexture.3261:
# B790
# B791
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
	bne	x10, x11, utexture_beqelse_b793
# B792
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
	bne	x10, zero, utexture_beqelse_b795
# B794
	bne	x11, zero, utexture_beqelse_b797
# B796
	lui x10, 276464
	j utexture_cont_b800 # adhoc jump(2)
utexture_beqelse_b797:
# B797
	mv x10, zero
	j utexture_cont_b800 # adhoc jump(2)
utexture_beqelse_b795:
# B795
	bne	x11, zero, utexture_beqelse_b799
# B798
	mv x10, zero
	j utexture_cont_b800 # adhoc jump(2)
utexture_beqelse_b799:
# B799
	lui x10, 276464
utexture_cont_b800:
# B800
	sw x10, 1(x100)
	ret
utexture_beqelse_b793:
# B793
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
	bne	x10, x12, utexture_beqelse_b802
# B801
	lw x10, 1(x6)
	lui x11, 256000
	fmul x10, x10, x11
	fle x11, x10, zero
	xori x11, x11, 1
	fabs x10, x10
	mv x12, x10
	mv x13, x14
	j	utexture_loop_b803
utexture_bneelse_b804:	#moved
# B804
	fmul x13, x13, x15
utexture_loop_b803:
# B803
	fle x27, x12, x13
	beq	x27, zero, utexture_bneelse_b804
# B805
# B806
	mv x28, x10
	mv x29, x13
	j	utexture_loop_b807
utexture_beqelse_b811:	#moved
# B811
	fdiv x10, x29, x15
	mv x29, x10
utexture_loop_b807:
# B807
	fle x10, x14, x28
	beq	x10, zero, utexture_bneelse_b808
# B809
	fle x10, x28, x29
	bne	x10, zero, utexture_beqelse_b811
# B810
	fsub x10, x28, x29
	fdiv x12, x29, x15
	mv x29, x12
	mv x28, x10
	j	utexture_loop_b807
utexture_bneelse_b808:
# B808
# B812
	fle x10, x16, x28
	bne	x10, zero, utexture_beqelse_b814
# B813
	mv x12, x28
	j utexture_cont_b815 # adhoc jump(2)
utexture_beqelse_b814:
# B814
	fsub x12, x28, x16
utexture_cont_b815:
# B815
	bne	x10, zero, utexture_beqelse_b817
# B816
	mv x10, x11
	j utexture_cont_b818 # adhoc jump(2)
utexture_beqelse_b817:
# B817
	xori x10, x11, 1
utexture_cont_b818:
# B818
	fle x11, x17, x12
	bne	x11, zero, utexture_beqelse_b820
# B819
	mv x11, x12
	j utexture_cont_b821 # adhoc jump(2)
utexture_beqelse_b820:
# B820
	fsub x11, x16, x12
utexture_cont_b821:
# B821
	fle x12, x18, x11
	bne	x12, zero, utexture_beqelse_b823
# B822
	fmul x12, x11, x11
	fmul x13, x12, x22
	fadd x13, x21, x13
	fmul x13, x12, x13
	fadd x13, x20, x13
	fmul x12, x12, x13
	fadd x12, x19, x12
	fmul x11, x11, x12
	j utexture_cont_b824 # adhoc jump(2)
utexture_beqelse_b823:
# B823
	fsub x11, x17, x11
	fmul x11, x11, x11
	fmul x12, x11, x25
	fadd x12, x24, x12
	fmul x12, x11, x12
	fadd x12, x23, x12
	fmul x11, x11, x12
	fadd x11, x19, x11
utexture_cont_b824:
# B824
	fle x12, x11, zero
	beq	x10, x12, utexture_bneelse_b826
# B825
	mv x10, x11
	j utexture_cont_b827 # adhoc jump(2)
utexture_bneelse_b826:
# B826
	fsub x10, zero, x11
utexture_cont_b827:
# B827
	fmul x10, x10, x10
	fmul x11, x26, x10
	sw x11, 0(x100)
	fsub x10, x19, x10
	fmul x10, x26, x10
	sw x10, 1(x100)
	ret
utexture_beqelse_b802:
# B802
	li x12, 3
	lui x27, 263313
	addi x27, x27, -37
	bne	x10, x12, utexture_beqelse_b829
# B828
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
	j	utexture_loop_b830
utexture_bneelse_b831:	#moved
# B831
	fmul x13, x13, x15
utexture_loop_b830:
# B830
	fle x27, x12, x13
	beq	x27, zero, utexture_bneelse_b831
# B832
# B833
	mv x28, x10
	mv x29, x13
	j	utexture_loop_b834
utexture_beqelse_b838:	#moved
# B838
	fdiv x10, x29, x15
	mv x29, x10
utexture_loop_b834:
# B834
	fle x10, x14, x28
	beq	x10, zero, utexture_bneelse_b835
# B836
	fle x10, x28, x29
	bne	x10, zero, utexture_beqelse_b838
# B837
	fsub x10, x28, x29
	fdiv x12, x29, x15
	mv x29, x12
	mv x28, x10
	j	utexture_loop_b834
utexture_bneelse_b835:
# B835
# B839
	fle x10, x16, x28
	bne	x10, zero, utexture_beqelse_b841
# B840
	mv x12, x28
	j utexture_cont_b842 # adhoc jump(2)
utexture_beqelse_b841:
# B841
	fsub x12, x28, x16
utexture_cont_b842:
# B842
	bne	x10, zero, utexture_beqelse_b844
# B843
	mv x13, x11
	j utexture_cont_b845 # adhoc jump(2)
utexture_beqelse_b844:
# B844
	mv x13, zero
utexture_cont_b845:
# B845
	fle x10, x17, x12
	bne	x10, zero, utexture_beqelse_b847
# B846
	mv x11, x12
	j utexture_cont_b848 # adhoc jump(2)
utexture_beqelse_b847:
# B847
	fsub x11, x16, x12
utexture_cont_b848:
# B848
	bne	x10, zero, utexture_beqelse_b850
# B849
	mv x10, x13
	j utexture_cont_b851 # adhoc jump(2)
utexture_beqelse_b850:
# B850
	xori x10, x13, 1
utexture_cont_b851:
# B851
	fle x12, x18, x11
	bne	x12, zero, utexture_beqelse_b853
# B852
	fmul x11, x11, x11
	fmul x12, x11, x25
	fadd x12, x24, x12
	fmul x12, x11, x12
	fadd x12, x23, x12
	fmul x11, x11, x12
	fadd x11, x19, x11
	j utexture_cont_b854 # adhoc jump(2)
utexture_beqelse_b853:
# B853
	fsub x11, x17, x11
	fmul x12, x11, x11
	fmul x13, x12, x22
	fadd x13, x21, x13
	fmul x13, x12, x13
	fadd x13, x20, x13
	fmul x12, x12, x13
	fadd x12, x19, x12
	fmul x11, x11, x12
utexture_cont_b854:
# B854
	fle x12, x11, zero
	beq	x10, x12, utexture_bneelse_b856
# B855
	mv x10, x11
	j utexture_cont_b857 # adhoc jump(2)
utexture_bneelse_b856:
# B856
	fsub x10, zero, x11
utexture_cont_b857:
# B857
	fmul x10, x10, x10
	fmul x11, x10, x26
	sw x11, 1(x100)
	fsub x10, x19, x10
	fmul x10, x10, x26
	sw x10, 2(x100)
	ret
utexture_beqelse_b829:
# B829
	li x11, 4
	bne	x10, x11, utexture_beqelse_b859
# B858
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
	beq	x13, zero, utexture_bneelse_b861
# B860
	fdiv x10, x11, x10
	fabs x10, x10
	fle x11, x10, zero
	xori x11, x11, 1
	fabs x13, x10
	fle x29, x15, x13
	bne	x29, zero, utexture_beqelse_b863
# B862
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
	j utexture_cont_b869 # adhoc jump(2)
utexture_beqelse_b863:
# B863
	fle x10, x25, x13
	bne	x10, zero, utexture_beqelse_b865
# B864
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
	j utexture_cont_b866 # adhoc jump(2)
utexture_beqelse_b865:
# B865
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
utexture_cont_b866:
# B866
	bne	x11, zero, utexture_beqelse_b868
# B867
	fsub x10, zero, x10
	j utexture_cont_b869 # adhoc jump(2)
utexture_beqelse_b868:
# B868
utexture_cont_b869:
# B869
	fmul x10, x10, x28
	fdiv x10, x10, x27
	j utexture_cont_b870 # adhoc jump(2)
utexture_bneelse_b861:
# B861
	lui x10, 268032
utexture_cont_b870:
# B870
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
	beq	x13, zero, utexture_bneelse_b872
# B871
	fdiv x11, x11, x12
	fabs x11, x11
	fle x12, x11, zero
	xori x12, x12, 1
	fabs x13, x11
	fle x14, x15, x13
	bne	x14, zero, utexture_beqelse_b874
# B873
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
	j utexture_cont_b880 # adhoc jump(2)
utexture_beqelse_b874:
# B874
	fle x11, x25, x13
	bne	x11, zero, utexture_beqelse_b876
# B875
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
	j utexture_cont_b877 # adhoc jump(2)
utexture_beqelse_b876:
# B876
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
utexture_cont_b877:
# B877
	bne	x12, zero, utexture_beqelse_b879
# B878
	fsub x11, zero, x11
	j utexture_cont_b880 # adhoc jump(2)
utexture_beqelse_b879:
# B879
utexture_cont_b880:
# B880
	fmul x11, x11, x28
	fdiv x11, x11, x27
	j utexture_cont_b881 # adhoc jump(2)
utexture_bneelse_b872:
# B872
	lui x11, 268032
utexture_cont_b881:
# B881
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
	beq	x11, zero, utexture_bneelse_b883
# B882
	mv x12, x10
	j utexture_cont_b884 # adhoc jump(2)
utexture_bneelse_b883:
# B883
	mv x12, zero
utexture_cont_b884:
# B884
	fmul x10, x26, x12
	lui x11, 256410
	addi x11, x11, -1638
	fdiv x10, x10, x11
	sw x10, 2(x100)
	ret
utexture_beqelse_b859:
# B859
	ret
trace_ray.3273:
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
body_trace_ray.3273:
# B885
	mv x103, x6
	mv x105, x66
	mv x104, x7
	mv x101, x5
	mv x102, x65
	j	trace_ray_loop_b886
trace_ray_bneelse_b1836:	#moved
# B1836
	lw x100, 7(x21)
	lw x100, 0(x100)
	fsub x100, x16, x100
	fmul x100, x102, x100
	lw x11, 0(x108)
	fadd x11, x105, x11
	mv x101, x10
	mv x102, x100
	mv x105, x11
trace_ray_loop_b886:
# B886
	li x106, 4
	bgt	x101, x106, trace_ray_bleelse_b888
# B887
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
trace_ray_loop_b889:
# B889
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
	beq	x100, x114, trace_ray_bneelse_b890
# B891
	li x18, 99
	bne	x100, x18, trace_ray_beqelse_b893
# B892
	mv x116, x10
	mv x115, x11
	mv x117, x113
	j	trace_ray_loop_b894
trace_ray_beqelse_b896:	#moved
# B896
	la x100, min_caml_and_net
	add x4, x100, x10
	lw x6, 0(x4)
	mv x7, x117
	mv x5, zero
	addi	x2, x2, 19
	jal	solve_each_element.3224
	addi	x2, x2, -19
	addi x10, x115, 1
	mv x115, x10
trace_ray_loop_b894:
# B894
	add x4, x116, x115
	lw x10, 0(x4)
	bne	x10, x114, trace_ray_beqelse_b896
# B895
	j trace_ray_cont_b975 # adhoc jump(2)
trace_ray_beqelse_b893:
# B893
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
	bne	x19, x11, trace_ray_beqelse_b898
# B897
	lw x15, 0(x113)
	feq x15, x15, zero
	bne	x15, zero, trace_ray_beqelse_b900
# B899
	lw x15, 4(x100)
	lw x16, 6(x100)
	lw x17, 0(x113)
	fle x17, zero, x17
	xori x17, x17, 1
	bne	x16, zero, trace_ray_beqelse_b902
# B901
	mv x16, x17
	j trace_ray_cont_b903 # adhoc jump(2)
trace_ray_beqelse_b902:
# B902
	xori x16, x17, 1
trace_ray_cont_b903:
# B903
	lw x17, 0(x15)
	bne	x16, zero, trace_ray_beqelse_b905
# B904
	fsub x16, zero, x17
	j trace_ray_cont_b906 # adhoc jump(2)
trace_ray_beqelse_b905:
# B905
	mv x16, x17
trace_ray_cont_b906:
# B906
	fsub x16, x16, x13
	lw x17, 0(x113)
	fdiv x16, x16, x17
	lw x17, 1(x113)
	fmul x17, x16, x17
	fadd x17, x17, x18
	fabs x17, x17
	lw x19, 1(x15)
	fle x17, x19, x17
	beq	x17, zero, trace_ray_bneelse_b908
# B907
	mv x15, zero
	j trace_ray_cont_b911 # adhoc jump(2)
trace_ray_bneelse_b908:
# B908
	lw x17, 2(x113)
	fmul x17, x16, x17
	fadd x17, x17, x12
	fabs x17, x17
	lw x15, 2(x15)
	fle x15, x15, x17
	beq	x15, zero, trace_ray_bneelse_b910
# B909
	mv x15, zero
	j trace_ray_cont_b911 # adhoc jump(2)
trace_ray_bneelse_b910:
# B910
	sw x16, 0(x20)
	mv x15, x11
	j trace_ray_cont_b911 # adhoc jump(2)
trace_ray_beqelse_b900:
# B900
	mv x15, zero
trace_ray_cont_b911:
# B911
	bne	x15, zero, trace_ray_beqelse_b913
# B912
	lw x15, 1(x113)
	feq x15, x15, zero
	bne	x15, zero, trace_ray_beqelse_b915
# B914
	lw x15, 4(x100)
	lw x16, 6(x100)
	lw x17, 1(x113)
	fle x17, zero, x17
	xori x17, x17, 1
	bne	x16, zero, trace_ray_beqelse_b917
# B916
	mv x16, x17
	j trace_ray_cont_b918 # adhoc jump(2)
trace_ray_beqelse_b917:
# B917
	xori x16, x17, 1
trace_ray_cont_b918:
# B918
	lw x17, 1(x15)
	bne	x16, zero, trace_ray_beqelse_b920
# B919
	fsub x16, zero, x17
	j trace_ray_cont_b921 # adhoc jump(2)
trace_ray_beqelse_b920:
# B920
	mv x16, x17
trace_ray_cont_b921:
# B921
	fsub x16, x16, x18
	lw x17, 1(x113)
	fdiv x16, x16, x17
	lw x17, 2(x113)
	fmul x17, x16, x17
	fadd x17, x17, x12
	fabs x17, x17
	lw x19, 2(x15)
	fle x17, x19, x17
	beq	x17, zero, trace_ray_bneelse_b923
# B922
	mv x15, zero
	j trace_ray_cont_b926 # adhoc jump(2)
trace_ray_bneelse_b923:
# B923
	lw x17, 0(x113)
	fmul x17, x16, x17
	fadd x17, x17, x13
	fabs x17, x17
	lw x15, 0(x15)
	fle x15, x15, x17
	beq	x15, zero, trace_ray_bneelse_b925
# B924
	mv x15, zero
	j trace_ray_cont_b926 # adhoc jump(2)
trace_ray_bneelse_b925:
# B925
	sw x16, 0(x20)
	mv x15, x11
	j trace_ray_cont_b926 # adhoc jump(2)
trace_ray_beqelse_b915:
# B915
	mv x15, zero
trace_ray_cont_b926:
# B926
	bne	x15, zero, trace_ray_beqelse_b928
# B927
	lw x14, 2(x113)
	feq x14, x14, zero
	bne	x14, zero, trace_ray_beqelse_b930
# B929
	lw x14, 4(x100)
	lw x100, 6(x100)
	lw x15, 2(x113)
	fle x15, zero, x15
	xori x15, x15, 1
	bne	x100, zero, trace_ray_beqelse_b932
# B931
	mv x100, x15
	j trace_ray_cont_b933 # adhoc jump(2)
trace_ray_beqelse_b932:
# B932
	xori x100, x15, 1
trace_ray_cont_b933:
# B933
	lw x15, 2(x14)
	bne	x100, zero, trace_ray_beqelse_b935
# B934
	fsub x100, zero, x15
	j trace_ray_cont_b936 # adhoc jump(2)
trace_ray_beqelse_b935:
# B935
	mv x100, x15
trace_ray_cont_b936:
# B936
	fsub x100, x100, x12
	lw x12, 2(x113)
	fdiv x100, x100, x12
	lw x12, 0(x113)
	fmul x12, x100, x12
	fadd x12, x12, x13
	fabs x12, x12
	lw x13, 0(x14)
	fle x12, x13, x12
	beq	x12, zero, trace_ray_bneelse_b938
# B937
	mv x100, zero
	j trace_ray_cont_b941 # adhoc jump(2)
trace_ray_bneelse_b938:
# B938
	lw x12, 1(x113)
	fmul x12, x100, x12
	fadd x12, x12, x18
	fabs x12, x12
	lw x13, 1(x14)
	fle x12, x13, x12
	beq	x12, zero, trace_ray_bneelse_b940
# B939
	mv x100, zero
	j trace_ray_cont_b941 # adhoc jump(2)
trace_ray_bneelse_b940:
# B940
	sw x100, 0(x20)
	mv x100, x11
	j trace_ray_cont_b941 # adhoc jump(2)
trace_ray_beqelse_b930:
# B930
	mv x100, zero
trace_ray_cont_b941:
# B941
	bne	x100, zero, trace_ray_beqelse_b943
# B942
	mv x100, zero
	j trace_ray_cont_b967 # adhoc jump(2)
trace_ray_beqelse_b943:
# B943
	li x100, 3
	j trace_ray_cont_b967 # adhoc jump(2)
trace_ray_beqelse_b928:
# B928
	mv x100, x14
	j trace_ray_cont_b967 # adhoc jump(2)
trace_ray_beqelse_b913:
# B913
	mv x100, x11
	j trace_ray_cont_b967 # adhoc jump(2)
trace_ray_beqelse_b898:
# B898
	bne	x19, x14, trace_ray_beqelse_b945
# B944
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
	beq	x15, zero, trace_ray_bneelse_b947
# B946
	mv x100, zero
	j trace_ray_cont_b967 # adhoc jump(2)
trace_ray_bneelse_b947:
# B947
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
	j trace_ray_cont_b967 # adhoc jump(2)
trace_ray_beqelse_b945:
# B945
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
	bne	x23, zero, trace_ray_beqelse_b949
# B948
	mv x14, x22
	j trace_ray_cont_b950 # adhoc jump(2)
trace_ray_beqelse_b949:
# B949
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
trace_ray_cont_b950:
# B950
	feq x19, x14, zero
	bne	x19, zero, trace_ray_beqelse_b952
# B951
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
	bne	x24, zero, trace_ray_beqelse_b954
# B953
	mv x15, x23
	j trace_ray_cont_b955 # adhoc jump(2)
trace_ray_beqelse_b954:
# B954
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
trace_ray_cont_b955:
# B955
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
	bne	x21, zero, trace_ray_beqelse_b957
# B956
	mv x12, x19
	j trace_ray_cont_b958 # adhoc jump(2)
trace_ray_beqelse_b957:
# B957
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
trace_ray_cont_b958:
# B958
	lw x13, 1(x100)
	bne	x13, x16, trace_ray_beqelse_b960
# B959
	fsub x12, x12, x17
	j trace_ray_cont_b961 # adhoc jump(2)
trace_ray_beqelse_b960:
# B960
trace_ray_cont_b961:
# B961
	fmul x13, x15, x15
	fmul x12, x14, x12
	fsub x12, x13, x12
	fle x13, x12, zero
	beq	x13, zero, trace_ray_bneelse_b963
# B962
	mv x100, zero
	j trace_ray_cont_b967 # adhoc jump(2)
trace_ray_bneelse_b963:
# B963
	fsqrt x12, x12
	lw x100, 6(x100)
	bne	x100, zero, trace_ray_beqelse_b965
# B964
	fsub x100, zero, x12
	j trace_ray_cont_b966 # adhoc jump(2)
trace_ray_beqelse_b965:
# B965
	mv x100, x12
trace_ray_cont_b966:
# B966
	fsub x100, x100, x15
	fdiv x100, x100, x14
	sw x100, 0(x20)
	mv x100, x11
	j trace_ray_cont_b967 # adhoc jump(2)
trace_ray_beqelse_b952:
# B952
	mv x100, zero
trace_ray_cont_b967:
# B967
	beq	x100, zero, trace_ray_bneelse_b968
# B969
	lw x100, 0(x20)
	lw x12, 0(x108)
	fle x100, x12, x100
	bne	x100, zero, trace_ray_beqelse_b970
# B971
	mv x116, x10
	mv x115, x11
	mv x117, x113
	j	trace_ray_loop_b972
trace_ray_beqelse_b974:	#moved
# B974
	la x100, min_caml_and_net
	add x4, x100, x10
	lw x6, 0(x4)
	mv x7, x117
	mv x5, zero
	addi	x2, x2, 19
	jal	solve_each_element.3224
	addi	x2, x2, -19
	addi x10, x115, 1
	mv x115, x10
trace_ray_loop_b972:
# B972
	add x4, x116, x115
	lw x10, 0(x4)
	bne	x10, x114, trace_ray_beqelse_b974
# B973
trace_ray_beqelse_b970:
# B970
trace_ray_bneelse_b968:
# B968
trace_ray_cont_b975:
# B975
	addi x10, x111, 1
	mv x111, x10
	j	trace_ray_loop_b889
trace_ray_bneelse_b890:
# B890
# B976
	lw x10, 0(x108)
	lui x100, 777421
	addi x100, x100, -819
	fle x18, x10, x100
	lui x19, 314348
	addi x19, x19, -992
	beq	x18, zero, trace_ray_bneelse_b978
# B977
	mv x10, zero
	j trace_ray_cont_b979 # adhoc jump(2)
trace_ray_bneelse_b978:
# B978
	fle x10, x19, x10
	xori x10, x10, 1
trace_ray_cont_b979:
# B979
	la x18, min_caml_rgb
	bne	x10, zero, trace_ray_beqelse_b981
# B980
	add x4, x107, x101
	sw x114, 0(x4)
	bne	x101, zero, trace_ray_beqelse_b983
# B982
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
trace_ray_beqelse_b983:
# B983
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
	beq	x100, zero, trace_ray_bneelse_b985
# B984
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
trace_ray_bneelse_b985:
# B985
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
trace_ray_beqelse_b981:
# B981
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
	bne	x24, x11, trace_ray_beqelse_b987
# B986
	lw x24, 0(x25)
	sw zero, 0(x26)
	sw zero, 1(x26)
	sw zero, 2(x26)
	addi x24, x24, -1
	add x4, x103, x24
	lw x28, 0(x4)
	feq x29, x28, zero
	bne	x29, zero, trace_ray_beqelse_b989
# B988
	fle x28, x28, zero
	beq	x28, zero, trace_ray_bneelse_b991
# B990
	lui x28, 784384
	j trace_ray_cont_b992 # adhoc jump(2)
trace_ray_bneelse_b991:
# B991
	mv x28, x17
	j trace_ray_cont_b992 # adhoc jump(2)
trace_ray_beqelse_b989:
# B989
	mv x28, zero
trace_ray_cont_b992:
# B992
	fsub x28, zero, x28
	add x4, x26, x24
	sw x28, 0(x4)
	j trace_ray_cont_b1003 # adhoc jump(2)
trace_ray_beqelse_b987:
# B987
	bne	x24, x14, trace_ray_beqelse_b994
# B993
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
	j trace_ray_cont_b1003 # adhoc jump(2)
trace_ray_beqelse_b994:
# B994
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
	bne	x33, zero, trace_ray_beqelse_b996
# B995
	sw x30, 0(x26)
	sw x31, 1(x26)
	sw x32, 2(x26)
	j trace_ray_cont_b997 # adhoc jump(2)
trace_ray_beqelse_b996:
# B996
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
trace_ray_cont_b997:
# B997
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
	bne	x29, zero, trace_ray_beqelse_b999
# B998
	bne	x24, zero, trace_ray_beqelse_b1001
# B1000
	fdiv x24, x17, x28
	j trace_ray_cont_b1002 # adhoc jump(2)
trace_ray_beqelse_b1001:
# B1001
	lui x24, 784384
	fdiv x24, x24, x28
	j trace_ray_cont_b1002 # adhoc jump(2)
trace_ray_beqelse_b999:
# B999
	mv x24, x17
trace_ray_cont_b1002:
# B1002
	lw x28, 0(x26)
	fmul x28, x28, x24
	sw x28, 0(x26)
	lw x28, 1(x26)
	fmul x28, x28, x24
	sw x28, 1(x26)
	lw x28, 2(x26)
	fmul x24, x28, x24
	sw x24, 2(x26)
trace_ray_cont_b1003:
# B1003
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
	bne	x12, x11, trace_ray_beqelse_b1005
# B1004
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
	bne	x12, zero, trace_ray_beqelse_b1007
# B1006
	bne	x16, zero, trace_ray_beqelse_b1009
# B1008
	lui x12, 276464
	j trace_ray_cont_b1012 # adhoc jump(2)
trace_ray_beqelse_b1009:
# B1009
	mv x12, zero
	j trace_ray_cont_b1012 # adhoc jump(2)
trace_ray_beqelse_b1007:
# B1007
	bne	x16, zero, trace_ray_beqelse_b1011
# B1010
	mv x12, zero
	j trace_ray_cont_b1012 # adhoc jump(2)
trace_ray_beqelse_b1011:
# B1011
	lui x12, 276464
trace_ray_cont_b1012:
# B1012
	sw x12, 1(x24)
	j trace_ray_cont_b1097 # adhoc jump(2)
trace_ray_beqelse_b1005:
# B1005
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
	bne	x12, x14, trace_ray_beqelse_b1014
# B1013
	lw x12, 1(x27)
	lui x16, 256000
	fmul x12, x12, x16
	fle x16, x12, zero
	xori x16, x16, 1
	fabs x12, x12
	mv x28, x12
	mv x5, x29
	j	trace_ray_loop_b1015
trace_ray_bneelse_b1016:	#moved
# B1016
	fmul x5, x5, x30
trace_ray_loop_b1015:
# B1015
	fle x6, x28, x5
	beq	x6, zero, trace_ray_bneelse_b1016
# B1017
# B1018
	mv x65, x12
	mv x66, x5
	j	trace_ray_loop_b1019
trace_ray_beqelse_b1023:	#moved
# B1023
	fdiv x12, x66, x30
	mv x66, x12
trace_ray_loop_b1019:
# B1019
	fle x12, x29, x65
	beq	x12, zero, trace_ray_bneelse_b1020
# B1021
	fle x12, x65, x66
	bne	x12, zero, trace_ray_beqelse_b1023
# B1022
	fsub x12, x65, x66
	fdiv x28, x66, x30
	mv x65, x12
	mv x66, x28
	j	trace_ray_loop_b1019
trace_ray_bneelse_b1020:
# B1020
# B1024
	fle x12, x31, x65
	bne	x12, zero, trace_ray_beqelse_b1026
# B1025
	mv x28, x65
	j trace_ray_cont_b1027 # adhoc jump(2)
trace_ray_beqelse_b1026:
# B1026
	fsub x28, x65, x31
trace_ray_cont_b1027:
# B1027
	bne	x12, zero, trace_ray_beqelse_b1029
# B1028
	mv x12, x16
	j trace_ray_cont_b1030 # adhoc jump(2)
trace_ray_beqelse_b1029:
# B1029
	xori x12, x16, 1
trace_ray_cont_b1030:
# B1030
	fle x16, x32, x28
	bne	x16, zero, trace_ray_beqelse_b1032
# B1031
	mv x16, x28
	j trace_ray_cont_b1033 # adhoc jump(2)
trace_ray_beqelse_b1032:
# B1032
	fsub x16, x31, x28
trace_ray_cont_b1033:
# B1033
	fle x28, x33, x16
	bne	x28, zero, trace_ray_beqelse_b1035
# B1034
	fmul x28, x16, x16
	fmul x29, x28, x36
	fadd x29, x35, x29
	fmul x29, x28, x29
	fadd x29, x34, x29
	fmul x28, x28, x29
	fadd x28, x17, x28
	fmul x16, x16, x28
	j trace_ray_cont_b1036 # adhoc jump(2)
trace_ray_beqelse_b1035:
# B1035
	fsub x16, x32, x16
	fmul x16, x16, x16
	fmul x28, x16, x39
	fadd x28, x38, x28
	fmul x28, x16, x28
	fadd x28, x37, x28
	fmul x16, x16, x28
	fadd x16, x17, x16
trace_ray_cont_b1036:
# B1036
	fle x28, x16, zero
	beq	x12, x28, trace_ray_bneelse_b1038
# B1037
	mv x12, x16
	j trace_ray_cont_b1039 # adhoc jump(2)
trace_ray_bneelse_b1038:
# B1038
	fsub x12, zero, x16
trace_ray_cont_b1039:
# B1039
	fmul x12, x12, x12
	fmul x16, x40, x12
	sw x16, 0(x24)
	fsub x12, x17, x12
	fmul x12, x40, x12
	sw x12, 1(x24)
	j trace_ray_cont_b1097 # adhoc jump(2)
trace_ray_beqelse_b1014:
# B1014
	lui x5, 263313
	addi x5, x5, -37
	bne	x12, x16, trace_ray_beqelse_b1041
# B1040
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
	j	trace_ray_loop_b1042
trace_ray_bneelse_b1043:	#moved
# B1043
	fmul x28, x28, x30
trace_ray_loop_b1042:
# B1042
	fle x5, x16, x28
	beq	x5, zero, trace_ray_bneelse_b1043
# B1044
# B1045
	mv x6, x12
	mv x65, x28
	j	trace_ray_loop_b1046
trace_ray_beqelse_b1050:	#moved
# B1050
	fdiv x12, x65, x30
	mv x65, x12
trace_ray_loop_b1046:
# B1046
	fle x12, x29, x6
	beq	x12, zero, trace_ray_bneelse_b1047
# B1048
	fle x12, x6, x65
	bne	x12, zero, trace_ray_beqelse_b1050
# B1049
	fsub x12, x6, x65
	fdiv x16, x65, x30
	mv x65, x16
	mv x6, x12
	j	trace_ray_loop_b1046
trace_ray_bneelse_b1047:
# B1047
# B1051
	fle x12, x31, x6
	bne	x12, zero, trace_ray_beqelse_b1053
# B1052
	mv x16, x6
	j trace_ray_cont_b1054 # adhoc jump(2)
trace_ray_beqelse_b1053:
# B1053
	fsub x16, x6, x31
trace_ray_cont_b1054:
# B1054
	bne	x12, zero, trace_ray_beqelse_b1056
# B1055
	mv x28, x11
	j trace_ray_cont_b1057 # adhoc jump(2)
trace_ray_beqelse_b1056:
# B1056
	mv x28, zero
trace_ray_cont_b1057:
# B1057
	fle x12, x32, x16
	bne	x12, zero, trace_ray_beqelse_b1059
# B1058
	j trace_ray_cont_b1060 # adhoc jump(2)
trace_ray_beqelse_b1059:
# B1059
	fsub x16, x31, x16
trace_ray_cont_b1060:
# B1060
	bne	x12, zero, trace_ray_beqelse_b1062
# B1061
	mv x12, x28
	j trace_ray_cont_b1063 # adhoc jump(2)
trace_ray_beqelse_b1062:
# B1062
	xori x12, x28, 1
trace_ray_cont_b1063:
# B1063
	fle x28, x33, x16
	bne	x28, zero, trace_ray_beqelse_b1065
# B1064
	fmul x16, x16, x16
	fmul x28, x16, x39
	fadd x28, x38, x28
	fmul x28, x16, x28
	fadd x28, x37, x28
	fmul x16, x16, x28
	fadd x16, x17, x16
	j trace_ray_cont_b1066 # adhoc jump(2)
trace_ray_beqelse_b1065:
# B1065
	fsub x16, x32, x16
	fmul x28, x16, x16
	fmul x29, x28, x36
	fadd x29, x35, x29
	fmul x29, x28, x29
	fadd x29, x34, x29
	fmul x28, x28, x29
	fadd x28, x17, x28
	fmul x16, x16, x28
trace_ray_cont_b1066:
# B1066
	fle x28, x16, zero
	beq	x12, x28, trace_ray_bneelse_b1068
# B1067
	mv x12, x16
	j trace_ray_cont_b1069 # adhoc jump(2)
trace_ray_bneelse_b1068:
# B1068
	fsub x12, zero, x16
trace_ray_cont_b1069:
# B1069
	fmul x12, x12, x12
	fmul x16, x12, x40
	sw x16, 1(x24)
	fsub x12, x17, x12
	fmul x12, x12, x40
	sw x12, 2(x24)
	j trace_ray_cont_b1097 # adhoc jump(2)
trace_ray_beqelse_b1041:
# B1041
	bne	x12, x106, trace_ray_beqelse_b1071
# B1070
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
	beq	x29, zero, trace_ray_bneelse_b1073
# B1072
	fdiv x12, x16, x12
	fabs x12, x12
	fle x16, x12, zero
	xori x16, x16, 1
	fabs x29, x12
	fle x66, x31, x29
	bne	x66, zero, trace_ray_beqelse_b1075
# B1074
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
	j trace_ray_cont_b1081 # adhoc jump(2)
trace_ray_beqelse_b1075:
# B1075
	fle x12, x6, x29
	bne	x12, zero, trace_ray_beqelse_b1077
# B1076
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
	j trace_ray_cont_b1078 # adhoc jump(2)
trace_ray_beqelse_b1077:
# B1077
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
trace_ray_cont_b1078:
# B1078
	bne	x16, zero, trace_ray_beqelse_b1080
# B1079
	fsub x12, zero, x12
	j trace_ray_cont_b1081 # adhoc jump(2)
trace_ray_beqelse_b1080:
# B1080
trace_ray_cont_b1081:
# B1081
	fmul x12, x12, x65
	fdiv x12, x12, x5
	j trace_ray_cont_b1082 # adhoc jump(2)
trace_ray_bneelse_b1073:
# B1073
	lui x12, 268032
trace_ray_cont_b1082:
# B1082
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
	beq	x29, zero, trace_ray_bneelse_b1084
# B1083
	fdiv x16, x16, x28
	fabs x16, x16
	fle x28, x16, zero
	xori x28, x28, 1
	fabs x29, x16
	fle x30, x31, x29
	bne	x30, zero, trace_ray_beqelse_b1086
# B1085
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
	j trace_ray_cont_b1092 # adhoc jump(2)
trace_ray_beqelse_b1086:
# B1086
	fle x16, x6, x29
	bne	x16, zero, trace_ray_beqelse_b1088
# B1087
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
	j trace_ray_cont_b1089 # adhoc jump(2)
trace_ray_beqelse_b1088:
# B1088
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
trace_ray_cont_b1089:
# B1089
	bne	x28, zero, trace_ray_beqelse_b1091
# B1090
	fsub x16, zero, x16
	j trace_ray_cont_b1092 # adhoc jump(2)
trace_ray_beqelse_b1091:
# B1091
trace_ray_cont_b1092:
# B1092
	fmul x16, x16, x65
	fdiv x16, x16, x5
	j trace_ray_cont_b1093 # adhoc jump(2)
trace_ray_bneelse_b1084:
# B1084
	lui x16, 268032
trace_ray_cont_b1093:
# B1093
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
	beq	x16, zero, trace_ray_bneelse_b1095
# B1094
	mv x28, x12
	j trace_ray_cont_b1096 # adhoc jump(2)
trace_ray_bneelse_b1095:
# B1095
	mv x28, zero
trace_ray_cont_b1096:
# B1096
	fmul x12, x40, x28
	lui x16, 256410
	addi x16, x16, -1638
	fdiv x12, x12, x16
	sw x12, 2(x24)
trace_ray_beqelse_b1071:
# B1071
trace_ray_cont_b1097:
# B1097
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
	beq	x15, zero, trace_ray_bneelse_b1099
# B1098
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
	j trace_ray_cont_b1100 # adhoc jump(2)
trace_ray_bneelse_b1099:
# B1099
	add x4, x12, x101
	sw zero, 0(x4)
trace_ray_cont_b1100:
# B1100
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
	j	trace_ray_loop_b1101
trace_ray_bneelse_b1336:	#moved
# B1336
trace_ray_loop_b1101:
# B1101
	add x4, x17, x16
	lw x15, 0(x4)
	lw x20, 0(x15)
	li x28, -1
	la x29, min_caml_light
	bne	x20, x28, trace_ray_beqelse_b1103
# B1102
	mv x15, zero
	j trace_ray_cont_b1338 # adhoc jump(2)
trace_ray_beqelse_b1103:
# B1103
	li x30, 99
	bne	x20, x30, trace_ray_beqelse_b1105
# B1104
	li x20, 1
	j trace_ray_cont_b1243 # adhoc jump(2)
trace_ray_beqelse_b1105:
# B1105
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
	bne	x35, x11, trace_ray_beqelse_b1107
# B1106
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
	beq	x37, zero, trace_ray_bneelse_b1109
# B1108
	mv x37, zero
	j trace_ray_cont_b1112 # adhoc jump(2)
trace_ray_bneelse_b1109:
# B1109
	lw x37, 2(x35)
	fmul x37, x36, x37
	fadd x37, x37, x34
	fabs x37, x37
	lw x38, 4(x31)
	lw x38, 2(x38)
	fle x37, x38, x37
	beq	x37, zero, trace_ray_bneelse_b1111
# B1110
	mv x37, zero
	j trace_ray_cont_b1112 # adhoc jump(2)
trace_ray_bneelse_b1111:
# B1111
	lw x37, 1(x20)
	feq x37, x37, zero
	xori x37, x37, 1
trace_ray_cont_b1112:
# B1112
	bne	x37, zero, trace_ray_beqelse_b1114
# B1113
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
	beq	x37, zero, trace_ray_bneelse_b1116
# B1115
	mv x37, zero
	j trace_ray_cont_b1119 # adhoc jump(2)
trace_ray_bneelse_b1116:
# B1116
	lw x37, 2(x35)
	fmul x37, x36, x37
	fadd x37, x37, x34
	fabs x37, x37
	lw x38, 4(x31)
	lw x38, 2(x38)
	fle x37, x38, x37
	beq	x37, zero, trace_ray_bneelse_b1118
# B1117
	mv x37, zero
	j trace_ray_cont_b1119 # adhoc jump(2)
trace_ray_bneelse_b1118:
# B1118
	lw x37, 3(x20)
	feq x37, x37, zero
	xori x37, x37, 1
trace_ray_cont_b1119:
# B1119
	bne	x37, zero, trace_ray_beqelse_b1121
# B1120
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
	beq	x32, zero, trace_ray_bneelse_b1123
# B1122
	mv x20, zero
	j trace_ray_cont_b1126 # adhoc jump(2)
trace_ray_bneelse_b1123:
# B1123
	lw x32, 1(x35)
	fmul x32, x34, x32
	fadd x32, x32, x33
	fabs x32, x32
	lw x31, 4(x31)
	lw x31, 1(x31)
	fle x31, x31, x32
	beq	x31, zero, trace_ray_bneelse_b1125
# B1124
	mv x20, zero
	j trace_ray_cont_b1126 # adhoc jump(2)
trace_ray_bneelse_b1125:
# B1125
	lw x20, 5(x20)
	feq x20, x20, zero
	xori x20, x20, 1
trace_ray_cont_b1126:
# B1126
	bne	x20, zero, trace_ray_beqelse_b1128
# B1127
	mv x20, zero
	j trace_ray_cont_b1146 # adhoc jump(2)
trace_ray_beqelse_b1128:
# B1128
	la x20, min_caml_solver_dist
	sw x34, 0(x20)
	li x20, 3
	j trace_ray_cont_b1146 # adhoc jump(2)
trace_ray_beqelse_b1121:
# B1121
	la x20, min_caml_solver_dist
	sw x36, 0(x20)
	li x20, 2
	j trace_ray_cont_b1146 # adhoc jump(2)
trace_ray_beqelse_b1114:
# B1114
	la x20, min_caml_solver_dist
	sw x36, 0(x20)
	li x20, 1
	j trace_ray_cont_b1146 # adhoc jump(2)
trace_ray_beqelse_b1107:
# B1107
	bne	x35, x14, trace_ray_beqelse_b1130
# B1129
	lw x31, 0(x20)
	fle x31, zero, x31
	beq	x31, zero, trace_ray_bneelse_b1132
# B1131
	mv x20, zero
	j trace_ray_cont_b1146 # adhoc jump(2)
trace_ray_bneelse_b1132:
# B1132
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
	li x20, 1
	j trace_ray_cont_b1146 # adhoc jump(2)
trace_ray_beqelse_b1130:
# B1130
	lw x35, 0(x20)
	feq x36, x35, zero
	bne	x36, zero, trace_ray_beqelse_b1134
# B1133
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
	bne	x39, zero, trace_ray_beqelse_b1136
# B1135
	mv x32, x38
	j trace_ray_cont_b1137 # adhoc jump(2)
trace_ray_beqelse_b1136:
# B1136
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
trace_ray_cont_b1137:
# B1137
	lw x33, 1(x31)
	bne	x33, x37, trace_ray_beqelse_b1139
# B1138
	lui x33, 260096
	fsub x32, x32, x33
	j trace_ray_cont_b1140 # adhoc jump(2)
trace_ray_beqelse_b1139:
# B1139
trace_ray_cont_b1140:
# B1140
	fmul x33, x36, x36
	fmul x32, x35, x32
	fsub x32, x33, x32
	fle x33, x32, zero
	beq	x33, zero, trace_ray_bneelse_b1142
# B1141
	mv x20, zero
	j trace_ray_cont_b1146 # adhoc jump(2)
trace_ray_bneelse_b1142:
# B1142
	lw x31, 6(x31)
	bne	x31, zero, trace_ray_beqelse_b1144
# B1143
	la x31, min_caml_solver_dist
	fsqrt x32, x32
	fsub x32, x36, x32
	lw x20, 4(x20)
	fmul x20, x32, x20
	sw x20, 0(x31)
	j trace_ray_cont_b1145 # adhoc jump(2)
trace_ray_beqelse_b1144:
# B1144
	la x31, min_caml_solver_dist
	fsqrt x32, x32
	fadd x32, x36, x32
	lw x20, 4(x20)
	fmul x20, x32, x20
	sw x20, 0(x31)
trace_ray_cont_b1145:
# B1145
	li x20, 1
	j trace_ray_cont_b1146 # adhoc jump(2)
trace_ray_beqelse_b1134:
# B1134
	mv x20, zero
trace_ray_cont_b1146:
# B1146
	bne	x20, zero, trace_ray_beqelse_b1148
# B1147
	mv x20, zero
	j trace_ray_cont_b1243 # adhoc jump(2)
trace_ray_beqelse_b1148:
# B1148
	la x20, min_caml_solver_dist
	lw x31, 0(x20)
	fle x31, x100, x31
	beq	x31, zero, trace_ray_bneelse_b1150
# B1149
	mv x20, zero
	j trace_ray_cont_b1243 # adhoc jump(2)
trace_ray_bneelse_b1150:
# B1150
	mv x33, x15
	mv x32, x11
	j	trace_ray_loop_b1151
trace_ray_bneelse_b1238:	#moved
# B1238
	addi x31, x32, 1
	mv x32, x31
trace_ray_loop_b1151:
# B1151
	add x4, x33, x32
	lw x31, 0(x4)
	bne	x31, x28, trace_ray_beqelse_b1153
# B1152
	mv x31, zero
	j trace_ray_cont_b1240 # adhoc jump(2)
trace_ray_beqelse_b1153:
# B1153
	la x34, min_caml_and_net
	add x4, x34, x31
	lw x31, 0(x4)
	mv x35, x31
	mv x34, zero
	j	trace_ray_loop_b1154
trace_ray_bneelse_b1235:	#moved
# B1235
trace_ray_loop_b1154:
# B1154
	add x4, x35, x34
	lw x31, 0(x4)
	bne	x31, x28, trace_ray_beqelse_b1156
# B1155
	mv x31, zero
	j trace_ray_cont_b1237 # adhoc jump(2)
trace_ray_beqelse_b1156:
# B1156
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
	bne	x5, x11, trace_ray_beqelse_b1158
# B1157
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
	beq	x65, zero, trace_ray_bneelse_b1160
# B1159
	mv x65, zero
	j trace_ray_cont_b1163 # adhoc jump(2)
trace_ray_bneelse_b1160:
# B1160
	lw x65, 2(x5)
	fmul x65, x6, x65
	fadd x65, x65, x39
	fabs x65, x65
	lw x66, 4(x36)
	lw x66, 2(x66)
	fle x65, x66, x65
	beq	x65, zero, trace_ray_bneelse_b1162
# B1161
	mv x65, zero
	j trace_ray_cont_b1163 # adhoc jump(2)
trace_ray_bneelse_b1162:
# B1162
	lw x65, 1(x40)
	feq x65, x65, zero
	xori x65, x65, 1
trace_ray_cont_b1163:
# B1163
	bne	x65, zero, trace_ray_beqelse_b1165
# B1164
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
	beq	x65, zero, trace_ray_bneelse_b1167
# B1166
	mv x65, zero
	j trace_ray_cont_b1170 # adhoc jump(2)
trace_ray_bneelse_b1167:
# B1167
	lw x65, 2(x5)
	fmul x65, x6, x65
	fadd x65, x65, x39
	fabs x65, x65
	lw x66, 4(x36)
	lw x66, 2(x66)
	fle x65, x66, x65
	beq	x65, zero, trace_ray_bneelse_b1169
# B1168
	mv x65, zero
	j trace_ray_cont_b1170 # adhoc jump(2)
trace_ray_bneelse_b1169:
# B1169
	lw x65, 3(x40)
	feq x65, x65, zero
	xori x65, x65, 1
trace_ray_cont_b1170:
# B1170
	bne	x65, zero, trace_ray_beqelse_b1172
# B1171
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
	beq	x37, zero, trace_ray_bneelse_b1174
# B1173
	mv x36, zero
	j trace_ray_cont_b1177 # adhoc jump(2)
trace_ray_bneelse_b1174:
# B1174
	lw x37, 1(x5)
	fmul x37, x39, x37
	fadd x37, x37, x38
	fabs x37, x37
	lw x36, 4(x36)
	lw x36, 1(x36)
	fle x36, x36, x37
	beq	x36, zero, trace_ray_bneelse_b1176
# B1175
	mv x36, zero
	j trace_ray_cont_b1177 # adhoc jump(2)
trace_ray_bneelse_b1176:
# B1176
	lw x36, 5(x40)
	feq x36, x36, zero
	xori x36, x36, 1
trace_ray_cont_b1177:
# B1177
	bne	x36, zero, trace_ray_beqelse_b1179
# B1178
	mv x36, zero
	j trace_ray_cont_b1197 # adhoc jump(2)
trace_ray_beqelse_b1179:
# B1179
	sw x39, 0(x20)
	li x36, 3
	j trace_ray_cont_b1197 # adhoc jump(2)
trace_ray_beqelse_b1172:
# B1172
	sw x6, 0(x20)
	li x36, 2
	j trace_ray_cont_b1197 # adhoc jump(2)
trace_ray_beqelse_b1165:
# B1165
	sw x6, 0(x20)
	li x36, 1
	j trace_ray_cont_b1197 # adhoc jump(2)
trace_ray_beqelse_b1158:
# B1158
	bne	x5, x14, trace_ray_beqelse_b1181
# B1180
	lw x36, 0(x40)
	fle x36, zero, x36
	beq	x36, zero, trace_ray_bneelse_b1183
# B1182
	mv x36, zero
	j trace_ray_cont_b1197 # adhoc jump(2)
trace_ray_bneelse_b1183:
# B1183
	lw x36, 1(x40)
	fmul x36, x36, x37
	lw x37, 2(x40)
	fmul x37, x37, x38
	fadd x36, x36, x37
	lw x37, 3(x40)
	fmul x37, x37, x39
	fadd x36, x36, x37
	sw x36, 0(x20)
	li x36, 1
	j trace_ray_cont_b1197 # adhoc jump(2)
trace_ray_beqelse_b1181:
# B1181
	lw x5, 0(x40)
	feq x6, x5, zero
	bne	x6, zero, trace_ray_beqelse_b1185
# B1184
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
	bne	x67, zero, trace_ray_beqelse_b1187
# B1186
	mv x37, x66
	j trace_ray_cont_b1188 # adhoc jump(2)
trace_ray_beqelse_b1187:
# B1187
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
trace_ray_cont_b1188:
# B1188
	lw x38, 1(x36)
	bne	x38, x65, trace_ray_beqelse_b1190
# B1189
	lui x38, 260096
	fsub x37, x37, x38
	j trace_ray_cont_b1191 # adhoc jump(2)
trace_ray_beqelse_b1190:
# B1190
trace_ray_cont_b1191:
# B1191
	fmul x38, x6, x6
	fmul x37, x5, x37
	fsub x37, x38, x37
	fle x38, x37, zero
	beq	x38, zero, trace_ray_bneelse_b1193
# B1192
	mv x36, zero
	j trace_ray_cont_b1197 # adhoc jump(2)
trace_ray_bneelse_b1193:
# B1193
	lw x36, 6(x36)
	bne	x36, zero, trace_ray_beqelse_b1195
# B1194
	fsqrt x36, x37
	fsub x36, x6, x36
	lw x37, 4(x40)
	fmul x36, x36, x37
	sw x36, 0(x20)
	j trace_ray_cont_b1196 # adhoc jump(2)
trace_ray_beqelse_b1195:
# B1195
	fsqrt x36, x37
	fadd x36, x6, x36
	lw x37, 4(x40)
	fmul x36, x36, x37
	sw x36, 0(x20)
trace_ray_cont_b1196:
# B1196
	li x36, 1
	j trace_ray_cont_b1197 # adhoc jump(2)
trace_ray_beqelse_b1185:
# B1185
	mv x36, zero
trace_ray_cont_b1197:
# B1197
	lw x37, 0(x20)
	bne	x36, zero, trace_ray_beqelse_b1199
# B1198
	mv x36, zero
	j trace_ray_cont_b1200 # adhoc jump(2)
trace_ray_beqelse_b1199:
# B1199
	lui x36, 779469
	addi x36, x36, -819
	fle x36, x36, x37
	xori x36, x36, 1
trace_ray_cont_b1200:
# B1200
	addi x34, x34, 1
	bne	x36, zero, trace_ray_beqelse_b1202
# B1201
	add x4, x13, x31
	lw x31, 0(x4)
	lw x31, 6(x31)
	bne	x31, zero, trace_ray_beqelse_b1204
# B1203
	mv x31, zero
	j trace_ray_cont_b1237 # adhoc jump(2)
trace_ray_beqelse_b1204:
# B1204
	j	trace_ray_loop_b1154
trace_ray_beqelse_b1202:
# B1202
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
	j	trace_ray_loop_b1205
trace_ray_bneelse_b1232:	#moved
# B1232
	addi x31, x36, 1
	mv x36, x31
trace_ray_loop_b1205:
# B1205
	add x4, x39, x36
	lw x31, 0(x4)
	bne	x31, x28, trace_ray_beqelse_b1207
# B1206
	li x31, 1
	j trace_ray_cont_b1234 # adhoc jump(2)
trace_ray_beqelse_b1207:
# B1207
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
	bne	x66, x11, trace_ray_beqelse_b1209
# B1208
	fabs x37, x37
	lw x66, 4(x31)
	lw x66, 0(x66)
	fle x37, x66, x37
	beq	x37, zero, trace_ray_bneelse_b1211
# B1210
	mv x37, zero
	j trace_ray_cont_b1214 # adhoc jump(2)
trace_ray_bneelse_b1211:
# B1211
	fabs x37, x38
	lw x38, 4(x31)
	lw x38, 1(x38)
	fle x37, x38, x37
	beq	x37, zero, trace_ray_bneelse_b1213
# B1212
	mv x37, zero
	j trace_ray_cont_b1214 # adhoc jump(2)
trace_ray_bneelse_b1213:
# B1213
	fabs x37, x65
	lw x38, 4(x31)
	lw x38, 2(x38)
	fle x37, x38, x37
	xori x37, x37, 1
trace_ray_cont_b1214:
# B1214
	bne	x37, zero, trace_ray_beqelse_b1216
# B1215
	lw x31, 6(x31)
	xori x31, x31, 1
	j trace_ray_cont_b1231 # adhoc jump(2)
trace_ray_beqelse_b1216:
# B1216
	lw x31, 6(x31)
	j trace_ray_cont_b1231 # adhoc jump(2)
trace_ray_beqelse_b1209:
# B1209
	bne	x66, x14, trace_ray_beqelse_b1218
# B1217
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
	bne	x31, zero, trace_ray_beqelse_b1220
# B1219
	mv x31, x37
	j trace_ray_cont_b1221 # adhoc jump(2)
trace_ray_beqelse_b1220:
# B1220
	xori x31, x37, 1
trace_ray_cont_b1221:
# B1221
	xori x31, x31, 1
	j trace_ray_cont_b1231 # adhoc jump(2)
trace_ray_beqelse_b1218:
# B1218
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
	bne	x67, zero, trace_ray_beqelse_b1223
# B1222
	mv x37, x66
	j trace_ray_cont_b1224 # adhoc jump(2)
trace_ray_beqelse_b1223:
# B1223
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
trace_ray_cont_b1224:
# B1224
	lw x38, 1(x31)
	li x65, 3
	bne	x38, x65, trace_ray_beqelse_b1226
# B1225
	lui x38, 260096
	fsub x37, x37, x38
	j trace_ray_cont_b1227 # adhoc jump(2)
trace_ray_beqelse_b1226:
# B1226
trace_ray_cont_b1227:
# B1227
	lw x31, 6(x31)
	fle x37, zero, x37
	xori x37, x37, 1
	bne	x31, zero, trace_ray_beqelse_b1229
# B1228
	mv x31, x37
	j trace_ray_cont_b1230 # adhoc jump(2)
trace_ray_beqelse_b1229:
# B1229
	xori x31, x37, 1
trace_ray_cont_b1230:
# B1230
	xori x31, x31, 1
trace_ray_cont_b1231:
# B1231
	beq	x31, zero, trace_ray_bneelse_b1232
# B1233
	mv x31, zero
trace_ray_cont_b1234:
# B1234
	beq	x31, zero, trace_ray_bneelse_b1235
# B1236
	mv x31, x11
trace_ray_cont_b1237:
# B1237
	beq	x31, zero, trace_ray_bneelse_b1238
# B1239
	mv x31, x11
trace_ray_cont_b1240:
# B1240
	bne	x31, zero, trace_ray_beqelse_b1242
# B1241
	mv x20, zero
	j trace_ray_cont_b1243 # adhoc jump(2)
trace_ray_beqelse_b1242:
# B1242
	mv x20, x11
trace_ray_cont_b1243:
# B1243
	addi x16, x16, 1
	beq	x20, zero, trace_ray_bneelse_b1244
# B1245
	mv x31, x15
	mv x30, x11
	j	trace_ray_loop_b1246
trace_ray_bneelse_b1333:	#moved
# B1333
	addi x15, x30, 1
	mv x30, x15
trace_ray_loop_b1246:
# B1246
	add x4, x31, x30
	lw x15, 0(x4)
	bne	x15, x28, trace_ray_beqelse_b1248
# B1247
	mv x15, zero
	j trace_ray_cont_b1335 # adhoc jump(2)
trace_ray_beqelse_b1248:
# B1248
	la x20, min_caml_and_net
	add x4, x20, x15
	lw x15, 0(x4)
	mv x32, x15
	mv x20, zero
	j	trace_ray_loop_b1249
trace_ray_bneelse_b1330:	#moved
# B1330
trace_ray_loop_b1249:
# B1249
	add x4, x32, x20
	lw x15, 0(x4)
	bne	x15, x28, trace_ray_beqelse_b1251
# B1250
	mv x15, zero
	j trace_ray_cont_b1332 # adhoc jump(2)
trace_ray_beqelse_b1251:
# B1251
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
	bne	x39, x11, trace_ray_beqelse_b1253
# B1252
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
	beq	x40, zero, trace_ray_bneelse_b1255
# B1254
	mv x40, zero
	j trace_ray_cont_b1258 # adhoc jump(2)
trace_ray_bneelse_b1255:
# B1255
	lw x40, 2(x33)
	fmul x40, x39, x40
	fadd x40, x40, x37
	fabs x40, x40
	lw x5, 4(x34)
	lw x5, 2(x5)
	fle x40, x5, x40
	beq	x40, zero, trace_ray_bneelse_b1257
# B1256
	mv x40, zero
	j trace_ray_cont_b1258 # adhoc jump(2)
trace_ray_bneelse_b1257:
# B1257
	lw x40, 1(x38)
	feq x40, x40, zero
	xori x40, x40, 1
trace_ray_cont_b1258:
# B1258
	bne	x40, zero, trace_ray_beqelse_b1260
# B1259
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
	beq	x40, zero, trace_ray_bneelse_b1262
# B1261
	mv x40, zero
	j trace_ray_cont_b1265 # adhoc jump(2)
trace_ray_bneelse_b1262:
# B1262
	lw x40, 2(x33)
	fmul x40, x39, x40
	fadd x40, x40, x37
	fabs x40, x40
	lw x5, 4(x34)
	lw x5, 2(x5)
	fle x40, x5, x40
	beq	x40, zero, trace_ray_bneelse_b1264
# B1263
	mv x40, zero
	j trace_ray_cont_b1265 # adhoc jump(2)
trace_ray_bneelse_b1264:
# B1264
	lw x40, 3(x38)
	feq x40, x40, zero
	xori x40, x40, 1
trace_ray_cont_b1265:
# B1265
	bne	x40, zero, trace_ray_beqelse_b1267
# B1266
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
	beq	x35, zero, trace_ray_bneelse_b1269
# B1268
	mv x33, zero
	j trace_ray_cont_b1272 # adhoc jump(2)
trace_ray_bneelse_b1269:
# B1269
	lw x33, 1(x33)
	fmul x33, x37, x33
	fadd x33, x33, x36
	fabs x33, x33
	lw x34, 4(x34)
	lw x34, 1(x34)
	fle x33, x34, x33
	beq	x33, zero, trace_ray_bneelse_b1271
# B1270
	mv x33, zero
	j trace_ray_cont_b1272 # adhoc jump(2)
trace_ray_bneelse_b1271:
# B1271
	lw x33, 5(x38)
	feq x33, x33, zero
	xori x33, x33, 1
trace_ray_cont_b1272:
# B1272
	bne	x33, zero, trace_ray_beqelse_b1274
# B1273
	mv x33, zero
	j trace_ray_cont_b1292 # adhoc jump(2)
trace_ray_beqelse_b1274:
# B1274
	la x33, min_caml_solver_dist
	sw x37, 0(x33)
	li x33, 3
	j trace_ray_cont_b1292 # adhoc jump(2)
trace_ray_beqelse_b1267:
# B1267
	la x33, min_caml_solver_dist
	sw x39, 0(x33)
	li x33, 2
	j trace_ray_cont_b1292 # adhoc jump(2)
trace_ray_beqelse_b1260:
# B1260
	la x33, min_caml_solver_dist
	sw x39, 0(x33)
	li x33, 1
	j trace_ray_cont_b1292 # adhoc jump(2)
trace_ray_beqelse_b1253:
# B1253
	bne	x39, x14, trace_ray_beqelse_b1276
# B1275
	lw x33, 0(x38)
	fle x33, zero, x33
	beq	x33, zero, trace_ray_bneelse_b1278
# B1277
	mv x33, zero
	j trace_ray_cont_b1292 # adhoc jump(2)
trace_ray_bneelse_b1278:
# B1278
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
	li x33, 1
	j trace_ray_cont_b1292 # adhoc jump(2)
trace_ray_beqelse_b1276:
# B1276
	lw x33, 0(x38)
	feq x39, x33, zero
	bne	x39, zero, trace_ray_beqelse_b1280
# B1279
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
	bne	x6, zero, trace_ray_beqelse_b1282
# B1281
	mv x35, x5
	j trace_ray_cont_b1283 # adhoc jump(2)
trace_ray_beqelse_b1282:
# B1282
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
trace_ray_cont_b1283:
# B1283
	lw x36, 1(x34)
	bne	x36, x40, trace_ray_beqelse_b1285
# B1284
	lui x36, 260096
	fsub x35, x35, x36
	j trace_ray_cont_b1286 # adhoc jump(2)
trace_ray_beqelse_b1285:
# B1285
trace_ray_cont_b1286:
# B1286
	fmul x36, x39, x39
	fmul x33, x33, x35
	fsub x33, x36, x33
	fle x35, x33, zero
	beq	x35, zero, trace_ray_bneelse_b1288
# B1287
	mv x33, zero
	j trace_ray_cont_b1292 # adhoc jump(2)
trace_ray_bneelse_b1288:
# B1288
	lw x34, 6(x34)
	bne	x34, zero, trace_ray_beqelse_b1290
# B1289
	la x34, min_caml_solver_dist
	fsqrt x33, x33
	fsub x33, x39, x33
	lw x35, 4(x38)
	fmul x33, x33, x35
	sw x33, 0(x34)
	j trace_ray_cont_b1291 # adhoc jump(2)
trace_ray_beqelse_b1290:
# B1290
	la x34, min_caml_solver_dist
	fsqrt x33, x33
	fadd x33, x39, x33
	lw x35, 4(x38)
	fmul x33, x33, x35
	sw x33, 0(x34)
trace_ray_cont_b1291:
# B1291
	li x33, 1
	j trace_ray_cont_b1292 # adhoc jump(2)
trace_ray_beqelse_b1280:
# B1280
	mv x33, zero
trace_ray_cont_b1292:
# B1292
	la x34, min_caml_solver_dist
	lw x34, 0(x34)
	bne	x33, zero, trace_ray_beqelse_b1294
# B1293
	mv x33, zero
	j trace_ray_cont_b1295 # adhoc jump(2)
trace_ray_beqelse_b1294:
# B1294
	lui x33, 779469
	addi x33, x33, -819
	fle x33, x33, x34
	xori x33, x33, 1
trace_ray_cont_b1295:
# B1295
	addi x20, x20, 1
	bne	x33, zero, trace_ray_beqelse_b1297
# B1296
	add x4, x13, x15
	lw x15, 0(x4)
	lw x15, 6(x15)
	bne	x15, zero, trace_ray_beqelse_b1299
# B1298
	mv x15, zero
	j trace_ray_cont_b1332 # adhoc jump(2)
trace_ray_beqelse_b1299:
# B1299
	j	trace_ray_loop_b1249
trace_ray_beqelse_b1297:
# B1297
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
	j	trace_ray_loop_b1300
trace_ray_bneelse_b1327:	#moved
# B1327
	addi x15, x35, 1
	mv x35, x15
trace_ray_loop_b1300:
# B1300
	add x4, x36, x35
	lw x15, 0(x4)
	bne	x15, x28, trace_ray_beqelse_b1302
# B1301
	li x15, 1
	j trace_ray_cont_b1329 # adhoc jump(2)
trace_ray_beqelse_b1302:
# B1302
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
	bne	x5, x11, trace_ray_beqelse_b1304
# B1303
	fabs x33, x33
	lw x5, 4(x15)
	lw x5, 0(x5)
	fle x33, x5, x33
	beq	x33, zero, trace_ray_bneelse_b1306
# B1305
	mv x33, zero
	j trace_ray_cont_b1309 # adhoc jump(2)
trace_ray_bneelse_b1306:
# B1306
	fabs x33, x34
	lw x34, 4(x15)
	lw x34, 1(x34)
	fle x33, x34, x33
	beq	x33, zero, trace_ray_bneelse_b1308
# B1307
	mv x33, zero
	j trace_ray_cont_b1309 # adhoc jump(2)
trace_ray_bneelse_b1308:
# B1308
	fabs x33, x40
	lw x34, 4(x15)
	lw x34, 2(x34)
	fle x33, x34, x33
	xori x33, x33, 1
trace_ray_cont_b1309:
# B1309
	bne	x33, zero, trace_ray_beqelse_b1311
# B1310
	lw x15, 6(x15)
	xori x15, x15, 1
	j trace_ray_cont_b1326 # adhoc jump(2)
trace_ray_beqelse_b1311:
# B1311
	lw x15, 6(x15)
	j trace_ray_cont_b1326 # adhoc jump(2)
trace_ray_beqelse_b1304:
# B1304
	bne	x5, x14, trace_ray_beqelse_b1313
# B1312
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
	bne	x15, zero, trace_ray_beqelse_b1315
# B1314
	mv x15, x33
	j trace_ray_cont_b1316 # adhoc jump(2)
trace_ray_beqelse_b1315:
# B1315
	xori x15, x33, 1
trace_ray_cont_b1316:
# B1316
	xori x15, x15, 1
	j trace_ray_cont_b1326 # adhoc jump(2)
trace_ray_beqelse_b1313:
# B1313
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
	bne	x6, zero, trace_ray_beqelse_b1318
# B1317
	mv x33, x5
	j trace_ray_cont_b1319 # adhoc jump(2)
trace_ray_beqelse_b1318:
# B1318
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
trace_ray_cont_b1319:
# B1319
	lw x34, 1(x15)
	li x40, 3
	bne	x34, x40, trace_ray_beqelse_b1321
# B1320
	lui x34, 260096
	fsub x33, x33, x34
	j trace_ray_cont_b1322 # adhoc jump(2)
trace_ray_beqelse_b1321:
# B1321
trace_ray_cont_b1322:
# B1322
	lw x15, 6(x15)
	fle x33, zero, x33
	xori x33, x33, 1
	bne	x15, zero, trace_ray_beqelse_b1324
# B1323
	mv x15, x33
	j trace_ray_cont_b1325 # adhoc jump(2)
trace_ray_beqelse_b1324:
# B1324
	xori x15, x33, 1
trace_ray_cont_b1325:
# B1325
	xori x15, x15, 1
trace_ray_cont_b1326:
# B1326
	beq	x15, zero, trace_ray_bneelse_b1327
# B1328
	mv x15, zero
trace_ray_cont_b1329:
# B1329
	beq	x15, zero, trace_ray_bneelse_b1330
# B1331
	mv x15, x11
trace_ray_cont_b1332:
# B1332
	beq	x15, zero, trace_ray_bneelse_b1333
# B1334
	mv x15, x11
trace_ray_cont_b1335:
# B1335
	beq	x15, zero, trace_ray_bneelse_b1336
# B1337
	mv x15, x11
trace_ray_cont_b1338:
# B1338
	bne	x15, zero, trace_ray_beqelse_b1340
# B1339
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
	bne	x17, zero, trace_ray_beqelse_b1341
# B1342
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
trace_ray_beqelse_b1341:
# B1341
trace_ray_cont_b1343:
# B1343
	fle x15, x16, zero
	bne	x15, zero, trace_ray_beqelse_b1344
# B1345
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
trace_ray_beqelse_b1344:
# B1344
trace_ray_beqelse_b1340:
# B1340
trace_ray_cont_b1346:
# B1346
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
trace_ray_loop_b1347:
# B1347
	bgt	zero, x20, trace_ray_bleelse_b1349
# B1348
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
	bne	x29, x14, trace_ray_beqelse_b1351
# B1350
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
	j trace_ray_cont_b1360 # adhoc jump(2)
trace_ray_beqelse_b1351:
# B1351
	bge	x14, x29, trace_ray_bgtelse_b1352
# B1353
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
	bne	x34, zero, trace_ray_beqelse_b1355
# B1354
	mv x16, x33
	j trace_ray_cont_b1356 # adhoc jump(2)
trace_ray_beqelse_b1355:
# B1355
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
trace_ray_cont_b1356:
# B1356
	li x30, 3
	bne	x29, x30, trace_ray_beqelse_b1358
# B1357
	lui x29, 260096
	fsub x16, x16, x29
	j trace_ray_cont_b1359 # adhoc jump(2)
trace_ray_beqelse_b1358:
# B1358
trace_ray_cont_b1359:
# B1359
	sw x16, 3(x28)
trace_ray_bgtelse_b1352:
# B1352
trace_ray_cont_b1360:
# B1360
	addi x16, x20, -1
	mv x20, x16
	j	trace_ray_loop_b1347
trace_ray_bleelse_b1349:
# B1349
# B1361
	la x16, min_caml_n_reflections
	lw x16, 0(x16)
	addi x16, x16, -1
	mv x17, x16
	mv x28, x12
	mv x20, x23
	mv x29, x103
trace_ray_loop_b1362:
# B1362
	li x12, -1
	lui x16, 260096
	bgt	zero, x17, trace_ray_bleelse_b1364
# B1363
	la x23, min_caml_reflections
	add x4, x23, x17
	lw x23, 0(x4)
	lw x30, 1(x23)
	sw x109, 0(x108)
	lw x31, 0(x110)
	mv x33, x31
	mv x34, x30
	mv x32, zero
trace_ray_loop_b1365:
# B1365
	add x4, x33, x32
	lw x31, 0(x4)
	lw x35, 0(x31)
	li x36, -1
	beq	x35, x36, trace_ray_bneelse_b1366
# B1367
	li x37, 99
	la x38, min_caml_solver_dist
	li x39, 3
	bne	x35, x37, trace_ray_beqelse_b1369
# B1368
	mv x40, x11
	mv x5, x31
	mv x6, x34
trace_ray_loop_b1370:
# B1370
	add x4, x5, x40
	lw x31, 0(x4)
	beq	x31, x36, trace_ray_bneelse_b1371
# B1372
	la x35, min_caml_and_net
	add x4, x35, x31
	lw x31, 0(x4)
	mv x37, x31
	mv x35, zero
	mv x65, x6
trace_ray_loop_b1373:
# B1373
	lw x31, 0(x65)
	add x4, x37, x35
	lw x66, 0(x4)
	beq	x66, x36, trace_ray_bneelse_b1374
# B1375
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
	bne	x72, x11, trace_ray_beqelse_b1377
# B1376
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
	beq	x73, zero, trace_ray_bneelse_b1379
# B1378
	mv x73, zero
	j trace_ray_cont_b1382 # adhoc jump(2)
trace_ray_bneelse_b1379:
# B1379
	lw x73, 2(x68)
	fmul x73, x72, x73
	fadd x73, x73, x70
	fabs x73, x73
	lw x74, 4(x67)
	lw x74, 2(x74)
	fle x73, x74, x73
	beq	x73, zero, trace_ray_bneelse_b1381
# B1380
	mv x73, zero
	j trace_ray_cont_b1382 # adhoc jump(2)
trace_ray_bneelse_b1381:
# B1381
	lw x73, 1(x71)
	feq x73, x73, zero
	xori x73, x73, 1
trace_ray_cont_b1382:
# B1382
	bne	x73, zero, trace_ray_beqelse_b1384
# B1383
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
	beq	x73, zero, trace_ray_bneelse_b1386
# B1385
	mv x73, zero
	j trace_ray_cont_b1389 # adhoc jump(2)
trace_ray_bneelse_b1386:
# B1386
	lw x73, 2(x68)
	fmul x73, x72, x73
	fadd x73, x73, x70
	fabs x73, x73
	lw x74, 4(x67)
	lw x74, 2(x74)
	fle x73, x74, x73
	beq	x73, zero, trace_ray_bneelse_b1388
# B1387
	mv x73, zero
	j trace_ray_cont_b1389 # adhoc jump(2)
trace_ray_bneelse_b1388:
# B1388
	lw x73, 3(x71)
	feq x73, x73, zero
	xori x73, x73, 1
trace_ray_cont_b1389:
# B1389
	bne	x73, zero, trace_ray_beqelse_b1391
# B1390
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
	beq	x69, zero, trace_ray_bneelse_b1393
# B1392
	mv x67, zero
	j trace_ray_cont_b1396 # adhoc jump(2)
trace_ray_bneelse_b1393:
# B1393
	lw x68, 1(x68)
	fmul x68, x70, x68
	fadd x68, x68, x7
	fabs x68, x68
	lw x67, 4(x67)
	lw x67, 1(x67)
	fle x67, x67, x68
	beq	x67, zero, trace_ray_bneelse_b1395
# B1394
	mv x67, zero
	j trace_ray_cont_b1396 # adhoc jump(2)
trace_ray_bneelse_b1395:
# B1395
	lw x67, 5(x71)
	feq x67, x67, zero
	xori x67, x67, 1
trace_ray_cont_b1396:
# B1396
	bne	x67, zero, trace_ray_beqelse_b1398
# B1397
	mv x67, zero
	j trace_ray_cont_b1410 # adhoc jump(2)
trace_ray_beqelse_b1398:
# B1398
	la x67, min_caml_solver_dist
	sw x70, 0(x67)
	li x67, 3
	j trace_ray_cont_b1410 # adhoc jump(2)
trace_ray_beqelse_b1391:
# B1391
	la x67, min_caml_solver_dist
	sw x72, 0(x67)
	li x67, 2
	j trace_ray_cont_b1410 # adhoc jump(2)
trace_ray_beqelse_b1384:
# B1384
	la x67, min_caml_solver_dist
	sw x72, 0(x67)
	li x67, 1
	j trace_ray_cont_b1410 # adhoc jump(2)
trace_ray_beqelse_b1377:
# B1377
	bne	x72, x14, trace_ray_beqelse_b1400
# B1399
	lw x67, 0(x71)
	fle x67, zero, x67
	beq	x67, zero, trace_ray_bneelse_b1402
# B1401
	mv x67, zero
	j trace_ray_cont_b1410 # adhoc jump(2)
trace_ray_bneelse_b1402:
# B1402
	la x67, min_caml_solver_dist
	lw x69, 0(x71)
	lw x68, 3(x68)
	fmul x68, x69, x68
	sw x68, 0(x67)
	li x67, 1
	j trace_ray_cont_b1410 # adhoc jump(2)
trace_ray_beqelse_b1400:
# B1400
	lw x72, 0(x71)
	feq x73, x72, zero
	bne	x73, zero, trace_ray_beqelse_b1404
# B1403
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
	beq	x7, zero, trace_ray_bneelse_b1406
# B1405
	mv x67, zero
	j trace_ray_cont_b1410 # adhoc jump(2)
trace_ray_bneelse_b1406:
# B1406
	lw x67, 6(x67)
	bne	x67, zero, trace_ray_beqelse_b1408
# B1407
	la x67, min_caml_solver_dist
	fsqrt x68, x68
	fsub x68, x69, x68
	lw x69, 4(x71)
	fmul x68, x68, x69
	sw x68, 0(x67)
	j trace_ray_cont_b1409 # adhoc jump(2)
trace_ray_beqelse_b1408:
# B1408
	la x67, min_caml_solver_dist
	fsqrt x68, x68
	fadd x68, x69, x68
	lw x69, 4(x71)
	fmul x68, x68, x69
	sw x68, 0(x67)
trace_ray_cont_b1409:
# B1409
	li x67, 1
	j trace_ray_cont_b1410 # adhoc jump(2)
trace_ray_beqelse_b1404:
# B1404
	mv x67, zero
trace_ray_cont_b1410:
# B1410
	addi x35, x35, 1
	bne	x67, zero, trace_ray_beqelse_b1412
# B1411
	add x4, x13, x66
	lw x31, 0(x4)
	lw x31, 6(x31)
	bne	x31, zero, trace_ray_beqelse_b1414
# B1413
	j trace_ray_cont_b1452 # adhoc jump(2)
trace_ray_beqelse_b1414:
# B1414
	j	trace_ray_loop_b1373
trace_ray_beqelse_b1412:
# B1412
	lw x68, 0(x38)
	fle x69, x68, zero
	bne	x69, zero, trace_ray_beqelse_b1415
# B1416
	lw x69, 0(x108)
	fle x69, x69, x68
	bne	x69, zero, trace_ray_beqelse_b1417
# B1418
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
	j	trace_ray_loop_b1419
trace_ray_bneelse_b1446:	#moved
# B1446
	addi x70, x70, 1
trace_ray_loop_b1419:
# B1419
	add x4, x71, x70
	lw x75, 0(x4)
	bne	x75, x36, trace_ray_beqelse_b1421
# B1420
	li x70, 1
	j trace_ray_cont_b1448 # adhoc jump(2)
trace_ray_beqelse_b1421:
# B1421
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
	bne	x79, x11, trace_ray_beqelse_b1423
# B1422
	fabs x76, x76
	lw x79, 4(x75)
	lw x79, 0(x79)
	fle x76, x79, x76
	beq	x76, zero, trace_ray_bneelse_b1425
# B1424
	mv x76, zero
	j trace_ray_cont_b1428 # adhoc jump(2)
trace_ray_bneelse_b1425:
# B1425
	fabs x76, x77
	lw x77, 4(x75)
	lw x77, 1(x77)
	fle x76, x77, x76
	beq	x76, zero, trace_ray_bneelse_b1427
# B1426
	mv x76, zero
	j trace_ray_cont_b1428 # adhoc jump(2)
trace_ray_bneelse_b1427:
# B1427
	fabs x76, x78
	lw x77, 4(x75)
	lw x77, 2(x77)
	fle x76, x77, x76
	xori x76, x76, 1
trace_ray_cont_b1428:
# B1428
	bne	x76, zero, trace_ray_beqelse_b1430
# B1429
	lw x75, 6(x75)
	xori x75, x75, 1
	j trace_ray_cont_b1445 # adhoc jump(2)
trace_ray_beqelse_b1430:
# B1430
	lw x75, 6(x75)
	j trace_ray_cont_b1445 # adhoc jump(2)
trace_ray_beqelse_b1423:
# B1423
	bne	x79, x14, trace_ray_beqelse_b1432
# B1431
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
	bne	x75, zero, trace_ray_beqelse_b1434
# B1433
	mv x75, x76
	j trace_ray_cont_b1435 # adhoc jump(2)
trace_ray_beqelse_b1434:
# B1434
	xori x75, x76, 1
trace_ray_cont_b1435:
# B1435
	xori x75, x75, 1
	j trace_ray_cont_b1445 # adhoc jump(2)
trace_ray_beqelse_b1432:
# B1432
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
	bne	x8, zero, trace_ray_beqelse_b1437
# B1436
	mv x76, x79
	j trace_ray_cont_b1438 # adhoc jump(2)
trace_ray_beqelse_b1437:
# B1437
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
trace_ray_cont_b1438:
# B1438
	lw x77, 1(x75)
	bne	x77, x39, trace_ray_beqelse_b1440
# B1439
	lui x77, 260096
	fsub x76, x76, x77
	j trace_ray_cont_b1441 # adhoc jump(2)
trace_ray_beqelse_b1440:
# B1440
trace_ray_cont_b1441:
# B1441
	lw x75, 6(x75)
	fle x76, zero, x76
	xori x76, x76, 1
	bne	x75, zero, trace_ray_beqelse_b1443
# B1442
	mv x75, x76
	j trace_ray_cont_b1444 # adhoc jump(2)
trace_ray_beqelse_b1443:
# B1443
	xori x75, x76, 1
trace_ray_cont_b1444:
# B1444
	xori x75, x75, 1
trace_ray_cont_b1445:
# B1445
	beq	x75, zero, trace_ray_bneelse_b1446
# B1447
	mv x70, zero
trace_ray_cont_b1448:
# B1448
	beq	x70, zero, trace_ray_bneelse_b1449
# B1450
	sw x68, 0(x108)
	sw x69, 0(x27)
	sw x7, 1(x27)
	sw x31, 2(x27)
	sw x66, 0(x10)
	sw x67, 0(x25)
trace_ray_bneelse_b1449:
# B1449
trace_ray_beqelse_b1417:
# B1417
trace_ray_beqelse_b1415:
# B1415
trace_ray_cont_b1451:
# B1451
	j	trace_ray_loop_b1373
trace_ray_bneelse_b1374:
# B1374
trace_ray_cont_b1452:
# B1452
	addi x31, x40, 1
	mv x40, x31
	j	trace_ray_loop_b1370
trace_ray_bneelse_b1371:
# B1371
	j trace_ray_cont_b1575 # adhoc jump(2)
trace_ray_beqelse_b1369:
# B1369
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
	bne	x66, x11, trace_ray_beqelse_b1454
# B1453
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
	beq	x67, zero, trace_ray_bneelse_b1456
# B1455
	mv x67, zero
	j trace_ray_cont_b1459 # adhoc jump(2)
trace_ray_bneelse_b1456:
# B1456
	lw x67, 2(x40)
	fmul x67, x66, x67
	fadd x67, x67, x65
	fabs x67, x67
	lw x68, 4(x37)
	lw x68, 2(x68)
	fle x67, x68, x67
	beq	x67, zero, trace_ray_bneelse_b1458
# B1457
	mv x67, zero
	j trace_ray_cont_b1459 # adhoc jump(2)
trace_ray_bneelse_b1458:
# B1458
	lw x67, 1(x35)
	feq x67, x67, zero
	xori x67, x67, 1
trace_ray_cont_b1459:
# B1459
	bne	x67, zero, trace_ray_beqelse_b1461
# B1460
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
	beq	x67, zero, trace_ray_bneelse_b1463
# B1462
	mv x67, zero
	j trace_ray_cont_b1466 # adhoc jump(2)
trace_ray_bneelse_b1463:
# B1463
	lw x67, 2(x40)
	fmul x67, x66, x67
	fadd x67, x67, x65
	fabs x67, x67
	lw x68, 4(x37)
	lw x68, 2(x68)
	fle x67, x68, x67
	beq	x67, zero, trace_ray_bneelse_b1465
# B1464
	mv x67, zero
	j trace_ray_cont_b1466 # adhoc jump(2)
trace_ray_bneelse_b1465:
# B1465
	lw x67, 3(x35)
	feq x67, x67, zero
	xori x67, x67, 1
trace_ray_cont_b1466:
# B1466
	bne	x67, zero, trace_ray_beqelse_b1468
# B1467
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
	beq	x5, zero, trace_ray_bneelse_b1470
# B1469
	mv x35, zero
	j trace_ray_cont_b1473 # adhoc jump(2)
trace_ray_bneelse_b1470:
# B1470
	lw x40, 1(x40)
	fmul x40, x65, x40
	fadd x40, x40, x6
	fabs x40, x40
	lw x37, 4(x37)
	lw x37, 1(x37)
	fle x37, x37, x40
	beq	x37, zero, trace_ray_bneelse_b1472
# B1471
	mv x35, zero
	j trace_ray_cont_b1473 # adhoc jump(2)
trace_ray_bneelse_b1472:
# B1472
	lw x35, 5(x35)
	feq x35, x35, zero
	xori x35, x35, 1
trace_ray_cont_b1473:
# B1473
	bne	x35, zero, trace_ray_beqelse_b1475
# B1474
	mv x39, zero
	j trace_ray_cont_b1487 # adhoc jump(2)
trace_ray_beqelse_b1475:
# B1475
	sw x65, 0(x38)
	j trace_ray_cont_b1487 # adhoc jump(2)
trace_ray_beqelse_b1468:
# B1468
	sw x66, 0(x38)
	mv x39, x14
	j trace_ray_cont_b1487 # adhoc jump(2)
trace_ray_beqelse_b1461:
# B1461
	sw x66, 0(x38)
	mv x39, x11
	j trace_ray_cont_b1487 # adhoc jump(2)
trace_ray_beqelse_b1454:
# B1454
	bne	x66, x14, trace_ray_beqelse_b1477
# B1476
	lw x37, 0(x35)
	fle x37, zero, x37
	beq	x37, zero, trace_ray_bneelse_b1479
# B1478
	mv x39, zero
	j trace_ray_cont_b1487 # adhoc jump(2)
trace_ray_bneelse_b1479:
# B1479
	lw x35, 0(x35)
	lw x37, 3(x40)
	fmul x35, x35, x37
	sw x35, 0(x38)
	mv x39, x11
	j trace_ray_cont_b1487 # adhoc jump(2)
trace_ray_beqelse_b1477:
# B1477
	lw x39, 0(x35)
	feq x66, x39, zero
	bne	x66, zero, trace_ray_beqelse_b1481
# B1480
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
	beq	x40, zero, trace_ray_bneelse_b1483
# B1482
	mv x39, zero
	j trace_ray_cont_b1487 # adhoc jump(2)
trace_ray_bneelse_b1483:
# B1483
	lw x37, 6(x37)
	fsqrt x39, x39
	bne	x37, zero, trace_ray_beqelse_b1485
# B1484
	fsub x37, x5, x39
	lw x35, 4(x35)
	fmul x35, x37, x35
	sw x35, 0(x38)
	j trace_ray_cont_b1486 # adhoc jump(2)
trace_ray_beqelse_b1485:
# B1485
	fadd x37, x5, x39
	lw x35, 4(x35)
	fmul x35, x37, x35
	sw x35, 0(x38)
trace_ray_cont_b1486:
# B1486
	mv x39, x11
	j trace_ray_cont_b1487 # adhoc jump(2)
trace_ray_beqelse_b1481:
# B1481
	mv x39, zero
trace_ray_cont_b1487:
# B1487
	beq	x39, zero, trace_ray_bneelse_b1488
# B1489
	lw x35, 0(x38)
	lw x37, 0(x108)
	fle x35, x37, x35
	bne	x35, zero, trace_ray_beqelse_b1490
# B1491
	mv x37, x11
	mv x40, x34
	mv x39, x31
trace_ray_loop_b1492:
# B1492
	add x4, x39, x37
	lw x31, 0(x4)
	beq	x31, x36, trace_ray_bneelse_b1493
# B1494
	la x35, min_caml_and_net
	add x4, x35, x31
	lw x31, 0(x4)
	mv x6, x40
	mv x5, x31
	mv x35, zero
trace_ray_loop_b1495:
# B1495
	lw x31, 0(x6)
	add x4, x5, x35
	lw x65, 0(x4)
	beq	x65, x36, trace_ray_bneelse_b1496
# B1497
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
	bne	x71, x11, trace_ray_beqelse_b1499
# B1498
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
	beq	x72, zero, trace_ray_bneelse_b1501
# B1500
	mv x72, zero
	j trace_ray_cont_b1504 # adhoc jump(2)
trace_ray_bneelse_b1501:
# B1501
	lw x72, 2(x67)
	fmul x72, x71, x72
	fadd x72, x72, x7
	fabs x72, x72
	lw x73, 4(x66)
	lw x73, 2(x73)
	fle x72, x73, x72
	beq	x72, zero, trace_ray_bneelse_b1503
# B1502
	mv x72, zero
	j trace_ray_cont_b1504 # adhoc jump(2)
trace_ray_bneelse_b1503:
# B1503
	lw x72, 1(x70)
	feq x72, x72, zero
	xori x72, x72, 1
trace_ray_cont_b1504:
# B1504
	bne	x72, zero, trace_ray_beqelse_b1506
# B1505
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
	beq	x72, zero, trace_ray_bneelse_b1508
# B1507
	mv x72, zero
	j trace_ray_cont_b1511 # adhoc jump(2)
trace_ray_bneelse_b1508:
# B1508
	lw x72, 2(x67)
	fmul x72, x71, x72
	fadd x72, x72, x7
	fabs x72, x72
	lw x73, 4(x66)
	lw x73, 2(x73)
	fle x72, x73, x72
	beq	x72, zero, trace_ray_bneelse_b1510
# B1509
	mv x72, zero
	j trace_ray_cont_b1511 # adhoc jump(2)
trace_ray_bneelse_b1510:
# B1510
	lw x72, 3(x70)
	feq x72, x72, zero
	xori x72, x72, 1
trace_ray_cont_b1511:
# B1511
	bne	x72, zero, trace_ray_beqelse_b1513
# B1512
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
	beq	x68, zero, trace_ray_bneelse_b1515
# B1514
	mv x66, zero
	j trace_ray_cont_b1518 # adhoc jump(2)
trace_ray_bneelse_b1515:
# B1515
	lw x67, 1(x67)
	fmul x67, x7, x67
	fadd x67, x67, x69
	fabs x67, x67
	lw x66, 4(x66)
	lw x66, 1(x66)
	fle x66, x66, x67
	beq	x66, zero, trace_ray_bneelse_b1517
# B1516
	mv x66, zero
	j trace_ray_cont_b1518 # adhoc jump(2)
trace_ray_bneelse_b1517:
# B1517
	lw x66, 5(x70)
	feq x66, x66, zero
	xori x66, x66, 1
trace_ray_cont_b1518:
# B1518
	bne	x66, zero, trace_ray_beqelse_b1520
# B1519
	mv x66, zero
	j trace_ray_cont_b1532 # adhoc jump(2)
trace_ray_beqelse_b1520:
# B1520
	sw x7, 0(x38)
	li x66, 3
	j trace_ray_cont_b1532 # adhoc jump(2)
trace_ray_beqelse_b1513:
# B1513
	sw x71, 0(x38)
	li x66, 2
	j trace_ray_cont_b1532 # adhoc jump(2)
trace_ray_beqelse_b1506:
# B1506
	sw x71, 0(x38)
	li x66, 1
	j trace_ray_cont_b1532 # adhoc jump(2)
trace_ray_beqelse_b1499:
# B1499
	bne	x71, x14, trace_ray_beqelse_b1522
# B1521
	lw x66, 0(x70)
	fle x66, zero, x66
	beq	x66, zero, trace_ray_bneelse_b1524
# B1523
	mv x66, zero
	j trace_ray_cont_b1532 # adhoc jump(2)
trace_ray_bneelse_b1524:
# B1524
	lw x66, 0(x70)
	lw x67, 3(x67)
	fmul x66, x66, x67
	sw x66, 0(x38)
	li x66, 1
	j trace_ray_cont_b1532 # adhoc jump(2)
trace_ray_beqelse_b1522:
# B1522
	lw x71, 0(x70)
	feq x72, x71, zero
	bne	x72, zero, trace_ray_beqelse_b1526
# B1525
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
	beq	x69, zero, trace_ray_bneelse_b1528
# B1527
	mv x66, zero
	j trace_ray_cont_b1532 # adhoc jump(2)
trace_ray_bneelse_b1528:
# B1528
	lw x66, 6(x66)
	bne	x66, zero, trace_ray_beqelse_b1530
# B1529
	fsqrt x66, x67
	fsub x66, x68, x66
	lw x67, 4(x70)
	fmul x66, x66, x67
	sw x66, 0(x38)
	j trace_ray_cont_b1531 # adhoc jump(2)
trace_ray_beqelse_b1530:
# B1530
	fsqrt x66, x67
	fadd x66, x68, x66
	lw x67, 4(x70)
	fmul x66, x66, x67
	sw x66, 0(x38)
trace_ray_cont_b1531:
# B1531
	li x66, 1
	j trace_ray_cont_b1532 # adhoc jump(2)
trace_ray_beqelse_b1526:
# B1526
	mv x66, zero
trace_ray_cont_b1532:
# B1532
	addi x35, x35, 1
	bne	x66, zero, trace_ray_beqelse_b1534
# B1533
	add x4, x13, x65
	lw x31, 0(x4)
	lw x31, 6(x31)
	bne	x31, zero, trace_ray_beqelse_b1536
# B1535
	j trace_ray_cont_b1574 # adhoc jump(2)
trace_ray_beqelse_b1536:
# B1536
	j	trace_ray_loop_b1495
trace_ray_beqelse_b1534:
# B1534
	lw x67, 0(x38)
	fle x68, x67, zero
	bne	x68, zero, trace_ray_beqelse_b1537
# B1538
	lw x68, 0(x108)
	fle x68, x68, x67
	bne	x68, zero, trace_ray_beqelse_b1539
# B1540
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
	j	trace_ray_loop_b1541
trace_ray_bneelse_b1568:	#moved
# B1568
	addi x7, x7, 1
trace_ray_loop_b1541:
# B1541
	add x4, x70, x7
	lw x74, 0(x4)
	bne	x74, x36, trace_ray_beqelse_b1543
# B1542
	li x7, 1
	j trace_ray_cont_b1570 # adhoc jump(2)
trace_ray_beqelse_b1543:
# B1543
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
	bne	x78, x11, trace_ray_beqelse_b1545
# B1544
	fabs x75, x75
	lw x78, 4(x74)
	lw x78, 0(x78)
	fle x75, x78, x75
	beq	x75, zero, trace_ray_bneelse_b1547
# B1546
	mv x75, zero
	j trace_ray_cont_b1550 # adhoc jump(2)
trace_ray_bneelse_b1547:
# B1547
	fabs x75, x76
	lw x76, 4(x74)
	lw x76, 1(x76)
	fle x75, x76, x75
	beq	x75, zero, trace_ray_bneelse_b1549
# B1548
	mv x75, zero
	j trace_ray_cont_b1550 # adhoc jump(2)
trace_ray_bneelse_b1549:
# B1549
	fabs x75, x77
	lw x76, 4(x74)
	lw x76, 2(x76)
	fle x75, x76, x75
	xori x75, x75, 1
trace_ray_cont_b1550:
# B1550
	bne	x75, zero, trace_ray_beqelse_b1552
# B1551
	lw x74, 6(x74)
	xori x74, x74, 1
	j trace_ray_cont_b1567 # adhoc jump(2)
trace_ray_beqelse_b1552:
# B1552
	lw x74, 6(x74)
	j trace_ray_cont_b1567 # adhoc jump(2)
trace_ray_beqelse_b1545:
# B1545
	bne	x78, x14, trace_ray_beqelse_b1554
# B1553
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
	bne	x74, zero, trace_ray_beqelse_b1556
# B1555
	mv x74, x75
	j trace_ray_cont_b1557 # adhoc jump(2)
trace_ray_beqelse_b1556:
# B1556
	xori x74, x75, 1
trace_ray_cont_b1557:
# B1557
	xori x74, x74, 1
	j trace_ray_cont_b1567 # adhoc jump(2)
trace_ray_beqelse_b1554:
# B1554
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
	bne	x79, zero, trace_ray_beqelse_b1559
# B1558
	mv x75, x78
	j trace_ray_cont_b1560 # adhoc jump(2)
trace_ray_beqelse_b1559:
# B1559
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
trace_ray_cont_b1560:
# B1560
	lw x76, 1(x74)
	li x77, 3
	bne	x76, x77, trace_ray_beqelse_b1562
# B1561
	lui x76, 260096
	fsub x75, x75, x76
	j trace_ray_cont_b1563 # adhoc jump(2)
trace_ray_beqelse_b1562:
# B1562
trace_ray_cont_b1563:
# B1563
	lw x74, 6(x74)
	fle x75, zero, x75
	xori x75, x75, 1
	bne	x74, zero, trace_ray_beqelse_b1565
# B1564
	mv x74, x75
	j trace_ray_cont_b1566 # adhoc jump(2)
trace_ray_beqelse_b1565:
# B1565
	xori x74, x75, 1
trace_ray_cont_b1566:
# B1566
	xori x74, x74, 1
trace_ray_cont_b1567:
# B1567
	beq	x74, zero, trace_ray_bneelse_b1568
# B1569
	mv x7, zero
trace_ray_cont_b1570:
# B1570
	beq	x7, zero, trace_ray_bneelse_b1571
# B1572
	sw x67, 0(x108)
	sw x68, 0(x27)
	sw x69, 1(x27)
	sw x31, 2(x27)
	sw x65, 0(x10)
	sw x66, 0(x25)
trace_ray_bneelse_b1571:
# B1571
trace_ray_beqelse_b1539:
# B1539
trace_ray_beqelse_b1537:
# B1537
trace_ray_cont_b1573:
# B1573
	j	trace_ray_loop_b1495
trace_ray_bneelse_b1496:
# B1496
trace_ray_cont_b1574:
# B1574
	addi x31, x37, 1
	mv x37, x31
	j	trace_ray_loop_b1492
trace_ray_bneelse_b1493:
# B1493
trace_ray_beqelse_b1490:
# B1490
trace_ray_bneelse_b1488:
# B1488
trace_ray_cont_b1575:
# B1575
	addi x31, x32, 1
	mv x32, x31
	j	trace_ray_loop_b1365
trace_ray_bneelse_b1366:
# B1366
# B1576
	lw x31, 0(x108)
	fle x32, x31, x100
	beq	x32, zero, trace_ray_bneelse_b1578
# B1577
	mv x31, zero
	j trace_ray_cont_b1579 # adhoc jump(2)
trace_ray_bneelse_b1578:
# B1578
	fle x31, x19, x31
	xori x31, x31, 1
trace_ray_cont_b1579:
# B1579
	beq	x31, zero, trace_ray_bneelse_b1580
# B1581
	lw x31, 0(x10)
	slli x31, x31, 2
	lw x32, 0(x25)
	add x31, x31, x32
	lw x32, 0(x23)
	bne	x31, x32, trace_ray_beqelse_b1583
# B1582
	lw x31, 0(x110)
	mv x33, x31
	mv x32, zero
	j	trace_ray_loop_b1584
trace_ray_bneelse_b1819:	#moved
# B1819
trace_ray_loop_b1584:
# B1584
	add x4, x33, x32
	lw x31, 0(x4)
	lw x34, 0(x31)
	bne	x34, x12, trace_ray_beqelse_b1586
# B1585
	mv x31, zero
	j trace_ray_cont_b1821 # adhoc jump(2)
trace_ray_beqelse_b1586:
# B1586
	li x35, 99
	bne	x34, x35, trace_ray_beqelse_b1588
# B1587
	li x34, 1
	j trace_ray_cont_b1726 # adhoc jump(2)
trace_ray_beqelse_b1588:
# B1588
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
	bne	x40, x11, trace_ray_beqelse_b1590
# B1589
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
	beq	x6, zero, trace_ray_bneelse_b1592
# B1591
	mv x6, zero
	j trace_ray_cont_b1595 # adhoc jump(2)
trace_ray_bneelse_b1592:
# B1592
	lw x6, 2(x40)
	fmul x6, x5, x6
	fadd x6, x6, x39
	fabs x6, x6
	lw x65, 4(x36)
	lw x65, 2(x65)
	fle x6, x65, x6
	beq	x6, zero, trace_ray_bneelse_b1594
# B1593
	mv x6, zero
	j trace_ray_cont_b1595 # adhoc jump(2)
trace_ray_bneelse_b1594:
# B1594
	lw x6, 1(x34)
	feq x6, x6, zero
	xori x6, x6, 1
trace_ray_cont_b1595:
# B1595
	bne	x6, zero, trace_ray_beqelse_b1597
# B1596
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
	beq	x6, zero, trace_ray_bneelse_b1599
# B1598
	mv x6, zero
	j trace_ray_cont_b1602 # adhoc jump(2)
trace_ray_bneelse_b1599:
# B1599
	lw x6, 2(x40)
	fmul x6, x5, x6
	fadd x6, x6, x39
	fabs x6, x6
	lw x65, 4(x36)
	lw x65, 2(x65)
	fle x6, x65, x6
	beq	x6, zero, trace_ray_bneelse_b1601
# B1600
	mv x6, zero
	j trace_ray_cont_b1602 # adhoc jump(2)
trace_ray_bneelse_b1601:
# B1601
	lw x6, 3(x34)
	feq x6, x6, zero
	xori x6, x6, 1
trace_ray_cont_b1602:
# B1602
	bne	x6, zero, trace_ray_beqelse_b1604
# B1603
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
	beq	x37, zero, trace_ray_bneelse_b1606
# B1605
	mv x34, zero
	j trace_ray_cont_b1609 # adhoc jump(2)
trace_ray_bneelse_b1606:
# B1606
	lw x37, 1(x40)
	fmul x37, x39, x37
	fadd x37, x37, x38
	fabs x37, x37
	lw x36, 4(x36)
	lw x36, 1(x36)
	fle x36, x36, x37
	beq	x36, zero, trace_ray_bneelse_b1608
# B1607
	mv x34, zero
	j trace_ray_cont_b1609 # adhoc jump(2)
trace_ray_bneelse_b1608:
# B1608
	lw x34, 5(x34)
	feq x34, x34, zero
	xori x34, x34, 1
trace_ray_cont_b1609:
# B1609
	bne	x34, zero, trace_ray_beqelse_b1611
# B1610
	mv x34, zero
	j trace_ray_cont_b1629 # adhoc jump(2)
trace_ray_beqelse_b1611:
# B1611
	la x34, min_caml_solver_dist
	sw x39, 0(x34)
	li x34, 3
	j trace_ray_cont_b1629 # adhoc jump(2)
trace_ray_beqelse_b1604:
# B1604
	la x34, min_caml_solver_dist
	sw x5, 0(x34)
	li x34, 2
	j trace_ray_cont_b1629 # adhoc jump(2)
trace_ray_beqelse_b1597:
# B1597
	la x34, min_caml_solver_dist
	sw x5, 0(x34)
	li x34, 1
	j trace_ray_cont_b1629 # adhoc jump(2)
trace_ray_beqelse_b1590:
# B1590
	bne	x40, x14, trace_ray_beqelse_b1613
# B1612
	lw x36, 0(x34)
	fle x36, zero, x36
	beq	x36, zero, trace_ray_bneelse_b1615
# B1614
	mv x34, zero
	j trace_ray_cont_b1629 # adhoc jump(2)
trace_ray_bneelse_b1615:
# B1615
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
	li x34, 1
	j trace_ray_cont_b1629 # adhoc jump(2)
trace_ray_beqelse_b1613:
# B1613
	lw x40, 0(x34)
	feq x5, x40, zero
	bne	x5, zero, trace_ray_beqelse_b1617
# B1616
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
	bne	x66, zero, trace_ray_beqelse_b1619
# B1618
	mv x37, x65
	j trace_ray_cont_b1620 # adhoc jump(2)
trace_ray_beqelse_b1619:
# B1619
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
trace_ray_cont_b1620:
# B1620
	lw x38, 1(x36)
	bne	x38, x6, trace_ray_beqelse_b1622
# B1621
	lui x38, 260096
	fsub x37, x37, x38
	j trace_ray_cont_b1623 # adhoc jump(2)
trace_ray_beqelse_b1622:
# B1622
trace_ray_cont_b1623:
# B1623
	fmul x38, x5, x5
	fmul x37, x40, x37
	fsub x37, x38, x37
	fle x38, x37, zero
	beq	x38, zero, trace_ray_bneelse_b1625
# B1624
	mv x34, zero
	j trace_ray_cont_b1629 # adhoc jump(2)
trace_ray_bneelse_b1625:
# B1625
	lw x36, 6(x36)
	bne	x36, zero, trace_ray_beqelse_b1627
# B1626
	la x36, min_caml_solver_dist
	fsqrt x37, x37
	fsub x37, x5, x37
	lw x34, 4(x34)
	fmul x34, x37, x34
	sw x34, 0(x36)
	j trace_ray_cont_b1628 # adhoc jump(2)
trace_ray_beqelse_b1627:
# B1627
	la x36, min_caml_solver_dist
	fsqrt x37, x37
	fadd x37, x5, x37
	lw x34, 4(x34)
	fmul x34, x37, x34
	sw x34, 0(x36)
trace_ray_cont_b1628:
# B1628
	li x34, 1
	j trace_ray_cont_b1629 # adhoc jump(2)
trace_ray_beqelse_b1617:
# B1617
	mv x34, zero
trace_ray_cont_b1629:
# B1629
	bne	x34, zero, trace_ray_beqelse_b1631
# B1630
	mv x34, zero
	j trace_ray_cont_b1726 # adhoc jump(2)
trace_ray_beqelse_b1631:
# B1631
	la x34, min_caml_solver_dist
	lw x36, 0(x34)
	fle x36, x100, x36
	beq	x36, zero, trace_ray_bneelse_b1633
# B1632
	mv x34, zero
	j trace_ray_cont_b1726 # adhoc jump(2)
trace_ray_bneelse_b1633:
# B1633
	mv x37, x11
	mv x38, x31
	j	trace_ray_loop_b1634
trace_ray_bneelse_b1721:	#moved
# B1721
	addi x36, x37, 1
	mv x37, x36
trace_ray_loop_b1634:
# B1634
	add x4, x38, x37
	lw x36, 0(x4)
	bne	x36, x12, trace_ray_beqelse_b1636
# B1635
	mv x36, zero
	j trace_ray_cont_b1723 # adhoc jump(2)
trace_ray_beqelse_b1636:
# B1636
	la x39, min_caml_and_net
	add x4, x39, x36
	lw x36, 0(x4)
	mv x40, x36
	mv x39, zero
	j	trace_ray_loop_b1637
trace_ray_bneelse_b1718:	#moved
# B1718
trace_ray_loop_b1637:
# B1637
	add x4, x40, x39
	lw x36, 0(x4)
	bne	x36, x12, trace_ray_beqelse_b1639
# B1638
	mv x36, zero
	j trace_ray_cont_b1720 # adhoc jump(2)
trace_ray_beqelse_b1639:
# B1639
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
	bne	x68, x11, trace_ray_beqelse_b1641
# B1640
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
	beq	x7, zero, trace_ray_bneelse_b1643
# B1642
	mv x7, zero
	j trace_ray_cont_b1646 # adhoc jump(2)
trace_ray_bneelse_b1643:
# B1643
	lw x7, 2(x68)
	fmul x7, x69, x7
	fadd x7, x7, x66
	fabs x7, x7
	lw x70, 4(x5)
	lw x70, 2(x70)
	fle x7, x70, x7
	beq	x7, zero, trace_ray_bneelse_b1645
# B1644
	mv x7, zero
	j trace_ray_cont_b1646 # adhoc jump(2)
trace_ray_bneelse_b1645:
# B1645
	lw x7, 1(x67)
	feq x7, x7, zero
	xori x7, x7, 1
trace_ray_cont_b1646:
# B1646
	bne	x7, zero, trace_ray_beqelse_b1648
# B1647
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
	beq	x7, zero, trace_ray_bneelse_b1650
# B1649
	mv x7, zero
	j trace_ray_cont_b1653 # adhoc jump(2)
trace_ray_bneelse_b1650:
# B1650
	lw x7, 2(x68)
	fmul x7, x69, x7
	fadd x7, x7, x66
	fabs x7, x7
	lw x70, 4(x5)
	lw x70, 2(x70)
	fle x7, x70, x7
	beq	x7, zero, trace_ray_bneelse_b1652
# B1651
	mv x7, zero
	j trace_ray_cont_b1653 # adhoc jump(2)
trace_ray_bneelse_b1652:
# B1652
	lw x7, 3(x67)
	feq x7, x7, zero
	xori x7, x7, 1
trace_ray_cont_b1653:
# B1653
	bne	x7, zero, trace_ray_beqelse_b1655
# B1654
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
	beq	x6, zero, trace_ray_bneelse_b1657
# B1656
	mv x5, zero
	j trace_ray_cont_b1660 # adhoc jump(2)
trace_ray_bneelse_b1657:
# B1657
	lw x6, 1(x68)
	fmul x6, x66, x6
	fadd x6, x6, x65
	fabs x6, x6
	lw x5, 4(x5)
	lw x5, 1(x5)
	fle x5, x5, x6
	beq	x5, zero, trace_ray_bneelse_b1659
# B1658
	mv x5, zero
	j trace_ray_cont_b1660 # adhoc jump(2)
trace_ray_bneelse_b1659:
# B1659
	lw x5, 5(x67)
	feq x5, x5, zero
	xori x5, x5, 1
trace_ray_cont_b1660:
# B1660
	bne	x5, zero, trace_ray_beqelse_b1662
# B1661
	mv x5, zero
	j trace_ray_cont_b1680 # adhoc jump(2)
trace_ray_beqelse_b1662:
# B1662
	sw x66, 0(x34)
	li x5, 3
	j trace_ray_cont_b1680 # adhoc jump(2)
trace_ray_beqelse_b1655:
# B1655
	sw x69, 0(x34)
	li x5, 2
	j trace_ray_cont_b1680 # adhoc jump(2)
trace_ray_beqelse_b1648:
# B1648
	sw x69, 0(x34)
	li x5, 1
	j trace_ray_cont_b1680 # adhoc jump(2)
trace_ray_beqelse_b1641:
# B1641
	bne	x68, x14, trace_ray_beqelse_b1664
# B1663
	lw x5, 0(x67)
	fle x5, zero, x5
	beq	x5, zero, trace_ray_bneelse_b1666
# B1665
	mv x5, zero
	j trace_ray_cont_b1680 # adhoc jump(2)
trace_ray_bneelse_b1666:
# B1666
	lw x5, 1(x67)
	fmul x5, x5, x6
	lw x6, 2(x67)
	fmul x6, x6, x65
	fadd x5, x5, x6
	lw x6, 3(x67)
	fmul x6, x6, x66
	fadd x5, x5, x6
	sw x5, 0(x34)
	li x5, 1
	j trace_ray_cont_b1680 # adhoc jump(2)
trace_ray_beqelse_b1664:
# B1664
	lw x68, 0(x67)
	feq x69, x68, zero
	bne	x69, zero, trace_ray_beqelse_b1668
# B1667
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
	bne	x71, zero, trace_ray_beqelse_b1670
# B1669
	mv x6, x70
	j trace_ray_cont_b1671 # adhoc jump(2)
trace_ray_beqelse_b1670:
# B1670
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
trace_ray_cont_b1671:
# B1671
	lw x65, 1(x5)
	bne	x65, x7, trace_ray_beqelse_b1673
# B1672
	lui x65, 260096
	fsub x6, x6, x65
	j trace_ray_cont_b1674 # adhoc jump(2)
trace_ray_beqelse_b1673:
# B1673
trace_ray_cont_b1674:
# B1674
	fmul x65, x69, x69
	fmul x6, x68, x6
	fsub x6, x65, x6
	fle x65, x6, zero
	beq	x65, zero, trace_ray_bneelse_b1676
# B1675
	mv x5, zero
	j trace_ray_cont_b1680 # adhoc jump(2)
trace_ray_bneelse_b1676:
# B1676
	lw x5, 6(x5)
	bne	x5, zero, trace_ray_beqelse_b1678
# B1677
	fsqrt x5, x6
	fsub x5, x69, x5
	lw x6, 4(x67)
	fmul x5, x5, x6
	sw x5, 0(x34)
	j trace_ray_cont_b1679 # adhoc jump(2)
trace_ray_beqelse_b1678:
# B1678
	fsqrt x5, x6
	fadd x5, x69, x5
	lw x6, 4(x67)
	fmul x5, x5, x6
	sw x5, 0(x34)
trace_ray_cont_b1679:
# B1679
	li x5, 1
	j trace_ray_cont_b1680 # adhoc jump(2)
trace_ray_beqelse_b1668:
# B1668
	mv x5, zero
trace_ray_cont_b1680:
# B1680
	lw x6, 0(x34)
	bne	x5, zero, trace_ray_beqelse_b1682
# B1681
	mv x5, zero
	j trace_ray_cont_b1683 # adhoc jump(2)
trace_ray_beqelse_b1682:
# B1682
	lui x5, 779469
	addi x5, x5, -819
	fle x5, x5, x6
	xori x5, x5, 1
trace_ray_cont_b1683:
# B1683
	addi x39, x39, 1
	bne	x5, zero, trace_ray_beqelse_b1685
# B1684
	add x4, x13, x36
	lw x36, 0(x4)
	lw x36, 6(x36)
	bne	x36, zero, trace_ray_beqelse_b1687
# B1686
	mv x36, zero
	j trace_ray_cont_b1720 # adhoc jump(2)
trace_ray_beqelse_b1687:
# B1687
	j	trace_ray_loop_b1637
trace_ray_beqelse_b1685:
# B1685
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
	j	trace_ray_loop_b1688
trace_ray_bneelse_b1715:	#moved
# B1715
	addi x36, x5, 1
	mv x5, x36
trace_ray_loop_b1688:
# B1688
	add x4, x66, x5
	lw x36, 0(x4)
	bne	x36, x12, trace_ray_beqelse_b1690
# B1689
	li x36, 1
	j trace_ray_cont_b1717 # adhoc jump(2)
trace_ray_beqelse_b1690:
# B1690
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
	bne	x70, x11, trace_ray_beqelse_b1692
# B1691
	fabs x6, x6
	lw x70, 4(x36)
	lw x70, 0(x70)
	fle x6, x70, x6
	beq	x6, zero, trace_ray_bneelse_b1694
# B1693
	mv x6, zero
	j trace_ray_cont_b1697 # adhoc jump(2)
trace_ray_bneelse_b1694:
# B1694
	fabs x6, x65
	lw x65, 4(x36)
	lw x65, 1(x65)
	fle x6, x65, x6
	beq	x6, zero, trace_ray_bneelse_b1696
# B1695
	mv x6, zero
	j trace_ray_cont_b1697 # adhoc jump(2)
trace_ray_bneelse_b1696:
# B1696
	fabs x6, x7
	lw x65, 4(x36)
	lw x65, 2(x65)
	fle x6, x65, x6
	xori x6, x6, 1
trace_ray_cont_b1697:
# B1697
	bne	x6, zero, trace_ray_beqelse_b1699
# B1698
	lw x36, 6(x36)
	xori x36, x36, 1
	j trace_ray_cont_b1714 # adhoc jump(2)
trace_ray_beqelse_b1699:
# B1699
	lw x36, 6(x36)
	j trace_ray_cont_b1714 # adhoc jump(2)
trace_ray_beqelse_b1692:
# B1692
	bne	x70, x14, trace_ray_beqelse_b1701
# B1700
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
	bne	x36, zero, trace_ray_beqelse_b1703
# B1702
	mv x36, x6
	j trace_ray_cont_b1704 # adhoc jump(2)
trace_ray_beqelse_b1703:
# B1703
	xori x36, x6, 1
trace_ray_cont_b1704:
# B1704
	xori x36, x36, 1
	j trace_ray_cont_b1714 # adhoc jump(2)
trace_ray_beqelse_b1701:
# B1701
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
	bne	x71, zero, trace_ray_beqelse_b1706
# B1705
	mv x6, x70
	j trace_ray_cont_b1707 # adhoc jump(2)
trace_ray_beqelse_b1706:
# B1706
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
trace_ray_cont_b1707:
# B1707
	lw x65, 1(x36)
	li x7, 3
	bne	x65, x7, trace_ray_beqelse_b1709
# B1708
	lui x65, 260096
	fsub x6, x6, x65
	j trace_ray_cont_b1710 # adhoc jump(2)
trace_ray_beqelse_b1709:
# B1709
trace_ray_cont_b1710:
# B1710
	lw x36, 6(x36)
	fle x6, zero, x6
	xori x6, x6, 1
	bne	x36, zero, trace_ray_beqelse_b1712
# B1711
	mv x36, x6
	j trace_ray_cont_b1713 # adhoc jump(2)
trace_ray_beqelse_b1712:
# B1712
	xori x36, x6, 1
trace_ray_cont_b1713:
# B1713
	xori x36, x36, 1
trace_ray_cont_b1714:
# B1714
	beq	x36, zero, trace_ray_bneelse_b1715
# B1716
	mv x36, zero
trace_ray_cont_b1717:
# B1717
	beq	x36, zero, trace_ray_bneelse_b1718
# B1719
	mv x36, x11
trace_ray_cont_b1720:
# B1720
	beq	x36, zero, trace_ray_bneelse_b1721
# B1722
	mv x36, x11
trace_ray_cont_b1723:
# B1723
	bne	x36, zero, trace_ray_beqelse_b1725
# B1724
	mv x34, zero
	j trace_ray_cont_b1726 # adhoc jump(2)
trace_ray_beqelse_b1725:
# B1725
	mv x34, x11
trace_ray_cont_b1726:
# B1726
	addi x32, x32, 1
	beq	x34, zero, trace_ray_bneelse_b1727
# B1728
	mv x36, x31
	mv x35, x11
	j	trace_ray_loop_b1729
trace_ray_bneelse_b1816:	#moved
# B1816
	addi x31, x35, 1
	mv x35, x31
trace_ray_loop_b1729:
# B1729
	add x4, x36, x35
	lw x31, 0(x4)
	bne	x31, x12, trace_ray_beqelse_b1731
# B1730
	mv x31, zero
	j trace_ray_cont_b1818 # adhoc jump(2)
trace_ray_beqelse_b1731:
# B1731
	la x34, min_caml_and_net
	add x4, x34, x31
	lw x31, 0(x4)
	mv x37, x31
	mv x34, zero
	j	trace_ray_loop_b1732
trace_ray_bneelse_b1813:	#moved
# B1813
trace_ray_loop_b1732:
# B1732
	add x4, x37, x34
	lw x31, 0(x4)
	bne	x31, x12, trace_ray_beqelse_b1734
# B1733
	mv x31, zero
	j trace_ray_cont_b1815 # adhoc jump(2)
trace_ray_beqelse_b1734:
# B1734
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
	bne	x66, x11, trace_ray_beqelse_b1736
# B1735
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
	beq	x67, zero, trace_ray_bneelse_b1738
# B1737
	mv x67, zero
	j trace_ray_cont_b1741 # adhoc jump(2)
trace_ray_bneelse_b1738:
# B1738
	lw x67, 2(x38)
	fmul x67, x66, x67
	fadd x67, x67, x6
	fabs x67, x67
	lw x68, 4(x39)
	lw x68, 2(x68)
	fle x67, x68, x67
	beq	x67, zero, trace_ray_bneelse_b1740
# B1739
	mv x67, zero
	j trace_ray_cont_b1741 # adhoc jump(2)
trace_ray_bneelse_b1740:
# B1740
	lw x67, 1(x65)
	feq x67, x67, zero
	xori x67, x67, 1
trace_ray_cont_b1741:
# B1741
	bne	x67, zero, trace_ray_beqelse_b1743
# B1742
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
	beq	x67, zero, trace_ray_bneelse_b1745
# B1744
	mv x67, zero
	j trace_ray_cont_b1748 # adhoc jump(2)
trace_ray_bneelse_b1745:
# B1745
	lw x67, 2(x38)
	fmul x67, x66, x67
	fadd x67, x67, x6
	fabs x67, x67
	lw x68, 4(x39)
	lw x68, 2(x68)
	fle x67, x68, x67
	beq	x67, zero, trace_ray_bneelse_b1747
# B1746
	mv x67, zero
	j trace_ray_cont_b1748 # adhoc jump(2)
trace_ray_bneelse_b1747:
# B1747
	lw x67, 3(x65)
	feq x67, x67, zero
	xori x67, x67, 1
trace_ray_cont_b1748:
# B1748
	bne	x67, zero, trace_ray_beqelse_b1750
# B1749
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
	beq	x40, zero, trace_ray_bneelse_b1752
# B1751
	mv x38, zero
	j trace_ray_cont_b1755 # adhoc jump(2)
trace_ray_bneelse_b1752:
# B1752
	lw x38, 1(x38)
	fmul x38, x6, x38
	fadd x38, x38, x5
	fabs x38, x38
	lw x39, 4(x39)
	lw x39, 1(x39)
	fle x38, x39, x38
	beq	x38, zero, trace_ray_bneelse_b1754
# B1753
	mv x38, zero
	j trace_ray_cont_b1755 # adhoc jump(2)
trace_ray_bneelse_b1754:
# B1754
	lw x38, 5(x65)
	feq x38, x38, zero
	xori x38, x38, 1
trace_ray_cont_b1755:
# B1755
	bne	x38, zero, trace_ray_beqelse_b1757
# B1756
	mv x38, zero
	j trace_ray_cont_b1775 # adhoc jump(2)
trace_ray_beqelse_b1757:
# B1757
	la x38, min_caml_solver_dist
	sw x6, 0(x38)
	li x38, 3
	j trace_ray_cont_b1775 # adhoc jump(2)
trace_ray_beqelse_b1750:
# B1750
	la x38, min_caml_solver_dist
	sw x66, 0(x38)
	li x38, 2
	j trace_ray_cont_b1775 # adhoc jump(2)
trace_ray_beqelse_b1743:
# B1743
	la x38, min_caml_solver_dist
	sw x66, 0(x38)
	li x38, 1
	j trace_ray_cont_b1775 # adhoc jump(2)
trace_ray_beqelse_b1736:
# B1736
	bne	x66, x14, trace_ray_beqelse_b1759
# B1758
	lw x38, 0(x65)
	fle x38, zero, x38
	beq	x38, zero, trace_ray_bneelse_b1761
# B1760
	mv x38, zero
	j trace_ray_cont_b1775 # adhoc jump(2)
trace_ray_bneelse_b1761:
# B1761
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
	li x38, 1
	j trace_ray_cont_b1775 # adhoc jump(2)
trace_ray_beqelse_b1759:
# B1759
	lw x38, 0(x65)
	feq x66, x38, zero
	bne	x66, zero, trace_ray_beqelse_b1763
# B1762
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
	bne	x69, zero, trace_ray_beqelse_b1765
# B1764
	mv x40, x68
	j trace_ray_cont_b1766 # adhoc jump(2)
trace_ray_beqelse_b1765:
# B1765
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
trace_ray_cont_b1766:
# B1766
	lw x5, 1(x39)
	bne	x5, x67, trace_ray_beqelse_b1768
# B1767
	lui x5, 260096
	fsub x40, x40, x5
	j trace_ray_cont_b1769 # adhoc jump(2)
trace_ray_beqelse_b1768:
# B1768
trace_ray_cont_b1769:
# B1769
	fmul x5, x66, x66
	fmul x38, x38, x40
	fsub x38, x5, x38
	fle x40, x38, zero
	beq	x40, zero, trace_ray_bneelse_b1771
# B1770
	mv x38, zero
	j trace_ray_cont_b1775 # adhoc jump(2)
trace_ray_bneelse_b1771:
# B1771
	lw x39, 6(x39)
	bne	x39, zero, trace_ray_beqelse_b1773
# B1772
	la x39, min_caml_solver_dist
	fsqrt x38, x38
	fsub x38, x66, x38
	lw x40, 4(x65)
	fmul x38, x38, x40
	sw x38, 0(x39)
	j trace_ray_cont_b1774 # adhoc jump(2)
trace_ray_beqelse_b1773:
# B1773
	la x39, min_caml_solver_dist
	fsqrt x38, x38
	fadd x38, x66, x38
	lw x40, 4(x65)
	fmul x38, x38, x40
	sw x38, 0(x39)
trace_ray_cont_b1774:
# B1774
	li x38, 1
	j trace_ray_cont_b1775 # adhoc jump(2)
trace_ray_beqelse_b1763:
# B1763
	mv x38, zero
trace_ray_cont_b1775:
# B1775
	la x39, min_caml_solver_dist
	lw x39, 0(x39)
	bne	x38, zero, trace_ray_beqelse_b1777
# B1776
	mv x38, zero
	j trace_ray_cont_b1778 # adhoc jump(2)
trace_ray_beqelse_b1777:
# B1777
	lui x38, 779469
	addi x38, x38, -819
	fle x38, x38, x39
	xori x38, x38, 1
trace_ray_cont_b1778:
# B1778
	addi x34, x34, 1
	bne	x38, zero, trace_ray_beqelse_b1780
# B1779
	add x4, x13, x31
	lw x31, 0(x4)
	lw x31, 6(x31)
	bne	x31, zero, trace_ray_beqelse_b1782
# B1781
	mv x31, zero
	j trace_ray_cont_b1815 # adhoc jump(2)
trace_ray_beqelse_b1782:
# B1782
	j	trace_ray_loop_b1732
trace_ray_beqelse_b1780:
# B1780
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
	j	trace_ray_loop_b1783
trace_ray_bneelse_b1810:	#moved
# B1810
	addi x31, x38, 1
	mv x38, x31
trace_ray_loop_b1783:
# B1783
	add x4, x5, x38
	lw x31, 0(x4)
	bne	x31, x12, trace_ray_beqelse_b1785
# B1784
	li x31, 1
	j trace_ray_cont_b1812 # adhoc jump(2)
trace_ray_beqelse_b1785:
# B1785
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
	bne	x68, x11, trace_ray_beqelse_b1787
# B1786
	fabs x39, x39
	lw x68, 4(x31)
	lw x68, 0(x68)
	fle x39, x68, x39
	beq	x39, zero, trace_ray_bneelse_b1789
# B1788
	mv x39, zero
	j trace_ray_cont_b1792 # adhoc jump(2)
trace_ray_bneelse_b1789:
# B1789
	fabs x39, x40
	lw x40, 4(x31)
	lw x40, 1(x40)
	fle x39, x40, x39
	beq	x39, zero, trace_ray_bneelse_b1791
# B1790
	mv x39, zero
	j trace_ray_cont_b1792 # adhoc jump(2)
trace_ray_bneelse_b1791:
# B1791
	fabs x39, x67
	lw x40, 4(x31)
	lw x40, 2(x40)
	fle x39, x40, x39
	xori x39, x39, 1
trace_ray_cont_b1792:
# B1792
	bne	x39, zero, trace_ray_beqelse_b1794
# B1793
	lw x31, 6(x31)
	xori x31, x31, 1
	j trace_ray_cont_b1809 # adhoc jump(2)
trace_ray_beqelse_b1794:
# B1794
	lw x31, 6(x31)
	j trace_ray_cont_b1809 # adhoc jump(2)
trace_ray_beqelse_b1787:
# B1787
	bne	x68, x14, trace_ray_beqelse_b1796
# B1795
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
	bne	x31, zero, trace_ray_beqelse_b1798
# B1797
	mv x31, x39
	j trace_ray_cont_b1799 # adhoc jump(2)
trace_ray_beqelse_b1798:
# B1798
	xori x31, x39, 1
trace_ray_cont_b1799:
# B1799
	xori x31, x31, 1
	j trace_ray_cont_b1809 # adhoc jump(2)
trace_ray_beqelse_b1796:
# B1796
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
	bne	x69, zero, trace_ray_beqelse_b1801
# B1800
	mv x39, x68
	j trace_ray_cont_b1802 # adhoc jump(2)
trace_ray_beqelse_b1801:
# B1801
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
trace_ray_cont_b1802:
# B1802
	lw x40, 1(x31)
	li x67, 3
	bne	x40, x67, trace_ray_beqelse_b1804
# B1803
	fsub x39, x39, x16
	j trace_ray_cont_b1805 # adhoc jump(2)
trace_ray_beqelse_b1804:
# B1804
trace_ray_cont_b1805:
# B1805
	lw x31, 6(x31)
	fle x39, zero, x39
	xori x39, x39, 1
	bne	x31, zero, trace_ray_beqelse_b1807
# B1806
	mv x31, x39
	j trace_ray_cont_b1808 # adhoc jump(2)
trace_ray_beqelse_b1807:
# B1807
	xori x31, x39, 1
trace_ray_cont_b1808:
# B1808
	xori x31, x31, 1
trace_ray_cont_b1809:
# B1809
	beq	x31, zero, trace_ray_bneelse_b1810
# B1811
	mv x31, zero
trace_ray_cont_b1812:
# B1812
	beq	x31, zero, trace_ray_bneelse_b1813
# B1814
	mv x31, x11
trace_ray_cont_b1815:
# B1815
	beq	x31, zero, trace_ray_bneelse_b1816
# B1817
	mv x31, x11
trace_ray_cont_b1818:
# B1818
	beq	x31, zero, trace_ray_bneelse_b1819
# B1820
	mv x31, x11
trace_ray_cont_b1821:
# B1821
	bne	x31, zero, trace_ray_beqelse_b1823
# B1822
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
	bne	x23, zero, trace_ray_beqelse_b1824
# B1825
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
trace_ray_beqelse_b1824:
# B1824
trace_ray_cont_b1826:
# B1826
	fle x12, x16, zero
	bne	x12, zero, trace_ray_beqelse_b1827
# B1828
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
trace_ray_beqelse_b1827:
# B1827
trace_ray_beqelse_b1823:
# B1823
	j trace_ray_cont_b1829 # adhoc jump(2)
trace_ray_bneelse_b1727:
# B1727
	j	trace_ray_loop_b1584
trace_ray_beqelse_b1583:
# B1583
trace_ray_bneelse_b1580:
# B1580
trace_ray_cont_b1829:
# B1829
	addi x12, x17, -1
	mv x17, x12
	j	trace_ray_loop_b1362
trace_ray_bleelse_b1364:
# B1364
# B1830
	lui x10, 253133
	addi x10, x10, -819
	fle x10, x102, x10
	beq	x10, zero, trace_ray_bneelse_b1832
# B1831
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
trace_ray_bneelse_b1832:
# B1832
	addi x10, x101, 1
	bge	x101, x106, trace_ray_bgtelse_b1833
# B1834
	add x4, x107, x10
	sw x12, 0(x4)
trace_ray_bgtelse_b1833:
# B1833
trace_ray_cont_b1835:
# B1835
	beq	x22, x14, trace_ray_bneelse_b1836
# B1837
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
trace_ray_bneelse_b1244:
# B1244
	j	trace_ray_loop_b1101
trace_ray_bleelse_b888:
# B888
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
trace_diffuse_ray.3279:
# B1838
# B1839
	la x10, min_caml_tmin
	lui x100, 321255
	addi x100, x100, -1240
	sw x100, 0(x10)
	la x100, min_caml_or_net
	lw x11, 0(x100)
	mv x12, zero
	mv x14, x5
	mv x13, x11
trace_diffuse_ray_loop_b1840:
# B1840
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
	beq	x15, x17, trace_diffuse_ray_bneelse_b1841
# B1842
	li x25, 99
	la x26, min_caml_solver_dist
	li x27, 3
	bne	x15, x25, trace_diffuse_ray_beqelse_b1844
# B1843
	mv x28, x16
	mv x30, x14
	mv x29, x11
trace_diffuse_ray_loop_b1845:
# B1845
	add x4, x29, x28
	lw x11, 0(x4)
	beq	x11, x17, trace_diffuse_ray_bneelse_b1846
# B1847
	la x15, min_caml_and_net
	add x4, x15, x11
	lw x11, 0(x4)
	mv x15, zero
	mv x23, x11
	mv x24, x30
trace_diffuse_ray_loop_b1848:
# B1848
	lw x11, 0(x24)
	add x4, x23, x15
	lw x25, 0(x4)
	beq	x25, x17, trace_diffuse_ray_bneelse_b1849
# B1850
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
	bne	x37, x16, trace_diffuse_ray_beqelse_b1852
# B1851
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
	beq	x38, zero, trace_diffuse_ray_bneelse_b1854
# B1853
	mv x38, zero
	j trace_diffuse_ray_cont_b1857 # adhoc jump(2)
trace_diffuse_ray_bneelse_b1854:
# B1854
	lw x38, 2(x32)
	fmul x38, x37, x38
	fadd x38, x38, x35
	fabs x38, x38
	lw x39, 4(x31)
	lw x39, 2(x39)
	fle x38, x39, x38
	beq	x38, zero, trace_diffuse_ray_bneelse_b1856
# B1855
	mv x38, zero
	j trace_diffuse_ray_cont_b1857 # adhoc jump(2)
trace_diffuse_ray_bneelse_b1856:
# B1856
	lw x38, 1(x36)
	feq x38, x38, zero
	xori x38, x38, 1
trace_diffuse_ray_cont_b1857:
# B1857
	bne	x38, zero, trace_diffuse_ray_beqelse_b1859
# B1858
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
	beq	x38, zero, trace_diffuse_ray_bneelse_b1861
# B1860
	mv x38, zero
	j trace_diffuse_ray_cont_b1864 # adhoc jump(2)
trace_diffuse_ray_bneelse_b1861:
# B1861
	lw x38, 2(x32)
	fmul x38, x37, x38
	fadd x38, x38, x35
	fabs x38, x38
	lw x39, 4(x31)
	lw x39, 2(x39)
	fle x38, x39, x38
	beq	x38, zero, trace_diffuse_ray_bneelse_b1863
# B1862
	mv x38, zero
	j trace_diffuse_ray_cont_b1864 # adhoc jump(2)
trace_diffuse_ray_bneelse_b1863:
# B1863
	lw x38, 3(x36)
	feq x38, x38, zero
	xori x38, x38, 1
trace_diffuse_ray_cont_b1864:
# B1864
	bne	x38, zero, trace_diffuse_ray_beqelse_b1866
# B1865
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
	beq	x33, zero, trace_diffuse_ray_bneelse_b1868
# B1867
	mv x31, zero
	j trace_diffuse_ray_cont_b1871 # adhoc jump(2)
trace_diffuse_ray_bneelse_b1868:
# B1868
	lw x32, 1(x32)
	fmul x32, x35, x32
	fadd x32, x32, x34
	fabs x32, x32
	lw x31, 4(x31)
	lw x31, 1(x31)
	fle x31, x31, x32
	beq	x31, zero, trace_diffuse_ray_bneelse_b1870
# B1869
	mv x31, zero
	j trace_diffuse_ray_cont_b1871 # adhoc jump(2)
trace_diffuse_ray_bneelse_b1870:
# B1870
	lw x31, 5(x36)
	feq x31, x31, zero
	xori x31, x31, 1
trace_diffuse_ray_cont_b1871:
# B1871
	bne	x31, zero, trace_diffuse_ray_beqelse_b1873
# B1872
	mv x31, zero
	j trace_diffuse_ray_cont_b1885 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1873:
# B1873
	la x31, min_caml_solver_dist
	sw x35, 0(x31)
	li x31, 3
	j trace_diffuse_ray_cont_b1885 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1866:
# B1866
	la x31, min_caml_solver_dist
	sw x37, 0(x31)
	li x31, 2
	j trace_diffuse_ray_cont_b1885 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1859:
# B1859
	la x31, min_caml_solver_dist
	sw x37, 0(x31)
	li x31, 1
	j trace_diffuse_ray_cont_b1885 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1852:
# B1852
	bne	x37, x19, trace_diffuse_ray_beqelse_b1875
# B1874
	lw x31, 0(x36)
	fle x31, zero, x31
	beq	x31, zero, trace_diffuse_ray_bneelse_b1877
# B1876
	mv x31, zero
	j trace_diffuse_ray_cont_b1885 # adhoc jump(2)
trace_diffuse_ray_bneelse_b1877:
# B1877
	la x31, min_caml_solver_dist
	lw x33, 0(x36)
	lw x32, 3(x32)
	fmul x32, x33, x32
	sw x32, 0(x31)
	li x31, 1
	j trace_diffuse_ray_cont_b1885 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1875:
# B1875
	lw x37, 0(x36)
	feq x38, x37, zero
	bne	x38, zero, trace_diffuse_ray_beqelse_b1879
# B1878
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
	beq	x34, zero, trace_diffuse_ray_bneelse_b1881
# B1880
	mv x31, zero
	j trace_diffuse_ray_cont_b1885 # adhoc jump(2)
trace_diffuse_ray_bneelse_b1881:
# B1881
	lw x31, 6(x31)
	bne	x31, zero, trace_diffuse_ray_beqelse_b1883
# B1882
	la x31, min_caml_solver_dist
	fsqrt x32, x32
	fsub x32, x33, x32
	lw x33, 4(x36)
	fmul x32, x32, x33
	sw x32, 0(x31)
	j trace_diffuse_ray_cont_b1884 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1883:
# B1883
	la x31, min_caml_solver_dist
	fsqrt x32, x32
	fadd x32, x33, x32
	lw x33, 4(x36)
	fmul x32, x32, x33
	sw x32, 0(x31)
trace_diffuse_ray_cont_b1884:
# B1884
	li x31, 1
	j trace_diffuse_ray_cont_b1885 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1879:
# B1879
	mv x31, zero
trace_diffuse_ray_cont_b1885:
# B1885
	addi x15, x15, 1
	bne	x31, zero, trace_diffuse_ray_beqelse_b1887
# B1886
	add x4, x18, x25
	lw x11, 0(x4)
	lw x11, 6(x11)
	bne	x11, zero, trace_diffuse_ray_beqelse_b1889
# B1888
	j trace_diffuse_ray_cont_b1927 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1889:
# B1889
	j	trace_diffuse_ray_loop_b1848
trace_diffuse_ray_beqelse_b1887:
# B1887
	lw x32, 0(x26)
	fle x33, x32, zero
	bne	x33, zero, trace_diffuse_ray_beqelse_b1890
# B1891
	lw x33, 0(x10)
	fle x33, x33, x32
	bne	x33, zero, trace_diffuse_ray_beqelse_b1892
# B1893
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
	j	trace_diffuse_ray_loop_b1894
trace_diffuse_ray_bneelse_b1921:	#moved
# B1921
	addi x34, x34, 1
trace_diffuse_ray_loop_b1894:
# B1894
	add x4, x36, x34
	lw x40, 0(x4)
	bne	x40, x17, trace_diffuse_ray_beqelse_b1896
# B1895
	li x34, 1
	j trace_diffuse_ray_cont_b1923 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1896:
# B1896
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
	bne	x68, x16, trace_diffuse_ray_beqelse_b1898
# B1897
	fabs x6, x6
	lw x68, 4(x40)
	lw x68, 0(x68)
	fle x6, x68, x6
	beq	x6, zero, trace_diffuse_ray_bneelse_b1900
# B1899
	mv x6, zero
	j trace_diffuse_ray_cont_b1903 # adhoc jump(2)
trace_diffuse_ray_bneelse_b1900:
# B1900
	fabs x6, x66
	lw x66, 4(x40)
	lw x66, 1(x66)
	fle x6, x66, x6
	beq	x6, zero, trace_diffuse_ray_bneelse_b1902
# B1901
	mv x6, zero
	j trace_diffuse_ray_cont_b1903 # adhoc jump(2)
trace_diffuse_ray_bneelse_b1902:
# B1902
	fabs x6, x67
	lw x66, 4(x40)
	lw x66, 2(x66)
	fle x6, x66, x6
	xori x6, x6, 1
trace_diffuse_ray_cont_b1903:
# B1903
	bne	x6, zero, trace_diffuse_ray_beqelse_b1905
# B1904
	lw x40, 6(x40)
	xori x40, x40, 1
	j trace_diffuse_ray_cont_b1920 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1905:
# B1905
	lw x40, 6(x40)
	j trace_diffuse_ray_cont_b1920 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1898:
# B1898
	bne	x68, x19, trace_diffuse_ray_beqelse_b1907
# B1906
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
	bne	x40, zero, trace_diffuse_ray_beqelse_b1909
# B1908
	mv x40, x6
	j trace_diffuse_ray_cont_b1910 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1909:
# B1909
	xori x40, x6, 1
trace_diffuse_ray_cont_b1910:
# B1910
	xori x40, x40, 1
	j trace_diffuse_ray_cont_b1920 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1907:
# B1907
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
	bne	x69, zero, trace_diffuse_ray_beqelse_b1912
# B1911
	mv x6, x68
	j trace_diffuse_ray_cont_b1913 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1912:
# B1912
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
trace_diffuse_ray_cont_b1913:
# B1913
	lw x66, 1(x40)
	bne	x66, x27, trace_diffuse_ray_beqelse_b1915
# B1914
	lui x66, 260096
	fsub x6, x6, x66
	j trace_diffuse_ray_cont_b1916 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1915:
# B1915
trace_diffuse_ray_cont_b1916:
# B1916
	lw x40, 6(x40)
	fle x6, zero, x6
	xori x6, x6, 1
	bne	x40, zero, trace_diffuse_ray_beqelse_b1918
# B1917
	mv x40, x6
	j trace_diffuse_ray_cont_b1919 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1918:
# B1918
	xori x40, x6, 1
trace_diffuse_ray_cont_b1919:
# B1919
	xori x40, x40, 1
trace_diffuse_ray_cont_b1920:
# B1920
	beq	x40, zero, trace_diffuse_ray_bneelse_b1921
# B1922
	mv x34, zero
trace_diffuse_ray_cont_b1923:
# B1923
	beq	x34, zero, trace_diffuse_ray_bneelse_b1924
# B1925
	sw x32, 0(x10)
	sw x33, 0(x20)
	sw x35, 1(x20)
	sw x11, 2(x20)
	sw x25, 0(x21)
	sw x31, 0(x22)
trace_diffuse_ray_bneelse_b1924:
# B1924
trace_diffuse_ray_beqelse_b1892:
# B1892
trace_diffuse_ray_beqelse_b1890:
# B1890
trace_diffuse_ray_cont_b1926:
# B1926
	j	trace_diffuse_ray_loop_b1848
trace_diffuse_ray_bneelse_b1849:
# B1849
trace_diffuse_ray_cont_b1927:
# B1927
	addi x11, x28, 1
	mv x28, x11
	j	trace_diffuse_ray_loop_b1845
trace_diffuse_ray_bneelse_b1846:
# B1846
	j trace_diffuse_ray_cont_b2050 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1844:
# B1844
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
	bne	x33, x16, trace_diffuse_ray_beqelse_b1929
# B1928
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
	beq	x34, zero, trace_diffuse_ray_bneelse_b1931
# B1930
	mv x34, zero
	j trace_diffuse_ray_cont_b1934 # adhoc jump(2)
trace_diffuse_ray_bneelse_b1931:
# B1931
	lw x34, 2(x28)
	fmul x34, x33, x34
	fadd x34, x34, x32
	fabs x34, x34
	lw x35, 4(x25)
	lw x35, 2(x35)
	fle x34, x35, x34
	beq	x34, zero, trace_diffuse_ray_bneelse_b1933
# B1932
	mv x34, zero
	j trace_diffuse_ray_cont_b1934 # adhoc jump(2)
trace_diffuse_ray_bneelse_b1933:
# B1933
	lw x34, 1(x15)
	feq x34, x34, zero
	xori x34, x34, 1
trace_diffuse_ray_cont_b1934:
# B1934
	bne	x34, zero, trace_diffuse_ray_beqelse_b1936
# B1935
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
	beq	x34, zero, trace_diffuse_ray_bneelse_b1938
# B1937
	mv x34, zero
	j trace_diffuse_ray_cont_b1941 # adhoc jump(2)
trace_diffuse_ray_bneelse_b1938:
# B1938
	lw x34, 2(x28)
	fmul x34, x33, x34
	fadd x34, x34, x32
	fabs x34, x34
	lw x35, 4(x25)
	lw x35, 2(x35)
	fle x34, x35, x34
	beq	x34, zero, trace_diffuse_ray_bneelse_b1940
# B1939
	mv x34, zero
	j trace_diffuse_ray_cont_b1941 # adhoc jump(2)
trace_diffuse_ray_bneelse_b1940:
# B1940
	lw x34, 3(x15)
	feq x34, x34, zero
	xori x34, x34, 1
trace_diffuse_ray_cont_b1941:
# B1941
	bne	x34, zero, trace_diffuse_ray_beqelse_b1943
# B1942
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
	beq	x29, zero, trace_diffuse_ray_bneelse_b1945
# B1944
	mv x15, zero
	j trace_diffuse_ray_cont_b1948 # adhoc jump(2)
trace_diffuse_ray_bneelse_b1945:
# B1945
	lw x28, 1(x28)
	fmul x28, x19, x28
	fadd x28, x28, x30
	fabs x28, x28
	lw x25, 4(x25)
	lw x25, 1(x25)
	fle x25, x25, x28
	beq	x25, zero, trace_diffuse_ray_bneelse_b1947
# B1946
	mv x15, zero
	j trace_diffuse_ray_cont_b1948 # adhoc jump(2)
trace_diffuse_ray_bneelse_b1947:
# B1947
	lw x15, 5(x15)
	feq x15, x15, zero
	xori x15, x15, 1
trace_diffuse_ray_cont_b1948:
# B1948
	bne	x15, zero, trace_diffuse_ray_beqelse_b1950
# B1949
	mv x19, zero
	j trace_diffuse_ray_cont_b1962 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1950:
# B1950
	sw x19, 0(x26)
	mv x19, x27
	j trace_diffuse_ray_cont_b1962 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1943:
# B1943
	sw x33, 0(x26)
	j trace_diffuse_ray_cont_b1962 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1936:
# B1936
	sw x33, 0(x26)
	mv x19, x16
	j trace_diffuse_ray_cont_b1962 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1929:
# B1929
	bne	x33, x31, trace_diffuse_ray_beqelse_b1952
# B1951
	lw x19, 0(x15)
	fle x19, zero, x19
	beq	x19, zero, trace_diffuse_ray_bneelse_b1954
# B1953
	mv x19, zero
	j trace_diffuse_ray_cont_b1962 # adhoc jump(2)
trace_diffuse_ray_bneelse_b1954:
# B1954
	lw x15, 0(x15)
	lw x19, 3(x28)
	fmul x15, x15, x19
	sw x15, 0(x26)
	mv x19, x16
	j trace_diffuse_ray_cont_b1962 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1952:
# B1952
	lw x19, 0(x15)
	feq x27, x19, zero
	bne	x27, zero, trace_diffuse_ray_beqelse_b1956
# B1955
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
	beq	x28, zero, trace_diffuse_ray_bneelse_b1958
# B1957
	mv x19, zero
	j trace_diffuse_ray_cont_b1962 # adhoc jump(2)
trace_diffuse_ray_bneelse_b1958:
# B1958
	lw x25, 6(x25)
	fsqrt x19, x19
	bne	x25, zero, trace_diffuse_ray_beqelse_b1960
# B1959
	fsub x19, x27, x19
	lw x15, 4(x15)
	fmul x15, x19, x15
	sw x15, 0(x26)
	j trace_diffuse_ray_cont_b1961 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1960:
# B1960
	fadd x19, x27, x19
	lw x15, 4(x15)
	fmul x15, x19, x15
	sw x15, 0(x26)
trace_diffuse_ray_cont_b1961:
# B1961
	mv x19, x16
	j trace_diffuse_ray_cont_b1962 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1956:
# B1956
	mv x19, zero
trace_diffuse_ray_cont_b1962:
# B1962
	beq	x19, zero, trace_diffuse_ray_bneelse_b1963
# B1964
	lw x15, 0(x26)
	lw x19, 0(x10)
	fle x15, x19, x15
	bne	x15, zero, trace_diffuse_ray_beqelse_b1965
# B1966
	mv x19, x16
	mv x27, x14
	mv x25, x11
trace_diffuse_ray_loop_b1967:
# B1967
	add x4, x25, x19
	lw x11, 0(x4)
	beq	x11, x17, trace_diffuse_ray_bneelse_b1968
# B1969
	la x15, min_caml_and_net
	add x4, x15, x11
	lw x11, 0(x4)
	mv x15, zero
	mv x29, x27
	mv x28, x11
trace_diffuse_ray_loop_b1970:
# B1970
	lw x11, 0(x29)
	add x4, x28, x15
	lw x30, 0(x4)
	beq	x30, x17, trace_diffuse_ray_bneelse_b1971
# B1972
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
	bne	x38, x16, trace_diffuse_ray_beqelse_b1974
# B1973
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
	beq	x39, zero, trace_diffuse_ray_bneelse_b1976
# B1975
	mv x39, zero
	j trace_diffuse_ray_cont_b1979 # adhoc jump(2)
trace_diffuse_ray_bneelse_b1976:
# B1976
	lw x39, 2(x33)
	fmul x39, x38, x39
	fadd x39, x39, x36
	fabs x39, x39
	lw x40, 4(x32)
	lw x40, 2(x40)
	fle x39, x40, x39
	beq	x39, zero, trace_diffuse_ray_bneelse_b1978
# B1977
	mv x39, zero
	j trace_diffuse_ray_cont_b1979 # adhoc jump(2)
trace_diffuse_ray_bneelse_b1978:
# B1978
	lw x39, 1(x37)
	feq x39, x39, zero
	xori x39, x39, 1
trace_diffuse_ray_cont_b1979:
# B1979
	bne	x39, zero, trace_diffuse_ray_beqelse_b1981
# B1980
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
	beq	x39, zero, trace_diffuse_ray_bneelse_b1983
# B1982
	mv x39, zero
	j trace_diffuse_ray_cont_b1986 # adhoc jump(2)
trace_diffuse_ray_bneelse_b1983:
# B1983
	lw x39, 2(x33)
	fmul x39, x38, x39
	fadd x39, x39, x36
	fabs x39, x39
	lw x40, 4(x32)
	lw x40, 2(x40)
	fle x39, x40, x39
	beq	x39, zero, trace_diffuse_ray_bneelse_b1985
# B1984
	mv x39, zero
	j trace_diffuse_ray_cont_b1986 # adhoc jump(2)
trace_diffuse_ray_bneelse_b1985:
# B1985
	lw x39, 3(x37)
	feq x39, x39, zero
	xori x39, x39, 1
trace_diffuse_ray_cont_b1986:
# B1986
	bne	x39, zero, trace_diffuse_ray_beqelse_b1988
# B1987
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
	beq	x34, zero, trace_diffuse_ray_bneelse_b1990
# B1989
	mv x32, zero
	j trace_diffuse_ray_cont_b1993 # adhoc jump(2)
trace_diffuse_ray_bneelse_b1990:
# B1990
	lw x33, 1(x33)
	fmul x33, x36, x33
	fadd x33, x33, x35
	fabs x33, x33
	lw x32, 4(x32)
	lw x32, 1(x32)
	fle x32, x32, x33
	beq	x32, zero, trace_diffuse_ray_bneelse_b1992
# B1991
	mv x32, zero
	j trace_diffuse_ray_cont_b1993 # adhoc jump(2)
trace_diffuse_ray_bneelse_b1992:
# B1992
	lw x32, 5(x37)
	feq x32, x32, zero
	xori x32, x32, 1
trace_diffuse_ray_cont_b1993:
# B1993
	bne	x32, zero, trace_diffuse_ray_beqelse_b1995
# B1994
	mv x32, zero
	j trace_diffuse_ray_cont_b2007 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1995:
# B1995
	sw x36, 0(x26)
	li x32, 3
	j trace_diffuse_ray_cont_b2007 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1988:
# B1988
	sw x38, 0(x26)
	li x32, 2
	j trace_diffuse_ray_cont_b2007 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1981:
# B1981
	sw x38, 0(x26)
	li x32, 1
	j trace_diffuse_ray_cont_b2007 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1974:
# B1974
	bne	x38, x31, trace_diffuse_ray_beqelse_b1997
# B1996
	lw x32, 0(x37)
	fle x32, zero, x32
	beq	x32, zero, trace_diffuse_ray_bneelse_b1999
# B1998
	mv x32, zero
	j trace_diffuse_ray_cont_b2007 # adhoc jump(2)
trace_diffuse_ray_bneelse_b1999:
# B1999
	lw x32, 0(x37)
	lw x33, 3(x33)
	fmul x32, x32, x33
	sw x32, 0(x26)
	li x32, 1
	j trace_diffuse_ray_cont_b2007 # adhoc jump(2)
trace_diffuse_ray_beqelse_b1997:
# B1997
	lw x38, 0(x37)
	feq x39, x38, zero
	bne	x39, zero, trace_diffuse_ray_beqelse_b2001
# B2000
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
	beq	x35, zero, trace_diffuse_ray_bneelse_b2003
# B2002
	mv x32, zero
	j trace_diffuse_ray_cont_b2007 # adhoc jump(2)
trace_diffuse_ray_bneelse_b2003:
# B2003
	lw x32, 6(x32)
	bne	x32, zero, trace_diffuse_ray_beqelse_b2005
# B2004
	fsqrt x32, x33
	fsub x32, x34, x32
	lw x33, 4(x37)
	fmul x32, x32, x33
	sw x32, 0(x26)
	j trace_diffuse_ray_cont_b2006 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2005:
# B2005
	fsqrt x32, x33
	fadd x32, x34, x32
	lw x33, 4(x37)
	fmul x32, x32, x33
	sw x32, 0(x26)
trace_diffuse_ray_cont_b2006:
# B2006
	li x32, 1
	j trace_diffuse_ray_cont_b2007 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2001:
# B2001
	mv x32, zero
trace_diffuse_ray_cont_b2007:
# B2007
	addi x15, x15, 1
	bne	x32, zero, trace_diffuse_ray_beqelse_b2009
# B2008
	add x4, x18, x30
	lw x11, 0(x4)
	lw x11, 6(x11)
	bne	x11, zero, trace_diffuse_ray_beqelse_b2011
# B2010
	j trace_diffuse_ray_cont_b2049 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2011:
# B2011
	j	trace_diffuse_ray_loop_b1970
trace_diffuse_ray_beqelse_b2009:
# B2009
	lw x33, 0(x26)
	fle x34, x33, zero
	bne	x34, zero, trace_diffuse_ray_beqelse_b2012
# B2013
	lw x34, 0(x10)
	fle x34, x34, x33
	bne	x34, zero, trace_diffuse_ray_beqelse_b2014
# B2015
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
	j	trace_diffuse_ray_loop_b2016
trace_diffuse_ray_bneelse_b2043:	#moved
# B2043
	addi x35, x35, 1
trace_diffuse_ray_loop_b2016:
# B2016
	add x4, x37, x35
	lw x6, 0(x4)
	bne	x6, x17, trace_diffuse_ray_beqelse_b2018
# B2017
	li x35, 1
	j trace_diffuse_ray_cont_b2045 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2018:
# B2018
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
	bne	x69, x16, trace_diffuse_ray_beqelse_b2020
# B2019
	fabs x66, x66
	lw x69, 4(x6)
	lw x69, 0(x69)
	fle x66, x69, x66
	beq	x66, zero, trace_diffuse_ray_bneelse_b2022
# B2021
	mv x66, zero
	j trace_diffuse_ray_cont_b2025 # adhoc jump(2)
trace_diffuse_ray_bneelse_b2022:
# B2022
	fabs x66, x67
	lw x67, 4(x6)
	lw x67, 1(x67)
	fle x66, x67, x66
	beq	x66, zero, trace_diffuse_ray_bneelse_b2024
# B2023
	mv x66, zero
	j trace_diffuse_ray_cont_b2025 # adhoc jump(2)
trace_diffuse_ray_bneelse_b2024:
# B2024
	fabs x66, x68
	lw x67, 4(x6)
	lw x67, 2(x67)
	fle x66, x67, x66
	xori x66, x66, 1
trace_diffuse_ray_cont_b2025:
# B2025
	bne	x66, zero, trace_diffuse_ray_beqelse_b2027
# B2026
	lw x6, 6(x6)
	xori x6, x6, 1
	j trace_diffuse_ray_cont_b2042 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2027:
# B2027
	lw x6, 6(x6)
	j trace_diffuse_ray_cont_b2042 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2020:
# B2020
	bne	x69, x31, trace_diffuse_ray_beqelse_b2029
# B2028
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
	bne	x6, zero, trace_diffuse_ray_beqelse_b2031
# B2030
	mv x6, x66
	j trace_diffuse_ray_cont_b2032 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2031:
# B2031
	xori x6, x66, 1
trace_diffuse_ray_cont_b2032:
# B2032
	xori x6, x6, 1
	j trace_diffuse_ray_cont_b2042 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2029:
# B2029
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
	bne	x7, zero, trace_diffuse_ray_beqelse_b2034
# B2033
	mv x66, x69
	j trace_diffuse_ray_cont_b2035 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2034:
# B2034
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
trace_diffuse_ray_cont_b2035:
# B2035
	lw x67, 1(x6)
	bne	x67, x23, trace_diffuse_ray_beqelse_b2037
# B2036
	fsub x66, x66, x24
	j trace_diffuse_ray_cont_b2038 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2037:
# B2037
trace_diffuse_ray_cont_b2038:
# B2038
	lw x6, 6(x6)
	fle x66, zero, x66
	xori x66, x66, 1
	bne	x6, zero, trace_diffuse_ray_beqelse_b2040
# B2039
	mv x6, x66
	j trace_diffuse_ray_cont_b2041 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2040:
# B2040
	xori x6, x66, 1
trace_diffuse_ray_cont_b2041:
# B2041
	xori x6, x6, 1
trace_diffuse_ray_cont_b2042:
# B2042
	beq	x6, zero, trace_diffuse_ray_bneelse_b2043
# B2044
	mv x35, zero
trace_diffuse_ray_cont_b2045:
# B2045
	beq	x35, zero, trace_diffuse_ray_bneelse_b2046
# B2047
	sw x33, 0(x10)
	sw x34, 0(x20)
	sw x36, 1(x20)
	sw x11, 2(x20)
	sw x30, 0(x21)
	sw x32, 0(x22)
trace_diffuse_ray_bneelse_b2046:
# B2046
trace_diffuse_ray_beqelse_b2014:
# B2014
trace_diffuse_ray_beqelse_b2012:
# B2012
trace_diffuse_ray_cont_b2048:
# B2048
	j	trace_diffuse_ray_loop_b1970
trace_diffuse_ray_bneelse_b1971:
# B1971
trace_diffuse_ray_cont_b2049:
# B2049
	addi x11, x19, 1
	mv x19, x11
	j	trace_diffuse_ray_loop_b1967
trace_diffuse_ray_bneelse_b1968:
# B1968
trace_diffuse_ray_beqelse_b1965:
# B1965
trace_diffuse_ray_bneelse_b1963:
# B1963
trace_diffuse_ray_cont_b2050:
# B2050
	addi x11, x12, 1
	mv x12, x11
	j	trace_diffuse_ray_loop_b1840
trace_diffuse_ray_bneelse_b1841:
# B1841
# B2051
	lw x10, 0(x10)
	lui x11, 777421
	addi x11, x11, -819
	fle x12, x10, x11
	beq	x12, zero, trace_diffuse_ray_bneelse_b2053
# B2052
	mv x10, zero
	j trace_diffuse_ray_cont_b2054 # adhoc jump(2)
trace_diffuse_ray_bneelse_b2053:
# B2053
	lui x12, 314348
	addi x12, x12, -992
	fle x10, x12, x10
	xori x10, x10, 1
trace_diffuse_ray_cont_b2054:
# B2054
	bne	x10, zero, trace_diffuse_ray_beqelse_b2056
# B2055
	ret
trace_diffuse_ray_beqelse_b2056:
# B2056
	lw x10, 0(x21)
	add x4, x18, x10
	lw x10, 0(x4)
	lw x12, 0(x5)
	lw x13, 1(x10)
	la x14, min_caml_nvector
	lui x15, 258048
	bne	x13, x16, trace_diffuse_ray_beqelse_b2058
# B2057
	lw x13, 0(x22)
	sw zero, 0(x14)
	sw zero, 1(x14)
	sw zero, 2(x14)
	addi x13, x13, -1
	add x4, x12, x13
	lw x12, 0(x4)
	feq x17, x12, zero
	bne	x17, zero, trace_diffuse_ray_beqelse_b2060
# B2059
	fle x12, x12, zero
	beq	x12, zero, trace_diffuse_ray_bneelse_b2062
# B2061
	lui x12, 784384
	j trace_diffuse_ray_cont_b2063 # adhoc jump(2)
trace_diffuse_ray_bneelse_b2062:
# B2062
	mv x12, x24
	j trace_diffuse_ray_cont_b2063 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2060:
# B2060
	mv x12, zero
trace_diffuse_ray_cont_b2063:
# B2063
	fsub x12, zero, x12
	add x4, x14, x13
	sw x12, 0(x4)
	j trace_diffuse_ray_cont_b2074 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2058:
# B2058
	bne	x13, x19, trace_diffuse_ray_beqelse_b2065
# B2064
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
	j trace_diffuse_ray_cont_b2074 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2065:
# B2065
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
	bne	x26, zero, trace_diffuse_ray_beqelse_b2067
# B2066
	sw x21, 0(x14)
	sw x22, 1(x14)
	sw x25, 2(x14)
	j trace_diffuse_ray_cont_b2068 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2067:
# B2067
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
trace_diffuse_ray_cont_b2068:
# B2068
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
	bne	x17, zero, trace_diffuse_ray_beqelse_b2070
# B2069
	bne	x12, zero, trace_diffuse_ray_beqelse_b2072
# B2071
	fdiv x12, x24, x13
	j trace_diffuse_ray_cont_b2073 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2072:
# B2072
	lui x12, 784384
	fdiv x12, x12, x13
	j trace_diffuse_ray_cont_b2073 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2070:
# B2070
	mv x12, x24
trace_diffuse_ray_cont_b2073:
# B2073
	lw x13, 0(x14)
	fmul x13, x13, x12
	sw x13, 0(x14)
	lw x13, 1(x14)
	fmul x13, x13, x12
	sw x13, 1(x14)
	lw x13, 2(x14)
	fmul x12, x13, x12
	sw x12, 2(x14)
trace_diffuse_ray_cont_b2074:
# B2074
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
	bne	x12, x16, trace_diffuse_ray_beqelse_b2076
# B2075
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
	bne	x12, zero, trace_diffuse_ray_beqelse_b2078
# B2077
	bne	x15, zero, trace_diffuse_ray_beqelse_b2080
# B2079
	lui x12, 276464
	j trace_diffuse_ray_cont_b2083 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2080:
# B2080
	mv x12, zero
	j trace_diffuse_ray_cont_b2083 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2078:
# B2078
	bne	x15, zero, trace_diffuse_ray_beqelse_b2082
# B2081
	mv x12, zero
	j trace_diffuse_ray_cont_b2083 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2082:
# B2082
	lui x12, 276464
trace_diffuse_ray_cont_b2083:
# B2083
	sw x12, 1(x13)
	j trace_diffuse_ray_cont_b2168 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2076:
# B2076
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
	bne	x12, x19, trace_diffuse_ray_beqelse_b2085
# B2084
	lw x12, 1(x20)
	lui x15, 256000
	fmul x12, x12, x15
	fle x15, x12, zero
	xori x15, x15, 1
	fabs x12, x12
	mv x17, x12
	mv x23, x21
	j	trace_diffuse_ray_loop_b2086
trace_diffuse_ray_bneelse_b2087:	#moved
# B2087
	fmul x23, x23, x22
trace_diffuse_ray_loop_b2086:
# B2086
	fle x35, x17, x23
	beq	x35, zero, trace_diffuse_ray_bneelse_b2087
# B2088
# B2089
	mv x37, x23
	mv x36, x12
	j	trace_diffuse_ray_loop_b2090
trace_diffuse_ray_beqelse_b2094:	#moved
# B2094
	fdiv x12, x37, x22
	mv x37, x12
trace_diffuse_ray_loop_b2090:
# B2090
	fle x12, x21, x36
	beq	x12, zero, trace_diffuse_ray_bneelse_b2091
# B2092
	fle x12, x36, x37
	bne	x12, zero, trace_diffuse_ray_beqelse_b2094
# B2093
	fsub x12, x36, x37
	fdiv x17, x37, x22
	mv x37, x17
	mv x36, x12
	j	trace_diffuse_ray_loop_b2090
trace_diffuse_ray_bneelse_b2091:
# B2091
# B2095
	fle x12, x25, x36
	bne	x12, zero, trace_diffuse_ray_beqelse_b2097
# B2096
	mv x17, x36
	j trace_diffuse_ray_cont_b2098 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2097:
# B2097
	fsub x17, x36, x25
trace_diffuse_ray_cont_b2098:
# B2098
	bne	x12, zero, trace_diffuse_ray_beqelse_b2100
# B2099
	mv x12, x15
	j trace_diffuse_ray_cont_b2101 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2100:
# B2100
	xori x12, x15, 1
trace_diffuse_ray_cont_b2101:
# B2101
	fle x15, x26, x17
	bne	x15, zero, trace_diffuse_ray_beqelse_b2103
# B2102
	mv x15, x17
	j trace_diffuse_ray_cont_b2104 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2103:
# B2103
	fsub x15, x25, x17
trace_diffuse_ray_cont_b2104:
# B2104
	fle x17, x27, x15
	bne	x17, zero, trace_diffuse_ray_beqelse_b2106
# B2105
	fmul x17, x15, x15
	fmul x21, x17, x30
	fadd x21, x29, x21
	fmul x21, x17, x21
	fadd x21, x28, x21
	fmul x17, x17, x21
	fadd x17, x24, x17
	fmul x15, x15, x17
	j trace_diffuse_ray_cont_b2107 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2106:
# B2106
	fsub x15, x26, x15
	fmul x15, x15, x15
	fmul x17, x15, x33
	fadd x17, x32, x17
	fmul x17, x15, x17
	fadd x17, x31, x17
	fmul x15, x15, x17
	fadd x15, x24, x15
trace_diffuse_ray_cont_b2107:
# B2107
	fle x17, x15, zero
	beq	x12, x17, trace_diffuse_ray_bneelse_b2109
# B2108
	mv x12, x15
	j trace_diffuse_ray_cont_b2110 # adhoc jump(2)
trace_diffuse_ray_bneelse_b2109:
# B2109
	fsub x12, zero, x15
trace_diffuse_ray_cont_b2110:
# B2110
	fmul x12, x12, x12
	fmul x15, x34, x12
	sw x15, 0(x13)
	fsub x12, x24, x12
	fmul x12, x34, x12
	sw x12, 1(x13)
	j trace_diffuse_ray_cont_b2168 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2085:
# B2085
	lui x35, 263313
	addi x35, x35, -37
	bne	x12, x23, trace_diffuse_ray_beqelse_b2112
# B2111
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
	j	trace_diffuse_ray_loop_b2113
trace_diffuse_ray_bneelse_b2114:	#moved
# B2114
	fmul x17, x17, x22
trace_diffuse_ray_loop_b2113:
# B2113
	fle x23, x15, x17
	beq	x23, zero, trace_diffuse_ray_bneelse_b2114
# B2115
# B2116
	mv x35, x12
	mv x36, x17
	j	trace_diffuse_ray_loop_b2117
trace_diffuse_ray_beqelse_b2121:	#moved
# B2121
	fdiv x12, x36, x22
	mv x36, x12
trace_diffuse_ray_loop_b2117:
# B2117
	fle x12, x21, x35
	beq	x12, zero, trace_diffuse_ray_bneelse_b2118
# B2119
	fle x12, x35, x36
	bne	x12, zero, trace_diffuse_ray_beqelse_b2121
# B2120
	fsub x12, x35, x36
	fdiv x15, x36, x22
	mv x36, x15
	mv x35, x12
	j	trace_diffuse_ray_loop_b2117
trace_diffuse_ray_bneelse_b2118:
# B2118
# B2122
	fle x12, x25, x35
	bne	x12, zero, trace_diffuse_ray_beqelse_b2124
# B2123
	mv x15, x35
	j trace_diffuse_ray_cont_b2125 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2124:
# B2124
	fsub x15, x35, x25
trace_diffuse_ray_cont_b2125:
# B2125
	bne	x12, zero, trace_diffuse_ray_beqelse_b2127
# B2126
	mv x17, x16
	j trace_diffuse_ray_cont_b2128 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2127:
# B2127
	mv x17, zero
trace_diffuse_ray_cont_b2128:
# B2128
	fle x12, x26, x15
	bne	x12, zero, trace_diffuse_ray_beqelse_b2130
# B2129
	j trace_diffuse_ray_cont_b2131 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2130:
# B2130
	fsub x15, x25, x15
trace_diffuse_ray_cont_b2131:
# B2131
	bne	x12, zero, trace_diffuse_ray_beqelse_b2133
# B2132
	mv x12, x17
	j trace_diffuse_ray_cont_b2134 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2133:
# B2133
	xori x12, x17, 1
trace_diffuse_ray_cont_b2134:
# B2134
	fle x17, x27, x15
	bne	x17, zero, trace_diffuse_ray_beqelse_b2136
# B2135
	fmul x15, x15, x15
	fmul x17, x15, x33
	fadd x17, x32, x17
	fmul x17, x15, x17
	fadd x17, x31, x17
	fmul x15, x15, x17
	fadd x15, x24, x15
	j trace_diffuse_ray_cont_b2137 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2136:
# B2136
	fsub x15, x26, x15
	fmul x17, x15, x15
	fmul x21, x17, x30
	fadd x21, x29, x21
	fmul x21, x17, x21
	fadd x21, x28, x21
	fmul x17, x17, x21
	fadd x17, x24, x17
	fmul x15, x15, x17
trace_diffuse_ray_cont_b2137:
# B2137
	fle x17, x15, zero
	beq	x12, x17, trace_diffuse_ray_bneelse_b2139
# B2138
	mv x12, x15
	j trace_diffuse_ray_cont_b2140 # adhoc jump(2)
trace_diffuse_ray_bneelse_b2139:
# B2139
	fsub x12, zero, x15
trace_diffuse_ray_cont_b2140:
# B2140
	fmul x12, x12, x12
	fmul x15, x12, x34
	sw x15, 1(x13)
	fsub x12, x24, x12
	fmul x12, x12, x34
	sw x12, 2(x13)
	j trace_diffuse_ray_cont_b2168 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2112:
# B2112
	li x17, 4
	bne	x12, x17, trace_diffuse_ray_beqelse_b2142
# B2141
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
	beq	x22, zero, trace_diffuse_ray_bneelse_b2144
# B2143
	fdiv x12, x17, x12
	fabs x12, x12
	fle x17, x12, zero
	xori x17, x17, 1
	fabs x22, x12
	fle x38, x25, x22
	bne	x38, zero, trace_diffuse_ray_beqelse_b2146
# B2145
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
	j trace_diffuse_ray_cont_b2152 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2146:
# B2146
	fle x12, x36, x22
	bne	x12, zero, trace_diffuse_ray_beqelse_b2148
# B2147
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
	j trace_diffuse_ray_cont_b2149 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2148:
# B2148
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
trace_diffuse_ray_cont_b2149:
# B2149
	bne	x17, zero, trace_diffuse_ray_beqelse_b2151
# B2150
	fsub x12, zero, x12
	j trace_diffuse_ray_cont_b2152 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2151:
# B2151
trace_diffuse_ray_cont_b2152:
# B2152
	fmul x12, x12, x37
	fdiv x12, x12, x35
	j trace_diffuse_ray_cont_b2153 # adhoc jump(2)
trace_diffuse_ray_bneelse_b2144:
# B2144
	lui x12, 268032
trace_diffuse_ray_cont_b2153:
# B2153
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
	beq	x22, zero, trace_diffuse_ray_bneelse_b2155
# B2154
	fdiv x17, x17, x21
	fabs x17, x17
	fle x21, x17, zero
	xori x21, x21, 1
	fabs x22, x17
	fle x23, x25, x22
	bne	x23, zero, trace_diffuse_ray_beqelse_b2157
# B2156
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
	j trace_diffuse_ray_cont_b2163 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2157:
# B2157
	fle x17, x36, x22
	bne	x17, zero, trace_diffuse_ray_beqelse_b2159
# B2158
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
	j trace_diffuse_ray_cont_b2160 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2159:
# B2159
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
trace_diffuse_ray_cont_b2160:
# B2160
	bne	x21, zero, trace_diffuse_ray_beqelse_b2162
# B2161
	fsub x17, zero, x17
	j trace_diffuse_ray_cont_b2163 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2162:
# B2162
trace_diffuse_ray_cont_b2163:
# B2163
	fmul x17, x17, x37
	fdiv x17, x17, x35
	j trace_diffuse_ray_cont_b2164 # adhoc jump(2)
trace_diffuse_ray_bneelse_b2155:
# B2155
	lui x17, 268032
trace_diffuse_ray_cont_b2164:
# B2164
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
	beq	x15, zero, trace_diffuse_ray_bneelse_b2166
# B2165
	mv x17, x12
	j trace_diffuse_ray_cont_b2167 # adhoc jump(2)
trace_diffuse_ray_bneelse_b2166:
# B2166
	mv x17, zero
trace_diffuse_ray_cont_b2167:
# B2167
	fmul x12, x34, x17
	lui x15, 256410
	addi x15, x15, -1638
	fdiv x12, x12, x15
	sw x12, 2(x13)
trace_diffuse_ray_beqelse_b2142:
# B2142
trace_diffuse_ray_cont_b2168:
# B2168
	lw x100, 0(x100)
	mv x15, x100
	mv x12, zero
	j	trace_diffuse_ray_loop_b2169
trace_diffuse_ray_bneelse_b2404:	#moved
# B2404
trace_diffuse_ray_loop_b2169:
# B2169
	add x4, x15, x12
	lw x100, 0(x4)
	lw x17, 0(x100)
	li x21, -1
	la x22, min_caml_light
	bne	x17, x21, trace_diffuse_ray_beqelse_b2171
# B2170
	mv x100, zero
	j trace_diffuse_ray_cont_b2406 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2171:
# B2171
	li x23, 99
	bne	x17, x23, trace_diffuse_ray_beqelse_b2173
# B2172
	li x17, 1
	j trace_diffuse_ray_cont_b2311 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2173:
# B2173
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
	bne	x28, x16, trace_diffuse_ray_beqelse_b2175
# B2174
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
	beq	x30, zero, trace_diffuse_ray_bneelse_b2177
# B2176
	mv x30, zero
	j trace_diffuse_ray_cont_b2180 # adhoc jump(2)
trace_diffuse_ray_bneelse_b2177:
# B2177
	lw x30, 2(x28)
	fmul x30, x29, x30
	fadd x30, x30, x27
	fabs x30, x30
	lw x31, 4(x24)
	lw x31, 2(x31)
	fle x30, x31, x30
	beq	x30, zero, trace_diffuse_ray_bneelse_b2179
# B2178
	mv x30, zero
	j trace_diffuse_ray_cont_b2180 # adhoc jump(2)
trace_diffuse_ray_bneelse_b2179:
# B2179
	lw x30, 1(x17)
	feq x30, x30, zero
	xori x30, x30, 1
trace_diffuse_ray_cont_b2180:
# B2180
	bne	x30, zero, trace_diffuse_ray_beqelse_b2182
# B2181
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
	beq	x30, zero, trace_diffuse_ray_bneelse_b2184
# B2183
	mv x30, zero
	j trace_diffuse_ray_cont_b2187 # adhoc jump(2)
trace_diffuse_ray_bneelse_b2184:
# B2184
	lw x30, 2(x28)
	fmul x30, x29, x30
	fadd x30, x30, x27
	fabs x30, x30
	lw x31, 4(x24)
	lw x31, 2(x31)
	fle x30, x31, x30
	beq	x30, zero, trace_diffuse_ray_bneelse_b2186
# B2185
	mv x30, zero
	j trace_diffuse_ray_cont_b2187 # adhoc jump(2)
trace_diffuse_ray_bneelse_b2186:
# B2186
	lw x30, 3(x17)
	feq x30, x30, zero
	xori x30, x30, 1
trace_diffuse_ray_cont_b2187:
# B2187
	bne	x30, zero, trace_diffuse_ray_beqelse_b2189
# B2188
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
	beq	x25, zero, trace_diffuse_ray_bneelse_b2191
# B2190
	mv x17, zero
	j trace_diffuse_ray_cont_b2194 # adhoc jump(2)
trace_diffuse_ray_bneelse_b2191:
# B2191
	lw x25, 1(x28)
	fmul x25, x27, x25
	fadd x25, x25, x26
	fabs x25, x25
	lw x24, 4(x24)
	lw x24, 1(x24)
	fle x24, x24, x25
	beq	x24, zero, trace_diffuse_ray_bneelse_b2193
# B2192
	mv x17, zero
	j trace_diffuse_ray_cont_b2194 # adhoc jump(2)
trace_diffuse_ray_bneelse_b2193:
# B2193
	lw x17, 5(x17)
	feq x17, x17, zero
	xori x17, x17, 1
trace_diffuse_ray_cont_b2194:
# B2194
	bne	x17, zero, trace_diffuse_ray_beqelse_b2196
# B2195
	mv x17, zero
	j trace_diffuse_ray_cont_b2214 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2196:
# B2196
	la x17, min_caml_solver_dist
	sw x27, 0(x17)
	li x17, 3
	j trace_diffuse_ray_cont_b2214 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2189:
# B2189
	la x17, min_caml_solver_dist
	sw x29, 0(x17)
	li x17, 2
	j trace_diffuse_ray_cont_b2214 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2182:
# B2182
	la x17, min_caml_solver_dist
	sw x29, 0(x17)
	li x17, 1
	j trace_diffuse_ray_cont_b2214 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2175:
# B2175
	bne	x28, x19, trace_diffuse_ray_beqelse_b2198
# B2197
	lw x24, 0(x17)
	fle x24, zero, x24
	beq	x24, zero, trace_diffuse_ray_bneelse_b2200
# B2199
	mv x17, zero
	j trace_diffuse_ray_cont_b2214 # adhoc jump(2)
trace_diffuse_ray_bneelse_b2200:
# B2200
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
	li x17, 1
	j trace_diffuse_ray_cont_b2214 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2198:
# B2198
	lw x28, 0(x17)
	feq x29, x28, zero
	bne	x29, zero, trace_diffuse_ray_beqelse_b2202
# B2201
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
	bne	x32, zero, trace_diffuse_ray_beqelse_b2204
# B2203
	mv x25, x31
	j trace_diffuse_ray_cont_b2205 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2204:
# B2204
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
trace_diffuse_ray_cont_b2205:
# B2205
	lw x26, 1(x24)
	bne	x26, x30, trace_diffuse_ray_beqelse_b2207
# B2206
	lui x26, 260096
	fsub x25, x25, x26
	j trace_diffuse_ray_cont_b2208 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2207:
# B2207
trace_diffuse_ray_cont_b2208:
# B2208
	fmul x26, x29, x29
	fmul x25, x28, x25
	fsub x25, x26, x25
	fle x26, x25, zero
	beq	x26, zero, trace_diffuse_ray_bneelse_b2210
# B2209
	mv x17, zero
	j trace_diffuse_ray_cont_b2214 # adhoc jump(2)
trace_diffuse_ray_bneelse_b2210:
# B2210
	lw x24, 6(x24)
	bne	x24, zero, trace_diffuse_ray_beqelse_b2212
# B2211
	la x24, min_caml_solver_dist
	fsqrt x25, x25
	fsub x25, x29, x25
	lw x17, 4(x17)
	fmul x17, x25, x17
	sw x17, 0(x24)
	j trace_diffuse_ray_cont_b2213 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2212:
# B2212
	la x24, min_caml_solver_dist
	fsqrt x25, x25
	fadd x25, x29, x25
	lw x17, 4(x17)
	fmul x17, x25, x17
	sw x17, 0(x24)
trace_diffuse_ray_cont_b2213:
# B2213
	li x17, 1
	j trace_diffuse_ray_cont_b2214 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2202:
# B2202
	mv x17, zero
trace_diffuse_ray_cont_b2214:
# B2214
	bne	x17, zero, trace_diffuse_ray_beqelse_b2216
# B2215
	mv x17, zero
	j trace_diffuse_ray_cont_b2311 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2216:
# B2216
	la x17, min_caml_solver_dist
	lw x24, 0(x17)
	fle x24, x11, x24
	beq	x24, zero, trace_diffuse_ray_bneelse_b2218
# B2217
	mv x17, zero
	j trace_diffuse_ray_cont_b2311 # adhoc jump(2)
trace_diffuse_ray_bneelse_b2218:
# B2218
	mv x25, x16
	mv x26, x100
	j	trace_diffuse_ray_loop_b2219
trace_diffuse_ray_bneelse_b2306:	#moved
# B2306
	addi x24, x25, 1
	mv x25, x24
trace_diffuse_ray_loop_b2219:
# B2219
	add x4, x26, x25
	lw x24, 0(x4)
	bne	x24, x21, trace_diffuse_ray_beqelse_b2221
# B2220
	mv x24, zero
	j trace_diffuse_ray_cont_b2308 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2221:
# B2221
	la x27, min_caml_and_net
	add x4, x27, x24
	lw x24, 0(x4)
	mv x27, zero
	mv x28, x24
	j	trace_diffuse_ray_loop_b2222
trace_diffuse_ray_bneelse_b2303:	#moved
# B2303
trace_diffuse_ray_loop_b2222:
# B2222
	add x4, x28, x27
	lw x24, 0(x4)
	bne	x24, x21, trace_diffuse_ray_beqelse_b2224
# B2223
	mv x24, zero
	j trace_diffuse_ray_cont_b2305 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2224:
# B2224
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
	bne	x34, x16, trace_diffuse_ray_beqelse_b2226
# B2225
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
	beq	x36, zero, trace_diffuse_ray_bneelse_b2228
# B2227
	mv x36, zero
	j trace_diffuse_ray_cont_b2231 # adhoc jump(2)
trace_diffuse_ray_bneelse_b2228:
# B2228
	lw x36, 2(x34)
	fmul x36, x35, x36
	fadd x36, x36, x32
	fabs x36, x36
	lw x37, 4(x29)
	lw x37, 2(x37)
	fle x36, x37, x36
	beq	x36, zero, trace_diffuse_ray_bneelse_b2230
# B2229
	mv x36, zero
	j trace_diffuse_ray_cont_b2231 # adhoc jump(2)
trace_diffuse_ray_bneelse_b2230:
# B2230
	lw x36, 1(x33)
	feq x36, x36, zero
	xori x36, x36, 1
trace_diffuse_ray_cont_b2231:
# B2231
	bne	x36, zero, trace_diffuse_ray_beqelse_b2233
# B2232
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
	beq	x36, zero, trace_diffuse_ray_bneelse_b2235
# B2234
	mv x36, zero
	j trace_diffuse_ray_cont_b2238 # adhoc jump(2)
trace_diffuse_ray_bneelse_b2235:
# B2235
	lw x36, 2(x34)
	fmul x36, x35, x36
	fadd x36, x36, x32
	fabs x36, x36
	lw x37, 4(x29)
	lw x37, 2(x37)
	fle x36, x37, x36
	beq	x36, zero, trace_diffuse_ray_bneelse_b2237
# B2236
	mv x36, zero
	j trace_diffuse_ray_cont_b2238 # adhoc jump(2)
trace_diffuse_ray_bneelse_b2237:
# B2237
	lw x36, 3(x33)
	feq x36, x36, zero
	xori x36, x36, 1
trace_diffuse_ray_cont_b2238:
# B2238
	bne	x36, zero, trace_diffuse_ray_beqelse_b2240
# B2239
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
	beq	x30, zero, trace_diffuse_ray_bneelse_b2242
# B2241
	mv x29, zero
	j trace_diffuse_ray_cont_b2245 # adhoc jump(2)
trace_diffuse_ray_bneelse_b2242:
# B2242
	lw x30, 1(x34)
	fmul x30, x32, x30
	fadd x30, x30, x31
	fabs x30, x30
	lw x29, 4(x29)
	lw x29, 1(x29)
	fle x29, x29, x30
	beq	x29, zero, trace_diffuse_ray_bneelse_b2244
# B2243
	mv x29, zero
	j trace_diffuse_ray_cont_b2245 # adhoc jump(2)
trace_diffuse_ray_bneelse_b2244:
# B2244
	lw x29, 5(x33)
	feq x29, x29, zero
	xori x29, x29, 1
trace_diffuse_ray_cont_b2245:
# B2245
	bne	x29, zero, trace_diffuse_ray_beqelse_b2247
# B2246
	mv x29, zero
	j trace_diffuse_ray_cont_b2265 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2247:
# B2247
	sw x32, 0(x17)
	li x29, 3
	j trace_diffuse_ray_cont_b2265 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2240:
# B2240
	sw x35, 0(x17)
	li x29, 2
	j trace_diffuse_ray_cont_b2265 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2233:
# B2233
	sw x35, 0(x17)
	li x29, 1
	j trace_diffuse_ray_cont_b2265 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2226:
# B2226
	bne	x34, x19, trace_diffuse_ray_beqelse_b2249
# B2248
	lw x29, 0(x33)
	fle x29, zero, x29
	beq	x29, zero, trace_diffuse_ray_bneelse_b2251
# B2250
	mv x29, zero
	j trace_diffuse_ray_cont_b2265 # adhoc jump(2)
trace_diffuse_ray_bneelse_b2251:
# B2251
	lw x29, 1(x33)
	fmul x29, x29, x30
	lw x30, 2(x33)
	fmul x30, x30, x31
	fadd x29, x29, x30
	lw x30, 3(x33)
	fmul x30, x30, x32
	fadd x29, x29, x30
	sw x29, 0(x17)
	li x29, 1
	j trace_diffuse_ray_cont_b2265 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2249:
# B2249
	lw x34, 0(x33)
	feq x35, x34, zero
	bne	x35, zero, trace_diffuse_ray_beqelse_b2253
# B2252
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
	bne	x38, zero, trace_diffuse_ray_beqelse_b2255
# B2254
	mv x30, x37
	j trace_diffuse_ray_cont_b2256 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2255:
# B2255
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
trace_diffuse_ray_cont_b2256:
# B2256
	lw x31, 1(x29)
	bne	x31, x36, trace_diffuse_ray_beqelse_b2258
# B2257
	lui x31, 260096
	fsub x30, x30, x31
	j trace_diffuse_ray_cont_b2259 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2258:
# B2258
trace_diffuse_ray_cont_b2259:
# B2259
	fmul x31, x35, x35
	fmul x30, x34, x30
	fsub x30, x31, x30
	fle x31, x30, zero
	beq	x31, zero, trace_diffuse_ray_bneelse_b2261
# B2260
	mv x29, zero
	j trace_diffuse_ray_cont_b2265 # adhoc jump(2)
trace_diffuse_ray_bneelse_b2261:
# B2261
	lw x29, 6(x29)
	bne	x29, zero, trace_diffuse_ray_beqelse_b2263
# B2262
	fsqrt x29, x30
	fsub x29, x35, x29
	lw x30, 4(x33)
	fmul x29, x29, x30
	sw x29, 0(x17)
	j trace_diffuse_ray_cont_b2264 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2263:
# B2263
	fsqrt x29, x30
	fadd x29, x35, x29
	lw x30, 4(x33)
	fmul x29, x29, x30
	sw x29, 0(x17)
trace_diffuse_ray_cont_b2264:
# B2264
	li x29, 1
	j trace_diffuse_ray_cont_b2265 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2253:
# B2253
	mv x29, zero
trace_diffuse_ray_cont_b2265:
# B2265
	lw x30, 0(x17)
	bne	x29, zero, trace_diffuse_ray_beqelse_b2267
# B2266
	mv x29, zero
	j trace_diffuse_ray_cont_b2268 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2267:
# B2267
	lui x29, 779469
	addi x29, x29, -819
	fle x29, x29, x30
	xori x29, x29, 1
trace_diffuse_ray_cont_b2268:
# B2268
	addi x27, x27, 1
	bne	x29, zero, trace_diffuse_ray_beqelse_b2270
# B2269
	add x4, x18, x24
	lw x24, 0(x4)
	lw x24, 6(x24)
	bne	x24, zero, trace_diffuse_ray_beqelse_b2272
# B2271
	mv x24, zero
	j trace_diffuse_ray_cont_b2305 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2272:
# B2272
	j	trace_diffuse_ray_loop_b2222
trace_diffuse_ray_beqelse_b2270:
# B2270
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
	j	trace_diffuse_ray_loop_b2273
trace_diffuse_ray_bneelse_b2300:	#moved
# B2300
	addi x24, x29, 1
	mv x29, x24
trace_diffuse_ray_loop_b2273:
# B2273
	add x4, x32, x29
	lw x24, 0(x4)
	bne	x24, x21, trace_diffuse_ray_beqelse_b2275
# B2274
	li x24, 1
	j trace_diffuse_ray_cont_b2302 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2275:
# B2275
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
	bne	x37, x16, trace_diffuse_ray_beqelse_b2277
# B2276
	fabs x30, x30
	lw x37, 4(x24)
	lw x37, 0(x37)
	fle x30, x37, x30
	beq	x30, zero, trace_diffuse_ray_bneelse_b2279
# B2278
	mv x30, zero
	j trace_diffuse_ray_cont_b2282 # adhoc jump(2)
trace_diffuse_ray_bneelse_b2279:
# B2279
	fabs x30, x31
	lw x31, 4(x24)
	lw x31, 1(x31)
	fle x30, x31, x30
	beq	x30, zero, trace_diffuse_ray_bneelse_b2281
# B2280
	mv x30, zero
	j trace_diffuse_ray_cont_b2282 # adhoc jump(2)
trace_diffuse_ray_bneelse_b2281:
# B2281
	fabs x30, x36
	lw x31, 4(x24)
	lw x31, 2(x31)
	fle x30, x31, x30
	xori x30, x30, 1
trace_diffuse_ray_cont_b2282:
# B2282
	bne	x30, zero, trace_diffuse_ray_beqelse_b2284
# B2283
	lw x24, 6(x24)
	xori x24, x24, 1
	j trace_diffuse_ray_cont_b2299 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2284:
# B2284
	lw x24, 6(x24)
	j trace_diffuse_ray_cont_b2299 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2277:
# B2277
	bne	x37, x19, trace_diffuse_ray_beqelse_b2286
# B2285
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
	bne	x24, zero, trace_diffuse_ray_beqelse_b2288
# B2287
	mv x24, x30
	j trace_diffuse_ray_cont_b2289 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2288:
# B2288
	xori x24, x30, 1
trace_diffuse_ray_cont_b2289:
# B2289
	xori x24, x24, 1
	j trace_diffuse_ray_cont_b2299 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2286:
# B2286
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
	bne	x38, zero, trace_diffuse_ray_beqelse_b2291
# B2290
	mv x30, x37
	j trace_diffuse_ray_cont_b2292 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2291:
# B2291
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
trace_diffuse_ray_cont_b2292:
# B2292
	lw x31, 1(x24)
	li x36, 3
	bne	x31, x36, trace_diffuse_ray_beqelse_b2294
# B2293
	lui x31, 260096
	fsub x30, x30, x31
	j trace_diffuse_ray_cont_b2295 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2294:
# B2294
trace_diffuse_ray_cont_b2295:
# B2295
	lw x24, 6(x24)
	fle x30, zero, x30
	xori x30, x30, 1
	bne	x24, zero, trace_diffuse_ray_beqelse_b2297
# B2296
	mv x24, x30
	j trace_diffuse_ray_cont_b2298 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2297:
# B2297
	xori x24, x30, 1
trace_diffuse_ray_cont_b2298:
# B2298
	xori x24, x24, 1
trace_diffuse_ray_cont_b2299:
# B2299
	beq	x24, zero, trace_diffuse_ray_bneelse_b2300
# B2301
	mv x24, zero
trace_diffuse_ray_cont_b2302:
# B2302
	beq	x24, zero, trace_diffuse_ray_bneelse_b2303
# B2304
	mv x24, x16
trace_diffuse_ray_cont_b2305:
# B2305
	beq	x24, zero, trace_diffuse_ray_bneelse_b2306
# B2307
	mv x24, x16
trace_diffuse_ray_cont_b2308:
# B2308
	bne	x24, zero, trace_diffuse_ray_beqelse_b2310
# B2309
	mv x17, zero
	j trace_diffuse_ray_cont_b2311 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2310:
# B2310
	mv x17, x16
trace_diffuse_ray_cont_b2311:
# B2311
	addi x12, x12, 1
	beq	x17, zero, trace_diffuse_ray_bneelse_b2312
# B2313
	mv x23, x16
	mv x24, x100
	j	trace_diffuse_ray_loop_b2314
trace_diffuse_ray_bneelse_b2401:	#moved
# B2401
	addi x100, x23, 1
	mv x23, x100
trace_diffuse_ray_loop_b2314:
# B2314
	add x4, x24, x23
	lw x100, 0(x4)
	bne	x100, x21, trace_diffuse_ray_beqelse_b2316
# B2315
	mv x100, zero
	j trace_diffuse_ray_cont_b2403 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2316:
# B2316
	la x17, min_caml_and_net
	add x4, x17, x100
	lw x100, 0(x4)
	mv x25, x100
	mv x17, zero
	j	trace_diffuse_ray_loop_b2317
trace_diffuse_ray_bneelse_b2398:	#moved
# B2398
trace_diffuse_ray_loop_b2317:
# B2317
	add x4, x25, x17
	lw x100, 0(x4)
	bne	x100, x21, trace_diffuse_ray_beqelse_b2319
# B2318
	mv x100, zero
	j trace_diffuse_ray_cont_b2400 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2319:
# B2319
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
	bne	x32, x16, trace_diffuse_ray_beqelse_b2321
# B2320
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
	beq	x33, zero, trace_diffuse_ray_bneelse_b2323
# B2322
	mv x33, zero
	j trace_diffuse_ray_cont_b2326 # adhoc jump(2)
trace_diffuse_ray_bneelse_b2323:
# B2323
	lw x33, 2(x26)
	fmul x33, x32, x33
	fadd x33, x33, x30
	fabs x33, x33
	lw x34, 4(x27)
	lw x34, 2(x34)
	fle x33, x34, x33
	beq	x33, zero, trace_diffuse_ray_bneelse_b2325
# B2324
	mv x33, zero
	j trace_diffuse_ray_cont_b2326 # adhoc jump(2)
trace_diffuse_ray_bneelse_b2325:
# B2325
	lw x33, 1(x31)
	feq x33, x33, zero
	xori x33, x33, 1
trace_diffuse_ray_cont_b2326:
# B2326
	bne	x33, zero, trace_diffuse_ray_beqelse_b2328
# B2327
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
	beq	x33, zero, trace_diffuse_ray_bneelse_b2330
# B2329
	mv x33, zero
	j trace_diffuse_ray_cont_b2333 # adhoc jump(2)
trace_diffuse_ray_bneelse_b2330:
# B2330
	lw x33, 2(x26)
	fmul x33, x32, x33
	fadd x33, x33, x30
	fabs x33, x33
	lw x34, 4(x27)
	lw x34, 2(x34)
	fle x33, x34, x33
	beq	x33, zero, trace_diffuse_ray_bneelse_b2332
# B2331
	mv x33, zero
	j trace_diffuse_ray_cont_b2333 # adhoc jump(2)
trace_diffuse_ray_bneelse_b2332:
# B2332
	lw x33, 3(x31)
	feq x33, x33, zero
	xori x33, x33, 1
trace_diffuse_ray_cont_b2333:
# B2333
	bne	x33, zero, trace_diffuse_ray_beqelse_b2335
# B2334
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
	beq	x28, zero, trace_diffuse_ray_bneelse_b2337
# B2336
	mv x26, zero
	j trace_diffuse_ray_cont_b2340 # adhoc jump(2)
trace_diffuse_ray_bneelse_b2337:
# B2337
	lw x26, 1(x26)
	fmul x26, x30, x26
	fadd x26, x26, x29
	fabs x26, x26
	lw x27, 4(x27)
	lw x27, 1(x27)
	fle x26, x27, x26
	beq	x26, zero, trace_diffuse_ray_bneelse_b2339
# B2338
	mv x26, zero
	j trace_diffuse_ray_cont_b2340 # adhoc jump(2)
trace_diffuse_ray_bneelse_b2339:
# B2339
	lw x26, 5(x31)
	feq x26, x26, zero
	xori x26, x26, 1
trace_diffuse_ray_cont_b2340:
# B2340
	bne	x26, zero, trace_diffuse_ray_beqelse_b2342
# B2341
	mv x26, zero
	j trace_diffuse_ray_cont_b2360 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2342:
# B2342
	la x26, min_caml_solver_dist
	sw x30, 0(x26)
	li x26, 3
	j trace_diffuse_ray_cont_b2360 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2335:
# B2335
	la x26, min_caml_solver_dist
	sw x32, 0(x26)
	li x26, 2
	j trace_diffuse_ray_cont_b2360 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2328:
# B2328
	la x26, min_caml_solver_dist
	sw x32, 0(x26)
	li x26, 1
	j trace_diffuse_ray_cont_b2360 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2321:
# B2321
	bne	x32, x19, trace_diffuse_ray_beqelse_b2344
# B2343
	lw x26, 0(x31)
	fle x26, zero, x26
	beq	x26, zero, trace_diffuse_ray_bneelse_b2346
# B2345
	mv x26, zero
	j trace_diffuse_ray_cont_b2360 # adhoc jump(2)
trace_diffuse_ray_bneelse_b2346:
# B2346
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
	li x26, 1
	j trace_diffuse_ray_cont_b2360 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2344:
# B2344
	lw x26, 0(x31)
	feq x32, x26, zero
	bne	x32, zero, trace_diffuse_ray_beqelse_b2348
# B2347
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
	bne	x35, zero, trace_diffuse_ray_beqelse_b2350
# B2349
	mv x28, x34
	j trace_diffuse_ray_cont_b2351 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2350:
# B2350
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
trace_diffuse_ray_cont_b2351:
# B2351
	lw x29, 1(x27)
	bne	x29, x33, trace_diffuse_ray_beqelse_b2353
# B2352
	lui x29, 260096
	fsub x28, x28, x29
	j trace_diffuse_ray_cont_b2354 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2353:
# B2353
trace_diffuse_ray_cont_b2354:
# B2354
	fmul x29, x32, x32
	fmul x26, x26, x28
	fsub x26, x29, x26
	fle x28, x26, zero
	beq	x28, zero, trace_diffuse_ray_bneelse_b2356
# B2355
	mv x26, zero
	j trace_diffuse_ray_cont_b2360 # adhoc jump(2)
trace_diffuse_ray_bneelse_b2356:
# B2356
	lw x27, 6(x27)
	bne	x27, zero, trace_diffuse_ray_beqelse_b2358
# B2357
	la x27, min_caml_solver_dist
	fsqrt x26, x26
	fsub x26, x32, x26
	lw x28, 4(x31)
	fmul x26, x26, x28
	sw x26, 0(x27)
	j trace_diffuse_ray_cont_b2359 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2358:
# B2358
	la x27, min_caml_solver_dist
	fsqrt x26, x26
	fadd x26, x32, x26
	lw x28, 4(x31)
	fmul x26, x26, x28
	sw x26, 0(x27)
trace_diffuse_ray_cont_b2359:
# B2359
	li x26, 1
	j trace_diffuse_ray_cont_b2360 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2348:
# B2348
	mv x26, zero
trace_diffuse_ray_cont_b2360:
# B2360
	la x27, min_caml_solver_dist
	lw x27, 0(x27)
	bne	x26, zero, trace_diffuse_ray_beqelse_b2362
# B2361
	mv x26, zero
	j trace_diffuse_ray_cont_b2363 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2362:
# B2362
	lui x26, 779469
	addi x26, x26, -819
	fle x26, x26, x27
	xori x26, x26, 1
trace_diffuse_ray_cont_b2363:
# B2363
	addi x17, x17, 1
	bne	x26, zero, trace_diffuse_ray_beqelse_b2365
# B2364
	add x4, x18, x100
	lw x100, 0(x4)
	lw x100, 6(x100)
	bne	x100, zero, trace_diffuse_ray_beqelse_b2367
# B2366
	mv x100, zero
	j trace_diffuse_ray_cont_b2400 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2367:
# B2367
	j	trace_diffuse_ray_loop_b2317
trace_diffuse_ray_beqelse_b2365:
# B2365
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
	j	trace_diffuse_ray_loop_b2368
trace_diffuse_ray_bneelse_b2395:	#moved
# B2395
	addi x100, x28, 1
	mv x28, x100
trace_diffuse_ray_loop_b2368:
# B2368
	add x4, x29, x28
	lw x100, 0(x4)
	bne	x100, x21, trace_diffuse_ray_beqelse_b2370
# B2369
	li x100, 1
	j trace_diffuse_ray_cont_b2397 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2370:
# B2370
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
	bne	x34, x16, trace_diffuse_ray_beqelse_b2372
# B2371
	fabs x26, x26
	lw x34, 4(x100)
	lw x34, 0(x34)
	fle x26, x34, x26
	beq	x26, zero, trace_diffuse_ray_bneelse_b2374
# B2373
	mv x26, zero
	j trace_diffuse_ray_cont_b2377 # adhoc jump(2)
trace_diffuse_ray_bneelse_b2374:
# B2374
	fabs x26, x27
	lw x27, 4(x100)
	lw x27, 1(x27)
	fle x26, x27, x26
	beq	x26, zero, trace_diffuse_ray_bneelse_b2376
# B2375
	mv x26, zero
	j trace_diffuse_ray_cont_b2377 # adhoc jump(2)
trace_diffuse_ray_bneelse_b2376:
# B2376
	fabs x26, x33
	lw x27, 4(x100)
	lw x27, 2(x27)
	fle x26, x27, x26
	xori x26, x26, 1
trace_diffuse_ray_cont_b2377:
# B2377
	bne	x26, zero, trace_diffuse_ray_beqelse_b2379
# B2378
	lw x100, 6(x100)
	xori x100, x100, 1
	j trace_diffuse_ray_cont_b2394 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2379:
# B2379
	lw x100, 6(x100)
	j trace_diffuse_ray_cont_b2394 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2372:
# B2372
	bne	x34, x19, trace_diffuse_ray_beqelse_b2381
# B2380
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
	bne	x100, zero, trace_diffuse_ray_beqelse_b2383
# B2382
	mv x100, x26
	j trace_diffuse_ray_cont_b2384 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2383:
# B2383
	xori x100, x26, 1
trace_diffuse_ray_cont_b2384:
# B2384
	xori x100, x100, 1
	j trace_diffuse_ray_cont_b2394 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2381:
# B2381
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
	bne	x35, zero, trace_diffuse_ray_beqelse_b2386
# B2385
	mv x26, x34
	j trace_diffuse_ray_cont_b2387 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2386:
# B2386
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
trace_diffuse_ray_cont_b2387:
# B2387
	lw x27, 1(x100)
	li x33, 3
	bne	x27, x33, trace_diffuse_ray_beqelse_b2389
# B2388
	lui x27, 260096
	fsub x26, x26, x27
	j trace_diffuse_ray_cont_b2390 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2389:
# B2389
trace_diffuse_ray_cont_b2390:
# B2390
	lw x100, 6(x100)
	fle x26, zero, x26
	xori x26, x26, 1
	bne	x100, zero, trace_diffuse_ray_beqelse_b2392
# B2391
	mv x100, x26
	j trace_diffuse_ray_cont_b2393 # adhoc jump(2)
trace_diffuse_ray_beqelse_b2392:
# B2392
	xori x100, x26, 1
trace_diffuse_ray_cont_b2393:
# B2393
	xori x100, x100, 1
trace_diffuse_ray_cont_b2394:
# B2394
	beq	x100, zero, trace_diffuse_ray_bneelse_b2395
# B2396
	mv x100, zero
trace_diffuse_ray_cont_b2397:
# B2397
	beq	x100, zero, trace_diffuse_ray_bneelse_b2398
# B2399
	mv x100, x16
trace_diffuse_ray_cont_b2400:
# B2400
	beq	x100, zero, trace_diffuse_ray_bneelse_b2401
# B2402
	mv x100, x16
trace_diffuse_ray_cont_b2403:
# B2403
	beq	x100, zero, trace_diffuse_ray_bneelse_b2404
# B2405
	mv x100, x16
trace_diffuse_ray_cont_b2406:
# B2406
	bne	x100, zero, trace_diffuse_ray_beqelse_b2408
# B2407
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
	beq	x11, zero, trace_diffuse_ray_bneelse_b2410
# B2409
	mv x12, zero
	j trace_diffuse_ray_cont_b2411 # adhoc jump(2)
trace_diffuse_ray_bneelse_b2410:
# B2410
	mv x12, x100
trace_diffuse_ray_cont_b2411:
# B2411
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
trace_diffuse_ray_beqelse_b2408:
# B2408
	ret
trace_diffuse_ray_bneelse_b2312:
# B2312
	j	trace_diffuse_ray_loop_b2169
iter_trace_diffuse_rays.3282:
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
body_iter_trace_diffuse_rays.3282:
# B2412
	mv x12, x8
	mv x10, x5
	mv x11, x7
	mv x100, x6
iter_trace_diffuse_rays_loop_b2413:
# B2413
	bgt	zero, x12, iter_trace_diffuse_rays_bleelse_b2415
# B2414
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
	beq	x14, zero, iter_trace_diffuse_rays_bneelse_b2417
# B2416
	add x4, x10, x12
	lw x14, 0(x4)
	lui x81, 274784
	fdiv x13, x13, x81
	sw x18, 0(x17)
	lw x18, 0(x19)
	mv x82, x18
	mv x83, x14
	mv x81, zero
iter_trace_diffuse_rays_loop_b2418:
# B2418
	add x4, x82, x81
	lw x18, 0(x4)
	lw x84, 0(x18)
	li x85, -1
	li x86, 3
	lui x87, 260096
	beq	x84, x85, iter_trace_diffuse_rays_bneelse_b2419
# B2420
	li x88, 99
	la x89, min_caml_solver_dist
	li x9, 3
	bne	x84, x88, iter_trace_diffuse_rays_beqelse_b2422
# B2421
	mv x90, x15
	mv x92, x83
	mv x91, x18
iter_trace_diffuse_rays_loop_b2423:
# B2423
	add x4, x91, x90
	lw x18, 0(x4)
	beq	x18, x85, iter_trace_diffuse_rays_bneelse_b2424
# B2425
	la x84, min_caml_and_net
	add x4, x84, x18
	lw x18, 0(x4)
	mv x87, x92
	mv x86, x18
	mv x84, zero
iter_trace_diffuse_rays_loop_b2426:
# B2426
	lw x18, 0(x87)
	add x4, x86, x84
	lw x88, 0(x4)
	beq	x88, x85, iter_trace_diffuse_rays_bneelse_b2427
# B2428
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
	bne	x99, x15, iter_trace_diffuse_rays_beqelse_b2430
# B2429
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
	beq	x101, zero, iter_trace_diffuse_rays_bneelse_b2432
# B2431
	mv x101, zero
	j iter_trace_diffuse_rays_cont_b2435 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2432:
# B2432
	lw x101, 2(x94)
	fmul x101, x99, x101
	fadd x101, x101, x97
	fabs x101, x101
	lw x102, 4(x93)
	lw x102, 2(x102)
	fle x101, x102, x101
	beq	x101, zero, iter_trace_diffuse_rays_bneelse_b2434
# B2433
	mv x101, zero
	j iter_trace_diffuse_rays_cont_b2435 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2434:
# B2434
	lw x101, 1(x98)
	feq x101, x101, zero
	xori x101, x101, 1
iter_trace_diffuse_rays_cont_b2435:
# B2435
	bne	x101, zero, iter_trace_diffuse_rays_beqelse_b2437
# B2436
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
	beq	x101, zero, iter_trace_diffuse_rays_bneelse_b2439
# B2438
	mv x101, zero
	j iter_trace_diffuse_rays_cont_b2442 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2439:
# B2439
	lw x101, 2(x94)
	fmul x101, x99, x101
	fadd x101, x101, x97
	fabs x101, x101
	lw x102, 4(x93)
	lw x102, 2(x102)
	fle x101, x102, x101
	beq	x101, zero, iter_trace_diffuse_rays_bneelse_b2441
# B2440
	mv x101, zero
	j iter_trace_diffuse_rays_cont_b2442 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2441:
# B2441
	lw x101, 3(x98)
	feq x101, x101, zero
	xori x101, x101, 1
iter_trace_diffuse_rays_cont_b2442:
# B2442
	bne	x101, zero, iter_trace_diffuse_rays_beqelse_b2444
# B2443
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
	beq	x95, zero, iter_trace_diffuse_rays_bneelse_b2446
# B2445
	mv x93, zero
	j iter_trace_diffuse_rays_cont_b2449 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2446:
# B2446
	lw x94, 1(x94)
	fmul x94, x97, x94
	fadd x94, x94, x96
	fabs x94, x94
	lw x93, 4(x93)
	lw x93, 1(x93)
	fle x93, x93, x94
	beq	x93, zero, iter_trace_diffuse_rays_bneelse_b2448
# B2447
	mv x93, zero
	j iter_trace_diffuse_rays_cont_b2449 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2448:
# B2448
	lw x93, 5(x98)
	feq x93, x93, zero
	xori x93, x93, 1
iter_trace_diffuse_rays_cont_b2449:
# B2449
	bne	x93, zero, iter_trace_diffuse_rays_beqelse_b2451
# B2450
	mv x93, zero
	j iter_trace_diffuse_rays_cont_b2463 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2451:
# B2451
	la x93, min_caml_solver_dist
	sw x97, 0(x93)
	li x93, 3
	j iter_trace_diffuse_rays_cont_b2463 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2444:
# B2444
	la x93, min_caml_solver_dist
	sw x99, 0(x93)
	li x93, 2
	j iter_trace_diffuse_rays_cont_b2463 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2437:
# B2437
	la x93, min_caml_solver_dist
	sw x99, 0(x93)
	li x93, 1
	j iter_trace_diffuse_rays_cont_b2463 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2430:
# B2430
	bne	x99, x16, iter_trace_diffuse_rays_beqelse_b2453
# B2452
	lw x93, 0(x98)
	fle x93, zero, x93
	beq	x93, zero, iter_trace_diffuse_rays_bneelse_b2455
# B2454
	mv x93, zero
	j iter_trace_diffuse_rays_cont_b2463 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2455:
# B2455
	la x93, min_caml_solver_dist
	lw x95, 0(x98)
	lw x94, 3(x94)
	fmul x94, x95, x94
	sw x94, 0(x93)
	li x93, 1
	j iter_trace_diffuse_rays_cont_b2463 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2453:
# B2453
	lw x99, 0(x98)
	feq x101, x99, zero
	bne	x101, zero, iter_trace_diffuse_rays_beqelse_b2457
# B2456
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
	beq	x96, zero, iter_trace_diffuse_rays_bneelse_b2459
# B2458
	mv x93, zero
	j iter_trace_diffuse_rays_cont_b2463 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2459:
# B2459
	lw x93, 6(x93)
	bne	x93, zero, iter_trace_diffuse_rays_beqelse_b2461
# B2460
	la x93, min_caml_solver_dist
	fsqrt x94, x94
	fsub x94, x95, x94
	lw x95, 4(x98)
	fmul x94, x94, x95
	sw x94, 0(x93)
	j iter_trace_diffuse_rays_cont_b2462 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2461:
# B2461
	la x93, min_caml_solver_dist
	fsqrt x94, x94
	fadd x94, x95, x94
	lw x95, 4(x98)
	fmul x94, x94, x95
	sw x94, 0(x93)
iter_trace_diffuse_rays_cont_b2462:
# B2462
	li x93, 1
	j iter_trace_diffuse_rays_cont_b2463 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2457:
# B2457
	mv x93, zero
iter_trace_diffuse_rays_cont_b2463:
# B2463
	addi x84, x84, 1
	bne	x93, zero, iter_trace_diffuse_rays_beqelse_b2465
# B2464
	add x4, x20, x88
	lw x18, 0(x4)
	lw x18, 6(x18)
	bne	x18, zero, iter_trace_diffuse_rays_beqelse_b2467
# B2466
	j iter_trace_diffuse_rays_cont_b2505 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2467:
# B2467
	j	iter_trace_diffuse_rays_loop_b2426
iter_trace_diffuse_rays_beqelse_b2465:
# B2465
	lw x94, 0(x89)
	fle x95, x94, zero
	bne	x95, zero, iter_trace_diffuse_rays_beqelse_b2468
# B2469
	lw x95, 0(x17)
	fle x95, x95, x94
	bne	x95, zero, iter_trace_diffuse_rays_beqelse_b2470
# B2471
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
	j	iter_trace_diffuse_rays_loop_b2472
iter_trace_diffuse_rays_bneelse_b2499:	#moved
# B2499
	addi x96, x96, 1
iter_trace_diffuse_rays_loop_b2472:
# B2472
	add x4, x98, x96
	lw x103, 0(x4)
	bne	x103, x85, iter_trace_diffuse_rays_beqelse_b2474
# B2473
	li x96, 1
	j iter_trace_diffuse_rays_cont_b2501 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2474:
# B2474
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
	bne	x107, x15, iter_trace_diffuse_rays_beqelse_b2476
# B2475
	fabs x104, x104
	lw x107, 4(x103)
	lw x107, 0(x107)
	fle x104, x107, x104
	beq	x104, zero, iter_trace_diffuse_rays_bneelse_b2478
# B2477
	mv x104, zero
	j iter_trace_diffuse_rays_cont_b2481 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2478:
# B2478
	fabs x104, x105
	lw x105, 4(x103)
	lw x105, 1(x105)
	fle x104, x105, x104
	beq	x104, zero, iter_trace_diffuse_rays_bneelse_b2480
# B2479
	mv x104, zero
	j iter_trace_diffuse_rays_cont_b2481 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2480:
# B2480
	fabs x104, x106
	lw x105, 4(x103)
	lw x105, 2(x105)
	fle x104, x105, x104
	xori x104, x104, 1
iter_trace_diffuse_rays_cont_b2481:
# B2481
	bne	x104, zero, iter_trace_diffuse_rays_beqelse_b2483
# B2482
	lw x103, 6(x103)
	xori x103, x103, 1
	j iter_trace_diffuse_rays_cont_b2498 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2483:
# B2483
	lw x103, 6(x103)
	j iter_trace_diffuse_rays_cont_b2498 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2476:
# B2476
	bne	x107, x16, iter_trace_diffuse_rays_beqelse_b2485
# B2484
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
	bne	x103, zero, iter_trace_diffuse_rays_beqelse_b2487
# B2486
	mv x103, x104
	j iter_trace_diffuse_rays_cont_b2488 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2487:
# B2487
	xori x103, x104, 1
iter_trace_diffuse_rays_cont_b2488:
# B2488
	xori x103, x103, 1
	j iter_trace_diffuse_rays_cont_b2498 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2485:
# B2485
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
	bne	x108, zero, iter_trace_diffuse_rays_beqelse_b2490
# B2489
	mv x104, x107
	j iter_trace_diffuse_rays_cont_b2491 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2490:
# B2490
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
iter_trace_diffuse_rays_cont_b2491:
# B2491
	lw x105, 1(x103)
	bne	x105, x9, iter_trace_diffuse_rays_beqelse_b2493
# B2492
	lui x105, 260096
	fsub x104, x104, x105
	j iter_trace_diffuse_rays_cont_b2494 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2493:
# B2493
iter_trace_diffuse_rays_cont_b2494:
# B2494
	lw x103, 6(x103)
	fle x104, zero, x104
	xori x104, x104, 1
	bne	x103, zero, iter_trace_diffuse_rays_beqelse_b2496
# B2495
	mv x103, x104
	j iter_trace_diffuse_rays_cont_b2497 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2496:
# B2496
	xori x103, x104, 1
iter_trace_diffuse_rays_cont_b2497:
# B2497
	xori x103, x103, 1
iter_trace_diffuse_rays_cont_b2498:
# B2498
	beq	x103, zero, iter_trace_diffuse_rays_bneelse_b2499
# B2500
	mv x96, zero
iter_trace_diffuse_rays_cont_b2501:
# B2501
	beq	x96, zero, iter_trace_diffuse_rays_bneelse_b2502
# B2503
	sw x94, 0(x17)
	sw x95, 0(x21)
	sw x97, 1(x21)
	sw x18, 2(x21)
	sw x88, 0(x22)
	sw x93, 0(x23)
iter_trace_diffuse_rays_bneelse_b2502:
# B2502
iter_trace_diffuse_rays_beqelse_b2470:
# B2470
iter_trace_diffuse_rays_beqelse_b2468:
# B2468
iter_trace_diffuse_rays_cont_b2504:
# B2504
	j	iter_trace_diffuse_rays_loop_b2426
iter_trace_diffuse_rays_bneelse_b2427:
# B2427
iter_trace_diffuse_rays_cont_b2505:
# B2505
	addi x18, x90, 1
	mv x90, x18
	j	iter_trace_diffuse_rays_loop_b2423
iter_trace_diffuse_rays_bneelse_b2424:
# B2424
	j iter_trace_diffuse_rays_cont_b2628 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2422:
# B2422
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
	bne	x95, x15, iter_trace_diffuse_rays_beqelse_b2507
# B2506
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
	beq	x96, zero, iter_trace_diffuse_rays_bneelse_b2509
# B2508
	mv x96, zero
	j iter_trace_diffuse_rays_cont_b2512 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2509:
# B2509
	lw x96, 2(x91)
	fmul x96, x95, x96
	fadd x96, x96, x94
	fabs x96, x96
	lw x97, 4(x90)
	lw x97, 2(x97)
	fle x96, x97, x96
	beq	x96, zero, iter_trace_diffuse_rays_bneelse_b2511
# B2510
	mv x96, zero
	j iter_trace_diffuse_rays_cont_b2512 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2511:
# B2511
	lw x96, 1(x84)
	feq x96, x96, zero
	xori x96, x96, 1
iter_trace_diffuse_rays_cont_b2512:
# B2512
	bne	x96, zero, iter_trace_diffuse_rays_beqelse_b2514
# B2513
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
	beq	x96, zero, iter_trace_diffuse_rays_bneelse_b2516
# B2515
	mv x96, zero
	j iter_trace_diffuse_rays_cont_b2519 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2516:
# B2516
	lw x96, 2(x91)
	fmul x96, x95, x96
	fadd x96, x96, x94
	fabs x96, x96
	lw x97, 4(x90)
	lw x97, 2(x97)
	fle x96, x97, x96
	beq	x96, zero, iter_trace_diffuse_rays_bneelse_b2518
# B2517
	mv x96, zero
	j iter_trace_diffuse_rays_cont_b2519 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2518:
# B2518
	lw x96, 3(x84)
	feq x96, x96, zero
	xori x96, x96, 1
iter_trace_diffuse_rays_cont_b2519:
# B2519
	bne	x96, zero, iter_trace_diffuse_rays_beqelse_b2521
# B2520
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
	beq	x92, zero, iter_trace_diffuse_rays_bneelse_b2523
# B2522
	mv x84, zero
	j iter_trace_diffuse_rays_cont_b2526 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2523:
# B2523
	lw x91, 1(x91)
	fmul x91, x94, x91
	fadd x91, x91, x93
	fabs x91, x91
	lw x90, 4(x90)
	lw x90, 1(x90)
	fle x90, x90, x91
	beq	x90, zero, iter_trace_diffuse_rays_bneelse_b2525
# B2524
	mv x84, zero
	j iter_trace_diffuse_rays_cont_b2526 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2525:
# B2525
	lw x84, 5(x84)
	feq x84, x84, zero
	xori x84, x84, 1
iter_trace_diffuse_rays_cont_b2526:
# B2526
	bne	x84, zero, iter_trace_diffuse_rays_beqelse_b2528
# B2527
	mv x9, zero
	j iter_trace_diffuse_rays_cont_b2540 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2528:
# B2528
	sw x94, 0(x89)
	j iter_trace_diffuse_rays_cont_b2540 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2521:
# B2521
	sw x95, 0(x89)
	mv x9, x16
	j iter_trace_diffuse_rays_cont_b2540 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2514:
# B2514
	sw x95, 0(x89)
	mv x9, x15
	j iter_trace_diffuse_rays_cont_b2540 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2507:
# B2507
	bne	x95, x16, iter_trace_diffuse_rays_beqelse_b2530
# B2529
	lw x9, 0(x84)
	fle x9, zero, x9
	beq	x9, zero, iter_trace_diffuse_rays_bneelse_b2532
# B2531
	mv x9, zero
	j iter_trace_diffuse_rays_cont_b2540 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2532:
# B2532
	lw x84, 0(x84)
	lw x9, 3(x91)
	fmul x84, x84, x9
	sw x84, 0(x89)
	mv x9, x15
	j iter_trace_diffuse_rays_cont_b2540 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2530:
# B2530
	lw x9, 0(x84)
	feq x95, x9, zero
	bne	x95, zero, iter_trace_diffuse_rays_beqelse_b2534
# B2533
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
	beq	x91, zero, iter_trace_diffuse_rays_bneelse_b2536
# B2535
	mv x9, zero
	j iter_trace_diffuse_rays_cont_b2540 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2536:
# B2536
	lw x90, 6(x90)
	fsqrt x9, x9
	bne	x90, zero, iter_trace_diffuse_rays_beqelse_b2538
# B2537
	fsub x9, x92, x9
	lw x84, 4(x84)
	fmul x84, x9, x84
	sw x84, 0(x89)
	j iter_trace_diffuse_rays_cont_b2539 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2538:
# B2538
	fadd x9, x92, x9
	lw x84, 4(x84)
	fmul x84, x9, x84
	sw x84, 0(x89)
iter_trace_diffuse_rays_cont_b2539:
# B2539
	mv x9, x15
	j iter_trace_diffuse_rays_cont_b2540 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2534:
# B2534
	mv x9, zero
iter_trace_diffuse_rays_cont_b2540:
# B2540
	beq	x9, zero, iter_trace_diffuse_rays_bneelse_b2541
# B2542
	lw x84, 0(x89)
	lw x9, 0(x17)
	fle x84, x9, x84
	bne	x84, zero, iter_trace_diffuse_rays_beqelse_b2543
# B2544
	mv x9, x15
	mv x91, x83
	mv x90, x18
iter_trace_diffuse_rays_loop_b2545:
# B2545
	add x4, x90, x9
	lw x18, 0(x4)
	beq	x18, x85, iter_trace_diffuse_rays_bneelse_b2546
# B2547
	la x84, min_caml_and_net
	add x4, x84, x18
	lw x18, 0(x4)
	mv x92, x18
	mv x93, x91
	mv x84, zero
iter_trace_diffuse_rays_loop_b2548:
# B2548
	lw x18, 0(x93)
	add x4, x92, x84
	lw x94, 0(x4)
	beq	x94, x85, iter_trace_diffuse_rays_bneelse_b2549
# B2550
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
	bne	x102, x15, iter_trace_diffuse_rays_beqelse_b2552
# B2551
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
	beq	x103, zero, iter_trace_diffuse_rays_bneelse_b2554
# B2553
	mv x103, zero
	j iter_trace_diffuse_rays_cont_b2557 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2554:
# B2554
	lw x103, 2(x96)
	fmul x103, x102, x103
	fadd x103, x103, x99
	fabs x103, x103
	lw x104, 4(x95)
	lw x104, 2(x104)
	fle x103, x104, x103
	beq	x103, zero, iter_trace_diffuse_rays_bneelse_b2556
# B2555
	mv x103, zero
	j iter_trace_diffuse_rays_cont_b2557 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2556:
# B2556
	lw x103, 1(x101)
	feq x103, x103, zero
	xori x103, x103, 1
iter_trace_diffuse_rays_cont_b2557:
# B2557
	bne	x103, zero, iter_trace_diffuse_rays_beqelse_b2559
# B2558
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
	beq	x103, zero, iter_trace_diffuse_rays_bneelse_b2561
# B2560
	mv x103, zero
	j iter_trace_diffuse_rays_cont_b2564 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2561:
# B2561
	lw x103, 2(x96)
	fmul x103, x102, x103
	fadd x103, x103, x99
	fabs x103, x103
	lw x104, 4(x95)
	lw x104, 2(x104)
	fle x103, x104, x103
	beq	x103, zero, iter_trace_diffuse_rays_bneelse_b2563
# B2562
	mv x103, zero
	j iter_trace_diffuse_rays_cont_b2564 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2563:
# B2563
	lw x103, 3(x101)
	feq x103, x103, zero
	xori x103, x103, 1
iter_trace_diffuse_rays_cont_b2564:
# B2564
	bne	x103, zero, iter_trace_diffuse_rays_beqelse_b2566
# B2565
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
	beq	x97, zero, iter_trace_diffuse_rays_bneelse_b2568
# B2567
	mv x95, zero
	j iter_trace_diffuse_rays_cont_b2571 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2568:
# B2568
	lw x96, 1(x96)
	fmul x96, x99, x96
	fadd x96, x96, x98
	fabs x96, x96
	lw x95, 4(x95)
	lw x95, 1(x95)
	fle x95, x95, x96
	beq	x95, zero, iter_trace_diffuse_rays_bneelse_b2570
# B2569
	mv x95, zero
	j iter_trace_diffuse_rays_cont_b2571 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2570:
# B2570
	lw x95, 5(x101)
	feq x95, x95, zero
	xori x95, x95, 1
iter_trace_diffuse_rays_cont_b2571:
# B2571
	bne	x95, zero, iter_trace_diffuse_rays_beqelse_b2573
# B2572
	mv x95, zero
	j iter_trace_diffuse_rays_cont_b2585 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2573:
# B2573
	sw x99, 0(x89)
	li x95, 3
	j iter_trace_diffuse_rays_cont_b2585 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2566:
# B2566
	sw x102, 0(x89)
	li x95, 2
	j iter_trace_diffuse_rays_cont_b2585 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2559:
# B2559
	sw x102, 0(x89)
	li x95, 1
	j iter_trace_diffuse_rays_cont_b2585 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2552:
# B2552
	bne	x102, x16, iter_trace_diffuse_rays_beqelse_b2575
# B2574
	lw x95, 0(x101)
	fle x95, zero, x95
	beq	x95, zero, iter_trace_diffuse_rays_bneelse_b2577
# B2576
	mv x95, zero
	j iter_trace_diffuse_rays_cont_b2585 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2577:
# B2577
	lw x95, 0(x101)
	lw x96, 3(x96)
	fmul x95, x95, x96
	sw x95, 0(x89)
	li x95, 1
	j iter_trace_diffuse_rays_cont_b2585 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2575:
# B2575
	lw x102, 0(x101)
	feq x103, x102, zero
	bne	x103, zero, iter_trace_diffuse_rays_beqelse_b2579
# B2578
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
	beq	x98, zero, iter_trace_diffuse_rays_bneelse_b2581
# B2580
	mv x95, zero
	j iter_trace_diffuse_rays_cont_b2585 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2581:
# B2581
	lw x95, 6(x95)
	bne	x95, zero, iter_trace_diffuse_rays_beqelse_b2583
# B2582
	fsqrt x95, x96
	fsub x95, x97, x95
	lw x96, 4(x101)
	fmul x95, x95, x96
	sw x95, 0(x89)
	j iter_trace_diffuse_rays_cont_b2584 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2583:
# B2583
	fsqrt x95, x96
	fadd x95, x97, x95
	lw x96, 4(x101)
	fmul x95, x95, x96
	sw x95, 0(x89)
iter_trace_diffuse_rays_cont_b2584:
# B2584
	li x95, 1
	j iter_trace_diffuse_rays_cont_b2585 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2579:
# B2579
	mv x95, zero
iter_trace_diffuse_rays_cont_b2585:
# B2585
	addi x84, x84, 1
	bne	x95, zero, iter_trace_diffuse_rays_beqelse_b2587
# B2586
	add x4, x88, x94
	lw x18, 0(x4)
	lw x18, 6(x18)
	bne	x18, zero, iter_trace_diffuse_rays_beqelse_b2589
# B2588
	j iter_trace_diffuse_rays_cont_b2627 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2589:
# B2589
	j	iter_trace_diffuse_rays_loop_b2548
iter_trace_diffuse_rays_beqelse_b2587:
# B2587
	lw x96, 0(x89)
	fle x97, x96, zero
	bne	x97, zero, iter_trace_diffuse_rays_beqelse_b2590
# B2591
	lw x97, 0(x17)
	fle x97, x97, x96
	bne	x97, zero, iter_trace_diffuse_rays_beqelse_b2592
# B2593
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
	j	iter_trace_diffuse_rays_loop_b2594
iter_trace_diffuse_rays_bneelse_b2621:	#moved
# B2621
	addi x98, x98, 1
iter_trace_diffuse_rays_loop_b2594:
# B2594
	add x4, x101, x98
	lw x105, 0(x4)
	bne	x105, x85, iter_trace_diffuse_rays_beqelse_b2596
# B2595
	li x98, 1
	j iter_trace_diffuse_rays_cont_b2623 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2596:
# B2596
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
	bne	x109, x15, iter_trace_diffuse_rays_beqelse_b2598
# B2597
	fabs x106, x106
	lw x109, 4(x105)
	lw x109, 0(x109)
	fle x106, x109, x106
	beq	x106, zero, iter_trace_diffuse_rays_bneelse_b2600
# B2599
	mv x106, zero
	j iter_trace_diffuse_rays_cont_b2603 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2600:
# B2600
	fabs x106, x107
	lw x107, 4(x105)
	lw x107, 1(x107)
	fle x106, x107, x106
	beq	x106, zero, iter_trace_diffuse_rays_bneelse_b2602
# B2601
	mv x106, zero
	j iter_trace_diffuse_rays_cont_b2603 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2602:
# B2602
	fabs x106, x108
	lw x107, 4(x105)
	lw x107, 2(x107)
	fle x106, x107, x106
	xori x106, x106, 1
iter_trace_diffuse_rays_cont_b2603:
# B2603
	bne	x106, zero, iter_trace_diffuse_rays_beqelse_b2605
# B2604
	lw x105, 6(x105)
	xori x105, x105, 1
	j iter_trace_diffuse_rays_cont_b2620 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2605:
# B2605
	lw x105, 6(x105)
	j iter_trace_diffuse_rays_cont_b2620 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2598:
# B2598
	bne	x109, x16, iter_trace_diffuse_rays_beqelse_b2607
# B2606
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
	bne	x105, zero, iter_trace_diffuse_rays_beqelse_b2609
# B2608
	mv x105, x106
	j iter_trace_diffuse_rays_cont_b2610 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2609:
# B2609
	xori x105, x106, 1
iter_trace_diffuse_rays_cont_b2610:
# B2610
	xori x105, x105, 1
	j iter_trace_diffuse_rays_cont_b2620 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2607:
# B2607
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
	bne	x110, zero, iter_trace_diffuse_rays_beqelse_b2612
# B2611
	mv x106, x109
	j iter_trace_diffuse_rays_cont_b2613 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2612:
# B2612
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
iter_trace_diffuse_rays_cont_b2613:
# B2613
	lw x107, 1(x105)
	bne	x107, x86, iter_trace_diffuse_rays_beqelse_b2615
# B2614
	fsub x106, x106, x87
	j iter_trace_diffuse_rays_cont_b2616 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2615:
# B2615
iter_trace_diffuse_rays_cont_b2616:
# B2616
	lw x105, 6(x105)
	fle x106, zero, x106
	xori x106, x106, 1
	bne	x105, zero, iter_trace_diffuse_rays_beqelse_b2618
# B2617
	mv x105, x106
	j iter_trace_diffuse_rays_cont_b2619 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2618:
# B2618
	xori x105, x106, 1
iter_trace_diffuse_rays_cont_b2619:
# B2619
	xori x105, x105, 1
iter_trace_diffuse_rays_cont_b2620:
# B2620
	beq	x105, zero, iter_trace_diffuse_rays_bneelse_b2621
# B2622
	mv x98, zero
iter_trace_diffuse_rays_cont_b2623:
# B2623
	beq	x98, zero, iter_trace_diffuse_rays_bneelse_b2624
# B2625
	sw x96, 0(x17)
	sw x97, 0(x21)
	sw x99, 1(x21)
	sw x18, 2(x21)
	sw x94, 0(x22)
	sw x95, 0(x23)
iter_trace_diffuse_rays_bneelse_b2624:
# B2624
iter_trace_diffuse_rays_beqelse_b2592:
# B2592
iter_trace_diffuse_rays_beqelse_b2590:
# B2590
iter_trace_diffuse_rays_cont_b2626:
# B2626
	j	iter_trace_diffuse_rays_loop_b2548
iter_trace_diffuse_rays_bneelse_b2549:
# B2549
iter_trace_diffuse_rays_cont_b2627:
# B2627
	addi x18, x9, 1
	mv x9, x18
	j	iter_trace_diffuse_rays_loop_b2545
iter_trace_diffuse_rays_bneelse_b2546:
# B2546
iter_trace_diffuse_rays_beqelse_b2543:
# B2543
iter_trace_diffuse_rays_bneelse_b2541:
# B2541
iter_trace_diffuse_rays_cont_b2628:
# B2628
	addi x18, x81, 1
	mv x81, x18
	j	iter_trace_diffuse_rays_loop_b2418
iter_trace_diffuse_rays_bneelse_b2419:
# B2419
# B2629
	lw x17, 0(x17)
	fle x18, x17, x24
	beq	x18, zero, iter_trace_diffuse_rays_bneelse_b2631
# B2630
	mv x17, zero
	j iter_trace_diffuse_rays_cont_b2632 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2631:
# B2631
	fle x17, x25, x17
	xori x17, x17, 1
iter_trace_diffuse_rays_cont_b2632:
# B2632
	beq	x17, zero, iter_trace_diffuse_rays_bneelse_b2633
# B2634
	lw x17, 0(x22)
	add x4, x20, x17
	lw x17, 0(x4)
	lw x14, 0(x14)
	lw x18, 1(x17)
	bne	x18, x15, iter_trace_diffuse_rays_beqelse_b2636
# B2635
	lw x18, 0(x23)
	sw zero, 0(x26)
	sw zero, 1(x26)
	sw zero, 2(x26)
	addi x18, x18, -1
	add x4, x14, x18
	lw x14, 0(x4)
	feq x22, x14, zero
	bne	x22, zero, iter_trace_diffuse_rays_beqelse_b2638
# B2637
	fle x14, x14, zero
	beq	x14, zero, iter_trace_diffuse_rays_bneelse_b2640
# B2639
	lui x14, 784384
	j iter_trace_diffuse_rays_cont_b2641 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2640:
# B2640
	mv x14, x87
	j iter_trace_diffuse_rays_cont_b2641 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2638:
# B2638
	mv x14, zero
iter_trace_diffuse_rays_cont_b2641:
# B2641
	fsub x14, zero, x14
	add x4, x26, x18
	sw x14, 0(x4)
	j iter_trace_diffuse_rays_cont_b2652 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2636:
# B2636
	bne	x18, x16, iter_trace_diffuse_rays_beqelse_b2643
# B2642
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
	j iter_trace_diffuse_rays_cont_b2652 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2643:
# B2643
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
	bne	x82, zero, iter_trace_diffuse_rays_beqelse_b2645
# B2644
	sw x23, 0(x26)
	sw x25, 1(x26)
	sw x81, 2(x26)
	j iter_trace_diffuse_rays_cont_b2646 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2645:
# B2645
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
iter_trace_diffuse_rays_cont_b2646:
# B2646
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
	bne	x22, zero, iter_trace_diffuse_rays_beqelse_b2648
# B2647
	bne	x14, zero, iter_trace_diffuse_rays_beqelse_b2650
# B2649
	fdiv x14, x87, x18
	j iter_trace_diffuse_rays_cont_b2651 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2650:
# B2650
	fdiv x14, x28, x18
	j iter_trace_diffuse_rays_cont_b2651 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2648:
# B2648
	mv x14, x87
iter_trace_diffuse_rays_cont_b2651:
# B2651
	lw x18, 0(x26)
	fmul x18, x18, x14
	sw x18, 0(x26)
	lw x18, 1(x26)
	fmul x18, x18, x14
	sw x18, 1(x26)
	lw x18, 2(x26)
	fmul x14, x18, x14
	sw x14, 2(x26)
iter_trace_diffuse_rays_cont_b2652:
# B2652
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
	bne	x14, x15, iter_trace_diffuse_rays_beqelse_b2654
# B2653
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
	bne	x14, zero, iter_trace_diffuse_rays_beqelse_b2656
# B2655
	bne	x18, zero, iter_trace_diffuse_rays_beqelse_b2658
# B2657
	lui x14, 276464
	j iter_trace_diffuse_rays_cont_b2661 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2658:
# B2658
	mv x14, zero
	j iter_trace_diffuse_rays_cont_b2661 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2656:
# B2656
	bne	x18, zero, iter_trace_diffuse_rays_beqelse_b2660
# B2659
	mv x14, zero
	j iter_trace_diffuse_rays_cont_b2661 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2660:
# B2660
	lui x14, 276464
iter_trace_diffuse_rays_cont_b2661:
# B2661
	sw x14, 1(x29)
	j iter_trace_diffuse_rays_cont_b2746 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2654:
# B2654
	bne	x14, x16, iter_trace_diffuse_rays_beqelse_b2663
# B2662
	lw x14, 1(x21)
	fmul x14, x14, x33
	fle x18, x14, zero
	xori x18, x18, 1
	fabs x14, x14
	mv x23, x34
	mv x22, x14
	j	iter_trace_diffuse_rays_loop_b2664
iter_trace_diffuse_rays_bneelse_b2665:	#moved
# B2665
	fmul x23, x23, x35
iter_trace_diffuse_rays_loop_b2664:
# B2664
	fle x25, x22, x23
	beq	x25, zero, iter_trace_diffuse_rays_bneelse_b2665
# B2666
# B2667
	mv x27, x14
	mv x28, x23
	j	iter_trace_diffuse_rays_loop_b2668
iter_trace_diffuse_rays_beqelse_b2672:	#moved
# B2672
	fdiv x14, x28, x35
	mv x28, x14
iter_trace_diffuse_rays_loop_b2668:
# B2668
	fle x14, x34, x27
	beq	x14, zero, iter_trace_diffuse_rays_bneelse_b2669
# B2670
	fle x14, x27, x28
	bne	x14, zero, iter_trace_diffuse_rays_beqelse_b2672
# B2671
	fsub x14, x27, x28
	fdiv x22, x28, x35
	mv x27, x14
	mv x28, x22
	j	iter_trace_diffuse_rays_loop_b2668
iter_trace_diffuse_rays_bneelse_b2669:
# B2669
# B2673
	fle x14, x36, x27
	bne	x14, zero, iter_trace_diffuse_rays_beqelse_b2675
# B2674
	mv x22, x27
	j iter_trace_diffuse_rays_cont_b2676 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2675:
# B2675
	fsub x22, x27, x36
iter_trace_diffuse_rays_cont_b2676:
# B2676
	bne	x14, zero, iter_trace_diffuse_rays_beqelse_b2678
# B2677
	mv x14, x18
	j iter_trace_diffuse_rays_cont_b2679 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2678:
# B2678
	xori x14, x18, 1
iter_trace_diffuse_rays_cont_b2679:
# B2679
	fle x18, x37, x22
	bne	x18, zero, iter_trace_diffuse_rays_beqelse_b2681
# B2680
	mv x18, x22
	j iter_trace_diffuse_rays_cont_b2682 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2681:
# B2681
	fsub x18, x36, x22
iter_trace_diffuse_rays_cont_b2682:
# B2682
	fle x22, x38, x18
	bne	x22, zero, iter_trace_diffuse_rays_beqelse_b2684
# B2683
	fmul x22, x18, x18
	fmul x23, x22, x5
	fadd x23, x40, x23
	fmul x23, x22, x23
	fadd x23, x39, x23
	fmul x22, x22, x23
	fadd x22, x87, x22
	fmul x18, x18, x22
	j iter_trace_diffuse_rays_cont_b2685 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2684:
# B2684
	fsub x18, x37, x18
	fmul x18, x18, x18
	fmul x22, x18, x66
	fadd x22, x65, x22
	fmul x22, x18, x22
	fadd x22, x6, x22
	fmul x18, x18, x22
	fadd x18, x87, x18
iter_trace_diffuse_rays_cont_b2685:
# B2685
	fle x22, x18, zero
	beq	x14, x22, iter_trace_diffuse_rays_bneelse_b2687
# B2686
	mv x14, x18
	j iter_trace_diffuse_rays_cont_b2688 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2687:
# B2687
	fsub x14, zero, x18
iter_trace_diffuse_rays_cont_b2688:
# B2688
	fmul x14, x14, x14
	fmul x18, x67, x14
	sw x18, 0(x29)
	fsub x14, x87, x14
	fmul x14, x67, x14
	sw x14, 1(x29)
	j iter_trace_diffuse_rays_cont_b2746 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2663:
# B2663
	bne	x14, x86, iter_trace_diffuse_rays_beqelse_b2690
# B2689
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
	j	iter_trace_diffuse_rays_loop_b2691
iter_trace_diffuse_rays_bneelse_b2692:	#moved
# B2692
	fmul x22, x22, x35
iter_trace_diffuse_rays_loop_b2691:
# B2691
	fle x23, x18, x22
	beq	x23, zero, iter_trace_diffuse_rays_bneelse_b2692
# B2693
# B2694
	mv x27, x22
	mv x25, x14
	j	iter_trace_diffuse_rays_loop_b2695
iter_trace_diffuse_rays_beqelse_b2699:	#moved
# B2699
	fdiv x14, x27, x35
	mv x27, x14
iter_trace_diffuse_rays_loop_b2695:
# B2695
	fle x14, x34, x25
	beq	x14, zero, iter_trace_diffuse_rays_bneelse_b2696
# B2697
	fle x14, x25, x27
	bne	x14, zero, iter_trace_diffuse_rays_beqelse_b2699
# B2698
	fsub x14, x25, x27
	fdiv x18, x27, x35
	mv x27, x18
	mv x25, x14
	j	iter_trace_diffuse_rays_loop_b2695
iter_trace_diffuse_rays_bneelse_b2696:
# B2696
# B2700
	fle x14, x36, x25
	bne	x14, zero, iter_trace_diffuse_rays_beqelse_b2702
# B2701
	mv x18, x25
	j iter_trace_diffuse_rays_cont_b2703 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2702:
# B2702
	fsub x18, x25, x36
iter_trace_diffuse_rays_cont_b2703:
# B2703
	bne	x14, zero, iter_trace_diffuse_rays_beqelse_b2705
# B2704
	mv x22, x15
	j iter_trace_diffuse_rays_cont_b2706 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2705:
# B2705
	mv x22, zero
iter_trace_diffuse_rays_cont_b2706:
# B2706
	fle x14, x37, x18
	bne	x14, zero, iter_trace_diffuse_rays_beqelse_b2708
# B2707
	j iter_trace_diffuse_rays_cont_b2709 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2708:
# B2708
	fsub x18, x36, x18
iter_trace_diffuse_rays_cont_b2709:
# B2709
	bne	x14, zero, iter_trace_diffuse_rays_beqelse_b2711
# B2710
	mv x14, x22
	j iter_trace_diffuse_rays_cont_b2712 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2711:
# B2711
	xori x14, x22, 1
iter_trace_diffuse_rays_cont_b2712:
# B2712
	fle x22, x38, x18
	bne	x22, zero, iter_trace_diffuse_rays_beqelse_b2714
# B2713
	fmul x18, x18, x18
	fmul x22, x18, x66
	fadd x22, x65, x22
	fmul x22, x18, x22
	fadd x22, x6, x22
	fmul x18, x18, x22
	fadd x18, x87, x18
	j iter_trace_diffuse_rays_cont_b2715 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2714:
# B2714
	fsub x18, x37, x18
	fmul x22, x18, x18
	fmul x23, x22, x5
	fadd x23, x40, x23
	fmul x23, x22, x23
	fadd x23, x39, x23
	fmul x22, x22, x23
	fadd x22, x87, x22
	fmul x18, x18, x22
iter_trace_diffuse_rays_cont_b2715:
# B2715
	fle x22, x18, zero
	beq	x14, x22, iter_trace_diffuse_rays_bneelse_b2717
# B2716
	mv x14, x18
	j iter_trace_diffuse_rays_cont_b2718 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2717:
# B2717
	fsub x14, zero, x18
iter_trace_diffuse_rays_cont_b2718:
# B2718
	fmul x14, x14, x14
	fmul x18, x14, x67
	sw x18, 1(x29)
	fsub x14, x87, x14
	fmul x14, x14, x67
	sw x14, 2(x29)
	j iter_trace_diffuse_rays_cont_b2746 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2690:
# B2690
	bne	x14, x69, iter_trace_diffuse_rays_beqelse_b2720
# B2719
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
	beq	x23, zero, iter_trace_diffuse_rays_bneelse_b2722
# B2721
	fdiv x14, x18, x14
	fabs x14, x14
	fle x18, x14, zero
	xori x18, x18, 1
	fabs x23, x14
	fle x25, x70, x23
	bne	x25, zero, iter_trace_diffuse_rays_beqelse_b2724
# B2723
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
	j iter_trace_diffuse_rays_cont_b2730 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2724:
# B2724
	fle x14, x77, x23
	bne	x14, zero, iter_trace_diffuse_rays_beqelse_b2726
# B2725
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
	j iter_trace_diffuse_rays_cont_b2727 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2726:
# B2726
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
iter_trace_diffuse_rays_cont_b2727:
# B2727
	bne	x18, zero, iter_trace_diffuse_rays_beqelse_b2729
# B2728
	fsub x14, zero, x14
	j iter_trace_diffuse_rays_cont_b2730 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2729:
# B2729
iter_trace_diffuse_rays_cont_b2730:
# B2730
	fmul x14, x14, x78
	fdiv x14, x14, x68
	j iter_trace_diffuse_rays_cont_b2731 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2722:
# B2722
	lui x14, 268032
iter_trace_diffuse_rays_cont_b2731:
# B2731
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
	beq	x23, zero, iter_trace_diffuse_rays_bneelse_b2733
# B2732
	fdiv x18, x18, x22
	fabs x18, x18
	fle x22, x18, zero
	xori x22, x22, 1
	fabs x23, x18
	fle x25, x70, x23
	bne	x25, zero, iter_trace_diffuse_rays_beqelse_b2735
# B2734
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
	j iter_trace_diffuse_rays_cont_b2741 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2735:
# B2735
	fle x18, x77, x23
	bne	x18, zero, iter_trace_diffuse_rays_beqelse_b2737
# B2736
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
	j iter_trace_diffuse_rays_cont_b2738 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2737:
# B2737
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
iter_trace_diffuse_rays_cont_b2738:
# B2738
	bne	x22, zero, iter_trace_diffuse_rays_beqelse_b2740
# B2739
	fsub x18, zero, x18
	j iter_trace_diffuse_rays_cont_b2741 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2740:
# B2740
iter_trace_diffuse_rays_cont_b2741:
# B2741
	fmul x18, x18, x78
	fdiv x18, x18, x68
	j iter_trace_diffuse_rays_cont_b2742 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2733:
# B2733
	lui x18, 268032
iter_trace_diffuse_rays_cont_b2742:
# B2742
	floor x22, x18
	fsub x18, x18, x22
	fsub x14, x27, x14
	fmul x14, x14, x14
	fsub x14, x79, x14
	fsub x18, x27, x18
	fmul x18, x18, x18
	fsub x14, x14, x18
	fle x18, zero, x14
	beq	x18, zero, iter_trace_diffuse_rays_bneelse_b2744
# B2743
	mv x22, x14
	j iter_trace_diffuse_rays_cont_b2745 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2744:
# B2744
	mv x22, zero
iter_trace_diffuse_rays_cont_b2745:
# B2745
	fmul x14, x67, x22
	fdiv x14, x14, x8
	sw x14, 2(x29)
iter_trace_diffuse_rays_beqelse_b2720:
# B2720
iter_trace_diffuse_rays_cont_b2746:
# B2746
	lw x14, 0(x19)
	mv x19, x14
	mv x18, zero
	j	iter_trace_diffuse_rays_loop_b2747
iter_trace_diffuse_rays_bneelse_b2982:	#moved
# B2982
iter_trace_diffuse_rays_loop_b2747:
# B2747
	add x4, x19, x18
	lw x14, 0(x4)
	lw x22, 0(x14)
	li x23, -1
	la x25, min_caml_light
	bne	x22, x23, iter_trace_diffuse_rays_beqelse_b2749
# B2748
	mv x14, zero
	j iter_trace_diffuse_rays_cont_b2984 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2749:
# B2749
	li x27, 99
	bne	x22, x27, iter_trace_diffuse_rays_beqelse_b2751
# B2750
	li x22, 1
	j iter_trace_diffuse_rays_cont_b2889 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2751:
# B2751
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
	bne	x33, x15, iter_trace_diffuse_rays_beqelse_b2753
# B2752
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
	beq	x35, zero, iter_trace_diffuse_rays_bneelse_b2755
# B2754
	mv x35, zero
	j iter_trace_diffuse_rays_cont_b2758 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2755:
# B2755
	lw x35, 2(x33)
	fmul x35, x34, x35
	fadd x35, x35, x32
	fabs x35, x35
	lw x36, 4(x28)
	lw x36, 2(x36)
	fle x35, x36, x35
	beq	x35, zero, iter_trace_diffuse_rays_bneelse_b2757
# B2756
	mv x35, zero
	j iter_trace_diffuse_rays_cont_b2758 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2757:
# B2757
	lw x35, 1(x22)
	feq x35, x35, zero
	xori x35, x35, 1
iter_trace_diffuse_rays_cont_b2758:
# B2758
	bne	x35, zero, iter_trace_diffuse_rays_beqelse_b2760
# B2759
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
	beq	x35, zero, iter_trace_diffuse_rays_bneelse_b2762
# B2761
	mv x35, zero
	j iter_trace_diffuse_rays_cont_b2765 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2762:
# B2762
	lw x35, 2(x33)
	fmul x35, x34, x35
	fadd x35, x35, x32
	fabs x35, x35
	lw x36, 4(x28)
	lw x36, 2(x36)
	fle x35, x36, x35
	beq	x35, zero, iter_trace_diffuse_rays_bneelse_b2764
# B2763
	mv x35, zero
	j iter_trace_diffuse_rays_cont_b2765 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2764:
# B2764
	lw x35, 3(x22)
	feq x35, x35, zero
	xori x35, x35, 1
iter_trace_diffuse_rays_cont_b2765:
# B2765
	bne	x35, zero, iter_trace_diffuse_rays_beqelse_b2767
# B2766
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
	beq	x30, zero, iter_trace_diffuse_rays_bneelse_b2769
# B2768
	mv x22, zero
	j iter_trace_diffuse_rays_cont_b2772 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2769:
# B2769
	lw x30, 1(x33)
	fmul x30, x32, x30
	fadd x30, x30, x31
	fabs x30, x30
	lw x28, 4(x28)
	lw x28, 1(x28)
	fle x28, x28, x30
	beq	x28, zero, iter_trace_diffuse_rays_bneelse_b2771
# B2770
	mv x22, zero
	j iter_trace_diffuse_rays_cont_b2772 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2771:
# B2771
	lw x22, 5(x22)
	feq x22, x22, zero
	xori x22, x22, 1
iter_trace_diffuse_rays_cont_b2772:
# B2772
	bne	x22, zero, iter_trace_diffuse_rays_beqelse_b2774
# B2773
	mv x22, zero
	j iter_trace_diffuse_rays_cont_b2792 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2774:
# B2774
	la x22, min_caml_solver_dist
	sw x32, 0(x22)
	li x22, 3
	j iter_trace_diffuse_rays_cont_b2792 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2767:
# B2767
	la x22, min_caml_solver_dist
	sw x34, 0(x22)
	li x22, 2
	j iter_trace_diffuse_rays_cont_b2792 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2760:
# B2760
	la x22, min_caml_solver_dist
	sw x34, 0(x22)
	li x22, 1
	j iter_trace_diffuse_rays_cont_b2792 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2753:
# B2753
	bne	x33, x16, iter_trace_diffuse_rays_beqelse_b2776
# B2775
	lw x28, 0(x22)
	fle x28, zero, x28
	beq	x28, zero, iter_trace_diffuse_rays_bneelse_b2778
# B2777
	mv x22, zero
	j iter_trace_diffuse_rays_cont_b2792 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2778:
# B2778
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
	li x22, 1
	j iter_trace_diffuse_rays_cont_b2792 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2776:
# B2776
	lw x33, 0(x22)
	feq x34, x33, zero
	bne	x34, zero, iter_trace_diffuse_rays_beqelse_b2780
# B2779
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
	bne	x37, zero, iter_trace_diffuse_rays_beqelse_b2782
# B2781
	mv x30, x36
	j iter_trace_diffuse_rays_cont_b2783 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2782:
# B2782
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
iter_trace_diffuse_rays_cont_b2783:
# B2783
	lw x31, 1(x28)
	bne	x31, x35, iter_trace_diffuse_rays_beqelse_b2785
# B2784
	lui x31, 260096
	fsub x30, x30, x31
	j iter_trace_diffuse_rays_cont_b2786 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2785:
# B2785
iter_trace_diffuse_rays_cont_b2786:
# B2786
	fmul x31, x34, x34
	fmul x30, x33, x30
	fsub x30, x31, x30
	fle x31, x30, zero
	beq	x31, zero, iter_trace_diffuse_rays_bneelse_b2788
# B2787
	mv x22, zero
	j iter_trace_diffuse_rays_cont_b2792 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2788:
# B2788
	lw x28, 6(x28)
	bne	x28, zero, iter_trace_diffuse_rays_beqelse_b2790
# B2789
	la x28, min_caml_solver_dist
	fsqrt x30, x30
	fsub x30, x34, x30
	lw x22, 4(x22)
	fmul x22, x30, x22
	sw x22, 0(x28)
	j iter_trace_diffuse_rays_cont_b2791 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2790:
# B2790
	la x28, min_caml_solver_dist
	fsqrt x30, x30
	fadd x30, x34, x30
	lw x22, 4(x22)
	fmul x22, x30, x22
	sw x22, 0(x28)
iter_trace_diffuse_rays_cont_b2791:
# B2791
	li x22, 1
	j iter_trace_diffuse_rays_cont_b2792 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2780:
# B2780
	mv x22, zero
iter_trace_diffuse_rays_cont_b2792:
# B2792
	bne	x22, zero, iter_trace_diffuse_rays_beqelse_b2794
# B2793
	mv x22, zero
	j iter_trace_diffuse_rays_cont_b2889 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2794:
# B2794
	la x22, min_caml_solver_dist
	lw x28, 0(x22)
	fle x28, x24, x28
	beq	x28, zero, iter_trace_diffuse_rays_bneelse_b2796
# B2795
	mv x22, zero
	j iter_trace_diffuse_rays_cont_b2889 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2796:
# B2796
	mv x30, x15
	mv x31, x14
	j	iter_trace_diffuse_rays_loop_b2797
iter_trace_diffuse_rays_bneelse_b2884:	#moved
# B2884
	addi x28, x30, 1
	mv x30, x28
iter_trace_diffuse_rays_loop_b2797:
# B2797
	add x4, x31, x30
	lw x28, 0(x4)
	bne	x28, x23, iter_trace_diffuse_rays_beqelse_b2799
# B2798
	mv x28, zero
	j iter_trace_diffuse_rays_cont_b2886 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2799:
# B2799
	la x32, min_caml_and_net
	add x4, x32, x28
	lw x28, 0(x4)
	mv x33, x28
	mv x32, zero
	j	iter_trace_diffuse_rays_loop_b2800
iter_trace_diffuse_rays_bneelse_b2881:	#moved
# B2881
iter_trace_diffuse_rays_loop_b2800:
# B2800
	add x4, x33, x32
	lw x28, 0(x4)
	bne	x28, x23, iter_trace_diffuse_rays_beqelse_b2802
# B2801
	mv x28, zero
	j iter_trace_diffuse_rays_cont_b2883 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2802:
# B2802
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
	bne	x39, x15, iter_trace_diffuse_rays_beqelse_b2804
# B2803
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
	beq	x5, zero, iter_trace_diffuse_rays_bneelse_b2806
# B2805
	mv x5, zero
	j iter_trace_diffuse_rays_cont_b2809 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2806:
# B2806
	lw x5, 2(x39)
	fmul x5, x40, x5
	fadd x5, x5, x37
	fabs x5, x5
	lw x6, 4(x34)
	lw x6, 2(x6)
	fle x5, x6, x5
	beq	x5, zero, iter_trace_diffuse_rays_bneelse_b2808
# B2807
	mv x5, zero
	j iter_trace_diffuse_rays_cont_b2809 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2808:
# B2808
	lw x5, 1(x38)
	feq x5, x5, zero
	xori x5, x5, 1
iter_trace_diffuse_rays_cont_b2809:
# B2809
	bne	x5, zero, iter_trace_diffuse_rays_beqelse_b2811
# B2810
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
	beq	x5, zero, iter_trace_diffuse_rays_bneelse_b2813
# B2812
	mv x5, zero
	j iter_trace_diffuse_rays_cont_b2816 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2813:
# B2813
	lw x5, 2(x39)
	fmul x5, x40, x5
	fadd x5, x5, x37
	fabs x5, x5
	lw x6, 4(x34)
	lw x6, 2(x6)
	fle x5, x6, x5
	beq	x5, zero, iter_trace_diffuse_rays_bneelse_b2815
# B2814
	mv x5, zero
	j iter_trace_diffuse_rays_cont_b2816 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2815:
# B2815
	lw x5, 3(x38)
	feq x5, x5, zero
	xori x5, x5, 1
iter_trace_diffuse_rays_cont_b2816:
# B2816
	bne	x5, zero, iter_trace_diffuse_rays_beqelse_b2818
# B2817
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
	beq	x35, zero, iter_trace_diffuse_rays_bneelse_b2820
# B2819
	mv x34, zero
	j iter_trace_diffuse_rays_cont_b2823 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2820:
# B2820
	lw x35, 1(x39)
	fmul x35, x37, x35
	fadd x35, x35, x36
	fabs x35, x35
	lw x34, 4(x34)
	lw x34, 1(x34)
	fle x34, x34, x35
	beq	x34, zero, iter_trace_diffuse_rays_bneelse_b2822
# B2821
	mv x34, zero
	j iter_trace_diffuse_rays_cont_b2823 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2822:
# B2822
	lw x34, 5(x38)
	feq x34, x34, zero
	xori x34, x34, 1
iter_trace_diffuse_rays_cont_b2823:
# B2823
	bne	x34, zero, iter_trace_diffuse_rays_beqelse_b2825
# B2824
	mv x34, zero
	j iter_trace_diffuse_rays_cont_b2843 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2825:
# B2825
	sw x37, 0(x22)
	li x34, 3
	j iter_trace_diffuse_rays_cont_b2843 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2818:
# B2818
	sw x40, 0(x22)
	li x34, 2
	j iter_trace_diffuse_rays_cont_b2843 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2811:
# B2811
	sw x40, 0(x22)
	li x34, 1
	j iter_trace_diffuse_rays_cont_b2843 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2804:
# B2804
	bne	x39, x16, iter_trace_diffuse_rays_beqelse_b2827
# B2826
	lw x34, 0(x38)
	fle x34, zero, x34
	beq	x34, zero, iter_trace_diffuse_rays_bneelse_b2829
# B2828
	mv x34, zero
	j iter_trace_diffuse_rays_cont_b2843 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2829:
# B2829
	lw x34, 1(x38)
	fmul x34, x34, x35
	lw x35, 2(x38)
	fmul x35, x35, x36
	fadd x34, x34, x35
	lw x35, 3(x38)
	fmul x35, x35, x37
	fadd x34, x34, x35
	sw x34, 0(x22)
	li x34, 1
	j iter_trace_diffuse_rays_cont_b2843 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2827:
# B2827
	lw x39, 0(x38)
	feq x40, x39, zero
	bne	x40, zero, iter_trace_diffuse_rays_beqelse_b2831
# B2830
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
	bne	x65, zero, iter_trace_diffuse_rays_beqelse_b2833
# B2832
	mv x35, x6
	j iter_trace_diffuse_rays_cont_b2834 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2833:
# B2833
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
iter_trace_diffuse_rays_cont_b2834:
# B2834
	lw x36, 1(x34)
	bne	x36, x5, iter_trace_diffuse_rays_beqelse_b2836
# B2835
	lui x36, 260096
	fsub x35, x35, x36
	j iter_trace_diffuse_rays_cont_b2837 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2836:
# B2836
iter_trace_diffuse_rays_cont_b2837:
# B2837
	fmul x36, x40, x40
	fmul x35, x39, x35
	fsub x35, x36, x35
	fle x36, x35, zero
	beq	x36, zero, iter_trace_diffuse_rays_bneelse_b2839
# B2838
	mv x34, zero
	j iter_trace_diffuse_rays_cont_b2843 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2839:
# B2839
	lw x34, 6(x34)
	bne	x34, zero, iter_trace_diffuse_rays_beqelse_b2841
# B2840
	fsqrt x34, x35
	fsub x34, x40, x34
	lw x35, 4(x38)
	fmul x34, x34, x35
	sw x34, 0(x22)
	j iter_trace_diffuse_rays_cont_b2842 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2841:
# B2841
	fsqrt x34, x35
	fadd x34, x40, x34
	lw x35, 4(x38)
	fmul x34, x34, x35
	sw x34, 0(x22)
iter_trace_diffuse_rays_cont_b2842:
# B2842
	li x34, 1
	j iter_trace_diffuse_rays_cont_b2843 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2831:
# B2831
	mv x34, zero
iter_trace_diffuse_rays_cont_b2843:
# B2843
	lw x35, 0(x22)
	bne	x34, zero, iter_trace_diffuse_rays_beqelse_b2845
# B2844
	mv x34, zero
	j iter_trace_diffuse_rays_cont_b2846 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2845:
# B2845
	lui x34, 779469
	addi x34, x34, -819
	fle x34, x34, x35
	xori x34, x34, 1
iter_trace_diffuse_rays_cont_b2846:
# B2846
	addi x32, x32, 1
	bne	x34, zero, iter_trace_diffuse_rays_beqelse_b2848
# B2847
	add x4, x20, x28
	lw x28, 0(x4)
	lw x28, 6(x28)
	bne	x28, zero, iter_trace_diffuse_rays_beqelse_b2850
# B2849
	mv x28, zero
	j iter_trace_diffuse_rays_cont_b2883 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2850:
# B2850
	j	iter_trace_diffuse_rays_loop_b2800
iter_trace_diffuse_rays_beqelse_b2848:
# B2848
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
	j	iter_trace_diffuse_rays_loop_b2851
iter_trace_diffuse_rays_bneelse_b2878:	#moved
# B2878
	addi x28, x34, 1
	mv x34, x28
iter_trace_diffuse_rays_loop_b2851:
# B2851
	add x4, x37, x34
	lw x28, 0(x4)
	bne	x28, x23, iter_trace_diffuse_rays_beqelse_b2853
# B2852
	li x28, 1
	j iter_trace_diffuse_rays_cont_b2880 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2853:
# B2853
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
	bne	x6, x15, iter_trace_diffuse_rays_beqelse_b2855
# B2854
	fabs x35, x35
	lw x6, 4(x28)
	lw x6, 0(x6)
	fle x35, x6, x35
	beq	x35, zero, iter_trace_diffuse_rays_bneelse_b2857
# B2856
	mv x35, zero
	j iter_trace_diffuse_rays_cont_b2860 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2857:
# B2857
	fabs x35, x36
	lw x36, 4(x28)
	lw x36, 1(x36)
	fle x35, x36, x35
	beq	x35, zero, iter_trace_diffuse_rays_bneelse_b2859
# B2858
	mv x35, zero
	j iter_trace_diffuse_rays_cont_b2860 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2859:
# B2859
	fabs x35, x5
	lw x36, 4(x28)
	lw x36, 2(x36)
	fle x35, x36, x35
	xori x35, x35, 1
iter_trace_diffuse_rays_cont_b2860:
# B2860
	bne	x35, zero, iter_trace_diffuse_rays_beqelse_b2862
# B2861
	lw x28, 6(x28)
	xori x28, x28, 1
	j iter_trace_diffuse_rays_cont_b2877 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2862:
# B2862
	lw x28, 6(x28)
	j iter_trace_diffuse_rays_cont_b2877 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2855:
# B2855
	bne	x6, x16, iter_trace_diffuse_rays_beqelse_b2864
# B2863
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
	bne	x28, zero, iter_trace_diffuse_rays_beqelse_b2866
# B2865
	mv x28, x35
	j iter_trace_diffuse_rays_cont_b2867 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2866:
# B2866
	xori x28, x35, 1
iter_trace_diffuse_rays_cont_b2867:
# B2867
	xori x28, x28, 1
	j iter_trace_diffuse_rays_cont_b2877 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2864:
# B2864
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
	bne	x65, zero, iter_trace_diffuse_rays_beqelse_b2869
# B2868
	mv x35, x6
	j iter_trace_diffuse_rays_cont_b2870 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2869:
# B2869
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
iter_trace_diffuse_rays_cont_b2870:
# B2870
	lw x36, 1(x28)
	li x5, 3
	bne	x36, x5, iter_trace_diffuse_rays_beqelse_b2872
# B2871
	lui x36, 260096
	fsub x35, x35, x36
	j iter_trace_diffuse_rays_cont_b2873 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2872:
# B2872
iter_trace_diffuse_rays_cont_b2873:
# B2873
	lw x28, 6(x28)
	fle x35, zero, x35
	xori x35, x35, 1
	bne	x28, zero, iter_trace_diffuse_rays_beqelse_b2875
# B2874
	mv x28, x35
	j iter_trace_diffuse_rays_cont_b2876 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2875:
# B2875
	xori x28, x35, 1
iter_trace_diffuse_rays_cont_b2876:
# B2876
	xori x28, x28, 1
iter_trace_diffuse_rays_cont_b2877:
# B2877
	beq	x28, zero, iter_trace_diffuse_rays_bneelse_b2878
# B2879
	mv x28, zero
iter_trace_diffuse_rays_cont_b2880:
# B2880
	beq	x28, zero, iter_trace_diffuse_rays_bneelse_b2881
# B2882
	mv x28, x15
iter_trace_diffuse_rays_cont_b2883:
# B2883
	beq	x28, zero, iter_trace_diffuse_rays_bneelse_b2884
# B2885
	mv x28, x15
iter_trace_diffuse_rays_cont_b2886:
# B2886
	bne	x28, zero, iter_trace_diffuse_rays_beqelse_b2888
# B2887
	mv x22, zero
	j iter_trace_diffuse_rays_cont_b2889 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2888:
# B2888
	mv x22, x15
iter_trace_diffuse_rays_cont_b2889:
# B2889
	addi x18, x18, 1
	beq	x22, zero, iter_trace_diffuse_rays_bneelse_b2890
# B2891
	mv x27, x15
	mv x28, x14
	j	iter_trace_diffuse_rays_loop_b2892
iter_trace_diffuse_rays_bneelse_b2979:	#moved
# B2979
	addi x14, x27, 1
	mv x27, x14
iter_trace_diffuse_rays_loop_b2892:
# B2892
	add x4, x28, x27
	lw x14, 0(x4)
	bne	x14, x23, iter_trace_diffuse_rays_beqelse_b2894
# B2893
	mv x14, zero
	j iter_trace_diffuse_rays_cont_b2981 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2894:
# B2894
	la x22, min_caml_and_net
	add x4, x22, x14
	lw x14, 0(x4)
	mv x30, x14
	mv x22, zero
	j	iter_trace_diffuse_rays_loop_b2895
iter_trace_diffuse_rays_bneelse_b2976:	#moved
# B2976
iter_trace_diffuse_rays_loop_b2895:
# B2895
	add x4, x30, x22
	lw x14, 0(x4)
	bne	x14, x23, iter_trace_diffuse_rays_beqelse_b2897
# B2896
	mv x14, zero
	j iter_trace_diffuse_rays_cont_b2978 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2897:
# B2897
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
	bne	x37, x15, iter_trace_diffuse_rays_beqelse_b2899
# B2898
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
	beq	x38, zero, iter_trace_diffuse_rays_bneelse_b2901
# B2900
	mv x38, zero
	j iter_trace_diffuse_rays_cont_b2904 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2901:
# B2901
	lw x38, 2(x31)
	fmul x38, x37, x38
	fadd x38, x38, x35
	fabs x38, x38
	lw x39, 4(x32)
	lw x39, 2(x39)
	fle x38, x39, x38
	beq	x38, zero, iter_trace_diffuse_rays_bneelse_b2903
# B2902
	mv x38, zero
	j iter_trace_diffuse_rays_cont_b2904 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2903:
# B2903
	lw x38, 1(x36)
	feq x38, x38, zero
	xori x38, x38, 1
iter_trace_diffuse_rays_cont_b2904:
# B2904
	bne	x38, zero, iter_trace_diffuse_rays_beqelse_b2906
# B2905
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
	beq	x38, zero, iter_trace_diffuse_rays_bneelse_b2908
# B2907
	mv x38, zero
	j iter_trace_diffuse_rays_cont_b2911 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2908:
# B2908
	lw x38, 2(x31)
	fmul x38, x37, x38
	fadd x38, x38, x35
	fabs x38, x38
	lw x39, 4(x32)
	lw x39, 2(x39)
	fle x38, x39, x38
	beq	x38, zero, iter_trace_diffuse_rays_bneelse_b2910
# B2909
	mv x38, zero
	j iter_trace_diffuse_rays_cont_b2911 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2910:
# B2910
	lw x38, 3(x36)
	feq x38, x38, zero
	xori x38, x38, 1
iter_trace_diffuse_rays_cont_b2911:
# B2911
	bne	x38, zero, iter_trace_diffuse_rays_beqelse_b2913
# B2912
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
	beq	x33, zero, iter_trace_diffuse_rays_bneelse_b2915
# B2914
	mv x31, zero
	j iter_trace_diffuse_rays_cont_b2918 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2915:
# B2915
	lw x31, 1(x31)
	fmul x31, x35, x31
	fadd x31, x31, x34
	fabs x31, x31
	lw x32, 4(x32)
	lw x32, 1(x32)
	fle x31, x32, x31
	beq	x31, zero, iter_trace_diffuse_rays_bneelse_b2917
# B2916
	mv x31, zero
	j iter_trace_diffuse_rays_cont_b2918 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2917:
# B2917
	lw x31, 5(x36)
	feq x31, x31, zero
	xori x31, x31, 1
iter_trace_diffuse_rays_cont_b2918:
# B2918
	bne	x31, zero, iter_trace_diffuse_rays_beqelse_b2920
# B2919
	mv x31, zero
	j iter_trace_diffuse_rays_cont_b2938 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2920:
# B2920
	la x31, min_caml_solver_dist
	sw x35, 0(x31)
	li x31, 3
	j iter_trace_diffuse_rays_cont_b2938 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2913:
# B2913
	la x31, min_caml_solver_dist
	sw x37, 0(x31)
	li x31, 2
	j iter_trace_diffuse_rays_cont_b2938 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2906:
# B2906
	la x31, min_caml_solver_dist
	sw x37, 0(x31)
	li x31, 1
	j iter_trace_diffuse_rays_cont_b2938 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2899:
# B2899
	bne	x37, x16, iter_trace_diffuse_rays_beqelse_b2922
# B2921
	lw x31, 0(x36)
	fle x31, zero, x31
	beq	x31, zero, iter_trace_diffuse_rays_bneelse_b2924
# B2923
	mv x31, zero
	j iter_trace_diffuse_rays_cont_b2938 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2924:
# B2924
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
	li x31, 1
	j iter_trace_diffuse_rays_cont_b2938 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2922:
# B2922
	lw x31, 0(x36)
	feq x37, x31, zero
	bne	x37, zero, iter_trace_diffuse_rays_beqelse_b2926
# B2925
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
	bne	x40, zero, iter_trace_diffuse_rays_beqelse_b2928
# B2927
	mv x33, x39
	j iter_trace_diffuse_rays_cont_b2929 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2928:
# B2928
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
iter_trace_diffuse_rays_cont_b2929:
# B2929
	lw x34, 1(x32)
	bne	x34, x38, iter_trace_diffuse_rays_beqelse_b2931
# B2930
	lui x34, 260096
	fsub x33, x33, x34
	j iter_trace_diffuse_rays_cont_b2932 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2931:
# B2931
iter_trace_diffuse_rays_cont_b2932:
# B2932
	fmul x34, x37, x37
	fmul x31, x31, x33
	fsub x31, x34, x31
	fle x33, x31, zero
	beq	x33, zero, iter_trace_diffuse_rays_bneelse_b2934
# B2933
	mv x31, zero
	j iter_trace_diffuse_rays_cont_b2938 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2934:
# B2934
	lw x32, 6(x32)
	bne	x32, zero, iter_trace_diffuse_rays_beqelse_b2936
# B2935
	la x32, min_caml_solver_dist
	fsqrt x31, x31
	fsub x31, x37, x31
	lw x33, 4(x36)
	fmul x31, x31, x33
	sw x31, 0(x32)
	j iter_trace_diffuse_rays_cont_b2937 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2936:
# B2936
	la x32, min_caml_solver_dist
	fsqrt x31, x31
	fadd x31, x37, x31
	lw x33, 4(x36)
	fmul x31, x31, x33
	sw x31, 0(x32)
iter_trace_diffuse_rays_cont_b2937:
# B2937
	li x31, 1
	j iter_trace_diffuse_rays_cont_b2938 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2926:
# B2926
	mv x31, zero
iter_trace_diffuse_rays_cont_b2938:
# B2938
	la x32, min_caml_solver_dist
	lw x32, 0(x32)
	bne	x31, zero, iter_trace_diffuse_rays_beqelse_b2940
# B2939
	mv x31, zero
	j iter_trace_diffuse_rays_cont_b2941 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2940:
# B2940
	lui x31, 779469
	addi x31, x31, -819
	fle x31, x31, x32
	xori x31, x31, 1
iter_trace_diffuse_rays_cont_b2941:
# B2941
	addi x22, x22, 1
	bne	x31, zero, iter_trace_diffuse_rays_beqelse_b2943
# B2942
	add x4, x20, x14
	lw x14, 0(x4)
	lw x14, 6(x14)
	bne	x14, zero, iter_trace_diffuse_rays_beqelse_b2945
# B2944
	mv x14, zero
	j iter_trace_diffuse_rays_cont_b2978 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2945:
# B2945
	j	iter_trace_diffuse_rays_loop_b2895
iter_trace_diffuse_rays_beqelse_b2943:
# B2943
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
	j	iter_trace_diffuse_rays_loop_b2946
iter_trace_diffuse_rays_bneelse_b2973:	#moved
# B2973
	addi x14, x33, 1
	mv x33, x14
iter_trace_diffuse_rays_loop_b2946:
# B2946
	add x4, x34, x33
	lw x14, 0(x4)
	bne	x14, x23, iter_trace_diffuse_rays_beqelse_b2948
# B2947
	li x14, 1
	j iter_trace_diffuse_rays_cont_b2975 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2948:
# B2948
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
	bne	x39, x15, iter_trace_diffuse_rays_beqelse_b2950
# B2949
	fabs x31, x31
	lw x39, 4(x14)
	lw x39, 0(x39)
	fle x31, x39, x31
	beq	x31, zero, iter_trace_diffuse_rays_bneelse_b2952
# B2951
	mv x31, zero
	j iter_trace_diffuse_rays_cont_b2955 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2952:
# B2952
	fabs x31, x32
	lw x32, 4(x14)
	lw x32, 1(x32)
	fle x31, x32, x31
	beq	x31, zero, iter_trace_diffuse_rays_bneelse_b2954
# B2953
	mv x31, zero
	j iter_trace_diffuse_rays_cont_b2955 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2954:
# B2954
	fabs x31, x38
	lw x32, 4(x14)
	lw x32, 2(x32)
	fle x31, x32, x31
	xori x31, x31, 1
iter_trace_diffuse_rays_cont_b2955:
# B2955
	bne	x31, zero, iter_trace_diffuse_rays_beqelse_b2957
# B2956
	lw x14, 6(x14)
	xori x14, x14, 1
	j iter_trace_diffuse_rays_cont_b2972 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2957:
# B2957
	lw x14, 6(x14)
	j iter_trace_diffuse_rays_cont_b2972 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2950:
# B2950
	bne	x39, x16, iter_trace_diffuse_rays_beqelse_b2959
# B2958
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
	bne	x14, zero, iter_trace_diffuse_rays_beqelse_b2961
# B2960
	mv x14, x31
	j iter_trace_diffuse_rays_cont_b2962 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2961:
# B2961
	xori x14, x31, 1
iter_trace_diffuse_rays_cont_b2962:
# B2962
	xori x14, x14, 1
	j iter_trace_diffuse_rays_cont_b2972 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2959:
# B2959
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
	bne	x40, zero, iter_trace_diffuse_rays_beqelse_b2964
# B2963
	mv x31, x39
	j iter_trace_diffuse_rays_cont_b2965 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2964:
# B2964
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
iter_trace_diffuse_rays_cont_b2965:
# B2965
	lw x32, 1(x14)
	li x38, 3
	bne	x32, x38, iter_trace_diffuse_rays_beqelse_b2967
# B2966
	lui x32, 260096
	fsub x31, x31, x32
	j iter_trace_diffuse_rays_cont_b2968 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2967:
# B2967
iter_trace_diffuse_rays_cont_b2968:
# B2968
	lw x14, 6(x14)
	fle x31, zero, x31
	xori x31, x31, 1
	bne	x14, zero, iter_trace_diffuse_rays_beqelse_b2970
# B2969
	mv x14, x31
	j iter_trace_diffuse_rays_cont_b2971 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2970:
# B2970
	xori x14, x31, 1
iter_trace_diffuse_rays_cont_b2971:
# B2971
	xori x14, x14, 1
iter_trace_diffuse_rays_cont_b2972:
# B2972
	beq	x14, zero, iter_trace_diffuse_rays_bneelse_b2973
# B2974
	mv x14, zero
iter_trace_diffuse_rays_cont_b2975:
# B2975
	beq	x14, zero, iter_trace_diffuse_rays_bneelse_b2976
# B2977
	mv x14, x15
iter_trace_diffuse_rays_cont_b2978:
# B2978
	beq	x14, zero, iter_trace_diffuse_rays_bneelse_b2979
# B2980
	mv x14, x15
iter_trace_diffuse_rays_cont_b2981:
# B2981
	beq	x14, zero, iter_trace_diffuse_rays_bneelse_b2982
# B2983
	mv x14, x15
iter_trace_diffuse_rays_cont_b2984:
# B2984
	bne	x14, zero, iter_trace_diffuse_rays_beqelse_b2986
# B2985
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
	beq	x15, zero, iter_trace_diffuse_rays_bneelse_b2988
# B2987
	mv x16, zero
	j iter_trace_diffuse_rays_cont_b2989 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2988:
# B2988
	mv x16, x14
iter_trace_diffuse_rays_cont_b2989:
# B2989
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
iter_trace_diffuse_rays_beqelse_b2986:
# B2986
	j iter_trace_diffuse_rays_cont_b3562 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2890:
# B2890
	j	iter_trace_diffuse_rays_loop_b2747
iter_trace_diffuse_rays_bneelse_b2633:
# B2633
	j iter_trace_diffuse_rays_cont_b3562 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b2417:
# B2417
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
iter_trace_diffuse_rays_loop_b2990:
# B2990
	add x4, x82, x81
	lw x18, 0(x4)
	lw x84, 0(x18)
	li x85, -1
	la x86, min_caml_objects
	li x87, 3
	lui x88, 260096
	beq	x84, x85, iter_trace_diffuse_rays_bneelse_b2991
# B2992
	li x89, 99
	la x9, min_caml_solver_dist
	li x90, 3
	bne	x84, x89, iter_trace_diffuse_rays_beqelse_b2994
# B2993
	mv x91, x15
	mv x93, x83
	mv x92, x18
iter_trace_diffuse_rays_loop_b2995:
# B2995
	add x4, x92, x91
	lw x18, 0(x4)
	beq	x18, x85, iter_trace_diffuse_rays_bneelse_b2996
# B2997
	la x84, min_caml_and_net
	add x4, x84, x18
	lw x18, 0(x4)
	mv x88, x93
	mv x87, x18
	mv x84, zero
iter_trace_diffuse_rays_loop_b2998:
# B2998
	lw x18, 0(x88)
	add x4, x87, x84
	lw x89, 0(x4)
	beq	x89, x85, iter_trace_diffuse_rays_bneelse_b2999
# B3000
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
	bne	x101, x15, iter_trace_diffuse_rays_beqelse_b3002
# B3001
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
	beq	x102, zero, iter_trace_diffuse_rays_bneelse_b3004
# B3003
	mv x102, zero
	j iter_trace_diffuse_rays_cont_b3007 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b3004:
# B3004
	lw x102, 2(x95)
	fmul x102, x101, x102
	fadd x102, x102, x98
	fabs x102, x102
	lw x103, 4(x94)
	lw x103, 2(x103)
	fle x102, x103, x102
	beq	x102, zero, iter_trace_diffuse_rays_bneelse_b3006
# B3005
	mv x102, zero
	j iter_trace_diffuse_rays_cont_b3007 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b3006:
# B3006
	lw x102, 1(x99)
	feq x102, x102, zero
	xori x102, x102, 1
iter_trace_diffuse_rays_cont_b3007:
# B3007
	bne	x102, zero, iter_trace_diffuse_rays_beqelse_b3009
# B3008
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
	beq	x102, zero, iter_trace_diffuse_rays_bneelse_b3011
# B3010
	mv x102, zero
	j iter_trace_diffuse_rays_cont_b3014 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b3011:
# B3011
	lw x102, 2(x95)
	fmul x102, x101, x102
	fadd x102, x102, x98
	fabs x102, x102
	lw x103, 4(x94)
	lw x103, 2(x103)
	fle x102, x103, x102
	beq	x102, zero, iter_trace_diffuse_rays_bneelse_b3013
# B3012
	mv x102, zero
	j iter_trace_diffuse_rays_cont_b3014 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b3013:
# B3013
	lw x102, 3(x99)
	feq x102, x102, zero
	xori x102, x102, 1
iter_trace_diffuse_rays_cont_b3014:
# B3014
	bne	x102, zero, iter_trace_diffuse_rays_beqelse_b3016
# B3015
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
	beq	x96, zero, iter_trace_diffuse_rays_bneelse_b3018
# B3017
	mv x94, zero
	j iter_trace_diffuse_rays_cont_b3021 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b3018:
# B3018
	lw x95, 1(x95)
	fmul x95, x98, x95
	fadd x95, x95, x97
	fabs x95, x95
	lw x94, 4(x94)
	lw x94, 1(x94)
	fle x94, x94, x95
	beq	x94, zero, iter_trace_diffuse_rays_bneelse_b3020
# B3019
	mv x94, zero
	j iter_trace_diffuse_rays_cont_b3021 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b3020:
# B3020
	lw x94, 5(x99)
	feq x94, x94, zero
	xori x94, x94, 1
iter_trace_diffuse_rays_cont_b3021:
# B3021
	bne	x94, zero, iter_trace_diffuse_rays_beqelse_b3023
# B3022
	mv x94, zero
	j iter_trace_diffuse_rays_cont_b3035 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3023:
# B3023
	la x94, min_caml_solver_dist
	sw x98, 0(x94)
	li x94, 3
	j iter_trace_diffuse_rays_cont_b3035 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3016:
# B3016
	la x94, min_caml_solver_dist
	sw x101, 0(x94)
	li x94, 2
	j iter_trace_diffuse_rays_cont_b3035 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3009:
# B3009
	la x94, min_caml_solver_dist
	sw x101, 0(x94)
	li x94, 1
	j iter_trace_diffuse_rays_cont_b3035 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3002:
# B3002
	bne	x101, x16, iter_trace_diffuse_rays_beqelse_b3025
# B3024
	lw x94, 0(x99)
	fle x94, zero, x94
	beq	x94, zero, iter_trace_diffuse_rays_bneelse_b3027
# B3026
	mv x94, zero
	j iter_trace_diffuse_rays_cont_b3035 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b3027:
# B3027
	la x94, min_caml_solver_dist
	lw x96, 0(x99)
	lw x95, 3(x95)
	fmul x95, x96, x95
	sw x95, 0(x94)
	li x94, 1
	j iter_trace_diffuse_rays_cont_b3035 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3025:
# B3025
	lw x101, 0(x99)
	feq x102, x101, zero
	bne	x102, zero, iter_trace_diffuse_rays_beqelse_b3029
# B3028
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
	beq	x97, zero, iter_trace_diffuse_rays_bneelse_b3031
# B3030
	mv x94, zero
	j iter_trace_diffuse_rays_cont_b3035 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b3031:
# B3031
	lw x94, 6(x94)
	bne	x94, zero, iter_trace_diffuse_rays_beqelse_b3033
# B3032
	la x94, min_caml_solver_dist
	fsqrt x95, x95
	fsub x95, x96, x95
	lw x96, 4(x99)
	fmul x95, x95, x96
	sw x95, 0(x94)
	j iter_trace_diffuse_rays_cont_b3034 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3033:
# B3033
	la x94, min_caml_solver_dist
	fsqrt x95, x95
	fadd x95, x96, x95
	lw x96, 4(x99)
	fmul x95, x95, x96
	sw x95, 0(x94)
iter_trace_diffuse_rays_cont_b3034:
# B3034
	li x94, 1
	j iter_trace_diffuse_rays_cont_b3035 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3029:
# B3029
	mv x94, zero
iter_trace_diffuse_rays_cont_b3035:
# B3035
	addi x84, x84, 1
	bne	x94, zero, iter_trace_diffuse_rays_beqelse_b3037
# B3036
	add x4, x86, x89
	lw x18, 0(x4)
	lw x18, 6(x18)
	bne	x18, zero, iter_trace_diffuse_rays_beqelse_b3039
# B3038
	j iter_trace_diffuse_rays_cont_b3077 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3039:
# B3039
	j	iter_trace_diffuse_rays_loop_b2998
iter_trace_diffuse_rays_beqelse_b3037:
# B3037
	lw x95, 0(x9)
	fle x96, x95, zero
	bne	x96, zero, iter_trace_diffuse_rays_beqelse_b3040
# B3041
	lw x96, 0(x17)
	fle x96, x96, x95
	bne	x96, zero, iter_trace_diffuse_rays_beqelse_b3042
# B3043
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
	j	iter_trace_diffuse_rays_loop_b3044
iter_trace_diffuse_rays_bneelse_b3071:	#moved
# B3071
	addi x97, x97, 1
iter_trace_diffuse_rays_loop_b3044:
# B3044
	add x4, x99, x97
	lw x104, 0(x4)
	bne	x104, x85, iter_trace_diffuse_rays_beqelse_b3046
# B3045
	li x97, 1
	j iter_trace_diffuse_rays_cont_b3073 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3046:
# B3046
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
	bne	x108, x15, iter_trace_diffuse_rays_beqelse_b3048
# B3047
	fabs x105, x105
	lw x108, 4(x104)
	lw x108, 0(x108)
	fle x105, x108, x105
	beq	x105, zero, iter_trace_diffuse_rays_bneelse_b3050
# B3049
	mv x105, zero
	j iter_trace_diffuse_rays_cont_b3053 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b3050:
# B3050
	fabs x105, x106
	lw x106, 4(x104)
	lw x106, 1(x106)
	fle x105, x106, x105
	beq	x105, zero, iter_trace_diffuse_rays_bneelse_b3052
# B3051
	mv x105, zero
	j iter_trace_diffuse_rays_cont_b3053 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b3052:
# B3052
	fabs x105, x107
	lw x106, 4(x104)
	lw x106, 2(x106)
	fle x105, x106, x105
	xori x105, x105, 1
iter_trace_diffuse_rays_cont_b3053:
# B3053
	bne	x105, zero, iter_trace_diffuse_rays_beqelse_b3055
# B3054
	lw x104, 6(x104)
	xori x104, x104, 1
	j iter_trace_diffuse_rays_cont_b3070 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3055:
# B3055
	lw x104, 6(x104)
	j iter_trace_diffuse_rays_cont_b3070 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3048:
# B3048
	bne	x108, x16, iter_trace_diffuse_rays_beqelse_b3057
# B3056
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
	bne	x104, zero, iter_trace_diffuse_rays_beqelse_b3059
# B3058
	mv x104, x105
	j iter_trace_diffuse_rays_cont_b3060 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3059:
# B3059
	xori x104, x105, 1
iter_trace_diffuse_rays_cont_b3060:
# B3060
	xori x104, x104, 1
	j iter_trace_diffuse_rays_cont_b3070 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3057:
# B3057
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
	bne	x109, zero, iter_trace_diffuse_rays_beqelse_b3062
# B3061
	mv x105, x108
	j iter_trace_diffuse_rays_cont_b3063 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3062:
# B3062
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
iter_trace_diffuse_rays_cont_b3063:
# B3063
	lw x106, 1(x104)
	bne	x106, x90, iter_trace_diffuse_rays_beqelse_b3065
# B3064
	lui x106, 260096
	fsub x105, x105, x106
	j iter_trace_diffuse_rays_cont_b3066 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3065:
# B3065
iter_trace_diffuse_rays_cont_b3066:
# B3066
	lw x104, 6(x104)
	fle x105, zero, x105
	xori x105, x105, 1
	bne	x104, zero, iter_trace_diffuse_rays_beqelse_b3068
# B3067
	mv x104, x105
	j iter_trace_diffuse_rays_cont_b3069 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3068:
# B3068
	xori x104, x105, 1
iter_trace_diffuse_rays_cont_b3069:
# B3069
	xori x104, x104, 1
iter_trace_diffuse_rays_cont_b3070:
# B3070
	beq	x104, zero, iter_trace_diffuse_rays_bneelse_b3071
# B3072
	mv x97, zero
iter_trace_diffuse_rays_cont_b3073:
# B3073
	beq	x97, zero, iter_trace_diffuse_rays_bneelse_b3074
# B3075
	sw x95, 0(x17)
	sw x96, 0(x21)
	sw x98, 1(x21)
	sw x18, 2(x21)
	sw x89, 0(x22)
	sw x94, 0(x23)
iter_trace_diffuse_rays_bneelse_b3074:
# B3074
iter_trace_diffuse_rays_beqelse_b3042:
# B3042
iter_trace_diffuse_rays_beqelse_b3040:
# B3040
iter_trace_diffuse_rays_cont_b3076:
# B3076
	j	iter_trace_diffuse_rays_loop_b2998
iter_trace_diffuse_rays_bneelse_b2999:
# B2999
iter_trace_diffuse_rays_cont_b3077:
# B3077
	addi x18, x91, 1
	mv x91, x18
	j	iter_trace_diffuse_rays_loop_b2995
iter_trace_diffuse_rays_bneelse_b2996:
# B2996
	j iter_trace_diffuse_rays_cont_b3200 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b2994:
# B2994
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
	bne	x94, x15, iter_trace_diffuse_rays_beqelse_b3079
# B3078
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
	beq	x95, zero, iter_trace_diffuse_rays_bneelse_b3081
# B3080
	mv x95, zero
	j iter_trace_diffuse_rays_cont_b3084 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b3081:
# B3081
	lw x95, 2(x89)
	fmul x95, x94, x95
	fadd x95, x95, x93
	fabs x95, x95
	lw x96, 4(x86)
	lw x96, 2(x96)
	fle x95, x96, x95
	beq	x95, zero, iter_trace_diffuse_rays_bneelse_b3083
# B3082
	mv x95, zero
	j iter_trace_diffuse_rays_cont_b3084 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b3083:
# B3083
	lw x95, 1(x84)
	feq x95, x95, zero
	xori x95, x95, 1
iter_trace_diffuse_rays_cont_b3084:
# B3084
	bne	x95, zero, iter_trace_diffuse_rays_beqelse_b3086
# B3085
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
	beq	x95, zero, iter_trace_diffuse_rays_bneelse_b3088
# B3087
	mv x95, zero
	j iter_trace_diffuse_rays_cont_b3091 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b3088:
# B3088
	lw x95, 2(x89)
	fmul x95, x94, x95
	fadd x95, x95, x93
	fabs x95, x95
	lw x96, 4(x86)
	lw x96, 2(x96)
	fle x95, x96, x95
	beq	x95, zero, iter_trace_diffuse_rays_bneelse_b3090
# B3089
	mv x95, zero
	j iter_trace_diffuse_rays_cont_b3091 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b3090:
# B3090
	lw x95, 3(x84)
	feq x95, x95, zero
	xori x95, x95, 1
iter_trace_diffuse_rays_cont_b3091:
# B3091
	bne	x95, zero, iter_trace_diffuse_rays_beqelse_b3093
# B3092
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
	beq	x91, zero, iter_trace_diffuse_rays_bneelse_b3095
# B3094
	mv x84, zero
	j iter_trace_diffuse_rays_cont_b3098 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b3095:
# B3095
	lw x89, 1(x89)
	fmul x89, x93, x89
	fadd x89, x89, x92
	fabs x89, x89
	lw x86, 4(x86)
	lw x86, 1(x86)
	fle x86, x86, x89
	beq	x86, zero, iter_trace_diffuse_rays_bneelse_b3097
# B3096
	mv x84, zero
	j iter_trace_diffuse_rays_cont_b3098 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b3097:
# B3097
	lw x84, 5(x84)
	feq x84, x84, zero
	xori x84, x84, 1
iter_trace_diffuse_rays_cont_b3098:
# B3098
	bne	x84, zero, iter_trace_diffuse_rays_beqelse_b3100
# B3099
	mv x90, zero
	j iter_trace_diffuse_rays_cont_b3112 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3100:
# B3100
	sw x93, 0(x9)
	j iter_trace_diffuse_rays_cont_b3112 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3093:
# B3093
	sw x94, 0(x9)
	mv x90, x16
	j iter_trace_diffuse_rays_cont_b3112 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3086:
# B3086
	sw x94, 0(x9)
	mv x90, x15
	j iter_trace_diffuse_rays_cont_b3112 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3079:
# B3079
	bne	x94, x16, iter_trace_diffuse_rays_beqelse_b3102
# B3101
	lw x86, 0(x84)
	fle x86, zero, x86
	beq	x86, zero, iter_trace_diffuse_rays_bneelse_b3104
# B3103
	mv x90, zero
	j iter_trace_diffuse_rays_cont_b3112 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b3104:
# B3104
	lw x84, 0(x84)
	lw x86, 3(x89)
	fmul x84, x84, x86
	sw x84, 0(x9)
	mv x90, x15
	j iter_trace_diffuse_rays_cont_b3112 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3102:
# B3102
	lw x90, 0(x84)
	feq x94, x90, zero
	bne	x94, zero, iter_trace_diffuse_rays_beqelse_b3106
# B3105
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
	beq	x90, zero, iter_trace_diffuse_rays_bneelse_b3108
# B3107
	mv x90, zero
	j iter_trace_diffuse_rays_cont_b3112 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b3108:
# B3108
	lw x86, 6(x86)
	fsqrt x89, x89
	bne	x86, zero, iter_trace_diffuse_rays_beqelse_b3110
# B3109
	fsub x86, x91, x89
	lw x84, 4(x84)
	fmul x84, x86, x84
	sw x84, 0(x9)
	j iter_trace_diffuse_rays_cont_b3111 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3110:
# B3110
	fadd x86, x91, x89
	lw x84, 4(x84)
	fmul x84, x86, x84
	sw x84, 0(x9)
iter_trace_diffuse_rays_cont_b3111:
# B3111
	mv x90, x15
	j iter_trace_diffuse_rays_cont_b3112 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3106:
# B3106
	mv x90, zero
iter_trace_diffuse_rays_cont_b3112:
# B3112
	beq	x90, zero, iter_trace_diffuse_rays_bneelse_b3113
# B3114
	lw x84, 0(x9)
	lw x86, 0(x17)
	fle x84, x86, x84
	bne	x84, zero, iter_trace_diffuse_rays_beqelse_b3115
# B3116
	mv x86, x15
	mv x90, x83
	mv x89, x18
iter_trace_diffuse_rays_loop_b3117:
# B3117
	add x4, x89, x86
	lw x18, 0(x4)
	beq	x18, x85, iter_trace_diffuse_rays_bneelse_b3118
# B3119
	la x84, min_caml_and_net
	add x4, x84, x18
	lw x18, 0(x4)
	mv x92, x90
	mv x91, x18
	mv x84, zero
iter_trace_diffuse_rays_loop_b3120:
# B3120
	lw x18, 0(x92)
	add x4, x91, x84
	lw x93, 0(x4)
	beq	x93, x85, iter_trace_diffuse_rays_bneelse_b3121
# B3122
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
	bne	x101, x15, iter_trace_diffuse_rays_beqelse_b3124
# B3123
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
	beq	x102, zero, iter_trace_diffuse_rays_bneelse_b3126
# B3125
	mv x102, zero
	j iter_trace_diffuse_rays_cont_b3129 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b3126:
# B3126
	lw x102, 2(x95)
	fmul x102, x101, x102
	fadd x102, x102, x98
	fabs x102, x102
	lw x103, 4(x94)
	lw x103, 2(x103)
	fle x102, x103, x102
	beq	x102, zero, iter_trace_diffuse_rays_bneelse_b3128
# B3127
	mv x102, zero
	j iter_trace_diffuse_rays_cont_b3129 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b3128:
# B3128
	lw x102, 1(x99)
	feq x102, x102, zero
	xori x102, x102, 1
iter_trace_diffuse_rays_cont_b3129:
# B3129
	bne	x102, zero, iter_trace_diffuse_rays_beqelse_b3131
# B3130
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
	beq	x102, zero, iter_trace_diffuse_rays_bneelse_b3133
# B3132
	mv x102, zero
	j iter_trace_diffuse_rays_cont_b3136 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b3133:
# B3133
	lw x102, 2(x95)
	fmul x102, x101, x102
	fadd x102, x102, x98
	fabs x102, x102
	lw x103, 4(x94)
	lw x103, 2(x103)
	fle x102, x103, x102
	beq	x102, zero, iter_trace_diffuse_rays_bneelse_b3135
# B3134
	mv x102, zero
	j iter_trace_diffuse_rays_cont_b3136 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b3135:
# B3135
	lw x102, 3(x99)
	feq x102, x102, zero
	xori x102, x102, 1
iter_trace_diffuse_rays_cont_b3136:
# B3136
	bne	x102, zero, iter_trace_diffuse_rays_beqelse_b3138
# B3137
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
	beq	x96, zero, iter_trace_diffuse_rays_bneelse_b3140
# B3139
	mv x94, zero
	j iter_trace_diffuse_rays_cont_b3143 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b3140:
# B3140
	lw x95, 1(x95)
	fmul x95, x98, x95
	fadd x95, x95, x97
	fabs x95, x95
	lw x94, 4(x94)
	lw x94, 1(x94)
	fle x94, x94, x95
	beq	x94, zero, iter_trace_diffuse_rays_bneelse_b3142
# B3141
	mv x94, zero
	j iter_trace_diffuse_rays_cont_b3143 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b3142:
# B3142
	lw x94, 5(x99)
	feq x94, x94, zero
	xori x94, x94, 1
iter_trace_diffuse_rays_cont_b3143:
# B3143
	bne	x94, zero, iter_trace_diffuse_rays_beqelse_b3145
# B3144
	mv x94, zero
	j iter_trace_diffuse_rays_cont_b3157 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3145:
# B3145
	sw x98, 0(x9)
	li x94, 3
	j iter_trace_diffuse_rays_cont_b3157 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3138:
# B3138
	sw x101, 0(x9)
	li x94, 2
	j iter_trace_diffuse_rays_cont_b3157 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3131:
# B3131
	sw x101, 0(x9)
	li x94, 1
	j iter_trace_diffuse_rays_cont_b3157 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3124:
# B3124
	bne	x101, x16, iter_trace_diffuse_rays_beqelse_b3147
# B3146
	lw x94, 0(x99)
	fle x94, zero, x94
	beq	x94, zero, iter_trace_diffuse_rays_bneelse_b3149
# B3148
	mv x94, zero
	j iter_trace_diffuse_rays_cont_b3157 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b3149:
# B3149
	lw x94, 0(x99)
	lw x95, 3(x95)
	fmul x94, x94, x95
	sw x94, 0(x9)
	li x94, 1
	j iter_trace_diffuse_rays_cont_b3157 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3147:
# B3147
	lw x101, 0(x99)
	feq x102, x101, zero
	bne	x102, zero, iter_trace_diffuse_rays_beqelse_b3151
# B3150
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
	beq	x97, zero, iter_trace_diffuse_rays_bneelse_b3153
# B3152
	mv x94, zero
	j iter_trace_diffuse_rays_cont_b3157 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b3153:
# B3153
	lw x94, 6(x94)
	bne	x94, zero, iter_trace_diffuse_rays_beqelse_b3155
# B3154
	fsqrt x94, x95
	fsub x94, x96, x94
	lw x95, 4(x99)
	fmul x94, x94, x95
	sw x94, 0(x9)
	j iter_trace_diffuse_rays_cont_b3156 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3155:
# B3155
	fsqrt x94, x95
	fadd x94, x96, x94
	lw x95, 4(x99)
	fmul x94, x94, x95
	sw x94, 0(x9)
iter_trace_diffuse_rays_cont_b3156:
# B3156
	li x94, 1
	j iter_trace_diffuse_rays_cont_b3157 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3151:
# B3151
	mv x94, zero
iter_trace_diffuse_rays_cont_b3157:
# B3157
	addi x84, x84, 1
	bne	x94, zero, iter_trace_diffuse_rays_beqelse_b3159
# B3158
	add x4, x20, x93
	lw x18, 0(x4)
	lw x18, 6(x18)
	bne	x18, zero, iter_trace_diffuse_rays_beqelse_b3161
# B3160
	j iter_trace_diffuse_rays_cont_b3199 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3161:
# B3161
	j	iter_trace_diffuse_rays_loop_b3120
iter_trace_diffuse_rays_beqelse_b3159:
# B3159
	lw x95, 0(x9)
	fle x96, x95, zero
	bne	x96, zero, iter_trace_diffuse_rays_beqelse_b3162
# B3163
	lw x96, 0(x17)
	fle x96, x96, x95
	bne	x96, zero, iter_trace_diffuse_rays_beqelse_b3164
# B3165
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
	j	iter_trace_diffuse_rays_loop_b3166
iter_trace_diffuse_rays_bneelse_b3193:	#moved
# B3193
	addi x97, x97, 1
iter_trace_diffuse_rays_loop_b3166:
# B3166
	add x4, x99, x97
	lw x104, 0(x4)
	bne	x104, x85, iter_trace_diffuse_rays_beqelse_b3168
# B3167
	li x97, 1
	j iter_trace_diffuse_rays_cont_b3195 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3168:
# B3168
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
	bne	x108, x15, iter_trace_diffuse_rays_beqelse_b3170
# B3169
	fabs x105, x105
	lw x108, 4(x104)
	lw x108, 0(x108)
	fle x105, x108, x105
	beq	x105, zero, iter_trace_diffuse_rays_bneelse_b3172
# B3171
	mv x105, zero
	j iter_trace_diffuse_rays_cont_b3175 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b3172:
# B3172
	fabs x105, x106
	lw x106, 4(x104)
	lw x106, 1(x106)
	fle x105, x106, x105
	beq	x105, zero, iter_trace_diffuse_rays_bneelse_b3174
# B3173
	mv x105, zero
	j iter_trace_diffuse_rays_cont_b3175 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b3174:
# B3174
	fabs x105, x107
	lw x106, 4(x104)
	lw x106, 2(x106)
	fle x105, x106, x105
	xori x105, x105, 1
iter_trace_diffuse_rays_cont_b3175:
# B3175
	bne	x105, zero, iter_trace_diffuse_rays_beqelse_b3177
# B3176
	lw x104, 6(x104)
	xori x104, x104, 1
	j iter_trace_diffuse_rays_cont_b3192 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3177:
# B3177
	lw x104, 6(x104)
	j iter_trace_diffuse_rays_cont_b3192 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3170:
# B3170
	bne	x108, x16, iter_trace_diffuse_rays_beqelse_b3179
# B3178
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
	bne	x104, zero, iter_trace_diffuse_rays_beqelse_b3181
# B3180
	mv x104, x105
	j iter_trace_diffuse_rays_cont_b3182 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3181:
# B3181
	xori x104, x105, 1
iter_trace_diffuse_rays_cont_b3182:
# B3182
	xori x104, x104, 1
	j iter_trace_diffuse_rays_cont_b3192 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3179:
# B3179
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
	bne	x109, zero, iter_trace_diffuse_rays_beqelse_b3184
# B3183
	mv x105, x108
	j iter_trace_diffuse_rays_cont_b3185 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3184:
# B3184
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
iter_trace_diffuse_rays_cont_b3185:
# B3185
	lw x106, 1(x104)
	bne	x106, x87, iter_trace_diffuse_rays_beqelse_b3187
# B3186
	fsub x105, x105, x88
	j iter_trace_diffuse_rays_cont_b3188 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3187:
# B3187
iter_trace_diffuse_rays_cont_b3188:
# B3188
	lw x104, 6(x104)
	fle x105, zero, x105
	xori x105, x105, 1
	bne	x104, zero, iter_trace_diffuse_rays_beqelse_b3190
# B3189
	mv x104, x105
	j iter_trace_diffuse_rays_cont_b3191 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3190:
# B3190
	xori x104, x105, 1
iter_trace_diffuse_rays_cont_b3191:
# B3191
	xori x104, x104, 1
iter_trace_diffuse_rays_cont_b3192:
# B3192
	beq	x104, zero, iter_trace_diffuse_rays_bneelse_b3193
# B3194
	mv x97, zero
iter_trace_diffuse_rays_cont_b3195:
# B3195
	beq	x97, zero, iter_trace_diffuse_rays_bneelse_b3196
# B3197
	sw x95, 0(x17)
	sw x96, 0(x21)
	sw x98, 1(x21)
	sw x18, 2(x21)
	sw x93, 0(x22)
	sw x94, 0(x23)
iter_trace_diffuse_rays_bneelse_b3196:
# B3196
iter_trace_diffuse_rays_beqelse_b3164:
# B3164
iter_trace_diffuse_rays_beqelse_b3162:
# B3162
iter_trace_diffuse_rays_cont_b3198:
# B3198
	j	iter_trace_diffuse_rays_loop_b3120
iter_trace_diffuse_rays_bneelse_b3121:
# B3121
iter_trace_diffuse_rays_cont_b3199:
# B3199
	addi x18, x86, 1
	mv x86, x18
	j	iter_trace_diffuse_rays_loop_b3117
iter_trace_diffuse_rays_bneelse_b3118:
# B3118
iter_trace_diffuse_rays_beqelse_b3115:
# B3115
iter_trace_diffuse_rays_bneelse_b3113:
# B3113
iter_trace_diffuse_rays_cont_b3200:
# B3200
	addi x18, x81, 1
	mv x81, x18
	j	iter_trace_diffuse_rays_loop_b2990
iter_trace_diffuse_rays_bneelse_b2991:
# B2991
# B3201
	lw x17, 0(x17)
	fle x18, x17, x24
	beq	x18, zero, iter_trace_diffuse_rays_bneelse_b3203
# B3202
	mv x17, zero
	j iter_trace_diffuse_rays_cont_b3204 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b3203:
# B3203
	fle x17, x25, x17
	xori x17, x17, 1
iter_trace_diffuse_rays_cont_b3204:
# B3204
	beq	x17, zero, iter_trace_diffuse_rays_bneelse_b3205
# B3206
	lw x17, 0(x22)
	add x4, x86, x17
	lw x17, 0(x4)
	lw x14, 0(x14)
	lw x18, 1(x17)
	bne	x18, x15, iter_trace_diffuse_rays_beqelse_b3208
# B3207
	lw x18, 0(x23)
	sw zero, 0(x26)
	sw zero, 1(x26)
	sw zero, 2(x26)
	addi x18, x18, -1
	add x4, x14, x18
	lw x14, 0(x4)
	feq x20, x14, zero
	bne	x20, zero, iter_trace_diffuse_rays_beqelse_b3210
# B3209
	fle x14, x14, zero
	beq	x14, zero, iter_trace_diffuse_rays_bneelse_b3212
# B3211
	mv x14, x28
	j iter_trace_diffuse_rays_cont_b3213 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b3212:
# B3212
	mv x14, x88
	j iter_trace_diffuse_rays_cont_b3213 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3210:
# B3210
	mv x14, zero
iter_trace_diffuse_rays_cont_b3213:
# B3213
	fsub x14, zero, x14
	add x4, x26, x18
	sw x14, 0(x4)
	j iter_trace_diffuse_rays_cont_b3224 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3208:
# B3208
	bne	x18, x16, iter_trace_diffuse_rays_beqelse_b3215
# B3214
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
	j iter_trace_diffuse_rays_cont_b3224 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3215:
# B3215
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
	bne	x81, zero, iter_trace_diffuse_rays_beqelse_b3217
# B3216
	sw x22, 0(x26)
	sw x23, 1(x26)
	sw x25, 2(x26)
	j iter_trace_diffuse_rays_cont_b3218 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3217:
# B3217
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
iter_trace_diffuse_rays_cont_b3218:
# B3218
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
	bne	x20, zero, iter_trace_diffuse_rays_beqelse_b3220
# B3219
	bne	x14, zero, iter_trace_diffuse_rays_beqelse_b3222
# B3221
	fdiv x14, x88, x18
	j iter_trace_diffuse_rays_cont_b3223 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3222:
# B3222
	fdiv x14, x28, x18
	j iter_trace_diffuse_rays_cont_b3223 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3220:
# B3220
	mv x14, x88
iter_trace_diffuse_rays_cont_b3223:
# B3223
	lw x18, 0(x26)
	fmul x18, x18, x14
	sw x18, 0(x26)
	lw x18, 1(x26)
	fmul x18, x18, x14
	sw x18, 1(x26)
	lw x18, 2(x26)
	fmul x14, x18, x14
	sw x14, 2(x26)
iter_trace_diffuse_rays_cont_b3224:
# B3224
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
	bne	x14, x15, iter_trace_diffuse_rays_beqelse_b3226
# B3225
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
	bne	x14, zero, iter_trace_diffuse_rays_beqelse_b3228
# B3227
	bne	x18, zero, iter_trace_diffuse_rays_beqelse_b3230
# B3229
	mv x20, x67
	j iter_trace_diffuse_rays_cont_b3233 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3230:
# B3230
	mv x20, zero
	j iter_trace_diffuse_rays_cont_b3233 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3228:
# B3228
	bne	x18, zero, iter_trace_diffuse_rays_beqelse_b3232
# B3231
	mv x20, zero
	j iter_trace_diffuse_rays_cont_b3233 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3232:
# B3232
	mv x20, x67
iter_trace_diffuse_rays_cont_b3233:
# B3233
	sw x20, 1(x29)
	j iter_trace_diffuse_rays_cont_b3318 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3226:
# B3226
	bne	x14, x16, iter_trace_diffuse_rays_beqelse_b3235
# B3234
	lw x14, 1(x21)
	fmul x14, x14, x33
	fle x18, x14, zero
	xori x18, x18, 1
	fabs x14, x14
	mv x22, x34
	mv x20, x14
	j	iter_trace_diffuse_rays_loop_b3236
iter_trace_diffuse_rays_bneelse_b3237:	#moved
# B3237
	fmul x22, x22, x35
iter_trace_diffuse_rays_loop_b3236:
# B3236
	fle x23, x20, x22
	beq	x23, zero, iter_trace_diffuse_rays_bneelse_b3237
# B3238
# B3239
	mv x27, x22
	mv x25, x14
	j	iter_trace_diffuse_rays_loop_b3240
iter_trace_diffuse_rays_beqelse_b3244:	#moved
# B3244
	fdiv x14, x27, x35
	mv x27, x14
iter_trace_diffuse_rays_loop_b3240:
# B3240
	fle x14, x34, x25
	beq	x14, zero, iter_trace_diffuse_rays_bneelse_b3241
# B3242
	fle x14, x25, x27
	bne	x14, zero, iter_trace_diffuse_rays_beqelse_b3244
# B3243
	fsub x14, x25, x27
	fdiv x20, x27, x35
	mv x27, x20
	mv x25, x14
	j	iter_trace_diffuse_rays_loop_b3240
iter_trace_diffuse_rays_bneelse_b3241:
# B3241
# B3245
	fle x14, x36, x25
	bne	x14, zero, iter_trace_diffuse_rays_beqelse_b3247
# B3246
	mv x20, x25
	j iter_trace_diffuse_rays_cont_b3248 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3247:
# B3247
	fsub x20, x25, x36
iter_trace_diffuse_rays_cont_b3248:
# B3248
	bne	x14, zero, iter_trace_diffuse_rays_beqelse_b3250
# B3249
	mv x14, x18
	j iter_trace_diffuse_rays_cont_b3251 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3250:
# B3250
	xori x14, x18, 1
iter_trace_diffuse_rays_cont_b3251:
# B3251
	fle x18, x37, x20
	bne	x18, zero, iter_trace_diffuse_rays_beqelse_b3253
# B3252
	mv x18, x20
	j iter_trace_diffuse_rays_cont_b3254 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3253:
# B3253
	fsub x18, x36, x20
iter_trace_diffuse_rays_cont_b3254:
# B3254
	fle x20, x38, x18
	bne	x20, zero, iter_trace_diffuse_rays_beqelse_b3256
# B3255
	fmul x20, x18, x18
	fmul x22, x20, x5
	fadd x22, x40, x22
	fmul x22, x20, x22
	fadd x22, x39, x22
	fmul x20, x20, x22
	fadd x20, x88, x20
	fmul x18, x18, x20
	j iter_trace_diffuse_rays_cont_b3257 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3256:
# B3256
	fsub x18, x37, x18
	fmul x18, x18, x18
	fmul x20, x18, x66
	fadd x20, x65, x20
	fmul x20, x18, x20
	fadd x20, x6, x20
	fmul x18, x18, x20
	fadd x18, x88, x18
iter_trace_diffuse_rays_cont_b3257:
# B3257
	fle x20, x18, zero
	beq	x14, x20, iter_trace_diffuse_rays_bneelse_b3259
# B3258
	mv x14, x18
	j iter_trace_diffuse_rays_cont_b3260 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b3259:
# B3259
	fsub x14, zero, x18
iter_trace_diffuse_rays_cont_b3260:
# B3260
	fmul x14, x14, x14
	fmul x18, x67, x14
	sw x18, 0(x29)
	fsub x14, x88, x14
	fmul x14, x67, x14
	sw x14, 1(x29)
	j iter_trace_diffuse_rays_cont_b3318 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3235:
# B3235
	bne	x14, x87, iter_trace_diffuse_rays_beqelse_b3262
# B3261
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
	j	iter_trace_diffuse_rays_loop_b3263
iter_trace_diffuse_rays_bneelse_b3264:	#moved
# B3264
	fmul x20, x20, x35
iter_trace_diffuse_rays_loop_b3263:
# B3263
	fle x22, x18, x20
	beq	x22, zero, iter_trace_diffuse_rays_bneelse_b3264
# B3265
# B3266
	mv x25, x20
	mv x23, x14
	j	iter_trace_diffuse_rays_loop_b3267
iter_trace_diffuse_rays_beqelse_b3271:	#moved
# B3271
	fdiv x14, x25, x35
	mv x25, x14
iter_trace_diffuse_rays_loop_b3267:
# B3267
	fle x14, x34, x23
	beq	x14, zero, iter_trace_diffuse_rays_bneelse_b3268
# B3269
	fle x14, x23, x25
	bne	x14, zero, iter_trace_diffuse_rays_beqelse_b3271
# B3270
	fsub x14, x23, x25
	fdiv x18, x25, x35
	mv x25, x18
	mv x23, x14
	j	iter_trace_diffuse_rays_loop_b3267
iter_trace_diffuse_rays_bneelse_b3268:
# B3268
# B3272
	fle x14, x36, x23
	bne	x14, zero, iter_trace_diffuse_rays_beqelse_b3274
# B3273
	mv x18, x23
	j iter_trace_diffuse_rays_cont_b3275 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3274:
# B3274
	fsub x18, x23, x36
iter_trace_diffuse_rays_cont_b3275:
# B3275
	bne	x14, zero, iter_trace_diffuse_rays_beqelse_b3277
# B3276
	mv x20, x15
	j iter_trace_diffuse_rays_cont_b3278 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3277:
# B3277
	mv x20, zero
iter_trace_diffuse_rays_cont_b3278:
# B3278
	fle x14, x37, x18
	bne	x14, zero, iter_trace_diffuse_rays_beqelse_b3280
# B3279
	j iter_trace_diffuse_rays_cont_b3281 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3280:
# B3280
	fsub x18, x36, x18
iter_trace_diffuse_rays_cont_b3281:
# B3281
	bne	x14, zero, iter_trace_diffuse_rays_beqelse_b3283
# B3282
	mv x14, x20
	j iter_trace_diffuse_rays_cont_b3284 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3283:
# B3283
	xori x14, x20, 1
iter_trace_diffuse_rays_cont_b3284:
# B3284
	fle x20, x38, x18
	bne	x20, zero, iter_trace_diffuse_rays_beqelse_b3286
# B3285
	fmul x18, x18, x18
	fmul x20, x18, x66
	fadd x20, x65, x20
	fmul x20, x18, x20
	fadd x20, x6, x20
	fmul x18, x18, x20
	fadd x18, x88, x18
	j iter_trace_diffuse_rays_cont_b3287 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3286:
# B3286
	fsub x18, x37, x18
	fmul x20, x18, x18
	fmul x22, x20, x5
	fadd x22, x40, x22
	fmul x22, x20, x22
	fadd x22, x39, x22
	fmul x20, x20, x22
	fadd x20, x88, x20
	fmul x18, x18, x20
iter_trace_diffuse_rays_cont_b3287:
# B3287
	fle x20, x18, zero
	beq	x14, x20, iter_trace_diffuse_rays_bneelse_b3289
# B3288
	mv x14, x18
	j iter_trace_diffuse_rays_cont_b3290 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b3289:
# B3289
	fsub x14, zero, x18
iter_trace_diffuse_rays_cont_b3290:
# B3290
	fmul x14, x14, x14
	fmul x18, x14, x67
	sw x18, 1(x29)
	fsub x14, x88, x14
	fmul x14, x14, x67
	sw x14, 2(x29)
	j iter_trace_diffuse_rays_cont_b3318 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3262:
# B3262
	bne	x14, x69, iter_trace_diffuse_rays_beqelse_b3292
# B3291
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
	beq	x22, zero, iter_trace_diffuse_rays_bneelse_b3294
# B3293
	fdiv x14, x18, x14
	fabs x14, x14
	fle x18, x14, zero
	xori x18, x18, 1
	fabs x22, x14
	fle x23, x70, x22
	bne	x23, zero, iter_trace_diffuse_rays_beqelse_b3296
# B3295
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
	j iter_trace_diffuse_rays_cont_b3302 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3296:
# B3296
	fle x14, x77, x22
	bne	x14, zero, iter_trace_diffuse_rays_beqelse_b3298
# B3297
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
	j iter_trace_diffuse_rays_cont_b3299 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3298:
# B3298
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
iter_trace_diffuse_rays_cont_b3299:
# B3299
	bne	x18, zero, iter_trace_diffuse_rays_beqelse_b3301
# B3300
	fsub x14, zero, x14
	j iter_trace_diffuse_rays_cont_b3302 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3301:
# B3301
iter_trace_diffuse_rays_cont_b3302:
# B3302
	fmul x14, x14, x78
	fdiv x14, x14, x68
	j iter_trace_diffuse_rays_cont_b3303 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b3294:
# B3294
	lui x14, 268032
iter_trace_diffuse_rays_cont_b3303:
# B3303
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
	beq	x22, zero, iter_trace_diffuse_rays_bneelse_b3305
# B3304
	fdiv x18, x18, x20
	fabs x18, x18
	fle x20, x18, zero
	xori x20, x20, 1
	fabs x22, x18
	fle x23, x70, x22
	bne	x23, zero, iter_trace_diffuse_rays_beqelse_b3307
# B3306
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
	j iter_trace_diffuse_rays_cont_b3313 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3307:
# B3307
	fle x18, x77, x22
	bne	x18, zero, iter_trace_diffuse_rays_beqelse_b3309
# B3308
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
	j iter_trace_diffuse_rays_cont_b3310 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3309:
# B3309
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
iter_trace_diffuse_rays_cont_b3310:
# B3310
	bne	x20, zero, iter_trace_diffuse_rays_beqelse_b3312
# B3311
	fsub x18, zero, x18
	j iter_trace_diffuse_rays_cont_b3313 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3312:
# B3312
iter_trace_diffuse_rays_cont_b3313:
# B3313
	fmul x18, x18, x78
	fdiv x18, x18, x68
	j iter_trace_diffuse_rays_cont_b3314 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b3305:
# B3305
	lui x18, 268032
iter_trace_diffuse_rays_cont_b3314:
# B3314
	floor x20, x18
	fsub x18, x18, x20
	fsub x14, x27, x14
	fmul x14, x14, x14
	fsub x14, x79, x14
	fsub x18, x27, x18
	fmul x18, x18, x18
	fsub x14, x14, x18
	fle x18, zero, x14
	beq	x18, zero, iter_trace_diffuse_rays_bneelse_b3316
# B3315
	mv x20, x14
	j iter_trace_diffuse_rays_cont_b3317 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b3316:
# B3316
	mv x20, zero
iter_trace_diffuse_rays_cont_b3317:
# B3317
	fmul x14, x67, x20
	fdiv x14, x14, x8
	sw x14, 2(x29)
iter_trace_diffuse_rays_beqelse_b3292:
# B3292
iter_trace_diffuse_rays_cont_b3318:
# B3318
	lw x14, 0(x19)
	mv x19, x14
	mv x18, zero
	j	iter_trace_diffuse_rays_loop_b3319
iter_trace_diffuse_rays_bneelse_b3554:	#moved
# B3554
iter_trace_diffuse_rays_loop_b3319:
# B3319
	add x4, x19, x18
	lw x14, 0(x4)
	lw x20, 0(x14)
	li x22, -1
	la x23, min_caml_light
	bne	x20, x22, iter_trace_diffuse_rays_beqelse_b3321
# B3320
	mv x14, zero
	j iter_trace_diffuse_rays_cont_b3556 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3321:
# B3321
	li x25, 99
	bne	x20, x25, iter_trace_diffuse_rays_beqelse_b3323
# B3322
	li x20, 1
	j iter_trace_diffuse_rays_cont_b3461 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3323:
# B3323
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
	bne	x32, x15, iter_trace_diffuse_rays_beqelse_b3325
# B3324
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
	beq	x34, zero, iter_trace_diffuse_rays_bneelse_b3327
# B3326
	mv x34, zero
	j iter_trace_diffuse_rays_cont_b3330 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b3327:
# B3327
	lw x34, 2(x32)
	fmul x34, x33, x34
	fadd x34, x34, x31
	fabs x34, x34
	lw x35, 4(x27)
	lw x35, 2(x35)
	fle x34, x35, x34
	beq	x34, zero, iter_trace_diffuse_rays_bneelse_b3329
# B3328
	mv x34, zero
	j iter_trace_diffuse_rays_cont_b3330 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b3329:
# B3329
	lw x34, 1(x20)
	feq x34, x34, zero
	xori x34, x34, 1
iter_trace_diffuse_rays_cont_b3330:
# B3330
	bne	x34, zero, iter_trace_diffuse_rays_beqelse_b3332
# B3331
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
	beq	x34, zero, iter_trace_diffuse_rays_bneelse_b3334
# B3333
	mv x34, zero
	j iter_trace_diffuse_rays_cont_b3337 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b3334:
# B3334
	lw x34, 2(x32)
	fmul x34, x33, x34
	fadd x34, x34, x31
	fabs x34, x34
	lw x35, 4(x27)
	lw x35, 2(x35)
	fle x34, x35, x34
	beq	x34, zero, iter_trace_diffuse_rays_bneelse_b3336
# B3335
	mv x34, zero
	j iter_trace_diffuse_rays_cont_b3337 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b3336:
# B3336
	lw x34, 3(x20)
	feq x34, x34, zero
	xori x34, x34, 1
iter_trace_diffuse_rays_cont_b3337:
# B3337
	bne	x34, zero, iter_trace_diffuse_rays_beqelse_b3339
# B3338
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
	beq	x28, zero, iter_trace_diffuse_rays_bneelse_b3341
# B3340
	mv x20, zero
	j iter_trace_diffuse_rays_cont_b3344 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b3341:
# B3341
	lw x28, 1(x32)
	fmul x28, x31, x28
	fadd x28, x28, x30
	fabs x28, x28
	lw x27, 4(x27)
	lw x27, 1(x27)
	fle x27, x27, x28
	beq	x27, zero, iter_trace_diffuse_rays_bneelse_b3343
# B3342
	mv x20, zero
	j iter_trace_diffuse_rays_cont_b3344 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b3343:
# B3343
	lw x20, 5(x20)
	feq x20, x20, zero
	xori x20, x20, 1
iter_trace_diffuse_rays_cont_b3344:
# B3344
	bne	x20, zero, iter_trace_diffuse_rays_beqelse_b3346
# B3345
	mv x20, zero
	j iter_trace_diffuse_rays_cont_b3364 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3346:
# B3346
	la x20, min_caml_solver_dist
	sw x31, 0(x20)
	li x20, 3
	j iter_trace_diffuse_rays_cont_b3364 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3339:
# B3339
	la x20, min_caml_solver_dist
	sw x33, 0(x20)
	li x20, 2
	j iter_trace_diffuse_rays_cont_b3364 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3332:
# B3332
	la x20, min_caml_solver_dist
	sw x33, 0(x20)
	li x20, 1
	j iter_trace_diffuse_rays_cont_b3364 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3325:
# B3325
	bne	x32, x16, iter_trace_diffuse_rays_beqelse_b3348
# B3347
	lw x27, 0(x20)
	fle x27, zero, x27
	beq	x27, zero, iter_trace_diffuse_rays_bneelse_b3350
# B3349
	mv x20, zero
	j iter_trace_diffuse_rays_cont_b3364 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b3350:
# B3350
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
	li x20, 1
	j iter_trace_diffuse_rays_cont_b3364 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3348:
# B3348
	lw x32, 0(x20)
	feq x33, x32, zero
	bne	x33, zero, iter_trace_diffuse_rays_beqelse_b3352
# B3351
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
	bne	x36, zero, iter_trace_diffuse_rays_beqelse_b3354
# B3353
	mv x28, x35
	j iter_trace_diffuse_rays_cont_b3355 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3354:
# B3354
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
iter_trace_diffuse_rays_cont_b3355:
# B3355
	lw x30, 1(x27)
	bne	x30, x34, iter_trace_diffuse_rays_beqelse_b3357
# B3356
	lui x30, 260096
	fsub x28, x28, x30
	j iter_trace_diffuse_rays_cont_b3358 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3357:
# B3357
iter_trace_diffuse_rays_cont_b3358:
# B3358
	fmul x30, x33, x33
	fmul x28, x32, x28
	fsub x28, x30, x28
	fle x30, x28, zero
	beq	x30, zero, iter_trace_diffuse_rays_bneelse_b3360
# B3359
	mv x20, zero
	j iter_trace_diffuse_rays_cont_b3364 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b3360:
# B3360
	lw x27, 6(x27)
	bne	x27, zero, iter_trace_diffuse_rays_beqelse_b3362
# B3361
	la x27, min_caml_solver_dist
	fsqrt x28, x28
	fsub x28, x33, x28
	lw x20, 4(x20)
	fmul x20, x28, x20
	sw x20, 0(x27)
	j iter_trace_diffuse_rays_cont_b3363 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3362:
# B3362
	la x27, min_caml_solver_dist
	fsqrt x28, x28
	fadd x28, x33, x28
	lw x20, 4(x20)
	fmul x20, x28, x20
	sw x20, 0(x27)
iter_trace_diffuse_rays_cont_b3363:
# B3363
	li x20, 1
	j iter_trace_diffuse_rays_cont_b3364 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3352:
# B3352
	mv x20, zero
iter_trace_diffuse_rays_cont_b3364:
# B3364
	bne	x20, zero, iter_trace_diffuse_rays_beqelse_b3366
# B3365
	mv x20, zero
	j iter_trace_diffuse_rays_cont_b3461 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3366:
# B3366
	la x20, min_caml_solver_dist
	lw x27, 0(x20)
	fle x27, x24, x27
	beq	x27, zero, iter_trace_diffuse_rays_bneelse_b3368
# B3367
	mv x20, zero
	j iter_trace_diffuse_rays_cont_b3461 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b3368:
# B3368
	mv x28, x15
	mv x30, x14
	j	iter_trace_diffuse_rays_loop_b3369
iter_trace_diffuse_rays_bneelse_b3456:	#moved
# B3456
	addi x27, x28, 1
	mv x28, x27
iter_trace_diffuse_rays_loop_b3369:
# B3369
	add x4, x30, x28
	lw x27, 0(x4)
	bne	x27, x22, iter_trace_diffuse_rays_beqelse_b3371
# B3370
	mv x27, zero
	j iter_trace_diffuse_rays_cont_b3458 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3371:
# B3371
	la x31, min_caml_and_net
	add x4, x31, x27
	lw x27, 0(x4)
	mv x32, x27
	mv x31, zero
	j	iter_trace_diffuse_rays_loop_b3372
iter_trace_diffuse_rays_bneelse_b3453:	#moved
# B3453
iter_trace_diffuse_rays_loop_b3372:
# B3372
	add x4, x32, x31
	lw x27, 0(x4)
	bne	x27, x22, iter_trace_diffuse_rays_beqelse_b3374
# B3373
	mv x27, zero
	j iter_trace_diffuse_rays_cont_b3455 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3374:
# B3374
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
	bne	x38, x15, iter_trace_diffuse_rays_beqelse_b3376
# B3375
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
	beq	x40, zero, iter_trace_diffuse_rays_bneelse_b3378
# B3377
	mv x40, zero
	j iter_trace_diffuse_rays_cont_b3381 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b3378:
# B3378
	lw x40, 2(x38)
	fmul x40, x39, x40
	fadd x40, x40, x36
	fabs x40, x40
	lw x5, 4(x33)
	lw x5, 2(x5)
	fle x40, x5, x40
	beq	x40, zero, iter_trace_diffuse_rays_bneelse_b3380
# B3379
	mv x40, zero
	j iter_trace_diffuse_rays_cont_b3381 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b3380:
# B3380
	lw x40, 1(x37)
	feq x40, x40, zero
	xori x40, x40, 1
iter_trace_diffuse_rays_cont_b3381:
# B3381
	bne	x40, zero, iter_trace_diffuse_rays_beqelse_b3383
# B3382
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
	beq	x40, zero, iter_trace_diffuse_rays_bneelse_b3385
# B3384
	mv x40, zero
	j iter_trace_diffuse_rays_cont_b3388 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b3385:
# B3385
	lw x40, 2(x38)
	fmul x40, x39, x40
	fadd x40, x40, x36
	fabs x40, x40
	lw x5, 4(x33)
	lw x5, 2(x5)
	fle x40, x5, x40
	beq	x40, zero, iter_trace_diffuse_rays_bneelse_b3387
# B3386
	mv x40, zero
	j iter_trace_diffuse_rays_cont_b3388 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b3387:
# B3387
	lw x40, 3(x37)
	feq x40, x40, zero
	xori x40, x40, 1
iter_trace_diffuse_rays_cont_b3388:
# B3388
	bne	x40, zero, iter_trace_diffuse_rays_beqelse_b3390
# B3389
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
	beq	x34, zero, iter_trace_diffuse_rays_bneelse_b3392
# B3391
	mv x33, zero
	j iter_trace_diffuse_rays_cont_b3395 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b3392:
# B3392
	lw x34, 1(x38)
	fmul x34, x36, x34
	fadd x34, x34, x35
	fabs x34, x34
	lw x33, 4(x33)
	lw x33, 1(x33)
	fle x33, x33, x34
	beq	x33, zero, iter_trace_diffuse_rays_bneelse_b3394
# B3393
	mv x33, zero
	j iter_trace_diffuse_rays_cont_b3395 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b3394:
# B3394
	lw x33, 5(x37)
	feq x33, x33, zero
	xori x33, x33, 1
iter_trace_diffuse_rays_cont_b3395:
# B3395
	bne	x33, zero, iter_trace_diffuse_rays_beqelse_b3397
# B3396
	mv x33, zero
	j iter_trace_diffuse_rays_cont_b3415 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3397:
# B3397
	sw x36, 0(x20)
	li x33, 3
	j iter_trace_diffuse_rays_cont_b3415 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3390:
# B3390
	sw x39, 0(x20)
	li x33, 2
	j iter_trace_diffuse_rays_cont_b3415 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3383:
# B3383
	sw x39, 0(x20)
	li x33, 1
	j iter_trace_diffuse_rays_cont_b3415 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3376:
# B3376
	bne	x38, x16, iter_trace_diffuse_rays_beqelse_b3399
# B3398
	lw x33, 0(x37)
	fle x33, zero, x33
	beq	x33, zero, iter_trace_diffuse_rays_bneelse_b3401
# B3400
	mv x33, zero
	j iter_trace_diffuse_rays_cont_b3415 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b3401:
# B3401
	lw x33, 1(x37)
	fmul x33, x33, x34
	lw x34, 2(x37)
	fmul x34, x34, x35
	fadd x33, x33, x34
	lw x34, 3(x37)
	fmul x34, x34, x36
	fadd x33, x33, x34
	sw x33, 0(x20)
	li x33, 1
	j iter_trace_diffuse_rays_cont_b3415 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3399:
# B3399
	lw x38, 0(x37)
	feq x39, x38, zero
	bne	x39, zero, iter_trace_diffuse_rays_beqelse_b3403
# B3402
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
	bne	x6, zero, iter_trace_diffuse_rays_beqelse_b3405
# B3404
	mv x34, x5
	j iter_trace_diffuse_rays_cont_b3406 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3405:
# B3405
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
iter_trace_diffuse_rays_cont_b3406:
# B3406
	lw x35, 1(x33)
	bne	x35, x40, iter_trace_diffuse_rays_beqelse_b3408
# B3407
	lui x35, 260096
	fsub x34, x34, x35
	j iter_trace_diffuse_rays_cont_b3409 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3408:
# B3408
iter_trace_diffuse_rays_cont_b3409:
# B3409
	fmul x35, x39, x39
	fmul x34, x38, x34
	fsub x34, x35, x34
	fle x35, x34, zero
	beq	x35, zero, iter_trace_diffuse_rays_bneelse_b3411
# B3410
	mv x33, zero
	j iter_trace_diffuse_rays_cont_b3415 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b3411:
# B3411
	lw x33, 6(x33)
	bne	x33, zero, iter_trace_diffuse_rays_beqelse_b3413
# B3412
	fsqrt x33, x34
	fsub x33, x39, x33
	lw x34, 4(x37)
	fmul x33, x33, x34
	sw x33, 0(x20)
	j iter_trace_diffuse_rays_cont_b3414 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3413:
# B3413
	fsqrt x33, x34
	fadd x33, x39, x33
	lw x34, 4(x37)
	fmul x33, x33, x34
	sw x33, 0(x20)
iter_trace_diffuse_rays_cont_b3414:
# B3414
	li x33, 1
	j iter_trace_diffuse_rays_cont_b3415 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3403:
# B3403
	mv x33, zero
iter_trace_diffuse_rays_cont_b3415:
# B3415
	lw x34, 0(x20)
	bne	x33, zero, iter_trace_diffuse_rays_beqelse_b3417
# B3416
	mv x33, zero
	j iter_trace_diffuse_rays_cont_b3418 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3417:
# B3417
	lui x33, 779469
	addi x33, x33, -819
	fle x33, x33, x34
	xori x33, x33, 1
iter_trace_diffuse_rays_cont_b3418:
# B3418
	addi x31, x31, 1
	bne	x33, zero, iter_trace_diffuse_rays_beqelse_b3420
# B3419
	add x4, x86, x27
	lw x27, 0(x4)
	lw x27, 6(x27)
	bne	x27, zero, iter_trace_diffuse_rays_beqelse_b3422
# B3421
	mv x27, zero
	j iter_trace_diffuse_rays_cont_b3455 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3422:
# B3422
	j	iter_trace_diffuse_rays_loop_b3372
iter_trace_diffuse_rays_beqelse_b3420:
# B3420
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
	j	iter_trace_diffuse_rays_loop_b3423
iter_trace_diffuse_rays_bneelse_b3450:	#moved
# B3450
	addi x27, x33, 1
	mv x33, x27
iter_trace_diffuse_rays_loop_b3423:
# B3423
	add x4, x36, x33
	lw x27, 0(x4)
	bne	x27, x22, iter_trace_diffuse_rays_beqelse_b3425
# B3424
	li x27, 1
	j iter_trace_diffuse_rays_cont_b3452 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3425:
# B3425
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
	bne	x5, x15, iter_trace_diffuse_rays_beqelse_b3427
# B3426
	fabs x34, x34
	lw x5, 4(x27)
	lw x5, 0(x5)
	fle x34, x5, x34
	beq	x34, zero, iter_trace_diffuse_rays_bneelse_b3429
# B3428
	mv x34, zero
	j iter_trace_diffuse_rays_cont_b3432 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b3429:
# B3429
	fabs x34, x35
	lw x35, 4(x27)
	lw x35, 1(x35)
	fle x34, x35, x34
	beq	x34, zero, iter_trace_diffuse_rays_bneelse_b3431
# B3430
	mv x34, zero
	j iter_trace_diffuse_rays_cont_b3432 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b3431:
# B3431
	fabs x34, x40
	lw x35, 4(x27)
	lw x35, 2(x35)
	fle x34, x35, x34
	xori x34, x34, 1
iter_trace_diffuse_rays_cont_b3432:
# B3432
	bne	x34, zero, iter_trace_diffuse_rays_beqelse_b3434
# B3433
	lw x27, 6(x27)
	xori x27, x27, 1
	j iter_trace_diffuse_rays_cont_b3449 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3434:
# B3434
	lw x27, 6(x27)
	j iter_trace_diffuse_rays_cont_b3449 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3427:
# B3427
	bne	x5, x16, iter_trace_diffuse_rays_beqelse_b3436
# B3435
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
	bne	x27, zero, iter_trace_diffuse_rays_beqelse_b3438
# B3437
	mv x27, x34
	j iter_trace_diffuse_rays_cont_b3439 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3438:
# B3438
	xori x27, x34, 1
iter_trace_diffuse_rays_cont_b3439:
# B3439
	xori x27, x27, 1
	j iter_trace_diffuse_rays_cont_b3449 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3436:
# B3436
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
	bne	x6, zero, iter_trace_diffuse_rays_beqelse_b3441
# B3440
	mv x34, x5
	j iter_trace_diffuse_rays_cont_b3442 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3441:
# B3441
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
iter_trace_diffuse_rays_cont_b3442:
# B3442
	lw x35, 1(x27)
	li x40, 3
	bne	x35, x40, iter_trace_diffuse_rays_beqelse_b3444
# B3443
	lui x35, 260096
	fsub x34, x34, x35
	j iter_trace_diffuse_rays_cont_b3445 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3444:
# B3444
iter_trace_diffuse_rays_cont_b3445:
# B3445
	lw x27, 6(x27)
	fle x34, zero, x34
	xori x34, x34, 1
	bne	x27, zero, iter_trace_diffuse_rays_beqelse_b3447
# B3446
	mv x27, x34
	j iter_trace_diffuse_rays_cont_b3448 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3447:
# B3447
	xori x27, x34, 1
iter_trace_diffuse_rays_cont_b3448:
# B3448
	xori x27, x27, 1
iter_trace_diffuse_rays_cont_b3449:
# B3449
	beq	x27, zero, iter_trace_diffuse_rays_bneelse_b3450
# B3451
	mv x27, zero
iter_trace_diffuse_rays_cont_b3452:
# B3452
	beq	x27, zero, iter_trace_diffuse_rays_bneelse_b3453
# B3454
	mv x27, x15
iter_trace_diffuse_rays_cont_b3455:
# B3455
	beq	x27, zero, iter_trace_diffuse_rays_bneelse_b3456
# B3457
	mv x27, x15
iter_trace_diffuse_rays_cont_b3458:
# B3458
	bne	x27, zero, iter_trace_diffuse_rays_beqelse_b3460
# B3459
	mv x20, zero
	j iter_trace_diffuse_rays_cont_b3461 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3460:
# B3460
	mv x20, x15
iter_trace_diffuse_rays_cont_b3461:
# B3461
	addi x18, x18, 1
	beq	x20, zero, iter_trace_diffuse_rays_bneelse_b3462
# B3463
	mv x25, x15
	mv x27, x14
	j	iter_trace_diffuse_rays_loop_b3464
iter_trace_diffuse_rays_bneelse_b3551:	#moved
# B3551
	addi x14, x25, 1
	mv x25, x14
iter_trace_diffuse_rays_loop_b3464:
# B3464
	add x4, x27, x25
	lw x14, 0(x4)
	bne	x14, x22, iter_trace_diffuse_rays_beqelse_b3466
# B3465
	mv x14, zero
	j iter_trace_diffuse_rays_cont_b3553 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3466:
# B3466
	la x20, min_caml_and_net
	add x4, x20, x14
	lw x14, 0(x4)
	mv x28, x14
	mv x20, zero
	j	iter_trace_diffuse_rays_loop_b3467
iter_trace_diffuse_rays_bneelse_b3548:	#moved
# B3548
iter_trace_diffuse_rays_loop_b3467:
# B3467
	add x4, x28, x20
	lw x14, 0(x4)
	bne	x14, x22, iter_trace_diffuse_rays_beqelse_b3469
# B3468
	mv x14, zero
	j iter_trace_diffuse_rays_cont_b3550 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3469:
# B3469
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
	bne	x36, x15, iter_trace_diffuse_rays_beqelse_b3471
# B3470
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
	beq	x37, zero, iter_trace_diffuse_rays_bneelse_b3473
# B3472
	mv x37, zero
	j iter_trace_diffuse_rays_cont_b3476 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b3473:
# B3473
	lw x37, 2(x30)
	fmul x37, x36, x37
	fadd x37, x37, x34
	fabs x37, x37
	lw x38, 4(x31)
	lw x38, 2(x38)
	fle x37, x38, x37
	beq	x37, zero, iter_trace_diffuse_rays_bneelse_b3475
# B3474
	mv x37, zero
	j iter_trace_diffuse_rays_cont_b3476 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b3475:
# B3475
	lw x37, 1(x35)
	feq x37, x37, zero
	xori x37, x37, 1
iter_trace_diffuse_rays_cont_b3476:
# B3476
	bne	x37, zero, iter_trace_diffuse_rays_beqelse_b3478
# B3477
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
	beq	x37, zero, iter_trace_diffuse_rays_bneelse_b3480
# B3479
	mv x37, zero
	j iter_trace_diffuse_rays_cont_b3483 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b3480:
# B3480
	lw x37, 2(x30)
	fmul x37, x36, x37
	fadd x37, x37, x34
	fabs x37, x37
	lw x38, 4(x31)
	lw x38, 2(x38)
	fle x37, x38, x37
	beq	x37, zero, iter_trace_diffuse_rays_bneelse_b3482
# B3481
	mv x37, zero
	j iter_trace_diffuse_rays_cont_b3483 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b3482:
# B3482
	lw x37, 3(x35)
	feq x37, x37, zero
	xori x37, x37, 1
iter_trace_diffuse_rays_cont_b3483:
# B3483
	bne	x37, zero, iter_trace_diffuse_rays_beqelse_b3485
# B3484
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
	beq	x32, zero, iter_trace_diffuse_rays_bneelse_b3487
# B3486
	mv x30, zero
	j iter_trace_diffuse_rays_cont_b3490 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b3487:
# B3487
	lw x30, 1(x30)
	fmul x30, x34, x30
	fadd x30, x30, x33
	fabs x30, x30
	lw x31, 4(x31)
	lw x31, 1(x31)
	fle x30, x31, x30
	beq	x30, zero, iter_trace_diffuse_rays_bneelse_b3489
# B3488
	mv x30, zero
	j iter_trace_diffuse_rays_cont_b3490 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b3489:
# B3489
	lw x30, 5(x35)
	feq x30, x30, zero
	xori x30, x30, 1
iter_trace_diffuse_rays_cont_b3490:
# B3490
	bne	x30, zero, iter_trace_diffuse_rays_beqelse_b3492
# B3491
	mv x30, zero
	j iter_trace_diffuse_rays_cont_b3510 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3492:
# B3492
	la x30, min_caml_solver_dist
	sw x34, 0(x30)
	li x30, 3
	j iter_trace_diffuse_rays_cont_b3510 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3485:
# B3485
	la x30, min_caml_solver_dist
	sw x36, 0(x30)
	li x30, 2
	j iter_trace_diffuse_rays_cont_b3510 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3478:
# B3478
	la x30, min_caml_solver_dist
	sw x36, 0(x30)
	li x30, 1
	j iter_trace_diffuse_rays_cont_b3510 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3471:
# B3471
	bne	x36, x16, iter_trace_diffuse_rays_beqelse_b3494
# B3493
	lw x30, 0(x35)
	fle x30, zero, x30
	beq	x30, zero, iter_trace_diffuse_rays_bneelse_b3496
# B3495
	mv x30, zero
	j iter_trace_diffuse_rays_cont_b3510 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b3496:
# B3496
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
	li x30, 1
	j iter_trace_diffuse_rays_cont_b3510 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3494:
# B3494
	lw x30, 0(x35)
	feq x36, x30, zero
	bne	x36, zero, iter_trace_diffuse_rays_beqelse_b3498
# B3497
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
	bne	x39, zero, iter_trace_diffuse_rays_beqelse_b3500
# B3499
	mv x32, x38
	j iter_trace_diffuse_rays_cont_b3501 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3500:
# B3500
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
iter_trace_diffuse_rays_cont_b3501:
# B3501
	lw x33, 1(x31)
	bne	x33, x37, iter_trace_diffuse_rays_beqelse_b3503
# B3502
	lui x33, 260096
	fsub x32, x32, x33
	j iter_trace_diffuse_rays_cont_b3504 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3503:
# B3503
iter_trace_diffuse_rays_cont_b3504:
# B3504
	fmul x33, x36, x36
	fmul x30, x30, x32
	fsub x30, x33, x30
	fle x32, x30, zero
	beq	x32, zero, iter_trace_diffuse_rays_bneelse_b3506
# B3505
	mv x30, zero
	j iter_trace_diffuse_rays_cont_b3510 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b3506:
# B3506
	lw x31, 6(x31)
	bne	x31, zero, iter_trace_diffuse_rays_beqelse_b3508
# B3507
	la x31, min_caml_solver_dist
	fsqrt x30, x30
	fsub x30, x36, x30
	lw x32, 4(x35)
	fmul x30, x30, x32
	sw x30, 0(x31)
	j iter_trace_diffuse_rays_cont_b3509 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3508:
# B3508
	la x31, min_caml_solver_dist
	fsqrt x30, x30
	fadd x30, x36, x30
	lw x32, 4(x35)
	fmul x30, x30, x32
	sw x30, 0(x31)
iter_trace_diffuse_rays_cont_b3509:
# B3509
	li x30, 1
	j iter_trace_diffuse_rays_cont_b3510 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3498:
# B3498
	mv x30, zero
iter_trace_diffuse_rays_cont_b3510:
# B3510
	la x31, min_caml_solver_dist
	lw x31, 0(x31)
	bne	x30, zero, iter_trace_diffuse_rays_beqelse_b3512
# B3511
	mv x30, zero
	j iter_trace_diffuse_rays_cont_b3513 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3512:
# B3512
	lui x30, 779469
	addi x30, x30, -819
	fle x30, x30, x31
	xori x30, x30, 1
iter_trace_diffuse_rays_cont_b3513:
# B3513
	addi x20, x20, 1
	bne	x30, zero, iter_trace_diffuse_rays_beqelse_b3515
# B3514
	add x4, x86, x14
	lw x14, 0(x4)
	lw x14, 6(x14)
	bne	x14, zero, iter_trace_diffuse_rays_beqelse_b3517
# B3516
	mv x14, zero
	j iter_trace_diffuse_rays_cont_b3550 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3517:
# B3517
	j	iter_trace_diffuse_rays_loop_b3467
iter_trace_diffuse_rays_beqelse_b3515:
# B3515
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
	j	iter_trace_diffuse_rays_loop_b3518
iter_trace_diffuse_rays_bneelse_b3545:	#moved
# B3545
	addi x14, x32, 1
	mv x32, x14
iter_trace_diffuse_rays_loop_b3518:
# B3518
	add x4, x33, x32
	lw x14, 0(x4)
	bne	x14, x22, iter_trace_diffuse_rays_beqelse_b3520
# B3519
	li x14, 1
	j iter_trace_diffuse_rays_cont_b3547 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3520:
# B3520
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
	bne	x38, x15, iter_trace_diffuse_rays_beqelse_b3522
# B3521
	fabs x30, x30
	lw x38, 4(x14)
	lw x38, 0(x38)
	fle x30, x38, x30
	beq	x30, zero, iter_trace_diffuse_rays_bneelse_b3524
# B3523
	mv x30, zero
	j iter_trace_diffuse_rays_cont_b3527 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b3524:
# B3524
	fabs x30, x31
	lw x31, 4(x14)
	lw x31, 1(x31)
	fle x30, x31, x30
	beq	x30, zero, iter_trace_diffuse_rays_bneelse_b3526
# B3525
	mv x30, zero
	j iter_trace_diffuse_rays_cont_b3527 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b3526:
# B3526
	fabs x30, x37
	lw x31, 4(x14)
	lw x31, 2(x31)
	fle x30, x31, x30
	xori x30, x30, 1
iter_trace_diffuse_rays_cont_b3527:
# B3527
	bne	x30, zero, iter_trace_diffuse_rays_beqelse_b3529
# B3528
	lw x14, 6(x14)
	xori x14, x14, 1
	j iter_trace_diffuse_rays_cont_b3544 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3529:
# B3529
	lw x14, 6(x14)
	j iter_trace_diffuse_rays_cont_b3544 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3522:
# B3522
	bne	x38, x16, iter_trace_diffuse_rays_beqelse_b3531
# B3530
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
	bne	x14, zero, iter_trace_diffuse_rays_beqelse_b3533
# B3532
	mv x14, x30
	j iter_trace_diffuse_rays_cont_b3534 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3533:
# B3533
	xori x14, x30, 1
iter_trace_diffuse_rays_cont_b3534:
# B3534
	xori x14, x14, 1
	j iter_trace_diffuse_rays_cont_b3544 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3531:
# B3531
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
	bne	x39, zero, iter_trace_diffuse_rays_beqelse_b3536
# B3535
	mv x30, x38
	j iter_trace_diffuse_rays_cont_b3537 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3536:
# B3536
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
iter_trace_diffuse_rays_cont_b3537:
# B3537
	lw x31, 1(x14)
	li x37, 3
	bne	x31, x37, iter_trace_diffuse_rays_beqelse_b3539
# B3538
	lui x31, 260096
	fsub x30, x30, x31
	j iter_trace_diffuse_rays_cont_b3540 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3539:
# B3539
iter_trace_diffuse_rays_cont_b3540:
# B3540
	lw x14, 6(x14)
	fle x30, zero, x30
	xori x30, x30, 1
	bne	x14, zero, iter_trace_diffuse_rays_beqelse_b3542
# B3541
	mv x14, x30
	j iter_trace_diffuse_rays_cont_b3543 # adhoc jump(2)
iter_trace_diffuse_rays_beqelse_b3542:
# B3542
	xori x14, x30, 1
iter_trace_diffuse_rays_cont_b3543:
# B3543
	xori x14, x14, 1
iter_trace_diffuse_rays_cont_b3544:
# B3544
	beq	x14, zero, iter_trace_diffuse_rays_bneelse_b3545
# B3546
	mv x14, zero
iter_trace_diffuse_rays_cont_b3547:
# B3547
	beq	x14, zero, iter_trace_diffuse_rays_bneelse_b3548
# B3549
	mv x14, x15
iter_trace_diffuse_rays_cont_b3550:
# B3550
	beq	x14, zero, iter_trace_diffuse_rays_bneelse_b3551
# B3552
	mv x14, x15
iter_trace_diffuse_rays_cont_b3553:
# B3553
	beq	x14, zero, iter_trace_diffuse_rays_bneelse_b3554
# B3555
	mv x14, x15
iter_trace_diffuse_rays_cont_b3556:
# B3556
	bne	x14, zero, iter_trace_diffuse_rays_beqelse_b3558
# B3557
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
	beq	x15, zero, iter_trace_diffuse_rays_bneelse_b3560
# B3559
	mv x16, zero
	j iter_trace_diffuse_rays_cont_b3561 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b3560:
# B3560
	mv x16, x14
iter_trace_diffuse_rays_cont_b3561:
# B3561
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
iter_trace_diffuse_rays_beqelse_b3558:
# B3558
	j iter_trace_diffuse_rays_cont_b3562 # adhoc jump(2)
iter_trace_diffuse_rays_bneelse_b3462:
# B3462
	j	iter_trace_diffuse_rays_loop_b3319
iter_trace_diffuse_rays_bneelse_b3205:
# B3205
iter_trace_diffuse_rays_cont_b3562:
# B3562
	addi x12, x12, -2
	j	iter_trace_diffuse_rays_loop_b2413
iter_trace_diffuse_rays_bleelse_b2415:
# B2415
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
trace_diffuse_rays.3287:
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
body_trace_diffuse_rays.3287:
# B3563
# B3564
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
trace_diffuse_rays_loop_b3565:
# B3565
	la x12, min_caml_objects
	bgt	zero, x14, trace_diffuse_rays_bleelse_b3567
# B3566
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
	bne	x16, x11, trace_diffuse_rays_beqelse_b3569
# B3568
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
	j trace_diffuse_rays_cont_b3578 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3569:
# B3569
	bge	x11, x16, trace_diffuse_rays_bgtelse_b3570
# B3571
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
	bne	x21, zero, trace_diffuse_rays_beqelse_b3573
# B3572
	mv x12, x20
	j trace_diffuse_rays_cont_b3574 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3573:
# B3573
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
trace_diffuse_rays_cont_b3574:
# B3574
	li x17, 3
	bne	x16, x17, trace_diffuse_rays_beqelse_b3576
# B3575
	lui x16, 260096
	fsub x12, x12, x16
	j trace_diffuse_rays_cont_b3577 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3576:
# B3576
trace_diffuse_rays_cont_b3577:
# B3577
	sw x12, 3(x15)
trace_diffuse_rays_bgtelse_b3570:
# B3570
trace_diffuse_rays_cont_b3578:
# B3578
	addi x12, x14, -1
	mv x14, x12
	j	trace_diffuse_rays_loop_b3565
trace_diffuse_rays_bleelse_b3567:
# B3567
# B3579
	li x13, 118
	mv x15, x6
	mv x16, x7
	mv x14, x5
	mv x17, x13
trace_diffuse_rays_loop_b3580:
# B3580
	bgt	zero, x17, trace_diffuse_rays_bleelse_b3582
# B3581
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
	beq	x18, zero, trace_diffuse_rays_bneelse_b3584
# B3583
	add x4, x14, x17
	lw x18, 0(x4)
	lui x83, 274784
	fdiv x13, x13, x83
	sw x20, 0(x19)
	lw x20, 0(x21)
	mv x85, x18
	mv x83, zero
	mv x84, x20
trace_diffuse_rays_loop_b3585:
# B3585
	add x4, x84, x83
	lw x20, 0(x4)
	lw x86, 0(x20)
	li x87, -1
	li x88, 3
	lui x89, 260096
	beq	x86, x87, trace_diffuse_rays_bneelse_b3586
# B3587
	li x9, 99
	la x90, min_caml_solver_dist
	li x91, 3
	bne	x86, x9, trace_diffuse_rays_beqelse_b3589
# B3588
	mv x94, x85
	mv x92, x100
	mv x93, x20
trace_diffuse_rays_loop_b3590:
# B3590
	add x4, x93, x92
	lw x20, 0(x4)
	beq	x20, x87, trace_diffuse_rays_bneelse_b3591
# B3592
	la x86, min_caml_and_net
	add x4, x86, x20
	lw x20, 0(x4)
	mv x89, x94
	mv x88, x20
	mv x86, zero
trace_diffuse_rays_loop_b3593:
# B3593
	lw x20, 0(x89)
	add x4, x88, x86
	lw x9, 0(x4)
	beq	x9, x87, trace_diffuse_rays_bneelse_b3594
# B3595
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
	bne	x102, x100, trace_diffuse_rays_beqelse_b3597
# B3596
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
	beq	x103, zero, trace_diffuse_rays_bneelse_b3599
# B3598
	mv x103, zero
	j trace_diffuse_rays_cont_b3602 # adhoc jump(2)
trace_diffuse_rays_bneelse_b3599:
# B3599
	lw x103, 2(x96)
	fmul x103, x102, x103
	fadd x103, x103, x99
	fabs x103, x103
	lw x104, 4(x95)
	lw x104, 2(x104)
	fle x103, x104, x103
	beq	x103, zero, trace_diffuse_rays_bneelse_b3601
# B3600
	mv x103, zero
	j trace_diffuse_rays_cont_b3602 # adhoc jump(2)
trace_diffuse_rays_bneelse_b3601:
# B3601
	lw x103, 1(x101)
	feq x103, x103, zero
	xori x103, x103, 1
trace_diffuse_rays_cont_b3602:
# B3602
	bne	x103, zero, trace_diffuse_rays_beqelse_b3604
# B3603
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
	beq	x103, zero, trace_diffuse_rays_bneelse_b3606
# B3605
	mv x103, zero
	j trace_diffuse_rays_cont_b3609 # adhoc jump(2)
trace_diffuse_rays_bneelse_b3606:
# B3606
	lw x103, 2(x96)
	fmul x103, x102, x103
	fadd x103, x103, x99
	fabs x103, x103
	lw x104, 4(x95)
	lw x104, 2(x104)
	fle x103, x104, x103
	beq	x103, zero, trace_diffuse_rays_bneelse_b3608
# B3607
	mv x103, zero
	j trace_diffuse_rays_cont_b3609 # adhoc jump(2)
trace_diffuse_rays_bneelse_b3608:
# B3608
	lw x103, 3(x101)
	feq x103, x103, zero
	xori x103, x103, 1
trace_diffuse_rays_cont_b3609:
# B3609
	bne	x103, zero, trace_diffuse_rays_beqelse_b3611
# B3610
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
	beq	x97, zero, trace_diffuse_rays_bneelse_b3613
# B3612
	mv x95, zero
	j trace_diffuse_rays_cont_b3616 # adhoc jump(2)
trace_diffuse_rays_bneelse_b3613:
# B3613
	lw x96, 1(x96)
	fmul x96, x99, x96
	fadd x96, x96, x98
	fabs x96, x96
	lw x95, 4(x95)
	lw x95, 1(x95)
	fle x95, x95, x96
	beq	x95, zero, trace_diffuse_rays_bneelse_b3615
# B3614
	mv x95, zero
	j trace_diffuse_rays_cont_b3616 # adhoc jump(2)
trace_diffuse_rays_bneelse_b3615:
# B3615
	lw x95, 5(x101)
	feq x95, x95, zero
	xori x95, x95, 1
trace_diffuse_rays_cont_b3616:
# B3616
	bne	x95, zero, trace_diffuse_rays_beqelse_b3618
# B3617
	mv x95, zero
	j trace_diffuse_rays_cont_b3630 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3618:
# B3618
	la x95, min_caml_solver_dist
	sw x99, 0(x95)
	li x95, 3
	j trace_diffuse_rays_cont_b3630 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3611:
# B3611
	la x95, min_caml_solver_dist
	sw x102, 0(x95)
	li x95, 2
	j trace_diffuse_rays_cont_b3630 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3604:
# B3604
	la x95, min_caml_solver_dist
	sw x102, 0(x95)
	li x95, 1
	j trace_diffuse_rays_cont_b3630 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3597:
# B3597
	bne	x102, x11, trace_diffuse_rays_beqelse_b3620
# B3619
	lw x95, 0(x101)
	fle x95, zero, x95
	beq	x95, zero, trace_diffuse_rays_bneelse_b3622
# B3621
	mv x95, zero
	j trace_diffuse_rays_cont_b3630 # adhoc jump(2)
trace_diffuse_rays_bneelse_b3622:
# B3622
	la x95, min_caml_solver_dist
	lw x97, 0(x101)
	lw x96, 3(x96)
	fmul x96, x97, x96
	sw x96, 0(x95)
	li x95, 1
	j trace_diffuse_rays_cont_b3630 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3620:
# B3620
	lw x102, 0(x101)
	feq x103, x102, zero
	bne	x103, zero, trace_diffuse_rays_beqelse_b3624
# B3623
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
	beq	x98, zero, trace_diffuse_rays_bneelse_b3626
# B3625
	mv x95, zero
	j trace_diffuse_rays_cont_b3630 # adhoc jump(2)
trace_diffuse_rays_bneelse_b3626:
# B3626
	lw x95, 6(x95)
	bne	x95, zero, trace_diffuse_rays_beqelse_b3628
# B3627
	la x95, min_caml_solver_dist
	fsqrt x96, x96
	fsub x96, x97, x96
	lw x97, 4(x101)
	fmul x96, x96, x97
	sw x96, 0(x95)
	j trace_diffuse_rays_cont_b3629 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3628:
# B3628
	la x95, min_caml_solver_dist
	fsqrt x96, x96
	fadd x96, x97, x96
	lw x97, 4(x101)
	fmul x96, x96, x97
	sw x96, 0(x95)
trace_diffuse_rays_cont_b3629:
# B3629
	li x95, 1
	j trace_diffuse_rays_cont_b3630 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3624:
# B3624
	mv x95, zero
trace_diffuse_rays_cont_b3630:
# B3630
	addi x86, x86, 1
	bne	x95, zero, trace_diffuse_rays_beqelse_b3632
# B3631
	add x4, x22, x9
	lw x20, 0(x4)
	lw x20, 6(x20)
	bne	x20, zero, trace_diffuse_rays_beqelse_b3634
# B3633
	j trace_diffuse_rays_cont_b3672 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3634:
# B3634
	j	trace_diffuse_rays_loop_b3593
trace_diffuse_rays_beqelse_b3632:
# B3632
	lw x96, 0(x90)
	fle x97, x96, zero
	bne	x97, zero, trace_diffuse_rays_beqelse_b3635
# B3636
	lw x97, 0(x19)
	fle x97, x97, x96
	bne	x97, zero, trace_diffuse_rays_beqelse_b3637
# B3638
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
	j	trace_diffuse_rays_loop_b3639
trace_diffuse_rays_bneelse_b3666:	#moved
# B3666
	addi x99, x99, 1
trace_diffuse_rays_loop_b3639:
# B3639
	add x4, x101, x99
	lw x105, 0(x4)
	bne	x105, x87, trace_diffuse_rays_beqelse_b3641
# B3640
	li x99, 1
	j trace_diffuse_rays_cont_b3668 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3641:
# B3641
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
	bne	x109, x100, trace_diffuse_rays_beqelse_b3643
# B3642
	fabs x106, x106
	lw x109, 4(x105)
	lw x109, 0(x109)
	fle x106, x109, x106
	beq	x106, zero, trace_diffuse_rays_bneelse_b3645
# B3644
	mv x106, zero
	j trace_diffuse_rays_cont_b3648 # adhoc jump(2)
trace_diffuse_rays_bneelse_b3645:
# B3645
	fabs x106, x107
	lw x107, 4(x105)
	lw x107, 1(x107)
	fle x106, x107, x106
	beq	x106, zero, trace_diffuse_rays_bneelse_b3647
# B3646
	mv x106, zero
	j trace_diffuse_rays_cont_b3648 # adhoc jump(2)
trace_diffuse_rays_bneelse_b3647:
# B3647
	fabs x106, x108
	lw x107, 4(x105)
	lw x107, 2(x107)
	fle x106, x107, x106
	xori x106, x106, 1
trace_diffuse_rays_cont_b3648:
# B3648
	bne	x106, zero, trace_diffuse_rays_beqelse_b3650
# B3649
	lw x105, 6(x105)
	xori x105, x105, 1
	j trace_diffuse_rays_cont_b3665 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3650:
# B3650
	lw x105, 6(x105)
	j trace_diffuse_rays_cont_b3665 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3643:
# B3643
	bne	x109, x11, trace_diffuse_rays_beqelse_b3652
# B3651
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
	bne	x105, zero, trace_diffuse_rays_beqelse_b3654
# B3653
	mv x105, x106
	j trace_diffuse_rays_cont_b3655 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3654:
# B3654
	xori x105, x106, 1
trace_diffuse_rays_cont_b3655:
# B3655
	xori x105, x105, 1
	j trace_diffuse_rays_cont_b3665 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3652:
# B3652
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
	bne	x110, zero, trace_diffuse_rays_beqelse_b3657
# B3656
	mv x106, x109
	j trace_diffuse_rays_cont_b3658 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3657:
# B3657
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
trace_diffuse_rays_cont_b3658:
# B3658
	lw x107, 1(x105)
	bne	x107, x91, trace_diffuse_rays_beqelse_b3660
# B3659
	lui x107, 260096
	fsub x106, x106, x107
	j trace_diffuse_rays_cont_b3661 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3660:
# B3660
trace_diffuse_rays_cont_b3661:
# B3661
	lw x105, 6(x105)
	fle x106, zero, x106
	xori x106, x106, 1
	bne	x105, zero, trace_diffuse_rays_beqelse_b3663
# B3662
	mv x105, x106
	j trace_diffuse_rays_cont_b3664 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3663:
# B3663
	xori x105, x106, 1
trace_diffuse_rays_cont_b3664:
# B3664
	xori x105, x105, 1
trace_diffuse_rays_cont_b3665:
# B3665
	beq	x105, zero, trace_diffuse_rays_bneelse_b3666
# B3667
	mv x99, zero
trace_diffuse_rays_cont_b3668:
# B3668
	beq	x99, zero, trace_diffuse_rays_bneelse_b3669
# B3670
	sw x96, 0(x19)
	sw x97, 0(x23)
	sw x98, 1(x23)
	sw x20, 2(x23)
	sw x9, 0(x24)
	sw x95, 0(x25)
trace_diffuse_rays_bneelse_b3669:
# B3669
trace_diffuse_rays_beqelse_b3637:
# B3637
trace_diffuse_rays_beqelse_b3635:
# B3635
trace_diffuse_rays_cont_b3671:
# B3671
	j	trace_diffuse_rays_loop_b3593
trace_diffuse_rays_bneelse_b3594:
# B3594
trace_diffuse_rays_cont_b3672:
# B3672
	addi x20, x92, 1
	mv x92, x20
	j	trace_diffuse_rays_loop_b3590
trace_diffuse_rays_bneelse_b3591:
# B3591
	j trace_diffuse_rays_cont_b3795 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3589:
# B3589
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
	bne	x96, x100, trace_diffuse_rays_beqelse_b3674
# B3673
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
	beq	x97, zero, trace_diffuse_rays_bneelse_b3676
# B3675
	mv x97, zero
	j trace_diffuse_rays_cont_b3679 # adhoc jump(2)
trace_diffuse_rays_bneelse_b3676:
# B3676
	lw x97, 2(x92)
	fmul x97, x96, x97
	fadd x97, x97, x95
	fabs x97, x97
	lw x98, 4(x9)
	lw x98, 2(x98)
	fle x97, x98, x97
	beq	x97, zero, trace_diffuse_rays_bneelse_b3678
# B3677
	mv x97, zero
	j trace_diffuse_rays_cont_b3679 # adhoc jump(2)
trace_diffuse_rays_bneelse_b3678:
# B3678
	lw x97, 1(x86)
	feq x97, x97, zero
	xori x97, x97, 1
trace_diffuse_rays_cont_b3679:
# B3679
	bne	x97, zero, trace_diffuse_rays_beqelse_b3681
# B3680
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
	beq	x97, zero, trace_diffuse_rays_bneelse_b3683
# B3682
	mv x97, zero
	j trace_diffuse_rays_cont_b3686 # adhoc jump(2)
trace_diffuse_rays_bneelse_b3683:
# B3683
	lw x97, 2(x92)
	fmul x97, x96, x97
	fadd x97, x97, x95
	fabs x97, x97
	lw x98, 4(x9)
	lw x98, 2(x98)
	fle x97, x98, x97
	beq	x97, zero, trace_diffuse_rays_bneelse_b3685
# B3684
	mv x97, zero
	j trace_diffuse_rays_cont_b3686 # adhoc jump(2)
trace_diffuse_rays_bneelse_b3685:
# B3685
	lw x97, 3(x86)
	feq x97, x97, zero
	xori x97, x97, 1
trace_diffuse_rays_cont_b3686:
# B3686
	bne	x97, zero, trace_diffuse_rays_beqelse_b3688
# B3687
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
	beq	x93, zero, trace_diffuse_rays_bneelse_b3690
# B3689
	mv x86, zero
	j trace_diffuse_rays_cont_b3693 # adhoc jump(2)
trace_diffuse_rays_bneelse_b3690:
# B3690
	lw x92, 1(x92)
	fmul x92, x95, x92
	fadd x92, x92, x94
	fabs x92, x92
	lw x9, 4(x9)
	lw x9, 1(x9)
	fle x9, x9, x92
	beq	x9, zero, trace_diffuse_rays_bneelse_b3692
# B3691
	mv x86, zero
	j trace_diffuse_rays_cont_b3693 # adhoc jump(2)
trace_diffuse_rays_bneelse_b3692:
# B3692
	lw x86, 5(x86)
	feq x86, x86, zero
	xori x86, x86, 1
trace_diffuse_rays_cont_b3693:
# B3693
	bne	x86, zero, trace_diffuse_rays_beqelse_b3695
# B3694
	mv x91, zero
	j trace_diffuse_rays_cont_b3707 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3695:
# B3695
	sw x95, 0(x90)
	j trace_diffuse_rays_cont_b3707 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3688:
# B3688
	sw x96, 0(x90)
	mv x91, x11
	j trace_diffuse_rays_cont_b3707 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3681:
# B3681
	sw x96, 0(x90)
	mv x91, x100
	j trace_diffuse_rays_cont_b3707 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3674:
# B3674
	bne	x96, x11, trace_diffuse_rays_beqelse_b3697
# B3696
	lw x9, 0(x86)
	fle x9, zero, x9
	beq	x9, zero, trace_diffuse_rays_bneelse_b3699
# B3698
	mv x91, zero
	j trace_diffuse_rays_cont_b3707 # adhoc jump(2)
trace_diffuse_rays_bneelse_b3699:
# B3699
	lw x86, 0(x86)
	lw x9, 3(x92)
	fmul x86, x86, x9
	sw x86, 0(x90)
	mv x91, x100
	j trace_diffuse_rays_cont_b3707 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3697:
# B3697
	lw x91, 0(x86)
	feq x96, x91, zero
	bne	x96, zero, trace_diffuse_rays_beqelse_b3701
# B3700
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
	beq	x92, zero, trace_diffuse_rays_bneelse_b3703
# B3702
	mv x91, zero
	j trace_diffuse_rays_cont_b3707 # adhoc jump(2)
trace_diffuse_rays_bneelse_b3703:
# B3703
	lw x9, 6(x9)
	fsqrt x91, x91
	bne	x9, zero, trace_diffuse_rays_beqelse_b3705
# B3704
	fsub x9, x93, x91
	lw x86, 4(x86)
	fmul x86, x9, x86
	sw x86, 0(x90)
	j trace_diffuse_rays_cont_b3706 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3705:
# B3705
	fadd x9, x93, x91
	lw x86, 4(x86)
	fmul x86, x9, x86
	sw x86, 0(x90)
trace_diffuse_rays_cont_b3706:
# B3706
	mv x91, x100
	j trace_diffuse_rays_cont_b3707 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3701:
# B3701
	mv x91, zero
trace_diffuse_rays_cont_b3707:
# B3707
	beq	x91, zero, trace_diffuse_rays_bneelse_b3708
# B3709
	lw x86, 0(x90)
	lw x9, 0(x19)
	fle x86, x9, x86
	bne	x86, zero, trace_diffuse_rays_beqelse_b3710
# B3711
	mv x92, x85
	mv x9, x100
	mv x91, x20
trace_diffuse_rays_loop_b3712:
# B3712
	add x4, x91, x9
	lw x20, 0(x4)
	beq	x20, x87, trace_diffuse_rays_bneelse_b3713
# B3714
	la x86, min_caml_and_net
	add x4, x86, x20
	lw x20, 0(x4)
	mv x94, x92
	mv x93, x20
	mv x86, zero
trace_diffuse_rays_loop_b3715:
# B3715
	lw x20, 0(x94)
	add x4, x93, x86
	lw x95, 0(x4)
	beq	x95, x87, trace_diffuse_rays_bneelse_b3716
# B3717
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
	bne	x103, x100, trace_diffuse_rays_beqelse_b3719
# B3718
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
	beq	x104, zero, trace_diffuse_rays_bneelse_b3721
# B3720
	mv x104, zero
	j trace_diffuse_rays_cont_b3724 # adhoc jump(2)
trace_diffuse_rays_bneelse_b3721:
# B3721
	lw x104, 2(x97)
	fmul x104, x103, x104
	fadd x104, x104, x101
	fabs x104, x104
	lw x105, 4(x96)
	lw x105, 2(x105)
	fle x104, x105, x104
	beq	x104, zero, trace_diffuse_rays_bneelse_b3723
# B3722
	mv x104, zero
	j trace_diffuse_rays_cont_b3724 # adhoc jump(2)
trace_diffuse_rays_bneelse_b3723:
# B3723
	lw x104, 1(x102)
	feq x104, x104, zero
	xori x104, x104, 1
trace_diffuse_rays_cont_b3724:
# B3724
	bne	x104, zero, trace_diffuse_rays_beqelse_b3726
# B3725
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
	beq	x104, zero, trace_diffuse_rays_bneelse_b3728
# B3727
	mv x104, zero
	j trace_diffuse_rays_cont_b3731 # adhoc jump(2)
trace_diffuse_rays_bneelse_b3728:
# B3728
	lw x104, 2(x97)
	fmul x104, x103, x104
	fadd x104, x104, x101
	fabs x104, x104
	lw x105, 4(x96)
	lw x105, 2(x105)
	fle x104, x105, x104
	beq	x104, zero, trace_diffuse_rays_bneelse_b3730
# B3729
	mv x104, zero
	j trace_diffuse_rays_cont_b3731 # adhoc jump(2)
trace_diffuse_rays_bneelse_b3730:
# B3730
	lw x104, 3(x102)
	feq x104, x104, zero
	xori x104, x104, 1
trace_diffuse_rays_cont_b3731:
# B3731
	bne	x104, zero, trace_diffuse_rays_beqelse_b3733
# B3732
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
	beq	x98, zero, trace_diffuse_rays_bneelse_b3735
# B3734
	mv x96, zero
	j trace_diffuse_rays_cont_b3738 # adhoc jump(2)
trace_diffuse_rays_bneelse_b3735:
# B3735
	lw x97, 1(x97)
	fmul x97, x101, x97
	fadd x97, x97, x99
	fabs x97, x97
	lw x96, 4(x96)
	lw x96, 1(x96)
	fle x96, x96, x97
	beq	x96, zero, trace_diffuse_rays_bneelse_b3737
# B3736
	mv x96, zero
	j trace_diffuse_rays_cont_b3738 # adhoc jump(2)
trace_diffuse_rays_bneelse_b3737:
# B3737
	lw x96, 5(x102)
	feq x96, x96, zero
	xori x96, x96, 1
trace_diffuse_rays_cont_b3738:
# B3738
	bne	x96, zero, trace_diffuse_rays_beqelse_b3740
# B3739
	mv x96, zero
	j trace_diffuse_rays_cont_b3752 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3740:
# B3740
	sw x101, 0(x90)
	li x96, 3
	j trace_diffuse_rays_cont_b3752 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3733:
# B3733
	sw x103, 0(x90)
	li x96, 2
	j trace_diffuse_rays_cont_b3752 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3726:
# B3726
	sw x103, 0(x90)
	li x96, 1
	j trace_diffuse_rays_cont_b3752 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3719:
# B3719
	bne	x103, x11, trace_diffuse_rays_beqelse_b3742
# B3741
	lw x96, 0(x102)
	fle x96, zero, x96
	beq	x96, zero, trace_diffuse_rays_bneelse_b3744
# B3743
	mv x96, zero
	j trace_diffuse_rays_cont_b3752 # adhoc jump(2)
trace_diffuse_rays_bneelse_b3744:
# B3744
	lw x96, 0(x102)
	lw x97, 3(x97)
	fmul x96, x96, x97
	sw x96, 0(x90)
	li x96, 1
	j trace_diffuse_rays_cont_b3752 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3742:
# B3742
	lw x103, 0(x102)
	feq x104, x103, zero
	bne	x104, zero, trace_diffuse_rays_beqelse_b3746
# B3745
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
	beq	x99, zero, trace_diffuse_rays_bneelse_b3748
# B3747
	mv x96, zero
	j trace_diffuse_rays_cont_b3752 # adhoc jump(2)
trace_diffuse_rays_bneelse_b3748:
# B3748
	lw x96, 6(x96)
	bne	x96, zero, trace_diffuse_rays_beqelse_b3750
# B3749
	fsqrt x96, x97
	fsub x96, x98, x96
	lw x97, 4(x102)
	fmul x96, x96, x97
	sw x96, 0(x90)
	j trace_diffuse_rays_cont_b3751 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3750:
# B3750
	fsqrt x96, x97
	fadd x96, x98, x96
	lw x97, 4(x102)
	fmul x96, x96, x97
	sw x96, 0(x90)
trace_diffuse_rays_cont_b3751:
# B3751
	li x96, 1
	j trace_diffuse_rays_cont_b3752 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3746:
# B3746
	mv x96, zero
trace_diffuse_rays_cont_b3752:
# B3752
	addi x86, x86, 1
	bne	x96, zero, trace_diffuse_rays_beqelse_b3754
# B3753
	add x4, x12, x95
	lw x20, 0(x4)
	lw x20, 6(x20)
	bne	x20, zero, trace_diffuse_rays_beqelse_b3756
# B3755
	j trace_diffuse_rays_cont_b3794 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3756:
# B3756
	j	trace_diffuse_rays_loop_b3715
trace_diffuse_rays_beqelse_b3754:
# B3754
	lw x97, 0(x90)
	fle x98, x97, zero
	bne	x98, zero, trace_diffuse_rays_beqelse_b3757
# B3758
	lw x98, 0(x19)
	fle x98, x98, x97
	bne	x98, zero, trace_diffuse_rays_beqelse_b3759
# B3760
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
	j	trace_diffuse_rays_loop_b3761
trace_diffuse_rays_bneelse_b3788:	#moved
# B3788
	addi x101, x101, 1
trace_diffuse_rays_loop_b3761:
# B3761
	add x4, x102, x101
	lw x106, 0(x4)
	bne	x106, x87, trace_diffuse_rays_beqelse_b3763
# B3762
	li x101, 1
	j trace_diffuse_rays_cont_b3790 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3763:
# B3763
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
	bne	x110, x100, trace_diffuse_rays_beqelse_b3765
# B3764
	fabs x107, x107
	lw x110, 4(x106)
	lw x110, 0(x110)
	fle x107, x110, x107
	beq	x107, zero, trace_diffuse_rays_bneelse_b3767
# B3766
	mv x107, zero
	j trace_diffuse_rays_cont_b3770 # adhoc jump(2)
trace_diffuse_rays_bneelse_b3767:
# B3767
	fabs x107, x108
	lw x108, 4(x106)
	lw x108, 1(x108)
	fle x107, x108, x107
	beq	x107, zero, trace_diffuse_rays_bneelse_b3769
# B3768
	mv x107, zero
	j trace_diffuse_rays_cont_b3770 # adhoc jump(2)
trace_diffuse_rays_bneelse_b3769:
# B3769
	fabs x107, x109
	lw x108, 4(x106)
	lw x108, 2(x108)
	fle x107, x108, x107
	xori x107, x107, 1
trace_diffuse_rays_cont_b3770:
# B3770
	bne	x107, zero, trace_diffuse_rays_beqelse_b3772
# B3771
	lw x106, 6(x106)
	xori x106, x106, 1
	j trace_diffuse_rays_cont_b3787 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3772:
# B3772
	lw x106, 6(x106)
	j trace_diffuse_rays_cont_b3787 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3765:
# B3765
	bne	x110, x11, trace_diffuse_rays_beqelse_b3774
# B3773
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
	bne	x106, zero, trace_diffuse_rays_beqelse_b3776
# B3775
	mv x106, x107
	j trace_diffuse_rays_cont_b3777 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3776:
# B3776
	xori x106, x107, 1
trace_diffuse_rays_cont_b3777:
# B3777
	xori x106, x106, 1
	j trace_diffuse_rays_cont_b3787 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3774:
# B3774
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
	bne	x111, zero, trace_diffuse_rays_beqelse_b3779
# B3778
	mv x107, x110
	j trace_diffuse_rays_cont_b3780 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3779:
# B3779
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
trace_diffuse_rays_cont_b3780:
# B3780
	lw x108, 1(x106)
	bne	x108, x88, trace_diffuse_rays_beqelse_b3782
# B3781
	fsub x107, x107, x89
	j trace_diffuse_rays_cont_b3783 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3782:
# B3782
trace_diffuse_rays_cont_b3783:
# B3783
	lw x106, 6(x106)
	fle x107, zero, x107
	xori x107, x107, 1
	bne	x106, zero, trace_diffuse_rays_beqelse_b3785
# B3784
	mv x106, x107
	j trace_diffuse_rays_cont_b3786 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3785:
# B3785
	xori x106, x107, 1
trace_diffuse_rays_cont_b3786:
# B3786
	xori x106, x106, 1
trace_diffuse_rays_cont_b3787:
# B3787
	beq	x106, zero, trace_diffuse_rays_bneelse_b3788
# B3789
	mv x101, zero
trace_diffuse_rays_cont_b3790:
# B3790
	beq	x101, zero, trace_diffuse_rays_bneelse_b3791
# B3792
	sw x97, 0(x19)
	sw x98, 0(x23)
	sw x99, 1(x23)
	sw x20, 2(x23)
	sw x95, 0(x24)
	sw x96, 0(x25)
trace_diffuse_rays_bneelse_b3791:
# B3791
trace_diffuse_rays_beqelse_b3759:
# B3759
trace_diffuse_rays_beqelse_b3757:
# B3757
trace_diffuse_rays_cont_b3793:
# B3793
	j	trace_diffuse_rays_loop_b3715
trace_diffuse_rays_bneelse_b3716:
# B3716
trace_diffuse_rays_cont_b3794:
# B3794
	addi x20, x9, 1
	mv x9, x20
	j	trace_diffuse_rays_loop_b3712
trace_diffuse_rays_bneelse_b3713:
# B3713
trace_diffuse_rays_beqelse_b3710:
# B3710
trace_diffuse_rays_bneelse_b3708:
# B3708
trace_diffuse_rays_cont_b3795:
# B3795
	addi x20, x83, 1
	mv x83, x20
	j	trace_diffuse_rays_loop_b3585
trace_diffuse_rays_bneelse_b3586:
# B3586
# B3796
	lw x19, 0(x19)
	fle x20, x19, x26
	beq	x20, zero, trace_diffuse_rays_bneelse_b3798
# B3797
	mv x19, zero
	j trace_diffuse_rays_cont_b3799 # adhoc jump(2)
trace_diffuse_rays_bneelse_b3798:
# B3798
	fle x19, x27, x19
	xori x19, x19, 1
trace_diffuse_rays_cont_b3799:
# B3799
	beq	x19, zero, trace_diffuse_rays_bneelse_b3800
# B3801
	lw x19, 0(x24)
	add x4, x22, x19
	lw x19, 0(x4)
	lw x18, 0(x18)
	lw x20, 1(x19)
	bne	x20, x100, trace_diffuse_rays_beqelse_b3803
# B3802
	lw x20, 0(x25)
	sw zero, 0(x28)
	sw zero, 1(x28)
	sw zero, 2(x28)
	addi x20, x20, -1
	add x4, x18, x20
	lw x18, 0(x4)
	feq x24, x18, zero
	bne	x24, zero, trace_diffuse_rays_beqelse_b3805
# B3804
	fle x18, x18, zero
	beq	x18, zero, trace_diffuse_rays_bneelse_b3807
# B3806
	lui x18, 784384
	j trace_diffuse_rays_cont_b3808 # adhoc jump(2)
trace_diffuse_rays_bneelse_b3807:
# B3807
	mv x18, x89
	j trace_diffuse_rays_cont_b3808 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3805:
# B3805
	mv x18, zero
trace_diffuse_rays_cont_b3808:
# B3808
	fsub x18, zero, x18
	add x4, x28, x20
	sw x18, 0(x4)
	j trace_diffuse_rays_cont_b3819 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3803:
# B3803
	bne	x20, x11, trace_diffuse_rays_beqelse_b3810
# B3809
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
	j trace_diffuse_rays_cont_b3819 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3810:
# B3810
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
	bne	x84, zero, trace_diffuse_rays_beqelse_b3812
# B3811
	sw x25, 0(x28)
	sw x27, 1(x28)
	sw x83, 2(x28)
	j trace_diffuse_rays_cont_b3813 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3812:
# B3812
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
trace_diffuse_rays_cont_b3813:
# B3813
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
	bne	x24, zero, trace_diffuse_rays_beqelse_b3815
# B3814
	bne	x18, zero, trace_diffuse_rays_beqelse_b3817
# B3816
	fdiv x18, x89, x20
	j trace_diffuse_rays_cont_b3818 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3817:
# B3817
	fdiv x18, x30, x20
	j trace_diffuse_rays_cont_b3818 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3815:
# B3815
	mv x18, x89
trace_diffuse_rays_cont_b3818:
# B3818
	lw x20, 0(x28)
	fmul x20, x20, x18
	sw x20, 0(x28)
	lw x20, 1(x28)
	fmul x20, x20, x18
	sw x20, 1(x28)
	lw x20, 2(x28)
	fmul x18, x20, x18
	sw x18, 2(x28)
trace_diffuse_rays_cont_b3819:
# B3819
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
	bne	x18, x100, trace_diffuse_rays_beqelse_b3821
# B3820
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
	bne	x18, zero, trace_diffuse_rays_beqelse_b3823
# B3822
	bne	x20, zero, trace_diffuse_rays_beqelse_b3825
# B3824
	lui x18, 276464
	j trace_diffuse_rays_cont_b3828 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3825:
# B3825
	mv x18, zero
	j trace_diffuse_rays_cont_b3828 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3823:
# B3823
	bne	x20, zero, trace_diffuse_rays_beqelse_b3827
# B3826
	mv x18, zero
	j trace_diffuse_rays_cont_b3828 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3827:
# B3827
	lui x18, 276464
trace_diffuse_rays_cont_b3828:
# B3828
	sw x18, 1(x31)
	j trace_diffuse_rays_cont_b3913 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3821:
# B3821
	bne	x18, x11, trace_diffuse_rays_beqelse_b3830
# B3829
	lw x18, 1(x23)
	fmul x18, x18, x35
	fle x20, x18, zero
	xori x20, x20, 1
	fabs x18, x18
	mv x25, x36
	mv x24, x18
	j	trace_diffuse_rays_loop_b3831
trace_diffuse_rays_bneelse_b3832:	#moved
# B3832
	fmul x25, x25, x37
trace_diffuse_rays_loop_b3831:
# B3831
	fle x27, x24, x25
	beq	x27, zero, trace_diffuse_rays_bneelse_b3832
# B3833
# B3834
	mv x30, x25
	mv x29, x18
	j	trace_diffuse_rays_loop_b3835
trace_diffuse_rays_beqelse_b3839:	#moved
# B3839
	fdiv x18, x30, x37
	mv x30, x18
trace_diffuse_rays_loop_b3835:
# B3835
	fle x18, x36, x29
	beq	x18, zero, trace_diffuse_rays_bneelse_b3836
# B3837
	fle x18, x29, x30
	bne	x18, zero, trace_diffuse_rays_beqelse_b3839
# B3838
	fsub x18, x29, x30
	fdiv x24, x30, x37
	mv x30, x24
	mv x29, x18
	j	trace_diffuse_rays_loop_b3835
trace_diffuse_rays_bneelse_b3836:
# B3836
# B3840
	fle x18, x38, x29
	bne	x18, zero, trace_diffuse_rays_beqelse_b3842
# B3841
	mv x24, x29
	j trace_diffuse_rays_cont_b3843 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3842:
# B3842
	fsub x24, x29, x38
trace_diffuse_rays_cont_b3843:
# B3843
	bne	x18, zero, trace_diffuse_rays_beqelse_b3845
# B3844
	mv x18, x20
	j trace_diffuse_rays_cont_b3846 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3845:
# B3845
	xori x18, x20, 1
trace_diffuse_rays_cont_b3846:
# B3846
	fle x20, x39, x24
	bne	x20, zero, trace_diffuse_rays_beqelse_b3848
# B3847
	mv x20, x24
	j trace_diffuse_rays_cont_b3849 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3848:
# B3848
	fsub x20, x38, x24
trace_diffuse_rays_cont_b3849:
# B3849
	fle x24, x40, x20
	bne	x24, zero, trace_diffuse_rays_beqelse_b3851
# B3850
	fmul x24, x20, x20
	fmul x25, x24, x65
	fadd x25, x6, x25
	fmul x25, x24, x25
	fadd x25, x5, x25
	fmul x24, x24, x25
	fadd x24, x89, x24
	fmul x20, x20, x24
	j trace_diffuse_rays_cont_b3852 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3851:
# B3851
	fsub x20, x39, x20
	fmul x20, x20, x20
	fmul x24, x20, x68
	fadd x24, x67, x24
	fmul x24, x20, x24
	fadd x24, x66, x24
	fmul x20, x20, x24
	fadd x20, x89, x20
trace_diffuse_rays_cont_b3852:
# B3852
	fle x24, x20, zero
	beq	x18, x24, trace_diffuse_rays_bneelse_b3854
# B3853
	mv x18, x20
	j trace_diffuse_rays_cont_b3855 # adhoc jump(2)
trace_diffuse_rays_bneelse_b3854:
# B3854
	fsub x18, zero, x20
trace_diffuse_rays_cont_b3855:
# B3855
	fmul x18, x18, x18
	fmul x20, x69, x18
	sw x20, 0(x31)
	fsub x18, x89, x18
	fmul x18, x69, x18
	sw x18, 1(x31)
	j trace_diffuse_rays_cont_b3913 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3830:
# B3830
	bne	x18, x88, trace_diffuse_rays_beqelse_b3857
# B3856
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
	j	trace_diffuse_rays_loop_b3858
trace_diffuse_rays_bneelse_b3859:	#moved
# B3859
	fmul x24, x24, x37
trace_diffuse_rays_loop_b3858:
# B3858
	fle x25, x20, x24
	beq	x25, zero, trace_diffuse_rays_bneelse_b3859
# B3860
# B3861
	mv x27, x18
	mv x29, x24
	j	trace_diffuse_rays_loop_b3862
trace_diffuse_rays_beqelse_b3866:	#moved
# B3866
	fdiv x18, x29, x37
	mv x29, x18
trace_diffuse_rays_loop_b3862:
# B3862
	fle x18, x36, x27
	beq	x18, zero, trace_diffuse_rays_bneelse_b3863
# B3864
	fle x18, x27, x29
	bne	x18, zero, trace_diffuse_rays_beqelse_b3866
# B3865
	fsub x18, x27, x29
	fdiv x20, x29, x37
	mv x27, x18
	mv x29, x20
	j	trace_diffuse_rays_loop_b3862
trace_diffuse_rays_bneelse_b3863:
# B3863
# B3867
	fle x18, x38, x27
	bne	x18, zero, trace_diffuse_rays_beqelse_b3869
# B3868
	mv x20, x27
	j trace_diffuse_rays_cont_b3870 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3869:
# B3869
	fsub x20, x27, x38
trace_diffuse_rays_cont_b3870:
# B3870
	bne	x18, zero, trace_diffuse_rays_beqelse_b3872
# B3871
	mv x24, x100
	j trace_diffuse_rays_cont_b3873 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3872:
# B3872
	mv x24, zero
trace_diffuse_rays_cont_b3873:
# B3873
	fle x18, x39, x20
	bne	x18, zero, trace_diffuse_rays_beqelse_b3875
# B3874
	j trace_diffuse_rays_cont_b3876 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3875:
# B3875
	fsub x20, x38, x20
trace_diffuse_rays_cont_b3876:
# B3876
	bne	x18, zero, trace_diffuse_rays_beqelse_b3878
# B3877
	mv x18, x24
	j trace_diffuse_rays_cont_b3879 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3878:
# B3878
	xori x18, x24, 1
trace_diffuse_rays_cont_b3879:
# B3879
	fle x24, x40, x20
	bne	x24, zero, trace_diffuse_rays_beqelse_b3881
# B3880
	fmul x20, x20, x20
	fmul x24, x20, x68
	fadd x24, x67, x24
	fmul x24, x20, x24
	fadd x24, x66, x24
	fmul x20, x20, x24
	fadd x20, x89, x20
	j trace_diffuse_rays_cont_b3882 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3881:
# B3881
	fsub x20, x39, x20
	fmul x24, x20, x20
	fmul x25, x24, x65
	fadd x25, x6, x25
	fmul x25, x24, x25
	fadd x25, x5, x25
	fmul x24, x24, x25
	fadd x24, x89, x24
	fmul x20, x20, x24
trace_diffuse_rays_cont_b3882:
# B3882
	fle x24, x20, zero
	beq	x18, x24, trace_diffuse_rays_bneelse_b3884
# B3883
	mv x18, x20
	j trace_diffuse_rays_cont_b3885 # adhoc jump(2)
trace_diffuse_rays_bneelse_b3884:
# B3884
	fsub x18, zero, x20
trace_diffuse_rays_cont_b3885:
# B3885
	fmul x18, x18, x18
	fmul x20, x18, x69
	sw x20, 1(x31)
	fsub x18, x89, x18
	fmul x18, x18, x69
	sw x18, 2(x31)
	j trace_diffuse_rays_cont_b3913 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3857:
# B3857
	bne	x18, x70, trace_diffuse_rays_beqelse_b3887
# B3886
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
	beq	x25, zero, trace_diffuse_rays_bneelse_b3889
# B3888
	fdiv x18, x20, x18
	fabs x18, x18
	fle x20, x18, zero
	xori x20, x20, 1
	fabs x25, x18
	fle x27, x72, x25
	bne	x27, zero, trace_diffuse_rays_beqelse_b3891
# B3890
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
	j trace_diffuse_rays_cont_b3897 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3891:
# B3891
	fle x18, x79, x25
	bne	x18, zero, trace_diffuse_rays_beqelse_b3893
# B3892
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
	j trace_diffuse_rays_cont_b3894 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3893:
# B3893
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
trace_diffuse_rays_cont_b3894:
# B3894
	bne	x20, zero, trace_diffuse_rays_beqelse_b3896
# B3895
	fsub x18, zero, x18
	j trace_diffuse_rays_cont_b3897 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3896:
# B3896
trace_diffuse_rays_cont_b3897:
# B3897
	fmul x18, x18, x8
	fdiv x18, x18, x7
	j trace_diffuse_rays_cont_b3898 # adhoc jump(2)
trace_diffuse_rays_bneelse_b3889:
# B3889
	lui x18, 268032
trace_diffuse_rays_cont_b3898:
# B3898
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
	beq	x25, zero, trace_diffuse_rays_bneelse_b3900
# B3899
	fdiv x20, x20, x24
	fabs x20, x20
	fle x24, x20, zero
	xori x24, x24, 1
	fabs x25, x20
	fle x27, x72, x25
	bne	x27, zero, trace_diffuse_rays_beqelse_b3902
# B3901
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
	j trace_diffuse_rays_cont_b3908 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3902:
# B3902
	fle x20, x79, x25
	bne	x20, zero, trace_diffuse_rays_beqelse_b3904
# B3903
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
	j trace_diffuse_rays_cont_b3905 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3904:
# B3904
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
trace_diffuse_rays_cont_b3905:
# B3905
	bne	x24, zero, trace_diffuse_rays_beqelse_b3907
# B3906
	fsub x20, zero, x20
	j trace_diffuse_rays_cont_b3908 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3907:
# B3907
trace_diffuse_rays_cont_b3908:
# B3908
	fmul x20, x20, x8
	fdiv x20, x20, x7
	j trace_diffuse_rays_cont_b3909 # adhoc jump(2)
trace_diffuse_rays_bneelse_b3900:
# B3900
	lui x20, 268032
trace_diffuse_rays_cont_b3909:
# B3909
	floor x24, x20
	fsub x20, x20, x24
	fsub x18, x29, x18
	fmul x18, x18, x18
	fsub x18, x80, x18
	fsub x20, x29, x20
	fmul x20, x20, x20
	fsub x18, x18, x20
	fle x20, zero, x18
	beq	x20, zero, trace_diffuse_rays_bneelse_b3911
# B3910
	mv x24, x18
	j trace_diffuse_rays_cont_b3912 # adhoc jump(2)
trace_diffuse_rays_bneelse_b3911:
# B3911
	mv x24, zero
trace_diffuse_rays_cont_b3912:
# B3912
	fmul x18, x69, x24
	fdiv x18, x18, x81
	sw x18, 2(x31)
trace_diffuse_rays_beqelse_b3887:
# B3887
trace_diffuse_rays_cont_b3913:
# B3913
	lw x18, 0(x21)
	mv x21, x18
	mv x20, zero
	j	trace_diffuse_rays_loop_b3914
trace_diffuse_rays_bneelse_b4149:	#moved
# B4149
trace_diffuse_rays_loop_b3914:
# B3914
	add x4, x21, x20
	lw x18, 0(x4)
	lw x24, 0(x18)
	li x25, -1
	la x27, min_caml_light
	bne	x24, x25, trace_diffuse_rays_beqelse_b3916
# B3915
	mv x18, zero
	j trace_diffuse_rays_cont_b4151 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3916:
# B3916
	li x29, 99
	bne	x24, x29, trace_diffuse_rays_beqelse_b3918
# B3917
	li x24, 1
	j trace_diffuse_rays_cont_b4056 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3918:
# B3918
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
	bne	x35, x100, trace_diffuse_rays_beqelse_b3920
# B3919
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
	beq	x37, zero, trace_diffuse_rays_bneelse_b3922
# B3921
	mv x37, zero
	j trace_diffuse_rays_cont_b3925 # adhoc jump(2)
trace_diffuse_rays_bneelse_b3922:
# B3922
	lw x37, 2(x35)
	fmul x37, x36, x37
	fadd x37, x37, x34
	fabs x37, x37
	lw x38, 4(x30)
	lw x38, 2(x38)
	fle x37, x38, x37
	beq	x37, zero, trace_diffuse_rays_bneelse_b3924
# B3923
	mv x37, zero
	j trace_diffuse_rays_cont_b3925 # adhoc jump(2)
trace_diffuse_rays_bneelse_b3924:
# B3924
	lw x37, 1(x24)
	feq x37, x37, zero
	xori x37, x37, 1
trace_diffuse_rays_cont_b3925:
# B3925
	bne	x37, zero, trace_diffuse_rays_beqelse_b3927
# B3926
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
	beq	x37, zero, trace_diffuse_rays_bneelse_b3929
# B3928
	mv x37, zero
	j trace_diffuse_rays_cont_b3932 # adhoc jump(2)
trace_diffuse_rays_bneelse_b3929:
# B3929
	lw x37, 2(x35)
	fmul x37, x36, x37
	fadd x37, x37, x34
	fabs x37, x37
	lw x38, 4(x30)
	lw x38, 2(x38)
	fle x37, x38, x37
	beq	x37, zero, trace_diffuse_rays_bneelse_b3931
# B3930
	mv x37, zero
	j trace_diffuse_rays_cont_b3932 # adhoc jump(2)
trace_diffuse_rays_bneelse_b3931:
# B3931
	lw x37, 3(x24)
	feq x37, x37, zero
	xori x37, x37, 1
trace_diffuse_rays_cont_b3932:
# B3932
	bne	x37, zero, trace_diffuse_rays_beqelse_b3934
# B3933
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
	beq	x32, zero, trace_diffuse_rays_bneelse_b3936
# B3935
	mv x24, zero
	j trace_diffuse_rays_cont_b3939 # adhoc jump(2)
trace_diffuse_rays_bneelse_b3936:
# B3936
	lw x32, 1(x35)
	fmul x32, x34, x32
	fadd x32, x32, x33
	fabs x32, x32
	lw x30, 4(x30)
	lw x30, 1(x30)
	fle x30, x30, x32
	beq	x30, zero, trace_diffuse_rays_bneelse_b3938
# B3937
	mv x24, zero
	j trace_diffuse_rays_cont_b3939 # adhoc jump(2)
trace_diffuse_rays_bneelse_b3938:
# B3938
	lw x24, 5(x24)
	feq x24, x24, zero
	xori x24, x24, 1
trace_diffuse_rays_cont_b3939:
# B3939
	bne	x24, zero, trace_diffuse_rays_beqelse_b3941
# B3940
	mv x24, zero
	j trace_diffuse_rays_cont_b3959 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3941:
# B3941
	la x24, min_caml_solver_dist
	sw x34, 0(x24)
	li x24, 3
	j trace_diffuse_rays_cont_b3959 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3934:
# B3934
	la x24, min_caml_solver_dist
	sw x36, 0(x24)
	li x24, 2
	j trace_diffuse_rays_cont_b3959 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3927:
# B3927
	la x24, min_caml_solver_dist
	sw x36, 0(x24)
	li x24, 1
	j trace_diffuse_rays_cont_b3959 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3920:
# B3920
	bne	x35, x11, trace_diffuse_rays_beqelse_b3943
# B3942
	lw x30, 0(x24)
	fle x30, zero, x30
	beq	x30, zero, trace_diffuse_rays_bneelse_b3945
# B3944
	mv x24, zero
	j trace_diffuse_rays_cont_b3959 # adhoc jump(2)
trace_diffuse_rays_bneelse_b3945:
# B3945
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
	li x24, 1
	j trace_diffuse_rays_cont_b3959 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3943:
# B3943
	lw x35, 0(x24)
	feq x36, x35, zero
	bne	x36, zero, trace_diffuse_rays_beqelse_b3947
# B3946
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
	bne	x39, zero, trace_diffuse_rays_beqelse_b3949
# B3948
	mv x32, x38
	j trace_diffuse_rays_cont_b3950 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3949:
# B3949
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
trace_diffuse_rays_cont_b3950:
# B3950
	lw x33, 1(x30)
	bne	x33, x37, trace_diffuse_rays_beqelse_b3952
# B3951
	lui x33, 260096
	fsub x32, x32, x33
	j trace_diffuse_rays_cont_b3953 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3952:
# B3952
trace_diffuse_rays_cont_b3953:
# B3953
	fmul x33, x36, x36
	fmul x32, x35, x32
	fsub x32, x33, x32
	fle x33, x32, zero
	beq	x33, zero, trace_diffuse_rays_bneelse_b3955
# B3954
	mv x24, zero
	j trace_diffuse_rays_cont_b3959 # adhoc jump(2)
trace_diffuse_rays_bneelse_b3955:
# B3955
	lw x30, 6(x30)
	bne	x30, zero, trace_diffuse_rays_beqelse_b3957
# B3956
	la x30, min_caml_solver_dist
	fsqrt x32, x32
	fsub x32, x36, x32
	lw x24, 4(x24)
	fmul x24, x32, x24
	sw x24, 0(x30)
	j trace_diffuse_rays_cont_b3958 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3957:
# B3957
	la x30, min_caml_solver_dist
	fsqrt x32, x32
	fadd x32, x36, x32
	lw x24, 4(x24)
	fmul x24, x32, x24
	sw x24, 0(x30)
trace_diffuse_rays_cont_b3958:
# B3958
	li x24, 1
	j trace_diffuse_rays_cont_b3959 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3947:
# B3947
	mv x24, zero
trace_diffuse_rays_cont_b3959:
# B3959
	bne	x24, zero, trace_diffuse_rays_beqelse_b3961
# B3960
	mv x24, zero
	j trace_diffuse_rays_cont_b4056 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3961:
# B3961
	la x24, min_caml_solver_dist
	lw x30, 0(x24)
	fle x30, x26, x30
	beq	x30, zero, trace_diffuse_rays_bneelse_b3963
# B3962
	mv x24, zero
	j trace_diffuse_rays_cont_b4056 # adhoc jump(2)
trace_diffuse_rays_bneelse_b3963:
# B3963
	mv x33, x18
	mv x32, x100
	j	trace_diffuse_rays_loop_b3964
trace_diffuse_rays_bneelse_b4051:	#moved
# B4051
	addi x30, x32, 1
	mv x32, x30
trace_diffuse_rays_loop_b3964:
# B3964
	add x4, x33, x32
	lw x30, 0(x4)
	bne	x30, x25, trace_diffuse_rays_beqelse_b3966
# B3965
	mv x30, zero
	j trace_diffuse_rays_cont_b4053 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3966:
# B3966
	la x34, min_caml_and_net
	add x4, x34, x30
	lw x30, 0(x4)
	mv x35, x30
	mv x34, zero
	j	trace_diffuse_rays_loop_b3967
trace_diffuse_rays_bneelse_b4048:	#moved
# B4048
trace_diffuse_rays_loop_b3967:
# B3967
	add x4, x35, x34
	lw x30, 0(x4)
	bne	x30, x25, trace_diffuse_rays_beqelse_b3969
# B3968
	mv x30, zero
	j trace_diffuse_rays_cont_b4050 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3969:
# B3969
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
	bne	x5, x100, trace_diffuse_rays_beqelse_b3971
# B3970
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
	beq	x65, zero, trace_diffuse_rays_bneelse_b3973
# B3972
	mv x65, zero
	j trace_diffuse_rays_cont_b3976 # adhoc jump(2)
trace_diffuse_rays_bneelse_b3973:
# B3973
	lw x65, 2(x5)
	fmul x65, x6, x65
	fadd x65, x65, x39
	fabs x65, x65
	lw x66, 4(x36)
	lw x66, 2(x66)
	fle x65, x66, x65
	beq	x65, zero, trace_diffuse_rays_bneelse_b3975
# B3974
	mv x65, zero
	j trace_diffuse_rays_cont_b3976 # adhoc jump(2)
trace_diffuse_rays_bneelse_b3975:
# B3975
	lw x65, 1(x40)
	feq x65, x65, zero
	xori x65, x65, 1
trace_diffuse_rays_cont_b3976:
# B3976
	bne	x65, zero, trace_diffuse_rays_beqelse_b3978
# B3977
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
	beq	x65, zero, trace_diffuse_rays_bneelse_b3980
# B3979
	mv x65, zero
	j trace_diffuse_rays_cont_b3983 # adhoc jump(2)
trace_diffuse_rays_bneelse_b3980:
# B3980
	lw x65, 2(x5)
	fmul x65, x6, x65
	fadd x65, x65, x39
	fabs x65, x65
	lw x66, 4(x36)
	lw x66, 2(x66)
	fle x65, x66, x65
	beq	x65, zero, trace_diffuse_rays_bneelse_b3982
# B3981
	mv x65, zero
	j trace_diffuse_rays_cont_b3983 # adhoc jump(2)
trace_diffuse_rays_bneelse_b3982:
# B3982
	lw x65, 3(x40)
	feq x65, x65, zero
	xori x65, x65, 1
trace_diffuse_rays_cont_b3983:
# B3983
	bne	x65, zero, trace_diffuse_rays_beqelse_b3985
# B3984
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
	beq	x37, zero, trace_diffuse_rays_bneelse_b3987
# B3986
	mv x36, zero
	j trace_diffuse_rays_cont_b3990 # adhoc jump(2)
trace_diffuse_rays_bneelse_b3987:
# B3987
	lw x37, 1(x5)
	fmul x37, x39, x37
	fadd x37, x37, x38
	fabs x37, x37
	lw x36, 4(x36)
	lw x36, 1(x36)
	fle x36, x36, x37
	beq	x36, zero, trace_diffuse_rays_bneelse_b3989
# B3988
	mv x36, zero
	j trace_diffuse_rays_cont_b3990 # adhoc jump(2)
trace_diffuse_rays_bneelse_b3989:
# B3989
	lw x36, 5(x40)
	feq x36, x36, zero
	xori x36, x36, 1
trace_diffuse_rays_cont_b3990:
# B3990
	bne	x36, zero, trace_diffuse_rays_beqelse_b3992
# B3991
	mv x36, zero
	j trace_diffuse_rays_cont_b4010 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3992:
# B3992
	sw x39, 0(x24)
	li x36, 3
	j trace_diffuse_rays_cont_b4010 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3985:
# B3985
	sw x6, 0(x24)
	li x36, 2
	j trace_diffuse_rays_cont_b4010 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3978:
# B3978
	sw x6, 0(x24)
	li x36, 1
	j trace_diffuse_rays_cont_b4010 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3971:
# B3971
	bne	x5, x11, trace_diffuse_rays_beqelse_b3994
# B3993
	lw x36, 0(x40)
	fle x36, zero, x36
	beq	x36, zero, trace_diffuse_rays_bneelse_b3996
# B3995
	mv x36, zero
	j trace_diffuse_rays_cont_b4010 # adhoc jump(2)
trace_diffuse_rays_bneelse_b3996:
# B3996
	lw x36, 1(x40)
	fmul x36, x36, x37
	lw x37, 2(x40)
	fmul x37, x37, x38
	fadd x36, x36, x37
	lw x37, 3(x40)
	fmul x37, x37, x39
	fadd x36, x36, x37
	sw x36, 0(x24)
	li x36, 1
	j trace_diffuse_rays_cont_b4010 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3994:
# B3994
	lw x5, 0(x40)
	feq x6, x5, zero
	bne	x6, zero, trace_diffuse_rays_beqelse_b3998
# B3997
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
	bne	x67, zero, trace_diffuse_rays_beqelse_b4000
# B3999
	mv x37, x66
	j trace_diffuse_rays_cont_b4001 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4000:
# B4000
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
trace_diffuse_rays_cont_b4001:
# B4001
	lw x38, 1(x36)
	bne	x38, x65, trace_diffuse_rays_beqelse_b4003
# B4002
	lui x38, 260096
	fsub x37, x37, x38
	j trace_diffuse_rays_cont_b4004 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4003:
# B4003
trace_diffuse_rays_cont_b4004:
# B4004
	fmul x38, x6, x6
	fmul x37, x5, x37
	fsub x37, x38, x37
	fle x38, x37, zero
	beq	x38, zero, trace_diffuse_rays_bneelse_b4006
# B4005
	mv x36, zero
	j trace_diffuse_rays_cont_b4010 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4006:
# B4006
	lw x36, 6(x36)
	bne	x36, zero, trace_diffuse_rays_beqelse_b4008
# B4007
	fsqrt x36, x37
	fsub x36, x6, x36
	lw x37, 4(x40)
	fmul x36, x36, x37
	sw x36, 0(x24)
	j trace_diffuse_rays_cont_b4009 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4008:
# B4008
	fsqrt x36, x37
	fadd x36, x6, x36
	lw x37, 4(x40)
	fmul x36, x36, x37
	sw x36, 0(x24)
trace_diffuse_rays_cont_b4009:
# B4009
	li x36, 1
	j trace_diffuse_rays_cont_b4010 # adhoc jump(2)
trace_diffuse_rays_beqelse_b3998:
# B3998
	mv x36, zero
trace_diffuse_rays_cont_b4010:
# B4010
	lw x37, 0(x24)
	bne	x36, zero, trace_diffuse_rays_beqelse_b4012
# B4011
	mv x36, zero
	j trace_diffuse_rays_cont_b4013 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4012:
# B4012
	lui x36, 779469
	addi x36, x36, -819
	fle x36, x36, x37
	xori x36, x36, 1
trace_diffuse_rays_cont_b4013:
# B4013
	addi x34, x34, 1
	bne	x36, zero, trace_diffuse_rays_beqelse_b4015
# B4014
	add x4, x22, x30
	lw x30, 0(x4)
	lw x30, 6(x30)
	bne	x30, zero, trace_diffuse_rays_beqelse_b4017
# B4016
	mv x30, zero
	j trace_diffuse_rays_cont_b4050 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4017:
# B4017
	j	trace_diffuse_rays_loop_b3967
trace_diffuse_rays_beqelse_b4015:
# B4015
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
	j	trace_diffuse_rays_loop_b4018
trace_diffuse_rays_bneelse_b4045:	#moved
# B4045
	addi x30, x36, 1
	mv x36, x30
trace_diffuse_rays_loop_b4018:
# B4018
	add x4, x39, x36
	lw x30, 0(x4)
	bne	x30, x25, trace_diffuse_rays_beqelse_b4020
# B4019
	li x30, 1
	j trace_diffuse_rays_cont_b4047 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4020:
# B4020
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
	bne	x66, x100, trace_diffuse_rays_beqelse_b4022
# B4021
	fabs x37, x37
	lw x66, 4(x30)
	lw x66, 0(x66)
	fle x37, x66, x37
	beq	x37, zero, trace_diffuse_rays_bneelse_b4024
# B4023
	mv x37, zero
	j trace_diffuse_rays_cont_b4027 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4024:
# B4024
	fabs x37, x38
	lw x38, 4(x30)
	lw x38, 1(x38)
	fle x37, x38, x37
	beq	x37, zero, trace_diffuse_rays_bneelse_b4026
# B4025
	mv x37, zero
	j trace_diffuse_rays_cont_b4027 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4026:
# B4026
	fabs x37, x65
	lw x38, 4(x30)
	lw x38, 2(x38)
	fle x37, x38, x37
	xori x37, x37, 1
trace_diffuse_rays_cont_b4027:
# B4027
	bne	x37, zero, trace_diffuse_rays_beqelse_b4029
# B4028
	lw x30, 6(x30)
	xori x30, x30, 1
	j trace_diffuse_rays_cont_b4044 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4029:
# B4029
	lw x30, 6(x30)
	j trace_diffuse_rays_cont_b4044 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4022:
# B4022
	bne	x66, x11, trace_diffuse_rays_beqelse_b4031
# B4030
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
	bne	x30, zero, trace_diffuse_rays_beqelse_b4033
# B4032
	mv x30, x37
	j trace_diffuse_rays_cont_b4034 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4033:
# B4033
	xori x30, x37, 1
trace_diffuse_rays_cont_b4034:
# B4034
	xori x30, x30, 1
	j trace_diffuse_rays_cont_b4044 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4031:
# B4031
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
	bne	x67, zero, trace_diffuse_rays_beqelse_b4036
# B4035
	mv x37, x66
	j trace_diffuse_rays_cont_b4037 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4036:
# B4036
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
trace_diffuse_rays_cont_b4037:
# B4037
	lw x38, 1(x30)
	li x65, 3
	bne	x38, x65, trace_diffuse_rays_beqelse_b4039
# B4038
	lui x38, 260096
	fsub x37, x37, x38
	j trace_diffuse_rays_cont_b4040 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4039:
# B4039
trace_diffuse_rays_cont_b4040:
# B4040
	lw x30, 6(x30)
	fle x37, zero, x37
	xori x37, x37, 1
	bne	x30, zero, trace_diffuse_rays_beqelse_b4042
# B4041
	mv x30, x37
	j trace_diffuse_rays_cont_b4043 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4042:
# B4042
	xori x30, x37, 1
trace_diffuse_rays_cont_b4043:
# B4043
	xori x30, x30, 1
trace_diffuse_rays_cont_b4044:
# B4044
	beq	x30, zero, trace_diffuse_rays_bneelse_b4045
# B4046
	mv x30, zero
trace_diffuse_rays_cont_b4047:
# B4047
	beq	x30, zero, trace_diffuse_rays_bneelse_b4048
# B4049
	mv x30, x100
trace_diffuse_rays_cont_b4050:
# B4050
	beq	x30, zero, trace_diffuse_rays_bneelse_b4051
# B4052
	mv x30, x100
trace_diffuse_rays_cont_b4053:
# B4053
	bne	x30, zero, trace_diffuse_rays_beqelse_b4055
# B4054
	mv x24, zero
	j trace_diffuse_rays_cont_b4056 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4055:
# B4055
	mv x24, x100
trace_diffuse_rays_cont_b4056:
# B4056
	addi x20, x20, 1
	beq	x24, zero, trace_diffuse_rays_bneelse_b4057
# B4058
	mv x30, x18
	mv x29, x100
	j	trace_diffuse_rays_loop_b4059
trace_diffuse_rays_bneelse_b4146:	#moved
# B4146
	addi x18, x29, 1
	mv x29, x18
trace_diffuse_rays_loop_b4059:
# B4059
	add x4, x30, x29
	lw x18, 0(x4)
	bne	x18, x25, trace_diffuse_rays_beqelse_b4061
# B4060
	mv x18, zero
	j trace_diffuse_rays_cont_b4148 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4061:
# B4061
	la x24, min_caml_and_net
	add x4, x24, x18
	lw x18, 0(x4)
	mv x24, zero
	mv x32, x18
	j	trace_diffuse_rays_loop_b4062
trace_diffuse_rays_bneelse_b4143:	#moved
# B4143
trace_diffuse_rays_loop_b4062:
# B4062
	add x4, x32, x24
	lw x18, 0(x4)
	bne	x18, x25, trace_diffuse_rays_beqelse_b4064
# B4063
	mv x18, zero
	j trace_diffuse_rays_cont_b4145 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4064:
# B4064
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
	bne	x39, x100, trace_diffuse_rays_beqelse_b4066
# B4065
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
	beq	x40, zero, trace_diffuse_rays_bneelse_b4068
# B4067
	mv x40, zero
	j trace_diffuse_rays_cont_b4071 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4068:
# B4068
	lw x40, 2(x33)
	fmul x40, x39, x40
	fadd x40, x40, x37
	fabs x40, x40
	lw x5, 4(x34)
	lw x5, 2(x5)
	fle x40, x5, x40
	beq	x40, zero, trace_diffuse_rays_bneelse_b4070
# B4069
	mv x40, zero
	j trace_diffuse_rays_cont_b4071 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4070:
# B4070
	lw x40, 1(x38)
	feq x40, x40, zero
	xori x40, x40, 1
trace_diffuse_rays_cont_b4071:
# B4071
	bne	x40, zero, trace_diffuse_rays_beqelse_b4073
# B4072
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
	beq	x40, zero, trace_diffuse_rays_bneelse_b4075
# B4074
	mv x40, zero
	j trace_diffuse_rays_cont_b4078 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4075:
# B4075
	lw x40, 2(x33)
	fmul x40, x39, x40
	fadd x40, x40, x37
	fabs x40, x40
	lw x5, 4(x34)
	lw x5, 2(x5)
	fle x40, x5, x40
	beq	x40, zero, trace_diffuse_rays_bneelse_b4077
# B4076
	mv x40, zero
	j trace_diffuse_rays_cont_b4078 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4077:
# B4077
	lw x40, 3(x38)
	feq x40, x40, zero
	xori x40, x40, 1
trace_diffuse_rays_cont_b4078:
# B4078
	bne	x40, zero, trace_diffuse_rays_beqelse_b4080
# B4079
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
	beq	x35, zero, trace_diffuse_rays_bneelse_b4082
# B4081
	mv x33, zero
	j trace_diffuse_rays_cont_b4085 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4082:
# B4082
	lw x33, 1(x33)
	fmul x33, x37, x33
	fadd x33, x33, x36
	fabs x33, x33
	lw x34, 4(x34)
	lw x34, 1(x34)
	fle x33, x34, x33
	beq	x33, zero, trace_diffuse_rays_bneelse_b4084
# B4083
	mv x33, zero
	j trace_diffuse_rays_cont_b4085 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4084:
# B4084
	lw x33, 5(x38)
	feq x33, x33, zero
	xori x33, x33, 1
trace_diffuse_rays_cont_b4085:
# B4085
	bne	x33, zero, trace_diffuse_rays_beqelse_b4087
# B4086
	mv x33, zero
	j trace_diffuse_rays_cont_b4105 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4087:
# B4087
	la x33, min_caml_solver_dist
	sw x37, 0(x33)
	li x33, 3
	j trace_diffuse_rays_cont_b4105 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4080:
# B4080
	la x33, min_caml_solver_dist
	sw x39, 0(x33)
	li x33, 2
	j trace_diffuse_rays_cont_b4105 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4073:
# B4073
	la x33, min_caml_solver_dist
	sw x39, 0(x33)
	li x33, 1
	j trace_diffuse_rays_cont_b4105 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4066:
# B4066
	bne	x39, x11, trace_diffuse_rays_beqelse_b4089
# B4088
	lw x33, 0(x38)
	fle x33, zero, x33
	beq	x33, zero, trace_diffuse_rays_bneelse_b4091
# B4090
	mv x33, zero
	j trace_diffuse_rays_cont_b4105 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4091:
# B4091
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
	li x33, 1
	j trace_diffuse_rays_cont_b4105 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4089:
# B4089
	lw x33, 0(x38)
	feq x39, x33, zero
	bne	x39, zero, trace_diffuse_rays_beqelse_b4093
# B4092
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
	bne	x6, zero, trace_diffuse_rays_beqelse_b4095
# B4094
	mv x35, x5
	j trace_diffuse_rays_cont_b4096 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4095:
# B4095
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
trace_diffuse_rays_cont_b4096:
# B4096
	lw x36, 1(x34)
	bne	x36, x40, trace_diffuse_rays_beqelse_b4098
# B4097
	lui x36, 260096
	fsub x35, x35, x36
	j trace_diffuse_rays_cont_b4099 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4098:
# B4098
trace_diffuse_rays_cont_b4099:
# B4099
	fmul x36, x39, x39
	fmul x33, x33, x35
	fsub x33, x36, x33
	fle x35, x33, zero
	beq	x35, zero, trace_diffuse_rays_bneelse_b4101
# B4100
	mv x33, zero
	j trace_diffuse_rays_cont_b4105 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4101:
# B4101
	lw x34, 6(x34)
	bne	x34, zero, trace_diffuse_rays_beqelse_b4103
# B4102
	la x34, min_caml_solver_dist
	fsqrt x33, x33
	fsub x33, x39, x33
	lw x35, 4(x38)
	fmul x33, x33, x35
	sw x33, 0(x34)
	j trace_diffuse_rays_cont_b4104 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4103:
# B4103
	la x34, min_caml_solver_dist
	fsqrt x33, x33
	fadd x33, x39, x33
	lw x35, 4(x38)
	fmul x33, x33, x35
	sw x33, 0(x34)
trace_diffuse_rays_cont_b4104:
# B4104
	li x33, 1
	j trace_diffuse_rays_cont_b4105 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4093:
# B4093
	mv x33, zero
trace_diffuse_rays_cont_b4105:
# B4105
	la x34, min_caml_solver_dist
	lw x34, 0(x34)
	bne	x33, zero, trace_diffuse_rays_beqelse_b4107
# B4106
	mv x33, zero
	j trace_diffuse_rays_cont_b4108 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4107:
# B4107
	lui x33, 779469
	addi x33, x33, -819
	fle x33, x33, x34
	xori x33, x33, 1
trace_diffuse_rays_cont_b4108:
# B4108
	addi x24, x24, 1
	bne	x33, zero, trace_diffuse_rays_beqelse_b4110
# B4109
	add x4, x22, x18
	lw x18, 0(x4)
	lw x18, 6(x18)
	bne	x18, zero, trace_diffuse_rays_beqelse_b4112
# B4111
	mv x18, zero
	j trace_diffuse_rays_cont_b4145 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4112:
# B4112
	j	trace_diffuse_rays_loop_b4062
trace_diffuse_rays_beqelse_b4110:
# B4110
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
	j	trace_diffuse_rays_loop_b4113
trace_diffuse_rays_bneelse_b4140:	#moved
# B4140
	addi x18, x35, 1
	mv x35, x18
trace_diffuse_rays_loop_b4113:
# B4113
	add x4, x36, x35
	lw x18, 0(x4)
	bne	x18, x25, trace_diffuse_rays_beqelse_b4115
# B4114
	li x18, 1
	j trace_diffuse_rays_cont_b4142 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4115:
# B4115
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
	bne	x5, x100, trace_diffuse_rays_beqelse_b4117
# B4116
	fabs x33, x33
	lw x5, 4(x18)
	lw x5, 0(x5)
	fle x33, x5, x33
	beq	x33, zero, trace_diffuse_rays_bneelse_b4119
# B4118
	mv x33, zero
	j trace_diffuse_rays_cont_b4122 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4119:
# B4119
	fabs x33, x34
	lw x34, 4(x18)
	lw x34, 1(x34)
	fle x33, x34, x33
	beq	x33, zero, trace_diffuse_rays_bneelse_b4121
# B4120
	mv x33, zero
	j trace_diffuse_rays_cont_b4122 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4121:
# B4121
	fabs x33, x40
	lw x34, 4(x18)
	lw x34, 2(x34)
	fle x33, x34, x33
	xori x33, x33, 1
trace_diffuse_rays_cont_b4122:
# B4122
	bne	x33, zero, trace_diffuse_rays_beqelse_b4124
# B4123
	lw x18, 6(x18)
	xori x18, x18, 1
	j trace_diffuse_rays_cont_b4139 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4124:
# B4124
	lw x18, 6(x18)
	j trace_diffuse_rays_cont_b4139 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4117:
# B4117
	bne	x5, x11, trace_diffuse_rays_beqelse_b4126
# B4125
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
	bne	x18, zero, trace_diffuse_rays_beqelse_b4128
# B4127
	mv x18, x33
	j trace_diffuse_rays_cont_b4129 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4128:
# B4128
	xori x18, x33, 1
trace_diffuse_rays_cont_b4129:
# B4129
	xori x18, x18, 1
	j trace_diffuse_rays_cont_b4139 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4126:
# B4126
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
	bne	x6, zero, trace_diffuse_rays_beqelse_b4131
# B4130
	mv x33, x5
	j trace_diffuse_rays_cont_b4132 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4131:
# B4131
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
trace_diffuse_rays_cont_b4132:
# B4132
	lw x34, 1(x18)
	li x40, 3
	bne	x34, x40, trace_diffuse_rays_beqelse_b4134
# B4133
	lui x34, 260096
	fsub x33, x33, x34
	j trace_diffuse_rays_cont_b4135 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4134:
# B4134
trace_diffuse_rays_cont_b4135:
# B4135
	lw x18, 6(x18)
	fle x33, zero, x33
	xori x33, x33, 1
	bne	x18, zero, trace_diffuse_rays_beqelse_b4137
# B4136
	mv x18, x33
	j trace_diffuse_rays_cont_b4138 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4137:
# B4137
	xori x18, x33, 1
trace_diffuse_rays_cont_b4138:
# B4138
	xori x18, x18, 1
trace_diffuse_rays_cont_b4139:
# B4139
	beq	x18, zero, trace_diffuse_rays_bneelse_b4140
# B4141
	mv x18, zero
trace_diffuse_rays_cont_b4142:
# B4142
	beq	x18, zero, trace_diffuse_rays_bneelse_b4143
# B4144
	mv x18, x100
trace_diffuse_rays_cont_b4145:
# B4145
	beq	x18, zero, trace_diffuse_rays_bneelse_b4146
# B4147
	mv x18, x100
trace_diffuse_rays_cont_b4148:
# B4148
	beq	x18, zero, trace_diffuse_rays_bneelse_b4149
# B4150
	mv x18, x100
trace_diffuse_rays_cont_b4151:
# B4151
	bne	x18, zero, trace_diffuse_rays_beqelse_b4153
# B4152
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
	beq	x20, zero, trace_diffuse_rays_bneelse_b4155
# B4154
	mv x21, zero
	j trace_diffuse_rays_cont_b4156 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4155:
# B4155
	mv x21, x18
trace_diffuse_rays_cont_b4156:
# B4156
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
trace_diffuse_rays_beqelse_b4153:
# B4153
	j trace_diffuse_rays_cont_b4729 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4057:
# B4057
	j	trace_diffuse_rays_loop_b3914
trace_diffuse_rays_bneelse_b3800:
# B3800
	j trace_diffuse_rays_cont_b4729 # adhoc jump(2)
trace_diffuse_rays_bneelse_b3584:
# B3584
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
trace_diffuse_rays_loop_b4157:
# B4157
	add x4, x84, x83
	lw x20, 0(x4)
	lw x86, 0(x20)
	li x87, -1
	la x88, min_caml_objects
	li x89, 3
	lui x9, 260096
	beq	x86, x87, trace_diffuse_rays_bneelse_b4158
# B4159
	li x90, 99
	la x91, min_caml_solver_dist
	li x92, 3
	bne	x86, x90, trace_diffuse_rays_beqelse_b4161
# B4160
	mv x94, x20
	mv x95, x85
	mv x93, x100
trace_diffuse_rays_loop_b4162:
# B4162
	add x4, x94, x93
	lw x20, 0(x4)
	beq	x20, x87, trace_diffuse_rays_bneelse_b4163
# B4164
	la x86, min_caml_and_net
	add x4, x86, x20
	lw x20, 0(x4)
	mv x9, x95
	mv x89, x20
	mv x86, zero
trace_diffuse_rays_loop_b4165:
# B4165
	lw x20, 0(x9)
	add x4, x89, x86
	lw x90, 0(x4)
	beq	x90, x87, trace_diffuse_rays_bneelse_b4166
# B4167
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
	bne	x103, x100, trace_diffuse_rays_beqelse_b4169
# B4168
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
	beq	x104, zero, trace_diffuse_rays_bneelse_b4171
# B4170
	mv x104, zero
	j trace_diffuse_rays_cont_b4174 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4171:
# B4171
	lw x104, 2(x97)
	fmul x104, x103, x104
	fadd x104, x104, x101
	fabs x104, x104
	lw x105, 4(x96)
	lw x105, 2(x105)
	fle x104, x105, x104
	beq	x104, zero, trace_diffuse_rays_bneelse_b4173
# B4172
	mv x104, zero
	j trace_diffuse_rays_cont_b4174 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4173:
# B4173
	lw x104, 1(x102)
	feq x104, x104, zero
	xori x104, x104, 1
trace_diffuse_rays_cont_b4174:
# B4174
	bne	x104, zero, trace_diffuse_rays_beqelse_b4176
# B4175
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
	beq	x104, zero, trace_diffuse_rays_bneelse_b4178
# B4177
	mv x104, zero
	j trace_diffuse_rays_cont_b4181 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4178:
# B4178
	lw x104, 2(x97)
	fmul x104, x103, x104
	fadd x104, x104, x101
	fabs x104, x104
	lw x105, 4(x96)
	lw x105, 2(x105)
	fle x104, x105, x104
	beq	x104, zero, trace_diffuse_rays_bneelse_b4180
# B4179
	mv x104, zero
	j trace_diffuse_rays_cont_b4181 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4180:
# B4180
	lw x104, 3(x102)
	feq x104, x104, zero
	xori x104, x104, 1
trace_diffuse_rays_cont_b4181:
# B4181
	bne	x104, zero, trace_diffuse_rays_beqelse_b4183
# B4182
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
	beq	x98, zero, trace_diffuse_rays_bneelse_b4185
# B4184
	mv x96, zero
	j trace_diffuse_rays_cont_b4188 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4185:
# B4185
	lw x97, 1(x97)
	fmul x97, x101, x97
	fadd x97, x97, x99
	fabs x97, x97
	lw x96, 4(x96)
	lw x96, 1(x96)
	fle x96, x96, x97
	beq	x96, zero, trace_diffuse_rays_bneelse_b4187
# B4186
	mv x96, zero
	j trace_diffuse_rays_cont_b4188 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4187:
# B4187
	lw x96, 5(x102)
	feq x96, x96, zero
	xori x96, x96, 1
trace_diffuse_rays_cont_b4188:
# B4188
	bne	x96, zero, trace_diffuse_rays_beqelse_b4190
# B4189
	mv x96, zero
	j trace_diffuse_rays_cont_b4202 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4190:
# B4190
	la x96, min_caml_solver_dist
	sw x101, 0(x96)
	li x96, 3
	j trace_diffuse_rays_cont_b4202 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4183:
# B4183
	la x96, min_caml_solver_dist
	sw x103, 0(x96)
	li x96, 2
	j trace_diffuse_rays_cont_b4202 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4176:
# B4176
	la x96, min_caml_solver_dist
	sw x103, 0(x96)
	li x96, 1
	j trace_diffuse_rays_cont_b4202 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4169:
# B4169
	bne	x103, x11, trace_diffuse_rays_beqelse_b4192
# B4191
	lw x96, 0(x102)
	fle x96, zero, x96
	beq	x96, zero, trace_diffuse_rays_bneelse_b4194
# B4193
	mv x96, zero
	j trace_diffuse_rays_cont_b4202 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4194:
# B4194
	la x96, min_caml_solver_dist
	lw x98, 0(x102)
	lw x97, 3(x97)
	fmul x97, x98, x97
	sw x97, 0(x96)
	li x96, 1
	j trace_diffuse_rays_cont_b4202 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4192:
# B4192
	lw x103, 0(x102)
	feq x104, x103, zero
	bne	x104, zero, trace_diffuse_rays_beqelse_b4196
# B4195
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
	beq	x99, zero, trace_diffuse_rays_bneelse_b4198
# B4197
	mv x96, zero
	j trace_diffuse_rays_cont_b4202 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4198:
# B4198
	lw x96, 6(x96)
	bne	x96, zero, trace_diffuse_rays_beqelse_b4200
# B4199
	la x96, min_caml_solver_dist
	fsqrt x97, x97
	fsub x97, x98, x97
	lw x98, 4(x102)
	fmul x97, x97, x98
	sw x97, 0(x96)
	j trace_diffuse_rays_cont_b4201 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4200:
# B4200
	la x96, min_caml_solver_dist
	fsqrt x97, x97
	fadd x97, x98, x97
	lw x98, 4(x102)
	fmul x97, x97, x98
	sw x97, 0(x96)
trace_diffuse_rays_cont_b4201:
# B4201
	li x96, 1
	j trace_diffuse_rays_cont_b4202 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4196:
# B4196
	mv x96, zero
trace_diffuse_rays_cont_b4202:
# B4202
	addi x86, x86, 1
	bne	x96, zero, trace_diffuse_rays_beqelse_b4204
# B4203
	add x4, x88, x90
	lw x20, 0(x4)
	lw x20, 6(x20)
	bne	x20, zero, trace_diffuse_rays_beqelse_b4206
# B4205
	j trace_diffuse_rays_cont_b4244 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4206:
# B4206
	j	trace_diffuse_rays_loop_b4165
trace_diffuse_rays_beqelse_b4204:
# B4204
	lw x97, 0(x91)
	fle x98, x97, zero
	bne	x98, zero, trace_diffuse_rays_beqelse_b4207
# B4208
	lw x98, 0(x19)
	fle x98, x98, x97
	bne	x98, zero, trace_diffuse_rays_beqelse_b4209
# B4210
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
	j	trace_diffuse_rays_loop_b4211
trace_diffuse_rays_bneelse_b4238:	#moved
# B4238
	addi x101, x101, 1
trace_diffuse_rays_loop_b4211:
# B4211
	add x4, x102, x101
	lw x106, 0(x4)
	bne	x106, x87, trace_diffuse_rays_beqelse_b4213
# B4212
	li x101, 1
	j trace_diffuse_rays_cont_b4240 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4213:
# B4213
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
	bne	x110, x100, trace_diffuse_rays_beqelse_b4215
# B4214
	fabs x107, x107
	lw x110, 4(x106)
	lw x110, 0(x110)
	fle x107, x110, x107
	beq	x107, zero, trace_diffuse_rays_bneelse_b4217
# B4216
	mv x107, zero
	j trace_diffuse_rays_cont_b4220 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4217:
# B4217
	fabs x107, x108
	lw x108, 4(x106)
	lw x108, 1(x108)
	fle x107, x108, x107
	beq	x107, zero, trace_diffuse_rays_bneelse_b4219
# B4218
	mv x107, zero
	j trace_diffuse_rays_cont_b4220 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4219:
# B4219
	fabs x107, x109
	lw x108, 4(x106)
	lw x108, 2(x108)
	fle x107, x108, x107
	xori x107, x107, 1
trace_diffuse_rays_cont_b4220:
# B4220
	bne	x107, zero, trace_diffuse_rays_beqelse_b4222
# B4221
	lw x106, 6(x106)
	xori x106, x106, 1
	j trace_diffuse_rays_cont_b4237 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4222:
# B4222
	lw x106, 6(x106)
	j trace_diffuse_rays_cont_b4237 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4215:
# B4215
	bne	x110, x11, trace_diffuse_rays_beqelse_b4224
# B4223
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
	bne	x106, zero, trace_diffuse_rays_beqelse_b4226
# B4225
	mv x106, x107
	j trace_diffuse_rays_cont_b4227 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4226:
# B4226
	xori x106, x107, 1
trace_diffuse_rays_cont_b4227:
# B4227
	xori x106, x106, 1
	j trace_diffuse_rays_cont_b4237 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4224:
# B4224
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
	bne	x111, zero, trace_diffuse_rays_beqelse_b4229
# B4228
	mv x107, x110
	j trace_diffuse_rays_cont_b4230 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4229:
# B4229
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
trace_diffuse_rays_cont_b4230:
# B4230
	lw x108, 1(x106)
	bne	x108, x92, trace_diffuse_rays_beqelse_b4232
# B4231
	lui x108, 260096
	fsub x107, x107, x108
	j trace_diffuse_rays_cont_b4233 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4232:
# B4232
trace_diffuse_rays_cont_b4233:
# B4233
	lw x106, 6(x106)
	fle x107, zero, x107
	xori x107, x107, 1
	bne	x106, zero, trace_diffuse_rays_beqelse_b4235
# B4234
	mv x106, x107
	j trace_diffuse_rays_cont_b4236 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4235:
# B4235
	xori x106, x107, 1
trace_diffuse_rays_cont_b4236:
# B4236
	xori x106, x106, 1
trace_diffuse_rays_cont_b4237:
# B4237
	beq	x106, zero, trace_diffuse_rays_bneelse_b4238
# B4239
	mv x101, zero
trace_diffuse_rays_cont_b4240:
# B4240
	beq	x101, zero, trace_diffuse_rays_bneelse_b4241
# B4242
	sw x97, 0(x19)
	sw x98, 0(x23)
	sw x99, 1(x23)
	sw x20, 2(x23)
	sw x90, 0(x24)
	sw x96, 0(x25)
trace_diffuse_rays_bneelse_b4241:
# B4241
trace_diffuse_rays_beqelse_b4209:
# B4209
trace_diffuse_rays_beqelse_b4207:
# B4207
trace_diffuse_rays_cont_b4243:
# B4243
	j	trace_diffuse_rays_loop_b4165
trace_diffuse_rays_bneelse_b4166:
# B4166
trace_diffuse_rays_cont_b4244:
# B4244
	addi x20, x93, 1
	mv x93, x20
	j	trace_diffuse_rays_loop_b4162
trace_diffuse_rays_bneelse_b4163:
# B4163
	j trace_diffuse_rays_cont_b4367 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4161:
# B4161
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
	bne	x96, x100, trace_diffuse_rays_beqelse_b4246
# B4245
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
	beq	x97, zero, trace_diffuse_rays_bneelse_b4248
# B4247
	mv x97, zero
	j trace_diffuse_rays_cont_b4251 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4248:
# B4248
	lw x97, 2(x90)
	fmul x97, x96, x97
	fadd x97, x97, x95
	fabs x97, x97
	lw x98, 4(x88)
	lw x98, 2(x98)
	fle x97, x98, x97
	beq	x97, zero, trace_diffuse_rays_bneelse_b4250
# B4249
	mv x97, zero
	j trace_diffuse_rays_cont_b4251 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4250:
# B4250
	lw x97, 1(x86)
	feq x97, x97, zero
	xori x97, x97, 1
trace_diffuse_rays_cont_b4251:
# B4251
	bne	x97, zero, trace_diffuse_rays_beqelse_b4253
# B4252
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
	beq	x97, zero, trace_diffuse_rays_bneelse_b4255
# B4254
	mv x97, zero
	j trace_diffuse_rays_cont_b4258 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4255:
# B4255
	lw x97, 2(x90)
	fmul x97, x96, x97
	fadd x97, x97, x95
	fabs x97, x97
	lw x98, 4(x88)
	lw x98, 2(x98)
	fle x97, x98, x97
	beq	x97, zero, trace_diffuse_rays_bneelse_b4257
# B4256
	mv x97, zero
	j trace_diffuse_rays_cont_b4258 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4257:
# B4257
	lw x97, 3(x86)
	feq x97, x97, zero
	xori x97, x97, 1
trace_diffuse_rays_cont_b4258:
# B4258
	bne	x97, zero, trace_diffuse_rays_beqelse_b4260
# B4259
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
	beq	x93, zero, trace_diffuse_rays_bneelse_b4262
# B4261
	mv x86, zero
	j trace_diffuse_rays_cont_b4265 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4262:
# B4262
	lw x90, 1(x90)
	fmul x90, x95, x90
	fadd x90, x90, x94
	fabs x90, x90
	lw x88, 4(x88)
	lw x88, 1(x88)
	fle x88, x88, x90
	beq	x88, zero, trace_diffuse_rays_bneelse_b4264
# B4263
	mv x86, zero
	j trace_diffuse_rays_cont_b4265 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4264:
# B4264
	lw x86, 5(x86)
	feq x86, x86, zero
	xori x86, x86, 1
trace_diffuse_rays_cont_b4265:
# B4265
	bne	x86, zero, trace_diffuse_rays_beqelse_b4267
# B4266
	mv x92, zero
	j trace_diffuse_rays_cont_b4279 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4267:
# B4267
	sw x95, 0(x91)
	j trace_diffuse_rays_cont_b4279 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4260:
# B4260
	sw x96, 0(x91)
	mv x92, x11
	j trace_diffuse_rays_cont_b4279 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4253:
# B4253
	sw x96, 0(x91)
	mv x92, x100
	j trace_diffuse_rays_cont_b4279 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4246:
# B4246
	bne	x96, x11, trace_diffuse_rays_beqelse_b4269
# B4268
	lw x88, 0(x86)
	fle x88, zero, x88
	beq	x88, zero, trace_diffuse_rays_bneelse_b4271
# B4270
	mv x92, zero
	j trace_diffuse_rays_cont_b4279 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4271:
# B4271
	lw x86, 0(x86)
	lw x88, 3(x90)
	fmul x86, x86, x88
	sw x86, 0(x91)
	mv x92, x100
	j trace_diffuse_rays_cont_b4279 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4269:
# B4269
	lw x92, 0(x86)
	feq x96, x92, zero
	bne	x96, zero, trace_diffuse_rays_beqelse_b4273
# B4272
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
	beq	x92, zero, trace_diffuse_rays_bneelse_b4275
# B4274
	mv x92, zero
	j trace_diffuse_rays_cont_b4279 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4275:
# B4275
	lw x88, 6(x88)
	fsqrt x90, x90
	bne	x88, zero, trace_diffuse_rays_beqelse_b4277
# B4276
	fsub x88, x93, x90
	lw x86, 4(x86)
	fmul x86, x88, x86
	sw x86, 0(x91)
	j trace_diffuse_rays_cont_b4278 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4277:
# B4277
	fadd x88, x93, x90
	lw x86, 4(x86)
	fmul x86, x88, x86
	sw x86, 0(x91)
trace_diffuse_rays_cont_b4278:
# B4278
	mv x92, x100
	j trace_diffuse_rays_cont_b4279 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4273:
# B4273
	mv x92, zero
trace_diffuse_rays_cont_b4279:
# B4279
	beq	x92, zero, trace_diffuse_rays_bneelse_b4280
# B4281
	lw x86, 0(x91)
	lw x88, 0(x19)
	fle x86, x88, x86
	bne	x86, zero, trace_diffuse_rays_beqelse_b4282
# B4283
	mv x92, x85
	mv x88, x100
	mv x90, x20
trace_diffuse_rays_loop_b4284:
# B4284
	add x4, x90, x88
	lw x20, 0(x4)
	beq	x20, x87, trace_diffuse_rays_bneelse_b4285
# B4286
	la x86, min_caml_and_net
	add x4, x86, x20
	lw x20, 0(x4)
	mv x94, x92
	mv x93, x20
	mv x86, zero
trace_diffuse_rays_loop_b4287:
# B4287
	lw x20, 0(x94)
	add x4, x93, x86
	lw x95, 0(x4)
	beq	x95, x87, trace_diffuse_rays_bneelse_b4288
# B4289
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
	bne	x103, x100, trace_diffuse_rays_beqelse_b4291
# B4290
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
	beq	x104, zero, trace_diffuse_rays_bneelse_b4293
# B4292
	mv x104, zero
	j trace_diffuse_rays_cont_b4296 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4293:
# B4293
	lw x104, 2(x97)
	fmul x104, x103, x104
	fadd x104, x104, x101
	fabs x104, x104
	lw x105, 4(x96)
	lw x105, 2(x105)
	fle x104, x105, x104
	beq	x104, zero, trace_diffuse_rays_bneelse_b4295
# B4294
	mv x104, zero
	j trace_diffuse_rays_cont_b4296 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4295:
# B4295
	lw x104, 1(x102)
	feq x104, x104, zero
	xori x104, x104, 1
trace_diffuse_rays_cont_b4296:
# B4296
	bne	x104, zero, trace_diffuse_rays_beqelse_b4298
# B4297
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
	beq	x104, zero, trace_diffuse_rays_bneelse_b4300
# B4299
	mv x104, zero
	j trace_diffuse_rays_cont_b4303 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4300:
# B4300
	lw x104, 2(x97)
	fmul x104, x103, x104
	fadd x104, x104, x101
	fabs x104, x104
	lw x105, 4(x96)
	lw x105, 2(x105)
	fle x104, x105, x104
	beq	x104, zero, trace_diffuse_rays_bneelse_b4302
# B4301
	mv x104, zero
	j trace_diffuse_rays_cont_b4303 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4302:
# B4302
	lw x104, 3(x102)
	feq x104, x104, zero
	xori x104, x104, 1
trace_diffuse_rays_cont_b4303:
# B4303
	bne	x104, zero, trace_diffuse_rays_beqelse_b4305
# B4304
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
	beq	x98, zero, trace_diffuse_rays_bneelse_b4307
# B4306
	mv x96, zero
	j trace_diffuse_rays_cont_b4310 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4307:
# B4307
	lw x97, 1(x97)
	fmul x97, x101, x97
	fadd x97, x97, x99
	fabs x97, x97
	lw x96, 4(x96)
	lw x96, 1(x96)
	fle x96, x96, x97
	beq	x96, zero, trace_diffuse_rays_bneelse_b4309
# B4308
	mv x96, zero
	j trace_diffuse_rays_cont_b4310 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4309:
# B4309
	lw x96, 5(x102)
	feq x96, x96, zero
	xori x96, x96, 1
trace_diffuse_rays_cont_b4310:
# B4310
	bne	x96, zero, trace_diffuse_rays_beqelse_b4312
# B4311
	mv x96, zero
	j trace_diffuse_rays_cont_b4324 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4312:
# B4312
	sw x101, 0(x91)
	li x96, 3
	j trace_diffuse_rays_cont_b4324 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4305:
# B4305
	sw x103, 0(x91)
	li x96, 2
	j trace_diffuse_rays_cont_b4324 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4298:
# B4298
	sw x103, 0(x91)
	li x96, 1
	j trace_diffuse_rays_cont_b4324 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4291:
# B4291
	bne	x103, x11, trace_diffuse_rays_beqelse_b4314
# B4313
	lw x96, 0(x102)
	fle x96, zero, x96
	beq	x96, zero, trace_diffuse_rays_bneelse_b4316
# B4315
	mv x96, zero
	j trace_diffuse_rays_cont_b4324 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4316:
# B4316
	lw x96, 0(x102)
	lw x97, 3(x97)
	fmul x96, x96, x97
	sw x96, 0(x91)
	li x96, 1
	j trace_diffuse_rays_cont_b4324 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4314:
# B4314
	lw x103, 0(x102)
	feq x104, x103, zero
	bne	x104, zero, trace_diffuse_rays_beqelse_b4318
# B4317
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
	beq	x99, zero, trace_diffuse_rays_bneelse_b4320
# B4319
	mv x96, zero
	j trace_diffuse_rays_cont_b4324 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4320:
# B4320
	lw x96, 6(x96)
	bne	x96, zero, trace_diffuse_rays_beqelse_b4322
# B4321
	fsqrt x96, x97
	fsub x96, x98, x96
	lw x97, 4(x102)
	fmul x96, x96, x97
	sw x96, 0(x91)
	j trace_diffuse_rays_cont_b4323 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4322:
# B4322
	fsqrt x96, x97
	fadd x96, x98, x96
	lw x97, 4(x102)
	fmul x96, x96, x97
	sw x96, 0(x91)
trace_diffuse_rays_cont_b4323:
# B4323
	li x96, 1
	j trace_diffuse_rays_cont_b4324 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4318:
# B4318
	mv x96, zero
trace_diffuse_rays_cont_b4324:
# B4324
	addi x86, x86, 1
	bne	x96, zero, trace_diffuse_rays_beqelse_b4326
# B4325
	add x4, x22, x95
	lw x20, 0(x4)
	lw x20, 6(x20)
	bne	x20, zero, trace_diffuse_rays_beqelse_b4328
# B4327
	j trace_diffuse_rays_cont_b4366 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4328:
# B4328
	j	trace_diffuse_rays_loop_b4287
trace_diffuse_rays_beqelse_b4326:
# B4326
	lw x97, 0(x91)
	fle x98, x97, zero
	bne	x98, zero, trace_diffuse_rays_beqelse_b4329
# B4330
	lw x98, 0(x19)
	fle x98, x98, x97
	bne	x98, zero, trace_diffuse_rays_beqelse_b4331
# B4332
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
	j	trace_diffuse_rays_loop_b4333
trace_diffuse_rays_bneelse_b4360:	#moved
# B4360
	addi x101, x101, 1
trace_diffuse_rays_loop_b4333:
# B4333
	add x4, x102, x101
	lw x106, 0(x4)
	bne	x106, x87, trace_diffuse_rays_beqelse_b4335
# B4334
	li x101, 1
	j trace_diffuse_rays_cont_b4362 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4335:
# B4335
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
	bne	x110, x100, trace_diffuse_rays_beqelse_b4337
# B4336
	fabs x107, x107
	lw x110, 4(x106)
	lw x110, 0(x110)
	fle x107, x110, x107
	beq	x107, zero, trace_diffuse_rays_bneelse_b4339
# B4338
	mv x107, zero
	j trace_diffuse_rays_cont_b4342 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4339:
# B4339
	fabs x107, x108
	lw x108, 4(x106)
	lw x108, 1(x108)
	fle x107, x108, x107
	beq	x107, zero, trace_diffuse_rays_bneelse_b4341
# B4340
	mv x107, zero
	j trace_diffuse_rays_cont_b4342 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4341:
# B4341
	fabs x107, x109
	lw x108, 4(x106)
	lw x108, 2(x108)
	fle x107, x108, x107
	xori x107, x107, 1
trace_diffuse_rays_cont_b4342:
# B4342
	bne	x107, zero, trace_diffuse_rays_beqelse_b4344
# B4343
	lw x106, 6(x106)
	xori x106, x106, 1
	j trace_diffuse_rays_cont_b4359 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4344:
# B4344
	lw x106, 6(x106)
	j trace_diffuse_rays_cont_b4359 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4337:
# B4337
	bne	x110, x11, trace_diffuse_rays_beqelse_b4346
# B4345
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
	bne	x106, zero, trace_diffuse_rays_beqelse_b4348
# B4347
	mv x106, x107
	j trace_diffuse_rays_cont_b4349 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4348:
# B4348
	xori x106, x107, 1
trace_diffuse_rays_cont_b4349:
# B4349
	xori x106, x106, 1
	j trace_diffuse_rays_cont_b4359 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4346:
# B4346
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
	bne	x111, zero, trace_diffuse_rays_beqelse_b4351
# B4350
	mv x107, x110
	j trace_diffuse_rays_cont_b4352 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4351:
# B4351
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
trace_diffuse_rays_cont_b4352:
# B4352
	lw x108, 1(x106)
	bne	x108, x89, trace_diffuse_rays_beqelse_b4354
# B4353
	fsub x107, x107, x9
	j trace_diffuse_rays_cont_b4355 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4354:
# B4354
trace_diffuse_rays_cont_b4355:
# B4355
	lw x106, 6(x106)
	fle x107, zero, x107
	xori x107, x107, 1
	bne	x106, zero, trace_diffuse_rays_beqelse_b4357
# B4356
	mv x106, x107
	j trace_diffuse_rays_cont_b4358 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4357:
# B4357
	xori x106, x107, 1
trace_diffuse_rays_cont_b4358:
# B4358
	xori x106, x106, 1
trace_diffuse_rays_cont_b4359:
# B4359
	beq	x106, zero, trace_diffuse_rays_bneelse_b4360
# B4361
	mv x101, zero
trace_diffuse_rays_cont_b4362:
# B4362
	beq	x101, zero, trace_diffuse_rays_bneelse_b4363
# B4364
	sw x97, 0(x19)
	sw x98, 0(x23)
	sw x99, 1(x23)
	sw x20, 2(x23)
	sw x95, 0(x24)
	sw x96, 0(x25)
trace_diffuse_rays_bneelse_b4363:
# B4363
trace_diffuse_rays_beqelse_b4331:
# B4331
trace_diffuse_rays_beqelse_b4329:
# B4329
trace_diffuse_rays_cont_b4365:
# B4365
	j	trace_diffuse_rays_loop_b4287
trace_diffuse_rays_bneelse_b4288:
# B4288
trace_diffuse_rays_cont_b4366:
# B4366
	addi x20, x88, 1
	mv x88, x20
	j	trace_diffuse_rays_loop_b4284
trace_diffuse_rays_bneelse_b4285:
# B4285
trace_diffuse_rays_beqelse_b4282:
# B4282
trace_diffuse_rays_bneelse_b4280:
# B4280
trace_diffuse_rays_cont_b4367:
# B4367
	addi x20, x83, 1
	mv x83, x20
	j	trace_diffuse_rays_loop_b4157
trace_diffuse_rays_bneelse_b4158:
# B4158
# B4368
	lw x19, 0(x19)
	fle x20, x19, x26
	beq	x20, zero, trace_diffuse_rays_bneelse_b4370
# B4369
	mv x19, zero
	j trace_diffuse_rays_cont_b4371 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4370:
# B4370
	fle x19, x27, x19
	xori x19, x19, 1
trace_diffuse_rays_cont_b4371:
# B4371
	beq	x19, zero, trace_diffuse_rays_bneelse_b4372
# B4373
	lw x19, 0(x24)
	add x4, x88, x19
	lw x19, 0(x4)
	lw x18, 0(x18)
	lw x20, 1(x19)
	bne	x20, x100, trace_diffuse_rays_beqelse_b4375
# B4374
	lw x20, 0(x25)
	sw zero, 0(x28)
	sw zero, 1(x28)
	sw zero, 2(x28)
	addi x20, x20, -1
	add x4, x18, x20
	lw x18, 0(x4)
	feq x22, x18, zero
	bne	x22, zero, trace_diffuse_rays_beqelse_b4377
# B4376
	fle x18, x18, zero
	beq	x18, zero, trace_diffuse_rays_bneelse_b4379
# B4378
	mv x18, x30
	j trace_diffuse_rays_cont_b4380 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4379:
# B4379
	mv x18, x9
	j trace_diffuse_rays_cont_b4380 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4377:
# B4377
	mv x18, zero
trace_diffuse_rays_cont_b4380:
# B4380
	fsub x18, zero, x18
	add x4, x28, x20
	sw x18, 0(x4)
	j trace_diffuse_rays_cont_b4391 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4375:
# B4375
	bne	x20, x11, trace_diffuse_rays_beqelse_b4382
# B4381
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
	j trace_diffuse_rays_cont_b4391 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4382:
# B4382
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
	bne	x83, zero, trace_diffuse_rays_beqelse_b4384
# B4383
	sw x24, 0(x28)
	sw x25, 1(x28)
	sw x27, 2(x28)
	j trace_diffuse_rays_cont_b4385 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4384:
# B4384
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
trace_diffuse_rays_cont_b4385:
# B4385
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
	bne	x22, zero, trace_diffuse_rays_beqelse_b4387
# B4386
	bne	x18, zero, trace_diffuse_rays_beqelse_b4389
# B4388
	fdiv x18, x9, x20
	j trace_diffuse_rays_cont_b4390 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4389:
# B4389
	fdiv x18, x30, x20
	j trace_diffuse_rays_cont_b4390 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4387:
# B4387
	mv x18, x9
trace_diffuse_rays_cont_b4390:
# B4390
	lw x20, 0(x28)
	fmul x20, x20, x18
	sw x20, 0(x28)
	lw x20, 1(x28)
	fmul x20, x20, x18
	sw x20, 1(x28)
	lw x20, 2(x28)
	fmul x18, x20, x18
	sw x18, 2(x28)
trace_diffuse_rays_cont_b4391:
# B4391
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
	bne	x18, x100, trace_diffuse_rays_beqelse_b4393
# B4392
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
	bne	x18, zero, trace_diffuse_rays_beqelse_b4395
# B4394
	bne	x20, zero, trace_diffuse_rays_beqelse_b4397
# B4396
	mv x22, x69
	j trace_diffuse_rays_cont_b4400 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4397:
# B4397
	mv x22, zero
	j trace_diffuse_rays_cont_b4400 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4395:
# B4395
	bne	x20, zero, trace_diffuse_rays_beqelse_b4399
# B4398
	mv x22, zero
	j trace_diffuse_rays_cont_b4400 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4399:
# B4399
	mv x22, x69
trace_diffuse_rays_cont_b4400:
# B4400
	sw x22, 1(x31)
	j trace_diffuse_rays_cont_b4485 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4393:
# B4393
	bne	x18, x11, trace_diffuse_rays_beqelse_b4402
# B4401
	lw x18, 1(x23)
	fmul x18, x18, x35
	fle x20, x18, zero
	xori x20, x20, 1
	fabs x18, x18
	mv x24, x36
	mv x22, x18
	j	trace_diffuse_rays_loop_b4403
trace_diffuse_rays_bneelse_b4404:	#moved
# B4404
	fmul x24, x24, x37
trace_diffuse_rays_loop_b4403:
# B4403
	fle x25, x22, x24
	beq	x25, zero, trace_diffuse_rays_bneelse_b4404
# B4405
# B4406
	mv x27, x18
	mv x29, x24
	j	trace_diffuse_rays_loop_b4407
trace_diffuse_rays_beqelse_b4411:	#moved
# B4411
	fdiv x18, x29, x37
	mv x29, x18
trace_diffuse_rays_loop_b4407:
# B4407
	fle x18, x36, x27
	beq	x18, zero, trace_diffuse_rays_bneelse_b4408
# B4409
	fle x18, x27, x29
	bne	x18, zero, trace_diffuse_rays_beqelse_b4411
# B4410
	fsub x18, x27, x29
	fdiv x22, x29, x37
	mv x27, x18
	mv x29, x22
	j	trace_diffuse_rays_loop_b4407
trace_diffuse_rays_bneelse_b4408:
# B4408
# B4412
	fle x18, x38, x27
	bne	x18, zero, trace_diffuse_rays_beqelse_b4414
# B4413
	mv x22, x27
	j trace_diffuse_rays_cont_b4415 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4414:
# B4414
	fsub x22, x27, x38
trace_diffuse_rays_cont_b4415:
# B4415
	bne	x18, zero, trace_diffuse_rays_beqelse_b4417
# B4416
	mv x18, x20
	j trace_diffuse_rays_cont_b4418 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4417:
# B4417
	xori x18, x20, 1
trace_diffuse_rays_cont_b4418:
# B4418
	fle x20, x39, x22
	bne	x20, zero, trace_diffuse_rays_beqelse_b4420
# B4419
	mv x20, x22
	j trace_diffuse_rays_cont_b4421 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4420:
# B4420
	fsub x20, x38, x22
trace_diffuse_rays_cont_b4421:
# B4421
	fle x22, x40, x20
	bne	x22, zero, trace_diffuse_rays_beqelse_b4423
# B4422
	fmul x22, x20, x20
	fmul x24, x22, x65
	fadd x24, x6, x24
	fmul x24, x22, x24
	fadd x24, x5, x24
	fmul x22, x22, x24
	fadd x22, x9, x22
	fmul x20, x20, x22
	j trace_diffuse_rays_cont_b4424 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4423:
# B4423
	fsub x20, x39, x20
	fmul x20, x20, x20
	fmul x22, x20, x68
	fadd x22, x67, x22
	fmul x22, x20, x22
	fadd x22, x66, x22
	fmul x20, x20, x22
	fadd x20, x9, x20
trace_diffuse_rays_cont_b4424:
# B4424
	fle x22, x20, zero
	beq	x18, x22, trace_diffuse_rays_bneelse_b4426
# B4425
	mv x18, x20
	j trace_diffuse_rays_cont_b4427 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4426:
# B4426
	fsub x18, zero, x20
trace_diffuse_rays_cont_b4427:
# B4427
	fmul x18, x18, x18
	fmul x20, x69, x18
	sw x20, 0(x31)
	fsub x18, x9, x18
	fmul x18, x69, x18
	sw x18, 1(x31)
	j trace_diffuse_rays_cont_b4485 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4402:
# B4402
	bne	x18, x89, trace_diffuse_rays_beqelse_b4429
# B4428
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
	j	trace_diffuse_rays_loop_b4430
trace_diffuse_rays_bneelse_b4431:	#moved
# B4431
	fmul x22, x22, x37
trace_diffuse_rays_loop_b4430:
# B4430
	fle x24, x20, x22
	beq	x24, zero, trace_diffuse_rays_bneelse_b4431
# B4432
# B4433
	mv x27, x22
	mv x25, x18
	j	trace_diffuse_rays_loop_b4434
trace_diffuse_rays_beqelse_b4438:	#moved
# B4438
	fdiv x18, x27, x37
	mv x27, x18
trace_diffuse_rays_loop_b4434:
# B4434
	fle x18, x36, x25
	beq	x18, zero, trace_diffuse_rays_bneelse_b4435
# B4436
	fle x18, x25, x27
	bne	x18, zero, trace_diffuse_rays_beqelse_b4438
# B4437
	fsub x18, x25, x27
	fdiv x20, x27, x37
	mv x27, x20
	mv x25, x18
	j	trace_diffuse_rays_loop_b4434
trace_diffuse_rays_bneelse_b4435:
# B4435
# B4439
	fle x18, x38, x25
	bne	x18, zero, trace_diffuse_rays_beqelse_b4441
# B4440
	mv x20, x25
	j trace_diffuse_rays_cont_b4442 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4441:
# B4441
	fsub x20, x25, x38
trace_diffuse_rays_cont_b4442:
# B4442
	bne	x18, zero, trace_diffuse_rays_beqelse_b4444
# B4443
	mv x22, x100
	j trace_diffuse_rays_cont_b4445 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4444:
# B4444
	mv x22, zero
trace_diffuse_rays_cont_b4445:
# B4445
	fle x18, x39, x20
	bne	x18, zero, trace_diffuse_rays_beqelse_b4447
# B4446
	j trace_diffuse_rays_cont_b4448 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4447:
# B4447
	fsub x20, x38, x20
trace_diffuse_rays_cont_b4448:
# B4448
	bne	x18, zero, trace_diffuse_rays_beqelse_b4450
# B4449
	mv x18, x22
	j trace_diffuse_rays_cont_b4451 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4450:
# B4450
	xori x18, x22, 1
trace_diffuse_rays_cont_b4451:
# B4451
	fle x22, x40, x20
	bne	x22, zero, trace_diffuse_rays_beqelse_b4453
# B4452
	fmul x20, x20, x20
	fmul x22, x20, x68
	fadd x22, x67, x22
	fmul x22, x20, x22
	fadd x22, x66, x22
	fmul x20, x20, x22
	fadd x20, x9, x20
	j trace_diffuse_rays_cont_b4454 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4453:
# B4453
	fsub x20, x39, x20
	fmul x22, x20, x20
	fmul x24, x22, x65
	fadd x24, x6, x24
	fmul x24, x22, x24
	fadd x24, x5, x24
	fmul x22, x22, x24
	fadd x22, x9, x22
	fmul x20, x20, x22
trace_diffuse_rays_cont_b4454:
# B4454
	fle x22, x20, zero
	beq	x18, x22, trace_diffuse_rays_bneelse_b4456
# B4455
	mv x18, x20
	j trace_diffuse_rays_cont_b4457 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4456:
# B4456
	fsub x18, zero, x20
trace_diffuse_rays_cont_b4457:
# B4457
	fmul x18, x18, x18
	fmul x20, x18, x69
	sw x20, 1(x31)
	fsub x18, x9, x18
	fmul x18, x18, x69
	sw x18, 2(x31)
	j trace_diffuse_rays_cont_b4485 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4429:
# B4429
	bne	x18, x70, trace_diffuse_rays_beqelse_b4459
# B4458
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
	beq	x24, zero, trace_diffuse_rays_bneelse_b4461
# B4460
	fdiv x18, x20, x18
	fabs x18, x18
	fle x20, x18, zero
	xori x20, x20, 1
	fabs x24, x18
	fle x25, x72, x24
	bne	x25, zero, trace_diffuse_rays_beqelse_b4463
# B4462
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
	j trace_diffuse_rays_cont_b4469 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4463:
# B4463
	fle x18, x79, x24
	bne	x18, zero, trace_diffuse_rays_beqelse_b4465
# B4464
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
	j trace_diffuse_rays_cont_b4466 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4465:
# B4465
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
trace_diffuse_rays_cont_b4466:
# B4466
	bne	x20, zero, trace_diffuse_rays_beqelse_b4468
# B4467
	fsub x18, zero, x18
	j trace_diffuse_rays_cont_b4469 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4468:
# B4468
trace_diffuse_rays_cont_b4469:
# B4469
	fmul x18, x18, x8
	fdiv x18, x18, x7
	j trace_diffuse_rays_cont_b4470 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4461:
# B4461
	lui x18, 268032
trace_diffuse_rays_cont_b4470:
# B4470
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
	beq	x24, zero, trace_diffuse_rays_bneelse_b4472
# B4471
	fdiv x20, x20, x22
	fabs x20, x20
	fle x22, x20, zero
	xori x22, x22, 1
	fabs x24, x20
	fle x25, x72, x24
	bne	x25, zero, trace_diffuse_rays_beqelse_b4474
# B4473
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
	j trace_diffuse_rays_cont_b4480 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4474:
# B4474
	fle x20, x79, x24
	bne	x20, zero, trace_diffuse_rays_beqelse_b4476
# B4475
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
	j trace_diffuse_rays_cont_b4477 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4476:
# B4476
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
trace_diffuse_rays_cont_b4477:
# B4477
	bne	x22, zero, trace_diffuse_rays_beqelse_b4479
# B4478
	fsub x20, zero, x20
	j trace_diffuse_rays_cont_b4480 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4479:
# B4479
trace_diffuse_rays_cont_b4480:
# B4480
	fmul x20, x20, x8
	fdiv x20, x20, x7
	j trace_diffuse_rays_cont_b4481 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4472:
# B4472
	lui x20, 268032
trace_diffuse_rays_cont_b4481:
# B4481
	floor x22, x20
	fsub x20, x20, x22
	fsub x18, x29, x18
	fmul x18, x18, x18
	fsub x18, x80, x18
	fsub x20, x29, x20
	fmul x20, x20, x20
	fsub x18, x18, x20
	fle x20, zero, x18
	beq	x20, zero, trace_diffuse_rays_bneelse_b4483
# B4482
	mv x22, x18
	j trace_diffuse_rays_cont_b4484 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4483:
# B4483
	mv x22, zero
trace_diffuse_rays_cont_b4484:
# B4484
	fmul x18, x69, x22
	fdiv x18, x18, x81
	sw x18, 2(x31)
trace_diffuse_rays_beqelse_b4459:
# B4459
trace_diffuse_rays_cont_b4485:
# B4485
	lw x18, 0(x21)
	mv x21, x18
	mv x20, zero
	j	trace_diffuse_rays_loop_b4486
trace_diffuse_rays_bneelse_b4721:	#moved
# B4721
trace_diffuse_rays_loop_b4486:
# B4486
	add x4, x21, x20
	lw x18, 0(x4)
	lw x22, 0(x18)
	li x24, -1
	la x25, min_caml_light
	bne	x22, x24, trace_diffuse_rays_beqelse_b4488
# B4487
	mv x18, zero
	j trace_diffuse_rays_cont_b4723 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4488:
# B4488
	li x27, 99
	bne	x22, x27, trace_diffuse_rays_beqelse_b4490
# B4489
	li x22, 1
	j trace_diffuse_rays_cont_b4628 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4490:
# B4490
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
	bne	x34, x100, trace_diffuse_rays_beqelse_b4492
# B4491
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
	beq	x36, zero, trace_diffuse_rays_bneelse_b4494
# B4493
	mv x36, zero
	j trace_diffuse_rays_cont_b4497 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4494:
# B4494
	lw x36, 2(x34)
	fmul x36, x35, x36
	fadd x36, x36, x33
	fabs x36, x36
	lw x37, 4(x29)
	lw x37, 2(x37)
	fle x36, x37, x36
	beq	x36, zero, trace_diffuse_rays_bneelse_b4496
# B4495
	mv x36, zero
	j trace_diffuse_rays_cont_b4497 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4496:
# B4496
	lw x36, 1(x22)
	feq x36, x36, zero
	xori x36, x36, 1
trace_diffuse_rays_cont_b4497:
# B4497
	bne	x36, zero, trace_diffuse_rays_beqelse_b4499
# B4498
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
	beq	x36, zero, trace_diffuse_rays_bneelse_b4501
# B4500
	mv x36, zero
	j trace_diffuse_rays_cont_b4504 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4501:
# B4501
	lw x36, 2(x34)
	fmul x36, x35, x36
	fadd x36, x36, x33
	fabs x36, x36
	lw x37, 4(x29)
	lw x37, 2(x37)
	fle x36, x37, x36
	beq	x36, zero, trace_diffuse_rays_bneelse_b4503
# B4502
	mv x36, zero
	j trace_diffuse_rays_cont_b4504 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4503:
# B4503
	lw x36, 3(x22)
	feq x36, x36, zero
	xori x36, x36, 1
trace_diffuse_rays_cont_b4504:
# B4504
	bne	x36, zero, trace_diffuse_rays_beqelse_b4506
# B4505
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
	beq	x30, zero, trace_diffuse_rays_bneelse_b4508
# B4507
	mv x22, zero
	j trace_diffuse_rays_cont_b4511 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4508:
# B4508
	lw x30, 1(x34)
	fmul x30, x33, x30
	fadd x30, x30, x32
	fabs x30, x30
	lw x29, 4(x29)
	lw x29, 1(x29)
	fle x29, x29, x30
	beq	x29, zero, trace_diffuse_rays_bneelse_b4510
# B4509
	mv x22, zero
	j trace_diffuse_rays_cont_b4511 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4510:
# B4510
	lw x22, 5(x22)
	feq x22, x22, zero
	xori x22, x22, 1
trace_diffuse_rays_cont_b4511:
# B4511
	bne	x22, zero, trace_diffuse_rays_beqelse_b4513
# B4512
	mv x22, zero
	j trace_diffuse_rays_cont_b4531 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4513:
# B4513
	la x22, min_caml_solver_dist
	sw x33, 0(x22)
	li x22, 3
	j trace_diffuse_rays_cont_b4531 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4506:
# B4506
	la x22, min_caml_solver_dist
	sw x35, 0(x22)
	li x22, 2
	j trace_diffuse_rays_cont_b4531 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4499:
# B4499
	la x22, min_caml_solver_dist
	sw x35, 0(x22)
	li x22, 1
	j trace_diffuse_rays_cont_b4531 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4492:
# B4492
	bne	x34, x11, trace_diffuse_rays_beqelse_b4515
# B4514
	lw x29, 0(x22)
	fle x29, zero, x29
	beq	x29, zero, trace_diffuse_rays_bneelse_b4517
# B4516
	mv x22, zero
	j trace_diffuse_rays_cont_b4531 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4517:
# B4517
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
	li x22, 1
	j trace_diffuse_rays_cont_b4531 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4515:
# B4515
	lw x34, 0(x22)
	feq x35, x34, zero
	bne	x35, zero, trace_diffuse_rays_beqelse_b4519
# B4518
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
	bne	x38, zero, trace_diffuse_rays_beqelse_b4521
# B4520
	mv x30, x37
	j trace_diffuse_rays_cont_b4522 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4521:
# B4521
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
trace_diffuse_rays_cont_b4522:
# B4522
	lw x32, 1(x29)
	bne	x32, x36, trace_diffuse_rays_beqelse_b4524
# B4523
	lui x32, 260096
	fsub x30, x30, x32
	j trace_diffuse_rays_cont_b4525 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4524:
# B4524
trace_diffuse_rays_cont_b4525:
# B4525
	fmul x32, x35, x35
	fmul x30, x34, x30
	fsub x30, x32, x30
	fle x32, x30, zero
	beq	x32, zero, trace_diffuse_rays_bneelse_b4527
# B4526
	mv x22, zero
	j trace_diffuse_rays_cont_b4531 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4527:
# B4527
	lw x29, 6(x29)
	bne	x29, zero, trace_diffuse_rays_beqelse_b4529
# B4528
	la x29, min_caml_solver_dist
	fsqrt x30, x30
	fsub x30, x35, x30
	lw x22, 4(x22)
	fmul x22, x30, x22
	sw x22, 0(x29)
	j trace_diffuse_rays_cont_b4530 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4529:
# B4529
	la x29, min_caml_solver_dist
	fsqrt x30, x30
	fadd x30, x35, x30
	lw x22, 4(x22)
	fmul x22, x30, x22
	sw x22, 0(x29)
trace_diffuse_rays_cont_b4530:
# B4530
	li x22, 1
	j trace_diffuse_rays_cont_b4531 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4519:
# B4519
	mv x22, zero
trace_diffuse_rays_cont_b4531:
# B4531
	bne	x22, zero, trace_diffuse_rays_beqelse_b4533
# B4532
	mv x22, zero
	j trace_diffuse_rays_cont_b4628 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4533:
# B4533
	la x22, min_caml_solver_dist
	lw x29, 0(x22)
	fle x29, x26, x29
	beq	x29, zero, trace_diffuse_rays_bneelse_b4535
# B4534
	mv x22, zero
	j trace_diffuse_rays_cont_b4628 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4535:
# B4535
	mv x32, x18
	mv x30, x100
	j	trace_diffuse_rays_loop_b4536
trace_diffuse_rays_bneelse_b4623:	#moved
# B4623
	addi x29, x30, 1
	mv x30, x29
trace_diffuse_rays_loop_b4536:
# B4536
	add x4, x32, x30
	lw x29, 0(x4)
	bne	x29, x24, trace_diffuse_rays_beqelse_b4538
# B4537
	mv x29, zero
	j trace_diffuse_rays_cont_b4625 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4538:
# B4538
	la x33, min_caml_and_net
	add x4, x33, x29
	lw x29, 0(x4)
	mv x34, x29
	mv x33, zero
	j	trace_diffuse_rays_loop_b4539
trace_diffuse_rays_bneelse_b4620:	#moved
# B4620
trace_diffuse_rays_loop_b4539:
# B4539
	add x4, x34, x33
	lw x29, 0(x4)
	bne	x29, x24, trace_diffuse_rays_beqelse_b4541
# B4540
	mv x29, zero
	j trace_diffuse_rays_cont_b4622 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4541:
# B4541
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
	bne	x40, x100, trace_diffuse_rays_beqelse_b4543
# B4542
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
	beq	x6, zero, trace_diffuse_rays_bneelse_b4545
# B4544
	mv x6, zero
	j trace_diffuse_rays_cont_b4548 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4545:
# B4545
	lw x6, 2(x40)
	fmul x6, x5, x6
	fadd x6, x6, x38
	fabs x6, x6
	lw x65, 4(x35)
	lw x65, 2(x65)
	fle x6, x65, x6
	beq	x6, zero, trace_diffuse_rays_bneelse_b4547
# B4546
	mv x6, zero
	j trace_diffuse_rays_cont_b4548 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4547:
# B4547
	lw x6, 1(x39)
	feq x6, x6, zero
	xori x6, x6, 1
trace_diffuse_rays_cont_b4548:
# B4548
	bne	x6, zero, trace_diffuse_rays_beqelse_b4550
# B4549
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
	beq	x6, zero, trace_diffuse_rays_bneelse_b4552
# B4551
	mv x6, zero
	j trace_diffuse_rays_cont_b4555 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4552:
# B4552
	lw x6, 2(x40)
	fmul x6, x5, x6
	fadd x6, x6, x38
	fabs x6, x6
	lw x65, 4(x35)
	lw x65, 2(x65)
	fle x6, x65, x6
	beq	x6, zero, trace_diffuse_rays_bneelse_b4554
# B4553
	mv x6, zero
	j trace_diffuse_rays_cont_b4555 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4554:
# B4554
	lw x6, 3(x39)
	feq x6, x6, zero
	xori x6, x6, 1
trace_diffuse_rays_cont_b4555:
# B4555
	bne	x6, zero, trace_diffuse_rays_beqelse_b4557
# B4556
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
	beq	x36, zero, trace_diffuse_rays_bneelse_b4559
# B4558
	mv x35, zero
	j trace_diffuse_rays_cont_b4562 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4559:
# B4559
	lw x36, 1(x40)
	fmul x36, x38, x36
	fadd x36, x36, x37
	fabs x36, x36
	lw x35, 4(x35)
	lw x35, 1(x35)
	fle x35, x35, x36
	beq	x35, zero, trace_diffuse_rays_bneelse_b4561
# B4560
	mv x35, zero
	j trace_diffuse_rays_cont_b4562 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4561:
# B4561
	lw x35, 5(x39)
	feq x35, x35, zero
	xori x35, x35, 1
trace_diffuse_rays_cont_b4562:
# B4562
	bne	x35, zero, trace_diffuse_rays_beqelse_b4564
# B4563
	mv x35, zero
	j trace_diffuse_rays_cont_b4582 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4564:
# B4564
	sw x38, 0(x22)
	li x35, 3
	j trace_diffuse_rays_cont_b4582 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4557:
# B4557
	sw x5, 0(x22)
	li x35, 2
	j trace_diffuse_rays_cont_b4582 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4550:
# B4550
	sw x5, 0(x22)
	li x35, 1
	j trace_diffuse_rays_cont_b4582 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4543:
# B4543
	bne	x40, x11, trace_diffuse_rays_beqelse_b4566
# B4565
	lw x35, 0(x39)
	fle x35, zero, x35
	beq	x35, zero, trace_diffuse_rays_bneelse_b4568
# B4567
	mv x35, zero
	j trace_diffuse_rays_cont_b4582 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4568:
# B4568
	lw x35, 1(x39)
	fmul x35, x35, x36
	lw x36, 2(x39)
	fmul x36, x36, x37
	fadd x35, x35, x36
	lw x36, 3(x39)
	fmul x36, x36, x38
	fadd x35, x35, x36
	sw x35, 0(x22)
	li x35, 1
	j trace_diffuse_rays_cont_b4582 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4566:
# B4566
	lw x40, 0(x39)
	feq x5, x40, zero
	bne	x5, zero, trace_diffuse_rays_beqelse_b4570
# B4569
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
	bne	x66, zero, trace_diffuse_rays_beqelse_b4572
# B4571
	mv x36, x65
	j trace_diffuse_rays_cont_b4573 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4572:
# B4572
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
trace_diffuse_rays_cont_b4573:
# B4573
	lw x37, 1(x35)
	bne	x37, x6, trace_diffuse_rays_beqelse_b4575
# B4574
	lui x37, 260096
	fsub x36, x36, x37
	j trace_diffuse_rays_cont_b4576 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4575:
# B4575
trace_diffuse_rays_cont_b4576:
# B4576
	fmul x37, x5, x5
	fmul x36, x40, x36
	fsub x36, x37, x36
	fle x37, x36, zero
	beq	x37, zero, trace_diffuse_rays_bneelse_b4578
# B4577
	mv x35, zero
	j trace_diffuse_rays_cont_b4582 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4578:
# B4578
	lw x35, 6(x35)
	bne	x35, zero, trace_diffuse_rays_beqelse_b4580
# B4579
	fsqrt x35, x36
	fsub x35, x5, x35
	lw x36, 4(x39)
	fmul x35, x35, x36
	sw x35, 0(x22)
	j trace_diffuse_rays_cont_b4581 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4580:
# B4580
	fsqrt x35, x36
	fadd x35, x5, x35
	lw x36, 4(x39)
	fmul x35, x35, x36
	sw x35, 0(x22)
trace_diffuse_rays_cont_b4581:
# B4581
	li x35, 1
	j trace_diffuse_rays_cont_b4582 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4570:
# B4570
	mv x35, zero
trace_diffuse_rays_cont_b4582:
# B4582
	lw x36, 0(x22)
	bne	x35, zero, trace_diffuse_rays_beqelse_b4584
# B4583
	mv x35, zero
	j trace_diffuse_rays_cont_b4585 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4584:
# B4584
	lui x35, 779469
	addi x35, x35, -819
	fle x35, x35, x36
	xori x35, x35, 1
trace_diffuse_rays_cont_b4585:
# B4585
	addi x33, x33, 1
	bne	x35, zero, trace_diffuse_rays_beqelse_b4587
# B4586
	add x4, x88, x29
	lw x29, 0(x4)
	lw x29, 6(x29)
	bne	x29, zero, trace_diffuse_rays_beqelse_b4589
# B4588
	mv x29, zero
	j trace_diffuse_rays_cont_b4622 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4589:
# B4589
	j	trace_diffuse_rays_loop_b4539
trace_diffuse_rays_beqelse_b4587:
# B4587
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
	j	trace_diffuse_rays_loop_b4590
trace_diffuse_rays_bneelse_b4617:	#moved
# B4617
	addi x29, x35, 1
	mv x35, x29
trace_diffuse_rays_loop_b4590:
# B4590
	add x4, x38, x35
	lw x29, 0(x4)
	bne	x29, x24, trace_diffuse_rays_beqelse_b4592
# B4591
	li x29, 1
	j trace_diffuse_rays_cont_b4619 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4592:
# B4592
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
	bne	x65, x100, trace_diffuse_rays_beqelse_b4594
# B4593
	fabs x36, x36
	lw x65, 4(x29)
	lw x65, 0(x65)
	fle x36, x65, x36
	beq	x36, zero, trace_diffuse_rays_bneelse_b4596
# B4595
	mv x36, zero
	j trace_diffuse_rays_cont_b4599 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4596:
# B4596
	fabs x36, x37
	lw x37, 4(x29)
	lw x37, 1(x37)
	fle x36, x37, x36
	beq	x36, zero, trace_diffuse_rays_bneelse_b4598
# B4597
	mv x36, zero
	j trace_diffuse_rays_cont_b4599 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4598:
# B4598
	fabs x36, x6
	lw x37, 4(x29)
	lw x37, 2(x37)
	fle x36, x37, x36
	xori x36, x36, 1
trace_diffuse_rays_cont_b4599:
# B4599
	bne	x36, zero, trace_diffuse_rays_beqelse_b4601
# B4600
	lw x29, 6(x29)
	xori x29, x29, 1
	j trace_diffuse_rays_cont_b4616 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4601:
# B4601
	lw x29, 6(x29)
	j trace_diffuse_rays_cont_b4616 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4594:
# B4594
	bne	x65, x11, trace_diffuse_rays_beqelse_b4603
# B4602
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
	bne	x29, zero, trace_diffuse_rays_beqelse_b4605
# B4604
	mv x29, x36
	j trace_diffuse_rays_cont_b4606 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4605:
# B4605
	xori x29, x36, 1
trace_diffuse_rays_cont_b4606:
# B4606
	xori x29, x29, 1
	j trace_diffuse_rays_cont_b4616 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4603:
# B4603
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
	bne	x66, zero, trace_diffuse_rays_beqelse_b4608
# B4607
	mv x36, x65
	j trace_diffuse_rays_cont_b4609 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4608:
# B4608
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
trace_diffuse_rays_cont_b4609:
# B4609
	lw x37, 1(x29)
	li x6, 3
	bne	x37, x6, trace_diffuse_rays_beqelse_b4611
# B4610
	lui x37, 260096
	fsub x36, x36, x37
	j trace_diffuse_rays_cont_b4612 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4611:
# B4611
trace_diffuse_rays_cont_b4612:
# B4612
	lw x29, 6(x29)
	fle x36, zero, x36
	xori x36, x36, 1
	bne	x29, zero, trace_diffuse_rays_beqelse_b4614
# B4613
	mv x29, x36
	j trace_diffuse_rays_cont_b4615 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4614:
# B4614
	xori x29, x36, 1
trace_diffuse_rays_cont_b4615:
# B4615
	xori x29, x29, 1
trace_diffuse_rays_cont_b4616:
# B4616
	beq	x29, zero, trace_diffuse_rays_bneelse_b4617
# B4618
	mv x29, zero
trace_diffuse_rays_cont_b4619:
# B4619
	beq	x29, zero, trace_diffuse_rays_bneelse_b4620
# B4621
	mv x29, x100
trace_diffuse_rays_cont_b4622:
# B4622
	beq	x29, zero, trace_diffuse_rays_bneelse_b4623
# B4624
	mv x29, x100
trace_diffuse_rays_cont_b4625:
# B4625
	bne	x29, zero, trace_diffuse_rays_beqelse_b4627
# B4626
	mv x22, zero
	j trace_diffuse_rays_cont_b4628 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4627:
# B4627
	mv x22, x100
trace_diffuse_rays_cont_b4628:
# B4628
	addi x20, x20, 1
	beq	x22, zero, trace_diffuse_rays_bneelse_b4629
# B4630
	mv x27, x100
	mv x29, x18
	j	trace_diffuse_rays_loop_b4631
trace_diffuse_rays_bneelse_b4718:	#moved
# B4718
	addi x18, x27, 1
	mv x27, x18
trace_diffuse_rays_loop_b4631:
# B4631
	add x4, x29, x27
	lw x18, 0(x4)
	bne	x18, x24, trace_diffuse_rays_beqelse_b4633
# B4632
	mv x18, zero
	j trace_diffuse_rays_cont_b4720 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4633:
# B4633
	la x22, min_caml_and_net
	add x4, x22, x18
	lw x18, 0(x4)
	mv x30, x18
	mv x22, zero
	j	trace_diffuse_rays_loop_b4634
trace_diffuse_rays_bneelse_b4715:	#moved
# B4715
trace_diffuse_rays_loop_b4634:
# B4634
	add x4, x30, x22
	lw x18, 0(x4)
	bne	x18, x24, trace_diffuse_rays_beqelse_b4636
# B4635
	mv x18, zero
	j trace_diffuse_rays_cont_b4717 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4636:
# B4636
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
	bne	x38, x100, trace_diffuse_rays_beqelse_b4638
# B4637
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
	beq	x39, zero, trace_diffuse_rays_bneelse_b4640
# B4639
	mv x39, zero
	j trace_diffuse_rays_cont_b4643 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4640:
# B4640
	lw x39, 2(x32)
	fmul x39, x38, x39
	fadd x39, x39, x36
	fabs x39, x39
	lw x40, 4(x33)
	lw x40, 2(x40)
	fle x39, x40, x39
	beq	x39, zero, trace_diffuse_rays_bneelse_b4642
# B4641
	mv x39, zero
	j trace_diffuse_rays_cont_b4643 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4642:
# B4642
	lw x39, 1(x37)
	feq x39, x39, zero
	xori x39, x39, 1
trace_diffuse_rays_cont_b4643:
# B4643
	bne	x39, zero, trace_diffuse_rays_beqelse_b4645
# B4644
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
	beq	x39, zero, trace_diffuse_rays_bneelse_b4647
# B4646
	mv x39, zero
	j trace_diffuse_rays_cont_b4650 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4647:
# B4647
	lw x39, 2(x32)
	fmul x39, x38, x39
	fadd x39, x39, x36
	fabs x39, x39
	lw x40, 4(x33)
	lw x40, 2(x40)
	fle x39, x40, x39
	beq	x39, zero, trace_diffuse_rays_bneelse_b4649
# B4648
	mv x39, zero
	j trace_diffuse_rays_cont_b4650 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4649:
# B4649
	lw x39, 3(x37)
	feq x39, x39, zero
	xori x39, x39, 1
trace_diffuse_rays_cont_b4650:
# B4650
	bne	x39, zero, trace_diffuse_rays_beqelse_b4652
# B4651
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
	beq	x34, zero, trace_diffuse_rays_bneelse_b4654
# B4653
	mv x32, zero
	j trace_diffuse_rays_cont_b4657 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4654:
# B4654
	lw x32, 1(x32)
	fmul x32, x36, x32
	fadd x32, x32, x35
	fabs x32, x32
	lw x33, 4(x33)
	lw x33, 1(x33)
	fle x32, x33, x32
	beq	x32, zero, trace_diffuse_rays_bneelse_b4656
# B4655
	mv x32, zero
	j trace_diffuse_rays_cont_b4657 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4656:
# B4656
	lw x32, 5(x37)
	feq x32, x32, zero
	xori x32, x32, 1
trace_diffuse_rays_cont_b4657:
# B4657
	bne	x32, zero, trace_diffuse_rays_beqelse_b4659
# B4658
	mv x32, zero
	j trace_diffuse_rays_cont_b4677 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4659:
# B4659
	la x32, min_caml_solver_dist
	sw x36, 0(x32)
	li x32, 3
	j trace_diffuse_rays_cont_b4677 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4652:
# B4652
	la x32, min_caml_solver_dist
	sw x38, 0(x32)
	li x32, 2
	j trace_diffuse_rays_cont_b4677 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4645:
# B4645
	la x32, min_caml_solver_dist
	sw x38, 0(x32)
	li x32, 1
	j trace_diffuse_rays_cont_b4677 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4638:
# B4638
	bne	x38, x11, trace_diffuse_rays_beqelse_b4661
# B4660
	lw x32, 0(x37)
	fle x32, zero, x32
	beq	x32, zero, trace_diffuse_rays_bneelse_b4663
# B4662
	mv x32, zero
	j trace_diffuse_rays_cont_b4677 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4663:
# B4663
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
	li x32, 1
	j trace_diffuse_rays_cont_b4677 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4661:
# B4661
	lw x32, 0(x37)
	feq x38, x32, zero
	bne	x38, zero, trace_diffuse_rays_beqelse_b4665
# B4664
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
	bne	x5, zero, trace_diffuse_rays_beqelse_b4667
# B4666
	mv x34, x40
	j trace_diffuse_rays_cont_b4668 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4667:
# B4667
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
trace_diffuse_rays_cont_b4668:
# B4668
	lw x35, 1(x33)
	bne	x35, x39, trace_diffuse_rays_beqelse_b4670
# B4669
	lui x35, 260096
	fsub x34, x34, x35
	j trace_diffuse_rays_cont_b4671 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4670:
# B4670
trace_diffuse_rays_cont_b4671:
# B4671
	fmul x35, x38, x38
	fmul x32, x32, x34
	fsub x32, x35, x32
	fle x34, x32, zero
	beq	x34, zero, trace_diffuse_rays_bneelse_b4673
# B4672
	mv x32, zero
	j trace_diffuse_rays_cont_b4677 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4673:
# B4673
	lw x33, 6(x33)
	bne	x33, zero, trace_diffuse_rays_beqelse_b4675
# B4674
	la x33, min_caml_solver_dist
	fsqrt x32, x32
	fsub x32, x38, x32
	lw x34, 4(x37)
	fmul x32, x32, x34
	sw x32, 0(x33)
	j trace_diffuse_rays_cont_b4676 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4675:
# B4675
	la x33, min_caml_solver_dist
	fsqrt x32, x32
	fadd x32, x38, x32
	lw x34, 4(x37)
	fmul x32, x32, x34
	sw x32, 0(x33)
trace_diffuse_rays_cont_b4676:
# B4676
	li x32, 1
	j trace_diffuse_rays_cont_b4677 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4665:
# B4665
	mv x32, zero
trace_diffuse_rays_cont_b4677:
# B4677
	la x33, min_caml_solver_dist
	lw x33, 0(x33)
	bne	x32, zero, trace_diffuse_rays_beqelse_b4679
# B4678
	mv x32, zero
	j trace_diffuse_rays_cont_b4680 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4679:
# B4679
	lui x32, 779469
	addi x32, x32, -819
	fle x32, x32, x33
	xori x32, x32, 1
trace_diffuse_rays_cont_b4680:
# B4680
	addi x22, x22, 1
	bne	x32, zero, trace_diffuse_rays_beqelse_b4682
# B4681
	add x4, x88, x18
	lw x18, 0(x4)
	lw x18, 6(x18)
	bne	x18, zero, trace_diffuse_rays_beqelse_b4684
# B4683
	mv x18, zero
	j trace_diffuse_rays_cont_b4717 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4684:
# B4684
	j	trace_diffuse_rays_loop_b4634
trace_diffuse_rays_beqelse_b4682:
# B4682
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
	j	trace_diffuse_rays_loop_b4685
trace_diffuse_rays_bneelse_b4712:	#moved
# B4712
	addi x18, x34, 1
	mv x34, x18
trace_diffuse_rays_loop_b4685:
# B4685
	add x4, x35, x34
	lw x18, 0(x4)
	bne	x18, x24, trace_diffuse_rays_beqelse_b4687
# B4686
	li x18, 1
	j trace_diffuse_rays_cont_b4714 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4687:
# B4687
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
	bne	x40, x100, trace_diffuse_rays_beqelse_b4689
# B4688
	fabs x32, x32
	lw x40, 4(x18)
	lw x40, 0(x40)
	fle x32, x40, x32
	beq	x32, zero, trace_diffuse_rays_bneelse_b4691
# B4690
	mv x32, zero
	j trace_diffuse_rays_cont_b4694 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4691:
# B4691
	fabs x32, x33
	lw x33, 4(x18)
	lw x33, 1(x33)
	fle x32, x33, x32
	beq	x32, zero, trace_diffuse_rays_bneelse_b4693
# B4692
	mv x32, zero
	j trace_diffuse_rays_cont_b4694 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4693:
# B4693
	fabs x32, x39
	lw x33, 4(x18)
	lw x33, 2(x33)
	fle x32, x33, x32
	xori x32, x32, 1
trace_diffuse_rays_cont_b4694:
# B4694
	bne	x32, zero, trace_diffuse_rays_beqelse_b4696
# B4695
	lw x18, 6(x18)
	xori x18, x18, 1
	j trace_diffuse_rays_cont_b4711 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4696:
# B4696
	lw x18, 6(x18)
	j trace_diffuse_rays_cont_b4711 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4689:
# B4689
	bne	x40, x11, trace_diffuse_rays_beqelse_b4698
# B4697
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
	bne	x18, zero, trace_diffuse_rays_beqelse_b4700
# B4699
	mv x18, x32
	j trace_diffuse_rays_cont_b4701 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4700:
# B4700
	xori x18, x32, 1
trace_diffuse_rays_cont_b4701:
# B4701
	xori x18, x18, 1
	j trace_diffuse_rays_cont_b4711 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4698:
# B4698
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
	bne	x5, zero, trace_diffuse_rays_beqelse_b4703
# B4702
	mv x32, x40
	j trace_diffuse_rays_cont_b4704 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4703:
# B4703
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
trace_diffuse_rays_cont_b4704:
# B4704
	lw x33, 1(x18)
	li x39, 3
	bne	x33, x39, trace_diffuse_rays_beqelse_b4706
# B4705
	lui x33, 260096
	fsub x32, x32, x33
	j trace_diffuse_rays_cont_b4707 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4706:
# B4706
trace_diffuse_rays_cont_b4707:
# B4707
	lw x18, 6(x18)
	fle x32, zero, x32
	xori x32, x32, 1
	bne	x18, zero, trace_diffuse_rays_beqelse_b4709
# B4708
	mv x18, x32
	j trace_diffuse_rays_cont_b4710 # adhoc jump(2)
trace_diffuse_rays_beqelse_b4709:
# B4709
	xori x18, x32, 1
trace_diffuse_rays_cont_b4710:
# B4710
	xori x18, x18, 1
trace_diffuse_rays_cont_b4711:
# B4711
	beq	x18, zero, trace_diffuse_rays_bneelse_b4712
# B4713
	mv x18, zero
trace_diffuse_rays_cont_b4714:
# B4714
	beq	x18, zero, trace_diffuse_rays_bneelse_b4715
# B4716
	mv x18, x100
trace_diffuse_rays_cont_b4717:
# B4717
	beq	x18, zero, trace_diffuse_rays_bneelse_b4718
# B4719
	mv x18, x100
trace_diffuse_rays_cont_b4720:
# B4720
	beq	x18, zero, trace_diffuse_rays_bneelse_b4721
# B4722
	mv x18, x100
trace_diffuse_rays_cont_b4723:
# B4723
	bne	x18, zero, trace_diffuse_rays_beqelse_b4725
# B4724
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
	beq	x20, zero, trace_diffuse_rays_bneelse_b4727
# B4726
	mv x21, zero
	j trace_diffuse_rays_cont_b4728 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4727:
# B4727
	mv x21, x18
trace_diffuse_rays_cont_b4728:
# B4728
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
trace_diffuse_rays_beqelse_b4725:
# B4725
	j trace_diffuse_rays_cont_b4729 # adhoc jump(2)
trace_diffuse_rays_bneelse_b4629:
# B4629
	j	trace_diffuse_rays_loop_b4486
trace_diffuse_rays_bneelse_b4372:
# B4372
trace_diffuse_rays_cont_b4729:
# B4729
	addi x13, x17, -2
	mv x17, x13
	j	trace_diffuse_rays_loop_b3580
trace_diffuse_rays_bleelse_b3582:
# B3582
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
pretrace_pixels.3338:
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
body_pretrace_pixels.3338:
# B4730
	mv x106, x67
	mv x103, x7
	mv x105, x66
	mv x101, x5
	mv x102, x6
	mv x104, x65
pretrace_pixels_loop_b4731:
# B4731
	bgt	zero, x102, pretrace_pixels_bleelse_b4733
# B4732
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
	bne	x11, zero, pretrace_pixels_beqelse_b4735
# B4734
	bne	zero, zero, pretrace_pixels_beqelse_b4737
# B4736
	lui x11, 260096
	fdiv x10, x11, x10
	j pretrace_pixels_cont_b4738 # adhoc jump(2)
pretrace_pixels_beqelse_b4737:
# B4737
	fdiv x10, x13, x10
	j pretrace_pixels_cont_b4738 # adhoc jump(2)
pretrace_pixels_beqelse_b4735:
# B4735
	lui x10, 260096
pretrace_pixels_cont_b4738:
# B4738
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
	j	pretrace_pixels_loop_b4739
pretrace_pixels_bneelse_b5921:	#moved
# B5921
	lw x100, 7(x25)
	lw x100, 0(x100)
	fsub x100, x108, x100
	fmul x100, x16, x100
	lw x14, 0(x20)
	fadd x14, x19, x14
	mv x15, x21
	mv x16, x100
	mv x19, x14
pretrace_pixels_loop_b4739:
# B4739
	li x100, 4
	bgt	x15, x100, pretrace_pixels_bleelse_b4741
# B4740
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
pretrace_pixels_loop_b4742:
# B4742
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
	beq	x27, x28, pretrace_pixels_bneelse_b4743
# B4744
	li x35, 99
	lui x36, 258048
	la x37, min_caml_solver_dist
	li x38, 3
	bne	x27, x35, pretrace_pixels_beqelse_b4746
# B4745
	mv x5, x26
	mv x40, x23
	mv x39, x12
pretrace_pixels_loop_b4747:
# B4747
	add x4, x40, x39
	lw x23, 0(x4)
	beq	x23, x28, pretrace_pixels_bneelse_b4748
# B4749
	la x27, min_caml_and_net
	add x4, x27, x23
	lw x23, 0(x4)
	mv x27, zero
	mv x33, x23
	mv x34, x5
pretrace_pixels_loop_b4750:
# B4750
	add x4, x33, x27
	lw x23, 0(x4)
	beq	x23, x28, pretrace_pixels_bneelse_b4751
# B4752
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
	bne	x67, x12, pretrace_pixels_beqelse_b4754
# B4753
	lw x67, 0(x34)
	feq x67, x67, zero
	bne	x67, zero, pretrace_pixels_beqelse_b4756
# B4755
	lw x67, 4(x35)
	lw x68, 6(x35)
	lw x69, 0(x34)
	fle x69, zero, x69
	xori x69, x69, 1
	bne	x68, zero, pretrace_pixels_beqelse_b4758
# B4757
	mv x68, x69
	j pretrace_pixels_cont_b4759 # adhoc jump(2)
pretrace_pixels_beqelse_b4758:
# B4758
	xori x68, x69, 1
pretrace_pixels_cont_b4759:
# B4759
	lw x69, 0(x67)
	bne	x68, zero, pretrace_pixels_beqelse_b4761
# B4760
	fsub x68, zero, x69
	j pretrace_pixels_cont_b4762 # adhoc jump(2)
pretrace_pixels_beqelse_b4761:
# B4761
	mv x68, x69
pretrace_pixels_cont_b4762:
# B4762
	fsub x68, x68, x6
	lw x69, 0(x34)
	fdiv x68, x68, x69
	lw x69, 1(x34)
	fmul x69, x68, x69
	fadd x69, x69, x65
	fabs x69, x69
	lw x7, 1(x67)
	fle x69, x7, x69
	beq	x69, zero, pretrace_pixels_bneelse_b4764
# B4763
	mv x67, zero
	j pretrace_pixels_cont_b4767 # adhoc jump(2)
pretrace_pixels_bneelse_b4764:
# B4764
	lw x69, 2(x34)
	fmul x69, x68, x69
	fadd x69, x69, x66
	fabs x69, x69
	lw x67, 2(x67)
	fle x67, x67, x69
	beq	x67, zero, pretrace_pixels_bneelse_b4766
# B4765
	mv x67, zero
	j pretrace_pixels_cont_b4767 # adhoc jump(2)
pretrace_pixels_bneelse_b4766:
# B4766
	la x67, min_caml_solver_dist
	sw x68, 0(x67)
	li x67, 1
	j pretrace_pixels_cont_b4767 # adhoc jump(2)
pretrace_pixels_beqelse_b4756:
# B4756
	mv x67, zero
pretrace_pixels_cont_b4767:
# B4767
	bne	x67, zero, pretrace_pixels_beqelse_b4769
# B4768
	lw x67, 1(x34)
	feq x67, x67, zero
	bne	x67, zero, pretrace_pixels_beqelse_b4771
# B4770
	lw x67, 4(x35)
	lw x68, 6(x35)
	lw x69, 1(x34)
	fle x69, zero, x69
	xori x69, x69, 1
	bne	x68, zero, pretrace_pixels_beqelse_b4773
# B4772
	mv x68, x69
	j pretrace_pixels_cont_b4774 # adhoc jump(2)
pretrace_pixels_beqelse_b4773:
# B4773
	xori x68, x69, 1
pretrace_pixels_cont_b4774:
# B4774
	lw x69, 1(x67)
	bne	x68, zero, pretrace_pixels_beqelse_b4776
# B4775
	fsub x68, zero, x69
	j pretrace_pixels_cont_b4777 # adhoc jump(2)
pretrace_pixels_beqelse_b4776:
# B4776
	mv x68, x69
pretrace_pixels_cont_b4777:
# B4777
	fsub x68, x68, x65
	lw x69, 1(x34)
	fdiv x68, x68, x69
	lw x69, 2(x34)
	fmul x69, x68, x69
	fadd x69, x69, x66
	fabs x69, x69
	lw x7, 2(x67)
	fle x69, x7, x69
	beq	x69, zero, pretrace_pixels_bneelse_b4779
# B4778
	mv x67, zero
	j pretrace_pixels_cont_b4782 # adhoc jump(2)
pretrace_pixels_bneelse_b4779:
# B4779
	lw x69, 0(x34)
	fmul x69, x68, x69
	fadd x69, x69, x6
	fabs x69, x69
	lw x67, 0(x67)
	fle x67, x67, x69
	beq	x67, zero, pretrace_pixels_bneelse_b4781
# B4780
	mv x67, zero
	j pretrace_pixels_cont_b4782 # adhoc jump(2)
pretrace_pixels_bneelse_b4781:
# B4781
	la x67, min_caml_solver_dist
	sw x68, 0(x67)
	li x67, 1
	j pretrace_pixels_cont_b4782 # adhoc jump(2)
pretrace_pixels_beqelse_b4771:
# B4771
	mv x67, zero
pretrace_pixels_cont_b4782:
# B4782
	bne	x67, zero, pretrace_pixels_beqelse_b4784
# B4783
	lw x67, 2(x34)
	feq x67, x67, zero
	bne	x67, zero, pretrace_pixels_beqelse_b4786
# B4785
	lw x67, 4(x35)
	lw x35, 6(x35)
	lw x68, 2(x34)
	fle x68, zero, x68
	xori x68, x68, 1
	bne	x35, zero, pretrace_pixels_beqelse_b4788
# B4787
	mv x35, x68
	j pretrace_pixels_cont_b4789 # adhoc jump(2)
pretrace_pixels_beqelse_b4788:
# B4788
	xori x35, x68, 1
pretrace_pixels_cont_b4789:
# B4789
	lw x68, 2(x67)
	bne	x35, zero, pretrace_pixels_beqelse_b4791
# B4790
	fsub x35, zero, x68
	j pretrace_pixels_cont_b4792 # adhoc jump(2)
pretrace_pixels_beqelse_b4791:
# B4791
	mv x35, x68
pretrace_pixels_cont_b4792:
# B4792
	fsub x35, x35, x66
	lw x66, 2(x34)
	fdiv x35, x35, x66
	lw x66, 0(x34)
	fmul x66, x35, x66
	fadd x6, x66, x6
	fabs x6, x6
	lw x66, 0(x67)
	fle x6, x66, x6
	beq	x6, zero, pretrace_pixels_bneelse_b4794
# B4793
	mv x35, zero
	j pretrace_pixels_cont_b4797 # adhoc jump(2)
pretrace_pixels_bneelse_b4794:
# B4794
	lw x6, 1(x34)
	fmul x6, x35, x6
	fadd x6, x6, x65
	fabs x6, x6
	lw x65, 1(x67)
	fle x6, x65, x6
	beq	x6, zero, pretrace_pixels_bneelse_b4796
# B4795
	mv x35, zero
	j pretrace_pixels_cont_b4797 # adhoc jump(2)
pretrace_pixels_bneelse_b4796:
# B4796
	la x6, min_caml_solver_dist
	sw x35, 0(x6)
	li x35, 1
	j pretrace_pixels_cont_b4797 # adhoc jump(2)
pretrace_pixels_beqelse_b4786:
# B4786
	mv x35, zero
pretrace_pixels_cont_b4797:
# B4797
	bne	x35, zero, pretrace_pixels_beqelse_b4799
# B4798
	mv x35, zero
	j pretrace_pixels_cont_b4823 # adhoc jump(2)
pretrace_pixels_beqelse_b4799:
# B4799
	li x35, 3
	j pretrace_pixels_cont_b4823 # adhoc jump(2)
pretrace_pixels_beqelse_b4784:
# B4784
	li x35, 2
	j pretrace_pixels_cont_b4823 # adhoc jump(2)
pretrace_pixels_beqelse_b4769:
# B4769
	li x35, 1
	j pretrace_pixels_cont_b4823 # adhoc jump(2)
pretrace_pixels_beqelse_b4754:
# B4754
	bne	x67, x107, pretrace_pixels_beqelse_b4801
# B4800
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
	beq	x68, zero, pretrace_pixels_bneelse_b4803
# B4802
	mv x35, zero
	j pretrace_pixels_cont_b4823 # adhoc jump(2)
pretrace_pixels_bneelse_b4803:
# B4803
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
	j pretrace_pixels_cont_b4823 # adhoc jump(2)
pretrace_pixels_beqelse_b4801:
# B4801
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
	bne	x70, zero, pretrace_pixels_beqelse_b4805
# B4804
	mv x67, x7
	j pretrace_pixels_cont_b4806 # adhoc jump(2)
pretrace_pixels_beqelse_b4805:
# B4805
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
pretrace_pixels_cont_b4806:
# B4806
	feq x68, x67, zero
	bne	x68, zero, pretrace_pixels_beqelse_b4808
# B4807
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
	bne	x71, zero, pretrace_pixels_beqelse_b4810
# B4809
	mv x68, x70
	j pretrace_pixels_cont_b4811 # adhoc jump(2)
pretrace_pixels_beqelse_b4810:
# B4810
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
pretrace_pixels_cont_b4811:
# B4811
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
	bne	x7, zero, pretrace_pixels_beqelse_b4813
# B4812
	mv x6, x69
	j pretrace_pixels_cont_b4814 # adhoc jump(2)
pretrace_pixels_beqelse_b4813:
# B4813
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
pretrace_pixels_cont_b4814:
# B4814
	lw x65, 1(x35)
	li x66, 3
	bne	x65, x66, pretrace_pixels_beqelse_b4816
# B4815
	fsub x6, x6, x108
	j pretrace_pixels_cont_b4817 # adhoc jump(2)
pretrace_pixels_beqelse_b4816:
# B4816
pretrace_pixels_cont_b4817:
# B4817
	fmul x65, x68, x68
	fmul x6, x67, x6
	fsub x6, x65, x6
	fle x65, x6, zero
	beq	x65, zero, pretrace_pixels_bneelse_b4819
# B4818
	mv x35, zero
	j pretrace_pixels_cont_b4823 # adhoc jump(2)
pretrace_pixels_bneelse_b4819:
# B4819
	fsqrt x6, x6
	lw x35, 6(x35)
	bne	x35, zero, pretrace_pixels_beqelse_b4821
# B4820
	fsub x35, zero, x6
	j pretrace_pixels_cont_b4822 # adhoc jump(2)
pretrace_pixels_beqelse_b4821:
# B4821
	mv x35, x6
pretrace_pixels_cont_b4822:
# B4822
	la x6, min_caml_solver_dist
	fsub x35, x35, x68
	fdiv x35, x35, x67
	sw x35, 0(x6)
	li x35, 1
	j pretrace_pixels_cont_b4823 # adhoc jump(2)
pretrace_pixels_beqelse_b4808:
# B4808
	mv x35, zero
pretrace_pixels_cont_b4823:
# B4823
	addi x27, x27, 1
	bne	x35, zero, pretrace_pixels_beqelse_b4825
# B4824
	add x4, x29, x23
	lw x23, 0(x4)
	lw x23, 6(x23)
	bne	x23, zero, pretrace_pixels_beqelse_b4827
# B4826
	j pretrace_pixels_cont_b4865 # adhoc jump(2)
pretrace_pixels_beqelse_b4827:
# B4827
	j	pretrace_pixels_loop_b4750
pretrace_pixels_beqelse_b4825:
# B4825
	lw x6, 0(x37)
	fle x65, x6, zero
	bne	x65, zero, pretrace_pixels_beqelse_b4828
# B4829
	lw x65, 0(x20)
	fle x65, x65, x6
	bne	x65, zero, pretrace_pixels_beqelse_b4830
# B4831
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
	j	pretrace_pixels_loop_b4832
pretrace_pixels_bneelse_b4859:	#moved
# B4859
	addi x68, x68, 1
pretrace_pixels_loop_b4832:
# B4832
	add x4, x69, x68
	lw x72, 0(x4)
	bne	x72, x28, pretrace_pixels_beqelse_b4834
# B4833
	li x68, 1
	j pretrace_pixels_cont_b4861 # adhoc jump(2)
pretrace_pixels_beqelse_b4834:
# B4834
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
	bne	x76, x12, pretrace_pixels_beqelse_b4836
# B4835
	fabs x73, x73
	lw x76, 4(x72)
	lw x76, 0(x76)
	fle x73, x76, x73
	beq	x73, zero, pretrace_pixels_bneelse_b4838
# B4837
	mv x73, zero
	j pretrace_pixels_cont_b4841 # adhoc jump(2)
pretrace_pixels_bneelse_b4838:
# B4838
	fabs x73, x74
	lw x74, 4(x72)
	lw x74, 1(x74)
	fle x73, x74, x73
	beq	x73, zero, pretrace_pixels_bneelse_b4840
# B4839
	mv x73, zero
	j pretrace_pixels_cont_b4841 # adhoc jump(2)
pretrace_pixels_bneelse_b4840:
# B4840
	fabs x73, x75
	lw x74, 4(x72)
	lw x74, 2(x74)
	fle x73, x74, x73
	xori x73, x73, 1
pretrace_pixels_cont_b4841:
# B4841
	bne	x73, zero, pretrace_pixels_beqelse_b4843
# B4842
	lw x72, 6(x72)
	xori x72, x72, 1
	j pretrace_pixels_cont_b4858 # adhoc jump(2)
pretrace_pixels_beqelse_b4843:
# B4843
	lw x72, 6(x72)
	j pretrace_pixels_cont_b4858 # adhoc jump(2)
pretrace_pixels_beqelse_b4836:
# B4836
	bne	x76, x107, pretrace_pixels_beqelse_b4845
# B4844
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
	bne	x72, zero, pretrace_pixels_beqelse_b4847
# B4846
	mv x72, x73
	j pretrace_pixels_cont_b4848 # adhoc jump(2)
pretrace_pixels_beqelse_b4847:
# B4847
	xori x72, x73, 1
pretrace_pixels_cont_b4848:
# B4848
	xori x72, x72, 1
	j pretrace_pixels_cont_b4858 # adhoc jump(2)
pretrace_pixels_beqelse_b4845:
# B4845
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
	bne	x77, zero, pretrace_pixels_beqelse_b4850
# B4849
	mv x73, x76
	j pretrace_pixels_cont_b4851 # adhoc jump(2)
pretrace_pixels_beqelse_b4850:
# B4850
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
pretrace_pixels_cont_b4851:
# B4851
	lw x74, 1(x72)
	bne	x74, x38, pretrace_pixels_beqelse_b4853
# B4852
	fsub x73, x73, x108
	j pretrace_pixels_cont_b4854 # adhoc jump(2)
pretrace_pixels_beqelse_b4853:
# B4853
pretrace_pixels_cont_b4854:
# B4854
	lw x72, 6(x72)
	fle x73, zero, x73
	xori x73, x73, 1
	bne	x72, zero, pretrace_pixels_beqelse_b4856
# B4855
	mv x72, x73
	j pretrace_pixels_cont_b4857 # adhoc jump(2)
pretrace_pixels_beqelse_b4856:
# B4856
	xori x72, x73, 1
pretrace_pixels_cont_b4857:
# B4857
	xori x72, x72, 1
pretrace_pixels_cont_b4858:
# B4858
	beq	x72, zero, pretrace_pixels_bneelse_b4859
# B4860
	mv x68, zero
pretrace_pixels_cont_b4861:
# B4861
	beq	x68, zero, pretrace_pixels_bneelse_b4862
# B4863
	sw x6, 0(x20)
	sw x65, 0(x30)
	sw x66, 1(x30)
	sw x67, 2(x30)
	sw x23, 0(x31)
	sw x35, 0(x32)
pretrace_pixels_bneelse_b4862:
# B4862
pretrace_pixels_beqelse_b4830:
# B4830
pretrace_pixels_beqelse_b4828:
# B4828
pretrace_pixels_cont_b4864:
# B4864
	j	pretrace_pixels_loop_b4750
pretrace_pixels_bneelse_b4751:
# B4751
pretrace_pixels_cont_b4865:
# B4865
	addi x23, x39, 1
	mv x39, x23
	j	pretrace_pixels_loop_b4747
pretrace_pixels_bneelse_b4748:
# B4748
	j pretrace_pixels_cont_b5060 # adhoc jump(2)
pretrace_pixels_beqelse_b4746:
# B4746
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
	bne	x5, x12, pretrace_pixels_beqelse_b4867
# B4866
	lw x36, 0(x26)
	feq x36, x36, zero
	bne	x36, zero, pretrace_pixels_beqelse_b4869
# B4868
	lw x36, 4(x27)
	lw x5, 6(x27)
	lw x6, 0(x26)
	fle x6, zero, x6
	xori x6, x6, 1
	bne	x5, zero, pretrace_pixels_beqelse_b4871
# B4870
	mv x5, x6
	j pretrace_pixels_cont_b4872 # adhoc jump(2)
pretrace_pixels_beqelse_b4871:
# B4871
	xori x5, x6, 1
pretrace_pixels_cont_b4872:
# B4872
	lw x6, 0(x36)
	bne	x5, zero, pretrace_pixels_beqelse_b4874
# B4873
	fsub x5, zero, x6
	j pretrace_pixels_cont_b4875 # adhoc jump(2)
pretrace_pixels_beqelse_b4874:
# B4874
	mv x5, x6
pretrace_pixels_cont_b4875:
# B4875
	fsub x5, x5, x35
	lw x6, 0(x26)
	fdiv x5, x5, x6
	lw x6, 1(x26)
	fmul x6, x5, x6
	fadd x6, x6, x39
	fabs x6, x6
	lw x65, 1(x36)
	fle x6, x65, x6
	beq	x6, zero, pretrace_pixels_bneelse_b4877
# B4876
	mv x36, zero
	j pretrace_pixels_cont_b4880 # adhoc jump(2)
pretrace_pixels_bneelse_b4877:
# B4877
	lw x6, 2(x26)
	fmul x6, x5, x6
	fadd x6, x6, x40
	fabs x6, x6
	lw x36, 2(x36)
	fle x36, x36, x6
	beq	x36, zero, pretrace_pixels_bneelse_b4879
# B4878
	mv x36, zero
	j pretrace_pixels_cont_b4880 # adhoc jump(2)
pretrace_pixels_bneelse_b4879:
# B4879
	sw x5, 0(x37)
	mv x36, x12
	j pretrace_pixels_cont_b4880 # adhoc jump(2)
pretrace_pixels_beqelse_b4869:
# B4869
	mv x36, zero
pretrace_pixels_cont_b4880:
# B4880
	bne	x36, zero, pretrace_pixels_beqelse_b4882
# B4881
	lw x36, 1(x26)
	feq x36, x36, zero
	bne	x36, zero, pretrace_pixels_beqelse_b4884
# B4883
	lw x36, 4(x27)
	lw x5, 6(x27)
	lw x6, 1(x26)
	fle x6, zero, x6
	xori x6, x6, 1
	bne	x5, zero, pretrace_pixels_beqelse_b4886
# B4885
	mv x5, x6
	j pretrace_pixels_cont_b4887 # adhoc jump(2)
pretrace_pixels_beqelse_b4886:
# B4886
	xori x5, x6, 1
pretrace_pixels_cont_b4887:
# B4887
	lw x6, 1(x36)
	bne	x5, zero, pretrace_pixels_beqelse_b4889
# B4888
	fsub x5, zero, x6
	j pretrace_pixels_cont_b4890 # adhoc jump(2)
pretrace_pixels_beqelse_b4889:
# B4889
	mv x5, x6
pretrace_pixels_cont_b4890:
# B4890
	fsub x5, x5, x39
	lw x6, 1(x26)
	fdiv x5, x5, x6
	lw x6, 2(x26)
	fmul x6, x5, x6
	fadd x6, x6, x40
	fabs x6, x6
	lw x65, 2(x36)
	fle x6, x65, x6
	beq	x6, zero, pretrace_pixels_bneelse_b4892
# B4891
	mv x36, zero
	j pretrace_pixels_cont_b4895 # adhoc jump(2)
pretrace_pixels_bneelse_b4892:
# B4892
	lw x6, 0(x26)
	fmul x6, x5, x6
	fadd x6, x6, x35
	fabs x6, x6
	lw x36, 0(x36)
	fle x36, x36, x6
	beq	x36, zero, pretrace_pixels_bneelse_b4894
# B4893
	mv x36, zero
	j pretrace_pixels_cont_b4895 # adhoc jump(2)
pretrace_pixels_bneelse_b4894:
# B4894
	sw x5, 0(x37)
	mv x36, x12
	j pretrace_pixels_cont_b4895 # adhoc jump(2)
pretrace_pixels_beqelse_b4884:
# B4884
	mv x36, zero
pretrace_pixels_cont_b4895:
# B4895
	bne	x36, zero, pretrace_pixels_beqelse_b4897
# B4896
	lw x36, 2(x26)
	feq x36, x36, zero
	bne	x36, zero, pretrace_pixels_beqelse_b4899
# B4898
	lw x36, 4(x27)
	lw x27, 6(x27)
	lw x5, 2(x26)
	fle x5, zero, x5
	xori x5, x5, 1
	bne	x27, zero, pretrace_pixels_beqelse_b4901
# B4900
	mv x27, x5
	j pretrace_pixels_cont_b4902 # adhoc jump(2)
pretrace_pixels_beqelse_b4901:
# B4901
	xori x27, x5, 1
pretrace_pixels_cont_b4902:
# B4902
	lw x5, 2(x36)
	bne	x27, zero, pretrace_pixels_beqelse_b4904
# B4903
	fsub x27, zero, x5
	j pretrace_pixels_cont_b4905 # adhoc jump(2)
pretrace_pixels_beqelse_b4904:
# B4904
	mv x27, x5
pretrace_pixels_cont_b4905:
# B4905
	fsub x27, x27, x40
	lw x40, 2(x26)
	fdiv x27, x27, x40
	lw x40, 0(x26)
	fmul x40, x27, x40
	fadd x35, x40, x35
	fabs x35, x35
	lw x40, 0(x36)
	fle x35, x40, x35
	beq	x35, zero, pretrace_pixels_bneelse_b4907
# B4906
	mv x27, zero
	j pretrace_pixels_cont_b4910 # adhoc jump(2)
pretrace_pixels_bneelse_b4907:
# B4907
	lw x35, 1(x26)
	fmul x35, x27, x35
	fadd x35, x35, x39
	fabs x35, x35
	lw x36, 1(x36)
	fle x35, x36, x35
	beq	x35, zero, pretrace_pixels_bneelse_b4909
# B4908
	mv x27, zero
	j pretrace_pixels_cont_b4910 # adhoc jump(2)
pretrace_pixels_bneelse_b4909:
# B4909
	sw x27, 0(x37)
	mv x27, x12
	j pretrace_pixels_cont_b4910 # adhoc jump(2)
pretrace_pixels_beqelse_b4899:
# B4899
	mv x27, zero
pretrace_pixels_cont_b4910:
# B4910
	bne	x27, zero, pretrace_pixels_beqelse_b4912
# B4911
	mv x38, zero
	j pretrace_pixels_cont_b4936 # adhoc jump(2)
pretrace_pixels_beqelse_b4912:
# B4912
	j pretrace_pixels_cont_b4936 # adhoc jump(2)
pretrace_pixels_beqelse_b4897:
# B4897
	mv x38, x107
	j pretrace_pixels_cont_b4936 # adhoc jump(2)
pretrace_pixels_beqelse_b4882:
# B4882
	mv x38, x12
	j pretrace_pixels_cont_b4936 # adhoc jump(2)
pretrace_pixels_beqelse_b4867:
# B4867
	bne	x5, x107, pretrace_pixels_beqelse_b4914
# B4913
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
	beq	x38, zero, pretrace_pixels_bneelse_b4916
# B4915
	mv x38, zero
	j pretrace_pixels_cont_b4936 # adhoc jump(2)
pretrace_pixels_bneelse_b4916:
# B4916
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
	j pretrace_pixels_cont_b4936 # adhoc jump(2)
pretrace_pixels_beqelse_b4914:
# B4914
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
	bne	x67, zero, pretrace_pixels_beqelse_b4918
# B4917
	mv x5, x66
	j pretrace_pixels_cont_b4919 # adhoc jump(2)
pretrace_pixels_beqelse_b4918:
# B4918
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
pretrace_pixels_cont_b4919:
# B4919
	feq x6, x5, zero
	bne	x6, zero, pretrace_pixels_beqelse_b4921
# B4920
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
	bne	x68, zero, pretrace_pixels_beqelse_b4923
# B4922
	mv x36, x67
	j pretrace_pixels_cont_b4924 # adhoc jump(2)
pretrace_pixels_beqelse_b4923:
# B4923
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
pretrace_pixels_cont_b4924:
# B4924
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
	bne	x65, zero, pretrace_pixels_beqelse_b4926
# B4925
	mv x35, x6
	j pretrace_pixels_cont_b4927 # adhoc jump(2)
pretrace_pixels_beqelse_b4926:
# B4926
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
pretrace_pixels_cont_b4927:
# B4927
	lw x39, 1(x27)
	bne	x39, x38, pretrace_pixels_beqelse_b4929
# B4928
	fsub x35, x35, x108
	j pretrace_pixels_cont_b4930 # adhoc jump(2)
pretrace_pixels_beqelse_b4929:
# B4929
pretrace_pixels_cont_b4930:
# B4930
	fmul x38, x36, x36
	fmul x35, x5, x35
	fsub x35, x38, x35
	fle x38, x35, zero
	beq	x38, zero, pretrace_pixels_bneelse_b4932
# B4931
	mv x38, zero
	j pretrace_pixels_cont_b4936 # adhoc jump(2)
pretrace_pixels_bneelse_b4932:
# B4932
	fsqrt x35, x35
	lw x27, 6(x27)
	bne	x27, zero, pretrace_pixels_beqelse_b4934
# B4933
	fsub x27, zero, x35
	j pretrace_pixels_cont_b4935 # adhoc jump(2)
pretrace_pixels_beqelse_b4934:
# B4934
	mv x27, x35
pretrace_pixels_cont_b4935:
# B4935
	fsub x27, x27, x36
	fdiv x27, x27, x5
	sw x27, 0(x37)
	mv x38, x12
	j pretrace_pixels_cont_b4936 # adhoc jump(2)
pretrace_pixels_beqelse_b4921:
# B4921
	mv x38, zero
pretrace_pixels_cont_b4936:
# B4936
	beq	x38, zero, pretrace_pixels_bneelse_b4937
# B4938
	lw x27, 0(x37)
	lw x35, 0(x20)
	fle x27, x35, x27
	bne	x27, zero, pretrace_pixels_beqelse_b4939
# B4940
	mv x38, x26
	mv x35, x12
	mv x36, x23
pretrace_pixels_loop_b4941:
# B4941
	add x4, x36, x35
	lw x23, 0(x4)
	beq	x23, x28, pretrace_pixels_bneelse_b4942
# B4943
	la x27, min_caml_and_net
	add x4, x27, x23
	lw x23, 0(x4)
	mv x27, zero
	mv x40, x38
	mv x39, x23
pretrace_pixels_loop_b4944:
# B4944
	add x4, x39, x27
	lw x23, 0(x4)
	beq	x23, x28, pretrace_pixels_bneelse_b4945
# B4946
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
	bne	x67, x12, pretrace_pixels_beqelse_b4948
# B4947
	lw x67, 0(x40)
	feq x67, x67, zero
	bne	x67, zero, pretrace_pixels_beqelse_b4950
# B4949
	lw x67, 4(x5)
	lw x68, 6(x5)
	lw x69, 0(x40)
	fle x69, zero, x69
	xori x69, x69, 1
	bne	x68, zero, pretrace_pixels_beqelse_b4952
# B4951
	mv x68, x69
	j pretrace_pixels_cont_b4953 # adhoc jump(2)
pretrace_pixels_beqelse_b4952:
# B4952
	xori x68, x69, 1
pretrace_pixels_cont_b4953:
# B4953
	lw x69, 0(x67)
	bne	x68, zero, pretrace_pixels_beqelse_b4955
# B4954
	fsub x68, zero, x69
	j pretrace_pixels_cont_b4956 # adhoc jump(2)
pretrace_pixels_beqelse_b4955:
# B4955
	mv x68, x69
pretrace_pixels_cont_b4956:
# B4956
	fsub x68, x68, x6
	lw x69, 0(x40)
	fdiv x68, x68, x69
	lw x69, 1(x40)
	fmul x69, x68, x69
	fadd x69, x69, x65
	fabs x69, x69
	lw x7, 1(x67)
	fle x69, x7, x69
	beq	x69, zero, pretrace_pixels_bneelse_b4958
# B4957
	mv x67, zero
	j pretrace_pixels_cont_b4961 # adhoc jump(2)
pretrace_pixels_bneelse_b4958:
# B4958
	lw x69, 2(x40)
	fmul x69, x68, x69
	fadd x69, x69, x66
	fabs x69, x69
	lw x67, 2(x67)
	fle x67, x67, x69
	beq	x67, zero, pretrace_pixels_bneelse_b4960
# B4959
	mv x67, zero
	j pretrace_pixels_cont_b4961 # adhoc jump(2)
pretrace_pixels_bneelse_b4960:
# B4960
	sw x68, 0(x37)
	li x67, 1
	j pretrace_pixels_cont_b4961 # adhoc jump(2)
pretrace_pixels_beqelse_b4950:
# B4950
	mv x67, zero
pretrace_pixels_cont_b4961:
# B4961
	bne	x67, zero, pretrace_pixels_beqelse_b4963
# B4962
	lw x67, 1(x40)
	feq x67, x67, zero
	bne	x67, zero, pretrace_pixels_beqelse_b4965
# B4964
	lw x67, 4(x5)
	lw x68, 6(x5)
	lw x69, 1(x40)
	fle x69, zero, x69
	xori x69, x69, 1
	bne	x68, zero, pretrace_pixels_beqelse_b4967
# B4966
	mv x68, x69
	j pretrace_pixels_cont_b4968 # adhoc jump(2)
pretrace_pixels_beqelse_b4967:
# B4967
	xori x68, x69, 1
pretrace_pixels_cont_b4968:
# B4968
	lw x69, 1(x67)
	bne	x68, zero, pretrace_pixels_beqelse_b4970
# B4969
	fsub x68, zero, x69
	j pretrace_pixels_cont_b4971 # adhoc jump(2)
pretrace_pixels_beqelse_b4970:
# B4970
	mv x68, x69
pretrace_pixels_cont_b4971:
# B4971
	fsub x68, x68, x65
	lw x69, 1(x40)
	fdiv x68, x68, x69
	lw x69, 2(x40)
	fmul x69, x68, x69
	fadd x69, x69, x66
	fabs x69, x69
	lw x7, 2(x67)
	fle x69, x7, x69
	beq	x69, zero, pretrace_pixels_bneelse_b4973
# B4972
	mv x67, zero
	j pretrace_pixels_cont_b4976 # adhoc jump(2)
pretrace_pixels_bneelse_b4973:
# B4973
	lw x69, 0(x40)
	fmul x69, x68, x69
	fadd x69, x69, x6
	fabs x69, x69
	lw x67, 0(x67)
	fle x67, x67, x69
	beq	x67, zero, pretrace_pixels_bneelse_b4975
# B4974
	mv x67, zero
	j pretrace_pixels_cont_b4976 # adhoc jump(2)
pretrace_pixels_bneelse_b4975:
# B4975
	sw x68, 0(x37)
	li x67, 1
	j pretrace_pixels_cont_b4976 # adhoc jump(2)
pretrace_pixels_beqelse_b4965:
# B4965
	mv x67, zero
pretrace_pixels_cont_b4976:
# B4976
	bne	x67, zero, pretrace_pixels_beqelse_b4978
# B4977
	lw x67, 2(x40)
	feq x67, x67, zero
	bne	x67, zero, pretrace_pixels_beqelse_b4980
# B4979
	lw x67, 4(x5)
	lw x5, 6(x5)
	lw x68, 2(x40)
	fle x68, zero, x68
	xori x68, x68, 1
	bne	x5, zero, pretrace_pixels_beqelse_b4982
# B4981
	mv x5, x68
	j pretrace_pixels_cont_b4983 # adhoc jump(2)
pretrace_pixels_beqelse_b4982:
# B4982
	xori x5, x68, 1
pretrace_pixels_cont_b4983:
# B4983
	lw x68, 2(x67)
	bne	x5, zero, pretrace_pixels_beqelse_b4985
# B4984
	fsub x5, zero, x68
	j pretrace_pixels_cont_b4986 # adhoc jump(2)
pretrace_pixels_beqelse_b4985:
# B4985
	mv x5, x68
pretrace_pixels_cont_b4986:
# B4986
	fsub x5, x5, x66
	lw x66, 2(x40)
	fdiv x5, x5, x66
	lw x66, 0(x40)
	fmul x66, x5, x66
	fadd x6, x66, x6
	fabs x6, x6
	lw x66, 0(x67)
	fle x6, x66, x6
	beq	x6, zero, pretrace_pixels_bneelse_b4988
# B4987
	mv x5, zero
	j pretrace_pixels_cont_b4991 # adhoc jump(2)
pretrace_pixels_bneelse_b4988:
# B4988
	lw x6, 1(x40)
	fmul x6, x5, x6
	fadd x6, x6, x65
	fabs x6, x6
	lw x65, 1(x67)
	fle x6, x65, x6
	beq	x6, zero, pretrace_pixels_bneelse_b4990
# B4989
	mv x5, zero
	j pretrace_pixels_cont_b4991 # adhoc jump(2)
pretrace_pixels_bneelse_b4990:
# B4990
	sw x5, 0(x37)
	li x5, 1
	j pretrace_pixels_cont_b4991 # adhoc jump(2)
pretrace_pixels_beqelse_b4980:
# B4980
	mv x5, zero
pretrace_pixels_cont_b4991:
# B4991
	bne	x5, zero, pretrace_pixels_beqelse_b4993
# B4992
	mv x5, zero
	j pretrace_pixels_cont_b5017 # adhoc jump(2)
pretrace_pixels_beqelse_b4993:
# B4993
	li x5, 3
	j pretrace_pixels_cont_b5017 # adhoc jump(2)
pretrace_pixels_beqelse_b4978:
# B4978
	li x5, 2
	j pretrace_pixels_cont_b5017 # adhoc jump(2)
pretrace_pixels_beqelse_b4963:
# B4963
	li x5, 1
	j pretrace_pixels_cont_b5017 # adhoc jump(2)
pretrace_pixels_beqelse_b4948:
# B4948
	bne	x67, x107, pretrace_pixels_beqelse_b4995
# B4994
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
	beq	x68, zero, pretrace_pixels_bneelse_b4997
# B4996
	mv x5, zero
	j pretrace_pixels_cont_b5017 # adhoc jump(2)
pretrace_pixels_bneelse_b4997:
# B4997
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
	j pretrace_pixels_cont_b5017 # adhoc jump(2)
pretrace_pixels_beqelse_b4995:
# B4995
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
	bne	x70, zero, pretrace_pixels_beqelse_b4999
# B4998
	mv x67, x7
	j pretrace_pixels_cont_b5000 # adhoc jump(2)
pretrace_pixels_beqelse_b4999:
# B4999
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
pretrace_pixels_cont_b5000:
# B5000
	feq x68, x67, zero
	bne	x68, zero, pretrace_pixels_beqelse_b5002
# B5001
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
	bne	x71, zero, pretrace_pixels_beqelse_b5004
# B5003
	mv x68, x70
	j pretrace_pixels_cont_b5005 # adhoc jump(2)
pretrace_pixels_beqelse_b5004:
# B5004
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
pretrace_pixels_cont_b5005:
# B5005
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
	bne	x7, zero, pretrace_pixels_beqelse_b5007
# B5006
	mv x6, x69
	j pretrace_pixels_cont_b5008 # adhoc jump(2)
pretrace_pixels_beqelse_b5007:
# B5007
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
pretrace_pixels_cont_b5008:
# B5008
	lw x65, 1(x5)
	li x66, 3
	bne	x65, x66, pretrace_pixels_beqelse_b5010
# B5009
	fsub x6, x6, x108
	j pretrace_pixels_cont_b5011 # adhoc jump(2)
pretrace_pixels_beqelse_b5010:
# B5010
pretrace_pixels_cont_b5011:
# B5011
	fmul x65, x68, x68
	fmul x6, x67, x6
	fsub x6, x65, x6
	fle x65, x6, zero
	beq	x65, zero, pretrace_pixels_bneelse_b5013
# B5012
	mv x5, zero
	j pretrace_pixels_cont_b5017 # adhoc jump(2)
pretrace_pixels_bneelse_b5013:
# B5013
	fsqrt x6, x6
	lw x5, 6(x5)
	bne	x5, zero, pretrace_pixels_beqelse_b5015
# B5014
	fsub x5, zero, x6
	j pretrace_pixels_cont_b5016 # adhoc jump(2)
pretrace_pixels_beqelse_b5015:
# B5015
	mv x5, x6
pretrace_pixels_cont_b5016:
# B5016
	fsub x5, x5, x68
	fdiv x5, x5, x67
	sw x5, 0(x37)
	li x5, 1
	j pretrace_pixels_cont_b5017 # adhoc jump(2)
pretrace_pixels_beqelse_b5002:
# B5002
	mv x5, zero
pretrace_pixels_cont_b5017:
# B5017
	addi x27, x27, 1
	bne	x5, zero, pretrace_pixels_beqelse_b5019
# B5018
	add x4, x29, x23
	lw x23, 0(x4)
	lw x23, 6(x23)
	bne	x23, zero, pretrace_pixels_beqelse_b5021
# B5020
	j pretrace_pixels_cont_b5059 # adhoc jump(2)
pretrace_pixels_beqelse_b5021:
# B5021
	j	pretrace_pixels_loop_b4944
pretrace_pixels_beqelse_b5019:
# B5019
	lw x6, 0(x37)
	fle x65, x6, zero
	bne	x65, zero, pretrace_pixels_beqelse_b5022
# B5023
	lw x65, 0(x20)
	fle x65, x65, x6
	bne	x65, zero, pretrace_pixels_beqelse_b5024
# B5025
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
	j	pretrace_pixels_loop_b5026
pretrace_pixels_bneelse_b5053:	#moved
# B5053
	addi x68, x68, 1
pretrace_pixels_loop_b5026:
# B5026
	add x4, x69, x68
	lw x72, 0(x4)
	bne	x72, x28, pretrace_pixels_beqelse_b5028
# B5027
	li x68, 1
	j pretrace_pixels_cont_b5055 # adhoc jump(2)
pretrace_pixels_beqelse_b5028:
# B5028
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
	bne	x76, x12, pretrace_pixels_beqelse_b5030
# B5029
	fabs x73, x73
	lw x76, 4(x72)
	lw x76, 0(x76)
	fle x73, x76, x73
	beq	x73, zero, pretrace_pixels_bneelse_b5032
# B5031
	mv x73, zero
	j pretrace_pixels_cont_b5035 # adhoc jump(2)
pretrace_pixels_bneelse_b5032:
# B5032
	fabs x73, x74
	lw x74, 4(x72)
	lw x74, 1(x74)
	fle x73, x74, x73
	beq	x73, zero, pretrace_pixels_bneelse_b5034
# B5033
	mv x73, zero
	j pretrace_pixels_cont_b5035 # adhoc jump(2)
pretrace_pixels_bneelse_b5034:
# B5034
	fabs x73, x75
	lw x74, 4(x72)
	lw x74, 2(x74)
	fle x73, x74, x73
	xori x73, x73, 1
pretrace_pixels_cont_b5035:
# B5035
	bne	x73, zero, pretrace_pixels_beqelse_b5037
# B5036
	lw x72, 6(x72)
	xori x72, x72, 1
	j pretrace_pixels_cont_b5052 # adhoc jump(2)
pretrace_pixels_beqelse_b5037:
# B5037
	lw x72, 6(x72)
	j pretrace_pixels_cont_b5052 # adhoc jump(2)
pretrace_pixels_beqelse_b5030:
# B5030
	bne	x76, x107, pretrace_pixels_beqelse_b5039
# B5038
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
	bne	x72, zero, pretrace_pixels_beqelse_b5041
# B5040
	mv x72, x73
	j pretrace_pixels_cont_b5042 # adhoc jump(2)
pretrace_pixels_beqelse_b5041:
# B5041
	xori x72, x73, 1
pretrace_pixels_cont_b5042:
# B5042
	xori x72, x72, 1
	j pretrace_pixels_cont_b5052 # adhoc jump(2)
pretrace_pixels_beqelse_b5039:
# B5039
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
	bne	x77, zero, pretrace_pixels_beqelse_b5044
# B5043
	mv x73, x76
	j pretrace_pixels_cont_b5045 # adhoc jump(2)
pretrace_pixels_beqelse_b5044:
# B5044
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
pretrace_pixels_cont_b5045:
# B5045
	lw x74, 1(x72)
	bne	x74, x34, pretrace_pixels_beqelse_b5047
# B5046
	fsub x73, x73, x108
	j pretrace_pixels_cont_b5048 # adhoc jump(2)
pretrace_pixels_beqelse_b5047:
# B5047
pretrace_pixels_cont_b5048:
# B5048
	lw x72, 6(x72)
	fle x73, zero, x73
	xori x73, x73, 1
	bne	x72, zero, pretrace_pixels_beqelse_b5050
# B5049
	mv x72, x73
	j pretrace_pixels_cont_b5051 # adhoc jump(2)
pretrace_pixels_beqelse_b5050:
# B5050
	xori x72, x73, 1
pretrace_pixels_cont_b5051:
# B5051
	xori x72, x72, 1
pretrace_pixels_cont_b5052:
# B5052
	beq	x72, zero, pretrace_pixels_bneelse_b5053
# B5054
	mv x68, zero
pretrace_pixels_cont_b5055:
# B5055
	beq	x68, zero, pretrace_pixels_bneelse_b5056
# B5057
	sw x6, 0(x20)
	sw x65, 0(x30)
	sw x66, 1(x30)
	sw x67, 2(x30)
	sw x23, 0(x31)
	sw x5, 0(x32)
pretrace_pixels_bneelse_b5056:
# B5056
pretrace_pixels_beqelse_b5024:
# B5024
pretrace_pixels_beqelse_b5022:
# B5022
pretrace_pixels_cont_b5058:
# B5058
	j	pretrace_pixels_loop_b4944
pretrace_pixels_bneelse_b4945:
# B4945
pretrace_pixels_cont_b5059:
# B5059
	addi x23, x35, 1
	mv x35, x23
	j	pretrace_pixels_loop_b4941
pretrace_pixels_bneelse_b4942:
# B4942
pretrace_pixels_beqelse_b4939:
# B4939
pretrace_pixels_bneelse_b4937:
# B4937
pretrace_pixels_cont_b5060:
# B5060
	addi x23, x24, 1
	mv x24, x23
	j	pretrace_pixels_loop_b4742
pretrace_pixels_bneelse_b4743:
# B4743
# B5061
	lw x23, 0(x20)
	lui x24, 777421
	addi x24, x24, -819
	fle x25, x23, x24
	lui x26, 314348
	addi x26, x26, -992
	beq	x25, zero, pretrace_pixels_bneelse_b5063
# B5062
	mv x23, zero
	j pretrace_pixels_cont_b5064 # adhoc jump(2)
pretrace_pixels_bneelse_b5063:
# B5063
	fle x23, x26, x23
	xori x23, x23, 1
pretrace_pixels_cont_b5064:
# B5064
	bne	x23, zero, pretrace_pixels_beqelse_b5066
# B5065
	add x4, x14, x15
	sw x28, 0(x4)
	beq	x15, zero, pretrace_pixels_bneelse_b5067
# B5068
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
	bne	x11, zero, pretrace_pixels_beqelse_b5069
# B5070
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
pretrace_pixels_beqelse_b5069:
# B5069
pretrace_pixels_bneelse_b5067:
# B5067
	j pretrace_pixels_cont_b5923 # adhoc jump(2)
pretrace_pixels_beqelse_b5066:
# B5066
	lw x23, 0(x31)
	add x4, x29, x23
	lw x25, 0(x4)
	lw x27, 2(x25)
	lw x28, 7(x25)
	lw x28, 0(x28)
	fmul x28, x28, x16
	lw x35, 1(x25)
	la x36, min_caml_nvector
	bne	x35, x12, pretrace_pixels_beqelse_b5072
# B5071
	lw x35, 0(x32)
	sw zero, 0(x36)
	sw zero, 1(x36)
	sw zero, 2(x36)
	addi x35, x35, -1
	add x4, x17, x35
	lw x37, 0(x4)
	feq x38, x37, zero
	bne	x38, zero, pretrace_pixels_beqelse_b5074
# B5073
	fle x37, x37, zero
	beq	x37, zero, pretrace_pixels_bneelse_b5076
# B5075
	mv x37, x13
	j pretrace_pixels_cont_b5077 # adhoc jump(2)
pretrace_pixels_bneelse_b5076:
# B5076
	mv x37, x108
	j pretrace_pixels_cont_b5077 # adhoc jump(2)
pretrace_pixels_beqelse_b5074:
# B5074
	mv x37, zero
pretrace_pixels_cont_b5077:
# B5077
	fsub x37, zero, x37
	add x4, x36, x35
	sw x37, 0(x4)
	j pretrace_pixels_cont_b5088 # adhoc jump(2)
pretrace_pixels_beqelse_b5072:
# B5072
	bne	x35, x107, pretrace_pixels_beqelse_b5079
# B5078
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
	j pretrace_pixels_cont_b5088 # adhoc jump(2)
pretrace_pixels_beqelse_b5079:
# B5079
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
	bne	x6, zero, pretrace_pixels_beqelse_b5081
# B5080
	sw x39, 0(x36)
	sw x40, 1(x36)
	sw x5, 2(x36)
	j pretrace_pixels_cont_b5082 # adhoc jump(2)
pretrace_pixels_beqelse_b5081:
# B5081
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
pretrace_pixels_cont_b5082:
# B5082
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
	bne	x38, zero, pretrace_pixels_beqelse_b5084
# B5083
	bne	x35, zero, pretrace_pixels_beqelse_b5086
# B5085
	fdiv x35, x108, x37
	j pretrace_pixels_cont_b5087 # adhoc jump(2)
pretrace_pixels_beqelse_b5086:
# B5086
	fdiv x35, x13, x37
	j pretrace_pixels_cont_b5087 # adhoc jump(2)
pretrace_pixels_beqelse_b5084:
# B5084
	mv x35, x108
pretrace_pixels_cont_b5087:
# B5087
	lw x37, 0(x36)
	fmul x37, x37, x35
	sw x37, 0(x36)
	lw x37, 1(x36)
	fmul x37, x37, x35
	sw x37, 1(x36)
	lw x37, 2(x36)
	fmul x35, x37, x35
	sw x35, 2(x36)
pretrace_pixels_cont_b5088:
# B5088
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
	bne	x35, x12, pretrace_pixels_beqelse_b5090
# B5089
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
	bne	x34, zero, pretrace_pixels_beqelse_b5092
# B5091
	bne	x35, zero, pretrace_pixels_beqelse_b5094
# B5093
	lui x34, 276464
	j pretrace_pixels_cont_b5097 # adhoc jump(2)
pretrace_pixels_beqelse_b5094:
# B5094
	mv x34, zero
	j pretrace_pixels_cont_b5097 # adhoc jump(2)
pretrace_pixels_beqelse_b5092:
# B5092
	bne	x35, zero, pretrace_pixels_beqelse_b5096
# B5095
	mv x34, zero
	j pretrace_pixels_cont_b5097 # adhoc jump(2)
pretrace_pixels_beqelse_b5096:
# B5096
	lui x34, 276464
pretrace_pixels_cont_b5097:
# B5097
	sw x34, 1(x37)
	j pretrace_pixels_cont_b5182 # adhoc jump(2)
pretrace_pixels_beqelse_b5090:
# B5090
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
	bne	x35, x107, pretrace_pixels_beqelse_b5099
# B5098
	lw x34, 1(x30)
	lui x35, 256000
	fmul x34, x34, x35
	fle x35, x34, zero
	xori x35, x35, 1
	fabs x34, x34
	mv x72, x39
	mv x38, x34
	j	pretrace_pixels_loop_b5100
pretrace_pixels_bneelse_b5101:	#moved
# B5101
	fmul x72, x72, x40
pretrace_pixels_loop_b5100:
# B5100
	fle x73, x38, x72
	beq	x73, zero, pretrace_pixels_bneelse_b5101
# B5102
# B5103
	mv x75, x72
	mv x74, x34
	j	pretrace_pixels_loop_b5104
pretrace_pixels_beqelse_b5108:	#moved
# B5108
	fdiv x34, x75, x40
	mv x75, x34
pretrace_pixels_loop_b5104:
# B5104
	fle x34, x39, x74
	beq	x34, zero, pretrace_pixels_bneelse_b5105
# B5106
	fle x34, x74, x75
	bne	x34, zero, pretrace_pixels_beqelse_b5108
# B5107
	fsub x34, x74, x75
	fdiv x38, x75, x40
	mv x75, x38
	mv x74, x34
	j	pretrace_pixels_loop_b5104
pretrace_pixels_bneelse_b5105:
# B5105
# B5109
	fle x34, x5, x74
	bne	x34, zero, pretrace_pixels_beqelse_b5111
# B5110
	mv x38, x74
	j pretrace_pixels_cont_b5112 # adhoc jump(2)
pretrace_pixels_beqelse_b5111:
# B5111
	fsub x38, x74, x5
pretrace_pixels_cont_b5112:
# B5112
	bne	x34, zero, pretrace_pixels_beqelse_b5114
# B5113
	mv x34, x35
	j pretrace_pixels_cont_b5115 # adhoc jump(2)
pretrace_pixels_beqelse_b5114:
# B5114
	xori x34, x35, 1
pretrace_pixels_cont_b5115:
# B5115
	fle x35, x6, x38
	bne	x35, zero, pretrace_pixels_beqelse_b5117
# B5116
	mv x35, x38
	j pretrace_pixels_cont_b5118 # adhoc jump(2)
pretrace_pixels_beqelse_b5117:
# B5117
	fsub x35, x5, x38
pretrace_pixels_cont_b5118:
# B5118
	fle x38, x65, x35
	bne	x38, zero, pretrace_pixels_beqelse_b5120
# B5119
	fmul x38, x35, x35
	fmul x39, x38, x68
	fadd x39, x67, x39
	fmul x39, x38, x39
	fadd x39, x66, x39
	fmul x38, x38, x39
	fadd x38, x108, x38
	fmul x35, x35, x38
	j pretrace_pixels_cont_b5121 # adhoc jump(2)
pretrace_pixels_beqelse_b5120:
# B5120
	fsub x35, x6, x35
	fmul x35, x35, x35
	fmul x38, x35, x70
	fadd x38, x7, x38
	fmul x38, x35, x38
	fadd x38, x69, x38
	fmul x35, x35, x38
	fadd x35, x108, x35
pretrace_pixels_cont_b5121:
# B5121
	fle x38, x35, zero
	beq	x34, x38, pretrace_pixels_bneelse_b5123
# B5122
	mv x34, x35
	j pretrace_pixels_cont_b5124 # adhoc jump(2)
pretrace_pixels_bneelse_b5123:
# B5123
	fsub x34, zero, x35
pretrace_pixels_cont_b5124:
# B5124
	fmul x34, x34, x34
	fmul x35, x71, x34
	sw x35, 0(x37)
	fsub x34, x108, x34
	fmul x34, x71, x34
	sw x34, 1(x37)
	j pretrace_pixels_cont_b5182 # adhoc jump(2)
pretrace_pixels_beqelse_b5099:
# B5099
	lui x72, 263313
	addi x72, x72, -37
	bne	x35, x34, pretrace_pixels_beqelse_b5126
# B5125
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
	j	pretrace_pixels_loop_b5127
pretrace_pixels_bneelse_b5128:	#moved
# B5128
	fmul x38, x38, x40
pretrace_pixels_loop_b5127:
# B5127
	fle x72, x35, x38
	beq	x72, zero, pretrace_pixels_bneelse_b5128
# B5129
# B5130
	mv x74, x38
	mv x73, x34
	j	pretrace_pixels_loop_b5131
pretrace_pixels_beqelse_b5135:	#moved
# B5135
	fdiv x34, x74, x40
	mv x74, x34
pretrace_pixels_loop_b5131:
# B5131
	fle x34, x39, x73
	beq	x34, zero, pretrace_pixels_bneelse_b5132
# B5133
	fle x34, x73, x74
	bne	x34, zero, pretrace_pixels_beqelse_b5135
# B5134
	fsub x34, x73, x74
	fdiv x35, x74, x40
	mv x74, x35
	mv x73, x34
	j	pretrace_pixels_loop_b5131
pretrace_pixels_bneelse_b5132:
# B5132
# B5136
	fle x34, x5, x73
	bne	x34, zero, pretrace_pixels_beqelse_b5138
# B5137
	mv x35, x73
	j pretrace_pixels_cont_b5139 # adhoc jump(2)
pretrace_pixels_beqelse_b5138:
# B5138
	fsub x35, x73, x5
pretrace_pixels_cont_b5139:
# B5139
	bne	x34, zero, pretrace_pixels_beqelse_b5141
# B5140
	mv x38, x12
	j pretrace_pixels_cont_b5142 # adhoc jump(2)
pretrace_pixels_beqelse_b5141:
# B5141
	mv x38, zero
pretrace_pixels_cont_b5142:
# B5142
	fle x34, x6, x35
	bne	x34, zero, pretrace_pixels_beqelse_b5144
# B5143
	j pretrace_pixels_cont_b5145 # adhoc jump(2)
pretrace_pixels_beqelse_b5144:
# B5144
	fsub x35, x5, x35
pretrace_pixels_cont_b5145:
# B5145
	bne	x34, zero, pretrace_pixels_beqelse_b5147
# B5146
	mv x34, x38
	j pretrace_pixels_cont_b5148 # adhoc jump(2)
pretrace_pixels_beqelse_b5147:
# B5147
	xori x34, x38, 1
pretrace_pixels_cont_b5148:
# B5148
	fle x38, x65, x35
	bne	x38, zero, pretrace_pixels_beqelse_b5150
# B5149
	fmul x35, x35, x35
	fmul x38, x35, x70
	fadd x38, x7, x38
	fmul x38, x35, x38
	fadd x38, x69, x38
	fmul x35, x35, x38
	fadd x35, x108, x35
	j pretrace_pixels_cont_b5151 # adhoc jump(2)
pretrace_pixels_beqelse_b5150:
# B5150
	fsub x35, x6, x35
	fmul x38, x35, x35
	fmul x39, x38, x68
	fadd x39, x67, x39
	fmul x39, x38, x39
	fadd x39, x66, x39
	fmul x38, x38, x39
	fadd x38, x108, x38
	fmul x35, x35, x38
pretrace_pixels_cont_b5151:
# B5151
	fle x38, x35, zero
	beq	x34, x38, pretrace_pixels_bneelse_b5153
# B5152
	mv x34, x35
	j pretrace_pixels_cont_b5154 # adhoc jump(2)
pretrace_pixels_bneelse_b5153:
# B5153
	fsub x34, zero, x35
pretrace_pixels_cont_b5154:
# B5154
	fmul x34, x34, x34
	fmul x35, x34, x71
	sw x35, 1(x37)
	fsub x34, x108, x34
	fmul x34, x34, x71
	sw x34, 2(x37)
	j pretrace_pixels_cont_b5182 # adhoc jump(2)
pretrace_pixels_beqelse_b5126:
# B5126
	bne	x35, x100, pretrace_pixels_beqelse_b5156
# B5155
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
	beq	x39, zero, pretrace_pixels_bneelse_b5158
# B5157
	fdiv x34, x35, x34
	fabs x34, x34
	fle x35, x34, zero
	xori x35, x35, 1
	fabs x39, x34
	fle x75, x5, x39
	bne	x75, zero, pretrace_pixels_beqelse_b5160
# B5159
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
	j pretrace_pixels_cont_b5166 # adhoc jump(2)
pretrace_pixels_beqelse_b5160:
# B5160
	fle x34, x73, x39
	bne	x34, zero, pretrace_pixels_beqelse_b5162
# B5161
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
	j pretrace_pixels_cont_b5163 # adhoc jump(2)
pretrace_pixels_beqelse_b5162:
# B5162
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
pretrace_pixels_cont_b5163:
# B5163
	bne	x35, zero, pretrace_pixels_beqelse_b5165
# B5164
	fsub x34, zero, x34
	j pretrace_pixels_cont_b5166 # adhoc jump(2)
pretrace_pixels_beqelse_b5165:
# B5165
pretrace_pixels_cont_b5166:
# B5166
	fmul x34, x34, x74
	fdiv x34, x34, x72
	j pretrace_pixels_cont_b5167 # adhoc jump(2)
pretrace_pixels_bneelse_b5158:
# B5158
	lui x34, 268032
pretrace_pixels_cont_b5167:
# B5167
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
	beq	x39, zero, pretrace_pixels_bneelse_b5169
# B5168
	fdiv x35, x35, x38
	fabs x35, x35
	fle x38, x35, zero
	xori x38, x38, 1
	fabs x39, x35
	fle x40, x5, x39
	bne	x40, zero, pretrace_pixels_beqelse_b5171
# B5170
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
	j pretrace_pixels_cont_b5177 # adhoc jump(2)
pretrace_pixels_beqelse_b5171:
# B5171
	fle x35, x73, x39
	bne	x35, zero, pretrace_pixels_beqelse_b5173
# B5172
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
	j pretrace_pixels_cont_b5174 # adhoc jump(2)
pretrace_pixels_beqelse_b5173:
# B5173
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
pretrace_pixels_cont_b5174:
# B5174
	bne	x38, zero, pretrace_pixels_beqelse_b5176
# B5175
	fsub x35, zero, x35
	j pretrace_pixels_cont_b5177 # adhoc jump(2)
pretrace_pixels_beqelse_b5176:
# B5176
pretrace_pixels_cont_b5177:
# B5177
	fmul x35, x35, x74
	fdiv x35, x35, x72
	j pretrace_pixels_cont_b5178 # adhoc jump(2)
pretrace_pixels_bneelse_b5169:
# B5169
	lui x35, 268032
pretrace_pixels_cont_b5178:
# B5178
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
	beq	x35, zero, pretrace_pixels_bneelse_b5180
# B5179
	mv x38, x34
	j pretrace_pixels_cont_b5181 # adhoc jump(2)
pretrace_pixels_bneelse_b5180:
# B5180
	mv x38, zero
pretrace_pixels_cont_b5181:
# B5181
	fmul x34, x71, x38
	lui x35, 256410
	addi x35, x35, -1638
	fdiv x34, x34, x35
	sw x34, 2(x37)
pretrace_pixels_beqelse_b5156:
# B5156
pretrace_pixels_cont_b5182:
# B5182
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
	beq	x33, zero, pretrace_pixels_bneelse_b5184
# B5183
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
	j pretrace_pixels_cont_b5185 # adhoc jump(2)
pretrace_pixels_bneelse_b5184:
# B5184
	add x4, x23, x15
	sw zero, 0(x4)
pretrace_pixels_cont_b5185:
# B5185
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
	j	pretrace_pixels_loop_b5186
pretrace_pixels_bneelse_b5421:	#moved
# B5421
pretrace_pixels_loop_b5186:
# B5186
	add x4, x35, x34
	lw x33, 0(x4)
	lw x38, 0(x33)
	li x39, -1
	la x40, min_caml_light
	bne	x38, x39, pretrace_pixels_beqelse_b5188
# B5187
	mv x33, zero
	j pretrace_pixels_cont_b5423 # adhoc jump(2)
pretrace_pixels_beqelse_b5188:
# B5188
	li x5, 99
	bne	x38, x5, pretrace_pixels_beqelse_b5190
# B5189
	li x38, 1
	j pretrace_pixels_cont_b5328 # adhoc jump(2)
pretrace_pixels_beqelse_b5190:
# B5190
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
	bne	x68, x12, pretrace_pixels_beqelse_b5192
# B5191
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
	beq	x7, zero, pretrace_pixels_bneelse_b5194
# B5193
	mv x7, zero
	j pretrace_pixels_cont_b5197 # adhoc jump(2)
pretrace_pixels_bneelse_b5194:
# B5194
	lw x7, 2(x68)
	fmul x7, x69, x7
	fadd x7, x7, x67
	fabs x7, x7
	lw x70, 4(x6)
	lw x70, 2(x70)
	fle x7, x70, x7
	beq	x7, zero, pretrace_pixels_bneelse_b5196
# B5195
	mv x7, zero
	j pretrace_pixels_cont_b5197 # adhoc jump(2)
pretrace_pixels_bneelse_b5196:
# B5196
	lw x7, 1(x38)
	feq x7, x7, zero
	xori x7, x7, 1
pretrace_pixels_cont_b5197:
# B5197
	bne	x7, zero, pretrace_pixels_beqelse_b5199
# B5198
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
	beq	x7, zero, pretrace_pixels_bneelse_b5201
# B5200
	mv x7, zero
	j pretrace_pixels_cont_b5204 # adhoc jump(2)
pretrace_pixels_bneelse_b5201:
# B5201
	lw x7, 2(x68)
	fmul x7, x69, x7
	fadd x7, x7, x67
	fabs x7, x7
	lw x70, 4(x6)
	lw x70, 2(x70)
	fle x7, x70, x7
	beq	x7, zero, pretrace_pixels_bneelse_b5203
# B5202
	mv x7, zero
	j pretrace_pixels_cont_b5204 # adhoc jump(2)
pretrace_pixels_bneelse_b5203:
# B5203
	lw x7, 3(x38)
	feq x7, x7, zero
	xori x7, x7, 1
pretrace_pixels_cont_b5204:
# B5204
	bne	x7, zero, pretrace_pixels_beqelse_b5206
# B5205
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
	beq	x65, zero, pretrace_pixels_bneelse_b5208
# B5207
	mv x38, zero
	j pretrace_pixels_cont_b5211 # adhoc jump(2)
pretrace_pixels_bneelse_b5208:
# B5208
	lw x65, 1(x68)
	fmul x65, x67, x65
	fadd x65, x65, x66
	fabs x65, x65
	lw x6, 4(x6)
	lw x6, 1(x6)
	fle x6, x6, x65
	beq	x6, zero, pretrace_pixels_bneelse_b5210
# B5209
	mv x38, zero
	j pretrace_pixels_cont_b5211 # adhoc jump(2)
pretrace_pixels_bneelse_b5210:
# B5210
	lw x38, 5(x38)
	feq x38, x38, zero
	xori x38, x38, 1
pretrace_pixels_cont_b5211:
# B5211
	bne	x38, zero, pretrace_pixels_beqelse_b5213
# B5212
	mv x38, zero
	j pretrace_pixels_cont_b5231 # adhoc jump(2)
pretrace_pixels_beqelse_b5213:
# B5213
	la x38, min_caml_solver_dist
	sw x67, 0(x38)
	li x38, 3
	j pretrace_pixels_cont_b5231 # adhoc jump(2)
pretrace_pixels_beqelse_b5206:
# B5206
	la x38, min_caml_solver_dist
	sw x69, 0(x38)
	li x38, 2
	j pretrace_pixels_cont_b5231 # adhoc jump(2)
pretrace_pixels_beqelse_b5199:
# B5199
	la x38, min_caml_solver_dist
	sw x69, 0(x38)
	li x38, 1
	j pretrace_pixels_cont_b5231 # adhoc jump(2)
pretrace_pixels_beqelse_b5192:
# B5192
	bne	x68, x107, pretrace_pixels_beqelse_b5215
# B5214
	lw x6, 0(x38)
	fle x6, zero, x6
	beq	x6, zero, pretrace_pixels_bneelse_b5217
# B5216
	mv x38, zero
	j pretrace_pixels_cont_b5231 # adhoc jump(2)
pretrace_pixels_bneelse_b5217:
# B5217
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
	li x38, 1
	j pretrace_pixels_cont_b5231 # adhoc jump(2)
pretrace_pixels_beqelse_b5215:
# B5215
	lw x68, 0(x38)
	feq x69, x68, zero
	bne	x69, zero, pretrace_pixels_beqelse_b5219
# B5218
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
	bne	x71, zero, pretrace_pixels_beqelse_b5221
# B5220
	mv x65, x70
	j pretrace_pixels_cont_b5222 # adhoc jump(2)
pretrace_pixels_beqelse_b5221:
# B5221
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
pretrace_pixels_cont_b5222:
# B5222
	lw x66, 1(x6)
	bne	x66, x7, pretrace_pixels_beqelse_b5224
# B5223
	fsub x65, x65, x108
	j pretrace_pixels_cont_b5225 # adhoc jump(2)
pretrace_pixels_beqelse_b5224:
# B5224
pretrace_pixels_cont_b5225:
# B5225
	fmul x66, x69, x69
	fmul x65, x68, x65
	fsub x65, x66, x65
	fle x66, x65, zero
	beq	x66, zero, pretrace_pixels_bneelse_b5227
# B5226
	mv x38, zero
	j pretrace_pixels_cont_b5231 # adhoc jump(2)
pretrace_pixels_bneelse_b5227:
# B5227
	lw x6, 6(x6)
	bne	x6, zero, pretrace_pixels_beqelse_b5229
# B5228
	la x6, min_caml_solver_dist
	fsqrt x65, x65
	fsub x65, x69, x65
	lw x38, 4(x38)
	fmul x38, x65, x38
	sw x38, 0(x6)
	j pretrace_pixels_cont_b5230 # adhoc jump(2)
pretrace_pixels_beqelse_b5229:
# B5229
	la x6, min_caml_solver_dist
	fsqrt x65, x65
	fadd x65, x69, x65
	lw x38, 4(x38)
	fmul x38, x65, x38
	sw x38, 0(x6)
pretrace_pixels_cont_b5230:
# B5230
	li x38, 1
	j pretrace_pixels_cont_b5231 # adhoc jump(2)
pretrace_pixels_beqelse_b5219:
# B5219
	mv x38, zero
pretrace_pixels_cont_b5231:
# B5231
	bne	x38, zero, pretrace_pixels_beqelse_b5233
# B5232
	mv x38, zero
	j pretrace_pixels_cont_b5328 # adhoc jump(2)
pretrace_pixels_beqelse_b5233:
# B5233
	la x38, min_caml_solver_dist
	lw x6, 0(x38)
	fle x6, x24, x6
	beq	x6, zero, pretrace_pixels_bneelse_b5235
# B5234
	mv x38, zero
	j pretrace_pixels_cont_b5328 # adhoc jump(2)
pretrace_pixels_bneelse_b5235:
# B5235
	mv x65, x12
	mv x66, x33
	j	pretrace_pixels_loop_b5236
pretrace_pixels_bneelse_b5323:	#moved
# B5323
	addi x6, x65, 1
	mv x65, x6
pretrace_pixels_loop_b5236:
# B5236
	add x4, x66, x65
	lw x6, 0(x4)
	bne	x6, x39, pretrace_pixels_beqelse_b5238
# B5237
	mv x6, zero
	j pretrace_pixels_cont_b5325 # adhoc jump(2)
pretrace_pixels_beqelse_b5238:
# B5238
	la x67, min_caml_and_net
	add x4, x67, x6
	lw x6, 0(x4)
	mv x67, zero
	mv x68, x6
	j	pretrace_pixels_loop_b5239
pretrace_pixels_bneelse_b5320:	#moved
# B5320
pretrace_pixels_loop_b5239:
# B5239
	add x4, x68, x67
	lw x6, 0(x4)
	bne	x6, x39, pretrace_pixels_beqelse_b5241
# B5240
	mv x6, zero
	j pretrace_pixels_cont_b5322 # adhoc jump(2)
pretrace_pixels_beqelse_b5241:
# B5241
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
	bne	x73, x12, pretrace_pixels_beqelse_b5243
# B5242
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
	beq	x75, zero, pretrace_pixels_bneelse_b5245
# B5244
	mv x75, zero
	j pretrace_pixels_cont_b5248 # adhoc jump(2)
pretrace_pixels_bneelse_b5245:
# B5245
	lw x75, 2(x73)
	fmul x75, x74, x75
	fadd x75, x75, x71
	fabs x75, x75
	lw x76, 4(x69)
	lw x76, 2(x76)
	fle x75, x76, x75
	beq	x75, zero, pretrace_pixels_bneelse_b5247
# B5246
	mv x75, zero
	j pretrace_pixels_cont_b5248 # adhoc jump(2)
pretrace_pixels_bneelse_b5247:
# B5247
	lw x75, 1(x72)
	feq x75, x75, zero
	xori x75, x75, 1
pretrace_pixels_cont_b5248:
# B5248
	bne	x75, zero, pretrace_pixels_beqelse_b5250
# B5249
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
	beq	x75, zero, pretrace_pixels_bneelse_b5252
# B5251
	mv x75, zero
	j pretrace_pixels_cont_b5255 # adhoc jump(2)
pretrace_pixels_bneelse_b5252:
# B5252
	lw x75, 2(x73)
	fmul x75, x74, x75
	fadd x75, x75, x71
	fabs x75, x75
	lw x76, 4(x69)
	lw x76, 2(x76)
	fle x75, x76, x75
	beq	x75, zero, pretrace_pixels_bneelse_b5254
# B5253
	mv x75, zero
	j pretrace_pixels_cont_b5255 # adhoc jump(2)
pretrace_pixels_bneelse_b5254:
# B5254
	lw x75, 3(x72)
	feq x75, x75, zero
	xori x75, x75, 1
pretrace_pixels_cont_b5255:
# B5255
	bne	x75, zero, pretrace_pixels_beqelse_b5257
# B5256
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
	beq	x7, zero, pretrace_pixels_bneelse_b5259
# B5258
	mv x69, zero
	j pretrace_pixels_cont_b5262 # adhoc jump(2)
pretrace_pixels_bneelse_b5259:
# B5259
	lw x7, 1(x73)
	fmul x7, x71, x7
	fadd x7, x7, x70
	fabs x7, x7
	lw x69, 4(x69)
	lw x69, 1(x69)
	fle x69, x69, x7
	beq	x69, zero, pretrace_pixels_bneelse_b5261
# B5260
	mv x69, zero
	j pretrace_pixels_cont_b5262 # adhoc jump(2)
pretrace_pixels_bneelse_b5261:
# B5261
	lw x69, 5(x72)
	feq x69, x69, zero
	xori x69, x69, 1
pretrace_pixels_cont_b5262:
# B5262
	bne	x69, zero, pretrace_pixels_beqelse_b5264
# B5263
	mv x69, zero
	j pretrace_pixels_cont_b5282 # adhoc jump(2)
pretrace_pixels_beqelse_b5264:
# B5264
	sw x71, 0(x38)
	li x69, 3
	j pretrace_pixels_cont_b5282 # adhoc jump(2)
pretrace_pixels_beqelse_b5257:
# B5257
	sw x74, 0(x38)
	li x69, 2
	j pretrace_pixels_cont_b5282 # adhoc jump(2)
pretrace_pixels_beqelse_b5250:
# B5250
	sw x74, 0(x38)
	li x69, 1
	j pretrace_pixels_cont_b5282 # adhoc jump(2)
pretrace_pixels_beqelse_b5243:
# B5243
	bne	x73, x107, pretrace_pixels_beqelse_b5266
# B5265
	lw x69, 0(x72)
	fle x69, zero, x69
	beq	x69, zero, pretrace_pixels_bneelse_b5268
# B5267
	mv x69, zero
	j pretrace_pixels_cont_b5282 # adhoc jump(2)
pretrace_pixels_bneelse_b5268:
# B5268
	lw x69, 1(x72)
	fmul x69, x69, x7
	lw x7, 2(x72)
	fmul x7, x7, x70
	fadd x69, x69, x7
	lw x7, 3(x72)
	fmul x7, x7, x71
	fadd x69, x69, x7
	sw x69, 0(x38)
	li x69, 1
	j pretrace_pixels_cont_b5282 # adhoc jump(2)
pretrace_pixels_beqelse_b5266:
# B5266
	lw x73, 0(x72)
	feq x74, x73, zero
	bne	x74, zero, pretrace_pixels_beqelse_b5270
# B5269
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
	bne	x77, zero, pretrace_pixels_beqelse_b5272
# B5271
	mv x7, x76
	j pretrace_pixels_cont_b5273 # adhoc jump(2)
pretrace_pixels_beqelse_b5272:
# B5272
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
pretrace_pixels_cont_b5273:
# B5273
	lw x70, 1(x69)
	bne	x70, x75, pretrace_pixels_beqelse_b5275
# B5274
	fsub x7, x7, x108
	j pretrace_pixels_cont_b5276 # adhoc jump(2)
pretrace_pixels_beqelse_b5275:
# B5275
pretrace_pixels_cont_b5276:
# B5276
	fmul x70, x74, x74
	fmul x7, x73, x7
	fsub x7, x70, x7
	fle x70, x7, zero
	beq	x70, zero, pretrace_pixels_bneelse_b5278
# B5277
	mv x69, zero
	j pretrace_pixels_cont_b5282 # adhoc jump(2)
pretrace_pixels_bneelse_b5278:
# B5278
	lw x69, 6(x69)
	bne	x69, zero, pretrace_pixels_beqelse_b5280
# B5279
	fsqrt x69, x7
	fsub x69, x74, x69
	lw x7, 4(x72)
	fmul x69, x69, x7
	sw x69, 0(x38)
	j pretrace_pixels_cont_b5281 # adhoc jump(2)
pretrace_pixels_beqelse_b5280:
# B5280
	fsqrt x69, x7
	fadd x69, x74, x69
	lw x7, 4(x72)
	fmul x69, x69, x7
	sw x69, 0(x38)
pretrace_pixels_cont_b5281:
# B5281
	li x69, 1
	j pretrace_pixels_cont_b5282 # adhoc jump(2)
pretrace_pixels_beqelse_b5270:
# B5270
	mv x69, zero
pretrace_pixels_cont_b5282:
# B5282
	lw x7, 0(x38)
	bne	x69, zero, pretrace_pixels_beqelse_b5284
# B5283
	mv x69, zero
	j pretrace_pixels_cont_b5285 # adhoc jump(2)
pretrace_pixels_beqelse_b5284:
# B5284
	lui x69, 779469
	addi x69, x69, -819
	fle x69, x69, x7
	xori x69, x69, 1
pretrace_pixels_cont_b5285:
# B5285
	addi x67, x67, 1
	bne	x69, zero, pretrace_pixels_beqelse_b5287
# B5286
	add x4, x29, x6
	lw x6, 0(x4)
	lw x6, 6(x6)
	bne	x6, zero, pretrace_pixels_beqelse_b5289
# B5288
	mv x6, zero
	j pretrace_pixels_cont_b5322 # adhoc jump(2)
pretrace_pixels_beqelse_b5289:
# B5289
	j	pretrace_pixels_loop_b5239
pretrace_pixels_beqelse_b5287:
# B5287
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
	j	pretrace_pixels_loop_b5290
pretrace_pixels_bneelse_b5317:	#moved
# B5317
	addi x6, x69, 1
	mv x69, x6
pretrace_pixels_loop_b5290:
# B5290
	add x4, x71, x69
	lw x6, 0(x4)
	bne	x6, x39, pretrace_pixels_beqelse_b5292
# B5291
	li x6, 1
	j pretrace_pixels_cont_b5319 # adhoc jump(2)
pretrace_pixels_beqelse_b5292:
# B5292
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
	bne	x76, x12, pretrace_pixels_beqelse_b5294
# B5293
	fabs x7, x7
	lw x76, 4(x6)
	lw x76, 0(x76)
	fle x7, x76, x7
	beq	x7, zero, pretrace_pixels_bneelse_b5296
# B5295
	mv x7, zero
	j pretrace_pixels_cont_b5299 # adhoc jump(2)
pretrace_pixels_bneelse_b5296:
# B5296
	fabs x7, x70
	lw x70, 4(x6)
	lw x70, 1(x70)
	fle x7, x70, x7
	beq	x7, zero, pretrace_pixels_bneelse_b5298
# B5297
	mv x7, zero
	j pretrace_pixels_cont_b5299 # adhoc jump(2)
pretrace_pixels_bneelse_b5298:
# B5298
	fabs x7, x75
	lw x70, 4(x6)
	lw x70, 2(x70)
	fle x7, x70, x7
	xori x7, x7, 1
pretrace_pixels_cont_b5299:
# B5299
	bne	x7, zero, pretrace_pixels_beqelse_b5301
# B5300
	lw x6, 6(x6)
	xori x6, x6, 1
	j pretrace_pixels_cont_b5316 # adhoc jump(2)
pretrace_pixels_beqelse_b5301:
# B5301
	lw x6, 6(x6)
	j pretrace_pixels_cont_b5316 # adhoc jump(2)
pretrace_pixels_beqelse_b5294:
# B5294
	bne	x76, x107, pretrace_pixels_beqelse_b5303
# B5302
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
	bne	x6, zero, pretrace_pixels_beqelse_b5305
# B5304
	mv x6, x7
	j pretrace_pixels_cont_b5306 # adhoc jump(2)
pretrace_pixels_beqelse_b5305:
# B5305
	xori x6, x7, 1
pretrace_pixels_cont_b5306:
# B5306
	xori x6, x6, 1
	j pretrace_pixels_cont_b5316 # adhoc jump(2)
pretrace_pixels_beqelse_b5303:
# B5303
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
	bne	x77, zero, pretrace_pixels_beqelse_b5308
# B5307
	mv x7, x76
	j pretrace_pixels_cont_b5309 # adhoc jump(2)
pretrace_pixels_beqelse_b5308:
# B5308
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
pretrace_pixels_cont_b5309:
# B5309
	lw x70, 1(x6)
	li x75, 3
	bne	x70, x75, pretrace_pixels_beqelse_b5311
# B5310
	fsub x7, x7, x108
	j pretrace_pixels_cont_b5312 # adhoc jump(2)
pretrace_pixels_beqelse_b5311:
# B5311
pretrace_pixels_cont_b5312:
# B5312
	lw x6, 6(x6)
	fle x7, zero, x7
	xori x7, x7, 1
	bne	x6, zero, pretrace_pixels_beqelse_b5314
# B5313
	mv x6, x7
	j pretrace_pixels_cont_b5315 # adhoc jump(2)
pretrace_pixels_beqelse_b5314:
# B5314
	xori x6, x7, 1
pretrace_pixels_cont_b5315:
# B5315
	xori x6, x6, 1
pretrace_pixels_cont_b5316:
# B5316
	beq	x6, zero, pretrace_pixels_bneelse_b5317
# B5318
	mv x6, zero
pretrace_pixels_cont_b5319:
# B5319
	beq	x6, zero, pretrace_pixels_bneelse_b5320
# B5321
	mv x6, x12
pretrace_pixels_cont_b5322:
# B5322
	beq	x6, zero, pretrace_pixels_bneelse_b5323
# B5324
	mv x6, x12
pretrace_pixels_cont_b5325:
# B5325
	bne	x6, zero, pretrace_pixels_beqelse_b5327
# B5326
	mv x38, zero
	j pretrace_pixels_cont_b5328 # adhoc jump(2)
pretrace_pixels_beqelse_b5327:
# B5327
	mv x38, x12
pretrace_pixels_cont_b5328:
# B5328
	addi x34, x34, 1
	beq	x38, zero, pretrace_pixels_bneelse_b5329
# B5330
	mv x5, x12
	mv x6, x33
	j	pretrace_pixels_loop_b5331
pretrace_pixels_bneelse_b5418:	#moved
# B5418
	addi x33, x5, 1
	mv x5, x33
pretrace_pixels_loop_b5331:
# B5331
	add x4, x6, x5
	lw x33, 0(x4)
	bne	x33, x39, pretrace_pixels_beqelse_b5333
# B5332
	mv x33, zero
	j pretrace_pixels_cont_b5420 # adhoc jump(2)
pretrace_pixels_beqelse_b5333:
# B5333
	la x38, min_caml_and_net
	add x4, x38, x33
	lw x33, 0(x4)
	mv x38, zero
	mv x65, x33
	j	pretrace_pixels_loop_b5334
pretrace_pixels_bneelse_b5415:	#moved
# B5415
pretrace_pixels_loop_b5334:
# B5334
	add x4, x65, x38
	lw x33, 0(x4)
	bne	x33, x39, pretrace_pixels_beqelse_b5336
# B5335
	mv x33, zero
	j pretrace_pixels_cont_b5417 # adhoc jump(2)
pretrace_pixels_beqelse_b5336:
# B5336
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
	bne	x71, x12, pretrace_pixels_beqelse_b5338
# B5337
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
	beq	x72, zero, pretrace_pixels_bneelse_b5340
# B5339
	mv x72, zero
	j pretrace_pixels_cont_b5343 # adhoc jump(2)
pretrace_pixels_bneelse_b5340:
# B5340
	lw x72, 2(x66)
	fmul x72, x71, x72
	fadd x72, x72, x7
	fabs x72, x72
	lw x73, 4(x67)
	lw x73, 2(x73)
	fle x72, x73, x72
	beq	x72, zero, pretrace_pixels_bneelse_b5342
# B5341
	mv x72, zero
	j pretrace_pixels_cont_b5343 # adhoc jump(2)
pretrace_pixels_bneelse_b5342:
# B5342
	lw x72, 1(x70)
	feq x72, x72, zero
	xori x72, x72, 1
pretrace_pixels_cont_b5343:
# B5343
	bne	x72, zero, pretrace_pixels_beqelse_b5345
# B5344
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
	beq	x72, zero, pretrace_pixels_bneelse_b5347
# B5346
	mv x72, zero
	j pretrace_pixels_cont_b5350 # adhoc jump(2)
pretrace_pixels_bneelse_b5347:
# B5347
	lw x72, 2(x66)
	fmul x72, x71, x72
	fadd x72, x72, x7
	fabs x72, x72
	lw x73, 4(x67)
	lw x73, 2(x73)
	fle x72, x73, x72
	beq	x72, zero, pretrace_pixels_bneelse_b5349
# B5348
	mv x72, zero
	j pretrace_pixels_cont_b5350 # adhoc jump(2)
pretrace_pixels_bneelse_b5349:
# B5349
	lw x72, 3(x70)
	feq x72, x72, zero
	xori x72, x72, 1
pretrace_pixels_cont_b5350:
# B5350
	bne	x72, zero, pretrace_pixels_beqelse_b5352
# B5351
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
	beq	x68, zero, pretrace_pixels_bneelse_b5354
# B5353
	mv x66, zero
	j pretrace_pixels_cont_b5357 # adhoc jump(2)
pretrace_pixels_bneelse_b5354:
# B5354
	lw x66, 1(x66)
	fmul x66, x7, x66
	fadd x66, x66, x69
	fabs x66, x66
	lw x67, 4(x67)
	lw x67, 1(x67)
	fle x66, x67, x66
	beq	x66, zero, pretrace_pixels_bneelse_b5356
# B5355
	mv x66, zero
	j pretrace_pixels_cont_b5357 # adhoc jump(2)
pretrace_pixels_bneelse_b5356:
# B5356
	lw x66, 5(x70)
	feq x66, x66, zero
	xori x66, x66, 1
pretrace_pixels_cont_b5357:
# B5357
	bne	x66, zero, pretrace_pixels_beqelse_b5359
# B5358
	mv x66, zero
	j pretrace_pixels_cont_b5377 # adhoc jump(2)
pretrace_pixels_beqelse_b5359:
# B5359
	la x66, min_caml_solver_dist
	sw x7, 0(x66)
	li x66, 3
	j pretrace_pixels_cont_b5377 # adhoc jump(2)
pretrace_pixels_beqelse_b5352:
# B5352
	la x66, min_caml_solver_dist
	sw x71, 0(x66)
	li x66, 2
	j pretrace_pixels_cont_b5377 # adhoc jump(2)
pretrace_pixels_beqelse_b5345:
# B5345
	la x66, min_caml_solver_dist
	sw x71, 0(x66)
	li x66, 1
	j pretrace_pixels_cont_b5377 # adhoc jump(2)
pretrace_pixels_beqelse_b5338:
# B5338
	bne	x71, x107, pretrace_pixels_beqelse_b5361
# B5360
	lw x66, 0(x70)
	fle x66, zero, x66
	beq	x66, zero, pretrace_pixels_bneelse_b5363
# B5362
	mv x66, zero
	j pretrace_pixels_cont_b5377 # adhoc jump(2)
pretrace_pixels_bneelse_b5363:
# B5363
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
	li x66, 1
	j pretrace_pixels_cont_b5377 # adhoc jump(2)
pretrace_pixels_beqelse_b5361:
# B5361
	lw x66, 0(x70)
	feq x71, x66, zero
	bne	x71, zero, pretrace_pixels_beqelse_b5365
# B5364
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
	bne	x74, zero, pretrace_pixels_beqelse_b5367
# B5366
	mv x68, x73
	j pretrace_pixels_cont_b5368 # adhoc jump(2)
pretrace_pixels_beqelse_b5367:
# B5367
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
pretrace_pixels_cont_b5368:
# B5368
	lw x69, 1(x67)
	bne	x69, x72, pretrace_pixels_beqelse_b5370
# B5369
	fsub x68, x68, x108
	j pretrace_pixels_cont_b5371 # adhoc jump(2)
pretrace_pixels_beqelse_b5370:
# B5370
pretrace_pixels_cont_b5371:
# B5371
	fmul x69, x71, x71
	fmul x66, x66, x68
	fsub x66, x69, x66
	fle x68, x66, zero
	beq	x68, zero, pretrace_pixels_bneelse_b5373
# B5372
	mv x66, zero
	j pretrace_pixels_cont_b5377 # adhoc jump(2)
pretrace_pixels_bneelse_b5373:
# B5373
	lw x67, 6(x67)
	bne	x67, zero, pretrace_pixels_beqelse_b5375
# B5374
	la x67, min_caml_solver_dist
	fsqrt x66, x66
	fsub x66, x71, x66
	lw x68, 4(x70)
	fmul x66, x66, x68
	sw x66, 0(x67)
	j pretrace_pixels_cont_b5376 # adhoc jump(2)
pretrace_pixels_beqelse_b5375:
# B5375
	la x67, min_caml_solver_dist
	fsqrt x66, x66
	fadd x66, x71, x66
	lw x68, 4(x70)
	fmul x66, x66, x68
	sw x66, 0(x67)
pretrace_pixels_cont_b5376:
# B5376
	li x66, 1
	j pretrace_pixels_cont_b5377 # adhoc jump(2)
pretrace_pixels_beqelse_b5365:
# B5365
	mv x66, zero
pretrace_pixels_cont_b5377:
# B5377
	la x67, min_caml_solver_dist
	lw x67, 0(x67)
	bne	x66, zero, pretrace_pixels_beqelse_b5379
# B5378
	mv x66, zero
	j pretrace_pixels_cont_b5380 # adhoc jump(2)
pretrace_pixels_beqelse_b5379:
# B5379
	lui x66, 779469
	addi x66, x66, -819
	fle x66, x66, x67
	xori x66, x66, 1
pretrace_pixels_cont_b5380:
# B5380
	addi x38, x38, 1
	bne	x66, zero, pretrace_pixels_beqelse_b5382
# B5381
	add x4, x29, x33
	lw x33, 0(x4)
	lw x33, 6(x33)
	bne	x33, zero, pretrace_pixels_beqelse_b5384
# B5383
	mv x33, zero
	j pretrace_pixels_cont_b5417 # adhoc jump(2)
pretrace_pixels_beqelse_b5384:
# B5384
	j	pretrace_pixels_loop_b5334
pretrace_pixels_beqelse_b5382:
# B5382
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
	j	pretrace_pixels_loop_b5385
pretrace_pixels_bneelse_b5412:	#moved
# B5412
	addi x33, x68, 1
	mv x68, x33
pretrace_pixels_loop_b5385:
# B5385
	add x4, x69, x68
	lw x33, 0(x4)
	bne	x33, x39, pretrace_pixels_beqelse_b5387
# B5386
	li x33, 1
	j pretrace_pixels_cont_b5414 # adhoc jump(2)
pretrace_pixels_beqelse_b5387:
# B5387
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
	bne	x73, x12, pretrace_pixels_beqelse_b5389
# B5388
	fabs x66, x66
	lw x73, 4(x33)
	lw x73, 0(x73)
	fle x66, x73, x66
	beq	x66, zero, pretrace_pixels_bneelse_b5391
# B5390
	mv x66, zero
	j pretrace_pixels_cont_b5394 # adhoc jump(2)
pretrace_pixels_bneelse_b5391:
# B5391
	fabs x66, x67
	lw x67, 4(x33)
	lw x67, 1(x67)
	fle x66, x67, x66
	beq	x66, zero, pretrace_pixels_bneelse_b5393
# B5392
	mv x66, zero
	j pretrace_pixels_cont_b5394 # adhoc jump(2)
pretrace_pixels_bneelse_b5393:
# B5393
	fabs x66, x72
	lw x67, 4(x33)
	lw x67, 2(x67)
	fle x66, x67, x66
	xori x66, x66, 1
pretrace_pixels_cont_b5394:
# B5394
	bne	x66, zero, pretrace_pixels_beqelse_b5396
# B5395
	lw x33, 6(x33)
	xori x33, x33, 1
	j pretrace_pixels_cont_b5411 # adhoc jump(2)
pretrace_pixels_beqelse_b5396:
# B5396
	lw x33, 6(x33)
	j pretrace_pixels_cont_b5411 # adhoc jump(2)
pretrace_pixels_beqelse_b5389:
# B5389
	bne	x73, x107, pretrace_pixels_beqelse_b5398
# B5397
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
	bne	x33, zero, pretrace_pixels_beqelse_b5400
# B5399
	mv x33, x66
	j pretrace_pixels_cont_b5401 # adhoc jump(2)
pretrace_pixels_beqelse_b5400:
# B5400
	xori x33, x66, 1
pretrace_pixels_cont_b5401:
# B5401
	xori x33, x33, 1
	j pretrace_pixels_cont_b5411 # adhoc jump(2)
pretrace_pixels_beqelse_b5398:
# B5398
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
	bne	x74, zero, pretrace_pixels_beqelse_b5403
# B5402
	mv x66, x73
	j pretrace_pixels_cont_b5404 # adhoc jump(2)
pretrace_pixels_beqelse_b5403:
# B5403
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
pretrace_pixels_cont_b5404:
# B5404
	lw x67, 1(x33)
	li x72, 3
	bne	x67, x72, pretrace_pixels_beqelse_b5406
# B5405
	fsub x66, x66, x108
	j pretrace_pixels_cont_b5407 # adhoc jump(2)
pretrace_pixels_beqelse_b5406:
# B5406
pretrace_pixels_cont_b5407:
# B5407
	lw x33, 6(x33)
	fle x66, zero, x66
	xori x66, x66, 1
	bne	x33, zero, pretrace_pixels_beqelse_b5409
# B5408
	mv x33, x66
	j pretrace_pixels_cont_b5410 # adhoc jump(2)
pretrace_pixels_beqelse_b5409:
# B5409
	xori x33, x66, 1
pretrace_pixels_cont_b5410:
# B5410
	xori x33, x33, 1
pretrace_pixels_cont_b5411:
# B5411
	beq	x33, zero, pretrace_pixels_bneelse_b5412
# B5413
	mv x33, zero
pretrace_pixels_cont_b5414:
# B5414
	beq	x33, zero, pretrace_pixels_bneelse_b5415
# B5416
	mv x33, x12
pretrace_pixels_cont_b5417:
# B5417
	beq	x33, zero, pretrace_pixels_bneelse_b5418
# B5419
	mv x33, x12
pretrace_pixels_cont_b5420:
# B5420
	beq	x33, zero, pretrace_pixels_bneelse_b5421
# B5422
	mv x33, x12
pretrace_pixels_cont_b5423:
# B5423
	bne	x33, zero, pretrace_pixels_beqelse_b5425
# B5424
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
	bne	x35, zero, pretrace_pixels_beqelse_b5426
# B5427
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
pretrace_pixels_beqelse_b5426:
# B5426
pretrace_pixels_cont_b5428:
# B5428
	fle x33, x34, zero
	bne	x33, zero, pretrace_pixels_beqelse_b5429
# B5430
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
pretrace_pixels_beqelse_b5429:
# B5429
pretrace_pixels_beqelse_b5425:
# B5425
pretrace_pixels_cont_b5431:
# B5431
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
pretrace_pixels_loop_b5432:
# B5432
	bgt	zero, x38, pretrace_pixels_bleelse_b5434
# B5433
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
	bne	x40, x107, pretrace_pixels_beqelse_b5436
# B5435
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
	j pretrace_pixels_cont_b5445 # adhoc jump(2)
pretrace_pixels_beqelse_b5436:
# B5436
	bge	x107, x40, pretrace_pixels_bgtelse_b5437
# B5438
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
	bne	x67, zero, pretrace_pixels_beqelse_b5440
# B5439
	mv x34, x66
	j pretrace_pixels_cont_b5441 # adhoc jump(2)
pretrace_pixels_beqelse_b5440:
# B5440
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
pretrace_pixels_cont_b5441:
# B5441
	li x5, 3
	bne	x40, x5, pretrace_pixels_beqelse_b5443
# B5442
	fsub x34, x34, x108
	j pretrace_pixels_cont_b5444 # adhoc jump(2)
pretrace_pixels_beqelse_b5443:
# B5443
pretrace_pixels_cont_b5444:
# B5444
	sw x34, 3(x39)
pretrace_pixels_bgtelse_b5437:
# B5437
pretrace_pixels_cont_b5445:
# B5445
	addi x34, x38, -1
	mv x38, x34
	j	pretrace_pixels_loop_b5432
pretrace_pixels_bleelse_b5434:
# B5434
# B5446
	la x34, min_caml_n_reflections
	lw x34, 0(x34)
	addi x34, x34, -1
	mv x40, x17
	mv x39, x23
	mv x35, x34
	mv x38, x28
pretrace_pixels_loop_b5447:
# B5447
	li x23, -1
	bgt	zero, x35, pretrace_pixels_bleelse_b5449
# B5448
	la x28, min_caml_reflections
	add x4, x28, x35
	lw x28, 0(x4)
	lw x34, 1(x28)
	sw x21, 0(x20)
	lw x5, 0(x22)
	mv x66, x34
	mv x6, zero
	mv x65, x5
pretrace_pixels_loop_b5450:
# B5450
	add x4, x65, x6
	lw x5, 0(x4)
	lw x67, 0(x5)
	li x68, -1
	beq	x67, x68, pretrace_pixels_bneelse_b5451
# B5452
	li x69, 99
	la x7, min_caml_solver_dist
	li x70, 3
	bne	x67, x69, pretrace_pixels_beqelse_b5454
# B5453
	mv x72, x5
	mv x71, x12
	mv x73, x66
pretrace_pixels_loop_b5455:
# B5455
	add x4, x72, x71
	lw x5, 0(x4)
	beq	x5, x68, pretrace_pixels_bneelse_b5456
# B5457
	la x67, min_caml_and_net
	add x4, x67, x5
	lw x5, 0(x4)
	mv x74, x73
	mv x67, zero
	mv x69, x5
pretrace_pixels_loop_b5458:
# B5458
	lw x5, 0(x74)
	add x4, x69, x67
	lw x75, 0(x4)
	beq	x75, x68, pretrace_pixels_bneelse_b5459
# B5460
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
	bne	x81, x12, pretrace_pixels_beqelse_b5462
# B5461
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
	beq	x82, zero, pretrace_pixels_bneelse_b5464
# B5463
	mv x82, zero
	j pretrace_pixels_cont_b5467 # adhoc jump(2)
pretrace_pixels_bneelse_b5464:
# B5464
	lw x82, 2(x77)
	fmul x82, x81, x82
	fadd x82, x82, x8
	fabs x82, x82
	lw x83, 4(x76)
	lw x83, 2(x83)
	fle x82, x83, x82
	beq	x82, zero, pretrace_pixels_bneelse_b5466
# B5465
	mv x82, zero
	j pretrace_pixels_cont_b5467 # adhoc jump(2)
pretrace_pixels_bneelse_b5466:
# B5466
	lw x82, 1(x80)
	feq x82, x82, zero
	xori x82, x82, 1
pretrace_pixels_cont_b5467:
# B5467
	bne	x82, zero, pretrace_pixels_beqelse_b5469
# B5468
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
	beq	x82, zero, pretrace_pixels_bneelse_b5471
# B5470
	mv x82, zero
	j pretrace_pixels_cont_b5474 # adhoc jump(2)
pretrace_pixels_bneelse_b5471:
# B5471
	lw x82, 2(x77)
	fmul x82, x81, x82
	fadd x82, x82, x8
	fabs x82, x82
	lw x83, 4(x76)
	lw x83, 2(x83)
	fle x82, x83, x82
	beq	x82, zero, pretrace_pixels_bneelse_b5473
# B5472
	mv x82, zero
	j pretrace_pixels_cont_b5474 # adhoc jump(2)
pretrace_pixels_bneelse_b5473:
# B5473
	lw x82, 3(x80)
	feq x82, x82, zero
	xori x82, x82, 1
pretrace_pixels_cont_b5474:
# B5474
	bne	x82, zero, pretrace_pixels_beqelse_b5476
# B5475
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
	beq	x78, zero, pretrace_pixels_bneelse_b5478
# B5477
	mv x76, zero
	j pretrace_pixels_cont_b5481 # adhoc jump(2)
pretrace_pixels_bneelse_b5478:
# B5478
	lw x77, 1(x77)
	fmul x77, x8, x77
	fadd x77, x77, x79
	fabs x77, x77
	lw x76, 4(x76)
	lw x76, 1(x76)
	fle x76, x76, x77
	beq	x76, zero, pretrace_pixels_bneelse_b5480
# B5479
	mv x76, zero
	j pretrace_pixels_cont_b5481 # adhoc jump(2)
pretrace_pixels_bneelse_b5480:
# B5480
	lw x76, 5(x80)
	feq x76, x76, zero
	xori x76, x76, 1
pretrace_pixels_cont_b5481:
# B5481
	bne	x76, zero, pretrace_pixels_beqelse_b5483
# B5482
	mv x76, zero
	j pretrace_pixels_cont_b5495 # adhoc jump(2)
pretrace_pixels_beqelse_b5483:
# B5483
	la x76, min_caml_solver_dist
	sw x8, 0(x76)
	li x76, 3
	j pretrace_pixels_cont_b5495 # adhoc jump(2)
pretrace_pixels_beqelse_b5476:
# B5476
	la x76, min_caml_solver_dist
	sw x81, 0(x76)
	li x76, 2
	j pretrace_pixels_cont_b5495 # adhoc jump(2)
pretrace_pixels_beqelse_b5469:
# B5469
	la x76, min_caml_solver_dist
	sw x81, 0(x76)
	li x76, 1
	j pretrace_pixels_cont_b5495 # adhoc jump(2)
pretrace_pixels_beqelse_b5462:
# B5462
	bne	x81, x107, pretrace_pixels_beqelse_b5485
# B5484
	lw x76, 0(x80)
	fle x76, zero, x76
	beq	x76, zero, pretrace_pixels_bneelse_b5487
# B5486
	mv x76, zero
	j pretrace_pixels_cont_b5495 # adhoc jump(2)
pretrace_pixels_bneelse_b5487:
# B5487
	la x76, min_caml_solver_dist
	lw x78, 0(x80)
	lw x77, 3(x77)
	fmul x77, x78, x77
	sw x77, 0(x76)
	li x76, 1
	j pretrace_pixels_cont_b5495 # adhoc jump(2)
pretrace_pixels_beqelse_b5485:
# B5485
	lw x81, 0(x80)
	feq x82, x81, zero
	bne	x82, zero, pretrace_pixels_beqelse_b5489
# B5488
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
	beq	x79, zero, pretrace_pixels_bneelse_b5491
# B5490
	mv x76, zero
	j pretrace_pixels_cont_b5495 # adhoc jump(2)
pretrace_pixels_bneelse_b5491:
# B5491
	lw x76, 6(x76)
	bne	x76, zero, pretrace_pixels_beqelse_b5493
# B5492
	la x76, min_caml_solver_dist
	fsqrt x77, x77
	fsub x77, x78, x77
	lw x78, 4(x80)
	fmul x77, x77, x78
	sw x77, 0(x76)
	j pretrace_pixels_cont_b5494 # adhoc jump(2)
pretrace_pixels_beqelse_b5493:
# B5493
	la x76, min_caml_solver_dist
	fsqrt x77, x77
	fadd x77, x78, x77
	lw x78, 4(x80)
	fmul x77, x77, x78
	sw x77, 0(x76)
pretrace_pixels_cont_b5494:
# B5494
	li x76, 1
	j pretrace_pixels_cont_b5495 # adhoc jump(2)
pretrace_pixels_beqelse_b5489:
# B5489
	mv x76, zero
pretrace_pixels_cont_b5495:
# B5495
	addi x67, x67, 1
	bne	x76, zero, pretrace_pixels_beqelse_b5497
# B5496
	add x4, x29, x75
	lw x5, 0(x4)
	lw x5, 6(x5)
	bne	x5, zero, pretrace_pixels_beqelse_b5499
# B5498
	j pretrace_pixels_cont_b5537 # adhoc jump(2)
pretrace_pixels_beqelse_b5499:
# B5499
	j	pretrace_pixels_loop_b5458
pretrace_pixels_beqelse_b5497:
# B5497
	lw x77, 0(x7)
	fle x78, x77, zero
	bne	x78, zero, pretrace_pixels_beqelse_b5500
# B5501
	lw x78, 0(x20)
	fle x78, x78, x77
	bne	x78, zero, pretrace_pixels_beqelse_b5502
# B5503
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
	j	pretrace_pixels_loop_b5504
pretrace_pixels_bneelse_b5531:	#moved
# B5531
	addi x8, x8, 1
pretrace_pixels_loop_b5504:
# B5504
	add x4, x80, x8
	lw x84, 0(x4)
	bne	x84, x68, pretrace_pixels_beqelse_b5506
# B5505
	li x8, 1
	j pretrace_pixels_cont_b5533 # adhoc jump(2)
pretrace_pixels_beqelse_b5506:
# B5506
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
	bne	x88, x12, pretrace_pixels_beqelse_b5508
# B5507
	fabs x85, x85
	lw x88, 4(x84)
	lw x88, 0(x88)
	fle x85, x88, x85
	beq	x85, zero, pretrace_pixels_bneelse_b5510
# B5509
	mv x85, zero
	j pretrace_pixels_cont_b5513 # adhoc jump(2)
pretrace_pixels_bneelse_b5510:
# B5510
	fabs x85, x86
	lw x86, 4(x84)
	lw x86, 1(x86)
	fle x85, x86, x85
	beq	x85, zero, pretrace_pixels_bneelse_b5512
# B5511
	mv x85, zero
	j pretrace_pixels_cont_b5513 # adhoc jump(2)
pretrace_pixels_bneelse_b5512:
# B5512
	fabs x85, x87
	lw x86, 4(x84)
	lw x86, 2(x86)
	fle x85, x86, x85
	xori x85, x85, 1
pretrace_pixels_cont_b5513:
# B5513
	bne	x85, zero, pretrace_pixels_beqelse_b5515
# B5514
	lw x84, 6(x84)
	xori x84, x84, 1
	j pretrace_pixels_cont_b5530 # adhoc jump(2)
pretrace_pixels_beqelse_b5515:
# B5515
	lw x84, 6(x84)
	j pretrace_pixels_cont_b5530 # adhoc jump(2)
pretrace_pixels_beqelse_b5508:
# B5508
	bne	x88, x107, pretrace_pixels_beqelse_b5517
# B5516
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
	bne	x84, zero, pretrace_pixels_beqelse_b5519
# B5518
	mv x84, x85
	j pretrace_pixels_cont_b5520 # adhoc jump(2)
pretrace_pixels_beqelse_b5519:
# B5519
	xori x84, x85, 1
pretrace_pixels_cont_b5520:
# B5520
	xori x84, x84, 1
	j pretrace_pixels_cont_b5530 # adhoc jump(2)
pretrace_pixels_beqelse_b5517:
# B5517
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
	bne	x89, zero, pretrace_pixels_beqelse_b5522
# B5521
	mv x85, x88
	j pretrace_pixels_cont_b5523 # adhoc jump(2)
pretrace_pixels_beqelse_b5522:
# B5522
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
pretrace_pixels_cont_b5523:
# B5523
	lw x86, 1(x84)
	bne	x86, x70, pretrace_pixels_beqelse_b5525
# B5524
	fsub x85, x85, x108
	j pretrace_pixels_cont_b5526 # adhoc jump(2)
pretrace_pixels_beqelse_b5525:
# B5525
pretrace_pixels_cont_b5526:
# B5526
	lw x84, 6(x84)
	fle x85, zero, x85
	xori x85, x85, 1
	bne	x84, zero, pretrace_pixels_beqelse_b5528
# B5527
	mv x84, x85
	j pretrace_pixels_cont_b5529 # adhoc jump(2)
pretrace_pixels_beqelse_b5528:
# B5528
	xori x84, x85, 1
pretrace_pixels_cont_b5529:
# B5529
	xori x84, x84, 1
pretrace_pixels_cont_b5530:
# B5530
	beq	x84, zero, pretrace_pixels_bneelse_b5531
# B5532
	mv x8, zero
pretrace_pixels_cont_b5533:
# B5533
	beq	x8, zero, pretrace_pixels_bneelse_b5534
# B5535
	sw x77, 0(x20)
	sw x78, 0(x30)
	sw x79, 1(x30)
	sw x5, 2(x30)
	sw x75, 0(x31)
	sw x76, 0(x32)
pretrace_pixels_bneelse_b5534:
# B5534
pretrace_pixels_beqelse_b5502:
# B5502
pretrace_pixels_beqelse_b5500:
# B5500
pretrace_pixels_cont_b5536:
# B5536
	j	pretrace_pixels_loop_b5458
pretrace_pixels_bneelse_b5459:
# B5459
pretrace_pixels_cont_b5537:
# B5537
	addi x5, x71, 1
	mv x71, x5
	j	pretrace_pixels_loop_b5455
pretrace_pixels_bneelse_b5456:
# B5456
	j pretrace_pixels_cont_b5660 # adhoc jump(2)
pretrace_pixels_beqelse_b5454:
# B5454
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
	bne	x75, x12, pretrace_pixels_beqelse_b5539
# B5538
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
	beq	x76, zero, pretrace_pixels_bneelse_b5541
# B5540
	mv x76, zero
	j pretrace_pixels_cont_b5544 # adhoc jump(2)
pretrace_pixels_bneelse_b5541:
# B5541
	lw x76, 2(x71)
	fmul x76, x75, x76
	fadd x76, x76, x74
	fabs x76, x76
	lw x77, 4(x69)
	lw x77, 2(x77)
	fle x76, x77, x76
	beq	x76, zero, pretrace_pixels_bneelse_b5543
# B5542
	mv x76, zero
	j pretrace_pixels_cont_b5544 # adhoc jump(2)
pretrace_pixels_bneelse_b5543:
# B5543
	lw x76, 1(x67)
	feq x76, x76, zero
	xori x76, x76, 1
pretrace_pixels_cont_b5544:
# B5544
	bne	x76, zero, pretrace_pixels_beqelse_b5546
# B5545
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
	beq	x76, zero, pretrace_pixels_bneelse_b5548
# B5547
	mv x76, zero
	j pretrace_pixels_cont_b5551 # adhoc jump(2)
pretrace_pixels_bneelse_b5548:
# B5548
	lw x76, 2(x71)
	fmul x76, x75, x76
	fadd x76, x76, x74
	fabs x76, x76
	lw x77, 4(x69)
	lw x77, 2(x77)
	fle x76, x77, x76
	beq	x76, zero, pretrace_pixels_bneelse_b5550
# B5549
	mv x76, zero
	j pretrace_pixels_cont_b5551 # adhoc jump(2)
pretrace_pixels_bneelse_b5550:
# B5550
	lw x76, 3(x67)
	feq x76, x76, zero
	xori x76, x76, 1
pretrace_pixels_cont_b5551:
# B5551
	bne	x76, zero, pretrace_pixels_beqelse_b5553
# B5552
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
	beq	x72, zero, pretrace_pixels_bneelse_b5555
# B5554
	mv x67, zero
	j pretrace_pixels_cont_b5558 # adhoc jump(2)
pretrace_pixels_bneelse_b5555:
# B5555
	lw x71, 1(x71)
	fmul x71, x74, x71
	fadd x71, x71, x73
	fabs x71, x71
	lw x69, 4(x69)
	lw x69, 1(x69)
	fle x69, x69, x71
	beq	x69, zero, pretrace_pixels_bneelse_b5557
# B5556
	mv x67, zero
	j pretrace_pixels_cont_b5558 # adhoc jump(2)
pretrace_pixels_bneelse_b5557:
# B5557
	lw x67, 5(x67)
	feq x67, x67, zero
	xori x67, x67, 1
pretrace_pixels_cont_b5558:
# B5558
	bne	x67, zero, pretrace_pixels_beqelse_b5560
# B5559
	mv x70, zero
	j pretrace_pixels_cont_b5572 # adhoc jump(2)
pretrace_pixels_beqelse_b5560:
# B5560
	sw x74, 0(x7)
	j pretrace_pixels_cont_b5572 # adhoc jump(2)
pretrace_pixels_beqelse_b5553:
# B5553
	sw x75, 0(x7)
	mv x70, x107
	j pretrace_pixels_cont_b5572 # adhoc jump(2)
pretrace_pixels_beqelse_b5546:
# B5546
	sw x75, 0(x7)
	mv x70, x12
	j pretrace_pixels_cont_b5572 # adhoc jump(2)
pretrace_pixels_beqelse_b5539:
# B5539
	bne	x75, x107, pretrace_pixels_beqelse_b5562
# B5561
	lw x69, 0(x67)
	fle x69, zero, x69
	beq	x69, zero, pretrace_pixels_bneelse_b5564
# B5563
	mv x70, zero
	j pretrace_pixels_cont_b5572 # adhoc jump(2)
pretrace_pixels_bneelse_b5564:
# B5564
	lw x67, 0(x67)
	lw x69, 3(x71)
	fmul x67, x67, x69
	sw x67, 0(x7)
	mv x70, x12
	j pretrace_pixels_cont_b5572 # adhoc jump(2)
pretrace_pixels_beqelse_b5562:
# B5562
	lw x70, 0(x67)
	feq x75, x70, zero
	bne	x75, zero, pretrace_pixels_beqelse_b5566
# B5565
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
	beq	x71, zero, pretrace_pixels_bneelse_b5568
# B5567
	mv x70, zero
	j pretrace_pixels_cont_b5572 # adhoc jump(2)
pretrace_pixels_bneelse_b5568:
# B5568
	lw x69, 6(x69)
	fsqrt x70, x70
	bne	x69, zero, pretrace_pixels_beqelse_b5570
# B5569
	fsub x69, x72, x70
	lw x67, 4(x67)
	fmul x67, x69, x67
	sw x67, 0(x7)
	j pretrace_pixels_cont_b5571 # adhoc jump(2)
pretrace_pixels_beqelse_b5570:
# B5570
	fadd x69, x72, x70
	lw x67, 4(x67)
	fmul x67, x69, x67
	sw x67, 0(x7)
pretrace_pixels_cont_b5571:
# B5571
	mv x70, x12
	j pretrace_pixels_cont_b5572 # adhoc jump(2)
pretrace_pixels_beqelse_b5566:
# B5566
	mv x70, zero
pretrace_pixels_cont_b5572:
# B5572
	beq	x70, zero, pretrace_pixels_bneelse_b5573
# B5574
	lw x67, 0(x7)
	lw x69, 0(x20)
	fle x67, x69, x67
	bne	x67, zero, pretrace_pixels_beqelse_b5575
# B5576
	mv x70, x5
	mv x69, x12
	mv x71, x66
pretrace_pixels_loop_b5577:
# B5577
	add x4, x70, x69
	lw x5, 0(x4)
	beq	x5, x68, pretrace_pixels_bneelse_b5578
# B5579
	la x67, min_caml_and_net
	add x4, x67, x5
	lw x5, 0(x4)
	mv x72, x5
	mv x67, zero
	mv x73, x71
pretrace_pixels_loop_b5580:
# B5580
	lw x5, 0(x73)
	add x4, x72, x67
	lw x74, 0(x4)
	beq	x74, x68, pretrace_pixels_bneelse_b5581
# B5582
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
	bne	x80, x12, pretrace_pixels_beqelse_b5584
# B5583
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
	beq	x81, zero, pretrace_pixels_bneelse_b5586
# B5585
	mv x81, zero
	j pretrace_pixels_cont_b5589 # adhoc jump(2)
pretrace_pixels_bneelse_b5586:
# B5586
	lw x81, 2(x76)
	fmul x81, x80, x81
	fadd x81, x81, x79
	fabs x81, x81
	lw x82, 4(x75)
	lw x82, 2(x82)
	fle x81, x82, x81
	beq	x81, zero, pretrace_pixels_bneelse_b5588
# B5587
	mv x81, zero
	j pretrace_pixels_cont_b5589 # adhoc jump(2)
pretrace_pixels_bneelse_b5588:
# B5588
	lw x81, 1(x8)
	feq x81, x81, zero
	xori x81, x81, 1
pretrace_pixels_cont_b5589:
# B5589
	bne	x81, zero, pretrace_pixels_beqelse_b5591
# B5590
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
	beq	x81, zero, pretrace_pixels_bneelse_b5593
# B5592
	mv x81, zero
	j pretrace_pixels_cont_b5596 # adhoc jump(2)
pretrace_pixels_bneelse_b5593:
# B5593
	lw x81, 2(x76)
	fmul x81, x80, x81
	fadd x81, x81, x79
	fabs x81, x81
	lw x82, 4(x75)
	lw x82, 2(x82)
	fle x81, x82, x81
	beq	x81, zero, pretrace_pixels_bneelse_b5595
# B5594
	mv x81, zero
	j pretrace_pixels_cont_b5596 # adhoc jump(2)
pretrace_pixels_bneelse_b5595:
# B5595
	lw x81, 3(x8)
	feq x81, x81, zero
	xori x81, x81, 1
pretrace_pixels_cont_b5596:
# B5596
	bne	x81, zero, pretrace_pixels_beqelse_b5598
# B5597
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
	beq	x77, zero, pretrace_pixels_bneelse_b5600
# B5599
	mv x75, zero
	j pretrace_pixels_cont_b5603 # adhoc jump(2)
pretrace_pixels_bneelse_b5600:
# B5600
	lw x76, 1(x76)
	fmul x76, x79, x76
	fadd x76, x76, x78
	fabs x76, x76
	lw x75, 4(x75)
	lw x75, 1(x75)
	fle x75, x75, x76
	beq	x75, zero, pretrace_pixels_bneelse_b5602
# B5601
	mv x75, zero
	j pretrace_pixels_cont_b5603 # adhoc jump(2)
pretrace_pixels_bneelse_b5602:
# B5602
	lw x75, 5(x8)
	feq x75, x75, zero
	xori x75, x75, 1
pretrace_pixels_cont_b5603:
# B5603
	bne	x75, zero, pretrace_pixels_beqelse_b5605
# B5604
	mv x75, zero
	j pretrace_pixels_cont_b5617 # adhoc jump(2)
pretrace_pixels_beqelse_b5605:
# B5605
	sw x79, 0(x7)
	li x75, 3
	j pretrace_pixels_cont_b5617 # adhoc jump(2)
pretrace_pixels_beqelse_b5598:
# B5598
	sw x80, 0(x7)
	li x75, 2
	j pretrace_pixels_cont_b5617 # adhoc jump(2)
pretrace_pixels_beqelse_b5591:
# B5591
	sw x80, 0(x7)
	li x75, 1
	j pretrace_pixels_cont_b5617 # adhoc jump(2)
pretrace_pixels_beqelse_b5584:
# B5584
	bne	x80, x107, pretrace_pixels_beqelse_b5607
# B5606
	lw x75, 0(x8)
	fle x75, zero, x75
	beq	x75, zero, pretrace_pixels_bneelse_b5609
# B5608
	mv x75, zero
	j pretrace_pixels_cont_b5617 # adhoc jump(2)
pretrace_pixels_bneelse_b5609:
# B5609
	lw x75, 0(x8)
	lw x76, 3(x76)
	fmul x75, x75, x76
	sw x75, 0(x7)
	li x75, 1
	j pretrace_pixels_cont_b5617 # adhoc jump(2)
pretrace_pixels_beqelse_b5607:
# B5607
	lw x80, 0(x8)
	feq x81, x80, zero
	bne	x81, zero, pretrace_pixels_beqelse_b5611
# B5610
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
	beq	x78, zero, pretrace_pixels_bneelse_b5613
# B5612
	mv x75, zero
	j pretrace_pixels_cont_b5617 # adhoc jump(2)
pretrace_pixels_bneelse_b5613:
# B5613
	lw x75, 6(x75)
	bne	x75, zero, pretrace_pixels_beqelse_b5615
# B5614
	fsqrt x75, x76
	fsub x75, x77, x75
	lw x76, 4(x8)
	fmul x75, x75, x76
	sw x75, 0(x7)
	j pretrace_pixels_cont_b5616 # adhoc jump(2)
pretrace_pixels_beqelse_b5615:
# B5615
	fsqrt x75, x76
	fadd x75, x77, x75
	lw x76, 4(x8)
	fmul x75, x75, x76
	sw x75, 0(x7)
pretrace_pixels_cont_b5616:
# B5616
	li x75, 1
	j pretrace_pixels_cont_b5617 # adhoc jump(2)
pretrace_pixels_beqelse_b5611:
# B5611
	mv x75, zero
pretrace_pixels_cont_b5617:
# B5617
	addi x67, x67, 1
	bne	x75, zero, pretrace_pixels_beqelse_b5619
# B5618
	add x4, x29, x74
	lw x5, 0(x4)
	lw x5, 6(x5)
	bne	x5, zero, pretrace_pixels_beqelse_b5621
# B5620
	j pretrace_pixels_cont_b5659 # adhoc jump(2)
pretrace_pixels_beqelse_b5621:
# B5621
	j	pretrace_pixels_loop_b5580
pretrace_pixels_beqelse_b5619:
# B5619
	lw x76, 0(x7)
	fle x77, x76, zero
	bne	x77, zero, pretrace_pixels_beqelse_b5622
# B5623
	lw x77, 0(x20)
	fle x77, x77, x76
	bne	x77, zero, pretrace_pixels_beqelse_b5624
# B5625
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
	j	pretrace_pixels_loop_b5626
pretrace_pixels_bneelse_b5653:	#moved
# B5653
	addi x79, x79, 1
pretrace_pixels_loop_b5626:
# B5626
	add x4, x8, x79
	lw x83, 0(x4)
	bne	x83, x68, pretrace_pixels_beqelse_b5628
# B5627
	li x79, 1
	j pretrace_pixels_cont_b5655 # adhoc jump(2)
pretrace_pixels_beqelse_b5628:
# B5628
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
	bne	x87, x12, pretrace_pixels_beqelse_b5630
# B5629
	fabs x84, x84
	lw x87, 4(x83)
	lw x87, 0(x87)
	fle x84, x87, x84
	beq	x84, zero, pretrace_pixels_bneelse_b5632
# B5631
	mv x84, zero
	j pretrace_pixels_cont_b5635 # adhoc jump(2)
pretrace_pixels_bneelse_b5632:
# B5632
	fabs x84, x85
	lw x85, 4(x83)
	lw x85, 1(x85)
	fle x84, x85, x84
	beq	x84, zero, pretrace_pixels_bneelse_b5634
# B5633
	mv x84, zero
	j pretrace_pixels_cont_b5635 # adhoc jump(2)
pretrace_pixels_bneelse_b5634:
# B5634
	fabs x84, x86
	lw x85, 4(x83)
	lw x85, 2(x85)
	fle x84, x85, x84
	xori x84, x84, 1
pretrace_pixels_cont_b5635:
# B5635
	bne	x84, zero, pretrace_pixels_beqelse_b5637
# B5636
	lw x83, 6(x83)
	xori x83, x83, 1
	j pretrace_pixels_cont_b5652 # adhoc jump(2)
pretrace_pixels_beqelse_b5637:
# B5637
	lw x83, 6(x83)
	j pretrace_pixels_cont_b5652 # adhoc jump(2)
pretrace_pixels_beqelse_b5630:
# B5630
	bne	x87, x107, pretrace_pixels_beqelse_b5639
# B5638
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
	bne	x83, zero, pretrace_pixels_beqelse_b5641
# B5640
	mv x83, x84
	j pretrace_pixels_cont_b5642 # adhoc jump(2)
pretrace_pixels_beqelse_b5641:
# B5641
	xori x83, x84, 1
pretrace_pixels_cont_b5642:
# B5642
	xori x83, x83, 1
	j pretrace_pixels_cont_b5652 # adhoc jump(2)
pretrace_pixels_beqelse_b5639:
# B5639
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
	bne	x88, zero, pretrace_pixels_beqelse_b5644
# B5643
	mv x84, x87
	j pretrace_pixels_cont_b5645 # adhoc jump(2)
pretrace_pixels_beqelse_b5644:
# B5644
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
pretrace_pixels_cont_b5645:
# B5645
	lw x85, 1(x83)
	li x86, 3
	bne	x85, x86, pretrace_pixels_beqelse_b5647
# B5646
	fsub x84, x84, x108
	j pretrace_pixels_cont_b5648 # adhoc jump(2)
pretrace_pixels_beqelse_b5647:
# B5647
pretrace_pixels_cont_b5648:
# B5648
	lw x83, 6(x83)
	fle x84, zero, x84
	xori x84, x84, 1
	bne	x83, zero, pretrace_pixels_beqelse_b5650
# B5649
	mv x83, x84
	j pretrace_pixels_cont_b5651 # adhoc jump(2)
pretrace_pixels_beqelse_b5650:
# B5650
	xori x83, x84, 1
pretrace_pixels_cont_b5651:
# B5651
	xori x83, x83, 1
pretrace_pixels_cont_b5652:
# B5652
	beq	x83, zero, pretrace_pixels_bneelse_b5653
# B5654
	mv x79, zero
pretrace_pixels_cont_b5655:
# B5655
	beq	x79, zero, pretrace_pixels_bneelse_b5656
# B5657
	sw x76, 0(x20)
	sw x77, 0(x30)
	sw x78, 1(x30)
	sw x5, 2(x30)
	sw x74, 0(x31)
	sw x75, 0(x32)
pretrace_pixels_bneelse_b5656:
# B5656
pretrace_pixels_beqelse_b5624:
# B5624
pretrace_pixels_beqelse_b5622:
# B5622
pretrace_pixels_cont_b5658:
# B5658
	j	pretrace_pixels_loop_b5580
pretrace_pixels_bneelse_b5581:
# B5581
pretrace_pixels_cont_b5659:
# B5659
	addi x5, x69, 1
	mv x69, x5
	j	pretrace_pixels_loop_b5577
pretrace_pixels_bneelse_b5578:
# B5578
pretrace_pixels_beqelse_b5575:
# B5575
pretrace_pixels_bneelse_b5573:
# B5573
pretrace_pixels_cont_b5660:
# B5660
	addi x5, x6, 1
	mv x6, x5
	j	pretrace_pixels_loop_b5450
pretrace_pixels_bneelse_b5451:
# B5451
# B5661
	lw x5, 0(x20)
	fle x6, x5, x24
	beq	x6, zero, pretrace_pixels_bneelse_b5663
# B5662
	mv x5, zero
	j pretrace_pixels_cont_b5664 # adhoc jump(2)
pretrace_pixels_bneelse_b5663:
# B5663
	fle x5, x26, x5
	xori x5, x5, 1
pretrace_pixels_cont_b5664:
# B5664
	beq	x5, zero, pretrace_pixels_bneelse_b5665
# B5666
	lw x5, 0(x31)
	slli x5, x5, 2
	lw x6, 0(x32)
	add x5, x5, x6
	lw x6, 0(x28)
	bne	x5, x6, pretrace_pixels_beqelse_b5668
# B5667
	lw x5, 0(x22)
	mv x6, zero
	mv x65, x5
	j	pretrace_pixels_loop_b5669
pretrace_pixels_bneelse_b5904:	#moved
# B5904
pretrace_pixels_loop_b5669:
# B5669
	add x4, x65, x6
	lw x5, 0(x4)
	lw x66, 0(x5)
	bne	x66, x23, pretrace_pixels_beqelse_b5671
# B5670
	mv x5, zero
	j pretrace_pixels_cont_b5906 # adhoc jump(2)
pretrace_pixels_beqelse_b5671:
# B5671
	li x67, 99
	bne	x66, x67, pretrace_pixels_beqelse_b5673
# B5672
	li x66, 1
	j pretrace_pixels_cont_b5811 # adhoc jump(2)
pretrace_pixels_beqelse_b5673:
# B5673
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
	bne	x71, x12, pretrace_pixels_beqelse_b5675
# B5674
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
	beq	x73, zero, pretrace_pixels_bneelse_b5677
# B5676
	mv x73, zero
	j pretrace_pixels_cont_b5680 # adhoc jump(2)
pretrace_pixels_bneelse_b5677:
# B5677
	lw x73, 2(x71)
	fmul x73, x72, x73
	fadd x73, x73, x70
	fabs x73, x73
	lw x74, 4(x68)
	lw x74, 2(x74)
	fle x73, x74, x73
	beq	x73, zero, pretrace_pixels_bneelse_b5679
# B5678
	mv x73, zero
	j pretrace_pixels_cont_b5680 # adhoc jump(2)
pretrace_pixels_bneelse_b5679:
# B5679
	lw x73, 1(x66)
	feq x73, x73, zero
	xori x73, x73, 1
pretrace_pixels_cont_b5680:
# B5680
	bne	x73, zero, pretrace_pixels_beqelse_b5682
# B5681
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
	beq	x73, zero, pretrace_pixels_bneelse_b5684
# B5683
	mv x73, zero
	j pretrace_pixels_cont_b5687 # adhoc jump(2)
pretrace_pixels_bneelse_b5684:
# B5684
	lw x73, 2(x71)
	fmul x73, x72, x73
	fadd x73, x73, x70
	fabs x73, x73
	lw x74, 4(x68)
	lw x74, 2(x74)
	fle x73, x74, x73
	beq	x73, zero, pretrace_pixels_bneelse_b5686
# B5685
	mv x73, zero
	j pretrace_pixels_cont_b5687 # adhoc jump(2)
pretrace_pixels_bneelse_b5686:
# B5686
	lw x73, 3(x66)
	feq x73, x73, zero
	xori x73, x73, 1
pretrace_pixels_cont_b5687:
# B5687
	bne	x73, zero, pretrace_pixels_beqelse_b5689
# B5688
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
	beq	x69, zero, pretrace_pixels_bneelse_b5691
# B5690
	mv x66, zero
	j pretrace_pixels_cont_b5694 # adhoc jump(2)
pretrace_pixels_bneelse_b5691:
# B5691
	lw x69, 1(x71)
	fmul x69, x70, x69
	fadd x69, x69, x7
	fabs x69, x69
	lw x68, 4(x68)
	lw x68, 1(x68)
	fle x68, x68, x69
	beq	x68, zero, pretrace_pixels_bneelse_b5693
# B5692
	mv x66, zero
	j pretrace_pixels_cont_b5694 # adhoc jump(2)
pretrace_pixels_bneelse_b5693:
# B5693
	lw x66, 5(x66)
	feq x66, x66, zero
	xori x66, x66, 1
pretrace_pixels_cont_b5694:
# B5694
	bne	x66, zero, pretrace_pixels_beqelse_b5696
# B5695
	mv x66, zero
	j pretrace_pixels_cont_b5714 # adhoc jump(2)
pretrace_pixels_beqelse_b5696:
# B5696
	la x66, min_caml_solver_dist
	sw x70, 0(x66)
	li x66, 3
	j pretrace_pixels_cont_b5714 # adhoc jump(2)
pretrace_pixels_beqelse_b5689:
# B5689
	la x66, min_caml_solver_dist
	sw x72, 0(x66)
	li x66, 2
	j pretrace_pixels_cont_b5714 # adhoc jump(2)
pretrace_pixels_beqelse_b5682:
# B5682
	la x66, min_caml_solver_dist
	sw x72, 0(x66)
	li x66, 1
	j pretrace_pixels_cont_b5714 # adhoc jump(2)
pretrace_pixels_beqelse_b5675:
# B5675
	bne	x71, x107, pretrace_pixels_beqelse_b5698
# B5697
	lw x68, 0(x66)
	fle x68, zero, x68
	beq	x68, zero, pretrace_pixels_bneelse_b5700
# B5699
	mv x66, zero
	j pretrace_pixels_cont_b5714 # adhoc jump(2)
pretrace_pixels_bneelse_b5700:
# B5700
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
	li x66, 1
	j pretrace_pixels_cont_b5714 # adhoc jump(2)
pretrace_pixels_beqelse_b5698:
# B5698
	lw x71, 0(x66)
	feq x72, x71, zero
	bne	x72, zero, pretrace_pixels_beqelse_b5702
# B5701
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
	bne	x75, zero, pretrace_pixels_beqelse_b5704
# B5703
	mv x69, x74
	j pretrace_pixels_cont_b5705 # adhoc jump(2)
pretrace_pixels_beqelse_b5704:
# B5704
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
pretrace_pixels_cont_b5705:
# B5705
	lw x7, 1(x68)
	bne	x7, x73, pretrace_pixels_beqelse_b5707
# B5706
	fsub x69, x69, x108
	j pretrace_pixels_cont_b5708 # adhoc jump(2)
pretrace_pixels_beqelse_b5707:
# B5707
pretrace_pixels_cont_b5708:
# B5708
	fmul x7, x72, x72
	fmul x69, x71, x69
	fsub x69, x7, x69
	fle x7, x69, zero
	beq	x7, zero, pretrace_pixels_bneelse_b5710
# B5709
	mv x66, zero
	j pretrace_pixels_cont_b5714 # adhoc jump(2)
pretrace_pixels_bneelse_b5710:
# B5710
	lw x68, 6(x68)
	bne	x68, zero, pretrace_pixels_beqelse_b5712
# B5711
	la x68, min_caml_solver_dist
	fsqrt x69, x69
	fsub x69, x72, x69
	lw x66, 4(x66)
	fmul x66, x69, x66
	sw x66, 0(x68)
	j pretrace_pixels_cont_b5713 # adhoc jump(2)
pretrace_pixels_beqelse_b5712:
# B5712
	la x68, min_caml_solver_dist
	fsqrt x69, x69
	fadd x69, x72, x69
	lw x66, 4(x66)
	fmul x66, x69, x66
	sw x66, 0(x68)
pretrace_pixels_cont_b5713:
# B5713
	li x66, 1
	j pretrace_pixels_cont_b5714 # adhoc jump(2)
pretrace_pixels_beqelse_b5702:
# B5702
	mv x66, zero
pretrace_pixels_cont_b5714:
# B5714
	bne	x66, zero, pretrace_pixels_beqelse_b5716
# B5715
	mv x66, zero
	j pretrace_pixels_cont_b5811 # adhoc jump(2)
pretrace_pixels_beqelse_b5716:
# B5716
	la x66, min_caml_solver_dist
	lw x68, 0(x66)
	fle x68, x24, x68
	beq	x68, zero, pretrace_pixels_bneelse_b5718
# B5717
	mv x66, zero
	j pretrace_pixels_cont_b5811 # adhoc jump(2)
pretrace_pixels_bneelse_b5718:
# B5718
	mv x69, x12
	mv x7, x5
	j	pretrace_pixels_loop_b5719
pretrace_pixels_bneelse_b5806:	#moved
# B5806
	addi x68, x69, 1
	mv x69, x68
pretrace_pixels_loop_b5719:
# B5719
	add x4, x7, x69
	lw x68, 0(x4)
	bne	x68, x23, pretrace_pixels_beqelse_b5721
# B5720
	mv x68, zero
	j pretrace_pixels_cont_b5808 # adhoc jump(2)
pretrace_pixels_beqelse_b5721:
# B5721
	la x70, min_caml_and_net
	add x4, x70, x68
	lw x68, 0(x4)
	mv x70, zero
	mv x71, x68
	j	pretrace_pixels_loop_b5722
pretrace_pixels_bneelse_b5803:	#moved
# B5803
pretrace_pixels_loop_b5722:
# B5722
	add x4, x71, x70
	lw x68, 0(x4)
	bne	x68, x23, pretrace_pixels_beqelse_b5724
# B5723
	mv x68, zero
	j pretrace_pixels_cont_b5805 # adhoc jump(2)
pretrace_pixels_beqelse_b5724:
# B5724
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
	bne	x77, x12, pretrace_pixels_beqelse_b5726
# B5725
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
	beq	x79, zero, pretrace_pixels_bneelse_b5728
# B5727
	mv x79, zero
	j pretrace_pixels_cont_b5731 # adhoc jump(2)
pretrace_pixels_bneelse_b5728:
# B5728
	lw x79, 2(x77)
	fmul x79, x78, x79
	fadd x79, x79, x75
	fabs x79, x79
	lw x8, 4(x72)
	lw x8, 2(x8)
	fle x79, x8, x79
	beq	x79, zero, pretrace_pixels_bneelse_b5730
# B5729
	mv x79, zero
	j pretrace_pixels_cont_b5731 # adhoc jump(2)
pretrace_pixels_bneelse_b5730:
# B5730
	lw x79, 1(x76)
	feq x79, x79, zero
	xori x79, x79, 1
pretrace_pixels_cont_b5731:
# B5731
	bne	x79, zero, pretrace_pixels_beqelse_b5733
# B5732
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
	beq	x79, zero, pretrace_pixels_bneelse_b5735
# B5734
	mv x79, zero
	j pretrace_pixels_cont_b5738 # adhoc jump(2)
pretrace_pixels_bneelse_b5735:
# B5735
	lw x79, 2(x77)
	fmul x79, x78, x79
	fadd x79, x79, x75
	fabs x79, x79
	lw x8, 4(x72)
	lw x8, 2(x8)
	fle x79, x8, x79
	beq	x79, zero, pretrace_pixels_bneelse_b5737
# B5736
	mv x79, zero
	j pretrace_pixels_cont_b5738 # adhoc jump(2)
pretrace_pixels_bneelse_b5737:
# B5737
	lw x79, 3(x76)
	feq x79, x79, zero
	xori x79, x79, 1
pretrace_pixels_cont_b5738:
# B5738
	bne	x79, zero, pretrace_pixels_beqelse_b5740
# B5739
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
	beq	x73, zero, pretrace_pixels_bneelse_b5742
# B5741
	mv x72, zero
	j pretrace_pixels_cont_b5745 # adhoc jump(2)
pretrace_pixels_bneelse_b5742:
# B5742
	lw x73, 1(x77)
	fmul x73, x75, x73
	fadd x73, x73, x74
	fabs x73, x73
	lw x72, 4(x72)
	lw x72, 1(x72)
	fle x72, x72, x73
	beq	x72, zero, pretrace_pixels_bneelse_b5744
# B5743
	mv x72, zero
	j pretrace_pixels_cont_b5745 # adhoc jump(2)
pretrace_pixels_bneelse_b5744:
# B5744
	lw x72, 5(x76)
	feq x72, x72, zero
	xori x72, x72, 1
pretrace_pixels_cont_b5745:
# B5745
	bne	x72, zero, pretrace_pixels_beqelse_b5747
# B5746
	mv x72, zero
	j pretrace_pixels_cont_b5765 # adhoc jump(2)
pretrace_pixels_beqelse_b5747:
# B5747
	sw x75, 0(x66)
	li x72, 3
	j pretrace_pixels_cont_b5765 # adhoc jump(2)
pretrace_pixels_beqelse_b5740:
# B5740
	sw x78, 0(x66)
	li x72, 2
	j pretrace_pixels_cont_b5765 # adhoc jump(2)
pretrace_pixels_beqelse_b5733:
# B5733
	sw x78, 0(x66)
	li x72, 1
	j pretrace_pixels_cont_b5765 # adhoc jump(2)
pretrace_pixels_beqelse_b5726:
# B5726
	bne	x77, x107, pretrace_pixels_beqelse_b5749
# B5748
	lw x72, 0(x76)
	fle x72, zero, x72
	beq	x72, zero, pretrace_pixels_bneelse_b5751
# B5750
	mv x72, zero
	j pretrace_pixels_cont_b5765 # adhoc jump(2)
pretrace_pixels_bneelse_b5751:
# B5751
	lw x72, 1(x76)
	fmul x72, x72, x73
	lw x73, 2(x76)
	fmul x73, x73, x74
	fadd x72, x72, x73
	lw x73, 3(x76)
	fmul x73, x73, x75
	fadd x72, x72, x73
	sw x72, 0(x66)
	li x72, 1
	j pretrace_pixels_cont_b5765 # adhoc jump(2)
pretrace_pixels_beqelse_b5749:
# B5749
	lw x77, 0(x76)
	feq x78, x77, zero
	bne	x78, zero, pretrace_pixels_beqelse_b5753
# B5752
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
	bne	x80, zero, pretrace_pixels_beqelse_b5755
# B5754
	mv x73, x8
	j pretrace_pixels_cont_b5756 # adhoc jump(2)
pretrace_pixels_beqelse_b5755:
# B5755
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
pretrace_pixels_cont_b5756:
# B5756
	lw x74, 1(x72)
	bne	x74, x79, pretrace_pixels_beqelse_b5758
# B5757
	fsub x73, x73, x108
	j pretrace_pixels_cont_b5759 # adhoc jump(2)
pretrace_pixels_beqelse_b5758:
# B5758
pretrace_pixels_cont_b5759:
# B5759
	fmul x74, x78, x78
	fmul x73, x77, x73
	fsub x73, x74, x73
	fle x74, x73, zero
	beq	x74, zero, pretrace_pixels_bneelse_b5761
# B5760
	mv x72, zero
	j pretrace_pixels_cont_b5765 # adhoc jump(2)
pretrace_pixels_bneelse_b5761:
# B5761
	lw x72, 6(x72)
	bne	x72, zero, pretrace_pixels_beqelse_b5763
# B5762
	fsqrt x72, x73
	fsub x72, x78, x72
	lw x73, 4(x76)
	fmul x72, x72, x73
	sw x72, 0(x66)
	j pretrace_pixels_cont_b5764 # adhoc jump(2)
pretrace_pixels_beqelse_b5763:
# B5763
	fsqrt x72, x73
	fadd x72, x78, x72
	lw x73, 4(x76)
	fmul x72, x72, x73
	sw x72, 0(x66)
pretrace_pixels_cont_b5764:
# B5764
	li x72, 1
	j pretrace_pixels_cont_b5765 # adhoc jump(2)
pretrace_pixels_beqelse_b5753:
# B5753
	mv x72, zero
pretrace_pixels_cont_b5765:
# B5765
	lw x73, 0(x66)
	bne	x72, zero, pretrace_pixels_beqelse_b5767
# B5766
	mv x72, zero
	j pretrace_pixels_cont_b5768 # adhoc jump(2)
pretrace_pixels_beqelse_b5767:
# B5767
	lui x72, 779469
	addi x72, x72, -819
	fle x72, x72, x73
	xori x72, x72, 1
pretrace_pixels_cont_b5768:
# B5768
	addi x70, x70, 1
	bne	x72, zero, pretrace_pixels_beqelse_b5770
# B5769
	add x4, x29, x68
	lw x68, 0(x4)
	lw x68, 6(x68)
	bne	x68, zero, pretrace_pixels_beqelse_b5772
# B5771
	mv x68, zero
	j pretrace_pixels_cont_b5805 # adhoc jump(2)
pretrace_pixels_beqelse_b5772:
# B5772
	j	pretrace_pixels_loop_b5722
pretrace_pixels_beqelse_b5770:
# B5770
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
	j	pretrace_pixels_loop_b5773
pretrace_pixels_bneelse_b5800:	#moved
# B5800
	addi x68, x72, 1
	mv x72, x68
pretrace_pixels_loop_b5773:
# B5773
	add x4, x75, x72
	lw x68, 0(x4)
	bne	x68, x23, pretrace_pixels_beqelse_b5775
# B5774
	li x68, 1
	j pretrace_pixels_cont_b5802 # adhoc jump(2)
pretrace_pixels_beqelse_b5775:
# B5775
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
	bne	x8, x12, pretrace_pixels_beqelse_b5777
# B5776
	fabs x73, x73
	lw x8, 4(x68)
	lw x8, 0(x8)
	fle x73, x8, x73
	beq	x73, zero, pretrace_pixels_bneelse_b5779
# B5778
	mv x73, zero
	j pretrace_pixels_cont_b5782 # adhoc jump(2)
pretrace_pixels_bneelse_b5779:
# B5779
	fabs x73, x74
	lw x74, 4(x68)
	lw x74, 1(x74)
	fle x73, x74, x73
	beq	x73, zero, pretrace_pixels_bneelse_b5781
# B5780
	mv x73, zero
	j pretrace_pixels_cont_b5782 # adhoc jump(2)
pretrace_pixels_bneelse_b5781:
# B5781
	fabs x73, x79
	lw x74, 4(x68)
	lw x74, 2(x74)
	fle x73, x74, x73
	xori x73, x73, 1
pretrace_pixels_cont_b5782:
# B5782
	bne	x73, zero, pretrace_pixels_beqelse_b5784
# B5783
	lw x68, 6(x68)
	xori x68, x68, 1
	j pretrace_pixels_cont_b5799 # adhoc jump(2)
pretrace_pixels_beqelse_b5784:
# B5784
	lw x68, 6(x68)
	j pretrace_pixels_cont_b5799 # adhoc jump(2)
pretrace_pixels_beqelse_b5777:
# B5777
	bne	x8, x107, pretrace_pixels_beqelse_b5786
# B5785
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
	bne	x68, zero, pretrace_pixels_beqelse_b5788
# B5787
	mv x68, x73
	j pretrace_pixels_cont_b5789 # adhoc jump(2)
pretrace_pixels_beqelse_b5788:
# B5788
	xori x68, x73, 1
pretrace_pixels_cont_b5789:
# B5789
	xori x68, x68, 1
	j pretrace_pixels_cont_b5799 # adhoc jump(2)
pretrace_pixels_beqelse_b5786:
# B5786
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
	bne	x80, zero, pretrace_pixels_beqelse_b5791
# B5790
	mv x73, x8
	j pretrace_pixels_cont_b5792 # adhoc jump(2)
pretrace_pixels_beqelse_b5791:
# B5791
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
pretrace_pixels_cont_b5792:
# B5792
	lw x74, 1(x68)
	li x79, 3
	bne	x74, x79, pretrace_pixels_beqelse_b5794
# B5793
	fsub x73, x73, x108
	j pretrace_pixels_cont_b5795 # adhoc jump(2)
pretrace_pixels_beqelse_b5794:
# B5794
pretrace_pixels_cont_b5795:
# B5795
	lw x68, 6(x68)
	fle x73, zero, x73
	xori x73, x73, 1
	bne	x68, zero, pretrace_pixels_beqelse_b5797
# B5796
	mv x68, x73
	j pretrace_pixels_cont_b5798 # adhoc jump(2)
pretrace_pixels_beqelse_b5797:
# B5797
	xori x68, x73, 1
pretrace_pixels_cont_b5798:
# B5798
	xori x68, x68, 1
pretrace_pixels_cont_b5799:
# B5799
	beq	x68, zero, pretrace_pixels_bneelse_b5800
# B5801
	mv x68, zero
pretrace_pixels_cont_b5802:
# B5802
	beq	x68, zero, pretrace_pixels_bneelse_b5803
# B5804
	mv x68, x12
pretrace_pixels_cont_b5805:
# B5805
	beq	x68, zero, pretrace_pixels_bneelse_b5806
# B5807
	mv x68, x12
pretrace_pixels_cont_b5808:
# B5808
	bne	x68, zero, pretrace_pixels_beqelse_b5810
# B5809
	mv x66, zero
	j pretrace_pixels_cont_b5811 # adhoc jump(2)
pretrace_pixels_beqelse_b5810:
# B5810
	mv x66, x12
pretrace_pixels_cont_b5811:
# B5811
	addi x6, x6, 1
	beq	x66, zero, pretrace_pixels_bneelse_b5812
# B5813
	mv x67, x12
	mv x68, x5
	j	pretrace_pixels_loop_b5814
pretrace_pixels_bneelse_b5901:	#moved
# B5901
	addi x5, x67, 1
	mv x67, x5
pretrace_pixels_loop_b5814:
# B5814
	add x4, x68, x67
	lw x5, 0(x4)
	bne	x5, x23, pretrace_pixels_beqelse_b5816
# B5815
	mv x5, zero
	j pretrace_pixels_cont_b5903 # adhoc jump(2)
pretrace_pixels_beqelse_b5816:
# B5816
	la x66, min_caml_and_net
	add x4, x66, x5
	lw x5, 0(x4)
	mv x66, zero
	mv x69, x5
	j	pretrace_pixels_loop_b5817
pretrace_pixels_bneelse_b5898:	#moved
# B5898
pretrace_pixels_loop_b5817:
# B5817
	add x4, x69, x66
	lw x5, 0(x4)
	bne	x5, x23, pretrace_pixels_beqelse_b5819
# B5818
	mv x5, zero
	j pretrace_pixels_cont_b5900 # adhoc jump(2)
pretrace_pixels_beqelse_b5819:
# B5819
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
	bne	x75, x12, pretrace_pixels_beqelse_b5821
# B5820
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
	beq	x76, zero, pretrace_pixels_bneelse_b5823
# B5822
	mv x76, zero
	j pretrace_pixels_cont_b5826 # adhoc jump(2)
pretrace_pixels_bneelse_b5823:
# B5823
	lw x76, 2(x7)
	fmul x76, x75, x76
	fadd x76, x76, x73
	fabs x76, x76
	lw x77, 4(x70)
	lw x77, 2(x77)
	fle x76, x77, x76
	beq	x76, zero, pretrace_pixels_bneelse_b5825
# B5824
	mv x76, zero
	j pretrace_pixels_cont_b5826 # adhoc jump(2)
pretrace_pixels_bneelse_b5825:
# B5825
	lw x76, 1(x74)
	feq x76, x76, zero
	xori x76, x76, 1
pretrace_pixels_cont_b5826:
# B5826
	bne	x76, zero, pretrace_pixels_beqelse_b5828
# B5827
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
	beq	x76, zero, pretrace_pixels_bneelse_b5830
# B5829
	mv x76, zero
	j pretrace_pixels_cont_b5833 # adhoc jump(2)
pretrace_pixels_bneelse_b5830:
# B5830
	lw x76, 2(x7)
	fmul x76, x75, x76
	fadd x76, x76, x73
	fabs x76, x76
	lw x77, 4(x70)
	lw x77, 2(x77)
	fle x76, x77, x76
	beq	x76, zero, pretrace_pixels_bneelse_b5832
# B5831
	mv x76, zero
	j pretrace_pixels_cont_b5833 # adhoc jump(2)
pretrace_pixels_bneelse_b5832:
# B5832
	lw x76, 3(x74)
	feq x76, x76, zero
	xori x76, x76, 1
pretrace_pixels_cont_b5833:
# B5833
	bne	x76, zero, pretrace_pixels_beqelse_b5835
# B5834
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
	beq	x71, zero, pretrace_pixels_bneelse_b5837
# B5836
	mv x7, zero
	j pretrace_pixels_cont_b5840 # adhoc jump(2)
pretrace_pixels_bneelse_b5837:
# B5837
	lw x7, 1(x7)
	fmul x7, x73, x7
	fadd x7, x7, x72
	fabs x7, x7
	lw x70, 4(x70)
	lw x70, 1(x70)
	fle x7, x70, x7
	beq	x7, zero, pretrace_pixels_bneelse_b5839
# B5838
	mv x7, zero
	j pretrace_pixels_cont_b5840 # adhoc jump(2)
pretrace_pixels_bneelse_b5839:
# B5839
	lw x7, 5(x74)
	feq x7, x7, zero
	xori x7, x7, 1
pretrace_pixels_cont_b5840:
# B5840
	bne	x7, zero, pretrace_pixels_beqelse_b5842
# B5841
	mv x7, zero
	j pretrace_pixels_cont_b5860 # adhoc jump(2)
pretrace_pixels_beqelse_b5842:
# B5842
	la x7, min_caml_solver_dist
	sw x73, 0(x7)
	li x7, 3
	j pretrace_pixels_cont_b5860 # adhoc jump(2)
pretrace_pixels_beqelse_b5835:
# B5835
	la x7, min_caml_solver_dist
	sw x75, 0(x7)
	li x7, 2
	j pretrace_pixels_cont_b5860 # adhoc jump(2)
pretrace_pixels_beqelse_b5828:
# B5828
	la x7, min_caml_solver_dist
	sw x75, 0(x7)
	li x7, 1
	j pretrace_pixels_cont_b5860 # adhoc jump(2)
pretrace_pixels_beqelse_b5821:
# B5821
	bne	x75, x107, pretrace_pixels_beqelse_b5844
# B5843
	lw x7, 0(x74)
	fle x7, zero, x7
	beq	x7, zero, pretrace_pixels_bneelse_b5846
# B5845
	mv x7, zero
	j pretrace_pixels_cont_b5860 # adhoc jump(2)
pretrace_pixels_bneelse_b5846:
# B5846
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
	li x7, 1
	j pretrace_pixels_cont_b5860 # adhoc jump(2)
pretrace_pixels_beqelse_b5844:
# B5844
	lw x7, 0(x74)
	feq x75, x7, zero
	bne	x75, zero, pretrace_pixels_beqelse_b5848
# B5847
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
	bne	x78, zero, pretrace_pixels_beqelse_b5850
# B5849
	mv x71, x77
	j pretrace_pixels_cont_b5851 # adhoc jump(2)
pretrace_pixels_beqelse_b5850:
# B5850
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
pretrace_pixels_cont_b5851:
# B5851
	lw x72, 1(x70)
	bne	x72, x76, pretrace_pixels_beqelse_b5853
# B5852
	fsub x71, x71, x108
	j pretrace_pixels_cont_b5854 # adhoc jump(2)
pretrace_pixels_beqelse_b5853:
# B5853
pretrace_pixels_cont_b5854:
# B5854
	fmul x72, x75, x75
	fmul x7, x7, x71
	fsub x7, x72, x7
	fle x71, x7, zero
	beq	x71, zero, pretrace_pixels_bneelse_b5856
# B5855
	mv x7, zero
	j pretrace_pixels_cont_b5860 # adhoc jump(2)
pretrace_pixels_bneelse_b5856:
# B5856
	lw x70, 6(x70)
	bne	x70, zero, pretrace_pixels_beqelse_b5858
# B5857
	la x70, min_caml_solver_dist
	fsqrt x7, x7
	fsub x7, x75, x7
	lw x71, 4(x74)
	fmul x7, x7, x71
	sw x7, 0(x70)
	j pretrace_pixels_cont_b5859 # adhoc jump(2)
pretrace_pixels_beqelse_b5858:
# B5858
	la x70, min_caml_solver_dist
	fsqrt x7, x7
	fadd x7, x75, x7
	lw x71, 4(x74)
	fmul x7, x7, x71
	sw x7, 0(x70)
pretrace_pixels_cont_b5859:
# B5859
	li x7, 1
	j pretrace_pixels_cont_b5860 # adhoc jump(2)
pretrace_pixels_beqelse_b5848:
# B5848
	mv x7, zero
pretrace_pixels_cont_b5860:
# B5860
	la x70, min_caml_solver_dist
	lw x70, 0(x70)
	bne	x7, zero, pretrace_pixels_beqelse_b5862
# B5861
	mv x7, zero
	j pretrace_pixels_cont_b5863 # adhoc jump(2)
pretrace_pixels_beqelse_b5862:
# B5862
	lui x7, 779469
	addi x7, x7, -819
	fle x7, x7, x70
	xori x7, x7, 1
pretrace_pixels_cont_b5863:
# B5863
	addi x66, x66, 1
	bne	x7, zero, pretrace_pixels_beqelse_b5865
# B5864
	add x4, x29, x5
	lw x5, 0(x4)
	lw x5, 6(x5)
	bne	x5, zero, pretrace_pixels_beqelse_b5867
# B5866
	mv x5, zero
	j pretrace_pixels_cont_b5900 # adhoc jump(2)
pretrace_pixels_beqelse_b5867:
# B5867
	j	pretrace_pixels_loop_b5817
pretrace_pixels_beqelse_b5865:
# B5865
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
	j	pretrace_pixels_loop_b5868
pretrace_pixels_bneelse_b5895:	#moved
# B5895
	addi x5, x7, 1
	mv x7, x5
pretrace_pixels_loop_b5868:
# B5868
	add x4, x72, x7
	lw x5, 0(x4)
	bne	x5, x23, pretrace_pixels_beqelse_b5870
# B5869
	li x5, 1
	j pretrace_pixels_cont_b5897 # adhoc jump(2)
pretrace_pixels_beqelse_b5870:
# B5870
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
	bne	x77, x12, pretrace_pixels_beqelse_b5872
# B5871
	fabs x70, x70
	lw x77, 4(x5)
	lw x77, 0(x77)
	fle x70, x77, x70
	beq	x70, zero, pretrace_pixels_bneelse_b5874
# B5873
	mv x70, zero
	j pretrace_pixels_cont_b5877 # adhoc jump(2)
pretrace_pixels_bneelse_b5874:
# B5874
	fabs x70, x71
	lw x71, 4(x5)
	lw x71, 1(x71)
	fle x70, x71, x70
	beq	x70, zero, pretrace_pixels_bneelse_b5876
# B5875
	mv x70, zero
	j pretrace_pixels_cont_b5877 # adhoc jump(2)
pretrace_pixels_bneelse_b5876:
# B5876
	fabs x70, x76
	lw x71, 4(x5)
	lw x71, 2(x71)
	fle x70, x71, x70
	xori x70, x70, 1
pretrace_pixels_cont_b5877:
# B5877
	bne	x70, zero, pretrace_pixels_beqelse_b5879
# B5878
	lw x5, 6(x5)
	xori x5, x5, 1
	j pretrace_pixels_cont_b5894 # adhoc jump(2)
pretrace_pixels_beqelse_b5879:
# B5879
	lw x5, 6(x5)
	j pretrace_pixels_cont_b5894 # adhoc jump(2)
pretrace_pixels_beqelse_b5872:
# B5872
	bne	x77, x107, pretrace_pixels_beqelse_b5881
# B5880
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
	bne	x5, zero, pretrace_pixels_beqelse_b5883
# B5882
	mv x5, x70
	j pretrace_pixels_cont_b5884 # adhoc jump(2)
pretrace_pixels_beqelse_b5883:
# B5883
	xori x5, x70, 1
pretrace_pixels_cont_b5884:
# B5884
	xori x5, x5, 1
	j pretrace_pixels_cont_b5894 # adhoc jump(2)
pretrace_pixels_beqelse_b5881:
# B5881
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
	bne	x78, zero, pretrace_pixels_beqelse_b5886
# B5885
	mv x70, x77
	j pretrace_pixels_cont_b5887 # adhoc jump(2)
pretrace_pixels_beqelse_b5886:
# B5886
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
pretrace_pixels_cont_b5887:
# B5887
	lw x71, 1(x5)
	li x76, 3
	bne	x71, x76, pretrace_pixels_beqelse_b5889
# B5888
	fsub x70, x70, x108
	j pretrace_pixels_cont_b5890 # adhoc jump(2)
pretrace_pixels_beqelse_b5889:
# B5889
pretrace_pixels_cont_b5890:
# B5890
	lw x5, 6(x5)
	fle x70, zero, x70
	xori x70, x70, 1
	bne	x5, zero, pretrace_pixels_beqelse_b5892
# B5891
	mv x5, x70
	j pretrace_pixels_cont_b5893 # adhoc jump(2)
pretrace_pixels_beqelse_b5892:
# B5892
	xori x5, x70, 1
pretrace_pixels_cont_b5893:
# B5893
	xori x5, x5, 1
pretrace_pixels_cont_b5894:
# B5894
	beq	x5, zero, pretrace_pixels_bneelse_b5895
# B5896
	mv x5, zero
pretrace_pixels_cont_b5897:
# B5897
	beq	x5, zero, pretrace_pixels_bneelse_b5898
# B5899
	mv x5, x12
pretrace_pixels_cont_b5900:
# B5900
	beq	x5, zero, pretrace_pixels_bneelse_b5901
# B5902
	mv x5, x12
pretrace_pixels_cont_b5903:
# B5903
	beq	x5, zero, pretrace_pixels_bneelse_b5904
# B5905
	mv x5, x12
pretrace_pixels_cont_b5906:
# B5906
	bne	x5, zero, pretrace_pixels_beqelse_b5908
# B5907
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
	bne	x34, zero, pretrace_pixels_beqelse_b5909
# B5910
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
pretrace_pixels_beqelse_b5909:
# B5909
pretrace_pixels_cont_b5911:
# B5911
	fle x23, x28, zero
	bne	x23, zero, pretrace_pixels_beqelse_b5912
# B5913
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
pretrace_pixels_beqelse_b5912:
# B5912
pretrace_pixels_beqelse_b5908:
# B5908
	j pretrace_pixels_cont_b5914 # adhoc jump(2)
pretrace_pixels_bneelse_b5812:
# B5812
	j	pretrace_pixels_loop_b5669
pretrace_pixels_beqelse_b5668:
# B5668
pretrace_pixels_bneelse_b5665:
# B5665
pretrace_pixels_cont_b5914:
# B5914
	addi x23, x35, -1
	mv x35, x23
	j	pretrace_pixels_loop_b5447
pretrace_pixels_bleelse_b5449:
# B5449
# B5915
	lui x21, 253133
	addi x21, x21, -819
	fle x21, x16, x21
	bne	x21, zero, pretrace_pixels_beqelse_b5916
# B5917
	addi x21, x15, 1
	bge	x15, x100, pretrace_pixels_bgtelse_b5918
# B5919
	add x4, x14, x21
	sw x23, 0(x4)
pretrace_pixels_bgtelse_b5918:
# B5918
pretrace_pixels_cont_b5920:
# B5920
	beq	x27, x107, pretrace_pixels_bneelse_b5921
# B5922
pretrace_pixels_beqelse_b5916:
# B5916
	j pretrace_pixels_cont_b5923 # adhoc jump(2)
pretrace_pixels_bneelse_b5329:
# B5329
	j	pretrace_pixels_loop_b5186
pretrace_pixels_bleelse_b4741:
# B4741
pretrace_pixels_cont_b5923:
# B5923
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
pretrace_pixels_loop_b5924:
# B5924
	li x10, 4
	bgt	x110, x10, pretrace_pixels_bleelse_b5926
# B5925
	lw x10, 2(x109)
	add x4, x10, x110
	lw x10, 0(x4)
	bgt	zero, x10, pretrace_pixels_bleelse_b5928
# B5927
	lw x10, 3(x109)
	add x4, x10, x110
	lw x10, 0(x4)
	beq	x10, zero, pretrace_pixels_bneelse_b5929
# B5930
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
pretrace_pixels_loop_b5931:
# B5931
	bgt	zero, x14, pretrace_pixels_bleelse_b5933
# B5932
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
	bne	x16, x107, pretrace_pixels_beqelse_b5935
# B5934
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
	j pretrace_pixels_cont_b5944 # adhoc jump(2)
pretrace_pixels_beqelse_b5935:
# B5935
	bge	x107, x16, pretrace_pixels_bgtelse_b5936
# B5937
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
	bne	x21, zero, pretrace_pixels_beqelse_b5939
# B5938
	mv x12, x20
	j pretrace_pixels_cont_b5940 # adhoc jump(2)
pretrace_pixels_beqelse_b5939:
# B5939
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
pretrace_pixels_cont_b5940:
# B5940
	li x17, 3
	bne	x16, x17, pretrace_pixels_beqelse_b5942
# B5941
	fsub x12, x12, x108
	j pretrace_pixels_cont_b5943 # adhoc jump(2)
pretrace_pixels_beqelse_b5942:
# B5942
pretrace_pixels_cont_b5943:
# B5943
	sw x12, 3(x15)
pretrace_pixels_bgtelse_b5936:
# B5936
pretrace_pixels_cont_b5944:
# B5944
	addi x12, x14, -1
	mv x14, x12
	j	pretrace_pixels_loop_b5931
pretrace_pixels_bleelse_b5933:
# B5933
# B5945
	li x12, 118
	mv x115, x12
	mv x112, x10
	mv x113, x100
	mv x114, x11
pretrace_pixels_loop_b5946:
# B5946
	bgt	zero, x115, pretrace_pixels_bleelse_b5948
# B5947
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
	beq	x100, zero, pretrace_pixels_bneelse_b5950
# B5949
	add x4, x112, x115
	lw x5, 0(x4)
	lui x100, 274784
	fdiv x65, x10, x100
	addi	x2, x2, 17
	jal	trace_diffuse_ray.3279
	addi	x2, x2, -17
	j pretrace_pixels_cont_b5951 # adhoc jump(2)
pretrace_pixels_bneelse_b5950:
# B5950
	addi x100, x115, 1
	add x4, x112, x100
	lw x5, 0(x4)
	lui x100, 799072
	fdiv x65, x10, x100
	addi	x2, x2, 17
	jal	trace_diffuse_ray.3279
	addi	x2, x2, -17
pretrace_pixels_cont_b5951:
# B5951
	addi x10, x115, -2
	mv x115, x10
	j	pretrace_pixels_loop_b5946
pretrace_pixels_bleelse_b5948:
# B5948
# B5952
	lw x10, 5(x109)
	add x4, x10, x110
	lw x10, 0(x4)
	lw x100, 0(x111)
	sw x100, 0(x10)
	lw x100, 1(x111)
	sw x100, 1(x10)
	lw x100, 2(x111)
	sw x100, 2(x10)
pretrace_pixels_bneelse_b5929:
# B5929
pretrace_pixels_cont_b5953:
# B5953
	addi x10, x110, 1
	mv x110, x10
	j	pretrace_pixels_loop_b5924
pretrace_pixels_bleelse_b5928:
# B5928
pretrace_pixels_bleelse_b5926:
# B5926
pretrace_pixels_cont_b5954:
# B5954
	addi x10, x102, -1
	addi x100, x103, 1
	li x11, 5
	bgt	x11, x100, pretrace_pixels_bleelse_b5956
# B5955
	addi x100, x100, -5
	j pretrace_pixels_cont_b5957 # adhoc jump(2)
pretrace_pixels_bleelse_b5956:
# B5956
pretrace_pixels_cont_b5957:
# B5957
	mv x102, x10
	mv x103, x100
	j	pretrace_pixels_loop_b4731
pretrace_pixels_bleelse_b4733:
# B4733
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
# B5958
# B5959
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
	la x7, min_caml_Tt80076
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
	la x5, min_caml_Ta80089
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
	la x5, min_caml_Ta80094
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
	la x7, min_caml_Tt80135
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
	la x7, min_caml_Tt80148
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
	j	main_loop_b5960
main_bgtelse_b5961:	#moved
# B5961
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
	addi x10, x109, -1
	mv x109, x10
main_loop_b5960:
# B5960
	bge	x109, zero, main_bgtelse_b5961
# B5962
# B5963
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
	j	main_loop_b5964
main_bgtelse_b5965:	#moved
# B5965
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
	addi x10, x111, -1
	mv x111, x10
main_loop_b5964:
# B5964
	bge	x111, zero, main_bgtelse_b5965
# B5966
# B5967
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
	j	main_loop_b5968
main_bgtelse_b5969:	#moved
# B5969
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
	addi x10, x113, -1
	mv x113, x10
main_loop_b5968:
# B5968
	bge	x113, zero, main_bgtelse_b5969
# B5970
# B5971
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
	j	main_loop_b5972
main_bneelse_b5973:	#moved
# B5973
	fmul x14, x14, x114
main_loop_b5972:
# B5972
	fle x15, x13, x14
	beq	x15, zero, main_bneelse_b5973
# B5974
# B5975
	mv x16, x12
	mv x17, x14
	j	main_loop_b5976
main_beqelse_b5980:	#moved
# B5980
	fdiv x13, x17, x114
	mv x17, x13
main_loop_b5976:
# B5976
	fle x13, x113, x16
	beq	x13, zero, main_bneelse_b5977
# B5978
	fle x13, x16, x17
	bne	x13, zero, main_beqelse_b5980
# B5979
	fsub x13, x16, x17
	fdiv x14, x17, x114
	mv x16, x13
	mv x17, x14
	j	main_loop_b5976
main_bneelse_b5977:
# B5977
# B5981
	lui x115, 263313
	addi x115, x115, -37
	fle x13, x115, x16
	bne	x13, zero, main_beqelse_b5983
# B5982
	mv x14, x16
	j main_cont_b5984 # adhoc jump(2)
main_beqelse_b5983:
# B5983
	fsub x14, x16, x115
main_cont_b5984:
# B5984
	bne	x13, zero, main_beqelse_b5986
# B5985
	li x13, 1
	j main_cont_b5987 # adhoc jump(2)
main_beqelse_b5986:
# B5986
	mv x13, zero
main_cont_b5987:
# B5987
	lui x116, 261265
	addi x116, x116, -37
	fle x15, x116, x14
	bne	x15, zero, main_beqelse_b5989
# B5988
	j main_cont_b5990 # adhoc jump(2)
main_beqelse_b5989:
# B5989
	fsub x14, x115, x14
main_cont_b5990:
# B5990
	bne	x15, zero, main_beqelse_b5992
# B5991
	j main_cont_b5993 # adhoc jump(2)
main_beqelse_b5992:
# B5992
	xori x13, x13, 1
main_cont_b5993:
# B5993
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
	bne	x15, zero, main_beqelse_b5995
# B5994
	fmul x14, x14, x14
	fmul x15, x14, x120
	fadd x15, x119, x15
	fmul x15, x14, x15
	fadd x15, x118, x15
	fmul x14, x14, x15
	fadd x14, x16, x14
	j main_cont_b5996 # adhoc jump(2)
main_beqelse_b5995:
# B5995
	fsub x14, x116, x14
	fmul x15, x14, x14
	fmul x17, x15, x123
	fadd x17, x122, x17
	fmul x17, x15, x17
	fadd x17, x121, x17
	fmul x15, x15, x17
	fadd x15, x16, x15
	fmul x14, x14, x15
main_cont_b5996:
# B5996
	fle x15, x14, zero
	beq	x13, x15, main_bneelse_b5998
# B5997
	mv x13, x14
	j main_cont_b5999 # adhoc jump(2)
main_bneelse_b5998:
# B5998
	fsub x13, zero, x14
main_cont_b5999:
# B5999
	fle x100, x100, zero
	xori x100, x100, 1
	mv x15, x113
	mv x14, x12
	j	main_loop_b6000
main_bneelse_b6001:	#moved
# B6001
	fmul x15, x15, x114
main_loop_b6000:
# B6000
	fle x17, x14, x15
	beq	x17, zero, main_bneelse_b6001
# B6002
# B6003
	mv x19, x15
	mv x18, x12
	j	main_loop_b6004
main_beqelse_b6008:	#moved
# B6008
	fdiv x12, x19, x114
	mv x19, x12
main_loop_b6004:
# B6004
	fle x12, x113, x18
	beq	x12, zero, main_bneelse_b6005
# B6006
	fle x12, x18, x19
	bne	x12, zero, main_beqelse_b6008
# B6007
	fsub x12, x18, x19
	fdiv x14, x19, x114
	mv x18, x12
	mv x19, x14
	j	main_loop_b6004
main_bneelse_b6005:
# B6005
# B6009
	fle x12, x115, x18
	bne	x12, zero, main_beqelse_b6011
# B6010
	mv x14, x18
	j main_cont_b6012 # adhoc jump(2)
main_beqelse_b6011:
# B6011
	fsub x14, x18, x115
main_cont_b6012:
# B6012
	bne	x12, zero, main_beqelse_b6014
# B6013
	j main_cont_b6015 # adhoc jump(2)
main_beqelse_b6014:
# B6014
	xori x100, x100, 1
main_cont_b6015:
# B6015
	fle x12, x116, x14
	bne	x12, zero, main_beqelse_b6017
# B6016
	mv x12, x14
	j main_cont_b6018 # adhoc jump(2)
main_beqelse_b6017:
# B6017
	fsub x12, x115, x14
main_cont_b6018:
# B6018
	fle x14, x117, x12
	bne	x14, zero, main_beqelse_b6020
# B6019
	fmul x14, x12, x12
	fmul x15, x14, x123
	fadd x15, x122, x15
	fmul x15, x14, x15
	fadd x15, x121, x15
	fmul x14, x14, x15
	fadd x14, x16, x14
	fmul x12, x12, x14
	j main_cont_b6021 # adhoc jump(2)
main_beqelse_b6020:
# B6020
	fsub x12, x116, x12
	fmul x12, x12, x12
	fmul x14, x12, x120
	fadd x14, x119, x14
	fmul x14, x12, x14
	fadd x14, x118, x14
	fmul x12, x12, x14
	fadd x12, x16, x12
main_cont_b6021:
# B6021
	fle x14, x12, zero
	beq	x100, x14, main_bneelse_b6023
# B6022
	mv x100, x12
	j main_cont_b6024 # adhoc jump(2)
main_bneelse_b6023:
# B6023
	fsub x100, zero, x12
main_cont_b6024:
# B6024
	in32 x12
	fmul x12, x12, x11
	fabs x14, x12
	mv x15, x14
	mv x17, x113
	j	main_loop_b6025
main_bneelse_b6026:	#moved
# B6026
	fmul x17, x17, x114
main_loop_b6025:
# B6025
	fle x18, x15, x17
	beq	x18, zero, main_bneelse_b6026
# B6027
# B6028
	mv x19, x14
	mv x20, x17
	j	main_loop_b6029
main_beqelse_b6033:	#moved
# B6033
	fdiv x15, x20, x114
	mv x20, x15
main_loop_b6029:
# B6029
	fle x15, x113, x19
	beq	x15, zero, main_bneelse_b6030
# B6031
	fle x15, x19, x20
	bne	x15, zero, main_beqelse_b6033
# B6032
	fsub x15, x19, x20
	fdiv x17, x20, x114
	mv x19, x15
	mv x20, x17
	j	main_loop_b6029
main_bneelse_b6030:
# B6030
# B6034
	fle x15, x115, x19
	bne	x15, zero, main_beqelse_b6036
# B6035
	mv x17, x19
	j main_cont_b6037 # adhoc jump(2)
main_beqelse_b6036:
# B6036
	fsub x17, x19, x115
main_cont_b6037:
# B6037
	bne	x15, zero, main_beqelse_b6039
# B6038
	li x15, 1
	j main_cont_b6040 # adhoc jump(2)
main_beqelse_b6039:
# B6039
	mv x15, zero
main_cont_b6040:
# B6040
	fle x18, x116, x17
	bne	x18, zero, main_beqelse_b6042
# B6041
	j main_cont_b6043 # adhoc jump(2)
main_beqelse_b6042:
# B6042
	fsub x17, x115, x17
main_cont_b6043:
# B6043
	bne	x18, zero, main_beqelse_b6045
# B6044
	j main_cont_b6046 # adhoc jump(2)
main_beqelse_b6045:
# B6045
	xori x15, x15, 1
main_cont_b6046:
# B6046
	fle x18, x117, x17
	bne	x18, zero, main_beqelse_b6048
# B6047
	fmul x17, x17, x17
	fmul x18, x17, x120
	fadd x18, x119, x18
	fmul x18, x17, x18
	fadd x18, x118, x18
	fmul x17, x17, x18
	fadd x17, x16, x17
	j main_cont_b6049 # adhoc jump(2)
main_beqelse_b6048:
# B6048
	fsub x17, x116, x17
	fmul x18, x17, x17
	fmul x19, x18, x123
	fadd x19, x122, x19
	fmul x19, x18, x19
	fadd x19, x121, x19
	fmul x18, x18, x19
	fadd x18, x16, x18
	fmul x17, x17, x18
main_cont_b6049:
# B6049
	fle x18, x17, zero
	beq	x15, x18, main_bneelse_b6051
# B6050
	mv x15, x17
	j main_cont_b6052 # adhoc jump(2)
main_bneelse_b6051:
# B6051
	fsub x15, zero, x17
main_cont_b6052:
# B6052
	fle x12, x12, zero
	xori x12, x12, 1
	mv x17, x14
	mv x18, x113
	j	main_loop_b6053
main_bneelse_b6054:	#moved
# B6054
	fmul x18, x18, x114
main_loop_b6053:
# B6053
	fle x19, x17, x18
	beq	x19, zero, main_bneelse_b6054
# B6055
# B6056
	mv x20, x14
	mv x21, x18
	j	main_loop_b6057
main_beqelse_b6061:	#moved
# B6061
	fdiv x14, x21, x114
	mv x21, x14
main_loop_b6057:
# B6057
	fle x14, x113, x20
	beq	x14, zero, main_bneelse_b6058
# B6059
	fle x14, x20, x21
	bne	x14, zero, main_beqelse_b6061
# B6060
	fsub x14, x20, x21
	fdiv x17, x21, x114
	mv x20, x14
	mv x21, x17
	j	main_loop_b6057
main_bneelse_b6058:
# B6058
# B6062
	fle x14, x115, x20
	bne	x14, zero, main_beqelse_b6064
# B6063
	mv x17, x20
	j main_cont_b6065 # adhoc jump(2)
main_beqelse_b6064:
# B6064
	fsub x17, x20, x115
main_cont_b6065:
# B6065
	bne	x14, zero, main_beqelse_b6067
# B6066
	j main_cont_b6068 # adhoc jump(2)
main_beqelse_b6067:
# B6067
	xori x12, x12, 1
main_cont_b6068:
# B6068
	fle x14, x116, x17
	bne	x14, zero, main_beqelse_b6070
# B6069
	mv x14, x17
	j main_cont_b6071 # adhoc jump(2)
main_beqelse_b6070:
# B6070
	fsub x14, x115, x17
main_cont_b6071:
# B6071
	fle x17, x117, x14
	bne	x17, zero, main_beqelse_b6073
# B6072
	fmul x17, x14, x14
	fmul x18, x17, x123
	fadd x18, x122, x18
	fmul x18, x17, x18
	fadd x18, x121, x18
	fmul x17, x17, x18
	fadd x17, x16, x17
	fmul x14, x14, x17
	j main_cont_b6074 # adhoc jump(2)
main_beqelse_b6073:
# B6073
	fsub x14, x116, x14
	fmul x14, x14, x14
	fmul x17, x14, x120
	fadd x17, x119, x17
	fmul x17, x14, x17
	fadd x17, x118, x17
	fmul x14, x14, x17
	fadd x14, x16, x14
main_cont_b6074:
# B6074
	fle x17, x14, zero
	beq	x12, x17, main_bneelse_b6076
# B6075
	mv x12, x14
	j main_cont_b6077 # adhoc jump(2)
main_bneelse_b6076:
# B6076
	fsub x12, zero, x14
main_cont_b6077:
# B6077
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
	j	main_loop_b6078
main_bneelse_b6079:	#moved
# B6079
	fmul x13, x13, x114
main_loop_b6078:
# B6078
	fle x14, x12, x13
	beq	x14, zero, main_bneelse_b6079
# B6080
# B6081
	mv x15, x10
	mv x17, x13
	j	main_loop_b6082
main_beqelse_b6086:	#moved
# B6086
	fdiv x12, x17, x114
	mv x17, x12
main_loop_b6082:
# B6082
	fle x12, x113, x15
	beq	x12, zero, main_bneelse_b6083
# B6084
	fle x12, x15, x17
	bne	x12, zero, main_beqelse_b6086
# B6085
	fsub x12, x15, x17
	fdiv x13, x17, x114
	mv x15, x12
	mv x17, x13
	j	main_loop_b6082
main_bneelse_b6083:
# B6083
# B6087
	fle x12, x115, x15
	bne	x12, zero, main_beqelse_b6089
# B6088
	mv x13, x15
	j main_cont_b6090 # adhoc jump(2)
main_beqelse_b6089:
# B6089
	fsub x13, x15, x115
main_cont_b6090:
# B6090
	bne	x12, zero, main_beqelse_b6092
# B6091
	j main_cont_b6093 # adhoc jump(2)
main_beqelse_b6092:
# B6092
	xori x100, x100, 1
main_cont_b6093:
# B6093
	fle x12, x116, x13
	bne	x12, zero, main_beqelse_b6095
# B6094
	mv x12, x13
	j main_cont_b6096 # adhoc jump(2)
main_beqelse_b6095:
# B6095
	fsub x12, x115, x13
main_cont_b6096:
# B6096
	fle x13, x117, x12
	bne	x13, zero, main_beqelse_b6098
# B6097
	fmul x13, x12, x12
	fmul x14, x13, x123
	fadd x14, x122, x14
	fmul x14, x13, x14
	fadd x14, x121, x14
	fmul x13, x13, x14
	fadd x13, x16, x13
	fmul x12, x12, x13
	j main_cont_b6099 # adhoc jump(2)
main_beqelse_b6098:
# B6098
	fsub x12, x116, x12
	fmul x12, x12, x12
	fmul x13, x12, x120
	fadd x13, x119, x13
	fmul x13, x12, x13
	fadd x13, x118, x13
	fmul x12, x12, x13
	fadd x12, x16, x12
main_cont_b6099:
# B6099
	fle x13, x12, zero
	beq	x100, x13, main_bneelse_b6101
# B6100
	mv x100, x12
	j main_cont_b6102 # adhoc jump(2)
main_bneelse_b6101:
# B6101
	fsub x100, zero, x12
main_cont_b6102:
# B6102
	la x41, min_caml_light
	fsub x100, zero, x100
	sw x100, 1(x41)
	in32 x100
	fmul x100, x100, x11
	mv x12, x113
	mv x11, x10
	j	main_loop_b6103
main_bneelse_b6104:	#moved
# B6104
	fmul x12, x12, x114
main_loop_b6103:
# B6103
	fle x13, x11, x12
	beq	x13, zero, main_bneelse_b6104
# B6105
# B6106
	mv x15, x12
	mv x14, x10
	j	main_loop_b6107
main_beqelse_b6111:	#moved
# B6111
	fdiv x10, x15, x114
	mv x15, x10
main_loop_b6107:
# B6107
	fle x10, x113, x14
	beq	x10, zero, main_bneelse_b6108
# B6109
	fle x10, x14, x15
	bne	x10, zero, main_beqelse_b6111
# B6110
	fsub x10, x14, x15
	fdiv x11, x15, x114
	mv x15, x11
	mv x14, x10
	j	main_loop_b6107
main_bneelse_b6108:
# B6108
# B6112
	fle x10, x115, x14
	bne	x10, zero, main_beqelse_b6114
# B6113
	mv x11, x14
	j main_cont_b6115 # adhoc jump(2)
main_beqelse_b6114:
# B6114
	fsub x11, x14, x115
main_cont_b6115:
# B6115
	bne	x10, zero, main_beqelse_b6117
# B6116
	li x10, 1
	j main_cont_b6118 # adhoc jump(2)
main_beqelse_b6117:
# B6117
	mv x10, zero
main_cont_b6118:
# B6118
	fle x12, x116, x11
	bne	x12, zero, main_beqelse_b6120
# B6119
	j main_cont_b6121 # adhoc jump(2)
main_beqelse_b6120:
# B6120
	fsub x11, x115, x11
main_cont_b6121:
# B6121
	bne	x12, zero, main_beqelse_b6123
# B6122
	j main_cont_b6124 # adhoc jump(2)
main_beqelse_b6123:
# B6123
	xori x10, x10, 1
main_cont_b6124:
# B6124
	fle x12, x117, x11
	bne	x12, zero, main_beqelse_b6126
# B6125
	fmul x11, x11, x11
	fmul x12, x11, x120
	fadd x12, x119, x12
	fmul x12, x11, x12
	fadd x12, x118, x12
	fmul x11, x11, x12
	fadd x11, x16, x11
	j main_cont_b6127 # adhoc jump(2)
main_beqelse_b6126:
# B6126
	fsub x11, x116, x11
	fmul x12, x11, x11
	fmul x13, x12, x123
	fadd x13, x122, x13
	fmul x13, x12, x13
	fadd x13, x121, x13
	fmul x12, x12, x13
	fadd x12, x16, x12
	fmul x11, x11, x12
main_cont_b6127:
# B6127
	fle x12, x11, zero
	beq	x10, x12, main_bneelse_b6129
# B6128
	mv x10, x11
	j main_cont_b6130 # adhoc jump(2)
main_bneelse_b6129:
# B6129
	fsub x10, zero, x11
main_cont_b6130:
# B6130
	fle x11, x100, zero
	xori x11, x11, 1
	fabs x100, x100
	mv x12, x100
	mv x13, x113
	j	main_loop_b6131
main_bneelse_b6132:	#moved
# B6132
	fmul x13, x13, x114
main_loop_b6131:
# B6131
	fle x14, x12, x13
	beq	x14, zero, main_bneelse_b6132
# B6133
# B6134
	mv x15, x100
	mv x17, x13
	j	main_loop_b6135
main_beqelse_b6139:	#moved
# B6139
	fdiv x12, x17, x114
	mv x17, x12
main_loop_b6135:
# B6135
	fle x12, x113, x15
	beq	x12, zero, main_bneelse_b6136
# B6137
	fle x12, x15, x17
	bne	x12, zero, main_beqelse_b6139
# B6138
	fsub x12, x15, x17
	fdiv x13, x17, x114
	mv x15, x12
	mv x17, x13
	j	main_loop_b6135
main_bneelse_b6136:
# B6136
# B6140
	fle x12, x115, x15
	bne	x12, zero, main_beqelse_b6142
# B6141
	mv x13, x15
	j main_cont_b6143 # adhoc jump(2)
main_beqelse_b6142:
# B6142
	fsub x13, x15, x115
main_cont_b6143:
# B6143
	bne	x12, zero, main_beqelse_b6145
# B6144
	j main_cont_b6146 # adhoc jump(2)
main_beqelse_b6145:
# B6145
	xori x11, x11, 1
main_cont_b6146:
# B6146
	fle x12, x116, x13
	bne	x12, zero, main_beqelse_b6148
# B6147
	mv x12, x13
	j main_cont_b6149 # adhoc jump(2)
main_beqelse_b6148:
# B6148
	fsub x12, x115, x13
main_cont_b6149:
# B6149
	fle x13, x117, x12
	bne	x13, zero, main_beqelse_b6151
# B6150
	fmul x13, x12, x12
	fmul x14, x13, x123
	fadd x14, x122, x14
	fmul x14, x13, x14
	fadd x14, x121, x14
	fmul x13, x13, x14
	fadd x13, x16, x13
	fmul x12, x12, x13
	j main_cont_b6152 # adhoc jump(2)
main_beqelse_b6151:
# B6151
	fsub x12, x116, x12
	fmul x12, x12, x12
	fmul x13, x12, x120
	fadd x13, x119, x13
	fmul x13, x12, x13
	fadd x13, x118, x13
	fmul x12, x12, x13
	fadd x12, x16, x12
main_cont_b6152:
# B6152
	fle x13, x12, zero
	beq	x11, x13, main_bneelse_b6154
# B6153
	mv x11, x12
	j main_cont_b6155 # adhoc jump(2)
main_bneelse_b6154:
# B6154
	fsub x11, zero, x12
main_cont_b6155:
# B6155
	fmul x11, x10, x11
	sw x11, 0(x41)
	mv x12, x100
	mv x13, x113
	j	main_loop_b6156
main_bneelse_b6157:	#moved
# B6157
	fmul x11, x13, x114
	mv x13, x11
main_loop_b6156:
# B6156
	fle x11, x12, x13
	beq	x11, zero, main_bneelse_b6157
# B6158
# B6159
	mv x15, x13
	mv x14, x100
	j	main_loop_b6160
main_beqelse_b6164:	#moved
# B6164
	fdiv x100, x15, x114
	mv x15, x100
main_loop_b6160:
# B6160
	fle x100, x113, x14
	beq	x100, zero, main_bneelse_b6161
# B6162
	fle x100, x14, x15
	bne	x100, zero, main_beqelse_b6164
# B6163
	fsub x100, x14, x15
	fdiv x11, x15, x114
	mv x15, x11
	mv x14, x100
	j	main_loop_b6160
main_bneelse_b6161:
# B6161
# B6165
	fle x100, x115, x14
	bne	x100, zero, main_beqelse_b6167
# B6166
	mv x11, x14
	j main_cont_b6168 # adhoc jump(2)
main_beqelse_b6167:
# B6167
	fsub x11, x14, x115
main_cont_b6168:
# B6168
	bne	x100, zero, main_beqelse_b6170
# B6169
	li x100, 1
	j main_cont_b6171 # adhoc jump(2)
main_beqelse_b6170:
# B6170
	mv x100, zero
main_cont_b6171:
# B6171
	fle x12, x116, x11
	bne	x12, zero, main_beqelse_b6173
# B6172
	j main_cont_b6174 # adhoc jump(2)
main_beqelse_b6173:
# B6173
	fsub x11, x115, x11
main_cont_b6174:
# B6174
	bne	x12, zero, main_beqelse_b6176
# B6175
	j main_cont_b6177 # adhoc jump(2)
main_beqelse_b6176:
# B6176
	xori x100, x100, 1
main_cont_b6177:
# B6177
	fle x12, x117, x11
	bne	x12, zero, main_beqelse_b6179
# B6178
	fmul x11, x11, x11
	fmul x12, x11, x120
	fadd x12, x119, x12
	fmul x12, x11, x12
	fadd x12, x118, x12
	fmul x11, x11, x12
	fadd x11, x16, x11
	j main_cont_b6180 # adhoc jump(2)
main_beqelse_b6179:
# B6179
	fsub x11, x116, x11
	fmul x12, x11, x11
	fmul x13, x12, x123
	fadd x13, x122, x13
	fmul x13, x12, x13
	fadd x13, x121, x13
	fmul x12, x12, x13
	fadd x12, x16, x12
	fmul x11, x11, x12
main_cont_b6180:
# B6180
	fle x12, x11, zero
	beq	x100, x12, main_bneelse_b6182
# B6181
	mv x100, x11
	j main_cont_b6183 # adhoc jump(2)
main_bneelse_b6182:
# B6182
	fsub x100, zero, x11
main_cont_b6183:
# B6183
	fmul x10, x10, x100
	sw x10, 2(x41)
	la x10, min_caml_beam
	in32 x100
	sw x100, 0(x10)
	mv x5, zero
	addi	x2, x2, 43
	jal	read_object.3074
	addi	x2, x2, -43
	mv x42, zero
	j	main_loop_b6184
main_beqelse_b6186:	#moved
# B6186
	la x10, min_caml_and_net
	add x4, x10, x42
	sw x5, 0(x4)
	addi x10, x42, 1
	mv x42, x10
main_loop_b6184:
# B6184
	mv x5, zero
	addi	x2, x2, 43
	jal	read_net_item.3078
	addi	x2, x2, -43
	lw x10, 0(x5)
	li x100, -1
	bne	x10, x100, main_beqelse_b6186
# B6185
# B6187
	la x42, min_caml_or_net
	mv x5, zero
	addi	x2, x2, 43
	jal	read_or_network.3080
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
	bgt	zero, x10, main_bleelse_b6189
# B6188
	mv x100, x10
	mv x11, zero
main_loop_b6190:
# B6190
	mv x12, x103
	mv x10, x100
	mv x13, x43
	j	main_loop_b6191
main_bgtelse_b6192:	#moved
# B6192
	slli x12, x13, 3
	slli x14, x13, 1
	add x12, x12, x14
	mv x4, x13
	mv x13, x12
	mv x12, x4
main_loop_b6191:
# B6191
	bge	x10, x13, main_bgtelse_b6192
# B6193
# B6194
	mv x15, x103
	mv x16, zero
	mv x14, x12
	j	main_loop_b6195
main_bleelse_b6197:	#moved
# B6197
	slli x10, x15, 3
	slli x13, x15, 1
	add x10, x10, x13
	addi x13, x16, 1
	mv x15, x10
	mv x16, x13
main_loop_b6195:
# B6195
	bgt	x14, x15, main_bleelse_b6197
# B6196
# B6198
	sub x10, x11, x16
	addi x10, x10, -1
	mv x11, x10
	j	main_loop_b6199
main_bleelse_b6201:	#moved
# B6201
	li x10, 48
	out8 x10
	addi x10, x11, -1
	mv x11, x10
main_loop_b6199:
# B6199
	bgt	x11, zero, main_bleelse_b6201
# B6200
# B6202
	bne	x16, zero, main_beqelse_b6204
# B6203
	addi x10, x100, 48
	out8 x10
	j main_cont_b6236 # adhoc jump(2)
main_beqelse_b6204:
# B6204
	mv x15, x12
	mv x13, x12
	mv x10, x100
	mv x14, x103
	j	main_loop_b6205
main_bgtelse_b6206:	#moved
# B6206
	addi x14, x14, 1
	mv x15, x11
main_loop_b6205:
# B6205
	add x11, x15, x13
	bge	x10, x11, main_bgtelse_b6206
# B6207
# B6208
	mv x15, x12
	mv x18, x14
	mv x17, zero
	j	main_loop_b6209
main_beqelse_b6211:	#moved
# B6211
	add x10, x17, x15
	addi x11, x18, -1
	mv x17, x10
	mv x18, x11
main_loop_b6209:
# B6209
	bne	x18, zero, main_beqelse_b6211
# B6210
# B6212
	sub x10, x100, x17
	addi x100, x14, 48
	out8 x100
	mv x11, x16
	mv x100, x10
	j	main_loop_b6190
main_bleelse_b6189:
# B6189
	out8 x44
	sub x10, zero, x10
	mv x100, x10
	mv x11, zero
main_loop_b6213:
# B6213
	mv x12, x103
	mv x10, x100
	mv x13, x43
	j	main_loop_b6214
main_bgtelse_b6215:	#moved
# B6215
	slli x12, x13, 3
	slli x14, x13, 1
	add x12, x12, x14
	mv x4, x13
	mv x13, x12
	mv x12, x4
main_loop_b6214:
# B6214
	bge	x10, x13, main_bgtelse_b6215
# B6216
# B6217
	mv x15, x103
	mv x16, zero
	mv x14, x12
	j	main_loop_b6218
main_bleelse_b6220:	#moved
# B6220
	slli x10, x15, 3
	slli x13, x15, 1
	add x10, x10, x13
	addi x13, x16, 1
	mv x15, x10
	mv x16, x13
main_loop_b6218:
# B6218
	bgt	x14, x15, main_bleelse_b6220
# B6219
# B6221
	sub x10, x11, x16
	addi x10, x10, -1
	mv x11, x10
	j	main_loop_b6222
main_bleelse_b6224:	#moved
# B6224
	li x10, 48
	out8 x10
	addi x10, x11, -1
	mv x11, x10
main_loop_b6222:
# B6222
	bgt	x11, zero, main_bleelse_b6224
# B6223
# B6225
	bne	x16, zero, main_beqelse_b6227
# B6226
	addi x10, x100, 48
	out8 x10
main_cont_b6236:
# B6236
	li x45, 32
	out8 x45
	lw x10, 1(x102)
	bgt	zero, x10, main_bleelse_b6238
# B6237
	mv x100, x10
	mv x11, zero
main_loop_b6239:
# B6239
	mv x12, x103
	mv x10, x100
	mv x13, x43
	j	main_loop_b6240
main_bgtelse_b6241:	#moved
# B6241
	slli x12, x13, 3
	slli x14, x13, 1
	add x12, x12, x14
	mv x4, x13
	mv x13, x12
	mv x12, x4
main_loop_b6240:
# B6240
	bge	x10, x13, main_bgtelse_b6241
# B6242
# B6243
	mv x15, x103
	mv x16, zero
	mv x14, x12
	j	main_loop_b6244
main_bleelse_b6246:	#moved
# B6246
	slli x10, x15, 3
	slli x13, x15, 1
	add x10, x10, x13
	addi x13, x16, 1
	mv x15, x10
	mv x16, x13
main_loop_b6244:
# B6244
	bgt	x14, x15, main_bleelse_b6246
# B6245
# B6247
	sub x10, x11, x16
	addi x10, x10, -1
	mv x11, x10
	j	main_loop_b6248
main_bleelse_b6250:	#moved
# B6250
	li x10, 48
	out8 x10
	addi x10, x11, -1
	mv x11, x10
main_loop_b6248:
# B6248
	bgt	x11, zero, main_bleelse_b6250
# B6249
# B6251
	bne	x16, zero, main_beqelse_b6253
# B6252
	addi x10, x100, 48
	out8 x10
	j main_cont_b6285 # adhoc jump(2)
main_beqelse_b6253:
# B6253
	mv x15, x12
	mv x13, x12
	mv x10, x100
	mv x14, x103
	j	main_loop_b6254
main_bgtelse_b6255:	#moved
# B6255
	addi x14, x14, 1
	mv x15, x11
main_loop_b6254:
# B6254
	add x11, x15, x13
	bge	x10, x11, main_bgtelse_b6255
# B6256
# B6257
	mv x15, x12
	mv x18, x14
	mv x17, zero
	j	main_loop_b6258
main_beqelse_b6260:	#moved
# B6260
	add x10, x17, x15
	addi x11, x18, -1
	mv x17, x10
	mv x18, x11
main_loop_b6258:
# B6258
	bne	x18, zero, main_beqelse_b6260
# B6259
# B6261
	sub x10, x100, x17
	addi x100, x14, 48
	out8 x100
	mv x11, x16
	mv x100, x10
	j	main_loop_b6239
main_bleelse_b6238:
# B6238
	out8 x44
	sub x10, zero, x10
	mv x100, x10
	mv x11, zero
main_loop_b6262:
# B6262
	mv x12, x103
	mv x10, x100
	mv x13, x43
	j	main_loop_b6263
main_bgtelse_b6264:	#moved
# B6264
	slli x12, x13, 3
	slli x14, x13, 1
	add x12, x12, x14
	mv x4, x13
	mv x13, x12
	mv x12, x4
main_loop_b6263:
# B6263
	bge	x10, x13, main_bgtelse_b6264
# B6265
# B6266
	mv x15, x103
	mv x16, zero
	mv x14, x12
	j	main_loop_b6267
main_bleelse_b6269:	#moved
# B6269
	slli x10, x15, 3
	slli x13, x15, 1
	add x10, x10, x13
	addi x13, x16, 1
	mv x15, x10
	mv x16, x13
main_loop_b6267:
# B6267
	bgt	x14, x15, main_bleelse_b6269
# B6268
# B6270
	sub x10, x11, x16
	addi x10, x10, -1
	mv x11, x10
	j	main_loop_b6271
main_bleelse_b6273:	#moved
# B6273
	li x10, 48
	out8 x10
	addi x10, x11, -1
	mv x11, x10
main_loop_b6271:
# B6271
	bgt	x11, zero, main_bleelse_b6273
# B6272
# B6274
	bne	x16, zero, main_beqelse_b6276
# B6275
	addi x10, x100, 48
	out8 x10
main_cont_b6285:
# B6285
	out8 x45
	li x46, 255
	mv x10, x46
	mv x100, zero
main_loop_b6286:
# B6286
	mv x12, x103
	mv x11, x10
	mv x13, x43
	j	main_loop_b6287
main_bgtelse_b6288:	#moved
# B6288
	slli x12, x13, 3
	slli x14, x13, 1
	add x12, x12, x14
	mv x4, x13
	mv x13, x12
	mv x12, x4
main_loop_b6287:
# B6287
	bge	x11, x13, main_bgtelse_b6288
# B6289
# B6290
	mv x15, x103
	mv x16, zero
	mv x14, x12
	j	main_loop_b6291
main_bleelse_b6293:	#moved
# B6293
	slli x11, x15, 3
	slli x13, x15, 1
	add x11, x11, x13
	addi x13, x16, 1
	mv x15, x11
	mv x16, x13
main_loop_b6291:
# B6291
	bgt	x14, x15, main_bleelse_b6293
# B6292
# B6294
	sub x100, x100, x16
	addi x100, x100, -1
	mv x11, x100
	j	main_loop_b6295
main_bleelse_b6297:	#moved
# B6297
	li x100, 48
	out8 x100
	addi x100, x11, -1
	mv x11, x100
main_loop_b6295:
# B6295
	bgt	x11, zero, main_bleelse_b6297
# B6296
# B6298
	bne	x16, zero, main_beqelse_b6300
# B6299
	addi x10, x10, 48
	out8 x10
# B6309
	out8 x43
	mv x47, x112
main_loop_b6310:
# B6310
	li x48, 118
	bgt	zero, x47, main_bleelse_b6312
# B6311
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
	j	main_loop_b6313
main_bgtelse_b6314:	#moved
# B6314
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
	addi x10, x49, -1
	mv x49, x10
main_loop_b6313:
# B6313
	bge	x49, zero, main_bgtelse_b6314
# B6315
# B6316
	addi x10, x47, -1
	mv x47, x10
	j	main_loop_b6310
main_bleelse_b6312:
# B6312
# B6317
	li x10, 9
	mv x12, zero
	mv x100, x10
	mv x11, zero
main_loop_b6318:
# B6318
	bgt	zero, x100, main_bleelse_b6320
# B6319
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
main_loop_b6321:
# B6321
	bgt	zero, x15, main_bleelse_b6323
# B6322
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
main_loop_b6324:
# B6324
	lui x19, 253133
	addi x19, x19, -819
	bgt	x110, x20, main_bleelse_b6326
# B6325
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
# B6449
	fadd x10, x10, x19
	addi x20, x18, 2
	mv x25, x16
	mv x27, x20
	mv x26, x17
	mv x24, x10
	mv x23, zero
	mv x22, zero
	mv x21, zero
main_loop_b6450:
# B6450
	bgt	x110, x21, main_bleelse_b6452
# B6451
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
# B6575
	addi x10, x15, -1
	addi x15, x17, 1
	bgt	x110, x15, main_bleelse_b6577
# B6576
	addi x15, x15, -5
	j main_cont_b6578 # adhoc jump(2)
main_bleelse_b6577:
# B6577
main_cont_b6578:
# B6578
	mv x17, x15
	mv x15, x10
	j	main_loop_b6321
main_bleelse_b6452:
# B6452
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
	bne	x30, zero, main_beqelse_b6454
# B6453
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
	j main_cont_b6460 # adhoc jump(2)
main_beqelse_b6454:
# B6454
	fle x22, x31, x28
	bne	x22, zero, main_beqelse_b6456
# B6455
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
	j main_cont_b6457 # adhoc jump(2)
main_beqelse_b6456:
# B6456
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
main_cont_b6457:
# B6457
	bne	x23, zero, main_beqelse_b6459
# B6458
	fsub x22, zero, x22
	j main_cont_b6460 # adhoc jump(2)
main_beqelse_b6459:
# B6459
main_cont_b6460:
# B6460
	fmul x22, x22, x24
	fle x23, x22, zero
	xori x23, x23, 1
	fabs x22, x22
	mv x28, x22
	mv x30, x113
	j	main_loop_b6461
main_bneelse_b6462:	#moved
# B6462
	fmul x30, x30, x114
main_loop_b6461:
# B6461
	fle x37, x28, x30
	beq	x37, zero, main_bneelse_b6462
# B6463
# B6464
	mv x38, x22
	mv x39, x30
	j	main_loop_b6465
main_beqelse_b6469:	#moved
# B6469
	fdiv x28, x39, x114
	mv x39, x28
main_loop_b6465:
# B6465
	fle x28, x113, x38
	beq	x28, zero, main_bneelse_b6466
# B6467
	fle x28, x38, x39
	bne	x28, zero, main_beqelse_b6469
# B6468
	fsub x28, x38, x39
	fdiv x30, x39, x114
	mv x38, x28
	mv x39, x30
	j	main_loop_b6465
main_bneelse_b6466:
# B6466
# B6470
	fle x28, x115, x38
	bne	x28, zero, main_beqelse_b6472
# B6471
	mv x30, x38
	j main_cont_b6473 # adhoc jump(2)
main_beqelse_b6472:
# B6472
	fsub x30, x38, x115
main_cont_b6473:
# B6473
	bne	x28, zero, main_beqelse_b6475
# B6474
	j main_cont_b6476 # adhoc jump(2)
main_beqelse_b6475:
# B6475
	xori x23, x23, 1
main_cont_b6476:
# B6476
	fle x28, x116, x30
	bne	x28, zero, main_beqelse_b6478
# B6477
	mv x28, x30
	j main_cont_b6479 # adhoc jump(2)
main_beqelse_b6478:
# B6478
	fsub x28, x115, x30
main_cont_b6479:
# B6479
	fle x30, x117, x28
	bne	x30, zero, main_beqelse_b6481
# B6480
	fmul x30, x28, x28
	fmul x37, x30, x123
	fadd x37, x122, x37
	fmul x37, x30, x37
	fadd x37, x121, x37
	fmul x30, x30, x37
	fadd x30, x20, x30
	fmul x28, x28, x30
	j main_cont_b6482 # adhoc jump(2)
main_beqelse_b6481:
# B6481
	fsub x28, x116, x28
	fmul x28, x28, x28
	fmul x30, x28, x120
	fadd x30, x119, x30
	fmul x30, x28, x30
	fadd x30, x118, x30
	fmul x28, x28, x30
	fadd x28, x20, x28
main_cont_b6482:
# B6482
	fle x30, x28, zero
	beq	x23, x30, main_bneelse_b6484
# B6483
	mv x23, x28
	j main_cont_b6485 # adhoc jump(2)
main_bneelse_b6484:
# B6484
	fsub x23, zero, x28
main_cont_b6485:
# B6485
	mv x28, x22
	mv x30, x113
	j	main_loop_b6486
main_bneelse_b6487:	#moved
# B6487
	fmul x30, x30, x114
main_loop_b6486:
# B6486
	fle x37, x28, x30
	beq	x37, zero, main_bneelse_b6487
# B6488
# B6489
	mv x38, x22
	mv x39, x30
	j	main_loop_b6490
main_beqelse_b6494:	#moved
# B6494
	fdiv x22, x39, x114
	mv x39, x22
main_loop_b6490:
# B6490
	fle x22, x113, x38
	beq	x22, zero, main_bneelse_b6491
# B6492
	fle x22, x38, x39
	bne	x22, zero, main_beqelse_b6494
# B6493
	fsub x22, x38, x39
	fdiv x28, x39, x114
	mv x38, x22
	mv x39, x28
	j	main_loop_b6490
main_bneelse_b6491:
# B6491
# B6495
	fle x22, x115, x38
	bne	x22, zero, main_beqelse_b6497
# B6496
	mv x28, x38
	j main_cont_b6498 # adhoc jump(2)
main_beqelse_b6497:
# B6497
	fsub x28, x38, x115
main_cont_b6498:
# B6498
	bne	x22, zero, main_beqelse_b6500
# B6499
	li x22, 1
	j main_cont_b6501 # adhoc jump(2)
main_beqelse_b6500:
# B6500
	mv x22, zero
main_cont_b6501:
# B6501
	fle x30, x116, x28
	bne	x30, zero, main_beqelse_b6503
# B6502
	j main_cont_b6504 # adhoc jump(2)
main_beqelse_b6503:
# B6503
	fsub x28, x115, x28
main_cont_b6504:
# B6504
	bne	x30, zero, main_beqelse_b6506
# B6505
	j main_cont_b6507 # adhoc jump(2)
main_beqelse_b6506:
# B6506
	xori x22, x22, 1
main_cont_b6507:
# B6507
	fle x30, x117, x28
	bne	x30, zero, main_beqelse_b6509
# B6508
	fmul x28, x28, x28
	fmul x30, x28, x120
	fadd x30, x119, x30
	fmul x30, x28, x30
	fadd x30, x118, x30
	fmul x28, x28, x30
	fadd x28, x20, x28
	j main_cont_b6510 # adhoc jump(2)
main_beqelse_b6509:
# B6509
	fsub x28, x116, x28
	fmul x30, x28, x28
	fmul x37, x30, x123
	fadd x37, x122, x37
	fmul x37, x30, x37
	fadd x37, x121, x37
	fmul x30, x30, x37
	fadd x30, x20, x30
	fmul x28, x28, x30
main_cont_b6510:
# B6510
	fle x30, x28, zero
	beq	x22, x30, main_bneelse_b6512
# B6511
	mv x22, x28
	j main_cont_b6513 # adhoc jump(2)
main_bneelse_b6512:
# B6512
	fsub x22, zero, x28
main_cont_b6513:
# B6513
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
	bne	x29, zero, main_beqelse_b6515
# B6514
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
	j main_cont_b6521 # adhoc jump(2)
main_beqelse_b6515:
# B6515
	fle x23, x31, x30
	bne	x23, zero, main_beqelse_b6517
# B6516
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
	j main_cont_b6518 # adhoc jump(2)
main_beqelse_b6517:
# B6517
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
main_cont_b6518:
# B6518
	bne	x28, zero, main_beqelse_b6520
# B6519
	fsub x23, zero, x23
	j main_cont_b6521 # adhoc jump(2)
main_beqelse_b6520:
# B6520
main_cont_b6521:
# B6521
	fmul x23, x23, x25
	fle x28, x23, zero
	xori x28, x28, 1
	fabs x23, x23
	mv x29, x23
	mv x30, x113
	j	main_loop_b6522
main_bneelse_b6523:	#moved
# B6523
	fmul x30, x30, x114
main_loop_b6522:
# B6522
	fle x31, x29, x30
	beq	x31, zero, main_bneelse_b6523
# B6524
# B6525
	mv x32, x23
	mv x33, x30
	j	main_loop_b6526
main_beqelse_b6530:	#moved
# B6530
	fdiv x29, x33, x114
	mv x33, x29
main_loop_b6526:
# B6526
	fle x29, x113, x32
	beq	x29, zero, main_bneelse_b6527
# B6528
	fle x29, x32, x33
	bne	x29, zero, main_beqelse_b6530
# B6529
	fsub x29, x32, x33
	fdiv x30, x33, x114
	mv x33, x30
	mv x32, x29
	j	main_loop_b6526
main_bneelse_b6527:
# B6527
# B6531
	fle x29, x115, x32
	bne	x29, zero, main_beqelse_b6533
# B6532
	mv x30, x32
	j main_cont_b6534 # adhoc jump(2)
main_beqelse_b6533:
# B6533
	fsub x30, x32, x115
main_cont_b6534:
# B6534
	bne	x29, zero, main_beqelse_b6536
# B6535
	j main_cont_b6537 # adhoc jump(2)
main_beqelse_b6536:
# B6536
	xori x28, x28, 1
main_cont_b6537:
# B6537
	fle x29, x116, x30
	bne	x29, zero, main_beqelse_b6539
# B6538
	mv x29, x30
	j main_cont_b6540 # adhoc jump(2)
main_beqelse_b6539:
# B6539
	fsub x29, x115, x30
main_cont_b6540:
# B6540
	fle x30, x117, x29
	bne	x30, zero, main_beqelse_b6542
# B6541
	fmul x30, x29, x29
	fmul x31, x30, x123
	fadd x31, x122, x31
	fmul x31, x30, x31
	fadd x31, x121, x31
	fmul x30, x30, x31
	fadd x30, x20, x30
	fmul x29, x29, x30
	j main_cont_b6543 # adhoc jump(2)
main_beqelse_b6542:
# B6542
	fsub x29, x116, x29
	fmul x29, x29, x29
	fmul x30, x29, x120
	fadd x30, x119, x30
	fmul x30, x29, x30
	fadd x30, x118, x30
	fmul x29, x29, x30
	fadd x29, x20, x29
main_cont_b6543:
# B6543
	fle x30, x29, zero
	beq	x28, x30, main_bneelse_b6545
# B6544
	mv x28, x29
	j main_cont_b6546 # adhoc jump(2)
main_bneelse_b6545:
# B6545
	fsub x28, zero, x29
main_cont_b6546:
# B6546
	mv x29, x23
	mv x30, x113
	j	main_loop_b6547
main_bneelse_b6548:	#moved
# B6548
	fmul x30, x30, x114
main_loop_b6547:
# B6547
	fle x31, x29, x30
	beq	x31, zero, main_bneelse_b6548
# B6549
# B6550
	mv x32, x23
	mv x33, x30
	j	main_loop_b6551
main_beqelse_b6555:	#moved
# B6555
	fdiv x23, x33, x114
	mv x33, x23
main_loop_b6551:
# B6551
	fle x23, x113, x32
	beq	x23, zero, main_bneelse_b6552
# B6553
	fle x23, x32, x33
	bne	x23, zero, main_beqelse_b6555
# B6554
	fsub x23, x32, x33
	fdiv x29, x33, x114
	mv x32, x23
	mv x33, x29
	j	main_loop_b6551
main_bneelse_b6552:
# B6552
# B6556
	fle x23, x115, x32
	bne	x23, zero, main_beqelse_b6558
# B6557
	mv x29, x32
	j main_cont_b6559 # adhoc jump(2)
main_beqelse_b6558:
# B6558
	fsub x29, x32, x115
main_cont_b6559:
# B6559
	bne	x23, zero, main_beqelse_b6561
# B6560
	li x23, 1
	j main_cont_b6562 # adhoc jump(2)
main_beqelse_b6561:
# B6561
	mv x23, zero
main_cont_b6562:
# B6562
	fle x30, x116, x29
	bne	x30, zero, main_beqelse_b6564
# B6563
	j main_cont_b6565 # adhoc jump(2)
main_beqelse_b6564:
# B6564
	fsub x29, x115, x29
main_cont_b6565:
# B6565
	bne	x30, zero, main_beqelse_b6567
# B6566
	j main_cont_b6568 # adhoc jump(2)
main_beqelse_b6567:
# B6567
	xori x23, x23, 1
main_cont_b6568:
# B6568
	fle x30, x117, x29
	bne	x30, zero, main_beqelse_b6570
# B6569
	fmul x29, x29, x29
	fmul x30, x29, x120
	fadd x30, x119, x30
	fmul x30, x29, x30
	fadd x30, x118, x30
	fmul x29, x29, x30
	fadd x20, x20, x29
	j main_cont_b6571 # adhoc jump(2)
main_beqelse_b6570:
# B6570
	fsub x29, x116, x29
	fmul x30, x29, x29
	fmul x31, x30, x123
	fadd x31, x122, x31
	fmul x31, x30, x31
	fadd x31, x121, x31
	fmul x30, x30, x31
	fadd x20, x20, x30
	fmul x20, x29, x20
main_cont_b6571:
# B6571
	fle x29, x20, zero
	beq	x23, x29, main_bneelse_b6573
# B6572
	j main_cont_b6574 # adhoc jump(2)
main_bneelse_b6573:
# B6573
	fsub x20, zero, x20
main_cont_b6574:
# B6574
	fdiv x20, x28, x20
	fmul x20, x20, x22
	mv x22, x10
	mv x23, x20
	j	main_loop_b6450
main_bleelse_b6326:
# B6326
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
	bne	x31, zero, main_beqelse_b6328
# B6327
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
	j main_cont_b6334 # adhoc jump(2)
main_beqelse_b6328:
# B6328
	fle x27, x32, x29
	bne	x27, zero, main_beqelse_b6330
# B6329
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
	j main_cont_b6331 # adhoc jump(2)
main_beqelse_b6330:
# B6330
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
main_cont_b6331:
# B6331
	bne	x28, zero, main_beqelse_b6333
# B6332
	fsub x27, zero, x27
	j main_cont_b6334 # adhoc jump(2)
main_beqelse_b6333:
# B6333
main_cont_b6334:
# B6334
	fmul x27, x27, x23
	fle x28, x27, zero
	xori x28, x28, 1
	fabs x27, x27
	mv x29, x27
	mv x31, x113
	j	main_loop_b6335
main_bneelse_b6336:	#moved
# B6336
	fmul x31, x31, x114
main_loop_b6335:
# B6335
	fle x38, x29, x31
	beq	x38, zero, main_bneelse_b6336
# B6337
# B6338
	mv x39, x27
	mv x40, x31
	j	main_loop_b6339
main_beqelse_b6343:	#moved
# B6343
	fdiv x29, x40, x114
	mv x40, x29
main_loop_b6339:
# B6339
	fle x29, x113, x39
	beq	x29, zero, main_bneelse_b6340
# B6341
	fle x29, x39, x40
	bne	x29, zero, main_beqelse_b6343
# B6342
	fsub x29, x39, x40
	fdiv x31, x40, x114
	mv x40, x31
	mv x39, x29
	j	main_loop_b6339
main_bneelse_b6340:
# B6340
# B6344
	fle x29, x115, x39
	bne	x29, zero, main_beqelse_b6346
# B6345
	mv x31, x39
	j main_cont_b6347 # adhoc jump(2)
main_beqelse_b6346:
# B6346
	fsub x31, x39, x115
main_cont_b6347:
# B6347
	bne	x29, zero, main_beqelse_b6349
# B6348
	j main_cont_b6350 # adhoc jump(2)
main_beqelse_b6349:
# B6349
	xori x28, x28, 1
main_cont_b6350:
# B6350
	fle x29, x116, x31
	bne	x29, zero, main_beqelse_b6352
# B6351
	mv x29, x31
	j main_cont_b6353 # adhoc jump(2)
main_beqelse_b6352:
# B6352
	fsub x29, x115, x31
main_cont_b6353:
# B6353
	fle x31, x117, x29
	bne	x31, zero, main_beqelse_b6355
# B6354
	fmul x31, x29, x29
	fmul x38, x31, x123
	fadd x38, x122, x38
	fmul x38, x31, x38
	fadd x38, x121, x38
	fmul x31, x31, x38
	fadd x31, x22, x31
	fmul x29, x29, x31
	j main_cont_b6356 # adhoc jump(2)
main_beqelse_b6355:
# B6355
	fsub x29, x116, x29
	fmul x29, x29, x29
	fmul x31, x29, x120
	fadd x31, x119, x31
	fmul x31, x29, x31
	fadd x31, x118, x31
	fmul x29, x29, x31
	fadd x29, x22, x29
main_cont_b6356:
# B6356
	fle x31, x29, zero
	beq	x28, x31, main_bneelse_b6358
# B6357
	mv x28, x29
	j main_cont_b6359 # adhoc jump(2)
main_bneelse_b6358:
# B6358
	fsub x28, zero, x29
main_cont_b6359:
# B6359
	mv x29, x27
	mv x31, x113
	j	main_loop_b6360
main_bneelse_b6361:	#moved
# B6361
	fmul x31, x31, x114
main_loop_b6360:
# B6360
	fle x38, x29, x31
	beq	x38, zero, main_bneelse_b6361
# B6362
# B6363
	mv x39, x27
	mv x40, x31
	j	main_loop_b6364
main_beqelse_b6368:	#moved
# B6368
	fdiv x27, x40, x114
	mv x40, x27
main_loop_b6364:
# B6364
	fle x27, x113, x39
	beq	x27, zero, main_bneelse_b6365
# B6366
	fle x27, x39, x40
	bne	x27, zero, main_beqelse_b6368
# B6367
	fsub x27, x39, x40
	fdiv x29, x40, x114
	mv x39, x27
	mv x40, x29
	j	main_loop_b6364
main_bneelse_b6365:
# B6365
# B6369
	fle x27, x115, x39
	bne	x27, zero, main_beqelse_b6371
# B6370
	mv x29, x39
	j main_cont_b6372 # adhoc jump(2)
main_beqelse_b6371:
# B6371
	fsub x29, x39, x115
main_cont_b6372:
# B6372
	bne	x27, zero, main_beqelse_b6374
# B6373
	li x27, 1
	j main_cont_b6375 # adhoc jump(2)
main_beqelse_b6374:
# B6374
	mv x27, zero
main_cont_b6375:
# B6375
	fle x31, x116, x29
	bne	x31, zero, main_beqelse_b6377
# B6376
	j main_cont_b6378 # adhoc jump(2)
main_beqelse_b6377:
# B6377
	fsub x29, x115, x29
main_cont_b6378:
# B6378
	bne	x31, zero, main_beqelse_b6380
# B6379
	j main_cont_b6381 # adhoc jump(2)
main_beqelse_b6380:
# B6380
	xori x27, x27, 1
main_cont_b6381:
# B6381
	fle x31, x117, x29
	bne	x31, zero, main_beqelse_b6383
# B6382
	fmul x29, x29, x29
	fmul x31, x29, x120
	fadd x31, x119, x31
	fmul x31, x29, x31
	fadd x31, x118, x31
	fmul x29, x29, x31
	fadd x29, x22, x29
	j main_cont_b6384 # adhoc jump(2)
main_beqelse_b6383:
# B6383
	fsub x29, x116, x29
	fmul x31, x29, x29
	fmul x38, x31, x123
	fadd x38, x122, x38
	fmul x38, x31, x38
	fadd x38, x121, x38
	fmul x31, x31, x38
	fadd x31, x22, x31
	fmul x29, x29, x31
main_cont_b6384:
# B6384
	fle x31, x29, zero
	beq	x27, x31, main_bneelse_b6386
# B6385
	mv x27, x29
	j main_cont_b6387 # adhoc jump(2)
main_bneelse_b6386:
# B6386
	fsub x27, zero, x29
main_cont_b6387:
# B6387
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
	bne	x30, zero, main_beqelse_b6389
# B6388
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
	j main_cont_b6395 # adhoc jump(2)
main_beqelse_b6389:
# B6389
	fle x27, x32, x29
	bne	x27, zero, main_beqelse_b6391
# B6390
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
	j main_cont_b6392 # adhoc jump(2)
main_beqelse_b6391:
# B6391
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
main_cont_b6392:
# B6392
	bne	x28, zero, main_beqelse_b6394
# B6393
	fsub x27, zero, x27
	j main_cont_b6395 # adhoc jump(2)
main_beqelse_b6394:
# B6394
main_cont_b6395:
# B6395
	fmul x27, x27, x24
	fle x28, x27, zero
	xori x28, x28, 1
	fabs x27, x27
	mv x29, x27
	mv x30, x113
	j	main_loop_b6396
main_bneelse_b6397:	#moved
# B6397
	fmul x30, x30, x114
main_loop_b6396:
# B6396
	fle x31, x29, x30
	beq	x31, zero, main_bneelse_b6397
# B6398
# B6399
	mv x32, x27
	mv x33, x30
	j	main_loop_b6400
main_beqelse_b6404:	#moved
# B6404
	fdiv x29, x33, x114
	mv x33, x29
main_loop_b6400:
# B6400
	fle x29, x113, x32
	beq	x29, zero, main_bneelse_b6401
# B6402
	fle x29, x32, x33
	bne	x29, zero, main_beqelse_b6404
# B6403
	fsub x29, x32, x33
	fdiv x30, x33, x114
	mv x33, x30
	mv x32, x29
	j	main_loop_b6400
main_bneelse_b6401:
# B6401
# B6405
	fle x29, x115, x32
	bne	x29, zero, main_beqelse_b6407
# B6406
	mv x30, x32
	j main_cont_b6408 # adhoc jump(2)
main_beqelse_b6407:
# B6407
	fsub x30, x32, x115
main_cont_b6408:
# B6408
	bne	x29, zero, main_beqelse_b6410
# B6409
	j main_cont_b6411 # adhoc jump(2)
main_beqelse_b6410:
# B6410
	xori x28, x28, 1
main_cont_b6411:
# B6411
	fle x29, x116, x30
	bne	x29, zero, main_beqelse_b6413
# B6412
	mv x29, x30
	j main_cont_b6414 # adhoc jump(2)
main_beqelse_b6413:
# B6413
	fsub x29, x115, x30
main_cont_b6414:
# B6414
	fle x30, x117, x29
	bne	x30, zero, main_beqelse_b6416
# B6415
	fmul x30, x29, x29
	fmul x31, x30, x123
	fadd x31, x122, x31
	fmul x31, x30, x31
	fadd x31, x121, x31
	fmul x30, x30, x31
	fadd x30, x22, x30
	fmul x29, x29, x30
	j main_cont_b6417 # adhoc jump(2)
main_beqelse_b6416:
# B6416
	fsub x29, x116, x29
	fmul x29, x29, x29
	fmul x30, x29, x120
	fadd x30, x119, x30
	fmul x30, x29, x30
	fadd x30, x118, x30
	fmul x29, x29, x30
	fadd x29, x22, x29
main_cont_b6417:
# B6417
	fle x30, x29, zero
	beq	x28, x30, main_bneelse_b6419
# B6418
	mv x28, x29
	j main_cont_b6420 # adhoc jump(2)
main_bneelse_b6419:
# B6419
	fsub x28, zero, x29
main_cont_b6420:
# B6420
	mv x29, x27
	mv x30, x113
	j	main_loop_b6421
main_bneelse_b6422:	#moved
# B6422
	fmul x30, x30, x114
main_loop_b6421:
# B6421
	fle x31, x29, x30
	beq	x31, zero, main_bneelse_b6422
# B6423
# B6424
	mv x32, x27
	mv x33, x30
	j	main_loop_b6425
main_beqelse_b6429:	#moved
# B6429
	fdiv x27, x33, x114
	mv x33, x27
main_loop_b6425:
# B6425
	fle x27, x113, x32
	beq	x27, zero, main_bneelse_b6426
# B6427
	fle x27, x32, x33
	bne	x27, zero, main_beqelse_b6429
# B6428
	fsub x27, x32, x33
	fdiv x29, x33, x114
	mv x32, x27
	mv x33, x29
	j	main_loop_b6425
main_bneelse_b6426:
# B6426
# B6430
	fle x27, x115, x32
	bne	x27, zero, main_beqelse_b6432
# B6431
	mv x29, x32
	j main_cont_b6433 # adhoc jump(2)
main_beqelse_b6432:
# B6432
	fsub x29, x32, x115
main_cont_b6433:
# B6433
	bne	x27, zero, main_beqelse_b6435
# B6434
	li x27, 1
	j main_cont_b6436 # adhoc jump(2)
main_beqelse_b6435:
# B6435
	mv x27, zero
main_cont_b6436:
# B6436
	fle x30, x116, x29
	bne	x30, zero, main_beqelse_b6438
# B6437
	j main_cont_b6439 # adhoc jump(2)
main_beqelse_b6438:
# B6438
	fsub x29, x115, x29
main_cont_b6439:
# B6439
	bne	x30, zero, main_beqelse_b6441
# B6440
	j main_cont_b6442 # adhoc jump(2)
main_beqelse_b6441:
# B6441
	xori x27, x27, 1
main_cont_b6442:
# B6442
	fle x30, x117, x29
	bne	x30, zero, main_beqelse_b6444
# B6443
	fmul x29, x29, x29
	fmul x30, x29, x120
	fadd x30, x119, x30
	fmul x30, x29, x30
	fadd x30, x118, x30
	fmul x29, x29, x30
	fadd x22, x22, x29
	j main_cont_b6445 # adhoc jump(2)
main_beqelse_b6444:
# B6444
	fsub x29, x116, x29
	fmul x30, x29, x29
	fmul x31, x30, x123
	fadd x31, x122, x31
	fmul x31, x30, x31
	fadd x31, x121, x31
	fmul x30, x30, x31
	fadd x22, x22, x30
	fmul x22, x29, x22
main_cont_b6445:
# B6445
	fle x29, x22, zero
	beq	x27, x29, main_bneelse_b6447
# B6446
	j main_cont_b6448 # adhoc jump(2)
main_bneelse_b6447:
# B6447
	fsub x22, zero, x22
main_cont_b6448:
# B6448
	fdiv x22, x28, x22
	fmul x19, x22, x19
	mv x22, x19
	j	main_loop_b6324
main_bleelse_b6323:
# B6323
# B6579
	addi x10, x100, -1
	addi x100, x11, 2
	bgt	x110, x100, main_bleelse_b6581
# B6580
	addi x100, x100, -5
	j main_cont_b6582 # adhoc jump(2)
main_bleelse_b6581:
# B6581
main_cont_b6582:
# B6582
	addi x11, x12, 4
	mv x12, x11
	mv x11, x100
	mv x100, x10
	j	main_loop_b6318
main_bleelse_b6320:
# B6320
# B6583
	mv x113, x112
main_loop_b6584:
# B6584
	la x115, min_caml_n_objects
	bgt	zero, x113, main_bleelse_b6586
# B6585
	la x10, min_caml_dirvecs
	add x4, x10, x113
	lw x10, 0(x4)
	li x100, 119
	mv x116, x10
	mv x117, x100
main_loop_b6587:
# B6587
	bgt	zero, x117, main_bleelse_b6589
# B6588
	add x4, x116, x117
	lw x10, 0(x4)
	lw x100, 0(x115)
	addi x100, x100, -1
	mv x118, x10
	mv x119, x100
main_loop_b6590:
# B6590
	bgt	zero, x119, main_bleelse_b6592
# B6591
	la x10, min_caml_objects
	add x4, x10, x119
	lw x120, 0(x4)
	lw x121, 1(x118)
	lw x122, 0(x118)
	lw x10, 1(x120)
	bne	x10, x103, main_beqelse_b6594
# B6593
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
	bne	x10, zero, main_beqelse_b6596
# B6595
	lw x10, 6(x120)
	lw x100, 0(x122)
	fle x100, zero, x100
	xori x100, x100, 1
	bne	x10, zero, main_beqelse_b6598
# B6597
	mv x10, x100
	j main_cont_b6599 # adhoc jump(2)
main_beqelse_b6598:
# B6598
	xori x10, x100, 1
main_cont_b6599:
# B6599
	lw x100, 4(x120)
	lw x100, 0(x100)
	bne	x10, zero, main_beqelse_b6601
# B6600
	fsub x10, zero, x100
	j main_cont_b6602 # adhoc jump(2)
main_beqelse_b6601:
# B6601
	mv x10, x100
main_cont_b6602:
# B6602
	sw x10, 0(x5)
	lui x10, 260096
	lw x100, 0(x122)
	fdiv x10, x10, x100
	sw x10, 1(x5)
	j main_cont_b6603 # adhoc jump(2)
main_beqelse_b6596:
# B6596
	sw zero, 1(x5)
main_cont_b6603:
# B6603
	lw x10, 1(x122)
	feq x10, x10, zero
	bne	x10, zero, main_beqelse_b6605
# B6604
	lw x10, 6(x120)
	lw x100, 1(x122)
	fle x100, zero, x100
	xori x100, x100, 1
	bne	x10, zero, main_beqelse_b6607
# B6606
	mv x10, x100
	j main_cont_b6608 # adhoc jump(2)
main_beqelse_b6607:
# B6607
	xori x10, x100, 1
main_cont_b6608:
# B6608
	lw x100, 4(x120)
	lw x100, 1(x100)
	bne	x10, zero, main_beqelse_b6610
# B6609
	fsub x10, zero, x100
	j main_cont_b6611 # adhoc jump(2)
main_beqelse_b6610:
# B6610
	mv x10, x100
main_cont_b6611:
# B6611
	sw x10, 2(x5)
	lui x10, 260096
	lw x100, 1(x122)
	fdiv x10, x10, x100
	sw x10, 3(x5)
	j main_cont_b6612 # adhoc jump(2)
main_beqelse_b6605:
# B6605
	sw zero, 3(x5)
main_cont_b6612:
# B6612
	lw x10, 2(x122)
	feq x10, x10, zero
	bne	x10, zero, main_beqelse_b6614
# B6613
	lw x10, 6(x120)
	lw x100, 2(x122)
	fle x100, zero, x100
	xori x100, x100, 1
	bne	x10, zero, main_beqelse_b6616
# B6615
	mv x10, x100
	j main_cont_b6617 # adhoc jump(2)
main_beqelse_b6616:
# B6616
	xori x10, x100, 1
main_cont_b6617:
# B6617
	lw x100, 4(x120)
	lw x100, 2(x100)
	bne	x10, zero, main_beqelse_b6619
# B6618
	fsub x10, zero, x100
	j main_cont_b6620 # adhoc jump(2)
main_beqelse_b6619:
# B6619
	mv x10, x100
main_cont_b6620:
# B6620
	sw x10, 4(x5)
	lui x10, 260096
	lw x100, 2(x122)
	fdiv x10, x10, x100
	sw x10, 5(x5)
	j main_cont_b6621 # adhoc jump(2)
main_beqelse_b6614:
# B6614
	sw zero, 5(x5)
main_cont_b6621:
# B6621
	add x4, x121, x119
	sw x5, 0(x4)
	j main_cont_b6636 # adhoc jump(2)
main_beqelse_b6594:
# B6594
	bne	x10, x105, main_beqelse_b6623
# B6622
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
	beq	x100, zero, main_bneelse_b6625
# B6624
	sw zero, 0(x5)
	j main_cont_b6626 # adhoc jump(2)
main_bneelse_b6625:
# B6625
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
main_cont_b6626:
# B6626
	add x4, x121, x119
	sw x5, 0(x4)
	j main_cont_b6636 # adhoc jump(2)
main_beqelse_b6623:
# B6623
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
	bne	x13, zero, main_beqelse_b6628
# B6627
	mv x10, x12
	j main_cont_b6629 # adhoc jump(2)
main_beqelse_b6628:
# B6628
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
main_cont_b6629:
# B6629
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
	bne	x13, zero, main_beqelse_b6631
# B6630
	sw x100, 1(x5)
	sw x11, 2(x5)
	sw x12, 3(x5)
	j main_cont_b6632 # adhoc jump(2)
main_beqelse_b6631:
# B6631
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
main_cont_b6632:
# B6632
	feq x100, x10, zero
	bne	x100, zero, main_beqelse_b6634
# B6633
	lui x100, 260096
	fdiv x10, x100, x10
	sw x10, 4(x5)
main_beqelse_b6634:
# B6634
main_cont_b6635:
# B6635
	add x4, x121, x119
	sw x5, 0(x4)
main_cont_b6636:
# B6636
	addi x10, x119, -1
	mv x119, x10
	j	main_loop_b6590
main_bleelse_b6592:
# B6592
# B6637
	addi x10, x117, -1
	mv x117, x10
	j	main_loop_b6587
main_bleelse_b6589:
# B6589
# B6638
	addi x10, x113, -1
	mv x113, x10
	j	main_loop_b6584
main_bleelse_b6586:
# B6586
# B6639
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
main_loop_b6640:
# B6640
	la x117, min_caml_objects
	lui x118, 260096
	bgt	zero, x116, main_bleelse_b6642
# B6641
	add x4, x117, x116
	lw x117, 0(x4)
	lw x119, 1(x113)
	lw x120, 0(x113)
	lw x10, 1(x117)
	bne	x10, x103, main_beqelse_b6644
# B6643
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
	bne	x10, zero, main_beqelse_b6646
# B6645
	lw x10, 6(x117)
	lw x100, 0(x120)
	fle x100, zero, x100
	xori x100, x100, 1
	bne	x10, zero, main_beqelse_b6648
# B6647
	mv x10, x100
	j main_cont_b6649 # adhoc jump(2)
main_beqelse_b6648:
# B6648
	xori x10, x100, 1
main_cont_b6649:
# B6649
	lw x100, 4(x117)
	lw x100, 0(x100)
	bne	x10, zero, main_beqelse_b6651
# B6650
	fsub x10, zero, x100
	j main_cont_b6652 # adhoc jump(2)
main_beqelse_b6651:
# B6651
	mv x10, x100
main_cont_b6652:
# B6652
	sw x10, 0(x5)
	lui x10, 260096
	lw x100, 0(x120)
	fdiv x10, x10, x100
	sw x10, 1(x5)
	j main_cont_b6653 # adhoc jump(2)
main_beqelse_b6646:
# B6646
	sw zero, 1(x5)
main_cont_b6653:
# B6653
	lw x10, 1(x120)
	feq x10, x10, zero
	bne	x10, zero, main_beqelse_b6655
# B6654
	lw x10, 6(x117)
	lw x100, 1(x120)
	fle x100, zero, x100
	xori x100, x100, 1
	bne	x10, zero, main_beqelse_b6657
# B6656
	mv x10, x100
	j main_cont_b6658 # adhoc jump(2)
main_beqelse_b6657:
# B6657
	xori x10, x100, 1
main_cont_b6658:
# B6658
	lw x100, 4(x117)
	lw x100, 1(x100)
	bne	x10, zero, main_beqelse_b6660
# B6659
	fsub x10, zero, x100
	j main_cont_b6661 # adhoc jump(2)
main_beqelse_b6660:
# B6660
	mv x10, x100
main_cont_b6661:
# B6661
	sw x10, 2(x5)
	lui x10, 260096
	lw x100, 1(x120)
	fdiv x10, x10, x100
	sw x10, 3(x5)
	j main_cont_b6662 # adhoc jump(2)
main_beqelse_b6655:
# B6655
	sw zero, 3(x5)
main_cont_b6662:
# B6662
	lw x10, 2(x120)
	feq x10, x10, zero
	bne	x10, zero, main_beqelse_b6664
# B6663
	lw x10, 6(x117)
	lw x100, 2(x120)
	fle x100, zero, x100
	xori x100, x100, 1
	bne	x10, zero, main_beqelse_b6666
# B6665
	mv x10, x100
	j main_cont_b6667 # adhoc jump(2)
main_beqelse_b6666:
# B6666
	xori x10, x100, 1
main_cont_b6667:
# B6667
	lw x100, 4(x117)
	lw x100, 2(x100)
	bne	x10, zero, main_beqelse_b6669
# B6668
	fsub x10, zero, x100
	j main_cont_b6670 # adhoc jump(2)
main_beqelse_b6669:
# B6669
	mv x10, x100
main_cont_b6670:
# B6670
	sw x10, 4(x5)
	lui x10, 260096
	lw x100, 2(x120)
	fdiv x10, x10, x100
	sw x10, 5(x5)
	j main_cont_b6671 # adhoc jump(2)
main_beqelse_b6664:
# B6664
	sw zero, 5(x5)
main_cont_b6671:
# B6671
	add x4, x119, x116
	sw x5, 0(x4)
	j main_cont_b6686 # adhoc jump(2)
main_beqelse_b6644:
# B6644
	bne	x10, x105, main_beqelse_b6673
# B6672
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
	beq	x100, zero, main_bneelse_b6675
# B6674
	sw zero, 0(x5)
	j main_cont_b6676 # adhoc jump(2)
main_bneelse_b6675:
# B6675
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
main_cont_b6676:
# B6676
	add x4, x119, x116
	sw x5, 0(x4)
	j main_cont_b6686 # adhoc jump(2)
main_beqelse_b6673:
# B6673
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
	bne	x13, zero, main_beqelse_b6678
# B6677
	mv x10, x12
	j main_cont_b6679 # adhoc jump(2)
main_beqelse_b6678:
# B6678
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
main_cont_b6679:
# B6679
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
	bne	x13, zero, main_beqelse_b6681
# B6680
	sw x100, 1(x5)
	sw x11, 2(x5)
	sw x12, 3(x5)
	j main_cont_b6682 # adhoc jump(2)
main_beqelse_b6681:
# B6681
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
main_cont_b6682:
# B6682
	feq x100, x10, zero
	bne	x100, zero, main_beqelse_b6684
# B6683
	fdiv x10, x118, x10
	sw x10, 4(x5)
main_beqelse_b6684:
# B6684
main_cont_b6685:
# B6685
	add x4, x119, x116
	sw x5, 0(x4)
main_cont_b6686:
# B6686
	addi x10, x116, -1
	mv x116, x10
	j	main_loop_b6640
main_bleelse_b6642:
# B6642
# B6687
	lw x10, 0(x115)
	addi x10, x10, -1
	bgt	zero, x10, main_bleelse_b6689
# B6688
	add x4, x117, x10
	lw x100, 0(x4)
	lw x11, 2(x100)
	bne	x11, x105, main_beqelse_b6691
# B6690
	lw x11, 7(x100)
	lw x11, 0(x11)
	fle x11, x118, x11
	bne	x11, zero, main_beqelse_b6692
# B6693
	lw x11, 1(x100)
	slli x113, x10, 2
	la x116, min_caml_n_reflections
	addi x119, x113, 1
	la x120, min_caml_reflections
	bne	x11, x103, main_beqelse_b6695
# B6694
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
main_loop_b6696:
# B6696
	bgt	zero, x50, main_bleelse_b6698
# B6697
	add x4, x117, x50
	lw x52, 0(x4)
	lw x53, 1(x49)
	lw x54, 0(x49)
	lw x10, 1(x52)
	bne	x10, x103, main_beqelse_b6700
# B6699
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
	bne	x10, zero, main_beqelse_b6702
# B6701
	lw x10, 6(x52)
	lw x100, 0(x54)
	fle x100, zero, x100
	xori x100, x100, 1
	bne	x10, zero, main_beqelse_b6704
# B6703
	mv x10, x100
	j main_cont_b6705 # adhoc jump(2)
main_beqelse_b6704:
# B6704
	xori x10, x100, 1
main_cont_b6705:
# B6705
	lw x100, 4(x52)
	lw x100, 0(x100)
	bne	x10, zero, main_beqelse_b6707
# B6706
	fsub x10, zero, x100
	j main_cont_b6708 # adhoc jump(2)
main_beqelse_b6707:
# B6707
	mv x10, x100
main_cont_b6708:
# B6708
	sw x10, 0(x5)
	lw x10, 0(x54)
	fdiv x10, x118, x10
	sw x10, 1(x5)
	j main_cont_b6709 # adhoc jump(2)
main_beqelse_b6702:
# B6702
	sw zero, 1(x5)
main_cont_b6709:
# B6709
	lw x10, 1(x54)
	feq x10, x10, zero
	bne	x10, zero, main_beqelse_b6711
# B6710
	lw x10, 6(x52)
	lw x100, 1(x54)
	fle x100, zero, x100
	xori x100, x100, 1
	bne	x10, zero, main_beqelse_b6713
# B6712
	mv x10, x100
	j main_cont_b6714 # adhoc jump(2)
main_beqelse_b6713:
# B6713
	xori x10, x100, 1
main_cont_b6714:
# B6714
	lw x100, 4(x52)
	lw x100, 1(x100)
	bne	x10, zero, main_beqelse_b6716
# B6715
	fsub x10, zero, x100
	j main_cont_b6717 # adhoc jump(2)
main_beqelse_b6716:
# B6716
	mv x10, x100
main_cont_b6717:
# B6717
	sw x10, 2(x5)
	lw x10, 1(x54)
	fdiv x10, x118, x10
	sw x10, 3(x5)
	j main_cont_b6718 # adhoc jump(2)
main_beqelse_b6711:
# B6711
	sw zero, 3(x5)
main_cont_b6718:
# B6718
	lw x10, 2(x54)
	feq x10, x10, zero
	bne	x10, zero, main_beqelse_b6720
# B6719
	lw x10, 6(x52)
	lw x100, 2(x54)
	fle x100, zero, x100
	xori x100, x100, 1
	bne	x10, zero, main_beqelse_b6722
# B6721
	mv x10, x100
	j main_cont_b6723 # adhoc jump(2)
main_beqelse_b6722:
# B6722
	xori x10, x100, 1
main_cont_b6723:
# B6723
	lw x100, 4(x52)
	lw x100, 2(x100)
	bne	x10, zero, main_beqelse_b6725
# B6724
	fsub x10, zero, x100
	j main_cont_b6726 # adhoc jump(2)
main_beqelse_b6725:
# B6725
	mv x10, x100
main_cont_b6726:
# B6726
	sw x10, 4(x5)
	lw x10, 2(x54)
	fdiv x10, x118, x10
	sw x10, 5(x5)
	j main_cont_b6727 # adhoc jump(2)
main_beqelse_b6720:
# B6720
	sw zero, 5(x5)
main_cont_b6727:
# B6727
	add x4, x53, x50
	sw x5, 0(x4)
	j main_cont_b6742 # adhoc jump(2)
main_beqelse_b6700:
# B6700
	bne	x10, x105, main_beqelse_b6729
# B6728
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
	beq	x100, zero, main_bneelse_b6731
# B6730
	sw zero, 0(x5)
	j main_cont_b6732 # adhoc jump(2)
main_bneelse_b6731:
# B6731
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
main_cont_b6732:
# B6732
	add x4, x53, x50
	sw x5, 0(x4)
	j main_cont_b6742 # adhoc jump(2)
main_beqelse_b6729:
# B6729
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
	bne	x13, zero, main_beqelse_b6734
# B6733
	mv x10, x12
	j main_cont_b6735 # adhoc jump(2)
main_beqelse_b6734:
# B6734
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
main_cont_b6735:
# B6735
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
	bne	x13, zero, main_beqelse_b6737
# B6736
	sw x100, 1(x5)
	sw x11, 2(x5)
	sw x12, 3(x5)
	j main_cont_b6738 # adhoc jump(2)
main_beqelse_b6737:
# B6737
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
main_cont_b6738:
# B6738
	feq x100, x10, zero
	bne	x100, zero, main_beqelse_b6740
# B6739
	fdiv x10, x118, x10
	sw x10, 4(x5)
main_beqelse_b6740:
# B6740
main_cont_b6741:
# B6741
	add x4, x53, x50
	sw x5, 0(x4)
main_cont_b6742:
# B6742
	addi x10, x50, -1
	mv x50, x10
	j	main_loop_b6696
main_bleelse_b6698:
# B6698
# B6743
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
main_loop_b6744:
# B6744
	bgt	zero, x50, main_bleelse_b6746
# B6745
	add x4, x117, x50
	lw x51, 0(x4)
	lw x53, 1(x47)
	lw x54, 0(x47)
	lw x10, 1(x51)
	bne	x10, x103, main_beqelse_b6748
# B6747
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
	bne	x10, zero, main_beqelse_b6750
# B6749
	lw x10, 6(x51)
	lw x100, 0(x54)
	fle x100, zero, x100
	xori x100, x100, 1
	bne	x10, zero, main_beqelse_b6752
# B6751
	mv x10, x100
	j main_cont_b6753 # adhoc jump(2)
main_beqelse_b6752:
# B6752
	xori x10, x100, 1
main_cont_b6753:
# B6753
	lw x100, 4(x51)
	lw x100, 0(x100)
	bne	x10, zero, main_beqelse_b6755
# B6754
	fsub x10, zero, x100
	j main_cont_b6756 # adhoc jump(2)
main_beqelse_b6755:
# B6755
	mv x10, x100
main_cont_b6756:
# B6756
	sw x10, 0(x5)
	lw x10, 0(x54)
	fdiv x10, x118, x10
	sw x10, 1(x5)
	j main_cont_b6757 # adhoc jump(2)
main_beqelse_b6750:
# B6750
	sw zero, 1(x5)
main_cont_b6757:
# B6757
	lw x10, 1(x54)
	feq x10, x10, zero
	bne	x10, zero, main_beqelse_b6759
# B6758
	lw x10, 6(x51)
	lw x100, 1(x54)
	fle x100, zero, x100
	xori x100, x100, 1
	bne	x10, zero, main_beqelse_b6761
# B6760
	mv x10, x100
	j main_cont_b6762 # adhoc jump(2)
main_beqelse_b6761:
# B6761
	xori x10, x100, 1
main_cont_b6762:
# B6762
	lw x100, 4(x51)
	lw x100, 1(x100)
	bne	x10, zero, main_beqelse_b6764
# B6763
	fsub x10, zero, x100
	j main_cont_b6765 # adhoc jump(2)
main_beqelse_b6764:
# B6764
	mv x10, x100
main_cont_b6765:
# B6765
	sw x10, 2(x5)
	lw x10, 1(x54)
	fdiv x10, x118, x10
	sw x10, 3(x5)
	j main_cont_b6766 # adhoc jump(2)
main_beqelse_b6759:
# B6759
	sw zero, 3(x5)
main_cont_b6766:
# B6766
	lw x10, 2(x54)
	feq x10, x10, zero
	bne	x10, zero, main_beqelse_b6768
# B6767
	lw x10, 6(x51)
	lw x100, 2(x54)
	fle x100, zero, x100
	xori x100, x100, 1
	bne	x10, zero, main_beqelse_b6770
# B6769
	mv x10, x100
	j main_cont_b6771 # adhoc jump(2)
main_beqelse_b6770:
# B6770
	xori x10, x100, 1
main_cont_b6771:
# B6771
	lw x100, 4(x51)
	lw x100, 2(x100)
	bne	x10, zero, main_beqelse_b6773
# B6772
	fsub x10, zero, x100
	j main_cont_b6774 # adhoc jump(2)
main_beqelse_b6773:
# B6773
	mv x10, x100
main_cont_b6774:
# B6774
	sw x10, 4(x5)
	lw x10, 2(x54)
	fdiv x10, x118, x10
	sw x10, 5(x5)
	j main_cont_b6775 # adhoc jump(2)
main_beqelse_b6768:
# B6768
	sw zero, 5(x5)
main_cont_b6775:
# B6775
	add x4, x53, x50
	sw x5, 0(x4)
	j main_cont_b6790 # adhoc jump(2)
main_beqelse_b6748:
# B6748
	bne	x10, x105, main_beqelse_b6777
# B6776
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
	beq	x100, zero, main_bneelse_b6779
# B6778
	sw zero, 0(x5)
	j main_cont_b6780 # adhoc jump(2)
main_bneelse_b6779:
# B6779
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
main_cont_b6780:
# B6780
	add x4, x53, x50
	sw x5, 0(x4)
	j main_cont_b6790 # adhoc jump(2)
main_beqelse_b6777:
# B6777
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
	bne	x13, zero, main_beqelse_b6782
# B6781
	mv x10, x12
	j main_cont_b6783 # adhoc jump(2)
main_beqelse_b6782:
# B6782
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
main_cont_b6783:
# B6783
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
	bne	x13, zero, main_beqelse_b6785
# B6784
	sw x100, 1(x5)
	sw x11, 2(x5)
	sw x12, 3(x5)
	j main_cont_b6786 # adhoc jump(2)
main_beqelse_b6785:
# B6785
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
main_cont_b6786:
# B6786
	feq x100, x10, zero
	bne	x100, zero, main_beqelse_b6788
# B6787
	fdiv x10, x118, x10
	sw x10, 4(x5)
main_beqelse_b6788:
# B6788
main_cont_b6789:
# B6789
	add x4, x53, x50
	sw x5, 0(x4)
main_cont_b6790:
# B6790
	addi x10, x50, -1
	mv x50, x10
	j	main_loop_b6744
main_bleelse_b6746:
# B6746
# B6791
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
main_loop_b6792:
# B6792
	bgt	zero, x123, main_bleelse_b6794
# B6793
	add x4, x117, x123
	lw x47, 0(x4)
	lw x49, 1(x122)
	lw x51, 0(x122)
	lw x10, 1(x47)
	bne	x10, x103, main_beqelse_b6796
# B6795
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
	bne	x10, zero, main_beqelse_b6798
# B6797
	lw x10, 6(x47)
	lw x100, 0(x51)
	fle x100, zero, x100
	xori x100, x100, 1
	bne	x10, zero, main_beqelse_b6800
# B6799
	mv x10, x100
	j main_cont_b6801 # adhoc jump(2)
main_beqelse_b6800:
# B6800
	xori x10, x100, 1
main_cont_b6801:
# B6801
	lw x100, 4(x47)
	lw x100, 0(x100)
	bne	x10, zero, main_beqelse_b6803
# B6802
	fsub x10, zero, x100
	j main_cont_b6804 # adhoc jump(2)
main_beqelse_b6803:
# B6803
	mv x10, x100
main_cont_b6804:
# B6804
	sw x10, 0(x5)
	lw x10, 0(x51)
	fdiv x10, x118, x10
	sw x10, 1(x5)
	j main_cont_b6805 # adhoc jump(2)
main_beqelse_b6798:
# B6798
	sw zero, 1(x5)
main_cont_b6805:
# B6805
	lw x10, 1(x51)
	feq x10, x10, zero
	bne	x10, zero, main_beqelse_b6807
# B6806
	lw x10, 6(x47)
	lw x100, 1(x51)
	fle x100, zero, x100
	xori x100, x100, 1
	bne	x10, zero, main_beqelse_b6809
# B6808
	mv x10, x100
	j main_cont_b6810 # adhoc jump(2)
main_beqelse_b6809:
# B6809
	xori x10, x100, 1
main_cont_b6810:
# B6810
	lw x100, 4(x47)
	lw x100, 1(x100)
	bne	x10, zero, main_beqelse_b6812
# B6811
	fsub x10, zero, x100
	j main_cont_b6813 # adhoc jump(2)
main_beqelse_b6812:
# B6812
	mv x10, x100
main_cont_b6813:
# B6813
	sw x10, 2(x5)
	lw x10, 1(x51)
	fdiv x10, x118, x10
	sw x10, 3(x5)
	j main_cont_b6814 # adhoc jump(2)
main_beqelse_b6807:
# B6807
	sw zero, 3(x5)
main_cont_b6814:
# B6814
	lw x10, 2(x51)
	feq x10, x10, zero
	bne	x10, zero, main_beqelse_b6816
# B6815
	lw x10, 6(x47)
	lw x100, 2(x51)
	fle x100, zero, x100
	xori x100, x100, 1
	bne	x10, zero, main_beqelse_b6818
# B6817
	mv x10, x100
	j main_cont_b6819 # adhoc jump(2)
main_beqelse_b6818:
# B6818
	xori x10, x100, 1
main_cont_b6819:
# B6819
	lw x100, 4(x47)
	lw x100, 2(x100)
	bne	x10, zero, main_beqelse_b6821
# B6820
	fsub x10, zero, x100
	j main_cont_b6822 # adhoc jump(2)
main_beqelse_b6821:
# B6821
	mv x10, x100
main_cont_b6822:
# B6822
	sw x10, 4(x5)
	lw x10, 2(x51)
	fdiv x10, x118, x10
	sw x10, 5(x5)
	j main_cont_b6823 # adhoc jump(2)
main_beqelse_b6816:
# B6816
	sw zero, 5(x5)
main_cont_b6823:
# B6823
	add x4, x49, x123
	sw x5, 0(x4)
	j main_cont_b6838 # adhoc jump(2)
main_beqelse_b6796:
# B6796
	bne	x10, x105, main_beqelse_b6825
# B6824
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
	beq	x100, zero, main_bneelse_b6827
# B6826
	sw zero, 0(x5)
	j main_cont_b6828 # adhoc jump(2)
main_bneelse_b6827:
# B6827
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
main_cont_b6828:
# B6828
	add x4, x49, x123
	sw x5, 0(x4)
	j main_cont_b6838 # adhoc jump(2)
main_beqelse_b6825:
# B6825
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
	bne	x13, zero, main_beqelse_b6830
# B6829
	mv x10, x12
	j main_cont_b6831 # adhoc jump(2)
main_beqelse_b6830:
# B6830
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
main_cont_b6831:
# B6831
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
	bne	x13, zero, main_beqelse_b6833
# B6832
	sw x100, 1(x5)
	sw x11, 2(x5)
	sw x12, 3(x5)
	j main_cont_b6834 # adhoc jump(2)
main_beqelse_b6833:
# B6833
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
main_cont_b6834:
# B6834
	feq x100, x10, zero
	bne	x100, zero, main_beqelse_b6836
# B6835
	fdiv x10, x118, x10
	sw x10, 4(x5)
main_beqelse_b6836:
# B6836
main_cont_b6837:
# B6837
	add x4, x49, x123
	sw x5, 0(x4)
main_cont_b6838:
# B6838
	addi x10, x123, -1
	mv x123, x10
	j	main_loop_b6792
main_bleelse_b6794:
# B6794
# B6839
	mv x10, x3
	addi x3, x3, 3
	sw x121, 2(x10)
	sw x50, 1(x10)
	sw x113, 0(x10)
	add x4, x120, x119
	sw x10, 0(x4)
	addi x10, x114, 3
	sw x10, 0(x116)
	j main_cont_b6890 # adhoc jump(2)
main_beqelse_b6695:
# B6695
	bne	x11, x105, main_beqelse_b6841
# B6840
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
main_loop_b6842:
# B6842
	bgt	zero, x122, main_bleelse_b6844
# B6843
	add x4, x117, x122
	lw x123, 0(x4)
	lw x47, 1(x114)
	lw x50, 0(x114)
	lw x10, 1(x123)
	bne	x10, x103, main_beqelse_b6846
# B6845
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
	bne	x10, zero, main_beqelse_b6848
# B6847
	lw x10, 6(x123)
	lw x100, 0(x50)
	fle x100, zero, x100
	xori x100, x100, 1
	bne	x10, zero, main_beqelse_b6850
# B6849
	mv x10, x100
	j main_cont_b6851 # adhoc jump(2)
main_beqelse_b6850:
# B6850
	xori x10, x100, 1
main_cont_b6851:
# B6851
	lw x100, 4(x123)
	lw x100, 0(x100)
	bne	x10, zero, main_beqelse_b6853
# B6852
	fsub x10, zero, x100
	j main_cont_b6854 # adhoc jump(2)
main_beqelse_b6853:
# B6853
	mv x10, x100
main_cont_b6854:
# B6854
	sw x10, 0(x5)
	lw x10, 0(x50)
	fdiv x10, x118, x10
	sw x10, 1(x5)
	j main_cont_b6855 # adhoc jump(2)
main_beqelse_b6848:
# B6848
	sw zero, 1(x5)
main_cont_b6855:
# B6855
	lw x10, 1(x50)
	feq x10, x10, zero
	bne	x10, zero, main_beqelse_b6857
# B6856
	lw x10, 6(x123)
	lw x100, 1(x50)
	fle x100, zero, x100
	xori x100, x100, 1
	bne	x10, zero, main_beqelse_b6859
# B6858
	mv x10, x100
	j main_cont_b6860 # adhoc jump(2)
main_beqelse_b6859:
# B6859
	xori x10, x100, 1
main_cont_b6860:
# B6860
	lw x100, 4(x123)
	lw x100, 1(x100)
	bne	x10, zero, main_beqelse_b6862
# B6861
	fsub x10, zero, x100
	j main_cont_b6863 # adhoc jump(2)
main_beqelse_b6862:
# B6862
	mv x10, x100
main_cont_b6863:
# B6863
	sw x10, 2(x5)
	lw x10, 1(x50)
	fdiv x10, x118, x10
	sw x10, 3(x5)
	j main_cont_b6864 # adhoc jump(2)
main_beqelse_b6857:
# B6857
	sw zero, 3(x5)
main_cont_b6864:
# B6864
	lw x10, 2(x50)
	feq x10, x10, zero
	bne	x10, zero, main_beqelse_b6866
# B6865
	lw x10, 6(x123)
	lw x100, 2(x50)
	fle x100, zero, x100
	xori x100, x100, 1
	bne	x10, zero, main_beqelse_b6868
# B6867
	mv x10, x100
	j main_cont_b6869 # adhoc jump(2)
main_beqelse_b6868:
# B6868
	xori x10, x100, 1
main_cont_b6869:
# B6869
	lw x100, 4(x123)
	lw x100, 2(x100)
	bne	x10, zero, main_beqelse_b6871
# B6870
	fsub x10, zero, x100
	j main_cont_b6872 # adhoc jump(2)
main_beqelse_b6871:
# B6871
	mv x10, x100
main_cont_b6872:
# B6872
	sw x10, 4(x5)
	lw x10, 2(x50)
	fdiv x10, x118, x10
	sw x10, 5(x5)
	j main_cont_b6873 # adhoc jump(2)
main_beqelse_b6866:
# B6866
	sw zero, 5(x5)
main_cont_b6873:
# B6873
	add x4, x47, x122
	sw x5, 0(x4)
	j main_cont_b6888 # adhoc jump(2)
main_beqelse_b6846:
# B6846
	bne	x10, x105, main_beqelse_b6875
# B6874
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
	beq	x100, zero, main_bneelse_b6877
# B6876
	sw zero, 0(x5)
	j main_cont_b6878 # adhoc jump(2)
main_bneelse_b6877:
# B6877
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
main_cont_b6878:
# B6878
	add x4, x47, x122
	sw x5, 0(x4)
	j main_cont_b6888 # adhoc jump(2)
main_beqelse_b6875:
# B6875
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
	bne	x13, zero, main_beqelse_b6880
# B6879
	mv x10, x12
	j main_cont_b6881 # adhoc jump(2)
main_beqelse_b6880:
# B6880
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
main_cont_b6881:
# B6881
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
	bne	x13, zero, main_beqelse_b6883
# B6882
	sw x100, 1(x5)
	sw x11, 2(x5)
	sw x12, 3(x5)
	j main_cont_b6884 # adhoc jump(2)
main_beqelse_b6883:
# B6883
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
main_cont_b6884:
# B6884
	feq x100, x10, zero
	bne	x100, zero, main_beqelse_b6886
# B6885
	fdiv x10, x118, x10
	sw x10, 4(x5)
main_beqelse_b6886:
# B6886
main_cont_b6887:
# B6887
	add x4, x47, x122
	sw x5, 0(x4)
main_cont_b6888:
# B6888
	addi x10, x122, -1
	mv x122, x10
	j	main_loop_b6842
main_bleelse_b6844:
# B6844
# B6889
	mv x10, x3
	addi x3, x3, 3
	sw x121, 2(x10)
	sw x49, 1(x10)
	sw x119, 0(x10)
	add x4, x120, x113
	sw x10, 0(x4)
	addi x10, x113, 1
	sw x10, 0(x116)
main_beqelse_b6841:
# B6841
main_beqelse_b6692:
# B6692
main_beqelse_b6691:
# B6691
main_bleelse_b6689:
# B6689
main_cont_b6890:
# B6890
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
main_loop_b6891:
# B6891
	bgt	zero, x114, main_bleelse_b6893
# B6892
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
	bne	x11, zero, main_beqelse_b6895
# B6894
	bne	zero, zero, main_beqelse_b6897
# B6896
	lui x11, 260096
	fdiv x10, x11, x10
	j main_cont_b6898 # adhoc jump(2)
main_beqelse_b6897:
# B6897
	lui x11, 784384
	fdiv x10, x11, x10
	j main_cont_b6898 # adhoc jump(2)
main_beqelse_b6895:
# B6895
	lui x10, 260096
main_cont_b6898:
# B6898
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
	jal	trace_ray.3273
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
main_loop_b6899:
# B6899
	bgt	x122, x112, main_bleelse_b6901
# B6900
	lw x10, 2(x120)
	add x4, x10, x122
	lw x10, 0(x4)
	bgt	zero, x10, main_bleelse_b6903
# B6902
	lw x10, 3(x120)
	add x4, x10, x122
	lw x10, 0(x4)
	beq	x10, zero, main_bneelse_b6904
# B6905
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
main_loop_b6906:
# B6906
	bgt	zero, x14, main_bleelse_b6908
# B6907
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
	bne	x16, x105, main_beqelse_b6910
# B6909
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
	j main_cont_b6919 # adhoc jump(2)
main_beqelse_b6910:
# B6910
	bge	x105, x16, main_bgtelse_b6911
# B6912
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
	bne	x21, zero, main_beqelse_b6914
# B6913
	mv x12, x20
	j main_cont_b6915 # adhoc jump(2)
main_beqelse_b6914:
# B6914
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
main_cont_b6915:
# B6915
	bne	x16, x108, main_beqelse_b6917
# B6916
	fsub x12, x12, x121
	j main_cont_b6918 # adhoc jump(2)
main_beqelse_b6917:
# B6917
main_cont_b6918:
# B6918
	sw x12, 3(x15)
main_bgtelse_b6911:
# B6911
main_cont_b6919:
# B6919
	addi x12, x14, -1
	mv x14, x12
	j	main_loop_b6906
main_bleelse_b6908:
# B6908
# B6920
	mv x50, x11
	mv x47, x10
	mv x49, x100
	mv x51, x48
main_loop_b6921:
# B6921
	bgt	zero, x51, main_bleelse_b6923
# B6922
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
	beq	x100, zero, main_bneelse_b6925
# B6924
	add x4, x47, x51
	lw x52, 0(x4)
	lui x100, 274784
	fdiv x53, x10, x100
	mv x5, x52
	addi	x2, x2, 43
	jal	judge_intersection_fast.3250
	addi	x2, x2, -43
	beq	x5, zero, main_bneelse_b6926
# B6927
	la x10, min_caml_objects
	la x100, min_caml_intersected_object_id
	lw x100, 0(x100)
	add x4, x10, x100
	lw x54, 0(x4)
	lw x10, 0(x52)
	lw x100, 1(x54)
	bne	x100, x103, main_beqelse_b6929
# B6928
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
	bne	x12, zero, main_beqelse_b6931
# B6930
	fle x10, x10, zero
	beq	x10, zero, main_bneelse_b6933
# B6932
	lui x10, 784384
	j main_cont_b6934 # adhoc jump(2)
main_bneelse_b6933:
# B6933
	lui x10, 260096
	j main_cont_b6934 # adhoc jump(2)
main_beqelse_b6931:
# B6931
	mv x10, zero
main_cont_b6934:
# B6934
	fsub x10, zero, x10
	add x4, x11, x100
	sw x10, 0(x4)
	j main_cont_b6945 # adhoc jump(2)
main_beqelse_b6929:
# B6929
	bne	x100, x105, main_beqelse_b6936
# B6935
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
	j main_cont_b6945 # adhoc jump(2)
main_beqelse_b6936:
# B6936
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
	bne	x15, zero, main_beqelse_b6938
# B6937
	la x10, min_caml_nvector
	sw x12, 0(x10)
	sw x13, 1(x10)
	sw x14, 2(x10)
	j main_cont_b6939 # adhoc jump(2)
main_beqelse_b6938:
# B6938
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
main_cont_b6939:
# B6939
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
	bne	x12, zero, main_beqelse_b6941
# B6940
	bne	x100, zero, main_beqelse_b6943
# B6942
	fdiv x100, x121, x11
	j main_cont_b6944 # adhoc jump(2)
main_beqelse_b6943:
# B6943
	lui x100, 784384
	fdiv x100, x100, x11
	j main_cont_b6944 # adhoc jump(2)
main_beqelse_b6941:
# B6941
	lui x100, 260096
main_cont_b6944:
# B6944
	lw x11, 0(x10)
	fmul x11, x11, x100
	sw x11, 0(x10)
	lw x11, 1(x10)
	fmul x11, x11, x100
	sw x11, 1(x10)
	lw x11, 2(x10)
	fmul x100, x11, x100
	sw x100, 2(x10)
main_cont_b6945:
# B6945
	la x6, min_caml_intersection_point
	mv x5, x54
	addi	x2, x2, 43
	jal	utexture.3261
	addi	x2, x2, -43
	lw x6, 0(x42)
	mv x5, zero
	addi	x2, x2, 43
	jal	shadow_check_one_or_matrix.3221
	addi	x2, x2, -43
	bne	x5, zero, main_beqelse_b6947
# B6946
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
	beq	x100, zero, main_bneelse_b6949
# B6948
	mv x11, zero
	j main_cont_b6950 # adhoc jump(2)
main_bneelse_b6949:
# B6949
	mv x11, x10
main_cont_b6950:
# B6950
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
main_beqelse_b6947:
# B6947
main_bneelse_b6926:
# B6926
	j main_cont_b6976 # adhoc jump(2)
main_bneelse_b6925:
# B6925
	addi x100, x51, 1
	add x4, x47, x100
	lw x52, 0(x4)
	lui x100, 799072
	fdiv x53, x10, x100
	mv x5, x52
	addi	x2, x2, 43
	jal	judge_intersection_fast.3250
	addi	x2, x2, -43
	beq	x5, zero, main_bneelse_b6951
# B6952
	la x10, min_caml_objects
	la x100, min_caml_intersected_object_id
	lw x100, 0(x100)
	add x4, x10, x100
	lw x54, 0(x4)
	lw x10, 0(x52)
	lw x100, 1(x54)
	bne	x100, x103, main_beqelse_b6954
# B6953
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
	bne	x12, zero, main_beqelse_b6956
# B6955
	fle x10, x10, zero
	beq	x10, zero, main_bneelse_b6958
# B6957
	lui x10, 784384
	j main_cont_b6959 # adhoc jump(2)
main_bneelse_b6958:
# B6958
	lui x10, 260096
	j main_cont_b6959 # adhoc jump(2)
main_beqelse_b6956:
# B6956
	mv x10, zero
main_cont_b6959:
# B6959
	fsub x10, zero, x10
	add x4, x11, x100
	sw x10, 0(x4)
	j main_cont_b6970 # adhoc jump(2)
main_beqelse_b6954:
# B6954
	bne	x100, x105, main_beqelse_b6961
# B6960
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
	j main_cont_b6970 # adhoc jump(2)
main_beqelse_b6961:
# B6961
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
	bne	x15, zero, main_beqelse_b6963
# B6962
	la x10, min_caml_nvector
	sw x12, 0(x10)
	sw x13, 1(x10)
	sw x14, 2(x10)
	j main_cont_b6964 # adhoc jump(2)
main_beqelse_b6963:
# B6963
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
main_cont_b6964:
# B6964
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
	bne	x12, zero, main_beqelse_b6966
# B6965
	bne	x100, zero, main_beqelse_b6968
# B6967
	fdiv x100, x121, x11
	j main_cont_b6969 # adhoc jump(2)
main_beqelse_b6968:
# B6968
	lui x100, 784384
	fdiv x100, x100, x11
	j main_cont_b6969 # adhoc jump(2)
main_beqelse_b6966:
# B6966
	lui x100, 260096
main_cont_b6969:
# B6969
	lw x11, 0(x10)
	fmul x11, x11, x100
	sw x11, 0(x10)
	lw x11, 1(x10)
	fmul x11, x11, x100
	sw x11, 1(x10)
	lw x11, 2(x10)
	fmul x100, x11, x100
	sw x100, 2(x10)
main_cont_b6970:
# B6970
	la x6, min_caml_intersection_point
	mv x5, x54
	addi	x2, x2, 43
	jal	utexture.3261
	addi	x2, x2, -43
	lw x6, 0(x42)
	mv x5, zero
	addi	x2, x2, 43
	jal	shadow_check_one_or_matrix.3221
	addi	x2, x2, -43
	bne	x5, zero, main_beqelse_b6972
# B6971
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
	beq	x100, zero, main_bneelse_b6974
# B6973
	mv x11, zero
	j main_cont_b6975 # adhoc jump(2)
main_bneelse_b6974:
# B6974
	mv x11, x10
main_cont_b6975:
# B6975
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
main_beqelse_b6972:
# B6972
main_bneelse_b6951:
# B6951
main_cont_b6976:
# B6976
	addi x10, x51, -2
	mv x51, x10
	j	main_loop_b6921
main_bleelse_b6923:
# B6923
# B6977
	lw x10, 5(x120)
	add x4, x10, x122
	lw x10, 0(x4)
	lw x100, 0(x123)
	sw x100, 0(x10)
	lw x100, 1(x123)
	sw x100, 1(x10)
	lw x100, 2(x123)
	sw x100, 2(x10)
main_bneelse_b6904:
# B6904
main_cont_b6978:
# B6978
	addi x10, x122, 1
	mv x122, x10
	j	main_loop_b6899
main_bleelse_b6903:
# B6903
main_bleelse_b6901:
# B6901
main_cont_b6979:
# B6979
	addi x10, x114, -1
	addi x100, x116, 1
	bgt	x110, x100, main_bleelse_b6981
# B6980
	addi x100, x100, -5
	j main_cont_b6982 # adhoc jump(2)
main_bleelse_b6981:
# B6981
main_cont_b6982:
# B6982
	mv x116, x100
	mv x114, x10
	j	main_loop_b6891
main_bleelse_b6893:
# B6893
# B6983
	mv x114, x101
	mv x101, zero
	mv x113, x105
main_loop_b6984:
# B6984
	lw x10, 1(x102)
	bge	x101, x10, main_bgtelse_b6985
# B6986
	lw x10, 1(x102)
	addi x10, x10, -1
	addi x116, x101, 1
	bge	x101, x10, main_bgtelse_b6987
# B6988
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
	jal	pretrace_pixels.3338
	addi	x2, x2, -43
main_bgtelse_b6987:
# B6987
main_cont_b6989:
# B6989
	mv x118, x109
	mv x117, x107
	mv x10, zero
	mv x119, x111
	mv x120, x114
main_loop_b6990:
# B6990
	lw x100, 0(x102)
	bge	x10, x100, main_bgtelse_b6991
# B6992
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
	bgt	x100, x11, main_bleelse_b6994
# B6993
	mv x100, zero
	j main_cont_b7001 # adhoc jump(2)
main_bleelse_b6994:
# B6994
	bgt	x101, zero, main_bleelse_b6996
# B6995
	mv x100, zero
	j main_cont_b7001 # adhoc jump(2)
main_bleelse_b6996:
# B6996
	lw x100, 0(x102)
	bgt	x100, x122, main_bleelse_b6998
# B6997
	mv x100, zero
	j main_cont_b7001 # adhoc jump(2)
main_bleelse_b6998:
# B6998
	bgt	x10, zero, main_bleelse_b7000
# B6999
	mv x100, zero
	j main_cont_b7001 # adhoc jump(2)
main_bleelse_b7000:
# B7000
	li x100, 1
main_cont_b7001:
# B7001
	bne	x100, zero, main_beqelse_b7003
# B7002
	add x4, x118, x10
	lw x10, 0(x4)
	mv x125, zero
	mv x123, x10
main_loop_b7004:
# B7004
	bgt	x125, x112, main_bleelse_b7006
# B7005
	lw x10, 2(x123)
	add x4, x10, x125
	lw x10, 0(x4)
	bgt	zero, x10, main_bleelse_b7008
# B7007
	lw x10, 3(x123)
	add x4, x10, x125
	lw x10, 0(x4)
	beq	x10, zero, main_bneelse_b7009
# B7010
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
	beq	x41, zero, main_bneelse_b7011
# B7012
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
main_loop_b7013:
# B7013
	bgt	zero, x15, main_bleelse_b7015
# B7014
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
	bne	x17, x105, main_beqelse_b7017
# B7016
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
	j main_cont_b7026 # adhoc jump(2)
main_beqelse_b7017:
# B7017
	bge	x105, x17, main_bgtelse_b7018
# B7019
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
	bne	x22, zero, main_beqelse_b7021
# B7020
	mv x13, x21
	j main_cont_b7022 # adhoc jump(2)
main_beqelse_b7021:
# B7021
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
main_cont_b7022:
# B7022
	bne	x17, x108, main_beqelse_b7024
# B7023
	lui x17, 260096
	fsub x13, x13, x17
	j main_cont_b7025 # adhoc jump(2)
main_beqelse_b7024:
# B7024
main_cont_b7025:
# B7025
	sw x13, 3(x16)
main_bgtelse_b7018:
# B7018
main_cont_b7026:
# B7026
	addi x13, x15, -1
	mv x15, x13
	j	main_loop_b7013
main_bleelse_b7015:
# B7015
# B7027
	mv x7, x47
	mv x6, x42
	mv x8, x48
	mv x5, x11
	addi	x2, x2, 43
	jal	iter_trace_diffuse_rays.3282
	addi	x2, x2, -43
main_bneelse_b7011:
# B7011
main_cont_b7028:
# B7028
	beq	x41, x103, main_bneelse_b7029
# B7030
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
main_loop_b7031:
# B7031
	bgt	zero, x14, main_bleelse_b7033
# B7032
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
	bne	x16, x105, main_beqelse_b7035
# B7034
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
	j main_cont_b7044 # adhoc jump(2)
main_beqelse_b7035:
# B7035
	bge	x105, x16, main_bgtelse_b7036
# B7037
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
	bne	x21, zero, main_beqelse_b7039
# B7038
	mv x11, x20
	j main_cont_b7040 # adhoc jump(2)
main_beqelse_b7039:
# B7039
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
main_cont_b7040:
# B7040
	bne	x16, x108, main_beqelse_b7042
# B7041
	lui x16, 260096
	fsub x11, x11, x16
	j main_cont_b7043 # adhoc jump(2)
main_beqelse_b7042:
# B7042
main_cont_b7043:
# B7043
	sw x11, 3(x15)
main_bgtelse_b7036:
# B7036
main_cont_b7044:
# B7044
	addi x11, x14, -1
	mv x14, x11
	j	main_loop_b7031
main_bleelse_b7033:
# B7033
# B7045
	li x8, 118
	mv x7, x47
	mv x6, x42
	mv x5, x100
	addi	x2, x2, 43
	jal	iter_trace_diffuse_rays.3282
	addi	x2, x2, -43
main_bneelse_b7029:
# B7029
main_cont_b7046:
# B7046
	beq	x41, x105, main_bneelse_b7047
# B7048
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
main_loop_b7049:
# B7049
	bgt	zero, x14, main_bleelse_b7051
# B7050
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
	bne	x16, x105, main_beqelse_b7053
# B7052
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
	j main_cont_b7062 # adhoc jump(2)
main_beqelse_b7053:
# B7053
	bge	x105, x16, main_bgtelse_b7054
# B7055
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
	bne	x21, zero, main_beqelse_b7057
# B7056
	mv x11, x20
	j main_cont_b7058 # adhoc jump(2)
main_beqelse_b7057:
# B7057
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
main_cont_b7058:
# B7058
	bne	x16, x108, main_beqelse_b7060
# B7059
	lui x16, 260096
	fsub x11, x11, x16
	j main_cont_b7061 # adhoc jump(2)
main_beqelse_b7060:
# B7060
main_cont_b7061:
# B7061
	sw x11, 3(x15)
main_bgtelse_b7054:
# B7054
main_cont_b7062:
# B7062
	addi x11, x14, -1
	mv x14, x11
	j	main_loop_b7049
main_bleelse_b7051:
# B7051
# B7063
	li x8, 118
	mv x7, x47
	mv x6, x42
	mv x5, x100
	addi	x2, x2, 43
	jal	iter_trace_diffuse_rays.3282
	addi	x2, x2, -43
main_bneelse_b7047:
# B7047
main_cont_b7064:
# B7064
	beq	x41, x108, main_bneelse_b7065
# B7066
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
main_loop_b7067:
# B7067
	bgt	zero, x14, main_bleelse_b7069
# B7068
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
	bne	x16, x105, main_beqelse_b7071
# B7070
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
	j main_cont_b7080 # adhoc jump(2)
main_beqelse_b7071:
# B7071
	bge	x105, x16, main_bgtelse_b7072
# B7073
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
	bne	x21, zero, main_beqelse_b7075
# B7074
	mv x11, x20
	j main_cont_b7076 # adhoc jump(2)
main_beqelse_b7075:
# B7075
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
main_cont_b7076:
# B7076
	bne	x16, x108, main_beqelse_b7078
# B7077
	lui x16, 260096
	fsub x11, x11, x16
	j main_cont_b7079 # adhoc jump(2)
main_beqelse_b7078:
# B7078
main_cont_b7079:
# B7079
	sw x11, 3(x15)
main_bgtelse_b7072:
# B7072
main_cont_b7080:
# B7080
	addi x11, x14, -1
	mv x14, x11
	j	main_loop_b7067
main_bleelse_b7069:
# B7069
# B7081
	li x8, 118
	mv x7, x47
	mv x6, x42
	mv x5, x100
	addi	x2, x2, 43
	jal	iter_trace_diffuse_rays.3282
	addi	x2, x2, -43
main_bneelse_b7065:
# B7065
main_cont_b7082:
# B7082
	beq	x41, x112, main_bneelse_b7083
# B7084
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
main_loop_b7085:
# B7085
	bgt	zero, x12, main_bleelse_b7087
# B7086
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
	bne	x14, x105, main_beqelse_b7089
# B7088
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
	j main_cont_b7098 # adhoc jump(2)
main_beqelse_b7089:
# B7089
	bge	x105, x14, main_bgtelse_b7090
# B7091
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
	bne	x19, zero, main_beqelse_b7093
# B7092
	mv x10, x18
	j main_cont_b7094 # adhoc jump(2)
main_beqelse_b7093:
# B7093
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
main_cont_b7094:
# B7094
	bne	x14, x108, main_beqelse_b7096
# B7095
	lui x14, 260096
	fsub x10, x10, x14
	j main_cont_b7097 # adhoc jump(2)
main_beqelse_b7096:
# B7096
main_cont_b7097:
# B7097
	sw x10, 3(x13)
main_bgtelse_b7090:
# B7090
main_cont_b7098:
# B7098
	addi x10, x12, -1
	mv x12, x10
	j	main_loop_b7085
main_bleelse_b7087:
# B7087
# B7099
	li x8, 118
	mv x7, x47
	mv x6, x42
	mv x5, x100
	addi	x2, x2, 43
	jal	iter_trace_diffuse_rays.3282
	addi	x2, x2, -43
main_bneelse_b7083:
# B7083
main_cont_b7100:
# B7100
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
main_bneelse_b7009:
# B7009
main_cont_b7101:
# B7101
	addi x10, x125, 1
	mv x125, x10
	j	main_loop_b7004
main_bleelse_b7008:
# B7008
main_bleelse_b7006:
# B7006
	j main_cont_b7145 # adhoc jump(2)
main_beqelse_b7003:
# B7003
	mv x15, x119
	mv x14, x118
	mv x16, zero
	mv x13, x117
	mv x12, x101
	mv x11, x10
main_loop_b7102:
# B7102
	add x4, x14, x11
	lw x10, 0(x4)
	bgt	x16, x112, main_bleelse_b7104
# B7103
	lw x100, 2(x10)
	add x4, x100, x16
	lw x100, 0(x4)
	bgt	zero, x100, main_bleelse_b7106
# B7105
	add x4, x14, x11
	lw x100, 0(x4)
	lw x100, 2(x100)
	add x4, x100, x16
	lw x100, 0(x4)
	add x4, x13, x11
	lw x17, 0(x4)
	lw x17, 2(x17)
	add x4, x17, x16
	lw x17, 0(x4)
	addi x18, x11, -1
	addi x19, x11, 1
	bne	x17, x100, main_beqelse_b7108
# B7107
	add x4, x15, x11
	lw x17, 0(x4)
	lw x17, 2(x17)
	add x4, x17, x16
	lw x17, 0(x4)
	bne	x17, x100, main_beqelse_b7110
# B7109
	add x4, x14, x18
	lw x17, 0(x4)
	lw x17, 2(x17)
	add x4, x17, x16
	lw x17, 0(x4)
	bne	x17, x100, main_beqelse_b7112
# B7111
	add x4, x14, x19
	lw x17, 0(x4)
	lw x17, 2(x17)
	add x4, x17, x16
	lw x17, 0(x4)
	bne	x17, x100, main_beqelse_b7114
# B7113
	li x100, 1
	j main_cont_b7115 # adhoc jump(2)
main_beqelse_b7114:
# B7114
	mv x100, zero
	j main_cont_b7115 # adhoc jump(2)
main_beqelse_b7112:
# B7112
	mv x100, zero
	j main_cont_b7115 # adhoc jump(2)
main_beqelse_b7110:
# B7110
	mv x100, zero
	j main_cont_b7115 # adhoc jump(2)
main_beqelse_b7108:
# B7108
	mv x100, zero
main_cont_b7115:
# B7115
	la x123, min_caml_diffuse_ray
	bne	x100, zero, main_beqelse_b7117
# B7116
	add x4, x14, x11
	lw x10, 0(x4)
	mv x125, x10
	mv x127, x16
main_loop_b7118:
# B7118
	bgt	x127, x112, main_bleelse_b7120
# B7119
	lw x10, 2(x125)
	add x4, x10, x127
	lw x10, 0(x4)
	bgt	zero, x10, main_bleelse_b7122
# B7121
	lw x10, 3(x125)
	add x4, x10, x127
	lw x10, 0(x4)
	beq	x10, zero, main_bneelse_b7123
# B7124
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
	beq	x42, zero, main_bneelse_b7125
# B7126
	la x10, min_caml_dirvecs
	lw x5, 0(x10)
	mv x6, x47
	mv x7, x49
	addi	x2, x2, 43
	jal	trace_diffuse_rays.3287
	addi	x2, x2, -43
main_bneelse_b7125:
# B7125
main_cont_b7127:
# B7127
	beq	x42, x103, main_bneelse_b7128
# B7129
	la x10, min_caml_dirvecs
	lw x5, 1(x10)
	mv x6, x47
	mv x7, x49
	addi	x2, x2, 43
	jal	trace_diffuse_rays.3287
	addi	x2, x2, -43
main_bneelse_b7128:
# B7128
main_cont_b7130:
# B7130
	beq	x42, x105, main_bneelse_b7131
# B7132
	la x10, min_caml_dirvecs
	lw x5, 2(x10)
	mv x6, x47
	mv x7, x49
	addi	x2, x2, 43
	jal	trace_diffuse_rays.3287
	addi	x2, x2, -43
main_bneelse_b7131:
# B7131
main_cont_b7133:
# B7133
	beq	x42, x108, main_bneelse_b7134
# B7135
	la x10, min_caml_dirvecs
	lw x5, 3(x10)
	mv x6, x47
	mv x7, x49
	addi	x2, x2, 43
	jal	trace_diffuse_rays.3287
	addi	x2, x2, -43
main_bneelse_b7134:
# B7134
main_cont_b7136:
# B7136
	beq	x42, x112, main_bneelse_b7137
# B7138
	la x10, min_caml_dirvecs
	lw x5, 4(x10)
	mv x6, x47
	mv x7, x49
	addi	x2, x2, 43
	jal	trace_diffuse_rays.3287
	addi	x2, x2, -43
main_bneelse_b7137:
# B7137
main_cont_b7139:
# B7139
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
main_bneelse_b7123:
# B7123
main_cont_b7140:
# B7140
	addi x10, x127, 1
	mv x127, x10
	j	main_loop_b7118
main_bleelse_b7122:
# B7122
main_bleelse_b7120:
# B7120
main_cont_b7141:
# B7141
	j main_cont_b7145 # adhoc jump(2)
main_beqelse_b7117:
# B7117
	lw x10, 3(x10)
	add x4, x10, x16
	lw x10, 0(x4)
	beq	x10, zero, main_bneelse_b7142
# B7143
	add x4, x13, x11
	lw x10, 0(x4)
	lw x10, 5(x10)
	add x4, x14, x18
	lw x100, 0(x4)
	lw x100, 5(x100)
	add x4, x14, x11
	lw x17, 0(x4)
	lw x17, 5(x17)
	add x4, x14, x19
	lw x18, 0(x4)
	lw x18, 5(x18)
	add x4, x15, x11
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
	add x4, x100, x16
	lw x10, 0(x4)
	lw x100, 0(x123)
	lw x20, 0(x10)
	fadd x100, x100, x20
	sw x100, 0(x123)
	lw x100, 1(x123)
	lw x20, 1(x10)
	fadd x100, x100, x20
	sw x100, 1(x123)
	lw x100, 2(x123)
	lw x10, 2(x10)
	fadd x10, x100, x10
	sw x10, 2(x123)
	add x4, x17, x16
	lw x10, 0(x4)
	lw x100, 0(x123)
	lw x17, 0(x10)
	fadd x100, x100, x17
	sw x100, 0(x123)
	lw x100, 1(x123)
	lw x17, 1(x10)
	fadd x100, x100, x17
	sw x100, 1(x123)
	lw x100, 2(x123)
	lw x10, 2(x10)
	fadd x10, x100, x10
	sw x10, 2(x123)
	add x4, x18, x16
	lw x10, 0(x4)
	lw x100, 0(x123)
	lw x17, 0(x10)
	fadd x100, x100, x17
	sw x100, 0(x123)
	lw x100, 1(x123)
	lw x17, 1(x10)
	fadd x100, x100, x17
	sw x100, 1(x123)
	lw x100, 2(x123)
	lw x10, 2(x10)
	fadd x10, x100, x10
	sw x10, 2(x123)
	add x4, x19, x16
	lw x10, 0(x4)
	lw x100, 0(x123)
	lw x17, 0(x10)
	fadd x100, x100, x17
	sw x100, 0(x123)
	lw x100, 1(x123)
	lw x17, 1(x10)
	fadd x100, x100, x17
	sw x100, 1(x123)
	lw x100, 2(x123)
	lw x10, 2(x10)
	fadd x10, x100, x10
	sw x10, 2(x123)
	add x4, x14, x11
	lw x10, 0(x4)
	lw x10, 4(x10)
	add x4, x10, x16
	lw x10, 0(x4)
	lw x100, 0(x121)
	lw x17, 0(x10)
	lw x18, 0(x123)
	fmul x17, x17, x18
	fadd x100, x100, x17
	sw x100, 0(x121)
	lw x100, 1(x121)
	lw x17, 1(x10)
	lw x18, 1(x123)
	fmul x17, x17, x18
	fadd x100, x100, x17
	sw x100, 1(x121)
	lw x100, 2(x121)
	lw x10, 2(x10)
	lw x17, 2(x123)
	fmul x10, x10, x17
	fadd x10, x100, x10
	sw x10, 2(x121)
main_bneelse_b7142:
# B7142
main_cont_b7144:
# B7144
	addi x10, x16, 1
	mv x16, x10
	j	main_loop_b7102
main_bleelse_b7106:
# B7106
main_bleelse_b7104:
# B7104
main_cont_b7145:
# B7145
	bne	x120, x108, main_beqelse_b7147
# B7146
	lw x10, 0(x121)
	ftoi x10, x10
	bgt	x10, x46, main_bleelse_b7149
# B7148
	bgt	zero, x10, main_bleelse_b7151
# B7150
	mv x100, x10
	j main_cont_b7152 # adhoc jump(2)
main_bleelse_b7151:
# B7151
	mv x100, zero
	j main_cont_b7152 # adhoc jump(2)
main_bleelse_b7149:
# B7149
	mv x100, x46
main_cont_b7152:
# B7152
	bgt	zero, x100, main_bleelse_b7154
# B7153
	mv x10, x100
	mv x11, zero
main_loop_b7155:
# B7155
	mv x12, x103
	mv x100, x10
	mv x13, x43
	j	main_loop_b7156
main_bgtelse_b7157:	#moved
# B7157
	slli x12, x13, 3
	slli x14, x13, 1
	add x12, x12, x14
	mv x4, x13
	mv x13, x12
	mv x12, x4
main_loop_b7156:
# B7156
	bge	x100, x13, main_bgtelse_b7157
# B7158
# B7159
	mv x15, x103
	mv x16, zero
	mv x14, x12
	j	main_loop_b7160
main_bleelse_b7162:	#moved
# B7162
	slli x100, x15, 3
	slli x13, x15, 1
	add x100, x100, x13
	addi x13, x16, 1
	mv x15, x100
	mv x16, x13
main_loop_b7160:
# B7160
	bgt	x14, x15, main_bleelse_b7162
# B7161
# B7163
	sub x100, x11, x16
	addi x100, x100, -1
	mv x11, x100
	j	main_loop_b7164
main_bleelse_b7166:	#moved
# B7166
	li x100, 48
	out8 x100
	addi x100, x11, -1
	mv x11, x100
main_loop_b7164:
# B7164
	bgt	x11, zero, main_bleelse_b7166
# B7165
# B7167
	bne	x16, zero, main_beqelse_b7169
# B7168
	addi x10, x10, 48
	out8 x10
	j main_cont_b7201 # adhoc jump(2)
main_beqelse_b7169:
# B7169
	mv x15, x12
	mv x13, x12
	mv x100, x10
	mv x14, x103
	j	main_loop_b7170
main_bgtelse_b7171:	#moved
# B7171
	addi x14, x14, 1
	mv x15, x11
main_loop_b7170:
# B7170
	add x11, x15, x13
	bge	x100, x11, main_bgtelse_b7171
# B7172
# B7173
	mv x15, x12
	mv x18, x14
	mv x17, zero
	j	main_loop_b7174
main_beqelse_b7176:	#moved
# B7176
	add x100, x17, x15
	addi x11, x18, -1
	mv x17, x100
	mv x18, x11
main_loop_b7174:
# B7174
	bne	x18, zero, main_beqelse_b7176
# B7175
# B7177
	sub x10, x10, x17
	addi x100, x14, 48
	out8 x100
	mv x11, x16
	j	main_loop_b7155
main_bleelse_b7154:
# B7154
	out8 x44
	sub x10, zero, x100
	mv x100, x10
	mv x11, zero
main_loop_b7178:
# B7178
	mv x12, x103
	mv x10, x100
	mv x13, x43
	j	main_loop_b7179
main_bgtelse_b7180:	#moved
# B7180
	slli x12, x13, 3
	slli x14, x13, 1
	add x12, x12, x14
	mv x4, x13
	mv x13, x12
	mv x12, x4
main_loop_b7179:
# B7179
	bge	x10, x13, main_bgtelse_b7180
# B7181
# B7182
	mv x15, x103
	mv x16, zero
	mv x14, x12
	j	main_loop_b7183
main_bleelse_b7185:	#moved
# B7185
	slli x10, x15, 3
	slli x13, x15, 1
	add x10, x10, x13
	addi x13, x16, 1
	mv x15, x10
	mv x16, x13
main_loop_b7183:
# B7183
	bgt	x14, x15, main_bleelse_b7185
# B7184
# B7186
	sub x10, x11, x16
	addi x10, x10, -1
	mv x11, x10
	j	main_loop_b7187
main_bleelse_b7189:	#moved
# B7189
	li x10, 48
	out8 x10
	addi x10, x11, -1
	mv x11, x10
main_loop_b7187:
# B7187
	bgt	x11, zero, main_bleelse_b7189
# B7188
# B7190
	bne	x16, zero, main_beqelse_b7192
# B7191
	addi x10, x100, 48
	out8 x10
main_cont_b7201:
# B7201
	out8 x45
	lw x10, 1(x121)
	ftoi x10, x10
	bgt	x10, x46, main_bleelse_b7203
# B7202
	bgt	zero, x10, main_bleelse_b7205
# B7204
	mv x100, x10
	j main_cont_b7206 # adhoc jump(2)
main_bleelse_b7205:
# B7205
	mv x100, zero
	j main_cont_b7206 # adhoc jump(2)
main_bleelse_b7203:
# B7203
	mv x100, x46
main_cont_b7206:
# B7206
	bgt	zero, x100, main_bleelse_b7208
# B7207
	mv x10, x100
	mv x11, zero
main_loop_b7209:
# B7209
	mv x12, x103
	mv x100, x10
	mv x13, x43
	j	main_loop_b7210
main_bgtelse_b7211:	#moved
# B7211
	slli x12, x13, 3
	slli x14, x13, 1
	add x12, x12, x14
	mv x4, x13
	mv x13, x12
	mv x12, x4
main_loop_b7210:
# B7210
	bge	x100, x13, main_bgtelse_b7211
# B7212
# B7213
	mv x15, x103
	mv x16, zero
	mv x14, x12
	j	main_loop_b7214
main_bleelse_b7216:	#moved
# B7216
	slli x100, x15, 3
	slli x13, x15, 1
	add x100, x100, x13
	addi x13, x16, 1
	mv x15, x100
	mv x16, x13
main_loop_b7214:
# B7214
	bgt	x14, x15, main_bleelse_b7216
# B7215
# B7217
	sub x100, x11, x16
	addi x100, x100, -1
	mv x11, x100
	j	main_loop_b7218
main_bleelse_b7220:	#moved
# B7220
	li x100, 48
	out8 x100
	addi x100, x11, -1
	mv x11, x100
main_loop_b7218:
# B7218
	bgt	x11, zero, main_bleelse_b7220
# B7219
# B7221
	bne	x16, zero, main_beqelse_b7223
# B7222
	addi x10, x10, 48
	out8 x10
	j main_cont_b7255 # adhoc jump(2)
main_beqelse_b7223:
# B7223
	mv x15, x12
	mv x13, x12
	mv x100, x10
	mv x14, x103
	j	main_loop_b7224
main_bgtelse_b7225:	#moved
# B7225
	addi x14, x14, 1
	mv x15, x11
main_loop_b7224:
# B7224
	add x11, x15, x13
	bge	x100, x11, main_bgtelse_b7225
# B7226
# B7227
	mv x15, x12
	mv x18, x14
	mv x17, zero
	j	main_loop_b7228
main_beqelse_b7230:	#moved
# B7230
	add x100, x17, x15
	addi x11, x18, -1
	mv x17, x100
	mv x18, x11
main_loop_b7228:
# B7228
	bne	x18, zero, main_beqelse_b7230
# B7229
# B7231
	sub x10, x10, x17
	addi x100, x14, 48
	out8 x100
	mv x11, x16
	j	main_loop_b7209
main_bleelse_b7208:
# B7208
	out8 x44
	sub x10, zero, x100
	mv x100, x10
	mv x11, zero
main_loop_b7232:
# B7232
	mv x12, x103
	mv x10, x100
	mv x13, x43
	j	main_loop_b7233
main_bgtelse_b7234:	#moved
# B7234
	slli x12, x13, 3
	slli x14, x13, 1
	add x12, x12, x14
	mv x4, x13
	mv x13, x12
	mv x12, x4
main_loop_b7233:
# B7233
	bge	x10, x13, main_bgtelse_b7234
# B7235
# B7236
	mv x15, x103
	mv x16, zero
	mv x14, x12
	j	main_loop_b7237
main_bleelse_b7239:	#moved
# B7239
	slli x10, x15, 3
	slli x13, x15, 1
	add x10, x10, x13
	addi x13, x16, 1
	mv x15, x10
	mv x16, x13
main_loop_b7237:
# B7237
	bgt	x14, x15, main_bleelse_b7239
# B7238
# B7240
	sub x10, x11, x16
	addi x10, x10, -1
	mv x11, x10
	j	main_loop_b7241
main_bleelse_b7243:	#moved
# B7243
	li x10, 48
	out8 x10
	addi x10, x11, -1
	mv x11, x10
main_loop_b7241:
# B7241
	bgt	x11, zero, main_bleelse_b7243
# B7242
# B7244
	bne	x16, zero, main_beqelse_b7246
# B7245
	addi x10, x100, 48
	out8 x10
main_cont_b7255:
# B7255
	out8 x45
	lw x10, 2(x121)
	ftoi x10, x10
	bgt	x10, x46, main_bleelse_b7257
# B7256
	bgt	zero, x10, main_bleelse_b7259
# B7258
	mv x100, x10
	j main_cont_b7260 # adhoc jump(2)
main_bleelse_b7259:
# B7259
	mv x100, zero
	j main_cont_b7260 # adhoc jump(2)
main_bleelse_b7257:
# B7257
	mv x100, x46
main_cont_b7260:
# B7260
	bgt	zero, x100, main_bleelse_b7262
# B7261
	mv x10, x100
	mv x11, zero
main_loop_b7263:
# B7263
	mv x12, x103
	mv x100, x10
	mv x13, x43
	j	main_loop_b7264
main_bgtelse_b7265:	#moved
# B7265
	slli x12, x13, 3
	slli x14, x13, 1
	add x12, x12, x14
	mv x4, x13
	mv x13, x12
	mv x12, x4
main_loop_b7264:
# B7264
	bge	x100, x13, main_bgtelse_b7265
# B7266
# B7267
	mv x15, x103
	mv x16, zero
	mv x14, x12
	j	main_loop_b7268
main_bleelse_b7270:	#moved
# B7270
	slli x100, x15, 3
	slli x13, x15, 1
	add x100, x100, x13
	addi x13, x16, 1
	mv x15, x100
	mv x16, x13
main_loop_b7268:
# B7268
	bgt	x14, x15, main_bleelse_b7270
# B7269
# B7271
	sub x100, x11, x16
	addi x100, x100, -1
	mv x11, x100
	j	main_loop_b7272
main_bleelse_b7274:	#moved
# B7274
	li x100, 48
	out8 x100
	addi x100, x11, -1
	mv x11, x100
main_loop_b7272:
# B7272
	bgt	x11, zero, main_bleelse_b7274
# B7273
# B7275
	bne	x16, zero, main_beqelse_b7277
# B7276
	addi x10, x10, 48
	out8 x10
	j main_cont_b7309 # adhoc jump(2)
main_beqelse_b7277:
# B7277
	mv x15, x12
	mv x13, x12
	mv x100, x10
	mv x14, x103
	j	main_loop_b7278
main_bgtelse_b7279:	#moved
# B7279
	addi x14, x14, 1
	mv x15, x11
main_loop_b7278:
# B7278
	add x11, x15, x13
	bge	x100, x11, main_bgtelse_b7279
# B7280
# B7281
	mv x15, x12
	mv x18, x14
	mv x17, zero
	j	main_loop_b7282
main_beqelse_b7284:	#moved
# B7284
	add x100, x17, x15
	addi x11, x18, -1
	mv x17, x100
	mv x18, x11
main_loop_b7282:
# B7282
	bne	x18, zero, main_beqelse_b7284
# B7283
# B7285
	sub x10, x10, x17
	addi x100, x14, 48
	out8 x100
	mv x11, x16
	j	main_loop_b7263
main_bleelse_b7262:
# B7262
	out8 x44
	sub x10, zero, x100
	mv x100, x10
	mv x11, zero
main_loop_b7286:
# B7286
	mv x12, x103
	mv x10, x100
	mv x13, x43
	j	main_loop_b7287
main_bgtelse_b7288:	#moved
# B7288
	slli x12, x13, 3
	slli x14, x13, 1
	add x12, x12, x14
	mv x4, x13
	mv x13, x12
	mv x12, x4
main_loop_b7287:
# B7287
	bge	x10, x13, main_bgtelse_b7288
# B7289
# B7290
	mv x15, x103
	mv x16, zero
	mv x14, x12
	j	main_loop_b7291
main_bleelse_b7293:	#moved
# B7293
	slli x10, x15, 3
	slli x13, x15, 1
	add x10, x10, x13
	addi x13, x16, 1
	mv x15, x10
	mv x16, x13
main_loop_b7291:
# B7291
	bgt	x14, x15, main_bleelse_b7293
# B7292
# B7294
	sub x10, x11, x16
	addi x10, x10, -1
	mv x11, x10
	j	main_loop_b7295
main_bleelse_b7297:	#moved
# B7297
	li x10, 48
	out8 x10
	addi x10, x11, -1
	mv x11, x10
main_loop_b7295:
# B7295
	bgt	x11, zero, main_bleelse_b7297
# B7296
# B7298
	bne	x16, zero, main_beqelse_b7300
# B7299
	addi x10, x100, 48
	out8 x10
main_cont_b7309:
# B7309
	out8 x43
	j main_cont_b7325 # adhoc jump(2)
main_beqelse_b7300:
# B7300
	mv x15, x12
	mv x13, x12
	mv x10, x100
	mv x14, x103
	j	main_loop_b7301
main_bgtelse_b7302:	#moved
# B7302
	addi x14, x14, 1
	mv x15, x11
main_loop_b7301:
# B7301
	add x11, x15, x13
	bge	x10, x11, main_bgtelse_b7302
# B7303
# B7304
	mv x15, x12
	mv x18, x14
	mv x17, zero
	j	main_loop_b7305
main_beqelse_b7307:	#moved
# B7307
	add x10, x17, x15
	addi x11, x18, -1
	mv x17, x10
	mv x18, x11
main_loop_b7305:
# B7305
	bne	x18, zero, main_beqelse_b7307
# B7306
# B7308
	sub x10, x100, x17
	addi x100, x14, 48
	out8 x100
	mv x11, x16
	mv x100, x10
	j	main_loop_b7286
main_beqelse_b7246:
# B7246
	mv x15, x12
	mv x13, x12
	mv x10, x100
	mv x14, x103
	j	main_loop_b7247
main_bgtelse_b7248:	#moved
# B7248
	addi x14, x14, 1
	mv x15, x11
main_loop_b7247:
# B7247
	add x11, x15, x13
	bge	x10, x11, main_bgtelse_b7248
# B7249
# B7250
	mv x15, x12
	mv x18, x14
	mv x17, zero
	j	main_loop_b7251
main_beqelse_b7253:	#moved
# B7253
	add x10, x17, x15
	addi x11, x18, -1
	mv x17, x10
	mv x18, x11
main_loop_b7251:
# B7251
	bne	x18, zero, main_beqelse_b7253
# B7252
# B7254
	sub x10, x100, x17
	addi x100, x14, 48
	out8 x100
	mv x11, x16
	mv x100, x10
	j	main_loop_b7232
main_beqelse_b7192:
# B7192
	mv x15, x12
	mv x13, x12
	mv x10, x100
	mv x14, x103
	j	main_loop_b7193
main_bgtelse_b7194:	#moved
# B7194
	addi x14, x14, 1
	mv x15, x11
main_loop_b7193:
# B7193
	add x11, x15, x13
	bge	x10, x11, main_bgtelse_b7194
# B7195
# B7196
	mv x15, x12
	mv x18, x14
	mv x17, zero
	j	main_loop_b7197
main_beqelse_b7199:	#moved
# B7199
	add x10, x17, x15
	addi x11, x18, -1
	mv x17, x10
	mv x18, x11
main_loop_b7197:
# B7197
	bne	x18, zero, main_beqelse_b7199
# B7198
# B7200
	sub x10, x100, x17
	addi x100, x14, 48
	out8 x100
	mv x11, x16
	mv x100, x10
	j	main_loop_b7178
main_beqelse_b7147:
# B7147
	lw x10, 0(x121)
	ftoi x10, x10
	bgt	x10, x46, main_bleelse_b7311
# B7310
	bgt	zero, x10, main_bleelse_b7313
# B7312
	mv x100, x10
	j main_cont_b7314 # adhoc jump(2)
main_bleelse_b7313:
# B7313
	mv x100, zero
	j main_cont_b7314 # adhoc jump(2)
main_bleelse_b7311:
# B7311
	mv x100, x46
main_cont_b7314:
# B7314
	out8 x100
	lw x10, 1(x121)
	ftoi x10, x10
	bgt	x10, x46, main_bleelse_b7316
# B7315
	bgt	zero, x10, main_bleelse_b7318
# B7317
	mv x100, x10
	j main_cont_b7319 # adhoc jump(2)
main_bleelse_b7318:
# B7318
	mv x100, zero
	j main_cont_b7319 # adhoc jump(2)
main_bleelse_b7316:
# B7316
	mv x100, x46
main_cont_b7319:
# B7319
	out8 x100
	lw x10, 2(x121)
	ftoi x10, x10
	bgt	x10, x46, main_bleelse_b7321
# B7320
	bgt	zero, x10, main_bleelse_b7323
# B7322
	mv x100, x10
	j main_cont_b7324 # adhoc jump(2)
main_bleelse_b7323:
# B7323
	mv x100, zero
	j main_cont_b7324 # adhoc jump(2)
main_bleelse_b7321:
# B7321
	mv x100, x46
main_cont_b7324:
# B7324
	out8 x100
main_cont_b7325:
# B7325
	mv x10, x122
	j	main_loop_b6990
main_bgtelse_b6991:
# B6991
# B7326
	addi x10, x113, 2
	bgt	x110, x10, main_bleelse_b7328
# B7327
	addi x10, x10, -5
	j main_cont_b7329 # adhoc jump(2)
main_bleelse_b7328:
# B7328
main_cont_b7329:
# B7329
	mv x101, x116
	mv x113, x10
	mv x4, x109
	mv x109, x111
	mv x111, x107
	mv x107, x4
	j	main_loop_b6984
main_bgtelse_b6985:
# B6985
# B7330
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
main_beqelse_b6300:
# B6300
	mv x15, x12
	mv x13, x12
	mv x100, x10
	mv x14, x103
	j	main_loop_b6301
main_bgtelse_b6302:	#moved
# B6302
	addi x14, x14, 1
	mv x15, x11
main_loop_b6301:
# B6301
	add x11, x15, x13
	bge	x100, x11, main_bgtelse_b6302
# B6303
# B6304
	mv x15, x12
	mv x18, x14
	mv x17, zero
	j	main_loop_b6305
main_beqelse_b6307:	#moved
# B6307
	add x100, x17, x15
	addi x11, x18, -1
	mv x17, x100
	mv x18, x11
main_loop_b6305:
# B6305
	bne	x18, zero, main_beqelse_b6307
# B6306
# B6308
	sub x10, x10, x17
	addi x100, x14, 48
	out8 x100
	mv x100, x16
	j	main_loop_b6286
main_beqelse_b6276:
# B6276
	mv x15, x12
	mv x13, x12
	mv x10, x100
	mv x14, x103
	j	main_loop_b6277
main_bgtelse_b6278:	#moved
# B6278
	addi x14, x14, 1
	mv x15, x11
main_loop_b6277:
# B6277
	add x11, x15, x13
	bge	x10, x11, main_bgtelse_b6278
# B6279
# B6280
	mv x15, x12
	mv x18, x14
	mv x17, zero
	j	main_loop_b6281
main_beqelse_b6283:	#moved
# B6283
	add x10, x17, x15
	addi x11, x18, -1
	mv x17, x10
	mv x18, x11
main_loop_b6281:
# B6281
	bne	x18, zero, main_beqelse_b6283
# B6282
# B6284
	sub x10, x100, x17
	addi x100, x14, 48
	out8 x100
	mv x11, x16
	mv x100, x10
	j	main_loop_b6262
main_beqelse_b6227:
# B6227
	mv x15, x12
	mv x13, x12
	mv x10, x100
	mv x14, x103
	j	main_loop_b6228
main_bgtelse_b6229:	#moved
# B6229
	addi x14, x14, 1
	mv x15, x11
main_loop_b6228:
# B6228
	add x11, x15, x13
	bge	x10, x11, main_bgtelse_b6229
# B6230
# B6231
	mv x15, x12
	mv x18, x14
	mv x17, zero
	j	main_loop_b6232
main_beqelse_b6234:	#moved
# B6234
	add x10, x17, x15
	addi x11, x18, -1
	mv x17, x10
	mv x18, x11
main_loop_b6232:
# B6232
	bne	x18, zero, main_beqelse_b6234
# B6233
# B6235
	sub x10, x100, x17
	addi x100, x14, 48
	out8 x100
	mv x11, x16
	mv x100, x10
	j	main_loop_b6213
#	main program ends
endp:
	j endp
