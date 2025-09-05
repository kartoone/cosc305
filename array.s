	.arch armv8-a
	.file	"array.c"
	.text
	.section	.rodata
	.align	3
.LC0:
	.string	"The sum of all the numbers in nums is: %d\n"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
.LFB0:
	.cfi_startproc
	sub	sp, sp, #80
	.cfi_def_cfa_offset 80
	stp	x29, x30, [sp, 64]
	.cfi_offset 29, -16
	.cfi_offset 30, -8
	add	x29, sp, 64
	adrp	x0, :got:__stack_chk_guard;ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x1, [x0]
	str	x1, [sp, 56]
	mov	x1, 0
	str	wzr, [sp, 8]
	b	.L2
.L3:
	ldr	w0, [sp, 8]
	add	w2, w0, 1
	ldrsw	x0, [sp, 8]
	lsl	x0, x0, 2
	add	x1, sp, 16
	str	w2, [x1, x0]
	ldr	w0, [sp, 8]
	add	w0, w0, 1
	str	w0, [sp, 8]
.L2:
	ldr	w0, [sp, 8]
	cmp	w0, 9
	ble	.L3
	str	wzr, [sp, 12]
	str	wzr, [sp, 8]
	b	.L4
.L5:
	ldrsw	x0, [sp, 8]
	lsl	x0, x0, 2
	add	x1, sp, 16
	ldr	w0, [x1, x0]
	ldr	w1, [sp, 12]
	add	w0, w1, w0
	str	w0, [sp, 12]
	ldr	w0, [sp, 8]
	add	w0, w0, 1
	str	w0, [sp, 8]
.L4:
	ldr	w0, [sp, 8]
	cmp	w0, 9
	ble	.L5
	ldr	w1, [sp, 12]
	adrp	x0, .LC0
	add	x0, x0, :lo12:.LC0
	bl	printf
	mov	w0, 0
	mov	w1, w0
	adrp	x0, :got:__stack_chk_guard;ldr	x0, [x0, :got_lo12:__stack_chk_guard]
	ldr	x3, [sp, 56]
	ldr	x2, [x0]
	subs	x3, x3, x2
	mov	x2, 0
	beq	.L7
	bl	__stack_chk_fail
.L7:
	mov	w0, w1
	ldp	x29, x30, [sp, 64]
	add	sp, sp, 80
	.cfi_restore 29
	.cfi_restore 30
	.cfi_def_cfa_offset 0
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 14.2.0-4ubuntu2~24.04) 14.2.0"
	.section	.note.GNU-stack,"",@progbits
