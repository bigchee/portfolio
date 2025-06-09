	.data
min_caml_Ta8782:	space 1
min_caml_Ta8787:	space 1
min_caml_Tt8769:	space 1
min_caml_Tt8828:	space 1
min_caml_Tt8841:	space 1
min_caml_and_net:	space 50
min_caml_beam:	space 1
min_caml_consts:	space 60
min_caml_diffuse_ray:	space 3
min_caml_dirvecs:	space 5
min_caml_dummy:	space 0
min_caml_dummy_vs:	space 0
min_caml_dummydv:	space 1
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
min_caml_light_dirvec:	space 1
min_caml_n_objects:	space 1
min_caml_n_reflections:	space 1
min_caml_nvector:	space 3
min_caml_objects:	space 60
min_caml_or_net:	space 1
min_caml_ptrace_dirvec:	space 3
min_caml_reflections:	space 180
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
	.text
	lui	a0, 1
	lui	a1, 128
	j	min_caml_start
	.globl	min_caml_create_array
min_caml_create_array:	
	mv t0, a0 
	mv a0, s11 
create_array_loop:
	beq t0, zero, create_array_exit 
	sw a1, 0(s11)
	addi t0, t0, -1
	addi s11,s11, 1
	j create_array_loop
create_array_exit:
	ret
	.globl	min_caml_create_float_array
min_caml_create_float_array:
	mv t0, a0 
	mv a0, s11 
create_float_array_loop:
	beq t0, zero, create_array_exit 
	sw fa0, 0(s11)
	addi t0, t0, -1
	addi s11,s11, 1
	j create_float_array_loop
create_float_array_exit:
	ret
	.globl	min_caml_init_array 
min_caml_init_array:
	mv t0, a0 
	add t1, a0, a1 
init_array_loop:
	beq t0, t1, init_array_exit 
	sw a2, 0(t0)
	addi t0, t0, 1
	j init_array_loop
init_array_exit:
	ret
	.globl	min_caml_init_float_array
min_caml_init_float_array:
	mv t0, a0 
	add t1, a0, a1 
init_float_array_loop:
	beq t0, t1, init_array_exit 
	sw fa0, 0(t0)
	addi t0, t0, 1
	j init_array_loop
init_float_array_exit:
	ret
max2pow.2724:
	fle	t5, fa0, fa1
	bne	t5, zero, beq_else.9776
	lui	fa2, 262144
	fmul	fa1, fa1, fa2
	fle	t5, fa0, fa1
	bne	t5, zero, beq_else.9777
	fmul	fa1, fa1, fa2
	j	max2pow.2724
beq_else.9777:
	mv	fa0, fa1
	ret
beq_else.9776:
	mv	fa0, fa1
	ret
minus2powpi.2727:
	lui	fa2, 265361
	addi	fa2, fa2, -37
	fle	t5, fa2, fa0
	bne	t5, zero, beq_else.9778
	ret
beq_else.9778:
	fle	t5, fa0, fa1
	bne	t5, zero, beq_else.9779
	fsub	fa0, fa0, fa1
	lui	fa2, 262144
	fdiv	fa1, fa1, fa2
	j	minus2powpi.2727
beq_else.9779:
	lui	fa2, 262144
	fdiv	fa1, fa1, fa2
	j	minus2powpi.2727
kernel_sin.2732:
	fmul	fa1, fa0, fa0
	lui	fa2, 260096
	lui	fa3, 778923
	addi	fa3, fa3, -1364
	lui	fa4, 245896
	addi	fa4, fa4, 1638
	lui	fa5, 758998
	addi	fa5, fa5, 1206
	fmul	fa5, fa1, fa5
	fadd	fa4, fa4, fa5
	fmul	fa4, fa1, fa4
	fadd	fa3, fa3, fa4
	fmul	fa1, fa1, fa3
	fadd	fa1, fa2, fa1
	fmul	fa0, fa0, fa1
	ret
kernel_cos.2734:
	fmul	fa0, fa0, fa0
	lui	fa1, 260096
	lui	fa2, 782336
	lui	fa3, 250538
	addi	fa3, fa3, 1929
	lui	fa4, 764728
	addi	fa4, fa4, 262
	fmul	fa4, fa0, fa4
	fadd	fa3, fa3, fa4
	fmul	fa3, fa0, fa3
	fadd	fa2, fa2, fa3
	fmul	fa0, fa0, fa2
	fadd	fa0, fa1, fa0
	ret
sin.2736:
	mv	fa1, zero
	fle	t5, fa0, fa1
	bne	t5, zero, beq_else.9780
	li	a0, 1
	j	beq_cont.9781
beq_else.9780:
	mv	a0, zero
beq_cont.9781:
	mv	t5, zero
	bne	a0, t5, beq_else.9782
	fsub	fa0, fa1, fa0
	j	beq_cont.9783
beq_else.9782:
beq_cont.9783:
	lui	fa2, 265361
	addi	fa2, fa2, -37
	sw	fa1, 0(s10)
	sw	a0, 1(s10)
	sw	fa0, 2(s10)
	mv	fa1, fa2
	sw	ra, 3(s10)
	addi	s10, s10, 4
	jal	max2pow.2724
	addi	s10, s10, -4
	lw	ra, 3(s10)
	mv	fa1, fa0
	lw	fa0, 2(s10)
	sw	ra, 3(s10)
	addi	s10, s10, 4
	jal	minus2powpi.2727
	addi	s10, s10, -4
	lw	ra, 3(s10)
	lui	fa1, 263313
	addi	fa1, fa1, -37
	fle	t5, fa1, fa0
	bne	t5, zero, beq_else.9784
	mv	a0, zero
	j	beq_cont.9785
beq_else.9784:
	li	a0, 1
beq_cont.9785:
	mv	t5, zero
	bne	a0, t5, beq_else.9786
	j	beq_cont.9787
beq_else.9786:
	fsub	fa0, fa0, fa1
beq_cont.9787:
	mv	t5, zero
	bne	a0, t5, beq_else.9788
	lw	a0, 1(s10)
	j	beq_cont.9789
beq_else.9788:
	lw	a0, 1(s10)
	mv	t5, zero
	bne	a0, t5, beq_else.9790
	li	a0, 1
	j	beq_cont.9791
beq_else.9790:
	mv	a0, zero
beq_cont.9791:
beq_cont.9789:
	lui	fa2, 261265
	addi	fa2, fa2, -37
	fle	t5, fa2, fa0
	bne	t5, zero, beq_else.9792
	j	beq_cont.9793
beq_else.9792:
	fsub	fa0, fa1, fa0
beq_cont.9793:
	lui	fa1, 259217
	addi	fa1, fa1, -37
	sw	a0, 3(s10)
	fle	t5, fa1, fa0
	bne	t5, zero, beq_else.9794
	sw	ra, 4(s10)
	addi	s10, s10, 5
	jal	kernel_sin.2732
	addi	s10, s10, -5
	lw	ra, 4(s10)
	j	beq_cont.9795
beq_else.9794:
	fsub	fa0, fa2, fa0
	sw	ra, 4(s10)
	addi	s10, s10, 5
	jal	kernel_cos.2734
	addi	s10, s10, -5
	lw	ra, 4(s10)
beq_cont.9795:
	lw	fa1, 0(s10)
	fle	t5, fa0, fa1
	bne	t5, zero, beq_else.9796
	li	a0, 1
	j	beq_cont.9797
beq_else.9796:
	mv	a0, zero
beq_cont.9797:
	lw	a1, 3(s10)
	bne	a1, a0, beq_else.9798
	ret
beq_else.9798:
	fsub	fa0, fa1, fa0
	ret
cos.2738:
	mv	fa1, zero
	fle	t5, fa0, fa1
	bne	t5, zero, beq_else.9799
	li	a0, 1
	j	beq_cont.9800
beq_else.9799:
	mv	a0, zero
beq_cont.9800:
	mv	t5, zero
	bne	a0, t5, beq_else.9801
	fsub	fa0, fa1, fa0
	j	beq_cont.9802
beq_else.9801:
beq_cont.9802:
	lui	fa2, 265361
	addi	fa2, fa2, -37
	sw	fa1, 0(s10)
	sw	fa0, 1(s10)
	mv	fa1, fa2
	sw	ra, 2(s10)
	addi	s10, s10, 3
	jal	max2pow.2724
	addi	s10, s10, -3
	lw	ra, 2(s10)
	mv	fa1, fa0
	lw	fa0, 1(s10)
	sw	ra, 2(s10)
	addi	s10, s10, 3
	jal	minus2powpi.2727
	addi	s10, s10, -3
	lw	ra, 2(s10)
	lui	fa1, 263313
	addi	fa1, fa1, -37
	fle	t5, fa1, fa0
	bne	t5, zero, beq_else.9803
	mv	a0, zero
	j	beq_cont.9804
beq_else.9803:
	li	a0, 1
beq_cont.9804:
	mv	t5, zero
	bne	a0, t5, beq_else.9805
	j	beq_cont.9806
beq_else.9805:
	fsub	fa0, fa0, fa1
beq_cont.9806:
	mv	t5, zero
	bne	a0, t5, beq_else.9807
	li	a0, 1
	j	beq_cont.9808
beq_else.9807:
	mv	a0, zero
beq_cont.9808:
	lui	fa2, 261265
	addi	fa2, fa2, -37
	fle	t5, fa2, fa0
	bne	t5, zero, beq_else.9809
	mv	a1, zero
	j	beq_cont.9810
beq_else.9809:
	li	a1, 1
beq_cont.9810:
	mv	t5, zero
	bne	a1, t5, beq_else.9811
	j	beq_cont.9812
beq_else.9811:
	fsub	fa0, fa1, fa0
beq_cont.9812:
	mv	t5, zero
	bne	a1, t5, beq_else.9813
	j	beq_cont.9814
beq_else.9813:
	mv	t5, zero
	bne	a0, t5, beq_else.9815
	li	a0, 1
	j	beq_cont.9816
beq_else.9815:
	mv	a0, zero
beq_cont.9816:
beq_cont.9814:
	lui	fa1, 259217
	addi	fa1, fa1, -37
	sw	a0, 2(s10)
	fle	t5, fa1, fa0
	bne	t5, zero, beq_else.9817
	sw	ra, 3(s10)
	addi	s10, s10, 4
	jal	kernel_cos.2734
	addi	s10, s10, -4
	lw	ra, 3(s10)
	j	beq_cont.9818
beq_else.9817:
	fsub	fa0, fa2, fa0
	sw	ra, 3(s10)
	addi	s10, s10, 4
	jal	kernel_sin.2732
	addi	s10, s10, -4
	lw	ra, 3(s10)
beq_cont.9818:
	lw	fa1, 0(s10)
	fle	t5, fa0, fa1
	bne	t5, zero, beq_else.9819
	li	a0, 1
	j	beq_cont.9820
beq_else.9819:
	mv	a0, zero
beq_cont.9820:
	lw	a1, 2(s10)
	bne	a1, a0, beq_else.9821
	ret
beq_else.9821:
	fsub	fa0, fa1, fa0
	ret
kernel_atan.2740:
	fmul	fa1, fa0, fa0
	lui	fa2, 260096
	lui	fa3, 780971
	addi	fa3, fa3, -1366
	lui	fa4, 255181
	addi	fa4, fa4, -819
	lui	fa5, 778533
	addi	fa5, fa5, -1755
	lui	fa6, 253497
	addi	fa6, fa6, -456
	lui	fa7, 777085
	addi	fa7, fa7, 1646
	lui	ft0, 251742
	addi	ft0, ft0, 1989
	fmul	ft0, fa1, ft0
	fadd	fa7, fa7, ft0
	fmul	fa7, fa1, fa7
	fadd	fa6, fa6, fa7
	fmul	fa6, fa1, fa6
	fadd	fa5, fa5, fa6
	fmul	fa5, fa1, fa5
	fadd	fa4, fa4, fa5
	fmul	fa4, fa1, fa4
	fadd	fa3, fa3, fa4
	fmul	fa1, fa1, fa3
	fadd	fa1, fa2, fa1
	fmul	fa0, fa0, fa1
	ret
atan.2742:
	mv	fa1, zero
	fle	t5, fa0, fa1
	bne	t5, zero, beq_else.9822
	li	a0, 1
	j	beq_cont.9823
beq_else.9822:
	mv	a0, zero
beq_cont.9823:
	mv	t5, zero
	bne	a0, t5, beq_else.9824
	fsub	fa2, fa1, fa0
	j	beq_cont.9825
beq_else.9824:
	mv	fa2, fa0
beq_cont.9825:
	lui	fa3, 257536
	fle	t5, fa3, fa2
	bne	t5, zero, beq_else.9826
	j	kernel_atan.2740
beq_else.9826:
	lui	fa0, 262592
	sw	fa1, 0(s10)
	sw	a0, 1(s10)
	fle	t5, fa0, fa2
	bne	t5, zero, beq_else.9827
	lui	fa0, 259217
	addi	fa0, fa0, -37
	lui	fa3, 260096
	fsub	fa4, fa2, fa3
	fadd	fa2, fa2, fa3
	fdiv	fa2, fa4, fa2
	sw	fa0, 2(s10)
	mv	fa0, fa2
	sw	ra, 3(s10)
	addi	s10, s10, 4
	jal	kernel_atan.2740
	addi	s10, s10, -4
	lw	ra, 3(s10)
	lw	fa1, 2(s10)
	fadd	fa0, fa1, fa0
	j	beq_cont.9828
beq_else.9827:
	lui	fa0, 261265
	addi	fa0, fa0, -37
	lui	fa3, 260096
	fdiv	fa2, fa3, fa2
	sw	fa0, 3(s10)
	mv	fa0, fa2
	sw	ra, 4(s10)
	addi	s10, s10, 5
	jal	kernel_atan.2740
	addi	s10, s10, -5
	lw	ra, 4(s10)
	lw	fa1, 3(s10)
	fsub	fa0, fa1, fa0
beq_cont.9828:
	lw	a0, 1(s10)
	mv	t5, zero
	bne	a0, t5, beq_else.9829
	lw	fa1, 0(s10)
	fsub	fa0, fa1, fa0
	ret
beq_else.9829:
	ret
max10pow.2744:
	bgt	a2, a0, ble_else.9830
	slli	a1, a2, 3
	slli	a3, a2, 1
	add	a1, a1, a3
	mv	t3, a2
	mv	a2, a1
	mv	a1, t3
	j	max10pow.2744
ble_else.9830:
	mv	a0, a1
	ret
log10.2748:
	bgt	a0, a1, ble_else.9831
	mv	a0, a2
	ret
ble_else.9831:
	slli	a3, a1, 3
	slli	a1, a1, 1
	add	a1, a3, a1
	addi	a2, a2, 1
	j	log10.2748
get_q.2752:
	add	a3, a3, a1
	bgt	a3, a0, ble_else.9832
	addi	a2, a2, 1
	add	a3, a3, a1
	bgt	a3, a0, ble_else.9833
	addi	a2, a2, 1
	j	get_q.2752
ble_else.9833:
	mv	a0, a2
	ret
ble_else.9832:
	mv	a0, a2
	ret
mul1digit.2757:
	mv	t5, zero
	bne	a2, t5, beq_else.9834
	mv	a0, a1
	ret
beq_else.9834:
	add	a1, a1, a0
	addi	a2, a2, -1
	j	mul1digit.2757
printzero.2761:
	mv	t5, zero
	bgt	a0, t5, ble_else.9835
	ret
ble_else.9835:
	li	a1, 48
	sw	a0, 0(s10)
	out8	a1
	lw	a0, 0(s10)
	addi	a0, a0, -1
	j	printzero.2761
inner_print_int.2763:
	li	a2, 1
	li	a3, 10
	sw	a0, 0(s10)
	sw	a1, 1(s10)
	sw	a2, 2(s10)
	mv	a1, a2
	mv	a2, a3
	sw	ra, 3(s10)
	addi	s10, s10, 4
	jal	max10pow.2744
	addi	s10, s10, -4
	lw	ra, 3(s10)
	mv	a2, zero
	lw	a1, 2(s10)
	sw	a2, 3(s10)
	sw	a0, 4(s10)
	sw	ra, 5(s10)
	addi	s10, s10, 6
	jal	log10.2748
	addi	s10, s10, -6
	lw	ra, 5(s10)
	lw	a1, 1(s10)
	sub	a1, a1, a0
	addi	a1, a1, -1
	sw	a0, 5(s10)
	mv	a0, a1
	sw	ra, 6(s10)
	addi	s10, s10, 7
	jal	printzero.2761
	addi	s10, s10, -7
	lw	ra, 6(s10)
	lw	a0, 5(s10)
	mv	t5, zero
	bne	a0, t5, beq_else.9837
	lw	a0, 0(s10)
	addi	a0, a0, 48
	out8	a0
	ret
beq_else.9837:
	lw	a1, 4(s10)
	add	a3, a1, a1
	lw	a2, 0(s10)
	bgt	a3, a2, ble_else.9838
	li	a4, 2
	mv	a0, a2
	mv	a2, a4
	sw	ra, 6(s10)
	addi	s10, s10, 7
	jal	get_q.2752
	addi	s10, s10, -7
	lw	ra, 6(s10)
	mv	a2, a0
	j	ble_cont.9839
ble_else.9838:
	li	a2, 1
ble_cont.9839:
	lw	a0, 4(s10)
	lw	a1, 3(s10)
	sw	a2, 6(s10)
	sw	ra, 7(s10)
	addi	s10, s10, 8
	jal	mul1digit.2757
	addi	s10, s10, -8
	lw	ra, 7(s10)
	lw	a1, 0(s10)
	sub	a0, a1, a0
	lw	a1, 6(s10)
	addi	a1, a1, 48
	sw	a0, 7(s10)
	out8	a1
	lw	a0, 7(s10)
	lw	a1, 5(s10)
	j	inner_print_int.2763
print_int.2766:
	mv	a1, zero
	mv	t5, zero
	blt	a0, t5, bge_else.9840
	li	a1, 3
	j	inner_print_int.2763
bge_else.9840:
	li	a2, 45
	sw	a1, 0(s10)
	sw	a0, 1(s10)
	out8	a2
	lw	a0, 1(s10)
	neg	a0, a0
	lw	a1, 0(s10)
	j	inner_print_int.2763
sgn.2771:
	mv	fa1, zero
	feq	t5, fa0, fa1
	bne	t5, zero, beq_else.9841
	mv	a0, zero
	j	beq_cont.9842
beq_else.9841:
	li	a0, 1
beq_cont.9842:
	mv	t5, zero
	bne	a0, t5, beq_else.9843
	fle	t5, fa0, fa1
	bne	t5, zero, beq_else.9844
	li	a0, 1
	j	beq_cont.9845
beq_else.9844:
	mv	a0, zero
beq_cont.9845:
	mv	t5, zero
	bne	a0, t5, beq_else.9846
	lui	fa0, 784384
	ret
beq_else.9846:
	lui	fa0, 260096
	ret
beq_else.9843:
	mv	fa0, zero
	ret
vecset.2779:
	sw	fa0, 0(a0)
	sw	fa1, 1(a0)
	sw	fa2, 2(a0)
	ret
vecfill.2784:
	sw	fa0, 0(a0)
	sw	fa0, 1(a0)
	sw	fa0, 2(a0)
	ret
veccpy.2789:
	lw	fa0, 0(a1)
	sw	fa0, 0(a0)
	lw	fa0, 1(a1)
	sw	fa0, 1(a0)
	lw	fa0, 2(a1)
	sw	fa0, 2(a0)
	ret
vecunit_sgn.2792:
	lw	fa0, 0(a0)
	fmul	fa0, fa0, fa0
	lw	fa1, 1(a0)
	fmul	fa1, fa1, fa1
	fadd	fa0, fa0, fa1
	lw	fa1, 2(a0)
	fmul	fa1, fa1, fa1
	fadd	fa0, fa0, fa1
	sw	a0, 0(s10)
	sw	a1, 1(s10)
	fsqrt	fa0, fa0
	mv	fa1, zero
	feq	t5, fa0, fa1
	bne	t5, zero, beq_else.9850
	mv	a0, zero
	j	beq_cont.9851
beq_else.9850:
	li	a0, 1
beq_cont.9851:
	mv	t5, zero
	bne	a0, t5, beq_else.9852
	lw	a0, 1(s10)
	mv	t5, zero
	bne	a0, t5, beq_else.9854
	lui	fa1, 260096
	fdiv	fa0, fa1, fa0
	j	beq_cont.9855
beq_else.9854:
	lui	fa1, 784384
	fdiv	fa0, fa1, fa0
beq_cont.9855:
	j	beq_cont.9853
beq_else.9852:
	lui	fa0, 260096
beq_cont.9853:
	lw	a0, 0(s10)
	lw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	sw	fa1, 0(a0)
	lw	fa1, 1(a0)
	fmul	fa1, fa1, fa0
	sw	fa1, 1(a0)
	lw	fa1, 2(a0)
	fmul	fa0, fa1, fa0
	sw	fa0, 2(a0)
	ret
veciprod.2795:
	lw	fa0, 0(a0)
	lw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	lw	fa1, 1(a0)
	lw	fa2, 1(a1)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	lw	fa1, 2(a0)
	lw	fa2, 2(a1)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	ret
veciprod2.2798:
	lw	fa3, 0(a0)
	fmul	fa0, fa3, fa0
	lw	fa3, 1(a0)
	fmul	fa1, fa3, fa1
	fadd	fa0, fa0, fa1
	lw	fa1, 2(a0)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	ret
vecaccum.2803:
	lw	fa1, 0(a0)
	lw	fa2, 0(a1)
	fmul	fa2, fa0, fa2
	fadd	fa1, fa1, fa2
	sw	fa1, 0(a0)
	lw	fa1, 1(a0)
	lw	fa2, 1(a1)
	fmul	fa2, fa0, fa2
	fadd	fa1, fa1, fa2
	sw	fa1, 1(a0)
	lw	fa1, 2(a0)
	lw	fa2, 2(a1)
	fmul	fa0, fa0, fa2
	fadd	fa0, fa1, fa0
	sw	fa0, 2(a0)
	ret
vecadd.2807:
	lw	fa0, 0(a0)
	lw	fa1, 0(a1)
	fadd	fa0, fa0, fa1
	sw	fa0, 0(a0)
	lw	fa0, 1(a0)
	lw	fa1, 1(a1)
	fadd	fa0, fa0, fa1
	sw	fa0, 1(a0)
	lw	fa0, 2(a0)
	lw	fa1, 2(a1)
	fadd	fa0, fa0, fa1
	sw	fa0, 2(a0)
	ret
vecscale.2810:
	lw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	sw	fa1, 0(a0)
	lw	fa1, 1(a0)
	fmul	fa1, fa1, fa0
	sw	fa1, 1(a0)
	lw	fa1, 2(a0)
	fmul	fa0, fa1, fa0
	sw	fa0, 2(a0)
	ret
vecaccumv.2813:
	lw	fa0, 0(a0)
	lw	fa1, 0(a1)
	lw	fa2, 0(a2)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	sw	fa0, 0(a0)
	lw	fa0, 1(a0)
	lw	fa1, 1(a1)
	lw	fa2, 1(a2)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	sw	fa0, 1(a0)
	lw	fa0, 2(a0)
	lw	fa1, 2(a1)
	lw	fa2, 2(a2)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	sw	fa0, 2(a0)
	ret
read_screen_settings.2890:
	la	a0, min_caml_screen
	sw	a0, 0(s10)
	in32	fa0
	lw	a0, 0(s10)
	sw	fa0, 0(a0)
	in32	fa0
	lw	a0, 0(s10)
	sw	fa0, 1(a0)
	in32	fa0
	lw	a0, 0(s10)
	sw	fa0, 2(a0)
	in32	fa0
	lui	fa1, 248048
	addi	fa1, fa1, -1483
	fmul	fa0, fa0, fa1
	sw	fa1, 1(s10)
	sw	fa0, 2(s10)
	sw	ra, 3(s10)
	addi	s10, s10, 4
	jal	cos.2738
	addi	s10, s10, -4
	lw	ra, 3(s10)
	lw	fa1, 2(s10)
	sw	fa0, 3(s10)
	mv	fa0, fa1
	sw	ra, 4(s10)
	addi	s10, s10, 5
	jal	sin.2736
	addi	s10, s10, -5
	lw	ra, 4(s10)
	sw	fa0, 4(s10)
	in32	fa0
	lw	fa1, 1(s10)
	fmul	fa0, fa0, fa1
	sw	fa0, 5(s10)
	sw	ra, 6(s10)
	addi	s10, s10, 7
	jal	cos.2738
	addi	s10, s10, -7
	lw	ra, 6(s10)
	lw	fa1, 5(s10)
	sw	fa0, 6(s10)
	mv	fa0, fa1
	sw	ra, 7(s10)
	addi	s10, s10, 8
	jal	sin.2736
	addi	s10, s10, -8
	lw	ra, 7(s10)
	la	a0, min_caml_screenz_dir
	lw	fa1, 3(s10)
	fmul	fa2, fa1, fa0
	lui	fa3, 275584
	fmul	fa2, fa2, fa3
	sw	fa2, 0(a0)
	lui	fa2, 799872
	lw	fa4, 4(s10)
	fmul	fa2, fa4, fa2
	sw	fa2, 1(a0)
	lw	fa2, 6(s10)
	fmul	fa5, fa1, fa2
	fmul	fa3, fa5, fa3
	sw	fa3, 2(a0)
	la	a1, min_caml_screenx_dir
	sw	fa2, 0(a1)
	mv	fa3, zero
	sw	fa3, 1(a1)
	fsub	fa5, fa3, fa0
	sw	fa5, 2(a1)
	la	a1, min_caml_screeny_dir
	fsub	fa4, fa3, fa4
	fmul	fa0, fa4, fa0
	sw	fa0, 0(a1)
	fsub	fa0, fa3, fa1
	sw	fa0, 1(a1)
	fmul	fa0, fa4, fa2
	sw	fa0, 2(a1)
	la	a1, min_caml_viewpoint
	lw	a2, 0(s10)
	lw	fa0, 0(a2)
	lw	fa1, 0(a0)
	fsub	fa0, fa0, fa1
	sw	fa0, 0(a1)
	lw	fa0, 1(a2)
	lw	fa1, 1(a0)
	fsub	fa0, fa0, fa1
	sw	fa0, 1(a1)
	lw	fa0, 2(a2)
	lw	fa1, 2(a0)
	fsub	fa0, fa0, fa1
	sw	fa0, 2(a1)
	ret
read_light.2892:
	in32	a0
	in32	fa0
	lui	fa1, 248048
	addi	fa1, fa1, -1483
	fmul	fa0, fa0, fa1
	sw	fa0, 0(s10)
	sw	fa1, 1(s10)
	sw	ra, 2(s10)
	addi	s10, s10, 3
	jal	sin.2736
	addi	s10, s10, -3
	lw	ra, 2(s10)
	la	a0, min_caml_light
	mv	fa1, zero
	fsub	fa0, fa1, fa0
	sw	fa0, 1(a0)
	sw	a0, 2(s10)
	in32	fa0
	lw	fa1, 1(s10)
	fmul	fa0, fa0, fa1
	lw	fa1, 0(s10)
	sw	fa0, 3(s10)
	mv	fa0, fa1
	sw	ra, 4(s10)
	addi	s10, s10, 5
	jal	cos.2738
	addi	s10, s10, -5
	lw	ra, 4(s10)
	lw	fa1, 3(s10)
	sw	fa0, 4(s10)
	mv	fa0, fa1
	sw	ra, 5(s10)
	addi	s10, s10, 6
	jal	sin.2736
	addi	s10, s10, -6
	lw	ra, 5(s10)
	lw	fa1, 4(s10)
	fmul	fa0, fa1, fa0
	lw	a0, 2(s10)
	sw	fa0, 0(a0)
	lw	fa0, 3(s10)
	sw	ra, 5(s10)
	addi	s10, s10, 6
	jal	cos.2738
	addi	s10, s10, -6
	lw	ra, 5(s10)
	lw	fa1, 4(s10)
	fmul	fa0, fa1, fa0
	lw	a0, 2(s10)
	sw	fa0, 2(a0)
	la	a0, min_caml_beam
	sw	a0, 5(s10)
	in32	fa0
	lw	a0, 5(s10)
	sw	fa0, 0(a0)
	ret
rotate_quadratic_matrix.2894:
	lw	fa0, 0(a1)
	sw	a0, 0(s10)
	sw	a1, 1(s10)
	sw	ra, 2(s10)
	addi	s10, s10, 3
	jal	cos.2738
	addi	s10, s10, -3
	lw	ra, 2(s10)
	lw	a0, 1(s10)
	lw	fa1, 0(a0)
	sw	fa0, 2(s10)
	mv	fa0, fa1
	sw	ra, 3(s10)
	addi	s10, s10, 4
	jal	sin.2736
	addi	s10, s10, -4
	lw	ra, 3(s10)
	lw	a0, 1(s10)
	lw	fa1, 1(a0)
	sw	fa0, 3(s10)
	mv	fa0, fa1
	sw	ra, 4(s10)
	addi	s10, s10, 5
	jal	cos.2738
	addi	s10, s10, -5
	lw	ra, 4(s10)
	lw	a0, 1(s10)
	lw	fa1, 1(a0)
	sw	fa0, 4(s10)
	mv	fa0, fa1
	sw	ra, 5(s10)
	addi	s10, s10, 6
	jal	sin.2736
	addi	s10, s10, -6
	lw	ra, 5(s10)
	lw	a0, 1(s10)
	lw	fa1, 2(a0)
	sw	fa0, 5(s10)
	mv	fa0, fa1
	sw	ra, 6(s10)
	addi	s10, s10, 7
	jal	cos.2738
	addi	s10, s10, -7
	lw	ra, 6(s10)
	lw	a0, 1(s10)
	lw	fa1, 2(a0)
	sw	fa0, 6(s10)
	mv	fa0, fa1
	sw	ra, 7(s10)
	addi	s10, s10, 8
	jal	sin.2736
	addi	s10, s10, -8
	lw	ra, 7(s10)
	lw	fa1, 6(s10)
	lw	fa2, 4(s10)
	fmul	fa3, fa2, fa1
	lw	fa4, 5(s10)
	lw	fa5, 3(s10)
	fmul	fa6, fa5, fa4
	fmul	fa7, fa6, fa1
	lw	ft0, 2(s10)
	fmul	ft1, ft0, fa0
	fsub	fa7, fa7, ft1
	fmul	ft1, ft0, fa4
	fmul	ft2, ft1, fa1
	fmul	ft3, fa5, fa0
	fadd	ft2, ft2, ft3
	fmul	ft3, fa2, fa0
	fmul	fa6, fa6, fa0
	fmul	ft4, ft0, fa1
	fadd	fa6, fa6, ft4
	fmul	fa0, ft1, fa0
	fmul	fa1, fa5, fa1
	fsub	fa0, fa0, fa1
	mv	fa1, zero
	fsub	fa1, fa1, fa4
	fmul	fa4, fa5, fa2
	fmul	fa2, ft0, fa2
	lw	a0, 0(s10)
	lw	fa5, 0(a0)
	lw	ft0, 1(a0)
	lw	ft1, 2(a0)
	fmul	ft4, fa3, fa3
	fmul	ft4, fa5, ft4
	fmul	ft5, ft3, ft3
	fmul	ft5, ft0, ft5
	fadd	ft4, ft4, ft5
	fmul	ft5, fa1, fa1
	fmul	ft5, ft1, ft5
	fadd	ft4, ft4, ft5
	sw	ft4, 0(a0)
	fmul	ft4, fa7, fa7
	fmul	ft4, fa5, ft4
	fmul	ft5, fa6, fa6
	fmul	ft5, ft0, ft5
	fadd	ft4, ft4, ft5
	fmul	ft5, fa4, fa4
	fmul	ft5, ft1, ft5
	fadd	ft4, ft4, ft5
	sw	ft4, 1(a0)
	fmul	ft4, ft2, ft2
	fmul	ft4, fa5, ft4
	fmul	ft5, fa0, fa0
	fmul	ft5, ft0, ft5
	fadd	ft4, ft4, ft5
	fmul	ft5, fa2, fa2
	fmul	ft5, ft1, ft5
	fadd	ft4, ft4, ft5
	sw	ft4, 2(a0)
	lui	ft4, 262144
	fmul	ft5, fa5, fa7
	fmul	ft5, ft5, ft2
	sw	fa6, 7(s10)
	fmul	fa6, ft0, fa6
	fmul	fa6, fa6, fa0
	fadd	fa6, ft5, fa6
	fmul	ft5, ft1, fa4
	fmul	ft5, ft5, fa2
	fadd	fa6, fa6, ft5
	fmul	fa6, ft4, fa6
	lw	a0, 1(s10)
	sw	fa6, 0(a0)
	fmul	fa3, fa5, fa3
	fmul	fa5, fa3, ft2
	fmul	fa6, ft0, ft3
	fmul	fa0, fa6, fa0
	fadd	fa0, fa5, fa0
	fmul	fa1, ft1, fa1
	fmul	fa2, fa1, fa2
	fadd	fa0, fa0, fa2
	fmul	fa0, ft4, fa0
	sw	fa0, 1(a0)
	fmul	fa0, fa3, fa7
	lw	fa2, 7(s10)
	fmul	fa2, fa6, fa2
	fadd	fa0, fa0, fa2
	fmul	fa1, fa1, fa4
	fadd	fa0, fa0, fa1
	fmul	fa0, ft4, fa0
	sw	fa0, 2(a0)
	ret
read_nth_object.2897:
	sw	a0, 0(s10)
	in32	a0
	li	t5, -1
	bne	a0, t5, beq_else.9864
	mv	a0, zero
	ret
beq_else.9864:
	sw	a0, 1(s10)
	in32	a0
	sw	a0, 2(s10)
	in32	a0
	sw	a0, 3(s10)
	in32	a0
	li	a1, 3
	mv	fa0, zero
	sw	a0, 4(s10)
	sw	fa0, 5(s10)
	sw	a1, 6(s10)
	mv	a0, a1
	sw	ra, 7(s10)
	addi	s10, s10, 8
	jal	min_caml_create_float_array
	addi	s10, s10, -8
	lw	ra, 7(s10)
	sw	a0, 7(s10)
	in32	fa0
	lw	a0, 7(s10)
	sw	fa0, 0(a0)
	in32	fa0
	lw	a0, 7(s10)
	sw	fa0, 1(a0)
	li	a1, 2
	sw	a1, 8(s10)
	in32	fa0
	lw	a0, 7(s10)
	sw	fa0, 2(a0)
	lw	fa0, 5(s10)
	lw	a1, 6(s10)
	mv	a0, a1
	sw	ra, 9(s10)
	addi	s10, s10, 10
	jal	min_caml_create_float_array
	addi	s10, s10, -10
	lw	ra, 9(s10)
	sw	a0, 9(s10)
	in32	fa0
	lw	a0, 9(s10)
	sw	fa0, 0(a0)
	in32	fa0
	lw	a0, 9(s10)
	sw	fa0, 1(a0)
	in32	fa0
	lw	a0, 9(s10)
	sw	fa0, 2(a0)
	in32	fa0
	lw	fa1, 5(s10)
	fle	t5, fa1, fa0
	bne	t5, zero, beq_else.9865
	li	a0, 1
	j	beq_cont.9866
beq_else.9865:
	mv	a0, zero
beq_cont.9866:
	lw	a1, 8(s10)
	sw	a0, 10(s10)
	mv	a0, a1
	mv	fa0, fa1
	sw	ra, 11(s10)
	addi	s10, s10, 12
	jal	min_caml_create_float_array
	addi	s10, s10, -12
	lw	ra, 11(s10)
	sw	a0, 11(s10)
	in32	fa0
	lw	a0, 11(s10)
	sw	fa0, 0(a0)
	in32	fa0
	lw	a0, 11(s10)
	sw	fa0, 1(a0)
	lw	fa0, 5(s10)
	lw	a1, 6(s10)
	mv	a0, a1
	sw	ra, 12(s10)
	addi	s10, s10, 13
	jal	min_caml_create_float_array
	addi	s10, s10, -13
	lw	ra, 12(s10)
	sw	a0, 12(s10)
	in32	fa0
	lw	a0, 12(s10)
	sw	fa0, 0(a0)
	in32	fa0
	lw	a0, 12(s10)
	sw	fa0, 1(a0)
	in32	fa0
	lw	a0, 12(s10)
	sw	fa0, 2(a0)
	lw	fa0, 5(s10)
	lw	a1, 6(s10)
	mv	a0, a1
	sw	ra, 13(s10)
	addi	s10, s10, 14
	jal	min_caml_create_float_array
	addi	s10, s10, -14
	lw	ra, 13(s10)
	lw	a1, 4(s10)
	mv	t5, zero
	bne	a1, t5, beq_else.9867
	j	beq_cont.9868
beq_else.9867:
	sw	a0, 13(s10)
	in32	fa0
	lui	fa1, 248048
	addi	fa1, fa1, -1483
	fmul	fa0, fa0, fa1
	lw	a0, 13(s10)
	sw	fa0, 0(a0)
	sw	fa1, 14(s10)
	in32	fa0
	lw	fa1, 14(s10)
	fmul	fa0, fa0, fa1
	lw	a0, 13(s10)
	sw	fa0, 1(a0)
	in32	fa0
	lw	fa1, 14(s10)
	fmul	fa0, fa0, fa1
	lw	a0, 13(s10)
	sw	fa0, 2(a0)
beq_cont.9868:
	lw	a1, 2(s10)
	li	t5, 2
	bne	a1, t5, beq_else.9869
	li	a2, 1
	j	beq_cont.9870
beq_else.9869:
	lw	a2, 10(s10)
beq_cont.9870:
	li	a3, 4
	lw	fa0, 5(s10)
	sw	a2, 15(s10)
	sw	a0, 13(s10)
	mv	a0, a3
	sw	ra, 16(s10)
	addi	s10, s10, 17
	jal	min_caml_create_float_array
	addi	s10, s10, -17
	lw	ra, 16(s10)
	mv	a1, s11
	addi	s11, s11, 11
	sw	a0, 10(a1)
	lw	a0, 13(s10)
	sw	a0, 9(a1)
	lw	a2, 12(s10)
	sw	a2, 8(a1)
	lw	a2, 11(s10)
	sw	a2, 7(a1)
	lw	a2, 15(s10)
	sw	a2, 6(a1)
	lw	a2, 9(s10)
	sw	a2, 5(a1)
	lw	a2, 7(s10)
	sw	a2, 4(a1)
	lw	a3, 4(s10)
	sw	a3, 3(a1)
	lw	a4, 3(s10)
	sw	a4, 2(a1)
	lw	a4, 2(s10)
	sw	a4, 1(a1)
	lw	a5, 1(s10)
	sw	a5, 0(a1)
	la	a5, min_caml_objects
	lw	a6, 0(s10)
	add	t5, a5, a6
	sw	a1, 0(t5)
	li	t5, 3
	bne	a4, t5, beq_else.9871
	lw	fa0, 0(a2)
	lw	fa1, 5(s10)
	feq	t5, fa0, fa1
	bne	t5, zero, beq_else.9873
	mv	a1, zero
	j	beq_cont.9874
beq_else.9873:
	li	a1, 1
beq_cont.9874:
	mv	t5, zero
	bne	a1, t5, beq_else.9875
	sw	fa0, 16(s10)
	sw	ra, 17(s10)
	addi	s10, s10, 18
	jal	sgn.2771
	addi	s10, s10, -18
	lw	ra, 17(s10)
	lw	fa1, 16(s10)
	fmul	fa1, fa1, fa1
	fdiv	fa0, fa0, fa1
	j	beq_cont.9876
beq_else.9875:
	mv	fa0, zero
beq_cont.9876:
	lw	a0, 7(s10)
	sw	fa0, 0(a0)
	lw	fa0, 1(a0)
	lw	fa1, 5(s10)
	feq	t5, fa0, fa1
	bne	t5, zero, beq_else.9877
	mv	a1, zero
	j	beq_cont.9878
beq_else.9877:
	li	a1, 1
beq_cont.9878:
	mv	t5, zero
	bne	a1, t5, beq_else.9879
	sw	fa0, 17(s10)
	sw	ra, 18(s10)
	addi	s10, s10, 19
	jal	sgn.2771
	addi	s10, s10, -19
	lw	ra, 18(s10)
	lw	fa1, 17(s10)
	fmul	fa1, fa1, fa1
	fdiv	fa0, fa0, fa1
	j	beq_cont.9880
beq_else.9879:
	mv	fa0, zero
beq_cont.9880:
	lw	a0, 7(s10)
	sw	fa0, 1(a0)
	lw	fa0, 2(a0)
	lw	fa1, 5(s10)
	feq	t5, fa0, fa1
	bne	t5, zero, beq_else.9881
	mv	a1, zero
	j	beq_cont.9882
beq_else.9881:
	li	a1, 1
beq_cont.9882:
	mv	t5, zero
	bne	a1, t5, beq_else.9883
	sw	fa0, 18(s10)
	sw	ra, 19(s10)
	addi	s10, s10, 20
	jal	sgn.2771
	addi	s10, s10, -20
	lw	ra, 19(s10)
	lw	fa1, 18(s10)
	fmul	fa1, fa1, fa1
	fdiv	fa0, fa0, fa1
	j	beq_cont.9884
beq_else.9883:
	mv	fa0, zero
beq_cont.9884:
	lw	a0, 7(s10)
	sw	fa0, 2(a0)
	j	beq_cont.9872
beq_else.9871:
	li	t5, 2
	bne	a4, t5, beq_else.9885
	lw	a1, 10(s10)
	mv	t5, zero
	bne	a1, t5, beq_else.9887
	li	a1, 1
	j	beq_cont.9888
beq_else.9887:
	mv	a1, zero
beq_cont.9888:
	mv	a0, a2
	sw	ra, 19(s10)
	addi	s10, s10, 20
	jal	vecunit_sgn.2792
	addi	s10, s10, -20
	lw	ra, 19(s10)
	j	beq_cont.9886
beq_else.9885:
beq_cont.9886:
beq_cont.9872:
	lw	a0, 4(s10)
	mv	t5, zero
	bne	a0, t5, beq_else.9889
	j	beq_cont.9890
beq_else.9889:
	lw	a0, 7(s10)
	lw	a1, 13(s10)
	sw	ra, 19(s10)
	addi	s10, s10, 20
	jal	rotate_quadratic_matrix.2894
	addi	s10, s10, -20
	lw	ra, 19(s10)
beq_cont.9890:
	li	a0, 1
	ret
read_object.2899:
	li	t5, 60
	blt	a0, t5, bge_else.9891
	ret
bge_else.9891:
	sw	a0, 0(s10)
	sw	ra, 1(s10)
	addi	s10, s10, 2
	jal	read_nth_object.2897
	addi	s10, s10, -2
	lw	ra, 1(s10)
	mv	t5, zero
	bne	a0, t5, beq_else.9893
	la	a0, min_caml_n_objects
	lw	fa0, 0(s10)
	sw	fa0, 0(a0)
	ret
beq_else.9893:
	lw	a0, 0(s10)
	addi	a0, a0, 1
	j	read_object.2899
read_net_item.2903:
	sw	a0, 0(s10)
	in32	a0
	li	a1, -1
	li	t5, -1
	bne	a0, t5, beq_else.9895
	lw	a0, 0(s10)
	addi	a0, a0, 1
	j	min_caml_create_array
beq_else.9895:
	lw	a1, 0(s10)
	addi	a2, a1, 1
	sw	a0, 1(s10)
	mv	a0, a2
	sw	ra, 2(s10)
	addi	s10, s10, 3
	jal	read_net_item.2903
	addi	s10, s10, -3
	lw	ra, 2(s10)
	lw	a1, 0(s10)
	lw	fa0, 1(s10)
	add	t5, a0, a1
	sw	fa0, 0(t5)
	ret
read_or_network.2905:
	mv	a1, zero
	sw	a0, 0(s10)
	mv	a0, a1
	sw	ra, 1(s10)
	addi	s10, s10, 2
	jal	read_net_item.2903
	addi	s10, s10, -2
	lw	ra, 1(s10)
	mv	a1, a0
	lw	a0, 0(a1)
	li	t5, -1
	bne	a0, t5, beq_else.9896
	lw	a0, 0(s10)
	addi	a0, a0, 1
	j	min_caml_create_array
beq_else.9896:
	lw	a0, 0(s10)
	addi	a2, a0, 1
	sw	a1, 1(s10)
	mv	a0, a2
	sw	ra, 2(s10)
	addi	s10, s10, 3
	jal	read_or_network.2905
	addi	s10, s10, -3
	lw	ra, 2(s10)
	lw	a1, 0(s10)
	lw	fa0, 1(s10)
	add	t5, a0, a1
	sw	fa0, 0(t5)
	ret
read_and_network.2907:
	mv	a1, zero
	sw	a0, 0(s10)
	mv	a0, a1
	sw	ra, 1(s10)
	addi	s10, s10, 2
	jal	read_net_item.2903
	addi	s10, s10, -2
	lw	ra, 1(s10)
	lw	a1, 0(a0)
	li	t5, -1
	bne	a1, t5, beq_else.9897
	ret
beq_else.9897:
	la	a1, min_caml_and_net
	lw	a2, 0(s10)
	add	t5, a1, a2
	sw	a0, 0(t5)
	addi	a0, a2, 1
	j	read_and_network.2907
read_parameter.2909:
	sw	ra, 0(s10)
	addi	s10, s10, 1
	jal	read_screen_settings.2890
	addi	s10, s10, -1
	lw	ra, 0(s10)
	sw	ra, 0(s10)
	addi	s10, s10, 1
	jal	read_light.2892
	addi	s10, s10, -1
	lw	ra, 0(s10)
	mv	a0, zero
	sw	a0, 0(s10)
	sw	ra, 1(s10)
	addi	s10, s10, 2
	jal	read_object.2899
	addi	s10, s10, -2
	lw	ra, 1(s10)
	lw	a0, 0(s10)
	sw	ra, 1(s10)
	addi	s10, s10, 2
	jal	read_and_network.2907
	addi	s10, s10, -2
	lw	ra, 1(s10)
	la	a0, min_caml_or_net
	lw	a1, 0(s10)
	sw	a0, 1(s10)
	mv	a0, a1
	sw	ra, 2(s10)
	addi	s10, s10, 3
	jal	read_or_network.2905
	addi	s10, s10, -3
	lw	ra, 2(s10)
	lw	a1, 1(s10)
	sw	a0, 0(a1)
	ret
solver_rect_surface.2911:
	add	t5, a1, a2
	lw	fa3, 0(t5)
	mv	fa4, zero
	feq	t5, fa3, fa4
	bne	t5, zero, beq_else.9900
	mv	a5, zero
	j	beq_cont.9901
beq_else.9900:
	li	a5, 1
beq_cont.9901:
	mv	t5, zero
	bne	a5, t5, beq_else.9902
	lw	a5, 4(a0)
	lw	a0, 6(a0)
	add	t5, a1, a2
	lw	fa3, 0(t5)
	fle	t5, fa4, fa3
	bne	t5, zero, beq_else.9903
	li	a6, 1
	j	beq_cont.9904
beq_else.9903:
	mv	a6, zero
beq_cont.9904:
	mv	t5, zero
	bne	a0, t5, beq_else.9905
	mv	a0, a6
	j	beq_cont.9906
beq_else.9905:
	mv	t5, zero
	bne	a6, t5, beq_else.9907
	li	a0, 1
	j	beq_cont.9908
beq_else.9907:
	mv	a0, zero
beq_cont.9908:
beq_cont.9906:
	add	t5, a5, a2
	lw	fa3, 0(t5)
	mv	t5, zero
	bne	a0, t5, beq_else.9909
	fsub	fa3, fa4, fa3
	j	beq_cont.9910
beq_else.9909:
beq_cont.9910:
	fsub	fa0, fa3, fa0
	add	t5, a1, a2
	lw	fa3, 0(t5)
	fdiv	fa0, fa0, fa3
	add	t5, a1, a3
	lw	fa3, 0(t5)
	fmul	fa3, fa0, fa3
	fadd	fa1, fa3, fa1
	fle	t5, fa1, fa4
	bne	t5, zero, beq_else.9911
	li	a0, 1
	j	beq_cont.9912
beq_else.9911:
	mv	a0, zero
beq_cont.9912:
	mv	t5, zero
	bne	a0, t5, beq_else.9913
	fsub	fa1, fa4, fa1
	j	beq_cont.9914
beq_else.9913:
beq_cont.9914:
	add	t5, a5, a3
	lw	fa3, 0(t5)
	fle	t5, fa3, fa1
	bne	t5, zero, beq_else.9915
	li	a0, 1
	j	beq_cont.9916
beq_else.9915:
	mv	a0, zero
beq_cont.9916:
	mv	t5, zero
	bne	a0, t5, beq_else.9917
	mv	a0, zero
	ret
beq_else.9917:
	add	t5, a1, a4
	lw	fa1, 0(t5)
	fmul	fa1, fa0, fa1
	fadd	fa1, fa1, fa2
	fle	t5, fa1, fa4
	bne	t5, zero, beq_else.9918
	li	a0, 1
	j	beq_cont.9919
beq_else.9918:
	mv	a0, zero
beq_cont.9919:
	mv	t5, zero
	bne	a0, t5, beq_else.9920
	fsub	fa1, fa4, fa1
	j	beq_cont.9921
beq_else.9920:
beq_cont.9921:
	add	t5, a5, a4
	lw	fa2, 0(t5)
	fle	t5, fa2, fa1
	bne	t5, zero, beq_else.9922
	li	a0, 1
	j	beq_cont.9923
beq_else.9922:
	mv	a0, zero
beq_cont.9923:
	mv	t5, zero
	bne	a0, t5, beq_else.9924
	mv	a0, zero
	ret
beq_else.9924:
	la	a0, min_caml_solver_dist
	sw	fa0, 0(a0)
	li	a0, 1
	ret
beq_else.9902:
	mv	a0, zero
	ret
solver_rect.2920:
	mv	a2, zero
	li	a3, 1
	li	a4, 2
	sw	fa0, 0(s10)
	sw	fa2, 1(s10)
	sw	fa1, 2(s10)
	sw	a2, 3(s10)
	sw	a4, 4(s10)
	sw	a3, 5(s10)
	sw	a1, 6(s10)
	sw	a0, 7(s10)
	sw	ra, 8(s10)
	addi	s10, s10, 9
	jal	solver_rect_surface.2911
	addi	s10, s10, -9
	lw	ra, 8(s10)
	mv	t5, zero
	bne	a0, t5, beq_else.9925
	lw	fa0, 2(s10)
	lw	fa1, 1(s10)
	lw	fa2, 0(s10)
	lw	a0, 7(s10)
	lw	a1, 6(s10)
	lw	a2, 5(s10)
	lw	a3, 4(s10)
	lw	a4, 3(s10)
	sw	ra, 8(s10)
	addi	s10, s10, 9
	jal	solver_rect_surface.2911
	addi	s10, s10, -9
	lw	ra, 8(s10)
	mv	t5, zero
	bne	a0, t5, beq_else.9926
	lw	fa0, 1(s10)
	lw	fa1, 0(s10)
	lw	fa2, 2(s10)
	lw	a0, 7(s10)
	lw	a1, 6(s10)
	lw	a2, 4(s10)
	lw	a3, 3(s10)
	lw	a4, 5(s10)
	sw	ra, 8(s10)
	addi	s10, s10, 9
	jal	solver_rect_surface.2911
	addi	s10, s10, -9
	lw	ra, 8(s10)
	mv	t5, zero
	bne	a0, t5, beq_else.9927
	mv	a0, zero
	ret
beq_else.9927:
	li	a0, 3
	ret
beq_else.9926:
	li	a0, 2
	ret
beq_else.9925:
	li	a0, 1
	ret
solver_surface.2926:
	lw	a0, 4(a0)
	sw	fa2, 0(s10)
	sw	fa1, 1(s10)
	sw	fa0, 2(s10)
	sw	a0, 3(s10)
	mv	t3, a1
	mv	a1, a0
	mv	a0, t3
	sw	ra, 4(s10)
	addi	s10, s10, 5
	jal	veciprod.2795
	addi	s10, s10, -5
	lw	ra, 4(s10)
	mv	fa1, zero
	fle	t5, fa0, fa1
	bne	t5, zero, beq_else.9928
	li	a0, 1
	j	beq_cont.9929
beq_else.9928:
	mv	a0, zero
beq_cont.9929:
	mv	t5, zero
	bne	a0, t5, beq_else.9930
	mv	a0, zero
	ret
beq_else.9930:
	la	a0, min_caml_solver_dist
	lw	fa2, 2(s10)
	lw	fa3, 1(s10)
	lw	fa4, 0(s10)
	lw	a1, 3(s10)
	sw	a0, 4(s10)
	sw	fa0, 5(s10)
	sw	fa1, 6(s10)
	mv	a0, a1
	mv	fa1, fa3
	mv	fa0, fa2
	mv	fa2, fa4
	sw	ra, 7(s10)
	addi	s10, s10, 8
	jal	veciprod2.2798
	addi	s10, s10, -8
	lw	ra, 7(s10)
	lw	fa1, 6(s10)
	fsub	fa0, fa1, fa0
	lw	fa1, 5(s10)
	fdiv	fa0, fa0, fa1
	lw	a0, 4(s10)
	sw	fa0, 0(a0)
	li	a0, 1
	ret
quadratic.2932:
	fmul	fa3, fa0, fa0
	lw	a1, 4(a0)
	lw	fa4, 0(a1)
	fmul	fa3, fa3, fa4
	fmul	fa4, fa1, fa1
	lw	a1, 4(a0)
	lw	fa5, 1(a1)
	fmul	fa4, fa4, fa5
	fadd	fa3, fa3, fa4
	fmul	fa4, fa2, fa2
	lw	a1, 4(a0)
	lw	fa5, 2(a1)
	fmul	fa4, fa4, fa5
	fadd	fa3, fa3, fa4
	lw	a1, 3(a0)
	mv	t5, zero
	bne	a1, t5, beq_else.9931
	mv	fa0, fa3
	ret
beq_else.9931:
	fmul	fa4, fa1, fa2
	lw	a1, 9(a0)
	lw	fa5, 0(a1)
	fmul	fa4, fa4, fa5
	fadd	fa3, fa3, fa4
	fmul	fa2, fa2, fa0
	lw	a1, 9(a0)
	lw	fa4, 1(a1)
	fmul	fa2, fa2, fa4
	fadd	fa2, fa3, fa2
	fmul	fa0, fa0, fa1
	lw	a0, 9(a0)
	lw	fa1, 2(a0)
	fmul	fa0, fa0, fa1
	fadd	fa0, fa2, fa0
	ret
bilinear.2937:
	fmul	fa6, fa0, fa3
	lw	a1, 4(a0)
	lw	fa7, 0(a1)
	fmul	fa6, fa6, fa7
	fmul	fa7, fa1, fa4
	lw	a1, 4(a0)
	lw	ft0, 1(a1)
	fmul	fa7, fa7, ft0
	fadd	fa6, fa6, fa7
	fmul	fa7, fa2, fa5
	lw	a1, 4(a0)
	lw	ft0, 2(a1)
	fmul	fa7, fa7, ft0
	fadd	fa6, fa6, fa7
	lw	a1, 3(a0)
	mv	t5, zero
	bne	a1, t5, beq_else.9932
	mv	fa0, fa6
	ret
beq_else.9932:
	fmul	fa7, fa2, fa4
	fmul	ft0, fa1, fa5
	fadd	fa7, fa7, ft0
	lw	a1, 9(a0)
	lw	ft0, 0(a1)
	fmul	fa7, fa7, ft0
	fmul	fa5, fa0, fa5
	fmul	fa2, fa2, fa3
	fadd	fa2, fa5, fa2
	lw	a1, 9(a0)
	lw	fa5, 1(a1)
	fmul	fa2, fa2, fa5
	fadd	fa2, fa7, fa2
	fmul	fa0, fa0, fa4
	fmul	fa1, fa1, fa3
	fadd	fa0, fa0, fa1
	lw	a0, 9(a0)
	lw	fa1, 2(a0)
	fmul	fa0, fa0, fa1
	fadd	fa0, fa2, fa0
	lui	fa1, 258048
	fmul	fa0, fa0, fa1
	fadd	fa0, fa6, fa0
	ret
solver_second.2945:
	lw	fa3, 0(a1)
	lw	fa4, 1(a1)
	lw	fa5, 2(a1)
	sw	fa2, 0(s10)
	sw	fa1, 1(s10)
	sw	fa0, 2(s10)
	sw	a0, 3(s10)
	sw	a1, 4(s10)
	mv	fa2, fa5
	mv	fa1, fa4
	mv	fa0, fa3
	sw	ra, 5(s10)
	addi	s10, s10, 6
	jal	quadratic.2932
	addi	s10, s10, -6
	lw	ra, 5(s10)
	mv	fa1, zero
	feq	t5, fa0, fa1
	bne	t5, zero, beq_else.9933
	mv	a0, zero
	j	beq_cont.9934
beq_else.9933:
	li	a0, 1
beq_cont.9934:
	mv	t5, zero
	bne	a0, t5, beq_else.9935
	lw	a0, 4(s10)
	lw	fa2, 0(a0)
	lw	fa3, 1(a0)
	lw	fa4, 2(a0)
	lw	fa5, 2(s10)
	lw	fa6, 1(s10)
	lw	fa7, 0(s10)
	lw	a0, 3(s10)
	sw	fa1, 5(s10)
	sw	fa0, 6(s10)
	mv	fa1, fa3
	mv	fa0, fa2
	mv	fa3, fa5
	mv	fa2, fa4
	mv	fa5, fa7
	mv	fa4, fa6
	sw	ra, 7(s10)
	addi	s10, s10, 8
	jal	bilinear.2937
	addi	s10, s10, -8
	lw	ra, 7(s10)
	lw	fa1, 2(s10)
	lw	fa2, 1(s10)
	lw	fa3, 0(s10)
	lw	a0, 3(s10)
	sw	fa0, 7(s10)
	mv	fa0, fa1
	mv	fa1, fa2
	mv	fa2, fa3
	sw	ra, 8(s10)
	addi	s10, s10, 9
	jal	quadratic.2932
	addi	s10, s10, -9
	lw	ra, 8(s10)
	lw	a0, 3(s10)
	lw	a1, 1(a0)
	li	t5, 3
	bne	a1, t5, beq_else.9936
	lui	fa1, 260096
	fsub	fa0, fa0, fa1
	j	beq_cont.9937
beq_else.9936:
beq_cont.9937:
	lw	fa1, 7(s10)
	fmul	fa2, fa1, fa1
	lw	fa3, 6(s10)
	fmul	fa0, fa3, fa0
	fsub	fa0, fa2, fa0
	lw	fa2, 5(s10)
	fle	t5, fa0, fa2
	bne	t5, zero, beq_else.9938
	li	a1, 1
	j	beq_cont.9939
beq_else.9938:
	mv	a1, zero
beq_cont.9939:
	mv	t5, zero
	bne	a1, t5, beq_else.9940
	mv	a0, zero
	ret
beq_else.9940:
	fsqrt	fa0, fa0
	lw	a0, 3(s10)
	lw	a0, 6(a0)
	mv	t5, zero
	bne	a0, t5, beq_else.9941
	lw	fa1, 5(s10)
	fsub	fa0, fa1, fa0
	j	beq_cont.9942
beq_else.9941:
beq_cont.9942:
	la	a0, min_caml_solver_dist
	lw	fa1, 7(s10)
	fsub	fa0, fa0, fa1
	lw	fa1, 6(s10)
	fdiv	fa0, fa0, fa1
	sw	fa0, 0(a0)
	li	a0, 1
	ret
beq_else.9935:
	mv	a0, zero
	ret
solver.2951:
	la	a3, min_caml_objects
	add	t5, a3, a0
	lw	a0, 0(t5)
	lw	fa0, 0(a2)
	lw	a3, 5(a0)
	lw	fa1, 0(a3)
	fsub	fa0, fa0, fa1
	lw	fa1, 1(a2)
	lw	a3, 5(a0)
	lw	fa2, 1(a3)
	fsub	fa1, fa1, fa2
	lw	fa2, 2(a2)
	lw	a2, 5(a0)
	lw	fa3, 2(a2)
	fsub	fa2, fa2, fa3
	lw	a2, 1(a0)
	li	t5, 1
	bne	a2, t5, beq_else.9943
	j	solver_rect.2920
beq_else.9943:
	li	t5, 2
	bne	a2, t5, beq_else.9944
	j	solver_surface.2926
beq_else.9944:
	j	solver_second.2945
solver_rect_fast.2955:
	lw	fa3, 0(a2)
	fsub	fa3, fa3, fa0
	lw	fa4, 1(a2)
	fmul	fa3, fa3, fa4
	lw	fa4, 1(a1)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa1
	mv	fa5, zero
	fle	t5, fa4, fa5
	bne	t5, zero, beq_else.9945
	li	a3, 1
	j	beq_cont.9946
beq_else.9945:
	mv	a3, zero
beq_cont.9946:
	mv	t5, zero
	bne	a3, t5, beq_else.9947
	fsub	fa4, fa5, fa4
	j	beq_cont.9948
beq_else.9947:
beq_cont.9948:
	lw	a3, 4(a0)
	lw	fa6, 1(a3)
	fle	t5, fa6, fa4
	bne	t5, zero, beq_else.9949
	li	a3, 1
	j	beq_cont.9950
beq_else.9949:
	mv	a3, zero
beq_cont.9950:
	mv	t5, zero
	bne	a3, t5, beq_else.9951
	mv	a3, zero
	j	beq_cont.9952
beq_else.9951:
	lw	fa4, 2(a1)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fle	t5, fa4, fa5
	bne	t5, zero, beq_else.9953
	li	a3, 1
	j	beq_cont.9954
beq_else.9953:
	mv	a3, zero
beq_cont.9954:
	mv	t5, zero
	bne	a3, t5, beq_else.9955
	fsub	fa4, fa5, fa4
	j	beq_cont.9956
beq_else.9955:
beq_cont.9956:
	lw	a3, 4(a0)
	lw	fa6, 2(a3)
	fle	t5, fa6, fa4
	bne	t5, zero, beq_else.9957
	li	a3, 1
	j	beq_cont.9958
beq_else.9957:
	mv	a3, zero
beq_cont.9958:
	mv	t5, zero
	bne	a3, t5, beq_else.9959
	mv	a3, zero
	j	beq_cont.9960
beq_else.9959:
	lw	fa4, 1(a2)
	feq	t5, fa4, fa5
	bne	t5, zero, beq_else.9961
	mv	a3, zero
	j	beq_cont.9962
beq_else.9961:
	li	a3, 1
beq_cont.9962:
	mv	t5, zero
	bne	a3, t5, beq_else.9963
	li	a3, 1
	j	beq_cont.9964
beq_else.9963:
	mv	a3, zero
beq_cont.9964:
beq_cont.9960:
beq_cont.9952:
	mv	t5, zero
	bne	a3, t5, beq_else.9965
	lw	fa3, 2(a2)
	fsub	fa3, fa3, fa1
	lw	fa4, 3(a2)
	fmul	fa3, fa3, fa4
	lw	fa4, 0(a1)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa0
	fle	t5, fa4, fa5
	bne	t5, zero, beq_else.9966
	li	a3, 1
	j	beq_cont.9967
beq_else.9966:
	mv	a3, zero
beq_cont.9967:
	mv	t5, zero
	bne	a3, t5, beq_else.9968
	fsub	fa4, fa5, fa4
	j	beq_cont.9969
beq_else.9968:
beq_cont.9969:
	lw	a3, 4(a0)
	lw	fa6, 0(a3)
	fle	t5, fa6, fa4
	bne	t5, zero, beq_else.9970
	li	a3, 1
	j	beq_cont.9971
beq_else.9970:
	mv	a3, zero
beq_cont.9971:
	mv	t5, zero
	bne	a3, t5, beq_else.9972
	mv	a3, zero
	j	beq_cont.9973
beq_else.9972:
	lw	fa4, 2(a1)
	fmul	fa4, fa3, fa4
	fadd	fa4, fa4, fa2
	fle	t5, fa4, fa5
	bne	t5, zero, beq_else.9974
	li	a3, 1
	j	beq_cont.9975
beq_else.9974:
	mv	a3, zero
beq_cont.9975:
	mv	t5, zero
	bne	a3, t5, beq_else.9976
	fsub	fa4, fa5, fa4
	j	beq_cont.9977
beq_else.9976:
beq_cont.9977:
	lw	a3, 4(a0)
	lw	fa6, 2(a3)
	fle	t5, fa6, fa4
	bne	t5, zero, beq_else.9978
	li	a3, 1
	j	beq_cont.9979
beq_else.9978:
	mv	a3, zero
beq_cont.9979:
	mv	t5, zero
	bne	a3, t5, beq_else.9980
	mv	a3, zero
	j	beq_cont.9981
beq_else.9980:
	lw	fa4, 3(a2)
	feq	t5, fa4, fa5
	bne	t5, zero, beq_else.9982
	mv	a3, zero
	j	beq_cont.9983
beq_else.9982:
	li	a3, 1
beq_cont.9983:
	mv	t5, zero
	bne	a3, t5, beq_else.9984
	li	a3, 1
	j	beq_cont.9985
beq_else.9984:
	mv	a3, zero
beq_cont.9985:
beq_cont.9981:
beq_cont.9973:
	mv	t5, zero
	bne	a3, t5, beq_else.9986
	lw	fa3, 4(a2)
	fsub	fa2, fa3, fa2
	lw	fa3, 5(a2)
	fmul	fa2, fa2, fa3
	lw	fa3, 0(a1)
	fmul	fa3, fa2, fa3
	fadd	fa0, fa3, fa0
	fle	t5, fa0, fa5
	bne	t5, zero, beq_else.9987
	li	a3, 1
	j	beq_cont.9988
beq_else.9987:
	mv	a3, zero
beq_cont.9988:
	mv	t5, zero
	bne	a3, t5, beq_else.9989
	fsub	fa0, fa5, fa0
	j	beq_cont.9990
beq_else.9989:
beq_cont.9990:
	lw	a3, 4(a0)
	lw	fa3, 0(a3)
	fle	t5, fa3, fa0
	bne	t5, zero, beq_else.9991
	li	a3, 1
	j	beq_cont.9992
beq_else.9991:
	mv	a3, zero
beq_cont.9992:
	mv	t5, zero
	bne	a3, t5, beq_else.9993
	mv	a0, zero
	j	beq_cont.9994
beq_else.9993:
	lw	fa0, 1(a1)
	fmul	fa0, fa2, fa0
	fadd	fa0, fa0, fa1
	fle	t5, fa0, fa5
	bne	t5, zero, beq_else.9995
	li	a1, 1
	j	beq_cont.9996
beq_else.9995:
	mv	a1, zero
beq_cont.9996:
	mv	t5, zero
	bne	a1, t5, beq_else.9997
	fsub	fa0, fa5, fa0
	j	beq_cont.9998
beq_else.9997:
beq_cont.9998:
	lw	a0, 4(a0)
	lw	fa1, 1(a0)
	fle	t5, fa1, fa0
	bne	t5, zero, beq_else.9999
	li	a0, 1
	j	beq_cont.10000
beq_else.9999:
	mv	a0, zero
beq_cont.10000:
	mv	t5, zero
	bne	a0, t5, beq_else.10001
	mv	a0, zero
	j	beq_cont.10002
beq_else.10001:
	lw	fa0, 5(a2)
	feq	t5, fa0, fa5
	bne	t5, zero, beq_else.10003
	mv	a0, zero
	j	beq_cont.10004
beq_else.10003:
	li	a0, 1
beq_cont.10004:
	mv	t5, zero
	bne	a0, t5, beq_else.10005
	li	a0, 1
	j	beq_cont.10006
beq_else.10005:
	mv	a0, zero
beq_cont.10006:
beq_cont.10002:
beq_cont.9994:
	mv	t5, zero
	bne	a0, t5, beq_else.10007
	mv	a0, zero
	ret
beq_else.10007:
	la	a0, min_caml_solver_dist
	sw	fa2, 0(a0)
	li	a0, 3
	ret
beq_else.9986:
	la	a0, min_caml_solver_dist
	sw	fa3, 0(a0)
	li	a0, 2
	ret
beq_else.9965:
	la	a0, min_caml_solver_dist
	sw	fa3, 0(a0)
	li	a0, 1
	ret
solver_surface_fast.2962:
	lw	fa3, 0(a1)
	mv	fa4, zero
	fle	t5, fa4, fa3
	bne	t5, zero, beq_else.10008
	li	a0, 1
	j	beq_cont.10009
beq_else.10008:
	mv	a0, zero
beq_cont.10009:
	mv	t5, zero
	bne	a0, t5, beq_else.10010
	mv	a0, zero
	ret
beq_else.10010:
	la	a0, min_caml_solver_dist
	lw	fa3, 1(a1)
	fmul	fa0, fa3, fa0
	lw	fa3, 2(a1)
	fmul	fa1, fa3, fa1
	fadd	fa0, fa0, fa1
	lw	fa1, 3(a1)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	sw	fa0, 0(a0)
	li	a0, 1
	ret
solver_second_fast.2968:
	lw	fa3, 0(a1)
	mv	fa4, zero
	feq	t5, fa3, fa4
	bne	t5, zero, beq_else.10011
	mv	a2, zero
	j	beq_cont.10012
beq_else.10011:
	li	a2, 1
beq_cont.10012:
	mv	t5, zero
	bne	a2, t5, beq_else.10013
	lw	fa5, 1(a1)
	fmul	fa5, fa5, fa0
	lw	fa6, 2(a1)
	fmul	fa6, fa6, fa1
	fadd	fa5, fa5, fa6
	lw	fa6, 3(a1)
	fmul	fa6, fa6, fa2
	fadd	fa5, fa5, fa6
	sw	a1, 0(s10)
	sw	fa4, 1(s10)
	sw	fa3, 2(s10)
	sw	fa5, 3(s10)
	sw	a0, 4(s10)
	sw	ra, 5(s10)
	addi	s10, s10, 6
	jal	quadratic.2932
	addi	s10, s10, -6
	lw	ra, 5(s10)
	lw	a0, 4(s10)
	lw	a1, 1(a0)
	li	t5, 3
	bne	a1, t5, beq_else.10014
	lui	fa1, 260096
	fsub	fa0, fa0, fa1
	j	beq_cont.10015
beq_else.10014:
beq_cont.10015:
	lw	fa1, 3(s10)
	fmul	fa2, fa1, fa1
	lw	fa3, 2(s10)
	fmul	fa0, fa3, fa0
	fsub	fa0, fa2, fa0
	lw	fa2, 1(s10)
	fle	t5, fa0, fa2
	bne	t5, zero, beq_else.10016
	li	a1, 1
	j	beq_cont.10017
beq_else.10016:
	mv	a1, zero
beq_cont.10017:
	mv	t5, zero
	bne	a1, t5, beq_else.10018
	mv	a0, zero
	ret
beq_else.10018:
	lw	a0, 6(a0)
	mv	t5, zero
	bne	a0, t5, beq_else.10019
	la	a0, min_caml_solver_dist
	sw	a0, 5(s10)
	fsqrt	fa0, fa0
	lw	fa1, 3(s10)
	fsub	fa0, fa1, fa0
	lw	a0, 0(s10)
	lw	fa1, 4(a0)
	fmul	fa0, fa0, fa1
	lw	a0, 5(s10)
	sw	fa0, 0(a0)
	j	beq_cont.10020
beq_else.10019:
	la	a0, min_caml_solver_dist
	sw	a0, 6(s10)
	fsqrt	fa0, fa0
	lw	fa1, 3(s10)
	fadd	fa0, fa1, fa0
	lw	a0, 0(s10)
	lw	fa1, 4(a0)
	fmul	fa0, fa0, fa1
	lw	a0, 6(s10)
	sw	fa0, 0(a0)
beq_cont.10020:
	li	a0, 1
	ret
beq_else.10013:
	mv	a0, zero
	ret
solver_fast.2974:
	la	a3, min_caml_objects
	add	t5, a3, a0
	lw	a3, 0(t5)
	lw	fa0, 0(a2)
	lw	a4, 5(a3)
	lw	fa1, 0(a4)
	fsub	fa0, fa0, fa1
	lw	fa1, 1(a2)
	lw	a4, 5(a3)
	lw	fa2, 1(a4)
	fsub	fa1, fa1, fa2
	lw	fa2, 2(a2)
	lw	a2, 5(a3)
	lw	fa3, 2(a2)
	fsub	fa2, fa2, fa3
	lw	a2, 1(a1)
	add	t5, a2, a0
	lw	a2, 0(t5)
	lw	a0, 1(a3)
	li	t5, 1
	bne	a0, t5, beq_else.10021
	lw	a1, 0(a1)
	mv	a0, a3
	j	solver_rect_fast.2955
beq_else.10021:
	li	t5, 2
	bne	a0, t5, beq_else.10022
	mv	a1, a2
	mv	a0, a3
	j	solver_surface_fast.2962
beq_else.10022:
	mv	a1, a2
	mv	a0, a3
	j	solver_second_fast.2968
solver_surface_fast2.2978:
	lw	fa0, 0(a1)
	mv	fa1, zero
	fle	t5, fa1, fa0
	bne	t5, zero, beq_else.10023
	li	a0, 1
	j	beq_cont.10024
beq_else.10023:
	mv	a0, zero
beq_cont.10024:
	mv	t5, zero
	bne	a0, t5, beq_else.10025
	mv	a0, zero
	ret
beq_else.10025:
	la	a0, min_caml_solver_dist
	lw	fa0, 0(a1)
	lw	fa1, 3(a2)
	fmul	fa0, fa0, fa1
	sw	fa0, 0(a0)
	li	a0, 1
	ret
solver_second_fast2.2985:
	lw	fa3, 0(a1)
	mv	fa4, zero
	feq	t5, fa3, fa4
	bne	t5, zero, beq_else.10026
	mv	a3, zero
	j	beq_cont.10027
beq_else.10026:
	li	a3, 1
beq_cont.10027:
	mv	t5, zero
	bne	a3, t5, beq_else.10028
	lw	fa5, 1(a1)
	fmul	fa0, fa5, fa0
	lw	fa5, 2(a1)
	fmul	fa1, fa5, fa1
	fadd	fa0, fa0, fa1
	lw	fa1, 3(a1)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	lw	fa1, 3(a2)
	fmul	fa2, fa0, fa0
	fmul	fa1, fa3, fa1
	fsub	fa1, fa2, fa1
	fle	t5, fa1, fa4
	bne	t5, zero, beq_else.10029
	li	a2, 1
	j	beq_cont.10030
beq_else.10029:
	mv	a2, zero
beq_cont.10030:
	mv	t5, zero
	bne	a2, t5, beq_else.10031
	mv	a0, zero
	ret
beq_else.10031:
	lw	a0, 6(a0)
	mv	t5, zero
	bne	a0, t5, beq_else.10032
	la	a0, min_caml_solver_dist
	sw	a0, 0(s10)
	sw	a1, 1(s10)
	sw	fa0, 2(s10)
	fsqrt	fa0, fa1
	lw	fa1, 2(s10)
	fsub	fa0, fa1, fa0
	lw	a0, 1(s10)
	lw	fa1, 4(a0)
	fmul	fa0, fa0, fa1
	lw	a0, 0(s10)
	sw	fa0, 0(a0)
	j	beq_cont.10033
beq_else.10032:
	la	a0, min_caml_solver_dist
	sw	a0, 3(s10)
	sw	a1, 1(s10)
	sw	fa0, 2(s10)
	fsqrt	fa0, fa1
	lw	fa1, 2(s10)
	fadd	fa0, fa1, fa0
	lw	a0, 1(s10)
	lw	fa1, 4(a0)
	fmul	fa0, fa0, fa1
	lw	a0, 3(s10)
	sw	fa0, 0(a0)
beq_cont.10033:
	li	a0, 1
	ret
beq_else.10028:
	mv	a0, zero
	ret
solver_fast2.2992:
	la	a2, min_caml_objects
	add	t5, a2, a0
	lw	a2, 0(t5)
	lw	a3, 10(a2)
	lw	fa0, 0(a3)
	lw	fa1, 1(a3)
	lw	fa2, 2(a3)
	lw	a4, 1(a1)
	add	t5, a4, a0
	lw	a0, 0(t5)
	lw	a4, 1(a2)
	li	t5, 1
	bne	a4, t5, beq_else.10034
	lw	a1, 0(a1)
	mv	t3, a2
	mv	a2, a0
	mv	a0, t3
	j	solver_rect_fast.2955
beq_else.10034:
	li	t5, 2
	bne	a4, t5, beq_else.10035
	mv	a1, a0
	mv	a0, a2
	mv	a2, a3
	j	solver_surface_fast2.2978
beq_else.10035:
	mv	a1, a0
	mv	a0, a2
	mv	a2, a3
	j	solver_second_fast2.2985
setup_rect_table.2995:
	li	a2, 6
	mv	fa0, zero
	sw	a1, 0(s10)
	sw	fa0, 1(s10)
	sw	a0, 2(s10)
	mv	a0, a2
	sw	ra, 3(s10)
	addi	s10, s10, 4
	jal	min_caml_create_float_array
	addi	s10, s10, -4
	lw	ra, 3(s10)
	lw	a1, 2(s10)
	lw	fa0, 0(a1)
	lw	fa1, 1(s10)
	feq	t5, fa0, fa1
	bne	t5, zero, beq_else.10036
	mv	a2, zero
	j	beq_cont.10037
beq_else.10036:
	li	a2, 1
beq_cont.10037:
	mv	t5, zero
	bne	a2, t5, beq_else.10038
	lw	a2, 0(s10)
	lw	a3, 6(a2)
	lw	fa0, 0(a1)
	fle	t5, fa1, fa0
	bne	t5, zero, beq_else.10040
	li	a4, 1
	j	beq_cont.10041
beq_else.10040:
	mv	a4, zero
beq_cont.10041:
	mv	t5, zero
	bne	a3, t5, beq_else.10042
	mv	a3, a4
	j	beq_cont.10043
beq_else.10042:
	mv	t5, zero
	bne	a4, t5, beq_else.10044
	li	a3, 1
	j	beq_cont.10045
beq_else.10044:
	mv	a3, zero
beq_cont.10045:
beq_cont.10043:
	lw	a4, 4(a2)
	lw	fa0, 0(a4)
	mv	t5, zero
	bne	a3, t5, beq_else.10046
	fsub	fa0, fa1, fa0
	j	beq_cont.10047
beq_else.10046:
beq_cont.10047:
	sw	fa0, 0(a0)
	lui	fa0, 260096
	lw	fa2, 0(a1)
	fdiv	fa0, fa0, fa2
	sw	fa0, 1(a0)
	j	beq_cont.10039
beq_else.10038:
	sw	fa1, 1(a0)
beq_cont.10039:
	lw	fa0, 1(a1)
	feq	t5, fa0, fa1
	bne	t5, zero, beq_else.10048
	mv	a2, zero
	j	beq_cont.10049
beq_else.10048:
	li	a2, 1
beq_cont.10049:
	mv	t5, zero
	bne	a2, t5, beq_else.10050
	lw	a2, 0(s10)
	lw	a3, 6(a2)
	lw	fa0, 1(a1)
	fle	t5, fa1, fa0
	bne	t5, zero, beq_else.10052
	li	a4, 1
	j	beq_cont.10053
beq_else.10052:
	mv	a4, zero
beq_cont.10053:
	mv	t5, zero
	bne	a3, t5, beq_else.10054
	mv	a3, a4
	j	beq_cont.10055
beq_else.10054:
	mv	t5, zero
	bne	a4, t5, beq_else.10056
	li	a3, 1
	j	beq_cont.10057
beq_else.10056:
	mv	a3, zero
beq_cont.10057:
beq_cont.10055:
	lw	a4, 4(a2)
	lw	fa0, 1(a4)
	mv	t5, zero
	bne	a3, t5, beq_else.10058
	fsub	fa0, fa1, fa0
	j	beq_cont.10059
beq_else.10058:
beq_cont.10059:
	sw	fa0, 2(a0)
	lui	fa0, 260096
	lw	fa2, 1(a1)
	fdiv	fa0, fa0, fa2
	sw	fa0, 3(a0)
	j	beq_cont.10051
beq_else.10050:
	sw	fa1, 3(a0)
beq_cont.10051:
	lw	fa0, 2(a1)
	feq	t5, fa0, fa1
	bne	t5, zero, beq_else.10060
	mv	a2, zero
	j	beq_cont.10061
beq_else.10060:
	li	a2, 1
beq_cont.10061:
	mv	t5, zero
	bne	a2, t5, beq_else.10062
	lw	a2, 0(s10)
	lw	a3, 6(a2)
	lw	fa0, 2(a1)
	fle	t5, fa1, fa0
	bne	t5, zero, beq_else.10064
	li	a4, 1
	j	beq_cont.10065
beq_else.10064:
	mv	a4, zero
beq_cont.10065:
	mv	t5, zero
	bne	a3, t5, beq_else.10066
	mv	a3, a4
	j	beq_cont.10067
beq_else.10066:
	mv	t5, zero
	bne	a4, t5, beq_else.10068
	li	a3, 1
	j	beq_cont.10069
beq_else.10068:
	mv	a3, zero
beq_cont.10069:
beq_cont.10067:
	lw	a2, 4(a2)
	lw	fa0, 2(a2)
	mv	t5, zero
	bne	a3, t5, beq_else.10070
	fsub	fa0, fa1, fa0
	j	beq_cont.10071
beq_else.10070:
beq_cont.10071:
	sw	fa0, 4(a0)
	lui	fa0, 260096
	lw	fa1, 2(a1)
	fdiv	fa0, fa0, fa1
	sw	fa0, 5(a0)
	j	beq_cont.10063
beq_else.10062:
	sw	fa1, 5(a0)
beq_cont.10063:
	ret
setup_surface_table.2998:
	li	a2, 4
	mv	fa0, zero
	sw	fa0, 0(s10)
	sw	a1, 1(s10)
	sw	a0, 2(s10)
	mv	a0, a2
	sw	ra, 3(s10)
	addi	s10, s10, 4
	jal	min_caml_create_float_array
	addi	s10, s10, -4
	lw	ra, 3(s10)
	lw	a1, 2(s10)
	lw	fa0, 0(a1)
	lw	a2, 1(s10)
	lw	a3, 4(a2)
	lw	fa1, 0(a3)
	fmul	fa0, fa0, fa1
	lw	fa1, 1(a1)
	lw	a3, 4(a2)
	lw	fa2, 1(a3)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	lw	fa1, 2(a1)
	lw	a1, 4(a2)
	lw	fa2, 2(a1)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	lw	fa1, 0(s10)
	fle	t5, fa0, fa1
	bne	t5, zero, beq_else.10072
	li	a1, 1
	j	beq_cont.10073
beq_else.10072:
	mv	a1, zero
beq_cont.10073:
	mv	t5, zero
	bne	a1, t5, beq_else.10074
	sw	fa1, 0(a0)
	j	beq_cont.10075
beq_else.10074:
	lui	fa2, 784384
	fdiv	fa2, fa2, fa0
	sw	fa2, 0(a0)
	lw	a1, 4(a2)
	lw	fa2, 0(a1)
	fdiv	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	sw	fa2, 1(a0)
	lw	a1, 4(a2)
	lw	fa2, 1(a1)
	fdiv	fa2, fa2, fa0
	fsub	fa2, fa1, fa2
	sw	fa2, 2(a0)
	lw	a1, 4(a2)
	lw	fa2, 2(a1)
	fdiv	fa0, fa2, fa0
	fsub	fa0, fa1, fa0
	sw	fa0, 3(a0)
beq_cont.10075:
	ret
setup_second_table.3001:
	li	a2, 5
	mv	fa0, zero
	sw	fa0, 0(s10)
	sw	a1, 1(s10)
	sw	a0, 2(s10)
	mv	a0, a2
	sw	ra, 3(s10)
	addi	s10, s10, 4
	jal	min_caml_create_float_array
	addi	s10, s10, -4
	lw	ra, 3(s10)
	lw	a1, 2(s10)
	lw	fa0, 0(a1)
	lw	fa1, 1(a1)
	lw	fa2, 2(a1)
	lw	a2, 1(s10)
	sw	a0, 3(s10)
	mv	a0, a2
	sw	ra, 4(s10)
	addi	s10, s10, 5
	jal	quadratic.2932
	addi	s10, s10, -5
	lw	ra, 4(s10)
	lw	a0, 2(s10)
	lw	fa1, 0(a0)
	lw	a1, 1(s10)
	lw	a2, 4(a1)
	lw	fa2, 0(a2)
	fmul	fa1, fa1, fa2
	lw	fa2, 0(s10)
	fsub	fa1, fa2, fa1
	lw	fa3, 1(a0)
	lw	a2, 4(a1)
	lw	fa4, 1(a2)
	fmul	fa3, fa3, fa4
	fsub	fa3, fa2, fa3
	lw	fa4, 2(a0)
	lw	a2, 4(a1)
	lw	fa5, 2(a2)
	fmul	fa4, fa4, fa5
	fsub	fa4, fa2, fa4
	lw	a2, 3(s10)
	sw	fa0, 0(a2)
	lw	a3, 3(a1)
	mv	t5, zero
	bne	a3, t5, beq_else.10076
	sw	fa1, 1(a2)
	sw	fa3, 2(a2)
	sw	fa4, 3(a2)
	j	beq_cont.10077
beq_else.10076:
	lw	fa5, 2(a0)
	lw	a3, 9(a1)
	lw	fa6, 1(a3)
	fmul	fa5, fa5, fa6
	lw	fa6, 1(a0)
	lw	a3, 9(a1)
	lw	fa7, 2(a3)
	fmul	fa6, fa6, fa7
	fadd	fa5, fa5, fa6
	lui	fa6, 258048
	fmul	fa5, fa5, fa6
	fsub	fa1, fa1, fa5
	sw	fa1, 1(a2)
	lw	fa1, 2(a0)
	lw	a3, 9(a1)
	lw	fa5, 0(a3)
	fmul	fa1, fa1, fa5
	lw	fa5, 0(a0)
	lw	a3, 9(a1)
	lw	fa7, 2(a3)
	fmul	fa5, fa5, fa7
	fadd	fa1, fa1, fa5
	fmul	fa1, fa1, fa6
	fsub	fa1, fa3, fa1
	sw	fa1, 2(a2)
	lw	fa1, 1(a0)
	lw	a3, 9(a1)
	lw	fa3, 0(a3)
	fmul	fa1, fa1, fa3
	lw	fa3, 0(a0)
	lw	a0, 9(a1)
	lw	fa5, 1(a0)
	fmul	fa3, fa3, fa5
	fadd	fa1, fa1, fa3
	fmul	fa1, fa1, fa6
	fsub	fa1, fa4, fa1
	sw	fa1, 3(a2)
beq_cont.10077:
	feq	t5, fa0, fa2
	bne	t5, zero, beq_else.10078
	mv	a0, zero
	j	beq_cont.10079
beq_else.10078:
	li	a0, 1
beq_cont.10079:
	mv	t5, zero
	bne	a0, t5, beq_else.10080
	lui	fa1, 260096
	fdiv	fa0, fa1, fa0
	sw	fa0, 4(a2)
	j	beq_cont.10081
beq_else.10080:
beq_cont.10081:
	mv	a0, a2
	ret
iter_setup_dirvec_constants.3004:
	mv	t5, zero
	blt	a1, t5, bge_else.10082
	la	a2, min_caml_objects
	add	t5, a2, a1
	lw	a2, 0(t5)
	lw	a3, 1(a0)
	lw	a4, 0(a0)
	lw	a5, 1(a2)
	sw	a0, 0(s10)
	li	t5, 1
	bne	a5, t5, beq_else.10083
	sw	a1, 1(s10)
	sw	a3, 2(s10)
	mv	a1, a2
	mv	a0, a4
	sw	ra, 3(s10)
	addi	s10, s10, 4
	jal	setup_rect_table.2995
	addi	s10, s10, -4
	lw	ra, 3(s10)
	lw	a1, 1(s10)
	lw	a2, 2(s10)
	add	t5, a2, a1
	sw	a0, 0(t5)
	j	beq_cont.10084
beq_else.10083:
	li	t5, 2
	bne	a5, t5, beq_else.10085
	sw	a1, 1(s10)
	sw	a3, 2(s10)
	mv	a1, a2
	mv	a0, a4
	sw	ra, 3(s10)
	addi	s10, s10, 4
	jal	setup_surface_table.2998
	addi	s10, s10, -4
	lw	ra, 3(s10)
	lw	a1, 1(s10)
	lw	a2, 2(s10)
	add	t5, a2, a1
	sw	a0, 0(t5)
	j	beq_cont.10086
beq_else.10085:
	sw	a1, 1(s10)
	sw	a3, 2(s10)
	mv	a1, a2
	mv	a0, a4
	sw	ra, 3(s10)
	addi	s10, s10, 4
	jal	setup_second_table.3001
	addi	s10, s10, -4
	lw	ra, 3(s10)
	lw	a1, 1(s10)
	lw	a2, 2(s10)
	add	t5, a2, a1
	sw	a0, 0(t5)
beq_cont.10086:
beq_cont.10084:
	addi	a1, a1, -1
	lw	a0, 0(s10)
	j	iter_setup_dirvec_constants.3004
bge_else.10082:
	ret
setup_dirvec_constants.3007:
	la	a1, min_caml_n_objects
	lw	a1, 0(a1)
	addi	a1, a1, -1
	j	iter_setup_dirvec_constants.3004
setup_startp_constants.3009:
	mv	t5, zero
	blt	a1, t5, bge_else.10088
	la	a2, min_caml_objects
	add	t5, a2, a1
	lw	a2, 0(t5)
	lw	a3, 10(a2)
	lw	a4, 1(a2)
	lw	fa0, 0(a0)
	lw	a5, 5(a2)
	lw	fa1, 0(a5)
	fsub	fa0, fa0, fa1
	sw	fa0, 0(a3)
	lw	fa0, 1(a0)
	lw	a5, 5(a2)
	lw	fa1, 1(a5)
	fsub	fa0, fa0, fa1
	sw	fa0, 1(a3)
	lw	fa0, 2(a0)
	lw	a5, 5(a2)
	lw	fa1, 2(a5)
	fsub	fa0, fa0, fa1
	sw	fa0, 2(a3)
	sw	a0, 0(s10)
	sw	a1, 1(s10)
	li	t5, 2
	bne	a4, t5, beq_else.10089
	lw	a2, 4(a2)
	lw	fa0, 0(a3)
	lw	fa1, 1(a3)
	lw	fa2, 2(a3)
	sw	a3, 2(s10)
	mv	a0, a2
	sw	ra, 3(s10)
	addi	s10, s10, 4
	jal	veciprod2.2798
	addi	s10, s10, -4
	lw	ra, 3(s10)
	lw	a0, 2(s10)
	sw	fa0, 3(a0)
	j	beq_cont.10090
beq_else.10089:
	li	t5, 2
	bgt	a4, t5, ble_else.10091
	j	ble_cont.10092
ble_else.10091:
	lw	fa0, 0(a3)
	lw	fa1, 1(a3)
	lw	fa2, 2(a3)
	sw	a3, 2(s10)
	sw	a4, 3(s10)
	mv	a0, a2
	sw	ra, 4(s10)
	addi	s10, s10, 5
	jal	quadratic.2932
	addi	s10, s10, -5
	lw	ra, 4(s10)
	lw	a0, 3(s10)
	li	t5, 3
	bne	a0, t5, beq_else.10093
	lui	fa1, 260096
	fsub	fa0, fa0, fa1
	j	beq_cont.10094
beq_else.10093:
beq_cont.10094:
	lw	a0, 2(s10)
	sw	fa0, 3(a0)
ble_cont.10092:
beq_cont.10090:
	lw	a0, 1(s10)
	addi	a1, a0, -1
	lw	a0, 0(s10)
	j	setup_startp_constants.3009
bge_else.10088:
	ret
setup_startp.3012:
	la	a1, min_caml_startp_fast
	sw	a0, 0(s10)
	mv	t3, a1
	mv	a1, a0
	mv	a0, t3
	sw	ra, 1(s10)
	addi	s10, s10, 2
	jal	veccpy.2789
	addi	s10, s10, -2
	lw	ra, 1(s10)
	la	a0, min_caml_n_objects
	lw	a0, 0(a0)
	addi	a1, a0, -1
	lw	a0, 0(s10)
	j	setup_startp_constants.3009
is_rect_outside.3014:
	mv	fa3, zero
	fle	t5, fa0, fa3
	bne	t5, zero, beq_else.10096
	li	a1, 1
	j	beq_cont.10097
beq_else.10096:
	mv	a1, zero
beq_cont.10097:
	mv	t5, zero
	bne	a1, t5, beq_else.10098
	fsub	fa0, fa3, fa0
	j	beq_cont.10099
beq_else.10098:
beq_cont.10099:
	lw	a1, 4(a0)
	lw	fa4, 0(a1)
	fle	t5, fa4, fa0
	bne	t5, zero, beq_else.10100
	li	a1, 1
	j	beq_cont.10101
beq_else.10100:
	mv	a1, zero
beq_cont.10101:
	mv	t5, zero
	bne	a1, t5, beq_else.10102
	mv	a1, zero
	j	beq_cont.10103
beq_else.10102:
	fle	t5, fa1, fa3
	bne	t5, zero, beq_else.10104
	li	a1, 1
	j	beq_cont.10105
beq_else.10104:
	mv	a1, zero
beq_cont.10105:
	mv	t5, zero
	bne	a1, t5, beq_else.10106
	fsub	fa0, fa3, fa1
	j	beq_cont.10107
beq_else.10106:
	mv	fa0, fa1
beq_cont.10107:
	lw	a1, 4(a0)
	lw	fa1, 1(a1)
	fle	t5, fa1, fa0
	bne	t5, zero, beq_else.10108
	li	a1, 1
	j	beq_cont.10109
beq_else.10108:
	mv	a1, zero
beq_cont.10109:
	mv	t5, zero
	bne	a1, t5, beq_else.10110
	mv	a1, zero
	j	beq_cont.10111
beq_else.10110:
	fle	t5, fa2, fa3
	bne	t5, zero, beq_else.10112
	li	a1, 1
	j	beq_cont.10113
beq_else.10112:
	mv	a1, zero
beq_cont.10113:
	mv	t5, zero
	bne	a1, t5, beq_else.10114
	fsub	fa0, fa3, fa2
	j	beq_cont.10115
beq_else.10114:
	mv	fa0, fa2
beq_cont.10115:
	lw	a1, 4(a0)
	lw	fa1, 2(a1)
	fle	t5, fa1, fa0
	bne	t5, zero, beq_else.10116
	li	a1, 1
	j	beq_cont.10117
beq_else.10116:
	mv	a1, zero
beq_cont.10117:
beq_cont.10111:
beq_cont.10103:
	mv	t5, zero
	bne	a1, t5, beq_else.10118
	lw	a0, 6(a0)
	mv	t5, zero
	bne	a0, t5, beq_else.10119
	li	a0, 1
	ret
beq_else.10119:
	mv	a0, zero
	ret
beq_else.10118:
	lw	a0, 6(a0)
	ret
is_plane_outside.3019:
	lw	a1, 4(a0)
	sw	a0, 0(s10)
	mv	a0, a1
	sw	ra, 1(s10)
	addi	s10, s10, 2
	jal	veciprod2.2798
	addi	s10, s10, -2
	lw	ra, 1(s10)
	lw	a0, 0(s10)
	lw	a0, 6(a0)
	mv	fa1, zero
	fle	t5, fa1, fa0
	bne	t5, zero, beq_else.10120
	li	a1, 1
	j	beq_cont.10121
beq_else.10120:
	mv	a1, zero
beq_cont.10121:
	mv	t5, zero
	bne	a0, t5, beq_else.10122
	mv	a0, a1
	j	beq_cont.10123
beq_else.10122:
	mv	t5, zero
	bne	a1, t5, beq_else.10124
	li	a0, 1
	j	beq_cont.10125
beq_else.10124:
	mv	a0, zero
beq_cont.10125:
beq_cont.10123:
	mv	t5, zero
	bne	a0, t5, beq_else.10126
	li	a0, 1
	ret
beq_else.10126:
	mv	a0, zero
	ret
is_second_outside.3024:
	sw	a0, 0(s10)
	sw	ra, 1(s10)
	addi	s10, s10, 2
	jal	quadratic.2932
	addi	s10, s10, -2
	lw	ra, 1(s10)
	lw	a0, 0(s10)
	lw	a1, 1(a0)
	li	t5, 3
	bne	a1, t5, beq_else.10127
	lui	fa1, 260096
	fsub	fa0, fa0, fa1
	j	beq_cont.10128
beq_else.10127:
beq_cont.10128:
	lw	a0, 6(a0)
	mv	fa1, zero
	fle	t5, fa1, fa0
	bne	t5, zero, beq_else.10129
	li	a1, 1
	j	beq_cont.10130
beq_else.10129:
	mv	a1, zero
beq_cont.10130:
	mv	t5, zero
	bne	a0, t5, beq_else.10131
	mv	a0, a1
	j	beq_cont.10132
beq_else.10131:
	mv	t5, zero
	bne	a1, t5, beq_else.10133
	li	a0, 1
	j	beq_cont.10134
beq_else.10133:
	mv	a0, zero
beq_cont.10134:
beq_cont.10132:
	mv	t5, zero
	bne	a0, t5, beq_else.10135
	li	a0, 1
	ret
beq_else.10135:
	mv	a0, zero
	ret
is_outside.3029:
	lw	a1, 5(a0)
	lw	fa3, 0(a1)
	fsub	fa0, fa0, fa3
	lw	a1, 5(a0)
	lw	fa3, 1(a1)
	fsub	fa1, fa1, fa3
	lw	a1, 5(a0)
	lw	fa3, 2(a1)
	fsub	fa2, fa2, fa3
	lw	a1, 1(a0)
	li	t5, 1
	bne	a1, t5, beq_else.10136
	j	is_rect_outside.3014
beq_else.10136:
	li	t5, 2
	bne	a1, t5, beq_else.10137
	j	is_plane_outside.3019
beq_else.10137:
	j	is_second_outside.3024
check_all_inside.3034:
	add	t5, a1, a0
	lw	a2, 0(t5)
	li	t5, -1
	bne	a2, t5, beq_else.10138
	li	a0, 1
	ret
beq_else.10138:
	la	a3, min_caml_objects
	add	t5, a3, a2
	lw	a2, 0(t5)
	sw	fa2, 0(s10)
	sw	fa1, 1(s10)
	sw	fa0, 2(s10)
	sw	a1, 3(s10)
	sw	a0, 4(s10)
	mv	a0, a2
	sw	ra, 5(s10)
	addi	s10, s10, 6
	jal	is_outside.3029
	addi	s10, s10, -6
	lw	ra, 5(s10)
	mv	t5, zero
	bne	a0, t5, beq_else.10139
	lw	a0, 4(s10)
	addi	a0, a0, 1
	lw	fa0, 2(s10)
	lw	fa1, 1(s10)
	lw	fa2, 0(s10)
	lw	a1, 3(s10)
	j	check_all_inside.3034
beq_else.10139:
	mv	a0, zero
	ret
shadow_check_and_group.3040:
	add	t5, a1, a0
	lw	a2, 0(t5)
	li	t5, -1
	bne	a2, t5, beq_else.10140
	mv	a0, zero
	ret
beq_else.10140:
	add	t5, a1, a0
	lw	a2, 0(t5)
	la	a3, min_caml_light_dirvec
	la	a4, min_caml_intersection_point
	sw	a4, 0(s10)
	sw	a1, 1(s10)
	sw	a0, 2(s10)
	sw	a2, 3(s10)
	mv	a1, a3
	mv	a0, a2
	mv	a2, a4
	sw	ra, 4(s10)
	addi	s10, s10, 5
	jal	solver_fast.2974
	addi	s10, s10, -5
	lw	ra, 4(s10)
	la	a1, min_caml_solver_dist
	mv	a2, zero
	lw	fa0, 0(a1)
	mv	t5, zero
	bne	a0, t5, beq_else.10141
	mv	a0, zero
	j	beq_cont.10142
beq_else.10141:
	lui	fa1, 779469
	addi	fa1, fa1, -819
	fle	t5, fa1, fa0
	bne	t5, zero, beq_else.10143
	li	a0, 1
	j	beq_cont.10144
beq_else.10143:
	mv	a0, zero
beq_cont.10144:
beq_cont.10142:
	mv	t5, zero
	bne	a0, t5, beq_else.10145
	la	a0, min_caml_objects
	lw	a1, 3(s10)
	add	t5, a0, a1
	lw	a0, 0(t5)
	lw	a0, 6(a0)
	mv	t5, zero
	bne	a0, t5, beq_else.10146
	mv	a0, zero
	ret
beq_else.10146:
	lw	a0, 2(s10)
	addi	a0, a0, 1
	lw	a1, 1(s10)
	j	shadow_check_and_group.3040
beq_else.10145:
	lui	fa1, 246333
	addi	fa1, fa1, 1802
	fadd	fa0, fa0, fa1
	la	a0, min_caml_light
	lw	fa1, 0(a0)
	fmul	fa1, fa1, fa0
	lw	a1, 0(s10)
	lw	fa2, 0(a1)
	fadd	fa1, fa1, fa2
	lw	fa2, 1(a0)
	fmul	fa2, fa2, fa0
	lw	fa3, 1(a1)
	fadd	fa2, fa2, fa3
	lw	fa3, 2(a0)
	fmul	fa0, fa3, fa0
	lw	fa3, 2(a1)
	fadd	fa0, fa0, fa3
	lw	a1, 1(s10)
	mv	a0, a2
	mv	ft5, fa2
	mv	fa2, fa0
	mv	fa0, fa1
	mv	fa1, ft5
	sw	ra, 4(s10)
	addi	s10, s10, 5
	jal	check_all_inside.3034
	addi	s10, s10, -5
	lw	ra, 4(s10)
	mv	t5, zero
	bne	a0, t5, beq_else.10147
	lw	a0, 2(s10)
	addi	a0, a0, 1
	lw	a1, 1(s10)
	j	shadow_check_and_group.3040
beq_else.10147:
	li	a0, 1
	ret
shadow_check_one_or_group.3043:
	add	t5, a1, a0
	lw	a2, 0(t5)
	li	t5, -1
	bne	a2, t5, beq_else.10148
	mv	a0, zero
	ret
beq_else.10148:
	la	a3, min_caml_and_net
	add	t5, a3, a2
	lw	a2, 0(t5)
	mv	a3, zero
	sw	a1, 0(s10)
	sw	a0, 1(s10)
	mv	a1, a2
	mv	a0, a3
	sw	ra, 2(s10)
	addi	s10, s10, 3
	jal	shadow_check_and_group.3040
	addi	s10, s10, -3
	lw	ra, 2(s10)
	mv	t5, zero
	bne	a0, t5, beq_else.10149
	lw	a0, 1(s10)
	addi	a0, a0, 1
	lw	a1, 0(s10)
	j	shadow_check_one_or_group.3043
beq_else.10149:
	li	a0, 1
	ret
shadow_check_one_or_matrix.3046:
	add	t5, a1, a0
	lw	a2, 0(t5)
	lw	a3, 0(a2)
	li	a4, 1
	li	t5, -1
	bne	a3, t5, beq_else.10150
	mv	a0, zero
	ret
beq_else.10150:
	sw	a2, 0(s10)
	sw	a4, 1(s10)
	sw	a1, 2(s10)
	sw	a0, 3(s10)
	li	t5, 99
	bne	a3, t5, beq_else.10151
	li	a0, 1
	j	beq_cont.10152
beq_else.10151:
	la	a5, min_caml_light_dirvec
	la	a6, min_caml_intersection_point
	mv	a2, a6
	mv	a1, a5
	mv	a0, a3
	sw	ra, 4(s10)
	addi	s10, s10, 5
	jal	solver_fast.2974
	addi	s10, s10, -5
	lw	ra, 4(s10)
	mv	t5, zero
	bne	a0, t5, beq_else.10153
	mv	a0, zero
	j	beq_cont.10154
beq_else.10153:
	la	a0, min_caml_solver_dist
	lw	fa0, 0(a0)
	lui	fa1, 777421
	addi	fa1, fa1, -819
	fle	t5, fa1, fa0
	bne	t5, zero, beq_else.10155
	li	a0, 1
	j	beq_cont.10156
beq_else.10155:
	mv	a0, zero
beq_cont.10156:
	mv	t5, zero
	bne	a0, t5, beq_else.10157
	mv	a0, zero
	j	beq_cont.10158
beq_else.10157:
	lw	a0, 1(s10)
	lw	a1, 0(s10)
	sw	ra, 4(s10)
	addi	s10, s10, 5
	jal	shadow_check_one_or_group.3043
	addi	s10, s10, -5
	lw	ra, 4(s10)
	mv	t5, zero
	bne	a0, t5, beq_else.10159
	mv	a0, zero
	j	beq_cont.10160
beq_else.10159:
	li	a0, 1
beq_cont.10160:
beq_cont.10158:
beq_cont.10154:
beq_cont.10152:
	mv	t5, zero
	bne	a0, t5, beq_else.10161
	lw	a0, 3(s10)
	addi	a0, a0, 1
	lw	a1, 2(s10)
	j	shadow_check_one_or_matrix.3046
beq_else.10161:
	lw	a0, 1(s10)
	lw	a1, 0(s10)
	sw	ra, 4(s10)
	addi	s10, s10, 5
	jal	shadow_check_one_or_group.3043
	addi	s10, s10, -5
	lw	ra, 4(s10)
	mv	t5, zero
	bne	a0, t5, beq_else.10162
	lw	a0, 3(s10)
	addi	a0, a0, 1
	lw	a1, 2(s10)
	j	shadow_check_one_or_matrix.3046
beq_else.10162:
	li	a0, 1
	ret
solve_each_element.3049:
	add	t5, a1, a0
	lw	a3, 0(t5)
	li	t5, -1
	bne	a3, t5, beq_else.10163
	ret
beq_else.10163:
	la	a4, min_caml_startp
	sw	a4, 0(s10)
	sw	a2, 1(s10)
	sw	a1, 2(s10)
	sw	a0, 3(s10)
	sw	a3, 4(s10)
	mv	a1, a2
	mv	a0, a3
	mv	a2, a4
	sw	ra, 5(s10)
	addi	s10, s10, 6
	jal	solver.2951
	addi	s10, s10, -6
	lw	ra, 5(s10)
	mv	a1, zero
	mv	t5, zero
	bne	a0, t5, beq_else.10165
	la	a0, min_caml_objects
	lw	a1, 4(s10)
	add	t5, a0, a1
	lw	a0, 0(t5)
	lw	a0, 6(a0)
	mv	t5, zero
	bne	a0, t5, beq_else.10166
	ret
beq_else.10166:
	lw	a0, 3(s10)
	addi	a0, a0, 1
	lw	a1, 2(s10)
	lw	a2, 1(s10)
	j	solve_each_element.3049
beq_else.10165:
	la	a2, min_caml_solver_dist
	lw	fa0, 0(a2)
	mv	fa1, zero
	fle	t5, fa0, fa1
	bne	t5, zero, beq_else.10168
	li	a2, 1
	j	beq_cont.10169
beq_else.10168:
	mv	a2, zero
beq_cont.10169:
	mv	t5, zero
	bne	a2, t5, beq_else.10170
	j	beq_cont.10171
beq_else.10170:
	la	a2, min_caml_tmin
	lw	fa1, 0(a2)
	fle	t5, fa1, fa0
	bne	t5, zero, beq_else.10172
	li	a3, 1
	j	beq_cont.10173
beq_else.10172:
	mv	a3, zero
beq_cont.10173:
	mv	t5, zero
	bne	a3, t5, beq_else.10174
	j	beq_cont.10175
beq_else.10174:
	lui	fa1, 246333
	addi	fa1, fa1, 1802
	fadd	fa0, fa0, fa1
	lw	a3, 1(s10)
	lw	fa1, 0(a3)
	fmul	fa1, fa1, fa0
	lw	a4, 0(s10)
	lw	fa2, 0(a4)
	fadd	fa1, fa1, fa2
	lw	fa2, 1(a3)
	fmul	fa2, fa2, fa0
	lw	fa3, 1(a4)
	fadd	fa2, fa2, fa3
	lw	fa3, 2(a3)
	fmul	fa3, fa3, fa0
	lw	fa4, 2(a4)
	fadd	fa3, fa3, fa4
	lw	a4, 2(s10)
	sw	a0, 5(s10)
	sw	fa3, 6(s10)
	sw	fa2, 7(s10)
	sw	fa1, 8(s10)
	sw	a2, 9(s10)
	sw	fa0, 10(s10)
	mv	a0, a1
	mv	a1, a4
	mv	fa0, fa1
	mv	fa1, fa2
	mv	fa2, fa3
	sw	ra, 11(s10)
	addi	s10, s10, 12
	jal	check_all_inside.3034
	addi	s10, s10, -12
	lw	ra, 11(s10)
	mv	t5, zero
	bne	a0, t5, beq_else.10176
	j	beq_cont.10177
beq_else.10176:
	lw	a0, 9(s10)
	lw	fa0, 10(s10)
	sw	fa0, 0(a0)
	la	a0, min_caml_intersection_point
	lw	fa0, 8(s10)
	lw	fa1, 7(s10)
	lw	fa2, 6(s10)
	sw	ra, 11(s10)
	addi	s10, s10, 12
	jal	vecset.2779
	addi	s10, s10, -12
	lw	ra, 11(s10)
	la	a0, min_caml_intersected_object_id
	lw	fa0, 4(s10)
	sw	fa0, 0(a0)
	la	a0, min_caml_intsec_rectside
	lw	fa0, 5(s10)
	sw	fa0, 0(a0)
beq_cont.10177:
beq_cont.10175:
beq_cont.10171:
	lw	a0, 3(s10)
	addi	a0, a0, 1
	lw	a1, 2(s10)
	lw	a2, 1(s10)
	j	solve_each_element.3049
solve_one_or_network.3053:
	add	t5, a1, a0
	lw	a3, 0(t5)
	li	t5, -1
	bne	a3, t5, beq_else.10178
	ret
beq_else.10178:
	la	a4, min_caml_and_net
	add	t5, a4, a3
	lw	a3, 0(t5)
	mv	a4, zero
	sw	a2, 0(s10)
	sw	a1, 1(s10)
	sw	a0, 2(s10)
	mv	a1, a3
	mv	a0, a4
	sw	ra, 3(s10)
	addi	s10, s10, 4
	jal	solve_each_element.3049
	addi	s10, s10, -4
	lw	ra, 3(s10)
	lw	a0, 2(s10)
	addi	a0, a0, 1
	lw	a1, 1(s10)
	lw	a2, 0(s10)
	j	solve_one_or_network.3053
trace_or_matrix.3057:
	add	t5, a1, a0
	lw	a3, 0(t5)
	lw	a4, 0(a3)
	li	a5, 1
	li	t5, -1
	bne	a4, t5, beq_else.10180
	ret
beq_else.10180:
	sw	a2, 0(s10)
	sw	a1, 1(s10)
	sw	a0, 2(s10)
	li	t5, 99
	bne	a4, t5, beq_else.10182
	mv	a1, a3
	mv	a0, a5
	sw	ra, 3(s10)
	addi	s10, s10, 4
	jal	solve_one_or_network.3053
	addi	s10, s10, -4
	lw	ra, 3(s10)
	j	beq_cont.10183
beq_else.10182:
	la	a6, min_caml_startp
	sw	a3, 3(s10)
	sw	a5, 4(s10)
	mv	a1, a2
	mv	a0, a4
	mv	a2, a6
	sw	ra, 5(s10)
	addi	s10, s10, 6
	jal	solver.2951
	addi	s10, s10, -6
	lw	ra, 5(s10)
	mv	t5, zero
	bne	a0, t5, beq_else.10184
	j	beq_cont.10185
beq_else.10184:
	la	a0, min_caml_solver_dist
	lw	fa0, 0(a0)
	la	a0, min_caml_tmin
	lw	fa1, 0(a0)
	fle	t5, fa1, fa0
	bne	t5, zero, beq_else.10186
	li	a0, 1
	j	beq_cont.10187
beq_else.10186:
	mv	a0, zero
beq_cont.10187:
	mv	t5, zero
	bne	a0, t5, beq_else.10188
	j	beq_cont.10189
beq_else.10188:
	lw	a0, 4(s10)
	lw	a1, 3(s10)
	lw	a2, 0(s10)
	sw	ra, 5(s10)
	addi	s10, s10, 6
	jal	solve_one_or_network.3053
	addi	s10, s10, -6
	lw	ra, 5(s10)
beq_cont.10189:
beq_cont.10185:
beq_cont.10183:
	lw	a0, 2(s10)
	addi	a0, a0, 1
	lw	a1, 1(s10)
	lw	a2, 0(s10)
	j	trace_or_matrix.3057
judge_intersection.3061:
	la	a1, min_caml_tmin
	mv	a2, zero
	lui	fa0, 321255
	addi	fa0, fa0, -1240
	sw	fa0, 0(a1)
	la	a3, min_caml_or_net
	lw	a3, 0(a3)
	sw	a1, 0(s10)
	mv	a1, a3
	mv	t3, a2
	mv	a2, a0
	mv	a0, t3
	sw	ra, 1(s10)
	addi	s10, s10, 2
	jal	trace_or_matrix.3057
	addi	s10, s10, -2
	lw	ra, 1(s10)
	lw	a0, 0(s10)
	lw	fa0, 0(a0)
	lui	fa1, 777421
	addi	fa1, fa1, -819
	fle	t5, fa0, fa1
	bne	t5, zero, beq_else.10190
	li	a0, 1
	j	beq_cont.10191
beq_else.10190:
	mv	a0, zero
beq_cont.10191:
	mv	t5, zero
	bne	a0, t5, beq_else.10192
	mv	a0, zero
	ret
beq_else.10192:
	lui	fa1, 314348
	addi	fa1, fa1, -992
	fle	t5, fa1, fa0
	bne	t5, zero, beq_else.10193
	li	a0, 1
	ret
beq_else.10193:
	mv	a0, zero
	ret
solve_each_element_fast.3063:
	lw	a3, 0(a2)
	add	t5, a1, a0
	lw	a4, 0(t5)
	li	t5, -1
	bne	a4, t5, beq_else.10194
	ret
beq_else.10194:
	sw	a3, 0(s10)
	sw	a2, 1(s10)
	sw	a1, 2(s10)
	sw	a0, 3(s10)
	sw	a4, 4(s10)
	mv	a1, a2
	mv	a0, a4
	sw	ra, 5(s10)
	addi	s10, s10, 6
	jal	solver_fast2.2992
	addi	s10, s10, -6
	lw	ra, 5(s10)
	mv	a1, zero
	mv	t5, zero
	bne	a0, t5, beq_else.10196
	la	a0, min_caml_objects
	lw	a1, 4(s10)
	add	t5, a0, a1
	lw	a0, 0(t5)
	lw	a0, 6(a0)
	mv	t5, zero
	bne	a0, t5, beq_else.10197
	ret
beq_else.10197:
	lw	a0, 3(s10)
	addi	a0, a0, 1
	lw	a1, 2(s10)
	lw	a2, 1(s10)
	j	solve_each_element_fast.3063
beq_else.10196:
	la	a2, min_caml_solver_dist
	lw	fa0, 0(a2)
	mv	fa1, zero
	fle	t5, fa0, fa1
	bne	t5, zero, beq_else.10199
	li	a2, 1
	j	beq_cont.10200
beq_else.10199:
	mv	a2, zero
beq_cont.10200:
	mv	t5, zero
	bne	a2, t5, beq_else.10201
	j	beq_cont.10202
beq_else.10201:
	la	a2, min_caml_tmin
	lw	fa1, 0(a2)
	fle	t5, fa1, fa0
	bne	t5, zero, beq_else.10203
	li	a3, 1
	j	beq_cont.10204
beq_else.10203:
	mv	a3, zero
beq_cont.10204:
	mv	t5, zero
	bne	a3, t5, beq_else.10205
	j	beq_cont.10206
beq_else.10205:
	lui	fa1, 246333
	addi	fa1, fa1, 1802
	fadd	fa0, fa0, fa1
	lw	a3, 0(s10)
	lw	fa1, 0(a3)
	fmul	fa1, fa1, fa0
	la	a4, min_caml_startp_fast
	lw	fa2, 0(a4)
	fadd	fa1, fa1, fa2
	lw	fa2, 1(a3)
	fmul	fa2, fa2, fa0
	lw	fa3, 1(a4)
	fadd	fa2, fa2, fa3
	lw	fa3, 2(a3)
	fmul	fa3, fa3, fa0
	lw	fa4, 2(a4)
	fadd	fa3, fa3, fa4
	lw	a3, 2(s10)
	sw	a0, 5(s10)
	sw	fa3, 6(s10)
	sw	fa2, 7(s10)
	sw	fa1, 8(s10)
	sw	a2, 9(s10)
	sw	fa0, 10(s10)
	mv	a0, a1
	mv	a1, a3
	mv	fa0, fa1
	mv	fa1, fa2
	mv	fa2, fa3
	sw	ra, 11(s10)
	addi	s10, s10, 12
	jal	check_all_inside.3034
	addi	s10, s10, -12
	lw	ra, 11(s10)
	mv	t5, zero
	bne	a0, t5, beq_else.10207
	j	beq_cont.10208
beq_else.10207:
	lw	a0, 9(s10)
	lw	fa0, 10(s10)
	sw	fa0, 0(a0)
	la	a0, min_caml_intersection_point
	lw	fa0, 8(s10)
	lw	fa1, 7(s10)
	lw	fa2, 6(s10)
	sw	ra, 11(s10)
	addi	s10, s10, 12
	jal	vecset.2779
	addi	s10, s10, -12
	lw	ra, 11(s10)
	la	a0, min_caml_intersected_object_id
	lw	fa0, 4(s10)
	sw	fa0, 0(a0)
	la	a0, min_caml_intsec_rectside
	lw	fa0, 5(s10)
	sw	fa0, 0(a0)
beq_cont.10208:
beq_cont.10206:
beq_cont.10202:
	lw	a0, 3(s10)
	addi	a0, a0, 1
	lw	a1, 2(s10)
	lw	a2, 1(s10)
	j	solve_each_element_fast.3063
solve_one_or_network_fast.3067:
	add	t5, a1, a0
	lw	a3, 0(t5)
	li	t5, -1
	bne	a3, t5, beq_else.10209
	ret
beq_else.10209:
	la	a4, min_caml_and_net
	add	t5, a4, a3
	lw	a3, 0(t5)
	mv	a4, zero
	sw	a2, 0(s10)
	sw	a1, 1(s10)
	sw	a0, 2(s10)
	mv	a1, a3
	mv	a0, a4
	sw	ra, 3(s10)
	addi	s10, s10, 4
	jal	solve_each_element_fast.3063
	addi	s10, s10, -4
	lw	ra, 3(s10)
	lw	a0, 2(s10)
	addi	a0, a0, 1
	lw	a1, 1(s10)
	lw	a2, 0(s10)
	j	solve_one_or_network_fast.3067
trace_or_matrix_fast.3071:
	add	t5, a1, a0
	lw	a3, 0(t5)
	lw	a4, 0(a3)
	li	a5, 1
	li	t5, -1
	bne	a4, t5, beq_else.10211
	ret
beq_else.10211:
	sw	a2, 0(s10)
	sw	a1, 1(s10)
	sw	a0, 2(s10)
	li	t5, 99
	bne	a4, t5, beq_else.10213
	mv	a1, a3
	mv	a0, a5
	sw	ra, 3(s10)
	addi	s10, s10, 4
	jal	solve_one_or_network_fast.3067
	addi	s10, s10, -4
	lw	ra, 3(s10)
	j	beq_cont.10214
beq_else.10213:
	sw	a3, 3(s10)
	sw	a5, 4(s10)
	mv	a1, a2
	mv	a0, a4
	sw	ra, 5(s10)
	addi	s10, s10, 6
	jal	solver_fast2.2992
	addi	s10, s10, -6
	lw	ra, 5(s10)
	mv	t5, zero
	bne	a0, t5, beq_else.10215
	j	beq_cont.10216
beq_else.10215:
	la	a0, min_caml_solver_dist
	lw	fa0, 0(a0)
	la	a0, min_caml_tmin
	lw	fa1, 0(a0)
	fle	t5, fa1, fa0
	bne	t5, zero, beq_else.10217
	li	a0, 1
	j	beq_cont.10218
beq_else.10217:
	mv	a0, zero
beq_cont.10218:
	mv	t5, zero
	bne	a0, t5, beq_else.10219
	j	beq_cont.10220
beq_else.10219:
	lw	a0, 4(s10)
	lw	a1, 3(s10)
	lw	a2, 0(s10)
	sw	ra, 5(s10)
	addi	s10, s10, 6
	jal	solve_one_or_network_fast.3067
	addi	s10, s10, -6
	lw	ra, 5(s10)
beq_cont.10220:
beq_cont.10216:
beq_cont.10214:
	lw	a0, 2(s10)
	addi	a0, a0, 1
	lw	a1, 1(s10)
	lw	a2, 0(s10)
	j	trace_or_matrix_fast.3071
judge_intersection_fast.3075:
	la	a1, min_caml_tmin
	mv	a2, zero
	lui	fa0, 321255
	addi	fa0, fa0, -1240
	sw	fa0, 0(a1)
	la	a3, min_caml_or_net
	lw	a3, 0(a3)
	sw	a1, 0(s10)
	mv	a1, a3
	mv	t3, a2
	mv	a2, a0
	mv	a0, t3
	sw	ra, 1(s10)
	addi	s10, s10, 2
	jal	trace_or_matrix_fast.3071
	addi	s10, s10, -2
	lw	ra, 1(s10)
	lw	a0, 0(s10)
	lw	fa0, 0(a0)
	lui	fa1, 777421
	addi	fa1, fa1, -819
	fle	t5, fa0, fa1
	bne	t5, zero, beq_else.10221
	li	a0, 1
	j	beq_cont.10222
beq_else.10221:
	mv	a0, zero
beq_cont.10222:
	mv	t5, zero
	bne	a0, t5, beq_else.10223
	mv	a0, zero
	ret
beq_else.10223:
	lui	fa1, 314348
	addi	fa1, fa1, -992
	fle	t5, fa1, fa0
	bne	t5, zero, beq_else.10224
	li	a0, 1
	ret
beq_else.10224:
	mv	a0, zero
	ret
get_nvector_rect.3077:
	la	a1, min_caml_intsec_rectside
	lw	a1, 0(a1)
	la	a2, min_caml_nvector
	mv	fa0, zero
	sw	a2, 0(s10)
	sw	fa0, 1(s10)
	sw	a0, 2(s10)
	sw	a1, 3(s10)
	mv	a0, a2
	sw	ra, 4(s10)
	addi	s10, s10, 5
	jal	vecfill.2784
	addi	s10, s10, -5
	lw	ra, 4(s10)
	lw	a0, 3(s10)
	addi	a0, a0, -1
	lw	a1, 2(s10)
	add	t5, a1, a0
	lw	fa0, 0(t5)
	sw	a0, 4(s10)
	sw	ra, 5(s10)
	addi	s10, s10, 6
	jal	sgn.2771
	addi	s10, s10, -6
	lw	ra, 5(s10)
	lw	fa1, 1(s10)
	fsub	fa0, fa1, fa0
	lw	a0, 4(s10)
	lw	a1, 0(s10)
	add	t5, a1, a0
	sw	fa0, 0(t5)
	ret
get_nvector_plane.3079:
	la	a1, min_caml_nvector
	lw	a2, 4(a0)
	lw	fa0, 0(a2)
	mv	fa1, zero
	fsub	fa0, fa1, fa0
	sw	fa0, 0(a1)
	lw	a2, 4(a0)
	lw	fa0, 1(a2)
	fsub	fa0, fa1, fa0
	sw	fa0, 1(a1)
	lw	a0, 4(a0)
	lw	fa0, 2(a0)
	fsub	fa0, fa1, fa0
	sw	fa0, 2(a1)
	ret
get_nvector_second.3081:
	la	a1, min_caml_intersection_point
	lw	fa0, 0(a1)
	lw	a2, 5(a0)
	lw	fa1, 0(a2)
	fsub	fa0, fa0, fa1
	lw	fa1, 1(a1)
	lw	a2, 5(a0)
	lw	fa2, 1(a2)
	fsub	fa1, fa1, fa2
	lw	fa2, 2(a1)
	lw	a1, 5(a0)
	lw	fa3, 2(a1)
	fsub	fa2, fa2, fa3
	lw	a1, 4(a0)
	lw	fa3, 0(a1)
	fmul	fa3, fa0, fa3
	lw	a1, 4(a0)
	lw	fa4, 1(a1)
	fmul	fa4, fa1, fa4
	lw	a1, 4(a0)
	lw	fa5, 2(a1)
	fmul	fa5, fa2, fa5
	lw	a1, 3(a0)
	mv	t5, zero
	bne	a1, t5, beq_else.10227
	la	a1, min_caml_nvector
	sw	fa3, 0(a1)
	sw	fa4, 1(a1)
	sw	fa5, 2(a1)
	j	beq_cont.10228
beq_else.10227:
	la	a1, min_caml_nvector
	lw	a2, 9(a0)
	lw	fa6, 2(a2)
	fmul	fa6, fa1, fa6
	lw	a2, 9(a0)
	lw	fa7, 1(a2)
	fmul	fa7, fa2, fa7
	fadd	fa6, fa6, fa7
	lui	fa7, 258048
	fmul	fa6, fa6, fa7
	fadd	fa3, fa3, fa6
	sw	fa3, 0(a1)
	lw	a2, 9(a0)
	lw	fa3, 2(a2)
	fmul	fa3, fa0, fa3
	lw	a2, 9(a0)
	lw	fa6, 0(a2)
	fmul	fa2, fa2, fa6
	fadd	fa2, fa3, fa2
	fmul	fa2, fa2, fa7
	fadd	fa2, fa4, fa2
	sw	fa2, 1(a1)
	lw	a2, 9(a0)
	lw	fa2, 1(a2)
	fmul	fa0, fa0, fa2
	lw	a2, 9(a0)
	lw	fa2, 0(a2)
	fmul	fa1, fa1, fa2
	fadd	fa0, fa0, fa1
	fmul	fa0, fa0, fa7
	fadd	fa0, fa5, fa0
	sw	fa0, 2(a1)
beq_cont.10228:
	la	a1, min_caml_nvector
	lw	a0, 6(a0)
	mv	t3, a1
	mv	a1, a0
	mv	a0, t3
	j	vecunit_sgn.2792
utexture.3086:
	lw	a2, 0(a0)
	la	a3, min_caml_texture_color
	lw	a4, 8(a0)
	lw	fa0, 0(a4)
	sw	fa0, 0(a3)
	lw	a4, 8(a0)
	lw	fa0, 1(a4)
	sw	fa0, 1(a3)
	lw	a4, 8(a0)
	lw	fa0, 2(a4)
	sw	fa0, 2(a3)
	li	t5, 1
	bne	a2, t5, beq_else.10229
	lw	fa0, 0(a1)
	lw	a2, 5(a0)
	lw	fa1, 0(a2)
	fsub	fa0, fa0, fa1
	lui	fa1, 251085
	addi	fa1, fa1, -819
	fmul	fa2, fa0, fa1
	sw	a3, 0(s10)
	sw	fa1, 1(s10)
	sw	a0, 2(s10)
	sw	a1, 3(s10)
	sw	fa0, 4(s10)
	floor	fa0, fa2
	lui	fa1, 268800
	fmul	fa0, fa0, fa1
	lw	fa2, 4(s10)
	fsub	fa0, fa2, fa0
	lui	fa2, 266752
	fle	t5, fa2, fa0
	bne	t5, zero, beq_else.10230
	li	a0, 1
	j	beq_cont.10231
beq_else.10230:
	mv	a0, zero
beq_cont.10231:
	lw	a1, 3(s10)
	lw	fa0, 2(a1)
	lw	a1, 2(s10)
	lw	a1, 5(a1)
	lw	fa3, 2(a1)
	fsub	fa0, fa0, fa3
	lw	fa3, 1(s10)
	fmul	fa3, fa0, fa3
	sw	a0, 5(s10)
	sw	fa2, 6(s10)
	sw	fa0, 7(s10)
	sw	fa1, 8(s10)
	floor	fa0, fa3
	lw	fa1, 8(s10)
	fmul	fa0, fa0, fa1
	lw	fa1, 7(s10)
	fsub	fa0, fa1, fa0
	lw	fa1, 6(s10)
	fle	t5, fa1, fa0
	bne	t5, zero, beq_else.10232
	li	a0, 1
	j	beq_cont.10233
beq_else.10232:
	mv	a0, zero
beq_cont.10233:
	lw	a1, 5(s10)
	mv	t5, zero
	bne	a1, t5, beq_else.10234
	mv	t5, zero
	bne	a0, t5, beq_else.10236
	lui	fa0, 276464
	j	beq_cont.10237
beq_else.10236:
	mv	fa0, zero
beq_cont.10237:
	j	beq_cont.10235
beq_else.10234:
	mv	t5, zero
	bne	a0, t5, beq_else.10238
	mv	fa0, zero
	j	beq_cont.10239
beq_else.10238:
	lui	fa0, 276464
beq_cont.10239:
beq_cont.10235:
	lw	a0, 0(s10)
	sw	fa0, 1(a0)
	ret
beq_else.10229:
	li	t5, 2
	bne	a2, t5, beq_else.10241
	lw	fa0, 1(a1)
	lui	fa1, 256000
	fmul	fa0, fa0, fa1
	sw	a3, 0(s10)
	sw	ra, 9(s10)
	addi	s10, s10, 10
	jal	sin.2736
	addi	s10, s10, -10
	lw	ra, 9(s10)
	fmul	fa0, fa0, fa0
	lui	fa1, 276464
	fmul	fa2, fa1, fa0
	lw	a0, 0(s10)
	sw	fa2, 0(a0)
	lui	fa2, 260096
	fsub	fa0, fa2, fa0
	fmul	fa0, fa1, fa0
	sw	fa0, 1(a0)
	ret
beq_else.10241:
	li	t5, 3
	bne	a2, t5, beq_else.10243
	lw	fa0, 0(a1)
	lw	a2, 5(a0)
	lw	fa1, 0(a2)
	fsub	fa0, fa0, fa1
	lw	fa1, 2(a1)
	lw	a0, 5(a0)
	lw	fa2, 2(a0)
	fsub	fa1, fa1, fa2
	fmul	fa0, fa0, fa0
	fmul	fa1, fa1, fa1
	fadd	fa0, fa0, fa1
	sw	a3, 0(s10)
	fsqrt	fa0, fa0
	lui	fa1, 266752
	fdiv	fa0, fa0, fa1
	sw	fa0, 9(s10)
	floor	fa0, fa0
	lw	fa1, 9(s10)
	fsub	fa0, fa1, fa0
	lui	fa1, 263313
	addi	fa1, fa1, -37
	fmul	fa0, fa0, fa1
	sw	ra, 10(s10)
	addi	s10, s10, 11
	jal	cos.2738
	addi	s10, s10, -11
	lw	ra, 10(s10)
	fmul	fa0, fa0, fa0
	lui	fa1, 276464
	fmul	fa2, fa0, fa1
	lw	a0, 0(s10)
	sw	fa2, 1(a0)
	lui	fa2, 260096
	fsub	fa0, fa2, fa0
	fmul	fa0, fa0, fa1
	sw	fa0, 2(a0)
	ret
beq_else.10243:
	li	t5, 4
	bne	a2, t5, beq_else.10245
	lw	fa0, 0(a1)
	lw	a2, 5(a0)
	lw	fa1, 0(a2)
	fsub	fa0, fa0, fa1
	lw	a2, 4(a0)
	lw	fa1, 0(a2)
	sw	a3, 0(s10)
	sw	a0, 2(s10)
	sw	a1, 3(s10)
	sw	fa0, 10(s10)
	fsqrt	fa0, fa1
	lw	fa1, 10(s10)
	fmul	fa0, fa1, fa0
	lw	a0, 3(s10)
	lw	fa1, 2(a0)
	lw	a1, 2(s10)
	lw	a2, 5(a1)
	lw	fa2, 2(a2)
	fsub	fa1, fa1, fa2
	lw	a2, 4(a1)
	lw	fa2, 2(a2)
	sw	fa0, 11(s10)
	sw	fa1, 12(s10)
	fsqrt	fa0, fa2
	lw	fa1, 12(s10)
	fmul	fa0, fa1, fa0
	lw	fa1, 11(s10)
	fmul	fa2, fa1, fa1
	fmul	fa3, fa0, fa0
	fadd	fa2, fa2, fa3
	mv	fa3, zero
	fle	t5, fa1, fa3
	bne	t5, zero, beq_else.10246
	li	a0, 1
	j	beq_cont.10247
beq_else.10246:
	mv	a0, zero
beq_cont.10247:
	mv	t5, zero
	bne	a0, t5, beq_else.10248
	fsub	fa4, fa3, fa1
	j	beq_cont.10249
beq_else.10248:
	mv	fa4, fa1
beq_cont.10249:
	lui	fa5, 232731
	addi	fa5, fa5, 1815
	fle	t5, fa5, fa4
	bne	t5, zero, beq_else.10250
	li	a0, 1
	j	beq_cont.10251
beq_else.10250:
	mv	a0, zero
beq_cont.10251:
	sw	fa5, 13(s10)
	sw	fa3, 14(s10)
	sw	fa2, 15(s10)
	mv	t5, zero
	bne	a0, t5, beq_else.10252
	fdiv	fa0, fa0, fa1
	fle	t5, fa0, fa3
	bne	t5, zero, beq_else.10254
	li	a0, 1
	j	beq_cont.10255
beq_else.10254:
	mv	a0, zero
beq_cont.10255:
	mv	t5, zero
	bne	a0, t5, beq_else.10256
	fsub	fa0, fa3, fa0
	j	beq_cont.10257
beq_else.10256:
beq_cont.10257:
	sw	ra, 16(s10)
	addi	s10, s10, 17
	jal	atan.2742
	addi	s10, s10, -17
	lw	ra, 16(s10)
	lui	fa1, 270080
	fmul	fa0, fa0, fa1
	lui	fa1, 263313
	addi	fa1, fa1, -37
	fdiv	fa0, fa0, fa1
	j	beq_cont.10253
beq_else.10252:
	lui	fa0, 268032
beq_cont.10253:
	sw	fa0, 16(s10)
	floor	fa0, fa0
	lw	fa1, 16(s10)
	fsub	fa0, fa1, fa0
	lw	a0, 3(s10)
	lw	fa1, 1(a0)
	lw	a0, 2(s10)
	lw	a1, 5(a0)
	lw	fa2, 1(a1)
	fsub	fa1, fa1, fa2
	lw	a0, 4(a0)
	lw	fa2, 1(a0)
	sw	fa0, 17(s10)
	sw	fa1, 18(s10)
	fsqrt	fa0, fa2
	lw	fa1, 18(s10)
	fmul	fa0, fa1, fa0
	lw	fa1, 14(s10)
	lw	fa2, 15(s10)
	fle	t5, fa2, fa1
	bne	t5, zero, beq_else.10258
	li	a0, 1
	j	beq_cont.10259
beq_else.10258:
	mv	a0, zero
beq_cont.10259:
	mv	t5, zero
	bne	a0, t5, beq_else.10260
	fsub	fa3, fa1, fa2
	j	beq_cont.10261
beq_else.10260:
	mv	fa3, fa2
beq_cont.10261:
	lw	fa4, 13(s10)
	fle	t5, fa4, fa3
	bne	t5, zero, beq_else.10262
	li	a0, 1
	j	beq_cont.10263
beq_else.10262:
	mv	a0, zero
beq_cont.10263:
	mv	t5, zero
	bne	a0, t5, beq_else.10264
	fdiv	fa0, fa0, fa2
	fle	t5, fa0, fa1
	bne	t5, zero, beq_else.10266
	li	a0, 1
	j	beq_cont.10267
beq_else.10266:
	mv	a0, zero
beq_cont.10267:
	mv	t5, zero
	bne	a0, t5, beq_else.10268
	fsub	fa0, fa1, fa0
	j	beq_cont.10269
beq_else.10268:
beq_cont.10269:
	sw	ra, 19(s10)
	addi	s10, s10, 20
	jal	atan.2742
	addi	s10, s10, -20
	lw	ra, 19(s10)
	lui	fa1, 270080
	fmul	fa0, fa0, fa1
	lui	fa1, 263313
	addi	fa1, fa1, -37
	fdiv	fa0, fa0, fa1
	j	beq_cont.10265
beq_else.10264:
	lui	fa0, 268032
beq_cont.10265:
	sw	fa0, 19(s10)
	floor	fa0, fa0
	lw	fa1, 19(s10)
	fsub	fa0, fa1, fa0
	lui	fa1, 254362
	addi	fa1, fa1, -1638
	lui	fa2, 258048
	lw	fa3, 17(s10)
	fsub	fa3, fa2, fa3
	fmul	fa3, fa3, fa3
	fsub	fa1, fa1, fa3
	fsub	fa0, fa2, fa0
	fmul	fa0, fa0, fa0
	fsub	fa0, fa1, fa0
	lw	fa1, 14(s10)
	fle	t5, fa1, fa0
	bne	t5, zero, beq_else.10270
	li	a0, 1
	j	beq_cont.10271
beq_else.10270:
	mv	a0, zero
beq_cont.10271:
	mv	t5, zero
	bne	a0, t5, beq_else.10272
	j	beq_cont.10273
beq_else.10272:
	mv	fa0, zero
beq_cont.10273:
	lui	fa1, 276464
	fmul	fa0, fa1, fa0
	lui	fa1, 256410
	addi	fa1, fa1, -1638
	fdiv	fa0, fa0, fa1
	lw	a0, 0(s10)
	sw	fa0, 2(a0)
	ret
beq_else.10245:
	ret
add_light.3089:
	mv	fa3, zero
	fle	t5, fa0, fa3
	bne	t5, zero, beq_else.10276
	li	a0, 1
	j	beq_cont.10277
beq_else.10276:
	mv	a0, zero
beq_cont.10277:
	sw	fa2, 0(s10)
	sw	fa3, 1(s10)
	sw	fa1, 2(s10)
	mv	t5, zero
	bne	a0, t5, beq_else.10278
	j	beq_cont.10279
beq_else.10278:
	la	a0, min_caml_rgb
	la	a1, min_caml_texture_color
	sw	ra, 3(s10)
	addi	s10, s10, 4
	jal	vecaccum.2803
	addi	s10, s10, -4
	lw	ra, 3(s10)
beq_cont.10279:
	lw	fa0, 1(s10)
	lw	fa1, 2(s10)
	fle	t5, fa1, fa0
	bne	t5, zero, beq_else.10280
	li	a0, 1
	j	beq_cont.10281
beq_else.10280:
	mv	a0, zero
beq_cont.10281:
	mv	t5, zero
	bne	a0, t5, beq_else.10282
	ret
beq_else.10282:
	fmul	fa0, fa1, fa1
	fmul	fa0, fa0, fa0
	lw	fa1, 0(s10)
	fmul	fa0, fa0, fa1
	la	a0, min_caml_rgb
	lw	fa1, 0(a0)
	fadd	fa1, fa1, fa0
	sw	fa1, 0(a0)
	lw	fa1, 1(a0)
	fadd	fa1, fa1, fa0
	sw	fa1, 1(a0)
	lw	fa1, 2(a0)
	fadd	fa0, fa1, fa0
	sw	fa0, 2(a0)
	ret
trace_reflections.3093:
	mv	a2, zero
	mv	t5, zero
	blt	a0, t5, bge_else.10285
	la	a3, min_caml_reflections
	add	t5, a3, a0
	lw	a3, 0(t5)
	lw	a4, 1(a3)
	sw	a0, 0(s10)
	sw	fa1, 1(s10)
	sw	a1, 2(s10)
	sw	fa0, 3(s10)
	sw	a4, 4(s10)
	sw	a2, 5(s10)
	sw	a3, 6(s10)
	mv	a0, a4
	sw	ra, 7(s10)
	addi	s10, s10, 8
	jal	judge_intersection_fast.3075
	addi	s10, s10, -8
	lw	ra, 7(s10)
	mv	t5, zero
	bne	a0, t5, beq_else.10286
	j	beq_cont.10287
beq_else.10286:
	la	a0, min_caml_intersected_object_id
	lw	a0, 0(a0)
	slli	a0, a0, 2
	la	a1, min_caml_intsec_rectside
	lw	a1, 0(a1)
	add	a0, a0, a1
	lw	a1, 6(s10)
	lw	a2, 0(a1)
	bne	a0, a2, beq_else.10288
	la	a0, min_caml_or_net
	lw	a0, 0(a0)
	lw	a2, 5(s10)
	mv	a1, a0
	mv	a0, a2
	sw	ra, 7(s10)
	addi	s10, s10, 8
	jal	shadow_check_one_or_matrix.3046
	addi	s10, s10, -8
	lw	ra, 7(s10)
	mv	t5, zero
	bne	a0, t5, beq_else.10290
	la	a0, min_caml_nvector
	lw	a1, 4(s10)
	lw	a2, 0(a1)
	mv	a1, a2
	sw	ra, 7(s10)
	addi	s10, s10, 8
	jal	veciprod.2795
	addi	s10, s10, -8
	lw	ra, 7(s10)
	lw	a0, 6(s10)
	lw	fa1, 2(a0)
	lw	fa2, 3(s10)
	fmul	fa3, fa1, fa2
	fmul	fa0, fa3, fa0
	lw	a0, 4(s10)
	lw	a1, 0(a0)
	lw	a0, 2(s10)
	sw	fa0, 7(s10)
	sw	fa1, 8(s10)
	sw	ra, 9(s10)
	addi	s10, s10, 10
	jal	veciprod.2795
	addi	s10, s10, -10
	lw	ra, 9(s10)
	lw	fa1, 8(s10)
	fmul	fa1, fa1, fa0
	lw	fa0, 7(s10)
	lw	fa2, 1(s10)
	sw	ra, 9(s10)
	addi	s10, s10, 10
	jal	add_light.3089
	addi	s10, s10, -10
	lw	ra, 9(s10)
	j	beq_cont.10291
beq_else.10290:
beq_cont.10291:
	j	beq_cont.10289
beq_else.10288:
beq_cont.10289:
beq_cont.10287:
	lw	a0, 0(s10)
	addi	a0, a0, -1
	lw	fa0, 3(s10)
	lw	fa1, 1(s10)
	lw	a1, 2(s10)
	j	trace_reflections.3093
bge_else.10285:
	ret
trace_ray.3098:
	li	t5, 4
	bgt	a0, t5, ble_else.10293
	lw	a3, 2(a2)
	sw	fa1, 0(s10)
	sw	a2, 1(s10)
	sw	fa0, 2(s10)
	sw	a1, 3(s10)
	sw	a0, 4(s10)
	sw	a3, 5(s10)
	mv	a0, a1
	sw	ra, 6(s10)
	addi	s10, s10, 7
	jal	judge_intersection.3061
	addi	s10, s10, -7
	lw	ra, 6(s10)
	mv	a1, zero
	mv	t5, zero
	bne	a0, t5, beq_else.10294
	li	a0, -1
	lw	a1, 4(s10)
	lw	a2, 5(s10)
	add	t5, a2, a1
	sw	a0, 0(t5)
	mv	t5, zero
	bne	a1, t5, beq_else.10295
	ret
beq_else.10295:
	la	a1, min_caml_light
	lw	a0, 3(s10)
	sw	ra, 6(s10)
	addi	s10, s10, 7
	jal	veciprod.2795
	addi	s10, s10, -7
	lw	ra, 6(s10)
	mv	fa1, zero
	fsub	fa0, fa1, fa0
	fle	t5, fa0, fa1
	bne	t5, zero, beq_else.10297
	li	a0, 1
	j	beq_cont.10298
beq_else.10297:
	mv	a0, zero
beq_cont.10298:
	mv	t5, zero
	bne	a0, t5, beq_else.10299
	ret
beq_else.10299:
	fmul	fa1, fa0, fa0
	fmul	fa0, fa1, fa0
	lw	fa1, 2(s10)
	fmul	fa0, fa0, fa1
	la	a0, min_caml_beam
	lw	fa1, 0(a0)
	fmul	fa0, fa0, fa1
	la	a0, min_caml_rgb
	lw	fa1, 0(a0)
	fadd	fa1, fa1, fa0
	sw	fa1, 0(a0)
	lw	fa1, 1(a0)
	fadd	fa1, fa1, fa0
	sw	fa1, 1(a0)
	lw	fa1, 2(a0)
	fadd	fa0, fa1, fa0
	sw	fa0, 2(a0)
	ret
beq_else.10294:
	la	a0, min_caml_intersected_object_id
	lw	a0, 0(a0)
	la	a2, min_caml_objects
	add	t5, a2, a0
	lw	a2, 0(t5)
	lw	a3, 2(a2)
	lw	a4, 7(a2)
	lw	fa0, 0(a4)
	lw	fa1, 2(s10)
	fmul	fa0, fa0, fa1
	lw	a4, 1(a2)
	li	a5, 1
	sw	a3, 6(s10)
	sw	a1, 7(s10)
	sw	fa0, 8(s10)
	sw	a5, 9(s10)
	sw	a0, 10(s10)
	sw	a2, 11(s10)
	li	t5, 1
	bne	a4, t5, beq_else.10302
	lw	a4, 3(s10)
	mv	a0, a4
	sw	ra, 12(s10)
	addi	s10, s10, 13
	jal	get_nvector_rect.3077
	addi	s10, s10, -13
	lw	ra, 12(s10)
	j	beq_cont.10303
beq_else.10302:
	li	t5, 2
	bne	a4, t5, beq_else.10304
	mv	a0, a2
	sw	ra, 12(s10)
	addi	s10, s10, 13
	jal	get_nvector_plane.3079
	addi	s10, s10, -13
	lw	ra, 12(s10)
	j	beq_cont.10305
beq_else.10304:
	mv	a0, a2
	sw	ra, 12(s10)
	addi	s10, s10, 13
	jal	get_nvector_second.3081
	addi	s10, s10, -13
	lw	ra, 12(s10)
beq_cont.10305:
beq_cont.10303:
	la	a0, min_caml_startp
	la	a1, min_caml_intersection_point
	sw	a1, 12(s10)
	sw	ra, 13(s10)
	addi	s10, s10, 14
	jal	veccpy.2789
	addi	s10, s10, -14
	lw	ra, 13(s10)
	lw	a0, 11(s10)
	lw	a1, 12(s10)
	sw	ra, 13(s10)
	addi	s10, s10, 14
	jal	utexture.3086
	addi	s10, s10, -14
	lw	ra, 13(s10)
	lw	a0, 10(s10)
	slli	a0, a0, 2
	la	a1, min_caml_intsec_rectside
	lw	a1, 0(a1)
	add	a0, a0, a1
	lw	a1, 4(s10)
	lw	a2, 5(s10)
	add	t5, a2, a1
	sw	a0, 0(t5)
	lw	a0, 1(s10)
	lw	a3, 1(a0)
	add	t5, a3, a1
	lw	a3, 0(t5)
	lw	a4, 12(s10)
	mv	a1, a4
	mv	a0, a3
	sw	ra, 13(s10)
	addi	s10, s10, 14
	jal	veccpy.2789
	addi	s10, s10, -14
	lw	ra, 13(s10)
	lw	a0, 1(s10)
	lw	a1, 3(a0)
	lw	a2, 11(s10)
	lw	a3, 7(a2)
	lw	fa0, 0(a3)
	lui	fa1, 258048
	fle	t5, fa1, fa0
	bne	t5, zero, beq_else.10306
	li	a3, 1
	j	beq_cont.10307
beq_else.10306:
	mv	a3, zero
beq_cont.10307:
	mv	t5, zero
	bne	a3, t5, beq_else.10308
	lw	a3, 4(s10)
	lw	fa0, 9(s10)
	add	t5, a1, a3
	sw	fa0, 0(t5)
	lw	a1, 4(a0)
	add	t5, a1, a3
	lw	a4, 0(t5)
	la	a5, min_caml_texture_color
	sw	a1, 13(s10)
	mv	a1, a5
	mv	a0, a4
	sw	ra, 14(s10)
	addi	s10, s10, 15
	jal	veccpy.2789
	addi	s10, s10, -15
	lw	ra, 14(s10)
	lw	a0, 4(s10)
	lw	a1, 13(s10)
	add	t5, a1, a0
	lw	a1, 0(t5)
	lui	fa0, 243712
	lw	fa1, 8(s10)
	fmul	fa0, fa0, fa1
	mv	a0, a1
	sw	ra, 14(s10)
	addi	s10, s10, 15
	jal	vecscale.2810
	addi	s10, s10, -15
	lw	ra, 14(s10)
	lw	a0, 1(s10)
	lw	a1, 7(a0)
	lw	a2, 4(s10)
	add	t5, a1, a2
	lw	a1, 0(t5)
	la	a3, min_caml_nvector
	mv	a0, a1
	mv	a1, a3
	sw	ra, 14(s10)
	addi	s10, s10, 15
	jal	veccpy.2789
	addi	s10, s10, -15
	lw	ra, 14(s10)
	j	beq_cont.10309
beq_else.10308:
	lw	a3, 4(s10)
	lw	fa0, 7(s10)
	add	t5, a1, a3
	sw	fa0, 0(t5)
beq_cont.10309:
	lui	fa0, 786432
	la	a1, min_caml_nvector
	lw	a0, 3(s10)
	sw	a1, 14(s10)
	sw	fa0, 15(s10)
	sw	ra, 16(s10)
	addi	s10, s10, 17
	jal	veciprod.2795
	addi	s10, s10, -17
	lw	ra, 16(s10)
	lw	fa1, 15(s10)
	fmul	fa0, fa1, fa0
	lw	a0, 3(s10)
	lw	a1, 14(s10)
	sw	ra, 16(s10)
	addi	s10, s10, 17
	jal	vecaccum.2803
	addi	s10, s10, -17
	lw	ra, 16(s10)
	lw	a0, 11(s10)
	lw	a1, 7(a0)
	lw	fa0, 1(a1)
	lw	fa1, 2(s10)
	fmul	fa0, fa1, fa0
	la	a1, min_caml_or_net
	lw	a1, 0(a1)
	lw	a2, 7(s10)
	sw	fa0, 16(s10)
	mv	a0, a2
	sw	ra, 17(s10)
	addi	s10, s10, 18
	jal	shadow_check_one_or_matrix.3046
	addi	s10, s10, -18
	lw	ra, 17(s10)
	mv	t5, zero
	bne	a0, t5, beq_else.10310
	la	a1, min_caml_light
	lw	a0, 14(s10)
	sw	a1, 17(s10)
	sw	ra, 18(s10)
	addi	s10, s10, 19
	jal	veciprod.2795
	addi	s10, s10, -19
	lw	ra, 18(s10)
	mv	fa1, zero
	fsub	fa0, fa1, fa0
	lw	fa2, 8(s10)
	fmul	fa0, fa0, fa2
	lw	a0, 3(s10)
	lw	a1, 17(s10)
	sw	fa0, 18(s10)
	sw	fa1, 19(s10)
	sw	ra, 20(s10)
	addi	s10, s10, 21
	jal	veciprod.2795
	addi	s10, s10, -21
	lw	ra, 20(s10)
	lw	fa1, 19(s10)
	fsub	fa1, fa1, fa0
	lw	fa0, 18(s10)
	lw	fa2, 16(s10)
	sw	ra, 20(s10)
	addi	s10, s10, 21
	jal	add_light.3089
	addi	s10, s10, -21
	lw	ra, 20(s10)
	j	beq_cont.10311
beq_else.10310:
beq_cont.10311:
	lw	a0, 12(s10)
	sw	ra, 20(s10)
	addi	s10, s10, 21
	jal	setup_startp.3012
	addi	s10, s10, -21
	lw	ra, 20(s10)
	la	a0, min_caml_n_reflections
	lw	a0, 0(a0)
	addi	a0, a0, -1
	lw	fa0, 8(s10)
	lw	fa1, 16(s10)
	lw	a1, 3(s10)
	sw	ra, 20(s10)
	addi	s10, s10, 21
	jal	trace_reflections.3093
	addi	s10, s10, -21
	lw	ra, 20(s10)
	lui	fa0, 253133
	addi	fa0, fa0, -819
	lw	fa1, 2(s10)
	fle	t5, fa1, fa0
	bne	t5, zero, beq_else.10312
	li	a0, 1
	j	beq_cont.10313
beq_else.10312:
	mv	a0, zero
beq_cont.10313:
	mv	t5, zero
	bne	a0, t5, beq_else.10314
	ret
beq_else.10314:
	lw	a0, 4(s10)
	li	t5, 4
	blt	a0, t5, bge_else.10316
	j	bge_cont.10317
bge_else.10316:
	addi	a1, a0, 1
	li	a2, -1
	lw	a3, 5(s10)
	add	t5, a3, a1
	sw	a2, 0(t5)
bge_cont.10317:
	lw	a1, 6(s10)
	li	t5, 2
	bne	a1, t5, beq_else.10318
	lui	fa0, 260096
	lw	a1, 11(s10)
	lw	a1, 7(a1)
	lw	fa2, 0(a1)
	fsub	fa0, fa0, fa2
	fmul	fa0, fa1, fa0
	addi	a0, a0, 1
	la	a1, min_caml_tmin
	lw	fa1, 0(a1)
	lw	fa2, 0(s10)
	fadd	fa1, fa2, fa1
	lw	a1, 3(s10)
	lw	a2, 1(s10)
	j	trace_ray.3098
beq_else.10318:
	ret
ble_else.10293:
	ret
trace_diffuse_ray.3104:
	sw	fa0, 0(s10)
	sw	a0, 1(s10)
	sw	ra, 2(s10)
	addi	s10, s10, 3
	jal	judge_intersection_fast.3075
	addi	s10, s10, -3
	lw	ra, 2(s10)
	mv	a1, zero
	mv	t5, zero
	bne	a0, t5, beq_else.10321
	ret
beq_else.10321:
	la	a0, min_caml_objects
	la	a2, min_caml_intersected_object_id
	lw	a2, 0(a2)
	add	t5, a0, a2
	lw	a0, 0(t5)
	lw	a2, 1(s10)
	lw	a2, 0(a2)
	lw	a3, 1(a0)
	sw	a1, 2(s10)
	sw	a0, 3(s10)
	li	t5, 1
	bne	a3, t5, beq_else.10323
	mv	a0, a2
	sw	ra, 4(s10)
	addi	s10, s10, 5
	jal	get_nvector_rect.3077
	addi	s10, s10, -5
	lw	ra, 4(s10)
	j	beq_cont.10324
beq_else.10323:
	li	t5, 2
	bne	a3, t5, beq_else.10325
	sw	ra, 4(s10)
	addi	s10, s10, 5
	jal	get_nvector_plane.3079
	addi	s10, s10, -5
	lw	ra, 4(s10)
	j	beq_cont.10326
beq_else.10325:
	sw	ra, 4(s10)
	addi	s10, s10, 5
	jal	get_nvector_second.3081
	addi	s10, s10, -5
	lw	ra, 4(s10)
beq_cont.10326:
beq_cont.10324:
	la	a1, min_caml_intersection_point
	lw	a0, 3(s10)
	sw	ra, 4(s10)
	addi	s10, s10, 5
	jal	utexture.3086
	addi	s10, s10, -5
	lw	ra, 4(s10)
	la	a0, min_caml_or_net
	lw	a1, 0(a0)
	lw	a0, 2(s10)
	sw	ra, 4(s10)
	addi	s10, s10, 5
	jal	shadow_check_one_or_matrix.3046
	addi	s10, s10, -5
	lw	ra, 4(s10)
	mv	t5, zero
	bne	a0, t5, beq_else.10327
	la	a0, min_caml_nvector
	la	a1, min_caml_light
	sw	ra, 4(s10)
	addi	s10, s10, 5
	jal	veciprod.2795
	addi	s10, s10, -5
	lw	ra, 4(s10)
	mv	fa1, zero
	fsub	fa0, fa1, fa0
	fle	t5, fa0, fa1
	bne	t5, zero, beq_else.10328
	li	a0, 1
	j	beq_cont.10329
beq_else.10328:
	mv	a0, zero
beq_cont.10329:
	mv	t5, zero
	bne	a0, t5, beq_else.10330
	mv	fa0, zero
	j	beq_cont.10331
beq_else.10330:
beq_cont.10331:
	la	a0, min_caml_diffuse_ray
	lw	fa1, 0(s10)
	fmul	fa0, fa1, fa0
	lw	a1, 3(s10)
	lw	a1, 7(a1)
	lw	fa1, 0(a1)
	fmul	fa0, fa0, fa1
	la	a1, min_caml_texture_color
	j	vecaccum.2803
beq_else.10327:
	ret
iter_trace_diffuse_rays.3107:
	mv	t5, zero
	blt	a3, t5, bge_else.10333
	add	t5, a0, a3
	lw	a4, 0(t5)
	lw	a4, 0(a4)
	sw	a2, 0(s10)
	sw	a1, 1(s10)
	sw	a3, 2(s10)
	sw	a0, 3(s10)
	mv	a0, a4
	sw	ra, 4(s10)
	addi	s10, s10, 5
	jal	veciprod.2795
	addi	s10, s10, -5
	lw	ra, 4(s10)
	mv	fa1, zero
	fle	t5, fa1, fa0
	bne	t5, zero, beq_else.10334
	li	a0, 1
	j	beq_cont.10335
beq_else.10334:
	mv	a0, zero
beq_cont.10335:
	mv	t5, zero
	bne	a0, t5, beq_else.10336
	lw	a0, 2(s10)
	lw	a1, 3(s10)
	add	t5, a1, a0
	lw	a2, 0(t5)
	lui	fa1, 274784
	fdiv	fa0, fa0, fa1
	mv	a0, a2
	sw	ra, 4(s10)
	addi	s10, s10, 5
	jal	trace_diffuse_ray.3104
	addi	s10, s10, -5
	lw	ra, 4(s10)
	j	beq_cont.10337
beq_else.10336:
	lw	a0, 2(s10)
	addi	a1, a0, 1
	lw	a2, 3(s10)
	add	t5, a2, a1
	lw	a1, 0(t5)
	lui	fa1, 799072
	fdiv	fa0, fa0, fa1
	mv	a0, a1
	sw	ra, 4(s10)
	addi	s10, s10, 5
	jal	trace_diffuse_ray.3104
	addi	s10, s10, -5
	lw	ra, 4(s10)
beq_cont.10337:
	lw	a0, 2(s10)
	addi	a3, a0, -2
	lw	a0, 3(s10)
	lw	a1, 1(s10)
	lw	a2, 0(s10)
	j	iter_trace_diffuse_rays.3107
bge_else.10333:
	ret
trace_diffuse_ray_80percent.3116:
	sw	a1, 0(s10)
	sw	a2, 1(s10)
	sw	a0, 2(s10)
	mv	t5, zero
	bne	a0, t5, beq_else.10339
	j	beq_cont.10340
beq_else.10339:
	la	a3, min_caml_dirvecs
	lw	a3, 0(a3)
	sw	a3, 3(s10)
	mv	a0, a2
	sw	ra, 4(s10)
	addi	s10, s10, 5
	jal	setup_startp.3012
	addi	s10, s10, -5
	lw	ra, 4(s10)
	li	a3, 118
	lw	a0, 3(s10)
	lw	a1, 0(s10)
	lw	a2, 1(s10)
	sw	ra, 4(s10)
	addi	s10, s10, 5
	jal	iter_trace_diffuse_rays.3107
	addi	s10, s10, -5
	lw	ra, 4(s10)
beq_cont.10340:
	lw	a0, 2(s10)
	li	t5, 1
	bne	a0, t5, beq_else.10341
	j	beq_cont.10342
beq_else.10341:
	la	a1, min_caml_dirvecs
	lw	a1, 1(a1)
	lw	a2, 1(s10)
	sw	a1, 4(s10)
	mv	a0, a2
	sw	ra, 5(s10)
	addi	s10, s10, 6
	jal	setup_startp.3012
	addi	s10, s10, -6
	lw	ra, 5(s10)
	li	a3, 118
	lw	a0, 4(s10)
	lw	a1, 0(s10)
	lw	a2, 1(s10)
	sw	ra, 5(s10)
	addi	s10, s10, 6
	jal	iter_trace_diffuse_rays.3107
	addi	s10, s10, -6
	lw	ra, 5(s10)
beq_cont.10342:
	lw	a0, 2(s10)
	li	t5, 2
	bne	a0, t5, beq_else.10343
	j	beq_cont.10344
beq_else.10343:
	la	a1, min_caml_dirvecs
	lw	a1, 2(a1)
	lw	a2, 1(s10)
	sw	a1, 5(s10)
	mv	a0, a2
	sw	ra, 6(s10)
	addi	s10, s10, 7
	jal	setup_startp.3012
	addi	s10, s10, -7
	lw	ra, 6(s10)
	li	a3, 118
	lw	a0, 5(s10)
	lw	a1, 0(s10)
	lw	a2, 1(s10)
	sw	ra, 6(s10)
	addi	s10, s10, 7
	jal	iter_trace_diffuse_rays.3107
	addi	s10, s10, -7
	lw	ra, 6(s10)
beq_cont.10344:
	lw	a0, 2(s10)
	li	t5, 3
	bne	a0, t5, beq_else.10345
	j	beq_cont.10346
beq_else.10345:
	la	a1, min_caml_dirvecs
	lw	a1, 3(a1)
	lw	a2, 1(s10)
	sw	a1, 6(s10)
	mv	a0, a2
	sw	ra, 7(s10)
	addi	s10, s10, 8
	jal	setup_startp.3012
	addi	s10, s10, -8
	lw	ra, 7(s10)
	li	a3, 118
	lw	a0, 6(s10)
	lw	a1, 0(s10)
	lw	a2, 1(s10)
	sw	ra, 7(s10)
	addi	s10, s10, 8
	jal	iter_trace_diffuse_rays.3107
	addi	s10, s10, -8
	lw	ra, 7(s10)
beq_cont.10346:
	lw	a0, 2(s10)
	li	t5, 4
	bne	a0, t5, beq_else.10347
	ret
beq_else.10347:
	la	a0, min_caml_dirvecs
	lw	a0, 4(a0)
	lw	a1, 1(s10)
	sw	a0, 7(s10)
	mv	a0, a1
	sw	ra, 8(s10)
	addi	s10, s10, 9
	jal	setup_startp.3012
	addi	s10, s10, -9
	lw	ra, 8(s10)
	li	a3, 118
	lw	a0, 7(s10)
	lw	a1, 0(s10)
	lw	a2, 1(s10)
	j	iter_trace_diffuse_rays.3107
calc_diffuse_using_1point.3120:
	lw	a2, 5(a0)
	lw	a3, 7(a0)
	lw	a4, 1(a0)
	lw	a5, 4(a0)
	la	a6, min_caml_diffuse_ray
	add	t5, a2, a1
	lw	a2, 0(t5)
	sw	a6, 0(s10)
	sw	a5, 1(s10)
	sw	a4, 2(s10)
	sw	a1, 3(s10)
	sw	a3, 4(s10)
	sw	a0, 5(s10)
	mv	a1, a2
	mv	a0, a6
	sw	ra, 6(s10)
	addi	s10, s10, 7
	jal	veccpy.2789
	addi	s10, s10, -7
	lw	ra, 6(s10)
	lw	a0, 5(s10)
	lw	a0, 6(a0)
	lw	a0, 0(a0)
	lw	a1, 3(s10)
	lw	a2, 4(s10)
	add	t5, a2, a1
	lw	a2, 0(t5)
	lw	a3, 2(s10)
	add	t5, a3, a1
	lw	a3, 0(t5)
	mv	a1, a2
	mv	a2, a3
	sw	ra, 6(s10)
	addi	s10, s10, 7
	jal	trace_diffuse_ray_80percent.3116
	addi	s10, s10, -7
	lw	ra, 6(s10)
	la	a0, min_caml_rgb
	lw	a1, 3(s10)
	lw	a2, 1(s10)
	add	t5, a2, a1
	lw	a1, 0(t5)
	lw	a2, 0(s10)
	j	vecaccumv.2813
calc_diffuse_using_5points.3123:
	add	t5, a1, a0
	lw	a1, 0(t5)
	lw	a1, 5(a1)
	addi	a5, a0, -1
	add	t5, a2, a5
	lw	a5, 0(t5)
	lw	a5, 5(a5)
	add	t5, a2, a0
	lw	a6, 0(t5)
	lw	a6, 5(a6)
	addi	a7, a0, 1
	add	t5, a2, a7
	lw	a7, 0(t5)
	lw	a7, 5(a7)
	add	t5, a3, a0
	lw	a3, 0(t5)
	lw	a3, 5(a3)
	la	t0, min_caml_diffuse_ray
	add	t5, a1, a4
	lw	a1, 0(t5)
	sw	a0, 0(s10)
	sw	a2, 1(s10)
	sw	a3, 2(s10)
	sw	a7, 3(s10)
	sw	a6, 4(s10)
	sw	t0, 5(s10)
	sw	a4, 6(s10)
	sw	a5, 7(s10)
	mv	a0, t0
	sw	ra, 8(s10)
	addi	s10, s10, 9
	jal	veccpy.2789
	addi	s10, s10, -9
	lw	ra, 8(s10)
	lw	a0, 6(s10)
	lw	a1, 7(s10)
	add	t5, a1, a0
	lw	a1, 0(t5)
	lw	a2, 5(s10)
	mv	a0, a2
	sw	ra, 8(s10)
	addi	s10, s10, 9
	jal	vecadd.2807
	addi	s10, s10, -9
	lw	ra, 8(s10)
	lw	a0, 6(s10)
	lw	a1, 4(s10)
	add	t5, a1, a0
	lw	a1, 0(t5)
	lw	a2, 5(s10)
	mv	a0, a2
	sw	ra, 8(s10)
	addi	s10, s10, 9
	jal	vecadd.2807
	addi	s10, s10, -9
	lw	ra, 8(s10)
	lw	a0, 6(s10)
	lw	a1, 3(s10)
	add	t5, a1, a0
	lw	a1, 0(t5)
	lw	a2, 5(s10)
	mv	a0, a2
	sw	ra, 8(s10)
	addi	s10, s10, 9
	jal	vecadd.2807
	addi	s10, s10, -9
	lw	ra, 8(s10)
	lw	a0, 6(s10)
	lw	a1, 2(s10)
	add	t5, a1, a0
	lw	a1, 0(t5)
	lw	a2, 5(s10)
	mv	a0, a2
	sw	ra, 8(s10)
	addi	s10, s10, 9
	jal	vecadd.2807
	addi	s10, s10, -9
	lw	ra, 8(s10)
	lw	a0, 0(s10)
	lw	a1, 1(s10)
	add	t5, a1, a0
	lw	a0, 0(t5)
	lw	a0, 4(a0)
	la	a1, min_caml_rgb
	lw	a2, 6(s10)
	add	t5, a0, a2
	lw	a0, 0(t5)
	lw	a2, 5(s10)
	mv	t3, a1
	mv	a1, a0
	mv	a0, t3
	j	vecaccumv.2813
do_without_neighbors.3129:
	li	t5, 4
	bgt	a1, t5, ble_else.10349
	lw	a2, 2(a0)
	add	t5, a2, a1
	lw	a2, 0(t5)
	mv	t5, zero
	blt	a2, t5, bge_else.10350
	lw	a2, 3(a0)
	add	t5, a2, a1
	lw	a2, 0(t5)
	sw	a0, 0(s10)
	sw	a1, 1(s10)
	mv	t5, zero
	bne	a2, t5, beq_else.10351
	j	beq_cont.10352
beq_else.10351:
	sw	ra, 2(s10)
	addi	s10, s10, 3
	jal	calc_diffuse_using_1point.3120
	addi	s10, s10, -3
	lw	ra, 2(s10)
beq_cont.10352:
	lw	a0, 1(s10)
	addi	a1, a0, 1
	lw	a0, 0(s10)
	j	do_without_neighbors.3129
bge_else.10350:
	ret
ble_else.10349:
	ret
neighbors_exist.3132:
	la	a2, min_caml_image_size
	lw	a3, 1(a2)
	addi	a4, a1, 1
	bgt	a3, a4, ble_else.10355
	mv	a0, zero
	ret
ble_else.10355:
	mv	t5, zero
	bgt	a1, t5, ble_else.10356
	mv	a0, zero
	ret
ble_else.10356:
	lw	a1, 0(a2)
	addi	a2, a0, 1
	bgt	a1, a2, ble_else.10357
	mv	a0, zero
	ret
ble_else.10357:
	mv	t5, zero
	bgt	a0, t5, ble_else.10358
	mv	a0, zero
	ret
ble_else.10358:
	li	a0, 1
	ret
neighbors_are_available.3139:
	add	t5, a2, a0
	lw	a5, 0(t5)
	lw	a5, 2(a5)
	add	t5, a5, a4
	lw	a5, 0(t5)
	add	t5, a1, a0
	lw	a1, 0(t5)
	lw	a1, 2(a1)
	add	t5, a1, a4
	lw	a1, 0(t5)
	bne	a1, a5, beq_else.10359
	add	t5, a3, a0
	lw	a1, 0(t5)
	lw	a1, 2(a1)
	add	t5, a1, a4
	lw	a1, 0(t5)
	bne	a1, a5, beq_else.10360
	addi	a1, a0, -1
	add	t5, a2, a1
	lw	a1, 0(t5)
	lw	a1, 2(a1)
	add	t5, a1, a4
	lw	a1, 0(t5)
	bne	a1, a5, beq_else.10361
	addi	a0, a0, 1
	add	t5, a2, a0
	lw	a0, 0(t5)
	lw	a0, 2(a0)
	add	t5, a0, a4
	lw	a0, 0(t5)
	bne	a0, a5, beq_else.10362
	li	a0, 1
	ret
beq_else.10362:
	mv	a0, zero
	ret
beq_else.10361:
	mv	a0, zero
	ret
beq_else.10360:
	mv	a0, zero
	ret
beq_else.10359:
	mv	a0, zero
	ret
try_exploit_neighbors.3145:
	add	t5, a3, a0
	lw	a6, 0(t5)
	li	t5, 4
	bgt	a5, t5, ble_else.10363
	lw	a7, 2(a6)
	add	t5, a7, a5
	lw	a7, 0(t5)
	mv	t5, zero
	blt	a7, t5, bge_else.10364
	sw	a1, 0(s10)
	sw	a4, 1(s10)
	sw	a2, 2(s10)
	sw	a6, 3(s10)
	sw	a5, 4(s10)
	sw	a0, 5(s10)
	sw	a3, 6(s10)
	mv	a1, a2
	mv	a2, a3
	mv	a3, a4
	mv	a4, a5
	sw	ra, 7(s10)
	addi	s10, s10, 8
	jal	neighbors_are_available.3139
	addi	s10, s10, -8
	lw	ra, 7(s10)
	mv	t5, zero
	bne	a0, t5, beq_else.10365
	lw	a0, 5(s10)
	lw	a1, 6(s10)
	add	t5, a1, a0
	lw	a0, 0(t5)
	lw	a1, 4(s10)
	j	do_without_neighbors.3129
beq_else.10365:
	lw	a0, 3(s10)
	lw	a0, 3(a0)
	lw	a4, 4(s10)
	add	t5, a0, a4
	lw	a0, 0(t5)
	mv	t5, zero
	bne	a0, t5, beq_else.10366
	j	beq_cont.10367
beq_else.10366:
	lw	a0, 5(s10)
	lw	a1, 2(s10)
	lw	a2, 6(s10)
	lw	a3, 1(s10)
	sw	ra, 7(s10)
	addi	s10, s10, 8
	jal	calc_diffuse_using_5points.3123
	addi	s10, s10, -8
	lw	ra, 7(s10)
beq_cont.10367:
	lw	a0, 4(s10)
	addi	a5, a0, 1
	lw	a0, 5(s10)
	lw	a1, 0(s10)
	lw	a2, 2(s10)
	lw	a3, 6(s10)
	lw	a4, 1(s10)
	j	try_exploit_neighbors.3145
bge_else.10364:
	ret
ble_else.10363:
	ret
write_ppm_header.3152:
	li	a1, 80
	sw	a0, 0(s10)
	out8	a1
	lw	a0, 0(s10)
	addi	a0, a0, 48
	out8	a0
	li	a0, 10
	sw	a0, 1(s10)
	out8	a0
	la	a0, min_caml_image_size
	lw	a1, 0(a0)
	sw	a0, 2(s10)
	mv	a0, a1
	sw	ra, 3(s10)
	addi	s10, s10, 4
	jal	print_int.2766
	addi	s10, s10, -4
	lw	ra, 3(s10)
	li	a0, 32
	sw	a0, 3(s10)
	out8	a0
	lw	a0, 2(s10)
	lw	a0, 1(a0)
	sw	ra, 4(s10)
	addi	s10, s10, 5
	jal	print_int.2766
	addi	s10, s10, -5
	lw	ra, 4(s10)
	lw	a0, 3(s10)
	out8	a0
	li	a0, 255
	sw	ra, 4(s10)
	addi	s10, s10, 5
	jal	print_int.2766
	addi	s10, s10, -5
	lw	ra, 4(s10)
	lw	a0, 1(s10)
	out8	a0
	ret
write_rgb_element_int.3154:
	ftoi	a0, fa0
	li	t5, 255
	bgt	a0, t5, ble_else.10370
	mv	t5, zero
	blt	a0, t5, bge_else.10372
	j	bge_cont.10373
bge_else.10372:
	mv	a0, zero
bge_cont.10373:
	j	ble_cont.10371
ble_else.10370:
	li	a0, 255
ble_cont.10371:
	j	print_int.2766
write_rgb_element_char.3156:
	ftoi	a0, fa0
	li	t5, 255
	bgt	a0, t5, ble_else.10374
	mv	t5, zero
	blt	a0, t5, bge_else.10376
	j	bge_cont.10377
bge_else.10376:
	mv	a0, zero
bge_cont.10377:
	j	ble_cont.10375
ble_else.10374:
	li	a0, 255
ble_cont.10375:
	out8	a0
	ret
write_rgb.3158:
	li	t5, 3
	bne	a0, t5, beq_else.10378
	la	a0, min_caml_rgb
	lw	fa0, 0(a0)
	sw	a0, 0(s10)
	sw	ra, 1(s10)
	addi	s10, s10, 2
	jal	write_rgb_element_int.3154
	addi	s10, s10, -2
	lw	ra, 1(s10)
	li	a0, 32
	sw	a0, 1(s10)
	out8	a0
	lw	a0, 0(s10)
	lw	fa0, 1(a0)
	sw	ra, 2(s10)
	addi	s10, s10, 3
	jal	write_rgb_element_int.3154
	addi	s10, s10, -3
	lw	ra, 2(s10)
	lw	a0, 1(s10)
	out8	a0
	lw	a0, 0(s10)
	lw	fa0, 2(a0)
	sw	ra, 2(s10)
	addi	s10, s10, 3
	jal	write_rgb_element_int.3154
	addi	s10, s10, -3
	lw	ra, 2(s10)
	li	a0, 10
	out8	a0
	ret
beq_else.10378:
	la	a0, min_caml_rgb
	lw	fa0, 0(a0)
	sw	a0, 2(s10)
	sw	ra, 3(s10)
	addi	s10, s10, 4
	jal	write_rgb_element_char.3156
	addi	s10, s10, -4
	lw	ra, 3(s10)
	lw	a0, 2(s10)
	lw	fa0, 1(a0)
	sw	ra, 3(s10)
	addi	s10, s10, 4
	jal	write_rgb_element_char.3156
	addi	s10, s10, -4
	lw	ra, 3(s10)
	lw	a0, 2(s10)
	lw	fa0, 2(a0)
	j	write_rgb_element_char.3156
pretrace_diffuse_rays.3160:
	li	t5, 4
	bgt	a1, t5, ble_else.10379
	lw	a2, 2(a0)
	add	t5, a2, a1
	lw	a2, 0(t5)
	mv	t5, zero
	blt	a2, t5, bge_else.10380
	lw	a2, 3(a0)
	add	t5, a2, a1
	lw	a2, 0(t5)
	sw	a0, 0(s10)
	sw	a1, 1(s10)
	mv	t5, zero
	bne	a2, t5, beq_else.10381
	j	beq_cont.10382
beq_else.10381:
	lw	a2, 6(a0)
	lw	a2, 0(a2)
	la	a3, min_caml_diffuse_ray
	mv	fa0, zero
	sw	a3, 2(s10)
	sw	a2, 3(s10)
	mv	a0, a3
	sw	ra, 4(s10)
	addi	s10, s10, 5
	jal	vecfill.2784
	addi	s10, s10, -5
	lw	ra, 4(s10)
	lw	a0, 0(s10)
	lw	a1, 7(a0)
	lw	a2, 1(a0)
	la	a3, min_caml_dirvecs
	lw	a4, 3(s10)
	add	t5, a3, a4
	lw	a3, 0(t5)
	lw	a4, 1(s10)
	add	t5, a1, a4
	lw	a1, 0(t5)
	add	t5, a2, a4
	lw	a2, 0(t5)
	sw	a2, 4(s10)
	sw	a1, 5(s10)
	sw	a3, 6(s10)
	mv	a0, a2
	sw	ra, 7(s10)
	addi	s10, s10, 8
	jal	setup_startp.3012
	addi	s10, s10, -8
	lw	ra, 7(s10)
	li	a3, 118
	lw	a0, 6(s10)
	lw	a1, 5(s10)
	lw	a2, 4(s10)
	sw	ra, 7(s10)
	addi	s10, s10, 8
	jal	iter_trace_diffuse_rays.3107
	addi	s10, s10, -8
	lw	ra, 7(s10)
	lw	a0, 0(s10)
	lw	a1, 5(a0)
	lw	a2, 1(s10)
	add	t5, a1, a2
	lw	a1, 0(t5)
	lw	a3, 2(s10)
	mv	a0, a1
	mv	a1, a3
	sw	ra, 7(s10)
	addi	s10, s10, 8
	jal	veccpy.2789
	addi	s10, s10, -8
	lw	ra, 7(s10)
beq_cont.10382:
	lw	a0, 1(s10)
	addi	a1, a0, 1
	lw	a0, 0(s10)
	j	pretrace_diffuse_rays.3160
bge_else.10380:
	ret
ble_else.10379:
	ret
pretrace_pixels.3163:
	mv	a3, zero
	mv	t5, zero
	blt	a1, t5, bge_else.10385
	la	a4, min_caml_scan_pitch
	lw	fa3, 0(a4)
	la	a4, min_caml_image_center
	lw	a4, 0(a4)
	sub	a4, a1, a4
	sw	a2, 0(s10)
	sw	a1, 1(s10)
	sw	a0, 2(s10)
	sw	a3, 3(s10)
	sw	fa2, 4(s10)
	sw	fa1, 5(s10)
	sw	fa0, 6(s10)
	sw	fa3, 7(s10)
	itof	fa0, a4
	lw	fa1, 7(s10)
	fmul	fa0, fa1, fa0
	la	a0, min_caml_ptrace_dirvec
	la	a1, min_caml_screenx_dir
	lw	fa1, 0(a1)
	fmul	fa1, fa0, fa1
	lw	fa2, 6(s10)
	fadd	fa1, fa1, fa2
	sw	fa1, 0(a0)
	lw	fa1, 1(a1)
	fmul	fa1, fa0, fa1
	lw	fa3, 5(s10)
	fadd	fa1, fa1, fa3
	sw	fa1, 1(a0)
	lw	fa1, 2(a1)
	fmul	fa0, fa0, fa1
	lw	fa1, 4(s10)
	fadd	fa0, fa0, fa1
	sw	fa0, 2(a0)
	lw	a1, 3(s10)
	sw	a0, 8(s10)
	sw	ra, 9(s10)
	addi	s10, s10, 10
	jal	vecunit_sgn.2792
	addi	s10, s10, -10
	lw	ra, 9(s10)
	la	a0, min_caml_rgb
	mv	fa0, zero
	sw	a0, 9(s10)
	sw	fa0, 10(s10)
	sw	ra, 11(s10)
	addi	s10, s10, 12
	jal	vecfill.2784
	addi	s10, s10, -12
	lw	ra, 11(s10)
	la	a0, min_caml_startp
	la	a1, min_caml_viewpoint
	sw	ra, 11(s10)
	addi	s10, s10, 12
	jal	veccpy.2789
	addi	s10, s10, -12
	lw	ra, 11(s10)
	lui	fa0, 260096
	lw	a0, 1(s10)
	lw	a1, 2(s10)
	add	t5, a1, a0
	lw	a2, 0(t5)
	lw	fa1, 10(s10)
	lw	a3, 3(s10)
	lw	a4, 8(s10)
	mv	a1, a4
	mv	a0, a3
	sw	ra, 11(s10)
	addi	s10, s10, 12
	jal	trace_ray.3098
	addi	s10, s10, -12
	lw	ra, 11(s10)
	lw	a0, 1(s10)
	lw	a1, 2(s10)
	add	t5, a1, a0
	lw	a2, 0(t5)
	lw	a2, 0(a2)
	lw	a3, 9(s10)
	mv	a1, a3
	mv	a0, a2
	sw	ra, 11(s10)
	addi	s10, s10, 12
	jal	veccpy.2789
	addi	s10, s10, -12
	lw	ra, 11(s10)
	lw	a0, 1(s10)
	lw	a1, 2(s10)
	add	t5, a1, a0
	lw	a2, 0(t5)
	lw	a2, 6(a2)
	lw	fa0, 0(s10)
	sw	fa0, 0(a2)
	add	t5, a1, a0
	lw	a2, 0(t5)
	lw	a3, 3(s10)
	mv	a1, a3
	mv	a0, a2
	sw	ra, 11(s10)
	addi	s10, s10, 12
	jal	pretrace_diffuse_rays.3160
	addi	s10, s10, -12
	lw	ra, 11(s10)
	lw	a0, 1(s10)
	addi	a1, a0, -1
	lw	a0, 0(s10)
	addi	a0, a0, 1
	li	t5, 5
	blt	a0, t5, bge_else.10386
	addi	a2, a0, -5
	j	bge_cont.10387
bge_else.10386:
	mv	a2, a0
bge_cont.10387:
	lw	fa0, 6(s10)
	lw	fa1, 5(s10)
	lw	fa2, 4(s10)
	lw	a0, 2(s10)
	j	pretrace_pixels.3163
bge_else.10385:
	ret
pretrace_line.3170:
	la	a3, min_caml_scan_pitch
	lw	fa0, 0(a3)
	la	a3, min_caml_image_center
	lw	a3, 1(a3)
	sub	a1, a1, a3
	sw	a2, 0(s10)
	sw	a0, 1(s10)
	sw	fa0, 2(s10)
	itof	fa0, a1
	lw	fa1, 2(s10)
	fmul	fa0, fa1, fa0
	la	a0, min_caml_screeny_dir
	lw	fa1, 0(a0)
	fmul	fa1, fa0, fa1
	la	a1, min_caml_screenz_dir
	lw	fa2, 0(a1)
	fadd	fa1, fa1, fa2
	lw	fa2, 1(a0)
	fmul	fa2, fa0, fa2
	lw	fa3, 1(a1)
	fadd	fa2, fa2, fa3
	lw	fa3, 2(a0)
	fmul	fa0, fa0, fa3
	lw	fa3, 2(a1)
	fadd	fa0, fa0, fa3
	la	a0, min_caml_image_size
	lw	a0, 0(a0)
	addi	a1, a0, -1
	lw	a0, 1(s10)
	lw	a2, 0(s10)
	mv	ft5, fa2
	mv	fa2, fa0
	mv	fa0, fa1
	mv	fa1, ft5
	j	pretrace_pixels.3163
scan_pixel.3174:
	la	a6, min_caml_image_size
	mv	a7, zero
	lw	a6, 0(a6)
	bgt	a6, a0, ble_else.10389
	ret
ble_else.10389:
	la	a6, min_caml_rgb
	add	t5, a3, a0
	lw	t0, 0(t5)
	lw	t0, 0(t0)
	sw	a5, 0(s10)
	sw	a2, 1(s10)
	sw	a7, 2(s10)
	sw	a3, 3(s10)
	sw	a4, 4(s10)
	sw	a1, 5(s10)
	sw	a0, 6(s10)
	mv	a1, t0
	mv	a0, a6
	sw	ra, 7(s10)
	addi	s10, s10, 8
	jal	veccpy.2789
	addi	s10, s10, -8
	lw	ra, 7(s10)
	lw	a0, 6(s10)
	lw	a1, 5(s10)
	lw	a2, 4(s10)
	sw	ra, 7(s10)
	addi	s10, s10, 8
	jal	neighbors_exist.3132
	addi	s10, s10, -8
	lw	ra, 7(s10)
	mv	t5, zero
	bne	a0, t5, beq_else.10391
	lw	a0, 6(s10)
	lw	a1, 3(s10)
	add	t5, a1, a0
	lw	a2, 0(t5)
	lw	a3, 2(s10)
	mv	a1, a3
	mv	a0, a2
	sw	ra, 7(s10)
	addi	s10, s10, 8
	jal	do_without_neighbors.3129
	addi	s10, s10, -8
	lw	ra, 7(s10)
	j	beq_cont.10392
beq_else.10391:
	lw	a0, 6(s10)
	lw	a1, 5(s10)
	lw	a2, 1(s10)
	lw	a3, 3(s10)
	lw	a4, 4(s10)
	lw	a5, 2(s10)
	sw	ra, 7(s10)
	addi	s10, s10, 8
	jal	try_exploit_neighbors.3145
	addi	s10, s10, -8
	lw	ra, 7(s10)
beq_cont.10392:
	lw	a0, 0(s10)
	sw	ra, 7(s10)
	addi	s10, s10, 8
	jal	write_rgb.3158
	addi	s10, s10, -8
	lw	ra, 7(s10)
	lw	a0, 6(s10)
	addi	a0, a0, 1
	lw	a1, 5(s10)
	lw	a2, 1(s10)
	lw	a3, 3(s10)
	lw	a4, 4(s10)
	lw	a5, 0(s10)
	j	scan_pixel.3174
scan_line.3181:
	la	a6, min_caml_image_size
	lw	a7, 1(a6)
	bgt	a7, a0, ble_else.10393
	ret
ble_else.10393:
	lw	a6, 1(a6)
	addi	a6, a6, -1
	sw	a4, 0(s10)
	sw	a5, 1(s10)
	sw	a3, 2(s10)
	sw	a2, 3(s10)
	sw	a1, 4(s10)
	sw	a0, 5(s10)
	bgt	a6, a0, ble_else.10395
	j	ble_cont.10396
ble_else.10395:
	addi	a6, a0, 1
	mv	a2, a4
	mv	a1, a6
	mv	a0, a3
	sw	ra, 6(s10)
	addi	s10, s10, 7
	jal	pretrace_line.3170
	addi	s10, s10, -7
	lw	ra, 6(s10)
ble_cont.10396:
	mv	a0, zero
	lw	a1, 5(s10)
	lw	a2, 4(s10)
	lw	a3, 3(s10)
	lw	a4, 2(s10)
	lw	a5, 1(s10)
	sw	ra, 6(s10)
	addi	s10, s10, 7
	jal	scan_pixel.3174
	addi	s10, s10, -7
	lw	ra, 6(s10)
	lw	a0, 5(s10)
	addi	a0, a0, 1
	lw	a1, 0(s10)
	addi	a1, a1, 2
	li	t5, 5
	blt	a1, t5, bge_else.10397
	addi	a4, a1, -5
	j	bge_cont.10398
bge_else.10397:
	mv	a4, a1
bge_cont.10398:
	lw	a1, 3(s10)
	lw	a2, 2(s10)
	lw	a3, 4(s10)
	lw	a5, 1(s10)
	j	scan_line.3181
create_float5x3array.3188:
	li	a0, 3
	mv	fa0, zero
	sw	fa0, 0(s10)
	sw	a0, 1(s10)
	sw	ra, 2(s10)
	addi	s10, s10, 3
	jal	min_caml_create_float_array
	addi	s10, s10, -3
	lw	ra, 2(s10)
	mv	a1, a0
	li	a0, 5
	sw	ra, 2(s10)
	addi	s10, s10, 3
	jal	min_caml_create_array
	addi	s10, s10, -3
	lw	ra, 2(s10)
	lw	fa0, 0(s10)
	lw	a1, 1(s10)
	sw	a0, 2(s10)
	mv	a0, a1
	sw	ra, 3(s10)
	addi	s10, s10, 4
	jal	min_caml_create_float_array
	addi	s10, s10, -4
	lw	ra, 3(s10)
	lw	a1, 2(s10)
	sw	a0, 1(a1)
	lw	fa0, 0(s10)
	lw	a0, 1(s10)
	sw	ra, 3(s10)
	addi	s10, s10, 4
	jal	min_caml_create_float_array
	addi	s10, s10, -4
	lw	ra, 3(s10)
	lw	a1, 2(s10)
	sw	a0, 2(a1)
	lw	fa0, 0(s10)
	lw	a0, 1(s10)
	sw	ra, 3(s10)
	addi	s10, s10, 4
	jal	min_caml_create_float_array
	addi	s10, s10, -4
	lw	ra, 3(s10)
	lw	a1, 2(s10)
	sw	a0, 3(a1)
	lw	fa0, 0(s10)
	lw	a0, 1(s10)
	sw	ra, 3(s10)
	addi	s10, s10, 4
	jal	min_caml_create_float_array
	addi	s10, s10, -4
	lw	ra, 3(s10)
	lw	a1, 2(s10)
	sw	a0, 4(a1)
	mv	a0, a1
	ret
create_pixel.3190:
	li	a0, 3
	mv	fa0, zero
	sw	ra, 0(s10)
	addi	s10, s10, 1
	jal	min_caml_create_float_array
	addi	s10, s10, -1
	lw	ra, 0(s10)
	sw	a0, 0(s10)
	sw	ra, 1(s10)
	addi	s10, s10, 2
	jal	create_float5x3array.3188
	addi	s10, s10, -2
	lw	ra, 1(s10)
	li	a1, 5
	mv	a2, zero
	sw	a0, 1(s10)
	sw	a2, 2(s10)
	sw	a1, 3(s10)
	mv	a0, a1
	mv	a1, a2
	sw	ra, 4(s10)
	addi	s10, s10, 5
	jal	min_caml_create_array
	addi	s10, s10, -5
	lw	ra, 4(s10)
	lw	a1, 3(s10)
	lw	a2, 2(s10)
	sw	a0, 4(s10)
	mv	a0, a1
	mv	a1, a2
	sw	ra, 5(s10)
	addi	s10, s10, 6
	jal	min_caml_create_array
	addi	s10, s10, -6
	lw	ra, 5(s10)
	sw	a0, 5(s10)
	sw	ra, 6(s10)
	addi	s10, s10, 7
	jal	create_float5x3array.3188
	addi	s10, s10, -7
	lw	ra, 6(s10)
	sw	a0, 6(s10)
	sw	ra, 7(s10)
	addi	s10, s10, 8
	jal	create_float5x3array.3188
	addi	s10, s10, -8
	lw	ra, 7(s10)
	li	a1, 1
	lw	a2, 2(s10)
	sw	a0, 7(s10)
	mv	a0, a1
	mv	a1, a2
	sw	ra, 8(s10)
	addi	s10, s10, 9
	jal	min_caml_create_array
	addi	s10, s10, -9
	lw	ra, 8(s10)
	sw	a0, 8(s10)
	sw	ra, 9(s10)
	addi	s10, s10, 10
	jal	create_float5x3array.3188
	addi	s10, s10, -10
	lw	ra, 9(s10)
	mv	a1, s11
	addi	s11, s11, 8
	sw	a0, 7(a1)
	lw	a0, 8(s10)
	sw	a0, 6(a1)
	lw	a0, 7(s10)
	sw	a0, 5(a1)
	lw	a0, 6(s10)
	sw	a0, 4(a1)
	lw	a0, 5(s10)
	sw	a0, 3(a1)
	lw	a0, 4(s10)
	sw	a0, 2(a1)
	lw	a0, 1(s10)
	sw	a0, 1(a1)
	lw	a0, 0(s10)
	sw	a0, 0(a1)
	mv	a0, a1
	ret
init_line_elements.3192:
	mv	t5, zero
	blt	a1, t5, bge_else.10399
	sw	a1, 0(s10)
	sw	a0, 1(s10)
	sw	ra, 2(s10)
	addi	s10, s10, 3
	jal	create_pixel.3190
	addi	s10, s10, -3
	lw	ra, 2(s10)
	lw	a1, 0(s10)
	lw	a2, 1(s10)
	add	t5, a2, a1
	sw	a0, 0(t5)
	addi	a1, a1, -1
	mv	a0, a2
	j	init_line_elements.3192
bge_else.10399:
	ret
create_pixelline.3195:
	la	a0, min_caml_image_size
	lw	a1, 0(a0)
	sw	a0, 0(s10)
	sw	a1, 1(s10)
	sw	ra, 2(s10)
	addi	s10, s10, 3
	jal	create_pixel.3190
	addi	s10, s10, -3
	lw	ra, 2(s10)
	mv	a1, a0
	lw	a0, 1(s10)
	sw	ra, 2(s10)
	addi	s10, s10, 3
	jal	min_caml_create_array
	addi	s10, s10, -3
	lw	ra, 2(s10)
	lw	a1, 0(s10)
	lw	a1, 0(a1)
	addi	a1, a1, -2
	j	init_line_elements.3192
adjust_position.3199:
	fmul	fa0, fa0, fa0
	lui	fa2, 253133
	addi	fa2, fa2, -819
	fadd	fa0, fa0, fa2
	sw	fa1, 0(s10)
	fsqrt	fa0, fa0
	lui	fa1, 260096
	fdiv	fa1, fa1, fa0
	sw	fa0, 1(s10)
	mv	fa0, fa1
	sw	ra, 2(s10)
	addi	s10, s10, 3
	jal	atan.2742
	addi	s10, s10, -3
	lw	ra, 2(s10)
	lw	fa1, 0(s10)
	fmul	fa0, fa0, fa1
	sw	fa0, 2(s10)
	sw	ra, 3(s10)
	addi	s10, s10, 4
	jal	sin.2736
	addi	s10, s10, -4
	lw	ra, 3(s10)
	lw	fa1, 2(s10)
	sw	fa0, 3(s10)
	mv	fa0, fa1
	sw	ra, 4(s10)
	addi	s10, s10, 5
	jal	cos.2738
	addi	s10, s10, -5
	lw	ra, 4(s10)
	lw	fa1, 3(s10)
	fdiv	fa0, fa1, fa0
	lw	fa1, 1(s10)
	fmul	fa0, fa0, fa1
	ret
calc_dirvec.3202:
	li	t5, 5
	blt	a0, t5, bge_else.10400
	fmul	fa2, fa0, fa0
	fmul	fa3, fa1, fa1
	fadd	fa2, fa2, fa3
	lui	fa3, 260096
	fadd	fa2, fa2, fa3
	sw	a2, 0(s10)
	sw	a1, 1(s10)
	sw	fa3, 2(s10)
	sw	fa1, 3(s10)
	sw	fa0, 4(s10)
	fsqrt	fa0, fa2
	lw	fa1, 4(s10)
	fdiv	fa1, fa1, fa0
	lw	fa2, 3(s10)
	fdiv	fa2, fa2, fa0
	lw	fa3, 2(s10)
	fdiv	fa0, fa3, fa0
	la	a0, min_caml_dirvecs
	lw	a1, 1(s10)
	add	t5, a0, a1
	lw	a0, 0(t5)
	lw	a1, 0(s10)
	add	t5, a0, a1
	lw	a2, 0(t5)
	lw	a2, 0(a2)
	sw	fa0, 5(s10)
	sw	fa1, 6(s10)
	sw	fa2, 7(s10)
	sw	a0, 8(s10)
	mv	a0, a2
	mv	ft5, fa2
	mv	fa2, fa0
	mv	fa0, fa1
	mv	fa1, ft5
	sw	ra, 9(s10)
	addi	s10, s10, 10
	jal	vecset.2779
	addi	s10, s10, -10
	lw	ra, 9(s10)
	lw	a0, 0(s10)
	addi	a1, a0, 40
	lw	a2, 8(s10)
	add	t5, a2, a1
	lw	a1, 0(t5)
	lw	a1, 0(a1)
	mv	fa0, zero
	lw	fa1, 7(s10)
	fsub	fa2, fa0, fa1
	lw	fa3, 6(s10)
	lw	fa4, 5(s10)
	sw	fa2, 9(s10)
	sw	fa0, 10(s10)
	mv	a0, a1
	mv	fa1, fa4
	mv	fa0, fa3
	sw	ra, 11(s10)
	addi	s10, s10, 12
	jal	vecset.2779
	addi	s10, s10, -12
	lw	ra, 11(s10)
	lw	a0, 0(s10)
	addi	a1, a0, 80
	lw	a2, 8(s10)
	add	t5, a2, a1
	lw	a1, 0(t5)
	lw	a1, 0(a1)
	lw	fa0, 6(s10)
	lw	fa1, 10(s10)
	fsub	fa2, fa1, fa0
	lw	fa3, 5(s10)
	lw	fa4, 9(s10)
	sw	fa2, 11(s10)
	mv	a0, a1
	mv	fa1, fa2
	mv	fa0, fa3
	mv	fa2, fa4
	sw	ra, 12(s10)
	addi	s10, s10, 13
	jal	vecset.2779
	addi	s10, s10, -13
	lw	ra, 12(s10)
	lw	a0, 0(s10)
	addi	a1, a0, 1
	lw	a2, 8(s10)
	add	t5, a2, a1
	lw	a1, 0(t5)
	lw	a1, 0(a1)
	lw	fa0, 5(s10)
	lw	fa1, 10(s10)
	fsub	fa2, fa1, fa0
	lw	fa0, 11(s10)
	lw	fa1, 9(s10)
	sw	fa2, 12(s10)
	mv	a0, a1
	sw	ra, 13(s10)
	addi	s10, s10, 14
	jal	vecset.2779
	addi	s10, s10, -14
	lw	ra, 13(s10)
	lw	a0, 0(s10)
	addi	a1, a0, 41
	lw	a2, 8(s10)
	add	t5, a2, a1
	lw	a1, 0(t5)
	lw	a1, 0(a1)
	lw	fa0, 11(s10)
	lw	fa1, 12(s10)
	lw	fa2, 7(s10)
	mv	a0, a1
	sw	ra, 13(s10)
	addi	s10, s10, 14
	jal	vecset.2779
	addi	s10, s10, -14
	lw	ra, 13(s10)
	lw	a0, 0(s10)
	addi	a0, a0, 81
	lw	a1, 8(s10)
	add	t5, a1, a0
	lw	a0, 0(t5)
	lw	a0, 0(a0)
	lw	fa0, 12(s10)
	lw	fa1, 6(s10)
	lw	fa2, 7(s10)
	j	vecset.2779
bge_else.10400:
	sw	fa2, 13(s10)
	sw	a2, 0(s10)
	sw	a1, 1(s10)
	sw	fa3, 14(s10)
	sw	a0, 15(s10)
	mv	fa0, fa1
	mv	fa1, fa2
	sw	ra, 16(s10)
	addi	s10, s10, 17
	jal	adjust_position.3199
	addi	s10, s10, -17
	lw	ra, 16(s10)
	lw	a0, 15(s10)
	addi	a0, a0, 1
	lw	fa1, 14(s10)
	sw	fa0, 16(s10)
	sw	a0, 17(s10)
	sw	ra, 18(s10)
	addi	s10, s10, 19
	jal	adjust_position.3199
	addi	s10, s10, -19
	lw	ra, 18(s10)
	mv	fa1, fa0
	lw	fa0, 16(s10)
	lw	fa2, 13(s10)
	lw	fa3, 14(s10)
	lw	a0, 17(s10)
	lw	a1, 1(s10)
	lw	a2, 0(s10)
	j	calc_dirvec.3202
calc_dirvecs.3210:
	mv	a3, zero
	mv	t5, zero
	blt	a0, t5, bge_else.10401
	sw	a0, 0(s10)
	sw	fa0, 1(s10)
	sw	a2, 2(s10)
	sw	a1, 3(s10)
	sw	a3, 4(s10)
	itof	fa0, a0
	lui	fa1, 255181
	addi	fa1, fa1, -819
	fmul	fa0, fa0, fa1
	lui	fa2, 259686
	addi	fa2, fa2, 1638
	fsub	fa2, fa0, fa2
	mv	fa0, zero
	lw	fa3, 1(s10)
	lw	a0, 4(s10)
	lw	a1, 3(s10)
	lw	a2, 2(s10)
	sw	fa0, 5(s10)
	sw	fa1, 6(s10)
	mv	fa1, fa0
	sw	ra, 7(s10)
	addi	s10, s10, 8
	jal	calc_dirvec.3202
	addi	s10, s10, -8
	lw	ra, 7(s10)
	lw	a0, 0(s10)
	itof	fa0, a0
	lw	fa1, 6(s10)
	fmul	fa0, fa0, fa1
	lui	fa1, 253133
	addi	fa1, fa1, -819
	fadd	fa2, fa0, fa1
	lw	a0, 2(s10)
	addi	a2, a0, 2
	lw	fa0, 5(s10)
	lw	fa3, 1(s10)
	lw	a1, 4(s10)
	lw	a3, 3(s10)
	mv	a0, a1
	mv	a1, a3
	mv	fa1, fa0
	sw	ra, 7(s10)
	addi	s10, s10, 8
	jal	calc_dirvec.3202
	addi	s10, s10, -8
	lw	ra, 7(s10)
	lw	a0, 0(s10)
	addi	a0, a0, -1
	lw	a1, 3(s10)
	addi	a1, a1, 1
	li	t5, 5
	blt	a1, t5, bge_else.10402
	addi	a1, a1, -5
	j	bge_cont.10403
bge_else.10402:
bge_cont.10403:
	lw	fa0, 1(s10)
	lw	a2, 2(s10)
	j	calc_dirvecs.3210
bge_else.10401:
	ret
calc_dirvec_rows.3215:
	mv	t5, zero
	blt	a0, t5, bge_else.10405
	sw	a0, 0(s10)
	sw	a2, 1(s10)
	sw	a1, 2(s10)
	itof	fa0, a0
	lui	fa1, 255181
	addi	fa1, fa1, -819
	fmul	fa0, fa0, fa1
	lui	fa1, 259686
	addi	fa1, fa1, 1638
	fsub	fa0, fa0, fa1
	li	a0, 4
	lw	a1, 2(s10)
	lw	a2, 1(s10)
	sw	ra, 3(s10)
	addi	s10, s10, 4
	jal	calc_dirvecs.3210
	addi	s10, s10, -4
	lw	ra, 3(s10)
	lw	a0, 0(s10)
	addi	a0, a0, -1
	lw	a1, 2(s10)
	addi	a1, a1, 2
	li	t5, 5
	blt	a1, t5, bge_else.10406
	addi	a1, a1, -5
	j	bge_cont.10407
bge_else.10406:
bge_cont.10407:
	lw	a2, 1(s10)
	addi	a2, a2, 4
	j	calc_dirvec_rows.3215
bge_else.10405:
	ret
create_dirvec.3219:
	li	a0, 3
	mv	fa0, zero
	sw	ra, 0(s10)
	addi	s10, s10, 1
	jal	min_caml_create_float_array
	addi	s10, s10, -1
	lw	ra, 0(s10)
	mv	a1, a0
	la	a0, min_caml_n_objects
	lw	a0, 0(a0)
	sw	a1, 0(s10)
	sw	ra, 1(s10)
	addi	s10, s10, 2
	jal	min_caml_create_array
	addi	s10, s10, -2
	lw	ra, 1(s10)
	mv	a1, s11
	addi	s11, s11, 2
	sw	a0, 1(a1)
	lw	a0, 0(s10)
	sw	a0, 0(a1)
	mv	a0, a1
	ret
create_dirvec_elements.3221:
	mv	t5, zero
	blt	a1, t5, bge_else.10409
	sw	a1, 0(s10)
	sw	a0, 1(s10)
	sw	ra, 2(s10)
	addi	s10, s10, 3
	jal	create_dirvec.3219
	addi	s10, s10, -3
	lw	ra, 2(s10)
	lw	a1, 0(s10)
	lw	a2, 1(s10)
	add	t5, a2, a1
	sw	a0, 0(t5)
	addi	a1, a1, -1
	mv	a0, a2
	j	create_dirvec_elements.3221
bge_else.10409:
	ret
create_dirvecs.3224:
	mv	t5, zero
	blt	a0, t5, bge_else.10411
	la	a1, min_caml_dirvecs
	li	a2, 120
	sw	a0, 0(s10)
	sw	a1, 1(s10)
	sw	a2, 2(s10)
	sw	ra, 3(s10)
	addi	s10, s10, 4
	jal	create_dirvec.3219
	addi	s10, s10, -4
	lw	ra, 3(s10)
	mv	a1, a0
	lw	a0, 2(s10)
	sw	ra, 3(s10)
	addi	s10, s10, 4
	jal	min_caml_create_array
	addi	s10, s10, -4
	lw	ra, 3(s10)
	lw	a1, 0(s10)
	lw	a2, 1(s10)
	add	t5, a2, a1
	sw	a0, 0(t5)
	add	t5, a2, a1
	lw	a0, 0(t5)
	li	a2, 118
	mv	a1, a2
	sw	ra, 3(s10)
	addi	s10, s10, 4
	jal	create_dirvec_elements.3221
	addi	s10, s10, -4
	lw	ra, 3(s10)
	lw	a0, 0(s10)
	addi	a0, a0, -1
	j	create_dirvecs.3224
bge_else.10411:
	ret
init_dirvec_constants.3226:
	mv	t5, zero
	blt	a1, t5, bge_else.10413
	add	t5, a0, a1
	lw	a2, 0(t5)
	sw	a0, 0(s10)
	sw	a1, 1(s10)
	mv	a0, a2
	sw	ra, 2(s10)
	addi	s10, s10, 3
	jal	setup_dirvec_constants.3007
	addi	s10, s10, -3
	lw	ra, 2(s10)
	lw	a0, 1(s10)
	addi	a1, a0, -1
	lw	a0, 0(s10)
	j	init_dirvec_constants.3226
bge_else.10413:
	ret
init_vecset_constants.3229:
	mv	t5, zero
	blt	a0, t5, bge_else.10415
	la	a1, min_caml_dirvecs
	add	t5, a1, a0
	lw	a1, 0(t5)
	li	a2, 119
	sw	a0, 0(s10)
	mv	a0, a1
	mv	a1, a2
	sw	ra, 1(s10)
	addi	s10, s10, 2
	jal	init_dirvec_constants.3226
	addi	s10, s10, -2
	lw	ra, 1(s10)
	lw	a0, 0(s10)
	addi	a0, a0, -1
	j	init_vecset_constants.3229
bge_else.10415:
	ret
init_dirvecs.3231:
	li	a0, 4
	sw	a0, 0(s10)
	sw	ra, 1(s10)
	addi	s10, s10, 2
	jal	create_dirvecs.3224
	addi	s10, s10, -2
	lw	ra, 1(s10)
	li	a0, 9
	mv	a1, zero
	mv	a2, a1
	sw	ra, 1(s10)
	addi	s10, s10, 2
	jal	calc_dirvec_rows.3215
	addi	s10, s10, -2
	lw	ra, 1(s10)
	lw	a0, 0(s10)
	j	init_vecset_constants.3229
add_reflection.3233:
	sw	a0, 0(s10)
	sw	a1, 1(s10)
	sw	fa0, 2(s10)
	sw	fa3, 3(s10)
	sw	fa2, 4(s10)
	sw	fa1, 5(s10)
	sw	ra, 6(s10)
	addi	s10, s10, 7
	jal	create_dirvec.3219
	addi	s10, s10, -7
	lw	ra, 6(s10)
	lw	a1, 0(a0)
	lw	fa0, 5(s10)
	lw	fa1, 4(s10)
	lw	fa2, 3(s10)
	sw	a0, 6(s10)
	mv	a0, a1
	sw	ra, 7(s10)
	addi	s10, s10, 8
	jal	vecset.2779
	addi	s10, s10, -8
	lw	ra, 7(s10)
	lw	a0, 6(s10)
	sw	ra, 7(s10)
	addi	s10, s10, 8
	jal	setup_dirvec_constants.3007
	addi	s10, s10, -8
	lw	ra, 7(s10)
	la	a0, min_caml_reflections
	mv	a1, s11
	addi	s11, s11, 3
	lw	fa0, 2(s10)
	sw	fa0, 2(a1)
	lw	a2, 6(s10)
	sw	a2, 1(a1)
	lw	a2, 1(s10)
	sw	a2, 0(a1)
	lw	a2, 0(s10)
	add	t5, a0, a2
	sw	a1, 0(t5)
	ret
setup_rect_reflection.3240:
	slli	a0, a0, 2
	la	a2, min_caml_n_reflections
	lw	a3, 0(a2)
	lui	fa0, 260096
	lw	a1, 7(a1)
	lw	fa1, 0(a1)
	fsub	fa0, fa0, fa1
	la	a1, min_caml_light
	lw	fa1, 0(a1)
	mv	fa2, zero
	fsub	fa1, fa2, fa1
	lw	fa3, 1(a1)
	fsub	fa3, fa2, fa3
	lw	fa4, 2(a1)
	fsub	fa2, fa2, fa4
	addi	a4, a0, 1
	lw	fa4, 0(a1)
	sw	a2, 0(s10)
	sw	fa3, 1(s10)
	sw	fa2, 2(s10)
	sw	fa1, 3(s10)
	sw	fa0, 4(s10)
	sw	a1, 5(s10)
	sw	a0, 6(s10)
	sw	a3, 7(s10)
	mv	a1, a4
	mv	a0, a3
	mv	fa1, fa4
	mv	ft5, fa3
	mv	fa3, fa2
	mv	fa2, ft5
	sw	ra, 8(s10)
	addi	s10, s10, 9
	jal	add_reflection.3233
	addi	s10, s10, -9
	lw	ra, 8(s10)
	lw	a0, 7(s10)
	addi	a1, a0, 1
	lw	a2, 6(s10)
	addi	a3, a2, 2
	lw	a4, 5(s10)
	lw	fa2, 1(a4)
	lw	fa0, 4(s10)
	lw	fa1, 3(s10)
	lw	fa3, 2(s10)
	mv	a0, a1
	mv	a1, a3
	sw	ra, 8(s10)
	addi	s10, s10, 9
	jal	add_reflection.3233
	addi	s10, s10, -9
	lw	ra, 8(s10)
	lw	a0, 7(s10)
	addi	a1, a0, 2
	lw	a2, 6(s10)
	addi	a2, a2, 3
	lw	a3, 5(s10)
	lw	fa3, 2(a3)
	lw	fa0, 4(s10)
	lw	fa1, 3(s10)
	lw	fa2, 1(s10)
	mv	a0, a1
	mv	a1, a2
	sw	ra, 8(s10)
	addi	s10, s10, 9
	jal	add_reflection.3233
	addi	s10, s10, -9
	lw	ra, 8(s10)
	lw	a0, 7(s10)
	addi	a0, a0, 3
	lw	a1, 0(s10)
	sw	a0, 0(a1)
	ret
setup_surface_reflection.3243:
	slli	a0, a0, 2
	addi	a0, a0, 1
	la	a2, min_caml_n_reflections
	lw	a3, 0(a2)
	lui	fa0, 260096
	lw	a4, 7(a1)
	lw	fa1, 0(a4)
	fsub	fa0, fa0, fa1
	la	a4, min_caml_light
	lw	a5, 4(a1)
	sw	a2, 0(s10)
	sw	fa0, 1(s10)
	sw	a0, 2(s10)
	sw	a3, 3(s10)
	sw	a4, 4(s10)
	sw	a1, 5(s10)
	mv	a1, a5
	mv	a0, a4
	sw	ra, 6(s10)
	addi	s10, s10, 7
	jal	veciprod.2795
	addi	s10, s10, -7
	lw	ra, 6(s10)
	lui	fa1, 262144
	lw	a0, 5(s10)
	lw	a1, 4(a0)
	lw	fa2, 0(a1)
	fmul	fa2, fa1, fa2
	fmul	fa2, fa2, fa0
	lw	a1, 4(s10)
	lw	fa3, 0(a1)
	fsub	fa2, fa2, fa3
	lw	a2, 4(a0)
	lw	fa3, 1(a2)
	fmul	fa3, fa1, fa3
	fmul	fa3, fa3, fa0
	lw	fa4, 1(a1)
	fsub	fa3, fa3, fa4
	lw	a0, 4(a0)
	lw	fa4, 2(a0)
	fmul	fa1, fa1, fa4
	fmul	fa0, fa1, fa0
	lw	fa1, 2(a1)
	fsub	fa0, fa0, fa1
	lw	fa1, 1(s10)
	lw	a0, 3(s10)
	lw	a1, 2(s10)
	mv	ft5, fa3
	mv	fa3, fa0
	mv	fa0, fa1
	mv	fa1, fa2
	mv	fa2, ft5
	sw	ra, 6(s10)
	addi	s10, s10, 7
	jal	add_reflection.3233
	addi	s10, s10, -7
	lw	ra, 6(s10)
	lw	a0, 3(s10)
	addi	a0, a0, 1
	lw	a1, 0(s10)
	sw	a0, 0(a1)
	ret
setup_reflections.3246:
	mv	t5, zero
	blt	a0, t5, bge_else.10420
	la	a1, min_caml_objects
	add	t5, a1, a0
	lw	a1, 0(t5)
	lw	a2, 2(a1)
	li	t5, 2
	bne	a2, t5, beq_else.10421
	lw	a2, 7(a1)
	lw	fa0, 0(a2)
	lui	fa1, 260096
	fle	t5, fa1, fa0
	bne	t5, zero, beq_else.10422
	li	a2, 1
	j	beq_cont.10423
beq_else.10422:
	mv	a2, zero
beq_cont.10423:
	mv	t5, zero
	bne	a2, t5, beq_else.10424
	ret
beq_else.10424:
	lw	a2, 1(a1)
	li	t5, 1
	bne	a2, t5, beq_else.10426
	j	setup_rect_reflection.3240
beq_else.10426:
	li	t5, 2
	bne	a2, t5, beq_else.10427
	j	setup_surface_reflection.3243
beq_else.10427:
	ret
beq_else.10421:
	ret
bge_else.10420:
	ret
rt.3248:
	la	a3, min_caml_image_size
	mv	a4, zero
	sw	a0, 0(a3)
	sw	a1, 1(a3)
	la	a3, min_caml_image_center
	li	a5, 2
	srai	a6, a0, 1
	sw	a6, 0(a3)
	srai	a1, a1, 1
	sw	a1, 1(a3)
	la	a1, min_caml_scan_pitch
	lui	fa0, 274432
	sw	a5, 0(s10)
	sw	a4, 1(s10)
	sw	a2, 2(s10)
	sw	a1, 3(s10)
	sw	fa0, 4(s10)
	itof	fa0, a0
	lw	fa1, 4(s10)
	fdiv	fa0, fa1, fa0
	lw	a0, 3(s10)
	sw	fa0, 0(a0)
	sw	ra, 5(s10)
	addi	s10, s10, 6
	jal	create_pixelline.3195
	addi	s10, s10, -6
	lw	ra, 5(s10)
	sw	a0, 5(s10)
	sw	ra, 6(s10)
	addi	s10, s10, 7
	jal	create_pixelline.3195
	addi	s10, s10, -7
	lw	ra, 6(s10)
	sw	a0, 6(s10)
	sw	ra, 7(s10)
	addi	s10, s10, 8
	jal	create_pixelline.3195
	addi	s10, s10, -8
	lw	ra, 7(s10)
	sw	a0, 7(s10)
	sw	ra, 8(s10)
	addi	s10, s10, 9
	jal	read_parameter.2909
	addi	s10, s10, -9
	lw	ra, 8(s10)
	lw	a0, 2(s10)
	sw	ra, 8(s10)
	addi	s10, s10, 9
	jal	write_ppm_header.3152
	addi	s10, s10, -9
	lw	ra, 8(s10)
	sw	ra, 8(s10)
	addi	s10, s10, 9
	jal	init_dirvecs.3231
	addi	s10, s10, -9
	lw	ra, 8(s10)
	la	a0, min_caml_light_dirvec
	lw	a1, 0(a0)
	la	a2, min_caml_light
	sw	a0, 8(s10)
	mv	a0, a1
	mv	a1, a2
	sw	ra, 9(s10)
	addi	s10, s10, 10
	jal	veccpy.2789
	addi	s10, s10, -10
	lw	ra, 9(s10)
	lw	a0, 8(s10)
	sw	ra, 9(s10)
	addi	s10, s10, 10
	jal	setup_dirvec_constants.3007
	addi	s10, s10, -10
	lw	ra, 9(s10)
	la	a0, min_caml_n_objects
	lw	a0, 0(a0)
	addi	a0, a0, -1
	sw	ra, 9(s10)
	addi	s10, s10, 10
	jal	setup_reflections.3246
	addi	s10, s10, -10
	lw	ra, 9(s10)
	lw	a0, 6(s10)
	lw	a1, 1(s10)
	mv	a2, a1
	sw	ra, 9(s10)
	addi	s10, s10, 10
	jal	pretrace_line.3170
	addi	s10, s10, -10
	lw	ra, 9(s10)
	lw	a0, 1(s10)
	lw	a1, 5(s10)
	lw	a2, 6(s10)
	lw	a3, 7(s10)
	lw	a4, 0(s10)
	lw	a5, 2(s10)
	j	scan_line.3181
	.globl min_caml_start
min_caml_start: # main entry point
	mv	s10, a0
	mv	s11, a1
#	main program starts
	li	a1, 1
	mv	a2, zero
	la	a0, min_caml_n_objects
	sw	ra, 0(s10)
	addi	s10, s10, 1
	jal	min_caml_init_array
	addi	s10, s10, -1
	lw	ra, 0(s10)
	mv	a1, zero
	mv	fa0, zero
	la	a0, min_caml_dummy
	sw	ra, 0(s10)
	addi	s10, s10, 1
	jal	min_caml_init_float_array
	addi	s10, s10, -1
	lw	ra, 0(s10)
	li	a1, 60
	mv	a2, zero
	mv	a3, zero
	mv	a4, zero
	mv	a5, zero
	mv	a6, zero
	la	a7, min_caml_Tt8769
	sw	a0, 10(a7)
	sw	a0, 9(a7)
	sw	a0, 8(a7)
	sw	a0, 7(a7)
	sw	a6, 6(a7)
	sw	a0, 5(a7)
	sw	a0, 4(a7)
	sw	a5, 3(a7)
	sw	a4, 2(a7)
	sw	a3, 1(a7)
	sw	a2, 0(a7)
	mv	a2, a7
	la	a0, min_caml_objects
	sw	ra, 0(s10)
	addi	s10, s10, 1
	jal	min_caml_init_array
	addi	s10, s10, -1
	lw	ra, 0(s10)
	li	a1, 3
	mv	fa0, zero
	la	a0, min_caml_screen
	sw	ra, 0(s10)
	addi	s10, s10, 1
	jal	min_caml_init_float_array
	addi	s10, s10, -1
	lw	ra, 0(s10)
	li	a1, 3
	mv	fa0, zero
	la	a0, min_caml_viewpoint
	sw	ra, 0(s10)
	addi	s10, s10, 1
	jal	min_caml_init_float_array
	addi	s10, s10, -1
	lw	ra, 0(s10)
	li	a1, 3
	mv	fa0, zero
	la	a0, min_caml_light
	sw	ra, 0(s10)
	addi	s10, s10, 1
	jal	min_caml_init_float_array
	addi	s10, s10, -1
	lw	ra, 0(s10)
	li	a1, 1
	lui	fa0, 276464
	la	a0, min_caml_beam
	sw	ra, 0(s10)
	addi	s10, s10, 1
	jal	min_caml_init_float_array
	addi	s10, s10, -1
	lw	ra, 0(s10)
	li	a0, 50
	li	a1, 1
	li	a2, 1
	neg	a2, a2
	la	a3, min_caml_Ta8782
	sw	a0, 0(s10)
	mv	a0, a3
	sw	ra, 1(s10)
	addi	s10, s10, 2
	jal	min_caml_init_array
	addi	s10, s10, -2
	lw	ra, 1(s10)
	mv	a2, a0
	la	a0, min_caml_and_net
	lw	a1, 0(s10)
	sw	ra, 1(s10)
	addi	s10, s10, 2
	jal	min_caml_init_array
	addi	s10, s10, -2
	lw	ra, 1(s10)
	li	a1, 1
	li	a2, 1
	lw	a0, 0(a0)
	la	a3, min_caml_Ta8787
	sw	a1, 1(s10)
	mv	a1, a2
	mv	a2, a0
	mv	a0, a3
	sw	ra, 2(s10)
	addi	s10, s10, 3
	jal	min_caml_init_array
	addi	s10, s10, -3
	lw	ra, 2(s10)
	mv	a2, a0
	la	a0, min_caml_or_net
	lw	a1, 1(s10)
	sw	ra, 2(s10)
	addi	s10, s10, 3
	jal	min_caml_init_array
	addi	s10, s10, -3
	lw	ra, 2(s10)
	li	a1, 1
	mv	fa0, zero
	la	a0, min_caml_solver_dist
	sw	ra, 2(s10)
	addi	s10, s10, 3
	jal	min_caml_init_float_array
	addi	s10, s10, -3
	lw	ra, 2(s10)
	li	a1, 1
	mv	a2, zero
	la	a0, min_caml_intsec_rectside
	sw	ra, 2(s10)
	addi	s10, s10, 3
	jal	min_caml_init_array
	addi	s10, s10, -3
	lw	ra, 2(s10)
	li	a1, 1
	lui	fa0, 321255
	addi	fa0, fa0, -1240
	la	a0, min_caml_tmin
	sw	ra, 2(s10)
	addi	s10, s10, 3
	jal	min_caml_init_float_array
	addi	s10, s10, -3
	lw	ra, 2(s10)
	li	a1, 3
	mv	fa0, zero
	la	a0, min_caml_intersection_point
	sw	ra, 2(s10)
	addi	s10, s10, 3
	jal	min_caml_init_float_array
	addi	s10, s10, -3
	lw	ra, 2(s10)
	li	a1, 1
	mv	a2, zero
	la	a0, min_caml_intersected_object_id
	sw	ra, 2(s10)
	addi	s10, s10, 3
	jal	min_caml_init_array
	addi	s10, s10, -3
	lw	ra, 2(s10)
	li	a1, 3
	mv	fa0, zero
	la	a0, min_caml_nvector
	sw	ra, 2(s10)
	addi	s10, s10, 3
	jal	min_caml_init_float_array
	addi	s10, s10, -3
	lw	ra, 2(s10)
	li	a1, 3
	mv	fa0, zero
	la	a0, min_caml_texture_color
	sw	ra, 2(s10)
	addi	s10, s10, 3
	jal	min_caml_init_float_array
	addi	s10, s10, -3
	lw	ra, 2(s10)
	li	a1, 3
	mv	fa0, zero
	la	a0, min_caml_diffuse_ray
	sw	ra, 2(s10)
	addi	s10, s10, 3
	jal	min_caml_init_float_array
	addi	s10, s10, -3
	lw	ra, 2(s10)
	li	a1, 3
	mv	fa0, zero
	la	a0, min_caml_rgb
	sw	ra, 2(s10)
	addi	s10, s10, 3
	jal	min_caml_init_float_array
	addi	s10, s10, -3
	lw	ra, 2(s10)
	li	a1, 2
	mv	a2, zero
	la	a0, min_caml_image_size
	sw	ra, 2(s10)
	addi	s10, s10, 3
	jal	min_caml_init_array
	addi	s10, s10, -3
	lw	ra, 2(s10)
	li	a1, 2
	mv	a2, zero
	la	a0, min_caml_image_center
	sw	ra, 2(s10)
	addi	s10, s10, 3
	jal	min_caml_init_array
	addi	s10, s10, -3
	lw	ra, 2(s10)
	li	a1, 1
	mv	fa0, zero
	la	a0, min_caml_scan_pitch
	sw	ra, 2(s10)
	addi	s10, s10, 3
	jal	min_caml_init_float_array
	addi	s10, s10, -3
	lw	ra, 2(s10)
	li	a1, 3
	mv	fa0, zero
	la	a0, min_caml_startp
	sw	ra, 2(s10)
	addi	s10, s10, 3
	jal	min_caml_init_float_array
	addi	s10, s10, -3
	lw	ra, 2(s10)
	li	a1, 3
	mv	fa0, zero
	la	a0, min_caml_startp_fast
	sw	ra, 2(s10)
	addi	s10, s10, 3
	jal	min_caml_init_float_array
	addi	s10, s10, -3
	lw	ra, 2(s10)
	li	a1, 3
	mv	fa0, zero
	la	a0, min_caml_screenx_dir
	sw	ra, 2(s10)
	addi	s10, s10, 3
	jal	min_caml_init_float_array
	addi	s10, s10, -3
	lw	ra, 2(s10)
	li	a1, 3
	mv	fa0, zero
	la	a0, min_caml_screeny_dir
	sw	ra, 2(s10)
	addi	s10, s10, 3
	jal	min_caml_init_float_array
	addi	s10, s10, -3
	lw	ra, 2(s10)
	li	a1, 3
	mv	fa0, zero
	la	a0, min_caml_screenz_dir
	sw	ra, 2(s10)
	addi	s10, s10, 3
	jal	min_caml_init_float_array
	addi	s10, s10, -3
	lw	ra, 2(s10)
	li	a1, 3
	mv	fa0, zero
	la	a0, min_caml_ptrace_dirvec
	sw	ra, 2(s10)
	addi	s10, s10, 3
	jal	min_caml_init_float_array
	addi	s10, s10, -3
	lw	ra, 2(s10)
	mv	a1, zero
	mv	fa0, zero
	la	a0, min_caml_dummyf
	sw	ra, 2(s10)
	addi	s10, s10, 3
	jal	min_caml_init_float_array
	addi	s10, s10, -3
	lw	ra, 2(s10)
	mv	a2, a0
	mv	a1, zero
	la	a0, min_caml_dummyff
	sw	a2, 2(s10)
	sw	ra, 3(s10)
	addi	s10, s10, 4
	jal	min_caml_init_array
	addi	s10, s10, -4
	lw	ra, 3(s10)
	mv	a1, zero
	la	a2, min_caml_Tt8828
	sw	a0, 1(a2)
	lw	a0, 2(s10)
	sw	a0, 0(a2)
	la	a0, min_caml_dummy_vs
	sw	ra, 3(s10)
	addi	s10, s10, 4
	jal	min_caml_init_array
	addi	s10, s10, -4
	lw	ra, 3(s10)
	mv	a2, a0
	li	a1, 5
	la	a0, min_caml_dirvecs
	sw	ra, 3(s10)
	addi	s10, s10, 4
	jal	min_caml_init_array
	addi	s10, s10, -4
	lw	ra, 3(s10)
	mv	a1, zero
	mv	fa0, zero
	la	a0, min_caml_dummyf2
	sw	ra, 3(s10)
	addi	s10, s10, 4
	jal	min_caml_init_float_array
	addi	s10, s10, -4
	lw	ra, 3(s10)
	li	a1, 3
	mv	fa0, zero
	la	a2, min_caml_v3
	sw	a0, 3(s10)
	mv	a0, a2
	sw	ra, 4(s10)
	addi	s10, s10, 5
	jal	min_caml_init_float_array
	addi	s10, s10, -5
	lw	ra, 4(s10)
	li	a1, 60
	la	a2, min_caml_consts
	lw	a3, 3(s10)
	sw	a0, 4(s10)
	mv	a0, a2
	mv	a2, a3
	sw	ra, 5(s10)
	addi	s10, s10, 6
	jal	min_caml_init_array
	addi	s10, s10, -6
	lw	ra, 5(s10)
	la	a1, min_caml_light_dirvec
	sw	a0, 1(a1)
	lw	a0, 4(s10)
	sw	a0, 0(a1)
	mv	a0, a1
	mv	a1, zero
	mv	fa0, zero
	la	a0, min_caml_dummyf3
	sw	ra, 5(s10)
	addi	s10, s10, 6
	jal	min_caml_init_float_array
	addi	s10, s10, -6
	lw	ra, 5(s10)
	mv	a2, a0
	mv	a1, zero
	la	a0, min_caml_dummyff3
	sw	a2, 5(s10)
	sw	ra, 6(s10)
	addi	s10, s10, 7
	jal	min_caml_init_array
	addi	s10, s10, -7
	lw	ra, 6(s10)
	la	a1, min_caml_dummydv
	sw	a0, 1(a1)
	lw	a0, 5(s10)
	sw	a0, 0(a1)
	mv	a0, a1
	li	a1, 180
	mv	a2, zero
	mv	fa0, zero
	la	a3, min_caml_Tt8841
	sw	fa0, 2(a3)
	sw	a0, 1(a3)
	sw	a2, 0(a3)
	mv	a2, a3
	la	a0, min_caml_reflections
	sw	ra, 6(s10)
	addi	s10, s10, 7
	jal	min_caml_init_array
	addi	s10, s10, -7
	lw	ra, 6(s10)
	li	a1, 1
	mv	a2, zero
	la	a0, min_caml_n_reflections
	sw	ra, 6(s10)
	addi	s10, s10, 7
	jal	min_caml_init_array
	addi	s10, s10, -7
	lw	ra, 6(s10)
	li	a0, 256
	li	a2, 6
	mv	a1, a0
	sw	ra, 6(s10)
	addi	s10, s10, 7
	jal	rt.3248
	addi	s10, s10, -7
	lw	ra, 6(s10)
#	main program ends
endp:
	j endp
