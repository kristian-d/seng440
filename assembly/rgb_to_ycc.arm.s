	.arch armv7-a
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"rgb_to_ycc.c"
	.text
	.align	2
	.global	rgb_to_ycc
	.arch armv7-a
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	rgb_to_ycc, %function
rgb_to_ycc:
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #64
	str	r0, [fp, #-56]
	str	r1, [fp, #-60]
	str	r2, [fp, #-64]
	ldr	r3, [fp, #-64]
	ldr	r2, [fp, #-60]
	mul	r3, r2, r3
	mov	r0, r3
	bl	malloc
	mov	r3, r0
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-64]
	ldr	r2, [fp, #-60]
	mul	r3, r2, r3
	lsr	r3, r3, #2
	mov	r0, r3
	bl	malloc
	mov	r3, r0
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-64]
	ldr	r2, [fp, #-60]
	mul	r3, r2, r3
	lsr	r3, r3, #2
	mov	r0, r3
	bl	malloc
	mov	r3, r0
	str	r3, [fp, #-28]
	mov	r0, #36
	bl	malloc
	mov	r3, r0
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-32]
	ldr	r2, [fp, #-20]
	str	r2, [r3]
	ldr	r3, [fp, #-32]
	ldr	r2, [fp, #-24]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-32]
	ldr	r2, [fp, #-28]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-32]
	ldr	r2, [fp, #-64]
	str	r2, [r3, #16]
	ldr	r3, [fp, #-32]
	ldr	r2, [fp, #-60]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-64]
	ldr	r2, [fp, #-60]
	mul	r2, r2, r3
	ldr	r3, [fp, #-32]
	str	r2, [r3, #20]
	ldr	r3, [fp, #-64]
	ldr	r2, [fp, #-60]
	mul	r3, r2, r3
	add	r2, r3, #3
	cmp	r3, #0
	movlt	r3, r2
	movge	r3, r3
	asr	r3, r3, #2
	mov	r2, r3
	ldr	r3, [fp, #-32]
	str	r2, [r3, #24]
	ldr	r3, [fp, #-64]
	ldr	r2, [fp, #-60]
	mul	r3, r2, r3
	add	r2, r3, #3
	cmp	r3, #0
	movlt	r3, r2
	movge	r3, r3
	asr	r3, r3, #2
	mov	r2, r3
	ldr	r3, [fp, #-32]
	str	r2, [r3, #28]
	ldr	r3, [fp, #-32]
	ldr	r2, [r3, #20]
	ldr	r3, [fp, #-32]
	ldr	r3, [r3, #24]
	add	r2, r2, r3
	ldr	r3, [fp, #-32]
	ldr	r3, [r3, #28]
	add	r2, r2, r3
	ldr	r3, [fp, #-32]
	str	r2, [r3, #32]
	ldr	r3, [fp, #-64]
	ldr	r2, [fp, #-60]
	mul	r2, r2, r3
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	str	r3, [fp, #-36]
	ldr	r2, [fp, #-60]
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	str	r3, [fp, #-40]
	mov	r3, #0
	str	r3, [fp, #-8]
	mov	r3, #0
	str	r3, [fp, #-12]
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L2
.L7:
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	str	r3, [fp, #-44]
	b	.L3
.L4:
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-56]
	add	r3, r2, r3
	ldrb	r3, [r3]
	strb	r3, [fp, #-45]
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	ldr	r2, [fp, #-56]
	add	r3, r2, r3
	ldrb	r3, [r3]
	strb	r3, [fp, #-46]
	ldr	r3, [fp, #-16]
	add	r3, r3, #2
	ldr	r2, [fp, #-56]
	add	r3, r2, r3
	ldrb	r3, [r3]
	strb	r3, [fp, #-47]
	ldrb	r2, [fp, #-45]	@ zero_extendqisi2
	movw	r3, #51904
	movt	r3, 65
	mul	r2, r3, r2
	ldrb	r1, [fp, #-46]	@ zero_extendqisi2
	movw	r3, #1572
	movt	r3, 129
	mul	r3, r3, r1
	add	r2, r2, r3
	ldrb	r1, [fp, #-47]	@ zero_extendqisi2
	movw	r3, #5767
	movt	r3, 25
	mul	r3, r3, r1
	add	r3, r2, r3
	add	r3, r3, #8388608
	asr	r3, r3, #24
	uxtb	r2, r3
	ldr	r3, [fp, #-8]
	add	r1, r3, #1
	str	r1, [fp, #-8]
	mov	r1, r3
	ldr	r3, [fp, #-20]
	add	r3, r3, r1
	add	r2, r2, #16
	uxtb	r2, r2
	strb	r2, [r3]
	ldrb	r2, [fp, #-45]	@ zero_extendqisi2
	movw	r3, #7340
	movt	r3, 65498
	mul	r2, r3, r2
	ldrb	r1, [fp, #-46]	@ zero_extendqisi2
	movw	r3, #33030
	movt	r3, 65461
	mul	r3, r3, r1
	add	r2, r2, r3
	ldrb	r1, [fp, #-47]	@ zero_extendqisi2
	movw	r3, #25166
	movt	r3, 112
	mul	r3, r3, r1
	add	r3, r2, r3
	add	r3, r3, #8388608
	asr	r3, r3, #24
	uxtb	r2, r3
	ldr	r3, [fp, #-12]
	ldr	r1, [fp, #-24]
	add	r3, r1, r3
	sub	r2, r2, #128
	uxtb	r2, r2
	strb	r2, [r3]
	ldrb	r2, [fp, #-45]	@ zero_extendqisi2
	movw	r3, #25166
	movt	r3, 112
	mul	r2, r3, r2
	ldrb	r1, [fp, #-46]	@ zero_extendqisi2
	movw	r3, #51905
	movt	r3, 65441
	mul	r3, r3, r1
	add	r2, r2, r3
	ldrb	r1, [fp, #-47]	@ zero_extendqisi2
	movw	r3, #54002
	movt	r3, 65517
	mul	r3, r3, r1
	add	r3, r2, r3
	add	r3, r3, #8388608
	asr	r3, r3, #24
	uxtb	r2, r3
	ldr	r3, [fp, #-12]
	add	r1, r3, #1
	str	r1, [fp, #-12]
	mov	r1, r3
	ldr	r3, [fp, #-28]
	add	r3, r3, r1
	sub	r2, r2, #128
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [fp, #-16]
	add	r3, r3, #3
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-56]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	movw	r3, #51904
	movt	r3, 65
	mul	r2, r3, r2
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	ldr	r1, [fp, #-56]
	add	r3, r1, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	movw	r3, #1572
	movt	r3, 129
	mul	r3, r3, r1
	add	r2, r2, r3
	ldr	r3, [fp, #-16]
	add	r3, r3, #2
	ldr	r1, [fp, #-56]
	add	r3, r1, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	movw	r3, #5767
	movt	r3, 25
	mul	r3, r3, r1
	add	r3, r2, r3
	add	r3, r3, #8388608
	asr	r3, r3, #24
	uxtb	r2, r3
	ldr	r3, [fp, #-8]
	add	r1, r3, #1
	str	r1, [fp, #-8]
	mov	r1, r3
	ldr	r3, [fp, #-20]
	add	r3, r3, r1
	add	r2, r2, #16
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [fp, #-16]
	add	r3, r3, #3
	str	r3, [fp, #-16]
.L3:
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-44]
	cmp	r2, r3
	blt	.L4
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	str	r3, [fp, #-44]
	b	.L5
.L6:
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-56]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	movw	r3, #51904
	movt	r3, 65
	mul	r2, r3, r2
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	ldr	r1, [fp, #-56]
	add	r3, r1, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	movw	r3, #1572
	movt	r3, 129
	mul	r3, r3, r1
	add	r2, r2, r3
	ldr	r3, [fp, #-16]
	add	r3, r3, #2
	ldr	r1, [fp, #-56]
	add	r3, r1, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	movw	r3, #5767
	movt	r3, 25
	mul	r3, r3, r1
	add	r3, r2, r3
	add	r3, r3, #8388608
	asr	r3, r3, #24
	uxtb	r2, r3
	ldr	r3, [fp, #-8]
	add	r1, r3, #1
	str	r1, [fp, #-8]
	mov	r1, r3
	ldr	r3, [fp, #-20]
	add	r3, r3, r1
	add	r2, r2, #16
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [fp, #-16]
	add	r3, r3, #3
	str	r3, [fp, #-16]
.L5:
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-44]
	cmp	r2, r3
	blt	.L6
.L2:
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-36]
	cmp	r2, r3
	blt	.L7
	ldr	r3, [fp, #-32]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	rgb_to_ycc, .-rgb_to_ycc
	.ident	"GCC: (GNU) 8.2.1 20180801 (Red Hat 8.2.1-2)"
	.section	.note.GNU-stack,"",%progbits
