	.file	"test.c"
	.option nopic
	.attribute arch, "rv32i2p1"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.section	.rodata
	.align	2
.LC0:
	.string	"sum = %d"
	.text
	.align	2
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-448
	sw	ra,444(sp)
	sw	s0,440(sp)
	addi	s0,sp,448
	sw	zero,-20(s0)
	li	a5,1
	sw	a5,-28(s0)
	li	a5,20
	sw	a5,-32(s0)
	li	a5,30
	sw	a5,-36(s0)
	li	a5,5
	sw	a5,-40(s0)
	sw	zero,-24(s0)
	j	.L2
.L3:
	lw	a5,-24(s0)
	slli	a5,a5,2
	addi	a5,a5,-16
	add	a5,a5,s0
	lw	a5,-424(a5)
	lw	a4,-20(s0)
	add	a5,a4,a5
	sw	a5,-20(s0)
	lw	a5,-24(s0)
	addi	a5,a5,1
	sw	a5,-24(s0)
.L2:
	lw	a4,-24(s0)
	li	a5,99
	ble	a4,a5,.L3
	lw	a4,-32(s0)
	lw	a5,-36(s0)
	add	a5,a4,a5
	sw	a5,-28(s0)
	lw	a4,-28(s0)
	lw	a5,-32(s0)
	add	a5,a4,a5
	sw	a5,-40(s0)
	lw	a5,-36(s0)
	sw	a5,-32(s0)
	lw	a5,-28(s0)
	sw	a5,-32(s0)
	lw	a1,-20(s0)
	lui	a5,%hi(.LC0)
	addi	a0,a5,%lo(.LC0)
	call	printf
	li	a5,0
	mv	a0,a5
	lw	ra,444(sp)
	lw	s0,440(sp)
	addi	sp,sp,448
	jr	ra
	.size	main, .-main
	.ident	"GCC: (xPack GNU RISC-V Embedded GCC x86_64) 13.2.0"
