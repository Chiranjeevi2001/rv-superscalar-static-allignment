	.file	"scientific_computation.cpp"
	.option nopic
	.attribute arch, "rv32i2p1"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	2
	.type	_ZL20__gthread_key_deletei, @function
_ZL20__gthread_key_deletei:
.LFB176:
	.cfi_startproc
	addi	sp,sp,-32
	.cfi_def_cfa_offset 32
	sw	s0,28(sp)
	.cfi_offset 8, -4
	addi	s0,sp,32
	.cfi_def_cfa 8, 0
	sw	a0,-20(s0)
	li	a5,0
	mv	a0,a5
	lw	s0,28(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 32
	addi	sp,sp,32
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE176:
	.size	_ZL20__gthread_key_deletei, .-_ZL20__gthread_key_deletei
	.section	.srodata,"a"
	.align	2
	.type	_ZL3MAX, @object
	.size	_ZL3MAX, 4
_ZL3MAX:
	.word	4
	.globl	__muldf3
	.globl	__adddf3
	.globl	__nedf2
	.globl	__subdf3
	.globl	__divdf3
	.text
	.align	2
	.globl	_Z16LU_decompositionPA4_dS0_S0_i
	.type	_Z16LU_decompositionPA4_dS0_S0_i, @function
_Z16LU_decompositionPA4_dS0_S0_i:
.LFB1949:
	.cfi_startproc
	addi	sp,sp,-80
	.cfi_def_cfa_offset 80
	sw	ra,76(sp)
	sw	s0,72(sp)
	sw	s1,68(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	.cfi_offset 9, -12
	addi	s0,sp,80
	.cfi_def_cfa 8, 0
	sw	a0,-68(s0)
	sw	a1,-72(s0)
	sw	a2,-76(s0)
	sw	a3,-80(s0)
	sw	zero,-20(s0)
	j	.L4
.L7:
	sw	zero,-24(s0)
	j	.L5
.L6:
	lw	a5,-20(s0)
	slli	a5,a5,5
	lw	a4,-72(s0)
	add	a4,a4,a5
	lw	a5,-24(s0)
	slli	a5,a5,3
	add	a3,a4,a5
	li	a4,0
	li	a5,0
	sw	a4,0(a3)
	sw	a5,4(a3)
	lw	a5,-20(s0)
	slli	a5,a5,5
	lw	a4,-76(s0)
	add	a4,a4,a5
	lw	a5,-24(s0)
	slli	a5,a5,3
	add	a3,a4,a5
	li	a4,0
	li	a5,0
	sw	a4,0(a3)
	sw	a5,4(a3)
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L5:
	lw	a4,-24(s0)
	lw	a5,-80(s0)
	blt	a4,a5,.L6
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L4:
	lw	a4,-20(s0)
	lw	a5,-80(s0)
	blt	a4,a5,.L7
	sw	zero,-28(s0)
	j	.L8
.L22:
	li	a4,0
	li	a5,0
	sw	a4,-40(s0)
	sw	a5,-36(s0)
	sw	zero,-44(s0)
	j	.L9
.L10:
	lw	a5,-28(s0)
	slli	a5,a5,5
	lw	a4,-72(s0)
	add	a4,a4,a5
	lw	a5,-44(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,4(a5)
	lw	a3,-44(s0)
	slli	a3,a3,5
	lw	a2,-76(s0)
	add	a2,a2,a3
	lw	a3,-28(s0)
	slli	a3,a3,3
	add	a3,a2,a3
	lw	a2,0(a3)
	lw	a3,4(a3)
	mv	a0,a4
	mv	a1,a5
	call	__muldf3
	mv	a4,a0
	mv	a5,a1
	mv	a2,a4
	mv	a3,a5
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	__adddf3
	mv	a4,a0
	mv	a5,a1
	sw	a4,-40(s0)
	sw	a5,-36(s0)
	lw	a5,-44(s0)
	addi	a5,a5,1
	sw	a5,-44(s0)
.L9:
	lw	a4,-44(s0)
	lw	a5,-28(s0)
	blt	a4,a5,.L10
	lw	a5,-28(s0)
	slli	a5,a5,5
	lw	a4,-68(s0)
	add	a4,a4,a5
	lw	a5,-28(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,4(a5)
	li	a2,0
	li	a3,0
	mv	a0,a4
	mv	a1,a5
	call	__nedf2
	mv	a5,a0
	beq	a5,zero,.L24
	lw	a5,-28(s0)
	slli	a5,a5,5
	lw	a4,-68(s0)
	add	a4,a4,a5
	lw	a5,-28(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,4(a5)
	j	.L13
.L24:
	lui	a5,%hi(.LC1)
	lw	a4,%lo(.LC1)(a5)
	lw	a5,%lo(.LC1+4)(a5)
.L13:
	lw	a3,-28(s0)
	slli	a3,a3,5
	lw	a2,-72(s0)
	add	a2,a2,a3
	lw	a3,-28(s0)
	slli	a3,a3,3
	add	a3,a2,a3
	sw	a4,0(a3)
	sw	a5,4(a3)
	lw	a5,-28(s0)
	slli	a5,a5,5
	lw	a4,-68(s0)
	add	a4,a4,a5
	lw	a5,-28(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,4(a5)
	lw	a2,-40(s0)
	lw	a3,-36(s0)
	mv	a0,a4
	mv	a1,a5
	call	__subdf3
	mv	a4,a0
	mv	a5,a1
	mv	a0,a4
	mv	a1,a5
	lw	a5,-28(s0)
	slli	a5,a5,5
	lw	a4,-72(s0)
	add	a4,a4,a5
	lw	a5,-28(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,4(a5)
	lw	a3,-28(s0)
	slli	a3,a3,5
	lw	a2,-76(s0)
	add	s1,a2,a3
	mv	a2,a4
	mv	a3,a5
	call	__divdf3
	mv	a4,a0
	mv	a5,a1
	lw	a3,-28(s0)
	slli	a3,a3,3
	add	a3,s1,a3
	sw	a4,0(a3)
	sw	a5,4(a3)
	lw	a5,-28(s0)
	addi	a5,a5,1
	sw	a5,-48(s0)
	j	.L14
.L17:
	li	a4,0
	li	a5,0
	sw	a4,-40(s0)
	sw	a5,-36(s0)
	sw	zero,-52(s0)
	j	.L15
.L16:
	lw	a5,-28(s0)
	slli	a5,a5,5
	lw	a4,-72(s0)
	add	a4,a4,a5
	lw	a5,-52(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,4(a5)
	lw	a3,-52(s0)
	slli	a3,a3,5
	lw	a2,-76(s0)
	add	a2,a2,a3
	lw	a3,-48(s0)
	slli	a3,a3,3
	add	a3,a2,a3
	lw	a2,0(a3)
	lw	a3,4(a3)
	mv	a0,a4
	mv	a1,a5
	call	__muldf3
	mv	a4,a0
	mv	a5,a1
	mv	a2,a4
	mv	a3,a5
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	__adddf3
	mv	a4,a0
	mv	a5,a1
	sw	a4,-40(s0)
	sw	a5,-36(s0)
	lw	a5,-52(s0)
	addi	a5,a5,1
	sw	a5,-52(s0)
.L15:
	lw	a4,-52(s0)
	lw	a5,-28(s0)
	blt	a4,a5,.L16
	lw	a5,-28(s0)
	slli	a5,a5,5
	lw	a4,-68(s0)
	add	a4,a4,a5
	lw	a5,-48(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,4(a5)
	lw	a2,-40(s0)
	lw	a3,-36(s0)
	mv	a0,a4
	mv	a1,a5
	call	__subdf3
	mv	a4,a0
	mv	a5,a1
	mv	a0,a4
	mv	a1,a5
	lw	a5,-28(s0)
	slli	a5,a5,5
	lw	a4,-72(s0)
	add	a4,a4,a5
	lw	a5,-28(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,4(a5)
	lw	a3,-28(s0)
	slli	a3,a3,5
	lw	a2,-76(s0)
	add	s1,a2,a3
	mv	a2,a4
	mv	a3,a5
	call	__divdf3
	mv	a4,a0
	mv	a5,a1
	lw	a3,-48(s0)
	slli	a3,a3,3
	add	a3,s1,a3
	sw	a4,0(a3)
	sw	a5,4(a3)
	lw	a5,-48(s0)
	addi	a5,a5,1
	sw	a5,-48(s0)
.L14:
	lw	a4,-48(s0)
	lw	a5,-80(s0)
	blt	a4,a5,.L17
	lw	a5,-28(s0)
	addi	a5,a5,1
	sw	a5,-56(s0)
	j	.L18
.L21:
	li	a4,0
	li	a5,0
	sw	a4,-40(s0)
	sw	a5,-36(s0)
	sw	zero,-60(s0)
	j	.L19
.L20:
	lw	a5,-56(s0)
	slli	a5,a5,5
	lw	a4,-72(s0)
	add	a4,a4,a5
	lw	a5,-60(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,4(a5)
	lw	a3,-60(s0)
	slli	a3,a3,5
	lw	a2,-76(s0)
	add	a2,a2,a3
	lw	a3,-28(s0)
	slli	a3,a3,3
	add	a3,a2,a3
	lw	a2,0(a3)
	lw	a3,4(a3)
	mv	a0,a4
	mv	a1,a5
	call	__muldf3
	mv	a4,a0
	mv	a5,a1
	mv	a2,a4
	mv	a3,a5
	lw	a0,-40(s0)
	lw	a1,-36(s0)
	call	__adddf3
	mv	a4,a0
	mv	a5,a1
	sw	a4,-40(s0)
	sw	a5,-36(s0)
	lw	a5,-60(s0)
	addi	a5,a5,1
	sw	a5,-60(s0)
.L19:
	lw	a4,-60(s0)
	lw	a5,-28(s0)
	blt	a4,a5,.L20
	lw	a5,-56(s0)
	slli	a5,a5,5
	lw	a4,-68(s0)
	add	a4,a4,a5
	lw	a5,-28(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,4(a5)
	lw	a2,-40(s0)
	lw	a3,-36(s0)
	mv	a0,a4
	mv	a1,a5
	call	__subdf3
	mv	a4,a0
	mv	a5,a1
	mv	a0,a4
	mv	a1,a5
	lw	a5,-28(s0)
	slli	a5,a5,5
	lw	a4,-76(s0)
	add	a4,a4,a5
	lw	a5,-28(s0)
	slli	a5,a5,3
	add	a5,a4,a5
	lw	a4,0(a5)
	lw	a5,4(a5)
	lw	a3,-56(s0)
	slli	a3,a3,5
	lw	a2,-72(s0)
	add	s1,a2,a3
	mv	a2,a4
	mv	a3,a5
	call	__divdf3
	mv	a4,a0
	mv	a5,a1
	lw	a3,-28(s0)
	slli	a3,a3,3
	add	a3,s1,a3
	sw	a4,0(a3)
	sw	a5,4(a3)
	lw	a5,-56(s0)
	addi	a5,a5,1
	sw	a5,-56(s0)
.L18:
	lw	a4,-56(s0)
	lw	a5,-80(s0)
	blt	a4,a5,.L21
	lw	a5,-28(s0)
	addi	a5,a5,1
	sw	a5,-28(s0)
.L8:
	lw	a4,-28(s0)
	lw	a5,-80(s0)
	blt	a4,a5,.L22
	nop
	nop
	lw	ra,76(sp)
	.cfi_restore 1
	lw	s0,72(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 80
	lw	s1,68(sp)
	.cfi_restore 9
	addi	sp,sp,80
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE1949:
	.size	_Z16LU_decompositionPA4_dS0_S0_i, .-_Z16LU_decompositionPA4_dS0_S0_i
	.section	.rodata
	.align	2
.LC2:
	.string	"A = "
	.align	2
.LC3:
	.string	" "
	.align	2
.LC4:
	.string	"\nL = "
	.align	2
.LC5:
	.string	"\nU = "
	.align	3
.LC0:
	.word	0
	.word	1075314688
	.word	0
	.word	-1073741824
	.word	0
	.word	1073741824
	.word	0
	.word	1074790400
	.word	0
	.word	1076363264
	.word	0
	.word	-1071644672
	.word	0
	.word	1075314688
	.word	0
	.word	1076101120
	.word	0
	.word	1074266112
	.word	0
	.word	-1070989312
	.word	0
	.word	1075970048
	.word	0
	.word	1074266112
	.word	0
	.word	-1072168960
	.word	0
	.word	1074790400
	.word	0
	.word	1072693248
	.word	0
	.word	-1070465024
	.text
	.align	2
	.globl	main
	.type	main, @function
main:
.LFB1950:
	.cfi_startproc
	addi	sp,sp,-432
	.cfi_def_cfa_offset 432
	sw	ra,428(sp)
	sw	s0,424(sp)
	.cfi_offset 1, -4
	.cfi_offset 8, -8
	addi	s0,sp,432
	.cfi_def_cfa 8, 0
	lui	a5,%hi(.LC0)
	addi	a4,a5,%lo(.LC0)
	addi	a5,s0,-176
	mv	a3,a4
	li	a4,128
	mv	a2,a4
	mv	a1,a3
	mv	a0,a5
	call	memcpy
	li	a5,4
	sw	a5,-44(s0)
	addi	a2,s0,-432
	addi	a4,s0,-304
	addi	a5,s0,-176
	lw	a3,-44(s0)
	mv	a1,a4
	mv	a0,a5
	call	_Z16LU_decompositionPA4_dS0_S0_i
	lui	a5,%hi(.LC2)
	addi	a1,a5,%lo(.LC2)
	lui	a5,%hi(_ZSt4cout)
	addi	a0,a5,%lo(_ZSt4cout)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mv	a4,a0
	lui	a5,%hi(_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
	addi	a1,a5,%lo(_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
	mv	a0,a4
	call	_ZNSolsEPFRSoS_E
	sw	zero,-20(s0)
	j	.L26
.L29:
	sw	zero,-24(s0)
	j	.L27
.L28:
	lw	a5,-20(s0)
	slli	a4,a5,2
	lw	a5,-24(s0)
	add	a5,a4,a5
	slli	a5,a5,3
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a4,-160(a5)
	lw	a5,-156(a5)
	mv	a1,a4
	mv	a2,a5
	lui	a5,%hi(_ZSt4cout)
	addi	a0,a5,%lo(_ZSt4cout)
	call	_ZNSolsEd
	mv	a4,a0
	lui	a5,%hi(.LC3)
	addi	a1,a5,%lo(.LC3)
	mv	a0,a4
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L27:
	lw	a4,-24(s0)
	lw	a5,-44(s0)
	blt	a4,a5,.L28
	lui	a5,%hi(_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
	addi	a1,a5,%lo(_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
	lui	a5,%hi(_ZSt4cout)
	addi	a0,a5,%lo(_ZSt4cout)
	call	_ZNSolsEPFRSoS_E
	lw	a5,-20(s0)
	addi	a5,a5,1
	sw	a5,-20(s0)
.L26:
	lw	a4,-20(s0)
	lw	a5,-44(s0)
	blt	a4,a5,.L29
	lui	a5,%hi(.LC4)
	addi	a1,a5,%lo(.LC4)
	lui	a5,%hi(_ZSt4cout)
	addi	a0,a5,%lo(_ZSt4cout)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mv	a4,a0
	lui	a5,%hi(_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
	addi	a1,a5,%lo(_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
	mv	a0,a4
	call	_ZNSolsEPFRSoS_E
	sw	zero,-28(s0)
	j	.L30
.L33:
	sw	zero,-32(s0)
	j	.L31
.L32:
	lw	a5,-28(s0)
	slli	a4,a5,2
	lw	a5,-32(s0)
	add	a5,a4,a5
	slli	a5,a5,3
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a4,-288(a5)
	lw	a5,-284(a5)
	mv	a1,a4
	mv	a2,a5
	lui	a5,%hi(_ZSt4cout)
	addi	a0,a5,%lo(_ZSt4cout)
	call	_ZNSolsEd
	mv	a4,a0
	lui	a5,%hi(.LC3)
	addi	a1,a5,%lo(.LC3)
	mv	a0,a4
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	lw	a5,-32(s0)
	addi	a5,a5,1
	sw	a5,-32(s0)
.L31:
	lw	a4,-32(s0)
	lw	a5,-44(s0)
	blt	a4,a5,.L32
	lui	a5,%hi(_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
	addi	a1,a5,%lo(_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
	lui	a5,%hi(_ZSt4cout)
	addi	a0,a5,%lo(_ZSt4cout)
	call	_ZNSolsEPFRSoS_E
	lw	a5,-28(s0)
	addi	a5,a5,1
	sw	a5,-28(s0)
.L30:
	lw	a4,-28(s0)
	lw	a5,-44(s0)
	blt	a4,a5,.L33
	lui	a5,%hi(.LC5)
	addi	a1,a5,%lo(.LC5)
	lui	a5,%hi(_ZSt4cout)
	addi	a0,a5,%lo(_ZSt4cout)
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	mv	a4,a0
	lui	a5,%hi(_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
	addi	a1,a5,%lo(_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
	mv	a0,a4
	call	_ZNSolsEPFRSoS_E
	sw	zero,-36(s0)
	j	.L34
.L37:
	sw	zero,-40(s0)
	j	.L35
.L36:
	lw	a5,-36(s0)
	slli	a4,a5,2
	lw	a5,-40(s0)
	add	a5,a4,a5
	slli	a5,a5,3
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a4,-416(a5)
	lw	a5,-412(a5)
	mv	a1,a4
	mv	a2,a5
	lui	a5,%hi(_ZSt4cout)
	addi	a0,a5,%lo(_ZSt4cout)
	call	_ZNSolsEd
	mv	a4,a0
	lui	a5,%hi(.LC3)
	addi	a1,a5,%lo(.LC3)
	mv	a0,a4
	call	_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc
	lw	a5,-40(s0)
	addi	a5,a5,1
	sw	a5,-40(s0)
.L35:
	lw	a4,-40(s0)
	lw	a5,-44(s0)
	blt	a4,a5,.L36
	lui	a5,%hi(_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
	addi	a1,a5,%lo(_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_)
	lui	a5,%hi(_ZSt4cout)
	addi	a0,a5,%lo(_ZSt4cout)
	call	_ZNSolsEPFRSoS_E
	lw	a5,-36(s0)
	addi	a5,a5,1
	sw	a5,-36(s0)
.L34:
	lw	a4,-36(s0)
	lw	a5,-44(s0)
	blt	a4,a5,.L37
	li	a5,0
	mv	a0,a5
	lw	ra,428(sp)
	.cfi_restore 1
	lw	s0,424(sp)
	.cfi_restore 8
	.cfi_def_cfa 2, 432
	addi	sp,sp,432
	.cfi_def_cfa_offset 0
	jr	ra
	.cfi_endproc
.LFE1950:
	.size	main, .-main
	.section	.srodata
	.type	_ZNSt8__detail30__integer_to_chars_is_unsignedIjEE, @object
	.size	_ZNSt8__detail30__integer_to_chars_is_unsignedIjEE, 1
_ZNSt8__detail30__integer_to_chars_is_unsignedIjEE:
	.byte	1
	.type	_ZNSt8__detail30__integer_to_chars_is_unsignedImEE, @object
	.size	_ZNSt8__detail30__integer_to_chars_is_unsignedImEE, 1
_ZNSt8__detail30__integer_to_chars_is_unsignedImEE:
	.byte	1
	.type	_ZNSt8__detail30__integer_to_chars_is_unsignedIyEE, @object
	.size	_ZNSt8__detail30__integer_to_chars_is_unsignedIyEE, 1
_ZNSt8__detail30__integer_to_chars_is_unsignedIyEE:
	.byte	1
	.section	.rodata
	.align	3
.LC1:
	.word	0
	.word	1072693248
	.ident	"GCC: (xPack GNU RISC-V Embedded GCC x86_64) 13.2.0"
