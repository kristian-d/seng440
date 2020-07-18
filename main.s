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
	.file	"main.c"
	.text
	.align	2
	.arch armv7-a
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__start_mem, %function
stbi__start_mem:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	ldr	r3, [fp, #-8]
	mov	r2, #0
	str	r2, [r3, #16]
	ldr	r3, [fp, #-8]
	mov	r2, #0
	str	r2, [r3, #32]
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-12]
	str	r2, [r3, #176]
	ldr	r3, [fp, #-8]
	ldr	r2, [r3, #176]
	ldr	r3, [fp, #-8]
	str	r2, [r3, #168]
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-12]
	add	r2, r2, r3
	ldr	r3, [fp, #-8]
	str	r2, [r3, #180]
	ldr	r3, [fp, #-8]
	ldr	r2, [r3, #180]
	ldr	r3, [fp, #-8]
	str	r2, [r3, #172]
	nop
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	stbi__start_mem, .-stbi__start_mem
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__start_callbacks, %function
stbi__start_callbacks:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-12]
	add	r3, r3, #16
	ldm	r2, {r0, r1, r2}
	stm	r3, {r0, r1, r2}
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-16]
	str	r2, [r3, #28]
	ldr	r3, [fp, #-8]
	mov	r2, #128
	str	r2, [r3, #36]
	ldr	r3, [fp, #-8]
	mov	r2, #1
	str	r2, [r3, #32]
	ldr	r3, [fp, #-8]
	add	r2, r3, #40
	ldr	r3, [fp, #-8]
	str	r2, [r3, #176]
	ldr	r0, [fp, #-8]
	bl	stbi__refill_buffer
	ldr	r3, [fp, #-8]
	ldr	r2, [r3, #172]
	ldr	r3, [fp, #-8]
	str	r2, [r3, #180]
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__start_callbacks, .-stbi__start_callbacks
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__stdio_read, %function
stbi__stdio_read:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-8]
	mov	r1, #1
	ldr	r0, [fp, #-12]
	bl	fread
	mov	r3, r0
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__stdio_read, .-stbi__stdio_read
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__stdio_skip, %function
stbi__stdio_skip:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	mov	r2, #1
	ldr	r1, [fp, #-12]
	ldr	r0, [fp, #-8]
	bl	fseek
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__stdio_skip, .-stbi__stdio_skip
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__stdio_eof, %function
stbi__stdio_eof:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	ldr	r0, [fp, #-8]
	bl	feof
	mov	r3, r0
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__stdio_eof, .-stbi__stdio_eof
	.data
	.align	2
	.type	stbi__stdio_callbacks, %object
	.size	stbi__stdio_callbacks, 12
stbi__stdio_callbacks:
	.word	stbi__stdio_read
	.word	stbi__stdio_skip
	.word	stbi__stdio_eof
	.text
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__start_file, %function
stbi__start_file:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	ldr	r2, [fp, #-12]
	movw	r1, #:lower16:stbi__stdio_callbacks
	movt	r1, #:upper16:stbi__stdio_callbacks
	ldr	r0, [fp, #-8]
	bl	stbi__start_callbacks
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__start_file, .-stbi__start_file
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__rewind, %function
stbi__rewind:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	ldr	r2, [r3, #176]
	ldr	r3, [fp, #-8]
	str	r2, [r3, #168]
	ldr	r3, [fp, #-8]
	ldr	r2, [r3, #180]
	ldr	r3, [fp, #-8]
	str	r2, [r3, #172]
	nop
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	stbi__rewind, .-stbi__rewind
	.section	.tbss,"awT",%nobits
	.align	2
	.type	stbi__g_failure_reason, %object
	.size	stbi__g_failure_reason, 4
stbi__g_failure_reason:
	.space	4
	.text
	.align	2
	.global	stbi_failure_reason
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi_failure_reason, %function
stbi_failure_reason:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	mrc	p15, 0, r3, c13, c0, 3	@ load_tp_hard
	ldr	r2, .L12
	ldr	r3, [r3, r2]
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
.L13:
	.align	2
.L12:
	.word	stbi__g_failure_reason(tpoff)
	.size	stbi_failure_reason, .-stbi_failure_reason
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__malloc, %function
stbi__malloc:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	ldr	r0, [fp, #-8]
	bl	malloc
	mov	r3, r0
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__malloc, .-stbi__malloc
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__addsizes_valid, %function
stbi__addsizes_valid:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	bge	.L17
	mov	r3, #0
	b	.L18
.L17:
	ldr	r2, [fp, #-12]
	movw	r3, #65535
	movt	r3, 32767
	sub	r3, r3, r2
	ldr	r2, [fp, #-8]
	cmp	r2, r3
	movle	r3, #1
	movgt	r3, #0
	uxtb	r3, r3
.L18:
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	stbi__addsizes_valid, .-stbi__addsizes_valid
	.global	__aeabi_idiv
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__mul2sizes_valid, %function
stbi__mul2sizes_valid:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	blt	.L20
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	bge	.L21
.L20:
	mov	r3, #0
	b	.L22
.L21:
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	bne	.L23
	mov	r3, #1
	b	.L22
.L23:
	ldr	r1, [fp, #-12]
	mvn	r0, #-2147483648
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [fp, #-8]
	cmp	r3, r2
	movle	r3, #1
	movgt	r3, #0
	uxtb	r3, r3
.L22:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__mul2sizes_valid, .-stbi__mul2sizes_valid
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__mad2sizes_valid, %function
stbi__mad2sizes_valid:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	ldr	r1, [fp, #-12]
	ldr	r0, [fp, #-8]
	bl	stbi__mul2sizes_valid
	mov	r3, r0
	cmp	r3, #0
	beq	.L25
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-12]
	mul	r3, r2, r3
	ldr	r1, [fp, #-16]
	mov	r0, r3
	bl	stbi__addsizes_valid
	mov	r3, r0
	cmp	r3, #0
	beq	.L25
	mov	r3, #1
	b	.L27
.L25:
	mov	r3, #0
.L27:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__mad2sizes_valid, .-stbi__mad2sizes_valid
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__mad3sizes_valid, %function
stbi__mad3sizes_valid:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	str	r3, [fp, #-20]
	ldr	r1, [fp, #-12]
	ldr	r0, [fp, #-8]
	bl	stbi__mul2sizes_valid
	mov	r3, r0
	cmp	r3, #0
	beq	.L29
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-12]
	mul	r3, r2, r3
	ldr	r1, [fp, #-16]
	mov	r0, r3
	bl	stbi__mul2sizes_valid
	mov	r3, r0
	cmp	r3, #0
	beq	.L29
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-12]
	mul	r3, r2, r3
	ldr	r2, [fp, #-16]
	mul	r3, r2, r3
	ldr	r1, [fp, #-20]
	mov	r0, r3
	bl	stbi__addsizes_valid
	mov	r3, r0
	cmp	r3, #0
	beq	.L29
	mov	r3, #1
	b	.L31
.L29:
	mov	r3, #0
.L31:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__mad3sizes_valid, .-stbi__mad3sizes_valid
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__mad4sizes_valid, %function
stbi__mad4sizes_valid:
	@ args = 4, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	str	r3, [fp, #-20]
	ldr	r1, [fp, #-12]
	ldr	r0, [fp, #-8]
	bl	stbi__mul2sizes_valid
	mov	r3, r0
	cmp	r3, #0
	beq	.L33
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-12]
	mul	r3, r2, r3
	ldr	r1, [fp, #-16]
	mov	r0, r3
	bl	stbi__mul2sizes_valid
	mov	r3, r0
	cmp	r3, #0
	beq	.L33
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-12]
	mul	r3, r2, r3
	ldr	r2, [fp, #-16]
	mul	r3, r2, r3
	ldr	r1, [fp, #-20]
	mov	r0, r3
	bl	stbi__mul2sizes_valid
	mov	r3, r0
	cmp	r3, #0
	beq	.L33
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-12]
	mul	r3, r2, r3
	ldr	r2, [fp, #-16]
	mul	r3, r2, r3
	ldr	r2, [fp, #-20]
	mul	r3, r2, r3
	ldr	r1, [fp, #4]
	mov	r0, r3
	bl	stbi__addsizes_valid
	mov	r3, r0
	cmp	r3, #0
	beq	.L33
	mov	r3, #1
	b	.L35
.L33:
	mov	r3, #0
.L35:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__mad4sizes_valid, .-stbi__mad4sizes_valid
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__malloc_mad2, %function
stbi__malloc_mad2:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	ldr	r2, [fp, #-16]
	ldr	r1, [fp, #-12]
	ldr	r0, [fp, #-8]
	bl	stbi__mad2sizes_valid
	mov	r3, r0
	cmp	r3, #0
	bne	.L37
	mov	r3, #0
	b	.L38
.L37:
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-12]
	mul	r2, r2, r3
	ldr	r3, [fp, #-16]
	add	r3, r2, r3
	mov	r0, r3
	bl	stbi__malloc
	mov	r3, r0
.L38:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__malloc_mad2, .-stbi__malloc_mad2
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__malloc_mad3, %function
stbi__malloc_mad3:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-20]
	ldr	r2, [fp, #-16]
	ldr	r1, [fp, #-12]
	ldr	r0, [fp, #-8]
	bl	stbi__mad3sizes_valid
	mov	r3, r0
	cmp	r3, #0
	bne	.L40
	mov	r3, #0
	b	.L41
.L40:
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-12]
	mul	r3, r2, r3
	ldr	r2, [fp, #-16]
	mul	r2, r2, r3
	ldr	r3, [fp, #-20]
	add	r3, r2, r3
	mov	r0, r3
	bl	stbi__malloc
	mov	r3, r0
.L41:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__malloc_mad3, .-stbi__malloc_mad3
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__malloc_mad4, %function
stbi__malloc_mad4:
	@ args = 4, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #24
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	str	r3, [fp, #-20]
	ldr	r3, [fp, #4]
	str	r3, [sp]
	ldr	r3, [fp, #-20]
	ldr	r2, [fp, #-16]
	ldr	r1, [fp, #-12]
	ldr	r0, [fp, #-8]
	bl	stbi__mad4sizes_valid
	mov	r3, r0
	cmp	r3, #0
	bne	.L43
	mov	r3, #0
	b	.L44
.L43:
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-12]
	mul	r3, r2, r3
	ldr	r2, [fp, #-16]
	mul	r3, r2, r3
	ldr	r2, [fp, #-20]
	mul	r2, r2, r3
	ldr	r3, [fp, #4]
	add	r3, r2, r3
	mov	r0, r3
	bl	stbi__malloc
	mov	r3, r0
.L44:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__malloc_mad4, .-stbi__malloc_mad4
	.align	2
	.global	stbi_image_free
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi_image_free, %function
stbi_image_free:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	ldr	r0, [fp, #-8]
	bl	free
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi_image_free, .-stbi_image_free
	.local	stbi__vertically_flip_on_load_global
	.comm	stbi__vertically_flip_on_load_global,4,4
	.align	2
	.global	stbi_set_flip_vertically_on_load
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi_set_flip_vertically_on_load, %function
stbi_set_flip_vertically_on_load:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	movw	r3, #:lower16:stbi__vertically_flip_on_load_global
	movt	r3, #:upper16:stbi__vertically_flip_on_load_global
	ldr	r2, [fp, #-8]
	str	r2, [r3]
	nop
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	stbi_set_flip_vertically_on_load, .-stbi_set_flip_vertically_on_load
	.section	.tbss
	.align	2
	.type	stbi__vertically_flip_on_load_local, %object
	.size	stbi__vertically_flip_on_load_local, 4
stbi__vertically_flip_on_load_local:
	.space	4
	.align	2
	.type	stbi__vertically_flip_on_load_set, %object
	.size	stbi__vertically_flip_on_load_set, 4
stbi__vertically_flip_on_load_set:
	.space	4
	.text
	.align	2
	.global	stbi_set_flip_vertically_on_load_thread
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi_set_flip_vertically_on_load_thread, %function
stbi_set_flip_vertically_on_load_thread:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	mrc	p15, 0, r3, c13, c0, 3	@ load_tp_hard
	ldr	r1, .L48
	ldr	r2, [fp, #-8]
	str	r2, [r3, r1]
	mrc	p15, 0, r3, c13, c0, 3	@ load_tp_hard
	ldr	r2, .L48+4
	mov	r1, #1
	str	r1, [r3, r2]
	nop
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
.L49:
	.align	2
.L48:
	.word	stbi__vertically_flip_on_load_local(tpoff)
	.word	stbi__vertically_flip_on_load_set(tpoff)
	.size	stbi_set_flip_vertically_on_load_thread, .-stbi_set_flip_vertically_on_load_thread
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__load_main, %function
stbi__load_main:
	@ args = 12, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #40
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	str	r3, [fp, #-28]
	mov	r2, #12
	mov	r1, #0
	ldr	r0, [fp, #8]
	bl	memset
	ldr	r3, [fp, #8]
	mov	r2, #8
	str	r2, [r3]
	ldr	r3, [fp, #8]
	mov	r2, #0
	str	r2, [r3, #8]
	ldr	r3, [fp, #8]
	mov	r2, #0
	str	r2, [r3, #4]
	ldr	r0, [fp, #-16]
	bl	stbi__jpeg_test
	mov	r3, r0
	cmp	r3, #0
	beq	.L51
	ldr	r3, [fp, #8]
	str	r3, [sp, #4]
	ldr	r3, [fp, #4]
	str	r3, [sp]
	ldr	r3, [fp, #-28]
	ldr	r2, [fp, #-24]
	ldr	r1, [fp, #-20]
	ldr	r0, [fp, #-16]
	bl	stbi__jpeg_load
	mov	r3, r0
	b	.L52
.L51:
	ldr	r0, [fp, #-16]
	bl	stbi__png_test
	mov	r3, r0
	cmp	r3, #0
	beq	.L53
	ldr	r3, [fp, #8]
	str	r3, [sp, #4]
	ldr	r3, [fp, #4]
	str	r3, [sp]
	ldr	r3, [fp, #-28]
	ldr	r2, [fp, #-24]
	ldr	r1, [fp, #-20]
	ldr	r0, [fp, #-16]
	bl	stbi__png_load
	mov	r3, r0
	b	.L52
.L53:
	ldr	r0, [fp, #-16]
	bl	stbi__bmp_test
	mov	r3, r0
	cmp	r3, #0
	beq	.L54
	ldr	r3, [fp, #8]
	str	r3, [sp, #4]
	ldr	r3, [fp, #4]
	str	r3, [sp]
	ldr	r3, [fp, #-28]
	ldr	r2, [fp, #-24]
	ldr	r1, [fp, #-20]
	ldr	r0, [fp, #-16]
	bl	stbi__bmp_load
	mov	r3, r0
	b	.L52
.L54:
	ldr	r0, [fp, #-16]
	bl	stbi__gif_test
	mov	r3, r0
	cmp	r3, #0
	beq	.L55
	ldr	r3, [fp, #8]
	str	r3, [sp, #4]
	ldr	r3, [fp, #4]
	str	r3, [sp]
	ldr	r3, [fp, #-28]
	ldr	r2, [fp, #-24]
	ldr	r1, [fp, #-20]
	ldr	r0, [fp, #-16]
	bl	stbi__gif_load
	mov	r3, r0
	b	.L52
.L55:
	ldr	r0, [fp, #-16]
	bl	stbi__psd_test
	mov	r3, r0
	cmp	r3, #0
	beq	.L56
	ldr	r3, [fp, #12]
	str	r3, [sp, #8]
	ldr	r3, [fp, #8]
	str	r3, [sp, #4]
	ldr	r3, [fp, #4]
	str	r3, [sp]
	ldr	r3, [fp, #-28]
	ldr	r2, [fp, #-24]
	ldr	r1, [fp, #-20]
	ldr	r0, [fp, #-16]
	bl	stbi__psd_load
	mov	r3, r0
	b	.L52
.L56:
	ldr	r0, [fp, #-16]
	bl	stbi__pic_test
	mov	r3, r0
	cmp	r3, #0
	beq	.L57
	ldr	r3, [fp, #8]
	str	r3, [sp, #4]
	ldr	r3, [fp, #4]
	str	r3, [sp]
	ldr	r3, [fp, #-28]
	ldr	r2, [fp, #-24]
	ldr	r1, [fp, #-20]
	ldr	r0, [fp, #-16]
	bl	stbi__pic_load
	mov	r3, r0
	b	.L52
.L57:
	ldr	r0, [fp, #-16]
	bl	stbi__pnm_test
	mov	r3, r0
	cmp	r3, #0
	beq	.L58
	ldr	r3, [fp, #8]
	str	r3, [sp, #4]
	ldr	r3, [fp, #4]
	str	r3, [sp]
	ldr	r3, [fp, #-28]
	ldr	r2, [fp, #-24]
	ldr	r1, [fp, #-20]
	ldr	r0, [fp, #-16]
	bl	stbi__pnm_load
	mov	r3, r0
	b	.L52
.L58:
	ldr	r0, [fp, #-16]
	bl	stbi__hdr_test
	mov	r3, r0
	cmp	r3, #0
	beq	.L59
	ldr	r3, [fp, #8]
	str	r3, [sp, #4]
	ldr	r3, [fp, #4]
	str	r3, [sp]
	ldr	r3, [fp, #-28]
	ldr	r2, [fp, #-24]
	ldr	r1, [fp, #-20]
	ldr	r0, [fp, #-16]
	bl	stbi__hdr_load
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-20]
	ldr	r1, [r3]
	ldr	r3, [fp, #-24]
	ldr	r2, [r3]
	ldr	r3, [fp, #4]
	cmp	r3, #0
	bne	.L60
	ldr	r3, [fp, #-28]
	ldr	r3, [r3]
	b	.L61
.L60:
	ldr	r3, [fp, #4]
.L61:
	ldr	r0, [fp, #-8]
	bl	stbi__hdr_to_ldr
	mov	r3, r0
	b	.L52
.L59:
	ldr	r0, [fp, #-16]
	bl	stbi__tga_test
	mov	r3, r0
	cmp	r3, #0
	beq	.L62
	ldr	r3, [fp, #8]
	str	r3, [sp, #4]
	ldr	r3, [fp, #4]
	str	r3, [sp]
	ldr	r3, [fp, #-28]
	ldr	r2, [fp, #-24]
	ldr	r1, [fp, #-20]
	ldr	r0, [fp, #-16]
	bl	stbi__tga_load
	mov	r3, r0
	b	.L52
.L62:
	mov	r3, #0
.L52:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__load_main, .-stbi__load_main
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__convert_16_to_8, %function
stbi__convert_16_to_8:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #32
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	str	r2, [fp, #-32]
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-28]
	ldr	r2, [fp, #-32]
	mul	r2, r2, r3
	ldr	r3, [fp, #-36]
	mul	r3, r2, r3
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-12]
	mov	r0, r3
	bl	stbi__malloc
	str	r0, [fp, #-16]
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	bne	.L64
	mov	r3, #0
	b	.L65
.L64:
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L66
.L67:
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldrh	r3, [r3]
	lsr	r3, r3, #8
	uxth	r1, r3
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-16]
	add	r3, r2, r3
	uxtb	r2, r1
	strb	r2, [r3]
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L66:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-12]
	cmp	r2, r3
	blt	.L67
	ldr	r0, [fp, #-24]
	bl	free
	ldr	r3, [fp, #-16]
.L65:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__convert_16_to_8, .-stbi__convert_16_to_8
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__convert_8_to_16, %function
stbi__convert_8_to_16:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #32
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	str	r2, [fp, #-32]
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-28]
	ldr	r2, [fp, #-32]
	mul	r2, r2, r3
	ldr	r3, [fp, #-36]
	mul	r3, r2, r3
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-12]
	lsl	r3, r3, #1
	mov	r0, r3
	bl	stbi__malloc
	str	r0, [fp, #-16]
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	bne	.L69
	mov	r3, #0
	b	.L70
.L69:
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L71
.L72:
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	uxth	r3, r3
	lsl	r3, r3, #8
	uxth	r1, r3
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	uxth	r2, r3
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #1
	ldr	r0, [fp, #-16]
	add	r3, r0, r3
	add	r2, r1, r2
	uxth	r2, r2
	strh	r2, [r3]	@ movhi
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L71:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-12]
	cmp	r2, r3
	blt	.L72
	ldr	r0, [fp, #-24]
	bl	free
	ldr	r3, [fp, #-16]
.L70:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__convert_8_to_16, .-stbi__convert_8_to_16
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__vertical_flip, %function
stbi__vertical_flip:
	@ args = 0, pretend = 0, frame = 2096
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #2096
	str	r0, [fp, #-2088]
	str	r1, [fp, #-2092]
	str	r2, [fp, #-2096]
	str	r3, [fp, #-2100]
	ldr	r3, [fp, #-2092]
	ldr	r2, [fp, #-2100]
	mul	r3, r2, r3
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-2088]
	str	r3, [fp, #-28]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L74
.L77:
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-24]
	mul	r3, r2, r3
	ldr	r2, [fp, #-28]
	add	r3, r2, r3
	str	r3, [fp, #-12]
	ldr	r2, [fp, #-2096]
	ldr	r3, [fp, #-8]
	sub	r3, r2, r3
	sub	r3, r3, #1
	mov	r2, r3
	ldr	r3, [fp, #-24]
	mul	r3, r3, r2
	ldr	r2, [fp, #-28]
	add	r3, r2, r3
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-24]
	str	r3, [fp, #-20]
	b	.L75
.L76:
	ldr	r3, [fp, #-20]
	cmp	r3, #2048
	movcc	r3, r3
	movcs	r3, #2048
	str	r3, [fp, #-32]
	sub	r3, fp, #2064
	sub	r3, r3, #4
	sub	r3, r3, #12
	ldr	r2, [fp, #-32]
	ldr	r1, [fp, #-12]
	mov	r0, r3
	bl	memcpy
	ldr	r2, [fp, #-32]
	ldr	r1, [fp, #-16]
	ldr	r0, [fp, #-12]
	bl	memcpy
	sub	r3, fp, #2064
	sub	r3, r3, #4
	sub	r3, r3, #12
	ldr	r2, [fp, #-32]
	mov	r1, r3
	ldr	r0, [fp, #-16]
	bl	memcpy
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-32]
	add	r3, r2, r3
	str	r3, [fp, #-12]
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-32]
	add	r3, r2, r3
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-32]
	sub	r3, r2, r3
	str	r3, [fp, #-20]
.L75:
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	bne	.L76
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L74:
	ldr	r3, [fp, #-2096]
	asr	r3, r3, #1
	ldr	r2, [fp, #-8]
	cmp	r2, r3
	blt	.L77
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__vertical_flip, .-stbi__vertical_flip
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__vertical_flip_slices, %function
stbi__vertical_flip_slices:
	@ args = 4, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #32
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	str	r2, [fp, #-32]
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-28]
	ldr	r2, [fp, #-32]
	mul	r2, r2, r3
	ldr	r3, [fp, #4]
	mul	r3, r2, r3
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-24]
	str	r3, [fp, #-12]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L79
.L80:
	ldr	r3, [fp, #4]
	ldr	r2, [fp, #-32]
	ldr	r1, [fp, #-28]
	ldr	r0, [fp, #-12]
	bl	stbi__vertical_flip
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-12]
	add	r3, r2, r3
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L79:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-36]
	cmp	r2, r3
	blt	.L80
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__vertical_flip_slices, .-stbi__vertical_flip_slices
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__load_and_postprocess_8bit, %function
stbi__load_and_postprocess_8bit:
	@ args = 4, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #56
	str	r0, [fp, #-32]
	str	r1, [fp, #-36]
	str	r2, [fp, #-40]
	str	r3, [fp, #-44]
	mov	r3, #8
	str	r3, [sp, #8]
	sub	r3, fp, #24
	str	r3, [sp, #4]
	ldr	r3, [fp, #4]
	str	r3, [sp]
	ldr	r3, [fp, #-44]
	ldr	r2, [fp, #-40]
	ldr	r1, [fp, #-36]
	ldr	r0, [fp, #-32]
	bl	stbi__load_main
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	bne	.L82
	mov	r3, #0
	b	.L92
.L82:
	ldr	r3, [fp, #-24]
	cmp	r3, #8
	beq	.L84
	ldr	r3, [fp, #-36]
	ldr	r1, [r3]
	ldr	r3, [fp, #-40]
	ldr	r2, [r3]
	ldr	r3, [fp, #4]
	cmp	r3, #0
	bne	.L85
	ldr	r3, [fp, #-44]
	ldr	r3, [r3]
	b	.L86
.L85:
	ldr	r3, [fp, #4]
.L86:
	ldr	r0, [fp, #-8]
	bl	stbi__convert_16_to_8
	str	r0, [fp, #-8]
	mov	r3, #8
	str	r3, [fp, #-24]
.L84:
	mrc	p15, 0, r3, c13, c0, 3	@ load_tp_hard
	ldr	r2, .L93
	ldr	r3, [r3, r2]
	cmp	r3, #0
	beq	.L87
	mrc	p15, 0, r3, c13, c0, 3	@ load_tp_hard
	ldr	r2, .L93+4
	ldr	r3, [r3, r2]
	cmp	r3, #0
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	b	.L88
.L87:
	movw	r3, #:lower16:stbi__vertically_flip_on_load_global
	movt	r3, #:upper16:stbi__vertically_flip_on_load_global
	ldr	r3, [r3]
	cmp	r3, #0
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
.L88:
	cmp	r3, #0
	beq	.L89
	ldr	r3, [fp, #4]
	cmp	r3, #0
	bne	.L90
	ldr	r3, [fp, #-44]
	ldr	r3, [r3]
	b	.L91
.L90:
	ldr	r3, [fp, #4]
.L91:
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-36]
	ldr	r1, [r3]
	ldr	r3, [fp, #-40]
	ldr	r2, [r3]
	ldr	r3, [fp, #-12]
	ldr	r0, [fp, #-8]
	bl	stbi__vertical_flip
.L89:
	ldr	r3, [fp, #-8]
.L92:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L94:
	.align	2
.L93:
	.word	stbi__vertically_flip_on_load_set(tpoff)
	.word	stbi__vertically_flip_on_load_local(tpoff)
	.size	stbi__load_and_postprocess_8bit, .-stbi__load_and_postprocess_8bit
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__load_and_postprocess_16bit, %function
stbi__load_and_postprocess_16bit:
	@ args = 4, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #56
	str	r0, [fp, #-32]
	str	r1, [fp, #-36]
	str	r2, [fp, #-40]
	str	r3, [fp, #-44]
	mov	r3, #16
	str	r3, [sp, #8]
	sub	r3, fp, #24
	str	r3, [sp, #4]
	ldr	r3, [fp, #4]
	str	r3, [sp]
	ldr	r3, [fp, #-44]
	ldr	r2, [fp, #-40]
	ldr	r1, [fp, #-36]
	ldr	r0, [fp, #-32]
	bl	stbi__load_main
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	bne	.L96
	mov	r3, #0
	b	.L106
.L96:
	ldr	r3, [fp, #-24]
	cmp	r3, #16
	beq	.L98
	ldr	r3, [fp, #-36]
	ldr	r1, [r3]
	ldr	r3, [fp, #-40]
	ldr	r2, [r3]
	ldr	r3, [fp, #4]
	cmp	r3, #0
	bne	.L99
	ldr	r3, [fp, #-44]
	ldr	r3, [r3]
	b	.L100
.L99:
	ldr	r3, [fp, #4]
.L100:
	ldr	r0, [fp, #-8]
	bl	stbi__convert_8_to_16
	str	r0, [fp, #-8]
	mov	r3, #16
	str	r3, [fp, #-24]
.L98:
	mrc	p15, 0, r3, c13, c0, 3	@ load_tp_hard
	ldr	r2, .L107
	ldr	r3, [r3, r2]
	cmp	r3, #0
	beq	.L101
	mrc	p15, 0, r3, c13, c0, 3	@ load_tp_hard
	ldr	r2, .L107+4
	ldr	r3, [r3, r2]
	cmp	r3, #0
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	b	.L102
.L101:
	movw	r3, #:lower16:stbi__vertically_flip_on_load_global
	movt	r3, #:upper16:stbi__vertically_flip_on_load_global
	ldr	r3, [r3]
	cmp	r3, #0
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
.L102:
	cmp	r3, #0
	beq	.L103
	ldr	r3, [fp, #4]
	cmp	r3, #0
	bne	.L104
	ldr	r3, [fp, #-44]
	ldr	r3, [r3]
	b	.L105
.L104:
	ldr	r3, [fp, #4]
.L105:
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-36]
	ldr	r1, [r3]
	ldr	r3, [fp, #-40]
	ldr	r2, [r3]
	ldr	r3, [fp, #-12]
	lsl	r3, r3, #1
	ldr	r0, [fp, #-8]
	bl	stbi__vertical_flip
.L103:
	ldr	r3, [fp, #-8]
.L106:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L108:
	.align	2
.L107:
	.word	stbi__vertically_flip_on_load_set(tpoff)
	.word	stbi__vertically_flip_on_load_local(tpoff)
	.size	stbi__load_and_postprocess_16bit, .-stbi__load_and_postprocess_16bit
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__float_postprocess, %function
stbi__float_postprocess:
	@ args = 4, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #24
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	str	r3, [fp, #-28]
	mrc	p15, 0, r3, c13, c0, 3	@ load_tp_hard
	ldr	r2, .L116
	ldr	r3, [r3, r2]
	cmp	r3, #0
	beq	.L110
	mrc	p15, 0, r3, c13, c0, 3	@ load_tp_hard
	ldr	r2, .L116+4
	ldr	r3, [r3, r2]
	cmp	r3, #0
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	b	.L111
.L110:
	movw	r3, #:lower16:stbi__vertically_flip_on_load_global
	movt	r3, #:upper16:stbi__vertically_flip_on_load_global
	ldr	r3, [r3]
	cmp	r3, #0
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
.L111:
	cmp	r3, #0
	beq	.L115
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	beq	.L115
	ldr	r3, [fp, #4]
	cmp	r3, #0
	bne	.L113
	ldr	r3, [fp, #-28]
	ldr	r3, [r3]
	b	.L114
.L113:
	ldr	r3, [fp, #4]
.L114:
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-20]
	ldr	r1, [r3]
	ldr	r3, [fp, #-24]
	ldr	r2, [r3]
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #2
	ldr	r0, [fp, #-16]
	bl	stbi__vertical_flip
.L115:
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L117:
	.align	2
.L116:
	.word	stbi__vertically_flip_on_load_set(tpoff)
	.word	stbi__vertically_flip_on_load_local(tpoff)
	.size	stbi__float_postprocess, .-stbi__float_postprocess
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__fopen, %function
stbi__fopen:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	ldr	r1, [fp, #-20]
	ldr	r0, [fp, #-16]
	bl	fopen
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__fopen, .-stbi__fopen
	.section	.rodata
	.align	2
.LC8:
	.ascii	"rb\000"
	.text
	.align	2
	.global	stbi_load
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi_load, %function
stbi_load:
	@ args = 4, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #32
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	str	r3, [fp, #-28]
	movw	r1, #:lower16:.LC8
	movt	r1, #:upper16:.LC8
	ldr	r0, [fp, #-16]
	bl	stbi__fopen
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	bne	.L121
	mov	r3, #0
	b	.L122
.L121:
	ldr	r3, [fp, #4]
	str	r3, [sp]
	ldr	r3, [fp, #-28]
	ldr	r2, [fp, #-24]
	ldr	r1, [fp, #-20]
	ldr	r0, [fp, #-8]
	bl	stbi_load_from_file
	str	r0, [fp, #-12]
	ldr	r0, [fp, #-8]
	bl	fclose
	ldr	r3, [fp, #-12]
.L122:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi_load, .-stbi_load
	.align	2
	.global	stbi_load_from_file
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi_load_from_file, %function
stbi_load_from_file:
	@ args = 4, pretend = 0, frame = 208
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #216
	str	r0, [fp, #-200]
	str	r1, [fp, #-204]
	str	r2, [fp, #-208]
	str	r3, [fp, #-212]
	sub	r3, fp, #192
	ldr	r1, [fp, #-200]
	mov	r0, r3
	bl	stbi__start_file
	sub	r0, fp, #192
	ldr	r3, [fp, #4]
	str	r3, [sp]
	ldr	r3, [fp, #-212]
	ldr	r2, [fp, #-208]
	ldr	r1, [fp, #-204]
	bl	stbi__load_and_postprocess_8bit
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	beq	.L124
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-20]
	sub	r3, r2, r3
	mov	r2, #1
	mov	r1, r3
	ldr	r0, [fp, #-200]
	bl	fseek
.L124:
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi_load_from_file, .-stbi_load_from_file
	.align	2
	.global	stbi_load_from_file_16
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi_load_from_file_16, %function
stbi_load_from_file_16:
	@ args = 4, pretend = 0, frame = 208
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #216
	str	r0, [fp, #-200]
	str	r1, [fp, #-204]
	str	r2, [fp, #-208]
	str	r3, [fp, #-212]
	sub	r3, fp, #192
	ldr	r1, [fp, #-200]
	mov	r0, r3
	bl	stbi__start_file
	sub	r0, fp, #192
	ldr	r3, [fp, #4]
	str	r3, [sp]
	ldr	r3, [fp, #-212]
	ldr	r2, [fp, #-208]
	ldr	r1, [fp, #-204]
	bl	stbi__load_and_postprocess_16bit
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	beq	.L127
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-20]
	sub	r3, r2, r3
	mov	r2, #1
	mov	r1, r3
	ldr	r0, [fp, #-200]
	bl	fseek
.L127:
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi_load_from_file_16, .-stbi_load_from_file_16
	.align	2
	.global	stbi_load_16
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi_load_16, %function
stbi_load_16:
	@ args = 4, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #32
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	str	r3, [fp, #-28]
	movw	r1, #:lower16:.LC8
	movt	r1, #:upper16:.LC8
	ldr	r0, [fp, #-16]
	bl	stbi__fopen
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	bne	.L130
	mov	r3, #0
	b	.L131
.L130:
	ldr	r3, [fp, #4]
	str	r3, [sp]
	ldr	r3, [fp, #-28]
	ldr	r2, [fp, #-24]
	ldr	r1, [fp, #-20]
	ldr	r0, [fp, #-8]
	bl	stbi_load_from_file_16
	str	r0, [fp, #-12]
	ldr	r0, [fp, #-8]
	bl	fclose
	ldr	r3, [fp, #-12]
.L131:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi_load_16, .-stbi_load_16
	.align	2
	.global	stbi_load_16_from_memory
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi_load_16_from_memory, %function
stbi_load_16_from_memory:
	@ args = 8, pretend = 0, frame = 200
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #208
	str	r0, [fp, #-192]
	str	r1, [fp, #-196]
	str	r2, [fp, #-200]
	str	r3, [fp, #-204]
	sub	r3, fp, #188
	ldr	r2, [fp, #-196]
	ldr	r1, [fp, #-192]
	mov	r0, r3
	bl	stbi__start_mem
	sub	r0, fp, #188
	ldr	r3, [fp, #8]
	str	r3, [sp]
	ldr	r3, [fp, #4]
	ldr	r2, [fp, #-204]
	ldr	r1, [fp, #-200]
	bl	stbi__load_and_postprocess_16bit
	mov	r3, r0
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi_load_16_from_memory, .-stbi_load_16_from_memory
	.align	2
	.global	stbi_load_16_from_callbacks
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi_load_16_from_callbacks, %function
stbi_load_16_from_callbacks:
	@ args = 8, pretend = 0, frame = 200
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #208
	str	r0, [fp, #-192]
	str	r1, [fp, #-196]
	str	r2, [fp, #-200]
	str	r3, [fp, #-204]
	sub	r3, fp, #188
	ldr	r2, [fp, #-196]
	ldr	r1, [fp, #-192]
	mov	r0, r3
	bl	stbi__start_callbacks
	sub	r0, fp, #188
	ldr	r3, [fp, #8]
	str	r3, [sp]
	ldr	r3, [fp, #4]
	ldr	r2, [fp, #-204]
	ldr	r1, [fp, #-200]
	bl	stbi__load_and_postprocess_16bit
	mov	r3, r0
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi_load_16_from_callbacks, .-stbi_load_16_from_callbacks
	.align	2
	.global	stbi_load_from_memory
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi_load_from_memory, %function
stbi_load_from_memory:
	@ args = 8, pretend = 0, frame = 200
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #208
	str	r0, [fp, #-192]
	str	r1, [fp, #-196]
	str	r2, [fp, #-200]
	str	r3, [fp, #-204]
	sub	r3, fp, #188
	ldr	r2, [fp, #-196]
	ldr	r1, [fp, #-192]
	mov	r0, r3
	bl	stbi__start_mem
	sub	r0, fp, #188
	ldr	r3, [fp, #8]
	str	r3, [sp]
	ldr	r3, [fp, #4]
	ldr	r2, [fp, #-204]
	ldr	r1, [fp, #-200]
	bl	stbi__load_and_postprocess_8bit
	mov	r3, r0
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi_load_from_memory, .-stbi_load_from_memory
	.align	2
	.global	stbi_load_from_callbacks
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi_load_from_callbacks, %function
stbi_load_from_callbacks:
	@ args = 8, pretend = 0, frame = 200
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #208
	str	r0, [fp, #-192]
	str	r1, [fp, #-196]
	str	r2, [fp, #-200]
	str	r3, [fp, #-204]
	sub	r3, fp, #188
	ldr	r2, [fp, #-196]
	ldr	r1, [fp, #-192]
	mov	r0, r3
	bl	stbi__start_callbacks
	sub	r0, fp, #188
	ldr	r3, [fp, #8]
	str	r3, [sp]
	ldr	r3, [fp, #4]
	ldr	r2, [fp, #-204]
	ldr	r1, [fp, #-200]
	bl	stbi__load_and_postprocess_8bit
	mov	r3, r0
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi_load_from_callbacks, .-stbi_load_from_callbacks
	.align	2
	.global	stbi_load_gif_from_memory
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi_load_gif_from_memory, %function
stbi_load_gif_from_memory:
	@ args = 16, pretend = 0, frame = 208
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #224
	str	r0, [fp, #-200]
	str	r1, [fp, #-204]
	str	r2, [fp, #-208]
	str	r3, [fp, #-212]
	sub	r3, fp, #192
	ldr	r2, [fp, #-204]
	ldr	r1, [fp, #-200]
	mov	r0, r3
	bl	stbi__start_mem
	sub	r0, fp, #192
	ldr	r3, [fp, #16]
	str	r3, [sp, #8]
	ldr	r3, [fp, #12]
	str	r3, [sp, #4]
	ldr	r3, [fp, #8]
	str	r3, [sp]
	ldr	r3, [fp, #4]
	ldr	r2, [fp, #-212]
	ldr	r1, [fp, #-208]
	bl	stbi__load_gif_main
	str	r0, [fp, #-8]
	mrc	p15, 0, r3, c13, c0, 3	@ load_tp_hard
	ldr	r2, .L145
	ldr	r3, [r3, r2]
	cmp	r3, #0
	beq	.L141
	mrc	p15, 0, r3, c13, c0, 3	@ load_tp_hard
	ldr	r2, .L145+4
	ldr	r3, [r3, r2]
	cmp	r3, #0
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	b	.L142
.L141:
	movw	r3, #:lower16:stbi__vertically_flip_on_load_global
	movt	r3, #:upper16:stbi__vertically_flip_on_load_global
	ldr	r3, [r3]
	cmp	r3, #0
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
.L142:
	cmp	r3, #0
	beq	.L143
	ldr	r3, [fp, #-212]
	ldr	r1, [r3]
	ldr	r3, [fp, #4]
	ldr	r2, [r3]
	ldr	r3, [fp, #8]
	ldr	r0, [r3]
	ldr	r3, [fp, #12]
	ldr	r3, [r3]
	str	r3, [sp]
	mov	r3, r0
	ldr	r0, [fp, #-8]
	bl	stbi__vertical_flip_slices
.L143:
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L146:
	.align	2
.L145:
	.word	stbi__vertically_flip_on_load_set(tpoff)
	.word	stbi__vertically_flip_on_load_local(tpoff)
	.size	stbi_load_gif_from_memory, .-stbi_load_gif_from_memory
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__loadf_main, %function
stbi__loadf_main:
	@ args = 4, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #48
	str	r0, [fp, #-32]
	str	r1, [fp, #-36]
	str	r2, [fp, #-40]
	str	r3, [fp, #-44]
	ldr	r0, [fp, #-32]
	bl	stbi__hdr_test
	mov	r3, r0
	cmp	r3, #0
	beq	.L148
	sub	r3, fp, #24
	str	r3, [sp, #4]
	ldr	r3, [fp, #4]
	str	r3, [sp]
	ldr	r3, [fp, #-44]
	ldr	r2, [fp, #-40]
	ldr	r1, [fp, #-36]
	ldr	r0, [fp, #-32]
	bl	stbi__hdr_load
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	beq	.L149
	ldr	r3, [fp, #4]
	str	r3, [sp]
	ldr	r3, [fp, #-44]
	ldr	r2, [fp, #-40]
	ldr	r1, [fp, #-36]
	ldr	r0, [fp, #-8]
	bl	stbi__float_postprocess
.L149:
	ldr	r3, [fp, #-8]
	b	.L150
.L148:
	ldr	r3, [fp, #4]
	str	r3, [sp]
	ldr	r3, [fp, #-44]
	ldr	r2, [fp, #-40]
	ldr	r1, [fp, #-36]
	ldr	r0, [fp, #-32]
	bl	stbi__load_and_postprocess_8bit
	str	r0, [fp, #-12]
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	beq	.L151
	ldr	r3, [fp, #-36]
	ldr	r1, [r3]
	ldr	r3, [fp, #-40]
	ldr	r2, [r3]
	ldr	r3, [fp, #4]
	cmp	r3, #0
	bne	.L152
	ldr	r3, [fp, #-44]
	ldr	r3, [r3]
	b	.L153
.L152:
	ldr	r3, [fp, #4]
.L153:
	ldr	r0, [fp, #-12]
	bl	stbi__ldr_to_hdr
	mov	r3, r0
	b	.L150
.L151:
	mov	r3, #0
.L150:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__loadf_main, .-stbi__loadf_main
	.align	2
	.global	stbi_loadf_from_memory
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi_loadf_from_memory, %function
stbi_loadf_from_memory:
	@ args = 8, pretend = 0, frame = 200
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #208
	str	r0, [fp, #-192]
	str	r1, [fp, #-196]
	str	r2, [fp, #-200]
	str	r3, [fp, #-204]
	sub	r3, fp, #188
	ldr	r2, [fp, #-196]
	ldr	r1, [fp, #-192]
	mov	r0, r3
	bl	stbi__start_mem
	sub	r0, fp, #188
	ldr	r3, [fp, #8]
	str	r3, [sp]
	ldr	r3, [fp, #4]
	ldr	r2, [fp, #-204]
	ldr	r1, [fp, #-200]
	bl	stbi__loadf_main
	mov	r3, r0
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi_loadf_from_memory, .-stbi_loadf_from_memory
	.align	2
	.global	stbi_loadf_from_callbacks
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi_loadf_from_callbacks, %function
stbi_loadf_from_callbacks:
	@ args = 8, pretend = 0, frame = 200
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #208
	str	r0, [fp, #-192]
	str	r1, [fp, #-196]
	str	r2, [fp, #-200]
	str	r3, [fp, #-204]
	sub	r3, fp, #188
	ldr	r2, [fp, #-196]
	ldr	r1, [fp, #-192]
	mov	r0, r3
	bl	stbi__start_callbacks
	sub	r0, fp, #188
	ldr	r3, [fp, #8]
	str	r3, [sp]
	ldr	r3, [fp, #4]
	ldr	r2, [fp, #-204]
	ldr	r1, [fp, #-200]
	bl	stbi__loadf_main
	mov	r3, r0
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi_loadf_from_callbacks, .-stbi_loadf_from_callbacks
	.align	2
	.global	stbi_loadf
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi_loadf, %function
stbi_loadf:
	@ args = 4, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #32
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	str	r3, [fp, #-28]
	movw	r1, #:lower16:.LC8
	movt	r1, #:upper16:.LC8
	ldr	r0, [fp, #-16]
	bl	stbi__fopen
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	bne	.L159
	mov	r3, #0
	b	.L160
.L159:
	ldr	r3, [fp, #4]
	str	r3, [sp]
	ldr	r3, [fp, #-28]
	ldr	r2, [fp, #-24]
	ldr	r1, [fp, #-20]
	ldr	r0, [fp, #-8]
	bl	stbi_loadf_from_file
	str	r0, [fp, #-12]
	ldr	r0, [fp, #-8]
	bl	fclose
	ldr	r3, [fp, #-12]
.L160:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi_loadf, .-stbi_loadf
	.align	2
	.global	stbi_loadf_from_file
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi_loadf_from_file, %function
stbi_loadf_from_file:
	@ args = 4, pretend = 0, frame = 200
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #208
	str	r0, [fp, #-192]
	str	r1, [fp, #-196]
	str	r2, [fp, #-200]
	str	r3, [fp, #-204]
	sub	r3, fp, #188
	ldr	r1, [fp, #-192]
	mov	r0, r3
	bl	stbi__start_file
	sub	r0, fp, #188
	ldr	r3, [fp, #4]
	str	r3, [sp]
	ldr	r3, [fp, #-204]
	ldr	r2, [fp, #-200]
	ldr	r1, [fp, #-196]
	bl	stbi__loadf_main
	mov	r3, r0
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi_loadf_from_file, .-stbi_loadf_from_file
	.align	2
	.global	stbi_is_hdr_from_memory
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi_is_hdr_from_memory, %function
stbi_is_hdr_from_memory:
	@ args = 0, pretend = 0, frame = 192
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #192
	str	r0, [fp, #-192]
	str	r1, [fp, #-196]
	sub	r3, fp, #188
	ldr	r2, [fp, #-196]
	ldr	r1, [fp, #-192]
	mov	r0, r3
	bl	stbi__start_mem
	sub	r3, fp, #188
	mov	r0, r3
	bl	stbi__hdr_test
	mov	r3, r0
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi_is_hdr_from_memory, .-stbi_is_hdr_from_memory
	.align	2
	.global	stbi_is_hdr
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi_is_hdr, %function
stbi_is_hdr:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-16]
	movw	r1, #:lower16:.LC8
	movt	r1, #:upper16:.LC8
	ldr	r0, [fp, #-16]
	bl	stbi__fopen
	str	r0, [fp, #-12]
	mov	r3, #0
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	beq	.L166
	ldr	r0, [fp, #-12]
	bl	stbi_is_hdr_from_file
	str	r0, [fp, #-8]
	ldr	r0, [fp, #-12]
	bl	fclose
.L166:
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi_is_hdr, .-stbi_is_hdr
	.align	2
	.global	stbi_is_hdr_from_file
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi_is_hdr_from_file, %function
stbi_is_hdr_from_file:
	@ args = 0, pretend = 0, frame = 200
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #200
	str	r0, [fp, #-200]
	ldr	r0, [fp, #-200]
	bl	ftell
	str	r0, [fp, #-8]
	sub	r3, fp, #196
	ldr	r1, [fp, #-200]
	mov	r0, r3
	bl	stbi__start_file
	sub	r3, fp, #196
	mov	r0, r3
	bl	stbi__hdr_test
	str	r0, [fp, #-12]
	mov	r2, #0
	ldr	r1, [fp, #-8]
	ldr	r0, [fp, #-200]
	bl	fseek
	ldr	r3, [fp, #-12]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi_is_hdr_from_file, .-stbi_is_hdr_from_file
	.align	2
	.global	stbi_is_hdr_from_callbacks
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi_is_hdr_from_callbacks, %function
stbi_is_hdr_from_callbacks:
	@ args = 0, pretend = 0, frame = 192
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #192
	str	r0, [fp, #-192]
	str	r1, [fp, #-196]
	sub	r3, fp, #188
	ldr	r2, [fp, #-196]
	ldr	r1, [fp, #-192]
	mov	r0, r3
	bl	stbi__start_callbacks
	sub	r3, fp, #188
	mov	r0, r3
	bl	stbi__hdr_test
	mov	r3, r0
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi_is_hdr_from_callbacks, .-stbi_is_hdr_from_callbacks
	.data
	.align	2
	.type	stbi__l2h_gamma, %object
	.size	stbi__l2h_gamma, 4
stbi__l2h_gamma:
	.word	1074580685
	.align	2
	.type	stbi__l2h_scale, %object
	.size	stbi__l2h_scale, 4
stbi__l2h_scale:
	.word	1065353216
	.text
	.align	2
	.global	stbi_ldr_to_hdr_gamma
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi_ldr_to_hdr_gamma, %function
stbi_ldr_to_hdr_gamma:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	vstr.32	s0, [fp, #-8]
	movw	r3, #:lower16:stbi__l2h_gamma
	movt	r3, #:upper16:stbi__l2h_gamma
	ldr	r2, [fp, #-8]	@ float
	str	r2, [r3]	@ float
	nop
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	stbi_ldr_to_hdr_gamma, .-stbi_ldr_to_hdr_gamma
	.align	2
	.global	stbi_ldr_to_hdr_scale
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi_ldr_to_hdr_scale, %function
stbi_ldr_to_hdr_scale:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	vstr.32	s0, [fp, #-8]
	movw	r3, #:lower16:stbi__l2h_scale
	movt	r3, #:upper16:stbi__l2h_scale
	ldr	r2, [fp, #-8]	@ float
	str	r2, [r3]	@ float
	nop
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	stbi_ldr_to_hdr_scale, .-stbi_ldr_to_hdr_scale
	.data
	.align	2
	.type	stbi__h2l_gamma_i, %object
	.size	stbi__h2l_gamma_i, 4
stbi__h2l_gamma_i:
	.word	1055439406
	.align	2
	.type	stbi__h2l_scale_i, %object
	.size	stbi__h2l_scale_i, 4
stbi__h2l_scale_i:
	.word	1065353216
	.text
	.align	2
	.global	stbi_hdr_to_ldr_gamma
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi_hdr_to_ldr_gamma, %function
stbi_hdr_to_ldr_gamma:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	vstr.32	s0, [fp, #-8]
	vmov.f32	s13, #1.0e+0
	vldr.32	s14, [fp, #-8]
	vdiv.f32	s15, s13, s14
	movw	r3, #:lower16:stbi__h2l_gamma_i
	movt	r3, #:upper16:stbi__h2l_gamma_i
	vstr.32	s15, [r3]
	nop
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	stbi_hdr_to_ldr_gamma, .-stbi_hdr_to_ldr_gamma
	.align	2
	.global	stbi_hdr_to_ldr_scale
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi_hdr_to_ldr_scale, %function
stbi_hdr_to_ldr_scale:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	vstr.32	s0, [fp, #-8]
	vmov.f32	s13, #1.0e+0
	vldr.32	s14, [fp, #-8]
	vdiv.f32	s15, s13, s14
	movw	r3, #:lower16:stbi__h2l_scale_i
	movt	r3, #:upper16:stbi__h2l_scale_i
	vstr.32	s15, [r3]
	nop
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	stbi_hdr_to_ldr_scale, .-stbi_hdr_to_ldr_scale
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__refill_buffer, %function
stbi__refill_buffer:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-16]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #16]
	ldr	r2, [fp, #-16]
	ldr	r0, [r2, #28]
	ldr	r2, [fp, #-16]
	add	r1, r2, #40
	ldr	r2, [fp, #-16]
	ldr	r2, [r2, #36]
	blx	r3
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	bne	.L177
	ldr	r3, [fp, #-16]
	mov	r2, #0
	str	r2, [r3, #32]
	ldr	r3, [fp, #-16]
	add	r2, r3, #40
	ldr	r3, [fp, #-16]
	str	r2, [r3, #168]
	ldr	r3, [fp, #-16]
	add	r3, r3, #40
	add	r2, r3, #1
	ldr	r3, [fp, #-16]
	str	r2, [r3, #172]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #168]
	mov	r2, #0
	strb	r2, [r3]
	b	.L179
.L177:
	ldr	r3, [fp, #-16]
	add	r2, r3, #40
	ldr	r3, [fp, #-16]
	str	r2, [r3, #168]
	ldr	r3, [fp, #-16]
	add	r2, r3, #40
	ldr	r3, [fp, #-8]
	add	r2, r2, r3
	ldr	r3, [fp, #-16]
	str	r2, [r3, #172]
.L179:
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__refill_buffer, .-stbi__refill_buffer
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__get8, %function
stbi__get8:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	ldr	r2, [r3, #168]
	ldr	r3, [fp, #-8]
	ldr	r3, [r3, #172]
	cmp	r2, r3
	bcs	.L181
	ldr	r3, [fp, #-8]
	ldr	r3, [r3, #168]
	add	r1, r3, #1
	ldr	r2, [fp, #-8]
	str	r1, [r2, #168]
	ldrb	r3, [r3]	@ zero_extendqisi2
	b	.L182
.L181:
	ldr	r3, [fp, #-8]
	ldr	r3, [r3, #32]
	cmp	r3, #0
	beq	.L183
	ldr	r0, [fp, #-8]
	bl	stbi__refill_buffer
	ldr	r3, [fp, #-8]
	ldr	r3, [r3, #168]
	add	r1, r3, #1
	ldr	r2, [fp, #-8]
	str	r1, [r2, #168]
	ldrb	r3, [r3]	@ zero_extendqisi2
	b	.L182
.L183:
	mov	r3, #0
.L182:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__get8, .-stbi__get8
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__at_eof, %function
stbi__at_eof:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	ldr	r3, [r3, #16]
	cmp	r3, #0
	beq	.L185
	ldr	r3, [fp, #-8]
	ldr	r3, [r3, #24]
	ldr	r2, [fp, #-8]
	ldr	r2, [r2, #28]
	mov	r0, r2
	blx	r3
	mov	r3, r0
	cmp	r3, #0
	bne	.L186
	mov	r3, #0
	b	.L187
.L186:
	ldr	r3, [fp, #-8]
	ldr	r3, [r3, #32]
	cmp	r3, #0
	bne	.L185
	mov	r3, #1
	b	.L187
.L185:
	ldr	r3, [fp, #-8]
	ldr	r2, [r3, #168]
	ldr	r3, [fp, #-8]
	ldr	r3, [r3, #172]
	cmp	r2, r3
	movcs	r3, #1
	movcc	r3, #0
	uxtb	r3, r3
.L187:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__at_eof, .-stbi__at_eof
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__skip, %function
stbi__skip:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	bge	.L189
	ldr	r3, [fp, #-16]
	ldr	r2, [r3, #172]
	ldr	r3, [fp, #-16]
	str	r2, [r3, #168]
	b	.L188
.L189:
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #16]
	cmp	r3, #0
	beq	.L191
	ldr	r3, [fp, #-16]
	ldr	r2, [r3, #172]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #168]
	sub	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-20]
	cmp	r2, r3
	bge	.L191
	ldr	r3, [fp, #-16]
	ldr	r2, [r3, #172]
	ldr	r3, [fp, #-16]
	str	r2, [r3, #168]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #20]
	ldr	r2, [fp, #-16]
	ldr	r0, [r2, #28]
	ldr	r1, [fp, #-20]
	ldr	r2, [fp, #-8]
	sub	r2, r1, r2
	mov	r1, r2
	blx	r3
	b	.L188
.L191:
	ldr	r3, [fp, #-16]
	ldr	r2, [r3, #168]
	ldr	r3, [fp, #-20]
	add	r2, r2, r3
	ldr	r3, [fp, #-16]
	str	r2, [r3, #168]
.L188:
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__skip, .-stbi__skip
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__getn, %function
stbi__getn:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #32
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	str	r2, [fp, #-32]
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #16]
	cmp	r3, #0
	beq	.L193
	ldr	r3, [fp, #-24]
	ldr	r2, [r3, #172]
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #168]
	sub	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-32]
	cmp	r2, r3
	bge	.L193
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #168]
	ldr	r2, [fp, #-8]
	mov	r1, r3
	ldr	r0, [fp, #-28]
	bl	memcpy
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #16]
	ldr	r2, [fp, #-24]
	ldr	r0, [r2, #28]
	ldr	r2, [fp, #-8]
	ldr	r1, [fp, #-28]
	add	ip, r1, r2
	ldr	r1, [fp, #-32]
	ldr	r2, [fp, #-8]
	sub	r2, r1, r2
	mov	r1, ip
	blx	r3
	str	r0, [fp, #-12]
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-8]
	sub	r3, r2, r3
	ldr	r2, [fp, #-12]
	cmp	r2, r3
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-24]
	ldr	r2, [r3, #172]
	ldr	r3, [fp, #-24]
	str	r2, [r3, #168]
	ldr	r3, [fp, #-16]
	b	.L194
.L193:
	ldr	r3, [fp, #-24]
	ldr	r2, [r3, #168]
	ldr	r3, [fp, #-32]
	add	r2, r2, r3
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #172]
	cmp	r2, r3
	bhi	.L195
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #168]
	ldr	r2, [fp, #-32]
	mov	r1, r3
	ldr	r0, [fp, #-28]
	bl	memcpy
	ldr	r3, [fp, #-24]
	ldr	r2, [r3, #168]
	ldr	r3, [fp, #-32]
	add	r2, r2, r3
	ldr	r3, [fp, #-24]
	str	r2, [r3, #168]
	mov	r3, #1
	b	.L194
.L195:
	mov	r3, #0
.L194:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__getn, .-stbi__getn
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__get16be, %function
stbi__get16be:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, fp, lr}
	add	fp, sp, #8
	sub	sp, sp, #20
	str	r0, [fp, #-24]
	ldr	r0, [fp, #-24]
	bl	stbi__get8
	mov	r3, r0
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-16]
	lsl	r4, r3, #8
	ldr	r0, [fp, #-24]
	bl	stbi__get8
	mov	r3, r0
	add	r3, r4, r3
	mov	r0, r3
	sub	sp, fp, #8
	@ sp needed
	pop	{r4, fp, pc}
	.size	stbi__get16be, .-stbi__get16be
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__get32be, %function
stbi__get32be:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, fp, lr}
	add	fp, sp, #8
	sub	sp, sp, #20
	str	r0, [fp, #-24]
	ldr	r0, [fp, #-24]
	bl	stbi__get16be
	mov	r3, r0
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-16]
	lsl	r4, r3, #16
	ldr	r0, [fp, #-24]
	bl	stbi__get16be
	mov	r3, r0
	add	r3, r4, r3
	mov	r0, r3
	sub	sp, fp, #8
	@ sp needed
	pop	{r4, fp, pc}
	.size	stbi__get32be, .-stbi__get32be
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__get16le, %function
stbi__get16le:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-16]
	ldr	r0, [fp, #-16]
	bl	stbi__get8
	mov	r3, r0
	str	r3, [fp, #-8]
	ldr	r0, [fp, #-16]
	bl	stbi__get8
	mov	r3, r0
	lsl	r2, r3, #8
	ldr	r3, [fp, #-8]
	add	r3, r2, r3
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__get16le, .-stbi__get16le
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__get32le, %function
stbi__get32le:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-16]
	ldr	r0, [fp, #-16]
	bl	stbi__get16le
	mov	r3, r0
	str	r3, [fp, #-8]
	ldr	r0, [fp, #-16]
	bl	stbi__get16le
	mov	r3, r0
	lsl	r3, r3, #16
	mov	r2, r3
	ldr	r3, [fp, #-8]
	add	r3, r2, r3
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__get32le, .-stbi__get32le
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__compute_y, %function
stbi__compute_y:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	lsl	r2, r3, #3
	sub	r1, r2, r3
	ldr	r2, [fp, #-12]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r2, r3, #4
	sub	r2, r2, r3
	lsl	r3, r2, #1
	mov	r2, r3
	mov	r3, r2
	add	r1, r1, r3
	ldr	r2, [fp, #-16]
	mov	r3, r2
	lsl	r3, r3, #3
	sub	r3, r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	add	r3, r1, r3
	asr	r3, r3, #8
	uxtb	r3, r3
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	stbi__compute_y, .-stbi__compute_y
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__convert_format, %function
stbi__convert_format:
	@ args = 4, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #40
	str	r0, [fp, #-32]
	str	r1, [fp, #-36]
	str	r2, [fp, #-40]
	str	r3, [fp, #-44]
	ldr	r2, [fp, #-40]
	ldr	r3, [fp, #-36]
	cmp	r2, r3
	bne	.L207
	ldr	r3, [fp, #-32]
	b	.L208
.L207:
	ldr	r1, [fp, #-44]
	ldr	r2, [fp, #4]
	mov	r3, #0
	ldr	r0, [fp, #-40]
	bl	stbi__malloc_mad3
	str	r0, [fp, #-24]
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	bne	.L209
	ldr	r0, [fp, #-32]
	bl	free
	mov	r3, #0
	b	.L208
.L209:
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L210
.L249:
	ldr	r3, [fp, #-12]
	ldr	r2, [fp, #-44]
	mul	r3, r2, r3
	ldr	r2, [fp, #-36]
	mul	r3, r2, r3
	ldr	r2, [fp, #-32]
	add	r3, r2, r3
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-12]
	ldr	r2, [fp, #-44]
	mul	r3, r2, r3
	ldr	r2, [fp, #-40]
	mul	r3, r2, r3
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-36]
	lsl	r2, r3, #3
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	sub	r3, r3, #10
	cmp	r3, #25
	ldrls	pc, [pc, r3, asl #2]
	b	.L211
.L213:
	.word	.L224
	.word	.L223
	.word	.L222
	.word	.L211
	.word	.L211
	.word	.L211
	.word	.L211
	.word	.L221
	.word	.L211
	.word	.L220
	.word	.L219
	.word	.L211
	.word	.L211
	.word	.L211
	.word	.L211
	.word	.L218
	.word	.L217
	.word	.L211
	.word	.L216
	.word	.L211
	.word	.L211
	.word	.L211
	.word	.L211
	.word	.L215
	.word	.L214
	.word	.L212
.L224:
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-8]
	b	.L225
.L226:
	ldr	r3, [fp, #-16]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [fp, #-20]
	strb	r2, [r3]
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	mvn	r2, #0
	strb	r2, [r3]
	ldr	r3, [fp, #-8]
	sub	r3, r3, #1
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-20]
	add	r3, r3, #2
	str	r3, [fp, #-20]
.L225:
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	bge	.L226
	b	.L211
.L223:
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-8]
	b	.L227
.L228:
	ldr	r3, [fp, #-20]
	add	r2, r3, #2
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	strb	r3, [r2]
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [fp, #-20]
	strb	r2, [r3]
	ldr	r3, [fp, #-8]
	sub	r3, r3, #1
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-20]
	add	r3, r3, #3
	str	r3, [fp, #-20]
.L227:
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	bge	.L228
	b	.L211
.L222:
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-8]
	b	.L229
.L230:
	ldr	r3, [fp, #-20]
	add	r2, r3, #2
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	strb	r3, [r2]
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [fp, #-20]
	strb	r2, [r3]
	ldr	r3, [fp, #-20]
	add	r3, r3, #3
	mvn	r2, #0
	strb	r2, [r3]
	ldr	r3, [fp, #-8]
	sub	r3, r3, #1
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4
	str	r3, [fp, #-20]
.L229:
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	bge	.L230
	b	.L211
.L221:
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-8]
	b	.L231
.L232:
	ldr	r3, [fp, #-16]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [fp, #-20]
	strb	r2, [r3]
	ldr	r3, [fp, #-8]
	sub	r3, r3, #1
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-16]
	add	r3, r3, #2
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
.L231:
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	bge	.L232
	b	.L211
.L220:
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-8]
	b	.L233
.L234:
	ldr	r3, [fp, #-20]
	add	r2, r3, #2
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	strb	r3, [r2]
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [fp, #-20]
	strb	r2, [r3]
	ldr	r3, [fp, #-8]
	sub	r3, r3, #1
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-16]
	add	r3, r3, #2
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-20]
	add	r3, r3, #3
	str	r3, [fp, #-20]
.L233:
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	bge	.L234
	b	.L211
.L219:
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-8]
	b	.L235
.L236:
	ldr	r3, [fp, #-20]
	add	r2, r3, #2
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	strb	r3, [r2]
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [fp, #-20]
	strb	r2, [r3]
	ldr	r3, [fp, #-20]
	add	r3, r3, #3
	ldr	r2, [fp, #-16]
	ldrb	r2, [r2, #1]	@ zero_extendqisi2
	strb	r2, [r3]
	ldr	r3, [fp, #-8]
	sub	r3, r3, #1
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-16]
	add	r3, r3, #2
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4
	str	r3, [fp, #-20]
.L235:
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	bge	.L236
	b	.L211
.L216:
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-8]
	b	.L237
.L238:
	ldr	r3, [fp, #-16]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [fp, #-20]
	strb	r2, [r3]
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	ldr	r2, [fp, #-16]
	ldrb	r2, [r2, #1]	@ zero_extendqisi2
	strb	r2, [r3]
	ldr	r3, [fp, #-20]
	add	r3, r3, #2
	ldr	r2, [fp, #-16]
	ldrb	r2, [r2, #2]	@ zero_extendqisi2
	strb	r2, [r3]
	ldr	r3, [fp, #-20]
	add	r3, r3, #3
	mvn	r2, #0
	strb	r2, [r3]
	ldr	r3, [fp, #-8]
	sub	r3, r3, #1
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-16]
	add	r3, r3, #3
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4
	str	r3, [fp, #-20]
.L237:
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	bge	.L238
	b	.L211
.L218:
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-8]
	b	.L239
.L240:
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r3, [fp, #-16]
	add	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	bl	stbi__compute_y
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [fp, #-20]
	strb	r2, [r3]
	ldr	r3, [fp, #-8]
	sub	r3, r3, #1
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-16]
	add	r3, r3, #3
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
.L239:
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	bge	.L240
	b	.L211
.L217:
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-8]
	b	.L241
.L242:
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r3, [fp, #-16]
	add	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	bl	stbi__compute_y
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [fp, #-20]
	strb	r2, [r3]
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	mvn	r2, #0
	strb	r2, [r3]
	ldr	r3, [fp, #-8]
	sub	r3, r3, #1
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-16]
	add	r3, r3, #3
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-20]
	add	r3, r3, #2
	str	r3, [fp, #-20]
.L241:
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	bge	.L242
	b	.L211
.L215:
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-8]
	b	.L243
.L244:
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r3, [fp, #-16]
	add	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	bl	stbi__compute_y
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [fp, #-20]
	strb	r2, [r3]
	ldr	r3, [fp, #-8]
	sub	r3, r3, #1
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-16]
	add	r3, r3, #4
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
.L243:
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	bge	.L244
	b	.L211
.L214:
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-8]
	b	.L245
.L246:
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r3, [fp, #-16]
	add	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	bl	stbi__compute_y
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [fp, #-20]
	strb	r2, [r3]
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	ldr	r2, [fp, #-16]
	ldrb	r2, [r2, #3]	@ zero_extendqisi2
	strb	r2, [r3]
	ldr	r3, [fp, #-8]
	sub	r3, r3, #1
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-16]
	add	r3, r3, #4
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-20]
	add	r3, r3, #2
	str	r3, [fp, #-20]
.L245:
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	bge	.L246
	b	.L211
.L212:
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-8]
	b	.L247
.L248:
	ldr	r3, [fp, #-16]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [fp, #-20]
	strb	r2, [r3]
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	ldr	r2, [fp, #-16]
	ldrb	r2, [r2, #1]	@ zero_extendqisi2
	strb	r2, [r3]
	ldr	r3, [fp, #-20]
	add	r3, r3, #2
	ldr	r2, [fp, #-16]
	ldrb	r2, [r2, #2]	@ zero_extendqisi2
	strb	r2, [r3]
	ldr	r3, [fp, #-8]
	sub	r3, r3, #1
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-16]
	add	r3, r3, #4
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-20]
	add	r3, r3, #3
	str	r3, [fp, #-20]
.L247:
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	bge	.L248
	nop
.L211:
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L210:
	ldr	r3, [fp, #4]
	ldr	r2, [fp, #-12]
	cmp	r2, r3
	blt	.L249
	ldr	r0, [fp, #-32]
	bl	free
	ldr	r3, [fp, #-24]
.L208:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__convert_format, .-stbi__convert_format
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__compute_y_16, %function
stbi__compute_y_16:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	lsl	r2, r3, #3
	sub	r1, r2, r3
	ldr	r2, [fp, #-12]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r2, r3, #4
	sub	r2, r2, r3
	lsl	r3, r2, #1
	mov	r2, r3
	mov	r3, r2
	add	r1, r1, r3
	ldr	r2, [fp, #-16]
	mov	r3, r2
	lsl	r3, r3, #3
	sub	r3, r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	add	r3, r1, r3
	asr	r3, r3, #8
	uxth	r3, r3
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	stbi__compute_y_16, .-stbi__compute_y_16
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__convert_format16, %function
stbi__convert_format16:
	@ args = 4, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #40
	str	r0, [fp, #-32]
	str	r1, [fp, #-36]
	str	r2, [fp, #-40]
	str	r3, [fp, #-44]
	ldr	r2, [fp, #-40]
	ldr	r3, [fp, #-36]
	cmp	r2, r3
	bne	.L253
	ldr	r3, [fp, #-32]
	b	.L254
.L253:
	ldr	r3, [fp, #-40]
	ldr	r2, [fp, #-44]
	mul	r3, r2, r3
	ldr	r2, [fp, #4]
	mul	r3, r2, r3
	lsl	r3, r3, #1
	mov	r0, r3
	bl	stbi__malloc
	str	r0, [fp, #-24]
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	bne	.L255
	ldr	r0, [fp, #-32]
	bl	free
	mov	r3, #0
	b	.L254
.L255:
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L256
.L295:
	ldr	r3, [fp, #-12]
	ldr	r2, [fp, #-44]
	mul	r3, r2, r3
	ldr	r2, [fp, #-36]
	mul	r3, r2, r3
	lsl	r3, r3, #1
	ldr	r2, [fp, #-32]
	add	r3, r2, r3
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-12]
	ldr	r2, [fp, #-44]
	mul	r3, r2, r3
	ldr	r2, [fp, #-40]
	mul	r3, r2, r3
	lsl	r3, r3, #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-36]
	lsl	r2, r3, #3
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	sub	r3, r3, #10
	cmp	r3, #25
	ldrls	pc, [pc, r3, asl #2]
	b	.L257
.L259:
	.word	.L270
	.word	.L269
	.word	.L268
	.word	.L257
	.word	.L257
	.word	.L257
	.word	.L257
	.word	.L267
	.word	.L257
	.word	.L266
	.word	.L265
	.word	.L257
	.word	.L257
	.word	.L257
	.word	.L257
	.word	.L264
	.word	.L263
	.word	.L257
	.word	.L262
	.word	.L257
	.word	.L257
	.word	.L257
	.word	.L257
	.word	.L261
	.word	.L260
	.word	.L258
.L270:
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-8]
	b	.L271
.L272:
	ldr	r3, [fp, #-16]
	ldrh	r2, [r3]
	ldr	r3, [fp, #-20]
	strh	r2, [r3]	@ movhi
	ldr	r3, [fp, #-20]
	add	r3, r3, #2
	mvn	r2, #0
	strh	r2, [r3]	@ movhi
	ldr	r3, [fp, #-8]
	sub	r3, r3, #1
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-16]
	add	r3, r3, #2
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4
	str	r3, [fp, #-20]
.L271:
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	bge	.L272
	b	.L257
.L269:
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-8]
	b	.L273
.L274:
	ldr	r3, [fp, #-20]
	add	r2, r3, #4
	ldr	r3, [fp, #-16]
	ldrh	r3, [r3]
	strh	r3, [r2]	@ movhi
	ldr	r3, [fp, #-20]
	add	r3, r3, #2
	ldrh	r2, [r2]
	strh	r2, [r3]	@ movhi
	ldrh	r2, [r3]
	ldr	r3, [fp, #-20]
	strh	r2, [r3]	@ movhi
	ldr	r3, [fp, #-8]
	sub	r3, r3, #1
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-16]
	add	r3, r3, #2
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-20]
	add	r3, r3, #6
	str	r3, [fp, #-20]
.L273:
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	bge	.L274
	b	.L257
.L268:
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-8]
	b	.L275
.L276:
	ldr	r3, [fp, #-20]
	add	r2, r3, #4
	ldr	r3, [fp, #-16]
	ldrh	r3, [r3]
	strh	r3, [r2]	@ movhi
	ldr	r3, [fp, #-20]
	add	r3, r3, #2
	ldrh	r2, [r2]
	strh	r2, [r3]	@ movhi
	ldrh	r2, [r3]
	ldr	r3, [fp, #-20]
	strh	r2, [r3]	@ movhi
	ldr	r3, [fp, #-20]
	add	r3, r3, #6
	mvn	r2, #0
	strh	r2, [r3]	@ movhi
	ldr	r3, [fp, #-8]
	sub	r3, r3, #1
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-16]
	add	r3, r3, #2
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-20]
	add	r3, r3, #8
	str	r3, [fp, #-20]
.L275:
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	bge	.L276
	b	.L257
.L267:
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-8]
	b	.L277
.L278:
	ldr	r3, [fp, #-16]
	ldrh	r2, [r3]
	ldr	r3, [fp, #-20]
	strh	r2, [r3]	@ movhi
	ldr	r3, [fp, #-8]
	sub	r3, r3, #1
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-16]
	add	r3, r3, #4
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-20]
	add	r3, r3, #2
	str	r3, [fp, #-20]
.L277:
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	bge	.L278
	b	.L257
.L266:
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-8]
	b	.L279
.L280:
	ldr	r3, [fp, #-20]
	add	r2, r3, #4
	ldr	r3, [fp, #-16]
	ldrh	r3, [r3]
	strh	r3, [r2]	@ movhi
	ldr	r3, [fp, #-20]
	add	r3, r3, #2
	ldrh	r2, [r2]
	strh	r2, [r3]	@ movhi
	ldrh	r2, [r3]
	ldr	r3, [fp, #-20]
	strh	r2, [r3]	@ movhi
	ldr	r3, [fp, #-8]
	sub	r3, r3, #1
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-16]
	add	r3, r3, #4
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-20]
	add	r3, r3, #6
	str	r3, [fp, #-20]
.L279:
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	bge	.L280
	b	.L257
.L265:
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-8]
	b	.L281
.L282:
	ldr	r3, [fp, #-20]
	add	r2, r3, #4
	ldr	r3, [fp, #-16]
	ldrh	r3, [r3]
	strh	r3, [r2]	@ movhi
	ldr	r3, [fp, #-20]
	add	r3, r3, #2
	ldrh	r2, [r2]
	strh	r2, [r3]	@ movhi
	ldrh	r2, [r3]
	ldr	r3, [fp, #-20]
	strh	r2, [r3]	@ movhi
	ldr	r3, [fp, #-20]
	add	r3, r3, #6
	ldr	r2, [fp, #-16]
	ldrh	r2, [r2, #2]
	strh	r2, [r3]	@ movhi
	ldr	r3, [fp, #-8]
	sub	r3, r3, #1
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-16]
	add	r3, r3, #4
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-20]
	add	r3, r3, #8
	str	r3, [fp, #-20]
.L281:
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	bge	.L282
	b	.L257
.L262:
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-8]
	b	.L283
.L284:
	ldr	r3, [fp, #-16]
	ldrh	r2, [r3]
	ldr	r3, [fp, #-20]
	strh	r2, [r3]	@ movhi
	ldr	r3, [fp, #-20]
	add	r3, r3, #2
	ldr	r2, [fp, #-16]
	ldrh	r2, [r2, #2]
	strh	r2, [r3]	@ movhi
	ldr	r3, [fp, #-20]
	add	r3, r3, #4
	ldr	r2, [fp, #-16]
	ldrh	r2, [r2, #4]
	strh	r2, [r3]	@ movhi
	ldr	r3, [fp, #-20]
	add	r3, r3, #6
	mvn	r2, #0
	strh	r2, [r3]	@ movhi
	ldr	r3, [fp, #-8]
	sub	r3, r3, #1
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-16]
	add	r3, r3, #6
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-20]
	add	r3, r3, #8
	str	r3, [fp, #-20]
.L283:
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	bge	.L284
	b	.L257
.L264:
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-8]
	b	.L285
.L286:
	ldr	r3, [fp, #-16]
	ldrh	r3, [r3]
	mov	r0, r3
	ldr	r3, [fp, #-16]
	add	r3, r3, #2
	ldrh	r3, [r3]
	mov	r1, r3
	ldr	r3, [fp, #-16]
	add	r3, r3, #4
	ldrh	r3, [r3]
	mov	r2, r3
	bl	stbi__compute_y_16
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [fp, #-20]
	strh	r2, [r3]	@ movhi
	ldr	r3, [fp, #-8]
	sub	r3, r3, #1
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-16]
	add	r3, r3, #6
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-20]
	add	r3, r3, #2
	str	r3, [fp, #-20]
.L285:
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	bge	.L286
	b	.L257
.L263:
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-8]
	b	.L287
.L288:
	ldr	r3, [fp, #-16]
	ldrh	r3, [r3]
	mov	r0, r3
	ldr	r3, [fp, #-16]
	add	r3, r3, #2
	ldrh	r3, [r3]
	mov	r1, r3
	ldr	r3, [fp, #-16]
	add	r3, r3, #4
	ldrh	r3, [r3]
	mov	r2, r3
	bl	stbi__compute_y_16
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [fp, #-20]
	strh	r2, [r3]	@ movhi
	ldr	r3, [fp, #-20]
	add	r3, r3, #2
	mvn	r2, #0
	strh	r2, [r3]	@ movhi
	ldr	r3, [fp, #-8]
	sub	r3, r3, #1
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-16]
	add	r3, r3, #6
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4
	str	r3, [fp, #-20]
.L287:
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	bge	.L288
	b	.L257
.L261:
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-8]
	b	.L289
.L290:
	ldr	r3, [fp, #-16]
	ldrh	r3, [r3]
	mov	r0, r3
	ldr	r3, [fp, #-16]
	add	r3, r3, #2
	ldrh	r3, [r3]
	mov	r1, r3
	ldr	r3, [fp, #-16]
	add	r3, r3, #4
	ldrh	r3, [r3]
	mov	r2, r3
	bl	stbi__compute_y_16
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [fp, #-20]
	strh	r2, [r3]	@ movhi
	ldr	r3, [fp, #-8]
	sub	r3, r3, #1
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-16]
	add	r3, r3, #8
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-20]
	add	r3, r3, #2
	str	r3, [fp, #-20]
.L289:
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	bge	.L290
	b	.L257
.L260:
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-8]
	b	.L291
.L292:
	ldr	r3, [fp, #-16]
	ldrh	r3, [r3]
	mov	r0, r3
	ldr	r3, [fp, #-16]
	add	r3, r3, #2
	ldrh	r3, [r3]
	mov	r1, r3
	ldr	r3, [fp, #-16]
	add	r3, r3, #4
	ldrh	r3, [r3]
	mov	r2, r3
	bl	stbi__compute_y_16
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [fp, #-20]
	strh	r2, [r3]	@ movhi
	ldr	r3, [fp, #-20]
	add	r3, r3, #2
	ldr	r2, [fp, #-16]
	ldrh	r2, [r2, #6]
	strh	r2, [r3]	@ movhi
	ldr	r3, [fp, #-8]
	sub	r3, r3, #1
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-16]
	add	r3, r3, #8
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4
	str	r3, [fp, #-20]
.L291:
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	bge	.L292
	b	.L257
.L258:
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-8]
	b	.L293
.L294:
	ldr	r3, [fp, #-16]
	ldrh	r2, [r3]
	ldr	r3, [fp, #-20]
	strh	r2, [r3]	@ movhi
	ldr	r3, [fp, #-20]
	add	r3, r3, #2
	ldr	r2, [fp, #-16]
	ldrh	r2, [r2, #2]
	strh	r2, [r3]	@ movhi
	ldr	r3, [fp, #-20]
	add	r3, r3, #4
	ldr	r2, [fp, #-16]
	ldrh	r2, [r2, #4]
	strh	r2, [r3]	@ movhi
	ldr	r3, [fp, #-8]
	sub	r3, r3, #1
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-16]
	add	r3, r3, #8
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-20]
	add	r3, r3, #6
	str	r3, [fp, #-20]
.L293:
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	bge	.L294
	nop
.L257:
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L256:
	ldr	r3, [fp, #4]
	ldr	r2, [fp, #-12]
	cmp	r2, r3
	blt	.L295
	ldr	r0, [fp, #-32]
	bl	free
	ldr	r3, [fp, #-24]
.L254:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__convert_format16, .-stbi__convert_format16
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__ldr_to_hdr, %function
stbi__ldr_to_hdr:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #40
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	str	r2, [fp, #-32]
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	bne	.L297
	mov	r3, #0
	b	.L298
.L297:
	mov	r3, #0
	str	r3, [sp]
	mov	r3, #4
	ldr	r2, [fp, #-36]
	ldr	r1, [fp, #-32]
	ldr	r0, [fp, #-28]
	bl	stbi__malloc_mad4
	str	r0, [fp, #-20]
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	bne	.L299
	ldr	r0, [fp, #-24]
	bl	free
	mov	r3, #0
	b	.L298
.L299:
	ldr	r3, [fp, #-36]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L300
	ldr	r3, [fp, #-36]
	str	r3, [fp, #-16]
	b	.L301
.L300:
	ldr	r3, [fp, #-36]
	sub	r3, r3, #1
	str	r3, [fp, #-16]
.L301:
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L302
.L305:
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L303
.L304:
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-36]
	mul	r2, r2, r3
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	mov	r2, r3
	ldr	r3, [fp, #-24]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	vldr.32	s13, .L309
	vdiv.f32	s15, s14, s13
	vcvt.f64.f32	d7, s15
	movw	r3, #:lower16:stbi__l2h_gamma
	movt	r3, #:upper16:stbi__l2h_gamma
	vldr.32	s13, [r3]
	vcvt.f64.f32	d6, s13
	vmov.f64	d1, d6
	vmov.f64	d0, d7
	bl	pow
	vmov.f64	d6, d0
	movw	r3, #:lower16:stbi__l2h_scale
	movt	r3, #:upper16:stbi__l2h_scale
	vldr.32	s15, [r3]
	vcvt.f64.f32	d7, s15
	vmul.f64	d7, d6, d7
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-36]
	mul	r2, r2, r3
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	lsl	r3, r3, #2
	ldr	r2, [fp, #-20]
	add	r3, r2, r3
	vcvt.f32.f64	s15, d7
	vstr.32	s15, [r3]
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L303:
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-16]
	cmp	r2, r3
	blt	.L304
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L302:
	ldr	r3, [fp, #-28]
	ldr	r2, [fp, #-32]
	mul	r3, r2, r3
	ldr	r2, [fp, #-8]
	cmp	r2, r3
	blt	.L305
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-36]
	cmp	r2, r3
	bge	.L306
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L307
.L308:
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-36]
	mul	r2, r2, r3
	ldr	r3, [fp, #-16]
	add	r3, r2, r3
	mov	r2, r3
	ldr	r3, [fp, #-24]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-36]
	mul	r2, r2, r3
	ldr	r3, [fp, #-16]
	add	r3, r2, r3
	lsl	r3, r3, #2
	ldr	r2, [fp, #-20]
	add	r3, r2, r3
	vldr.32	s13, .L309
	vdiv.f32	s15, s14, s13
	vstr.32	s15, [r3]
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L307:
	ldr	r3, [fp, #-28]
	ldr	r2, [fp, #-32]
	mul	r3, r2, r3
	ldr	r2, [fp, #-8]
	cmp	r2, r3
	blt	.L308
.L306:
	ldr	r0, [fp, #-24]
	bl	free
	ldr	r3, [fp, #-20]
.L298:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L310:
	.align	2
.L309:
	.word	1132396544
	.size	stbi__ldr_to_hdr, .-stbi__ldr_to_hdr
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__hdr_to_ldr, %function
stbi__hdr_to_ldr:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #48
	str	r0, [fp, #-32]
	str	r1, [fp, #-36]
	str	r2, [fp, #-40]
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-32]
	cmp	r3, #0
	bne	.L312
	mov	r3, #0
	b	.L313
.L312:
	mov	r3, #0
	ldr	r2, [fp, #-44]
	ldr	r1, [fp, #-40]
	ldr	r0, [fp, #-36]
	bl	stbi__malloc_mad3
	str	r0, [fp, #-28]
	ldr	r3, [fp, #-28]
	cmp	r3, #0
	bne	.L314
	ldr	r0, [fp, #-32]
	bl	free
	mov	r3, #0
	b	.L313
.L314:
	ldr	r3, [fp, #-44]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L315
	ldr	r3, [fp, #-44]
	str	r3, [fp, #-16]
	b	.L316
.L315:
	ldr	r3, [fp, #-44]
	sub	r3, r3, #1
	str	r3, [fp, #-16]
.L316:
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L317
.L329:
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L318
.L323:
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-44]
	mul	r2, r2, r3
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	lsl	r3, r3, #2
	ldr	r2, [fp, #-32]
	add	r3, r2, r3
	vldr.32	s14, [r3]
	movw	r3, #:lower16:stbi__h2l_scale_i
	movt	r3, #:upper16:stbi__h2l_scale_i
	vldr.32	s15, [r3]
	vmul.f32	s15, s14, s15
	vcvt.f64.f32	d7, s15
	movw	r3, #:lower16:stbi__h2l_gamma_i
	movt	r3, #:upper16:stbi__h2l_gamma_i
	vldr.32	s13, [r3]
	vcvt.f64.f32	d6, s13
	vmov.f64	d1, d6
	vmov.f64	d0, d7
	bl	pow
	vmov.f64	d7, d0
	vcvt.f32.f64	s15, d7
	vldr.32	s14, .L334
	vmul.f32	s15, s15, s14
	vmov.f32	s14, #5.0e-1
	vadd.f32	s15, s15, s14
	vstr.32	s15, [fp, #-20]
	vldr.32	s15, [fp, #-20]
	vcmpe.f32	s15, #0
	vmrs	APSR_nzcv, FPSCR
	bpl	.L319
	mov	r3, #0
	str	r3, [fp, #-20]	@ float
.L319:
	vldr.32	s15, [fp, #-20]
	vldr.32	s14, .L334
	vcmpe.f32	s15, s14
	vmrs	APSR_nzcv, FPSCR
	ble	.L321
	mov	r3, #0
	movt	r3, 17279
	str	r3, [fp, #-20]	@ float
.L321:
	vldr.32	s15, [fp, #-20]
	vcvt.s32.f32	s15, s15
	vstr.32	s15, [fp, #-48]	@ int
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-44]
	mul	r2, r2, r3
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	mov	r2, r3
	ldr	r3, [fp, #-28]
	add	r3, r3, r2
	ldr	r2, [fp, #-48]
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L318:
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-16]
	cmp	r2, r3
	blt	.L323
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-44]
	cmp	r2, r3
	bge	.L324
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-44]
	mul	r2, r2, r3
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	lsl	r3, r3, #2
	ldr	r2, [fp, #-32]
	add	r3, r2, r3
	vldr.32	s15, [r3]
	vldr.32	s14, .L334
	vmul.f32	s15, s15, s14
	vmov.f32	s14, #5.0e-1
	vadd.f32	s15, s15, s14
	vstr.32	s15, [fp, #-24]
	vldr.32	s15, [fp, #-24]
	vcmpe.f32	s15, #0
	vmrs	APSR_nzcv, FPSCR
	bpl	.L325
	mov	r3, #0
	str	r3, [fp, #-24]	@ float
.L325:
	vldr.32	s15, [fp, #-24]
	vldr.32	s14, .L334
	vcmpe.f32	s15, s14
	vmrs	APSR_nzcv, FPSCR
	ble	.L327
	mov	r3, #0
	movt	r3, 17279
	str	r3, [fp, #-24]	@ float
.L327:
	vldr.32	s15, [fp, #-24]
	vcvt.s32.f32	s15, s15
	vstr.32	s15, [fp, #-48]	@ int
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-44]
	mul	r2, r2, r3
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	mov	r2, r3
	ldr	r3, [fp, #-28]
	add	r3, r3, r2
	ldr	r2, [fp, #-48]
	uxtb	r2, r2
	strb	r2, [r3]
.L324:
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L317:
	ldr	r3, [fp, #-36]
	ldr	r2, [fp, #-40]
	mul	r3, r2, r3
	ldr	r2, [fp, #-8]
	cmp	r2, r3
	blt	.L329
	ldr	r0, [fp, #-32]
	bl	free
	ldr	r3, [fp, #-28]
.L313:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L335:
	.align	2
.L334:
	.word	1132396544
	.size	stbi__hdr_to_ldr, .-stbi__hdr_to_ldr
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__build_huffman, %function
stbi__build_huffman:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #40
	str	r0, [fp, #-40]
	str	r1, [fp, #-44]
	mov	r3, #0
	str	r3, [fp, #-16]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L337
.L340:
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L338
.L339:
	ldr	r3, [fp, #-8]
	uxtb	r2, r3
	ldr	r3, [fp, #-16]
	add	r1, r3, #1
	str	r1, [fp, #-16]
	add	r2, r2, #1
	uxtb	r1, r2
	ldr	r2, [fp, #-40]
	add	r3, r2, r3
	mov	r2, r1
	strb	r2, [r3, #1280]
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L338:
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #2
	ldr	r2, [fp, #-44]
	add	r3, r2, r3
	ldr	r3, [r3]
	ldr	r2, [fp, #-12]
	cmp	r2, r3
	blt	.L339
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L337:
	ldr	r3, [fp, #-8]
	cmp	r3, #15
	ble	.L340
	ldr	r2, [fp, #-40]
	ldr	r3, [fp, #-16]
	add	r3, r2, r3
	add	r3, r3, #1280
	mov	r2, #0
	strb	r2, [r3]
	mov	r3, #0
	str	r3, [fp, #-20]
	mov	r3, #0
	str	r3, [fp, #-16]
	mov	r3, #1
	str	r3, [fp, #-12]
	b	.L341
.L346:
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-20]
	sub	r3, r2, r3
	mov	r1, r3
	ldr	r2, [fp, #-40]
	ldr	r3, [fp, #-12]
	add	r3, r3, #400
	add	r3, r3, #2
	lsl	r3, r3, #2
	add	r3, r2, r3
	str	r1, [r3, #4]
	ldr	r2, [fp, #-40]
	ldr	r3, [fp, #-16]
	add	r3, r2, r3
	add	r3, r3, #1280
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [fp, #-12]
	cmp	r3, r2
	bne	.L342
	b	.L343
.L344:
	ldr	r2, [fp, #-20]
	add	r3, r2, #1
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-16]
	add	r1, r3, #1
	str	r1, [fp, #-16]
	uxth	r2, r2
	ldr	r1, [fp, #-40]
	add	r3, r3, #256
	lsl	r3, r3, #1
	add	r3, r1, r3
	strh	r2, [r3]	@ movhi
.L343:
	ldr	r2, [fp, #-40]
	ldr	r3, [fp, #-16]
	add	r3, r2, r3
	add	r3, r3, #1280
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [fp, #-12]
	cmp	r3, r2
	beq	.L344
	ldr	r3, [fp, #-20]
	sub	r2, r3, #1
	ldr	r3, [fp, #-12]
	lsr	r3, r2, r3
	cmp	r3, #0
	beq	.L342
	mov	r3, #0
	b	.L345
.L342:
	ldr	r3, [fp, #-12]
	rsb	r3, r3, #16
	ldr	r2, [fp, #-20]
	lsl	r2, r2, r3
	ldr	r1, [fp, #-40]
	ldr	r3, [fp, #-12]
	add	r3, r3, #384
	lsl	r3, r3, #2
	add	r3, r1, r3
	str	r2, [r3, #4]
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #1
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L341:
	ldr	r3, [fp, #-12]
	cmp	r3, #16
	ble	.L346
	ldr	r2, [fp, #-40]
	ldr	r3, [fp, #-12]
	add	r3, r3, #384
	lsl	r3, r3, #2
	add	r3, r2, r3
	mvn	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [fp, #-40]
	mov	r2, #512
	mov	r1, #255
	mov	r0, r3
	bl	memset
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L347
.L351:
	ldr	r2, [fp, #-40]
	ldr	r3, [fp, #-8]
	add	r3, r2, r3
	add	r3, r3, #1280
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-24]
	cmp	r3, #9
	bgt	.L348
	ldr	r2, [fp, #-40]
	ldr	r3, [fp, #-8]
	add	r3, r3, #256
	lsl	r3, r3, #1
	add	r3, r2, r3
	ldrh	r3, [r3]
	mov	r2, r3
	ldr	r3, [fp, #-24]
	rsb	r3, r3, #9
	lsl	r3, r2, r3
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-24]
	rsb	r3, r3, #9
	mov	r2, #1
	lsl	r3, r2, r3
	str	r3, [fp, #-32]
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L349
.L350:
	ldr	r2, [fp, #-28]
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	ldr	r2, [fp, #-8]
	uxtb	r1, r2
	ldr	r2, [fp, #-40]
	strb	r1, [r2, r3]
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L349:
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-32]
	cmp	r2, r3
	blt	.L350
.L348:
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L347:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-16]
	cmp	r2, r3
	blt	.L351
	mov	r3, #1
.L345:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__build_huffman, .-stbi__build_huffman
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__build_fast_ac, %function
stbi__build_fast_ac:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #44
	str	r0, [fp, #-40]
	str	r1, [fp, #-44]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L353
.L356:
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-8]
	add	r3, r2, r3
	ldrb	r3, [r3]
	strb	r3, [fp, #-13]
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #1
	ldr	r2, [fp, #-40]
	add	r3, r2, r3
	mov	r2, #0
	strh	r2, [r3]	@ movhi
	ldrb	r3, [fp, #-13]	@ zero_extendqisi2
	cmp	r3, #255
	beq	.L354
	ldrb	r3, [fp, #-13]	@ zero_extendqisi2
	ldr	r2, [fp, #-44]
	add	r3, r2, r3
	ldrb	r3, [r3, #1024]	@ zero_extendqisi2
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-20]
	asr	r3, r3, #4
	and	r3, r3, #15
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-20]
	and	r3, r3, #15
	str	r3, [fp, #-28]
	ldrb	r3, [fp, #-13]	@ zero_extendqisi2
	ldr	r2, [fp, #-44]
	add	r3, r2, r3
	ldrb	r3, [r3, #1280]	@ zero_extendqisi2
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-28]
	cmp	r3, #0
	beq	.L354
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-28]
	add	r3, r2, r3
	cmp	r3, #9
	bgt	.L354
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-32]
	lsl	r3, r2, r3
	ubfx	r2, r3, #0, #9
	ldr	r3, [fp, #-28]
	rsb	r3, r3, #9
	asr	r3, r2, r3
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-28]
	sub	r3, r3, #1
	mov	r2, #1
	lsl	r3, r2, r3
	str	r3, [fp, #-36]
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-36]
	cmp	r2, r3
	bge	.L355
	mvn	r2, #0
	ldr	r3, [fp, #-28]
	lsl	r2, r2, r3
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L355:
	ldr	r3, [fp, #-12]
	cmn	r3, #128
	blt	.L354
	ldr	r3, [fp, #-12]
	cmp	r3, #127
	bgt	.L354
	ldr	r3, [fp, #-12]
	uxth	r3, r3
	lsl	r3, r3, #4
	uxth	r2, r3
	ldr	r3, [fp, #-24]
	uxth	r3, r3
	add	r3, r2, r3
	uxth	r3, r3
	lsl	r3, r3, #4
	uxth	r2, r3
	ldr	r3, [fp, #-32]
	uxth	r1, r3
	ldr	r3, [fp, #-28]
	uxth	r3, r3
	add	r3, r1, r3
	uxth	r3, r3
	add	r3, r2, r3
	uxth	r1, r3
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #1
	ldr	r2, [fp, #-40]
	add	r3, r2, r3
	sxth	r2, r1
	strh	r2, [r3]	@ movhi
.L354:
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L353:
	ldr	r3, [fp, #-8]
	cmp	r3, #512
	blt	.L356
	nop
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	stbi__build_fast_ac, .-stbi__build_fast_ac
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__grow_buffer_unsafe, %function
stbi__grow_buffer_unsafe:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-16]
.L364:
	ldr	r3, [fp, #-16]
	add	r3, r3, #16384
	ldr	r3, [r3, #1992]
	cmp	r3, #0
	bne	.L358
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	mov	r0, r3
	bl	stbi__get8
	mov	r3, r0
	b	.L359
.L358:
	mov	r3, #0
.L359:
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-12]
	cmp	r3, #255
	bne	.L360
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	mov	r0, r3
	bl	stbi__get8
	mov	r3, r0
	str	r3, [fp, #-8]
	b	.L361
.L362:
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	mov	r0, r3
	bl	stbi__get8
	mov	r3, r0
	str	r3, [fp, #-8]
.L361:
	ldr	r3, [fp, #-8]
	cmp	r3, #255
	beq	.L362
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	beq	.L360
	ldr	r3, [fp, #-8]
	uxtb	r2, r3
	ldr	r3, [fp, #-16]
	add	r3, r3, #16384
	strb	r2, [r3, #1988]
	ldr	r3, [fp, #-16]
	add	r3, r3, #16384
	mov	r2, r3
	mov	r3, #1
	str	r3, [r2, #1992]
	b	.L357
.L360:
	ldr	r3, [fp, #-16]
	add	r3, r3, #16384
	ldr	r2, [r3, #1980]
	ldr	r3, [fp, #-16]
	add	r3, r3, #16384
	ldr	r3, [r3, #1984]
	rsb	r3, r3, #24
	ldr	r1, [fp, #-12]
	lsl	r3, r1, r3
	orr	r3, r2, r3
	ldr	r2, [fp, #-16]
	add	r2, r2, #16384
	str	r3, [r2, #1980]
	ldr	r3, [fp, #-16]
	add	r3, r3, #16384
	ldr	r3, [r3, #1984]
	add	r3, r3, #8
	ldr	r2, [fp, #-16]
	add	r2, r2, #16384
	str	r3, [r2, #1984]
	ldr	r3, [fp, #-16]
	add	r3, r3, #16384
	ldr	r3, [r3, #1984]
	cmp	r3, #24
	ble	.L364
.L357:
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__grow_buffer_unsafe, .-stbi__grow_buffer_unsafe
	.section	.rodata
	.align	2
	.type	stbi__bmask, %object
	.size	stbi__bmask, 68
stbi__bmask:
	.word	0
	.word	1
	.word	3
	.word	7
	.word	15
	.word	31
	.word	63
	.word	127
	.word	255
	.word	511
	.word	1023
	.word	2047
	.word	4095
	.word	8191
	.word	16383
	.word	32767
	.word	65535
	.text
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__jpeg_huff_decode, %function
stbi__jpeg_huff_decode:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #24
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	ldr	r3, [fp, #-24]
	add	r3, r3, #16384
	ldr	r3, [r3, #1984]
	cmp	r3, #15
	bgt	.L366
	ldr	r0, [fp, #-24]
	bl	stbi__grow_buffer_unsafe
.L366:
	ldr	r3, [fp, #-24]
	add	r3, r3, #16384
	ldr	r3, [r3, #1980]
	lsr	r3, r3, #23
	str	r3, [fp, #-12]
	ldr	r2, [fp, #-28]
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	cmp	r3, #254
	bgt	.L367
	ldr	r2, [fp, #-28]
	ldr	r3, [fp, #-8]
	add	r3, r2, r3
	add	r3, r3, #1280
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-24]
	add	r3, r3, #16384
	ldr	r3, [r3, #1984]
	ldr	r2, [fp, #-16]
	cmp	r2, r3
	ble	.L368
	mvn	r3, #0
	b	.L369
.L368:
	ldr	r3, [fp, #-24]
	add	r3, r3, #16384
	ldr	r2, [r3, #1980]
	ldr	r3, [fp, #-16]
	lsl	r3, r2, r3
	ldr	r2, [fp, #-24]
	add	r2, r2, #16384
	str	r3, [r2, #1980]
	ldr	r3, [fp, #-24]
	add	r3, r3, #16384
	ldr	r2, [r3, #1984]
	ldr	r3, [fp, #-16]
	sub	r3, r2, r3
	ldr	r2, [fp, #-24]
	add	r2, r2, #16384
	str	r3, [r2, #1984]
	ldr	r2, [fp, #-28]
	ldr	r3, [fp, #-8]
	add	r3, r2, r3
	add	r3, r3, #1024
	ldrb	r3, [r3]	@ zero_extendqisi2
	b	.L369
.L367:
	ldr	r3, [fp, #-24]
	add	r3, r3, #16384
	ldr	r3, [r3, #1980]
	lsr	r3, r3, #16
	str	r3, [fp, #-20]
	mov	r3, #10
	str	r3, [fp, #-8]
.L372:
	ldr	r2, [fp, #-28]
	ldr	r3, [fp, #-8]
	add	r3, r3, #384
	lsl	r3, r3, #2
	add	r3, r2, r3
	ldr	r3, [r3, #4]
	ldr	r2, [fp, #-20]
	cmp	r2, r3
	bcc	.L376
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
	b	.L372
.L376:
	nop
	ldr	r3, [fp, #-8]
	cmp	r3, #17
	bne	.L373
	ldr	r3, [fp, #-24]
	add	r3, r3, #16384
	ldr	r3, [r3, #1984]
	sub	r3, r3, #16
	ldr	r2, [fp, #-24]
	add	r2, r2, #16384
	str	r3, [r2, #1984]
	mvn	r3, #0
	b	.L369
.L373:
	ldr	r3, [fp, #-24]
	add	r3, r3, #16384
	ldr	r3, [r3, #1984]
	ldr	r2, [fp, #-8]
	cmp	r2, r3
	ble	.L374
	mvn	r3, #0
	b	.L369
.L374:
	ldr	r3, [fp, #-24]
	add	r3, r3, #16384
	ldr	r2, [r3, #1980]
	ldr	r3, [fp, #-8]
	rsb	r3, r3, #32
	lsr	r2, r2, r3
	movw	r3, #:lower16:stbi__bmask
	movt	r3, #:upper16:stbi__bmask
	ldr	r1, [fp, #-8]
	ldr	r3, [r3, r1, lsl #2]
	and	r2, r2, r3
	ldr	r1, [fp, #-28]
	ldr	r3, [fp, #-8]
	add	r3, r3, #400
	add	r3, r3, #2
	lsl	r3, r3, #2
	add	r3, r1, r3
	ldr	r3, [r3, #4]
	add	r3, r2, r3
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-24]
	add	r3, r3, #16384
	ldr	r2, [r3, #1984]
	ldr	r3, [fp, #-8]
	sub	r3, r2, r3
	ldr	r2, [fp, #-24]
	add	r2, r2, #16384
	str	r3, [r2, #1984]
	ldr	r3, [fp, #-24]
	add	r3, r3, #16384
	ldr	r2, [r3, #1980]
	ldr	r3, [fp, #-8]
	lsl	r3, r2, r3
	ldr	r2, [fp, #-24]
	add	r2, r2, #16384
	str	r3, [r2, #1980]
	ldr	r2, [fp, #-28]
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	add	r3, r3, #1024
	ldrb	r3, [r3]	@ zero_extendqisi2
.L369:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__jpeg_huff_decode, .-stbi__jpeg_huff_decode
	.section	.rodata
	.align	2
	.type	stbi__jbias, %object
	.size	stbi__jbias, 64
stbi__jbias:
	.word	0
	.word	-1
	.word	-3
	.word	-7
	.word	-15
	.word	-31
	.word	-63
	.word	-127
	.word	-255
	.word	-511
	.word	-1023
	.word	-2047
	.word	-4095
	.word	-8191
	.word	-16383
	.word	-32767
	.text
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__extend_receive, %function
stbi__extend_receive:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	ldr	r3, [fp, #-16]
	add	r3, r3, #16384
	ldr	r3, [r3, #1984]
	ldr	r2, [fp, #-20]
	cmp	r2, r3
	ble	.L378
	ldr	r0, [fp, #-16]
	bl	stbi__grow_buffer_unsafe
.L378:
	ldr	r3, [fp, #-16]
	add	r3, r3, #16384
	ldr	r3, [r3, #1980]
	asr	r3, r3, #31
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-16]
	add	r3, r3, #16384
	ldr	r2, [r3, #1980]
	ldr	r3, [fp, #-20]
	rsb	r3, r3, #32
	ror	r3, r2, r3
	str	r3, [fp, #-12]
	movw	r3, #:lower16:stbi__bmask
	movt	r3, #:upper16:stbi__bmask
	ldr	r2, [fp, #-20]
	ldr	r3, [r3, r2, lsl #2]
	mvn	r2, r3
	ldr	r3, [fp, #-12]
	and	r3, r3, r2
	ldr	r2, [fp, #-16]
	add	r2, r2, #16384
	str	r3, [r2, #1980]
	movw	r3, #:lower16:stbi__bmask
	movt	r3, #:upper16:stbi__bmask
	ldr	r2, [fp, #-20]
	ldr	r3, [r3, r2, lsl #2]
	ldr	r2, [fp, #-12]
	and	r3, r3, r2
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-16]
	add	r3, r3, #16384
	ldr	r2, [r3, #1984]
	ldr	r3, [fp, #-20]
	sub	r3, r2, r3
	ldr	r2, [fp, #-16]
	add	r2, r2, #16384
	str	r3, [r2, #1984]
	movw	r3, #:lower16:stbi__jbias
	movt	r3, #:upper16:stbi__jbias
	ldr	r2, [fp, #-20]
	ldr	r2, [r3, r2, lsl #2]
	ldr	r3, [fp, #-8]
	mvn	r3, r3
	and	r3, r3, r2
	mov	r2, r3
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__extend_receive, .-stbi__extend_receive
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__jpeg_get_bits, %function
stbi__jpeg_get_bits:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	ldr	r3, [fp, #-16]
	add	r3, r3, #16384
	ldr	r3, [r3, #1984]
	ldr	r2, [fp, #-20]
	cmp	r2, r3
	ble	.L381
	ldr	r0, [fp, #-16]
	bl	stbi__grow_buffer_unsafe
.L381:
	ldr	r3, [fp, #-16]
	add	r3, r3, #16384
	ldr	r2, [r3, #1980]
	ldr	r3, [fp, #-20]
	rsb	r3, r3, #32
	ror	r3, r2, r3
	str	r3, [fp, #-8]
	movw	r3, #:lower16:stbi__bmask
	movt	r3, #:upper16:stbi__bmask
	ldr	r2, [fp, #-20]
	ldr	r3, [r3, r2, lsl #2]
	mvn	r2, r3
	ldr	r3, [fp, #-8]
	and	r3, r3, r2
	ldr	r2, [fp, #-16]
	add	r2, r2, #16384
	str	r3, [r2, #1980]
	movw	r3, #:lower16:stbi__bmask
	movt	r3, #:upper16:stbi__bmask
	ldr	r2, [fp, #-20]
	ldr	r3, [r3, r2, lsl #2]
	ldr	r2, [fp, #-8]
	and	r3, r3, r2
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-16]
	add	r3, r3, #16384
	ldr	r2, [r3, #1984]
	ldr	r3, [fp, #-20]
	sub	r3, r2, r3
	ldr	r2, [fp, #-16]
	add	r2, r2, #16384
	str	r3, [r2, #1984]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__jpeg_get_bits, .-stbi__jpeg_get_bits
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__jpeg_get_bit, %function
stbi__jpeg_get_bit:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-16]
	ldr	r3, [fp, #-16]
	add	r3, r3, #16384
	ldr	r3, [r3, #1984]
	cmp	r3, #0
	bgt	.L384
	ldr	r0, [fp, #-16]
	bl	stbi__grow_buffer_unsafe
.L384:
	ldr	r3, [fp, #-16]
	add	r3, r3, #16384
	ldr	r3, [r3, #1980]
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-16]
	add	r3, r3, #16384
	ldr	r3, [r3, #1980]
	lsl	r3, r3, #1
	ldr	r2, [fp, #-16]
	add	r2, r2, #16384
	str	r3, [r2, #1980]
	ldr	r3, [fp, #-16]
	add	r3, r3, #16384
	ldr	r3, [r3, #1984]
	sub	r3, r3, #1
	ldr	r2, [fp, #-16]
	add	r2, r2, #16384
	str	r3, [r2, #1984]
	ldr	r3, [fp, #-8]
	and	r3, r3, #-2147483648
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__jpeg_get_bit, .-stbi__jpeg_get_bit
	.section	.rodata
	.align	2
	.type	stbi__jpeg_dezigzag, %object
	.size	stbi__jpeg_dezigzag, 79
stbi__jpeg_dezigzag:
	.byte	0
	.byte	1
	.byte	8
	.byte	16
	.byte	9
	.byte	2
	.byte	3
	.byte	10
	.byte	17
	.byte	24
	.byte	32
	.byte	25
	.byte	18
	.byte	11
	.byte	4
	.byte	5
	.byte	12
	.byte	19
	.byte	26
	.byte	33
	.byte	40
	.byte	48
	.byte	41
	.byte	34
	.byte	27
	.byte	20
	.byte	13
	.byte	6
	.byte	7
	.byte	14
	.byte	21
	.byte	28
	.byte	35
	.byte	42
	.byte	49
	.byte	56
	.byte	57
	.byte	50
	.byte	43
	.byte	36
	.byte	29
	.byte	22
	.byte	15
	.byte	23
	.byte	30
	.byte	37
	.byte	44
	.byte	51
	.byte	58
	.byte	59
	.byte	52
	.byte	45
	.byte	38
	.byte	31
	.byte	39
	.byte	46
	.byte	53
	.byte	60
	.byte	61
	.byte	54
	.byte	47
	.byte	55
	.byte	62
	.byte	63
	.byte	63
	.byte	63
	.byte	63
	.byte	63
	.byte	63
	.byte	63
	.byte	63
	.byte	63
	.byte	63
	.byte	63
	.byte	63
	.byte	63
	.byte	63
	.byte	63
	.byte	63
	.text
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__jpeg_decode_block, %function
stbi__jpeg_decode_block:
	@ args = 12, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #56
	str	r0, [fp, #-48]
	str	r1, [fp, #-52]
	str	r2, [fp, #-56]
	str	r3, [fp, #-60]
	ldr	r3, [fp, #-48]
	add	r3, r3, #16384
	ldr	r3, [r3, #1984]
	cmp	r3, #15
	bgt	.L387
	ldr	r0, [fp, #-48]
	bl	stbi__grow_buffer_unsafe
.L387:
	ldr	r1, [fp, #-56]
	ldr	r0, [fp, #-48]
	bl	stbi__jpeg_huff_decode
	str	r0, [fp, #-12]
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	bge	.L388
	mov	r3, #0
	b	.L389
.L388:
	mov	r2, #128
	mov	r1, #0
	ldr	r0, [fp, #-52]
	bl	memset
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	beq	.L390
	ldr	r1, [fp, #-12]
	ldr	r0, [fp, #-48]
	bl	stbi__extend_receive
	mov	r3, r0
	b	.L391
.L390:
	mov	r3, #0
.L391:
	str	r3, [fp, #-16]
	ldr	r1, [fp, #-48]
	ldr	r2, [fp, #8]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #17920
	add	r3, r3, #180
	ldr	r3, [r3]
	ldr	r2, [fp, #-16]
	add	r3, r2, r3
	str	r3, [fp, #-20]
	ldr	r1, [fp, #-48]
	ldr	r2, [fp, #8]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #17920
	add	r3, r3, #180
	ldr	r2, [fp, #-20]
	str	r2, [r3]
	ldr	r3, [fp, #-20]
	uxth	r2, r3
	ldr	r3, [fp, #12]
	ldrh	r3, [r3]
	smulbb	r3, r2, r3
	uxth	r3, r3
	sxth	r2, r3
	ldr	r3, [fp, #-52]
	strh	r2, [r3]	@ movhi
	mov	r3, #1
	str	r3, [fp, #-8]
.L399:
	ldr	r3, [fp, #-48]
	add	r3, r3, #16384
	ldr	r3, [r3, #1984]
	cmp	r3, #15
	bgt	.L392
	ldr	r0, [fp, #-48]
	bl	stbi__grow_buffer_unsafe
.L392:
	ldr	r3, [fp, #-48]
	add	r3, r3, #16384
	ldr	r3, [r3, #1980]
	lsr	r3, r3, #23
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #1
	ldr	r2, [fp, #4]
	add	r3, r2, r3
	ldrsh	r3, [r3]
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-28]
	cmp	r3, #0
	beq	.L393
	ldr	r3, [fp, #-28]
	asr	r3, r3, #4
	and	r3, r3, #15
	ldr	r2, [fp, #-8]
	add	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-28]
	and	r3, r3, #15
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-48]
	add	r3, r3, #16384
	ldr	r2, [r3, #1980]
	ldr	r3, [fp, #-32]
	lsl	r3, r2, r3
	ldr	r2, [fp, #-48]
	add	r2, r2, #16384
	str	r3, [r2, #1980]
	ldr	r3, [fp, #-48]
	add	r3, r3, #16384
	ldr	r2, [r3, #1984]
	ldr	r3, [fp, #-32]
	sub	r3, r2, r3
	ldr	r2, [fp, #-48]
	add	r2, r2, #16384
	str	r3, [r2, #1984]
	ldr	r2, [fp, #-8]
	add	r3, r2, #1
	str	r3, [fp, #-8]
	movw	r3, #:lower16:stbi__jpeg_dezigzag
	movt	r3, #:upper16:stbi__jpeg_dezigzag
	ldrb	r3, [r3, r2]	@ zero_extendqisi2
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-28]
	asr	r3, r3, #8
	uxth	r2, r3
	ldr	r3, [fp, #-36]
	lsl	r3, r3, #1
	ldr	r1, [fp, #12]
	add	r3, r1, r3
	ldrh	r3, [r3]
	smulbb	r3, r2, r3
	uxth	r1, r3
	ldr	r3, [fp, #-36]
	lsl	r3, r3, #1
	ldr	r2, [fp, #-52]
	add	r3, r2, r3
	sxth	r2, r1
	strh	r2, [r3]	@ movhi
	b	.L394
.L393:
	ldr	r1, [fp, #-60]
	ldr	r0, [fp, #-48]
	bl	stbi__jpeg_huff_decode
	str	r0, [fp, #-40]
	ldr	r3, [fp, #-40]
	cmp	r3, #0
	bge	.L395
	mov	r3, #0
	b	.L389
.L395:
	ldr	r3, [fp, #-40]
	and	r3, r3, #15
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-40]
	asr	r3, r3, #4
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-32]
	cmp	r3, #0
	bne	.L396
	ldr	r3, [fp, #-40]
	cmp	r3, #240
	bne	.L400
	ldr	r3, [fp, #-8]
	add	r3, r3, #16
	str	r3, [fp, #-8]
	b	.L394
.L396:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-28]
	add	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r2, [fp, #-8]
	add	r3, r2, #1
	str	r3, [fp, #-8]
	movw	r3, #:lower16:stbi__jpeg_dezigzag
	movt	r3, #:upper16:stbi__jpeg_dezigzag
	ldrb	r3, [r3, r2]	@ zero_extendqisi2
	str	r3, [fp, #-36]
	ldr	r1, [fp, #-32]
	ldr	r0, [fp, #-48]
	bl	stbi__extend_receive
	mov	r3, r0
	uxth	r2, r3
	ldr	r3, [fp, #-36]
	lsl	r3, r3, #1
	ldr	r1, [fp, #12]
	add	r3, r1, r3
	ldrh	r3, [r3]
	smulbb	r3, r2, r3
	uxth	r1, r3
	ldr	r3, [fp, #-36]
	lsl	r3, r3, #1
	ldr	r2, [fp, #-52]
	add	r3, r2, r3
	sxth	r2, r1
	strh	r2, [r3]	@ movhi
.L394:
	ldr	r3, [fp, #-8]
	cmp	r3, #63
	ble	.L399
	b	.L398
.L400:
	nop
.L398:
	mov	r3, #1
.L389:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__jpeg_decode_block, .-stbi__jpeg_decode_block
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__jpeg_decode_block_prog_dc, %function
stbi__jpeg_decode_block_prog_dc:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #32
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	str	r2, [fp, #-32]
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-24]
	add	r3, r3, #16384
	ldr	r3, [r3, #2004]
	cmp	r3, #0
	beq	.L402
	mov	r3, #0
	b	.L403
.L402:
	ldr	r3, [fp, #-24]
	add	r3, r3, #16384
	ldr	r3, [r3, #1984]
	cmp	r3, #15
	bgt	.L404
	ldr	r0, [fp, #-24]
	bl	stbi__grow_buffer_unsafe
.L404:
	ldr	r3, [fp, #-24]
	add	r3, r3, #16384
	ldr	r3, [r3, #2008]
	cmp	r3, #0
	bne	.L405
	mov	r2, #128
	mov	r1, #0
	ldr	r0, [fp, #-28]
	bl	memset
	ldr	r1, [fp, #-32]
	ldr	r0, [fp, #-24]
	bl	stbi__jpeg_huff_decode
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	beq	.L406
	ldr	r1, [fp, #-8]
	ldr	r0, [fp, #-24]
	bl	stbi__extend_receive
	mov	r3, r0
	b	.L407
.L406:
	mov	r3, #0
.L407:
	str	r3, [fp, #-12]
	ldr	r1, [fp, #-24]
	ldr	r2, [fp, #-36]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #17920
	add	r3, r3, #180
	ldr	r3, [r3]
	ldr	r2, [fp, #-12]
	add	r3, r2, r3
	str	r3, [fp, #-16]
	ldr	r1, [fp, #-24]
	ldr	r2, [fp, #-36]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #17920
	add	r3, r3, #180
	ldr	r2, [fp, #-16]
	str	r2, [r3]
	ldr	r3, [fp, #-24]
	add	r3, r3, #16384
	ldr	r3, [r3, #2012]
	ldr	r2, [fp, #-16]
	lsl	r3, r2, r3
	sxth	r2, r3
	ldr	r3, [fp, #-28]
	strh	r2, [r3]	@ movhi
	b	.L408
.L405:
	ldr	r0, [fp, #-24]
	bl	stbi__jpeg_get_bit
	mov	r3, r0
	cmp	r3, #0
	beq	.L408
	ldr	r3, [fp, #-28]
	ldrsh	r3, [r3]
	uxth	r2, r3
	ldr	r3, [fp, #-24]
	add	r3, r3, #16384
	ldr	r3, [r3, #2012]
	mov	r1, #1
	lsl	r3, r1, r3
	uxth	r3, r3
	add	r3, r2, r3
	uxth	r3, r3
	sxth	r2, r3
	ldr	r3, [fp, #-28]
	strh	r2, [r3]	@ movhi
.L408:
	mov	r3, #1
.L403:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__jpeg_decode_block_prog_dc, .-stbi__jpeg_decode_block_prog_dc
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__jpeg_decode_block_prog_ac, %function
stbi__jpeg_decode_block_prog_ac:
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #72
	str	r0, [fp, #-64]
	str	r1, [fp, #-68]
	str	r2, [fp, #-72]
	str	r3, [fp, #-76]
	ldr	r3, [fp, #-64]
	add	r3, r3, #16384
	ldr	r3, [r3, #2000]
	cmp	r3, #0
	bne	.L410
	mov	r3, #0
	b	.L411
.L410:
	ldr	r3, [fp, #-64]
	add	r3, r3, #16384
	ldr	r3, [r3, #2008]
	cmp	r3, #0
	bne	.L412
	ldr	r3, [fp, #-64]
	add	r3, r3, #16384
	ldr	r3, [r3, #2012]
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-64]
	add	r3, r3, #16384
	ldr	r3, [r3, #2016]
	cmp	r3, #0
	beq	.L413
	ldr	r3, [fp, #-64]
	add	r3, r3, #16384
	ldr	r3, [r3, #2016]
	sub	r3, r3, #1
	ldr	r2, [fp, #-64]
	add	r2, r2, #16384
	str	r3, [r2, #2016]
	mov	r3, #1
	b	.L411
.L413:
	ldr	r3, [fp, #-64]
	add	r3, r3, #16384
	ldr	r3, [r3, #2000]
	str	r3, [fp, #-8]
.L422:
	ldr	r3, [fp, #-64]
	add	r3, r3, #16384
	ldr	r3, [r3, #1984]
	cmp	r3, #15
	bgt	.L414
	ldr	r0, [fp, #-64]
	bl	stbi__grow_buffer_unsafe
.L414:
	ldr	r3, [fp, #-64]
	add	r3, r3, #16384
	ldr	r3, [r3, #1980]
	lsr	r3, r3, #23
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #1
	ldr	r2, [fp, #-76]
	add	r3, r2, r3
	ldrsh	r3, [r3]
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-28]
	cmp	r3, #0
	beq	.L415
	ldr	r3, [fp, #-28]
	asr	r3, r3, #4
	and	r3, r3, #15
	ldr	r2, [fp, #-8]
	add	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-28]
	and	r3, r3, #15
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-64]
	add	r3, r3, #16384
	ldr	r2, [r3, #1980]
	ldr	r3, [fp, #-32]
	lsl	r3, r2, r3
	ldr	r2, [fp, #-64]
	add	r2, r2, #16384
	str	r3, [r2, #1980]
	ldr	r3, [fp, #-64]
	add	r3, r3, #16384
	ldr	r2, [r3, #1984]
	ldr	r3, [fp, #-32]
	sub	r3, r2, r3
	ldr	r2, [fp, #-64]
	add	r2, r2, #16384
	str	r3, [r2, #1984]
	ldr	r2, [fp, #-8]
	add	r3, r2, #1
	str	r3, [fp, #-8]
	movw	r3, #:lower16:stbi__jpeg_dezigzag
	movt	r3, #:upper16:stbi__jpeg_dezigzag
	ldrb	r3, [r3, r2]	@ zero_extendqisi2
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-28]
	asr	r2, r3, #8
	ldr	r3, [fp, #-20]
	lsl	r1, r2, r3
	ldr	r3, [fp, #-36]
	lsl	r3, r3, #1
	ldr	r2, [fp, #-68]
	add	r3, r2, r3
	sxth	r2, r1
	strh	r2, [r3]	@ movhi
	b	.L416
.L415:
	ldr	r1, [fp, #-72]
	ldr	r0, [fp, #-64]
	bl	stbi__jpeg_huff_decode
	str	r0, [fp, #-40]
	ldr	r3, [fp, #-40]
	cmp	r3, #0
	bge	.L417
	mov	r3, #0
	b	.L411
.L417:
	ldr	r3, [fp, #-40]
	and	r3, r3, #15
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-40]
	asr	r3, r3, #4
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-32]
	cmp	r3, #0
	bne	.L418
	ldr	r3, [fp, #-28]
	cmp	r3, #14
	bgt	.L419
	mov	r2, #1
	ldr	r3, [fp, #-28]
	lsl	r3, r2, r3
	ldr	r2, [fp, #-64]
	add	r2, r2, #16384
	str	r3, [r2, #2016]
	ldr	r3, [fp, #-28]
	cmp	r3, #0
	beq	.L420
	ldr	r1, [fp, #-28]
	ldr	r0, [fp, #-64]
	bl	stbi__jpeg_get_bits
	mov	r2, r0
	ldr	r3, [fp, #-64]
	add	r3, r3, #16384
	ldr	r3, [r3, #2016]
	add	r3, r2, r3
	ldr	r2, [fp, #-64]
	add	r2, r2, #16384
	str	r3, [r2, #2016]
.L420:
	ldr	r3, [fp, #-64]
	add	r3, r3, #16384
	ldr	r3, [r3, #2016]
	sub	r3, r3, #1
	ldr	r2, [fp, #-64]
	add	r2, r2, #16384
	str	r3, [r2, #2016]
	b	.L423
.L419:
	ldr	r3, [fp, #-8]
	add	r3, r3, #16
	str	r3, [fp, #-8]
	b	.L416
.L418:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-28]
	add	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r2, [fp, #-8]
	add	r3, r2, #1
	str	r3, [fp, #-8]
	movw	r3, #:lower16:stbi__jpeg_dezigzag
	movt	r3, #:upper16:stbi__jpeg_dezigzag
	ldrb	r3, [r3, r2]	@ zero_extendqisi2
	str	r3, [fp, #-36]
	ldr	r1, [fp, #-32]
	ldr	r0, [fp, #-64]
	bl	stbi__extend_receive
	mov	r2, r0
	ldr	r3, [fp, #-20]
	lsl	r1, r2, r3
	ldr	r3, [fp, #-36]
	lsl	r3, r3, #1
	ldr	r2, [fp, #-68]
	add	r3, r2, r3
	sxth	r2, r1
	strh	r2, [r3]	@ movhi
.L416:
	ldr	r3, [fp, #-64]
	add	r3, r3, #16384
	ldr	r3, [r3, #2004]
	ldr	r2, [fp, #-8]
	cmp	r2, r3
	ble	.L422
	b	.L423
.L412:
	ldr	r3, [fp, #-64]
	add	r3, r3, #16384
	ldr	r3, [r3, #2012]
	mov	r2, #1
	lsl	r3, r2, r3
	strh	r3, [fp, #-42]	@ movhi
	ldr	r3, [fp, #-64]
	add	r3, r3, #16384
	ldr	r3, [r3, #2016]
	cmp	r3, #0
	beq	.L424
	ldr	r3, [fp, #-64]
	add	r3, r3, #16384
	ldr	r3, [r3, #2016]
	sub	r3, r3, #1
	ldr	r2, [fp, #-64]
	add	r2, r2, #16384
	str	r3, [r2, #2016]
	ldr	r3, [fp, #-64]
	add	r3, r3, #16384
	ldr	r3, [r3, #2000]
	str	r3, [fp, #-8]
	b	.L425
.L428:
	movw	r3, #:lower16:stbi__jpeg_dezigzag
	movt	r3, #:upper16:stbi__jpeg_dezigzag
	ldr	r2, [fp, #-8]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsl	r3, r3, #1
	ldr	r2, [fp, #-68]
	add	r3, r2, r3
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-48]
	ldrsh	r3, [r3]
	cmp	r3, #0
	beq	.L426
	ldr	r0, [fp, #-64]
	bl	stbi__jpeg_get_bit
	mov	r3, r0
	cmp	r3, #0
	beq	.L426
	ldr	r3, [fp, #-48]
	ldrsh	r2, [r3]
	ldrh	r3, [fp, #-42]	@ movhi
	and	r3, r3, r2
	sxth	r3, r3
	cmp	r3, #0
	bne	.L426
	ldr	r3, [fp, #-48]
	ldrsh	r3, [r3]
	cmp	r3, #0
	ble	.L427
	ldr	r3, [fp, #-48]
	ldrsh	r3, [r3]
	uxth	r2, r3
	ldrh	r3, [fp, #-42]
	add	r3, r2, r3
	uxth	r3, r3
	sxth	r2, r3
	ldr	r3, [fp, #-48]
	strh	r2, [r3]	@ movhi
	b	.L426
.L427:
	ldr	r3, [fp, #-48]
	ldrsh	r3, [r3]
	uxth	r2, r3
	ldrh	r3, [fp, #-42]
	sub	r3, r2, r3
	uxth	r3, r3
	sxth	r2, r3
	ldr	r3, [fp, #-48]
	strh	r2, [r3]	@ movhi
.L426:
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L425:
	ldr	r3, [fp, #-64]
	add	r3, r3, #16384
	ldr	r3, [r3, #2004]
	ldr	r2, [fp, #-8]
	cmp	r2, r3
	ble	.L428
	b	.L423
.L424:
	ldr	r3, [fp, #-64]
	add	r3, r3, #16384
	ldr	r3, [r3, #2000]
	str	r3, [fp, #-8]
.L442:
	ldr	r1, [fp, #-72]
	ldr	r0, [fp, #-64]
	bl	stbi__jpeg_huff_decode
	str	r0, [fp, #-52]
	ldr	r3, [fp, #-52]
	cmp	r3, #0
	bge	.L429
	mov	r3, #0
	b	.L411
.L429:
	ldr	r3, [fp, #-52]
	and	r3, r3, #15
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-52]
	asr	r3, r3, #4
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	bne	.L430
	ldr	r3, [fp, #-12]
	cmp	r3, #14
	bgt	.L435
	mov	r2, #1
	ldr	r3, [fp, #-12]
	lsl	r3, r2, r3
	sub	r3, r3, #1
	ldr	r2, [fp, #-64]
	add	r2, r2, #16384
	str	r3, [r2, #2016]
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	beq	.L432
	ldr	r1, [fp, #-12]
	ldr	r0, [fp, #-64]
	bl	stbi__jpeg_get_bits
	mov	r2, r0
	ldr	r3, [fp, #-64]
	add	r3, r3, #16384
	ldr	r3, [r3, #2016]
	add	r3, r2, r3
	ldr	r2, [fp, #-64]
	add	r2, r2, #16384
	str	r3, [r2, #2016]
.L432:
	mov	r3, #64
	str	r3, [fp, #-12]
	b	.L435
.L430:
	ldr	r3, [fp, #-16]
	cmp	r3, #1
	beq	.L433
	mov	r3, #0
	b	.L411
.L433:
	ldr	r0, [fp, #-64]
	bl	stbi__jpeg_get_bit
	mov	r3, r0
	cmp	r3, #0
	beq	.L434
	ldrsh	r3, [fp, #-42]
	str	r3, [fp, #-16]
	b	.L435
.L434:
	ldrsh	r3, [fp, #-42]
	rsb	r3, r3, #0
	str	r3, [fp, #-16]
	b	.L435
.L441:
	ldr	r2, [fp, #-8]
	add	r3, r2, #1
	str	r3, [fp, #-8]
	movw	r3, #:lower16:stbi__jpeg_dezigzag
	movt	r3, #:upper16:stbi__jpeg_dezigzag
	ldrb	r3, [r3, r2]	@ zero_extendqisi2
	lsl	r3, r3, #1
	ldr	r2, [fp, #-68]
	add	r3, r2, r3
	str	r3, [fp, #-56]
	ldr	r3, [fp, #-56]
	ldrsh	r3, [r3]
	cmp	r3, #0
	beq	.L436
	ldr	r0, [fp, #-64]
	bl	stbi__jpeg_get_bit
	mov	r3, r0
	cmp	r3, #0
	beq	.L435
	ldr	r3, [fp, #-56]
	ldrsh	r2, [r3]
	ldrh	r3, [fp, #-42]	@ movhi
	and	r3, r3, r2
	sxth	r3, r3
	cmp	r3, #0
	bne	.L435
	ldr	r3, [fp, #-56]
	ldrsh	r3, [r3]
	cmp	r3, #0
	ble	.L438
	ldr	r3, [fp, #-56]
	ldrsh	r3, [r3]
	uxth	r2, r3
	ldrh	r3, [fp, #-42]
	add	r3, r2, r3
	uxth	r3, r3
	sxth	r2, r3
	ldr	r3, [fp, #-56]
	strh	r2, [r3]	@ movhi
	b	.L435
.L438:
	ldr	r3, [fp, #-56]
	ldrsh	r3, [r3]
	uxth	r2, r3
	ldrh	r3, [fp, #-42]
	sub	r3, r2, r3
	uxth	r3, r3
	sxth	r2, r3
	ldr	r3, [fp, #-56]
	strh	r2, [r3]	@ movhi
	b	.L435
.L436:
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	bne	.L439
	ldr	r3, [fp, #-16]
	sxth	r2, r3
	ldr	r3, [fp, #-56]
	strh	r2, [r3]	@ movhi
	b	.L440
.L439:
	ldr	r3, [fp, #-12]
	sub	r3, r3, #1
	str	r3, [fp, #-12]
.L435:
	ldr	r3, [fp, #-64]
	add	r3, r3, #16384
	ldr	r3, [r3, #2004]
	ldr	r2, [fp, #-8]
	cmp	r2, r3
	ble	.L441
.L440:
	ldr	r3, [fp, #-64]
	add	r3, r3, #16384
	ldr	r3, [r3, #2004]
	ldr	r2, [fp, #-8]
	cmp	r2, r3
	ble	.L442
.L423:
	mov	r3, #1
.L411:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__jpeg_decode_block_prog_ac, .-stbi__jpeg_decode_block_prog_ac
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__clamp, %function
stbi__clamp:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	cmp	r3, #255
	bls	.L444
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	bge	.L445
	mov	r3, #0
	b	.L446
.L445:
	ldr	r3, [fp, #-8]
	cmp	r3, #255
	ble	.L444
	mov	r3, #255
	b	.L446
.L444:
	ldr	r3, [fp, #-8]
	uxtb	r3, r3
.L446:
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	stbi__clamp, .-stbi__clamp
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__idct_block, %function
stbi__idct_block:
	@ args = 0, pretend = 0, frame = 400
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, fp, lr}
	add	fp, sp, #8
	sub	sp, sp, #404
	str	r0, [fp, #-400]
	str	r1, [fp, #-404]
	str	r2, [fp, #-408]
	sub	r3, fp, #392
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-408]
	str	r3, [fp, #-28]
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L448
.L451:
	ldr	r3, [fp, #-28]
	add	r3, r3, #16
	ldrsh	r3, [r3]
	cmp	r3, #0
	bne	.L449
	ldr	r3, [fp, #-28]
	add	r3, r3, #32
	ldrsh	r3, [r3]
	cmp	r3, #0
	bne	.L449
	ldr	r3, [fp, #-28]
	add	r3, r3, #48
	ldrsh	r3, [r3]
	cmp	r3, #0
	bne	.L449
	ldr	r3, [fp, #-28]
	add	r3, r3, #64
	ldrsh	r3, [r3]
	cmp	r3, #0
	bne	.L449
	ldr	r3, [fp, #-28]
	add	r3, r3, #80
	ldrsh	r3, [r3]
	cmp	r3, #0
	bne	.L449
	ldr	r3, [fp, #-28]
	add	r3, r3, #96
	ldrsh	r3, [r3]
	cmp	r3, #0
	bne	.L449
	ldr	r3, [fp, #-28]
	add	r3, r3, #112
	ldrsh	r3, [r3]
	cmp	r3, #0
	bne	.L449
	ldr	r3, [fp, #-28]
	ldrsh	r3, [r3]
	lsl	r3, r3, #2
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-20]
	add	r3, r3, #224
	ldr	r2, [fp, #-32]
	str	r2, [r3]
	ldr	r2, [fp, #-20]
	add	r2, r2, #192
	ldr	r3, [r3]
	str	r3, [r2]
	ldr	r3, [fp, #-20]
	add	r3, r3, #160
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r2, [fp, #-20]
	add	r2, r2, #128
	ldr	r3, [r3]
	str	r3, [r2]
	ldr	r3, [fp, #-20]
	add	r3, r3, #96
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r2, [fp, #-20]
	add	r2, r2, #64
	ldr	r3, [r3]
	str	r3, [r2]
	ldr	r3, [fp, #-20]
	add	r3, r3, #32
	ldr	r2, [r2]
	str	r2, [r3]
	ldr	r2, [r3]
	ldr	r3, [fp, #-20]
	str	r2, [r3]
	b	.L450
.L449:
	ldr	r3, [fp, #-28]
	add	r3, r3, #32
	ldrsh	r3, [r3]
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-28]
	add	r3, r3, #96
	ldrsh	r3, [r3]
	str	r3, [fp, #-40]
	ldr	r2, [fp, #-36]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	movw	r2, #2217
	mul	r3, r2, r3
	str	r3, [fp, #-44]
	ldr	r2, [fp, #-40]
	movw	r3, #57969
	movt	r3, 65535
	mul	r3, r3, r2
	ldr	r2, [fp, #-44]
	add	r3, r2, r3
	str	r3, [fp, #-48]
	ldr	r2, [fp, #-36]
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	lsl	r3, r3, #5
	sub	r3, r3, r2
	lsl	r2, r3, #5
	add	r3, r3, r2
	ldr	r2, [fp, #-44]
	add	r3, r2, r3
	str	r3, [fp, #-52]
	ldr	r3, [fp, #-28]
	ldrsh	r3, [r3]
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-28]
	add	r3, r3, #64
	ldrsh	r3, [r3]
	str	r3, [fp, #-40]
	ldr	r2, [fp, #-36]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	lsl	r3, r3, #12
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-36]
	ldr	r3, [fp, #-40]
	sub	r3, r2, r3
	lsl	r3, r3, #12
	str	r3, [fp, #-60]
	ldr	r2, [fp, #-56]
	ldr	r3, [fp, #-52]
	add	r3, r2, r3
	str	r3, [fp, #-64]
	ldr	r2, [fp, #-56]
	ldr	r3, [fp, #-52]
	sub	r3, r2, r3
	str	r3, [fp, #-68]
	ldr	r2, [fp, #-60]
	ldr	r3, [fp, #-48]
	add	r3, r2, r3
	str	r3, [fp, #-72]
	ldr	r2, [fp, #-60]
	ldr	r3, [fp, #-48]
	sub	r3, r2, r3
	str	r3, [fp, #-76]
	ldr	r3, [fp, #-28]
	add	r3, r3, #112
	ldrsh	r3, [r3]
	str	r3, [fp, #-56]
	ldr	r3, [fp, #-28]
	add	r3, r3, #80
	ldrsh	r3, [r3]
	str	r3, [fp, #-60]
	ldr	r3, [fp, #-28]
	add	r3, r3, #48
	ldrsh	r3, [r3]
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-28]
	add	r3, r3, #16
	ldrsh	r3, [r3]
	str	r3, [fp, #-52]
	ldr	r2, [fp, #-56]
	ldr	r3, [fp, #-48]
	add	r3, r2, r3
	str	r3, [fp, #-40]
	ldr	r2, [fp, #-60]
	ldr	r3, [fp, #-52]
	add	r3, r2, r3
	str	r3, [fp, #-80]
	ldr	r2, [fp, #-56]
	ldr	r3, [fp, #-52]
	add	r3, r2, r3
	str	r3, [fp, #-44]
	ldr	r2, [fp, #-60]
	ldr	r3, [fp, #-48]
	add	r3, r2, r3
	str	r3, [fp, #-36]
	ldr	r2, [fp, #-40]
	ldr	r3, [fp, #-80]
	add	r3, r2, r3
	movw	r2, #4816
	mul	r3, r2, r3
	str	r3, [fp, #-84]
	ldr	r2, [fp, #-56]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r1, r3, #4
	add	r3, r3, r1
	lsl	r3, r3, #3
	sub	r3, r3, r2
	str	r3, [fp, #-56]
	ldr	r3, [fp, #-60]
	movw	r2, #8410
	mul	r3, r2, r3
	str	r3, [fp, #-60]
	ldr	r3, [fp, #-48]
	movw	r2, #12586
	mul	r3, r2, r3
	str	r3, [fp, #-48]
	ldr	r2, [fp, #-52]
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	lsl	r3, r3, #9
	add	r3, r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	str	r3, [fp, #-52]
	ldr	r2, [fp, #-44]
	movw	r3, #61851
	movt	r3, 65535
	mul	r3, r3, r2
	ldr	r2, [fp, #-84]
	add	r3, r2, r3
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-36]
	mvn	r2, #10496
	mul	r3, r2, r3
	ldr	r2, [fp, #-84]
	add	r3, r2, r3
	str	r3, [fp, #-36]
	ldr	r2, [fp, #-40]
	movw	r3, #57502
	movt	r3, 65535
	mul	r3, r3, r2
	str	r3, [fp, #-40]
	ldr	r2, [fp, #-80]
	movw	r3, #63939
	movt	r3, 65535
	mul	r3, r3, r2
	str	r3, [fp, #-80]
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-80]
	add	r3, r2, r3
	ldr	r2, [fp, #-52]
	add	r3, r2, r3
	str	r3, [fp, #-52]
	ldr	r2, [fp, #-36]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	ldr	r2, [fp, #-48]
	add	r3, r2, r3
	str	r3, [fp, #-48]
	ldr	r2, [fp, #-36]
	ldr	r3, [fp, #-80]
	add	r3, r2, r3
	ldr	r2, [fp, #-60]
	add	r3, r2, r3
	str	r3, [fp, #-60]
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	ldr	r2, [fp, #-56]
	add	r3, r2, r3
	str	r3, [fp, #-56]
	ldr	r3, [fp, #-64]
	add	r3, r3, #512
	str	r3, [fp, #-64]
	ldr	r3, [fp, #-72]
	add	r3, r3, #512
	str	r3, [fp, #-72]
	ldr	r3, [fp, #-76]
	add	r3, r3, #512
	str	r3, [fp, #-76]
	ldr	r3, [fp, #-68]
	add	r3, r3, #512
	str	r3, [fp, #-68]
	ldr	r2, [fp, #-64]
	ldr	r3, [fp, #-52]
	add	r3, r2, r3
	asr	r2, r3, #10
	ldr	r3, [fp, #-20]
	str	r2, [r3]
	ldr	r2, [fp, #-64]
	ldr	r3, [fp, #-52]
	sub	r2, r2, r3
	ldr	r3, [fp, #-20]
	add	r3, r3, #224
	asr	r2, r2, #10
	str	r2, [r3]
	ldr	r2, [fp, #-72]
	ldr	r3, [fp, #-48]
	add	r2, r2, r3
	ldr	r3, [fp, #-20]
	add	r3, r3, #32
	asr	r2, r2, #10
	str	r2, [r3]
	ldr	r2, [fp, #-72]
	ldr	r3, [fp, #-48]
	sub	r2, r2, r3
	ldr	r3, [fp, #-20]
	add	r3, r3, #192
	asr	r2, r2, #10
	str	r2, [r3]
	ldr	r2, [fp, #-76]
	ldr	r3, [fp, #-60]
	add	r2, r2, r3
	ldr	r3, [fp, #-20]
	add	r3, r3, #64
	asr	r2, r2, #10
	str	r2, [r3]
	ldr	r2, [fp, #-76]
	ldr	r3, [fp, #-60]
	sub	r2, r2, r3
	ldr	r3, [fp, #-20]
	add	r3, r3, #160
	asr	r2, r2, #10
	str	r2, [r3]
	ldr	r2, [fp, #-68]
	ldr	r3, [fp, #-56]
	add	r2, r2, r3
	ldr	r3, [fp, #-20]
	add	r3, r3, #96
	asr	r2, r2, #10
	str	r2, [r3]
	ldr	r2, [fp, #-68]
	ldr	r3, [fp, #-56]
	sub	r2, r2, r3
	ldr	r3, [fp, #-20]
	add	r3, r3, #128
	asr	r2, r2, #10
	str	r2, [r3]
.L450:
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-28]
	add	r3, r3, #2
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4
	str	r3, [fp, #-20]
.L448:
	ldr	r3, [fp, #-16]
	cmp	r3, #7
	ble	.L451
	mov	r3, #0
	str	r3, [fp, #-16]
	sub	r3, fp, #392
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-400]
	str	r3, [fp, #-24]
	b	.L452
.L453:
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #8]
	str	r3, [fp, #-88]
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #24]
	str	r3, [fp, #-92]
	ldr	r2, [fp, #-88]
	ldr	r3, [fp, #-92]
	add	r3, r2, r3
	movw	r2, #2217
	mul	r3, r2, r3
	str	r3, [fp, #-96]
	ldr	r2, [fp, #-92]
	movw	r3, #57969
	movt	r3, 65535
	mul	r3, r3, r2
	ldr	r2, [fp, #-96]
	add	r3, r2, r3
	str	r3, [fp, #-100]
	ldr	r2, [fp, #-88]
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	lsl	r3, r3, #5
	sub	r3, r3, r2
	lsl	r2, r3, #5
	add	r3, r3, r2
	ldr	r2, [fp, #-96]
	add	r3, r2, r3
	str	r3, [fp, #-104]
	ldr	r3, [fp, #-20]
	ldr	r3, [r3]
	str	r3, [fp, #-88]
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #16]
	str	r3, [fp, #-92]
	ldr	r2, [fp, #-88]
	ldr	r3, [fp, #-92]
	add	r3, r2, r3
	lsl	r3, r3, #12
	str	r3, [fp, #-108]
	ldr	r2, [fp, #-88]
	ldr	r3, [fp, #-92]
	sub	r3, r2, r3
	lsl	r3, r3, #12
	str	r3, [fp, #-112]
	ldr	r2, [fp, #-108]
	ldr	r3, [fp, #-104]
	add	r3, r2, r3
	str	r3, [fp, #-116]
	ldr	r2, [fp, #-108]
	ldr	r3, [fp, #-104]
	sub	r3, r2, r3
	str	r3, [fp, #-120]
	ldr	r2, [fp, #-112]
	ldr	r3, [fp, #-100]
	add	r3, r2, r3
	str	r3, [fp, #-124]
	ldr	r2, [fp, #-112]
	ldr	r3, [fp, #-100]
	sub	r3, r2, r3
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #28]
	str	r3, [fp, #-108]
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #20]
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #12]
	str	r3, [fp, #-100]
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #4]
	str	r3, [fp, #-104]
	ldr	r2, [fp, #-108]
	ldr	r3, [fp, #-100]
	add	r3, r2, r3
	str	r3, [fp, #-92]
	ldr	r2, [fp, #-112]
	ldr	r3, [fp, #-104]
	add	r3, r2, r3
	str	r3, [fp, #-132]
	ldr	r2, [fp, #-108]
	ldr	r3, [fp, #-104]
	add	r3, r2, r3
	str	r3, [fp, #-96]
	ldr	r2, [fp, #-112]
	ldr	r3, [fp, #-100]
	add	r3, r2, r3
	str	r3, [fp, #-88]
	ldr	r2, [fp, #-92]
	ldr	r3, [fp, #-132]
	add	r3, r2, r3
	movw	r2, #4816
	mul	r3, r2, r3
	str	r3, [fp, #-136]
	ldr	r2, [fp, #-108]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r1, r3, #4
	add	r3, r3, r1
	lsl	r3, r3, #3
	sub	r3, r3, r2
	str	r3, [fp, #-108]
	ldr	r3, [fp, #-112]
	movw	r2, #8410
	mul	r3, r2, r3
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-100]
	movw	r2, #12586
	mul	r3, r2, r3
	str	r3, [fp, #-100]
	ldr	r2, [fp, #-104]
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	lsl	r3, r3, #9
	add	r3, r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	str	r3, [fp, #-104]
	ldr	r2, [fp, #-96]
	movw	r3, #61851
	movt	r3, 65535
	mul	r3, r3, r2
	ldr	r2, [fp, #-136]
	add	r3, r2, r3
	str	r3, [fp, #-96]
	ldr	r3, [fp, #-88]
	mvn	r2, #10496
	mul	r3, r2, r3
	ldr	r2, [fp, #-136]
	add	r3, r2, r3
	str	r3, [fp, #-88]
	ldr	r2, [fp, #-92]
	movw	r3, #57502
	movt	r3, 65535
	mul	r3, r3, r2
	str	r3, [fp, #-92]
	ldr	r2, [fp, #-132]
	movw	r3, #63939
	movt	r3, 65535
	mul	r3, r3, r2
	str	r3, [fp, #-132]
	ldr	r2, [fp, #-96]
	ldr	r3, [fp, #-132]
	add	r3, r2, r3
	ldr	r2, [fp, #-104]
	add	r3, r2, r3
	str	r3, [fp, #-104]
	ldr	r2, [fp, #-88]
	ldr	r3, [fp, #-92]
	add	r3, r2, r3
	ldr	r2, [fp, #-100]
	add	r3, r2, r3
	str	r3, [fp, #-100]
	ldr	r2, [fp, #-88]
	ldr	r3, [fp, #-132]
	add	r3, r2, r3
	ldr	r2, [fp, #-112]
	add	r3, r2, r3
	str	r3, [fp, #-112]
	ldr	r2, [fp, #-96]
	ldr	r3, [fp, #-92]
	add	r3, r2, r3
	ldr	r2, [fp, #-108]
	add	r3, r2, r3
	str	r3, [fp, #-108]
	ldr	r3, [fp, #-116]
	add	r3, r3, #16777216
	add	r3, r3, #65536
	str	r3, [fp, #-116]
	ldr	r3, [fp, #-124]
	add	r3, r3, #16777216
	add	r3, r3, #65536
	str	r3, [fp, #-124]
	ldr	r3, [fp, #-128]
	add	r3, r3, #16777216
	add	r3, r3, #65536
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-120]
	add	r3, r3, #16777216
	add	r3, r3, #65536
	str	r3, [fp, #-120]
	ldr	r2, [fp, #-116]
	ldr	r3, [fp, #-104]
	add	r3, r2, r3
	asr	r3, r3, #17
	mov	r0, r3
	bl	stbi__clamp
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [fp, #-24]
	strb	r2, [r3]
	ldr	r2, [fp, #-116]
	ldr	r3, [fp, #-104]
	sub	r3, r2, r3
	asr	r2, r3, #17
	ldr	r3, [fp, #-24]
	add	r4, r3, #7
	mov	r0, r2
	bl	stbi__clamp
	mov	r3, r0
	strb	r3, [r4]
	ldr	r2, [fp, #-124]
	ldr	r3, [fp, #-100]
	add	r3, r2, r3
	asr	r2, r3, #17
	ldr	r3, [fp, #-24]
	add	r4, r3, #1
	mov	r0, r2
	bl	stbi__clamp
	mov	r3, r0
	strb	r3, [r4]
	ldr	r2, [fp, #-124]
	ldr	r3, [fp, #-100]
	sub	r3, r2, r3
	asr	r2, r3, #17
	ldr	r3, [fp, #-24]
	add	r4, r3, #6
	mov	r0, r2
	bl	stbi__clamp
	mov	r3, r0
	strb	r3, [r4]
	ldr	r2, [fp, #-128]
	ldr	r3, [fp, #-112]
	add	r3, r2, r3
	asr	r2, r3, #17
	ldr	r3, [fp, #-24]
	add	r4, r3, #2
	mov	r0, r2
	bl	stbi__clamp
	mov	r3, r0
	strb	r3, [r4]
	ldr	r2, [fp, #-128]
	ldr	r3, [fp, #-112]
	sub	r3, r2, r3
	asr	r2, r3, #17
	ldr	r3, [fp, #-24]
	add	r4, r3, #5
	mov	r0, r2
	bl	stbi__clamp
	mov	r3, r0
	strb	r3, [r4]
	ldr	r2, [fp, #-120]
	ldr	r3, [fp, #-108]
	add	r3, r2, r3
	asr	r2, r3, #17
	ldr	r3, [fp, #-24]
	add	r4, r3, #3
	mov	r0, r2
	bl	stbi__clamp
	mov	r3, r0
	strb	r3, [r4]
	ldr	r2, [fp, #-120]
	ldr	r3, [fp, #-108]
	sub	r3, r2, r3
	asr	r2, r3, #17
	ldr	r3, [fp, #-24]
	add	r4, r3, #4
	mov	r0, r2
	bl	stbi__clamp
	mov	r3, r0
	strb	r3, [r4]
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-20]
	add	r3, r3, #32
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-404]
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	str	r3, [fp, #-24]
.L452:
	ldr	r3, [fp, #-16]
	cmp	r3, #7
	ble	.L453
	nop
	sub	sp, fp, #8
	@ sp needed
	pop	{r4, fp, pc}
	.size	stbi__idct_block, .-stbi__idct_block
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__get_marker, %function
stbi__get_marker:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-16]
	ldr	r3, [fp, #-16]
	add	r3, r3, #16384
	ldrb	r3, [r3, #1988]	@ zero_extendqisi2
	cmp	r3, #255
	beq	.L455
	ldr	r3, [fp, #-16]
	add	r3, r3, #16384
	ldrb	r3, [r3, #1988]
	strb	r3, [fp, #-5]
	ldr	r3, [fp, #-16]
	add	r3, r3, #16384
	mvn	r2, #0
	strb	r2, [r3, #1988]
	ldrb	r3, [fp, #-5]	@ zero_extendqisi2
	b	.L456
.L455:
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	mov	r0, r3
	bl	stbi__get8
	mov	r3, r0
	strb	r3, [fp, #-5]
	ldrb	r3, [fp, #-5]	@ zero_extendqisi2
	cmp	r3, #255
	beq	.L458
	mov	r3, #255
	b	.L456
.L459:
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	mov	r0, r3
	bl	stbi__get8
	mov	r3, r0
	strb	r3, [fp, #-5]
.L458:
	ldrb	r3, [fp, #-5]	@ zero_extendqisi2
	cmp	r3, #255
	beq	.L459
	ldrb	r3, [fp, #-5]	@ zero_extendqisi2
.L456:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__get_marker, .-stbi__get_marker
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__jpeg_reset, %function
stbi__jpeg_reset:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	add	r3, r3, #16384
	mov	r2, r3
	mov	r3, #0
	str	r3, [r2, #1984]
	ldr	r3, [fp, #-8]
	add	r3, r3, #16384
	mov	r2, r3
	mov	r3, #0
	str	r3, [r2, #1980]
	ldr	r3, [fp, #-8]
	add	r3, r3, #16384
	mov	r2, r3
	mov	r3, #0
	str	r3, [r2, #1992]
	ldr	r3, [fp, #-8]
	add	r3, r3, #16384
	mov	r2, r3
	mov	r3, #0
	str	r3, [r2, #1932]
	ldr	r3, [fp, #-8]
	add	r3, r3, #16384
	ldr	r3, [r3, #1932]
	ldr	r2, [fp, #-8]
	add	r2, r2, #16384
	str	r3, [r2, #1860]
	ldr	r3, [fp, #-8]
	add	r3, r3, #16384
	ldr	r3, [r3, #1860]
	ldr	r2, [fp, #-8]
	add	r2, r2, #16384
	str	r3, [r2, #1788]
	ldr	r3, [fp, #-8]
	add	r3, r3, #16384
	ldr	r3, [r3, #1788]
	ldr	r2, [fp, #-8]
	add	r2, r2, #16384
	str	r3, [r2, #1716]
	ldr	r3, [fp, #-8]
	add	r3, r3, #16384
	mvn	r2, #0
	strb	r2, [r3, #1988]
	ldr	r3, [fp, #-8]
	add	r3, r3, #16384
	ldr	r3, [r3, #2052]
	cmp	r3, #0
	beq	.L461
	ldr	r3, [fp, #-8]
	add	r3, r3, #16384
	ldr	r3, [r3, #2052]
	b	.L462
.L461:
	mvn	r3, #-2147483648
.L462:
	ldr	r2, [fp, #-8]
	add	r2, r2, #16384
	str	r3, [r2, #2056]
	ldr	r3, [fp, #-8]
	add	r3, r3, #16384
	mov	r2, r3
	mov	r3, #0
	str	r3, [r2, #2016]
	nop
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	stbi__jpeg_reset, .-stbi__jpeg_reset
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__parse_entropy_coded_data, %function
stbi__parse_entropy_coded_data:
	@ args = 0, pretend = 0, frame = 264
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, fp, lr}
	add	fp, sp, #8
	sub	sp, sp, #284
	str	r0, [fp, #-272]
	ldr	r0, [fp, #-272]
	bl	stbi__jpeg_reset
	ldr	r3, [fp, #-272]
	add	r3, r3, #16384
	ldr	r3, [r3, #1996]
	cmp	r3, #0
	bne	.L464
	ldr	r3, [fp, #-272]
	add	r3, r3, #16384
	ldr	r3, [r3, #2032]
	cmp	r3, #1
	bne	.L465
	ldr	r3, [fp, #-272]
	add	r3, r3, #16384
	ldr	r3, [r3, #2036]
	str	r3, [fp, #-72]
	ldr	r1, [fp, #-272]
	ldr	r2, [fp, #-72]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #17920
	add	r3, r3, #184
	ldr	r3, [r3]
	add	r3, r3, #7
	asr	r3, r3, #3
	str	r3, [fp, #-76]
	ldr	r1, [fp, #-272]
	ldr	r2, [fp, #-72]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #17920
	add	r3, r3, #188
	ldr	r3, [r3]
	add	r3, r3, #7
	asr	r3, r3, #3
	str	r3, [fp, #-80]
	mov	r3, #0
	str	r3, [fp, #-20]
	b	.L466
.L475:
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L467
.L474:
	ldr	r1, [fp, #-272]
	ldr	r2, [fp, #-72]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #17920
	add	r3, r3, #176
	ldr	r3, [r3]
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-272]
	add	r1, r3, #4
	ldr	r0, [fp, #-272]
	ldr	r2, [fp, #-72]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r0, r3
	add	r3, r3, #17920
	add	r3, r3, #172
	ldr	r3, [r3]
	mov	r2, r3
	mov	r3, r2
	lsl	r3, r3, #3
	sub	r3, r3, r2
	lsl	r2, r3, #4
	sub	r2, r2, r3
	lsl	r3, r2, #4
	mov	r2, r3
	mov	r3, r2
	add	ip, r1, r3
	ldr	r3, [fp, #-272]
	add	r1, r3, #6720
	add	r1, r1, #4
	ldr	r2, [fp, #-84]
	mov	r3, r2
	lsl	r3, r3, #3
	sub	r3, r3, r2
	lsl	r2, r3, #4
	sub	r2, r2, r3
	lsl	r3, r2, #4
	mov	r2, r3
	mov	r3, r2
	add	lr, r1, r3
	ldr	r3, [fp, #-84]
	lsl	r3, r3, #10
	add	r3, r3, #13952
	ldr	r2, [fp, #-272]
	add	r3, r2, r3
	add	r1, r3, #4
	ldr	r0, [fp, #-272]
	ldr	r2, [fp, #-72]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r0, r3
	add	r3, r3, #17920
	add	r3, r3, #168
	ldr	r3, [r3]
	add	r3, r3, #105
	lsl	r3, r3, #7
	ldr	r2, [fp, #-272]
	add	r3, r2, r3
	add	r3, r3, #4
	sub	r0, fp, #264
	str	r3, [sp, #8]
	ldr	r3, [fp, #-72]
	str	r3, [sp, #4]
	str	r1, [sp]
	mov	r3, lr
	mov	r2, ip
	mov	r1, r0
	ldr	r0, [fp, #-272]
	bl	stbi__jpeg_decode_block
	mov	r3, r0
	cmp	r3, #0
	bne	.L468
	mov	r3, #0
	b	.L476
.L468:
	ldr	r3, [fp, #-272]
	add	r3, r3, #16384
	ldr	r4, [r3, #2060]
	ldr	r1, [fp, #-272]
	ldr	r2, [fp, #-72]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #17920
	add	r3, r3, #200
	ldr	r1, [r3]
	ldr	r0, [fp, #-272]
	ldr	r2, [fp, #-72]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r0, r3
	add	r3, r3, #17920
	add	r3, r3, #192
	ldr	r3, [r3]
	ldr	r2, [fp, #-20]
	mul	r3, r2, r3
	lsl	r3, r3, #3
	mov	r2, r3
	ldr	r3, [fp, #-16]
	lsl	r3, r3, #3
	add	r3, r2, r3
	add	r0, r1, r3
	ldr	r1, [fp, #-272]
	ldr	r2, [fp, #-72]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #17920
	add	r3, r3, #192
	ldr	r3, [r3]
	sub	r2, fp, #264
	mov	r1, r3
	blx	r4
	ldr	r3, [fp, #-272]
	add	r3, r3, #16384
	ldr	r3, [r3, #2056]
	sub	r3, r3, #1
	ldr	r2, [fp, #-272]
	add	r2, r2, #16384
	str	r3, [r2, #2056]
	ldr	r3, [fp, #-272]
	add	r3, r3, #16384
	ldr	r3, [r3, #2056]
	cmp	r3, #0
	bgt	.L470
	ldr	r3, [fp, #-272]
	add	r3, r3, #16384
	ldr	r3, [r3, #1984]
	cmp	r3, #23
	bgt	.L471
	ldr	r0, [fp, #-272]
	bl	stbi__grow_buffer_unsafe
.L471:
	ldr	r3, [fp, #-272]
	add	r3, r3, #16384
	ldrb	r3, [r3, #1988]	@ zero_extendqisi2
	cmp	r3, #207
	bls	.L472
	ldr	r3, [fp, #-272]
	add	r3, r3, #16384
	ldrb	r3, [r3, #1988]	@ zero_extendqisi2
	cmp	r3, #215
	bls	.L473
.L472:
	mov	r3, #1
	b	.L476
.L473:
	ldr	r0, [fp, #-272]
	bl	stbi__jpeg_reset
.L470:
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L467:
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-76]
	cmp	r2, r3
	blt	.L474
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
.L466:
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-80]
	cmp	r2, r3
	blt	.L475
	mov	r3, #1
	b	.L476
.L465:
	mov	r3, #0
	str	r3, [fp, #-28]
	b	.L477
.L492:
	mov	r3, #0
	str	r3, [fp, #-24]
	b	.L478
.L491:
	mov	r3, #0
	str	r3, [fp, #-32]
	b	.L479
.L486:
	ldr	r2, [fp, #-272]
	ldr	r3, [fp, #-32]
	add	r3, r3, #4544
	add	r3, r3, #60
	lsl	r3, r3, #2
	add	r3, r2, r3
	ldr	r3, [r3, #4]
	str	r3, [fp, #-88]
	mov	r3, #0
	str	r3, [fp, #-40]
	b	.L480
.L485:
	mov	r3, #0
	str	r3, [fp, #-36]
	b	.L481
.L484:
	ldr	r1, [fp, #-272]
	ldr	r2, [fp, #-88]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #17920
	add	r3, r3, #160
	ldr	r3, [r3]
	ldr	r2, [fp, #-24]
	mul	r2, r2, r3
	ldr	r3, [fp, #-36]
	add	r3, r2, r3
	lsl	r3, r3, #3
	str	r3, [fp, #-92]
	ldr	r1, [fp, #-272]
	ldr	r2, [fp, #-88]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #17920
	add	r3, r3, #164
	ldr	r3, [r3]
	ldr	r2, [fp, #-28]
	mul	r2, r2, r3
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	lsl	r3, r3, #3
	str	r3, [fp, #-96]
	ldr	r1, [fp, #-272]
	ldr	r2, [fp, #-88]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #17920
	add	r3, r3, #176
	ldr	r3, [r3]
	str	r3, [fp, #-100]
	ldr	r3, [fp, #-272]
	add	r1, r3, #4
	ldr	r0, [fp, #-272]
	ldr	r2, [fp, #-88]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r0, r3
	add	r3, r3, #17920
	add	r3, r3, #172
	ldr	r3, [r3]
	mov	r2, r3
	mov	r3, r2
	lsl	r3, r3, #3
	sub	r3, r3, r2
	lsl	r2, r3, #4
	sub	r2, r2, r3
	lsl	r3, r2, #4
	mov	r2, r3
	mov	r3, r2
	add	ip, r1, r3
	ldr	r3, [fp, #-272]
	add	r1, r3, #6720
	add	r1, r1, #4
	ldr	r2, [fp, #-100]
	mov	r3, r2
	lsl	r3, r3, #3
	sub	r3, r3, r2
	lsl	r2, r3, #4
	sub	r2, r2, r3
	lsl	r3, r2, #4
	mov	r2, r3
	mov	r3, r2
	add	lr, r1, r3
	ldr	r3, [fp, #-100]
	lsl	r3, r3, #10
	add	r3, r3, #13952
	ldr	r2, [fp, #-272]
	add	r3, r2, r3
	add	r1, r3, #4
	ldr	r0, [fp, #-272]
	ldr	r2, [fp, #-88]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r0, r3
	add	r3, r3, #17920
	add	r3, r3, #168
	ldr	r3, [r3]
	add	r3, r3, #105
	lsl	r3, r3, #7
	ldr	r2, [fp, #-272]
	add	r3, r2, r3
	add	r3, r3, #4
	sub	r0, fp, #264
	str	r3, [sp, #8]
	ldr	r3, [fp, #-88]
	str	r3, [sp, #4]
	str	r1, [sp]
	mov	r3, lr
	mov	r2, ip
	mov	r1, r0
	ldr	r0, [fp, #-272]
	bl	stbi__jpeg_decode_block
	mov	r3, r0
	cmp	r3, #0
	bne	.L482
	mov	r3, #0
	b	.L476
.L482:
	ldr	r3, [fp, #-272]
	add	r3, r3, #16384
	ldr	r4, [r3, #2060]
	ldr	r1, [fp, #-272]
	ldr	r2, [fp, #-88]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #17920
	add	r3, r3, #200
	ldr	r1, [r3]
	ldr	r0, [fp, #-272]
	ldr	r2, [fp, #-88]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r0, r3
	add	r3, r3, #17920
	add	r3, r3, #192
	ldr	r3, [r3]
	ldr	r2, [fp, #-96]
	mul	r3, r2, r3
	mov	r2, r3
	ldr	r3, [fp, #-92]
	add	r3, r2, r3
	add	r0, r1, r3
	ldr	r1, [fp, #-272]
	ldr	r2, [fp, #-88]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #17920
	add	r3, r3, #192
	ldr	r3, [r3]
	sub	r2, fp, #264
	mov	r1, r3
	blx	r4
	ldr	r3, [fp, #-36]
	add	r3, r3, #1
	str	r3, [fp, #-36]
.L481:
	ldr	r1, [fp, #-272]
	ldr	r2, [fp, #-88]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #17920
	add	r3, r3, #160
	ldr	r3, [r3]
	ldr	r2, [fp, #-36]
	cmp	r2, r3
	blt	.L484
	ldr	r3, [fp, #-40]
	add	r3, r3, #1
	str	r3, [fp, #-40]
.L480:
	ldr	r1, [fp, #-272]
	ldr	r2, [fp, #-88]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #17920
	add	r3, r3, #164
	ldr	r3, [r3]
	ldr	r2, [fp, #-40]
	cmp	r2, r3
	blt	.L485
	ldr	r3, [fp, #-32]
	add	r3, r3, #1
	str	r3, [fp, #-32]
.L479:
	ldr	r3, [fp, #-272]
	add	r3, r3, #16384
	ldr	r3, [r3, #2032]
	ldr	r2, [fp, #-32]
	cmp	r2, r3
	blt	.L486
	ldr	r3, [fp, #-272]
	add	r3, r3, #16384
	ldr	r3, [r3, #2056]
	sub	r3, r3, #1
	ldr	r2, [fp, #-272]
	add	r2, r2, #16384
	str	r3, [r2, #2056]
	ldr	r3, [fp, #-272]
	add	r3, r3, #16384
	ldr	r3, [r3, #2056]
	cmp	r3, #0
	bgt	.L487
	ldr	r3, [fp, #-272]
	add	r3, r3, #16384
	ldr	r3, [r3, #1984]
	cmp	r3, #23
	bgt	.L488
	ldr	r0, [fp, #-272]
	bl	stbi__grow_buffer_unsafe
.L488:
	ldr	r3, [fp, #-272]
	add	r3, r3, #16384
	ldrb	r3, [r3, #1988]	@ zero_extendqisi2
	cmp	r3, #207
	bls	.L489
	ldr	r3, [fp, #-272]
	add	r3, r3, #16384
	ldrb	r3, [r3, #1988]	@ zero_extendqisi2
	cmp	r3, #215
	bls	.L490
.L489:
	mov	r3, #1
	b	.L476
.L490:
	ldr	r0, [fp, #-272]
	bl	stbi__jpeg_reset
.L487:
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
.L478:
	ldr	r3, [fp, #-272]
	add	r3, r3, #16384
	ldr	r3, [r3, #1676]
	ldr	r2, [fp, #-24]
	cmp	r2, r3
	blt	.L491
	ldr	r3, [fp, #-28]
	add	r3, r3, #1
	str	r3, [fp, #-28]
.L477:
	ldr	r3, [fp, #-272]
	add	r3, r3, #16384
	ldr	r3, [r3, #1680]
	ldr	r2, [fp, #-28]
	cmp	r2, r3
	blt	.L492
	mov	r3, #1
	b	.L476
.L464:
	ldr	r3, [fp, #-272]
	add	r3, r3, #16384
	ldr	r3, [r3, #2032]
	cmp	r3, #1
	bne	.L493
	ldr	r3, [fp, #-272]
	add	r3, r3, #16384
	ldr	r3, [r3, #2036]
	str	r3, [fp, #-104]
	ldr	r1, [fp, #-272]
	ldr	r2, [fp, #-104]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #17920
	add	r3, r3, #184
	ldr	r3, [r3]
	add	r3, r3, #7
	asr	r3, r3, #3
	str	r3, [fp, #-108]
	ldr	r1, [fp, #-272]
	ldr	r2, [fp, #-104]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #17920
	add	r3, r3, #188
	ldr	r3, [r3]
	add	r3, r3, #7
	asr	r3, r3, #3
	str	r3, [fp, #-112]
	mov	r3, #0
	str	r3, [fp, #-48]
	b	.L494
.L503:
	mov	r3, #0
	str	r3, [fp, #-44]
	b	.L495
.L502:
	ldr	r1, [fp, #-272]
	ldr	r2, [fp, #-104]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #17920
	add	r3, r3, #216
	ldr	r1, [r3]
	ldr	r0, [fp, #-272]
	ldr	r2, [fp, #-104]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r0, r3
	add	r3, r3, #17920
	add	r3, r3, #220
	ldr	r3, [r3]
	ldr	r2, [fp, #-48]
	mul	r2, r2, r3
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	lsl	r3, r3, #7
	add	r3, r1, r3
	str	r3, [fp, #-116]
	ldr	r3, [fp, #-272]
	add	r3, r3, #16384
	ldr	r3, [r3, #2000]
	cmp	r3, #0
	bne	.L496
	ldr	r1, [fp, #-272]
	ldr	r2, [fp, #-104]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #17920
	add	r3, r3, #172
	ldr	r2, [r3]
	mov	r3, r2
	lsl	r3, r3, #3
	sub	r3, r3, r2
	lsl	r2, r3, #4
	sub	r2, r2, r3
	lsl	r3, r2, #4
	mov	r2, r3
	ldr	r3, [fp, #-272]
	add	r3, r3, r2
	add	r2, r3, #4
	ldr	r3, [fp, #-104]
	ldr	r1, [fp, #-116]
	ldr	r0, [fp, #-272]
	bl	stbi__jpeg_decode_block_prog_dc
	mov	r3, r0
	cmp	r3, #0
	bne	.L497
	mov	r3, #0
	b	.L476
.L496:
	ldr	r1, [fp, #-272]
	ldr	r2, [fp, #-104]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #17920
	add	r3, r3, #176
	ldr	r3, [r3]
	str	r3, [fp, #-120]
	ldr	r2, [fp, #-120]
	mov	r3, r2
	lsl	r3, r3, #3
	sub	r3, r3, r2
	lsl	r2, r3, #4
	sub	r2, r2, r3
	lsl	r3, r2, #4
	mov	r2, r3
	add	r3, r2, #6720
	ldr	r2, [fp, #-272]
	add	r3, r2, r3
	add	r1, r3, #4
	ldr	r3, [fp, #-120]
	lsl	r3, r3, #10
	add	r3, r3, #13952
	ldr	r2, [fp, #-272]
	add	r3, r2, r3
	add	r3, r3, #4
	mov	r2, r1
	ldr	r1, [fp, #-116]
	ldr	r0, [fp, #-272]
	bl	stbi__jpeg_decode_block_prog_ac
	mov	r3, r0
	cmp	r3, #0
	bne	.L497
	mov	r3, #0
	b	.L476
.L497:
	ldr	r3, [fp, #-272]
	add	r3, r3, #16384
	ldr	r3, [r3, #2056]
	sub	r3, r3, #1
	ldr	r2, [fp, #-272]
	add	r2, r2, #16384
	str	r3, [r2, #2056]
	ldr	r3, [fp, #-272]
	add	r3, r3, #16384
	ldr	r3, [r3, #2056]
	cmp	r3, #0
	bgt	.L498
	ldr	r3, [fp, #-272]
	add	r3, r3, #16384
	ldr	r3, [r3, #1984]
	cmp	r3, #23
	bgt	.L499
	ldr	r0, [fp, #-272]
	bl	stbi__grow_buffer_unsafe
.L499:
	ldr	r3, [fp, #-272]
	add	r3, r3, #16384
	ldrb	r3, [r3, #1988]	@ zero_extendqisi2
	cmp	r3, #207
	bls	.L500
	ldr	r3, [fp, #-272]
	add	r3, r3, #16384
	ldrb	r3, [r3, #1988]	@ zero_extendqisi2
	cmp	r3, #215
	bls	.L501
.L500:
	mov	r3, #1
	b	.L476
.L501:
	ldr	r0, [fp, #-272]
	bl	stbi__jpeg_reset
.L498:
	ldr	r3, [fp, #-44]
	add	r3, r3, #1
	str	r3, [fp, #-44]
.L495:
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-108]
	cmp	r2, r3
	blt	.L502
	ldr	r3, [fp, #-48]
	add	r3, r3, #1
	str	r3, [fp, #-48]
.L494:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-112]
	cmp	r2, r3
	blt	.L503
	mov	r3, #1
	b	.L476
.L493:
	mov	r3, #0
	str	r3, [fp, #-56]
	b	.L504
.L518:
	mov	r3, #0
	str	r3, [fp, #-52]
	b	.L505
.L517:
	mov	r3, #0
	str	r3, [fp, #-60]
	b	.L506
.L512:
	ldr	r2, [fp, #-272]
	ldr	r3, [fp, #-60]
	add	r3, r3, #4544
	add	r3, r3, #60
	lsl	r3, r3, #2
	add	r3, r2, r3
	ldr	r3, [r3, #4]
	str	r3, [fp, #-124]
	mov	r3, #0
	str	r3, [fp, #-68]
	b	.L507
.L511:
	mov	r3, #0
	str	r3, [fp, #-64]
	b	.L508
.L510:
	ldr	r1, [fp, #-272]
	ldr	r2, [fp, #-124]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #17920
	add	r3, r3, #160
	ldr	r3, [r3]
	ldr	r2, [fp, #-52]
	mul	r3, r2, r3
	ldr	r2, [fp, #-64]
	add	r3, r2, r3
	str	r3, [fp, #-128]
	ldr	r1, [fp, #-272]
	ldr	r2, [fp, #-124]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #17920
	add	r3, r3, #164
	ldr	r3, [r3]
	ldr	r2, [fp, #-56]
	mul	r3, r2, r3
	ldr	r2, [fp, #-68]
	add	r3, r2, r3
	str	r3, [fp, #-132]
	ldr	r1, [fp, #-272]
	ldr	r2, [fp, #-124]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #17920
	add	r3, r3, #216
	ldr	r1, [r3]
	ldr	r0, [fp, #-272]
	ldr	r2, [fp, #-124]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r0, r3
	add	r3, r3, #17920
	add	r3, r3, #220
	ldr	r3, [r3]
	ldr	r2, [fp, #-132]
	mul	r2, r2, r3
	ldr	r3, [fp, #-128]
	add	r3, r2, r3
	lsl	r3, r3, #7
	add	r3, r1, r3
	str	r3, [fp, #-136]
	ldr	r1, [fp, #-272]
	ldr	r2, [fp, #-124]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #17920
	add	r3, r3, #172
	ldr	r2, [r3]
	mov	r3, r2
	lsl	r3, r3, #3
	sub	r3, r3, r2
	lsl	r2, r3, #4
	sub	r2, r2, r3
	lsl	r3, r2, #4
	mov	r2, r3
	ldr	r3, [fp, #-272]
	add	r3, r3, r2
	add	r2, r3, #4
	ldr	r3, [fp, #-124]
	ldr	r1, [fp, #-136]
	ldr	r0, [fp, #-272]
	bl	stbi__jpeg_decode_block_prog_dc
	mov	r3, r0
	cmp	r3, #0
	bne	.L509
	mov	r3, #0
	b	.L476
.L509:
	ldr	r3, [fp, #-64]
	add	r3, r3, #1
	str	r3, [fp, #-64]
.L508:
	ldr	r1, [fp, #-272]
	ldr	r2, [fp, #-124]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #17920
	add	r3, r3, #160
	ldr	r3, [r3]
	ldr	r2, [fp, #-64]
	cmp	r2, r3
	blt	.L510
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
.L507:
	ldr	r1, [fp, #-272]
	ldr	r2, [fp, #-124]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #17920
	add	r3, r3, #164
	ldr	r3, [r3]
	ldr	r2, [fp, #-68]
	cmp	r2, r3
	blt	.L511
	ldr	r3, [fp, #-60]
	add	r3, r3, #1
	str	r3, [fp, #-60]
.L506:
	ldr	r3, [fp, #-272]
	add	r3, r3, #16384
	ldr	r3, [r3, #2032]
	ldr	r2, [fp, #-60]
	cmp	r2, r3
	blt	.L512
	ldr	r3, [fp, #-272]
	add	r3, r3, #16384
	ldr	r3, [r3, #2056]
	sub	r3, r3, #1
	ldr	r2, [fp, #-272]
	add	r2, r2, #16384
	str	r3, [r2, #2056]
	ldr	r3, [fp, #-272]
	add	r3, r3, #16384
	ldr	r3, [r3, #2056]
	cmp	r3, #0
	bgt	.L513
	ldr	r3, [fp, #-272]
	add	r3, r3, #16384
	ldr	r3, [r3, #1984]
	cmp	r3, #23
	bgt	.L514
	ldr	r0, [fp, #-272]
	bl	stbi__grow_buffer_unsafe
.L514:
	ldr	r3, [fp, #-272]
	add	r3, r3, #16384
	ldrb	r3, [r3, #1988]	@ zero_extendqisi2
	cmp	r3, #207
	bls	.L515
	ldr	r3, [fp, #-272]
	add	r3, r3, #16384
	ldrb	r3, [r3, #1988]	@ zero_extendqisi2
	cmp	r3, #215
	bls	.L516
.L515:
	mov	r3, #1
	b	.L476
.L516:
	ldr	r0, [fp, #-272]
	bl	stbi__jpeg_reset
.L513:
	ldr	r3, [fp, #-52]
	add	r3, r3, #1
	str	r3, [fp, #-52]
.L505:
	ldr	r3, [fp, #-272]
	add	r3, r3, #16384
	ldr	r3, [r3, #1676]
	ldr	r2, [fp, #-52]
	cmp	r2, r3
	blt	.L517
	ldr	r3, [fp, #-56]
	add	r3, r3, #1
	str	r3, [fp, #-56]
.L504:
	ldr	r3, [fp, #-272]
	add	r3, r3, #16384
	ldr	r3, [r3, #1680]
	ldr	r2, [fp, #-56]
	cmp	r2, r3
	blt	.L518
	mov	r3, #1
.L476:
	mov	r0, r3
	sub	sp, fp, #8
	@ sp needed
	pop	{r4, fp, pc}
	.size	stbi__parse_entropy_coded_data, .-stbi__parse_entropy_coded_data
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__jpeg_dequantize, %function
stbi__jpeg_dequantize:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L520
.L521:
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #1
	ldr	r2, [fp, #-16]
	add	r3, r2, r3
	ldrsh	r3, [r3]
	uxth	r2, r3
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #1
	ldr	r1, [fp, #-20]
	add	r3, r1, r3
	ldrh	r3, [r3]
	smulbb	r3, r2, r3
	uxth	r1, r3
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #1
	ldr	r2, [fp, #-16]
	add	r3, r2, r3
	sxth	r2, r1
	strh	r2, [r3]	@ movhi
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L520:
	ldr	r3, [fp, #-8]
	cmp	r3, #63
	ble	.L521
	nop
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	stbi__jpeg_dequantize, .-stbi__jpeg_dequantize
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__jpeg_finish, %function
stbi__jpeg_finish:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, fp, lr}
	add	fp, sp, #8
	sub	sp, sp, #36
	str	r0, [fp, #-40]
	ldr	r3, [fp, #-40]
	add	r3, r3, #16384
	ldr	r3, [r3, #1996]
	cmp	r3, #0
	beq	.L530
	mov	r3, #0
	str	r3, [fp, #-24]
	b	.L524
.L529:
	ldr	r1, [fp, #-40]
	ldr	r2, [fp, #-24]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #17920
	add	r3, r3, #184
	ldr	r3, [r3]
	add	r3, r3, #7
	asr	r3, r3, #3
	str	r3, [fp, #-28]
	ldr	r1, [fp, #-40]
	ldr	r2, [fp, #-24]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #17920
	add	r3, r3, #188
	ldr	r3, [r3]
	add	r3, r3, #7
	asr	r3, r3, #3
	str	r3, [fp, #-32]
	mov	r3, #0
	str	r3, [fp, #-20]
	b	.L525
.L528:
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L526
.L527:
	ldr	r1, [fp, #-40]
	ldr	r2, [fp, #-24]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #17920
	add	r3, r3, #216
	ldr	r1, [r3]
	ldr	r0, [fp, #-40]
	ldr	r2, [fp, #-24]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r0, r3
	add	r3, r3, #17920
	add	r3, r3, #220
	ldr	r3, [r3]
	ldr	r2, [fp, #-20]
	mul	r2, r2, r3
	ldr	r3, [fp, #-16]
	add	r3, r2, r3
	lsl	r3, r3, #7
	add	r3, r1, r3
	str	r3, [fp, #-36]
	ldr	r1, [fp, #-40]
	ldr	r2, [fp, #-24]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #17920
	add	r3, r3, #168
	ldr	r3, [r3]
	add	r3, r3, #105
	lsl	r3, r3, #7
	ldr	r2, [fp, #-40]
	add	r3, r2, r3
	add	r3, r3, #4
	mov	r1, r3
	ldr	r0, [fp, #-36]
	bl	stbi__jpeg_dequantize
	ldr	r3, [fp, #-40]
	add	r3, r3, #16384
	ldr	r4, [r3, #2060]
	ldr	r1, [fp, #-40]
	ldr	r2, [fp, #-24]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #17920
	add	r3, r3, #200
	ldr	r1, [r3]
	ldr	r0, [fp, #-40]
	ldr	r2, [fp, #-24]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r0, r3
	add	r3, r3, #17920
	add	r3, r3, #192
	ldr	r3, [r3]
	ldr	r2, [fp, #-20]
	mul	r3, r2, r3
	lsl	r3, r3, #3
	mov	r2, r3
	ldr	r3, [fp, #-16]
	lsl	r3, r3, #3
	add	r3, r2, r3
	add	r0, r1, r3
	ldr	r1, [fp, #-40]
	ldr	r2, [fp, #-24]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #17920
	add	r3, r3, #192
	ldr	r3, [r3]
	ldr	r2, [fp, #-36]
	mov	r1, r3
	blx	r4
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L526:
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-28]
	cmp	r2, r3
	blt	.L527
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
.L525:
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-32]
	cmp	r2, r3
	blt	.L528
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
.L524:
	ldr	r3, [fp, #-40]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	ldr	r2, [fp, #-24]
	cmp	r2, r3
	blt	.L529
.L530:
	nop
	sub	sp, fp, #8
	@ sp needed
	pop	{r4, fp, pc}
	.size	stbi__jpeg_finish, .-stbi__jpeg_finish
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__process_marker, %function
stbi__process_marker:
	@ args = 0, pretend = 0, frame = 136
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, fp, lr}
	add	fp, sp, #8
	sub	sp, sp, #140
	str	r0, [fp, #-144]
	str	r1, [fp, #-148]
	ldr	r3, [fp, #-148]
	cmp	r3, #219
	beq	.L532
	ldr	r3, [fp, #-148]
	cmp	r3, #219
	bgt	.L533
	ldr	r3, [fp, #-148]
	cmp	r3, #196
	beq	.L534
	b	.L535
.L533:
	ldr	r3, [fp, #-148]
	cmp	r3, #221
	beq	.L536
	ldr	r3, [fp, #-148]
	cmp	r3, #255
	bne	.L535
	mov	r3, #0
	b	.L537
.L536:
	ldr	r3, [fp, #-144]
	ldr	r3, [r3]
	mov	r0, r3
	bl	stbi__get16be
	mov	r3, r0
	cmp	r3, #4
	beq	.L538
	mov	r3, #0
	b	.L537
.L538:
	ldr	r3, [fp, #-144]
	ldr	r3, [r3]
	mov	r0, r3
	bl	stbi__get16be
	mov	r2, r0
	ldr	r3, [fp, #-144]
	add	r3, r3, #16384
	str	r2, [r3, #2052]
	mov	r3, #1
	b	.L537
.L532:
	ldr	r3, [fp, #-144]
	ldr	r3, [r3]
	mov	r0, r3
	bl	stbi__get16be
	mov	r3, r0
	sub	r3, r3, #2
	str	r3, [fp, #-16]
	b	.L539
.L548:
	ldr	r3, [fp, #-144]
	ldr	r3, [r3]
	mov	r0, r3
	bl	stbi__get8
	mov	r3, r0
	str	r3, [fp, #-52]
	ldr	r3, [fp, #-52]
	asr	r3, r3, #4
	str	r3, [fp, #-56]
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	str	r3, [fp, #-60]
	ldr	r3, [fp, #-52]
	and	r3, r3, #15
	str	r3, [fp, #-64]
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	beq	.L540
	ldr	r3, [fp, #-56]
	cmp	r3, #1
	beq	.L540
	mov	r3, #0
	b	.L537
.L540:
	ldr	r3, [fp, #-64]
	cmp	r3, #3
	ble	.L541
	mov	r3, #0
	b	.L537
.L541:
	mov	r3, #0
	str	r3, [fp, #-20]
	b	.L542
.L545:
	ldr	r3, [fp, #-60]
	cmp	r3, #0
	beq	.L543
	ldr	r3, [fp, #-144]
	ldr	r3, [r3]
	mov	r0, r3
	bl	stbi__get16be
	mov	r3, r0
	uxth	r2, r3
	b	.L544
.L543:
	ldr	r3, [fp, #-144]
	ldr	r3, [r3]
	mov	r0, r3
	bl	stbi__get8
	mov	r3, r0
	uxth	r2, r3
.L544:
	movw	r3, #:lower16:stbi__jpeg_dezigzag
	movt	r3, #:upper16:stbi__jpeg_dezigzag
	ldr	r1, [fp, #-20]
	add	r3, r3, r1
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	ldr	r1, [fp, #-144]
	ldr	r3, [fp, #-64]
	lsl	r3, r3, #6
	add	r3, r3, r0
	add	r3, r3, #6720
	lsl	r3, r3, #1
	add	r3, r1, r3
	add	r3, r3, #4
	strh	r2, [r3]	@ movhi
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
.L542:
	ldr	r3, [fp, #-20]
	cmp	r3, #63
	ble	.L545
	ldr	r3, [fp, #-60]
	cmp	r3, #0
	beq	.L546
	mov	r3, #129
	b	.L547
.L546:
	mov	r3, #65
.L547:
	ldr	r2, [fp, #-16]
	sub	r3, r2, r3
	str	r3, [fp, #-16]
.L539:
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	bgt	.L548
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	b	.L537
.L534:
	ldr	r3, [fp, #-144]
	ldr	r3, [r3]
	mov	r0, r3
	bl	stbi__get16be
	mov	r3, r0
	sub	r3, r3, #2
	str	r3, [fp, #-16]
	b	.L549
.L562:
	mov	r3, #0
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-144]
	ldr	r3, [r3]
	mov	r0, r3
	bl	stbi__get8
	mov	r3, r0
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-68]
	asr	r3, r3, #4
	str	r3, [fp, #-72]
	ldr	r3, [fp, #-68]
	and	r3, r3, #15
	str	r3, [fp, #-76]
	ldr	r3, [fp, #-72]
	cmp	r3, #1
	bgt	.L550
	ldr	r3, [fp, #-76]
	cmp	r3, #3
	ble	.L551
.L550:
	mov	r3, #0
	b	.L537
.L551:
	mov	r3, #0
	str	r3, [fp, #-28]
	b	.L553
.L554:
	ldr	r3, [fp, #-144]
	ldr	r3, [r3]
	mov	r0, r3
	bl	stbi__get8
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [fp, #-28]
	lsl	r3, r3, #2
	sub	r1, fp, #12
	add	r3, r1, r3
	str	r2, [r3, #-128]
	ldr	r3, [fp, #-28]
	lsl	r3, r3, #2
	sub	r2, fp, #12
	add	r3, r2, r3
	ldr	r3, [r3, #-128]
	ldr	r2, [fp, #-32]
	add	r3, r2, r3
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-28]
	add	r3, r3, #1
	str	r3, [fp, #-28]
.L553:
	ldr	r3, [fp, #-28]
	cmp	r3, #15
	ble	.L554
	ldr	r3, [fp, #-16]
	sub	r3, r3, #17
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	bne	.L555
	ldr	r3, [fp, #-144]
	add	r1, r3, #4
	ldr	r2, [fp, #-76]
	mov	r3, r2
	lsl	r3, r3, #3
	sub	r3, r3, r2
	lsl	r2, r3, #4
	sub	r2, r2, r3
	lsl	r3, r2, #4
	mov	r2, r3
	mov	r3, r2
	add	r3, r1, r3
	sub	r2, fp, #140
	mov	r1, r2
	mov	r0, r3
	bl	stbi__build_huffman
	mov	r3, r0
	cmp	r3, #0
	bne	.L556
	mov	r3, #0
	b	.L537
.L556:
	ldr	r2, [fp, #-76]
	mov	r3, r2
	lsl	r3, r3, #3
	sub	r3, r3, r2
	lsl	r2, r3, #4
	sub	r2, r2, r3
	lsl	r3, r2, #4
	mov	r2, r3
	add	r3, r2, #1024
	ldr	r2, [fp, #-144]
	add	r3, r2, r3
	add	r3, r3, #4
	str	r3, [fp, #-24]
	b	.L557
.L555:
	ldr	r3, [fp, #-144]
	add	r1, r3, #6720
	add	r1, r1, #4
	ldr	r2, [fp, #-76]
	mov	r3, r2
	lsl	r3, r3, #3
	sub	r3, r3, r2
	lsl	r2, r3, #4
	sub	r2, r2, r3
	lsl	r3, r2, #4
	mov	r2, r3
	mov	r3, r2
	add	r3, r1, r3
	sub	r2, fp, #140
	mov	r1, r2
	mov	r0, r3
	bl	stbi__build_huffman
	mov	r3, r0
	cmp	r3, #0
	bne	.L558
	mov	r3, #0
	b	.L537
.L558:
	ldr	r2, [fp, #-76]
	mov	r3, r2
	lsl	r3, r3, #3
	sub	r3, r3, r2
	lsl	r2, r3, #4
	sub	r2, r2, r3
	lsl	r3, r2, #4
	mov	r2, r3
	add	r3, r2, #7744
	ldr	r2, [fp, #-144]
	add	r3, r2, r3
	add	r3, r3, #4
	str	r3, [fp, #-24]
.L557:
	mov	r3, #0
	str	r3, [fp, #-28]
	b	.L559
.L560:
	ldr	r3, [fp, #-144]
	ldr	r1, [r3]
	ldr	r3, [fp, #-28]
	ldr	r2, [fp, #-24]
	add	r4, r2, r3
	mov	r0, r1
	bl	stbi__get8
	mov	r3, r0
	strb	r3, [r4]
	ldr	r3, [fp, #-28]
	add	r3, r3, #1
	str	r3, [fp, #-28]
.L559:
	ldr	r2, [fp, #-28]
	ldr	r3, [fp, #-32]
	cmp	r2, r3
	blt	.L560
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L561
	ldr	r3, [fp, #-76]
	lsl	r3, r3, #10
	add	r3, r3, #13952
	ldr	r2, [fp, #-144]
	add	r3, r2, r3
	add	r0, r3, #4
	ldr	r3, [fp, #-144]
	add	r1, r3, #6720
	add	r1, r1, #4
	ldr	r2, [fp, #-76]
	mov	r3, r2
	lsl	r3, r3, #3
	sub	r3, r3, r2
	lsl	r2, r3, #4
	sub	r2, r2, r3
	lsl	r3, r2, #4
	mov	r2, r3
	mov	r3, r2
	add	r3, r1, r3
	mov	r1, r3
	bl	stbi__build_fast_ac
.L561:
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-32]
	sub	r3, r2, r3
	str	r3, [fp, #-16]
.L549:
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	bgt	.L562
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	b	.L537
.L535:
	ldr	r3, [fp, #-148]
	cmp	r3, #223
	ble	.L563
	ldr	r3, [fp, #-148]
	cmp	r3, #239
	ble	.L564
.L563:
	ldr	r3, [fp, #-148]
	cmp	r3, #254
	bne	.L565
.L564:
	ldr	r3, [fp, #-144]
	ldr	r3, [r3]
	mov	r0, r3
	bl	stbi__get16be
	str	r0, [fp, #-16]
	ldr	r3, [fp, #-16]
	cmp	r3, #1
	bgt	.L566
	ldr	r3, [fp, #-148]
	cmp	r3, #254
	bne	.L567
	mov	r3, #0
	b	.L537
.L567:
	mov	r3, #0
	b	.L537
.L566:
	ldr	r3, [fp, #-16]
	sub	r3, r3, #2
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-148]
	cmp	r3, #224
	bne	.L568
	ldr	r3, [fp, #-16]
	cmp	r3, #4
	ble	.L568
	mov	r3, #1
	str	r3, [fp, #-36]
	mov	r3, #0
	str	r3, [fp, #-40]
	b	.L569
.L571:
	ldr	r3, [fp, #-144]
	ldr	r3, [r3]
	mov	r0, r3
	bl	stbi__get8
	mov	r3, r0
	mov	r1, r3
	movw	r3, #:lower16:tag.9071
	movt	r3, #:upper16:tag.9071
	ldr	r2, [fp, #-40]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r1, r3
	beq	.L570
	mov	r3, #0
	str	r3, [fp, #-36]
.L570:
	ldr	r3, [fp, #-40]
	add	r3, r3, #1
	str	r3, [fp, #-40]
.L569:
	ldr	r3, [fp, #-40]
	cmp	r3, #4
	ble	.L571
	ldr	r3, [fp, #-16]
	sub	r3, r3, #5
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-36]
	cmp	r3, #0
	beq	.L577
	ldr	r3, [fp, #-144]
	add	r3, r3, #16384
	mov	r2, r3
	mov	r3, #1
	str	r3, [r2, #2020]
	b	.L577
.L568:
	ldr	r3, [fp, #-148]
	cmp	r3, #238
	bne	.L573
	ldr	r3, [fp, #-16]
	cmp	r3, #11
	ble	.L573
	mov	r3, #1
	str	r3, [fp, #-44]
	mov	r3, #0
	str	r3, [fp, #-48]
	b	.L574
.L576:
	ldr	r3, [fp, #-144]
	ldr	r3, [r3]
	mov	r0, r3
	bl	stbi__get8
	mov	r3, r0
	mov	r1, r3
	movw	r3, #:lower16:tag.9077
	movt	r3, #:upper16:tag.9077
	ldr	r2, [fp, #-48]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r1, r3
	beq	.L575
	mov	r3, #0
	str	r3, [fp, #-44]
.L575:
	ldr	r3, [fp, #-48]
	add	r3, r3, #1
	str	r3, [fp, #-48]
.L574:
	ldr	r3, [fp, #-48]
	cmp	r3, #5
	ble	.L576
	ldr	r3, [fp, #-16]
	sub	r3, r3, #6
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-44]
	cmp	r3, #0
	beq	.L573
	ldr	r3, [fp, #-144]
	ldr	r3, [r3]
	mov	r0, r3
	bl	stbi__get8
	ldr	r3, [fp, #-144]
	ldr	r3, [r3]
	mov	r0, r3
	bl	stbi__get16be
	ldr	r3, [fp, #-144]
	ldr	r3, [r3]
	mov	r0, r3
	bl	stbi__get16be
	ldr	r3, [fp, #-144]
	ldr	r3, [r3]
	mov	r0, r3
	bl	stbi__get8
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [fp, #-144]
	add	r3, r3, #16384
	str	r2, [r3, #2024]
	ldr	r3, [fp, #-16]
	sub	r3, r3, #6
	str	r3, [fp, #-16]
	b	.L573
.L577:
	nop
.L573:
	ldr	r3, [fp, #-144]
	ldr	r3, [r3]
	ldr	r1, [fp, #-16]
	mov	r0, r3
	bl	stbi__skip
	mov	r3, #1
	b	.L537
.L565:
	mov	r3, #0
.L537:
	mov	r0, r3
	sub	sp, fp, #8
	@ sp needed
	pop	{r4, fp, pc}
	.size	stbi__process_marker, .-stbi__process_marker
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__process_scan_header, %function
stbi__process_scan_header:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #32
	str	r0, [fp, #-32]
	ldr	r3, [fp, #-32]
	ldr	r3, [r3]
	mov	r0, r3
	bl	stbi__get16be
	str	r0, [fp, #-16]
	ldr	r3, [fp, #-32]
	ldr	r3, [r3]
	mov	r0, r3
	bl	stbi__get8
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [fp, #-32]
	add	r3, r3, #16384
	str	r2, [r3, #2032]
	ldr	r3, [fp, #-32]
	add	r3, r3, #16384
	ldr	r3, [r3, #2032]
	cmp	r3, #0
	ble	.L579
	ldr	r3, [fp, #-32]
	add	r3, r3, #16384
	ldr	r3, [r3, #2032]
	cmp	r3, #4
	bgt	.L579
	ldr	r3, [fp, #-32]
	add	r3, r3, #16384
	ldr	r2, [r3, #2032]
	ldr	r3, [fp, #-32]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	cmp	r2, r3
	ble	.L580
.L579:
	mov	r3, #0
	b	.L581
.L580:
	ldr	r3, [fp, #-32]
	add	r3, r3, #16384
	ldr	r3, [r3, #2032]
	add	r3, r3, #3
	lsl	r3, r3, #1
	ldr	r2, [fp, #-16]
	cmp	r2, r3
	beq	.L582
	mov	r3, #0
	b	.L581
.L582:
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L583
.L591:
	ldr	r3, [fp, #-32]
	ldr	r3, [r3]
	mov	r0, r3
	bl	stbi__get8
	mov	r3, r0
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-32]
	ldr	r3, [r3]
	mov	r0, r3
	bl	stbi__get8
	mov	r3, r0
	str	r3, [fp, #-24]
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L584
.L587:
	ldr	r1, [fp, #-32]
	ldr	r2, [fp, #-12]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #17920
	add	r3, r3, #156
	ldr	r3, [r3]
	ldr	r2, [fp, #-20]
	cmp	r2, r3
	beq	.L598
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L584:
	ldr	r3, [fp, #-32]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	ldr	r2, [fp, #-12]
	cmp	r2, r3
	blt	.L587
	b	.L586
.L598:
	nop
.L586:
	ldr	r3, [fp, #-32]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	ldr	r2, [fp, #-12]
	cmp	r2, r3
	bne	.L588
	mov	r3, #0
	b	.L581
.L588:
	ldr	r3, [fp, #-24]
	asr	r1, r3, #4
	ldr	r0, [fp, #-32]
	ldr	r2, [fp, #-12]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r0, r3
	add	r3, r3, #17920
	add	r3, r3, #172
	str	r1, [r3]
	ldr	r1, [fp, #-32]
	ldr	r2, [fp, #-12]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #17920
	add	r3, r3, #172
	ldr	r3, [r3]
	cmp	r3, #3
	ble	.L589
	mov	r3, #0
	b	.L581
.L589:
	ldr	r3, [fp, #-24]
	and	r1, r3, #15
	ldr	r0, [fp, #-32]
	ldr	r2, [fp, #-12]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r0, r3
	add	r3, r3, #17920
	add	r3, r3, #176
	str	r1, [r3]
	ldr	r1, [fp, #-32]
	ldr	r2, [fp, #-12]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #17920
	add	r3, r3, #176
	ldr	r3, [r3]
	cmp	r3, #3
	ble	.L590
	mov	r3, #0
	b	.L581
.L590:
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-8]
	add	r3, r3, #4544
	add	r3, r3, #60
	lsl	r3, r3, #2
	add	r3, r2, r3
	ldr	r2, [fp, #-12]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L583:
	ldr	r3, [fp, #-32]
	add	r3, r3, #16384
	ldr	r3, [r3, #2032]
	ldr	r2, [fp, #-8]
	cmp	r2, r3
	blt	.L591
	ldr	r3, [fp, #-32]
	ldr	r3, [r3]
	mov	r0, r3
	bl	stbi__get8
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [fp, #-32]
	add	r3, r3, #16384
	str	r2, [r3, #2000]
	ldr	r3, [fp, #-32]
	ldr	r3, [r3]
	mov	r0, r3
	bl	stbi__get8
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [fp, #-32]
	add	r3, r3, #16384
	str	r2, [r3, #2004]
	ldr	r3, [fp, #-32]
	ldr	r3, [r3]
	mov	r0, r3
	bl	stbi__get8
	mov	r3, r0
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-28]
	asr	r3, r3, #4
	ldr	r2, [fp, #-32]
	add	r2, r2, #16384
	str	r3, [r2, #2008]
	ldr	r3, [fp, #-28]
	and	r3, r3, #15
	ldr	r2, [fp, #-32]
	add	r2, r2, #16384
	str	r3, [r2, #2012]
	ldr	r3, [fp, #-32]
	add	r3, r3, #16384
	ldr	r3, [r3, #1996]
	cmp	r3, #0
	beq	.L592
	ldr	r3, [fp, #-32]
	add	r3, r3, #16384
	ldr	r3, [r3, #2000]
	cmp	r3, #63
	bgt	.L593
	ldr	r3, [fp, #-32]
	add	r3, r3, #16384
	ldr	r3, [r3, #2004]
	cmp	r3, #63
	bgt	.L593
	ldr	r3, [fp, #-32]
	add	r3, r3, #16384
	ldr	r2, [r3, #2000]
	ldr	r3, [fp, #-32]
	add	r3, r3, #16384
	ldr	r3, [r3, #2004]
	cmp	r2, r3
	bgt	.L593
	ldr	r3, [fp, #-32]
	add	r3, r3, #16384
	ldr	r3, [r3, #2008]
	cmp	r3, #13
	bgt	.L593
	ldr	r3, [fp, #-32]
	add	r3, r3, #16384
	ldr	r3, [r3, #2012]
	cmp	r3, #13
	ble	.L594
.L593:
	mov	r3, #0
	b	.L581
.L592:
	ldr	r3, [fp, #-32]
	add	r3, r3, #16384
	ldr	r3, [r3, #2000]
	cmp	r3, #0
	beq	.L595
	mov	r3, #0
	b	.L581
.L595:
	ldr	r3, [fp, #-32]
	add	r3, r3, #16384
	ldr	r3, [r3, #2008]
	cmp	r3, #0
	bne	.L596
	ldr	r3, [fp, #-32]
	add	r3, r3, #16384
	ldr	r3, [r3, #2012]
	cmp	r3, #0
	beq	.L597
.L596:
	mov	r3, #0
	b	.L581
.L597:
	ldr	r3, [fp, #-32]
	add	r3, r3, #16384
	mov	r2, r3
	mov	r3, #63
	str	r3, [r2, #2004]
.L594:
	mov	r3, #1
.L581:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__process_scan_header, .-stbi__process_scan_header
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__free_jpeg_components, %function
stbi__free_jpeg_components:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #24
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L600
.L604:
	ldr	r1, [fp, #-16]
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #17920
	add	r3, r3, #204
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L601
	ldr	r1, [fp, #-16]
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #17920
	add	r3, r3, #204
	ldr	r3, [r3]
	mov	r0, r3
	bl	free
	ldr	r1, [fp, #-16]
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #17920
	add	r3, r3, #204
	mov	r2, #0
	str	r2, [r3]
	ldr	r1, [fp, #-16]
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #17920
	add	r3, r3, #200
	mov	r2, #0
	str	r2, [r3]
.L601:
	ldr	r1, [fp, #-16]
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #17920
	add	r3, r3, #208
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L602
	ldr	r1, [fp, #-16]
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #17920
	add	r3, r3, #208
	ldr	r3, [r3]
	mov	r0, r3
	bl	free
	ldr	r1, [fp, #-16]
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #17920
	add	r3, r3, #208
	mov	r2, #0
	str	r2, [r3]
	ldr	r1, [fp, #-16]
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #17920
	add	r3, r3, #216
	mov	r2, #0
	str	r2, [r3]
.L602:
	ldr	r1, [fp, #-16]
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #17920
	add	r3, r3, #212
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L603
	ldr	r1, [fp, #-16]
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #17920
	add	r3, r3, #212
	ldr	r3, [r3]
	mov	r0, r3
	bl	free
	ldr	r1, [fp, #-16]
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #17920
	add	r3, r3, #212
	mov	r2, #0
	str	r2, [r3]
.L603:
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L600:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-20]
	cmp	r2, r3
	blt	.L604
	ldr	r3, [fp, #-24]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__free_jpeg_components, .-stbi__free_jpeg_components
	.global	__aeabi_uidiv
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__process_frame_header, %function
stbi__process_frame_header:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #40
	str	r0, [fp, #-40]
	str	r1, [fp, #-44]
	ldr	r3, [fp, #-40]
	ldr	r3, [r3]
	str	r3, [fp, #-20]
	mov	r3, #1
	str	r3, [fp, #-12]
	mov	r3, #1
	str	r3, [fp, #-16]
	ldr	r0, [fp, #-20]
	bl	stbi__get16be
	str	r0, [fp, #-24]
	ldr	r3, [fp, #-24]
	cmp	r3, #10
	bgt	.L607
	mov	r3, #0
	b	.L608
.L607:
	ldr	r0, [fp, #-20]
	bl	stbi__get8
	mov	r3, r0
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-28]
	cmp	r3, #8
	beq	.L609
	mov	r3, #0
	b	.L608
.L609:
	ldr	r0, [fp, #-20]
	bl	stbi__get16be
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [fp, #-20]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L610
	mov	r3, #0
	b	.L608
.L610:
	ldr	r0, [fp, #-20]
	bl	stbi__get16be
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [fp, #-20]
	str	r2, [r3]
	ldr	r3, [fp, #-20]
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L611
	mov	r3, #0
	b	.L608
.L611:
	ldr	r0, [fp, #-20]
	bl	stbi__get8
	mov	r3, r0
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-32]
	cmp	r3, #3
	beq	.L612
	ldr	r3, [fp, #-32]
	cmp	r3, #1
	beq	.L612
	ldr	r3, [fp, #-32]
	cmp	r3, #4
	beq	.L612
	mov	r3, #0
	b	.L608
.L612:
	ldr	r3, [fp, #-20]
	ldr	r2, [fp, #-32]
	str	r2, [r3, #8]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L613
.L614:
	ldr	r1, [fp, #-40]
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #17920
	add	r3, r3, #200
	mov	r2, #0
	str	r2, [r3]
	ldr	r1, [fp, #-40]
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #17920
	add	r3, r3, #212
	mov	r2, #0
	str	r2, [r3]
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L613:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-32]
	cmp	r2, r3
	blt	.L614
	ldr	r3, [fp, #-20]
	ldr	r2, [r3, #8]
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	add	r3, r3, #8
	ldr	r2, [fp, #-24]
	cmp	r2, r3
	beq	.L615
	mov	r3, #0
	b	.L608
.L615:
	ldr	r3, [fp, #-40]
	add	r3, r3, #16384
	mov	r2, r3
	mov	r3, #0
	str	r3, [r2, #2028]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L616
.L623:
	ldr	r0, [fp, #-20]
	bl	stbi__get8
	mov	r3, r0
	mov	r0, r3
	ldr	r1, [fp, #-40]
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #17920
	add	r3, r3, #156
	str	r0, [r3]
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #8]
	cmp	r3, #3
	bne	.L617
	ldr	r1, [fp, #-40]
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #17920
	add	r3, r3, #156
	ldr	r2, [r3]
	movw	r3, #:lower16:rgb.9122
	movt	r3, #:upper16:rgb.9122
	ldr	r1, [fp, #-8]
	add	r3, r3, r1
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L617
	ldr	r3, [fp, #-40]
	add	r3, r3, #16384
	ldr	r3, [r3, #2028]
	add	r3, r3, #1
	ldr	r2, [fp, #-40]
	add	r2, r2, #16384
	str	r3, [r2, #2028]
.L617:
	ldr	r0, [fp, #-20]
	bl	stbi__get8
	mov	r3, r0
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-36]
	asr	r1, r3, #4
	ldr	r0, [fp, #-40]
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r0, r3
	add	r3, r3, #17920
	add	r3, r3, #160
	str	r1, [r3]
	ldr	r1, [fp, #-40]
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #17920
	add	r3, r3, #160
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L618
	ldr	r1, [fp, #-40]
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #17920
	add	r3, r3, #160
	ldr	r3, [r3]
	cmp	r3, #4
	ble	.L619
.L618:
	mov	r3, #0
	b	.L608
.L619:
	ldr	r3, [fp, #-36]
	and	r1, r3, #15
	ldr	r0, [fp, #-40]
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r0, r3
	add	r3, r3, #17920
	add	r3, r3, #164
	str	r1, [r3]
	ldr	r1, [fp, #-40]
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #17920
	add	r3, r3, #164
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L620
	ldr	r1, [fp, #-40]
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #17920
	add	r3, r3, #164
	ldr	r3, [r3]
	cmp	r3, #4
	ble	.L621
.L620:
	mov	r3, #0
	b	.L608
.L621:
	ldr	r0, [fp, #-20]
	bl	stbi__get8
	mov	r3, r0
	mov	r0, r3
	ldr	r1, [fp, #-40]
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #17920
	add	r3, r3, #168
	str	r0, [r3]
	ldr	r1, [fp, #-40]
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #17920
	add	r3, r3, #168
	ldr	r3, [r3]
	cmp	r3, #3
	ble	.L622
	mov	r3, #0
	b	.L608
.L622:
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L616:
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #8]
	ldr	r2, [fp, #-8]
	cmp	r2, r3
	blt	.L623
	ldr	r3, [fp, #-44]
	cmp	r3, #0
	beq	.L624
	mov	r3, #1
	b	.L608
.L624:
	ldr	r3, [fp, #-20]
	ldr	r3, [r3]
	mov	r0, r3
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #4]
	mov	r1, r3
	ldr	r3, [fp, #-20]
	ldr	r2, [r3, #8]
	mov	r3, #0
	bl	stbi__mad3sizes_valid
	mov	r3, r0
	cmp	r3, #0
	bne	.L625
	mov	r3, #0
	b	.L608
.L625:
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L626
.L629:
	ldr	r1, [fp, #-40]
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #17920
	add	r3, r3, #160
	ldr	r3, [r3]
	ldr	r2, [fp, #-12]
	cmp	r2, r3
	bge	.L627
	ldr	r1, [fp, #-40]
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #17920
	add	r3, r3, #160
	ldr	r3, [r3]
	str	r3, [fp, #-12]
.L627:
	ldr	r1, [fp, #-40]
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #17920
	add	r3, r3, #164
	ldr	r3, [r3]
	ldr	r2, [fp, #-16]
	cmp	r2, r3
	bge	.L628
	ldr	r1, [fp, #-40]
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #17920
	add	r3, r3, #164
	ldr	r3, [r3]
	str	r3, [fp, #-16]
.L628:
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L626:
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #8]
	ldr	r2, [fp, #-8]
	cmp	r2, r3
	blt	.L629
	ldr	r3, [fp, #-40]
	add	r3, r3, #16384
	mov	r2, r3
	ldr	r3, [fp, #-12]
	str	r3, [r2, #1668]
	ldr	r3, [fp, #-40]
	add	r3, r3, #16384
	mov	r2, r3
	ldr	r3, [fp, #-16]
	str	r3, [r2, #1672]
	ldr	r3, [fp, #-12]
	lsl	r3, r3, #3
	ldr	r2, [fp, #-40]
	add	r2, r2, #16384
	str	r3, [r2, #1684]
	ldr	r3, [fp, #-16]
	lsl	r3, r3, #3
	ldr	r2, [fp, #-40]
	add	r2, r2, #16384
	str	r3, [r2, #1688]
	ldr	r3, [fp, #-20]
	ldr	r3, [r3]
	ldr	r2, [fp, #-40]
	add	r2, r2, #16384
	ldr	r2, [r2, #1684]
	add	r3, r3, r2
	sub	r2, r3, #1
	ldr	r3, [fp, #-40]
	add	r3, r3, #16384
	ldr	r3, [r3, #1684]
	mov	r1, r3
	mov	r0, r2
	bl	__aeabi_uidiv
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [fp, #-40]
	add	r3, r3, #16384
	str	r2, [r3, #1676]
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #4]
	ldr	r2, [fp, #-40]
	add	r2, r2, #16384
	ldr	r2, [r2, #1688]
	add	r3, r3, r2
	sub	r2, r3, #1
	ldr	r3, [fp, #-40]
	add	r3, r3, #16384
	ldr	r3, [r3, #1688]
	mov	r1, r3
	mov	r0, r2
	bl	__aeabi_uidiv
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [fp, #-40]
	add	r3, r3, #16384
	str	r2, [r3, #1680]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L630
.L634:
	ldr	r3, [fp, #-20]
	ldr	r1, [r3]
	ldr	r0, [fp, #-40]
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r0, r3
	add	r3, r3, #17920
	add	r3, r3, #160
	ldr	r3, [r3]
	mul	r2, r3, r1
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	sub	r3, r3, #1
	ldr	r2, [fp, #-12]
	mov	r1, r2
	mov	r0, r3
	bl	__aeabi_uidiv
	mov	r3, r0
	mov	r0, r3
	ldr	r1, [fp, #-40]
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #17920
	add	r3, r3, #184
	str	r0, [r3]
	ldr	r3, [fp, #-20]
	ldr	r1, [r3, #4]
	ldr	r0, [fp, #-40]
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r0, r3
	add	r3, r3, #17920
	add	r3, r3, #164
	ldr	r3, [r3]
	mul	r2, r3, r1
	ldr	r3, [fp, #-16]
	add	r3, r2, r3
	sub	r3, r3, #1
	ldr	r2, [fp, #-16]
	mov	r1, r2
	mov	r0, r3
	bl	__aeabi_uidiv
	mov	r3, r0
	mov	r0, r3
	ldr	r1, [fp, #-40]
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #17920
	add	r3, r3, #188
	str	r0, [r3]
	ldr	r3, [fp, #-40]
	add	r3, r3, #16384
	ldr	r1, [r3, #1676]
	ldr	r0, [fp, #-40]
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r0, r3
	add	r3, r3, #17920
	add	r3, r3, #160
	ldr	r3, [r3]
	mul	r3, r3, r1
	lsl	r1, r3, #3
	ldr	r0, [fp, #-40]
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r0, r3
	add	r3, r3, #17920
	add	r3, r3, #192
	str	r1, [r3]
	ldr	r3, [fp, #-40]
	add	r3, r3, #16384
	ldr	r1, [r3, #1680]
	ldr	r0, [fp, #-40]
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r0, r3
	add	r3, r3, #17920
	add	r3, r3, #164
	ldr	r3, [r3]
	mul	r3, r3, r1
	lsl	r1, r3, #3
	ldr	r0, [fp, #-40]
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r0, r3
	add	r3, r3, #17920
	add	r3, r3, #196
	str	r1, [r3]
	ldr	r1, [fp, #-40]
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #17920
	add	r3, r3, #216
	mov	r2, #0
	str	r2, [r3]
	ldr	r1, [fp, #-40]
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #17920
	add	r3, r3, #208
	mov	r2, #0
	str	r2, [r3]
	ldr	r1, [fp, #-40]
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #17920
	add	r3, r3, #212
	mov	r2, #0
	str	r2, [r3]
	ldr	r1, [fp, #-40]
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #17920
	add	r3, r3, #192
	ldr	r0, [r3]
	ldr	r1, [fp, #-40]
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #17920
	add	r3, r3, #196
	ldr	r3, [r3]
	mov	r2, #15
	mov	r1, r3
	bl	stbi__malloc_mad2
	ldr	r1, [fp, #-40]
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #17920
	add	r3, r3, #204
	str	r0, [r3]
	ldr	r1, [fp, #-40]
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #17920
	add	r3, r3, #204
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L631
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	mov	r2, #0
	mov	r1, r3
	ldr	r0, [fp, #-40]
	bl	stbi__free_jpeg_components
	mov	r3, r0
	b	.L608
.L631:
	ldr	r1, [fp, #-40]
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #17920
	add	r3, r3, #204
	ldr	r3, [r3]
	add	r3, r3, #15
	bic	r3, r3, #15
	mov	r0, r3
	ldr	r1, [fp, #-40]
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #17920
	add	r3, r3, #200
	str	r0, [r3]
	ldr	r3, [fp, #-40]
	add	r3, r3, #16384
	ldr	r3, [r3, #1996]
	cmp	r3, #0
	beq	.L632
	ldr	r1, [fp, #-40]
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #17920
	add	r3, r3, #192
	ldr	r3, [r3]
	add	r2, r3, #7
	cmp	r3, #0
	movlt	r3, r2
	movge	r3, r3
	asr	r3, r3, #3
	mov	r0, r3
	ldr	r1, [fp, #-40]
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #17920
	add	r3, r3, #220
	str	r0, [r3]
	ldr	r1, [fp, #-40]
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #17920
	add	r3, r3, #196
	ldr	r3, [r3]
	add	r2, r3, #7
	cmp	r3, #0
	movlt	r3, r2
	movge	r3, r3
	asr	r3, r3, #3
	mov	r0, r3
	ldr	r1, [fp, #-40]
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #17920
	add	r3, r3, #224
	str	r0, [r3]
	ldr	r1, [fp, #-40]
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #17920
	add	r3, r3, #192
	ldr	r0, [r3]
	ldr	r1, [fp, #-40]
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #17920
	add	r3, r3, #196
	ldr	r1, [r3]
	mov	r3, #15
	mov	r2, #2
	bl	stbi__malloc_mad3
	ldr	r1, [fp, #-40]
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #17920
	add	r3, r3, #208
	str	r0, [r3]
	ldr	r1, [fp, #-40]
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #17920
	add	r3, r3, #208
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L633
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	mov	r2, #0
	mov	r1, r3
	ldr	r0, [fp, #-40]
	bl	stbi__free_jpeg_components
	mov	r3, r0
	b	.L608
.L633:
	ldr	r1, [fp, #-40]
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #17920
	add	r3, r3, #208
	ldr	r3, [r3]
	add	r3, r3, #15
	bic	r3, r3, #15
	mov	r0, r3
	ldr	r1, [fp, #-40]
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #17920
	add	r3, r3, #216
	str	r0, [r3]
.L632:
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L630:
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #8]
	ldr	r2, [fp, #-8]
	cmp	r2, r3
	blt	.L634
	mov	r3, #1
.L608:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__process_frame_header, .-stbi__process_frame_header
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__decode_jpeg_header, %function
stbi__decode_jpeg_header:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	ldr	r3, [fp, #-16]
	add	r3, r3, #16384
	mov	r2, r3
	mov	r3, #0
	str	r3, [r2, #2020]
	ldr	r3, [fp, #-16]
	add	r3, r3, #16384
	mov	r2, r3
	mvn	r3, #0
	str	r3, [r2, #2024]
	ldr	r3, [fp, #-16]
	add	r3, r3, #16384
	mvn	r2, #0
	strb	r2, [r3, #1988]
	ldr	r0, [fp, #-16]
	bl	stbi__get_marker
	mov	r3, r0
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	cmp	r3, #216
	beq	.L636
	mov	r3, #0
	b	.L637
.L636:
	ldr	r3, [fp, #-20]
	cmp	r3, #1
	bne	.L638
	mov	r3, #1
	b	.L637
.L638:
	ldr	r0, [fp, #-16]
	bl	stbi__get_marker
	mov	r3, r0
	str	r3, [fp, #-8]
	b	.L639
.L645:
	ldr	r1, [fp, #-8]
	ldr	r0, [fp, #-16]
	bl	stbi__process_marker
	mov	r3, r0
	cmp	r3, #0
	bne	.L640
	mov	r3, #0
	b	.L637
.L640:
	ldr	r0, [fp, #-16]
	bl	stbi__get_marker
	mov	r3, r0
	str	r3, [fp, #-8]
	b	.L641
.L643:
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	mov	r0, r3
	bl	stbi__at_eof
	mov	r3, r0
	cmp	r3, #0
	beq	.L642
	mov	r3, #0
	b	.L637
.L642:
	ldr	r0, [fp, #-16]
	bl	stbi__get_marker
	mov	r3, r0
	str	r3, [fp, #-8]
.L641:
	ldr	r3, [fp, #-8]
	cmp	r3, #255
	beq	.L643
.L639:
	ldr	r3, [fp, #-8]
	cmp	r3, #192
	beq	.L644
	ldr	r3, [fp, #-8]
	cmp	r3, #193
	beq	.L644
	ldr	r3, [fp, #-8]
	cmp	r3, #194
	bne	.L645
.L644:
	ldr	r3, [fp, #-8]
	cmp	r3, #194
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	mov	r2, r3
	ldr	r3, [fp, #-16]
	add	r3, r3, #16384
	str	r2, [r3, #1996]
	ldr	r1, [fp, #-20]
	ldr	r0, [fp, #-16]
	bl	stbi__process_frame_header
	mov	r3, r0
	cmp	r3, #0
	bne	.L646
	mov	r3, #0
	b	.L637
.L646:
	mov	r3, #1
.L637:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__decode_jpeg_header, .-stbi__decode_jpeg_header
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__decode_jpeg_image, %function
stbi__decode_jpeg_image:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #24
	str	r0, [fp, #-24]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L648
.L649:
	ldr	r1, [fp, #-24]
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #17920
	add	r3, r3, #204
	mov	r2, #0
	str	r2, [r3]
	ldr	r1, [fp, #-24]
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #17920
	add	r3, r3, #208
	mov	r2, #0
	str	r2, [r3]
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L648:
	ldr	r3, [fp, #-8]
	cmp	r3, #3
	ble	.L649
	ldr	r3, [fp, #-24]
	add	r3, r3, #16384
	mov	r2, r3
	mov	r3, #0
	str	r3, [r2, #2052]
	mov	r1, #0
	ldr	r0, [fp, #-24]
	bl	stbi__decode_jpeg_header
	mov	r3, r0
	cmp	r3, #0
	bne	.L650
	mov	r3, #0
	b	.L651
.L650:
	ldr	r0, [fp, #-24]
	bl	stbi__get_marker
	mov	r3, r0
	str	r3, [fp, #-8]
	b	.L652
.L663:
	ldr	r3, [fp, #-8]
	cmp	r3, #218
	bne	.L653
	ldr	r0, [fp, #-24]
	bl	stbi__process_scan_header
	mov	r3, r0
	cmp	r3, #0
	bne	.L654
	mov	r3, #0
	b	.L651
.L654:
	ldr	r0, [fp, #-24]
	bl	stbi__parse_entropy_coded_data
	mov	r3, r0
	cmp	r3, #0
	bne	.L655
	mov	r3, #0
	b	.L651
.L655:
	ldr	r3, [fp, #-24]
	add	r3, r3, #16384
	ldrb	r3, [r3, #1988]	@ zero_extendqisi2
	cmp	r3, #255
	bne	.L659
	b	.L657
.L658:
	ldr	r3, [fp, #-24]
	ldr	r3, [r3]
	mov	r0, r3
	bl	stbi__get8
	mov	r3, r0
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-12]
	cmp	r3, #255
	bne	.L657
	ldr	r3, [fp, #-24]
	ldr	r3, [r3]
	mov	r0, r3
	bl	stbi__get8
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [fp, #-24]
	add	r3, r3, #16384
	strb	r2, [r3, #1988]
	b	.L659
.L657:
	ldr	r3, [fp, #-24]
	ldr	r3, [r3]
	mov	r0, r3
	bl	stbi__at_eof
	mov	r3, r0
	cmp	r3, #0
	beq	.L658
	b	.L659
.L653:
	ldr	r3, [fp, #-8]
	cmp	r3, #220
	bne	.L660
	ldr	r3, [fp, #-24]
	ldr	r3, [r3]
	mov	r0, r3
	bl	stbi__get16be
	str	r0, [fp, #-16]
	ldr	r3, [fp, #-24]
	ldr	r3, [r3]
	mov	r0, r3
	bl	stbi__get16be
	mov	r3, r0
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-16]
	cmp	r3, #4
	beq	.L661
	mov	r3, #0
	b	.L651
.L661:
	ldr	r3, [fp, #-24]
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	ldr	r2, [fp, #-20]
	cmp	r2, r3
	beq	.L659
	mov	r3, #0
	b	.L651
.L660:
	ldr	r1, [fp, #-8]
	ldr	r0, [fp, #-24]
	bl	stbi__process_marker
	mov	r3, r0
	cmp	r3, #0
	bne	.L659
	mov	r3, #0
	b	.L651
.L659:
	ldr	r0, [fp, #-24]
	bl	stbi__get_marker
	mov	r3, r0
	str	r3, [fp, #-8]
.L652:
	ldr	r3, [fp, #-8]
	cmp	r3, #217
	bne	.L663
	ldr	r3, [fp, #-24]
	add	r3, r3, #16384
	ldr	r3, [r3, #1996]
	cmp	r3, #0
	beq	.L664
	ldr	r0, [fp, #-24]
	bl	stbi__jpeg_finish
.L664:
	mov	r3, #1
.L651:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__decode_jpeg_image, .-stbi__decode_jpeg_image
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	resample_row_1, %function
resample_row_1:
	@ args = 4, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-12]
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	resample_row_1, .-resample_row_1
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__resample_row_v_2, %function
stbi__resample_row_v_2:
	@ args = 4, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #28
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	str	r3, [fp, #-28]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L668
.L669:
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-20]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	ldr	r2, [fp, #-8]
	ldr	r1, [fp, #-24]
	add	r2, r1, r2
	ldrb	r2, [r2]	@ zero_extendqisi2
	add	r3, r3, r2
	add	r3, r3, #2
	asr	r1, r3, #2
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-16]
	add	r3, r2, r3
	uxtb	r2, r1
	strb	r2, [r3]
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L668:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-28]
	cmp	r2, r3
	blt	.L669
	ldr	r3, [fp, #-16]
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	stbi__resample_row_v_2, .-stbi__resample_row_v_2
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__resample_row_h_2, %function
stbi__resample_row_h_2:
	@ args = 4, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #36
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	str	r2, [fp, #-32]
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-28]
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-36]
	cmp	r3, #1
	bne	.L672
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	ldr	r2, [fp, #-12]
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [fp, #-24]
	strb	r2, [r3]
	ldr	r3, [fp, #-24]
	b	.L673
.L672:
	ldr	r3, [fp, #-12]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [fp, #-24]
	strb	r2, [r3]
	ldr	r3, [fp, #-12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	ldr	r2, [fp, #-12]
	add	r2, r2, #1
	ldrb	r2, [r2]	@ zero_extendqisi2
	add	r3, r3, r2
	add	r3, r3, #2
	asr	r2, r3, #2
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	uxtb	r2, r2
	strb	r2, [r3]
	mov	r3, #1
	str	r3, [fp, #-8]
	b	.L674
.L675:
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-12]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	add	r3, r3, #2
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-8]
	sub	r3, r3, #1
	ldr	r2, [fp, #-12]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [fp, #-16]
	add	r3, r2, r3
	asr	r2, r3, #2
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #1
	mov	r1, r3
	ldr	r3, [fp, #-24]
	add	r3, r3, r1
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	ldr	r2, [fp, #-12]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [fp, #-16]
	add	r3, r2, r3
	asr	r1, r3, #2
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #1
	add	r3, r3, #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	uxtb	r2, r1
	strb	r2, [r3]
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L674:
	ldr	r3, [fp, #-36]
	sub	r3, r3, #1
	ldr	r2, [fp, #-8]
	cmp	r2, r3
	blt	.L675
	ldr	r3, [fp, #-36]
	sub	r3, r3, #2
	ldr	r2, [fp, #-12]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	ldr	r2, [fp, #-36]
	sub	r2, r2, #1
	ldr	r1, [fp, #-12]
	add	r2, r1, r2
	ldrb	r2, [r2]	@ zero_extendqisi2
	add	r3, r3, r2
	add	r3, r3, #2
	asr	r2, r3, #2
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #1
	mov	r1, r3
	ldr	r3, [fp, #-24]
	add	r3, r3, r1
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [fp, #-36]
	sub	r3, r3, #1
	ldr	r2, [fp, #-12]
	add	r2, r2, r3
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #1
	add	r3, r3, #1
	ldr	r1, [fp, #-24]
	add	r3, r1, r3
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
	ldr	r3, [fp, #-24]
.L673:
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	stbi__resample_row_h_2, .-stbi__resample_row_h_2
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__resample_row_hv_2, %function
stbi__resample_row_hv_2:
	@ args = 4, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #36
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	str	r2, [fp, #-32]
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-36]
	cmp	r3, #1
	bne	.L677
	ldr	r3, [fp, #-28]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	ldr	r2, [fp, #-32]
	ldrb	r2, [r2]	@ zero_extendqisi2
	add	r3, r3, r2
	add	r3, r3, #2
	asr	r2, r3, #2
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	uxtb	r2, r2
	strb	r2, [r3]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [fp, #-24]
	strb	r2, [r3]
	ldr	r3, [fp, #-24]
	b	.L678
.L677:
	ldr	r3, [fp, #-28]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	ldr	r2, [fp, #-32]
	ldrb	r2, [r2]	@ zero_extendqisi2
	add	r3, r3, r2
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-12]
	add	r3, r3, #2
	asr	r3, r3, #2
	uxtb	r2, r3
	ldr	r3, [fp, #-24]
	strb	r2, [r3]
	mov	r3, #1
	str	r3, [fp, #-8]
	b	.L679
.L680:
	ldr	r3, [fp, #-12]
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-28]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	ldr	r2, [fp, #-8]
	ldr	r1, [fp, #-32]
	add	r2, r1, r2
	ldrb	r2, [r2]	@ zero_extendqisi2
	add	r3, r3, r2
	str	r3, [fp, #-12]
	ldr	r2, [fp, #-16]
	mov	r3, r2
	lsl	r3, r3, #1
	add	r2, r3, r2
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	add	r3, r3, #8
	asr	r1, r3, #4
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #1
	sub	r3, r3, #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	uxtb	r2, r1
	strb	r2, [r3]
	ldr	r2, [fp, #-12]
	mov	r3, r2
	lsl	r3, r3, #1
	add	r2, r3, r2
	ldr	r3, [fp, #-16]
	add	r3, r2, r3
	add	r3, r3, #8
	asr	r2, r3, #4
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #1
	mov	r1, r3
	ldr	r3, [fp, #-24]
	add	r3, r3, r1
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L679:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-36]
	cmp	r2, r3
	blt	.L680
	ldr	r3, [fp, #-12]
	add	r3, r3, #2
	asr	r1, r3, #2
	ldr	r3, [fp, #-36]
	lsl	r3, r3, #1
	sub	r3, r3, #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	uxtb	r2, r1
	strb	r2, [r3]
	ldr	r3, [fp, #-24]
.L678:
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	stbi__resample_row_hv_2, .-stbi__resample_row_hv_2
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__resample_row_generic, %function
stbi__resample_row_generic:
	@ args = 4, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #28
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	str	r3, [fp, #-28]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L682
.L685:
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L683
.L684:
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-20]
	add	r2, r2, r3
	ldr	r3, [fp, #-8]
	ldr	r1, [fp, #4]
	mul	r1, r1, r3
	ldr	r3, [fp, #-12]
	add	r3, r1, r3
	mov	r1, r3
	ldr	r3, [fp, #-16]
	add	r3, r3, r1
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L683:
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #4]
	cmp	r2, r3
	blt	.L684
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L682:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-28]
	cmp	r2, r3
	blt	.L685
	ldr	r3, [fp, #-16]
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	stbi__resample_row_generic, .-stbi__resample_row_generic
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__YCbCr_to_RGB_row, %function
stbi__YCbCr_to_RGB_row:
	@ args = 8, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #52
	str	r0, [fp, #-40]
	str	r1, [fp, #-44]
	str	r2, [fp, #-48]
	str	r3, [fp, #-52]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L688
.L695:
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-44]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsl	r3, r3, #20
	add	r3, r3, #524288
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-52]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	sub	r3, r3, #128
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-48]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	sub	r3, r3, #128
	str	r3, [fp, #-32]
	ldr	r2, [fp, #-28]
	mov	r3, #28416
	movt	r3, 22
	mul	r3, r3, r2
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-28]
	mov	r2, r3
	lsl	r2, r2, #1
	add	r2, r2, r3
	lsl	r3, r2, #4
	sub	r3, r3, r2
	lsl	r2, r3, #6
	add	r3, r3, r2
	lsl	r3, r3, #8
	rsb	r2, r3, #0
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	mov	r1, r3
	ldr	r2, [fp, #-32]
	mov	r3, r2
	lsl	r3, r3, #13
	sub	r3, r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #6
	sub	r3, r3, r2
	lsl	r3, r3, #9
	lsr	r3, r3, #16
	lsl	r3, r3, #16
	add	r3, r1, r3
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-32]
	mov	r3, #23040
	movt	r3, 28
	mul	r3, r3, r2
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-12]
	asr	r3, r3, #20
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-16]
	asr	r3, r3, #20
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-20]
	asr	r3, r3, #20
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-12]
	cmp	r3, #255
	bls	.L689
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	bge	.L690
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L689
.L690:
	mov	r3, #255
	str	r3, [fp, #-12]
.L689:
	ldr	r3, [fp, #-16]
	cmp	r3, #255
	bls	.L691
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	bge	.L692
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L691
.L692:
	mov	r3, #255
	str	r3, [fp, #-16]
.L691:
	ldr	r3, [fp, #-20]
	cmp	r3, #255
	bls	.L693
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	bge	.L694
	mov	r3, #0
	str	r3, [fp, #-20]
	b	.L693
.L694:
	mov	r3, #255
	str	r3, [fp, #-20]
.L693:
	ldr	r3, [fp, #-12]
	uxtb	r2, r3
	ldr	r3, [fp, #-40]
	strb	r2, [r3]
	ldr	r3, [fp, #-40]
	add	r3, r3, #1
	ldr	r2, [fp, #-16]
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [fp, #-40]
	add	r3, r3, #2
	ldr	r2, [fp, #-20]
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [fp, #-40]
	add	r3, r3, #3
	mvn	r2, #0
	strb	r2, [r3]
	ldr	r3, [fp, #8]
	ldr	r2, [fp, #-40]
	add	r3, r2, r3
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L688:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #4]
	cmp	r2, r3
	blt	.L695
	nop
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	stbi__YCbCr_to_RGB_row, .-stbi__YCbCr_to_RGB_row
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__setup_jpeg, %function
stbi__setup_jpeg:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	add	r3, r3, #16384
	mov	r2, r3
	movw	r3, #:lower16:stbi__idct_block
	movt	r3, #:upper16:stbi__idct_block
	str	r3, [r2, #2060]
	ldr	r3, [fp, #-8]
	add	r3, r3, #16384
	mov	r2, r3
	movw	r3, #:lower16:stbi__YCbCr_to_RGB_row
	movt	r3, #:upper16:stbi__YCbCr_to_RGB_row
	str	r3, [r2, #2064]
	ldr	r3, [fp, #-8]
	add	r3, r3, #16384
	mov	r2, r3
	movw	r3, #:lower16:stbi__resample_row_hv_2
	movt	r3, #:upper16:stbi__resample_row_hv_2
	str	r3, [r2, #2068]
	nop
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	stbi__setup_jpeg, .-stbi__setup_jpeg
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__cleanup_jpeg, %function
stbi__cleanup_jpeg:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	mov	r2, #0
	mov	r1, r3
	ldr	r0, [fp, #-8]
	bl	stbi__free_jpeg_components
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__cleanup_jpeg, .-stbi__cleanup_jpeg
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__blinn_8x8, %function
stbi__blinn_8x8:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	mov	r3, r0
	mov	r2, r1
	strb	r3, [fp, #-13]
	mov	r3, r2
	strb	r3, [fp, #-14]
	ldrb	r3, [fp, #-13]	@ zero_extendqisi2
	ldrb	r2, [fp, #-14]	@ zero_extendqisi2
	mul	r3, r2, r3
	add	r3, r3, #128
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	lsr	r2, r3, #8
	ldr	r3, [fp, #-8]
	add	r3, r2, r3
	lsr	r3, r3, #8
	uxtb	r3, r3
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	stbi__blinn_8x8, .-stbi__blinn_8x8
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	load_jpeg_image, %function
load_jpeg_image:
	@ args = 4, pretend = 0, frame = 224
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, fp, lr}
	add	fp, sp, #8
	sub	sp, sp, #236
	str	r0, [fp, #-224]
	str	r1, [fp, #-228]
	str	r2, [fp, #-232]
	str	r3, [fp, #-236]
	ldr	r3, [fp, #-224]
	ldr	r3, [r3]
	mov	r2, #0
	str	r2, [r3, #8]
	ldr	r3, [fp, #4]
	cmp	r3, #0
	blt	.L701
	ldr	r3, [fp, #4]
	cmp	r3, #4
	ble	.L702
.L701:
	mov	r3, #0
	b	.L703
.L702:
	ldr	r0, [fp, #-224]
	bl	stbi__decode_jpeg_image
	mov	r3, r0
	cmp	r3, #0
	bne	.L704
	ldr	r0, [fp, #-224]
	bl	stbi__cleanup_jpeg
	mov	r3, #0
	b	.L703
.L704:
	ldr	r3, [fp, #4]
	cmp	r3, #0
	bne	.L705
	ldr	r3, [fp, #-224]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	cmp	r3, #2
	ble	.L706
	mov	r3, #3
	b	.L708
.L706:
	mov	r3, #1
	b	.L708
.L705:
	ldr	r3, [fp, #4]
.L708:
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-224]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	cmp	r3, #3
	bne	.L709
	ldr	r3, [fp, #-224]
	add	r3, r3, #16384
	ldr	r3, [r3, #2028]
	cmp	r3, #3
	beq	.L710
	ldr	r3, [fp, #-224]
	add	r3, r3, #16384
	ldr	r3, [r3, #2024]
	cmp	r3, #0
	bne	.L709
	ldr	r3, [fp, #-224]
	add	r3, r3, #16384
	ldr	r3, [r3, #2020]
	cmp	r3, #0
	bne	.L709
.L710:
	mov	r3, #1
	b	.L711
.L709:
	mov	r3, #0
.L711:
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-224]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	cmp	r3, #3
	bne	.L712
	ldr	r3, [fp, #-36]
	cmp	r3, #2
	bgt	.L712
	ldr	r3, [fp, #-40]
	cmp	r3, #0
	bne	.L712
	mov	r3, #1
	str	r3, [fp, #-16]
	b	.L713
.L712:
	ldr	r3, [fp, #-224]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	str	r3, [fp, #-16]
.L713:
	sub	r3, fp, #88
	mov	r2, #0
	str	r2, [r3]
	str	r2, [r3, #4]
	str	r2, [r3, #8]
	str	r2, [r3, #12]
	mov	r3, #0
	str	r3, [fp, #-20]
	b	.L714
.L722:
	sub	r2, fp, #216
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #5
	add	r3, r2, r3
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-224]
	ldr	r3, [r3]
	ldr	r3, [r3]
	add	r3, r3, #3
	mov	r0, r3
	bl	stbi__malloc
	ldr	r1, [fp, #-224]
	ldr	r2, [fp, #-20]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #17920
	add	r3, r3, #212
	str	r0, [r3]
	ldr	r1, [fp, #-224]
	ldr	r2, [fp, #-20]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #17920
	add	r3, r3, #212
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L715
	ldr	r0, [fp, #-224]
	bl	stbi__cleanup_jpeg
	mov	r3, #0
	b	.L703
.L715:
	ldr	r3, [fp, #-224]
	add	r3, r3, #16384
	ldr	r0, [r3, #1668]
	ldr	r1, [fp, #-224]
	ldr	r2, [fp, #-20]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #17920
	add	r3, r3, #160
	ldr	r3, [r3]
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [fp, #-44]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-224]
	add	r3, r3, #16384
	ldr	r0, [r3, #1672]
	ldr	r1, [fp, #-224]
	ldr	r2, [fp, #-20]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #17920
	add	r3, r3, #164
	ldr	r3, [r3]
	mov	r1, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [fp, #-44]
	str	r2, [r3, #16]
	ldr	r3, [fp, #-44]
	ldr	r3, [r3, #16]
	asr	r2, r3, #1
	ldr	r3, [fp, #-44]
	str	r2, [r3, #24]
	ldr	r3, [fp, #-224]
	ldr	r3, [r3]
	ldr	r3, [r3]
	ldr	r2, [fp, #-44]
	ldr	r2, [r2, #12]
	add	r3, r3, r2
	sub	r2, r3, #1
	ldr	r3, [fp, #-44]
	ldr	r3, [r3, #12]
	mov	r1, r3
	mov	r0, r2
	bl	__aeabi_uidiv
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [fp, #-44]
	str	r2, [r3, #20]
	ldr	r3, [fp, #-44]
	mov	r2, #0
	str	r2, [r3, #28]
	ldr	r1, [fp, #-224]
	ldr	r2, [fp, #-20]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #17920
	add	r3, r3, #200
	ldr	r2, [r3]
	ldr	r3, [fp, #-44]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-44]
	ldr	r2, [r3, #8]
	ldr	r3, [fp, #-44]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-44]
	ldr	r3, [r3, #12]
	cmp	r3, #1
	bne	.L717
	ldr	r3, [fp, #-44]
	ldr	r3, [r3, #16]
	cmp	r3, #1
	bne	.L717
	ldr	r2, [fp, #-44]
	movw	r3, #:lower16:resample_row_1
	movt	r3, #:upper16:resample_row_1
	str	r3, [r2]
	b	.L718
.L717:
	ldr	r3, [fp, #-44]
	ldr	r3, [r3, #12]
	cmp	r3, #1
	bne	.L719
	ldr	r3, [fp, #-44]
	ldr	r3, [r3, #16]
	cmp	r3, #2
	bne	.L719
	ldr	r2, [fp, #-44]
	movw	r3, #:lower16:stbi__resample_row_v_2
	movt	r3, #:upper16:stbi__resample_row_v_2
	str	r3, [r2]
	b	.L718
.L719:
	ldr	r3, [fp, #-44]
	ldr	r3, [r3, #12]
	cmp	r3, #2
	bne	.L720
	ldr	r3, [fp, #-44]
	ldr	r3, [r3, #16]
	cmp	r3, #1
	bne	.L720
	ldr	r2, [fp, #-44]
	movw	r3, #:lower16:stbi__resample_row_h_2
	movt	r3, #:upper16:stbi__resample_row_h_2
	str	r3, [r2]
	b	.L718
.L720:
	ldr	r3, [fp, #-44]
	ldr	r3, [r3, #12]
	cmp	r3, #2
	bne	.L721
	ldr	r3, [fp, #-44]
	ldr	r3, [r3, #16]
	cmp	r3, #2
	bne	.L721
	ldr	r3, [fp, #-224]
	add	r3, r3, #16384
	ldr	r2, [r3, #2068]
	ldr	r3, [fp, #-44]
	str	r2, [r3]
	b	.L718
.L721:
	ldr	r2, [fp, #-44]
	movw	r3, #:lower16:stbi__resample_row_generic
	movt	r3, #:upper16:stbi__resample_row_generic
	str	r3, [r2]
.L718:
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
.L714:
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-16]
	cmp	r2, r3
	blt	.L722
	ldr	r3, [fp, #-224]
	ldr	r3, [r3]
	ldr	r3, [r3]
	mov	r1, r3
	ldr	r3, [fp, #-224]
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	mov	r2, r3
	mov	r3, #1
	ldr	r0, [fp, #-36]
	bl	stbi__malloc_mad3
	str	r0, [fp, #-48]
	ldr	r3, [fp, #-48]
	cmp	r3, #0
	bne	.L723
	ldr	r0, [fp, #-224]
	bl	stbi__cleanup_jpeg
	mov	r3, #0
	b	.L703
.L723:
	mov	r3, #0
	str	r3, [fp, #-28]
	b	.L724
.L767:
	ldr	r3, [fp, #-224]
	ldr	r3, [r3]
	ldr	r3, [r3]
	ldr	r2, [fp, #-36]
	mul	r3, r2, r3
	ldr	r2, [fp, #-28]
	mul	r3, r2, r3
	ldr	r2, [fp, #-48]
	add	r3, r2, r3
	str	r3, [fp, #-32]
	mov	r3, #0
	str	r3, [fp, #-20]
	b	.L725
.L731:
	sub	r2, fp, #216
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #5
	add	r3, r2, r3
	str	r3, [fp, #-52]
	ldr	r3, [fp, #-52]
	ldr	r2, [r3, #24]
	ldr	r3, [fp, #-52]
	ldr	r3, [r3, #16]
	asr	r3, r3, #1
	cmp	r2, r3
	movge	r3, #1
	movlt	r3, #0
	uxtb	r3, r3
	str	r3, [fp, #-56]
	ldr	r3, [fp, #-52]
	ldr	r4, [r3]
	ldr	r1, [fp, #-224]
	ldr	r2, [fp, #-20]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r1, r3
	add	r3, r3, #17920
	add	r3, r3, #212
	ldr	r0, [r3]
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	beq	.L726
	ldr	r3, [fp, #-52]
	ldr	r1, [r3, #8]
	b	.L727
.L726:
	ldr	r3, [fp, #-52]
	ldr	r1, [r3, #4]
.L727:
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	beq	.L728
	ldr	r3, [fp, #-52]
	ldr	r2, [r3, #4]
	b	.L729
.L728:
	ldr	r3, [fp, #-52]
	ldr	r2, [r3, #8]
.L729:
	ldr	r3, [fp, #-52]
	ldr	ip, [r3, #20]
	ldr	r3, [fp, #-52]
	ldr	r3, [r3, #12]
	str	r3, [sp]
	mov	r3, ip
	blx	r4
	mov	r2, r0
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #2
	sub	r1, fp, #12
	add	r3, r1, r3
	str	r2, [r3, #-76]
	ldr	r3, [fp, #-52]
	ldr	r3, [r3, #24]
	add	r2, r3, #1
	ldr	r3, [fp, #-52]
	str	r2, [r3, #24]
	ldr	r3, [fp, #-52]
	ldr	r2, [r3, #24]
	ldr	r3, [fp, #-52]
	ldr	r3, [r3, #16]
	cmp	r2, r3
	blt	.L730
	ldr	r3, [fp, #-52]
	mov	r2, #0
	str	r2, [r3, #24]
	ldr	r3, [fp, #-52]
	ldr	r2, [r3, #8]
	ldr	r3, [fp, #-52]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-52]
	ldr	r3, [r3, #28]
	add	r2, r3, #1
	ldr	r3, [fp, #-52]
	str	r2, [r3, #28]
	ldr	r3, [fp, #-52]
	ldr	r1, [r3, #28]
	ldr	r0, [fp, #-224]
	ldr	r2, [fp, #-20]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r0, r3
	add	r3, r3, #17920
	add	r3, r3, #188
	ldr	r3, [r3]
	cmp	r1, r3
	bge	.L730
	ldr	r3, [fp, #-52]
	ldr	r1, [r3, #8]
	ldr	r0, [fp, #-224]
	ldr	r2, [fp, #-20]
	mov	r3, r2
	lsl	r3, r3, #3
	add	r3, r3, r2
	lsl	r3, r3, #3
	add	r3, r0, r3
	add	r3, r3, #17920
	add	r3, r3, #192
	ldr	r3, [r3]
	add	r2, r1, r3
	ldr	r3, [fp, #-52]
	str	r2, [r3, #8]
.L730:
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
.L725:
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-16]
	cmp	r2, r3
	blt	.L731
	ldr	r3, [fp, #-36]
	cmp	r3, #2
	ble	.L732
	ldr	r3, [fp, #-88]
	str	r3, [fp, #-60]
	ldr	r3, [fp, #-224]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	cmp	r3, #3
	bne	.L733
	ldr	r3, [fp, #-40]
	cmp	r3, #0
	beq	.L734
	mov	r3, #0
	str	r3, [fp, #-24]
	b	.L735
.L736:
	ldr	r2, [fp, #-60]
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [fp, #-32]
	strb	r2, [r3]
	ldr	r2, [fp, #-84]
	ldr	r3, [fp, #-24]
	add	r2, r2, r3
	ldr	r3, [fp, #-32]
	add	r3, r3, #1
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
	ldr	r2, [fp, #-80]
	ldr	r3, [fp, #-24]
	add	r2, r2, r3
	ldr	r3, [fp, #-32]
	add	r3, r3, #2
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
	ldr	r3, [fp, #-32]
	add	r3, r3, #3
	mvn	r2, #0
	strb	r2, [r3]
	ldr	r3, [fp, #-36]
	ldr	r2, [fp, #-32]
	add	r3, r2, r3
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
.L735:
	ldr	r3, [fp, #-224]
	ldr	r3, [r3]
	ldr	r3, [r3]
	ldr	r2, [fp, #-24]
	cmp	r2, r3
	bcc	.L736
	b	.L749
.L734:
	ldr	r3, [fp, #-224]
	add	r3, r3, #16384
	ldr	r4, [r3, #2064]
	ldr	r2, [fp, #-84]
	ldr	r1, [fp, #-80]
	ldr	r3, [fp, #-224]
	ldr	r3, [r3]
	ldr	r3, [r3]
	mov	r0, r3
	ldr	r3, [fp, #-36]
	str	r3, [sp, #4]
	str	r0, [sp]
	mov	r3, r1
	ldr	r1, [fp, #-60]
	ldr	r0, [fp, #-32]
	blx	r4
	b	.L749
.L733:
	ldr	r3, [fp, #-224]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	cmp	r3, #4
	bne	.L739
	ldr	r3, [fp, #-224]
	add	r3, r3, #16384
	ldr	r3, [r3, #2024]
	cmp	r3, #0
	bne	.L740
	mov	r3, #0
	str	r3, [fp, #-24]
	b	.L741
.L742:
	ldr	r2, [fp, #-76]
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	ldrb	r3, [r3]
	strb	r3, [fp, #-61]
	ldr	r2, [fp, #-88]
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldrb	r2, [fp, #-61]	@ zero_extendqisi2
	mov	r1, r2
	mov	r0, r3
	bl	stbi__blinn_8x8
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [fp, #-32]
	strb	r2, [r3]
	ldr	r2, [fp, #-84]
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [fp, #-32]
	add	r4, r3, #1
	ldrb	r3, [fp, #-61]	@ zero_extendqisi2
	mov	r1, r3
	mov	r0, r2
	bl	stbi__blinn_8x8
	mov	r3, r0
	strb	r3, [r4]
	ldr	r2, [fp, #-80]
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [fp, #-32]
	add	r4, r3, #2
	ldrb	r3, [fp, #-61]	@ zero_extendqisi2
	mov	r1, r3
	mov	r0, r2
	bl	stbi__blinn_8x8
	mov	r3, r0
	strb	r3, [r4]
	ldr	r3, [fp, #-32]
	add	r3, r3, #3
	mvn	r2, #0
	strb	r2, [r3]
	ldr	r3, [fp, #-36]
	ldr	r2, [fp, #-32]
	add	r3, r2, r3
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
.L741:
	ldr	r3, [fp, #-224]
	ldr	r3, [r3]
	ldr	r3, [r3]
	ldr	r2, [fp, #-24]
	cmp	r2, r3
	bcc	.L742
	b	.L749
.L740:
	ldr	r3, [fp, #-224]
	add	r3, r3, #16384
	ldr	r3, [r3, #2024]
	cmp	r3, #2
	bne	.L744
	ldr	r3, [fp, #-224]
	add	r3, r3, #16384
	ldr	r4, [r3, #2064]
	ldr	r2, [fp, #-84]
	ldr	r1, [fp, #-80]
	ldr	r3, [fp, #-224]
	ldr	r3, [r3]
	ldr	r3, [r3]
	mov	r0, r3
	ldr	r3, [fp, #-36]
	str	r3, [sp, #4]
	str	r0, [sp]
	mov	r3, r1
	ldr	r1, [fp, #-60]
	ldr	r0, [fp, #-32]
	blx	r4
	mov	r3, #0
	str	r3, [fp, #-24]
	b	.L745
.L746:
	ldr	r2, [fp, #-76]
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	ldrb	r3, [r3]
	strb	r3, [fp, #-62]
	ldr	r3, [fp, #-32]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mvn	r3, r3
	uxtb	r3, r3
	ldrb	r2, [fp, #-62]	@ zero_extendqisi2
	mov	r1, r2
	mov	r0, r3
	bl	stbi__blinn_8x8
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [fp, #-32]
	strb	r2, [r3]
	ldr	r3, [fp, #-32]
	add	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	mvn	r3, r3
	uxtb	r2, r3
	ldr	r3, [fp, #-32]
	add	r4, r3, #1
	ldrb	r3, [fp, #-62]	@ zero_extendqisi2
	mov	r1, r3
	mov	r0, r2
	bl	stbi__blinn_8x8
	mov	r3, r0
	strb	r3, [r4]
	ldr	r3, [fp, #-32]
	add	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mvn	r3, r3
	uxtb	r2, r3
	ldr	r3, [fp, #-32]
	add	r4, r3, #2
	ldrb	r3, [fp, #-62]	@ zero_extendqisi2
	mov	r1, r3
	mov	r0, r2
	bl	stbi__blinn_8x8
	mov	r3, r0
	strb	r3, [r4]
	ldr	r3, [fp, #-36]
	ldr	r2, [fp, #-32]
	add	r3, r2, r3
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
.L745:
	ldr	r3, [fp, #-224]
	ldr	r3, [r3]
	ldr	r3, [r3]
	ldr	r2, [fp, #-24]
	cmp	r2, r3
	bcc	.L746
	b	.L749
.L744:
	ldr	r3, [fp, #-224]
	add	r3, r3, #16384
	ldr	r4, [r3, #2064]
	ldr	r2, [fp, #-84]
	ldr	r1, [fp, #-80]
	ldr	r3, [fp, #-224]
	ldr	r3, [r3]
	ldr	r3, [r3]
	mov	r0, r3
	ldr	r3, [fp, #-36]
	str	r3, [sp, #4]
	str	r0, [sp]
	mov	r3, r1
	ldr	r1, [fp, #-60]
	ldr	r0, [fp, #-32]
	blx	r4
	b	.L749
.L739:
	mov	r3, #0
	str	r3, [fp, #-24]
	b	.L747
.L748:
	ldr	r2, [fp, #-60]
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #-32]
	add	r2, r2, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	strb	r3, [r2]
	ldr	r3, [fp, #-32]
	add	r3, r3, #1
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [fp, #-32]
	strb	r2, [r3]
	ldr	r3, [fp, #-32]
	add	r3, r3, #3
	mvn	r2, #0
	strb	r2, [r3]
	ldr	r3, [fp, #-36]
	ldr	r2, [fp, #-32]
	add	r3, r2, r3
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
.L747:
	ldr	r3, [fp, #-224]
	ldr	r3, [r3]
	ldr	r3, [r3]
	ldr	r2, [fp, #-24]
	cmp	r2, r3
	bcc	.L748
	b	.L749
.L732:
	ldr	r3, [fp, #-40]
	cmp	r3, #0
	beq	.L750
	ldr	r3, [fp, #-36]
	cmp	r3, #1
	bne	.L751
	mov	r3, #0
	str	r3, [fp, #-24]
	b	.L752
.L753:
	ldr	r2, [fp, #-88]
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	ldr	r2, [fp, #-84]
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r2, [fp, #-80]
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r4, [fp, #-32]
	add	r3, r4, #1
	str	r3, [fp, #-32]
	bl	stbi__compute_y
	mov	r3, r0
	strb	r3, [r4]
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
.L752:
	ldr	r3, [fp, #-224]
	ldr	r3, [r3]
	ldr	r3, [r3]
	ldr	r2, [fp, #-24]
	cmp	r2, r3
	bcc	.L753
	b	.L749
.L751:
	mov	r3, #0
	str	r3, [fp, #-24]
	b	.L754
.L755:
	ldr	r2, [fp, #-88]
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	ldr	r2, [fp, #-84]
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r2, [fp, #-80]
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	bl	stbi__compute_y
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [fp, #-32]
	strb	r2, [r3]
	ldr	r3, [fp, #-32]
	add	r3, r3, #1
	mvn	r2, #0
	strb	r2, [r3]
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-32]
	add	r3, r3, #2
	str	r3, [fp, #-32]
.L754:
	ldr	r3, [fp, #-224]
	ldr	r3, [r3]
	ldr	r3, [r3]
	ldr	r2, [fp, #-24]
	cmp	r2, r3
	bcc	.L755
	b	.L749
.L750:
	ldr	r3, [fp, #-224]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	cmp	r3, #4
	bne	.L756
	ldr	r3, [fp, #-224]
	add	r3, r3, #16384
	ldr	r3, [r3, #2024]
	cmp	r3, #0
	bne	.L756
	mov	r3, #0
	str	r3, [fp, #-24]
	b	.L757
.L758:
	ldr	r2, [fp, #-76]
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	ldrb	r3, [r3]
	strb	r3, [fp, #-63]
	ldr	r2, [fp, #-88]
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldrb	r2, [fp, #-63]	@ zero_extendqisi2
	mov	r1, r2
	mov	r0, r3
	bl	stbi__blinn_8x8
	mov	r3, r0
	strb	r3, [fp, #-64]
	ldr	r2, [fp, #-84]
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldrb	r2, [fp, #-63]	@ zero_extendqisi2
	mov	r1, r2
	mov	r0, r3
	bl	stbi__blinn_8x8
	mov	r3, r0
	strb	r3, [fp, #-65]
	ldr	r2, [fp, #-80]
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldrb	r2, [fp, #-63]	@ zero_extendqisi2
	mov	r1, r2
	mov	r0, r3
	bl	stbi__blinn_8x8
	mov	r3, r0
	strb	r3, [fp, #-66]
	ldrb	r3, [fp, #-64]	@ zero_extendqisi2
	ldrb	r1, [fp, #-65]	@ zero_extendqisi2
	ldrb	r2, [fp, #-66]	@ zero_extendqisi2
	mov	r0, r3
	bl	stbi__compute_y
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [fp, #-32]
	strb	r2, [r3]
	ldr	r3, [fp, #-32]
	add	r3, r3, #1
	mvn	r2, #0
	strb	r2, [r3]
	ldr	r3, [fp, #-36]
	ldr	r2, [fp, #-32]
	add	r3, r2, r3
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
.L757:
	ldr	r3, [fp, #-224]
	ldr	r3, [r3]
	ldr	r3, [r3]
	ldr	r2, [fp, #-24]
	cmp	r2, r3
	bcc	.L758
	b	.L749
.L756:
	ldr	r3, [fp, #-224]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	cmp	r3, #4
	bne	.L759
	ldr	r3, [fp, #-224]
	add	r3, r3, #16384
	ldr	r3, [r3, #2024]
	cmp	r3, #2
	bne	.L759
	mov	r3, #0
	str	r3, [fp, #-24]
	b	.L760
.L761:
	ldr	r2, [fp, #-88]
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	mvn	r3, r3
	uxtb	r0, r3
	ldr	r2, [fp, #-76]
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	bl	stbi__blinn_8x8
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [fp, #-32]
	strb	r2, [r3]
	ldr	r3, [fp, #-32]
	add	r3, r3, #1
	mvn	r2, #0
	strb	r2, [r3]
	ldr	r3, [fp, #-36]
	ldr	r2, [fp, #-32]
	add	r3, r2, r3
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
.L760:
	ldr	r3, [fp, #-224]
	ldr	r3, [r3]
	ldr	r3, [r3]
	ldr	r2, [fp, #-24]
	cmp	r2, r3
	bcc	.L761
	b	.L749
.L759:
	ldr	r3, [fp, #-88]
	str	r3, [fp, #-72]
	ldr	r3, [fp, #-36]
	cmp	r3, #1
	bne	.L762
	mov	r3, #0
	str	r3, [fp, #-24]
	b	.L763
.L764:
	ldr	r2, [fp, #-72]
	ldr	r3, [fp, #-24]
	add	r2, r2, r3
	ldr	r1, [fp, #-32]
	ldr	r3, [fp, #-24]
	add	r3, r1, r3
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
.L763:
	ldr	r3, [fp, #-224]
	ldr	r3, [r3]
	ldr	r3, [r3]
	ldr	r2, [fp, #-24]
	cmp	r2, r3
	bcc	.L764
	b	.L749
.L762:
	mov	r3, #0
	str	r3, [fp, #-24]
	b	.L765
.L766:
	ldr	r2, [fp, #-72]
	ldr	r3, [fp, #-24]
	add	r2, r2, r3
	ldr	r3, [fp, #-32]
	add	r1, r3, #1
	str	r1, [fp, #-32]
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
	ldr	r3, [fp, #-32]
	add	r2, r3, #1
	str	r2, [fp, #-32]
	mvn	r2, #0
	strb	r2, [r3]
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
.L765:
	ldr	r3, [fp, #-224]
	ldr	r3, [r3]
	ldr	r3, [r3]
	ldr	r2, [fp, #-24]
	cmp	r2, r3
	bcc	.L766
.L749:
	ldr	r3, [fp, #-28]
	add	r3, r3, #1
	str	r3, [fp, #-28]
.L724:
	ldr	r3, [fp, #-224]
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	ldr	r2, [fp, #-28]
	cmp	r2, r3
	bcc	.L767
	ldr	r0, [fp, #-224]
	bl	stbi__cleanup_jpeg
	ldr	r3, [fp, #-224]
	ldr	r3, [r3]
	ldr	r3, [r3]
	mov	r2, r3
	ldr	r3, [fp, #-228]
	str	r2, [r3]
	ldr	r3, [fp, #-224]
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	mov	r2, r3
	ldr	r3, [fp, #-232]
	str	r2, [r3]
	ldr	r3, [fp, #-236]
	cmp	r3, #0
	beq	.L768
	ldr	r3, [fp, #-224]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	cmp	r3, #2
	ble	.L769
	mov	r2, #3
	b	.L770
.L769:
	mov	r2, #1
.L770:
	ldr	r3, [fp, #-236]
	str	r2, [r3]
.L768:
	ldr	r3, [fp, #-48]
.L703:
	mov	r0, r3
	sub	sp, fp, #8
	@ sp needed
	pop	{r4, fp, pc}
	.size	load_jpeg_image, .-load_jpeg_image
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__jpeg_load, %function
stbi__jpeg_load:
	@ args = 8, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #32
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	str	r3, [fp, #-28]
	movw	r0, #18456
	bl	stbi__malloc
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-16]
	str	r2, [r3]
	ldr	r0, [fp, #-8]
	bl	stbi__setup_jpeg
	ldr	r3, [fp, #4]
	str	r3, [sp]
	ldr	r3, [fp, #-28]
	ldr	r2, [fp, #-24]
	ldr	r1, [fp, #-20]
	ldr	r0, [fp, #-8]
	bl	load_jpeg_image
	str	r0, [fp, #-12]
	ldr	r0, [fp, #-8]
	bl	free
	ldr	r3, [fp, #-12]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__jpeg_load, .-stbi__jpeg_load
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__jpeg_test, %function
stbi__jpeg_test:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-16]
	movw	r0, #18456
	bl	stbi__malloc
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-16]
	str	r2, [r3]
	ldr	r0, [fp, #-8]
	bl	stbi__setup_jpeg
	mov	r1, #1
	ldr	r0, [fp, #-8]
	bl	stbi__decode_jpeg_header
	str	r0, [fp, #-12]
	ldr	r0, [fp, #-16]
	bl	stbi__rewind
	ldr	r0, [fp, #-8]
	bl	free
	ldr	r3, [fp, #-12]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__jpeg_test, .-stbi__jpeg_test
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__jpeg_info_raw, %function
stbi__jpeg_info_raw:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	str	r3, [fp, #-20]
	mov	r1, #2
	ldr	r0, [fp, #-8]
	bl	stbi__decode_jpeg_header
	mov	r3, r0
	cmp	r3, #0
	bne	.L776
	ldr	r3, [fp, #-8]
	ldr	r3, [r3]
	mov	r0, r3
	bl	stbi__rewind
	mov	r3, #0
	b	.L777
.L776:
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	beq	.L778
	ldr	r3, [fp, #-8]
	ldr	r3, [r3]
	ldr	r3, [r3]
	mov	r2, r3
	ldr	r3, [fp, #-12]
	str	r2, [r3]
.L778:
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	beq	.L779
	ldr	r3, [fp, #-8]
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	mov	r2, r3
	ldr	r3, [fp, #-16]
	str	r2, [r3]
.L779:
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	beq	.L780
	ldr	r3, [fp, #-8]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	cmp	r3, #2
	ble	.L781
	mov	r2, #3
	b	.L782
.L781:
	mov	r2, #1
.L782:
	ldr	r3, [fp, #-20]
	str	r2, [r3]
.L780:
	mov	r3, #1
.L777:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__jpeg_info_raw, .-stbi__jpeg_info_raw
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__jpeg_info, %function
stbi__jpeg_info:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #24
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	str	r3, [fp, #-28]
	movw	r0, #18456
	bl	stbi__malloc
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-16]
	str	r2, [r3]
	ldr	r3, [fp, #-28]
	ldr	r2, [fp, #-24]
	ldr	r1, [fp, #-20]
	ldr	r0, [fp, #-8]
	bl	stbi__jpeg_info_raw
	str	r0, [fp, #-12]
	ldr	r0, [fp, #-8]
	bl	free
	ldr	r3, [fp, #-12]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__jpeg_info, .-stbi__jpeg_info
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__bitreverse16, %function
stbi__bitreverse16:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	asr	r3, r3, #1
	movw	r2, #21845
	and	r2, r2, r3
	ldr	r3, [fp, #-8]
	lsl	r1, r3, #1
	movw	r3, #43690
	and	r3, r3, r1
	orr	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	asr	r3, r3, #2
	movw	r2, #13107
	and	r2, r2, r3
	ldr	r3, [fp, #-8]
	lsl	r1, r3, #2
	movw	r3, #52428
	and	r3, r3, r1
	orr	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	asr	r3, r3, #4
	movw	r2, #3855
	and	r2, r2, r3
	ldr	r3, [fp, #-8]
	lsl	r1, r3, #4
	movw	r3, #61680
	and	r3, r3, r1
	orr	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	asr	r3, r3, #8
	uxtb	r2, r3
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #8
	uxth	r3, r3
	orr	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	stbi__bitreverse16, .-stbi__bitreverse16
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__bit_reverse, %function
stbi__bit_reverse:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	ldr	r0, [fp, #-8]
	bl	stbi__bitreverse16
	mov	r2, r0
	ldr	r3, [fp, #-12]
	rsb	r3, r3, #16
	asr	r3, r2, r3
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__bit_reverse, .-stbi__bit_reverse
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__zbuild_huffman, %function
stbi__zbuild_huffman:
	@ args = 0, pretend = 0, frame = 176
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #176
	str	r0, [fp, #-168]
	str	r1, [fp, #-172]
	str	r2, [fp, #-176]
	mov	r3, #0
	str	r3, [fp, #-12]
	sub	r3, fp, #164
	mov	r2, #68
	mov	r1, #0
	mov	r0, r3
	bl	memset
	ldr	r3, [fp, #-168]
	mov	r2, #1024
	mov	r1, #0
	mov	r0, r3
	bl	memset
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L790
.L791:
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-172]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	lsl	r3, r2, #2
	sub	r1, fp, #4
	add	r3, r1, r3
	ldr	r3, [r3, #-160]
	add	r1, r3, #1
	lsl	r3, r2, #2
	sub	r2, fp, #4
	add	r3, r2, r3
	str	r1, [r3, #-160]
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L790:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-176]
	cmp	r2, r3
	blt	.L791
	mov	r3, #0
	str	r3, [fp, #-164]
	mov	r3, #1
	str	r3, [fp, #-8]
	b	.L792
.L795:
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #2
	sub	r2, fp, #4
	add	r3, r2, r3
	ldr	r2, [r3, #-160]
	mov	r1, #1
	ldr	r3, [fp, #-8]
	lsl	r3, r1, r3
	cmp	r2, r3
	ble	.L793
	mov	r3, #0
	b	.L805
.L793:
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L792:
	ldr	r3, [fp, #-8]
	cmp	r3, #15
	ble	.L795
	mov	r3, #0
	str	r3, [fp, #-16]
	mov	r3, #1
	str	r3, [fp, #-8]
	b	.L796
.L798:
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #2
	sub	r2, fp, #4
	add	r3, r2, r3
	ldr	r2, [fp, #-16]
	str	r2, [r3, #-92]
	ldr	r3, [fp, #-16]
	uxth	r2, r3
	ldr	r1, [fp, #-168]
	ldr	r3, [fp, #-8]
	add	r3, r3, #512
	lsl	r3, r3, #1
	add	r3, r1, r3
	strh	r2, [r3]	@ movhi
	ldr	r3, [fp, #-12]
	uxth	r2, r3
	ldr	r1, [fp, #-168]
	ldr	r3, [fp, #-8]
	add	r3, r3, #560
	lsl	r3, r3, #1
	add	r3, r1, r3
	add	r3, r3, #4
	strh	r2, [r3]	@ movhi
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #2
	sub	r2, fp, #4
	add	r3, r2, r3
	ldr	r3, [r3, #-160]
	ldr	r2, [fp, #-16]
	add	r3, r2, r3
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #2
	sub	r2, fp, #4
	add	r3, r2, r3
	ldr	r3, [r3, #-160]
	cmp	r3, #0
	beq	.L797
	mov	r2, #1
	ldr	r3, [fp, #-8]
	lsl	r3, r2, r3
	ldr	r2, [fp, #-16]
	cmp	r2, r3
	ble	.L797
	mov	r3, #0
	b	.L805
.L797:
	ldr	r3, [fp, #-8]
	rsb	r3, r3, #16
	ldr	r2, [fp, #-16]
	lsl	r1, r2, r3
	ldr	r3, [fp, #-168]
	ldr	r2, [fp, #-8]
	add	r2, r2, #264
	str	r1, [r3, r2, lsl #2]
	ldr	r3, [fp, #-16]
	lsl	r3, r3, #1
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #2
	sub	r2, fp, #4
	add	r3, r2, r3
	ldr	r3, [r3, #-160]
	ldr	r2, [fp, #-12]
	add	r3, r2, r3
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L796:
	ldr	r3, [fp, #-8]
	cmp	r3, #15
	ble	.L798
	ldr	r3, [fp, #-168]
	mov	r2, #65536
	str	r2, [r3, #1120]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L799
.L804:
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-172]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	beq	.L800
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #2
	sub	r2, fp, #4
	add	r3, r2, r3
	ldr	r3, [r3, #-92]
	ldr	r1, [fp, #-168]
	ldr	r2, [fp, #-24]
	add	r2, r2, #512
	lsl	r2, r2, #1
	add	r2, r1, r2
	ldrh	r2, [r2]
	sub	r3, r3, r2
	ldr	r1, [fp, #-168]
	ldr	r2, [fp, #-24]
	add	r2, r2, #560
	lsl	r2, r2, #1
	add	r2, r1, r2
	add	r2, r2, #4
	ldrh	r2, [r2]
	add	r3, r3, r2
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #9
	sxth	r2, r3
	ldr	r3, [fp, #-8]
	sxth	r3, r3
	orr	r3, r2, r3
	sxth	r3, r3
	strh	r3, [fp, #-30]	@ movhi
	ldr	r3, [fp, #-24]
	uxtb	r1, r3
	ldr	r2, [fp, #-168]
	ldr	r3, [fp, #-28]
	add	r3, r2, r3
	add	r3, r3, #1152
	add	r3, r3, #4
	mov	r2, r1
	strb	r2, [r3]
	ldr	r3, [fp, #-8]
	uxth	r2, r3
	ldr	r1, [fp, #-168]
	ldr	r3, [fp, #-28]
	add	r3, r3, #720
	lsl	r3, r3, #1
	add	r3, r1, r3
	add	r3, r3, #4
	strh	r2, [r3]	@ movhi
	ldr	r3, [fp, #-24]
	cmp	r3, #9
	bgt	.L801
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #2
	sub	r2, fp, #4
	add	r3, r2, r3
	ldr	r3, [r3, #-92]
	ldr	r1, [fp, #-24]
	mov	r0, r3
	bl	stbi__bit_reverse
	str	r0, [fp, #-20]
	b	.L802
.L803:
	ldr	r2, [fp, #-168]
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #1
	add	r3, r2, r3
	ldrh	r2, [fp, #-30]	@ movhi
	strh	r2, [r3]	@ movhi
	mov	r2, #1
	ldr	r3, [fp, #-24]
	lsl	r3, r2, r3
	ldr	r2, [fp, #-20]
	add	r3, r2, r3
	str	r3, [fp, #-20]
.L802:
	ldr	r3, [fp, #-20]
	cmp	r3, #512
	blt	.L803
.L801:
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #2
	sub	r2, fp, #4
	add	r3, r2, r3
	ldr	r3, [r3, #-92]
	add	r2, r3, #1
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #2
	sub	r1, fp, #4
	add	r3, r1, r3
	str	r2, [r3, #-92]
.L800:
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L799:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-176]
	cmp	r2, r3
	blt	.L804
	mov	r3, #1
.L805:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__zbuild_huffman, .-stbi__zbuild_huffman
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__zget8, %function
stbi__zget8:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	ldr	r2, [r3]
	ldr	r3, [fp, #-8]
	ldr	r3, [r3, #4]
	cmp	r2, r3
	bcc	.L807
	mov	r3, #0
	b	.L808
.L807:
	ldr	r3, [fp, #-8]
	ldr	r3, [r3]
	add	r1, r3, #1
	ldr	r2, [fp, #-8]
	str	r1, [r2]
	ldrb	r3, [r3]	@ zero_extendqisi2
.L808:
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	stbi__zget8, .-stbi__zget8
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__fill_bits, %function
stbi__fill_bits:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
.L810:
	ldr	r0, [fp, #-8]
	bl	stbi__zget8
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [fp, #-8]
	ldr	r3, [r3, #8]
	lsl	r2, r2, r3
	ldr	r3, [fp, #-8]
	ldr	r3, [r3, #12]
	orr	r2, r2, r3
	ldr	r3, [fp, #-8]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-8]
	ldr	r3, [r3, #8]
	add	r2, r3, #8
	ldr	r3, [fp, #-8]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-8]
	ldr	r3, [r3, #8]
	cmp	r3, #24
	ble	.L810
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__fill_bits, .-stbi__fill_bits
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__zreceive, %function
stbi__zreceive:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #8]
	ldr	r2, [fp, #-20]
	cmp	r2, r3
	ble	.L812
	ldr	r0, [fp, #-16]
	bl	stbi__fill_bits
.L812:
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #12]
	mov	r1, #1
	ldr	r2, [fp, #-20]
	lsl	r2, r1, r2
	sub	r2, r2, #1
	and	r3, r3, r2
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-16]
	ldr	r2, [r3, #12]
	ldr	r3, [fp, #-20]
	lsr	r2, r2, r3
	ldr	r3, [fp, #-16]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-16]
	ldr	r2, [r3, #8]
	ldr	r3, [fp, #-20]
	sub	r2, r2, r3
	ldr	r3, [fp, #-16]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__zreceive, .-stbi__zreceive
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__zhuffman_decode_slowpath, %function
stbi__zhuffman_decode_slowpath:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #24
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #12]
	mov	r1, #16
	mov	r0, r3
	bl	stbi__bit_reverse
	str	r0, [fp, #-12]
	mov	r3, #10
	str	r3, [fp, #-8]
.L817:
	ldr	r3, [fp, #-28]
	ldr	r2, [fp, #-8]
	add	r2, r2, #264
	ldr	r3, [r3, r2, lsl #2]
	ldr	r2, [fp, #-12]
	cmp	r2, r3
	blt	.L821
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
	b	.L817
.L821:
	nop
	ldr	r3, [fp, #-8]
	cmp	r3, #16
	bne	.L818
	mvn	r3, #0
	b	.L819
.L818:
	ldr	r3, [fp, #-8]
	rsb	r3, r3, #16
	ldr	r2, [fp, #-12]
	asr	r3, r2, r3
	ldr	r1, [fp, #-28]
	ldr	r2, [fp, #-8]
	add	r2, r2, #512
	lsl	r2, r2, #1
	add	r2, r1, r2
	ldrh	r2, [r2]
	sub	r3, r3, r2
	ldr	r1, [fp, #-28]
	ldr	r2, [fp, #-8]
	add	r2, r2, #560
	lsl	r2, r2, #1
	add	r2, r1, r2
	add	r2, r2, #4
	ldrh	r2, [r2]
	add	r3, r3, r2
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-24]
	ldr	r2, [r3, #12]
	ldr	r3, [fp, #-8]
	lsr	r2, r2, r3
	ldr	r3, [fp, #-24]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-24]
	ldr	r2, [r3, #8]
	ldr	r3, [fp, #-8]
	sub	r2, r2, r3
	ldr	r3, [fp, #-24]
	str	r2, [r3, #8]
	ldr	r2, [fp, #-28]
	ldr	r3, [fp, #-16]
	add	r3, r3, #720
	lsl	r3, r3, #1
	add	r3, r2, r3
	add	r3, r3, #4
	ldrh	r3, [r3]
.L819:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__zhuffman_decode_slowpath, .-stbi__zhuffman_decode_slowpath
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__zhuffman_decode, %function
stbi__zhuffman_decode:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #8]
	cmp	r3, #15
	bgt	.L823
	ldr	r0, [fp, #-16]
	bl	stbi__fill_bits
.L823:
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #12]
	ubfx	r3, r3, #0, #9
	ldr	r2, [fp, #-20]
	lsl	r3, r3, #1
	add	r3, r2, r3
	ldrh	r3, [r3]
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	beq	.L824
	ldr	r3, [fp, #-8]
	asr	r3, r3, #9
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-16]
	ldr	r2, [r3, #12]
	ldr	r3, [fp, #-12]
	lsr	r2, r2, r3
	ldr	r3, [fp, #-16]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-16]
	ldr	r2, [r3, #8]
	ldr	r3, [fp, #-12]
	sub	r2, r2, r3
	ldr	r3, [fp, #-16]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-8]
	ubfx	r3, r3, #0, #9
	b	.L825
.L824:
	ldr	r1, [fp, #-20]
	ldr	r0, [fp, #-16]
	bl	stbi__zhuffman_decode_slowpath
	mov	r3, r0
.L825:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__zhuffman_decode, .-stbi__zhuffman_decode
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__zexpand, %function
stbi__zexpand:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #32
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	str	r2, [fp, #-32]
	ldr	r3, [fp, #-24]
	ldr	r2, [fp, #-28]
	str	r2, [r3, #16]
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #28]
	cmp	r3, #0
	bne	.L827
	mov	r3, #0
	b	.L828
.L827:
	ldr	r3, [fp, #-24]
	ldr	r2, [r3, #16]
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #20]
	sub	r3, r2, r3
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-24]
	ldr	r2, [r3, #24]
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #20]
	sub	r3, r2, r3
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-8]
	b	.L829
.L830:
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #1
	str	r3, [fp, #-8]
.L829:
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-32]
	add	r3, r2, r3
	ldr	r2, [fp, #-8]
	cmp	r2, r3
	blt	.L830
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #20]
	ldr	r2, [fp, #-8]
	mov	r1, r2
	mov	r0, r3
	bl	realloc
	str	r0, [fp, #-20]
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	bne	.L831
	mov	r3, #0
	b	.L828
.L831:
	ldr	r3, [fp, #-24]
	ldr	r2, [fp, #-20]
	str	r2, [r3, #20]
	ldr	r3, [fp, #-12]
	ldr	r2, [fp, #-20]
	add	r2, r2, r3
	ldr	r3, [fp, #-24]
	str	r2, [r3, #16]
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-20]
	add	r2, r2, r3
	ldr	r3, [fp, #-24]
	str	r2, [r3, #24]
	mov	r3, #1
.L828:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__zexpand, .-stbi__zexpand
	.section	.rodata
	.align	2
	.type	stbi__zlength_base, %object
	.size	stbi__zlength_base, 124
stbi__zlength_base:
	.word	3
	.word	4
	.word	5
	.word	6
	.word	7
	.word	8
	.word	9
	.word	10
	.word	11
	.word	13
	.word	15
	.word	17
	.word	19
	.word	23
	.word	27
	.word	31
	.word	35
	.word	43
	.word	51
	.word	59
	.word	67
	.word	83
	.word	99
	.word	115
	.word	131
	.word	163
	.word	195
	.word	227
	.word	258
	.word	0
	.word	0
	.align	2
	.type	stbi__zlength_extra, %object
	.size	stbi__zlength_extra, 124
stbi__zlength_extra:
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	0
	.word	1
	.word	1
	.word	1
	.word	1
	.word	2
	.word	2
	.word	2
	.word	2
	.word	3
	.word	3
	.word	3
	.word	3
	.word	4
	.word	4
	.word	4
	.word	4
	.word	5
	.word	5
	.word	5
	.word	5
	.word	0
	.word	0
	.word	0
	.align	2
	.type	stbi__zdist_base, %object
	.size	stbi__zdist_base, 128
stbi__zdist_base:
	.word	1
	.word	2
	.word	3
	.word	4
	.word	5
	.word	7
	.word	9
	.word	13
	.word	17
	.word	25
	.word	33
	.word	49
	.word	65
	.word	97
	.word	129
	.word	193
	.word	257
	.word	385
	.word	513
	.word	769
	.word	1025
	.word	1537
	.word	2049
	.word	3073
	.word	4097
	.word	6145
	.word	8193
	.word	12289
	.word	16385
	.word	24577
	.word	0
	.word	0
	.align	2
	.type	stbi__zdist_extra, %object
	.size	stbi__zdist_extra, 128
stbi__zdist_extra:
	.word	0
	.word	0
	.word	0
	.word	0
	.word	1
	.word	1
	.word	2
	.word	2
	.word	3
	.word	3
	.word	4
	.word	4
	.word	5
	.word	5
	.word	6
	.word	6
	.word	7
	.word	7
	.word	8
	.word	8
	.word	9
	.word	9
	.word	10
	.word	10
	.word	11
	.word	11
	.word	12
	.word	12
	.word	13
	.word	13
	.space	8
	.text
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__parse_huffman_block, %function
stbi__parse_huffman_block:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #32
	str	r0, [fp, #-32]
	ldr	r3, [fp, #-32]
	ldr	r3, [r3, #16]
	str	r3, [fp, #-8]
.L850:
	ldr	r3, [fp, #-32]
	add	r3, r3, #32
	mov	r1, r3
	ldr	r0, [fp, #-32]
	bl	stbi__zhuffman_decode
	str	r0, [fp, #-24]
	ldr	r3, [fp, #-24]
	cmp	r3, #255
	bgt	.L833
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	bge	.L834
	mov	r3, #0
	b	.L835
.L834:
	ldr	r3, [fp, #-32]
	ldr	r3, [r3, #24]
	ldr	r2, [fp, #-8]
	cmp	r2, r3
	bcc	.L836
	mov	r2, #1
	ldr	r1, [fp, #-8]
	ldr	r0, [fp, #-32]
	bl	stbi__zexpand
	mov	r3, r0
	cmp	r3, #0
	bne	.L837
	mov	r3, #0
	b	.L835
.L837:
	ldr	r3, [fp, #-32]
	ldr	r3, [r3, #16]
	str	r3, [fp, #-8]
.L836:
	ldr	r3, [fp, #-8]
	add	r2, r3, #1
	str	r2, [fp, #-8]
	ldr	r2, [fp, #-24]
	uxtb	r2, r2
	strb	r2, [r3]
	b	.L850
.L833:
	ldr	r3, [fp, #-24]
	cmp	r3, #256
	bne	.L839
	ldr	r3, [fp, #-32]
	ldr	r2, [fp, #-8]
	str	r2, [r3, #16]
	mov	r3, #1
	b	.L835
.L839:
	ldr	r3, [fp, #-24]
	sub	r3, r3, #256
	sub	r3, r3, #1
	str	r3, [fp, #-24]
	movw	r3, #:lower16:stbi__zlength_base
	movt	r3, #:upper16:stbi__zlength_base
	ldr	r2, [fp, #-24]
	ldr	r3, [r3, r2, lsl #2]
	str	r3, [fp, #-16]
	movw	r3, #:lower16:stbi__zlength_extra
	movt	r3, #:upper16:stbi__zlength_extra
	ldr	r2, [fp, #-24]
	ldr	r3, [r3, r2, lsl #2]
	cmp	r3, #0
	beq	.L840
	movw	r3, #:lower16:stbi__zlength_extra
	movt	r3, #:upper16:stbi__zlength_extra
	ldr	r2, [fp, #-24]
	ldr	r3, [r3, r2, lsl #2]
	mov	r1, r3
	ldr	r0, [fp, #-32]
	bl	stbi__zreceive
	mov	r2, r0
	ldr	r3, [fp, #-16]
	add	r3, r2, r3
	str	r3, [fp, #-16]
.L840:
	ldr	r3, [fp, #-32]
	add	r3, r3, #2048
	add	r3, r3, #4
	mov	r1, r3
	ldr	r0, [fp, #-32]
	bl	stbi__zhuffman_decode
	str	r0, [fp, #-24]
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	bge	.L841
	mov	r3, #0
	b	.L835
.L841:
	movw	r3, #:lower16:stbi__zdist_base
	movt	r3, #:upper16:stbi__zdist_base
	ldr	r2, [fp, #-24]
	ldr	r3, [r3, r2, lsl #2]
	str	r3, [fp, #-20]
	movw	r3, #:lower16:stbi__zdist_extra
	movt	r3, #:upper16:stbi__zdist_extra
	ldr	r2, [fp, #-24]
	ldr	r3, [r3, r2, lsl #2]
	cmp	r3, #0
	beq	.L842
	movw	r3, #:lower16:stbi__zdist_extra
	movt	r3, #:upper16:stbi__zdist_extra
	ldr	r2, [fp, #-24]
	ldr	r3, [r3, r2, lsl #2]
	mov	r1, r3
	ldr	r0, [fp, #-32]
	bl	stbi__zreceive
	mov	r2, r0
	ldr	r3, [fp, #-20]
	add	r3, r2, r3
	str	r3, [fp, #-20]
.L842:
	ldr	r3, [fp, #-32]
	ldr	r3, [r3, #20]
	ldr	r2, [fp, #-8]
	sub	r3, r2, r3
	ldr	r2, [fp, #-20]
	cmp	r2, r3
	ble	.L843
	mov	r3, #0
	b	.L835
.L843:
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-8]
	add	r2, r2, r3
	ldr	r3, [fp, #-32]
	ldr	r3, [r3, #24]
	cmp	r2, r3
	bls	.L844
	ldr	r2, [fp, #-16]
	ldr	r1, [fp, #-8]
	ldr	r0, [fp, #-32]
	bl	stbi__zexpand
	mov	r3, r0
	cmp	r3, #0
	bne	.L845
	mov	r3, #0
	b	.L835
.L845:
	ldr	r3, [fp, #-32]
	ldr	r3, [r3, #16]
	str	r3, [fp, #-8]
.L844:
	ldr	r3, [fp, #-20]
	rsb	r3, r3, #0
	ldr	r2, [fp, #-8]
	add	r3, r2, r3
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-20]
	cmp	r3, #1
	bne	.L846
	ldr	r3, [fp, #-12]
	ldrb	r3, [r3]
	strb	r3, [fp, #-25]
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	beq	.L850
.L848:
	ldr	r3, [fp, #-8]
	add	r2, r3, #1
	str	r2, [fp, #-8]
	ldrb	r2, [fp, #-25]
	strb	r2, [r3]
	ldr	r3, [fp, #-16]
	sub	r3, r3, #1
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	bne	.L848
	b	.L850
.L846:
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	beq	.L850
.L849:
	ldr	r2, [fp, #-12]
	add	r3, r2, #1
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-8]
	add	r1, r3, #1
	str	r1, [fp, #-8]
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
	ldr	r3, [fp, #-16]
	sub	r3, r3, #1
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	bne	.L849
	b	.L850
.L835:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__parse_huffman_block, .-stbi__parse_huffman_block
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__compute_huffman_codes, %function
stbi__compute_huffman_codes:
	@ args = 0, pretend = 0, frame = 2544
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #2544
	str	r0, [fp, #-2544]
	mov	r1, #5
	ldr	r0, [fp, #-2544]
	bl	stbi__zreceive
	mov	r3, r0
	add	r3, r3, #256
	add	r3, r3, #1
	str	r3, [fp, #-24]
	mov	r1, #5
	ldr	r0, [fp, #-2544]
	bl	stbi__zreceive
	mov	r3, r0
	add	r3, r3, #1
	str	r3, [fp, #-28]
	mov	r1, #4
	ldr	r0, [fp, #-2544]
	bl	stbi__zreceive
	mov	r3, r0
	add	r3, r3, #4
	str	r3, [fp, #-32]
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-28]
	add	r3, r2, r3
	str	r3, [fp, #-36]
	sub	r3, fp, #2528
	sub	r3, r3, #4
	sub	r3, r3, #4
	mov	r2, #19
	mov	r1, #0
	mov	r0, r3
	bl	memset
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L852
.L853:
	mov	r1, #3
	ldr	r0, [fp, #-2544]
	bl	stbi__zreceive
	mov	r3, r0
	str	r3, [fp, #-40]
	movw	r3, #:lower16:length_dezigzag.9476
	movt	r3, #:upper16:length_dezigzag.9476
	ldr	r2, [fp, #-8]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldr	r2, [fp, #-40]
	uxtb	r2, r2
	sub	r1, fp, #4
	add	r3, r1, r3
	strb	r2, [r3, #-2532]
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L852:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-32]
	cmp	r2, r3
	blt	.L853
	sub	r1, fp, #2528
	sub	r1, r1, #4
	sub	r1, r1, #4
	sub	r3, fp, #2048
	sub	r3, r3, #4
	sub	r3, r3, #8
	mov	r2, #19
	mov	r0, r3
	bl	stbi__zbuild_huffman
	mov	r3, r0
	cmp	r3, #0
	bne	.L854
	mov	r3, #0
	b	.L869
.L854:
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L856
.L865:
	sub	r3, fp, #2048
	sub	r3, r3, #4
	sub	r3, r3, #8
	mov	r1, r3
	ldr	r0, [fp, #-2544]
	bl	stbi__zhuffman_decode
	str	r0, [fp, #-16]
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	blt	.L857
	ldr	r3, [fp, #-16]
	cmp	r3, #18
	ble	.L858
.L857:
	mov	r3, #0
	b	.L869
.L858:
	ldr	r3, [fp, #-16]
	cmp	r3, #15
	bgt	.L859
	ldr	r3, [fp, #-12]
	add	r2, r3, #1
	str	r2, [fp, #-12]
	ldr	r2, [fp, #-16]
	uxtb	r2, r2
	sub	r1, fp, #4
	add	r3, r1, r3
	strb	r2, [r3, #-2512]
	b	.L856
.L859:
	mov	r3, #0
	strb	r3, [fp, #-17]
	ldr	r3, [fp, #-16]
	cmp	r3, #16
	bne	.L860
	mov	r1, #2
	ldr	r0, [fp, #-2544]
	bl	stbi__zreceive
	mov	r3, r0
	add	r3, r3, #3
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	bne	.L861
	mov	r3, #0
	b	.L869
.L861:
	ldr	r3, [fp, #-12]
	sub	r3, r3, #1
	sub	r2, fp, #4
	add	r3, r2, r3
	ldrb	r3, [r3, #-2512]
	strb	r3, [fp, #-17]
	b	.L862
.L860:
	ldr	r3, [fp, #-16]
	cmp	r3, #17
	bne	.L863
	mov	r1, #3
	ldr	r0, [fp, #-2544]
	bl	stbi__zreceive
	mov	r3, r0
	add	r3, r3, #3
	str	r3, [fp, #-16]
	b	.L862
.L863:
	mov	r1, #7
	ldr	r0, [fp, #-2544]
	bl	stbi__zreceive
	mov	r3, r0
	add	r3, r3, #11
	str	r3, [fp, #-16]
.L862:
	ldr	r2, [fp, #-36]
	ldr	r3, [fp, #-12]
	sub	r3, r2, r3
	ldr	r2, [fp, #-16]
	cmp	r2, r3
	ble	.L864
	mov	r3, #0
	b	.L869
.L864:
	ldr	r3, [fp, #-12]
	sub	r2, fp, #2512
	sub	r2, r2, #4
	add	r3, r2, r3
	ldrb	r1, [fp, #-17]	@ zero_extendqisi2
	ldr	r2, [fp, #-16]
	mov	r0, r3
	bl	memset
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-16]
	add	r3, r2, r3
	str	r3, [fp, #-12]
.L856:
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-36]
	cmp	r2, r3
	blt	.L865
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-36]
	cmp	r2, r3
	beq	.L866
	mov	r3, #0
	b	.L869
.L866:
	ldr	r3, [fp, #-2544]
	add	r3, r3, #32
	sub	r1, fp, #2512
	sub	r1, r1, #4
	ldr	r2, [fp, #-24]
	mov	r0, r3
	bl	stbi__zbuild_huffman
	mov	r3, r0
	cmp	r3, #0
	bne	.L867
	mov	r3, #0
	b	.L869
.L867:
	ldr	r3, [fp, #-2544]
	add	r3, r3, #2048
	add	r3, r3, #4
	ldr	r2, [fp, #-24]
	sub	r1, fp, #2512
	sub	r1, r1, #4
	add	r1, r1, r2
	ldr	r2, [fp, #-28]
	mov	r0, r3
	bl	stbi__zbuild_huffman
	mov	r3, r0
	cmp	r3, #0
	bne	.L868
	mov	r3, #0
	b	.L869
.L868:
	mov	r3, #1
.L869:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__compute_huffman_codes, .-stbi__compute_huffman_codes
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__parse_uncompressed_block, %function
stbi__parse_uncompressed_block:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, fp, lr}
	add	fp, sp, #8
	sub	sp, sp, #28
	str	r0, [fp, #-32]
	ldr	r3, [fp, #-32]
	ldr	r3, [r3, #8]
	and	r3, r3, #7
	cmp	r3, #0
	beq	.L871
	ldr	r3, [fp, #-32]
	ldr	r3, [r3, #8]
	and	r3, r3, #7
	mov	r1, r3
	ldr	r0, [fp, #-32]
	bl	stbi__zreceive
.L871:
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L872
.L873:
	ldr	r3, [fp, #-32]
	ldr	r1, [r3, #12]
	ldr	r3, [fp, #-16]
	add	r2, r3, #1
	str	r2, [fp, #-16]
	uxtb	r2, r1
	sub	r1, fp, #12
	add	r3, r1, r3
	strb	r2, [r3, #-16]
	ldr	r3, [fp, #-32]
	ldr	r3, [r3, #12]
	lsr	r2, r3, #8
	ldr	r3, [fp, #-32]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-32]
	ldr	r3, [r3, #8]
	sub	r2, r3, #8
	ldr	r3, [fp, #-32]
	str	r2, [r3, #8]
.L872:
	ldr	r3, [fp, #-32]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	bgt	.L873
	b	.L874
.L875:
	ldr	r4, [fp, #-16]
	add	r3, r4, #1
	str	r3, [fp, #-16]
	ldr	r0, [fp, #-32]
	bl	stbi__zget8
	mov	r3, r0
	mov	r2, r3
	sub	r3, fp, #12
	add	r3, r3, r4
	strb	r2, [r3, #-16]
.L874:
	ldr	r3, [fp, #-16]
	cmp	r3, #3
	ble	.L875
	ldrb	r3, [fp, #-27]	@ zero_extendqisi2
	lsl	r3, r3, #8
	ldrb	r2, [fp, #-28]	@ zero_extendqisi2
	add	r3, r3, r2
	str	r3, [fp, #-20]
	ldrb	r3, [fp, #-25]	@ zero_extendqisi2
	lsl	r3, r3, #8
	ldrb	r2, [fp, #-26]	@ zero_extendqisi2
	add	r3, r3, r2
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-20]
	eor	r3, r3, #65280
	eor	r3, r3, #255
	ldr	r2, [fp, #-24]
	cmp	r2, r3
	beq	.L876
	mov	r3, #0
	b	.L880
.L876:
	ldr	r3, [fp, #-32]
	ldr	r2, [r3]
	ldr	r3, [fp, #-20]
	add	r2, r2, r3
	ldr	r3, [fp, #-32]
	ldr	r3, [r3, #4]
	cmp	r2, r3
	bls	.L878
	mov	r3, #0
	b	.L880
.L878:
	ldr	r3, [fp, #-32]
	ldr	r2, [r3, #16]
	ldr	r3, [fp, #-20]
	add	r2, r2, r3
	ldr	r3, [fp, #-32]
	ldr	r3, [r3, #24]
	cmp	r2, r3
	bls	.L879
	ldr	r3, [fp, #-32]
	ldr	r3, [r3, #16]
	ldr	r2, [fp, #-20]
	mov	r1, r3
	ldr	r0, [fp, #-32]
	bl	stbi__zexpand
	mov	r3, r0
	cmp	r3, #0
	bne	.L879
	mov	r3, #0
	b	.L880
.L879:
	ldr	r3, [fp, #-32]
	ldr	r0, [r3, #16]
	ldr	r3, [fp, #-32]
	ldr	r3, [r3]
	ldr	r2, [fp, #-20]
	mov	r1, r3
	bl	memcpy
	ldr	r3, [fp, #-32]
	ldr	r2, [r3]
	ldr	r3, [fp, #-20]
	add	r2, r2, r3
	ldr	r3, [fp, #-32]
	str	r2, [r3]
	ldr	r3, [fp, #-32]
	ldr	r2, [r3, #16]
	ldr	r3, [fp, #-20]
	add	r2, r2, r3
	ldr	r3, [fp, #-32]
	str	r2, [r3, #16]
	mov	r3, #1
.L880:
	mov	r0, r3
	sub	sp, fp, #8
	@ sp needed
	pop	{r4, fp, pc}
	.size	stbi__parse_uncompressed_block, .-stbi__parse_uncompressed_block
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__parse_zlib_header, %function
stbi__parse_zlib_header:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #24
	str	r0, [fp, #-24]
	ldr	r0, [fp, #-24]
	bl	stbi__zget8
	mov	r3, r0
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	and	r3, r3, #15
	str	r3, [fp, #-12]
	ldr	r0, [fp, #-24]
	bl	stbi__zget8
	mov	r3, r0
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-8]
	lsl	r2, r3, #8
	ldr	r3, [fp, #-16]
	add	r2, r2, r3
	movw	r3, #2115
	movt	r3, 33825
	smull	r1, r3, r3, r2
	add	r3, r3, r2
	asr	r1, r3, #4
	asr	r3, r2, #31
	sub	r1, r1, r3
	mov	r3, r1
	lsl	r3, r3, #5
	sub	r3, r3, r1
	sub	r1, r2, r3
	cmp	r1, #0
	beq	.L882
	mov	r3, #0
	b	.L883
.L882:
	ldr	r3, [fp, #-16]
	and	r3, r3, #32
	cmp	r3, #0
	beq	.L884
	mov	r3, #0
	b	.L883
.L884:
	ldr	r3, [fp, #-12]
	cmp	r3, #8
	beq	.L885
	mov	r3, #0
	b	.L883
.L885:
	mov	r3, #1
.L883:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__parse_zlib_header, .-stbi__parse_zlib_header
	.section	.rodata
	.align	2
	.type	stbi__zdefault_length, %object
	.size	stbi__zdefault_length, 288
stbi__zdefault_length:
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	9
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	7
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.byte	8
	.align	2
	.type	stbi__zdefault_distance, %object
	.size	stbi__zdefault_distance, 32
stbi__zdefault_distance:
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.text
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__parse_zlib, %function
stbi__parse_zlib:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	beq	.L887
	ldr	r0, [fp, #-16]
	bl	stbi__parse_zlib_header
	mov	r3, r0
	cmp	r3, #0
	bne	.L887
	mov	r3, #0
	b	.L888
.L887:
	ldr	r3, [fp, #-16]
	mov	r2, #0
	str	r2, [r3, #8]
	ldr	r3, [fp, #-16]
	mov	r2, #0
	str	r2, [r3, #12]
.L895:
	mov	r1, #1
	ldr	r0, [fp, #-16]
	bl	stbi__zreceive
	mov	r3, r0
	str	r3, [fp, #-8]
	mov	r1, #2
	ldr	r0, [fp, #-16]
	bl	stbi__zreceive
	mov	r3, r0
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	bne	.L889
	ldr	r0, [fp, #-16]
	bl	stbi__parse_uncompressed_block
	mov	r3, r0
	cmp	r3, #0
	bne	.L890
	mov	r3, #0
	b	.L888
.L889:
	ldr	r3, [fp, #-12]
	cmp	r3, #3
	bne	.L891
	mov	r3, #0
	b	.L888
.L891:
	ldr	r3, [fp, #-12]
	cmp	r3, #1
	bne	.L892
	ldr	r3, [fp, #-16]
	add	r3, r3, #32
	mov	r2, #288
	movw	r1, #:lower16:stbi__zdefault_length
	movt	r1, #:upper16:stbi__zdefault_length
	mov	r0, r3
	bl	stbi__zbuild_huffman
	mov	r3, r0
	cmp	r3, #0
	bne	.L893
	mov	r3, #0
	b	.L888
.L893:
	ldr	r3, [fp, #-16]
	add	r3, r3, #2048
	add	r3, r3, #4
	mov	r2, #32
	movw	r1, #:lower16:stbi__zdefault_distance
	movt	r1, #:upper16:stbi__zdefault_distance
	mov	r0, r3
	bl	stbi__zbuild_huffman
	mov	r3, r0
	cmp	r3, #0
	bne	.L894
	mov	r3, #0
	b	.L888
.L892:
	ldr	r0, [fp, #-16]
	bl	stbi__compute_huffman_codes
	mov	r3, r0
	cmp	r3, #0
	bne	.L894
	mov	r3, #0
	b	.L888
.L894:
	ldr	r0, [fp, #-16]
	bl	stbi__parse_huffman_block
	mov	r3, r0
	cmp	r3, #0
	bne	.L890
	mov	r3, #0
	b	.L888
.L890:
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	beq	.L895
	mov	r3, #1
.L888:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__parse_zlib, .-stbi__parse_zlib
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__do_zlib, %function
stbi__do_zlib:
	@ args = 4, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-12]
	str	r2, [r3, #20]
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-12]
	str	r2, [r3, #16]
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-12]
	add	r2, r2, r3
	ldr	r3, [fp, #-8]
	str	r2, [r3, #24]
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-20]
	str	r2, [r3, #28]
	ldr	r1, [fp, #4]
	ldr	r0, [fp, #-8]
	bl	stbi__parse_zlib
	mov	r3, r0
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__do_zlib, .-stbi__do_zlib
	.align	2
	.global	stbi_zlib_decode_malloc_guesssize
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi_zlib_decode_malloc_guesssize, %function
stbi_zlib_decode_malloc_guesssize:
	@ args = 0, pretend = 0, frame = 4096
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #4096
	sub	sp, sp, #8
	str	r0, [fp, #-4088]
	str	r1, [fp, #-4092]
	sub	r1, fp, #4096
	str	r2, [r1]
	sub	r2, fp, #4096
	sub	r2, r2, #4
	str	r3, [r2]
	sub	r3, fp, #4096
	ldr	r3, [r3]
	mov	r0, r3
	bl	stbi__malloc
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	bne	.L899
	mov	r3, #0
	b	.L903
.L899:
	ldr	r3, [fp, #-4088]
	str	r3, [fp, #-4080]
	ldr	r3, [fp, #-4092]
	ldr	r2, [fp, #-4088]
	add	r3, r2, r3
	str	r3, [fp, #-4076]
	sub	r0, fp, #4064
	sub	r0, r0, #4
	sub	r0, r0, #12
	mov	r3, #1
	str	r3, [sp]
	mov	r3, #1
	sub	r2, fp, #4096
	ldr	r2, [r2]
	ldr	r1, [fp, #-8]
	bl	stbi__do_zlib
	mov	r3, r0
	cmp	r3, #0
	beq	.L901
	sub	r3, fp, #4096
	sub	r3, r3, #4
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L902
	ldr	r2, [fp, #-4064]
	ldr	r3, [fp, #-4060]
	sub	r2, r2, r3
	sub	r3, fp, #4096
	sub	r3, r3, #4
	ldr	r3, [r3]
	str	r2, [r3]
.L902:
	ldr	r3, [fp, #-4060]
	b	.L903
.L901:
	ldr	r3, [fp, #-4060]
	mov	r0, r3
	bl	free
	mov	r3, #0
.L903:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi_zlib_decode_malloc_guesssize, .-stbi_zlib_decode_malloc_guesssize
	.align	2
	.global	stbi_zlib_decode_malloc
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi_zlib_decode_malloc, %function
stbi_zlib_decode_malloc:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	ldr	r3, [fp, #-16]
	mov	r2, #16384
	ldr	r1, [fp, #-12]
	ldr	r0, [fp, #-8]
	bl	stbi_zlib_decode_malloc_guesssize
	mov	r3, r0
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi_zlib_decode_malloc, .-stbi_zlib_decode_malloc
	.align	2
	.global	stbi_zlib_decode_malloc_guesssize_headerflag
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi_zlib_decode_malloc_guesssize_headerflag, %function
stbi_zlib_decode_malloc_guesssize_headerflag:
	@ args = 4, pretend = 0, frame = 4096
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #4096
	sub	sp, sp, #8
	str	r0, [fp, #-4088]
	str	r1, [fp, #-4092]
	sub	r1, fp, #4096
	str	r2, [r1]
	sub	r2, fp, #4096
	sub	r2, r2, #4
	str	r3, [r2]
	sub	r3, fp, #4096
	ldr	r3, [r3]
	mov	r0, r3
	bl	stbi__malloc
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	bne	.L907
	mov	r3, #0
	b	.L911
.L907:
	ldr	r3, [fp, #-4088]
	str	r3, [fp, #-4080]
	ldr	r3, [fp, #-4092]
	ldr	r2, [fp, #-4088]
	add	r3, r2, r3
	str	r3, [fp, #-4076]
	sub	r0, fp, #4064
	sub	r0, r0, #4
	sub	r0, r0, #12
	ldr	r3, [fp, #4]
	str	r3, [sp]
	mov	r3, #1
	sub	r2, fp, #4096
	ldr	r2, [r2]
	ldr	r1, [fp, #-8]
	bl	stbi__do_zlib
	mov	r3, r0
	cmp	r3, #0
	beq	.L909
	sub	r3, fp, #4096
	sub	r3, r3, #4
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L910
	ldr	r2, [fp, #-4064]
	ldr	r3, [fp, #-4060]
	sub	r2, r2, r3
	sub	r3, fp, #4096
	sub	r3, r3, #4
	ldr	r3, [r3]
	str	r2, [r3]
.L910:
	ldr	r3, [fp, #-4060]
	b	.L911
.L909:
	ldr	r3, [fp, #-4060]
	mov	r0, r3
	bl	free
	mov	r3, #0
.L911:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi_zlib_decode_malloc_guesssize_headerflag, .-stbi_zlib_decode_malloc_guesssize_headerflag
	.align	2
	.global	stbi_zlib_decode_buffer
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi_zlib_decode_buffer, %function
stbi_zlib_decode_buffer:
	@ args = 0, pretend = 0, frame = 4088
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #4096
	str	r0, [fp, #-4080]
	str	r1, [fp, #-4084]
	str	r2, [fp, #-4088]
	str	r3, [fp, #-4092]
	ldr	r3, [fp, #-4088]
	str	r3, [fp, #-4076]
	ldr	r3, [fp, #-4092]
	ldr	r2, [fp, #-4088]
	add	r3, r2, r3
	str	r3, [fp, #-4072]
	sub	r0, fp, #4064
	sub	r0, r0, #4
	sub	r0, r0, #8
	mov	r3, #1
	str	r3, [sp]
	mov	r3, #0
	ldr	r2, [fp, #-4084]
	ldr	r1, [fp, #-4080]
	bl	stbi__do_zlib
	mov	r3, r0
	cmp	r3, #0
	beq	.L913
	ldr	r2, [fp, #-4060]
	ldr	r3, [fp, #-4056]
	sub	r3, r2, r3
	b	.L915
.L913:
	mvn	r3, #0
.L915:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi_zlib_decode_buffer, .-stbi_zlib_decode_buffer
	.align	2
	.global	stbi_zlib_decode_noheader_malloc
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi_zlib_decode_noheader_malloc, %function
stbi_zlib_decode_noheader_malloc:
	@ args = 0, pretend = 0, frame = 4096
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #4096
	sub	sp, sp, #8
	str	r0, [fp, #-4088]
	str	r1, [fp, #-4092]
	sub	r3, fp, #4096
	str	r2, [r3]
	mov	r0, #16384
	bl	stbi__malloc
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	bne	.L917
	mov	r3, #0
	b	.L921
.L917:
	ldr	r3, [fp, #-4088]
	str	r3, [fp, #-4080]
	ldr	r3, [fp, #-4092]
	ldr	r2, [fp, #-4088]
	add	r3, r2, r3
	str	r3, [fp, #-4076]
	sub	r0, fp, #4064
	sub	r0, r0, #4
	sub	r0, r0, #12
	mov	r3, #0
	str	r3, [sp]
	mov	r3, #1
	mov	r2, #16384
	ldr	r1, [fp, #-8]
	bl	stbi__do_zlib
	mov	r3, r0
	cmp	r3, #0
	beq	.L919
	sub	r3, fp, #4096
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L920
	ldr	r2, [fp, #-4064]
	ldr	r3, [fp, #-4060]
	sub	r2, r2, r3
	sub	r3, fp, #4096
	ldr	r3, [r3]
	str	r2, [r3]
.L920:
	ldr	r3, [fp, #-4060]
	b	.L921
.L919:
	ldr	r3, [fp, #-4060]
	mov	r0, r3
	bl	free
	mov	r3, #0
.L921:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi_zlib_decode_noheader_malloc, .-stbi_zlib_decode_noheader_malloc
	.align	2
	.global	stbi_zlib_decode_noheader_buffer
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi_zlib_decode_noheader_buffer, %function
stbi_zlib_decode_noheader_buffer:
	@ args = 0, pretend = 0, frame = 4088
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #4096
	str	r0, [fp, #-4080]
	str	r1, [fp, #-4084]
	str	r2, [fp, #-4088]
	str	r3, [fp, #-4092]
	ldr	r3, [fp, #-4088]
	str	r3, [fp, #-4076]
	ldr	r3, [fp, #-4092]
	ldr	r2, [fp, #-4088]
	add	r3, r2, r3
	str	r3, [fp, #-4072]
	sub	r0, fp, #4064
	sub	r0, r0, #4
	sub	r0, r0, #8
	mov	r3, #0
	str	r3, [sp]
	mov	r3, #0
	ldr	r2, [fp, #-4084]
	ldr	r1, [fp, #-4080]
	bl	stbi__do_zlib
	mov	r3, r0
	cmp	r3, #0
	beq	.L923
	ldr	r2, [fp, #-4060]
	ldr	r3, [fp, #-4056]
	sub	r3, r2, r3
	b	.L925
.L923:
	mvn	r3, #0
.L925:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi_zlib_decode_noheader_buffer, .-stbi_zlib_decode_noheader_buffer
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__get_chunk_header, %function
stbi__get_chunk_header:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	ldr	r0, [fp, #-20]
	bl	stbi__get32be
	mov	r3, r0
	str	r3, [fp, #-12]
	ldr	r0, [fp, #-20]
	bl	stbi__get32be
	mov	r3, r0
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-16]
	mov	r2, r3
	sub	r3, fp, #12
	ldm	r3, {r0, r1}
	stm	r2, {r0, r1}
	ldr	r0, [fp, #-16]
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__get_chunk_header, .-stbi__get_chunk_header
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__check_png_header, %function
stbi__check_png_header:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-16]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L929
.L932:
	ldr	r0, [fp, #-16]
	bl	stbi__get8
	mov	r3, r0
	mov	r1, r3
	movw	r3, #:lower16:png_sig.9585
	movt	r3, #:upper16:png_sig.9585
	ldr	r2, [fp, #-8]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r1, r3
	beq	.L930
	mov	r3, #0
	b	.L931
.L930:
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L929:
	ldr	r3, [fp, #-8]
	cmp	r3, #7
	ble	.L932
	mov	r3, #1
.L931:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__check_png_header, .-stbi__check_png_header
	.data
	.align	2
	.type	first_row_filter, %object
	.size	first_row_filter, 5
first_row_filter:
	.byte	0
	.byte	1
	.byte	0
	.byte	5
	.byte	6
	.text
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__paeth, %function
stbi__paeth:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #36
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	str	r2, [fp, #-32]
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-28]
	add	r2, r2, r3
	ldr	r3, [fp, #-32]
	sub	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-24]
	sub	r3, r2, r3
	cmp	r3, #0
	rsblt	r3, r3, #0
	str	r3, [fp, #-12]
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-28]
	sub	r3, r2, r3
	cmp	r3, #0
	rsblt	r3, r3, #0
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-32]
	sub	r3, r2, r3
	cmp	r3, #0
	rsblt	r3, r3, #0
	str	r3, [fp, #-20]
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-16]
	cmp	r2, r3
	bgt	.L934
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-20]
	cmp	r2, r3
	bgt	.L934
	ldr	r3, [fp, #-24]
	b	.L935
.L934:
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-20]
	cmp	r2, r3
	bgt	.L936
	ldr	r3, [fp, #-28]
	b	.L935
.L936:
	ldr	r3, [fp, #-32]
.L935:
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	stbi__paeth, .-stbi__paeth
	.section	.rodata
	.align	2
	.type	stbi__depth_scale_table, %object
	.size	stbi__depth_scale_table, 9
stbi__depth_scale_table:
	.byte	0
	.byte	-1
	.byte	85
	.byte	0
	.byte	17
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.text
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__create_png_image_raw, %function
stbi__create_png_image_raw:
	@ args = 16, pretend = 0, frame = 104
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, fp, lr}
	add	fp, sp, #8
	sub	sp, sp, #108
	str	r0, [fp, #-104]
	str	r1, [fp, #-108]
	str	r2, [fp, #-112]
	str	r3, [fp, #-116]
	ldr	r3, [fp, #12]
	cmp	r3, #16
	bne	.L938
	mov	r3, #2
	b	.L939
.L938:
	mov	r3, #1
.L939:
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-104]
	ldr	r3, [r3]
	str	r3, [fp, #-72]
	ldr	r3, [fp, #-116]
	ldr	r2, [fp, #4]
	mul	r3, r2, r3
	ldr	r2, [fp, #-68]
	mul	r3, r2, r3
	str	r3, [fp, #-76]
	ldr	r3, [fp, #-72]
	ldr	r3, [r3, #8]
	str	r3, [fp, #-80]
	ldr	r3, [fp, #-116]
	ldr	r2, [fp, #-68]
	mul	r3, r2, r3
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-80]
	ldr	r2, [fp, #-68]
	mul	r3, r2, r3
	str	r3, [fp, #-28]
	ldr	r3, [fp, #4]
	str	r3, [fp, #-32]
	ldr	r0, [fp, #4]
	ldr	r1, [fp, #8]
	mov	r3, #0
	ldr	r2, [fp, #-84]
	bl	stbi__malloc_mad3
	mov	r2, r0
	ldr	r3, [fp, #-104]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-104]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	bne	.L940
	mov	r3, #0
	b	.L941
.L940:
	ldr	r1, [fp, #4]
	mov	r3, #7
	ldr	r2, [fp, #12]
	ldr	r0, [fp, #-80]
	bl	stbi__mad3sizes_valid
	mov	r3, r0
	cmp	r3, #0
	bne	.L942
	mov	r3, #0
	b	.L941
.L942:
	ldr	r3, [fp, #-80]
	ldr	r2, [fp, #4]
	mul	r3, r2, r3
	ldr	r2, [fp, #12]
	mul	r3, r2, r3
	add	r3, r3, #7
	lsr	r3, r3, #3
	str	r3, [fp, #-88]
	ldr	r3, [fp, #-88]
	add	r2, r3, #1
	ldr	r3, [fp, #8]
	mul	r3, r2, r3
	str	r3, [fp, #-92]
	ldr	r2, [fp, #-112]
	ldr	r3, [fp, #-92]
	cmp	r2, r3
	bcs	.L943
	mov	r3, #0
	b	.L941
.L943:
	mov	r3, #0
	str	r3, [fp, #-20]
	b	.L944
.L1027:
	ldr	r3, [fp, #-104]
	ldr	r2, [r3, #12]
	ldr	r3, [fp, #-76]
	ldr	r1, [fp, #-20]
	mul	r3, r1, r3
	add	r3, r2, r3
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-108]
	add	r2, r3, #1
	str	r2, [fp, #-108]
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-44]
	cmp	r3, #4
	ble	.L945
	mov	r3, #0
	b	.L941
.L945:
	ldr	r3, [fp, #12]
	cmp	r3, #7
	bgt	.L946
	ldr	r3, [fp, #-116]
	ldr	r2, [fp, #4]
	mul	r2, r2, r3
	ldr	r3, [fp, #-88]
	sub	r3, r2, r3
	ldr	r2, [fp, #-36]
	add	r3, r2, r3
	str	r3, [fp, #-36]
	mov	r3, #1
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-88]
	str	r3, [fp, #-32]
.L946:
	ldr	r3, [fp, #-76]
	rsb	r3, r3, #0
	ldr	r2, [fp, #-36]
	add	r3, r2, r3
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	bne	.L947
	movw	r3, #:lower16:first_row_filter
	movt	r3, #:upper16:first_row_filter
	ldr	r2, [fp, #-44]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [fp, #-44]
.L947:
	mov	r3, #0
	str	r3, [fp, #-24]
	b	.L948
.L958:
	ldr	r3, [fp, #-44]
	cmp	r3, #6
	ldrls	pc, [pc, r3, asl #2]
	b	.L949
.L951:
	.word	.L957
	.word	.L956
	.word	.L955
	.word	.L954
	.word	.L953
	.word	.L952
	.word	.L950
.L957:
	ldr	r3, [fp, #-24]
	ldr	r2, [fp, #-108]
	add	r2, r2, r3
	ldr	r3, [fp, #-24]
	ldr	r1, [fp, #-36]
	add	r3, r1, r3
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
	b	.L949
.L956:
	ldr	r3, [fp, #-24]
	ldr	r2, [fp, #-108]
	add	r2, r2, r3
	ldr	r3, [fp, #-24]
	ldr	r1, [fp, #-36]
	add	r3, r1, r3
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
	b	.L949
.L955:
	ldr	r3, [fp, #-24]
	ldr	r2, [fp, #-108]
	add	r3, r2, r3
	ldrb	r1, [r3]	@ zero_extendqisi2
	ldr	r3, [fp, #-24]
	ldr	r2, [fp, #-40]
	add	r3, r2, r3
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [fp, #-24]
	ldr	r0, [fp, #-36]
	add	r3, r0, r3
	add	r2, r1, r2
	uxtb	r2, r2
	strb	r2, [r3]
	b	.L949
.L954:
	ldr	r3, [fp, #-24]
	ldr	r2, [fp, #-108]
	add	r3, r2, r3
	ldrb	r1, [r3]	@ zero_extendqisi2
	ldr	r3, [fp, #-24]
	ldr	r2, [fp, #-40]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsr	r3, r3, #1
	uxtb	r2, r3
	ldr	r3, [fp, #-24]
	ldr	r0, [fp, #-36]
	add	r3, r0, r3
	add	r2, r1, r2
	uxtb	r2, r2
	strb	r2, [r3]
	b	.L949
.L953:
	ldr	r3, [fp, #-24]
	ldr	r2, [fp, #-108]
	add	r3, r2, r3
	ldrb	r4, [r3]	@ zero_extendqisi2
	ldr	r3, [fp, #-24]
	ldr	r2, [fp, #-40]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, #0
	mov	r1, r3
	mov	r0, #0
	bl	stbi__paeth
	mov	r3, r0
	uxtb	r2, r3
	ldr	r3, [fp, #-24]
	ldr	r1, [fp, #-36]
	add	r3, r1, r3
	add	r2, r4, r2
	uxtb	r2, r2
	strb	r2, [r3]
	b	.L949
.L952:
	ldr	r3, [fp, #-24]
	ldr	r2, [fp, #-108]
	add	r2, r2, r3
	ldr	r3, [fp, #-24]
	ldr	r1, [fp, #-36]
	add	r3, r1, r3
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
	b	.L949
.L950:
	ldr	r3, [fp, #-24]
	ldr	r2, [fp, #-108]
	add	r2, r2, r3
	ldr	r3, [fp, #-24]
	ldr	r1, [fp, #-36]
	add	r3, r1, r3
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
	nop
.L949:
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
.L948:
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-28]
	cmp	r2, r3
	blt	.L958
	ldr	r3, [fp, #12]
	cmp	r3, #8
	bne	.L959
	ldr	r2, [fp, #-80]
	ldr	r3, [fp, #-116]
	cmp	r2, r3
	beq	.L960
	ldr	r3, [fp, #-80]
	ldr	r2, [fp, #-36]
	add	r3, r2, r3
	mvn	r2, #0
	strb	r2, [r3]
.L960:
	ldr	r3, [fp, #-80]
	ldr	r2, [fp, #-108]
	add	r3, r2, r3
	str	r3, [fp, #-108]
	ldr	r3, [fp, #-116]
	ldr	r2, [fp, #-36]
	add	r3, r2, r3
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-116]
	ldr	r2, [fp, #-40]
	add	r3, r2, r3
	str	r3, [fp, #-40]
	b	.L961
.L959:
	ldr	r3, [fp, #12]
	cmp	r3, #16
	bne	.L962
	ldr	r2, [fp, #-80]
	ldr	r3, [fp, #-116]
	cmp	r2, r3
	beq	.L963
	ldr	r3, [fp, #-28]
	ldr	r2, [fp, #-36]
	add	r3, r2, r3
	mvn	r2, #0
	strb	r2, [r3]
	ldr	r3, [fp, #-28]
	add	r3, r3, #1
	ldr	r2, [fp, #-36]
	add	r3, r2, r3
	mvn	r2, #0
	strb	r2, [r3]
.L963:
	ldr	r3, [fp, #-28]
	ldr	r2, [fp, #-108]
	add	r3, r2, r3
	str	r3, [fp, #-108]
	ldr	r3, [fp, #-84]
	ldr	r2, [fp, #-36]
	add	r3, r2, r3
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-84]
	ldr	r2, [fp, #-40]
	add	r3, r2, r3
	str	r3, [fp, #-40]
	b	.L961
.L962:
	ldr	r3, [fp, #-108]
	add	r3, r3, #1
	str	r3, [fp, #-108]
	ldr	r3, [fp, #-36]
	add	r3, r3, #1
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-40]
	add	r3, r3, #1
	str	r3, [fp, #-40]
.L961:
	ldr	r3, [fp, #12]
	cmp	r3, #7
	ble	.L964
	ldr	r2, [fp, #-80]
	ldr	r3, [fp, #-116]
	cmp	r2, r3
	bne	.L965
.L964:
	ldr	r3, [fp, #-32]
	sub	r2, r3, #1
	ldr	r3, [fp, #-28]
	mul	r3, r2, r3
	str	r3, [fp, #-96]
	ldr	r3, [fp, #-44]
	cmp	r3, #6
	ldrls	pc, [pc, r3, asl #2]
	b	.L966
.L968:
	.word	.L974
	.word	.L973
	.word	.L972
	.word	.L971
	.word	.L970
	.word	.L969
	.word	.L967
.L974:
	ldr	r3, [fp, #-96]
	mov	r2, r3
	ldr	r1, [fp, #-108]
	ldr	r0, [fp, #-36]
	bl	memcpy
	b	.L966
.L973:
	mov	r3, #0
	str	r3, [fp, #-24]
	b	.L975
.L976:
	ldr	r3, [fp, #-24]
	ldr	r2, [fp, #-108]
	add	r3, r2, r3
	ldrb	r1, [r3]	@ zero_extendqisi2
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-28]
	sub	r3, r2, r3
	mov	r2, r3
	ldr	r3, [fp, #-36]
	add	r3, r3, r2
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [fp, #-24]
	ldr	r0, [fp, #-36]
	add	r3, r0, r3
	add	r2, r1, r2
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
.L975:
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-96]
	cmp	r2, r3
	blt	.L976
	b	.L966
.L972:
	mov	r3, #0
	str	r3, [fp, #-24]
	b	.L977
.L978:
	ldr	r3, [fp, #-24]
	ldr	r2, [fp, #-108]
	add	r3, r2, r3
	ldrb	r1, [r3]	@ zero_extendqisi2
	ldr	r3, [fp, #-24]
	ldr	r2, [fp, #-40]
	add	r3, r2, r3
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [fp, #-24]
	ldr	r0, [fp, #-36]
	add	r3, r0, r3
	add	r2, r1, r2
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
.L977:
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-96]
	cmp	r2, r3
	blt	.L978
	b	.L966
.L971:
	mov	r3, #0
	str	r3, [fp, #-24]
	b	.L979
.L980:
	ldr	r3, [fp, #-24]
	ldr	r2, [fp, #-108]
	add	r3, r2, r3
	ldrb	r1, [r3]	@ zero_extendqisi2
	ldr	r3, [fp, #-24]
	ldr	r2, [fp, #-40]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-28]
	sub	r3, r2, r3
	mov	r2, r3
	ldr	r3, [fp, #-36]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	add	r3, r0, r3
	asr	r3, r3, #1
	uxtb	r2, r3
	ldr	r3, [fp, #-24]
	ldr	r0, [fp, #-36]
	add	r3, r0, r3
	add	r2, r1, r2
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
.L979:
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-96]
	cmp	r2, r3
	blt	.L980
	b	.L966
.L970:
	mov	r3, #0
	str	r3, [fp, #-24]
	b	.L981
.L982:
	ldr	r3, [fp, #-24]
	ldr	r2, [fp, #-108]
	add	r3, r2, r3
	ldrb	r4, [r3]	@ zero_extendqisi2
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-28]
	sub	r3, r2, r3
	mov	r2, r3
	ldr	r3, [fp, #-36]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	ldr	r3, [fp, #-24]
	ldr	r2, [fp, #-40]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-28]
	sub	r3, r2, r3
	mov	r2, r3
	ldr	r3, [fp, #-40]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	bl	stbi__paeth
	mov	r3, r0
	uxtb	r2, r3
	ldr	r3, [fp, #-24]
	ldr	r1, [fp, #-36]
	add	r3, r1, r3
	add	r2, r4, r2
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
.L981:
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-96]
	cmp	r2, r3
	blt	.L982
	b	.L966
.L969:
	mov	r3, #0
	str	r3, [fp, #-24]
	b	.L983
.L984:
	ldr	r3, [fp, #-24]
	ldr	r2, [fp, #-108]
	add	r3, r2, r3
	ldrb	r1, [r3]	@ zero_extendqisi2
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-28]
	sub	r3, r2, r3
	mov	r2, r3
	ldr	r3, [fp, #-36]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsr	r3, r3, #1
	uxtb	r2, r3
	ldr	r3, [fp, #-24]
	ldr	r0, [fp, #-36]
	add	r3, r0, r3
	add	r2, r1, r2
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
.L983:
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-96]
	cmp	r2, r3
	blt	.L984
	b	.L966
.L967:
	mov	r3, #0
	str	r3, [fp, #-24]
	b	.L985
.L986:
	ldr	r3, [fp, #-24]
	ldr	r2, [fp, #-108]
	add	r3, r2, r3
	ldrb	r4, [r3]	@ zero_extendqisi2
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-28]
	sub	r3, r2, r3
	mov	r2, r3
	ldr	r3, [fp, #-36]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, #0
	mov	r1, #0
	mov	r0, r3
	bl	stbi__paeth
	mov	r3, r0
	uxtb	r2, r3
	ldr	r3, [fp, #-24]
	ldr	r1, [fp, #-36]
	add	r3, r1, r3
	add	r2, r4, r2
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
.L985:
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-96]
	cmp	r2, r3
	blt	.L986
	nop
.L966:
	ldr	r3, [fp, #-96]
	ldr	r2, [fp, #-108]
	add	r3, r2, r3
	str	r3, [fp, #-108]
	b	.L987
.L965:
	ldr	r3, [fp, #-44]
	cmp	r3, #6
	ldrls	pc, [pc, r3, asl #2]
	b	.L988
.L990:
	.word	.L996
	.word	.L995
	.word	.L994
	.word	.L993
	.word	.L992
	.word	.L991
	.word	.L989
.L996:
	ldr	r3, [fp, #4]
	sub	r3, r3, #1
	str	r3, [fp, #-16]
	b	.L997
.L1000:
	mov	r3, #0
	str	r3, [fp, #-24]
	b	.L998
.L999:
	ldr	r3, [fp, #-24]
	ldr	r2, [fp, #-108]
	add	r2, r2, r3
	ldr	r3, [fp, #-24]
	ldr	r1, [fp, #-36]
	add	r3, r1, r3
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
.L998:
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-28]
	cmp	r2, r3
	blt	.L999
	ldr	r3, [fp, #-16]
	sub	r3, r3, #1
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-28]
	ldr	r2, [fp, #-36]
	add	r3, r2, r3
	mvn	r2, #0
	strb	r2, [r3]
	ldr	r3, [fp, #-28]
	ldr	r2, [fp, #-108]
	add	r3, r2, r3
	str	r3, [fp, #-108]
	ldr	r3, [fp, #-84]
	ldr	r2, [fp, #-36]
	add	r3, r2, r3
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-84]
	ldr	r2, [fp, #-40]
	add	r3, r2, r3
	str	r3, [fp, #-40]
.L997:
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	bne	.L1000
	b	.L988
.L995:
	ldr	r3, [fp, #4]
	sub	r3, r3, #1
	str	r3, [fp, #-16]
	b	.L1001
.L1004:
	mov	r3, #0
	str	r3, [fp, #-24]
	b	.L1002
.L1003:
	ldr	r3, [fp, #-24]
	ldr	r2, [fp, #-108]
	add	r3, r2, r3
	ldrb	r1, [r3]	@ zero_extendqisi2
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-84]
	sub	r3, r2, r3
	mov	r2, r3
	ldr	r3, [fp, #-36]
	add	r3, r3, r2
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [fp, #-24]
	ldr	r0, [fp, #-36]
	add	r3, r0, r3
	add	r2, r1, r2
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
.L1002:
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-28]
	cmp	r2, r3
	blt	.L1003
	ldr	r3, [fp, #-16]
	sub	r3, r3, #1
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-28]
	ldr	r2, [fp, #-36]
	add	r3, r2, r3
	mvn	r2, #0
	strb	r2, [r3]
	ldr	r3, [fp, #-28]
	ldr	r2, [fp, #-108]
	add	r3, r2, r3
	str	r3, [fp, #-108]
	ldr	r3, [fp, #-84]
	ldr	r2, [fp, #-36]
	add	r3, r2, r3
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-84]
	ldr	r2, [fp, #-40]
	add	r3, r2, r3
	str	r3, [fp, #-40]
.L1001:
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	bne	.L1004
	b	.L988
.L994:
	ldr	r3, [fp, #4]
	sub	r3, r3, #1
	str	r3, [fp, #-16]
	b	.L1005
.L1008:
	mov	r3, #0
	str	r3, [fp, #-24]
	b	.L1006
.L1007:
	ldr	r3, [fp, #-24]
	ldr	r2, [fp, #-108]
	add	r3, r2, r3
	ldrb	r1, [r3]	@ zero_extendqisi2
	ldr	r3, [fp, #-24]
	ldr	r2, [fp, #-40]
	add	r3, r2, r3
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [fp, #-24]
	ldr	r0, [fp, #-36]
	add	r3, r0, r3
	add	r2, r1, r2
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
.L1006:
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-28]
	cmp	r2, r3
	blt	.L1007
	ldr	r3, [fp, #-16]
	sub	r3, r3, #1
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-28]
	ldr	r2, [fp, #-36]
	add	r3, r2, r3
	mvn	r2, #0
	strb	r2, [r3]
	ldr	r3, [fp, #-28]
	ldr	r2, [fp, #-108]
	add	r3, r2, r3
	str	r3, [fp, #-108]
	ldr	r3, [fp, #-84]
	ldr	r2, [fp, #-36]
	add	r3, r2, r3
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-84]
	ldr	r2, [fp, #-40]
	add	r3, r2, r3
	str	r3, [fp, #-40]
.L1005:
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	bne	.L1008
	b	.L988
.L993:
	ldr	r3, [fp, #4]
	sub	r3, r3, #1
	str	r3, [fp, #-16]
	b	.L1009
.L1012:
	mov	r3, #0
	str	r3, [fp, #-24]
	b	.L1010
.L1011:
	ldr	r3, [fp, #-24]
	ldr	r2, [fp, #-108]
	add	r3, r2, r3
	ldrb	r1, [r3]	@ zero_extendqisi2
	ldr	r3, [fp, #-24]
	ldr	r2, [fp, #-40]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-84]
	sub	r3, r2, r3
	mov	r2, r3
	ldr	r3, [fp, #-36]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	add	r3, r0, r3
	asr	r3, r3, #1
	uxtb	r2, r3
	ldr	r3, [fp, #-24]
	ldr	r0, [fp, #-36]
	add	r3, r0, r3
	add	r2, r1, r2
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
.L1010:
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-28]
	cmp	r2, r3
	blt	.L1011
	ldr	r3, [fp, #-16]
	sub	r3, r3, #1
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-28]
	ldr	r2, [fp, #-36]
	add	r3, r2, r3
	mvn	r2, #0
	strb	r2, [r3]
	ldr	r3, [fp, #-28]
	ldr	r2, [fp, #-108]
	add	r3, r2, r3
	str	r3, [fp, #-108]
	ldr	r3, [fp, #-84]
	ldr	r2, [fp, #-36]
	add	r3, r2, r3
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-84]
	ldr	r2, [fp, #-40]
	add	r3, r2, r3
	str	r3, [fp, #-40]
.L1009:
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	bne	.L1012
	b	.L988
.L992:
	ldr	r3, [fp, #4]
	sub	r3, r3, #1
	str	r3, [fp, #-16]
	b	.L1013
.L1016:
	mov	r3, #0
	str	r3, [fp, #-24]
	b	.L1014
.L1015:
	ldr	r3, [fp, #-24]
	ldr	r2, [fp, #-108]
	add	r3, r2, r3
	ldrb	r4, [r3]	@ zero_extendqisi2
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-84]
	sub	r3, r2, r3
	mov	r2, r3
	ldr	r3, [fp, #-36]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	ldr	r3, [fp, #-24]
	ldr	r2, [fp, #-40]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-84]
	sub	r3, r2, r3
	mov	r2, r3
	ldr	r3, [fp, #-40]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	bl	stbi__paeth
	mov	r3, r0
	uxtb	r2, r3
	ldr	r3, [fp, #-24]
	ldr	r1, [fp, #-36]
	add	r3, r1, r3
	add	r2, r4, r2
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
.L1014:
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-28]
	cmp	r2, r3
	blt	.L1015
	ldr	r3, [fp, #-16]
	sub	r3, r3, #1
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-28]
	ldr	r2, [fp, #-36]
	add	r3, r2, r3
	mvn	r2, #0
	strb	r2, [r3]
	ldr	r3, [fp, #-28]
	ldr	r2, [fp, #-108]
	add	r3, r2, r3
	str	r3, [fp, #-108]
	ldr	r3, [fp, #-84]
	ldr	r2, [fp, #-36]
	add	r3, r2, r3
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-84]
	ldr	r2, [fp, #-40]
	add	r3, r2, r3
	str	r3, [fp, #-40]
.L1013:
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	bne	.L1016
	b	.L988
.L991:
	ldr	r3, [fp, #4]
	sub	r3, r3, #1
	str	r3, [fp, #-16]
	b	.L1017
.L1020:
	mov	r3, #0
	str	r3, [fp, #-24]
	b	.L1018
.L1019:
	ldr	r3, [fp, #-24]
	ldr	r2, [fp, #-108]
	add	r3, r2, r3
	ldrb	r1, [r3]	@ zero_extendqisi2
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-84]
	sub	r3, r2, r3
	mov	r2, r3
	ldr	r3, [fp, #-36]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsr	r3, r3, #1
	uxtb	r2, r3
	ldr	r3, [fp, #-24]
	ldr	r0, [fp, #-36]
	add	r3, r0, r3
	add	r2, r1, r2
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
.L1018:
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-28]
	cmp	r2, r3
	blt	.L1019
	ldr	r3, [fp, #-16]
	sub	r3, r3, #1
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-28]
	ldr	r2, [fp, #-36]
	add	r3, r2, r3
	mvn	r2, #0
	strb	r2, [r3]
	ldr	r3, [fp, #-28]
	ldr	r2, [fp, #-108]
	add	r3, r2, r3
	str	r3, [fp, #-108]
	ldr	r3, [fp, #-84]
	ldr	r2, [fp, #-36]
	add	r3, r2, r3
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-84]
	ldr	r2, [fp, #-40]
	add	r3, r2, r3
	str	r3, [fp, #-40]
.L1017:
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	bne	.L1020
	b	.L988
.L989:
	ldr	r3, [fp, #4]
	sub	r3, r3, #1
	str	r3, [fp, #-16]
	b	.L1021
.L1024:
	mov	r3, #0
	str	r3, [fp, #-24]
	b	.L1022
.L1023:
	ldr	r3, [fp, #-24]
	ldr	r2, [fp, #-108]
	add	r3, r2, r3
	ldrb	r4, [r3]	@ zero_extendqisi2
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-84]
	sub	r3, r2, r3
	mov	r2, r3
	ldr	r3, [fp, #-36]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, #0
	mov	r1, #0
	mov	r0, r3
	bl	stbi__paeth
	mov	r3, r0
	uxtb	r2, r3
	ldr	r3, [fp, #-24]
	ldr	r1, [fp, #-36]
	add	r3, r1, r3
	add	r2, r4, r2
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
.L1022:
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-28]
	cmp	r2, r3
	blt	.L1023
	ldr	r3, [fp, #-16]
	sub	r3, r3, #1
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-28]
	ldr	r2, [fp, #-36]
	add	r3, r2, r3
	mvn	r2, #0
	strb	r2, [r3]
	ldr	r3, [fp, #-28]
	ldr	r2, [fp, #-108]
	add	r3, r2, r3
	str	r3, [fp, #-108]
	ldr	r3, [fp, #-84]
	ldr	r2, [fp, #-36]
	add	r3, r2, r3
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-84]
	ldr	r2, [fp, #-40]
	add	r3, r2, r3
	str	r3, [fp, #-40]
.L1021:
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	bne	.L1024
	nop
.L988:
	ldr	r3, [fp, #12]
	cmp	r3, #16
	bne	.L987
	ldr	r3, [fp, #-104]
	ldr	r2, [r3, #12]
	ldr	r3, [fp, #-76]
	ldr	r1, [fp, #-20]
	mul	r3, r1, r3
	add	r3, r2, r3
	str	r3, [fp, #-36]
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L1025
.L1026:
	ldr	r3, [fp, #-28]
	add	r3, r3, #1
	ldr	r2, [fp, #-36]
	add	r3, r2, r3
	mvn	r2, #0
	strb	r2, [r3]
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-84]
	ldr	r2, [fp, #-36]
	add	r3, r2, r3
	str	r3, [fp, #-36]
.L1025:
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #4]
	cmp	r2, r3
	bcc	.L1026
.L987:
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
.L944:
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #8]
	cmp	r2, r3
	bcc	.L1027
	ldr	r3, [fp, #12]
	cmp	r3, #7
	bgt	.L1028
	mov	r3, #0
	str	r3, [fp, #-20]
	b	.L1029
.L1057:
	ldr	r3, [fp, #-104]
	ldr	r2, [r3, #12]
	ldr	r3, [fp, #-76]
	ldr	r1, [fp, #-20]
	mul	r3, r1, r3
	add	r3, r2, r3
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-104]
	ldr	r2, [r3, #12]
	ldr	r3, [fp, #-76]
	ldr	r1, [fp, #-20]
	mul	r1, r1, r3
	ldr	r3, [fp, #-116]
	ldr	r0, [fp, #4]
	mul	r3, r0, r3
	add	r1, r1, r3
	ldr	r3, [fp, #-88]
	sub	r3, r1, r3
	add	r3, r2, r3
	str	r3, [fp, #-52]
	ldr	r3, [fp, #16]
	cmp	r3, #0
	bne	.L1030
	movw	r3, #:lower16:stbi__depth_scale_table
	movt	r3, #:upper16:stbi__depth_scale_table
	ldr	r2, [fp, #12]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	b	.L1031
.L1030:
	mov	r3, #1
.L1031:
	strb	r3, [fp, #-97]
	ldr	r3, [fp, #12]
	cmp	r3, #4
	bne	.L1032
	ldr	r3, [fp, #-80]
	ldr	r2, [fp, #4]
	mul	r3, r2, r3
	str	r3, [fp, #-24]
	b	.L1033
.L1034:
	ldr	r3, [fp, #-52]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsr	r3, r3, #4
	uxtb	r2, r3
	ldr	r3, [fp, #-48]
	add	r1, r3, #1
	str	r1, [fp, #-48]
	ldrb	r1, [fp, #-97]
	smulbb	r2, r1, r2
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [fp, #-52]
	ldrb	r3, [r3]	@ zero_extendqisi2
	and	r3, r3, #15
	uxtb	r2, r3
	ldr	r3, [fp, #-48]
	add	r1, r3, #1
	str	r1, [fp, #-48]
	ldrb	r1, [fp, #-97]
	smulbb	r2, r1, r2
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [fp, #-24]
	sub	r3, r3, #2
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-52]
	add	r3, r3, #1
	str	r3, [fp, #-52]
.L1033:
	ldr	r3, [fp, #-24]
	cmp	r3, #1
	bgt	.L1034
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	ble	.L1036
	ldr	r3, [fp, #-52]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsr	r3, r3, #4
	uxtb	r2, r3
	ldr	r3, [fp, #-48]
	add	r1, r3, #1
	str	r1, [fp, #-48]
	ldrb	r1, [fp, #-97]
	smulbb	r2, r1, r2
	uxtb	r2, r2
	strb	r2, [r3]
	b	.L1036
.L1032:
	ldr	r3, [fp, #12]
	cmp	r3, #2
	bne	.L1037
	ldr	r3, [fp, #-80]
	ldr	r2, [fp, #4]
	mul	r3, r2, r3
	str	r3, [fp, #-24]
	b	.L1038
.L1039:
	ldr	r3, [fp, #-52]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsr	r3, r3, #6
	uxtb	r2, r3
	ldr	r3, [fp, #-48]
	add	r1, r3, #1
	str	r1, [fp, #-48]
	ldrb	r1, [fp, #-97]
	smulbb	r2, r1, r2
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [fp, #-52]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsr	r3, r3, #4
	uxtb	r3, r3
	and	r3, r3, #3
	uxtb	r2, r3
	ldr	r3, [fp, #-48]
	add	r1, r3, #1
	str	r1, [fp, #-48]
	ldrb	r1, [fp, #-97]
	smulbb	r2, r1, r2
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [fp, #-52]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsr	r3, r3, #2
	uxtb	r3, r3
	and	r3, r3, #3
	uxtb	r2, r3
	ldr	r3, [fp, #-48]
	add	r1, r3, #1
	str	r1, [fp, #-48]
	ldrb	r1, [fp, #-97]
	smulbb	r2, r1, r2
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [fp, #-52]
	ldrb	r3, [r3]	@ zero_extendqisi2
	and	r3, r3, #3
	uxtb	r2, r3
	ldr	r3, [fp, #-48]
	add	r1, r3, #1
	str	r1, [fp, #-48]
	ldrb	r1, [fp, #-97]
	smulbb	r2, r1, r2
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [fp, #-24]
	sub	r3, r3, #4
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-52]
	add	r3, r3, #1
	str	r3, [fp, #-52]
.L1038:
	ldr	r3, [fp, #-24]
	cmp	r3, #3
	bgt	.L1039
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	ble	.L1040
	ldr	r3, [fp, #-52]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsr	r3, r3, #6
	uxtb	r2, r3
	ldr	r3, [fp, #-48]
	add	r1, r3, #1
	str	r1, [fp, #-48]
	ldrb	r1, [fp, #-97]
	smulbb	r2, r1, r2
	uxtb	r2, r2
	strb	r2, [r3]
.L1040:
	ldr	r3, [fp, #-24]
	cmp	r3, #1
	ble	.L1041
	ldr	r3, [fp, #-52]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsr	r3, r3, #4
	uxtb	r3, r3
	and	r3, r3, #3
	uxtb	r2, r3
	ldr	r3, [fp, #-48]
	add	r1, r3, #1
	str	r1, [fp, #-48]
	ldrb	r1, [fp, #-97]
	smulbb	r2, r1, r2
	uxtb	r2, r2
	strb	r2, [r3]
.L1041:
	ldr	r3, [fp, #-24]
	cmp	r3, #2
	ble	.L1036
	ldr	r3, [fp, #-52]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsr	r3, r3, #2
	uxtb	r3, r3
	and	r3, r3, #3
	uxtb	r2, r3
	ldr	r3, [fp, #-48]
	add	r1, r3, #1
	str	r1, [fp, #-48]
	ldrb	r1, [fp, #-97]
	smulbb	r2, r1, r2
	uxtb	r2, r2
	strb	r2, [r3]
	b	.L1036
.L1037:
	ldr	r3, [fp, #12]
	cmp	r3, #1
	bne	.L1036
	ldr	r3, [fp, #-80]
	ldr	r2, [fp, #4]
	mul	r3, r2, r3
	str	r3, [fp, #-24]
	b	.L1043
.L1044:
	ldr	r3, [fp, #-52]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsr	r3, r3, #7
	uxtb	r2, r3
	ldr	r3, [fp, #-48]
	add	r1, r3, #1
	str	r1, [fp, #-48]
	ldrb	r1, [fp, #-97]
	smulbb	r2, r1, r2
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [fp, #-52]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsr	r3, r3, #6
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	ldr	r3, [fp, #-48]
	add	r1, r3, #1
	str	r1, [fp, #-48]
	ldrb	r1, [fp, #-97]
	smulbb	r2, r1, r2
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [fp, #-52]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsr	r3, r3, #5
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	ldr	r3, [fp, #-48]
	add	r1, r3, #1
	str	r1, [fp, #-48]
	ldrb	r1, [fp, #-97]
	smulbb	r2, r1, r2
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [fp, #-52]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsr	r3, r3, #4
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	ldr	r3, [fp, #-48]
	add	r1, r3, #1
	str	r1, [fp, #-48]
	ldrb	r1, [fp, #-97]
	smulbb	r2, r1, r2
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [fp, #-52]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsr	r3, r3, #3
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	ldr	r3, [fp, #-48]
	add	r1, r3, #1
	str	r1, [fp, #-48]
	ldrb	r1, [fp, #-97]
	smulbb	r2, r1, r2
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [fp, #-52]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsr	r3, r3, #2
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	ldr	r3, [fp, #-48]
	add	r1, r3, #1
	str	r1, [fp, #-48]
	ldrb	r1, [fp, #-97]
	smulbb	r2, r1, r2
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [fp, #-52]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsr	r3, r3, #1
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	ldr	r3, [fp, #-48]
	add	r1, r3, #1
	str	r1, [fp, #-48]
	ldrb	r1, [fp, #-97]
	smulbb	r2, r1, r2
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [fp, #-52]
	ldrb	r3, [r3]	@ zero_extendqisi2
	and	r3, r3, #1
	uxtb	r2, r3
	ldr	r3, [fp, #-48]
	add	r1, r3, #1
	str	r1, [fp, #-48]
	ldrb	r1, [fp, #-97]
	smulbb	r2, r1, r2
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [fp, #-24]
	sub	r3, r3, #8
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-52]
	add	r3, r3, #1
	str	r3, [fp, #-52]
.L1043:
	ldr	r3, [fp, #-24]
	cmp	r3, #7
	bgt	.L1044
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	ble	.L1045
	ldr	r3, [fp, #-52]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsr	r3, r3, #7
	uxtb	r2, r3
	ldr	r3, [fp, #-48]
	add	r1, r3, #1
	str	r1, [fp, #-48]
	ldrb	r1, [fp, #-97]
	smulbb	r2, r1, r2
	uxtb	r2, r2
	strb	r2, [r3]
.L1045:
	ldr	r3, [fp, #-24]
	cmp	r3, #1
	ble	.L1046
	ldr	r3, [fp, #-52]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsr	r3, r3, #6
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	ldr	r3, [fp, #-48]
	add	r1, r3, #1
	str	r1, [fp, #-48]
	ldrb	r1, [fp, #-97]
	smulbb	r2, r1, r2
	uxtb	r2, r2
	strb	r2, [r3]
.L1046:
	ldr	r3, [fp, #-24]
	cmp	r3, #2
	ble	.L1047
	ldr	r3, [fp, #-52]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsr	r3, r3, #5
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	ldr	r3, [fp, #-48]
	add	r1, r3, #1
	str	r1, [fp, #-48]
	ldrb	r1, [fp, #-97]
	smulbb	r2, r1, r2
	uxtb	r2, r2
	strb	r2, [r3]
.L1047:
	ldr	r3, [fp, #-24]
	cmp	r3, #3
	ble	.L1048
	ldr	r3, [fp, #-52]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsr	r3, r3, #4
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	ldr	r3, [fp, #-48]
	add	r1, r3, #1
	str	r1, [fp, #-48]
	ldrb	r1, [fp, #-97]
	smulbb	r2, r1, r2
	uxtb	r2, r2
	strb	r2, [r3]
.L1048:
	ldr	r3, [fp, #-24]
	cmp	r3, #4
	ble	.L1049
	ldr	r3, [fp, #-52]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsr	r3, r3, #3
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	ldr	r3, [fp, #-48]
	add	r1, r3, #1
	str	r1, [fp, #-48]
	ldrb	r1, [fp, #-97]
	smulbb	r2, r1, r2
	uxtb	r2, r2
	strb	r2, [r3]
.L1049:
	ldr	r3, [fp, #-24]
	cmp	r3, #5
	ble	.L1050
	ldr	r3, [fp, #-52]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsr	r3, r3, #2
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	ldr	r3, [fp, #-48]
	add	r1, r3, #1
	str	r1, [fp, #-48]
	ldrb	r1, [fp, #-97]
	smulbb	r2, r1, r2
	uxtb	r2, r2
	strb	r2, [r3]
.L1050:
	ldr	r3, [fp, #-24]
	cmp	r3, #6
	ble	.L1036
	ldr	r3, [fp, #-52]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsr	r3, r3, #1
	uxtb	r3, r3
	and	r3, r3, #1
	uxtb	r2, r3
	ldr	r3, [fp, #-48]
	add	r1, r3, #1
	str	r1, [fp, #-48]
	ldrb	r1, [fp, #-97]
	smulbb	r2, r1, r2
	uxtb	r2, r2
	strb	r2, [r3]
.L1036:
	ldr	r2, [fp, #-80]
	ldr	r3, [fp, #-116]
	cmp	r2, r3
	beq	.L1051
	ldr	r3, [fp, #-104]
	ldr	r2, [r3, #12]
	ldr	r3, [fp, #-76]
	ldr	r1, [fp, #-20]
	mul	r3, r1, r3
	add	r3, r2, r3
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-80]
	cmp	r3, #1
	bne	.L1052
	ldr	r3, [fp, #4]
	sub	r3, r3, #1
	str	r3, [fp, #-56]
	b	.L1053
.L1054:
	ldr	r3, [fp, #-56]
	lsl	r3, r3, #1
	add	r3, r3, #1
	ldr	r2, [fp, #-48]
	add	r3, r2, r3
	mvn	r2, #0
	strb	r2, [r3]
	ldr	r3, [fp, #-56]
	ldr	r2, [fp, #-48]
	add	r2, r2, r3
	ldr	r3, [fp, #-56]
	lsl	r3, r3, #1
	mov	r1, r3
	ldr	r3, [fp, #-48]
	add	r3, r3, r1
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
	ldr	r3, [fp, #-56]
	sub	r3, r3, #1
	str	r3, [fp, #-56]
.L1053:
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L1054
	b	.L1051
.L1052:
	ldr	r3, [fp, #4]
	sub	r3, r3, #1
	str	r3, [fp, #-56]
	b	.L1055
.L1056:
	ldr	r3, [fp, #-56]
	lsl	r3, r3, #2
	add	r3, r3, #3
	ldr	r2, [fp, #-48]
	add	r3, r2, r3
	mvn	r2, #0
	strb	r2, [r3]
	ldr	r2, [fp, #-56]
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	add	r3, r3, #2
	ldr	r2, [fp, #-48]
	add	r2, r2, r3
	ldr	r3, [fp, #-56]
	lsl	r3, r3, #2
	add	r3, r3, #2
	ldr	r1, [fp, #-48]
	add	r3, r1, r3
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
	ldr	r2, [fp, #-56]
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	add	r3, r3, #1
	ldr	r2, [fp, #-48]
	add	r2, r2, r3
	ldr	r3, [fp, #-56]
	lsl	r3, r3, #2
	add	r3, r3, #1
	ldr	r1, [fp, #-48]
	add	r3, r1, r3
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
	ldr	r2, [fp, #-56]
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	mov	r2, r3
	ldr	r3, [fp, #-48]
	add	r2, r3, r2
	ldr	r3, [fp, #-56]
	lsl	r3, r3, #2
	mov	r1, r3
	ldr	r3, [fp, #-48]
	add	r3, r3, r1
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
	ldr	r3, [fp, #-56]
	sub	r3, r3, #1
	str	r3, [fp, #-56]
.L1055:
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bge	.L1056
.L1051:
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
.L1029:
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #8]
	cmp	r2, r3
	bcc	.L1057
	b	.L1058
.L1028:
	ldr	r3, [fp, #12]
	cmp	r3, #16
	bne	.L1058
	ldr	r3, [fp, #-104]
	ldr	r3, [r3, #12]
	str	r3, [fp, #-60]
	ldr	r3, [fp, #-60]
	str	r3, [fp, #-64]
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L1059
.L1060:
	ldr	r3, [fp, #-60]
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsl	r3, r3, #8
	sxth	r2, r3
	ldr	r3, [fp, #-60]
	add	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	sxth	r3, r3
	orr	r3, r2, r3
	sxth	r3, r3
	uxth	r2, r3
	ldr	r3, [fp, #-64]
	strh	r2, [r3]	@ movhi
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-64]
	add	r3, r3, #2
	str	r3, [fp, #-64]
	ldr	r3, [fp, #-60]
	add	r3, r3, #2
	str	r3, [fp, #-60]
.L1059:
	ldr	r3, [fp, #4]
	ldr	r2, [fp, #8]
	mul	r3, r2, r3
	ldr	r2, [fp, #-116]
	mul	r3, r2, r3
	ldr	r2, [fp, #-16]
	cmp	r2, r3
	bcc	.L1060
.L1058:
	mov	r3, #1
.L941:
	mov	r0, r3
	sub	sp, fp, #8
	@ sp needed
	pop	{r4, fp, pc}
	.size	stbi__create_png_image_raw, .-stbi__create_png_image_raw
	.section	.rodata
	.align	2
.LC0:
	.word	0
	.word	4
	.word	0
	.word	2
	.word	0
	.word	1
	.word	0
	.align	2
.LC1:
	.word	0
	.word	0
	.word	4
	.word	0
	.word	2
	.word	0
	.word	1
	.align	2
.LC2:
	.word	8
	.word	8
	.word	4
	.word	4
	.word	2
	.word	2
	.word	1
	.align	2
.LC3:
	.word	8
	.word	8
	.word	8
	.word	4
	.word	4
	.word	2
	.word	2
	.text
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__create_png_image, %function
stbi__create_png_image:
	@ args = 12, pretend = 0, frame = 176
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #192
	str	r0, [fp, #-168]
	str	r1, [fp, #-172]
	str	r2, [fp, #-176]
	str	r3, [fp, #-180]
	ldr	r3, [fp, #4]
	cmp	r3, #16
	bne	.L1062
	mov	r3, #2
	b	.L1063
.L1062:
	mov	r3, #1
.L1063:
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-180]
	ldr	r2, [fp, #-20]
	mul	r3, r2, r3
	str	r3, [fp, #-24]
	ldr	r3, [fp, #12]
	cmp	r3, #0
	bne	.L1064
	ldr	r3, [fp, #-168]
	ldr	r3, [r3]
	ldr	r3, [r3]
	ldr	r2, [fp, #-168]
	ldr	r2, [r2]
	ldr	r2, [r2, #4]
	ldr	r1, [fp, #8]
	str	r1, [sp, #12]
	ldr	r1, [fp, #4]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r3, [fp, #-180]
	ldr	r2, [fp, #-176]
	ldr	r1, [fp, #-172]
	ldr	r0, [fp, #-168]
	bl	stbi__create_png_image_raw
	mov	r3, r0
	b	.L1065
.L1064:
	ldr	r3, [fp, #-168]
	ldr	r3, [r3]
	ldr	r3, [r3]
	mov	r0, r3
	ldr	r3, [fp, #-168]
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	mov	r1, r3
	mov	r3, #0
	ldr	r2, [fp, #-24]
	bl	stbi__malloc_mad3
	str	r0, [fp, #-28]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L1066
.L1073:
	movw	r3, #:lower16:.LC0
	movt	r3, #:upper16:.LC0
	sub	ip, fp, #76
	mov	lr, r3
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldm	lr, {r0, r1, r2}
	stm	ip, {r0, r1, r2}
	movw	r3, #:lower16:.LC1
	movt	r3, #:upper16:.LC1
	sub	ip, fp, #104
	mov	lr, r3
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldm	lr, {r0, r1, r2}
	stm	ip, {r0, r1, r2}
	movw	r3, #:lower16:.LC2
	movt	r3, #:upper16:.LC2
	sub	ip, fp, #132
	mov	lr, r3
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldm	lr, {r0, r1, r2}
	stm	ip, {r0, r1, r2}
	movw	r3, #:lower16:.LC3
	movt	r3, #:upper16:.LC3
	sub	ip, fp, #160
	mov	lr, r3
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldm	lr, {r0, r1, r2}
	stm	ip, {r0, r1, r2}
	ldr	r3, [fp, #-168]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #2
	sub	r1, fp, #4
	add	r3, r1, r3
	ldr	r3, [r3, #-72]
	sub	r2, r2, r3
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #2
	sub	r1, fp, #4
	add	r3, r1, r3
	ldr	r3, [r3, #-128]
	add	r3, r2, r3
	sub	r2, r3, #1
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #2
	sub	r1, fp, #4
	add	r3, r1, r3
	ldr	r3, [r3, #-128]
	mov	r1, r3
	mov	r0, r2
	bl	__aeabi_uidiv
	mov	r3, r0
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-168]
	ldr	r3, [r3]
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #2
	sub	r1, fp, #4
	add	r3, r1, r3
	ldr	r3, [r3, #-100]
	sub	r2, r2, r3
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #2
	sub	r1, fp, #4
	add	r3, r1, r3
	ldr	r3, [r3, #-156]
	add	r3, r2, r3
	sub	r2, r3, #1
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #2
	sub	r1, fp, #4
	add	r3, r1, r3
	ldr	r3, [r3, #-156]
	mov	r1, r3
	mov	r0, r2
	bl	__aeabi_uidiv
	mov	r3, r0
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-32]
	cmp	r3, #0
	beq	.L1067
	ldr	r3, [fp, #-36]
	cmp	r3, #0
	beq	.L1067
	ldr	r3, [fp, #-168]
	ldr	r3, [r3]
	ldr	r3, [r3, #8]
	ldr	r2, [fp, #-32]
	mul	r3, r2, r3
	ldr	r2, [fp, #4]
	mul	r3, r2, r3
	add	r3, r3, #7
	asr	r3, r3, #3
	add	r3, r3, #1
	ldr	r2, [fp, #-36]
	mul	r3, r2, r3
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-32]
	ldr	r2, [fp, #-36]
	ldr	r1, [fp, #8]
	str	r1, [sp, #12]
	ldr	r1, [fp, #4]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	ldr	r3, [fp, #-180]
	ldr	r2, [fp, #-176]
	ldr	r1, [fp, #-172]
	ldr	r0, [fp, #-168]
	bl	stbi__create_png_image_raw
	mov	r3, r0
	cmp	r3, #0
	bne	.L1068
	ldr	r0, [fp, #-28]
	bl	free
	mov	r3, #0
	b	.L1065
.L1068:
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L1069
.L1072:
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L1070
.L1071:
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #2
	sub	r2, fp, #4
	add	r3, r2, r3
	ldr	r3, [r3, #-156]
	ldr	r2, [fp, #-16]
	mul	r2, r2, r3
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #2
	sub	r1, fp, #4
	add	r3, r1, r3
	ldr	r3, [r3, #-100]
	add	r3, r2, r3
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #2
	sub	r2, fp, #4
	add	r3, r2, r3
	ldr	r3, [r3, #-128]
	ldr	r2, [fp, #-12]
	mul	r2, r2, r3
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #2
	sub	r1, fp, #4
	add	r3, r1, r3
	ldr	r3, [r3, #-72]
	add	r3, r2, r3
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-168]
	ldr	r3, [r3]
	ldr	r3, [r3]
	ldr	r2, [fp, #-44]
	mul	r3, r2, r3
	ldr	r2, [fp, #-24]
	mul	r3, r2, r3
	ldr	r2, [fp, #-48]
	ldr	r1, [fp, #-24]
	mul	r2, r1, r2
	add	r3, r3, r2
	ldr	r2, [fp, #-28]
	add	r0, r2, r3
	ldr	r3, [fp, #-168]
	ldr	r3, [r3, #12]
	ldr	r2, [fp, #-16]
	ldr	r1, [fp, #-32]
	mul	r1, r1, r2
	ldr	r2, [fp, #-12]
	add	r2, r1, r2
	ldr	r1, [fp, #-24]
	mul	r2, r1, r2
	add	r3, r3, r2
	ldr	r2, [fp, #-24]
	mov	r1, r3
	bl	memcpy
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L1070:
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-32]
	cmp	r2, r3
	blt	.L1071
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L1069:
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-36]
	cmp	r2, r3
	blt	.L1072
	ldr	r3, [fp, #-168]
	ldr	r3, [r3, #12]
	mov	r0, r3
	bl	free
	ldr	r2, [fp, #-172]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	str	r3, [fp, #-172]
	ldr	r2, [fp, #-176]
	ldr	r3, [fp, #-40]
	sub	r3, r2, r3
	str	r3, [fp, #-176]
.L1067:
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L1066:
	ldr	r3, [fp, #-8]
	cmp	r3, #6
	ble	.L1073
	ldr	r3, [fp, #-168]
	ldr	r2, [fp, #-28]
	str	r2, [r3, #12]
	mov	r3, #1
.L1065:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__create_png_image, .-stbi__create_png_image
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__compute_transparency, %function
stbi__compute_transparency:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #36
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	str	r2, [fp, #-32]
	ldr	r3, [fp, #-24]
	ldr	r3, [r3]
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	ldr	r2, [fp, #-16]
	ldr	r2, [r2, #4]
	mul	r3, r2, r3
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #12]
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-32]
	cmp	r3, #2
	bne	.L1075
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L1076
.L1079:
	ldr	r3, [fp, #-12]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [fp, #-28]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L1077
	mov	r2, #0
	b	.L1078
.L1077:
	mov	r2, #255
.L1078:
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	strb	r2, [r3]
	ldr	r3, [fp, #-12]
	add	r3, r3, #2
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L1076:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-20]
	cmp	r2, r3
	bcc	.L1079
	b	.L1080
.L1075:
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L1081
.L1083:
	ldr	r3, [fp, #-12]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [fp, #-28]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L1082
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [fp, #-28]
	add	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L1082
	ldr	r3, [fp, #-12]
	add	r3, r3, #2
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [fp, #-28]
	add	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L1082
	ldr	r3, [fp, #-12]
	add	r3, r3, #3
	mov	r2, #0
	strb	r2, [r3]
.L1082:
	ldr	r3, [fp, #-12]
	add	r3, r3, #4
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L1081:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-20]
	cmp	r2, r3
	bcc	.L1083
.L1080:
	mov	r3, #1
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	stbi__compute_transparency, .-stbi__compute_transparency
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__compute_transparency16, %function
stbi__compute_transparency16:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #36
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	str	r2, [fp, #-32]
	ldr	r3, [fp, #-24]
	ldr	r3, [r3]
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	ldr	r2, [fp, #-16]
	ldr	r2, [r2, #4]
	mul	r3, r2, r3
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-24]
	ldr	r3, [r3, #12]
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-32]
	cmp	r3, #2
	bne	.L1086
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L1087
.L1090:
	ldr	r3, [fp, #-12]
	ldrh	r2, [r3]
	ldr	r3, [fp, #-28]
	ldrh	r3, [r3]
	cmp	r2, r3
	bne	.L1088
	mov	r2, #0
	b	.L1089
.L1088:
	movw	r2, #65535
.L1089:
	ldr	r3, [fp, #-12]
	add	r3, r3, #2
	strh	r2, [r3]	@ movhi
	ldr	r3, [fp, #-12]
	add	r3, r3, #4
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L1087:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-20]
	cmp	r2, r3
	bcc	.L1090
	b	.L1091
.L1086:
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L1092
.L1094:
	ldr	r3, [fp, #-12]
	ldrh	r2, [r3]
	ldr	r3, [fp, #-28]
	ldrh	r3, [r3]
	cmp	r2, r3
	bne	.L1093
	ldr	r3, [fp, #-12]
	add	r3, r3, #2
	ldrh	r2, [r3]
	ldr	r3, [fp, #-28]
	add	r3, r3, #2
	ldrh	r3, [r3]
	cmp	r2, r3
	bne	.L1093
	ldr	r3, [fp, #-12]
	add	r3, r3, #4
	ldrh	r2, [r3]
	ldr	r3, [fp, #-28]
	add	r3, r3, #4
	ldrh	r3, [r3]
	cmp	r2, r3
	bne	.L1093
	ldr	r3, [fp, #-12]
	add	r3, r3, #6
	mov	r2, #0
	strh	r2, [r3]	@ movhi
.L1093:
	ldr	r3, [fp, #-12]
	add	r3, r3, #8
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L1092:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-20]
	cmp	r2, r3
	bcc	.L1094
.L1091:
	mov	r3, #1
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	stbi__compute_transparency16, .-stbi__compute_transparency16
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__expand_png_palette, %function
stbi__expand_png_palette:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #48
	str	r0, [fp, #-40]
	str	r1, [fp, #-44]
	str	r2, [fp, #-48]
	str	r3, [fp, #-52]
	ldr	r3, [fp, #-40]
	ldr	r3, [r3]
	ldr	r3, [r3]
	ldr	r2, [fp, #-40]
	ldr	r2, [r2]
	ldr	r2, [r2, #4]
	mul	r3, r2, r3
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-40]
	ldr	r3, [r3, #12]
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-16]
	mov	r2, #0
	ldr	r1, [fp, #-52]
	mov	r0, r3
	bl	stbi__malloc_mad2
	str	r0, [fp, #-12]
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	bne	.L1097
	mov	r3, #0
	b	.L1098
.L1097:
	ldr	r3, [fp, #-12]
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-52]
	cmp	r3, #3
	bne	.L1099
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L1100
.L1101:
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-8]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsl	r3, r3, #2
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-28]
	ldr	r2, [fp, #-44]
	add	r3, r2, r3
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [fp, #-12]
	strb	r2, [r3]
	ldr	r3, [fp, #-28]
	add	r3, r3, #1
	ldr	r2, [fp, #-44]
	add	r2, r2, r3
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
	ldr	r3, [fp, #-28]
	add	r3, r3, #2
	ldr	r2, [fp, #-44]
	add	r2, r2, r3
	ldr	r3, [fp, #-12]
	add	r3, r3, #2
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
	ldr	r3, [fp, #-12]
	add	r3, r3, #3
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L1100:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-16]
	cmp	r2, r3
	bcc	.L1101
	b	.L1102
.L1099:
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L1103
.L1104:
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-8]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsl	r3, r3, #2
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-32]
	ldr	r2, [fp, #-44]
	add	r3, r2, r3
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [fp, #-12]
	strb	r2, [r3]
	ldr	r3, [fp, #-32]
	add	r3, r3, #1
	ldr	r2, [fp, #-44]
	add	r2, r2, r3
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
	ldr	r3, [fp, #-32]
	add	r3, r3, #2
	ldr	r2, [fp, #-44]
	add	r2, r2, r3
	ldr	r3, [fp, #-12]
	add	r3, r3, #2
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
	ldr	r3, [fp, #-32]
	add	r3, r3, #3
	ldr	r2, [fp, #-44]
	add	r2, r2, r3
	ldr	r3, [fp, #-12]
	add	r3, r3, #3
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
	ldr	r3, [fp, #-12]
	add	r3, r3, #4
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L1103:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-16]
	cmp	r2, r3
	bcc	.L1104
.L1102:
	ldr	r3, [fp, #-40]
	ldr	r3, [r3, #12]
	mov	r0, r3
	bl	free
	ldr	r3, [fp, #-40]
	ldr	r2, [fp, #-24]
	str	r2, [r3, #12]
	mov	r3, #1
.L1098:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__expand_png_palette, .-stbi__expand_png_palette
	.local	stbi__unpremultiply_on_load
	.comm	stbi__unpremultiply_on_load,4,4
	.local	stbi__de_iphone_flag
	.comm	stbi__de_iphone_flag,4,4
	.align	2
	.global	stbi_set_unpremultiply_on_load
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi_set_unpremultiply_on_load, %function
stbi_set_unpremultiply_on_load:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	movw	r3, #:lower16:stbi__unpremultiply_on_load
	movt	r3, #:upper16:stbi__unpremultiply_on_load
	ldr	r2, [fp, #-8]
	str	r2, [r3]
	nop
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	stbi_set_unpremultiply_on_load, .-stbi_set_unpremultiply_on_load
	.align	2
	.global	stbi_convert_iphone_png_to_rgb
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi_convert_iphone_png_to_rgb, %function
stbi_convert_iphone_png_to_rgb:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	movw	r3, #:lower16:stbi__de_iphone_flag
	movt	r3, #:upper16:stbi__de_iphone_flag
	ldr	r2, [fp, #-8]
	str	r2, [r3]
	nop
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	stbi_convert_iphone_png_to_rgb, .-stbi_convert_iphone_png_to_rgb
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__de_iphone, %function
stbi__de_iphone:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #32
	str	r0, [fp, #-32]
	ldr	r3, [fp, #-32]
	ldr	r3, [r3]
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	ldr	r2, [fp, #-16]
	ldr	r2, [r2, #4]
	mul	r3, r2, r3
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-32]
	ldr	r3, [r3, #12]
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #12]
	cmp	r3, #3
	bne	.L1108
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L1109
.L1110:
	ldr	r3, [fp, #-12]
	ldrb	r3, [r3]
	strb	r3, [fp, #-21]
	ldr	r3, [fp, #-12]
	ldrb	r2, [r3, #2]	@ zero_extendqisi2
	ldr	r3, [fp, #-12]
	strb	r2, [r3]
	ldr	r3, [fp, #-12]
	add	r3, r3, #2
	ldrb	r2, [fp, #-21]
	strb	r2, [r3]
	ldr	r3, [fp, #-12]
	add	r3, r3, #3
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L1109:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-20]
	cmp	r2, r3
	bcc	.L1110
	b	.L1119
.L1108:
	movw	r3, #:lower16:stbi__unpremultiply_on_load
	movt	r3, #:upper16:stbi__unpremultiply_on_load
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L1112
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L1113
.L1116:
	ldr	r3, [fp, #-12]
	ldrb	r3, [r3, #3]
	strb	r3, [fp, #-22]
	ldr	r3, [fp, #-12]
	ldrb	r3, [r3]
	strb	r3, [fp, #-23]
	ldrb	r3, [fp, #-22]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1114
	ldrb	r3, [fp, #-22]	@ zero_extendqisi2
	lsr	r3, r3, #1
	strb	r3, [fp, #-24]
	ldr	r3, [fp, #-12]
	add	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	mov	r3, r2
	lsl	r3, r3, #8
	sub	r2, r3, r2
	ldrb	r3, [fp, #-24]	@ zero_extendqisi2
	add	r3, r2, r3
	ldrb	r2, [fp, #-22]	@ zero_extendqisi2
	mov	r1, r2
	mov	r0, r3
	bl	__aeabi_idiv
	mov	r3, r0
	uxtb	r2, r3
	ldr	r3, [fp, #-12]
	strb	r2, [r3]
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	mov	r3, r2
	lsl	r3, r3, #8
	sub	r2, r3, r2
	ldrb	r3, [fp, #-24]	@ zero_extendqisi2
	add	r3, r2, r3
	ldrb	r2, [fp, #-22]	@ zero_extendqisi2
	mov	r1, r2
	mov	r0, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	uxtb	r2, r2
	strb	r2, [r3]
	ldrb	r2, [fp, #-23]	@ zero_extendqisi2
	mov	r3, r2
	lsl	r3, r3, #8
	sub	r2, r3, r2
	ldrb	r3, [fp, #-24]	@ zero_extendqisi2
	add	r3, r2, r3
	ldrb	r2, [fp, #-22]	@ zero_extendqisi2
	mov	r1, r2
	mov	r0, r3
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [fp, #-12]
	add	r3, r3, #2
	uxtb	r2, r2
	strb	r2, [r3]
	b	.L1115
.L1114:
	ldr	r3, [fp, #-12]
	ldrb	r2, [r3, #2]	@ zero_extendqisi2
	ldr	r3, [fp, #-12]
	strb	r2, [r3]
	ldr	r3, [fp, #-12]
	add	r3, r3, #2
	ldrb	r2, [fp, #-23]
	strb	r2, [r3]
.L1115:
	ldr	r3, [fp, #-12]
	add	r3, r3, #4
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L1113:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-20]
	cmp	r2, r3
	bcc	.L1116
	b	.L1119
.L1112:
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L1117
.L1118:
	ldr	r3, [fp, #-12]
	ldrb	r3, [r3]
	strb	r3, [fp, #-25]
	ldr	r3, [fp, #-12]
	ldrb	r2, [r3, #2]	@ zero_extendqisi2
	ldr	r3, [fp, #-12]
	strb	r2, [r3]
	ldr	r3, [fp, #-12]
	add	r3, r3, #2
	ldrb	r2, [fp, #-25]
	strb	r2, [r3]
	ldr	r3, [fp, #-12]
	add	r3, r3, #4
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L1117:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-20]
	cmp	r2, r3
	bcc	.L1118
.L1119:
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__de_iphone, .-stbi__de_iphone
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__parse_png_file, %function
stbi__parse_png_file:
	@ args = 0, pretend = 0, frame = 1128
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, fp, lr}
	add	fp, sp, #8
	sub	sp, sp, #1136
	sub	sp, sp, #12
	str	r0, [fp, #-1128]
	str	r1, [fp, #-1132]
	str	r2, [fp, #-1136]
	mov	r3, #0
	strb	r3, [fp, #-13]
	mov	r3, #0
	strb	r3, [fp, #-14]
	sub	r3, fp, #1088
	sub	r3, r3, #12
	sub	r3, r3, #4
	mov	r2, #0
	strh	r2, [r3]	@ movhi
	strb	r2, [r3, #2]
	mov	r3, #0
	str	r3, [fp, #-20]
	mov	r3, #0
	str	r3, [fp, #-24]
	mov	r3, #0
	str	r3, [fp, #-32]
	mov	r3, #1
	str	r3, [fp, #-36]
	mov	r3, #0
	str	r3, [fp, #-44]
	mov	r3, #0
	str	r3, [fp, #-48]
	mov	r3, #0
	str	r3, [fp, #-52]
	ldr	r3, [fp, #-1128]
	ldr	r3, [r3]
	str	r3, [fp, #-56]
	ldr	r3, [fp, #-1128]
	mov	r2, #0
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1128]
	mov	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1128]
	mov	r2, #0
	str	r2, [r3, #12]
	ldr	r0, [fp, #-56]
	bl	stbi__check_png_header
	mov	r3, r0
	cmp	r3, #0
	bne	.L1121
	mov	r3, #0
	b	.L1202
.L1121:
	ldr	r3, [fp, #-1132]
	cmp	r3, #1
	bne	.L1123
	mov	r3, #1
	b	.L1202
.L1123:
	sub	r3, fp, #1104
	sub	r3, r3, #12
	sub	r3, r3, #4
	ldr	r1, [fp, #-56]
	mov	r0, r3
	bl	stbi__get_chunk_header
	ldr	r3, [fp, #-1116]
	movw	r2, #20036
	movt	r2, 18757
	cmp	r3, r2
	beq	.L1124
	movw	r2, #20036
	movt	r2, 18757
	cmp	r3, r2
	bhi	.L1125
	movw	r2, #16969
	movt	r2, 17255
	cmp	r3, r2
	beq	.L1126
	movw	r2, #16724
	movt	r2, 18756
	cmp	r3, r2
	beq	.L1127
	b	.L1128
.L1125:
	movw	r2, #21573
	movt	r2, 20556
	cmp	r3, r2
	beq	.L1129
	movw	r2, #20051
	movt	r2, 29778
	cmp	r3, r2
	beq	.L1130
	movw	r2, #17490
	movt	r2, 18760
	cmp	r3, r2
	beq	.L1131
	b	.L1128
.L1126:
	mov	r3, #1
	str	r3, [fp, #-52]
	ldr	r3, [fp, #-1120]
	mov	r1, r3
	ldr	r0, [fp, #-56]
	bl	stbi__skip
	b	.L1132
.L1131:
	ldr	r3, [fp, #-36]
	cmp	r3, #0
	bne	.L1133
	mov	r3, #0
	b	.L1202
.L1133:
	mov	r3, #0
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-1120]
	cmp	r3, #13
	beq	.L1135
	mov	r3, #0
	b	.L1202
.L1135:
	ldr	r0, [fp, #-56]
	bl	stbi__get32be
	mov	r2, r0
	ldr	r3, [fp, #-56]
	str	r2, [r3]
	ldr	r3, [fp, #-56]
	ldr	r3, [r3]
	cmp	r3, #16777216
	bls	.L1136
	mov	r3, #0
	b	.L1202
.L1136:
	ldr	r0, [fp, #-56]
	bl	stbi__get32be
	mov	r2, r0
	ldr	r3, [fp, #-56]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-56]
	ldr	r3, [r3, #4]
	cmp	r3, #16777216
	bls	.L1137
	mov	r3, #0
	b	.L1202
.L1137:
	ldr	r0, [fp, #-56]
	bl	stbi__get8
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [fp, #-1128]
	str	r2, [r3, #16]
	ldr	r3, [fp, #-1128]
	ldr	r3, [r3, #16]
	cmp	r3, #1
	beq	.L1138
	ldr	r3, [fp, #-1128]
	ldr	r3, [r3, #16]
	cmp	r3, #2
	beq	.L1138
	ldr	r3, [fp, #-1128]
	ldr	r3, [r3, #16]
	cmp	r3, #4
	beq	.L1138
	ldr	r3, [fp, #-1128]
	ldr	r3, [r3, #16]
	cmp	r3, #8
	beq	.L1138
	ldr	r3, [fp, #-1128]
	ldr	r3, [r3, #16]
	cmp	r3, #16
	beq	.L1138
	mov	r3, #0
	b	.L1202
.L1138:
	ldr	r0, [fp, #-56]
	bl	stbi__get8
	mov	r3, r0
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-48]
	cmp	r3, #6
	ble	.L1139
	mov	r3, #0
	b	.L1202
.L1139:
	ldr	r3, [fp, #-48]
	cmp	r3, #3
	bne	.L1140
	ldr	r3, [fp, #-1128]
	ldr	r3, [r3, #16]
	cmp	r3, #16
	bne	.L1140
	mov	r3, #0
	b	.L1202
.L1140:
	ldr	r3, [fp, #-48]
	cmp	r3, #3
	bne	.L1141
	mov	r3, #3
	strb	r3, [fp, #-13]
	b	.L1142
.L1141:
	ldr	r3, [fp, #-48]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L1142
	mov	r3, #0
	b	.L1202
.L1142:
	ldr	r0, [fp, #-56]
	bl	stbi__get8
	mov	r3, r0
	str	r3, [fp, #-60]
	ldr	r3, [fp, #-60]
	cmp	r3, #0
	beq	.L1143
	mov	r3, #0
	b	.L1202
.L1143:
	ldr	r0, [fp, #-56]
	bl	stbi__get8
	mov	r3, r0
	str	r3, [fp, #-64]
	ldr	r3, [fp, #-64]
	cmp	r3, #0
	beq	.L1144
	mov	r3, #0
	b	.L1202
.L1144:
	ldr	r0, [fp, #-56]
	bl	stbi__get8
	mov	r3, r0
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-44]
	cmp	r3, #1
	ble	.L1145
	mov	r3, #0
	b	.L1202
.L1145:
	ldr	r3, [fp, #-56]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L1146
	ldr	r3, [fp, #-56]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L1147
.L1146:
	mov	r3, #0
	b	.L1202
.L1147:
	ldrb	r3, [fp, #-13]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L1148
	ldr	r3, [fp, #-48]
	and	r3, r3, #2
	cmp	r3, #0
	beq	.L1149
	mov	r2, #3
	b	.L1150
.L1149:
	mov	r2, #1
.L1150:
	ldr	r3, [fp, #-48]
	asr	r3, r3, #2
	and	r3, r3, #1
	add	r2, r2, r3
	ldr	r3, [fp, #-56]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-56]
	ldr	r3, [r3]
	mov	r1, r3
	mov	r0, #1073741824
	bl	__aeabi_uidiv
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [fp, #-56]
	ldr	r3, [r3, #8]
	mov	r1, r3
	mov	r0, r2
	bl	__aeabi_uidiv
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [fp, #-56]
	ldr	r3, [r3, #4]
	cmp	r2, r3
	bcs	.L1151
	mov	r3, #0
	b	.L1202
.L1151:
	ldr	r3, [fp, #-1132]
	cmp	r3, #2
	bne	.L1203
	mov	r3, #1
	b	.L1202
.L1148:
	ldr	r3, [fp, #-56]
	mov	r2, #1
	str	r2, [r3, #8]
	ldr	r3, [fp, #-56]
	ldr	r3, [r3]
	mov	r1, r3
	mov	r0, #268435456
	bl	__aeabi_uidiv
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [fp, #-56]
	ldr	r3, [r3, #4]
	cmp	r2, r3
	bcs	.L1203
	mov	r3, #0
	b	.L1202
.L1129:
	ldr	r3, [fp, #-36]
	cmp	r3, #0
	beq	.L1153
	mov	r3, #0
	b	.L1202
.L1153:
	ldr	r3, [fp, #-1120]
	cmp	r3, #768
	bls	.L1154
	mov	r3, #0
	b	.L1202
.L1154:
	ldr	r2, [fp, #-1120]
	movw	r3, #43691
	movt	r3, 43690
	umull	r2, r3, r3, r2
	lsr	r3, r3, #1
	str	r3, [fp, #-32]
	ldr	r2, [fp, #-32]
	mov	r3, r2
	lsl	r3, r3, #1
	add	r2, r3, r2
	ldr	r3, [fp, #-1120]
	cmp	r2, r3
	beq	.L1155
	mov	r3, #0
	b	.L1202
.L1155:
	mov	r3, #0
	str	r3, [fp, #-28]
	b	.L1156
.L1157:
	ldr	r3, [fp, #-28]
	lsl	r4, r3, #2
	ldr	r0, [fp, #-56]
	bl	stbi__get8
	mov	r3, r0
	mov	r2, r3
	sub	r3, fp, #12
	add	r3, r3, r4
	strb	r2, [r3, #-1088]
	ldr	r3, [fp, #-28]
	lsl	r3, r3, #2
	add	r4, r3, #1
	ldr	r0, [fp, #-56]
	bl	stbi__get8
	mov	r3, r0
	mov	r2, r3
	sub	r3, fp, #12
	add	r3, r3, r4
	strb	r2, [r3, #-1088]
	ldr	r3, [fp, #-28]
	lsl	r3, r3, #2
	add	r4, r3, #2
	ldr	r0, [fp, #-56]
	bl	stbi__get8
	mov	r3, r0
	mov	r2, r3
	sub	r3, fp, #12
	add	r3, r3, r4
	strb	r2, [r3, #-1088]
	ldr	r3, [fp, #-28]
	lsl	r3, r3, #2
	add	r3, r3, #3
	sub	r2, fp, #12
	add	r3, r2, r3
	mvn	r2, #0
	strb	r2, [r3, #-1088]
	ldr	r3, [fp, #-28]
	add	r3, r3, #1
	str	r3, [fp, #-28]
.L1156:
	ldr	r2, [fp, #-28]
	ldr	r3, [fp, #-32]
	cmp	r2, r3
	bcc	.L1157
	b	.L1132
.L1130:
	ldr	r3, [fp, #-36]
	cmp	r3, #0
	beq	.L1158
	mov	r3, #0
	b	.L1202
.L1158:
	ldr	r3, [fp, #-1128]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	beq	.L1159
	mov	r3, #0
	b	.L1202
.L1159:
	ldrb	r3, [fp, #-13]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1160
	ldr	r3, [fp, #-1132]
	cmp	r3, #2
	bne	.L1161
	ldr	r3, [fp, #-56]
	mov	r2, #4
	str	r2, [r3, #8]
	mov	r3, #1
	b	.L1202
.L1161:
	ldr	r3, [fp, #-32]
	cmp	r3, #0
	bne	.L1162
	mov	r3, #0
	b	.L1202
.L1162:
	ldr	r3, [fp, #-1120]
	ldr	r2, [fp, #-32]
	cmp	r2, r3
	bcs	.L1163
	mov	r3, #0
	b	.L1202
.L1163:
	mov	r3, #4
	strb	r3, [fp, #-13]
	mov	r3, #0
	str	r3, [fp, #-28]
	b	.L1164
.L1165:
	ldr	r3, [fp, #-28]
	lsl	r3, r3, #2
	add	r4, r3, #3
	ldr	r0, [fp, #-56]
	bl	stbi__get8
	mov	r3, r0
	mov	r2, r3
	sub	r3, fp, #12
	add	r3, r3, r4
	strb	r2, [r3, #-1088]
	ldr	r3, [fp, #-28]
	add	r3, r3, #1
	str	r3, [fp, #-28]
.L1164:
	ldr	r3, [fp, #-1120]
	ldr	r2, [fp, #-28]
	cmp	r2, r3
	bcc	.L1165
	b	.L1132
.L1160:
	ldr	r3, [fp, #-56]
	ldr	r3, [r3, #8]
	and	r3, r3, #1
	cmp	r3, #0
	bne	.L1167
	mov	r3, #0
	b	.L1202
.L1167:
	ldr	r2, [fp, #-1120]
	ldr	r3, [fp, #-56]
	ldr	r3, [r3, #8]
	lsl	r3, r3, #1
	cmp	r2, r3
	beq	.L1168
	mov	r3, #0
	b	.L1202
.L1168:
	mov	r3, #1
	strb	r3, [fp, #-14]
	ldr	r3, [fp, #-1128]
	ldr	r3, [r3, #16]
	cmp	r3, #16
	bne	.L1169
	mov	r3, #0
	str	r3, [fp, #-40]
	b	.L1170
.L1171:
	ldr	r0, [fp, #-56]
	bl	stbi__get16be
	mov	r3, r0
	uxth	r2, r3
	sub	r3, fp, #12
	sub	r3, r3, #1088
	sub	r3, r3, #12
	ldr	r1, [fp, #-40]
	lsl	r1, r1, #1
	add	r3, r3, r1
	strh	r2, [r3]	@ movhi
	ldr	r3, [fp, #-40]
	add	r3, r3, #1
	str	r3, [fp, #-40]
.L1170:
	ldr	r3, [fp, #-56]
	ldr	r3, [r3, #8]
	ldr	r2, [fp, #-40]
	cmp	r2, r3
	blt	.L1171
	b	.L1132
.L1169:
	mov	r3, #0
	str	r3, [fp, #-40]
	b	.L1172
.L1173:
	ldr	r0, [fp, #-56]
	bl	stbi__get16be
	mov	r3, r0
	uxtb	r2, r3
	ldr	r3, [fp, #-1128]
	ldr	r1, [r3, #16]
	movw	r3, #:lower16:stbi__depth_scale_table
	movt	r3, #:upper16:stbi__depth_scale_table
	ldrb	r3, [r3, r1]	@ zero_extendqisi2
	smulbb	r3, r2, r3
	uxtb	r1, r3
	sub	r3, fp, #1088
	sub	r3, r3, #12
	sub	r3, r3, #4
	ldr	r2, [fp, #-40]
	add	r3, r3, r2
	mov	r2, r1
	strb	r2, [r3]
	ldr	r3, [fp, #-40]
	add	r3, r3, #1
	str	r3, [fp, #-40]
.L1172:
	ldr	r3, [fp, #-56]
	ldr	r3, [r3, #8]
	ldr	r2, [fp, #-40]
	cmp	r2, r3
	blt	.L1173
	b	.L1132
.L1127:
	ldr	r3, [fp, #-36]
	cmp	r3, #0
	beq	.L1174
	mov	r3, #0
	b	.L1202
.L1174:
	ldrb	r3, [fp, #-13]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1175
	ldr	r3, [fp, #-32]
	cmp	r3, #0
	bne	.L1175
	mov	r3, #0
	b	.L1202
.L1175:
	ldr	r3, [fp, #-1132]
	cmp	r3, #2
	bne	.L1176
	ldrb	r2, [fp, #-13]	@ zero_extendqisi2
	ldr	r3, [fp, #-56]
	str	r2, [r3, #8]
	mov	r3, #1
	b	.L1202
.L1176:
	ldr	r2, [fp, #-1120]
	ldr	r3, [fp, #-20]
	add	r3, r2, r3
	mov	r2, r3
	ldr	r3, [fp, #-20]
	cmp	r2, r3
	bge	.L1177
	mov	r3, #0
	b	.L1202
.L1177:
	ldr	r2, [fp, #-1120]
	ldr	r3, [fp, #-20]
	add	r3, r2, r3
	ldr	r2, [fp, #-24]
	cmp	r2, r3
	bcs	.L1178
	ldr	r3, [fp, #-24]
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	bne	.L1180
	ldr	r3, [fp, #-1120]
	cmp	r3, #4096
	movcs	r3, r3
	movcc	r3, #4096
	str	r3, [fp, #-24]
	b	.L1180
.L1181:
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #1
	str	r3, [fp, #-24]
.L1180:
	ldr	r2, [fp, #-1120]
	ldr	r3, [fp, #-20]
	add	r3, r2, r3
	ldr	r2, [fp, #-24]
	cmp	r2, r3
	bcc	.L1181
	ldr	r3, [fp, #-1128]
	ldr	r3, [r3, #4]
	ldr	r1, [fp, #-24]
	mov	r0, r3
	bl	realloc
	str	r0, [fp, #-72]
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	bne	.L1182
	mov	r3, #0
	b	.L1202
.L1182:
	ldr	r3, [fp, #-1128]
	ldr	r2, [fp, #-72]
	str	r2, [r3, #4]
.L1178:
	ldr	r3, [fp, #-1128]
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-20]
	add	r3, r2, r3
	ldr	r2, [fp, #-1120]
	mov	r1, r3
	ldr	r0, [fp, #-56]
	bl	stbi__getn
	mov	r3, r0
	cmp	r3, #0
	bne	.L1183
	mov	r3, #0
	b	.L1202
.L1183:
	ldr	r3, [fp, #-1120]
	ldr	r2, [fp, #-20]
	add	r3, r2, r3
	str	r3, [fp, #-20]
	b	.L1132
.L1124:
	ldr	r3, [fp, #-36]
	cmp	r3, #0
	beq	.L1184
	mov	r3, #0
	b	.L1202
.L1184:
	ldr	r3, [fp, #-1132]
	cmp	r3, #0
	beq	.L1186
	mov	r3, #1
	b	.L1202
.L1186:
	ldr	r3, [fp, #-1128]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	bne	.L1187
	mov	r3, #0
	b	.L1202
.L1187:
	ldr	r3, [fp, #-56]
	ldr	r3, [r3]
	ldr	r2, [fp, #-1128]
	ldr	r2, [r2, #16]
	mul	r3, r2, r3
	add	r3, r3, #7
	lsr	r3, r3, #3
	str	r3, [fp, #-76]
	ldr	r3, [fp, #-56]
	ldr	r3, [r3, #4]
	ldr	r2, [fp, #-76]
	mul	r3, r2, r3
	ldr	r2, [fp, #-56]
	ldr	r2, [r2, #8]
	mul	r2, r2, r3
	ldr	r3, [fp, #-56]
	ldr	r3, [r3, #4]
	add	r3, r2, r3
	str	r3, [fp, #-1124]
	ldr	r3, [fp, #-1128]
	ldr	r0, [r3, #4]
	ldr	r1, [fp, #-20]
	ldr	r3, [fp, #-1124]
	mov	ip, r3
	ldr	r3, [fp, #-52]
	cmp	r3, #0
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	mov	r2, r3
	sub	r3, fp, #1104
	sub	r3, r3, #12
	sub	r3, r3, #8
	str	r2, [sp]
	mov	r2, ip
	bl	stbi_zlib_decode_malloc_guesssize_headerflag
	mov	r2, r0
	ldr	r3, [fp, #-1128]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-1128]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	bne	.L1188
	mov	r3, #0
	b	.L1202
.L1188:
	ldr	r3, [fp, #-1128]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	free
	ldr	r3, [fp, #-1128]
	mov	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [fp, #-56]
	ldr	r3, [r3, #8]
	add	r3, r3, #1
	ldr	r2, [fp, #-1136]
	cmp	r2, r3
	bne	.L1189
	ldr	r3, [fp, #-1136]
	cmp	r3, #3
	beq	.L1189
	ldrb	r3, [fp, #-13]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1190
.L1189:
	ldrb	r3, [fp, #-14]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1191
.L1190:
	ldr	r3, [fp, #-56]
	ldr	r3, [r3, #8]
	add	r2, r3, #1
	ldr	r3, [fp, #-56]
	str	r2, [r3, #12]
	b	.L1192
.L1191:
	ldr	r3, [fp, #-56]
	ldr	r2, [r3, #8]
	ldr	r3, [fp, #-56]
	str	r2, [r3, #12]
.L1192:
	ldr	r3, [fp, #-1128]
	ldr	r1, [r3, #8]
	ldr	r0, [fp, #-1124]
	ldr	r3, [fp, #-56]
	ldr	ip, [r3, #12]
	ldr	r3, [fp, #-1128]
	ldr	r3, [r3, #16]
	ldr	r2, [fp, #-44]
	str	r2, [sp, #8]
	ldr	r2, [fp, #-48]
	str	r2, [sp, #4]
	str	r3, [sp]
	mov	r3, ip
	mov	r2, r0
	ldr	r0, [fp, #-1128]
	bl	stbi__create_png_image
	mov	r3, r0
	cmp	r3, #0
	bne	.L1193
	mov	r3, #0
	b	.L1202
.L1193:
	ldrb	r3, [fp, #-14]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1194
	ldr	r3, [fp, #-1128]
	ldr	r3, [r3, #16]
	cmp	r3, #16
	bne	.L1195
	ldr	r3, [fp, #-56]
	ldr	r2, [r3, #12]
	sub	r3, fp, #1088
	sub	r3, r3, #12
	sub	r3, r3, #12
	mov	r1, r3
	ldr	r0, [fp, #-1128]
	bl	stbi__compute_transparency16
	mov	r3, r0
	cmp	r3, #0
	bne	.L1194
	mov	r3, #0
	b	.L1202
.L1195:
	ldr	r3, [fp, #-56]
	ldr	r2, [r3, #12]
	sub	r3, fp, #1088
	sub	r3, r3, #12
	sub	r3, r3, #4
	mov	r1, r3
	ldr	r0, [fp, #-1128]
	bl	stbi__compute_transparency
	mov	r3, r0
	cmp	r3, #0
	bne	.L1194
	mov	r3, #0
	b	.L1202
.L1194:
	ldr	r3, [fp, #-52]
	cmp	r3, #0
	beq	.L1196
	movw	r3, #:lower16:stbi__de_iphone_flag
	movt	r3, #:upper16:stbi__de_iphone_flag
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L1196
	ldr	r3, [fp, #-56]
	ldr	r3, [r3, #12]
	cmp	r3, #2
	ble	.L1196
	ldr	r0, [fp, #-1128]
	bl	stbi__de_iphone
.L1196:
	ldrb	r3, [fp, #-13]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1197
	ldrb	r2, [fp, #-13]	@ zero_extendqisi2
	ldr	r3, [fp, #-56]
	str	r2, [r3, #8]
	ldrb	r2, [fp, #-13]	@ zero_extendqisi2
	ldr	r3, [fp, #-56]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1136]
	cmp	r3, #2
	ble	.L1198
	ldr	r3, [fp, #-56]
	ldr	r2, [fp, #-1136]
	str	r2, [r3, #12]
.L1198:
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-56]
	ldr	r3, [r3, #12]
	sub	r1, fp, #1088
	sub	r1, r1, #12
	ldr	r0, [fp, #-1128]
	bl	stbi__expand_png_palette
	mov	r3, r0
	cmp	r3, #0
	bne	.L1199
	mov	r3, #0
	b	.L1202
.L1197:
	ldrb	r3, [fp, #-14]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1199
	ldr	r3, [fp, #-56]
	ldr	r3, [r3, #8]
	add	r2, r3, #1
	ldr	r3, [fp, #-56]
	str	r2, [r3, #8]
.L1199:
	ldr	r3, [fp, #-1128]
	ldr	r3, [r3, #8]
	mov	r0, r3
	bl	free
	ldr	r3, [fp, #-1128]
	mov	r2, #0
	str	r2, [r3, #8]
	ldr	r0, [fp, #-56]
	bl	stbi__get32be
	mov	r3, #1
	b	.L1202
.L1128:
	ldr	r3, [fp, #-36]
	cmp	r3, #0
	beq	.L1200
	mov	r3, #0
	b	.L1202
.L1200:
	ldr	r3, [fp, #-1116]
	and	r3, r3, #536870912
	cmp	r3, #0
	bne	.L1201
	mov	r3, #0
	b	.L1202
.L1201:
	ldr	r3, [fp, #-1120]
	mov	r1, r3
	ldr	r0, [fp, #-56]
	bl	stbi__skip
	b	.L1132
.L1203:
	nop
.L1132:
	ldr	r0, [fp, #-56]
	bl	stbi__get32be
	b	.L1123
.L1202:
	mov	r0, r3
	sub	sp, fp, #8
	@ sp needed
	pop	{r4, fp, pc}
	.size	stbi__parse_png_file, .-stbi__parse_png_file
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__do_png, %function
stbi__do_png:
	@ args = 8, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #32
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	str	r3, [fp, #-28]
	mov	r3, #0
	str	r3, [fp, #-8]
	ldr	r3, [fp, #4]
	cmp	r3, #0
	blt	.L1205
	ldr	r3, [fp, #4]
	cmp	r3, #4
	ble	.L1206
.L1205:
	mov	r3, #0
	b	.L1207
.L1206:
	ldr	r2, [fp, #4]
	mov	r1, #0
	ldr	r0, [fp, #-16]
	bl	stbi__parse_png_file
	mov	r3, r0
	cmp	r3, #0
	beq	.L1208
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #16]
	cmp	r3, #7
	bgt	.L1209
	ldr	r3, [fp, #8]
	mov	r2, #8
	str	r2, [r3]
	b	.L1210
.L1209:
	ldr	r3, [fp, #-16]
	ldr	r2, [r3, #16]
	ldr	r3, [fp, #8]
	str	r2, [r3]
.L1210:
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #12]
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-16]
	mov	r2, #0
	str	r2, [r3, #12]
	ldr	r3, [fp, #4]
	cmp	r3, #0
	beq	.L1211
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	ldr	r3, [r3, #12]
	ldr	r2, [fp, #4]
	cmp	r2, r3
	beq	.L1211
	ldr	r3, [fp, #8]
	ldr	r3, [r3]
	cmp	r3, #8
	bne	.L1212
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	ldr	r1, [r3, #12]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	str	r3, [sp]
	mov	r3, r2
	ldr	r2, [fp, #4]
	ldr	r0, [fp, #-8]
	bl	stbi__convert_format
	str	r0, [fp, #-8]
	b	.L1213
.L1212:
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	ldr	r1, [r3, #12]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	ldr	r2, [r3]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	str	r3, [sp]
	mov	r3, r2
	ldr	r2, [fp, #4]
	ldr	r0, [fp, #-8]
	bl	stbi__convert_format16
	str	r0, [fp, #-8]
.L1213:
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	ldr	r2, [fp, #4]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	bne	.L1211
	ldr	r3, [fp, #-8]
	b	.L1207
.L1211:
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	ldr	r3, [r3]
	mov	r2, r3
	ldr	r3, [fp, #-20]
	str	r2, [r3]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	mov	r2, r3
	ldr	r3, [fp, #-24]
	str	r2, [r3]
	ldr	r3, [fp, #-28]
	cmp	r3, #0
	beq	.L1208
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	ldr	r2, [r3, #8]
	ldr	r3, [fp, #-28]
	str	r2, [r3]
.L1208:
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #12]
	mov	r0, r3
	bl	free
	ldr	r3, [fp, #-16]
	mov	r2, #0
	str	r2, [r3, #12]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #8]
	mov	r0, r3
	bl	free
	ldr	r3, [fp, #-16]
	mov	r2, #0
	str	r2, [r3, #8]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	free
	ldr	r3, [fp, #-16]
	mov	r2, #0
	str	r2, [r3, #4]
	ldr	r3, [fp, #-8]
.L1207:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__do_png, .-stbi__do_png
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__png_load, %function
stbi__png_load:
	@ args = 8, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #48
	str	r0, [fp, #-32]
	str	r1, [fp, #-36]
	str	r2, [fp, #-40]
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-32]
	str	r3, [fp, #-24]
	sub	r0, fp, #24
	ldr	r3, [fp, #8]
	str	r3, [sp, #4]
	ldr	r3, [fp, #4]
	str	r3, [sp]
	ldr	r3, [fp, #-44]
	ldr	r2, [fp, #-40]
	ldr	r1, [fp, #-36]
	bl	stbi__do_png
	mov	r3, r0
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__png_load, .-stbi__png_load
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__png_test, %function
stbi__png_test:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-16]
	ldr	r0, [fp, #-16]
	bl	stbi__check_png_header
	str	r0, [fp, #-8]
	ldr	r0, [fp, #-16]
	bl	stbi__rewind
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__png_test, .-stbi__png_test
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__png_info_raw, %function
stbi__png_info_raw:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	str	r3, [fp, #-20]
	mov	r2, #0
	mov	r1, #2
	ldr	r0, [fp, #-8]
	bl	stbi__parse_png_file
	mov	r3, r0
	cmp	r3, #0
	bne	.L1219
	ldr	r3, [fp, #-8]
	ldr	r3, [r3]
	mov	r0, r3
	bl	stbi__rewind
	mov	r3, #0
	b	.L1220
.L1219:
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	beq	.L1221
	ldr	r3, [fp, #-8]
	ldr	r3, [r3]
	ldr	r3, [r3]
	mov	r2, r3
	ldr	r3, [fp, #-12]
	str	r2, [r3]
.L1221:
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	beq	.L1222
	ldr	r3, [fp, #-8]
	ldr	r3, [r3]
	ldr	r3, [r3, #4]
	mov	r2, r3
	ldr	r3, [fp, #-16]
	str	r2, [r3]
.L1222:
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	beq	.L1223
	ldr	r3, [fp, #-8]
	ldr	r3, [r3]
	ldr	r2, [r3, #8]
	ldr	r3, [fp, #-20]
	str	r2, [r3]
.L1223:
	mov	r3, #1
.L1220:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__png_info_raw, .-stbi__png_info_raw
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__png_info, %function
stbi__png_info:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #40
	str	r0, [fp, #-32]
	str	r1, [fp, #-36]
	str	r2, [fp, #-40]
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-32]
	str	r3, [fp, #-24]
	sub	r0, fp, #24
	ldr	r3, [fp, #-44]
	ldr	r2, [fp, #-40]
	ldr	r1, [fp, #-36]
	bl	stbi__png_info_raw
	mov	r3, r0
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__png_info, .-stbi__png_info
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__png_is16, %function
stbi__png_is16:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #32
	str	r0, [fp, #-32]
	ldr	r3, [fp, #-32]
	str	r3, [fp, #-24]
	sub	r0, fp, #24
	mov	r3, #0
	mov	r2, #0
	mov	r1, #0
	bl	stbi__png_info_raw
	mov	r3, r0
	cmp	r3, #0
	bne	.L1227
	mov	r3, #0
	b	.L1230
.L1227:
	ldr	r3, [fp, #-8]
	cmp	r3, #16
	beq	.L1229
	ldr	r3, [fp, #-24]
	mov	r0, r3
	bl	stbi__rewind
	mov	r3, #0
	b	.L1230
.L1229:
	mov	r3, #1
.L1230:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__png_is16, .-stbi__png_is16
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__bmp_test_raw, %function
stbi__bmp_test_raw:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-16]
	ldr	r0, [fp, #-16]
	bl	stbi__get8
	mov	r3, r0
	cmp	r3, #66
	beq	.L1232
	mov	r3, #0
	b	.L1233
.L1232:
	ldr	r0, [fp, #-16]
	bl	stbi__get8
	mov	r3, r0
	cmp	r3, #77
	beq	.L1234
	mov	r3, #0
	b	.L1233
.L1234:
	ldr	r0, [fp, #-16]
	bl	stbi__get32le
	ldr	r0, [fp, #-16]
	bl	stbi__get16le
	ldr	r0, [fp, #-16]
	bl	stbi__get16le
	ldr	r0, [fp, #-16]
	bl	stbi__get32le
	ldr	r0, [fp, #-16]
	bl	stbi__get32le
	mov	r3, r0
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	cmp	r3, #12
	beq	.L1235
	ldr	r3, [fp, #-8]
	cmp	r3, #40
	beq	.L1235
	ldr	r3, [fp, #-8]
	cmp	r3, #56
	beq	.L1235
	ldr	r3, [fp, #-8]
	cmp	r3, #108
	beq	.L1235
	ldr	r3, [fp, #-8]
	cmp	r3, #124
	bne	.L1236
.L1235:
	mov	r3, #1
	b	.L1237
.L1236:
	mov	r3, #0
.L1237:
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-12]
.L1233:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__bmp_test_raw, .-stbi__bmp_test_raw
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__bmp_test, %function
stbi__bmp_test:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-16]
	ldr	r0, [fp, #-16]
	bl	stbi__bmp_test_raw
	str	r0, [fp, #-8]
	ldr	r0, [fp, #-16]
	bl	stbi__rewind
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__bmp_test, .-stbi__bmp_test
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__high_bit, %function
stbi__high_bit:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	str	r0, [fp, #-16]
	mov	r3, #0
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	bne	.L1241
	mvn	r3, #0
	b	.L1242
.L1241:
	ldr	r3, [fp, #-16]
	cmp	r3, #65536
	bcc	.L1243
	ldr	r3, [fp, #-8]
	add	r3, r3, #16
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-16]
	lsr	r3, r3, #16
	str	r3, [fp, #-16]
.L1243:
	ldr	r3, [fp, #-16]
	cmp	r3, #255
	bls	.L1244
	ldr	r3, [fp, #-8]
	add	r3, r3, #8
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-16]
	lsr	r3, r3, #8
	str	r3, [fp, #-16]
.L1244:
	ldr	r3, [fp, #-16]
	cmp	r3, #15
	bls	.L1245
	ldr	r3, [fp, #-8]
	add	r3, r3, #4
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-16]
	lsr	r3, r3, #4
	str	r3, [fp, #-16]
.L1245:
	ldr	r3, [fp, #-16]
	cmp	r3, #3
	bls	.L1246
	ldr	r3, [fp, #-8]
	add	r3, r3, #2
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-16]
	lsr	r3, r3, #2
	str	r3, [fp, #-16]
.L1246:
	ldr	r3, [fp, #-16]
	cmp	r3, #1
	bls	.L1247
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L1247:
	ldr	r3, [fp, #-8]
.L1242:
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	stbi__high_bit, .-stbi__high_bit
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__bitcount, %function
stbi__bitcount:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	movw	r2, #21845
	movt	r2, 21845
	and	r2, r2, r3
	ldr	r3, [fp, #-8]
	lsr	r1, r3, #1
	movw	r3, #21845
	movt	r3, 21845
	and	r3, r3, r1
	add	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	movw	r2, #13107
	movt	r2, 13107
	and	r2, r2, r3
	ldr	r3, [fp, #-8]
	lsr	r1, r3, #2
	movw	r3, #13107
	movt	r3, 13107
	and	r3, r3, r1
	add	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	lsr	r2, r3, #4
	ldr	r3, [fp, #-8]
	add	r2, r2, r3
	movw	r3, #3855
	movt	r3, 3855
	and	r3, r3, r2
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	lsr	r3, r3, #8
	ldr	r2, [fp, #-8]
	add	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	lsr	r3, r3, #16
	ldr	r2, [fp, #-8]
	add	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	uxtb	r3, r3
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	stbi__bitcount, .-stbi__bitcount
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__shiftsigned, %function
stbi__shiftsigned:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	bge	.L1251
	ldr	r3, [fp, #-12]
	rsb	r3, r3, #0
	ldr	r2, [fp, #-8]
	lsl	r3, r2, r3
	str	r3, [fp, #-8]
	b	.L1252
.L1251:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-12]
	lsr	r3, r2, r3
	str	r3, [fp, #-8]
.L1252:
	ldr	r3, [fp, #-16]
	rsb	r3, r3, #8
	ldr	r2, [fp, #-8]
	lsr	r3, r2, r3
	str	r3, [fp, #-8]
	movw	r3, #:lower16:mul_table.9984
	movt	r3, #:upper16:mul_table.9984
	ldr	r2, [fp, #-16]
	ldr	r3, [r3, r2, lsl #2]
	ldr	r2, [fp, #-8]
	mul	r3, r2, r3
	mov	r1, r3
	movw	r3, #:lower16:shift_table.9985
	movt	r3, #:upper16:shift_table.9985
	ldr	r2, [fp, #-16]
	ldr	r3, [r3, r2, lsl #2]
	asr	r3, r1, r3
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	stbi__shiftsigned, .-stbi__shiftsigned
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__bmp_parse_header, %function
stbi__bmp_parse_header:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #24
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	ldr	r0, [fp, #-24]
	bl	stbi__get8
	mov	r3, r0
	cmp	r3, #66
	bne	.L1255
	ldr	r0, [fp, #-24]
	bl	stbi__get8
	mov	r3, r0
	cmp	r3, #77
	beq	.L1256
.L1255:
	mov	r3, #0
	b	.L1257
.L1256:
	ldr	r0, [fp, #-24]
	bl	stbi__get32le
	ldr	r0, [fp, #-24]
	bl	stbi__get16le
	ldr	r0, [fp, #-24]
	bl	stbi__get16le
	ldr	r0, [fp, #-24]
	bl	stbi__get32le
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [fp, #-28]
	str	r2, [r3, #4]
	ldr	r0, [fp, #-24]
	bl	stbi__get32le
	mov	r3, r0
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-28]
	ldr	r2, [fp, #-12]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-28]
	mov	r2, #0
	str	r2, [r3, #24]
	ldr	r3, [fp, #-28]
	ldr	r2, [r3, #24]
	ldr	r3, [fp, #-28]
	str	r2, [r3, #20]
	ldr	r3, [fp, #-28]
	ldr	r2, [r3, #20]
	ldr	r3, [fp, #-28]
	str	r2, [r3, #16]
	ldr	r3, [fp, #-28]
	ldr	r2, [r3, #16]
	ldr	r3, [fp, #-28]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-28]
	mov	r2, #14
	str	r2, [r3, #32]
	ldr	r3, [fp, #-12]
	cmp	r3, #12
	beq	.L1258
	ldr	r3, [fp, #-12]
	cmp	r3, #40
	beq	.L1258
	ldr	r3, [fp, #-12]
	cmp	r3, #56
	beq	.L1258
	ldr	r3, [fp, #-12]
	cmp	r3, #108
	beq	.L1258
	ldr	r3, [fp, #-12]
	cmp	r3, #124
	beq	.L1258
	mov	r3, #0
	b	.L1257
.L1258:
	ldr	r3, [fp, #-12]
	cmp	r3, #12
	bne	.L1259
	ldr	r0, [fp, #-24]
	bl	stbi__get16le
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [fp, #-24]
	str	r2, [r3]
	ldr	r0, [fp, #-24]
	bl	stbi__get16le
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [fp, #-24]
	str	r2, [r3, #4]
	b	.L1260
.L1259:
	ldr	r0, [fp, #-24]
	bl	stbi__get32le
	mov	r2, r0
	ldr	r3, [fp, #-24]
	str	r2, [r3]
	ldr	r0, [fp, #-24]
	bl	stbi__get32le
	mov	r2, r0
	ldr	r3, [fp, #-24]
	str	r2, [r3, #4]
.L1260:
	ldr	r0, [fp, #-24]
	bl	stbi__get16le
	mov	r3, r0
	cmp	r3, #1
	beq	.L1261
	mov	r3, #0
	b	.L1257
.L1261:
	ldr	r0, [fp, #-24]
	bl	stbi__get16le
	mov	r2, r0
	ldr	r3, [fp, #-28]
	str	r2, [r3]
	ldr	r3, [fp, #-12]
	cmp	r3, #12
	beq	.L1262
	ldr	r0, [fp, #-24]
	bl	stbi__get32le
	mov	r3, r0
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-16]
	cmp	r3, #1
	beq	.L1263
	ldr	r3, [fp, #-16]
	cmp	r3, #2
	bne	.L1264
.L1263:
	mov	r3, #0
	b	.L1257
.L1264:
	ldr	r0, [fp, #-24]
	bl	stbi__get32le
	ldr	r0, [fp, #-24]
	bl	stbi__get32le
	ldr	r0, [fp, #-24]
	bl	stbi__get32le
	ldr	r0, [fp, #-24]
	bl	stbi__get32le
	ldr	r0, [fp, #-24]
	bl	stbi__get32le
	ldr	r3, [fp, #-12]
	cmp	r3, #40
	beq	.L1265
	ldr	r3, [fp, #-12]
	cmp	r3, #56
	bne	.L1266
.L1265:
	ldr	r3, [fp, #-12]
	cmp	r3, #56
	bne	.L1267
	ldr	r0, [fp, #-24]
	bl	stbi__get32le
	ldr	r0, [fp, #-24]
	bl	stbi__get32le
	ldr	r0, [fp, #-24]
	bl	stbi__get32le
	ldr	r0, [fp, #-24]
	bl	stbi__get32le
.L1267:
	ldr	r3, [fp, #-28]
	ldr	r3, [r3]
	cmp	r3, #16
	beq	.L1268
	ldr	r3, [fp, #-28]
	ldr	r3, [r3]
	cmp	r3, #32
	bne	.L1277
.L1268:
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	bne	.L1270
	ldr	r3, [fp, #-28]
	ldr	r3, [r3]
	cmp	r3, #32
	bne	.L1271
	ldr	r3, [fp, #-28]
	mov	r2, #16711680
	str	r2, [r3, #12]
	ldr	r3, [fp, #-28]
	mov	r2, #65280
	str	r2, [r3, #16]
	ldr	r3, [fp, #-28]
	mov	r2, #255
	str	r2, [r3, #20]
	ldr	r3, [fp, #-28]
	mov	r2, #-16777216
	str	r2, [r3, #24]
	ldr	r3, [fp, #-28]
	mov	r2, #0
	str	r2, [r3, #28]
	b	.L1277
.L1271:
	ldr	r3, [fp, #-28]
	mov	r2, #31744
	str	r2, [r3, #12]
	ldr	r3, [fp, #-28]
	mov	r2, #992
	str	r2, [r3, #16]
	ldr	r3, [fp, #-28]
	mov	r2, #31
	str	r2, [r3, #20]
	b	.L1277
.L1270:
	ldr	r3, [fp, #-16]
	cmp	r3, #3
	bne	.L1273
	ldr	r0, [fp, #-24]
	bl	stbi__get32le
	mov	r2, r0
	ldr	r3, [fp, #-28]
	str	r2, [r3, #12]
	ldr	r0, [fp, #-24]
	bl	stbi__get32le
	mov	r2, r0
	ldr	r3, [fp, #-28]
	str	r2, [r3, #16]
	ldr	r0, [fp, #-24]
	bl	stbi__get32le
	mov	r2, r0
	ldr	r3, [fp, #-28]
	str	r2, [r3, #20]
	ldr	r3, [fp, #-28]
	ldr	r3, [r3, #32]
	add	r2, r3, #12
	ldr	r3, [fp, #-28]
	str	r2, [r3, #32]
	ldr	r3, [fp, #-28]
	ldr	r2, [r3, #12]
	ldr	r3, [fp, #-28]
	ldr	r3, [r3, #16]
	cmp	r2, r3
	bne	.L1277
	ldr	r3, [fp, #-28]
	ldr	r2, [r3, #16]
	ldr	r3, [fp, #-28]
	ldr	r3, [r3, #20]
	cmp	r2, r3
	bne	.L1277
	mov	r3, #0
	b	.L1257
.L1273:
	mov	r3, #0
	b	.L1257
.L1266:
	ldr	r3, [fp, #-12]
	cmp	r3, #108
	beq	.L1274
	ldr	r3, [fp, #-12]
	cmp	r3, #124
	beq	.L1274
	mov	r3, #0
	b	.L1257
.L1274:
	ldr	r0, [fp, #-24]
	bl	stbi__get32le
	mov	r2, r0
	ldr	r3, [fp, #-28]
	str	r2, [r3, #12]
	ldr	r0, [fp, #-24]
	bl	stbi__get32le
	mov	r2, r0
	ldr	r3, [fp, #-28]
	str	r2, [r3, #16]
	ldr	r0, [fp, #-24]
	bl	stbi__get32le
	mov	r2, r0
	ldr	r3, [fp, #-28]
	str	r2, [r3, #20]
	ldr	r0, [fp, #-24]
	bl	stbi__get32le
	mov	r2, r0
	ldr	r3, [fp, #-28]
	str	r2, [r3, #24]
	ldr	r0, [fp, #-24]
	bl	stbi__get32le
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L1275
.L1276:
	ldr	r0, [fp, #-24]
	bl	stbi__get32le
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L1275:
	ldr	r3, [fp, #-8]
	cmp	r3, #11
	ble	.L1276
	ldr	r3, [fp, #-12]
	cmp	r3, #124
	bne	.L1262
	ldr	r0, [fp, #-24]
	bl	stbi__get32le
	ldr	r0, [fp, #-24]
	bl	stbi__get32le
	ldr	r0, [fp, #-24]
	bl	stbi__get32le
	ldr	r0, [fp, #-24]
	bl	stbi__get32le
	b	.L1262
.L1277:
	nop
.L1262:
	mov	r3, #1
.L1257:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__bmp_parse_header, .-stbi__bmp_parse_header
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__bmp_load, %function
stbi__bmp_load:
	@ args = 8, pretend = 0, frame = 1224
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, fp, lr}
	add	fp, sp, #8
	sub	sp, sp, #1232
	sub	sp, sp, #4
	str	r0, [fp, #-1224]
	str	r1, [fp, #-1228]
	str	r2, [fp, #-1232]
	str	r3, [fp, #-1236]
	mov	r3, #0
	str	r3, [fp, #-104]
	mov	r3, #0
	str	r3, [fp, #-108]
	mov	r3, #0
	str	r3, [fp, #-112]
	mov	r3, #0
	str	r3, [fp, #-116]
	mov	r3, #0
	str	r3, [fp, #-24]
	mov	r3, #255
	str	r3, [fp, #-1188]
	sub	r3, fp, #1200
	sub	r3, r3, #12
	sub	r3, r3, #4
	mov	r1, r3
	ldr	r0, [fp, #-1224]
	bl	stbi__bmp_parse_header
	mov	r3, r0
	cmp	r3, #0
	bne	.L1279
	mov	r3, #0
	b	.L1360
.L1279:
	ldr	r3, [fp, #-1224]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	movgt	r3, #1
	movle	r3, #0
	uxtb	r3, r3
	str	r3, [fp, #-120]
	ldr	r3, [fp, #-1224]
	ldr	r3, [r3, #4]
	cmp	r3, #0
	rsblt	r3, r3, #0
	mov	r2, r3
	ldr	r3, [fp, #-1224]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-1204]
	str	r3, [fp, #-104]
	ldr	r3, [fp, #-1200]
	str	r3, [fp, #-108]
	ldr	r3, [fp, #-1196]
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-1192]
	str	r3, [fp, #-116]
	ldr	r3, [fp, #-1188]
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-1208]
	cmp	r3, #12
	bne	.L1281
	ldr	r3, [fp, #-1216]
	cmp	r3, #23
	bgt	.L1361
	ldr	r2, [fp, #-1212]
	ldr	r3, [fp, #-1184]
	sub	r3, r2, r3
	sub	r2, r3, #24
	movw	r3, #21846
	movt	r3, 21845
	smull	r3, r1, r3, r2
	asr	r3, r2, #31
	sub	r3, r1, r3
	str	r3, [fp, #-24]
	b	.L1361
.L1281:
	ldr	r3, [fp, #-1216]
	cmp	r3, #15
	bgt	.L1361
	ldr	r2, [fp, #-1212]
	ldr	r3, [fp, #-1184]
	sub	r2, r2, r3
	ldr	r3, [fp, #-1208]
	sub	r3, r2, r3
	asr	r3, r3, #2
	str	r3, [fp, #-24]
.L1361:
	ldr	r3, [fp, #-1216]
	cmp	r3, #24
	bne	.L1284
	ldr	r3, [fp, #-116]
	cmp	r3, #-16777216
	bne	.L1284
	ldr	r3, [fp, #-1224]
	mov	r2, #3
	str	r2, [r3, #8]
	b	.L1285
.L1284:
	ldr	r3, [fp, #-116]
	cmp	r3, #0
	beq	.L1286
	mov	r2, #4
	b	.L1287
.L1286:
	mov	r2, #3
.L1287:
	ldr	r3, [fp, #-1224]
	str	r2, [r3, #8]
.L1285:
	ldr	r3, [fp, #4]
	cmp	r3, #0
	beq	.L1288
	ldr	r3, [fp, #4]
	cmp	r3, #2
	ble	.L1288
	ldr	r3, [fp, #4]
	str	r3, [fp, #-40]
	b	.L1289
.L1288:
	ldr	r3, [fp, #-1224]
	ldr	r3, [r3, #8]
	str	r3, [fp, #-40]
.L1289:
	ldr	r3, [fp, #-1224]
	ldr	r3, [r3]
	mov	r1, r3
	ldr	r3, [fp, #-1224]
	ldr	r3, [r3, #4]
	mov	r2, r3
	mov	r3, #0
	ldr	r0, [fp, #-40]
	bl	stbi__mad3sizes_valid
	mov	r3, r0
	cmp	r3, #0
	bne	.L1290
	mov	r3, #0
	b	.L1360
.L1290:
	ldr	r3, [fp, #-1224]
	ldr	r3, [r3]
	mov	r1, r3
	ldr	r3, [fp, #-1224]
	ldr	r3, [r3, #4]
	mov	r2, r3
	mov	r3, #0
	ldr	r0, [fp, #-40]
	bl	stbi__malloc_mad3
	str	r0, [fp, #-16]
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	bne	.L1291
	mov	r3, #0
	b	.L1360
.L1291:
	ldr	r3, [fp, #-1216]
	cmp	r3, #15
	bgt	.L1292
	mov	r3, #0
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	beq	.L1293
	ldr	r3, [fp, #-24]
	cmp	r3, #256
	ble	.L1294
.L1293:
	ldr	r0, [fp, #-16]
	bl	free
	mov	r3, #0
	b	.L1360
.L1294:
	mov	r3, #0
	str	r3, [fp, #-28]
	b	.L1295
.L1297:
	ldr	r0, [fp, #-1224]
	bl	stbi__get8
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [fp, #-28]
	lsl	r3, r3, #2
	sub	r1, fp, #12
	add	r3, r1, r3
	strb	r2, [r3, #-1166]
	ldr	r0, [fp, #-1224]
	bl	stbi__get8
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [fp, #-28]
	lsl	r3, r3, #2
	sub	r1, fp, #12
	add	r3, r1, r3
	strb	r2, [r3, #-1167]
	ldr	r0, [fp, #-1224]
	bl	stbi__get8
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [fp, #-28]
	lsl	r3, r3, #2
	sub	r1, fp, #12
	add	r3, r1, r3
	strb	r2, [r3, #-1168]
	ldr	r3, [fp, #-1208]
	cmp	r3, #12
	beq	.L1296
	ldr	r0, [fp, #-1224]
	bl	stbi__get8
.L1296:
	ldr	r3, [fp, #-28]
	lsl	r3, r3, #2
	sub	r2, fp, #12
	add	r3, r2, r3
	mvn	r2, #0
	strb	r2, [r3, #-1165]
	ldr	r3, [fp, #-28]
	add	r3, r3, #1
	str	r3, [fp, #-28]
.L1295:
	ldr	r2, [fp, #-28]
	ldr	r3, [fp, #-24]
	cmp	r2, r3
	blt	.L1297
	ldr	r2, [fp, #-1212]
	ldr	r3, [fp, #-1184]
	sub	r2, r2, r3
	ldr	r3, [fp, #-1208]
	sub	r2, r2, r3
	ldr	r3, [fp, #-1208]
	cmp	r3, #12
	bne	.L1298
	mov	r3, #3
	b	.L1299
.L1298:
	mov	r3, #4
.L1299:
	ldr	r1, [fp, #-24]
	mul	r3, r1, r3
	sub	r3, r2, r3
	mov	r1, r3
	ldr	r0, [fp, #-1224]
	bl	stbi__skip
	ldr	r3, [fp, #-1216]
	cmp	r3, #1
	bne	.L1300
	ldr	r3, [fp, #-1224]
	ldr	r3, [r3]
	add	r3, r3, #7
	lsr	r3, r3, #3
	str	r3, [fp, #-36]
	b	.L1301
.L1300:
	ldr	r3, [fp, #-1216]
	cmp	r3, #4
	bne	.L1302
	ldr	r3, [fp, #-1224]
	ldr	r3, [r3]
	add	r3, r3, #1
	lsr	r3, r3, #1
	str	r3, [fp, #-36]
	b	.L1301
.L1302:
	ldr	r3, [fp, #-1216]
	cmp	r3, #8
	bne	.L1303
	ldr	r3, [fp, #-1224]
	ldr	r3, [r3]
	str	r3, [fp, #-36]
	b	.L1301
.L1303:
	ldr	r0, [fp, #-16]
	bl	free
	mov	r3, #0
	b	.L1360
.L1301:
	ldr	r3, [fp, #-36]
	rsb	r3, r3, #0
	and	r3, r3, #3
	str	r3, [fp, #-124]
	ldr	r3, [fp, #-1216]
	cmp	r3, #1
	bne	.L1304
	mov	r3, #0
	str	r3, [fp, #-32]
	b	.L1305
.L1312:
	mov	r3, #7
	str	r3, [fp, #-48]
	ldr	r0, [fp, #-1224]
	bl	stbi__get8
	mov	r3, r0
	str	r3, [fp, #-52]
	mov	r3, #0
	str	r3, [fp, #-28]
	b	.L1306
.L1311:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-48]
	asr	r3, r2, r3
	and	r3, r3, #1
	str	r3, [fp, #-128]
	ldr	r3, [fp, #-44]
	add	r2, r3, #1
	str	r2, [fp, #-44]
	mov	r2, r3
	ldr	r3, [fp, #-16]
	add	r2, r3, r2
	ldr	r3, [fp, #-128]
	lsl	r3, r3, #2
	sub	r1, fp, #12
	add	r3, r1, r3
	ldrb	r3, [r3, #-1168]	@ zero_extendqisi2
	strb	r3, [r2]
	ldr	r3, [fp, #-44]
	add	r2, r3, #1
	str	r2, [fp, #-44]
	mov	r2, r3
	ldr	r3, [fp, #-16]
	add	r2, r3, r2
	ldr	r3, [fp, #-128]
	lsl	r3, r3, #2
	sub	r1, fp, #12
	add	r3, r1, r3
	ldrb	r3, [r3, #-1167]	@ zero_extendqisi2
	strb	r3, [r2]
	ldr	r3, [fp, #-44]
	add	r2, r3, #1
	str	r2, [fp, #-44]
	mov	r2, r3
	ldr	r3, [fp, #-16]
	add	r2, r3, r2
	ldr	r3, [fp, #-128]
	lsl	r3, r3, #2
	sub	r1, fp, #12
	add	r3, r1, r3
	ldrb	r3, [r3, #-1166]	@ zero_extendqisi2
	strb	r3, [r2]
	ldr	r3, [fp, #-40]
	cmp	r3, #4
	bne	.L1307
	ldr	r3, [fp, #-44]
	add	r2, r3, #1
	str	r2, [fp, #-44]
	mov	r2, r3
	ldr	r3, [fp, #-16]
	add	r3, r3, r2
	mvn	r2, #0
	strb	r2, [r3]
.L1307:
	ldr	r3, [fp, #-28]
	add	r3, r3, #1
	ldr	r2, [fp, #-1224]
	ldr	r2, [r2]
	cmp	r3, r2
	beq	.L1362
	ldr	r3, [fp, #-48]
	sub	r3, r3, #1
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-48]
	cmp	r3, #0
	bge	.L1310
	mov	r3, #7
	str	r3, [fp, #-48]
	ldr	r0, [fp, #-1224]
	bl	stbi__get8
	mov	r3, r0
	str	r3, [fp, #-52]
.L1310:
	ldr	r3, [fp, #-28]
	add	r3, r3, #1
	str	r3, [fp, #-28]
.L1306:
	ldr	r3, [fp, #-1224]
	ldr	r3, [r3]
	mov	r2, r3
	ldr	r3, [fp, #-28]
	cmp	r3, r2
	blt	.L1311
	b	.L1309
.L1362:
	nop
.L1309:
	ldr	r1, [fp, #-124]
	ldr	r0, [fp, #-1224]
	bl	stbi__skip
	ldr	r3, [fp, #-32]
	add	r3, r3, #1
	str	r3, [fp, #-32]
.L1305:
	ldr	r3, [fp, #-1224]
	ldr	r3, [r3, #4]
	mov	r2, r3
	ldr	r3, [fp, #-32]
	cmp	r3, r2
	blt	.L1312
	b	.L1325
.L1304:
	mov	r3, #0
	str	r3, [fp, #-32]
	b	.L1314
.L1324:
	mov	r3, #0
	str	r3, [fp, #-28]
	b	.L1315
.L1323:
	ldr	r0, [fp, #-1224]
	bl	stbi__get8
	mov	r3, r0
	str	r3, [fp, #-56]
	mov	r3, #0
	str	r3, [fp, #-60]
	ldr	r3, [fp, #-1216]
	cmp	r3, #4
	bne	.L1316
	ldr	r3, [fp, #-56]
	and	r3, r3, #15
	str	r3, [fp, #-60]
	ldr	r3, [fp, #-56]
	asr	r3, r3, #4
	str	r3, [fp, #-56]
.L1316:
	ldr	r3, [fp, #-44]
	add	r2, r3, #1
	str	r2, [fp, #-44]
	mov	r2, r3
	ldr	r3, [fp, #-16]
	add	r2, r3, r2
	ldr	r3, [fp, #-56]
	lsl	r3, r3, #2
	sub	r1, fp, #12
	add	r3, r1, r3
	ldrb	r3, [r3, #-1168]	@ zero_extendqisi2
	strb	r3, [r2]
	ldr	r3, [fp, #-44]
	add	r2, r3, #1
	str	r2, [fp, #-44]
	mov	r2, r3
	ldr	r3, [fp, #-16]
	add	r2, r3, r2
	ldr	r3, [fp, #-56]
	lsl	r3, r3, #2
	sub	r1, fp, #12
	add	r3, r1, r3
	ldrb	r3, [r3, #-1167]	@ zero_extendqisi2
	strb	r3, [r2]
	ldr	r3, [fp, #-44]
	add	r2, r3, #1
	str	r2, [fp, #-44]
	mov	r2, r3
	ldr	r3, [fp, #-16]
	add	r2, r3, r2
	ldr	r3, [fp, #-56]
	lsl	r3, r3, #2
	sub	r1, fp, #12
	add	r3, r1, r3
	ldrb	r3, [r3, #-1166]	@ zero_extendqisi2
	strb	r3, [r2]
	ldr	r3, [fp, #-40]
	cmp	r3, #4
	bne	.L1317
	ldr	r3, [fp, #-44]
	add	r2, r3, #1
	str	r2, [fp, #-44]
	mov	r2, r3
	ldr	r3, [fp, #-16]
	add	r3, r3, r2
	mvn	r2, #0
	strb	r2, [r3]
.L1317:
	ldr	r3, [fp, #-28]
	add	r3, r3, #1
	ldr	r2, [fp, #-1224]
	ldr	r2, [r2]
	cmp	r3, r2
	beq	.L1363
	ldr	r3, [fp, #-1216]
	cmp	r3, #8
	bne	.L1320
	ldr	r0, [fp, #-1224]
	bl	stbi__get8
	mov	r3, r0
	b	.L1321
.L1320:
	ldr	r3, [fp, #-60]
.L1321:
	str	r3, [fp, #-56]
	ldr	r3, [fp, #-44]
	add	r2, r3, #1
	str	r2, [fp, #-44]
	mov	r2, r3
	ldr	r3, [fp, #-16]
	add	r2, r3, r2
	ldr	r3, [fp, #-56]
	lsl	r3, r3, #2
	sub	r1, fp, #12
	add	r3, r1, r3
	ldrb	r3, [r3, #-1168]	@ zero_extendqisi2
	strb	r3, [r2]
	ldr	r3, [fp, #-44]
	add	r2, r3, #1
	str	r2, [fp, #-44]
	mov	r2, r3
	ldr	r3, [fp, #-16]
	add	r2, r3, r2
	ldr	r3, [fp, #-56]
	lsl	r3, r3, #2
	sub	r1, fp, #12
	add	r3, r1, r3
	ldrb	r3, [r3, #-1167]	@ zero_extendqisi2
	strb	r3, [r2]
	ldr	r3, [fp, #-44]
	add	r2, r3, #1
	str	r2, [fp, #-44]
	mov	r2, r3
	ldr	r3, [fp, #-16]
	add	r2, r3, r2
	ldr	r3, [fp, #-56]
	lsl	r3, r3, #2
	sub	r1, fp, #12
	add	r3, r1, r3
	ldrb	r3, [r3, #-1166]	@ zero_extendqisi2
	strb	r3, [r2]
	ldr	r3, [fp, #-40]
	cmp	r3, #4
	bne	.L1322
	ldr	r3, [fp, #-44]
	add	r2, r3, #1
	str	r2, [fp, #-44]
	mov	r2, r3
	ldr	r3, [fp, #-16]
	add	r3, r3, r2
	mvn	r2, #0
	strb	r2, [r3]
.L1322:
	ldr	r3, [fp, #-28]
	add	r3, r3, #2
	str	r3, [fp, #-28]
.L1315:
	ldr	r3, [fp, #-1224]
	ldr	r3, [r3]
	mov	r2, r3
	ldr	r3, [fp, #-28]
	cmp	r3, r2
	blt	.L1323
	b	.L1319
.L1363:
	nop
.L1319:
	ldr	r1, [fp, #-124]
	ldr	r0, [fp, #-1224]
	bl	stbi__skip
	ldr	r3, [fp, #-32]
	add	r3, r3, #1
	str	r3, [fp, #-32]
.L1314:
	ldr	r3, [fp, #-1224]
	ldr	r3, [r3, #4]
	mov	r2, r3
	ldr	r3, [fp, #-32]
	cmp	r3, r2
	blt	.L1324
	b	.L1325
.L1292:
	mov	r3, #0
	str	r3, [fp, #-64]
	mov	r3, #0
	str	r3, [fp, #-68]
	mov	r3, #0
	str	r3, [fp, #-72]
	mov	r3, #0
	str	r3, [fp, #-76]
	mov	r3, #0
	str	r3, [fp, #-80]
	mov	r3, #0
	str	r3, [fp, #-84]
	mov	r3, #0
	str	r3, [fp, #-88]
	mov	r3, #0
	str	r3, [fp, #-92]
	mov	r3, #0
	str	r3, [fp, #-96]
	mov	r3, #0
	str	r3, [fp, #-100]
	ldr	r2, [fp, #-1212]
	ldr	r3, [fp, #-1184]
	sub	r2, r2, r3
	ldr	r3, [fp, #-1208]
	sub	r3, r2, r3
	mov	r1, r3
	ldr	r0, [fp, #-1224]
	bl	stbi__skip
	ldr	r3, [fp, #-1216]
	cmp	r3, #24
	bne	.L1326
	ldr	r3, [fp, #-1224]
	ldr	r2, [r3]
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	str	r3, [fp, #-36]
	b	.L1327
.L1326:
	ldr	r3, [fp, #-1216]
	cmp	r3, #16
	bne	.L1328
	ldr	r3, [fp, #-1224]
	ldr	r3, [r3]
	lsl	r3, r3, #1
	str	r3, [fp, #-36]
	b	.L1327
.L1328:
	mov	r3, #0
	str	r3, [fp, #-36]
.L1327:
	ldr	r3, [fp, #-36]
	rsb	r3, r3, #0
	and	r3, r3, #3
	str	r3, [fp, #-124]
	ldr	r3, [fp, #-1216]
	cmp	r3, #24
	bne	.L1329
	mov	r3, #1
	str	r3, [fp, #-100]
	b	.L1330
.L1329:
	ldr	r3, [fp, #-1216]
	cmp	r3, #32
	bne	.L1330
	ldr	r3, [fp, #-112]
	cmp	r3, #255
	bne	.L1330
	ldr	r3, [fp, #-108]
	cmp	r3, #65280
	bne	.L1330
	ldr	r3, [fp, #-104]
	cmp	r3, #16711680
	bne	.L1330
	ldr	r3, [fp, #-116]
	cmp	r3, #-16777216
	bne	.L1330
	mov	r3, #2
	str	r3, [fp, #-100]
.L1330:
	ldr	r3, [fp, #-100]
	cmp	r3, #0
	bne	.L1331
	ldr	r3, [fp, #-104]
	cmp	r3, #0
	beq	.L1332
	ldr	r3, [fp, #-108]
	cmp	r3, #0
	beq	.L1332
	ldr	r3, [fp, #-112]
	cmp	r3, #0
	bne	.L1333
.L1332:
	ldr	r0, [fp, #-16]
	bl	free
	mov	r3, #0
	b	.L1360
.L1333:
	ldr	r0, [fp, #-104]
	bl	stbi__high_bit
	mov	r3, r0
	sub	r3, r3, #7
	str	r3, [fp, #-64]
	ldr	r0, [fp, #-104]
	bl	stbi__bitcount
	str	r0, [fp, #-80]
	ldr	r0, [fp, #-108]
	bl	stbi__high_bit
	mov	r3, r0
	sub	r3, r3, #7
	str	r3, [fp, #-68]
	ldr	r0, [fp, #-108]
	bl	stbi__bitcount
	str	r0, [fp, #-84]
	ldr	r0, [fp, #-112]
	bl	stbi__high_bit
	mov	r3, r0
	sub	r3, r3, #7
	str	r3, [fp, #-72]
	ldr	r0, [fp, #-112]
	bl	stbi__bitcount
	str	r0, [fp, #-88]
	ldr	r0, [fp, #-116]
	bl	stbi__high_bit
	mov	r3, r0
	sub	r3, r3, #7
	str	r3, [fp, #-76]
	ldr	r0, [fp, #-116]
	bl	stbi__bitcount
	str	r0, [fp, #-92]
.L1331:
	mov	r3, #0
	str	r3, [fp, #-32]
	b	.L1334
.L1349:
	ldr	r3, [fp, #-100]
	cmp	r3, #0
	beq	.L1335
	mov	r3, #0
	str	r3, [fp, #-28]
	b	.L1336
.L1340:
	ldr	r3, [fp, #-96]
	add	r3, r3, #2
	ldr	r2, [fp, #-16]
	add	r4, r2, r3
	ldr	r0, [fp, #-1224]
	bl	stbi__get8
	mov	r3, r0
	strb	r3, [r4]
	ldr	r3, [fp, #-96]
	add	r3, r3, #1
	ldr	r2, [fp, #-16]
	add	r4, r2, r3
	ldr	r0, [fp, #-1224]
	bl	stbi__get8
	mov	r3, r0
	strb	r3, [r4]
	ldr	r3, [fp, #-96]
	ldr	r2, [fp, #-16]
	add	r4, r2, r3
	ldr	r0, [fp, #-1224]
	bl	stbi__get8
	mov	r3, r0
	strb	r3, [r4]
	ldr	r3, [fp, #-96]
	add	r3, r3, #3
	str	r3, [fp, #-96]
	ldr	r3, [fp, #-100]
	cmp	r3, #2
	bne	.L1337
	ldr	r0, [fp, #-1224]
	bl	stbi__get8
	mov	r3, r0
	b	.L1338
.L1337:
	mov	r3, #255
.L1338:
	strb	r3, [fp, #-129]
	ldrb	r3, [fp, #-129]	@ zero_extendqisi2
	ldr	r2, [fp, #-20]
	orr	r3, r2, r3
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-40]
	cmp	r3, #4
	bne	.L1339
	ldr	r3, [fp, #-96]
	add	r2, r3, #1
	str	r2, [fp, #-96]
	mov	r2, r3
	ldr	r3, [fp, #-16]
	add	r3, r3, r2
	ldrb	r2, [fp, #-129]
	strb	r2, [r3]
.L1339:
	ldr	r3, [fp, #-28]
	add	r3, r3, #1
	str	r3, [fp, #-28]
.L1336:
	ldr	r3, [fp, #-1224]
	ldr	r3, [r3]
	mov	r2, r3
	ldr	r3, [fp, #-28]
	cmp	r3, r2
	blt	.L1340
	b	.L1341
.L1335:
	ldr	r3, [fp, #-1216]
	str	r3, [fp, #-136]
	mov	r3, #0
	str	r3, [fp, #-28]
	b	.L1342
.L1348:
	ldr	r3, [fp, #-136]
	cmp	r3, #16
	bne	.L1343
	ldr	r0, [fp, #-1224]
	bl	stbi__get16le
	mov	r3, r0
	b	.L1344
.L1343:
	ldr	r0, [fp, #-1224]
	bl	stbi__get32le
	mov	r3, r0
.L1344:
	str	r3, [fp, #-140]
	ldr	r2, [fp, #-140]
	ldr	r3, [fp, #-104]
	and	r3, r3, r2
	ldr	r2, [fp, #-80]
	ldr	r1, [fp, #-64]
	mov	r0, r3
	bl	stbi__shiftsigned
	mov	r1, r0
	ldr	r3, [fp, #-96]
	add	r2, r3, #1
	str	r2, [fp, #-96]
	mov	r2, r3
	ldr	r3, [fp, #-16]
	add	r3, r3, r2
	uxtb	r2, r1
	strb	r2, [r3]
	ldr	r2, [fp, #-140]
	ldr	r3, [fp, #-108]
	and	r3, r3, r2
	ldr	r2, [fp, #-84]
	ldr	r1, [fp, #-68]
	mov	r0, r3
	bl	stbi__shiftsigned
	mov	r1, r0
	ldr	r3, [fp, #-96]
	add	r2, r3, #1
	str	r2, [fp, #-96]
	mov	r2, r3
	ldr	r3, [fp, #-16]
	add	r3, r3, r2
	uxtb	r2, r1
	strb	r2, [r3]
	ldr	r2, [fp, #-140]
	ldr	r3, [fp, #-112]
	and	r3, r3, r2
	ldr	r2, [fp, #-88]
	ldr	r1, [fp, #-72]
	mov	r0, r3
	bl	stbi__shiftsigned
	mov	r1, r0
	ldr	r3, [fp, #-96]
	add	r2, r3, #1
	str	r2, [fp, #-96]
	mov	r2, r3
	ldr	r3, [fp, #-16]
	add	r3, r3, r2
	uxtb	r2, r1
	strb	r2, [r3]
	ldr	r3, [fp, #-116]
	cmp	r3, #0
	beq	.L1345
	ldr	r2, [fp, #-140]
	ldr	r3, [fp, #-116]
	and	r3, r3, r2
	ldr	r2, [fp, #-92]
	ldr	r1, [fp, #-76]
	mov	r0, r3
	bl	stbi__shiftsigned
	mov	r3, r0
	b	.L1346
.L1345:
	mov	r3, #255
.L1346:
	str	r3, [fp, #-144]
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-144]
	orr	r3, r2, r3
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-40]
	cmp	r3, #4
	bne	.L1347
	ldr	r3, [fp, #-96]
	add	r2, r3, #1
	str	r2, [fp, #-96]
	mov	r2, r3
	ldr	r3, [fp, #-16]
	add	r3, r3, r2
	ldr	r2, [fp, #-144]
	uxtb	r2, r2
	strb	r2, [r3]
.L1347:
	ldr	r3, [fp, #-28]
	add	r3, r3, #1
	str	r3, [fp, #-28]
.L1342:
	ldr	r3, [fp, #-1224]
	ldr	r3, [r3]
	mov	r2, r3
	ldr	r3, [fp, #-28]
	cmp	r3, r2
	blt	.L1348
.L1341:
	ldr	r1, [fp, #-124]
	ldr	r0, [fp, #-1224]
	bl	stbi__skip
	ldr	r3, [fp, #-32]
	add	r3, r3, #1
	str	r3, [fp, #-32]
.L1334:
	ldr	r3, [fp, #-1224]
	ldr	r3, [r3, #4]
	mov	r2, r3
	ldr	r3, [fp, #-32]
	cmp	r3, r2
	blt	.L1349
.L1325:
	ldr	r3, [fp, #-40]
	cmp	r3, #4
	bne	.L1350
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	bne	.L1350
	ldr	r3, [fp, #-1224]
	ldr	r3, [r3]
	ldr	r2, [fp, #-1224]
	ldr	r2, [r2, #4]
	mul	r3, r2, r3
	lsl	r3, r3, #2
	sub	r3, r3, #1
	str	r3, [fp, #-28]
	b	.L1351
.L1352:
	ldr	r3, [fp, #-28]
	ldr	r2, [fp, #-16]
	add	r3, r2, r3
	mvn	r2, #0
	strb	r2, [r3]
	ldr	r3, [fp, #-28]
	sub	r3, r3, #4
	str	r3, [fp, #-28]
.L1351:
	ldr	r3, [fp, #-28]
	cmp	r3, #0
	bge	.L1352
.L1350:
	ldr	r3, [fp, #-120]
	cmp	r3, #0
	beq	.L1353
	mov	r3, #0
	str	r3, [fp, #-32]
	b	.L1354
.L1357:
	ldr	r3, [fp, #-1224]
	ldr	r3, [r3]
	ldr	r2, [fp, #-32]
	mul	r3, r2, r3
	ldr	r2, [fp, #-40]
	mul	r3, r2, r3
	ldr	r2, [fp, #-16]
	add	r3, r2, r3
	str	r3, [fp, #-148]
	ldr	r3, [fp, #-1224]
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-32]
	sub	r3, r2, r3
	sub	r3, r3, #1
	ldr	r2, [fp, #-1224]
	ldr	r2, [r2]
	mul	r3, r2, r3
	ldr	r2, [fp, #-40]
	mul	r3, r2, r3
	ldr	r2, [fp, #-16]
	add	r3, r2, r3
	str	r3, [fp, #-152]
	mov	r3, #0
	str	r3, [fp, #-28]
	b	.L1355
.L1356:
	ldr	r3, [fp, #-28]
	ldr	r2, [fp, #-148]
	add	r3, r2, r3
	ldrb	r3, [r3]
	strb	r3, [fp, #-153]
	ldr	r3, [fp, #-28]
	ldr	r2, [fp, #-152]
	add	r2, r2, r3
	ldr	r3, [fp, #-28]
	ldr	r1, [fp, #-148]
	add	r3, r1, r3
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
	ldr	r3, [fp, #-28]
	ldr	r2, [fp, #-152]
	add	r3, r2, r3
	ldrb	r2, [fp, #-153]
	strb	r2, [r3]
	ldr	r3, [fp, #-28]
	add	r3, r3, #1
	str	r3, [fp, #-28]
.L1355:
	ldr	r3, [fp, #-1224]
	ldr	r3, [r3]
	mov	r2, r3
	ldr	r3, [fp, #-40]
	mul	r3, r3, r2
	ldr	r2, [fp, #-28]
	cmp	r2, r3
	blt	.L1356
	ldr	r3, [fp, #-32]
	add	r3, r3, #1
	str	r3, [fp, #-32]
.L1354:
	ldr	r3, [fp, #-1224]
	ldr	r3, [r3, #4]
	asr	r3, r3, #1
	ldr	r2, [fp, #-32]
	cmp	r2, r3
	blt	.L1357
.L1353:
	ldr	r3, [fp, #4]
	cmp	r3, #0
	beq	.L1358
	ldr	r2, [fp, #4]
	ldr	r3, [fp, #-40]
	cmp	r2, r3
	beq	.L1358
	ldr	r3, [fp, #-1224]
	ldr	r2, [r3]
	ldr	r3, [fp, #-1224]
	ldr	r3, [r3, #4]
	str	r3, [sp]
	mov	r3, r2
	ldr	r2, [fp, #4]
	ldr	r1, [fp, #-40]
	ldr	r0, [fp, #-16]
	bl	stbi__convert_format
	str	r0, [fp, #-16]
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	bne	.L1358
	ldr	r3, [fp, #-16]
	b	.L1360
.L1358:
	ldr	r3, [fp, #-1224]
	ldr	r3, [r3]
	mov	r2, r3
	ldr	r3, [fp, #-1228]
	str	r2, [r3]
	ldr	r3, [fp, #-1224]
	ldr	r3, [r3, #4]
	mov	r2, r3
	ldr	r3, [fp, #-1232]
	str	r2, [r3]
	ldr	r3, [fp, #-1236]
	cmp	r3, #0
	beq	.L1359
	ldr	r3, [fp, #-1224]
	ldr	r2, [r3, #8]
	ldr	r3, [fp, #-1236]
	str	r2, [r3]
.L1359:
	ldr	r3, [fp, #-16]
.L1360:
	mov	r0, r3
	sub	sp, fp, #8
	@ sp needed
	pop	{r4, fp, pc}
	.size	stbi__bmp_load, .-stbi__bmp_load
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__tga_get_comp, %function
stbi__tga_get_comp:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	beq	.L1365
	ldr	r3, [fp, #-16]
	mov	r2, #0
	str	r2, [r3]
.L1365:
	ldr	r3, [fp, #-8]
	sub	r3, r3, #8
	cmp	r3, #24
	ldrls	pc, [pc, r3, asl #2]
	b	.L1366
.L1368:
	.word	.L1371
	.word	.L1366
	.word	.L1366
	.word	.L1366
	.word	.L1366
	.word	.L1366
	.word	.L1366
	.word	.L1370
	.word	.L1369
	.word	.L1366
	.word	.L1366
	.word	.L1366
	.word	.L1366
	.word	.L1366
	.word	.L1366
	.word	.L1366
	.word	.L1367
	.word	.L1366
	.word	.L1366
	.word	.L1366
	.word	.L1366
	.word	.L1366
	.word	.L1366
	.word	.L1366
	.word	.L1367
.L1371:
	mov	r3, #1
	b	.L1372
.L1369:
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	beq	.L1370
	mov	r3, #2
	b	.L1372
.L1370:
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	beq	.L1373
	ldr	r3, [fp, #-16]
	mov	r2, #1
	str	r2, [r3]
.L1373:
	mov	r3, #3
	b	.L1372
.L1367:
	ldr	r3, [fp, #-8]
	add	r2, r3, #7
	cmp	r3, #0
	movlt	r3, r2
	movge	r3, r3
	asr	r3, r3, #3
	b	.L1372
.L1366:
	mov	r3, #0
.L1372:
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	stbi__tga_get_comp, .-stbi__tga_get_comp
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__tga_info, %function
stbi__tga_info:
	@ args = 0, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #48
	str	r0, [fp, #-40]
	str	r1, [fp, #-44]
	str	r2, [fp, #-48]
	str	r3, [fp, #-52]
	ldr	r0, [fp, #-40]
	bl	stbi__get8
	ldr	r0, [fp, #-40]
	bl	stbi__get8
	mov	r3, r0
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-16]
	cmp	r3, #1
	ble	.L1375
	ldr	r0, [fp, #-40]
	bl	stbi__rewind
	mov	r3, #0
	b	.L1376
.L1375:
	ldr	r0, [fp, #-40]
	bl	stbi__get8
	mov	r3, r0
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-16]
	cmp	r3, #1
	bne	.L1377
	ldr	r3, [fp, #-20]
	cmp	r3, #1
	beq	.L1378
	ldr	r3, [fp, #-20]
	cmp	r3, #9
	beq	.L1378
	ldr	r0, [fp, #-40]
	bl	stbi__rewind
	mov	r3, #0
	b	.L1376
.L1378:
	mov	r1, #4
	ldr	r0, [fp, #-40]
	bl	stbi__skip
	ldr	r0, [fp, #-40]
	bl	stbi__get8
	mov	r3, r0
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-24]
	cmp	r3, #8
	beq	.L1379
	ldr	r3, [fp, #-24]
	cmp	r3, #15
	beq	.L1379
	ldr	r3, [fp, #-24]
	cmp	r3, #16
	beq	.L1379
	ldr	r3, [fp, #-24]
	cmp	r3, #24
	beq	.L1379
	ldr	r3, [fp, #-24]
	cmp	r3, #32
	beq	.L1379
	ldr	r0, [fp, #-40]
	bl	stbi__rewind
	mov	r3, #0
	b	.L1376
.L1379:
	mov	r1, #4
	ldr	r0, [fp, #-40]
	bl	stbi__skip
	ldr	r3, [fp, #-24]
	str	r3, [fp, #-12]
	b	.L1380
.L1377:
	ldr	r3, [fp, #-20]
	cmp	r3, #2
	beq	.L1381
	ldr	r3, [fp, #-20]
	cmp	r3, #3
	beq	.L1381
	ldr	r3, [fp, #-20]
	cmp	r3, #10
	beq	.L1381
	ldr	r3, [fp, #-20]
	cmp	r3, #11
	beq	.L1381
	ldr	r0, [fp, #-40]
	bl	stbi__rewind
	mov	r3, #0
	b	.L1376
.L1381:
	mov	r1, #9
	ldr	r0, [fp, #-40]
	bl	stbi__skip
	mov	r3, #0
	str	r3, [fp, #-12]
.L1380:
	ldr	r0, [fp, #-40]
	bl	stbi__get16le
	str	r0, [fp, #-28]
	ldr	r3, [fp, #-28]
	cmp	r3, #0
	bgt	.L1382
	ldr	r0, [fp, #-40]
	bl	stbi__rewind
	mov	r3, #0
	b	.L1376
.L1382:
	ldr	r0, [fp, #-40]
	bl	stbi__get16le
	str	r0, [fp, #-32]
	ldr	r3, [fp, #-32]
	cmp	r3, #0
	bgt	.L1383
	ldr	r0, [fp, #-40]
	bl	stbi__rewind
	mov	r3, #0
	b	.L1376
.L1383:
	ldr	r0, [fp, #-40]
	bl	stbi__get8
	mov	r3, r0
	str	r3, [fp, #-36]
	ldr	r0, [fp, #-40]
	bl	stbi__get8
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	beq	.L1384
	ldr	r3, [fp, #-36]
	cmp	r3, #8
	beq	.L1385
	ldr	r3, [fp, #-36]
	cmp	r3, #16
	beq	.L1385
	ldr	r0, [fp, #-40]
	bl	stbi__rewind
	mov	r3, #0
	b	.L1376
.L1385:
	mov	r2, #0
	mov	r1, #0
	ldr	r0, [fp, #-12]
	bl	stbi__tga_get_comp
	str	r0, [fp, #-8]
	b	.L1386
.L1384:
	ldr	r3, [fp, #-20]
	cmp	r3, #3
	beq	.L1387
	ldr	r3, [fp, #-20]
	cmp	r3, #11
	bne	.L1388
.L1387:
	mov	r3, #1
	b	.L1389
.L1388:
	mov	r3, #0
.L1389:
	mov	r2, #0
	mov	r1, r3
	ldr	r0, [fp, #-36]
	bl	stbi__tga_get_comp
	str	r0, [fp, #-8]
.L1386:
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	bne	.L1390
	ldr	r0, [fp, #-40]
	bl	stbi__rewind
	mov	r3, #0
	b	.L1376
.L1390:
	ldr	r3, [fp, #-44]
	cmp	r3, #0
	beq	.L1391
	ldr	r3, [fp, #-44]
	ldr	r2, [fp, #-28]
	str	r2, [r3]
.L1391:
	ldr	r3, [fp, #-48]
	cmp	r3, #0
	beq	.L1392
	ldr	r3, [fp, #-48]
	ldr	r2, [fp, #-32]
	str	r2, [r3]
.L1392:
	ldr	r3, [fp, #-52]
	cmp	r3, #0
	beq	.L1393
	ldr	r3, [fp, #-52]
	ldr	r2, [fp, #-8]
	str	r2, [r3]
.L1393:
	mov	r3, #1
.L1376:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__tga_info, .-stbi__tga_info
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__tga_test, %function
stbi__tga_test:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #24
	str	r0, [fp, #-24]
	mov	r3, #0
	str	r3, [fp, #-8]
	ldr	r0, [fp, #-24]
	bl	stbi__get8
	ldr	r0, [fp, #-24]
	bl	stbi__get8
	mov	r3, r0
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-12]
	cmp	r3, #1
	bgt	.L1407
	ldr	r0, [fp, #-24]
	bl	stbi__get8
	mov	r3, r0
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-12]
	cmp	r3, #1
	bne	.L1397
	ldr	r3, [fp, #-16]
	cmp	r3, #1
	beq	.L1398
	ldr	r3, [fp, #-16]
	cmp	r3, #9
	bne	.L1408
.L1398:
	mov	r1, #4
	ldr	r0, [fp, #-24]
	bl	stbi__skip
	ldr	r0, [fp, #-24]
	bl	stbi__get8
	mov	r3, r0
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-16]
	cmp	r3, #8
	beq	.L1399
	ldr	r3, [fp, #-16]
	cmp	r3, #15
	beq	.L1399
	ldr	r3, [fp, #-16]
	cmp	r3, #16
	beq	.L1399
	ldr	r3, [fp, #-16]
	cmp	r3, #24
	beq	.L1399
	ldr	r3, [fp, #-16]
	cmp	r3, #32
	bne	.L1409
.L1399:
	mov	r1, #4
	ldr	r0, [fp, #-24]
	bl	stbi__skip
	b	.L1400
.L1397:
	ldr	r3, [fp, #-16]
	cmp	r3, #2
	beq	.L1401
	ldr	r3, [fp, #-16]
	cmp	r3, #3
	beq	.L1401
	ldr	r3, [fp, #-16]
	cmp	r3, #10
	beq	.L1401
	ldr	r3, [fp, #-16]
	cmp	r3, #11
	bne	.L1410
.L1401:
	mov	r1, #9
	ldr	r0, [fp, #-24]
	bl	stbi__skip
.L1400:
	ldr	r0, [fp, #-24]
	bl	stbi__get16le
	mov	r3, r0
	cmp	r3, #0
	ble	.L1411
	ldr	r0, [fp, #-24]
	bl	stbi__get16le
	mov	r3, r0
	cmp	r3, #0
	ble	.L1412
	ldr	r0, [fp, #-24]
	bl	stbi__get8
	mov	r3, r0
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-12]
	cmp	r3, #1
	bne	.L1404
	ldr	r3, [fp, #-16]
	cmp	r3, #8
	beq	.L1404
	ldr	r3, [fp, #-16]
	cmp	r3, #16
	bne	.L1413
.L1404:
	ldr	r3, [fp, #-16]
	cmp	r3, #8
	beq	.L1405
	ldr	r3, [fp, #-16]
	cmp	r3, #15
	beq	.L1405
	ldr	r3, [fp, #-16]
	cmp	r3, #16
	beq	.L1405
	ldr	r3, [fp, #-16]
	cmp	r3, #24
	beq	.L1405
	ldr	r3, [fp, #-16]
	cmp	r3, #32
	bne	.L1414
.L1405:
	mov	r3, #1
	str	r3, [fp, #-8]
	b	.L1396
.L1407:
	nop
	b	.L1396
.L1408:
	nop
	b	.L1396
.L1409:
	nop
	b	.L1396
.L1410:
	nop
	b	.L1396
.L1411:
	nop
	b	.L1396
.L1412:
	nop
	b	.L1396
.L1413:
	nop
	b	.L1396
.L1414:
	nop
.L1396:
	ldr	r0, [fp, #-24]
	bl	stbi__rewind
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__tga_test, .-stbi__tga_test
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__tga_read_rgb16, %function
stbi__tga_read_rgb16:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #24
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	ldr	r0, [fp, #-24]
	bl	stbi__get16le
	mov	r3, r0
	strh	r3, [fp, #-6]	@ movhi
	mov	r3, #31
	strh	r3, [fp, #-8]	@ movhi
	ldrh	r3, [fp, #-6]
	lsr	r3, r3, #10
	uxth	r2, r3
	ldrh	r3, [fp, #-8]	@ movhi
	and	r3, r3, r2
	uxth	r3, r3
	str	r3, [fp, #-12]
	ldrh	r3, [fp, #-6]
	lsr	r3, r3, #5
	uxth	r2, r3
	ldrh	r3, [fp, #-8]	@ movhi
	and	r3, r3, r2
	uxth	r3, r3
	str	r3, [fp, #-16]
	ldrh	r2, [fp, #-6]	@ movhi
	ldrh	r3, [fp, #-8]	@ movhi
	and	r3, r3, r2
	uxth	r3, r3
	str	r3, [fp, #-20]
	ldr	r2, [fp, #-12]
	mov	r3, r2
	lsl	r3, r3, #8
	sub	r3, r3, r2
	movw	r2, #2115
	movt	r2, 33825
	smull	r1, r2, r2, r3
	add	r2, r2, r3
	asr	r2, r2, #4
	asr	r3, r3, #31
	sub	r3, r2, r3
	uxtb	r2, r3
	ldr	r3, [fp, #-28]
	strb	r2, [r3]
	ldr	r2, [fp, #-16]
	mov	r3, r2
	lsl	r3, r3, #8
	sub	r3, r3, r2
	movw	r2, #2115
	movt	r2, 33825
	smull	r1, r2, r2, r3
	add	r2, r2, r3
	asr	r2, r2, #4
	asr	r3, r3, #31
	sub	r2, r2, r3
	ldr	r3, [fp, #-28]
	add	r3, r3, #1
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r2, [fp, #-20]
	mov	r3, r2
	lsl	r3, r3, #8
	sub	r3, r3, r2
	movw	r2, #2115
	movt	r2, 33825
	smull	r1, r2, r2, r3
	add	r2, r2, r3
	asr	r2, r2, #4
	asr	r3, r3, #31
	sub	r2, r2, r3
	ldr	r3, [fp, #-28]
	add	r3, r3, #2
	uxtb	r2, r2
	strb	r2, [r3]
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__tga_read_rgb16, .-stbi__tga_read_rgb16
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__tga_load, %function
stbi__tga_load:
	@ args = 8, pretend = 0, frame = 144
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #152
	str	r0, [fp, #-136]
	str	r1, [fp, #-140]
	str	r2, [fp, #-144]
	str	r3, [fp, #-148]
	ldr	r0, [fp, #-136]
	bl	stbi__get8
	mov	r3, r0
	str	r3, [fp, #-68]
	ldr	r0, [fp, #-136]
	bl	stbi__get8
	mov	r3, r0
	str	r3, [fp, #-72]
	ldr	r0, [fp, #-136]
	bl	stbi__get8
	mov	r3, r0
	str	r3, [fp, #-8]
	mov	r3, #0
	str	r3, [fp, #-12]
	ldr	r0, [fp, #-136]
	bl	stbi__get16le
	str	r0, [fp, #-76]
	ldr	r0, [fp, #-136]
	bl	stbi__get16le
	str	r0, [fp, #-80]
	ldr	r0, [fp, #-136]
	bl	stbi__get8
	mov	r3, r0
	str	r3, [fp, #-84]
	ldr	r0, [fp, #-136]
	bl	stbi__get16le
	str	r0, [fp, #-88]
	ldr	r0, [fp, #-136]
	bl	stbi__get16le
	str	r0, [fp, #-92]
	ldr	r0, [fp, #-136]
	bl	stbi__get16le
	str	r0, [fp, #-96]
	ldr	r0, [fp, #-136]
	bl	stbi__get16le
	str	r0, [fp, #-100]
	ldr	r0, [fp, #-136]
	bl	stbi__get8
	mov	r3, r0
	str	r3, [fp, #-104]
	mov	r3, #0
	str	r3, [fp, #-128]
	ldr	r0, [fp, #-136]
	bl	stbi__get8
	mov	r3, r0
	str	r3, [fp, #-108]
	mov	r3, #0
	str	r3, [fp, #-24]
	mov	r3, #0
	str	r3, [fp, #-132]
	mov	r3, #0
	str	r3, [fp, #-36]
	mov	r3, #0
	str	r3, [fp, #-40]
	mov	r3, #1
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-8]
	cmp	r3, #7
	ble	.L1417
	ldr	r3, [fp, #-8]
	sub	r3, r3, #8
	str	r3, [fp, #-8]
	mov	r3, #1
	str	r3, [fp, #-12]
.L1417:
	ldr	r3, [fp, #-108]
	and	r3, r3, #32
	cmp	r3, #0
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	str	r3, [fp, #-108]
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L1418
	sub	r3, fp, #128
	mov	r2, r3
	mov	r1, #0
	ldr	r0, [fp, #-84]
	bl	stbi__tga_get_comp
	str	r0, [fp, #-16]
	b	.L1419
.L1418:
	ldr	r3, [fp, #-8]
	cmp	r3, #3
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	mov	r1, r3
	sub	r3, fp, #128
	mov	r2, r3
	ldr	r0, [fp, #-104]
	bl	stbi__tga_get_comp
	str	r0, [fp, #-16]
.L1419:
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	bne	.L1420
	mov	r3, #0
	b	.L1464
.L1420:
	ldr	r3, [fp, #-140]
	ldr	r2, [fp, #-96]
	str	r2, [r3]
	ldr	r3, [fp, #-144]
	ldr	r2, [fp, #-100]
	str	r2, [r3]
	ldr	r3, [fp, #-148]
	cmp	r3, #0
	beq	.L1422
	ldr	r3, [fp, #-148]
	ldr	r2, [fp, #-16]
	str	r2, [r3]
.L1422:
	mov	r3, #0
	ldr	r2, [fp, #-16]
	ldr	r1, [fp, #-100]
	ldr	r0, [fp, #-96]
	bl	stbi__mad3sizes_valid
	mov	r3, r0
	cmp	r3, #0
	bne	.L1423
	mov	r3, #0
	b	.L1464
.L1423:
	mov	r3, #0
	ldr	r2, [fp, #-16]
	ldr	r1, [fp, #-100]
	ldr	r0, [fp, #-96]
	bl	stbi__malloc_mad3
	str	r0, [fp, #-20]
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	bne	.L1424
	mov	r3, #0
	b	.L1464
.L1424:
	ldr	r1, [fp, #-68]
	ldr	r0, [fp, #-136]
	bl	stbi__skip
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	bne	.L1425
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	bne	.L1425
	ldr	r3, [fp, #-128]
	cmp	r3, #0
	bne	.L1425
	mov	r3, #0
	str	r3, [fp, #-28]
	b	.L1426
.L1429:
	ldr	r3, [fp, #-108]
	cmp	r3, #0
	beq	.L1427
	ldr	r2, [fp, #-100]
	ldr	r3, [fp, #-28]
	sub	r3, r2, r3
	sub	r3, r3, #1
	b	.L1428
.L1427:
	ldr	r3, [fp, #-28]
.L1428:
	str	r3, [fp, #-112]
	ldr	r3, [fp, #-112]
	ldr	r2, [fp, #-96]
	mul	r3, r2, r3
	ldr	r2, [fp, #-16]
	mul	r3, r2, r3
	mov	r2, r3
	ldr	r3, [fp, #-20]
	add	r3, r3, r2
	str	r3, [fp, #-116]
	ldr	r3, [fp, #-96]
	ldr	r2, [fp, #-16]
	mul	r3, r2, r3
	mov	r2, r3
	ldr	r1, [fp, #-116]
	ldr	r0, [fp, #-136]
	bl	stbi__getn
	ldr	r3, [fp, #-28]
	add	r3, r3, #1
	str	r3, [fp, #-28]
.L1426:
	ldr	r2, [fp, #-28]
	ldr	r3, [fp, #-100]
	cmp	r2, r3
	blt	.L1429
	b	.L1430
.L1425:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L1431
	ldr	r1, [fp, #-76]
	ldr	r0, [fp, #-136]
	bl	stbi__skip
	mov	r2, #0
	ldr	r1, [fp, #-16]
	ldr	r0, [fp, #-80]
	bl	stbi__malloc_mad2
	str	r0, [fp, #-24]
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	bne	.L1432
	ldr	r0, [fp, #-20]
	bl	free
	mov	r3, #0
	b	.L1464
.L1432:
	ldr	r3, [fp, #-128]
	cmp	r3, #0
	beq	.L1433
	ldr	r3, [fp, #-24]
	str	r3, [fp, #-48]
	mov	r3, #0
	str	r3, [fp, #-28]
	b	.L1434
.L1435:
	ldr	r1, [fp, #-48]
	ldr	r0, [fp, #-136]
	bl	stbi__tga_read_rgb16
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-48]
	add	r3, r2, r3
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-28]
	add	r3, r3, #1
	str	r3, [fp, #-28]
.L1434:
	ldr	r2, [fp, #-28]
	ldr	r3, [fp, #-80]
	cmp	r2, r3
	blt	.L1435
	b	.L1431
.L1433:
	ldr	r3, [fp, #-80]
	ldr	r2, [fp, #-16]
	mul	r3, r2, r3
	mov	r2, r3
	ldr	r1, [fp, #-24]
	ldr	r0, [fp, #-136]
	bl	stbi__getn
	mov	r3, r0
	cmp	r3, #0
	bne	.L1431
	ldr	r0, [fp, #-20]
	bl	free
	ldr	r0, [fp, #-24]
	bl	free
	mov	r3, #0
	b	.L1464
.L1431:
	mov	r3, #0
	str	r3, [fp, #-28]
	b	.L1436
.L1454:
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	beq	.L1437
	ldr	r3, [fp, #-36]
	cmp	r3, #0
	bne	.L1438
	ldr	r0, [fp, #-136]
	bl	stbi__get8
	mov	r3, r0
	str	r3, [fp, #-120]
	ldr	r3, [fp, #-120]
	and	r3, r3, #127
	add	r3, r3, #1
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-120]
	asr	r3, r3, #7
	str	r3, [fp, #-40]
	mov	r3, #1
	str	r3, [fp, #-44]
	b	.L1440
.L1438:
	ldr	r3, [fp, #-40]
	cmp	r3, #0
	bne	.L1440
	mov	r3, #1
	str	r3, [fp, #-44]
	b	.L1440
.L1437:
	mov	r3, #1
	str	r3, [fp, #-44]
.L1440:
	ldr	r3, [fp, #-44]
	cmp	r3, #0
	beq	.L1441
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L1442
	ldr	r3, [fp, #-104]
	cmp	r3, #8
	bne	.L1443
	ldr	r0, [fp, #-136]
	bl	stbi__get8
	mov	r3, r0
	b	.L1444
.L1443:
	ldr	r0, [fp, #-136]
	bl	stbi__get16le
	mov	r3, r0
.L1444:
	str	r3, [fp, #-52]
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-80]
	cmp	r2, r3
	blt	.L1445
	mov	r3, #0
	str	r3, [fp, #-52]
.L1445:
	ldr	r3, [fp, #-52]
	ldr	r2, [fp, #-16]
	mul	r3, r2, r3
	str	r3, [fp, #-52]
	mov	r3, #0
	str	r3, [fp, #-32]
	b	.L1446
.L1447:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-32]
	add	r3, r2, r3
	mov	r2, r3
	ldr	r3, [fp, #-24]
	add	r3, r3, r2
	ldrb	r1, [r3]	@ zero_extendqisi2
	sub	r2, fp, #132
	ldr	r3, [fp, #-32]
	add	r3, r2, r3
	mov	r2, r1
	strb	r2, [r3]
	ldr	r3, [fp, #-32]
	add	r3, r3, #1
	str	r3, [fp, #-32]
.L1446:
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-16]
	cmp	r2, r3
	blt	.L1447
	b	.L1448
.L1442:
	ldr	r3, [fp, #-128]
	cmp	r3, #0
	beq	.L1449
	sub	r3, fp, #132
	mov	r1, r3
	ldr	r0, [fp, #-136]
	bl	stbi__tga_read_rgb16
	b	.L1448
.L1449:
	mov	r3, #0
	str	r3, [fp, #-32]
	b	.L1450
.L1451:
	ldr	r0, [fp, #-136]
	bl	stbi__get8
	mov	r3, r0
	mov	r1, r3
	sub	r2, fp, #132
	ldr	r3, [fp, #-32]
	add	r3, r2, r3
	mov	r2, r1
	strb	r2, [r3]
	ldr	r3, [fp, #-32]
	add	r3, r3, #1
	str	r3, [fp, #-32]
.L1450:
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-16]
	cmp	r2, r3
	blt	.L1451
.L1448:
	mov	r3, #0
	str	r3, [fp, #-44]
.L1441:
	mov	r3, #0
	str	r3, [fp, #-32]
	b	.L1452
.L1453:
	ldr	r3, [fp, #-28]
	ldr	r2, [fp, #-16]
	mul	r2, r2, r3
	ldr	r3, [fp, #-32]
	add	r3, r2, r3
	mov	r2, r3
	ldr	r3, [fp, #-20]
	add	r3, r3, r2
	sub	r1, fp, #132
	ldr	r2, [fp, #-32]
	add	r2, r1, r2
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
	ldr	r3, [fp, #-32]
	add	r3, r3, #1
	str	r3, [fp, #-32]
.L1452:
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-16]
	cmp	r2, r3
	blt	.L1453
	ldr	r3, [fp, #-36]
	sub	r3, r3, #1
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-28]
	add	r3, r3, #1
	str	r3, [fp, #-28]
.L1436:
	ldr	r3, [fp, #-96]
	ldr	r2, [fp, #-100]
	mul	r3, r2, r3
	ldr	r2, [fp, #-28]
	cmp	r2, r3
	blt	.L1454
	ldr	r3, [fp, #-108]
	cmp	r3, #0
	beq	.L1455
	mov	r3, #0
	str	r3, [fp, #-32]
	b	.L1456
.L1459:
	ldr	r3, [fp, #-32]
	ldr	r2, [fp, #-96]
	mul	r2, r2, r3
	ldr	r3, [fp, #-16]
	mul	r3, r2, r3
	str	r3, [fp, #-56]
	ldr	r3, [fp, #-100]
	sub	r2, r3, #1
	ldr	r3, [fp, #-32]
	sub	r3, r2, r3
	ldr	r2, [fp, #-96]
	mul	r2, r2, r3
	ldr	r3, [fp, #-16]
	mul	r3, r2, r3
	str	r3, [fp, #-60]
	ldr	r3, [fp, #-96]
	ldr	r2, [fp, #-16]
	mul	r3, r2, r3
	str	r3, [fp, #-28]
	b	.L1457
.L1458:
	ldr	r3, [fp, #-56]
	ldr	r2, [fp, #-20]
	add	r3, r2, r3
	ldrb	r3, [r3]
	strb	r3, [fp, #-121]
	ldr	r3, [fp, #-60]
	ldr	r2, [fp, #-20]
	add	r2, r2, r3
	ldr	r3, [fp, #-56]
	ldr	r1, [fp, #-20]
	add	r3, r1, r3
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
	ldr	r3, [fp, #-60]
	ldr	r2, [fp, #-20]
	add	r3, r2, r3
	ldrb	r2, [fp, #-121]
	strb	r2, [r3]
	ldr	r3, [fp, #-56]
	add	r3, r3, #1
	str	r3, [fp, #-56]
	ldr	r3, [fp, #-60]
	add	r3, r3, #1
	str	r3, [fp, #-60]
	ldr	r3, [fp, #-28]
	sub	r3, r3, #1
	str	r3, [fp, #-28]
.L1457:
	ldr	r3, [fp, #-28]
	cmp	r3, #0
	bgt	.L1458
	ldr	r3, [fp, #-32]
	add	r3, r3, #1
	str	r3, [fp, #-32]
.L1456:
	ldr	r3, [fp, #-32]
	lsl	r3, r3, #1
	ldr	r2, [fp, #-100]
	cmp	r2, r3
	bgt	.L1459
.L1455:
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	beq	.L1430
	ldr	r0, [fp, #-24]
	bl	free
.L1430:
	ldr	r3, [fp, #-16]
	cmp	r3, #2
	ble	.L1460
	ldr	r3, [fp, #-128]
	cmp	r3, #0
	bne	.L1460
	ldr	r3, [fp, #-20]
	str	r3, [fp, #-64]
	mov	r3, #0
	str	r3, [fp, #-28]
	b	.L1461
.L1462:
	ldr	r3, [fp, #-64]
	ldrb	r3, [r3]
	strb	r3, [fp, #-122]
	ldr	r3, [fp, #-64]
	ldrb	r2, [r3, #2]	@ zero_extendqisi2
	ldr	r3, [fp, #-64]
	strb	r2, [r3]
	ldr	r3, [fp, #-64]
	add	r3, r3, #2
	ldrb	r2, [fp, #-122]
	strb	r2, [r3]
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-64]
	add	r3, r2, r3
	str	r3, [fp, #-64]
	ldr	r3, [fp, #-28]
	add	r3, r3, #1
	str	r3, [fp, #-28]
.L1461:
	ldr	r3, [fp, #-96]
	ldr	r2, [fp, #-100]
	mul	r3, r2, r3
	ldr	r2, [fp, #-28]
	cmp	r2, r3
	blt	.L1462
.L1460:
	ldr	r3, [fp, #4]
	cmp	r3, #0
	beq	.L1463
	ldr	r2, [fp, #4]
	ldr	r3, [fp, #-16]
	cmp	r2, r3
	beq	.L1463
	ldr	r2, [fp, #-96]
	ldr	r3, [fp, #-100]
	str	r3, [sp]
	mov	r3, r2
	ldr	r2, [fp, #4]
	ldr	r1, [fp, #-16]
	ldr	r0, [fp, #-20]
	bl	stbi__convert_format
	str	r0, [fp, #-20]
.L1463:
	mov	r3, #0
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-92]
	str	r3, [fp, #-88]
	ldr	r3, [fp, #-88]
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-84]
	str	r3, [fp, #-80]
	ldr	r3, [fp, #-80]
	str	r3, [fp, #-76]
	ldr	r3, [fp, #-20]
.L1464:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__tga_load, .-stbi__tga_load
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__psd_test, %function
stbi__psd_test:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-16]
	ldr	r0, [fp, #-16]
	bl	stbi__get32be
	mov	r2, r0
	movw	r3, #20563
	movt	r3, 14402
	cmp	r2, r3
	moveq	r3, #1
	movne	r3, #0
	uxtb	r3, r3
	str	r3, [fp, #-8]
	ldr	r0, [fp, #-16]
	bl	stbi__rewind
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__psd_test, .-stbi__psd_test
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__psd_decode_rle, %function
stbi__psd_decode_rle:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #32
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	str	r2, [fp, #-32]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L1468
.L1477:
	ldr	r0, [fp, #-24]
	bl	stbi__get8
	mov	r3, r0
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-12]
	cmp	r3, #128
	beq	.L1468
	ldr	r3, [fp, #-12]
	cmp	r3, #127
	bgt	.L1469
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-16]
	cmp	r2, r3
	ble	.L1470
	mov	r3, #0
	b	.L1471
.L1470:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	str	r3, [fp, #-8]
	b	.L1472
.L1473:
	ldr	r0, [fp, #-24]
	bl	stbi__get8
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [fp, #-28]
	strb	r2, [r3]
	ldr	r3, [fp, #-28]
	add	r3, r3, #4
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-12]
	sub	r3, r3, #1
	str	r3, [fp, #-12]
.L1472:
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	bne	.L1473
	b	.L1468
.L1469:
	ldr	r3, [fp, #-12]
	cmp	r3, #128
	ble	.L1468
	ldr	r3, [fp, #-12]
	rsb	r3, r3, #256
	add	r3, r3, #1
	str	r3, [fp, #-12]
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-16]
	cmp	r2, r3
	ble	.L1474
	mov	r3, #0
	b	.L1471
.L1474:
	ldr	r0, [fp, #-24]
	bl	stbi__get8
	mov	r3, r0
	strb	r3, [fp, #-17]
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	str	r3, [fp, #-8]
	b	.L1475
.L1476:
	ldr	r3, [fp, #-28]
	ldrb	r2, [fp, #-17]
	strb	r2, [r3]
	ldr	r3, [fp, #-28]
	add	r3, r3, #4
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-12]
	sub	r3, r3, #1
	str	r3, [fp, #-12]
.L1475:
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	bne	.L1476
.L1468:
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-8]
	sub	r3, r2, r3
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	bgt	.L1477
	mov	r3, #1
.L1471:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__psd_decode_rle, .-stbi__psd_decode_rle
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__psd_load, %function
stbi__psd_load:
	@ args = 12, pretend = 0, frame = 120
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #128
	str	r0, [fp, #-104]
	str	r1, [fp, #-108]
	str	r2, [fp, #-112]
	str	r3, [fp, #-116]
	ldr	r0, [fp, #-104]
	bl	stbi__get32be
	mov	r2, r0
	movw	r3, #20563
	movt	r3, 14402
	cmp	r2, r3
	beq	.L1479
	mov	r3, #0
	b	.L1480
.L1479:
	ldr	r0, [fp, #-104]
	bl	stbi__get16be
	mov	r3, r0
	cmp	r3, #1
	beq	.L1481
	mov	r3, #0
	b	.L1480
.L1481:
	mov	r1, #6
	ldr	r0, [fp, #-104]
	bl	stbi__skip
	ldr	r0, [fp, #-104]
	bl	stbi__get16be
	str	r0, [fp, #-40]
	ldr	r3, [fp, #-40]
	cmp	r3, #0
	blt	.L1482
	ldr	r3, [fp, #-40]
	cmp	r3, #16
	ble	.L1483
.L1482:
	mov	r3, #0
	b	.L1480
.L1483:
	ldr	r0, [fp, #-104]
	bl	stbi__get32be
	mov	r3, r0
	str	r3, [fp, #-44]
	ldr	r0, [fp, #-104]
	bl	stbi__get32be
	mov	r3, r0
	str	r3, [fp, #-48]
	ldr	r0, [fp, #-104]
	bl	stbi__get16be
	str	r0, [fp, #-52]
	ldr	r3, [fp, #-52]
	cmp	r3, #8
	beq	.L1484
	ldr	r3, [fp, #-52]
	cmp	r3, #16
	beq	.L1484
	mov	r3, #0
	b	.L1480
.L1484:
	ldr	r0, [fp, #-104]
	bl	stbi__get16be
	mov	r3, r0
	cmp	r3, #3
	beq	.L1485
	mov	r3, #0
	b	.L1480
.L1485:
	ldr	r0, [fp, #-104]
	bl	stbi__get32be
	mov	r3, r0
	mov	r1, r3
	ldr	r0, [fp, #-104]
	bl	stbi__skip
	ldr	r0, [fp, #-104]
	bl	stbi__get32be
	mov	r3, r0
	mov	r1, r3
	ldr	r0, [fp, #-104]
	bl	stbi__skip
	ldr	r0, [fp, #-104]
	bl	stbi__get32be
	mov	r3, r0
	mov	r1, r3
	ldr	r0, [fp, #-104]
	bl	stbi__skip
	ldr	r0, [fp, #-104]
	bl	stbi__get16be
	str	r0, [fp, #-56]
	ldr	r3, [fp, #-56]
	cmp	r3, #1
	ble	.L1486
	mov	r3, #0
	b	.L1480
.L1486:
	mov	r3, #0
	ldr	r2, [fp, #-44]
	ldr	r1, [fp, #-48]
	mov	r0, #4
	bl	stbi__mad3sizes_valid
	mov	r3, r0
	cmp	r3, #0
	bne	.L1487
	mov	r3, #0
	b	.L1480
.L1487:
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	bne	.L1488
	ldr	r3, [fp, #-52]
	cmp	r3, #16
	bne	.L1488
	ldr	r3, [fp, #12]
	cmp	r3, #16
	bne	.L1488
	mov	r3, #0
	ldr	r2, [fp, #-44]
	ldr	r1, [fp, #-48]
	mov	r0, #8
	bl	stbi__malloc_mad3
	str	r0, [fp, #-16]
	ldr	r3, [fp, #8]
	mov	r2, #16
	str	r2, [r3]
	b	.L1489
.L1488:
	ldr	r3, [fp, #-48]
	ldr	r2, [fp, #-44]
	mul	r3, r2, r3
	lsl	r3, r3, #2
	mov	r0, r3
	bl	stbi__malloc
	str	r0, [fp, #-16]
.L1489:
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	bne	.L1490
	mov	r3, #0
	b	.L1480
.L1490:
	ldr	r3, [fp, #-48]
	ldr	r2, [fp, #-44]
	mul	r3, r2, r3
	str	r3, [fp, #-60]
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	beq	.L1491
	ldr	r3, [fp, #-44]
	ldr	r2, [fp, #-40]
	mul	r3, r2, r3
	lsl	r3, r3, #1
	mov	r1, r3
	ldr	r0, [fp, #-104]
	bl	stbi__skip
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L1492
.L1499:
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-16]
	add	r3, r2, r3
	str	r3, [fp, #-20]
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-40]
	cmp	r2, r3
	blt	.L1493
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L1494
.L1497:
	ldr	r3, [fp, #-8]
	cmp	r3, #3
	bne	.L1495
	mov	r2, #255
	b	.L1496
.L1495:
	mov	r2, #0
.L1496:
	ldr	r3, [fp, #-20]
	strb	r2, [r3]
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-20]
	add	r3, r3, #4
	str	r3, [fp, #-20]
.L1494:
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-60]
	cmp	r2, r3
	blt	.L1497
	b	.L1498
.L1493:
	ldr	r2, [fp, #-60]
	ldr	r1, [fp, #-20]
	ldr	r0, [fp, #-104]
	bl	stbi__psd_decode_rle
	mov	r3, r0
	cmp	r3, #0
	bne	.L1498
	ldr	r0, [fp, #-16]
	bl	free
	mov	r3, #0
	b	.L1480
.L1498:
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L1492:
	ldr	r3, [fp, #-8]
	cmp	r3, #3
	ble	.L1499
	b	.L1500
.L1491:
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L1501
.L1522:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-40]
	cmp	r2, r3
	blt	.L1502
	ldr	r3, [fp, #-52]
	cmp	r3, #16
	bne	.L1503
	ldr	r3, [fp, #12]
	cmp	r3, #16
	bne	.L1503
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #1
	ldr	r2, [fp, #-16]
	add	r3, r2, r3
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-8]
	cmp	r3, #3
	bne	.L1504
	movw	r3, #65535
	b	.L1505
.L1504:
	mov	r3, #0
.L1505:
	strh	r3, [fp, #-62]	@ movhi
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L1506
.L1507:
	ldr	r3, [fp, #-24]
	ldrh	r2, [fp, #-62]	@ movhi
	strh	r2, [r3]	@ movhi
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-24]
	add	r3, r3, #8
	str	r3, [fp, #-24]
.L1506:
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-60]
	cmp	r2, r3
	blt	.L1507
	b	.L1513
.L1503:
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-16]
	add	r3, r2, r3
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-8]
	cmp	r3, #3
	bne	.L1509
	mov	r3, #255
	b	.L1510
.L1509:
	mov	r3, #0
.L1510:
	strb	r3, [fp, #-63]
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L1511
.L1512:
	ldr	r3, [fp, #-28]
	ldrb	r2, [fp, #-63]
	strb	r2, [r3]
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-28]
	add	r3, r3, #4
	str	r3, [fp, #-28]
.L1511:
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-60]
	cmp	r2, r3
	blt	.L1512
	b	.L1513
.L1502:
	ldr	r3, [fp, #8]
	ldr	r3, [r3]
	cmp	r3, #16
	bne	.L1514
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #1
	ldr	r2, [fp, #-16]
	add	r3, r2, r3
	str	r3, [fp, #-32]
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L1515
.L1516:
	ldr	r0, [fp, #-104]
	bl	stbi__get16be
	mov	r3, r0
	uxth	r2, r3
	ldr	r3, [fp, #-32]
	strh	r2, [r3]	@ movhi
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-32]
	add	r3, r3, #8
	str	r3, [fp, #-32]
.L1515:
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-60]
	cmp	r2, r3
	blt	.L1516
	b	.L1513
.L1514:
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-16]
	add	r3, r2, r3
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-52]
	cmp	r3, #16
	bne	.L1517
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L1518
.L1519:
	ldr	r0, [fp, #-104]
	bl	stbi__get16be
	mov	r3, r0
	asr	r3, r3, #8
	uxtb	r2, r3
	ldr	r3, [fp, #-36]
	strb	r2, [r3]
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-36]
	add	r3, r3, #4
	str	r3, [fp, #-36]
.L1518:
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-60]
	cmp	r2, r3
	blt	.L1519
	b	.L1513
.L1517:
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L1520
.L1521:
	ldr	r0, [fp, #-104]
	bl	stbi__get8
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [fp, #-36]
	strb	r2, [r3]
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-36]
	add	r3, r3, #4
	str	r3, [fp, #-36]
.L1520:
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-60]
	cmp	r2, r3
	blt	.L1521
.L1513:
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L1501:
	ldr	r3, [fp, #-8]
	cmp	r3, #3
	ble	.L1522
.L1500:
	ldr	r3, [fp, #-40]
	cmp	r3, #3
	ble	.L1523
	ldr	r3, [fp, #8]
	ldr	r3, [r3]
	cmp	r3, #16
	bne	.L1524
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L1525
.L1527:
	ldr	r3, [fp, #-12]
	lsl	r3, r3, #3
	ldr	r2, [fp, #-16]
	add	r3, r2, r3
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-68]
	add	r3, r3, #6
	ldrh	r3, [r3]
	cmp	r3, #0
	beq	.L1526
	ldr	r3, [fp, #-68]
	add	r3, r3, #6
	ldrh	r3, [r3]
	movw	r2, #65535
	cmp	r3, r2
	beq	.L1526
	ldr	r3, [fp, #-68]
	add	r3, r3, #6
	ldrh	r3, [r3]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	vldr.32	s13, .L1535
	vdiv.f32	s15, s14, s13
	vstr.32	s15, [fp, #-72]
	vmov.f32	s13, #1.0e+0
	vldr.32	s14, [fp, #-72]
	vdiv.f32	s15, s13, s14
	vstr.32	s15, [fp, #-76]
	vmov.f32	s14, #1.0e+0
	vldr.32	s15, [fp, #-76]
	vsub.f32	s15, s14, s15
	vldr.32	s14, .L1535
	vmul.f32	s15, s15, s14
	vstr.32	s15, [fp, #-80]
	ldr	r3, [fp, #-68]
	ldrh	r3, [r3]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	vldr.32	s15, [fp, #-76]
	vmul.f32	s14, s14, s15
	vldr.32	s15, [fp, #-80]
	vadd.f32	s15, s14, s15
	vcvt.u32.f32	s15, s15
	vmov	r3, s15	@ int
	uxth	r2, r3
	ldr	r3, [fp, #-68]
	strh	r2, [r3]	@ movhi
	ldr	r3, [fp, #-68]
	add	r3, r3, #2
	ldrh	r3, [r3]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	vldr.32	s15, [fp, #-76]
	vmul.f32	s14, s14, s15
	vldr.32	s15, [fp, #-80]
	vadd.f32	s15, s14, s15
	ldr	r3, [fp, #-68]
	add	r3, r3, #2
	vcvt.u32.f32	s15, s15
	vmov	r2, s15	@ int
	uxth	r2, r2
	strh	r2, [r3]	@ movhi
	ldr	r3, [fp, #-68]
	add	r3, r3, #4
	ldrh	r3, [r3]
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	vldr.32	s15, [fp, #-76]
	vmul.f32	s14, s14, s15
	vldr.32	s15, [fp, #-80]
	vadd.f32	s15, s14, s15
	ldr	r3, [fp, #-68]
	add	r3, r3, #4
	vcvt.u32.f32	s15, s15
	vmov	r2, s15	@ int
	uxth	r2, r2
	strh	r2, [r3]	@ movhi
.L1526:
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L1525:
	ldr	r3, [fp, #-48]
	ldr	r2, [fp, #-44]
	mul	r3, r2, r3
	ldr	r2, [fp, #-12]
	cmp	r2, r3
	blt	.L1527
	b	.L1523
.L1524:
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L1528
.L1530:
	ldr	r3, [fp, #-12]
	lsl	r3, r3, #2
	mov	r2, r3
	ldr	r3, [fp, #-16]
	add	r3, r3, r2
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-84]
	add	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1529
	ldr	r3, [fp, #-84]
	add	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #255
	beq	.L1529
	ldr	r3, [fp, #-84]
	add	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	vldr.32	s13, .L1535+4
	vdiv.f32	s15, s14, s13
	vstr.32	s15, [fp, #-88]
	vmov.f32	s13, #1.0e+0
	vldr.32	s14, [fp, #-88]
	vdiv.f32	s15, s13, s14
	vstr.32	s15, [fp, #-92]
	vmov.f32	s14, #1.0e+0
	vldr.32	s15, [fp, #-92]
	vsub.f32	s15, s14, s15
	vldr.32	s14, .L1535+4
	vmul.f32	s15, s15, s14
	vstr.32	s15, [fp, #-96]
	ldr	r3, [fp, #-84]
	ldrb	r3, [r3]	@ zero_extendqisi2
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	vldr.32	s15, [fp, #-92]
	vmul.f32	s14, s14, s15
	vldr.32	s15, [fp, #-96]
	vadd.f32	s15, s14, s15
	vcvt.u32.f32	s15, s15
	vstr.32	s15, [fp, #-120]	@ int
	ldr	r3, [fp, #-120]
	uxtb	r2, r3
	ldr	r3, [fp, #-84]
	strb	r2, [r3]
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	vldr.32	s15, [fp, #-92]
	vmul.f32	s14, s14, s15
	vldr.32	s15, [fp, #-96]
	vadd.f32	s15, s14, s15
	ldr	r3, [fp, #-84]
	add	r3, r3, #1
	vcvt.u32.f32	s15, s15
	vstr.32	s15, [fp, #-120]	@ int
	ldr	r2, [fp, #-120]
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [fp, #-84]
	add	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	vldr.32	s15, [fp, #-92]
	vmul.f32	s14, s14, s15
	vldr.32	s15, [fp, #-96]
	vadd.f32	s15, s14, s15
	ldr	r3, [fp, #-84]
	add	r3, r3, #2
	vcvt.u32.f32	s15, s15
	vstr.32	s15, [fp, #-120]	@ int
	ldr	r2, [fp, #-120]
	uxtb	r2, r2
	strb	r2, [r3]
.L1529:
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L1528:
	ldr	r3, [fp, #-48]
	ldr	r2, [fp, #-44]
	mul	r3, r2, r3
	ldr	r2, [fp, #-12]
	cmp	r2, r3
	blt	.L1530
.L1523:
	ldr	r3, [fp, #4]
	cmp	r3, #0
	beq	.L1531
	ldr	r3, [fp, #4]
	cmp	r3, #4
	beq	.L1531
	ldr	r3, [fp, #8]
	ldr	r3, [r3]
	cmp	r3, #16
	bne	.L1532
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	str	r3, [sp]
	mov	r3, r2
	ldr	r2, [fp, #4]
	mov	r1, #4
	ldr	r0, [fp, #-16]
	bl	stbi__convert_format16
	str	r0, [fp, #-16]
	b	.L1533
.L1532:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	str	r3, [sp]
	mov	r3, r2
	ldr	r2, [fp, #4]
	mov	r1, #4
	ldr	r0, [fp, #-16]
	bl	stbi__convert_format
	str	r0, [fp, #-16]
.L1533:
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	bne	.L1531
	ldr	r3, [fp, #-16]
	b	.L1480
.L1531:
	ldr	r3, [fp, #-116]
	cmp	r3, #0
	beq	.L1534
	ldr	r3, [fp, #-116]
	mov	r2, #4
	str	r2, [r3]
.L1534:
	ldr	r3, [fp, #-112]
	ldr	r2, [fp, #-44]
	str	r2, [r3]
	ldr	r3, [fp, #-108]
	ldr	r2, [fp, #-48]
	str	r2, [r3]
	ldr	r3, [fp, #-16]
.L1480:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L1536:
	.align	2
.L1535:
	.word	1199570688
	.word	1132396544
	.size	stbi__psd_load, .-stbi__psd_load
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__pic_is4, %function
stbi__pic_is4:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L1538
.L1541:
	ldr	r0, [fp, #-16]
	bl	stbi__get8
	mov	r3, r0
	mov	r1, r3
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-20]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r1, r3
	beq	.L1539
	mov	r3, #0
	b	.L1540
.L1539:
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L1538:
	ldr	r3, [fp, #-8]
	cmp	r3, #3
	ble	.L1541
	mov	r3, #1
.L1540:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__pic_is4, .-stbi__pic_is4
	.section	.rodata
	.align	2
.LC9:
	.ascii	"S\200\3664\000"
	.align	2
.LC10:
	.ascii	"PICT\000"
	.text
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__pic_test_core, %function
stbi__pic_test_core:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-16]
	movw	r1, #:lower16:.LC9
	movt	r1, #:upper16:.LC9
	ldr	r0, [fp, #-16]
	bl	stbi__pic_is4
	mov	r3, r0
	cmp	r3, #0
	bne	.L1543
	mov	r3, #0
	b	.L1544
.L1543:
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L1545
.L1546:
	ldr	r0, [fp, #-16]
	bl	stbi__get8
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L1545:
	ldr	r3, [fp, #-8]
	cmp	r3, #83
	ble	.L1546
	movw	r1, #:lower16:.LC10
	movt	r1, #:upper16:.LC10
	ldr	r0, [fp, #-16]
	bl	stbi__pic_is4
	mov	r3, r0
	cmp	r3, #0
	bne	.L1547
	mov	r3, #0
	b	.L1544
.L1547:
	mov	r3, #1
.L1544:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__pic_test_core, .-stbi__pic_test_core
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__readval, %function
stbi__readval:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, fp, lr}
	add	fp, sp, #8
	sub	sp, sp, #28
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	str	r2, [fp, #-32]
	mov	r3, #128
	str	r3, [fp, #-16]
	mov	r3, #0
	str	r3, [fp, #-20]
	b	.L1549
.L1553:
	ldr	r2, [fp, #-28]
	ldr	r3, [fp, #-16]
	and	r3, r3, r2
	cmp	r3, #0
	beq	.L1550
	ldr	r0, [fp, #-24]
	bl	stbi__at_eof
	mov	r3, r0
	cmp	r3, #0
	beq	.L1551
	mov	r3, #0
	b	.L1552
.L1551:
	ldr	r3, [fp, #-20]
	ldr	r2, [fp, #-32]
	add	r4, r2, r3
	ldr	r0, [fp, #-24]
	bl	stbi__get8
	mov	r3, r0
	strb	r3, [r4]
.L1550:
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-16]
	asr	r3, r3, #1
	str	r3, [fp, #-16]
.L1549:
	ldr	r3, [fp, #-20]
	cmp	r3, #3
	ble	.L1553
	ldr	r3, [fp, #-32]
.L1552:
	mov	r0, r3
	sub	sp, fp, #8
	@ sp needed
	pop	{r4, fp, pc}
	.size	stbi__readval, .-stbi__readval
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__copyval, %function
stbi__copyval:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #28
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	mov	r3, #128
	str	r3, [fp, #-8]
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L1555
.L1557:
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-8]
	and	r3, r3, r2
	cmp	r3, #0
	beq	.L1556
	ldr	r3, [fp, #-12]
	ldr	r2, [fp, #-24]
	add	r2, r2, r3
	ldr	r3, [fp, #-12]
	ldr	r1, [fp, #-20]
	add	r3, r1, r3
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
.L1556:
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-8]
	asr	r3, r3, #1
	str	r3, [fp, #-8]
.L1555:
	ldr	r3, [fp, #-12]
	cmp	r3, #3
	ble	.L1557
	nop
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	stbi__copyval, .-stbi__copyval
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__pic_load_core, %function
stbi__pic_load_core:
	@ args = 4, pretend = 0, frame = 120
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #120
	str	r0, [fp, #-112]
	str	r1, [fp, #-116]
	str	r2, [fp, #-120]
	str	r3, [fp, #-124]
	mov	r3, #0
	str	r3, [fp, #-8]
	mov	r3, #0
	str	r3, [fp, #-12]
.L1563:
	ldr	r3, [fp, #-12]
	cmp	r3, #10
	bne	.L1559
	mov	r3, #0
	b	.L1601
.L1559:
	ldr	r2, [fp, #-12]
	add	r3, r2, #1
	str	r3, [fp, #-12]
	sub	r1, fp, #96
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	add	r3, r1, r3
	str	r3, [fp, #-56]
	ldr	r0, [fp, #-112]
	bl	stbi__get8
	mov	r3, r0
	str	r3, [fp, #-60]
	ldr	r0, [fp, #-112]
	bl	stbi__get8
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [fp, #-56]
	strb	r2, [r3]
	ldr	r0, [fp, #-112]
	bl	stbi__get8
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [fp, #-56]
	strb	r2, [r3, #1]
	ldr	r0, [fp, #-112]
	bl	stbi__get8
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [fp, #-56]
	strb	r2, [r3, #2]
	ldr	r3, [fp, #-56]
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [fp, #-8]
	orr	r3, r3, r2
	str	r3, [fp, #-8]
	ldr	r0, [fp, #-112]
	bl	stbi__at_eof
	mov	r3, r0
	cmp	r3, #0
	beq	.L1561
	mov	r3, #0
	b	.L1601
.L1561:
	ldr	r3, [fp, #-56]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #8
	beq	.L1562
	mov	r3, #0
	b	.L1601
.L1562:
	ldr	r3, [fp, #-60]
	cmp	r3, #0
	bne	.L1563
	ldr	r3, [fp, #-8]
	and	r3, r3, #16
	cmp	r3, #0
	beq	.L1564
	mov	r2, #4
	b	.L1565
.L1564:
	mov	r2, #3
.L1565:
	ldr	r3, [fp, #-124]
	str	r2, [r3]
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L1566
.L1600:
	mov	r3, #0
	str	r3, [fp, #-20]
	b	.L1567
.L1599:
	sub	r1, fp, #96
	ldr	r2, [fp, #-20]
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	add	r3, r1, r3
	str	r3, [fp, #-64]
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-116]
	mul	r3, r2, r3
	lsl	r3, r3, #2
	mov	r2, r3
	ldr	r3, [fp, #4]
	add	r3, r3, r2
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-64]
	ldrb	r3, [r3, #1]	@ zero_extendqisi2
	cmp	r3, #1
	beq	.L1568
	cmp	r3, #2
	beq	.L1569
	cmp	r3, #0
	beq	.L1570
	mov	r3, #0
	b	.L1601
.L1570:
	mov	r3, #0
	str	r3, [fp, #-28]
	b	.L1571
.L1573:
	ldr	r3, [fp, #-64]
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	ldr	r2, [fp, #-24]
	mov	r1, r3
	ldr	r0, [fp, #-112]
	bl	stbi__readval
	mov	r3, r0
	cmp	r3, #0
	bne	.L1572
	mov	r3, #0
	b	.L1601
.L1572:
	ldr	r3, [fp, #-28]
	add	r3, r3, #1
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-24]
	add	r3, r3, #4
	str	r3, [fp, #-24]
.L1571:
	ldr	r2, [fp, #-28]
	ldr	r3, [fp, #-116]
	cmp	r2, r3
	blt	.L1573
	b	.L1574
.L1568:
	ldr	r3, [fp, #-116]
	str	r3, [fp, #-32]
	b	.L1575
.L1582:
	ldr	r0, [fp, #-112]
	bl	stbi__get8
	mov	r3, r0
	strb	r3, [fp, #-37]
	ldr	r0, [fp, #-112]
	bl	stbi__at_eof
	mov	r3, r0
	cmp	r3, #0
	beq	.L1576
	mov	r3, #0
	b	.L1601
.L1576:
	ldrb	r3, [fp, #-37]	@ zero_extendqisi2
	ldr	r2, [fp, #-32]
	cmp	r2, r3
	bge	.L1578
	ldr	r3, [fp, #-32]
	strb	r3, [fp, #-37]
.L1578:
	ldr	r3, [fp, #-64]
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	mov	r1, r3
	sub	r3, fp, #100
	mov	r2, r3
	ldr	r0, [fp, #-112]
	bl	stbi__readval
	mov	r3, r0
	cmp	r3, #0
	bne	.L1579
	mov	r3, #0
	b	.L1601
.L1579:
	mov	r3, #0
	str	r3, [fp, #-36]
	b	.L1580
.L1581:
	ldr	r3, [fp, #-64]
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	mov	r0, r3
	sub	r3, fp, #100
	mov	r2, r3
	ldr	r1, [fp, #-24]
	bl	stbi__copyval
	ldr	r3, [fp, #-36]
	add	r3, r3, #1
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-24]
	add	r3, r3, #4
	str	r3, [fp, #-24]
.L1580:
	ldrb	r3, [fp, #-37]	@ zero_extendqisi2
	ldr	r2, [fp, #-36]
	cmp	r2, r3
	blt	.L1581
	ldrb	r3, [fp, #-37]	@ zero_extendqisi2
	ldr	r2, [fp, #-32]
	sub	r3, r2, r3
	str	r3, [fp, #-32]
.L1575:
	ldr	r3, [fp, #-32]
	cmp	r3, #0
	bgt	.L1582
	b	.L1574
.L1569:
	ldr	r3, [fp, #-116]
	str	r3, [fp, #-44]
	b	.L1583
.L1598:
	ldr	r0, [fp, #-112]
	bl	stbi__get8
	mov	r3, r0
	str	r3, [fp, #-48]
	ldr	r0, [fp, #-112]
	bl	stbi__at_eof
	mov	r3, r0
	cmp	r3, #0
	beq	.L1584
	mov	r3, #0
	b	.L1601
.L1584:
	ldr	r3, [fp, #-48]
	cmp	r3, #127
	ble	.L1585
	ldr	r3, [fp, #-48]
	cmp	r3, #128
	bne	.L1586
	ldr	r0, [fp, #-112]
	bl	stbi__get16be
	str	r0, [fp, #-48]
	b	.L1587
.L1586:
	ldr	r3, [fp, #-48]
	sub	r3, r3, #127
	str	r3, [fp, #-48]
.L1587:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	cmp	r2, r3
	ble	.L1588
	mov	r3, #0
	b	.L1601
.L1588:
	ldr	r3, [fp, #-64]
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	mov	r1, r3
	sub	r3, fp, #104
	mov	r2, r3
	ldr	r0, [fp, #-112]
	bl	stbi__readval
	mov	r3, r0
	cmp	r3, #0
	bne	.L1590
	mov	r3, #0
	b	.L1601
.L1590:
	mov	r3, #0
	str	r3, [fp, #-52]
	b	.L1591
.L1592:
	ldr	r3, [fp, #-64]
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	mov	r0, r3
	sub	r3, fp, #104
	mov	r2, r3
	ldr	r1, [fp, #-24]
	bl	stbi__copyval
	ldr	r3, [fp, #-52]
	add	r3, r3, #1
	str	r3, [fp, #-52]
	ldr	r3, [fp, #-24]
	add	r3, r3, #4
	str	r3, [fp, #-24]
.L1591:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-48]
	cmp	r2, r3
	blt	.L1592
	b	.L1593
.L1585:
	ldr	r3, [fp, #-48]
	add	r3, r3, #1
	str	r3, [fp, #-48]
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	cmp	r2, r3
	ble	.L1594
	mov	r3, #0
	b	.L1601
.L1594:
	mov	r3, #0
	str	r3, [fp, #-52]
	b	.L1595
.L1597:
	ldr	r3, [fp, #-64]
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	ldr	r2, [fp, #-24]
	mov	r1, r3
	ldr	r0, [fp, #-112]
	bl	stbi__readval
	mov	r3, r0
	cmp	r3, #0
	bne	.L1596
	mov	r3, #0
	b	.L1601
.L1596:
	ldr	r3, [fp, #-52]
	add	r3, r3, #1
	str	r3, [fp, #-52]
	ldr	r3, [fp, #-24]
	add	r3, r3, #4
	str	r3, [fp, #-24]
.L1595:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-48]
	cmp	r2, r3
	blt	.L1597
.L1593:
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	sub	r3, r2, r3
	str	r3, [fp, #-44]
.L1583:
	ldr	r3, [fp, #-44]
	cmp	r3, #0
	bgt	.L1598
	nop
.L1574:
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
.L1567:
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-12]
	cmp	r2, r3
	blt	.L1599
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L1566:
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-120]
	cmp	r2, r3
	blt	.L1600
	ldr	r3, [fp, #4]
.L1601:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__pic_load_core, .-stbi__pic_load_core
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__pic_load, %function
stbi__pic_load:
	@ args = 8, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #48
	str	r0, [fp, #-32]
	str	r1, [fp, #-36]
	str	r2, [fp, #-40]
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-44]
	cmp	r3, #0
	bne	.L1603
	sub	r3, fp, #24
	str	r3, [fp, #-44]
.L1603:
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L1604
.L1605:
	ldr	r0, [fp, #-32]
	bl	stbi__get8
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L1604:
	ldr	r3, [fp, #-12]
	cmp	r3, #91
	ble	.L1605
	ldr	r0, [fp, #-32]
	bl	stbi__get16be
	str	r0, [fp, #-16]
	ldr	r0, [fp, #-32]
	bl	stbi__get16be
	str	r0, [fp, #-20]
	ldr	r0, [fp, #-32]
	bl	stbi__at_eof
	mov	r3, r0
	cmp	r3, #0
	beq	.L1606
	mov	r3, #0
	b	.L1611
.L1606:
	mov	r3, #0
	mov	r2, #4
	ldr	r1, [fp, #-20]
	ldr	r0, [fp, #-16]
	bl	stbi__mad3sizes_valid
	mov	r3, r0
	cmp	r3, #0
	bne	.L1608
	mov	r3, #0
	b	.L1611
.L1608:
	ldr	r0, [fp, #-32]
	bl	stbi__get32be
	ldr	r0, [fp, #-32]
	bl	stbi__get16be
	ldr	r0, [fp, #-32]
	bl	stbi__get16be
	mov	r3, #0
	mov	r2, #4
	ldr	r1, [fp, #-20]
	ldr	r0, [fp, #-16]
	bl	stbi__malloc_mad3
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-20]
	mul	r3, r2, r3
	lsl	r3, r3, #2
	mov	r2, r3
	mov	r1, #255
	ldr	r0, [fp, #-8]
	bl	memset
	ldr	r3, [fp, #-8]
	str	r3, [sp]
	ldr	r3, [fp, #-44]
	ldr	r2, [fp, #-20]
	ldr	r1, [fp, #-16]
	ldr	r0, [fp, #-32]
	bl	stbi__pic_load_core
	mov	r3, r0
	cmp	r3, #0
	bne	.L1609
	ldr	r0, [fp, #-8]
	bl	free
	mov	r3, #0
	str	r3, [fp, #-8]
.L1609:
	ldr	r3, [fp, #-36]
	ldr	r2, [fp, #-16]
	str	r2, [r3]
	ldr	r3, [fp, #-40]
	ldr	r2, [fp, #-20]
	str	r2, [r3]
	ldr	r3, [fp, #4]
	cmp	r3, #0
	bne	.L1610
	ldr	r3, [fp, #-44]
	ldr	r3, [r3]
	str	r3, [fp, #4]
.L1610:
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-20]
	str	r3, [sp]
	mov	r3, r2
	ldr	r2, [fp, #4]
	mov	r1, #4
	ldr	r0, [fp, #-8]
	bl	stbi__convert_format
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
.L1611:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__pic_load, .-stbi__pic_load
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__pic_test, %function
stbi__pic_test:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-16]
	ldr	r0, [fp, #-16]
	bl	stbi__pic_test_core
	str	r0, [fp, #-8]
	ldr	r0, [fp, #-16]
	bl	stbi__rewind
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__pic_test, .-stbi__pic_test
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__gif_test_raw, %function
stbi__gif_test_raw:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-16]
	ldr	r0, [fp, #-16]
	bl	stbi__get8
	mov	r3, r0
	cmp	r3, #71
	bne	.L1615
	ldr	r0, [fp, #-16]
	bl	stbi__get8
	mov	r3, r0
	cmp	r3, #73
	bne	.L1615
	ldr	r0, [fp, #-16]
	bl	stbi__get8
	mov	r3, r0
	cmp	r3, #70
	bne	.L1615
	ldr	r0, [fp, #-16]
	bl	stbi__get8
	mov	r3, r0
	cmp	r3, #56
	beq	.L1616
.L1615:
	mov	r3, #0
	b	.L1617
.L1616:
	ldr	r0, [fp, #-16]
	bl	stbi__get8
	mov	r3, r0
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	cmp	r3, #57
	beq	.L1618
	ldr	r3, [fp, #-8]
	cmp	r3, #55
	beq	.L1618
	mov	r3, #0
	b	.L1617
.L1618:
	ldr	r0, [fp, #-16]
	bl	stbi__get8
	mov	r3, r0
	cmp	r3, #97
	beq	.L1619
	mov	r3, #0
	b	.L1617
.L1619:
	mov	r3, #1
.L1617:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__gif_test_raw, .-stbi__gif_test_raw
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__gif_test, %function
stbi__gif_test:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-16]
	ldr	r0, [fp, #-16]
	bl	stbi__gif_test_raw
	str	r0, [fp, #-8]
	ldr	r0, [fp, #-16]
	bl	stbi__rewind
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__gif_test, .-stbi__gif_test
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__gif_parse_colortable, %function
stbi__gif_parse_colortable:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, fp, lr}
	add	fp, sp, #8
	sub	sp, sp, #28
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	str	r2, [fp, #-32]
	str	r3, [fp, #-36]
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L1623
.L1626:
	ldr	r3, [fp, #-16]
	lsl	r3, r3, #2
	ldr	r2, [fp, #-28]
	add	r4, r2, r3
	ldr	r0, [fp, #-24]
	bl	stbi__get8
	mov	r3, r0
	strb	r3, [r4, #2]
	ldr	r3, [fp, #-16]
	lsl	r3, r3, #2
	ldr	r2, [fp, #-28]
	add	r4, r2, r3
	ldr	r0, [fp, #-24]
	bl	stbi__get8
	mov	r3, r0
	strb	r3, [r4, #1]
	ldr	r3, [fp, #-16]
	lsl	r3, r3, #2
	ldr	r2, [fp, #-28]
	add	r4, r2, r3
	ldr	r0, [fp, #-24]
	bl	stbi__get8
	mov	r3, r0
	strb	r3, [r4]
	ldr	r2, [fp, #-36]
	ldr	r3, [fp, #-16]
	cmp	r2, r3
	bne	.L1624
	mov	r1, #0
	b	.L1625
.L1624:
	mov	r1, #255
.L1625:
	ldr	r3, [fp, #-16]
	lsl	r3, r3, #2
	ldr	r2, [fp, #-28]
	add	r3, r2, r3
	mov	r2, r1
	strb	r2, [r3, #3]
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L1623:
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-32]
	cmp	r2, r3
	blt	.L1626
	nop
	sub	sp, fp, #8
	@ sp needed
	pop	{r4, fp, pc}
	.size	stbi__gif_parse_colortable, .-stbi__gif_parse_colortable
	.section	.rodata
	.align	2
.LC11:
	.ascii	"\000"
	.text
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__gif_header, %function
stbi__gif_header:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #24
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	str	r3, [fp, #-28]
	ldr	r0, [fp, #-16]
	bl	stbi__get8
	mov	r3, r0
	cmp	r3, #71
	bne	.L1628
	ldr	r0, [fp, #-16]
	bl	stbi__get8
	mov	r3, r0
	cmp	r3, #73
	bne	.L1628
	ldr	r0, [fp, #-16]
	bl	stbi__get8
	mov	r3, r0
	cmp	r3, #70
	bne	.L1628
	ldr	r0, [fp, #-16]
	bl	stbi__get8
	mov	r3, r0
	cmp	r3, #56
	beq	.L1629
.L1628:
	mov	r3, #0
	b	.L1630
.L1629:
	ldr	r0, [fp, #-16]
	bl	stbi__get8
	mov	r3, r0
	strb	r3, [fp, #-5]
	ldrb	r3, [fp, #-5]	@ zero_extendqisi2
	cmp	r3, #55
	beq	.L1631
	ldrb	r3, [fp, #-5]	@ zero_extendqisi2
	cmp	r3, #57
	beq	.L1631
	mov	r3, #0
	b	.L1630
.L1631:
	ldr	r0, [fp, #-16]
	bl	stbi__get8
	mov	r3, r0
	cmp	r3, #97
	beq	.L1632
	mov	r3, #0
	b	.L1630
.L1632:
	mrc	p15, 0, r2, c13, c0, 3	@ load_tp_hard
	ldr	r1, .L1636
	movw	r3, #:lower16:.LC11
	movt	r3, #:upper16:.LC11
	str	r3, [r2, r1]
	ldr	r0, [fp, #-16]
	bl	stbi__get16le
	mov	r2, r0
	ldr	r3, [fp, #-20]
	str	r2, [r3]
	ldr	r0, [fp, #-16]
	bl	stbi__get16le
	mov	r2, r0
	ldr	r3, [fp, #-20]
	str	r2, [r3, #4]
	ldr	r0, [fp, #-16]
	bl	stbi__get8
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [fp, #-20]
	str	r2, [r3, #20]
	ldr	r0, [fp, #-16]
	bl	stbi__get8
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [fp, #-20]
	str	r2, [r3, #24]
	ldr	r0, [fp, #-16]
	bl	stbi__get8
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [fp, #-20]
	str	r2, [r3, #28]
	ldr	r3, [fp, #-20]
	mvn	r2, #0
	str	r2, [r3, #32]
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	beq	.L1633
	ldr	r3, [fp, #-24]
	mov	r2, #4
	str	r2, [r3]
.L1633:
	ldr	r3, [fp, #-28]
	cmp	r3, #0
	beq	.L1634
	mov	r3, #1
	b	.L1630
.L1634:
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #20]
	and	r3, r3, #128
	cmp	r3, #0
	beq	.L1635
	ldr	r3, [fp, #-20]
	add	r1, r3, #40
	ldr	r3, [fp, #-20]
	ldr	r3, [r3, #20]
	and	r3, r3, #7
	mov	r2, #2
	lsl	r2, r2, r3
	mvn	r3, #0
	ldr	r0, [fp, #-16]
	bl	stbi__gif_parse_colortable
.L1635:
	mov	r3, #1
.L1630:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L1637:
	.align	2
.L1636:
	.word	stbi__g_failure_reason(tpoff)
	.size	stbi__gif_header, .-stbi__gif_header
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__gif_info_raw, %function
stbi__gif_info_raw:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #24
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	str	r3, [fp, #-28]
	movw	r0, #34904
	bl	stbi__malloc
	str	r0, [fp, #-8]
	mov	r3, #1
	ldr	r2, [fp, #-28]
	ldr	r1, [fp, #-8]
	ldr	r0, [fp, #-16]
	bl	stbi__gif_header
	mov	r3, r0
	cmp	r3, #0
	bne	.L1639
	ldr	r0, [fp, #-8]
	bl	free
	ldr	r0, [fp, #-16]
	bl	stbi__rewind
	mov	r3, #0
	b	.L1640
.L1639:
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	beq	.L1641
	ldr	r3, [fp, #-8]
	ldr	r2, [r3]
	ldr	r3, [fp, #-20]
	str	r2, [r3]
.L1641:
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	beq	.L1642
	ldr	r3, [fp, #-8]
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-24]
	str	r2, [r3]
.L1642:
	ldr	r0, [fp, #-8]
	bl	free
	mov	r3, #1
.L1640:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__gif_info_raw, .-stbi__gif_info_raw
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__out_gif_code, %function
stbi__out_gif_code:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #24
	str	r0, [fp, #-24]
	mov	r3, r1
	strh	r3, [fp, #-26]	@ movhi
	ldrh	r3, [fp, #-26]
	ldr	r2, [fp, #-24]
	add	r3, r3, #520
	add	r3, r3, #2
	lsl	r3, r3, #2
	add	r3, r2, r3
	ldrsh	r3, [r3]
	cmp	r3, #0
	blt	.L1644
	ldrh	r3, [fp, #-26]
	ldr	r2, [fp, #-24]
	add	r3, r3, #520
	add	r3, r3, #2
	lsl	r3, r3, #2
	add	r3, r2, r3
	ldrsh	r3, [r3]
	uxth	r3, r3
	mov	r1, r3
	ldr	r0, [fp, #-24]
	bl	stbi__out_gif_code
.L1644:
	ldr	r3, [fp, #-24]
	add	r3, r3, #32768
	ldr	r2, [r3, #2124]
	ldr	r3, [fp, #-24]
	add	r3, r3, #32768
	ldr	r3, [r3, #2116]
	cmp	r2, r3
	bge	.L1650
	ldr	r3, [fp, #-24]
	add	r3, r3, #32768
	ldr	r2, [r3, #2120]
	ldr	r3, [fp, #-24]
	add	r3, r3, #32768
	ldr	r3, [r3, #2124]
	add	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-24]
	ldr	r2, [r3, #8]
	ldr	r3, [fp, #-8]
	add	r3, r2, r3
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-24]
	ldr	r2, [r3, #16]
	ldr	r3, [fp, #-8]
	add	r1, r3, #3
	cmp	r3, #0
	movlt	r3, r1
	movge	r3, r3
	asr	r3, r3, #2
	add	r3, r2, r3
	mov	r2, #1
	strb	r2, [r3]
	ldr	r3, [fp, #-24]
	add	r3, r3, #32768
	ldr	r2, [r3, #2088]
	ldrh	r3, [fp, #-26]
	ldr	r1, [fp, #-24]
	add	r3, r3, #520
	add	r3, r3, #2
	lsl	r3, r3, #2
	add	r3, r1, r3
	ldrb	r3, [r3, #3]	@ zero_extendqisi2
	lsl	r3, r3, #2
	add	r3, r2, r3
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-16]
	add	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #128
	bls	.L1647
	ldr	r3, [fp, #-16]
	ldrb	r2, [r3, #2]	@ zero_extendqisi2
	ldr	r3, [fp, #-12]
	strb	r2, [r3]
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	ldr	r2, [fp, #-16]
	ldrb	r2, [r2, #1]	@ zero_extendqisi2
	strb	r2, [r3]
	ldr	r3, [fp, #-12]
	add	r3, r3, #2
	ldr	r2, [fp, #-16]
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
	ldr	r3, [fp, #-12]
	add	r3, r3, #3
	ldr	r2, [fp, #-16]
	ldrb	r2, [r2, #3]	@ zero_extendqisi2
	strb	r2, [r3]
.L1647:
	ldr	r3, [fp, #-24]
	add	r3, r3, #32768
	ldr	r3, [r3, #2120]
	add	r3, r3, #4
	ldr	r2, [fp, #-24]
	add	r2, r2, #32768
	str	r3, [r2, #2120]
	ldr	r3, [fp, #-24]
	add	r3, r3, #32768
	ldr	r2, [r3, #2120]
	ldr	r3, [fp, #-24]
	add	r3, r3, #32768
	ldr	r3, [r3, #2112]
	cmp	r2, r3
	blt	.L1643
	ldr	r3, [fp, #-24]
	add	r3, r3, #32768
	ldr	r3, [r3, #2104]
	ldr	r2, [fp, #-24]
	add	r2, r2, #32768
	str	r3, [r2, #2120]
	ldr	r3, [fp, #-24]
	add	r3, r3, #32768
	ldr	r2, [r3, #2124]
	ldr	r3, [fp, #-24]
	add	r3, r3, #32768
	ldr	r3, [r3, #2096]
	add	r3, r2, r3
	ldr	r2, [fp, #-24]
	add	r2, r2, #32768
	str	r3, [r2, #2124]
	b	.L1648
.L1649:
	ldr	r3, [fp, #-24]
	add	r3, r3, #32768
	ldr	r2, [r3, #2128]
	ldr	r3, [fp, #-24]
	add	r3, r3, #32768
	ldr	r3, [r3, #2092]
	lsl	r3, r2, r3
	ldr	r2, [fp, #-24]
	add	r2, r2, #32768
	str	r3, [r2, #2096]
	ldr	r3, [fp, #-24]
	add	r3, r3, #32768
	ldr	r2, [r3, #2108]
	ldr	r3, [fp, #-24]
	add	r3, r3, #32768
	ldr	r3, [r3, #2096]
	asr	r3, r3, #1
	add	r3, r2, r3
	ldr	r2, [fp, #-24]
	add	r2, r2, #32768
	str	r3, [r2, #2124]
	ldr	r3, [fp, #-24]
	add	r3, r3, #32768
	ldr	r3, [r3, #2092]
	sub	r3, r3, #1
	ldr	r2, [fp, #-24]
	add	r2, r2, #32768
	str	r3, [r2, #2092]
.L1648:
	ldr	r3, [fp, #-24]
	add	r3, r3, #32768
	ldr	r2, [r3, #2124]
	ldr	r3, [fp, #-24]
	add	r3, r3, #32768
	ldr	r3, [r3, #2116]
	cmp	r2, r3
	blt	.L1643
	ldr	r3, [fp, #-24]
	add	r3, r3, #32768
	ldr	r3, [r3, #2092]
	cmp	r3, #0
	bgt	.L1649
	b	.L1643
.L1650:
	nop
.L1643:
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__out_gif_code, .-stbi__out_gif_code
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__process_gif_raster, %function
stbi__process_gif_raster:
	@ args = 0, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #64
	str	r0, [fp, #-64]
	str	r1, [fp, #-68]
	ldr	r0, [fp, #-64]
	bl	stbi__get8
	mov	r3, r0
	strb	r3, [fp, #-41]
	ldrb	r3, [fp, #-41]	@ zero_extendqisi2
	cmp	r3, #12
	bls	.L1652
	mov	r3, #0
	b	.L1653
.L1652:
	ldrb	r3, [fp, #-41]	@ zero_extendqisi2
	mov	r2, #1
	lsl	r3, r2, r3
	str	r3, [fp, #-48]
	mov	r3, #1
	str	r3, [fp, #-16]
	ldrb	r3, [fp, #-41]	@ zero_extendqisi2
	add	r3, r3, #1
	str	r3, [fp, #-20]
	mov	r2, #1
	ldr	r3, [fp, #-20]
	lsl	r3, r2, r3
	sub	r3, r3, #1
	str	r3, [fp, #-24]
	mov	r3, #0
	str	r3, [fp, #-36]
	mov	r3, #0
	str	r3, [fp, #-40]
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L1654
.L1655:
	ldr	r2, [fp, #-68]
	ldr	r3, [fp, #-12]
	add	r3, r3, #520
	add	r3, r3, #2
	lsl	r3, r3, #2
	add	r3, r2, r3
	mvn	r2, #0
	strh	r2, [r3]	@ movhi
	ldr	r3, [fp, #-12]
	uxtb	r1, r3
	ldr	r2, [fp, #-68]
	ldr	r3, [fp, #-12]
	add	r3, r3, #520
	add	r3, r3, #2
	lsl	r3, r3, #2
	add	r3, r2, r3
	mov	r2, r1
	strb	r2, [r3, #2]
	ldr	r3, [fp, #-12]
	uxtb	r1, r3
	ldr	r2, [fp, #-68]
	ldr	r3, [fp, #-12]
	add	r3, r3, #520
	add	r3, r3, #2
	lsl	r3, r3, #2
	add	r3, r2, r3
	mov	r2, r1
	strb	r2, [r3, #3]
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L1654:
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-48]
	cmp	r2, r3
	blt	.L1655
	ldr	r3, [fp, #-48]
	add	r3, r3, #2
	str	r3, [fp, #-28]
	mvn	r3, #0
	str	r3, [fp, #-32]
	mov	r3, #0
	str	r3, [fp, #-8]
.L1671:
	ldr	r2, [fp, #-40]
	ldr	r3, [fp, #-20]
	cmp	r2, r3
	bge	.L1656
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	bne	.L1657
	ldr	r0, [fp, #-64]
	bl	stbi__get8
	mov	r3, r0
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	bne	.L1657
	ldr	r3, [fp, #-68]
	ldr	r3, [r3, #8]
	b	.L1653
.L1657:
	ldr	r3, [fp, #-8]
	sub	r3, r3, #1
	str	r3, [fp, #-8]
	ldr	r0, [fp, #-64]
	bl	stbi__get8
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [fp, #-40]
	lsl	r3, r2, r3
	ldr	r2, [fp, #-36]
	orr	r3, r2, r3
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-40]
	add	r3, r3, #8
	str	r3, [fp, #-40]
	b	.L1671
.L1656:
	ldr	r2, [fp, #-36]
	ldr	r3, [fp, #-24]
	and	r3, r3, r2
	str	r3, [fp, #-52]
	ldr	r2, [fp, #-36]
	ldr	r3, [fp, #-20]
	asr	r3, r2, r3
	str	r3, [fp, #-36]
	ldr	r2, [fp, #-40]
	ldr	r3, [fp, #-20]
	sub	r3, r2, r3
	str	r3, [fp, #-40]
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-48]
	cmp	r2, r3
	bne	.L1659
	ldrb	r3, [fp, #-41]	@ zero_extendqisi2
	add	r3, r3, #1
	str	r3, [fp, #-20]
	mov	r2, #1
	ldr	r3, [fp, #-20]
	lsl	r3, r2, r3
	sub	r3, r3, #1
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-48]
	add	r3, r3, #2
	str	r3, [fp, #-28]
	mvn	r3, #0
	str	r3, [fp, #-32]
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L1671
.L1659:
	ldr	r3, [fp, #-48]
	add	r3, r3, #1
	ldr	r2, [fp, #-52]
	cmp	r2, r3
	bne	.L1660
	ldr	r1, [fp, #-8]
	ldr	r0, [fp, #-64]
	bl	stbi__skip
	b	.L1661
.L1662:
	ldr	r1, [fp, #-8]
	ldr	r0, [fp, #-64]
	bl	stbi__skip
.L1661:
	ldr	r0, [fp, #-64]
	bl	stbi__get8
	mov	r3, r0
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	bgt	.L1662
	ldr	r3, [fp, #-68]
	ldr	r3, [r3, #8]
	b	.L1653
.L1660:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-28]
	cmp	r2, r3
	bgt	.L1663
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	beq	.L1664
	mov	r3, #0
	b	.L1653
.L1664:
	ldr	r3, [fp, #-32]
	cmp	r3, #0
	blt	.L1665
	ldr	r3, [fp, #-28]
	add	r2, r3, #1
	str	r2, [fp, #-28]
	add	r3, r3, #520
	add	r3, r3, #2
	lsl	r3, r3, #2
	ldr	r2, [fp, #-68]
	add	r3, r2, r3
	str	r3, [fp, #-56]
	ldr	r3, [fp, #-28]
	cmp	r3, #8192
	ble	.L1666
	mov	r3, #0
	b	.L1653
.L1666:
	ldr	r3, [fp, #-32]
	sxth	r2, r3
	ldr	r3, [fp, #-56]
	strh	r2, [r3]	@ movhi
	ldr	r2, [fp, #-68]
	ldr	r3, [fp, #-32]
	add	r3, r3, #520
	add	r3, r3, #2
	lsl	r3, r3, #2
	add	r3, r2, r3
	ldrb	r2, [r3, #2]	@ zero_extendqisi2
	ldr	r3, [fp, #-56]
	strb	r2, [r3, #2]
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-28]
	cmp	r2, r3
	bne	.L1667
	ldr	r3, [fp, #-56]
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	b	.L1668
.L1667:
	ldr	r2, [fp, #-68]
	ldr	r3, [fp, #-52]
	add	r3, r3, #520
	add	r3, r3, #2
	lsl	r3, r3, #2
	add	r3, r2, r3
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
.L1668:
	ldr	r2, [fp, #-56]
	strb	r3, [r2, #3]
	b	.L1669
.L1665:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-28]
	cmp	r2, r3
	bne	.L1669
	mov	r3, #0
	b	.L1653
.L1669:
	ldr	r3, [fp, #-52]
	uxth	r3, r3
	mov	r1, r3
	ldr	r0, [fp, #-68]
	bl	stbi__out_gif_code
	ldr	r2, [fp, #-28]
	ldr	r3, [fp, #-24]
	and	r3, r3, r2
	cmp	r3, #0
	bne	.L1670
	ldr	r3, [fp, #-28]
	cmp	r3, #4096
	bge	.L1670
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
	mov	r2, #1
	ldr	r3, [fp, #-20]
	lsl	r3, r2, r3
	sub	r3, r3, #1
	str	r3, [fp, #-24]
.L1670:
	ldr	r3, [fp, #-52]
	str	r3, [fp, #-32]
	b	.L1671
.L1663:
	mov	r3, #0
.L1653:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__process_gif_raster, .-stbi__process_gif_raster
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__gif_load_next, %function
stbi__gif_load_next:
	@ args = 4, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #64
	str	r0, [fp, #-56]
	str	r1, [fp, #-60]
	str	r2, [fp, #-64]
	str	r3, [fp, #-68]
	mov	r3, #0
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-60]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	bne	.L1673
	mov	r3, #0
	ldr	r2, [fp, #-64]
	ldr	r1, [fp, #-60]
	ldr	r0, [fp, #-56]
	bl	stbi__gif_header
	mov	r3, r0
	cmp	r3, #0
	bne	.L1674
	mov	r3, #0
	b	.L1675
.L1674:
	ldr	r3, [fp, #-60]
	ldr	r1, [r3]
	ldr	r3, [fp, #-60]
	ldr	r2, [r3, #4]
	mov	r3, #0
	mov	r0, #4
	bl	stbi__mad3sizes_valid
	mov	r3, r0
	cmp	r3, #0
	bne	.L1676
	mov	r3, #0
	b	.L1675
.L1676:
	ldr	r3, [fp, #-60]
	ldr	r3, [r3]
	ldr	r2, [fp, #-60]
	ldr	r2, [r2, #4]
	mul	r3, r2, r3
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #2
	mov	r0, r3
	bl	stbi__malloc
	mov	r2, r0
	ldr	r3, [fp, #-60]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #2
	mov	r0, r3
	bl	stbi__malloc
	mov	r2, r0
	ldr	r3, [fp, #-60]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-20]
	mov	r0, r3
	bl	stbi__malloc
	mov	r2, r0
	ldr	r3, [fp, #-60]
	str	r2, [r3, #16]
	ldr	r3, [fp, #-60]
	ldr	r3, [r3, #8]
	cmp	r3, #0
	beq	.L1677
	ldr	r3, [fp, #-60]
	ldr	r3, [r3, #12]
	cmp	r3, #0
	beq	.L1677
	ldr	r3, [fp, #-60]
	ldr	r3, [r3, #16]
	cmp	r3, #0
	bne	.L1678
.L1677:
	mov	r3, #0
	b	.L1675
.L1678:
	ldr	r3, [fp, #-60]
	ldr	r0, [r3, #8]
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #2
	mov	r2, r3
	mov	r1, #0
	bl	memset
	ldr	r3, [fp, #-60]
	ldr	r0, [r3, #12]
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #2
	mov	r2, r3
	mov	r1, #0
	bl	memset
	ldr	r3, [fp, #-60]
	ldr	r3, [r3, #16]
	ldr	r2, [fp, #-20]
	mov	r1, #0
	mov	r0, r3
	bl	memset
	mov	r3, #1
	str	r3, [fp, #-12]
	b	.L1679
.L1673:
	ldr	r3, [fp, #-60]
	ldr	r3, [r3, #36]
	asr	r3, r3, #2
	and	r3, r3, #7
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-60]
	ldr	r3, [r3]
	ldr	r2, [fp, #-60]
	ldr	r2, [r2, #4]
	mul	r3, r2, r3
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-8]
	cmp	r3, #3
	bne	.L1680
	ldr	r3, [fp, #4]
	cmp	r3, #0
	bne	.L1680
	mov	r3, #2
	str	r3, [fp, #-8]
.L1680:
	ldr	r3, [fp, #-8]
	cmp	r3, #3
	bne	.L1681
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L1682
.L1684:
	ldr	r3, [fp, #-60]
	ldr	r2, [r3, #16]
	ldr	r3, [fp, #-16]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1683
	ldr	r3, [fp, #-60]
	ldr	r3, [r3, #8]
	ldr	r2, [fp, #-16]
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [fp, #-16]
	lsl	r2, r2, #2
	mov	r1, r2
	ldr	r2, [fp, #4]
	add	r2, r2, r1
	ldr	r2, [r2]	@ unaligned
	str	r2, [r3]	@ unaligned
.L1683:
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L1682:
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-20]
	cmp	r2, r3
	blt	.L1684
	b	.L1685
.L1681:
	ldr	r3, [fp, #-8]
	cmp	r3, #2
	bne	.L1685
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L1686
.L1688:
	ldr	r3, [fp, #-60]
	ldr	r2, [r3, #16]
	ldr	r3, [fp, #-16]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1687
	ldr	r3, [fp, #-60]
	ldr	r3, [r3, #8]
	ldr	r2, [fp, #-16]
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [fp, #-60]
	ldr	r2, [r2, #12]
	ldr	r1, [fp, #-16]
	lsl	r1, r1, #2
	add	r2, r2, r1
	ldr	r2, [r2]	@ unaligned
	str	r2, [r3]	@ unaligned
.L1687:
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L1686:
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-20]
	cmp	r2, r3
	blt	.L1688
.L1685:
	ldr	r3, [fp, #-60]
	ldr	r0, [r3, #12]
	ldr	r3, [fp, #-60]
	ldr	r1, [r3, #8]
	ldr	r3, [fp, #-60]
	ldr	r3, [r3]
	ldr	r2, [fp, #-60]
	ldr	r2, [r2, #4]
	mul	r3, r2, r3
	lsl	r3, r3, #2
	mov	r2, r3
	bl	memcpy
.L1679:
	ldr	r3, [fp, #-60]
	ldr	r0, [r3, #16]
	ldr	r3, [fp, #-60]
	ldr	r3, [r3]
	ldr	r2, [fp, #-60]
	ldr	r2, [r2, #4]
	mul	r3, r2, r3
	mov	r2, r3
	mov	r1, #0
	bl	memset
.L1717:
	ldr	r0, [fp, #-56]
	bl	stbi__get8
	mov	r3, r0
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-24]
	cmp	r3, #44
	beq	.L1689
	ldr	r3, [fp, #-24]
	cmp	r3, #59
	beq	.L1690
	ldr	r3, [fp, #-24]
	cmp	r3, #33
	beq	.L1691
	b	.L1718
.L1689:
	ldr	r0, [fp, #-56]
	bl	stbi__get16le
	str	r0, [fp, #-28]
	ldr	r0, [fp, #-56]
	bl	stbi__get16le
	str	r0, [fp, #-32]
	ldr	r0, [fp, #-56]
	bl	stbi__get16le
	str	r0, [fp, #-36]
	ldr	r0, [fp, #-56]
	bl	stbi__get16le
	str	r0, [fp, #-40]
	ldr	r2, [fp, #-28]
	ldr	r3, [fp, #-36]
	add	r2, r2, r3
	ldr	r3, [fp, #-60]
	ldr	r3, [r3]
	cmp	r2, r3
	bgt	.L1693
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-40]
	add	r2, r2, r3
	ldr	r3, [fp, #-60]
	ldr	r3, [r3, #4]
	cmp	r2, r3
	ble	.L1694
.L1693:
	mov	r3, #0
	b	.L1675
.L1694:
	ldr	r3, [fp, #-60]
	ldr	r3, [r3]
	lsl	r3, r3, #2
	ldr	r2, [fp, #-60]
	add	r2, r2, #32768
	str	r3, [r2, #2128]
	ldr	r3, [fp, #-28]
	lsl	r3, r3, #2
	ldr	r2, [fp, #-60]
	add	r2, r2, #32768
	str	r3, [r2, #2104]
	ldr	r3, [fp, #-60]
	add	r3, r3, #32768
	ldr	r3, [r3, #2128]
	ldr	r2, [fp, #-32]
	mul	r3, r2, r3
	ldr	r2, [fp, #-60]
	add	r2, r2, #32768
	str	r3, [r2, #2108]
	ldr	r3, [fp, #-60]
	add	r3, r3, #32768
	ldr	r2, [r3, #2104]
	ldr	r3, [fp, #-36]
	lsl	r3, r3, #2
	add	r3, r2, r3
	ldr	r2, [fp, #-60]
	add	r2, r2, #32768
	str	r3, [r2, #2112]
	ldr	r3, [fp, #-60]
	add	r3, r3, #32768
	ldr	r2, [r3, #2108]
	ldr	r3, [fp, #-60]
	add	r3, r3, #32768
	ldr	r3, [r3, #2128]
	ldr	r1, [fp, #-40]
	mul	r3, r1, r3
	add	r3, r2, r3
	ldr	r2, [fp, #-60]
	add	r2, r2, #32768
	str	r3, [r2, #2116]
	ldr	r3, [fp, #-60]
	add	r3, r3, #32768
	ldr	r3, [r3, #2104]
	ldr	r2, [fp, #-60]
	add	r2, r2, #32768
	str	r3, [r2, #2120]
	ldr	r3, [fp, #-60]
	add	r3, r3, #32768
	ldr	r3, [r3, #2108]
	ldr	r2, [fp, #-60]
	add	r2, r2, #32768
	str	r3, [r2, #2124]
	ldr	r3, [fp, #-36]
	cmp	r3, #0
	bne	.L1695
	ldr	r3, [fp, #-60]
	add	r3, r3, #32768
	ldr	r3, [r3, #2116]
	ldr	r2, [fp, #-60]
	add	r2, r2, #32768
	str	r3, [r2, #2124]
.L1695:
	ldr	r0, [fp, #-56]
	bl	stbi__get8
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [fp, #-60]
	add	r3, r3, #32768
	str	r2, [r3, #2100]
	ldr	r3, [fp, #-60]
	add	r3, r3, #32768
	ldr	r3, [r3, #2100]
	and	r3, r3, #64
	cmp	r3, #0
	beq	.L1696
	ldr	r3, [fp, #-60]
	add	r3, r3, #32768
	ldr	r3, [r3, #2128]
	lsl	r3, r3, #3
	ldr	r2, [fp, #-60]
	add	r2, r2, #32768
	str	r3, [r2, #2096]
	ldr	r3, [fp, #-60]
	add	r3, r3, #32768
	mov	r2, r3
	mov	r3, #3
	str	r3, [r2, #2092]
	b	.L1697
.L1696:
	ldr	r3, [fp, #-60]
	add	r3, r3, #32768
	ldr	r3, [r3, #2128]
	ldr	r2, [fp, #-60]
	add	r2, r2, #32768
	str	r3, [r2, #2096]
	ldr	r3, [fp, #-60]
	add	r3, r3, #32768
	mov	r2, r3
	mov	r3, #0
	str	r3, [r2, #2092]
.L1697:
	ldr	r3, [fp, #-60]
	add	r3, r3, #32768
	ldr	r3, [r3, #2100]
	and	r3, r3, #128
	cmp	r3, #0
	beq	.L1698
	ldr	r3, [fp, #-60]
	add	r1, r3, #1056
	add	r1, r1, #8
	ldr	r3, [fp, #-60]
	add	r3, r3, #32768
	ldr	r3, [r3, #2100]
	and	r3, r3, #7
	mov	r2, #2
	lsl	r2, r2, r3
	ldr	r3, [fp, #-60]
	ldr	r3, [r3, #36]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L1699
	ldr	r3, [fp, #-60]
	ldr	r3, [r3, #32]
	b	.L1700
.L1699:
	mvn	r3, #0
.L1700:
	ldr	r0, [fp, #-56]
	bl	stbi__gif_parse_colortable
	ldr	r3, [fp, #-60]
	add	r3, r3, #1056
	add	r3, r3, #8
	ldr	r2, [fp, #-60]
	add	r2, r2, #32768
	str	r3, [r2, #2088]
	b	.L1701
.L1698:
	ldr	r3, [fp, #-60]
	ldr	r3, [r3, #20]
	and	r3, r3, #128
	cmp	r3, #0
	beq	.L1702
	ldr	r3, [fp, #-60]
	add	r3, r3, #40
	ldr	r2, [fp, #-60]
	add	r2, r2, #32768
	str	r3, [r2, #2088]
	b	.L1701
.L1702:
	mov	r3, #0
	b	.L1675
.L1701:
	ldr	r1, [fp, #-60]
	ldr	r0, [fp, #-56]
	bl	stbi__process_gif_raster
	str	r0, [fp, #-44]
	ldr	r3, [fp, #-44]
	cmp	r3, #0
	bne	.L1703
	mov	r3, #0
	b	.L1675
.L1703:
	ldr	r3, [fp, #-60]
	ldr	r3, [r3]
	ldr	r2, [fp, #-60]
	ldr	r2, [r2, #4]
	mul	r3, r2, r3
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	beq	.L1704
	ldr	r3, [fp, #-60]
	ldr	r3, [r3, #24]
	cmp	r3, #0
	ble	.L1704
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L1705
.L1707:
	ldr	r3, [fp, #-60]
	ldr	r2, [r3, #16]
	ldr	r3, [fp, #-16]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L1706
	ldr	r3, [fp, #-60]
	ldr	r3, [r3, #24]
	ldr	r2, [fp, #-60]
	lsl	r3, r3, #2
	add	r3, r2, r3
	mvn	r2, #0
	strb	r2, [r3, #43]
	ldr	r3, [fp, #-60]
	ldr	r3, [r3, #8]
	ldr	r2, [fp, #-16]
	lsl	r2, r2, #2
	add	r3, r3, r2
	ldr	r2, [fp, #-60]
	ldr	r2, [r2, #24]
	add	r2, r2, #10
	lsl	r2, r2, #2
	ldr	r1, [fp, #-60]
	add	r2, r1, r2
	ldr	r2, [r2]	@ unaligned
	str	r2, [r3]	@ unaligned
.L1706:
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L1705:
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-20]
	cmp	r2, r3
	blt	.L1707
.L1704:
	ldr	r3, [fp, #-44]
	b	.L1675
.L1691:
	ldr	r0, [fp, #-56]
	bl	stbi__get8
	mov	r3, r0
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-48]
	cmp	r3, #249
	bne	.L1715
	ldr	r0, [fp, #-56]
	bl	stbi__get8
	mov	r3, r0
	str	r3, [fp, #-52]
	ldr	r3, [fp, #-52]
	cmp	r3, #4
	bne	.L1709
	ldr	r0, [fp, #-56]
	bl	stbi__get8
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [fp, #-60]
	str	r2, [r3, #36]
	ldr	r0, [fp, #-56]
	bl	stbi__get16le
	mov	r2, r0
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	mov	r2, r3
	ldr	r3, [fp, #-60]
	add	r3, r3, #32768
	str	r2, [r3, #2132]
	ldr	r3, [fp, #-60]
	ldr	r3, [r3, #32]
	cmp	r3, #0
	blt	.L1710
	ldr	r3, [fp, #-60]
	ldr	r3, [r3, #32]
	ldr	r2, [fp, #-60]
	lsl	r3, r3, #2
	add	r3, r2, r3
	mvn	r2, #0
	strb	r2, [r3, #43]
.L1710:
	ldr	r3, [fp, #-60]
	ldr	r3, [r3, #36]
	and	r3, r3, #1
	cmp	r3, #0
	beq	.L1711
	ldr	r0, [fp, #-56]
	bl	stbi__get8
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [fp, #-60]
	str	r2, [r3, #32]
	ldr	r3, [fp, #-60]
	ldr	r3, [r3, #32]
	cmp	r3, #0
	blt	.L1715
	ldr	r3, [fp, #-60]
	ldr	r3, [r3, #32]
	ldr	r2, [fp, #-60]
	lsl	r3, r3, #2
	add	r3, r2, r3
	mov	r2, #0
	strb	r2, [r3, #43]
	b	.L1715
.L1711:
	mov	r1, #1
	ldr	r0, [fp, #-56]
	bl	stbi__skip
	ldr	r3, [fp, #-60]
	mvn	r2, #0
	str	r2, [r3, #32]
	b	.L1715
.L1709:
	ldr	r1, [fp, #-52]
	ldr	r0, [fp, #-56]
	bl	stbi__skip
	b	.L1714
.L1716:
	ldr	r1, [fp, #-52]
	ldr	r0, [fp, #-56]
	bl	stbi__skip
.L1715:
	ldr	r0, [fp, #-56]
	bl	stbi__get8
	mov	r3, r0
	str	r3, [fp, #-52]
	ldr	r3, [fp, #-52]
	cmp	r3, #0
	bne	.L1716
	b	.L1714
.L1690:
	ldr	r3, [fp, #-56]
	b	.L1675
.L1718:
	mov	r3, #0
	b	.L1675
.L1714:
	b	.L1717
.L1675:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__gif_load_next, .-stbi__gif_load_next
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__load_gif_main, %function
stbi__load_gif_main:
	@ args = 12, pretend = 0, frame = 34944
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #34816
	sub	sp, sp, #136
	sub	ip, fp, #32768
	sub	ip, ip, #4
	str	r0, [ip, #-2164]
	sub	r0, fp, #32768
	sub	r0, r0, #4
	str	r1, [r0, #-2168]
	sub	r1, fp, #32768
	sub	r1, r1, #4
	str	r2, [r1, #-2172]
	sub	r2, fp, #32768
	sub	r2, r2, #4
	str	r3, [r2, #-2176]
	sub	r3, fp, #32768
	sub	r3, r3, #4
	ldr	r0, [r3, #-2164]
	bl	stbi__gif_test
	mov	r3, r0
	cmp	r3, #0
	beq	.L1720
	mov	r3, #0
	str	r3, [fp, #-8]
	mov	r3, #0
	str	r3, [fp, #-12]
	mov	r3, #0
	str	r3, [fp, #-16]
	mov	r3, #0
	str	r3, [fp, #-20]
	sub	r3, fp, #34816
	sub	r3, r3, #4
	sub	r3, r3, #112
	movw	r2, #34904
	mov	r1, #0
	mov	r0, r3
	bl	memset
	sub	r3, fp, #32768
	sub	r3, r3, #4
	ldr	r3, [r3, #-2168]
	cmp	r3, #0
	beq	.L1730
	sub	r3, fp, #32768
	sub	r3, r3, #4
	ldr	r3, [r3, #-2168]
	mov	r2, #0
	str	r2, [r3]
.L1730:
	sub	r1, fp, #34816
	sub	r1, r1, #4
	sub	r1, r1, #112
	sub	r3, fp, #32768
	sub	r3, r3, #4
	mov	r0, r3
	ldr	r3, [fp, #-20]
	str	r3, [sp]
	ldr	r3, [fp, #12]
	ldr	r2, [fp, #8]
	ldr	r0, [r0, #-2164]
	bl	stbi__gif_load_next
	str	r0, [fp, #-12]
	sub	r3, fp, #32768
	sub	r3, r3, #4
	ldr	r2, [fp, #-12]
	ldr	r3, [r3, #-2164]
	cmp	r2, r3
	bne	.L1722
	mov	r3, #0
	str	r3, [fp, #-12]
.L1722:
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	beq	.L1723
	sub	r3, fp, #32768
	sub	r3, r3, #4
	ldr	r2, [r3, #-2160]
	sub	r3, fp, #32768
	sub	r3, r3, #4
	ldr	r3, [r3, #-2172]
	str	r2, [r3]
	sub	r3, fp, #32768
	sub	r3, r3, #4
	ldr	r2, [r3, #-2156]
	sub	r3, fp, #32768
	sub	r3, r3, #4
	ldr	r3, [r3, #-2176]
	str	r2, [r3]
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
	sub	r3, fp, #32768
	sub	r3, r3, #4
	ldr	r3, [r3, #-2160]
	sub	r2, fp, #32768
	sub	r2, r2, #4
	ldr	r2, [r2, #-2156]
	mul	r3, r2, r3
	lsl	r3, r3, #2
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	beq	.L1724
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-24]
	mul	r3, r2, r3
	mov	r1, r3
	ldr	r0, [fp, #-16]
	bl	realloc
	str	r0, [fp, #-28]
	ldr	r3, [fp, #-28]
	cmp	r3, #0
	bne	.L1725
	sub	r3, fp, #32768
	sub	r3, r3, #4
	ldr	r3, [r3, #-2152]
	mov	r0, r3
	bl	free
	sub	r3, fp, #32768
	sub	r3, r3, #4
	ldr	r3, [r3, #-2144]
	mov	r0, r3
	bl	free
	sub	r3, fp, #32768
	sub	r3, r3, #4
	ldr	r3, [r3, #-2148]
	mov	r0, r3
	bl	free
	mov	r3, #0
	b	.L1732
.L1725:
	ldr	r3, [fp, #-28]
	str	r3, [fp, #-16]
	sub	r3, fp, #32768
	sub	r3, r3, #4
	ldr	r3, [r3, #-2168]
	cmp	r3, #0
	beq	.L1728
	sub	r3, fp, #32768
	sub	r3, r3, #4
	ldr	r3, [r3, #-2168]
	ldr	r2, [r3]
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #2
	mov	r1, r3
	mov	r0, r2
	bl	realloc
	mov	r2, r0
	sub	r3, fp, #32768
	sub	r3, r3, #4
	ldr	r3, [r3, #-2168]
	str	r2, [r3]
	b	.L1728
.L1724:
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-24]
	mul	r3, r2, r3
	mov	r0, r3
	bl	stbi__malloc
	str	r0, [fp, #-16]
	sub	r3, fp, #32768
	sub	r3, r3, #4
	ldr	r3, [r3, #-2168]
	cmp	r3, #0
	beq	.L1728
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #2
	mov	r0, r3
	bl	stbi__malloc
	mov	r2, r0
	sub	r3, fp, #32768
	sub	r3, r3, #4
	ldr	r3, [r3, #-2168]
	str	r2, [r3]
.L1728:
	ldr	r3, [fp, #-8]
	sub	r3, r3, #1
	ldr	r2, [fp, #-24]
	mul	r3, r2, r3
	mov	r2, r3
	ldr	r3, [fp, #-16]
	add	r3, r3, r2
	ldr	r2, [fp, #-24]
	ldr	r1, [fp, #-12]
	mov	r0, r3
	bl	memcpy
	ldr	r3, [fp, #-8]
	cmp	r3, #1
	ble	.L1729
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #1
	rsb	r3, r3, #0
	ldr	r2, [fp, #-16]
	add	r3, r2, r3
	str	r3, [fp, #-20]
.L1729:
	sub	r3, fp, #32768
	sub	r3, r3, #4
	ldr	r3, [r3, #-2168]
	cmp	r3, #0
	beq	.L1723
	sub	r3, fp, #32768
	sub	r3, r3, #4
	ldr	r3, [r3, #-2168]
	ldr	r2, [r3]
	ldr	r3, [fp, #-8]
	sub	r3, r3, #-1073741823
	lsl	r3, r3, #2
	add	r3, r2, r3
	sub	r2, fp, #32768
	sub	r2, r2, #4
	add	r2, r2, #28672
	ldr	r2, [r2, #4068]
	str	r2, [r3]
.L1723:
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	bne	.L1730
	sub	r3, fp, #32768
	sub	r3, r3, #4
	ldr	r3, [r3, #-2152]
	mov	r0, r3
	bl	free
	sub	r3, fp, #32768
	sub	r3, r3, #4
	ldr	r3, [r3, #-2144]
	mov	r0, r3
	bl	free
	sub	r3, fp, #32768
	sub	r3, r3, #4
	ldr	r3, [r3, #-2148]
	mov	r0, r3
	bl	free
	ldr	r3, [fp, #12]
	cmp	r3, #0
	beq	.L1731
	ldr	r3, [fp, #12]
	cmp	r3, #4
	beq	.L1731
	sub	r3, fp, #32768
	sub	r3, r3, #4
	ldr	r3, [r3, #-2160]
	ldr	r2, [fp, #-8]
	mul	r3, r2, r3
	mov	r2, r3
	sub	r3, fp, #32768
	sub	r3, r3, #4
	ldr	r3, [r3, #-2156]
	str	r3, [sp]
	mov	r3, r2
	ldr	r2, [fp, #12]
	mov	r1, #4
	ldr	r0, [fp, #-16]
	bl	stbi__convert_format
	str	r0, [fp, #-16]
.L1731:
	ldr	r3, [fp, #4]
	ldr	r2, [fp, #-8]
	str	r2, [r3]
	ldr	r3, [fp, #-16]
	b	.L1732
.L1720:
	mov	r3, #0
.L1732:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__load_gif_main, .-stbi__load_gif_main
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__gif_load, %function
stbi__gif_load:
	@ args = 8, pretend = 0, frame = 34928
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #34816
	sub	sp, sp, #120
	sub	ip, fp, #32768
	sub	ip, ip, #4
	str	r0, [ip, #-2148]
	sub	r0, fp, #32768
	sub	r0, r0, #4
	str	r1, [r0, #-2152]
	sub	r1, fp, #32768
	sub	r1, r1, #4
	str	r2, [r1, #-2156]
	sub	r2, fp, #32768
	sub	r2, r2, #4
	str	r3, [r2, #-2160]
	mov	r3, #0
	str	r3, [fp, #-8]
	sub	r3, fp, #34816
	sub	r3, r3, #4
	sub	r3, r3, #92
	movw	r2, #34904
	mov	r1, #0
	mov	r0, r3
	bl	memset
	sub	r3, fp, #32768
	sub	r3, r3, #4
	mov	r2, r3
	sub	r1, fp, #34816
	sub	r1, r1, #4
	sub	r1, r1, #92
	sub	r3, fp, #32768
	sub	r3, r3, #4
	mov	r0, r3
	mov	r3, #0
	str	r3, [sp]
	ldr	r3, [fp, #4]
	ldr	r2, [r2, #-2160]
	ldr	r0, [r0, #-2148]
	bl	stbi__gif_load_next
	str	r0, [fp, #-8]
	sub	r3, fp, #32768
	sub	r3, r3, #4
	ldr	r2, [fp, #-8]
	ldr	r3, [r3, #-2148]
	cmp	r2, r3
	bne	.L1734
	mov	r3, #0
	str	r3, [fp, #-8]
.L1734:
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	beq	.L1735
	sub	r3, fp, #32768
	sub	r3, r3, #4
	ldr	r2, [r3, #-2140]
	sub	r3, fp, #32768
	sub	r3, r3, #4
	ldr	r3, [r3, #-2152]
	str	r2, [r3]
	sub	r3, fp, #32768
	sub	r3, r3, #4
	ldr	r2, [r3, #-2136]
	sub	r3, fp, #32768
	sub	r3, r3, #4
	ldr	r3, [r3, #-2156]
	str	r2, [r3]
	ldr	r3, [fp, #4]
	cmp	r3, #0
	beq	.L1737
	ldr	r3, [fp, #4]
	cmp	r3, #4
	beq	.L1737
	sub	r3, fp, #32768
	sub	r3, r3, #4
	ldr	r3, [r3, #-2140]
	mov	r2, r3
	sub	r3, fp, #32768
	sub	r3, r3, #4
	ldr	r3, [r3, #-2136]
	str	r3, [sp]
	mov	r3, r2
	ldr	r2, [fp, #4]
	mov	r1, #4
	ldr	r0, [fp, #-8]
	bl	stbi__convert_format
	str	r0, [fp, #-8]
	b	.L1737
.L1735:
	sub	r3, fp, #32768
	sub	r3, r3, #4
	ldr	r3, [r3, #-2132]
	cmp	r3, #0
	beq	.L1737
	sub	r3, fp, #32768
	sub	r3, r3, #4
	ldr	r3, [r3, #-2132]
	mov	r0, r3
	bl	free
.L1737:
	sub	r3, fp, #32768
	sub	r3, r3, #4
	ldr	r3, [r3, #-2124]
	mov	r0, r3
	bl	free
	sub	r3, fp, #32768
	sub	r3, r3, #4
	ldr	r3, [r3, #-2128]
	mov	r0, r3
	bl	free
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__gif_load, .-stbi__gif_load
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__gif_info, %function
stbi__gif_info:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-20]
	ldr	r2, [fp, #-16]
	ldr	r1, [fp, #-12]
	ldr	r0, [fp, #-8]
	bl	stbi__gif_info_raw
	mov	r3, r0
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__gif_info, .-stbi__gif_info
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__hdr_test_core, %function
stbi__hdr_test_core:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L1742
.L1745:
	ldr	r0, [fp, #-16]
	bl	stbi__get8
	mov	r3, r0
	mov	r1, r3
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-20]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r1, r3
	beq	.L1743
	mov	r3, #0
	b	.L1744
.L1743:
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L1742:
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-20]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L1745
	ldr	r0, [fp, #-16]
	bl	stbi__rewind
	mov	r3, #1
.L1744:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__hdr_test_core, .-stbi__hdr_test_core
	.section	.rodata
	.align	2
.LC12:
	.ascii	"#?RADIANCE\012\000"
	.align	2
.LC13:
	.ascii	"#?RGBE\012\000"
	.text
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__hdr_test, %function
stbi__hdr_test:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-16]
	movw	r1, #:lower16:.LC12
	movt	r1, #:upper16:.LC12
	ldr	r0, [fp, #-16]
	bl	stbi__hdr_test_core
	str	r0, [fp, #-8]
	ldr	r0, [fp, #-16]
	bl	stbi__rewind
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	bne	.L1747
	movw	r1, #:lower16:.LC13
	movt	r1, #:upper16:.LC13
	ldr	r0, [fp, #-16]
	bl	stbi__hdr_test_core
	str	r0, [fp, #-8]
	ldr	r0, [fp, #-16]
	bl	stbi__rewind
.L1747:
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__hdr_test, .-stbi__hdr_test
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__hdr_gettoken, %function
stbi__hdr_gettoken:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	mov	r3, #0
	str	r3, [fp, #-8]
	mov	r3, #0
	strb	r3, [fp, #-9]
	ldr	r0, [fp, #-16]
	bl	stbi__get8
	mov	r3, r0
	strb	r3, [fp, #-9]
	b	.L1750
.L1755:
	ldr	r3, [fp, #-8]
	add	r2, r3, #1
	str	r2, [fp, #-8]
	mov	r2, r3
	ldr	r3, [fp, #-20]
	add	r3, r3, r2
	ldrb	r2, [fp, #-9]
	strb	r2, [r3]
	ldr	r3, [fp, #-8]
	movw	r2, #1023
	cmp	r3, r2
	bne	.L1751
	nop
.L1753:
	ldr	r0, [fp, #-16]
	bl	stbi__at_eof
	mov	r3, r0
	cmp	r3, #0
	bne	.L1757
	ldr	r0, [fp, #-16]
	bl	stbi__get8
	mov	r3, r0
	cmp	r3, #10
	bne	.L1753
	b	.L1757
.L1751:
	ldr	r0, [fp, #-16]
	bl	stbi__get8
	mov	r3, r0
	strb	r3, [fp, #-9]
.L1750:
	ldr	r0, [fp, #-16]
	bl	stbi__at_eof
	mov	r3, r0
	cmp	r3, #0
	bne	.L1754
	ldrb	r3, [fp, #-9]	@ zero_extendqisi2
	cmp	r3, #10
	bne	.L1755
	b	.L1754
.L1757:
	nop
.L1754:
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-20]
	add	r3, r2, r3
	mov	r2, #0
	strb	r2, [r3]
	ldr	r3, [fp, #-20]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__hdr_gettoken, .-stbi__hdr_gettoken
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__hdr_convert, %function
stbi__hdr_convert:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #24
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	ldr	r3, [fp, #-20]
	add	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1759
	ldr	r3, [fp, #-20]
	add	r3, r3, #3
	ldrb	r3, [r3]	@ zero_extendqisi2
	sub	r3, r3, #136
	mov	r0, r3
	vmov.f64	d0, #1.0e+0
	bl	ldexp
	vmov.f64	d7, d0
	vcvt.f32.f64	s15, d7
	vstr.32	s15, [fp, #-8]
	ldr	r3, [fp, #-24]
	cmp	r3, #2
	bgt	.L1760
	ldr	r3, [fp, #-20]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	add	r3, r2, r3
	ldr	r2, [fp, #-20]
	add	r2, r2, #2
	ldrb	r2, [r2]	@ zero_extendqisi2
	add	r3, r3, r2
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	vldr.32	s15, [fp, #-8]
	vmul.f32	s14, s14, s15
	vmov.f32	s13, #3.0e+0
	vdiv.f32	s15, s14, s13
	ldr	r3, [fp, #-16]
	vstr.32	s15, [r3]
	b	.L1761
.L1760:
	ldr	r3, [fp, #-20]
	ldrb	r3, [r3]	@ zero_extendqisi2
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	vldr.32	s15, [fp, #-8]
	vmul.f32	s15, s14, s15
	ldr	r3, [fp, #-16]
	vstr.32	s15, [r3]
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	ldr	r3, [fp, #-16]
	add	r3, r3, #4
	vldr.32	s15, [fp, #-8]
	vmul.f32	s15, s14, s15
	vstr.32	s15, [r3]
	ldr	r3, [fp, #-20]
	add	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	ldr	r3, [fp, #-16]
	add	r3, r3, #8
	vldr.32	s15, [fp, #-8]
	vmul.f32	s15, s14, s15
	vstr.32	s15, [r3]
.L1761:
	ldr	r3, [fp, #-24]
	cmp	r3, #2
	bne	.L1762
	ldr	r3, [fp, #-16]
	add	r3, r3, #4
	mov	r2, #1065353216
	str	r2, [r3]	@ float
.L1762:
	ldr	r3, [fp, #-24]
	cmp	r3, #4
	bne	.L1770
	ldr	r3, [fp, #-16]
	add	r3, r3, #12
	mov	r2, #1065353216
	str	r2, [r3]	@ float
	b	.L1770
.L1759:
	ldr	r3, [fp, #-24]
	sub	r3, r3, #1
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L1770
.L1766:
	.word	.L1769
	.word	.L1768
	.word	.L1767
	.word	.L1765
.L1765:
	ldr	r3, [fp, #-16]
	add	r3, r3, #12
	mov	r2, #1065353216
	str	r2, [r3]	@ float
.L1767:
	ldr	r3, [fp, #-16]
	add	r2, r3, #8
	mov	r3, #0
	str	r3, [r2]	@ float
	ldr	r3, [fp, #-16]
	add	r3, r3, #4
	ldr	r2, [r2]	@ float
	str	r2, [r3]	@ float
	ldr	r2, [r3]	@ float
	ldr	r3, [fp, #-16]
	str	r2, [r3]	@ float
	b	.L1764
.L1768:
	ldr	r3, [fp, #-16]
	add	r3, r3, #4
	mov	r2, #1065353216
	str	r2, [r3]	@ float
.L1769:
	ldr	r3, [fp, #-16]
	mov	r2, #0
	str	r2, [r3]	@ float
	nop
.L1764:
.L1770:
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__hdr_convert, .-stbi__hdr_convert
	.section	.rodata
	.align	2
.LC14:
	.ascii	"#?RADIANCE\000"
	.align	2
.LC15:
	.ascii	"#?RGBE\000"
	.align	2
.LC16:
	.ascii	"FORMAT=32-bit_rle_rgbe\000"
	.align	2
.LC17:
	.ascii	"-Y \000"
	.align	2
.LC18:
	.ascii	"+X \000"
	.text
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__hdr_load, %function
stbi__hdr_load:
	@ args = 8, pretend = 0, frame = 1112
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, fp, lr}
	add	fp, sp, #8
	sub	sp, sp, #1120
	sub	sp, sp, #4
	str	r0, [fp, #-1112]
	str	r1, [fp, #-1116]
	str	r2, [fp, #-1120]
	str	r3, [fp, #-1124]
	mov	r3, #0
	str	r3, [fp, #-16]
	sub	r3, fp, #1072
	sub	r3, r3, #12
	sub	r3, r3, #12
	mov	r1, r3
	ldr	r0, [fp, #-1112]
	bl	stbi__hdr_gettoken
	str	r0, [fp, #-40]
	movw	r1, #:lower16:.LC14
	movt	r1, #:upper16:.LC14
	ldr	r0, [fp, #-40]
	bl	strcmp
	mov	r3, r0
	cmp	r3, #0
	beq	.L1777
	movw	r1, #:lower16:.LC15
	movt	r1, #:upper16:.LC15
	ldr	r0, [fp, #-40]
	bl	strcmp
	mov	r3, r0
	cmp	r3, #0
	beq	.L1777
	mov	r3, #0
	b	.L1813
.L1777:
	sub	r3, fp, #1072
	sub	r3, r3, #12
	sub	r3, r3, #12
	mov	r1, r3
	ldr	r0, [fp, #-1112]
	bl	stbi__hdr_gettoken
	mov	r3, r0
	str	r3, [fp, #-1100]
	ldr	r3, [fp, #-1100]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1815
	ldr	r3, [fp, #-1100]
	movw	r1, #:lower16:.LC16
	movt	r1, #:upper16:.LC16
	mov	r0, r3
	bl	strcmp
	mov	r3, r0
	cmp	r3, #0
	bne	.L1777
	mov	r3, #1
	str	r3, [fp, #-16]
	b	.L1777
.L1815:
	nop
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	bne	.L1778
	mov	r3, #0
	b	.L1813
.L1778:
	sub	r3, fp, #1072
	sub	r3, r3, #12
	sub	r3, r3, #12
	mov	r1, r3
	ldr	r0, [fp, #-1112]
	bl	stbi__hdr_gettoken
	mov	r3, r0
	str	r3, [fp, #-1100]
	ldr	r3, [fp, #-1100]
	mov	r2, #3
	movw	r1, #:lower16:.LC17
	movt	r1, #:upper16:.LC17
	mov	r0, r3
	bl	strncmp
	mov	r3, r0
	cmp	r3, #0
	beq	.L1779
	mov	r3, #0
	b	.L1813
.L1779:
	ldr	r3, [fp, #-1100]
	add	r3, r3, #3
	str	r3, [fp, #-1100]
	ldr	r3, [fp, #-1100]
	sub	r1, fp, #1088
	sub	r1, r1, #12
	mov	r2, #10
	mov	r0, r3
	bl	strtol
	str	r0, [fp, #-44]
	b	.L1780
.L1781:
	ldr	r3, [fp, #-1100]
	add	r3, r3, #1
	str	r3, [fp, #-1100]
.L1780:
	ldr	r3, [fp, #-1100]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L1781
	ldr	r3, [fp, #-1100]
	mov	r2, #3
	movw	r1, #:lower16:.LC18
	movt	r1, #:upper16:.LC18
	mov	r0, r3
	bl	strncmp
	mov	r3, r0
	cmp	r3, #0
	beq	.L1782
	mov	r3, #0
	b	.L1813
.L1782:
	ldr	r3, [fp, #-1100]
	add	r3, r3, #3
	str	r3, [fp, #-1100]
	ldr	r3, [fp, #-1100]
	mov	r2, #10
	mov	r1, #0
	mov	r0, r3
	bl	strtol
	str	r0, [fp, #-48]
	ldr	r3, [fp, #-1116]
	ldr	r2, [fp, #-48]
	str	r2, [r3]
	ldr	r3, [fp, #-1120]
	ldr	r2, [fp, #-44]
	str	r2, [r3]
	ldr	r3, [fp, #-1124]
	cmp	r3, #0
	beq	.L1783
	ldr	r3, [fp, #-1124]
	mov	r2, #3
	str	r2, [r3]
.L1783:
	ldr	r3, [fp, #4]
	cmp	r3, #0
	bne	.L1784
	mov	r3, #3
	str	r3, [fp, #4]
.L1784:
	mov	r3, #0
	str	r3, [sp]
	mov	r3, #4
	ldr	r2, [fp, #4]
	ldr	r1, [fp, #-44]
	ldr	r0, [fp, #-48]
	bl	stbi__mad4sizes_valid
	mov	r3, r0
	cmp	r3, #0
	bne	.L1785
	mov	r3, #0
	b	.L1813
.L1785:
	mov	r3, #0
	str	r3, [sp]
	mov	r3, #4
	ldr	r2, [fp, #4]
	ldr	r1, [fp, #-44]
	ldr	r0, [fp, #-48]
	bl	stbi__malloc_mad4
	str	r0, [fp, #-52]
	ldr	r3, [fp, #-52]
	cmp	r3, #0
	bne	.L1786
	mov	r3, #0
	b	.L1813
.L1786:
	ldr	r3, [fp, #-48]
	cmp	r3, #7
	ble	.L1787
	ldr	r3, [fp, #-48]
	cmp	r3, #32768
	blt	.L1788
.L1787:
	mov	r3, #0
	str	r3, [fp, #-28]
	b	.L1789
.L1792:
	mov	r3, #0
	str	r3, [fp, #-24]
	b	.L1790
.L1816:
	nop
.L1791:
	sub	r3, fp, #1088
	sub	r3, r3, #12
	sub	r3, r3, #4
	mov	r2, #4
	mov	r1, r3
	ldr	r0, [fp, #-1112]
	bl	stbi__getn
	ldr	r3, [fp, #-28]
	ldr	r2, [fp, #-48]
	mul	r3, r2, r3
	ldr	r2, [fp, #4]
	mul	r3, r2, r3
	mov	r1, r3
	ldr	r3, [fp, #-24]
	ldr	r2, [fp, #4]
	mul	r3, r2, r3
	add	r3, r1, r3
	lsl	r3, r3, #2
	ldr	r2, [fp, #-52]
	add	r0, r2, r3
	sub	r3, fp, #1088
	sub	r3, r3, #12
	sub	r3, r3, #4
	ldr	r2, [fp, #4]
	mov	r1, r3
	bl	stbi__hdr_convert
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
.L1790:
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-48]
	cmp	r2, r3
	blt	.L1816
	ldr	r3, [fp, #-28]
	add	r3, r3, #1
	str	r3, [fp, #-28]
.L1789:
	ldr	r2, [fp, #-28]
	ldr	r3, [fp, #-44]
	cmp	r2, r3
	blt	.L1792
	b	.L1793
.L1788:
	mov	r3, #0
	str	r3, [fp, #-20]
	mov	r3, #0
	str	r3, [fp, #-28]
	b	.L1794
.L1812:
	ldr	r0, [fp, #-1112]
	bl	stbi__get8
	mov	r3, r0
	str	r3, [fp, #-56]
	ldr	r0, [fp, #-1112]
	bl	stbi__get8
	mov	r3, r0
	str	r3, [fp, #-60]
	ldr	r0, [fp, #-1112]
	bl	stbi__get8
	mov	r3, r0
	str	r3, [fp, #-64]
	ldr	r3, [fp, #-56]
	cmp	r3, #2
	bne	.L1795
	ldr	r3, [fp, #-60]
	cmp	r3, #2
	bne	.L1795
	ldr	r3, [fp, #-64]
	and	r3, r3, #128
	cmp	r3, #0
	beq	.L1796
.L1795:
	ldr	r3, [fp, #-56]
	uxtb	r3, r3
	strb	r3, [fp, #-1108]
	ldr	r3, [fp, #-60]
	uxtb	r3, r3
	strb	r3, [fp, #-1107]
	ldr	r3, [fp, #-64]
	uxtb	r3, r3
	strb	r3, [fp, #-1106]
	ldr	r0, [fp, #-1112]
	bl	stbi__get8
	mov	r3, r0
	strb	r3, [fp, #-1105]
	sub	r3, fp, #1088
	sub	r3, r3, #12
	sub	r3, r3, #8
	ldr	r2, [fp, #4]
	mov	r1, r3
	ldr	r0, [fp, #-52]
	bl	stbi__hdr_convert
	mov	r3, #1
	str	r3, [fp, #-24]
	mov	r3, #0
	str	r3, [fp, #-28]
	ldr	r0, [fp, #-20]
	bl	free
	b	.L1791
.L1796:
	ldr	r3, [fp, #-64]
	lsl	r3, r3, #8
	str	r3, [fp, #-64]
	ldr	r0, [fp, #-1112]
	bl	stbi__get8
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [fp, #-64]
	orr	r3, r3, r2
	str	r3, [fp, #-64]
	ldr	r2, [fp, #-64]
	ldr	r3, [fp, #-48]
	cmp	r2, r3
	beq	.L1797
	ldr	r0, [fp, #-52]
	bl	free
	ldr	r0, [fp, #-20]
	bl	free
	mov	r3, #0
	b	.L1813
.L1797:
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	bne	.L1798
	mov	r2, #0
	mov	r1, #4
	ldr	r0, [fp, #-48]
	bl	stbi__malloc_mad2
	str	r0, [fp, #-20]
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	bne	.L1798
	ldr	r0, [fp, #-52]
	bl	free
	mov	r3, #0
	b	.L1813
.L1798:
	mov	r3, #0
	str	r3, [fp, #-32]
	b	.L1799
.L1809:
	mov	r3, #0
	str	r3, [fp, #-24]
	b	.L1800
.L1808:
	ldr	r0, [fp, #-1112]
	bl	stbi__get8
	mov	r3, r0
	strb	r3, [fp, #-69]
	ldrb	r3, [fp, #-69]	@ zero_extendqisi2
	cmp	r3, #128
	bls	.L1801
	ldr	r0, [fp, #-1112]
	bl	stbi__get8
	mov	r3, r0
	strb	r3, [fp, #-70]
	ldrb	r3, [fp, #-69]
	sub	r3, r3, #128
	strb	r3, [fp, #-69]
	ldrb	r3, [fp, #-69]	@ zero_extendqisi2
	ldr	r2, [fp, #-68]
	cmp	r2, r3
	bge	.L1802
	ldr	r0, [fp, #-52]
	bl	free
	ldr	r0, [fp, #-20]
	bl	free
	mov	r3, #0
	b	.L1813
.L1802:
	mov	r3, #0
	str	r3, [fp, #-36]
	b	.L1803
.L1804:
	ldr	r3, [fp, #-24]
	add	r2, r3, #1
	str	r2, [fp, #-24]
	lsl	r2, r3, #2
	ldr	r3, [fp, #-32]
	add	r3, r2, r3
	mov	r2, r3
	ldr	r3, [fp, #-20]
	add	r3, r3, r2
	ldrb	r2, [fp, #-70]
	strb	r2, [r3]
	ldr	r3, [fp, #-36]
	add	r3, r3, #1
	str	r3, [fp, #-36]
.L1803:
	ldrb	r3, [fp, #-69]	@ zero_extendqisi2
	ldr	r2, [fp, #-36]
	cmp	r2, r3
	blt	.L1804
	b	.L1800
.L1801:
	ldrb	r3, [fp, #-69]	@ zero_extendqisi2
	ldr	r2, [fp, #-68]
	cmp	r2, r3
	bge	.L1805
	ldr	r0, [fp, #-52]
	bl	free
	ldr	r0, [fp, #-20]
	bl	free
	mov	r3, #0
	b	.L1813
.L1805:
	mov	r3, #0
	str	r3, [fp, #-36]
	b	.L1806
.L1807:
	ldr	r3, [fp, #-24]
	add	r2, r3, #1
	str	r2, [fp, #-24]
	lsl	r2, r3, #2
	ldr	r3, [fp, #-32]
	add	r3, r2, r3
	mov	r2, r3
	ldr	r3, [fp, #-20]
	add	r4, r3, r2
	ldr	r0, [fp, #-1112]
	bl	stbi__get8
	mov	r3, r0
	strb	r3, [r4]
	ldr	r3, [fp, #-36]
	add	r3, r3, #1
	str	r3, [fp, #-36]
.L1806:
	ldrb	r3, [fp, #-69]	@ zero_extendqisi2
	ldr	r2, [fp, #-36]
	cmp	r2, r3
	blt	.L1807
.L1800:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-24]
	sub	r3, r2, r3
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-68]
	cmp	r3, #0
	bgt	.L1808
	ldr	r3, [fp, #-32]
	add	r3, r3, #1
	str	r3, [fp, #-32]
.L1799:
	ldr	r3, [fp, #-32]
	cmp	r3, #3
	ble	.L1809
	mov	r3, #0
	str	r3, [fp, #-24]
	b	.L1810
.L1811:
	ldr	r3, [fp, #-28]
	ldr	r2, [fp, #-48]
	mul	r2, r2, r3
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	ldr	r2, [fp, #4]
	mul	r3, r2, r3
	lsl	r3, r3, #2
	ldr	r2, [fp, #-52]
	add	r0, r2, r3
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #2
	mov	r2, r3
	ldr	r3, [fp, #-20]
	add	r3, r3, r2
	ldr	r2, [fp, #4]
	mov	r1, r3
	bl	stbi__hdr_convert
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
.L1810:
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-48]
	cmp	r2, r3
	blt	.L1811
	ldr	r3, [fp, #-28]
	add	r3, r3, #1
	str	r3, [fp, #-28]
.L1794:
	ldr	r2, [fp, #-28]
	ldr	r3, [fp, #-44]
	cmp	r2, r3
	blt	.L1812
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	beq	.L1793
	ldr	r0, [fp, #-20]
	bl	free
.L1793:
	ldr	r3, [fp, #-52]
.L1813:
	mov	r0, r3
	sub	sp, fp, #8
	@ sp needed
	pop	{r4, fp, pc}
	.size	stbi__hdr_load, .-stbi__hdr_load
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__hdr_info, %function
stbi__hdr_info:
	@ args = 0, pretend = 0, frame = 1056
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #1056
	str	r0, [fp, #-1048]
	str	r1, [fp, #-1052]
	str	r2, [fp, #-1056]
	str	r3, [fp, #-1060]
	mov	r3, #0
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-1052]
	cmp	r3, #0
	bne	.L1818
	sub	r3, fp, #1024
	sub	r3, r3, #4
	sub	r3, r3, #12
	str	r3, [fp, #-1052]
.L1818:
	ldr	r3, [fp, #-1056]
	cmp	r3, #0
	bne	.L1819
	sub	r3, fp, #1024
	sub	r3, r3, #4
	sub	r3, r3, #12
	str	r3, [fp, #-1056]
.L1819:
	ldr	r3, [fp, #-1060]
	cmp	r3, #0
	bne	.L1820
	sub	r3, fp, #1024
	sub	r3, r3, #4
	sub	r3, r3, #12
	str	r3, [fp, #-1060]
.L1820:
	ldr	r0, [fp, #-1048]
	bl	stbi__hdr_test
	mov	r3, r0
	cmp	r3, #0
	bne	.L1821
	ldr	r0, [fp, #-1048]
	bl	stbi__rewind
	mov	r3, #0
	b	.L1831
.L1821:
	sub	r3, fp, #1024
	sub	r3, r3, #4
	sub	r3, r3, #4
	mov	r1, r3
	ldr	r0, [fp, #-1048]
	bl	stbi__hdr_gettoken
	mov	r3, r0
	str	r3, [fp, #-1036]
	ldr	r3, [fp, #-1036]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L1833
	ldr	r3, [fp, #-1036]
	movw	r1, #:lower16:.LC16
	movt	r1, #:upper16:.LC16
	mov	r0, r3
	bl	strcmp
	mov	r3, r0
	cmp	r3, #0
	bne	.L1821
	mov	r3, #1
	str	r3, [fp, #-8]
	b	.L1821
.L1833:
	nop
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	bne	.L1826
	ldr	r0, [fp, #-1048]
	bl	stbi__rewind
	mov	r3, #0
	b	.L1831
.L1826:
	sub	r3, fp, #1024
	sub	r3, r3, #4
	sub	r3, r3, #4
	mov	r1, r3
	ldr	r0, [fp, #-1048]
	bl	stbi__hdr_gettoken
	mov	r3, r0
	str	r3, [fp, #-1036]
	ldr	r3, [fp, #-1036]
	mov	r2, #3
	movw	r1, #:lower16:.LC17
	movt	r1, #:upper16:.LC17
	mov	r0, r3
	bl	strncmp
	mov	r3, r0
	cmp	r3, #0
	beq	.L1827
	ldr	r0, [fp, #-1048]
	bl	stbi__rewind
	mov	r3, #0
	b	.L1831
.L1827:
	ldr	r3, [fp, #-1036]
	add	r3, r3, #3
	str	r3, [fp, #-1036]
	ldr	r0, [fp, #-1036]
	sub	r3, fp, #1024
	sub	r3, r3, #4
	sub	r3, r3, #8
	mov	r2, #10
	mov	r1, r3
	bl	strtol
	mov	r2, r0
	ldr	r3, [fp, #-1056]
	str	r2, [r3]
	b	.L1828
.L1829:
	ldr	r3, [fp, #-1036]
	add	r3, r3, #1
	str	r3, [fp, #-1036]
.L1828:
	ldr	r3, [fp, #-1036]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L1829
	ldr	r3, [fp, #-1036]
	mov	r2, #3
	movw	r1, #:lower16:.LC18
	movt	r1, #:upper16:.LC18
	mov	r0, r3
	bl	strncmp
	mov	r3, r0
	cmp	r3, #0
	beq	.L1830
	ldr	r0, [fp, #-1048]
	bl	stbi__rewind
	mov	r3, #0
	b	.L1831
.L1830:
	ldr	r3, [fp, #-1036]
	add	r3, r3, #3
	str	r3, [fp, #-1036]
	ldr	r3, [fp, #-1036]
	mov	r2, #10
	mov	r1, #0
	mov	r0, r3
	bl	strtol
	mov	r2, r0
	ldr	r3, [fp, #-1052]
	str	r2, [r3]
	ldr	r3, [fp, #-1060]
	mov	r2, #3
	str	r2, [r3]
	mov	r3, #1
.L1831:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__hdr_info, .-stbi__hdr_info
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__bmp_info, %function
stbi__bmp_info:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #56
	str	r0, [fp, #-48]
	str	r1, [fp, #-52]
	str	r2, [fp, #-56]
	str	r3, [fp, #-60]
	mov	r3, #255
	str	r3, [fp, #-16]
	sub	r3, fp, #44
	mov	r1, r3
	ldr	r0, [fp, #-48]
	bl	stbi__bmp_parse_header
	str	r0, [fp, #-8]
	ldr	r0, [fp, #-48]
	bl	stbi__rewind
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	bne	.L1835
	mov	r3, #0
	b	.L1843
.L1835:
	ldr	r3, [fp, #-52]
	cmp	r3, #0
	beq	.L1837
	ldr	r3, [fp, #-48]
	ldr	r3, [r3]
	mov	r2, r3
	ldr	r3, [fp, #-52]
	str	r2, [r3]
.L1837:
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	beq	.L1838
	ldr	r3, [fp, #-48]
	ldr	r3, [r3, #4]
	mov	r2, r3
	ldr	r3, [fp, #-56]
	str	r2, [r3]
.L1838:
	ldr	r3, [fp, #-60]
	cmp	r3, #0
	beq	.L1839
	ldr	r3, [fp, #-44]
	cmp	r3, #24
	bne	.L1840
	ldr	r3, [fp, #-20]
	cmp	r3, #-16777216
	bne	.L1840
	ldr	r3, [fp, #-60]
	mov	r2, #3
	str	r2, [r3]
	b	.L1839
.L1840:
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	beq	.L1841
	mov	r2, #4
	b	.L1842
.L1841:
	mov	r2, #3
.L1842:
	ldr	r3, [fp, #-60]
	str	r2, [r3]
.L1839:
	mov	r3, #1
.L1843:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__bmp_info, .-stbi__bmp_info
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__psd_info, %function
stbi__psd_info:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #32
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	str	r2, [fp, #-32]
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-28]
	cmp	r3, #0
	bne	.L1845
	sub	r3, fp, #16
	str	r3, [fp, #-28]
.L1845:
	ldr	r3, [fp, #-32]
	cmp	r3, #0
	bne	.L1846
	sub	r3, fp, #16
	str	r3, [fp, #-32]
.L1846:
	ldr	r3, [fp, #-36]
	cmp	r3, #0
	bne	.L1847
	sub	r3, fp, #16
	str	r3, [fp, #-36]
.L1847:
	ldr	r0, [fp, #-24]
	bl	stbi__get32be
	mov	r2, r0
	movw	r3, #20563
	movt	r3, 14402
	cmp	r2, r3
	beq	.L1848
	ldr	r0, [fp, #-24]
	bl	stbi__rewind
	mov	r3, #0
	b	.L1855
.L1848:
	ldr	r0, [fp, #-24]
	bl	stbi__get16be
	mov	r3, r0
	cmp	r3, #1
	beq	.L1850
	ldr	r0, [fp, #-24]
	bl	stbi__rewind
	mov	r3, #0
	b	.L1855
.L1850:
	mov	r1, #6
	ldr	r0, [fp, #-24]
	bl	stbi__skip
	ldr	r0, [fp, #-24]
	bl	stbi__get16be
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	blt	.L1851
	ldr	r3, [fp, #-8]
	cmp	r3, #16
	ble	.L1852
.L1851:
	ldr	r0, [fp, #-24]
	bl	stbi__rewind
	mov	r3, #0
	b	.L1855
.L1852:
	ldr	r0, [fp, #-24]
	bl	stbi__get32be
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [fp, #-32]
	str	r2, [r3]
	ldr	r0, [fp, #-24]
	bl	stbi__get32be
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [fp, #-28]
	str	r2, [r3]
	ldr	r0, [fp, #-24]
	bl	stbi__get16be
	str	r0, [fp, #-12]
	ldr	r3, [fp, #-12]
	cmp	r3, #8
	beq	.L1853
	ldr	r3, [fp, #-12]
	cmp	r3, #16
	beq	.L1853
	ldr	r0, [fp, #-24]
	bl	stbi__rewind
	mov	r3, #0
	b	.L1855
.L1853:
	ldr	r0, [fp, #-24]
	bl	stbi__get16be
	mov	r3, r0
	cmp	r3, #3
	beq	.L1854
	ldr	r0, [fp, #-24]
	bl	stbi__rewind
	mov	r3, #0
	b	.L1855
.L1854:
	ldr	r3, [fp, #-36]
	mov	r2, #4
	str	r2, [r3]
	mov	r3, #1
.L1855:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__psd_info, .-stbi__psd_info
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__psd_is16, %function
stbi__psd_is16:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-16]
	ldr	r0, [fp, #-16]
	bl	stbi__get32be
	mov	r2, r0
	movw	r3, #20563
	movt	r3, 14402
	cmp	r2, r3
	beq	.L1857
	ldr	r0, [fp, #-16]
	bl	stbi__rewind
	mov	r3, #0
	b	.L1858
.L1857:
	ldr	r0, [fp, #-16]
	bl	stbi__get16be
	mov	r3, r0
	cmp	r3, #1
	beq	.L1859
	ldr	r0, [fp, #-16]
	bl	stbi__rewind
	mov	r3, #0
	b	.L1858
.L1859:
	mov	r1, #6
	ldr	r0, [fp, #-16]
	bl	stbi__skip
	ldr	r0, [fp, #-16]
	bl	stbi__get16be
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	blt	.L1860
	ldr	r3, [fp, #-8]
	cmp	r3, #16
	ble	.L1861
.L1860:
	ldr	r0, [fp, #-16]
	bl	stbi__rewind
	mov	r3, #0
	b	.L1858
.L1861:
	ldr	r0, [fp, #-16]
	bl	stbi__get32be
	ldr	r0, [fp, #-16]
	bl	stbi__get32be
	ldr	r0, [fp, #-16]
	bl	stbi__get16be
	str	r0, [fp, #-12]
	ldr	r3, [fp, #-12]
	cmp	r3, #16
	beq	.L1862
	ldr	r0, [fp, #-16]
	bl	stbi__rewind
	mov	r3, #0
	b	.L1858
.L1862:
	mov	r3, #1
.L1858:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__psd_is16, .-stbi__psd_is16
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__pic_info, %function
stbi__pic_info:
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #72
	str	r0, [fp, #-64]
	str	r1, [fp, #-68]
	str	r2, [fp, #-72]
	str	r3, [fp, #-76]
	mov	r3, #0
	str	r3, [fp, #-8]
	mov	r3, #0
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-68]
	cmp	r3, #0
	bne	.L1864
	sub	r3, fp, #24
	str	r3, [fp, #-68]
.L1864:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	bne	.L1865
	sub	r3, fp, #24
	str	r3, [fp, #-72]
.L1865:
	ldr	r3, [fp, #-76]
	cmp	r3, #0
	bne	.L1866
	sub	r3, fp, #24
	str	r3, [fp, #-76]
.L1866:
	movw	r1, #:lower16:.LC9
	movt	r1, #:upper16:.LC9
	ldr	r0, [fp, #-64]
	bl	stbi__pic_is4
	mov	r3, r0
	cmp	r3, #0
	bne	.L1867
	ldr	r0, [fp, #-64]
	bl	stbi__rewind
	mov	r3, #0
	b	.L1877
.L1867:
	mov	r1, #88
	ldr	r0, [fp, #-64]
	bl	stbi__skip
	ldr	r0, [fp, #-64]
	bl	stbi__get16be
	mov	r2, r0
	ldr	r3, [fp, #-68]
	str	r2, [r3]
	ldr	r0, [fp, #-64]
	bl	stbi__get16be
	mov	r2, r0
	ldr	r3, [fp, #-72]
	str	r2, [r3]
	ldr	r0, [fp, #-64]
	bl	stbi__at_eof
	mov	r3, r0
	cmp	r3, #0
	beq	.L1869
	ldr	r0, [fp, #-64]
	bl	stbi__rewind
	mov	r3, #0
	b	.L1877
.L1869:
	ldr	r3, [fp, #-68]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L1870
	ldr	r3, [fp, #-68]
	ldr	r3, [r3]
	mov	r1, r3
	mov	r0, #268435456
	bl	__aeabi_idiv
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [fp, #-72]
	ldr	r3, [r3]
	cmp	r2, r3
	bge	.L1870
	ldr	r0, [fp, #-64]
	bl	stbi__rewind
	mov	r3, #0
	b	.L1877
.L1870:
	mov	r1, #8
	ldr	r0, [fp, #-64]
	bl	stbi__skip
.L1874:
	ldr	r3, [fp, #-12]
	cmp	r3, #10
	bne	.L1871
	mov	r3, #0
	b	.L1877
.L1871:
	ldr	r2, [fp, #-12]
	add	r3, r2, #1
	str	r3, [fp, #-12]
	sub	r1, fp, #56
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	add	r3, r1, r3
	str	r3, [fp, #-16]
	ldr	r0, [fp, #-64]
	bl	stbi__get8
	mov	r3, r0
	str	r3, [fp, #-20]
	ldr	r0, [fp, #-64]
	bl	stbi__get8
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [fp, #-16]
	strb	r2, [r3]
	ldr	r0, [fp, #-64]
	bl	stbi__get8
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [fp, #-16]
	strb	r2, [r3, #1]
	ldr	r0, [fp, #-64]
	bl	stbi__get8
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [fp, #-16]
	strb	r2, [r3, #2]
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3, #2]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [fp, #-8]
	orr	r3, r3, r2
	str	r3, [fp, #-8]
	ldr	r0, [fp, #-64]
	bl	stbi__at_eof
	mov	r3, r0
	cmp	r3, #0
	beq	.L1872
	ldr	r0, [fp, #-64]
	bl	stbi__rewind
	mov	r3, #0
	b	.L1877
.L1872:
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #8
	beq	.L1873
	ldr	r0, [fp, #-64]
	bl	stbi__rewind
	mov	r3, #0
	b	.L1877
.L1873:
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	bne	.L1874
	ldr	r3, [fp, #-8]
	and	r3, r3, #16
	cmp	r3, #0
	beq	.L1875
	mov	r2, #4
	b	.L1876
.L1875:
	mov	r2, #3
.L1876:
	ldr	r3, [fp, #-76]
	str	r2, [r3]
	mov	r3, #1
.L1877:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__pic_info, .-stbi__pic_info
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__pnm_test, %function
stbi__pnm_test:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-16]
	ldr	r0, [fp, #-16]
	bl	stbi__get8
	mov	r3, r0
	strb	r3, [fp, #-5]
	ldr	r0, [fp, #-16]
	bl	stbi__get8
	mov	r3, r0
	strb	r3, [fp, #-6]
	ldrb	r3, [fp, #-5]	@ zero_extendqisi2
	cmp	r3, #80
	bne	.L1879
	ldrb	r3, [fp, #-6]	@ zero_extendqisi2
	cmp	r3, #53
	beq	.L1880
	ldrb	r3, [fp, #-6]	@ zero_extendqisi2
	cmp	r3, #54
	beq	.L1880
.L1879:
	ldr	r0, [fp, #-16]
	bl	stbi__rewind
	mov	r3, #0
	b	.L1881
.L1880:
	mov	r3, #1
.L1881:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__pnm_test, .-stbi__pnm_test
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__pnm_load, %function
stbi__pnm_load:
	@ args = 8, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #32
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	str	r3, [fp, #-28]
	ldr	r1, [fp, #-16]
	ldr	r3, [fp, #-16]
	add	r2, r3, #4
	ldr	r3, [fp, #-16]
	add	r3, r3, #8
	ldr	r0, [fp, #-16]
	bl	stbi__pnm_info
	mov	r3, r0
	cmp	r3, #0
	bne	.L1883
	mov	r3, #0
	b	.L1884
.L1883:
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	mov	r2, r3
	ldr	r3, [fp, #-20]
	str	r2, [r3]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #4]
	mov	r2, r3
	ldr	r3, [fp, #-24]
	str	r2, [r3]
	ldr	r3, [fp, #-28]
	cmp	r3, #0
	beq	.L1885
	ldr	r3, [fp, #-16]
	ldr	r2, [r3, #8]
	ldr	r3, [fp, #-28]
	str	r2, [r3]
.L1885:
	ldr	r3, [fp, #-16]
	ldr	r0, [r3, #8]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	mov	r1, r3
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #4]
	mov	r2, r3
	mov	r3, #0
	bl	stbi__mad3sizes_valid
	mov	r3, r0
	cmp	r3, #0
	bne	.L1886
	mov	r3, #0
	b	.L1884
.L1886:
	ldr	r3, [fp, #-16]
	ldr	r0, [r3, #8]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	mov	r1, r3
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #4]
	mov	r2, r3
	mov	r3, #0
	bl	stbi__malloc_mad3
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	bne	.L1887
	mov	r3, #0
	b	.L1884
.L1887:
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #8]
	mov	r2, r3
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	mul	r3, r3, r2
	ldr	r2, [fp, #-16]
	ldr	r2, [r2, #4]
	mul	r3, r2, r3
	mov	r2, r3
	ldr	r1, [fp, #-8]
	ldr	r0, [fp, #-16]
	bl	stbi__getn
	ldr	r3, [fp, #4]
	cmp	r3, #0
	beq	.L1888
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #8]
	ldr	r2, [fp, #4]
	cmp	r2, r3
	beq	.L1888
	ldr	r3, [fp, #-16]
	ldr	r1, [r3, #8]
	ldr	r3, [fp, #-16]
	ldr	r2, [r3]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3, #4]
	str	r3, [sp]
	mov	r3, r2
	ldr	r2, [fp, #4]
	ldr	r0, [fp, #-8]
	bl	stbi__convert_format
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	bne	.L1888
	ldr	r3, [fp, #-8]
	b	.L1884
.L1888:
	ldr	r3, [fp, #-8]
.L1884:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__pnm_load, .-stbi__pnm_load
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__pnm_isspace, %function
stbi__pnm_isspace:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	mov	r3, r0
	strb	r3, [fp, #-5]
	ldrb	r3, [fp, #-5]	@ zero_extendqisi2
	cmp	r3, #32
	beq	.L1890
	ldrb	r3, [fp, #-5]	@ zero_extendqisi2
	cmp	r3, #9
	beq	.L1890
	ldrb	r3, [fp, #-5]	@ zero_extendqisi2
	cmp	r3, #10
	beq	.L1890
	ldrb	r3, [fp, #-5]	@ zero_extendqisi2
	cmp	r3, #11
	beq	.L1890
	ldrb	r3, [fp, #-5]	@ zero_extendqisi2
	cmp	r3, #12
	beq	.L1890
	ldrb	r3, [fp, #-5]	@ zero_extendqisi2
	cmp	r3, #13
	bne	.L1891
.L1890:
	mov	r3, #1
	b	.L1893
.L1891:
	mov	r3, #0
.L1893:
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	stbi__pnm_isspace, .-stbi__pnm_isspace
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__pnm_skip_whitespace, %function
stbi__pnm_skip_whitespace:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	b	.L1895
.L1897:
	ldr	r0, [fp, #-8]
	bl	stbi__get8
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [fp, #-12]
	strb	r2, [r3]
.L1895:
	ldr	r0, [fp, #-8]
	bl	stbi__at_eof
	mov	r3, r0
	cmp	r3, #0
	bne	.L1896
	ldr	r3, [fp, #-12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	stbi__pnm_isspace
	mov	r3, r0
	cmp	r3, #0
	bne	.L1897
.L1896:
	ldr	r0, [fp, #-8]
	bl	stbi__at_eof
	mov	r3, r0
	cmp	r3, #0
	bne	.L1903
	ldr	r3, [fp, #-12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #35
	bne	.L1903
	b	.L1899
.L1901:
	ldr	r0, [fp, #-8]
	bl	stbi__get8
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [fp, #-12]
	strb	r2, [r3]
.L1899:
	ldr	r0, [fp, #-8]
	bl	stbi__at_eof
	mov	r3, r0
	cmp	r3, #0
	bne	.L1895
	ldr	r3, [fp, #-12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #10
	beq	.L1895
	ldr	r3, [fp, #-12]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #13
	bne	.L1901
	b	.L1895
.L1903:
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__pnm_skip_whitespace, .-stbi__pnm_skip_whitespace
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__pnm_isdigit, %function
stbi__pnm_isdigit:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	mov	r3, r0
	strb	r3, [fp, #-5]
	ldrb	r3, [fp, #-5]	@ zero_extendqisi2
	cmp	r3, #47
	bls	.L1905
	ldrb	r3, [fp, #-5]	@ zero_extendqisi2
	cmp	r3, #57
	bhi	.L1905
	mov	r3, #1
	b	.L1907
.L1905:
	mov	r3, #0
.L1907:
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	stbi__pnm_isdigit, .-stbi__pnm_isdigit
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__pnm_getinteger, %function
stbi__pnm_getinteger:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L1909
.L1911:
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	mov	r2, r3
	ldr	r3, [fp, #-20]
	ldrb	r3, [r3]	@ zero_extendqisi2
	sub	r3, r3, #48
	add	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r0, [fp, #-16]
	bl	stbi__get8
	mov	r3, r0
	mov	r2, r3
	ldr	r3, [fp, #-20]
	strb	r2, [r3]
.L1909:
	ldr	r0, [fp, #-16]
	bl	stbi__at_eof
	mov	r3, r0
	cmp	r3, #0
	bne	.L1910
	ldr	r3, [fp, #-20]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	bl	stbi__pnm_isdigit
	mov	r3, r0
	cmp	r3, #0
	bne	.L1911
.L1910:
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__pnm_getinteger, .-stbi__pnm_getinteger
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__pnm_info, %function
stbi__pnm_info:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #32
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	str	r2, [fp, #-32]
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-28]
	cmp	r3, #0
	bne	.L1914
	sub	r3, fp, #16
	str	r3, [fp, #-28]
.L1914:
	ldr	r3, [fp, #-32]
	cmp	r3, #0
	bne	.L1915
	sub	r3, fp, #16
	str	r3, [fp, #-32]
.L1915:
	ldr	r3, [fp, #-36]
	cmp	r3, #0
	bne	.L1916
	sub	r3, fp, #16
	str	r3, [fp, #-36]
.L1916:
	ldr	r0, [fp, #-24]
	bl	stbi__rewind
	ldr	r0, [fp, #-24]
	bl	stbi__get8
	mov	r3, r0
	strb	r3, [fp, #-5]
	ldr	r0, [fp, #-24]
	bl	stbi__get8
	mov	r3, r0
	strb	r3, [fp, #-6]
	ldrb	r3, [fp, #-5]	@ zero_extendqisi2
	cmp	r3, #80
	bne	.L1917
	ldrb	r3, [fp, #-6]	@ zero_extendqisi2
	cmp	r3, #53
	beq	.L1918
	ldrb	r3, [fp, #-6]	@ zero_extendqisi2
	cmp	r3, #54
	beq	.L1918
.L1917:
	ldr	r0, [fp, #-24]
	bl	stbi__rewind
	mov	r3, #0
	b	.L1923
.L1918:
	ldrb	r3, [fp, #-6]	@ zero_extendqisi2
	cmp	r3, #54
	bne	.L1920
	mov	r2, #3
	b	.L1921
.L1920:
	mov	r2, #1
.L1921:
	ldr	r3, [fp, #-36]
	str	r2, [r3]
	ldr	r0, [fp, #-24]
	bl	stbi__get8
	mov	r3, r0
	strb	r3, [fp, #-17]
	sub	r3, fp, #17
	mov	r1, r3
	ldr	r0, [fp, #-24]
	bl	stbi__pnm_skip_whitespace
	sub	r3, fp, #17
	mov	r1, r3
	ldr	r0, [fp, #-24]
	bl	stbi__pnm_getinteger
	mov	r2, r0
	ldr	r3, [fp, #-28]
	str	r2, [r3]
	sub	r3, fp, #17
	mov	r1, r3
	ldr	r0, [fp, #-24]
	bl	stbi__pnm_skip_whitespace
	sub	r3, fp, #17
	mov	r1, r3
	ldr	r0, [fp, #-24]
	bl	stbi__pnm_getinteger
	mov	r2, r0
	ldr	r3, [fp, #-32]
	str	r2, [r3]
	sub	r3, fp, #17
	mov	r1, r3
	ldr	r0, [fp, #-24]
	bl	stbi__pnm_skip_whitespace
	sub	r3, fp, #17
	mov	r1, r3
	ldr	r0, [fp, #-24]
	bl	stbi__pnm_getinteger
	str	r0, [fp, #-12]
	ldr	r3, [fp, #-12]
	cmp	r3, #255
	ble	.L1922
	mov	r3, #0
	b	.L1923
.L1922:
	mov	r3, #1
.L1923:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__pnm_info, .-stbi__pnm_info
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__info_main, %function
stbi__info_main:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-20]
	ldr	r2, [fp, #-16]
	ldr	r1, [fp, #-12]
	ldr	r0, [fp, #-8]
	bl	stbi__jpeg_info
	mov	r3, r0
	cmp	r3, #0
	beq	.L1925
	mov	r3, #1
	b	.L1926
.L1925:
	ldr	r3, [fp, #-20]
	ldr	r2, [fp, #-16]
	ldr	r1, [fp, #-12]
	ldr	r0, [fp, #-8]
	bl	stbi__png_info
	mov	r3, r0
	cmp	r3, #0
	beq	.L1927
	mov	r3, #1
	b	.L1926
.L1927:
	ldr	r3, [fp, #-20]
	ldr	r2, [fp, #-16]
	ldr	r1, [fp, #-12]
	ldr	r0, [fp, #-8]
	bl	stbi__gif_info
	mov	r3, r0
	cmp	r3, #0
	beq	.L1928
	mov	r3, #1
	b	.L1926
.L1928:
	ldr	r3, [fp, #-20]
	ldr	r2, [fp, #-16]
	ldr	r1, [fp, #-12]
	ldr	r0, [fp, #-8]
	bl	stbi__bmp_info
	mov	r3, r0
	cmp	r3, #0
	beq	.L1929
	mov	r3, #1
	b	.L1926
.L1929:
	ldr	r3, [fp, #-20]
	ldr	r2, [fp, #-16]
	ldr	r1, [fp, #-12]
	ldr	r0, [fp, #-8]
	bl	stbi__psd_info
	mov	r3, r0
	cmp	r3, #0
	beq	.L1930
	mov	r3, #1
	b	.L1926
.L1930:
	ldr	r3, [fp, #-20]
	ldr	r2, [fp, #-16]
	ldr	r1, [fp, #-12]
	ldr	r0, [fp, #-8]
	bl	stbi__pic_info
	mov	r3, r0
	cmp	r3, #0
	beq	.L1931
	mov	r3, #1
	b	.L1926
.L1931:
	ldr	r3, [fp, #-20]
	ldr	r2, [fp, #-16]
	ldr	r1, [fp, #-12]
	ldr	r0, [fp, #-8]
	bl	stbi__pnm_info
	mov	r3, r0
	cmp	r3, #0
	beq	.L1932
	mov	r3, #1
	b	.L1926
.L1932:
	ldr	r3, [fp, #-20]
	ldr	r2, [fp, #-16]
	ldr	r1, [fp, #-12]
	ldr	r0, [fp, #-8]
	bl	stbi__hdr_info
	mov	r3, r0
	cmp	r3, #0
	beq	.L1933
	mov	r3, #1
	b	.L1926
.L1933:
	ldr	r3, [fp, #-20]
	ldr	r2, [fp, #-16]
	ldr	r1, [fp, #-12]
	ldr	r0, [fp, #-8]
	bl	stbi__tga_info
	mov	r3, r0
	cmp	r3, #0
	beq	.L1934
	mov	r3, #1
	b	.L1926
.L1934:
	mov	r3, #0
.L1926:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__info_main, .-stbi__info_main
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__is_16_main, %function
stbi__is_16_main:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	ldr	r0, [fp, #-8]
	bl	stbi__png_is16
	mov	r3, r0
	cmp	r3, #0
	beq	.L1936
	mov	r3, #1
	b	.L1937
.L1936:
	ldr	r0, [fp, #-8]
	bl	stbi__psd_is16
	mov	r3, r0
	cmp	r3, #0
	beq	.L1938
	mov	r3, #1
	b	.L1937
.L1938:
	mov	r3, #0
.L1937:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__is_16_main, .-stbi__is_16_main
	.align	2
	.global	stbi_info
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi_info, %function
stbi_info:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #24
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	str	r3, [fp, #-28]
	movw	r1, #:lower16:.LC8
	movt	r1, #:upper16:.LC8
	ldr	r0, [fp, #-16]
	bl	stbi__fopen
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	bne	.L1940
	mov	r3, #0
	b	.L1941
.L1940:
	ldr	r3, [fp, #-28]
	ldr	r2, [fp, #-24]
	ldr	r1, [fp, #-20]
	ldr	r0, [fp, #-8]
	bl	stbi_info_from_file
	str	r0, [fp, #-12]
	ldr	r0, [fp, #-8]
	bl	fclose
	ldr	r3, [fp, #-12]
.L1941:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi_info, .-stbi_info
	.align	2
	.global	stbi_info_from_file
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi_info_from_file, %function
stbi_info_from_file:
	@ args = 0, pretend = 0, frame = 208
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #208
	str	r0, [fp, #-200]
	str	r1, [fp, #-204]
	str	r2, [fp, #-208]
	str	r3, [fp, #-212]
	ldr	r0, [fp, #-200]
	bl	ftell
	str	r0, [fp, #-8]
	sub	r3, fp, #196
	ldr	r1, [fp, #-200]
	mov	r0, r3
	bl	stbi__start_file
	sub	r0, fp, #196
	ldr	r3, [fp, #-212]
	ldr	r2, [fp, #-208]
	ldr	r1, [fp, #-204]
	bl	stbi__info_main
	str	r0, [fp, #-12]
	mov	r2, #0
	ldr	r1, [fp, #-8]
	ldr	r0, [fp, #-200]
	bl	fseek
	ldr	r3, [fp, #-12]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi_info_from_file, .-stbi_info_from_file
	.align	2
	.global	stbi_is_16_bit
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi_is_16_bit, %function
stbi_is_16_bit:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-16]
	movw	r1, #:lower16:.LC8
	movt	r1, #:upper16:.LC8
	ldr	r0, [fp, #-16]
	bl	stbi__fopen
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	bne	.L1945
	mov	r3, #0
	b	.L1946
.L1945:
	ldr	r0, [fp, #-8]
	bl	stbi_is_16_bit_from_file
	str	r0, [fp, #-12]
	ldr	r0, [fp, #-8]
	bl	fclose
	ldr	r3, [fp, #-12]
.L1946:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi_is_16_bit, .-stbi_is_16_bit
	.align	2
	.global	stbi_is_16_bit_from_file
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi_is_16_bit_from_file, %function
stbi_is_16_bit_from_file:
	@ args = 0, pretend = 0, frame = 200
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #200
	str	r0, [fp, #-200]
	ldr	r0, [fp, #-200]
	bl	ftell
	str	r0, [fp, #-8]
	sub	r3, fp, #196
	ldr	r1, [fp, #-200]
	mov	r0, r3
	bl	stbi__start_file
	sub	r3, fp, #196
	mov	r0, r3
	bl	stbi__is_16_main
	str	r0, [fp, #-12]
	mov	r2, #0
	ldr	r1, [fp, #-8]
	ldr	r0, [fp, #-200]
	bl	fseek
	ldr	r3, [fp, #-12]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi_is_16_bit_from_file, .-stbi_is_16_bit_from_file
	.align	2
	.global	stbi_info_from_memory
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi_info_from_memory, %function
stbi_info_from_memory:
	@ args = 4, pretend = 0, frame = 200
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #200
	str	r0, [fp, #-192]
	str	r1, [fp, #-196]
	str	r2, [fp, #-200]
	str	r3, [fp, #-204]
	sub	r3, fp, #188
	ldr	r2, [fp, #-196]
	ldr	r1, [fp, #-192]
	mov	r0, r3
	bl	stbi__start_mem
	sub	r0, fp, #188
	ldr	r3, [fp, #4]
	ldr	r2, [fp, #-204]
	ldr	r1, [fp, #-200]
	bl	stbi__info_main
	mov	r3, r0
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi_info_from_memory, .-stbi_info_from_memory
	.align	2
	.global	stbi_info_from_callbacks
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi_info_from_callbacks, %function
stbi_info_from_callbacks:
	@ args = 4, pretend = 0, frame = 200
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #200
	str	r0, [fp, #-192]
	str	r1, [fp, #-196]
	str	r2, [fp, #-200]
	str	r3, [fp, #-204]
	sub	r3, fp, #188
	ldr	r2, [fp, #-196]
	ldr	r1, [fp, #-192]
	mov	r0, r3
	bl	stbi__start_callbacks
	sub	r0, fp, #188
	ldr	r3, [fp, #4]
	ldr	r2, [fp, #-204]
	ldr	r1, [fp, #-200]
	bl	stbi__info_main
	mov	r3, r0
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi_info_from_callbacks, .-stbi_info_from_callbacks
	.align	2
	.global	stbi_is_16_bit_from_memory
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi_is_16_bit_from_memory, %function
stbi_is_16_bit_from_memory:
	@ args = 0, pretend = 0, frame = 192
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #192
	str	r0, [fp, #-192]
	str	r1, [fp, #-196]
	sub	r3, fp, #188
	ldr	r2, [fp, #-196]
	ldr	r1, [fp, #-192]
	mov	r0, r3
	bl	stbi__start_mem
	sub	r3, fp, #188
	mov	r0, r3
	bl	stbi__is_16_main
	mov	r3, r0
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi_is_16_bit_from_memory, .-stbi_is_16_bit_from_memory
	.align	2
	.global	stbi_is_16_bit_from_callbacks
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi_is_16_bit_from_callbacks, %function
stbi_is_16_bit_from_callbacks:
	@ args = 0, pretend = 0, frame = 192
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #192
	str	r0, [fp, #-192]
	str	r1, [fp, #-196]
	sub	r3, fp, #188
	ldr	r2, [fp, #-196]
	ldr	r1, [fp, #-192]
	mov	r0, r3
	bl	stbi__start_callbacks
	sub	r3, fp, #188
	mov	r0, r3
	bl	stbi__is_16_main
	mov	r3, r0
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi_is_16_bit_from_callbacks, .-stbi_is_16_bit_from_callbacks
	.global	stbi_write_png_compression_level
	.data
	.align	2
	.type	stbi_write_png_compression_level, %object
	.size	stbi_write_png_compression_level, 4
stbi_write_png_compression_level:
	.word	8
	.global	stbi_write_tga_with_rle
	.align	2
	.type	stbi_write_tga_with_rle, %object
	.size	stbi_write_tga_with_rle, 4
stbi_write_tga_with_rle:
	.word	1
	.global	stbi_write_force_png_filter
	.align	2
	.type	stbi_write_force_png_filter, %object
	.size	stbi_write_force_png_filter, 4
stbi_write_force_png_filter:
	.word	-1
	.local	stbi__flip_vertically_on_write
	.comm	stbi__flip_vertically_on_write,4,4
	.text
	.align	2
	.global	stbi_flip_vertically_on_write
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi_flip_vertically_on_write, %function
stbi_flip_vertically_on_write:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #12
	str	r0, [fp, #-8]
	movw	r3, #:lower16:stbi__flip_vertically_on_write
	movt	r3, #:upper16:stbi__flip_vertically_on_write
	ldr	r2, [fp, #-8]
	str	r2, [r3]
	nop
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	stbi_flip_vertically_on_write, .-stbi_flip_vertically_on_write
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__start_write_callbacks, %function
stbi__start_write_callbacks:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-12]
	str	r2, [r3]
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-16]
	str	r2, [r3, #4]
	nop
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	stbi__start_write_callbacks, .-stbi__start_write_callbacks
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__stdio_write, %function
stbi__stdio_write:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-8]
	mov	r1, #1
	ldr	r0, [fp, #-12]
	bl	fwrite
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__stdio_write, .-stbi__stdio_write
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbiw__fopen, %function
stbiw__fopen:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	ldr	r1, [fp, #-20]
	ldr	r0, [fp, #-16]
	bl	fopen
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbiw__fopen, .-stbiw__fopen
	.section	.rodata
	.align	2
.LC19:
	.ascii	"wb\000"
	.text
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__start_write_file, %function
stbi__start_write_file:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	movw	r1, #:lower16:.LC19
	movt	r1, #:upper16:.LC19
	ldr	r0, [fp, #-20]
	bl	stbiw__fopen
	str	r0, [fp, #-8]
	ldr	r2, [fp, #-8]
	movw	r1, #:lower16:stbi__stdio_write
	movt	r1, #:upper16:stbi__stdio_write
	ldr	r0, [fp, #-16]
	bl	stbi__start_write_callbacks
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	movne	r3, #1
	moveq	r3, #0
	uxtb	r3, r3
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__start_write_file, .-stbi__start_write_file
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi__end_write_file, %function
stbi__end_write_file:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	fclose
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi__end_write_file, .-stbi__end_write_file
	.section	.rodata
	.align	2
.LC20:
	.ascii	"stb/stb_image_write.h\000"
	.align	2
.LC21:
	.ascii	"0\000"
	.text
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbiw__writefv, %function
stbiw__writefv:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #32
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	str	r2, [fp, #-32]
	b	.L1966
.L1973:
	ldr	r3, [fp, #-28]
	add	r2, r3, #1
	str	r2, [fp, #-28]
	ldrb	r3, [r3]	@ zero_extendqisi2
	sub	r3, r3, #32
	cmp	r3, #20
	ldrls	pc, [pc, r3, asl #2]
	b	.L1975
.L1969:
	.word	.L1966
	.word	.L1975
	.word	.L1975
	.word	.L1975
	.word	.L1975
	.word	.L1975
	.word	.L1975
	.word	.L1975
	.word	.L1975
	.word	.L1975
	.word	.L1975
	.word	.L1975
	.word	.L1975
	.word	.L1975
	.word	.L1975
	.word	.L1975
	.word	.L1975
	.word	.L1971
	.word	.L1970
	.word	.L1975
	.word	.L1968
.L1971:
	ldr	r3, [fp, #-32]
	add	r2, r3, #4
	str	r2, [fp, #-32]
	ldr	r3, [r3]
	uxtb	r3, r3
	strb	r3, [fp, #-13]
	ldr	r3, [fp, #-24]
	ldr	r3, [r3]
	ldr	r2, [fp, #-24]
	ldr	r0, [r2, #4]
	sub	r1, fp, #13
	mov	r2, #1
	blx	r3
	nop
	b	.L1966
.L1970:
	ldr	r3, [fp, #-32]
	add	r2, r3, #4
	str	r2, [fp, #-32]
	ldr	r3, [r3]
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	uxtb	r3, r3
	strb	r3, [fp, #-16]
	ldr	r3, [fp, #-8]
	asr	r3, r3, #8
	uxtb	r3, r3
	strb	r3, [fp, #-15]
	ldr	r3, [fp, #-24]
	ldr	r3, [r3]
	ldr	r2, [fp, #-24]
	ldr	r0, [r2, #4]
	sub	r1, fp, #16
	mov	r2, #2
	blx	r3
	nop
	b	.L1966
.L1968:
	ldr	r3, [fp, #-32]
	add	r2, r3, #4
	str	r2, [fp, #-32]
	ldr	r3, [r3]
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-12]
	uxtb	r3, r3
	strb	r3, [fp, #-20]
	ldr	r3, [fp, #-12]
	lsr	r3, r3, #8
	uxtb	r3, r3
	strb	r3, [fp, #-19]
	ldr	r3, [fp, #-12]
	lsr	r3, r3, #16
	uxtb	r3, r3
	strb	r3, [fp, #-18]
	ldr	r3, [fp, #-12]
	lsr	r3, r3, #24
	uxtb	r3, r3
	strb	r3, [fp, #-17]
	ldr	r3, [fp, #-24]
	ldr	r3, [r3]
	ldr	r2, [fp, #-24]
	ldr	r0, [r2, #4]
	sub	r1, fp, #20
	mov	r2, #4
	blx	r3
	nop
	b	.L1966
.L1975:
	movw	r3, #:lower16:__PRETTY_FUNCTION__.10967
	movt	r3, #:upper16:__PRETTY_FUNCTION__.10967
	movw	r2, #369
	movw	r1, #:lower16:.LC20
	movt	r1, #:upper16:.LC20
	movw	r0, #:lower16:.LC21
	movt	r0, #:upper16:.LC21
	bl	__assert_fail
.L1966:
	ldr	r3, [fp, #-28]
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	bne	.L1973
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbiw__writefv, .-stbiw__writefv
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbiw__writef, %function
stbiw__writef:
	@ args = 4, pretend = 12, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 1
	push	{r1, r2, r3}
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #20
	str	r0, [fp, #-20]
	add	r3, fp, #8
	str	r3, [fp, #-12]
	ldr	r2, [fp, #-12]
	ldr	r1, [fp, #4]
	ldr	r0, [fp, #-20]
	bl	stbiw__writefv
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, lr}
	add	sp, sp, #12
	bx	lr
	.size	stbiw__writef, .-stbiw__writef
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbiw__putc, %function
stbiw__putc:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	mov	r3, r1
	strb	r3, [fp, #-9]
	ldr	r3, [fp, #-8]
	ldr	r3, [r3]
	ldr	r2, [fp, #-8]
	ldr	r0, [r2, #4]
	sub	r1, fp, #9
	mov	r2, #1
	blx	r3
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbiw__putc, .-stbiw__putc
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbiw__write3, %function
stbiw__write3:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-16]
	mov	r0, r1
	mov	r1, r2
	mov	r2, r3
	mov	r3, r0
	strb	r3, [fp, #-17]
	mov	r3, r1
	strb	r3, [fp, #-18]
	mov	r3, r2
	strb	r3, [fp, #-19]
	ldrb	r3, [fp, #-17]
	strb	r3, [fp, #-8]
	ldrb	r3, [fp, #-18]
	strb	r3, [fp, #-7]
	ldrb	r3, [fp, #-19]
	strb	r3, [fp, #-6]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	ldr	r2, [fp, #-16]
	ldr	r0, [r2, #4]
	sub	r1, fp, #8
	mov	r2, #3
	blx	r3
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbiw__write3, .-stbiw__write3
	.section	.rodata
	.align	2
.LC4:
	.byte	-1
	.byte	0
	.byte	-1
	.text
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbiw__write_pixel, %function
stbiw__write_pixel:
	@ args = 8, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #32
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	str	r2, [fp, #-32]
	str	r3, [fp, #-36]
	movw	r2, #:lower16:.LC4
	movt	r2, #:upper16:.LC4
	sub	r3, fp, #12
	ldr	r2, [r2]
	strh	r2, [r3]	@ movhi
	add	r3, r3, #2
	lsr	r2, r2, #16
	strb	r2, [r3]
	ldr	r3, [fp, #-36]
	cmp	r3, #0
	bge	.L1980
	ldr	r3, [fp, #-24]
	ldr	r3, [r3]
	ldr	r2, [fp, #-24]
	ldr	r0, [r2, #4]
	ldr	r2, [fp, #-32]
	sub	r2, r2, #1
	ldr	r1, [fp, #8]
	add	r1, r1, r2
	mov	r2, #1
	blx	r3
.L1980:
	ldr	r3, [fp, #-32]
	sub	r3, r3, #1
	cmp	r3, #3
	ldrls	pc, [pc, r3, asl #2]
	b	.L1981
.L1983:
	.word	.L1985
	.word	.L1985
	.word	.L1984
	.word	.L1982
.L1985:
	ldr	r3, [fp, #4]
	cmp	r3, #0
	beq	.L1986
	ldr	r3, [fp, #8]
	ldrb	r1, [r3]	@ zero_extendqisi2
	ldr	r3, [fp, #8]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [fp, #8]
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldr	r0, [fp, #-24]
	bl	stbiw__write3
	b	.L1981
.L1986:
	ldr	r3, [fp, #-24]
	ldr	r3, [r3]
	ldr	r2, [fp, #-24]
	ldr	r0, [r2, #4]
	mov	r2, #1
	ldr	r1, [fp, #8]
	blx	r3
	b	.L1981
.L1982:
	ldr	r3, [fp, #-36]
	cmp	r3, #0
	bne	.L1984
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L1988
.L1989:
	sub	r2, fp, #12
	ldr	r3, [fp, #-8]
	add	r3, r2, r3
	ldrb	r1, [r3]	@ zero_extendqisi2
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #8]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	sub	r2, fp, #12
	ldr	r3, [fp, #-8]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	sub	r3, r0, r3
	ldr	r2, [fp, #8]
	add	r2, r2, #3
	ldrb	r2, [r2]	@ zero_extendqisi2
	mul	r3, r2, r3
	movw	r2, #32897
	movt	r2, 32896
	smull	r0, r2, r2, r3
	add	r2, r2, r3
	asr	r2, r2, #7
	asr	r3, r3, #31
	sub	r3, r2, r3
	uxtb	r3, r3
	add	r3, r1, r3
	uxtb	r1, r3
	sub	r2, fp, #16
	ldr	r3, [fp, #-8]
	add	r3, r2, r3
	mov	r2, r1
	strb	r2, [r3]
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L1988:
	ldr	r3, [fp, #-8]
	cmp	r3, #2
	ble	.L1989
	ldr	r3, [fp, #-28]
	rsb	r3, r3, #1
	sub	r2, fp, #4
	add	r3, r2, r3
	ldrb	r1, [r3, #-12]	@ zero_extendqisi2
	ldrb	r2, [fp, #-15]	@ zero_extendqisi2
	ldr	r3, [fp, #-28]
	add	r3, r3, #1
	sub	r0, fp, #4
	add	r3, r0, r3
	ldrb	r3, [r3, #-12]	@ zero_extendqisi2
	ldr	r0, [fp, #-24]
	bl	stbiw__write3
	b	.L1981
.L1984:
	ldr	r3, [fp, #-28]
	rsb	r3, r3, #1
	mov	r2, r3
	ldr	r3, [fp, #8]
	add	r3, r3, r2
	ldrb	r1, [r3]	@ zero_extendqisi2
	ldr	r3, [fp, #8]
	add	r3, r3, #1
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [fp, #-28]
	add	r3, r3, #1
	mov	r0, r3
	ldr	r3, [fp, #8]
	add	r3, r3, r0
	ldrb	r3, [r3]	@ zero_extendqisi2
	ldr	r0, [fp, #-24]
	bl	stbiw__write3
	nop
.L1981:
	ldr	r3, [fp, #-36]
	cmp	r3, #0
	ble	.L1991
	ldr	r3, [fp, #-24]
	ldr	r3, [r3]
	ldr	r2, [fp, #-24]
	ldr	r0, [r2, #4]
	ldr	r2, [fp, #-32]
	sub	r2, r2, #1
	ldr	r1, [fp, #8]
	add	r1, r1, r2
	mov	r2, #1
	blx	r3
.L1991:
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbiw__write_pixel, .-stbiw__write_pixel
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbiw__write_pixels, %function
stbiw__write_pixels:
	@ args = 24, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #48
	str	r0, [fp, #-32]
	str	r1, [fp, #-36]
	str	r2, [fp, #-40]
	str	r3, [fp, #-44]
	mov	r3, #0
	str	r3, [fp, #-24]
	ldr	r3, [fp, #4]
	cmp	r3, #0
	ble	.L2002
	movw	r3, #:lower16:stbi__flip_vertically_on_write
	movt	r3, #:upper16:stbi__flip_vertically_on_write
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L1995
	ldr	r3, [fp, #-40]
	rsb	r3, r3, #0
	str	r3, [fp, #-40]
.L1995:
	ldr	r3, [fp, #-40]
	cmp	r3, #0
	bge	.L1996
	mvn	r3, #0
	str	r3, [fp, #-16]
	ldr	r3, [fp, #4]
	sub	r3, r3, #1
	str	r3, [fp, #-12]
	b	.L1998
.L1996:
	ldr	r3, [fp, #4]
	str	r3, [fp, #-16]
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L1998
.L2001:
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L1999
.L2000:
	ldr	r3, [fp, #-12]
	ldr	r2, [fp, #-44]
	mul	r2, r2, r3
	ldr	r3, [fp, #-8]
	add	r3, r2, r3
	ldr	r2, [fp, #8]
	mul	r3, r2, r3
	mov	r2, r3
	ldr	r3, [fp, #12]
	add	r3, r3, r2
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-20]
	str	r3, [sp, #4]
	ldr	r3, [fp, #24]
	str	r3, [sp]
	ldr	r3, [fp, #16]
	ldr	r2, [fp, #8]
	ldr	r1, [fp, #-36]
	ldr	r0, [fp, #-32]
	bl	stbiw__write_pixel
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L1999:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-44]
	cmp	r2, r3
	blt	.L2000
	ldr	r3, [fp, #-32]
	ldr	r3, [r3]
	ldr	r2, [fp, #-32]
	ldr	r0, [r2, #4]
	sub	r1, fp, #24
	ldr	r2, [fp, #20]
	blx	r3
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	str	r3, [fp, #-12]
.L1998:
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-16]
	cmp	r2, r3
	bne	.L2001
	b	.L1992
.L2002:
	nop
.L1992:
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbiw__write_pixels, .-stbiw__write_pixels
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbiw__outfile, %function
stbiw__outfile:
	@ args = 28, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 1
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #48
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	str	r3, [fp, #-28]
	ldr	r3, [fp, #4]
	cmp	r3, #0
	blt	.L2004
	ldr	r3, [fp, #-28]
	cmp	r3, #0
	bge	.L2005
.L2004:
	mov	r3, #0
	b	.L2006
.L2005:
	add	r3, fp, #32
	str	r3, [fp, #-8]
	ldr	r2, [fp, #-8]
	ldr	r1, [fp, #28]
	ldr	r0, [fp, #-16]
	bl	stbiw__writefv
	ldr	r3, [fp, #12]
	str	r3, [sp, #20]
	ldr	r3, [fp, #24]
	str	r3, [sp, #16]
	ldr	r3, [fp, #20]
	str	r3, [sp, #12]
	ldr	r3, [fp, #16]
	str	r3, [sp, #8]
	ldr	r3, [fp, #8]
	str	r3, [sp, #4]
	ldr	r3, [fp, #4]
	str	r3, [sp]
	ldr	r3, [fp, #-28]
	ldr	r2, [fp, #-24]
	ldr	r1, [fp, #-20]
	ldr	r0, [fp, #-16]
	bl	stbiw__write_pixels
	mov	r3, #1
.L2006:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbiw__outfile, .-stbiw__outfile
	.section	.rodata
	.align	2
.LC22:
	.ascii	"11 4 22 44 44 22 444444\000"
	.text
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi_write_bmp_core, %function
stbi_write_bmp_core:
	@ args = 4, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #120
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-20]
	mov	r2, r3
	lsl	r3, r3, #2
	sub	r3, r2, r3
	and	r3, r3, #3
	str	r3, [fp, #-8]
	ldr	r2, [fp, #-20]
	mov	r3, r2
	lsl	r3, r3, #1
	add	r2, r3, r2
	ldr	r3, [fp, #-8]
	add	r3, r2, r3
	ldr	r2, [fp, #-24]
	mul	r3, r2, r3
	add	r3, r3, #54
	mov	r2, #0
	str	r2, [sp, #92]
	mov	r2, #0
	str	r2, [sp, #88]
	mov	r2, #0
	str	r2, [sp, #84]
	mov	r2, #0
	str	r2, [sp, #80]
	mov	r2, #0
	str	r2, [sp, #76]
	mov	r2, #0
	str	r2, [sp, #72]
	mov	r2, #24
	str	r2, [sp, #68]
	mov	r2, #1
	str	r2, [sp, #64]
	ldr	r2, [fp, #-24]
	str	r2, [sp, #60]
	ldr	r2, [fp, #-20]
	str	r2, [sp, #56]
	mov	r2, #40
	str	r2, [sp, #52]
	mov	r2, #54
	str	r2, [sp, #48]
	mov	r2, #0
	str	r2, [sp, #44]
	mov	r2, #0
	str	r2, [sp, #40]
	str	r3, [sp, #36]
	mov	r3, #77
	str	r3, [sp, #32]
	mov	r3, #66
	str	r3, [sp, #28]
	movw	r3, #:lower16:.LC22
	movt	r3, #:upper16:.LC22
	str	r3, [sp, #24]
	ldr	r3, [fp, #-8]
	str	r3, [sp, #20]
	mov	r3, #0
	str	r3, [sp, #16]
	ldr	r3, [fp, #4]
	str	r3, [sp, #12]
	mov	r3, #1
	str	r3, [sp, #8]
	ldr	r3, [fp, #-28]
	str	r3, [sp, #4]
	ldr	r3, [fp, #-24]
	str	r3, [sp]
	ldr	r3, [fp, #-20]
	mvn	r2, #0
	mvn	r1, #0
	ldr	r0, [fp, #-16]
	bl	stbiw__outfile
	mov	r3, r0
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi_write_bmp_core, .-stbi_write_bmp_core
	.align	2
	.global	stbi_write_bmp_to_func
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi_write_bmp_to_func, %function
stbi_write_bmp_to_func:
	@ args = 8, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #32
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	str	r3, [fp, #-28]
	sub	r3, fp, #12
	ldr	r2, [fp, #-20]
	ldr	r1, [fp, #-16]
	mov	r0, r3
	bl	stbi__start_write_callbacks
	sub	r0, fp, #12
	ldr	r3, [fp, #8]
	str	r3, [sp]
	ldr	r3, [fp, #4]
	ldr	r2, [fp, #-28]
	ldr	r1, [fp, #-24]
	bl	stbi_write_bmp_core
	mov	r3, r0
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi_write_bmp_to_func, .-stbi_write_bmp_to_func
	.align	2
	.global	stbi_write_bmp
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi_write_bmp, %function
stbi_write_bmp:
	@ args = 4, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #40
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	str	r2, [fp, #-32]
	str	r3, [fp, #-36]
	sub	r3, fp, #16
	ldr	r1, [fp, #-24]
	mov	r0, r3
	bl	stbi__start_write_file
	mov	r3, r0
	cmp	r3, #0
	beq	.L2012
	sub	r0, fp, #16
	ldr	r3, [fp, #4]
	str	r3, [sp]
	ldr	r3, [fp, #-36]
	ldr	r2, [fp, #-32]
	ldr	r1, [fp, #-28]
	bl	stbi_write_bmp_core
	str	r0, [fp, #-8]
	sub	r3, fp, #16
	mov	r0, r3
	bl	stbi__end_write_file
	ldr	r3, [fp, #-8]
	b	.L2014
.L2012:
	mov	r3, #0
.L2014:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi_write_bmp, .-stbi_write_bmp
	.section	.rodata
	.align	2
.LC23:
	.ascii	"111 221 2222 11\000"
	.text
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi_write_tga_core, %function
stbi_write_tga_core:
	@ args = 4, pretend = 0, frame = 72
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #152
	str	r0, [fp, #-64]
	str	r1, [fp, #-68]
	str	r2, [fp, #-72]
	str	r3, [fp, #-76]
	ldr	r3, [fp, #-76]
	cmp	r3, #2
	beq	.L2016
	ldr	r3, [fp, #-76]
	cmp	r3, #4
	bne	.L2017
.L2016:
	mov	r3, #1
	b	.L2018
.L2017:
	mov	r3, #0
.L2018:
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-40]
	cmp	r3, #0
	beq	.L2019
	ldr	r3, [fp, #-76]
	sub	r3, r3, #1
	b	.L2020
.L2019:
	ldr	r3, [fp, #-76]
.L2020:
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-44]
	cmp	r3, #1
	bgt	.L2021
	mov	r3, #3
	b	.L2022
.L2021:
	mov	r3, #2
.L2022:
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	blt	.L2023
	ldr	r3, [fp, #-68]
	cmp	r3, #0
	bge	.L2024
.L2023:
	mov	r3, #0
	b	.L2025
.L2024:
	movw	r3, #:lower16:stbi_write_tga_with_rle
	movt	r3, #:upper16:stbi_write_tga_with_rle
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L2026
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	lsl	r3, r3, #3
	ldr	r2, [fp, #-40]
	lsl	r2, r2, #3
	str	r2, [sp, #72]
	str	r3, [sp, #68]
	ldr	r3, [fp, #-72]
	str	r3, [sp, #64]
	ldr	r3, [fp, #-68]
	str	r3, [sp, #60]
	mov	r3, #0
	str	r3, [sp, #56]
	mov	r3, #0
	str	r3, [sp, #52]
	mov	r3, #0
	str	r3, [sp, #48]
	mov	r3, #0
	str	r3, [sp, #44]
	mov	r3, #0
	str	r3, [sp, #40]
	ldr	r3, [fp, #-48]
	str	r3, [sp, #36]
	mov	r3, #0
	str	r3, [sp, #32]
	mov	r3, #0
	str	r3, [sp, #28]
	movw	r3, #:lower16:.LC23
	movt	r3, #:upper16:.LC23
	str	r3, [sp, #24]
	mov	r3, #0
	str	r3, [sp, #20]
	ldr	r3, [fp, #-40]
	str	r3, [sp, #16]
	ldr	r3, [fp, #4]
	str	r3, [sp, #12]
	mov	r3, #0
	str	r3, [sp, #8]
	ldr	r3, [fp, #-76]
	str	r3, [sp, #4]
	ldr	r3, [fp, #-72]
	str	r3, [sp]
	ldr	r3, [fp, #-68]
	mvn	r2, #0
	mvn	r1, #0
	ldr	r0, [fp, #-64]
	bl	stbiw__outfile
	mov	r3, r0
	b	.L2025
.L2026:
	ldr	r3, [fp, #-48]
	add	r3, r3, #8
	ldr	r1, [fp, #-44]
	ldr	r2, [fp, #-40]
	add	r2, r1, r2
	lsl	r2, r2, #3
	ldr	r1, [fp, #-40]
	lsl	r1, r1, #3
	str	r1, [sp, #36]
	str	r2, [sp, #32]
	ldr	r2, [fp, #-72]
	str	r2, [sp, #28]
	ldr	r2, [fp, #-68]
	str	r2, [sp, #24]
	mov	r2, #0
	str	r2, [sp, #20]
	mov	r2, #0
	str	r2, [sp, #16]
	mov	r2, #0
	str	r2, [sp, #12]
	mov	r2, #0
	str	r2, [sp, #8]
	mov	r2, #0
	str	r2, [sp, #4]
	str	r3, [sp]
	mov	r3, #0
	mov	r2, #0
	movw	r1, #:lower16:.LC23
	movt	r1, #:upper16:.LC23
	ldr	r0, [fp, #-64]
	bl	stbiw__writef
	movw	r3, #:lower16:stbi__flip_vertically_on_write
	movt	r3, #:upper16:stbi__flip_vertically_on_write
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L2027
	mov	r3, #0
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-72]
	str	r3, [fp, #-20]
	mov	r3, #1
	str	r3, [fp, #-24]
	b	.L2029
.L2027:
	ldr	r3, [fp, #-72]
	sub	r3, r3, #1
	str	r3, [fp, #-12]
	mvn	r3, #0
	str	r3, [fp, #-20]
	mvn	r3, #0
	str	r3, [fp, #-24]
	b	.L2029
.L2047:
	ldr	r3, [fp, #-12]
	ldr	r2, [fp, #-68]
	mul	r3, r2, r3
	ldr	r2, [fp, #-76]
	mul	r3, r2, r3
	mov	r2, r3
	ldr	r3, [fp, #4]
	add	r3, r3, r2
	str	r3, [fp, #-52]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L2030
.L2046:
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-76]
	mul	r3, r2, r3
	mov	r2, r3
	ldr	r3, [fp, #-52]
	add	r3, r3, r2
	str	r3, [fp, #-56]
	mov	r3, #1
	str	r3, [fp, #-32]
	mov	r3, #1
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-68]
	sub	r3, r3, #1
	ldr	r2, [fp, #-8]
	cmp	r2, r3
	bge	.L2031
	ldr	r3, [fp, #-28]
	add	r3, r3, #1
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	ldr	r2, [fp, #-76]
	mul	r3, r2, r3
	mov	r2, r3
	ldr	r3, [fp, #-52]
	add	r3, r3, r2
	ldr	r2, [fp, #-76]
	mov	r1, r3
	ldr	r0, [fp, #-56]
	bl	memcmp
	str	r0, [fp, #-32]
	ldr	r3, [fp, #-32]
	cmp	r3, #0
	beq	.L2032
	ldr	r3, [fp, #-56]
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-8]
	add	r3, r3, #2
	str	r3, [fp, #-16]
	b	.L2033
.L2037:
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-76]
	mul	r3, r2, r3
	mov	r2, r3
	ldr	r3, [fp, #-52]
	add	r3, r3, r2
	ldr	r2, [fp, #-76]
	mov	r1, r3
	ldr	r0, [fp, #-36]
	bl	memcmp
	mov	r3, r0
	cmp	r3, #0
	beq	.L2034
	ldr	r3, [fp, #-76]
	ldr	r2, [fp, #-36]
	add	r3, r2, r3
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-28]
	add	r3, r3, #1
	str	r3, [fp, #-28]
	b	.L2048
.L2034:
	ldr	r3, [fp, #-28]
	sub	r3, r3, #1
	str	r3, [fp, #-28]
	b	.L2031
.L2048:
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L2033:
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-68]
	cmp	r2, r3
	bge	.L2031
	ldr	r3, [fp, #-28]
	cmp	r3, #127
	ble	.L2037
	b	.L2031
.L2032:
	ldr	r3, [fp, #-8]
	add	r3, r3, #2
	str	r3, [fp, #-16]
	b	.L2038
.L2041:
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-76]
	mul	r3, r2, r3
	mov	r2, r3
	ldr	r3, [fp, #-52]
	add	r3, r3, r2
	ldr	r2, [fp, #-76]
	mov	r1, r3
	ldr	r0, [fp, #-56]
	bl	memcmp
	mov	r3, r0
	cmp	r3, #0
	bne	.L2049
	ldr	r3, [fp, #-28]
	add	r3, r3, #1
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L2038:
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-68]
	cmp	r2, r3
	bge	.L2031
	ldr	r3, [fp, #-28]
	cmp	r3, #127
	ble	.L2041
	b	.L2031
.L2049:
	nop
.L2031:
	ldr	r3, [fp, #-32]
	cmp	r3, #0
	beq	.L2042
	ldr	r3, [fp, #-28]
	uxtb	r3, r3
	sub	r3, r3, #1
	uxtb	r3, r3
	strb	r3, [fp, #-57]
	ldr	r3, [fp, #-64]
	ldr	r3, [r3]
	ldr	r2, [fp, #-64]
	ldr	r0, [r2, #4]
	sub	r1, fp, #57
	mov	r2, #1
	blx	r3
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L2043
.L2044:
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-76]
	mul	r3, r2, r3
	mov	r2, r3
	ldr	r3, [fp, #-56]
	add	r3, r3, r2
	str	r3, [sp, #4]
	mov	r3, #0
	str	r3, [sp]
	ldr	r3, [fp, #-40]
	ldr	r2, [fp, #-76]
	mvn	r1, #0
	ldr	r0, [fp, #-64]
	bl	stbiw__write_pixel
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L2043:
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-28]
	cmp	r2, r3
	blt	.L2044
	b	.L2045
.L2042:
	ldr	r3, [fp, #-28]
	uxtb	r3, r3
	add	r3, r3, #127
	uxtb	r3, r3
	strb	r3, [fp, #-58]
	ldr	r3, [fp, #-64]
	ldr	r3, [r3]
	ldr	r2, [fp, #-64]
	ldr	r0, [r2, #4]
	sub	r1, fp, #58
	mov	r2, #1
	blx	r3
	ldr	r3, [fp, #-56]
	str	r3, [sp, #4]
	mov	r3, #0
	str	r3, [sp]
	ldr	r3, [fp, #-40]
	ldr	r2, [fp, #-76]
	mvn	r1, #0
	ldr	r0, [fp, #-64]
	bl	stbiw__write_pixel
.L2045:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-28]
	add	r3, r2, r3
	str	r3, [fp, #-8]
.L2030:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-68]
	cmp	r2, r3
	blt	.L2046
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	str	r3, [fp, #-12]
.L2029:
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-20]
	cmp	r2, r3
	bne	.L2047
	mov	r3, #1
.L2025:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi_write_tga_core, .-stbi_write_tga_core
	.align	2
	.global	stbi_write_tga_to_func
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi_write_tga_to_func, %function
stbi_write_tga_to_func:
	@ args = 8, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #32
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	str	r3, [fp, #-28]
	sub	r3, fp, #12
	ldr	r2, [fp, #-20]
	ldr	r1, [fp, #-16]
	mov	r0, r3
	bl	stbi__start_write_callbacks
	sub	r0, fp, #12
	ldr	r3, [fp, #8]
	str	r3, [sp]
	ldr	r3, [fp, #4]
	ldr	r2, [fp, #-28]
	ldr	r1, [fp, #-24]
	bl	stbi_write_tga_core
	mov	r3, r0
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi_write_tga_to_func, .-stbi_write_tga_to_func
	.align	2
	.global	stbi_write_tga
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi_write_tga, %function
stbi_write_tga:
	@ args = 4, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #40
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	str	r2, [fp, #-32]
	str	r3, [fp, #-36]
	sub	r3, fp, #16
	ldr	r1, [fp, #-24]
	mov	r0, r3
	bl	stbi__start_write_file
	mov	r3, r0
	cmp	r3, #0
	beq	.L2053
	sub	r0, fp, #16
	ldr	r3, [fp, #4]
	str	r3, [sp]
	ldr	r3, [fp, #-36]
	ldr	r2, [fp, #-32]
	ldr	r1, [fp, #-28]
	bl	stbi_write_tga_core
	str	r0, [fp, #-8]
	sub	r3, fp, #16
	mov	r0, r3
	bl	stbi__end_write_file
	ldr	r3, [fp, #-8]
	b	.L2055
.L2053:
	mov	r3, #0
.L2055:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi_write_tga, .-stbi_write_tga
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbiw__linear_to_rgbe, %function
stbiw__linear_to_rgbe:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #32
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	ldr	r3, [fp, #-28]
	vldr.32	s14, [r3]
	ldr	r3, [fp, #-28]
	add	r3, r3, #4
	vldr.32	s13, [r3]
	ldr	r3, [fp, #-28]
	add	r3, r3, #8
	vldr.32	s15, [r3]
	vcmpe.f32	s13, s15
	vmrs	APSR_nzcv, FPSCR
	ble	.L2073
	ldr	r3, [fp, #-28]
	vldr.32	s15, [r3, #4]
	b	.L2059
.L2073:
	ldr	r3, [fp, #-28]
	vldr.32	s15, [r3, #8]
.L2059:
	vcmpe.f32	s15, s14
	vmrs	APSR_nzcv, FPSCR
	bpl	.L2074
	ldr	r3, [fp, #-28]
	ldr	r3, [r3]	@ float
	b	.L2062
.L2074:
	ldr	r3, [fp, #-28]
	add	r3, r3, #4
	vldr.32	s14, [r3]
	ldr	r3, [fp, #-28]
	add	r3, r3, #8
	vldr.32	s15, [r3]
	vcmpe.f32	s14, s15
	vmrs	APSR_nzcv, FPSCR
	ble	.L2075
	ldr	r3, [fp, #-28]
	ldr	r3, [r3, #4]	@ float
	b	.L2062
.L2075:
	ldr	r3, [fp, #-28]
	ldr	r3, [r3, #8]	@ float
.L2062:
	str	r3, [fp, #-8]	@ float
	vldr.32	s15, [fp, #-8]
	vldr.32	s14, .L2078
	vcmpe.f32	s15, s14
	vmrs	APSR_nzcv, FPSCR
	bpl	.L2076
	ldr	r3, [fp, #-24]
	add	r3, r3, #3
	mov	r2, #0
	strb	r2, [r3]
	ldr	r2, [fp, #-24]
	add	r2, r2, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	strb	r3, [r2]
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	ldrb	r2, [r2]	@ zero_extendqisi2
	strb	r2, [r3]
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [fp, #-24]
	strb	r2, [r3]
	b	.L2077
.L2076:
	vldr.32	s15, [fp, #-8]
	vcvt.f64.f32	d7, s15
	sub	r3, fp, #16
	mov	r0, r3
	vmov.f64	d0, d7
	bl	frexp
	vmov.f64	d7, d0
	vcvt.f32.f64	s15, d7
	vldr.32	s14, .L2078+4
	vmul.f32	s13, s15, s14
	vldr.32	s14, [fp, #-8]
	vdiv.f32	s15, s13, s14
	vstr.32	s15, [fp, #-12]
	ldr	r3, [fp, #-28]
	vldr.32	s14, [r3]
	vldr.32	s15, [fp, #-12]
	vmul.f32	s15, s14, s15
	vcvt.u32.f32	s15, s15
	vstr.32	s15, [fp, #-32]	@ int
	ldr	r3, [fp, #-32]
	uxtb	r2, r3
	ldr	r3, [fp, #-24]
	strb	r2, [r3]
	ldr	r3, [fp, #-28]
	add	r3, r3, #4
	vldr.32	s14, [r3]
	vldr.32	s15, [fp, #-12]
	vmul.f32	s15, s14, s15
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	vcvt.u32.f32	s15, s15
	vstr.32	s15, [fp, #-32]	@ int
	ldr	r2, [fp, #-32]
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [fp, #-28]
	add	r3, r3, #8
	vldr.32	s14, [r3]
	vldr.32	s15, [fp, #-12]
	vmul.f32	s15, s14, s15
	ldr	r3, [fp, #-24]
	add	r3, r3, #2
	vcvt.u32.f32	s15, s15
	vstr.32	s15, [fp, #-32]	@ int
	ldr	r2, [fp, #-32]
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [fp, #-16]
	uxtb	r2, r3
	ldr	r3, [fp, #-24]
	add	r3, r3, #3
	sub	r2, r2, #128
	uxtb	r2, r2
	strb	r2, [r3]
.L2077:
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L2079:
	.align	2
.L2078:
	.word	172994847
	.word	1132462080
	.size	stbiw__linear_to_rgbe, .-stbiw__linear_to_rgbe
	.section	.rodata
	.align	2
.LC24:
	.ascii	"length+128 <= 255\000"
	.text
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbiw__write_run_data, %function
stbiw__write_run_data:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #24
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	mov	r3, r2
	strb	r3, [fp, #-21]
	ldr	r3, [fp, #-20]
	uxtb	r3, r3
	sub	r3, r3, #128
	uxtb	r3, r3
	strb	r3, [fp, #-5]
	ldr	r3, [fp, #-20]
	cmp	r3, #127
	ble	.L2081
	movw	r3, #:lower16:__PRETTY_FUNCTION__.11137
	movt	r3, #:upper16:__PRETTY_FUNCTION__.11137
	movw	r2, #621
	movw	r1, #:lower16:.LC20
	movt	r1, #:upper16:.LC20
	movw	r0, #:lower16:.LC24
	movt	r0, #:upper16:.LC24
	bl	__assert_fail
.L2081:
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	ldr	r2, [fp, #-16]
	ldr	r0, [r2, #4]
	sub	r1, fp, #5
	mov	r2, #1
	blx	r3
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	ldr	r2, [fp, #-16]
	ldr	r0, [r2, #4]
	sub	r1, fp, #21
	mov	r2, #1
	blx	r3
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbiw__write_run_data, .-stbiw__write_run_data
	.section	.rodata
	.align	2
.LC25:
	.ascii	"length <= 128\000"
	.text
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbiw__write_dump_data, %function
stbiw__write_dump_data:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #24
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	ldr	r3, [fp, #-20]
	uxtb	r3, r3
	strb	r3, [fp, #-5]
	ldr	r3, [fp, #-20]
	cmp	r3, #128
	ble	.L2083
	movw	r3, #:lower16:__PRETTY_FUNCTION__.11144
	movt	r3, #:upper16:__PRETTY_FUNCTION__.11144
	movw	r2, #629
	movw	r1, #:lower16:.LC20
	movt	r1, #:upper16:.LC20
	movw	r0, #:lower16:.LC25
	movt	r0, #:upper16:.LC25
	bl	__assert_fail
.L2083:
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	ldr	r2, [fp, #-16]
	ldr	r0, [r2, #4]
	sub	r1, fp, #5
	mov	r2, #1
	blx	r3
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	ldr	r2, [fp, #-16]
	ldr	r0, [r2, #4]
	ldr	r2, [fp, #-20]
	ldr	r1, [fp, #-24]
	blx	r3
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbiw__write_dump_data, .-stbiw__write_dump_data
	.section	.rodata
	.align	2
.LC5:
	.byte	2
	.byte	2
	.byte	0
	.byte	0
	.text
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbiw__write_hdr_scanline, %function
stbiw__write_hdr_scanline:
	@ args = 4, pretend = 0, frame = 64
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #64
	str	r0, [fp, #-56]
	str	r1, [fp, #-60]
	str	r2, [fp, #-64]
	str	r3, [fp, #-68]
	movw	r3, #:lower16:.LC5
	movt	r3, #:upper16:.LC5
	ldr	r3, [r3]
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-60]
	asr	r3, r3, #8
	uxtb	r3, r3
	strb	r3, [fp, #-30]
	ldr	r3, [fp, #-60]
	uxtb	r3, r3
	strb	r3, [fp, #-29]
	ldr	r3, [fp, #-60]
	cmp	r3, #7
	ble	.L2085
	ldr	r3, [fp, #-60]
	cmp	r3, #32768
	blt	.L2086
.L2085:
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L2087
.L2090:
	ldr	r3, [fp, #-64]
	sub	r3, r3, #3
	cmp	r3, #1
	bhi	.L2088
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-64]
	mul	r3, r2, r3
	add	r3, r3, #2
	lsl	r3, r3, #2
	ldr	r2, [fp, #4]
	add	r3, r2, r3
	ldr	r3, [r3]	@ float
	str	r3, [fp, #-40]	@ float
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-64]
	mul	r3, r2, r3
	add	r3, r3, #1
	lsl	r3, r3, #2
	ldr	r2, [fp, #4]
	add	r3, r2, r3
	ldr	r3, [r3]	@ float
	str	r3, [fp, #-44]	@ float
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-64]
	mul	r3, r2, r3
	lsl	r3, r3, #2
	ldr	r2, [fp, #4]
	add	r3, r2, r3
	ldr	r3, [r3]	@ float
	str	r3, [fp, #-48]	@ float
	b	.L2089
.L2088:
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-64]
	mul	r3, r2, r3
	lsl	r3, r3, #2
	ldr	r2, [fp, #4]
	add	r3, r2, r3
	ldr	r3, [r3]	@ float
	str	r3, [fp, #-40]	@ float
	ldr	r3, [fp, #-40]	@ float
	str	r3, [fp, #-44]	@ float
	ldr	r3, [fp, #-44]	@ float
	str	r3, [fp, #-48]	@ float
	nop
.L2089:
	sub	r2, fp, #48
	sub	r3, fp, #36
	mov	r1, r2
	mov	r0, r3
	bl	stbiw__linear_to_rgbe
	ldr	r3, [fp, #-56]
	ldr	r3, [r3]
	ldr	r2, [fp, #-56]
	ldr	r0, [r2, #4]
	sub	r1, fp, #36
	mov	r2, #4
	blx	r3
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L2087:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-60]
	cmp	r2, r3
	blt	.L2090
	b	.L2091
.L2086:
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L2092
.L2095:
	ldr	r3, [fp, #-64]
	sub	r3, r3, #3
	cmp	r3, #1
	bhi	.L2093
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-64]
	mul	r3, r2, r3
	add	r3, r3, #2
	lsl	r3, r3, #2
	ldr	r2, [fp, #4]
	add	r3, r2, r3
	ldr	r3, [r3]	@ float
	str	r3, [fp, #-40]	@ float
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-64]
	mul	r3, r2, r3
	add	r3, r3, #1
	lsl	r3, r3, #2
	ldr	r2, [fp, #4]
	add	r3, r2, r3
	ldr	r3, [r3]	@ float
	str	r3, [fp, #-44]	@ float
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-64]
	mul	r3, r2, r3
	lsl	r3, r3, #2
	ldr	r2, [fp, #4]
	add	r3, r2, r3
	ldr	r3, [r3]	@ float
	str	r3, [fp, #-48]	@ float
	b	.L2094
.L2093:
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-64]
	mul	r3, r2, r3
	lsl	r3, r3, #2
	ldr	r2, [fp, #4]
	add	r3, r2, r3
	ldr	r3, [r3]	@ float
	str	r3, [fp, #-40]	@ float
	ldr	r3, [fp, #-40]	@ float
	str	r3, [fp, #-44]	@ float
	ldr	r3, [fp, #-44]	@ float
	str	r3, [fp, #-48]	@ float
	nop
.L2094:
	sub	r2, fp, #48
	sub	r3, fp, #36
	mov	r1, r2
	mov	r0, r3
	bl	stbiw__linear_to_rgbe
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-68]
	add	r3, r2, r3
	ldrb	r2, [fp, #-36]	@ zero_extendqisi2
	strb	r2, [r3]
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-60]
	add	r3, r2, r3
	mov	r2, r3
	ldr	r3, [fp, #-68]
	add	r3, r3, r2
	ldrb	r2, [fp, #-35]	@ zero_extendqisi2
	strb	r2, [r3]
	ldr	r3, [fp, #-60]
	lsl	r2, r3, #1
	ldr	r3, [fp, #-8]
	add	r3, r2, r3
	mov	r2, r3
	ldr	r3, [fp, #-68]
	add	r3, r3, r2
	ldrb	r2, [fp, #-34]	@ zero_extendqisi2
	strb	r2, [r3]
	ldr	r2, [fp, #-60]
	mov	r3, r2
	lsl	r3, r3, #1
	add	r2, r3, r2
	ldr	r3, [fp, #-8]
	add	r3, r2, r3
	mov	r2, r3
	ldr	r3, [fp, #-68]
	add	r3, r3, r2
	ldrb	r2, [fp, #-33]	@ zero_extendqisi2
	strb	r2, [r3]
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L2092:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-60]
	cmp	r2, r3
	blt	.L2095
	ldr	r3, [fp, #-56]
	ldr	r3, [r3]
	ldr	r2, [fp, #-56]
	ldr	r0, [r2, #4]
	sub	r1, fp, #32
	mov	r2, #4
	blx	r3
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L2096
.L2113:
	ldr	r3, [fp, #-60]
	ldr	r2, [fp, #-12]
	mul	r3, r2, r3
	mov	r2, r3
	ldr	r3, [fp, #-68]
	add	r3, r3, r2
	str	r3, [fp, #-28]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L2097
.L2112:
	ldr	r3, [fp, #-8]
	str	r3, [fp, #-16]
	b	.L2098
.L2101:
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-28]
	add	r3, r2, r3
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	ldr	r1, [fp, #-28]
	add	r3, r1, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L2099
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-28]
	add	r3, r2, r3
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [fp, #-16]
	add	r3, r3, #2
	ldr	r1, [fp, #-28]
	add	r3, r1, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r2, r3
	beq	.L2114
.L2099:
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L2098:
	ldr	r3, [fp, #-16]
	add	r3, r3, #2
	ldr	r2, [fp, #-60]
	cmp	r2, r3
	bgt	.L2101
	b	.L2100
.L2114:
	nop
.L2100:
	ldr	r3, [fp, #-16]
	add	r3, r3, #2
	ldr	r2, [fp, #-60]
	cmp	r2, r3
	bgt	.L2103
	ldr	r3, [fp, #-60]
	str	r3, [fp, #-16]
	b	.L2103
.L2105:
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-8]
	sub	r3, r2, r3
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-20]
	cmp	r3, #128
	ble	.L2104
	mov	r3, #128
	str	r3, [fp, #-20]
.L2104:
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-28]
	add	r3, r2, r3
	mov	r2, r3
	ldr	r1, [fp, #-20]
	ldr	r0, [fp, #-56]
	bl	stbiw__write_dump_data
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-20]
	add	r3, r2, r3
	str	r3, [fp, #-8]
.L2103:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-16]
	cmp	r2, r3
	blt	.L2105
	ldr	r3, [fp, #-16]
	add	r3, r3, #2
	ldr	r2, [fp, #-60]
	cmp	r2, r3
	ble	.L2097
	b	.L2106
.L2108:
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L2106:
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-60]
	cmp	r2, r3
	bge	.L2109
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-28]
	add	r3, r2, r3
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [fp, #-8]
	ldr	r1, [fp, #-28]
	add	r3, r1, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r2, r3
	beq	.L2108
	b	.L2109
.L2111:
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-8]
	sub	r3, r2, r3
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-24]
	cmp	r3, #127
	ble	.L2110
	mov	r3, #127
	str	r3, [fp, #-24]
.L2110:
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-28]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r1, [fp, #-24]
	ldr	r0, [fp, #-56]
	bl	stbiw__write_run_data
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	str	r3, [fp, #-8]
.L2109:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-16]
	cmp	r2, r3
	blt	.L2111
.L2097:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-60]
	cmp	r2, r3
	blt	.L2112
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L2096:
	ldr	r3, [fp, #-12]
	cmp	r3, #3
	ble	.L2113
.L2091:
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbiw__write_hdr_scanline, .-stbiw__write_hdr_scanline
	.section	.rodata
	.align	2
.LC27:
	.ascii	"EXPOSURE=          1.0000000000000\012\012-Y %d +X "
	.ascii	"%d\012\000"
	.align	2
.LC26:
	.ascii	"#?RADIANCE\012# Written by stb_image_write.h\012FOR"
	.ascii	"MAT=32-bit_rle_rgbe\012\000"
	.text
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi_write_hdr_core, %function
stbi_write_hdr_core:
	@ args = 4, pretend = 0, frame = 224
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #232
	str	r0, [fp, #-216]
	str	r1, [fp, #-220]
	str	r2, [fp, #-224]
	str	r3, [fp, #-228]
	ldr	r3, [fp, #-224]
	cmp	r3, #0
	ble	.L2116
	ldr	r3, [fp, #-220]
	cmp	r3, #0
	ble	.L2116
	ldr	r3, [fp, #4]
	cmp	r3, #0
	bne	.L2117
.L2116:
	mov	r3, #0
	b	.L2118
.L2117:
	ldr	r3, [fp, #-220]
	lsl	r3, r3, #2
	mov	r0, r3
	bl	malloc
	mov	r3, r0
	str	r3, [fp, #-12]
	movw	r3, #:lower16:.LC26
	movt	r3, #:upper16:.LC26
	sub	r0, fp, #212
	mov	r1, r3
	mov	r3, #66
	mov	r2, r3
	bl	memcpy
	ldr	r3, [fp, #-216]
	ldr	r3, [r3]
	ldr	r2, [fp, #-216]
	ldr	r0, [r2, #4]
	sub	r1, fp, #212
	mov	r2, #65
	blx	r3
	sub	r0, fp, #144
	ldr	r3, [fp, #-220]
	ldr	r2, [fp, #-224]
	movw	r1, #:lower16:.LC27
	movt	r1, #:upper16:.LC27
	bl	sprintf
	str	r0, [fp, #-16]
	ldr	r3, [fp, #-216]
	ldr	r3, [r3]
	ldr	r2, [fp, #-216]
	ldr	r0, [r2, #4]
	sub	r1, fp, #144
	ldr	r2, [fp, #-16]
	blx	r3
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L2119
.L2122:
	ldr	r3, [fp, #-228]
	ldr	r2, [fp, #-220]
	mul	r2, r2, r3
	movw	r3, #:lower16:stbi__flip_vertically_on_write
	movt	r3, #:upper16:stbi__flip_vertically_on_write
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L2120
	ldr	r3, [fp, #-224]
	sub	r1, r3, #1
	ldr	r3, [fp, #-8]
	sub	r3, r1, r3
	b	.L2121
.L2120:
	ldr	r3, [fp, #-8]
.L2121:
	mul	r3, r2, r3
	lsl	r3, r3, #2
	ldr	r2, [fp, #4]
	add	r3, r2, r3
	str	r3, [sp]
	ldr	r3, [fp, #-12]
	ldr	r2, [fp, #-228]
	ldr	r1, [fp, #-220]
	ldr	r0, [fp, #-216]
	bl	stbiw__write_hdr_scanline
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L2119:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-224]
	cmp	r2, r3
	blt	.L2122
	ldr	r0, [fp, #-12]
	bl	free
	mov	r3, #1
.L2118:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi_write_hdr_core, .-stbi_write_hdr_core
	.align	2
	.global	stbi_write_hdr_to_func
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi_write_hdr_to_func, %function
stbi_write_hdr_to_func:
	@ args = 8, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #32
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	str	r3, [fp, #-28]
	sub	r3, fp, #12
	ldr	r2, [fp, #-20]
	ldr	r1, [fp, #-16]
	mov	r0, r3
	bl	stbi__start_write_callbacks
	sub	r0, fp, #12
	ldr	r3, [fp, #8]
	str	r3, [sp]
	ldr	r3, [fp, #4]
	ldr	r2, [fp, #-28]
	ldr	r1, [fp, #-24]
	bl	stbi_write_hdr_core
	mov	r3, r0
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi_write_hdr_to_func, .-stbi_write_hdr_to_func
	.align	2
	.global	stbi_write_hdr
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi_write_hdr, %function
stbi_write_hdr:
	@ args = 4, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #40
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	str	r2, [fp, #-32]
	str	r3, [fp, #-36]
	sub	r3, fp, #16
	ldr	r1, [fp, #-24]
	mov	r0, r3
	bl	stbi__start_write_file
	mov	r3, r0
	cmp	r3, #0
	beq	.L2126
	sub	r0, fp, #16
	ldr	r3, [fp, #4]
	str	r3, [sp]
	ldr	r3, [fp, #-36]
	ldr	r2, [fp, #-32]
	ldr	r1, [fp, #-28]
	bl	stbi_write_hdr_core
	str	r0, [fp, #-8]
	sub	r3, fp, #16
	mov	r0, r3
	bl	stbi__end_write_file
	ldr	r3, [fp, #-8]
	b	.L2128
.L2126:
	mov	r3, #0
.L2128:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi_write_hdr, .-stbi_write_hdr
	.section	.rodata
	.align	2
.LC28:
	.ascii	"p\000"
	.text
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbiw__sbgrowf, %function
stbiw__sbgrowf:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #24
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L2130
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	sub	r3, r3, #8
	ldr	r3, [r3]
	lsl	r2, r3, #1
	ldr	r3, [fp, #-20]
	add	r3, r2, r3
	b	.L2131
.L2130:
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
.L2131:
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L2132
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	sub	r0, r3, #8
	b	.L2133
.L2132:
	mov	r0, #0
.L2133:
	ldr	r3, [fp, #-24]
	ldr	r2, [fp, #-8]
	mul	r3, r2, r3
	add	r3, r3, #8
	mov	r1, r3
	bl	realloc
	str	r0, [fp, #-12]
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	bne	.L2134
	movw	r3, #:lower16:__PRETTY_FUNCTION__.11233
	movt	r3, #:upper16:__PRETTY_FUNCTION__.11233
	movw	r2, #793
	movw	r1, #:lower16:.LC20
	movt	r1, #:upper16:.LC20
	movw	r0, #:lower16:.LC28
	movt	r0, #:upper16:.LC28
	bl	__assert_fail
.L2134:
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	beq	.L2135
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L2136
	ldr	r3, [fp, #-12]
	add	r3, r3, #4
	mov	r2, #0
	str	r2, [r3]
.L2136:
	ldr	r3, [fp, #-12]
	add	r2, r3, #8
	ldr	r3, [fp, #-16]
	str	r2, [r3]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	sub	r3, r3, #8
	ldr	r2, [fp, #-8]
	str	r2, [r3]
.L2135:
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbiw__sbgrowf, .-stbiw__sbgrowf
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbiw__zlib_flushf, %function
stbiw__zlib_flushf:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	b	.L2139
.L2143:
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	beq	.L2140
	ldr	r3, [fp, #-8]
	sub	r3, r3, #4
	ldr	r3, [r3]
	add	r2, r3, #1
	ldr	r3, [fp, #-8]
	sub	r3, r3, #8
	ldr	r3, [r3]
	cmp	r2, r3
	blt	.L2142
.L2140:
	sub	r3, fp, #8
	mov	r2, #1
	mov	r1, #1
	mov	r0, r3
	bl	stbiw__sbgrowf
	nop
.L2142:
	ldr	r3, [fp, #-12]
	ldr	ip, [r3]
	ldr	r1, [fp, #-8]
	ldr	r3, [fp, #-8]
	sub	r3, r3, #4
	ldr	r2, [r3]
	add	r0, r2, #1
	str	r0, [r3]
	mov	r3, r2
	add	r3, r1, r3
	uxtb	r2, ip
	strb	r2, [r3]
	ldr	r3, [fp, #-12]
	ldr	r3, [r3]
	lsr	r2, r3, #8
	ldr	r3, [fp, #-12]
	str	r2, [r3]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	sub	r2, r3, #8
	ldr	r3, [fp, #-16]
	str	r2, [r3]
.L2139:
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	cmp	r3, #7
	bgt	.L2143
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbiw__zlib_flushf, .-stbiw__zlib_flushf
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbiw__zlib_bitrev, %function
stbiw__zlib_bitrev:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L2146
.L2147:
	ldr	r3, [fp, #-8]
	lsl	r2, r3, #1
	ldr	r3, [fp, #-16]
	and	r3, r3, #1
	orr	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-16]
	asr	r3, r3, #1
	str	r3, [fp, #-16]
.L2146:
	ldr	r3, [fp, #-20]
	sub	r2, r3, #1
	str	r2, [fp, #-20]
	cmp	r3, #0
	bne	.L2147
	ldr	r3, [fp, #-8]
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	stbiw__zlib_bitrev, .-stbiw__zlib_bitrev
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbiw__zlib_countm, %function
stbiw__zlib_countm:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #28
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L2150
.L2153:
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-16]
	add	r3, r2, r3
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r3, [fp, #-8]
	ldr	r1, [fp, #-20]
	add	r3, r1, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r2, r3
	bne	.L2155
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L2150:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-24]
	cmp	r2, r3
	bge	.L2152
	ldr	r3, [fp, #-8]
	movw	r2, #257
	cmp	r3, r2
	ble	.L2153
	b	.L2152
.L2155:
	nop
.L2152:
	ldr	r3, [fp, #-8]
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	stbiw__zlib_countm, .-stbiw__zlib_countm
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbiw__zhash, %function
stbiw__zhash:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	str	r0, [fp, #-16]
	ldr	r3, [fp, #-16]
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsl	r3, r3, #8
	add	r2, r2, r3
	ldr	r3, [fp, #-16]
	add	r3, r3, #2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsl	r3, r3, #16
	add	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #3
	ldr	r2, [fp, #-8]
	eor	r3, r3, r2
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	lsr	r3, r3, #5
	ldr	r2, [fp, #-8]
	add	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #4
	ldr	r2, [fp, #-8]
	eor	r3, r3, r2
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	lsr	r3, r3, #17
	ldr	r2, [fp, #-8]
	add	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #25
	ldr	r2, [fp, #-8]
	eor	r3, r3, r2
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	lsr	r3, r3, #6
	ldr	r2, [fp, #-8]
	add	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	stbiw__zhash, .-stbiw__zhash
	.section	.rodata
	.align	2
.LC29:
	.ascii	"d <= 32767 && best <= 258\000"
	.text
	.align	2
	.global	stbi_zlib_compress
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi_zlib_compress, %function
stbi_zlib_compress:
	@ args = 0, pretend = 0, frame = 88
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #88
	str	r0, [fp, #-80]
	str	r1, [fp, #-84]
	str	r2, [fp, #-88]
	str	r3, [fp, #-92]
	mov	r3, #0
	str	r3, [fp, #-64]
	mov	r3, #0
	str	r3, [fp, #-68]
	mov	r3, #0
	str	r3, [fp, #-72]
	mov	r0, #65536
	bl	malloc
	mov	r3, r0
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-36]
	cmp	r3, #0
	bne	.L2159
	mov	r3, #0
	b	.L2229
.L2159:
	ldr	r3, [fp, #-92]
	cmp	r3, #4
	bgt	.L2161
	mov	r3, #5
	str	r3, [fp, #-92]
.L2161:
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L2162
	ldr	r3, [fp, #-72]
	sub	r3, r3, #4
	ldr	r3, [r3]
	add	r2, r3, #1
	ldr	r3, [fp, #-72]
	sub	r3, r3, #8
	ldr	r3, [r3]
	cmp	r2, r3
	blt	.L2164
.L2162:
	sub	r3, fp, #72
	mov	r2, #1
	mov	r1, #1
	mov	r0, r3
	bl	stbiw__sbgrowf
	nop
.L2164:
	ldr	r1, [fp, #-72]
	ldr	r3, [fp, #-72]
	sub	r3, r3, #4
	ldr	r2, [r3]
	add	r0, r2, #1
	str	r0, [r3]
	mov	r3, r2
	add	r3, r1, r3
	mov	r2, #120
	strb	r2, [r3]
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L2165
	ldr	r3, [fp, #-72]
	sub	r3, r3, #4
	ldr	r3, [r3]
	add	r2, r3, #1
	ldr	r3, [fp, #-72]
	sub	r3, r3, #8
	ldr	r3, [r3]
	cmp	r2, r3
	blt	.L2167
.L2165:
	sub	r3, fp, #72
	mov	r2, #1
	mov	r1, #1
	mov	r0, r3
	bl	stbiw__sbgrowf
	nop
.L2167:
	ldr	r1, [fp, #-72]
	ldr	r3, [fp, #-72]
	sub	r3, r3, #4
	ldr	r2, [r3]
	add	r0, r2, #1
	str	r0, [r3]
	mov	r3, r2
	add	r3, r1, r3
	mov	r2, #94
	strb	r2, [r3]
	ldr	r3, [fp, #-68]
	mov	r2, #1
	lsl	r3, r2, r3
	mov	r2, r3
	ldr	r3, [fp, #-64]
	orr	r3, r2, r3
	str	r3, [fp, #-64]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-72]
	sub	r2, fp, #68
	sub	r1, fp, #64
	mov	r0, r3
	bl	stbiw__zlib_flushf
	mov	r3, r0
	str	r3, [fp, #-72]
	ldr	r3, [fp, #-68]
	mov	r2, #1
	lsl	r3, r2, r3
	mov	r2, r3
	ldr	r3, [fp, #-64]
	orr	r3, r2, r3
	str	r3, [fp, #-64]
	ldr	r3, [fp, #-68]
	add	r3, r3, #2
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-72]
	sub	r2, fp, #68
	sub	r1, fp, #64
	mov	r0, r3
	bl	stbiw__zlib_flushf
	mov	r3, r0
	str	r3, [fp, #-72]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L2168
.L2169:
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #2
	ldr	r2, [fp, #-36]
	add	r3, r2, r3
	mov	r2, #0
	str	r2, [r3]
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L2168:
	ldr	r3, [fp, #-8]
	cmp	r3, #16384
	blt	.L2169
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L2170
.L2203:
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-80]
	add	r3, r2, r3
	mov	r0, r3
	bl	stbiw__zhash
	mov	r3, r0
	ubfx	r3, r3, #0, #14
	str	r3, [fp, #-40]
	mov	r3, #3
	str	r3, [fp, #-16]
	mov	r3, #0
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-40]
	lsl	r3, r3, #2
	ldr	r2, [fp, #-36]
	add	r3, r2, r3
	ldr	r3, [r3]
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-44]
	cmp	r3, #0
	beq	.L2171
	ldr	r3, [fp, #-44]
	ldr	r3, [r3, #-4]
	b	.L2172
.L2171:
	mov	r3, #0
.L2172:
	str	r3, [fp, #-48]
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L2173
.L2175:
	ldr	r3, [fp, #-8]
	sub	r3, r3, #32512
	sub	r3, r3, #255
	ldr	r2, [fp, #-12]
	lsl	r2, r2, #2
	ldr	r1, [fp, #-44]
	add	r2, r1, r2
	ldr	r1, [r2]
	ldr	r2, [fp, #-80]
	sub	r2, r1, r2
	cmp	r3, r2
	bgt	.L2174
	ldr	r3, [fp, #-12]
	lsl	r3, r3, #2
	ldr	r2, [fp, #-44]
	add	r3, r2, r3
	ldr	r0, [r3]
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-80]
	add	r1, r2, r3
	ldr	r2, [fp, #-84]
	ldr	r3, [fp, #-8]
	sub	r3, r2, r3
	mov	r2, r3
	bl	stbiw__zlib_countm
	mov	r3, r0
	str	r3, [fp, #-52]
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-16]
	cmp	r2, r3
	blt	.L2174
	ldr	r3, [fp, #-52]
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-12]
	lsl	r3, r3, #2
	ldr	r2, [fp, #-44]
	add	r3, r2, r3
	ldr	r3, [r3]
	str	r3, [fp, #-20]
.L2174:
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L2173:
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-48]
	cmp	r2, r3
	blt	.L2175
	ldr	r3, [fp, #-40]
	lsl	r3, r3, #2
	ldr	r2, [fp, #-36]
	add	r3, r2, r3
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L2176
	ldr	r3, [fp, #-40]
	lsl	r3, r3, #2
	ldr	r2, [fp, #-36]
	add	r3, r2, r3
	ldr	r3, [r3]
	sub	r3, r3, #4
	ldr	r2, [r3]
	ldr	r3, [fp, #-92]
	lsl	r3, r3, #1
	cmp	r2, r3
	bne	.L2176
	ldr	r3, [fp, #-40]
	lsl	r3, r3, #2
	ldr	r2, [fp, #-36]
	add	r3, r2, r3
	ldr	r0, [r3]
	ldr	r3, [fp, #-40]
	lsl	r3, r3, #2
	ldr	r2, [fp, #-36]
	add	r3, r2, r3
	ldr	r2, [r3]
	ldr	r3, [fp, #-92]
	lsl	r3, r3, #2
	add	r1, r2, r3
	ldr	r3, [fp, #-92]
	lsl	r3, r3, #2
	mov	r2, r3
	bl	memmove
	ldr	r3, [fp, #-40]
	lsl	r3, r3, #2
	ldr	r2, [fp, #-36]
	add	r3, r2, r3
	ldr	r3, [r3]
	sub	r3, r3, #4
	ldr	r2, [fp, #-92]
	str	r2, [r3]
.L2176:
	ldr	r3, [fp, #-40]
	lsl	r3, r3, #2
	ldr	r2, [fp, #-36]
	add	r3, r2, r3
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L2177
	ldr	r3, [fp, #-40]
	lsl	r3, r3, #2
	ldr	r2, [fp, #-36]
	add	r3, r2, r3
	ldr	r3, [r3]
	sub	r3, r3, #4
	ldr	r3, [r3]
	add	r2, r3, #1
	ldr	r3, [fp, #-40]
	lsl	r3, r3, #2
	ldr	r1, [fp, #-36]
	add	r3, r1, r3
	ldr	r3, [r3]
	sub	r3, r3, #8
	ldr	r3, [r3]
	cmp	r2, r3
	blt	.L2179
.L2177:
	ldr	r3, [fp, #-40]
	lsl	r3, r3, #2
	ldr	r2, [fp, #-36]
	add	r3, r2, r3
	mov	r2, #4
	mov	r1, #1
	mov	r0, r3
	bl	stbiw__sbgrowf
	nop
.L2179:
	ldr	r1, [fp, #-8]
	ldr	r3, [fp, #-40]
	lsl	r3, r3, #2
	ldr	r2, [fp, #-36]
	add	r3, r2, r3
	ldr	r0, [r3]
	ldr	r3, [fp, #-40]
	lsl	r3, r3, #2
	ldr	r2, [fp, #-36]
	add	r3, r2, r3
	ldr	r3, [r3]
	sub	r3, r3, #4
	ldr	r2, [r3]
	add	ip, r2, #1
	str	ip, [r3]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r0, r3
	ldr	r2, [fp, #-80]
	add	r2, r2, r1
	str	r2, [r3]
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	beq	.L2180
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	ldr	r2, [fp, #-80]
	add	r3, r2, r3
	mov	r0, r3
	bl	stbiw__zhash
	mov	r3, r0
	ubfx	r3, r3, #0, #14
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-40]
	lsl	r3, r3, #2
	ldr	r2, [fp, #-36]
	add	r3, r2, r3
	ldr	r3, [r3]
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-44]
	cmp	r3, #0
	beq	.L2181
	ldr	r3, [fp, #-44]
	ldr	r3, [r3, #-4]
	b	.L2182
.L2181:
	mov	r3, #0
.L2182:
	str	r3, [fp, #-48]
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L2183
.L2185:
	ldr	r3, [fp, #-8]
	sub	r3, r3, #32512
	sub	r3, r3, #254
	ldr	r2, [fp, #-12]
	lsl	r2, r2, #2
	ldr	r1, [fp, #-44]
	add	r2, r1, r2
	ldr	r1, [r2]
	ldr	r2, [fp, #-80]
	sub	r2, r1, r2
	cmp	r3, r2
	bgt	.L2184
	ldr	r3, [fp, #-12]
	lsl	r3, r3, #2
	ldr	r2, [fp, #-44]
	add	r3, r2, r3
	ldr	r0, [r3]
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	ldr	r2, [fp, #-80]
	add	r1, r2, r3
	ldr	r2, [fp, #-84]
	ldr	r3, [fp, #-8]
	sub	r3, r2, r3
	sub	r3, r3, #1
	mov	r2, r3
	bl	stbiw__zlib_countm
	mov	r3, r0
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-56]
	ldr	r3, [fp, #-16]
	cmp	r2, r3
	ble	.L2184
	mov	r3, #0
	str	r3, [fp, #-20]
	b	.L2180
.L2184:
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L2183:
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-48]
	cmp	r2, r3
	blt	.L2185
.L2180:
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	beq	.L2186
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-80]
	add	r2, r2, r3
	ldr	r3, [fp, #-20]
	sub	r3, r2, r3
	str	r3, [fp, #-60]
	ldr	r3, [fp, #-60]
	cmp	r3, #32768
	bge	.L2187
	ldr	r3, [fp, #-16]
	movw	r2, #258
	cmp	r3, r2
	ble	.L2230
.L2187:
	movw	r3, #:lower16:__PRETTY_FUNCTION__.11296
	movt	r3, #:upper16:__PRETTY_FUNCTION__.11296
	movw	r2, #922
	movw	r1, #:lower16:.LC20
	movt	r1, #:upper16:.LC20
	movw	r0, #:lower16:.LC29
	movt	r0, #:upper16:.LC29
	bl	__assert_fail
.L2230:
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L2189
.L2190:
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L2189:
	ldr	r3, [fp, #-12]
	add	r2, r3, #1
	movw	r3, #:lower16:lengthc.11269
	movt	r3, #:upper16:lengthc.11269
	lsl	r2, r2, #1
	add	r3, r3, r2
	ldrh	r3, [r3]
	mov	r2, r3
	ldr	r3, [fp, #-16]
	cmp	r3, r2
	bge	.L2190
	ldr	r3, [fp, #-12]
	cmn	r3, #113
	bge	.L2191
	ldr	r3, [fp, #-12]
	add	r3, r3, #304
	add	r3, r3, #1
	mov	r1, #8
	mov	r0, r3
	bl	stbiw__zlib_bitrev
	mov	r2, r0
	ldr	r3, [fp, #-68]
	lsl	r3, r2, r3
	mov	r2, r3
	ldr	r3, [fp, #-64]
	orr	r3, r2, r3
	str	r3, [fp, #-64]
	ldr	r3, [fp, #-68]
	add	r3, r3, #8
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-72]
	sub	r2, fp, #68
	sub	r1, fp, #64
	mov	r0, r3
	bl	stbiw__zlib_flushf
	mov	r3, r0
	str	r3, [fp, #-72]
	b	.L2192
.L2191:
	ldr	r3, [fp, #-12]
	cmn	r3, #1
	bge	.L2193
	ldr	r3, [fp, #-12]
	add	r3, r3, #512
	add	r3, r3, #1
	mov	r1, #9
	mov	r0, r3
	bl	stbiw__zlib_bitrev
	mov	r2, r0
	ldr	r3, [fp, #-68]
	lsl	r3, r2, r3
	mov	r2, r3
	ldr	r3, [fp, #-64]
	orr	r3, r2, r3
	str	r3, [fp, #-64]
	ldr	r3, [fp, #-68]
	add	r3, r3, #9
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-72]
	sub	r2, fp, #68
	sub	r1, fp, #64
	mov	r0, r3
	bl	stbiw__zlib_flushf
	mov	r3, r0
	str	r3, [fp, #-72]
	b	.L2192
.L2193:
	ldr	r3, [fp, #-12]
	cmp	r3, #22
	bgt	.L2195
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	mov	r1, #7
	mov	r0, r3
	bl	stbiw__zlib_bitrev
	mov	r2, r0
	ldr	r3, [fp, #-68]
	lsl	r3, r2, r3
	mov	r2, r3
	ldr	r3, [fp, #-64]
	orr	r3, r2, r3
	str	r3, [fp, #-64]
	ldr	r3, [fp, #-68]
	add	r3, r3, #7
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-72]
	sub	r2, fp, #68
	sub	r1, fp, #64
	mov	r0, r3
	bl	stbiw__zlib_flushf
	mov	r3, r0
	str	r3, [fp, #-72]
	b	.L2192
.L2195:
	ldr	r3, [fp, #-12]
	add	r3, r3, #169
	mov	r1, #8
	mov	r0, r3
	bl	stbiw__zlib_bitrev
	mov	r2, r0
	ldr	r3, [fp, #-68]
	lsl	r3, r2, r3
	mov	r2, r3
	ldr	r3, [fp, #-64]
	orr	r3, r2, r3
	str	r3, [fp, #-64]
	ldr	r3, [fp, #-68]
	add	r3, r3, #8
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-72]
	sub	r2, fp, #68
	sub	r1, fp, #64
	mov	r0, r3
	bl	stbiw__zlib_flushf
	mov	r3, r0
	str	r3, [fp, #-72]
.L2192:
	movw	r3, #:lower16:lengtheb.11270
	movt	r3, #:upper16:lengtheb.11270
	ldr	r2, [fp, #-12]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L2197
	movw	r3, #:lower16:lengthc.11269
	movt	r3, #:upper16:lengthc.11269
	ldr	r2, [fp, #-12]
	lsl	r2, r2, #1
	add	r3, r3, r2
	ldrh	r3, [r3]
	mov	r2, r3
	ldr	r3, [fp, #-16]
	sub	r2, r3, r2
	ldr	r3, [fp, #-68]
	lsl	r3, r2, r3
	mov	r2, r3
	ldr	r3, [fp, #-64]
	orr	r3, r2, r3
	str	r3, [fp, #-64]
	movw	r3, #:lower16:lengtheb.11270
	movt	r3, #:upper16:lengtheb.11270
	ldr	r2, [fp, #-12]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [fp, #-68]
	add	r3, r2, r3
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-72]
	sub	r2, fp, #68
	sub	r1, fp, #64
	mov	r0, r3
	bl	stbiw__zlib_flushf
	mov	r3, r0
	str	r3, [fp, #-72]
.L2197:
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L2198
.L2199:
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L2198:
	ldr	r3, [fp, #-12]
	add	r2, r3, #1
	movw	r3, #:lower16:distc.11271
	movt	r3, #:upper16:distc.11271
	lsl	r2, r2, #1
	add	r3, r3, r2
	ldrh	r3, [r3]
	mov	r2, r3
	ldr	r3, [fp, #-60]
	cmp	r3, r2
	bge	.L2199
	mov	r1, #5
	ldr	r0, [fp, #-12]
	bl	stbiw__zlib_bitrev
	mov	r2, r0
	ldr	r3, [fp, #-68]
	lsl	r3, r2, r3
	mov	r2, r3
	ldr	r3, [fp, #-64]
	orr	r3, r2, r3
	str	r3, [fp, #-64]
	ldr	r3, [fp, #-68]
	add	r3, r3, #5
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-72]
	sub	r2, fp, #68
	sub	r1, fp, #64
	mov	r0, r3
	bl	stbiw__zlib_flushf
	mov	r3, r0
	str	r3, [fp, #-72]
	movw	r3, #:lower16:disteb.11272
	movt	r3, #:upper16:disteb.11272
	ldr	r2, [fp, #-12]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #0
	beq	.L2200
	movw	r3, #:lower16:distc.11271
	movt	r3, #:upper16:distc.11271
	ldr	r2, [fp, #-12]
	lsl	r2, r2, #1
	add	r3, r3, r2
	ldrh	r3, [r3]
	mov	r2, r3
	ldr	r3, [fp, #-60]
	sub	r2, r3, r2
	ldr	r3, [fp, #-68]
	lsl	r3, r2, r3
	mov	r2, r3
	ldr	r3, [fp, #-64]
	orr	r3, r2, r3
	str	r3, [fp, #-64]
	movw	r3, #:lower16:disteb.11272
	movt	r3, #:upper16:disteb.11272
	ldr	r2, [fp, #-12]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [fp, #-68]
	add	r3, r2, r3
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-72]
	sub	r2, fp, #68
	sub	r1, fp, #64
	mov	r0, r3
	bl	stbiw__zlib_flushf
	mov	r3, r0
	str	r3, [fp, #-72]
.L2200:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-16]
	add	r3, r2, r3
	str	r3, [fp, #-8]
	b	.L2170
.L2186:
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-80]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #143
	bhi	.L2201
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-80]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	add	r3, r3, #48
	mov	r1, #8
	mov	r0, r3
	bl	stbiw__zlib_bitrev
	mov	r2, r0
	ldr	r3, [fp, #-68]
	lsl	r3, r2, r3
	mov	r2, r3
	ldr	r3, [fp, #-64]
	orr	r3, r2, r3
	str	r3, [fp, #-64]
	ldr	r3, [fp, #-68]
	add	r3, r3, #8
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-72]
	sub	r2, fp, #68
	sub	r1, fp, #64
	mov	r0, r3
	bl	stbiw__zlib_flushf
	mov	r3, r0
	str	r3, [fp, #-72]
	b	.L2202
.L2201:
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-80]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	add	r3, r3, #256
	mov	r1, #9
	mov	r0, r3
	bl	stbiw__zlib_bitrev
	mov	r2, r0
	ldr	r3, [fp, #-68]
	lsl	r3, r2, r3
	mov	r2, r3
	ldr	r3, [fp, #-64]
	orr	r3, r2, r3
	str	r3, [fp, #-64]
	ldr	r3, [fp, #-68]
	add	r3, r3, #9
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-72]
	sub	r2, fp, #68
	sub	r1, fp, #64
	mov	r0, r3
	bl	stbiw__zlib_flushf
	mov	r3, r0
	str	r3, [fp, #-72]
.L2202:
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L2170:
	ldr	r3, [fp, #-84]
	sub	r3, r3, #3
	ldr	r2, [fp, #-8]
	cmp	r2, r3
	blt	.L2203
	b	.L2204
.L2207:
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-80]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #143
	bhi	.L2205
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-80]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	add	r3, r3, #48
	mov	r1, #8
	mov	r0, r3
	bl	stbiw__zlib_bitrev
	mov	r2, r0
	ldr	r3, [fp, #-68]
	lsl	r3, r2, r3
	mov	r2, r3
	ldr	r3, [fp, #-64]
	orr	r3, r2, r3
	str	r3, [fp, #-64]
	ldr	r3, [fp, #-68]
	add	r3, r3, #8
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-72]
	sub	r2, fp, #68
	sub	r1, fp, #64
	mov	r0, r3
	bl	stbiw__zlib_flushf
	mov	r3, r0
	str	r3, [fp, #-72]
	b	.L2206
.L2205:
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-80]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	add	r3, r3, #256
	mov	r1, #9
	mov	r0, r3
	bl	stbiw__zlib_bitrev
	mov	r2, r0
	ldr	r3, [fp, #-68]
	lsl	r3, r2, r3
	mov	r2, r3
	ldr	r3, [fp, #-64]
	orr	r3, r2, r3
	str	r3, [fp, #-64]
	ldr	r3, [fp, #-68]
	add	r3, r3, #9
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-72]
	sub	r2, fp, #68
	sub	r1, fp, #64
	mov	r0, r3
	bl	stbiw__zlib_flushf
	mov	r3, r0
	str	r3, [fp, #-72]
.L2206:
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L2204:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-84]
	cmp	r2, r3
	blt	.L2207
	mov	r1, #7
	mov	r0, #0
	bl	stbiw__zlib_bitrev
	mov	r2, r0
	ldr	r3, [fp, #-68]
	lsl	r3, r2, r3
	mov	r2, r3
	ldr	r3, [fp, #-64]
	orr	r3, r2, r3
	str	r3, [fp, #-64]
	ldr	r3, [fp, #-68]
	add	r3, r3, #7
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-72]
	sub	r2, fp, #68
	sub	r1, fp, #64
	mov	r0, r3
	bl	stbiw__zlib_flushf
	mov	r3, r0
	str	r3, [fp, #-72]
	b	.L2208
.L2209:
	ldr	r3, [fp, #-64]
	str	r3, [fp, #-64]
	ldr	r3, [fp, #-68]
	add	r3, r3, #1
	str	r3, [fp, #-68]
	ldr	r3, [fp, #-72]
	sub	r2, fp, #68
	sub	r1, fp, #64
	mov	r0, r3
	bl	stbiw__zlib_flushf
	mov	r3, r0
	str	r3, [fp, #-72]
.L2208:
	ldr	r3, [fp, #-68]
	cmp	r3, #0
	bne	.L2209
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L2210
.L2212:
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #2
	ldr	r2, [fp, #-36]
	add	r3, r2, r3
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L2211
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #2
	ldr	r2, [fp, #-36]
	add	r3, r2, r3
	ldr	r3, [r3]
	sub	r3, r3, #8
	mov	r0, r3
	bl	free
.L2211:
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L2210:
	ldr	r3, [fp, #-8]
	cmp	r3, #16384
	blt	.L2212
	ldr	r0, [fp, #-36]
	bl	free
	mov	r3, #1
	str	r3, [fp, #-24]
	mov	r3, #0
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-84]
	movw	r2, #43439
	movt	r2, 24174
	smull	r1, r2, r2, r3
	asr	r1, r2, #11
	asr	r2, r3, #31
	sub	r2, r1, r2
	movw	r1, #5552
	mul	r2, r1, r2
	sub	r3, r3, r2
	str	r3, [fp, #-32]
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L2213
.L2216:
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L2214
.L2215:
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-8]
	add	r3, r2, r3
	mov	r2, r3
	ldr	r3, [fp, #-80]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [fp, #-24]
	add	r3, r3, r2
	str	r3, [fp, #-24]
	ldr	r2, [fp, #-28]
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L2214:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-32]
	cmp	r2, r3
	blt	.L2215
	ldr	r1, [fp, #-24]
	movw	r3, #32881
	movt	r3, 32775
	umull	r2, r3, r3, r1
	lsr	r2, r3, #15
	mov	r3, r2
	lsl	r3, r3, #12
	sub	r3, r3, r2
	lsl	r3, r3, #4
	add	r3, r3, r2
	sub	r3, r1, r3
	str	r3, [fp, #-24]
	ldr	r1, [fp, #-28]
	movw	r3, #32881
	movt	r3, 32775
	umull	r2, r3, r3, r1
	lsr	r2, r3, #15
	mov	r3, r2
	lsl	r3, r3, #12
	sub	r3, r3, r2
	lsl	r3, r3, #4
	add	r3, r3, r2
	sub	r3, r1, r3
	str	r3, [fp, #-28]
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-32]
	add	r3, r2, r3
	str	r3, [fp, #-12]
	movw	r3, #5552
	str	r3, [fp, #-32]
.L2213:
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-84]
	cmp	r2, r3
	blt	.L2216
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L2217
	ldr	r3, [fp, #-72]
	sub	r3, r3, #4
	ldr	r3, [r3]
	add	r2, r3, #1
	ldr	r3, [fp, #-72]
	sub	r3, r3, #8
	ldr	r3, [r3]
	cmp	r2, r3
	blt	.L2219
.L2217:
	sub	r3, fp, #72
	mov	r2, #1
	mov	r1, #1
	mov	r0, r3
	bl	stbiw__sbgrowf
	nop
.L2219:
	ldr	r3, [fp, #-28]
	lsr	ip, r3, #8
	ldr	r1, [fp, #-72]
	ldr	r3, [fp, #-72]
	sub	r3, r3, #4
	ldr	r2, [r3]
	add	r0, r2, #1
	str	r0, [r3]
	mov	r3, r2
	add	r3, r1, r3
	uxtb	r2, ip
	strb	r2, [r3]
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L2220
	ldr	r3, [fp, #-72]
	sub	r3, r3, #4
	ldr	r3, [r3]
	add	r2, r3, #1
	ldr	r3, [fp, #-72]
	sub	r3, r3, #8
	ldr	r3, [r3]
	cmp	r2, r3
	blt	.L2222
.L2220:
	sub	r3, fp, #72
	mov	r2, #1
	mov	r1, #1
	mov	r0, r3
	bl	stbiw__sbgrowf
	nop
.L2222:
	ldr	r1, [fp, #-72]
	ldr	r3, [fp, #-72]
	sub	r3, r3, #4
	ldr	r2, [r3]
	add	r0, r2, #1
	str	r0, [r3]
	mov	r3, r2
	add	r3, r1, r3
	ldr	r2, [fp, #-28]
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L2223
	ldr	r3, [fp, #-72]
	sub	r3, r3, #4
	ldr	r3, [r3]
	add	r2, r3, #1
	ldr	r3, [fp, #-72]
	sub	r3, r3, #8
	ldr	r3, [r3]
	cmp	r2, r3
	blt	.L2225
.L2223:
	sub	r3, fp, #72
	mov	r2, #1
	mov	r1, #1
	mov	r0, r3
	bl	stbiw__sbgrowf
	nop
.L2225:
	ldr	r3, [fp, #-24]
	lsr	ip, r3, #8
	ldr	r1, [fp, #-72]
	ldr	r3, [fp, #-72]
	sub	r3, r3, #4
	ldr	r2, [r3]
	add	r0, r2, #1
	str	r0, [r3]
	mov	r3, r2
	add	r3, r1, r3
	uxtb	r2, ip
	strb	r2, [r3]
	ldr	r3, [fp, #-72]
	cmp	r3, #0
	beq	.L2226
	ldr	r3, [fp, #-72]
	sub	r3, r3, #4
	ldr	r3, [r3]
	add	r2, r3, #1
	ldr	r3, [fp, #-72]
	sub	r3, r3, #8
	ldr	r3, [r3]
	cmp	r2, r3
	blt	.L2228
.L2226:
	sub	r3, fp, #72
	mov	r2, #1
	mov	r1, #1
	mov	r0, r3
	bl	stbiw__sbgrowf
	nop
.L2228:
	ldr	r1, [fp, #-72]
	ldr	r3, [fp, #-72]
	sub	r3, r3, #4
	ldr	r2, [r3]
	add	r0, r2, #1
	str	r0, [r3]
	mov	r3, r2
	add	r3, r1, r3
	ldr	r2, [fp, #-24]
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [fp, #-72]
	ldr	r2, [r3, #-4]
	ldr	r3, [fp, #-88]
	str	r2, [r3]
	ldr	r3, [fp, #-72]
	sub	r0, r3, #8
	ldr	r1, [fp, #-72]
	ldr	r3, [fp, #-88]
	ldr	r3, [r3]
	mov	r2, r3
	bl	memmove
	ldr	r3, [fp, #-72]
	sub	r3, r3, #8
.L2229:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi_zlib_compress, .-stbi_zlib_compress
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbiw__crc32, %function
stbiw__crc32:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	mvn	r3, #0
	str	r3, [fp, #-8]
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L2232
.L2233:
	ldr	r3, [fp, #-8]
	lsr	r2, r3, #8
	ldr	r3, [fp, #-12]
	ldr	r1, [fp, #-16]
	add	r3, r1, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r3, [fp, #-8]
	uxtb	r3, r3
	eor	r1, r1, r3
	movw	r3, #:lower16:crc_table.11328
	movt	r3, #:upper16:crc_table.11328
	ldr	r3, [r3, r1, lsl #2]
	eor	r3, r3, r2
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L2232:
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-20]
	cmp	r2, r3
	blt	.L2233
	ldr	r3, [fp, #-8]
	mvn	r3, r3
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	stbiw__crc32, .-stbiw__crc32
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbiw__wpcrc, %function
stbiw__wpcrc:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	ldr	r3, [fp, #-16]
	ldr	r2, [r3]
	ldr	r1, [fp, #-20]
	movw	r3, #65532
	movt	r3, 65535
	sub	r3, r3, r1
	add	r2, r2, r3
	ldr	r3, [fp, #-20]
	add	r3, r3, #4
	mov	r1, r3
	mov	r0, r2
	bl	stbiw__crc32
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	lsr	r2, r3, #24
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [fp, #-8]
	lsr	r2, r3, #16
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	add	r3, r3, #1
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [fp, #-8]
	lsr	r2, r3, #8
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	add	r3, r3, #2
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	add	r3, r3, #3
	ldr	r2, [fp, #-8]
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [fp, #-16]
	ldr	r3, [r3]
	add	r2, r3, #4
	ldr	r3, [fp, #-16]
	str	r2, [r3]
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbiw__wpcrc, .-stbiw__wpcrc
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbiw__paeth, %function
stbiw__paeth:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #36
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	str	r2, [fp, #-32]
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-28]
	add	r2, r2, r3
	ldr	r3, [fp, #-32]
	sub	r3, r2, r3
	str	r3, [fp, #-8]
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-24]
	sub	r3, r2, r3
	cmp	r3, #0
	rsblt	r3, r3, #0
	str	r3, [fp, #-12]
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-28]
	sub	r3, r2, r3
	cmp	r3, #0
	rsblt	r3, r3, #0
	str	r3, [fp, #-16]
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-32]
	sub	r3, r2, r3
	cmp	r3, #0
	rsblt	r3, r3, #0
	str	r3, [fp, #-20]
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-16]
	cmp	r2, r3
	bgt	.L2237
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-20]
	cmp	r2, r3
	bgt	.L2237
	ldr	r3, [fp, #-24]
	uxtb	r3, r3
	b	.L2238
.L2237:
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-20]
	cmp	r2, r3
	bgt	.L2239
	ldr	r3, [fp, #-28]
	uxtb	r3, r3
	b	.L2238
.L2239:
	ldr	r3, [fp, #-32]
	uxtb	r3, r3
.L2238:
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	stbiw__paeth, .-stbiw__paeth
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbiw__encode_png_line, %function
stbiw__encode_png_line:
	@ args = 16, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, fp, lr}
	add	fp, sp, #8
	sub	sp, sp, #44
	str	r0, [fp, #-40]
	str	r1, [fp, #-44]
	str	r2, [fp, #-48]
	str	r3, [fp, #-52]
	ldr	r3, [fp, #4]
	cmp	r3, #0
	beq	.L2241
	movw	r3, #:lower16:mapping.11358
	movt	r3, #:upper16:mapping.11358
	b	.L2242
.L2241:
	movw	r3, #:lower16:firstmap.11359
	movt	r3, #:upper16:firstmap.11359
.L2242:
	str	r3, [fp, #-20]
	ldr	r3, [fp, #12]
	lsl	r3, r3, #2
	ldr	r2, [fp, #-20]
	add	r3, r2, r3
	ldr	r3, [r3]
	str	r3, [fp, #-24]
	movw	r3, #:lower16:stbi__flip_vertically_on_write
	movt	r3, #:upper16:stbi__flip_vertically_on_write
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L2243
	ldr	r3, [fp, #-52]
	sub	r2, r3, #1
	ldr	r3, [fp, #4]
	sub	r3, r2, r3
	b	.L2244
.L2243:
	ldr	r3, [fp, #4]
.L2244:
	ldr	r2, [fp, #-44]
	mul	r3, r2, r3
	mov	r2, r3
	ldr	r3, [fp, #-40]
	add	r3, r3, r2
	str	r3, [fp, #-28]
	movw	r3, #:lower16:stbi__flip_vertically_on_write
	movt	r3, #:upper16:stbi__flip_vertically_on_write
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L2245
	ldr	r3, [fp, #-44]
	rsb	r3, r3, #0
	b	.L2246
.L2245:
	ldr	r3, [fp, #-44]
.L2246:
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	bne	.L2247
	ldr	r3, [fp, #-48]
	ldr	r2, [fp, #8]
	mul	r3, r2, r3
	mov	r2, r3
	ldr	r1, [fp, #-28]
	ldr	r0, [fp, #16]
	bl	memcpy
	b	.L2240
.L2247:
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L2249
.L2258:
	ldr	r3, [fp, #-24]
	sub	r3, r3, #1
	cmp	r3, #5
	ldrls	pc, [pc, r3, asl #2]
	b	.L2250
.L2252:
	.word	.L2257
	.word	.L2256
	.word	.L2255
	.word	.L2254
	.word	.L2253
	.word	.L2251
.L2257:
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-28]
	add	r3, r2, r3
	ldrb	r1, [r3]	@ zero_extendqisi2
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #16]
	add	r3, r2, r3
	sxtb	r2, r1
	strb	r2, [r3]
	b	.L2250
.L2256:
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-28]
	add	r3, r2, r3
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r1, [fp, #-16]
	ldr	r3, [fp, #-32]
	sub	r3, r1, r3
	mov	r1, r3
	ldr	r3, [fp, #-28]
	add	r3, r3, r1
	ldrb	r3, [r3]	@ zero_extendqisi2
	sub	r3, r2, r3
	uxtb	r1, r3
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #16]
	add	r3, r2, r3
	sxtb	r2, r1
	strb	r2, [r3]
	b	.L2250
.L2255:
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-28]
	add	r3, r2, r3
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r1, [fp, #-16]
	ldr	r3, [fp, #-32]
	sub	r3, r1, r3
	mov	r1, r3
	ldr	r3, [fp, #-28]
	add	r3, r3, r1
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsr	r3, r3, #1
	uxtb	r3, r3
	sub	r3, r2, r3
	uxtb	r1, r3
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #16]
	add	r3, r2, r3
	sxtb	r2, r1
	strb	r2, [r3]
	b	.L2250
.L2254:
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-28]
	add	r3, r2, r3
	ldrb	r4, [r3]	@ zero_extendqisi2
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-32]
	sub	r3, r2, r3
	mov	r2, r3
	ldr	r3, [fp, #-28]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, #0
	mov	r1, r3
	mov	r0, #0
	bl	stbiw__paeth
	mov	r3, r0
	sub	r3, r4, r3
	uxtb	r1, r3
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #16]
	add	r3, r2, r3
	sxtb	r2, r1
	strb	r2, [r3]
	b	.L2250
.L2253:
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-28]
	add	r3, r2, r3
	ldrb	r1, [r3]	@ zero_extendqisi2
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #16]
	add	r3, r2, r3
	sxtb	r2, r1
	strb	r2, [r3]
	b	.L2250
.L2251:
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-28]
	add	r3, r2, r3
	ldrb	r1, [r3]	@ zero_extendqisi2
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #16]
	add	r3, r2, r3
	sxtb	r2, r1
	strb	r2, [r3]
	nop
.L2250:
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L2249:
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #8]
	cmp	r2, r3
	blt	.L2258
	ldr	r3, [fp, #-24]
	sub	r3, r3, #1
	cmp	r3, #5
	ldrls	pc, [pc, r3, asl #2]
	b	.L2240
.L2260:
	.word	.L2265
	.word	.L2264
	.word	.L2263
	.word	.L2262
	.word	.L2261
	.word	.L2259
.L2265:
	ldr	r3, [fp, #8]
	str	r3, [fp, #-16]
	b	.L2266
.L2267:
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-28]
	add	r3, r2, r3
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r1, [fp, #-16]
	ldr	r3, [fp, #8]
	sub	r3, r1, r3
	mov	r1, r3
	ldr	r3, [fp, #-28]
	add	r3, r3, r1
	ldrb	r3, [r3]	@ zero_extendqisi2
	sub	r3, r2, r3
	uxtb	r1, r3
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #16]
	add	r3, r2, r3
	sxtb	r2, r1
	strb	r2, [r3]
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L2266:
	ldr	r3, [fp, #-48]
	ldr	r2, [fp, #8]
	mul	r3, r2, r3
	ldr	r2, [fp, #-16]
	cmp	r2, r3
	blt	.L2267
	b	.L2240
.L2264:
	ldr	r3, [fp, #8]
	str	r3, [fp, #-16]
	b	.L2268
.L2269:
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-28]
	add	r3, r2, r3
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r1, [fp, #-16]
	ldr	r3, [fp, #-32]
	sub	r3, r1, r3
	mov	r1, r3
	ldr	r3, [fp, #-28]
	add	r3, r3, r1
	ldrb	r3, [r3]	@ zero_extendqisi2
	sub	r3, r2, r3
	uxtb	r1, r3
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #16]
	add	r3, r2, r3
	sxtb	r2, r1
	strb	r2, [r3]
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L2268:
	ldr	r3, [fp, #-48]
	ldr	r2, [fp, #8]
	mul	r3, r2, r3
	ldr	r2, [fp, #-16]
	cmp	r2, r3
	blt	.L2269
	b	.L2240
.L2263:
	ldr	r3, [fp, #8]
	str	r3, [fp, #-16]
	b	.L2270
.L2271:
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-28]
	add	r3, r2, r3
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r1, [fp, #-16]
	ldr	r3, [fp, #8]
	sub	r3, r1, r3
	mov	r1, r3
	ldr	r3, [fp, #-28]
	add	r3, r3, r1
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	ldr	r1, [fp, #-16]
	ldr	r3, [fp, #-32]
	sub	r3, r1, r3
	mov	r1, r3
	ldr	r3, [fp, #-28]
	add	r3, r3, r1
	ldrb	r3, [r3]	@ zero_extendqisi2
	add	r3, r0, r3
	asr	r3, r3, #1
	uxtb	r3, r3
	sub	r3, r2, r3
	uxtb	r1, r3
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #16]
	add	r3, r2, r3
	sxtb	r2, r1
	strb	r2, [r3]
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L2270:
	ldr	r3, [fp, #-48]
	ldr	r2, [fp, #8]
	mul	r3, r2, r3
	ldr	r2, [fp, #-16]
	cmp	r2, r3
	blt	.L2271
	b	.L2240
.L2262:
	ldr	r3, [fp, #8]
	str	r3, [fp, #-16]
	b	.L2272
.L2273:
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-28]
	add	r3, r2, r3
	ldrb	r4, [r3]	@ zero_extendqisi2
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #8]
	sub	r3, r2, r3
	mov	r2, r3
	ldr	r3, [fp, #-28]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-32]
	sub	r3, r2, r3
	mov	r2, r3
	ldr	r3, [fp, #-28]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-32]
	sub	r2, r2, r3
	ldr	r3, [fp, #8]
	sub	r3, r2, r3
	mov	r2, r3
	ldr	r3, [fp, #-28]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	bl	stbiw__paeth
	mov	r3, r0
	sub	r3, r4, r3
	uxtb	r1, r3
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #16]
	add	r3, r2, r3
	sxtb	r2, r1
	strb	r2, [r3]
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L2272:
	ldr	r3, [fp, #-48]
	ldr	r2, [fp, #8]
	mul	r3, r2, r3
	ldr	r2, [fp, #-16]
	cmp	r2, r3
	blt	.L2273
	b	.L2240
.L2261:
	ldr	r3, [fp, #8]
	str	r3, [fp, #-16]
	b	.L2274
.L2275:
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-28]
	add	r3, r2, r3
	ldrb	r2, [r3]	@ zero_extendqisi2
	ldr	r1, [fp, #-16]
	ldr	r3, [fp, #8]
	sub	r3, r1, r3
	mov	r1, r3
	ldr	r3, [fp, #-28]
	add	r3, r3, r1
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsr	r3, r3, #1
	uxtb	r3, r3
	sub	r3, r2, r3
	uxtb	r1, r3
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #16]
	add	r3, r2, r3
	sxtb	r2, r1
	strb	r2, [r3]
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L2274:
	ldr	r3, [fp, #-48]
	ldr	r2, [fp, #8]
	mul	r3, r2, r3
	ldr	r2, [fp, #-16]
	cmp	r2, r3
	blt	.L2275
	b	.L2240
.L2259:
	ldr	r3, [fp, #8]
	str	r3, [fp, #-16]
	b	.L2276
.L2277:
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-28]
	add	r3, r2, r3
	ldrb	r4, [r3]	@ zero_extendqisi2
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #8]
	sub	r3, r2, r3
	mov	r2, r3
	ldr	r3, [fp, #-28]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, #0
	mov	r1, #0
	mov	r0, r3
	bl	stbiw__paeth
	mov	r3, r0
	sub	r3, r4, r3
	uxtb	r1, r3
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #16]
	add	r3, r2, r3
	sxtb	r2, r1
	strb	r2, [r3]
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L2276:
	ldr	r3, [fp, #-48]
	ldr	r2, [fp, #8]
	mul	r3, r2, r3
	ldr	r2, [fp, #-16]
	cmp	r2, r3
	blt	.L2277
	nop
.L2240:
	sub	sp, fp, #8
	@ sp needed
	pop	{r4, fp, pc}
	.size	stbiw__encode_png_line, .-stbiw__encode_png_line
	.section	.rodata
	.align	2
.LC30:
	.ascii	"o == out + *out_len\000"
	.align	2
.LC6:
	.word	-1
	.word	0
	.word	4
	.word	2
	.word	6
	.align	2
.LC7:
	.byte	-119
	.byte	80
	.byte	78
	.byte	71
	.byte	13
	.byte	10
	.byte	26
	.byte	10
	.text
	.align	2
	.global	stbi_write_png_to_mem
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi_write_png_to_mem, %function
stbi_write_png_to_mem:
	@ args = 8, pretend = 0, frame = 96
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #112
	str	r0, [fp, #-88]
	str	r1, [fp, #-92]
	str	r2, [fp, #-96]
	str	r3, [fp, #-100]
	movw	r3, #:lower16:stbi_write_force_png_filter
	movt	r3, #:upper16:stbi_write_force_png_filter
	ldr	r3, [r3]
	str	r3, [fp, #-8]
	movw	r3, #:lower16:.LC6
	movt	r3, #:upper16:.LC6
	sub	ip, fp, #68
	mov	lr, r3
	ldmia	lr!, {r0, r1, r2, r3}
	stmia	ip!, {r0, r1, r2, r3}
	ldr	r3, [lr]
	str	r3, [ip]
	movw	r3, #:lower16:.LC7
	movt	r3, #:upper16:.LC7
	sub	r2, fp, #76
	ldm	r3, {r0, r1}
	stm	r2, {r0, r1}
	ldr	r3, [fp, #-92]
	cmp	r3, #0
	bne	.L2279
	ldr	r3, [fp, #-96]
	ldr	r2, [fp, #4]
	mul	r3, r2, r3
	str	r3, [fp, #-92]
.L2279:
	ldr	r3, [fp, #-8]
	cmp	r3, #4
	ble	.L2280
	mvn	r3, #0
	str	r3, [fp, #-8]
.L2280:
	ldr	r3, [fp, #-96]
	ldr	r2, [fp, #4]
	mul	r3, r2, r3
	add	r3, r3, #1
	ldr	r2, [fp, #-100]
	mul	r3, r2, r3
	mov	r0, r3
	bl	malloc
	mov	r3, r0
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-36]
	cmp	r3, #0
	bne	.L2281
	mov	r3, #0
	b	.L2296
.L2281:
	ldr	r3, [fp, #-96]
	ldr	r2, [fp, #4]
	mul	r3, r2, r3
	mov	r0, r3
	bl	malloc
	mov	r3, r0
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-40]
	cmp	r3, #0
	bne	.L2283
	ldr	r0, [fp, #-36]
	bl	free
	mov	r3, #0
	b	.L2296
.L2283:
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L2284
.L2292:
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	blt	.L2285
	ldr	r3, [fp, #-8]
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-40]
	str	r3, [sp, #12]
	ldr	r3, [fp, #-8]
	str	r3, [sp, #8]
	ldr	r3, [fp, #4]
	str	r3, [sp, #4]
	ldr	r3, [fp, #-12]
	str	r3, [sp]
	ldr	r3, [fp, #-100]
	ldr	r2, [fp, #-96]
	ldr	r1, [fp, #-92]
	ldr	r0, [fp, #-88]
	bl	stbiw__encode_png_line
	b	.L2286
.L2285:
	mov	r3, #0
	str	r3, [fp, #-20]
	mvn	r3, #-2147483648
	str	r3, [fp, #-24]
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L2287
.L2291:
	ldr	r3, [fp, #-40]
	str	r3, [sp, #12]
	ldr	r3, [fp, #-16]
	str	r3, [sp, #8]
	ldr	r3, [fp, #4]
	str	r3, [sp, #4]
	ldr	r3, [fp, #-12]
	str	r3, [sp]
	ldr	r3, [fp, #-100]
	ldr	r2, [fp, #-96]
	ldr	r1, [fp, #-92]
	ldr	r0, [fp, #-88]
	bl	stbiw__encode_png_line
	mov	r3, #0
	str	r3, [fp, #-28]
	mov	r3, #0
	str	r3, [fp, #-32]
	b	.L2288
.L2289:
	ldr	r3, [fp, #-32]
	ldr	r2, [fp, #-40]
	add	r3, r2, r3
	ldrsb	r3, [r3]
	cmp	r3, #0
	rsblt	r3, r3, #0
	ldr	r2, [fp, #-28]
	add	r3, r2, r3
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-32]
	add	r3, r3, #1
	str	r3, [fp, #-32]
.L2288:
	ldr	r3, [fp, #-96]
	ldr	r2, [fp, #4]
	mul	r3, r2, r3
	ldr	r2, [fp, #-32]
	cmp	r2, r3
	blt	.L2289
	ldr	r2, [fp, #-28]
	ldr	r3, [fp, #-24]
	cmp	r2, r3
	bge	.L2290
	ldr	r3, [fp, #-28]
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-20]
.L2290:
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L2287:
	ldr	r3, [fp, #-16]
	cmp	r3, #4
	ble	.L2291
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-20]
	cmp	r2, r3
	beq	.L2286
	ldr	r3, [fp, #-40]
	str	r3, [sp, #12]
	ldr	r3, [fp, #-20]
	str	r3, [sp, #8]
	ldr	r3, [fp, #4]
	str	r3, [sp, #4]
	ldr	r3, [fp, #-12]
	str	r3, [sp]
	ldr	r3, [fp, #-100]
	ldr	r2, [fp, #-96]
	ldr	r1, [fp, #-92]
	ldr	r0, [fp, #-88]
	bl	stbiw__encode_png_line
	ldr	r3, [fp, #-20]
	str	r3, [fp, #-16]
.L2286:
	ldr	r3, [fp, #-96]
	ldr	r2, [fp, #4]
	mul	r3, r2, r3
	add	r3, r3, #1
	ldr	r2, [fp, #-12]
	mul	r3, r2, r3
	mov	r2, r3
	ldr	r3, [fp, #-36]
	add	r3, r3, r2
	ldr	r2, [fp, #-16]
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [fp, #-96]
	ldr	r2, [fp, #4]
	mul	r3, r2, r3
	add	r3, r3, #1
	ldr	r2, [fp, #-12]
	mul	r3, r2, r3
	add	r3, r3, #1
	ldr	r2, [fp, #-36]
	add	r0, r2, r3
	ldr	r3, [fp, #-96]
	ldr	r2, [fp, #4]
	mul	r3, r2, r3
	mov	r2, r3
	ldr	r1, [fp, #-40]
	bl	memmove
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L2284:
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-100]
	cmp	r2, r3
	blt	.L2292
	ldr	r0, [fp, #-40]
	bl	free
	ldr	r3, [fp, #-96]
	ldr	r2, [fp, #4]
	mul	r3, r2, r3
	add	r3, r3, #1
	ldr	r2, [fp, #-100]
	mul	r1, r2, r3
	movw	r3, #:lower16:stbi_write_png_compression_level
	movt	r3, #:upper16:stbi_write_png_compression_level
	ldr	r3, [r3]
	sub	r2, fp, #84
	ldr	r0, [fp, #-36]
	bl	stbi_zlib_compress
	str	r0, [fp, #-44]
	ldr	r0, [fp, #-36]
	bl	free
	ldr	r3, [fp, #-44]
	cmp	r3, #0
	bne	.L2293
	mov	r3, #0
	b	.L2296
.L2293:
	ldr	r3, [fp, #-84]
	add	r3, r3, #57
	mov	r0, r3
	bl	malloc
	mov	r3, r0
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-48]
	cmp	r3, #0
	bne	.L2294
	mov	r3, #0
	b	.L2296
.L2294:
	ldr	r3, [fp, #-84]
	add	r2, r3, #57
	ldr	r3, [fp, #8]
	str	r2, [r3]
	ldr	r3, [fp, #-48]
	str	r3, [fp, #-80]
	ldr	r3, [fp, #-80]
	sub	r1, fp, #76
	mov	r2, #8
	mov	r0, r3
	bl	memmove
	ldr	r3, [fp, #-80]
	add	r3, r3, #8
	str	r3, [fp, #-80]
	ldr	r3, [fp, #-80]
	mov	r2, #0
	strb	r2, [r3]
	ldr	r3, [fp, #-80]
	add	r3, r3, #1
	mov	r2, #0
	strb	r2, [r3]
	ldr	r3, [fp, #-80]
	add	r3, r3, #2
	mov	r2, #0
	strb	r2, [r3]
	ldr	r3, [fp, #-80]
	add	r3, r3, #3
	mov	r2, #13
	strb	r2, [r3]
	ldr	r3, [fp, #-80]
	add	r3, r3, #4
	str	r3, [fp, #-80]
	ldr	r3, [fp, #-80]
	mov	r2, #73
	strb	r2, [r3]
	ldr	r3, [fp, #-80]
	add	r3, r3, #1
	mov	r2, #72
	strb	r2, [r3]
	ldr	r3, [fp, #-80]
	add	r3, r3, #2
	mov	r2, #68
	strb	r2, [r3]
	ldr	r3, [fp, #-80]
	add	r3, r3, #3
	mov	r2, #82
	strb	r2, [r3]
	ldr	r3, [fp, #-80]
	add	r3, r3, #4
	str	r3, [fp, #-80]
	ldr	r3, [fp, #-96]
	asr	r2, r3, #24
	ldr	r3, [fp, #-80]
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [fp, #-96]
	asr	r2, r3, #16
	ldr	r3, [fp, #-80]
	add	r3, r3, #1
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [fp, #-96]
	asr	r2, r3, #8
	ldr	r3, [fp, #-80]
	add	r3, r3, #2
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [fp, #-80]
	add	r3, r3, #3
	ldr	r2, [fp, #-96]
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [fp, #-80]
	add	r3, r3, #4
	str	r3, [fp, #-80]
	ldr	r3, [fp, #-100]
	asr	r2, r3, #24
	ldr	r3, [fp, #-80]
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [fp, #-100]
	asr	r2, r3, #16
	ldr	r3, [fp, #-80]
	add	r3, r3, #1
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [fp, #-100]
	asr	r2, r3, #8
	ldr	r3, [fp, #-80]
	add	r3, r3, #2
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [fp, #-80]
	add	r3, r3, #3
	ldr	r2, [fp, #-100]
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [fp, #-80]
	add	r3, r3, #4
	str	r3, [fp, #-80]
	ldr	r3, [fp, #-80]
	add	r2, r3, #1
	str	r2, [fp, #-80]
	mov	r2, #8
	strb	r2, [r3]
	ldr	r3, [fp, #4]
	lsl	r3, r3, #2
	sub	r2, fp, #4
	add	r3, r2, r3
	ldr	r1, [r3, #-64]
	ldr	r3, [fp, #-80]
	add	r2, r3, #1
	str	r2, [fp, #-80]
	uxtb	r2, r1
	strb	r2, [r3]
	ldr	r3, [fp, #-80]
	add	r2, r3, #1
	str	r2, [fp, #-80]
	mov	r2, #0
	strb	r2, [r3]
	ldr	r3, [fp, #-80]
	add	r2, r3, #1
	str	r2, [fp, #-80]
	mov	r2, #0
	strb	r2, [r3]
	ldr	r3, [fp, #-80]
	add	r2, r3, #1
	str	r2, [fp, #-80]
	mov	r2, #0
	strb	r2, [r3]
	sub	r3, fp, #80
	mov	r1, #13
	mov	r0, r3
	bl	stbiw__wpcrc
	ldr	r3, [fp, #-84]
	asr	r2, r3, #24
	ldr	r3, [fp, #-80]
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [fp, #-84]
	asr	r2, r3, #16
	ldr	r3, [fp, #-80]
	add	r3, r3, #1
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [fp, #-84]
	asr	r2, r3, #8
	ldr	r3, [fp, #-80]
	add	r3, r3, #2
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r2, [fp, #-84]
	ldr	r3, [fp, #-80]
	add	r3, r3, #3
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [fp, #-80]
	add	r3, r3, #4
	str	r3, [fp, #-80]
	ldr	r3, [fp, #-80]
	mov	r2, #73
	strb	r2, [r3]
	ldr	r3, [fp, #-80]
	add	r3, r3, #1
	mov	r2, #68
	strb	r2, [r3]
	ldr	r3, [fp, #-80]
	add	r3, r3, #2
	mov	r2, #65
	strb	r2, [r3]
	ldr	r3, [fp, #-80]
	add	r3, r3, #3
	mov	r2, #84
	strb	r2, [r3]
	ldr	r3, [fp, #-80]
	add	r3, r3, #4
	str	r3, [fp, #-80]
	ldr	r3, [fp, #-80]
	ldr	r2, [fp, #-84]
	ldr	r1, [fp, #-44]
	mov	r0, r3
	bl	memmove
	ldr	r3, [fp, #-80]
	ldr	r2, [fp, #-84]
	add	r3, r3, r2
	str	r3, [fp, #-80]
	ldr	r0, [fp, #-44]
	bl	free
	ldr	r2, [fp, #-84]
	sub	r3, fp, #80
	mov	r1, r2
	mov	r0, r3
	bl	stbiw__wpcrc
	ldr	r3, [fp, #-80]
	mov	r2, #0
	strb	r2, [r3]
	ldr	r3, [fp, #-80]
	add	r3, r3, #1
	mov	r2, #0
	strb	r2, [r3]
	ldr	r3, [fp, #-80]
	add	r3, r3, #2
	mov	r2, #0
	strb	r2, [r3]
	ldr	r3, [fp, #-80]
	add	r3, r3, #3
	mov	r2, #0
	strb	r2, [r3]
	ldr	r3, [fp, #-80]
	add	r3, r3, #4
	str	r3, [fp, #-80]
	ldr	r3, [fp, #-80]
	mov	r2, #73
	strb	r2, [r3]
	ldr	r3, [fp, #-80]
	add	r3, r3, #1
	mov	r2, #69
	strb	r2, [r3]
	ldr	r3, [fp, #-80]
	add	r3, r3, #2
	mov	r2, #78
	strb	r2, [r3]
	ldr	r3, [fp, #-80]
	add	r3, r3, #3
	mov	r2, #68
	strb	r2, [r3]
	ldr	r3, [fp, #-80]
	add	r3, r3, #4
	str	r3, [fp, #-80]
	sub	r3, fp, #80
	mov	r1, #0
	mov	r0, r3
	bl	stbiw__wpcrc
	ldr	r3, [fp, #8]
	ldr	r3, [r3]
	mov	r2, r3
	ldr	r3, [fp, #-48]
	add	r2, r3, r2
	ldr	r3, [fp, #-80]
	cmp	r2, r3
	beq	.L2295
	movw	r3, #:lower16:__PRETTY_FUNCTION__.11432
	movt	r3, #:upper16:__PRETTY_FUNCTION__.11432
	movw	r2, #1155
	movw	r1, #:lower16:.LC20
	movt	r1, #:upper16:.LC20
	movw	r0, #:lower16:.LC30
	movt	r0, #:upper16:.LC30
	bl	__assert_fail
.L2295:
	ldr	r3, [fp, #-48]
.L2296:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi_write_png_to_mem, .-stbi_write_png_to_mem
	.align	2
	.global	stbi_write_png
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi_write_png, %function
stbi_write_png:
	@ args = 8, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #40
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	str	r2, [fp, #-32]
	str	r3, [fp, #-36]
	sub	r3, fp, #16
	str	r3, [sp, #4]
	ldr	r3, [fp, #-36]
	str	r3, [sp]
	ldr	r3, [fp, #-32]
	ldr	r2, [fp, #-28]
	ldr	r1, [fp, #8]
	ldr	r0, [fp, #4]
	bl	stbi_write_png_to_mem
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	bne	.L2298
	mov	r3, #0
	b	.L2301
.L2298:
	movw	r1, #:lower16:.LC19
	movt	r1, #:upper16:.LC19
	ldr	r0, [fp, #-24]
	bl	stbiw__fopen
	str	r0, [fp, #-12]
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	bne	.L2300
	ldr	r0, [fp, #-8]
	bl	free
	mov	r3, #0
	b	.L2301
.L2300:
	ldr	r3, [fp, #-16]
	mov	r2, r3
	ldr	r3, [fp, #-12]
	mov	r1, #1
	ldr	r0, [fp, #-8]
	bl	fwrite
	ldr	r0, [fp, #-12]
	bl	fclose
	ldr	r0, [fp, #-8]
	bl	free
	mov	r3, #1
.L2301:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi_write_png, .-stbi_write_png
	.align	2
	.global	stbi_write_png_to_func
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi_write_png_to_func, %function
stbi_write_png_to_func:
	@ args = 12, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #32
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	str	r3, [fp, #-28]
	sub	r3, fp, #12
	str	r3, [sp, #4]
	ldr	r3, [fp, #4]
	str	r3, [sp]
	ldr	r3, [fp, #-28]
	ldr	r2, [fp, #-24]
	ldr	r1, [fp, #12]
	ldr	r0, [fp, #8]
	bl	stbi_write_png_to_mem
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	bne	.L2303
	mov	r3, #0
	b	.L2305
.L2303:
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-16]
	ldr	r1, [fp, #-8]
	ldr	r0, [fp, #-20]
	blx	r3
	ldr	r0, [fp, #-8]
	bl	free
	mov	r3, #1
.L2305:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi_write_png_to_func, .-stbi_write_png_to_func
	.section	.rodata
	.align	2
	.type	stbiw__jpg_ZigZag, %object
	.size	stbiw__jpg_ZigZag, 64
stbiw__jpg_ZigZag:
	.byte	0
	.byte	1
	.byte	5
	.byte	6
	.byte	14
	.byte	15
	.byte	27
	.byte	28
	.byte	2
	.byte	4
	.byte	7
	.byte	13
	.byte	16
	.byte	26
	.byte	29
	.byte	42
	.byte	3
	.byte	8
	.byte	12
	.byte	17
	.byte	25
	.byte	30
	.byte	41
	.byte	43
	.byte	9
	.byte	11
	.byte	18
	.byte	24
	.byte	31
	.byte	40
	.byte	44
	.byte	53
	.byte	10
	.byte	19
	.byte	23
	.byte	32
	.byte	39
	.byte	45
	.byte	52
	.byte	54
	.byte	20
	.byte	22
	.byte	33
	.byte	38
	.byte	46
	.byte	51
	.byte	55
	.byte	60
	.byte	21
	.byte	34
	.byte	37
	.byte	47
	.byte	50
	.byte	56
	.byte	59
	.byte	61
	.byte	35
	.byte	36
	.byte	48
	.byte	49
	.byte	57
	.byte	58
	.byte	62
	.byte	63
	.text
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbiw__jpg_writeBits, %function
stbiw__jpg_writeBits:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #32
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	str	r2, [fp, #-32]
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-28]
	ldr	r3, [r3]
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-32]
	ldr	r3, [r3]
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-36]
	add	r3, r3, #2
	ldrh	r3, [r3]
	mov	r2, r3
	ldr	r3, [fp, #-12]
	add	r3, r3, r2
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-36]
	ldrh	r3, [r3]
	mov	r2, r3
	ldr	r3, [fp, #-12]
	rsb	r3, r3, #24
	lsl	r3, r2, r3
	ldr	r2, [fp, #-8]
	orr	r3, r2, r3
	str	r3, [fp, #-8]
	b	.L2307
.L2309:
	ldr	r3, [fp, #-8]
	asr	r3, r3, #16
	strb	r3, [fp, #-13]
	ldrb	r3, [fp, #-13]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r0, [fp, #-24]
	bl	stbiw__putc
	ldrb	r3, [fp, #-13]	@ zero_extendqisi2
	cmp	r3, #255
	bne	.L2308
	mov	r1, #0
	ldr	r0, [fp, #-24]
	bl	stbiw__putc
.L2308:
	ldr	r3, [fp, #-8]
	lsl	r3, r3, #8
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	sub	r3, r3, #8
	str	r3, [fp, #-12]
.L2307:
	ldr	r3, [fp, #-12]
	cmp	r3, #7
	bgt	.L2309
	ldr	r3, [fp, #-28]
	ldr	r2, [fp, #-8]
	str	r2, [r3]
	ldr	r3, [fp, #-32]
	ldr	r2, [fp, #-12]
	str	r2, [r3]
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbiw__jpg_writeBits, .-stbiw__jpg_writeBits
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbiw__jpg_DCT, %function
stbiw__jpg_DCT:
	@ args = 16, pretend = 0, frame = 128
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #132
	str	r0, [fp, #-120]
	str	r1, [fp, #-124]
	str	r2, [fp, #-128]
	str	r3, [fp, #-132]
	ldr	r3, [fp, #-120]
	ldr	r3, [r3]	@ float
	str	r3, [fp, #-8]	@ float
	ldr	r3, [fp, #-124]
	ldr	r3, [r3]	@ float
	str	r3, [fp, #-12]	@ float
	ldr	r3, [fp, #-128]
	ldr	r3, [r3]	@ float
	str	r3, [fp, #-16]	@ float
	ldr	r3, [fp, #-132]
	ldr	r3, [r3]	@ float
	str	r3, [fp, #-20]	@ float
	ldr	r3, [fp, #4]
	ldr	r3, [r3]	@ float
	str	r3, [fp, #-24]	@ float
	ldr	r3, [fp, #8]
	ldr	r3, [r3]	@ float
	str	r3, [fp, #-28]	@ float
	ldr	r3, [fp, #12]
	ldr	r3, [r3]	@ float
	str	r3, [fp, #-32]	@ float
	ldr	r3, [fp, #16]
	ldr	r3, [r3]	@ float
	str	r3, [fp, #-36]	@ float
	vldr.32	s14, [fp, #-8]
	vldr.32	s15, [fp, #-36]
	vadd.f32	s15, s14, s15
	vstr.32	s15, [fp, #-40]
	vldr.32	s14, [fp, #-8]
	vldr.32	s15, [fp, #-36]
	vsub.f32	s15, s14, s15
	vstr.32	s15, [fp, #-44]
	vldr.32	s14, [fp, #-12]
	vldr.32	s15, [fp, #-32]
	vadd.f32	s15, s14, s15
	vstr.32	s15, [fp, #-48]
	vldr.32	s14, [fp, #-12]
	vldr.32	s15, [fp, #-32]
	vsub.f32	s15, s14, s15
	vstr.32	s15, [fp, #-52]
	vldr.32	s14, [fp, #-16]
	vldr.32	s15, [fp, #-28]
	vadd.f32	s15, s14, s15
	vstr.32	s15, [fp, #-56]
	vldr.32	s14, [fp, #-16]
	vldr.32	s15, [fp, #-28]
	vsub.f32	s15, s14, s15
	vstr.32	s15, [fp, #-60]
	vldr.32	s14, [fp, #-20]
	vldr.32	s15, [fp, #-24]
	vadd.f32	s15, s14, s15
	vstr.32	s15, [fp, #-64]
	vldr.32	s14, [fp, #-20]
	vldr.32	s15, [fp, #-24]
	vsub.f32	s15, s14, s15
	vstr.32	s15, [fp, #-68]
	vldr.32	s14, [fp, #-40]
	vldr.32	s15, [fp, #-64]
	vadd.f32	s15, s14, s15
	vstr.32	s15, [fp, #-72]
	vldr.32	s14, [fp, #-40]
	vldr.32	s15, [fp, #-64]
	vsub.f32	s15, s14, s15
	vstr.32	s15, [fp, #-76]
	vldr.32	s14, [fp, #-48]
	vldr.32	s15, [fp, #-56]
	vadd.f32	s15, s14, s15
	vstr.32	s15, [fp, #-80]
	vldr.32	s14, [fp, #-48]
	vldr.32	s15, [fp, #-56]
	vsub.f32	s15, s14, s15
	vstr.32	s15, [fp, #-84]
	vldr.32	s14, [fp, #-72]
	vldr.32	s15, [fp, #-80]
	vadd.f32	s15, s14, s15
	vstr.32	s15, [fp, #-8]
	vldr.32	s14, [fp, #-72]
	vldr.32	s15, [fp, #-80]
	vsub.f32	s15, s14, s15
	vstr.32	s15, [fp, #-24]
	vldr.32	s14, [fp, #-84]
	vldr.32	s15, [fp, #-76]
	vadd.f32	s15, s14, s15
	vldr.32	s14, .L2311
	vmul.f32	s15, s15, s14
	vstr.32	s15, [fp, #-88]
	vldr.32	s14, [fp, #-76]
	vldr.32	s15, [fp, #-88]
	vadd.f32	s15, s14, s15
	vstr.32	s15, [fp, #-16]
	vldr.32	s14, [fp, #-76]
	vldr.32	s15, [fp, #-88]
	vsub.f32	s15, s14, s15
	vstr.32	s15, [fp, #-32]
	vldr.32	s14, [fp, #-68]
	vldr.32	s15, [fp, #-60]
	vadd.f32	s15, s14, s15
	vstr.32	s15, [fp, #-72]
	vldr.32	s14, [fp, #-60]
	vldr.32	s15, [fp, #-52]
	vadd.f32	s15, s14, s15
	vstr.32	s15, [fp, #-80]
	vldr.32	s14, [fp, #-52]
	vldr.32	s15, [fp, #-44]
	vadd.f32	s15, s14, s15
	vstr.32	s15, [fp, #-84]
	vldr.32	s14, [fp, #-72]
	vldr.32	s15, [fp, #-84]
	vsub.f32	s15, s14, s15
	vldr.32	s14, .L2311+4
	vmul.f32	s15, s15, s14
	vstr.32	s15, [fp, #-92]
	vldr.32	s15, [fp, #-72]
	vldr.32	s14, .L2311+8
	vmul.f32	s15, s15, s14
	vldr.32	s14, [fp, #-92]
	vadd.f32	s15, s14, s15
	vstr.32	s15, [fp, #-96]
	vldr.32	s15, [fp, #-84]
	vldr.32	s14, .L2311+12
	vmul.f32	s15, s15, s14
	vldr.32	s14, [fp, #-92]
	vadd.f32	s15, s14, s15
	vstr.32	s15, [fp, #-100]
	vldr.32	s15, [fp, #-80]
	vldr.32	s14, .L2311
	vmul.f32	s15, s15, s14
	vstr.32	s15, [fp, #-104]
	vldr.32	s14, [fp, #-44]
	vldr.32	s15, [fp, #-104]
	vadd.f32	s15, s14, s15
	vstr.32	s15, [fp, #-108]
	vldr.32	s14, [fp, #-44]
	vldr.32	s15, [fp, #-104]
	vsub.f32	s15, s14, s15
	vstr.32	s15, [fp, #-112]
	vldr.32	s14, [fp, #-112]
	vldr.32	s15, [fp, #-96]
	vadd.f32	s15, s14, s15
	ldr	r3, [fp, #8]
	vstr.32	s15, [r3]
	vldr.32	s14, [fp, #-112]
	vldr.32	s15, [fp, #-96]
	vsub.f32	s15, s14, s15
	ldr	r3, [fp, #-132]
	vstr.32	s15, [r3]
	vldr.32	s14, [fp, #-108]
	vldr.32	s15, [fp, #-100]
	vadd.f32	s15, s14, s15
	ldr	r3, [fp, #-124]
	vstr.32	s15, [r3]
	vldr.32	s14, [fp, #-108]
	vldr.32	s15, [fp, #-100]
	vsub.f32	s15, s14, s15
	ldr	r3, [fp, #16]
	vstr.32	s15, [r3]
	ldr	r3, [fp, #-120]
	ldr	r2, [fp, #-8]	@ float
	str	r2, [r3]	@ float
	ldr	r3, [fp, #-128]
	ldr	r2, [fp, #-16]	@ float
	str	r2, [r3]	@ float
	ldr	r3, [fp, #4]
	ldr	r2, [fp, #-24]	@ float
	str	r2, [r3]	@ float
	ldr	r3, [fp, #12]
	ldr	r2, [fp, #-32]	@ float
	str	r2, [r3]	@ float
	nop
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
.L2312:
	.align	2
.L2311:
	.word	1060439283
	.word	1053028117
	.word	1057655764
	.word	1067924853
	.size	stbiw__jpg_DCT, .-stbiw__jpg_DCT
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbiw__jpg_calcBits, %function
stbiw__jpg_calcBits:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #20
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	rsblt	r3, r3, #0
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	bge	.L2314
	ldr	r3, [fp, #-16]
	sub	r3, r3, #1
	b	.L2315
.L2314:
	ldr	r3, [fp, #-16]
.L2315:
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-20]
	add	r3, r3, #2
	mov	r2, #1
	strh	r2, [r3]	@ movhi
	b	.L2316
.L2317:
	ldr	r3, [fp, #-20]
	add	r3, r3, #2
	ldrh	r2, [r3]
	add	r2, r2, #1
	uxth	r2, r2
	strh	r2, [r3]	@ movhi
.L2316:
	ldr	r3, [fp, #-8]
	asr	r3, r3, #1
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	bne	.L2317
	ldr	r3, [fp, #-20]
	add	r3, r3, #2
	ldrh	r3, [r3]
	mov	r2, r3
	mov	r3, #1
	lsl	r3, r3, r2
	uxth	r3, r3
	sub	r3, r3, #1
	uxth	r3, r3
	sxth	r2, r3
	ldr	r3, [fp, #-16]
	sxth	r3, r3
	and	r3, r3, r2
	sxth	r3, r3
	uxth	r2, r3
	ldr	r3, [fp, #-20]
	strh	r2, [r3]	@ movhi
	nop
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	stbiw__jpg_calcBits, .-stbiw__jpg_calcBits
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbiw__jpg_processDU, %function
stbiw__jpg_processDU:
	@ args = 20, pretend = 0, frame = 344
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, r6, fp, lr}
	add	fp, sp, #16
	sub	sp, sp, #364
	str	r0, [fp, #-352]
	str	r1, [fp, #-356]
	str	r2, [fp, #-360]
	str	r3, [fp, #-364]
	ldr	r3, [fp, #20]
	ldrh	r3, [r3]
	strh	r3, [fp, #-76]	@ movhi
	ldr	r3, [fp, #20]
	ldrh	r3, [r3, #2]
	strh	r3, [fp, #-74]	@ movhi
	ldr	r3, [fp, #20]
	add	r3, r3, #960
	ldrh	r3, [r3]
	strh	r3, [fp, #-80]	@ movhi
	ldr	r3, [fp, #20]
	add	r3, r3, #960
	ldrh	r3, [r3, #2]
	strh	r3, [fp, #-78]	@ movhi
	mov	r3, #0
	str	r3, [fp, #-24]
	ldr	r3, [fp, #4]
	lsl	r3, r3, #3
	str	r3, [fp, #-56]
	b	.L2319
.L2320:
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #2
	ldr	r2, [fp, #-364]
	add	lr, r2, r3
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	lsl	r3, r3, #2
	ldr	r2, [fp, #-364]
	add	r4, r2, r3
	ldr	r3, [fp, #-24]
	add	r3, r3, #2
	lsl	r3, r3, #2
	ldr	r2, [fp, #-364]
	add	r5, r2, r3
	ldr	r3, [fp, #-24]
	add	r3, r3, #3
	lsl	r3, r3, #2
	ldr	r2, [fp, #-364]
	add	r6, r2, r3
	ldr	r3, [fp, #-24]
	add	r3, r3, #4
	lsl	r3, r3, #2
	ldr	r2, [fp, #-364]
	add	r3, r2, r3
	ldr	r2, [fp, #-24]
	add	r2, r2, #5
	lsl	r2, r2, #2
	ldr	r1, [fp, #-364]
	add	r2, r1, r2
	ldr	r1, [fp, #-24]
	add	r1, r1, #6
	lsl	r1, r1, #2
	ldr	r0, [fp, #-364]
	add	r1, r0, r1
	ldr	r0, [fp, #-24]
	add	r0, r0, #7
	lsl	r0, r0, #2
	ldr	ip, [fp, #-364]
	add	r0, ip, r0
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	mov	r3, r6
	mov	r2, r5
	mov	r1, r4
	mov	r0, lr
	bl	stbiw__jpg_DCT
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #4]
	add	r3, r2, r3
	str	r3, [fp, #-24]
.L2319:
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-56]
	cmp	r2, r3
	blt	.L2320
	mov	r3, #0
	str	r3, [fp, #-24]
	b	.L2321
.L2322:
	ldr	r3, [fp, #-24]
	lsl	r3, r3, #2
	ldr	r2, [fp, #-364]
	add	lr, r2, r3
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #4]
	add	r3, r2, r3
	lsl	r3, r3, #2
	ldr	r2, [fp, #-364]
	add	r4, r2, r3
	ldr	r3, [fp, #4]
	lsl	r2, r3, #1
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	lsl	r3, r3, #2
	ldr	r2, [fp, #-364]
	add	r5, r2, r3
	ldr	r2, [fp, #4]
	mov	r3, r2
	lsl	r3, r3, #1
	add	r2, r3, r2
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	lsl	r3, r3, #2
	ldr	r2, [fp, #-364]
	add	r6, r2, r3
	ldr	r3, [fp, #4]
	lsl	r2, r3, #2
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	lsl	r3, r3, #2
	ldr	r2, [fp, #-364]
	add	r1, r2, r3
	ldr	r2, [fp, #4]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r2, r3, r2
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	lsl	r3, r3, #2
	ldr	r2, [fp, #-364]
	add	r0, r2, r3
	ldr	r2, [fp, #4]
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	lsl	r3, r3, #1
	mov	r2, r3
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	lsl	r3, r3, #2
	ldr	r2, [fp, #-364]
	add	ip, r2, r3
	ldr	r2, [fp, #4]
	mov	r3, r2
	lsl	r3, r3, #3
	sub	r2, r3, r2
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	lsl	r3, r3, #2
	ldr	r2, [fp, #-364]
	add	r3, r2, r3
	str	r3, [sp, #12]
	str	ip, [sp, #8]
	str	r0, [sp, #4]
	str	r1, [sp]
	mov	r3, r6
	mov	r2, r5
	mov	r1, r4
	mov	r0, lr
	bl	stbiw__jpg_DCT
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
.L2321:
	ldr	r3, [fp, #-24]
	cmp	r3, #7
	ble	.L2322
	mov	r3, #0
	str	r3, [fp, #-44]
	mov	r3, #0
	str	r3, [fp, #-32]
	b	.L2323
.L2329:
	mov	r3, #0
	str	r3, [fp, #-40]
	b	.L2324
.L2328:
	ldr	r3, [fp, #-44]
	ldr	r2, [fp, #4]
	mul	r3, r2, r3
	ldr	r2, [fp, #-40]
	add	r3, r2, r3
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-28]
	lsl	r3, r3, #2
	ldr	r2, [fp, #-364]
	add	r3, r2, r3
	vldr.32	s14, [r3]
	ldr	r3, [fp, #-32]
	lsl	r3, r3, #2
	ldr	r2, [fp, #8]
	add	r3, r2, r3
	vldr.32	s15, [r3]
	vmul.f32	s15, s14, s15
	vstr.32	s15, [fp, #-60]
	vldr.32	s15, [fp, #-60]
	vcmpe.f32	s15, #0
	vmrs	APSR_nzcv, FPSCR
	bpl	.L2348
	vldr.32	s15, [fp, #-60]
	vmov.f32	s14, #5.0e-1
	vsub.f32	s15, s15, s14
	vcvt.s32.f32	s15, s15
	b	.L2327
.L2348:
	vldr.32	s15, [fp, #-60]
	vmov.f32	s14, #5.0e-1
	vadd.f32	s15, s15, s14
	vcvt.s32.f32	s15, s15
.L2327:
	movw	r3, #:lower16:stbiw__jpg_ZigZag
	movt	r3, #:upper16:stbiw__jpg_ZigZag
	ldr	r2, [fp, #-32]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	lsl	r3, r3, #2
	sub	r2, fp, #20
	add	r3, r2, r3
	vstr.32	s15, [r3, #-316]	@ int
	ldr	r3, [fp, #-40]
	add	r3, r3, #1
	str	r3, [fp, #-40]
	ldr	r3, [fp, #-32]
	add	r3, r3, #1
	str	r3, [fp, #-32]
.L2324:
	ldr	r3, [fp, #-40]
	cmp	r3, #7
	ble	.L2328
	ldr	r3, [fp, #-44]
	add	r3, r3, #1
	str	r3, [fp, #-44]
.L2323:
	ldr	r3, [fp, #-44]
	cmp	r3, #7
	ble	.L2329
	ldr	r2, [fp, #-336]
	ldr	r3, [fp, #12]
	sub	r3, r2, r3
	str	r3, [fp, #-64]
	ldr	r3, [fp, #-64]
	cmp	r3, #0
	bne	.L2330
	ldr	r3, [fp, #16]
	ldr	r2, [fp, #-360]
	ldr	r1, [fp, #-356]
	ldr	r0, [fp, #-352]
	bl	stbiw__jpg_writeBits
	b	.L2331
.L2330:
	sub	r3, fp, #340
	mov	r1, r3
	ldr	r0, [fp, #-64]
	bl	stbiw__jpg_calcBits
	sub	r3, fp, #20
	sub	r3, r3, #320
	ldrh	r3, [r3, #2]
	lsl	r3, r3, #2
	ldr	r2, [fp, #16]
	add	r3, r2, r3
	ldr	r2, [fp, #-360]
	ldr	r1, [fp, #-356]
	ldr	r0, [fp, #-352]
	bl	stbiw__jpg_writeBits
	sub	r3, fp, #340
	ldr	r2, [fp, #-360]
	ldr	r1, [fp, #-356]
	ldr	r0, [fp, #-352]
	bl	stbiw__jpg_writeBits
.L2331:
	mov	r3, #63
	str	r3, [fp, #-36]
	b	.L2332
.L2334:
	ldr	r3, [fp, #-36]
	sub	r3, r3, #1
	str	r3, [fp, #-36]
.L2332:
	ldr	r3, [fp, #-36]
	cmp	r3, #0
	ble	.L2333
	ldr	r3, [fp, #-36]
	lsl	r3, r3, #2
	sub	r2, fp, #20
	add	r3, r2, r3
	ldr	r3, [r3, #-316]
	cmp	r3, #0
	beq	.L2334
.L2333:
	ldr	r3, [fp, #-36]
	cmp	r3, #0
	bne	.L2335
	sub	r3, fp, #76
	ldr	r2, [fp, #-360]
	ldr	r1, [fp, #-356]
	ldr	r0, [fp, #-352]
	bl	stbiw__jpg_writeBits
	ldr	r3, [fp, #-336]
	b	.L2346
.L2335:
	mov	r3, #1
	str	r3, [fp, #-28]
	b	.L2337
.L2344:
	ldr	r3, [fp, #-28]
	str	r3, [fp, #-68]
	b	.L2338
.L2340:
	ldr	r3, [fp, #-28]
	add	r3, r3, #1
	str	r3, [fp, #-28]
.L2338:
	ldr	r3, [fp, #-28]
	lsl	r3, r3, #2
	sub	r2, fp, #20
	add	r3, r2, r3
	ldr	r3, [r3, #-316]
	cmp	r3, #0
	bne	.L2339
	ldr	r2, [fp, #-28]
	ldr	r3, [fp, #-36]
	cmp	r2, r3
	ble	.L2340
.L2339:
	ldr	r2, [fp, #-28]
	ldr	r3, [fp, #-68]
	sub	r3, r2, r3
	str	r3, [fp, #-48]
	ldr	r3, [fp, #-48]
	cmp	r3, #15
	ble	.L2341
	ldr	r3, [fp, #-48]
	asr	r3, r3, #4
	str	r3, [fp, #-72]
	mov	r3, #1
	str	r3, [fp, #-52]
	b	.L2342
.L2343:
	sub	r3, fp, #80
	ldr	r2, [fp, #-360]
	ldr	r1, [fp, #-356]
	ldr	r0, [fp, #-352]
	bl	stbiw__jpg_writeBits
	ldr	r3, [fp, #-52]
	add	r3, r3, #1
	str	r3, [fp, #-52]
.L2342:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-72]
	cmp	r2, r3
	ble	.L2343
	ldr	r3, [fp, #-48]
	and	r3, r3, #15
	str	r3, [fp, #-48]
.L2341:
	ldr	r3, [fp, #-28]
	lsl	r3, r3, #2
	sub	r2, fp, #20
	add	r3, r2, r3
	ldr	r3, [r3, #-316]
	sub	r2, fp, #344
	mov	r1, r2
	mov	r0, r3
	bl	stbiw__jpg_calcBits
	ldr	r3, [fp, #-48]
	lsl	r3, r3, #4
	sub	r2, fp, #20
	sub	r2, r2, #324
	ldrh	r2, [r2, #2]
	add	r3, r3, r2
	lsl	r3, r3, #2
	ldr	r2, [fp, #20]
	add	r3, r2, r3
	ldr	r2, [fp, #-360]
	ldr	r1, [fp, #-356]
	ldr	r0, [fp, #-352]
	bl	stbiw__jpg_writeBits
	sub	r3, fp, #344
	ldr	r2, [fp, #-360]
	ldr	r1, [fp, #-356]
	ldr	r0, [fp, #-352]
	bl	stbiw__jpg_writeBits
	ldr	r3, [fp, #-28]
	add	r3, r3, #1
	str	r3, [fp, #-28]
.L2337:
	ldr	r2, [fp, #-28]
	ldr	r3, [fp, #-36]
	cmp	r2, r3
	ble	.L2344
	ldr	r3, [fp, #-36]
	cmp	r3, #63
	beq	.L2345
	sub	r3, fp, #76
	ldr	r2, [fp, #-360]
	ldr	r1, [fp, #-356]
	ldr	r0, [fp, #-352]
	bl	stbiw__jpg_writeBits
.L2345:
	ldr	r3, [fp, #-336]
.L2346:
	mov	r0, r3
	sub	sp, fp, #16
	@ sp needed
	pop	{r4, r5, r6, fp, pc}
	.size	stbiw__jpg_processDU, .-stbiw__jpg_processDU
	.align	2
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi_write_jpg_core, %function
stbi_write_jpg_core:
	@ args = 8, pretend = 0, frame = 4408
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #4416
	sub	sp, sp, #16
	sub	ip, fp, #4096
	sub	ip, ip, #4
	str	r0, [ip, #-300]
	sub	r0, fp, #4096
	sub	r0, r0, #4
	str	r1, [r0, #-304]
	sub	r1, fp, #4096
	sub	r1, r1, #4
	str	r2, [r1, #-308]
	sub	r2, fp, #4096
	sub	r2, r2, #4
	str	r3, [r2, #-312]
	ldr	r3, [fp, #4]
	cmp	r3, #0
	beq	.L2350
	sub	r3, fp, #4096
	sub	r3, r3, #4
	ldr	r3, [r3, #-304]
	cmp	r3, #0
	beq	.L2350
	sub	r3, fp, #4096
	sub	r3, r3, #4
	ldr	r3, [r3, #-308]
	cmp	r3, #0
	beq	.L2350
	sub	r3, fp, #4096
	sub	r3, r3, #4
	ldr	r3, [r3, #-312]
	cmp	r3, #4
	bgt	.L2350
	sub	r3, fp, #4096
	sub	r3, r3, #4
	ldr	r3, [r3, #-312]
	cmp	r3, #0
	bgt	.L2351
.L2350:
	mov	r3, #0
	b	.L2411
.L2351:
	ldr	r3, [fp, #8]
	cmp	r3, #0
	beq	.L2353
	ldr	r3, [fp, #8]
	b	.L2354
.L2353:
	mov	r3, #90
.L2354:
	str	r3, [fp, #8]
	ldr	r3, [fp, #8]
	cmp	r3, #90
	movle	r3, #1
	movgt	r3, #0
	uxtb	r3, r3
	str	r3, [fp, #-56]
	ldr	r3, [fp, #8]
	cmp	r3, #0
	ble	.L2355
	ldr	r3, [fp, #8]
	cmp	r3, #100
	movlt	r3, r3
	movge	r3, #100
	b	.L2356
.L2355:
	mov	r3, #1
.L2356:
	str	r3, [fp, #8]
	ldr	r3, [fp, #8]
	cmp	r3, #49
	bgt	.L2357
	ldr	r1, [fp, #8]
	movw	r0, #5000
	bl	__aeabi_idiv
	mov	r3, r0
	b	.L2358
.L2357:
	ldr	r3, [fp, #8]
	rsb	r3, r3, #100
	lsl	r3, r3, #1
.L2358:
	str	r3, [fp, #8]
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L2359
.L2368:
	movw	r3, #:lower16:YQT.11586
	movt	r3, #:upper16:YQT.11586
	ldr	r2, [fp, #-16]
	ldr	r3, [r3, r2, lsl #2]
	ldr	r2, [fp, #8]
	mul	r3, r2, r3
	add	r2, r3, #50
	movw	r3, #34079
	movt	r3, 20971
	smull	r1, r3, r3, r2
	asr	r1, r3, #5
	asr	r3, r2, #31
	sub	r3, r1, r3
	str	r3, [fp, #-60]
	ldr	r3, [fp, #-60]
	cmp	r3, #0
	ble	.L2360
	ldr	r3, [fp, #-60]
	cmp	r3, #255
	bgt	.L2361
	ldr	r3, [fp, #-60]
	uxtb	r2, r3
	b	.L2363
.L2361:
	mov	r2, #255
	b	.L2363
.L2360:
	mov	r2, #1
.L2363:
	movw	r3, #:lower16:stbiw__jpg_ZigZag
	movt	r3, #:upper16:stbiw__jpg_ZigZag
	ldr	r1, [fp, #-16]
	add	r3, r3, r1
	ldrb	r3, [r3]	@ zero_extendqisi2
	sub	r1, fp, #4
	add	r3, r1, r3
	strb	r2, [r3, #-708]
	movw	r3, #:lower16:UVQT.11587
	movt	r3, #:upper16:UVQT.11587
	ldr	r2, [fp, #-16]
	ldr	r3, [r3, r2, lsl #2]
	ldr	r2, [fp, #8]
	mul	r3, r2, r3
	add	r2, r3, #50
	movw	r3, #34079
	movt	r3, 20971
	smull	r1, r3, r3, r2
	asr	r1, r3, #5
	asr	r3, r2, #31
	sub	r3, r1, r3
	str	r3, [fp, #-64]
	ldr	r3, [fp, #-64]
	cmp	r3, #0
	ble	.L2364
	ldr	r3, [fp, #-64]
	cmp	r3, #255
	bgt	.L2365
	ldr	r3, [fp, #-64]
	uxtb	r2, r3
	b	.L2367
.L2365:
	mov	r2, #255
	b	.L2367
.L2364:
	mov	r2, #1
.L2367:
	movw	r3, #:lower16:stbiw__jpg_ZigZag
	movt	r3, #:upper16:stbiw__jpg_ZigZag
	ldr	r1, [fp, #-16]
	add	r3, r3, r1
	ldrb	r3, [r3]	@ zero_extendqisi2
	sub	r1, fp, #4
	add	r3, r1, r3
	strb	r2, [r3, #-772]
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L2359:
	ldr	r3, [fp, #-16]
	cmp	r3, #63
	ble	.L2368
	mov	r3, #0
	str	r3, [fp, #-8]
	mov	r3, #0
	str	r3, [fp, #-20]
	b	.L2369
.L2372:
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L2370
.L2371:
	movw	r3, #:lower16:stbiw__jpg_ZigZag
	movt	r3, #:upper16:stbiw__jpg_ZigZag
	ldr	r2, [fp, #-20]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	sub	r2, fp, #4
	add	r3, r2, r3
	ldrb	r3, [r3, #-708]	@ zero_extendqisi2
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	movw	r3, #:lower16:aasf.11588
	movt	r3, #:upper16:aasf.11588
	ldr	r2, [fp, #-8]
	lsl	r2, r2, #2
	add	r3, r3, r2
	vldr.32	s15, [r3]
	vmul.f32	s14, s14, s15
	movw	r3, #:lower16:aasf.11588
	movt	r3, #:upper16:aasf.11588
	ldr	r2, [fp, #-12]
	lsl	r2, r2, #2
	add	r3, r3, r2
	vldr.32	s15, [r3]
	vmul.f32	s14, s14, s15
	vmov.f32	s13, #1.0e+0
	vdiv.f32	s15, s13, s14
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #2
	sub	r2, fp, #4
	add	r3, r2, r3
	sub	r3, r3, #388
	vstr.32	s15, [r3]
	movw	r3, #:lower16:stbiw__jpg_ZigZag
	movt	r3, #:upper16:stbiw__jpg_ZigZag
	ldr	r2, [fp, #-20]
	add	r3, r3, r2
	ldrb	r3, [r3]	@ zero_extendqisi2
	sub	r2, fp, #4
	add	r3, r2, r3
	ldrb	r3, [r3, #-772]	@ zero_extendqisi2
	vmov	s15, r3	@ int
	vcvt.f32.s32	s14, s15
	movw	r3, #:lower16:aasf.11588
	movt	r3, #:upper16:aasf.11588
	ldr	r2, [fp, #-8]
	lsl	r2, r2, #2
	add	r3, r3, r2
	vldr.32	s15, [r3]
	vmul.f32	s14, s14, s15
	movw	r3, #:lower16:aasf.11588
	movt	r3, #:upper16:aasf.11588
	ldr	r2, [fp, #-12]
	lsl	r2, r2, #2
	add	r3, r3, r2
	vldr.32	s15, [r3]
	vmul.f32	s14, s14, s15
	vmov.f32	s13, #1.0e+0
	vdiv.f32	s15, s13, s14
	ldr	r3, [fp, #-20]
	lsl	r3, r3, #2
	sub	r2, fp, #4
	add	r3, r2, r3
	sub	r3, r3, #644
	vstr.32	s15, [r3]
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
.L2370:
	ldr	r3, [fp, #-12]
	cmp	r3, #7
	ble	.L2371
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L2369:
	ldr	r3, [fp, #-8]
	cmp	r3, #7
	ble	.L2372
	mvn	r3, #0
	strb	r3, [fp, #-800]
	mvn	r3, #63
	strb	r3, [fp, #-799]
	mov	r3, #0
	strb	r3, [fp, #-798]
	mov	r3, #17
	strb	r3, [fp, #-797]
	mov	r3, #8
	strb	r3, [fp, #-796]
	sub	r3, fp, #4096
	sub	r3, r3, #4
	ldr	r3, [r3, #-308]
	asr	r3, r3, #8
	uxtb	r3, r3
	strb	r3, [fp, #-795]
	sub	r3, fp, #4096
	sub	r3, r3, #4
	ldr	r3, [r3, #-308]
	uxtb	r3, r3
	strb	r3, [fp, #-794]
	sub	r3, fp, #4096
	sub	r3, r3, #4
	ldr	r3, [r3, #-304]
	asr	r3, r3, #8
	uxtb	r3, r3
	strb	r3, [fp, #-793]
	sub	r3, fp, #4096
	sub	r3, r3, #4
	ldr	r3, [r3, #-304]
	uxtb	r3, r3
	strb	r3, [fp, #-792]
	mov	r3, #3
	strb	r3, [fp, #-791]
	mov	r3, #1
	strb	r3, [fp, #-790]
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	beq	.L2373
	mov	r3, #34
	b	.L2374
.L2373:
	mov	r3, #17
.L2374:
	strb	r3, [fp, #-789]
	mov	r3, #0
	strb	r3, [fp, #-788]
	mov	r3, #2
	strb	r3, [fp, #-787]
	mov	r3, #17
	strb	r3, [fp, #-786]
	mov	r3, #1
	strb	r3, [fp, #-785]
	mov	r3, #3
	strb	r3, [fp, #-784]
	mov	r3, #17
	strb	r3, [fp, #-783]
	mov	r3, #1
	strb	r3, [fp, #-782]
	mvn	r3, #0
	strb	r3, [fp, #-781]
	mvn	r3, #59
	strb	r3, [fp, #-780]
	mov	r3, #1
	strb	r3, [fp, #-779]
	mvn	r3, #93
	strb	r3, [fp, #-778]
	mov	r3, #0
	strb	r3, [fp, #-777]
	sub	r3, fp, #4096
	sub	r3, r3, #4
	ldr	r3, [r3, #-300]
	ldr	r3, [r3]
	sub	r2, fp, #4096
	sub	r2, r2, #4
	ldr	r2, [r2, #-300]
	ldr	r0, [r2, #4]
	mov	r2, #25
	movw	r1, #:lower16:head0.11609
	movt	r1, #:upper16:head0.11609
	blx	r3
	sub	r3, fp, #4096
	sub	r3, r3, #4
	ldr	r3, [r3, #-300]
	ldr	r3, [r3]
	sub	r2, fp, #4096
	sub	r2, r2, #4
	ldr	r2, [r2, #-300]
	ldr	r0, [r2, #4]
	sub	r1, fp, #712
	mov	r2, #64
	blx	r3
	sub	r3, fp, #4096
	sub	r3, r3, #4
	mov	r1, #1
	ldr	r0, [r3, #-300]
	bl	stbiw__putc
	sub	r3, fp, #4096
	sub	r3, r3, #4
	ldr	r3, [r3, #-300]
	ldr	r3, [r3]
	sub	r2, fp, #4096
	sub	r2, r2, #4
	ldr	r2, [r2, #-300]
	ldr	r0, [r2, #4]
	sub	r1, fp, #776
	mov	r2, #64
	blx	r3
	sub	r3, fp, #4096
	sub	r3, r3, #4
	ldr	r3, [r3, #-300]
	ldr	r3, [r3]
	sub	r2, fp, #4096
	sub	r2, r2, #4
	ldr	r2, [r2, #-300]
	ldr	r0, [r2, #4]
	sub	r1, fp, #800
	mov	r2, #24
	blx	r3
	sub	r3, fp, #4096
	sub	r3, r3, #4
	ldr	r3, [r3, #-300]
	ldr	r3, [r3]
	sub	r2, fp, #4096
	sub	r2, r2, #4
	ldr	r2, [r2, #-300]
	ldr	r0, [r2, #4]
	ldr	r1, .L2412+32
	mov	r2, #16
	blx	r3
	sub	r3, fp, #4096
	sub	r3, r3, #4
	ldr	r3, [r3, #-300]
	ldr	r3, [r3]
	sub	r2, fp, #4096
	sub	r2, r2, #4
	ldr	r2, [r2, #-300]
	ldr	r0, [r2, #4]
	mov	r2, #12
	movw	r1, #:lower16:std_dc_luminance_values.11575
	movt	r1, #:upper16:std_dc_luminance_values.11575
	blx	r3
	sub	r3, fp, #4096
	sub	r3, r3, #4
	mov	r1, #16
	ldr	r0, [r3, #-300]
	bl	stbiw__putc
	sub	r3, fp, #4096
	sub	r3, r3, #4
	ldr	r3, [r3, #-300]
	ldr	r3, [r3]
	sub	r2, fp, #4096
	sub	r2, r2, #4
	ldr	r2, [r2, #-300]
	ldr	r0, [r2, #4]
	ldr	r1, .L2412+36
	mov	r2, #16
	blx	r3
	sub	r3, fp, #4096
	sub	r3, r3, #4
	ldr	r3, [r3, #-300]
	ldr	r3, [r3]
	sub	r2, fp, #4096
	sub	r2, r2, #4
	ldr	r2, [r2, #-300]
	ldr	r0, [r2, #4]
	mov	r2, #162
	movw	r1, #:lower16:std_ac_luminance_values.11577
	movt	r1, #:upper16:std_ac_luminance_values.11577
	blx	r3
	sub	r3, fp, #4096
	sub	r3, r3, #4
	mov	r1, #1
	ldr	r0, [r3, #-300]
	bl	stbiw__putc
	sub	r3, fp, #4096
	sub	r3, r3, #4
	ldr	r3, [r3, #-300]
	ldr	r3, [r3]
	sub	r2, fp, #4096
	sub	r2, r2, #4
	ldr	r2, [r2, #-300]
	ldr	r0, [r2, #4]
	ldr	r1, .L2412+40
	mov	r2, #16
	blx	r3
	sub	r3, fp, #4096
	sub	r3, r3, #4
	ldr	r3, [r3, #-300]
	ldr	r3, [r3]
	sub	r2, fp, #4096
	sub	r2, r2, #4
	ldr	r2, [r2, #-300]
	ldr	r0, [r2, #4]
	mov	r2, #12
	movw	r1, #:lower16:std_dc_chrominance_values.11579
	movt	r1, #:upper16:std_dc_chrominance_values.11579
	blx	r3
	sub	r3, fp, #4096
	sub	r3, r3, #4
	mov	r1, #17
	ldr	r0, [r3, #-300]
	bl	stbiw__putc
	sub	r3, fp, #4096
	sub	r3, r3, #4
	ldr	r3, [r3, #-300]
	ldr	r3, [r3]
	sub	r2, fp, #4096
	sub	r2, r2, #4
	ldr	r2, [r2, #-300]
	ldr	r0, [r2, #4]
	ldr	r1, .L2412+44
	mov	r2, #16
	blx	r3
	sub	r3, fp, #4096
	sub	r3, r3, #4
	ldr	r3, [r3, #-300]
	ldr	r3, [r3]
	sub	r2, fp, #4096
	sub	r2, r2, #4
	ldr	r2, [r2, #-300]
	ldr	r0, [r2, #4]
	mov	r2, #162
	movw	r1, #:lower16:std_ac_chrominance_values.11581
	movt	r1, #:upper16:std_ac_chrominance_values.11581
	blx	r3
	sub	r3, fp, #4096
	sub	r3, r3, #4
	ldr	r3, [r3, #-300]
	ldr	r3, [r3]
	sub	r2, fp, #4096
	sub	r2, r2, #4
	ldr	r2, [r2, #-300]
	ldr	r0, [r2, #4]
	mov	r2, #14
	movw	r1, #:lower16:head2.11610
	movt	r1, #:upper16:head2.11610
	blx	r3
	mov	r3, #0
	str	r3, [fp, #-24]
	mov	r3, #0
	str	r3, [fp, #-28]
	mov	r3, #0
	str	r3, [fp, #-32]
	mov	r3, #0
	str	r3, [fp, #-804]
	mov	r3, #0
	str	r3, [fp, #-808]
	sub	r3, fp, #4096
	sub	r3, r3, #4
	ldr	r3, [r3, #-312]
	cmp	r3, #2
	movgt	r3, #1
	movle	r3, #0
	uxtb	r3, r3
	str	r3, [fp, #-68]
	sub	r3, fp, #4096
	sub	r3, r3, #4
	ldr	r3, [r3, #-312]
	cmp	r3, #2
	ble	.L2375
	mov	r3, #2
	b	.L2376
.L2375:
	mov	r3, #0
.L2376:
	str	r3, [fp, #-72]
	ldr	r3, [fp, #4]
	str	r3, [fp, #-76]
	ldr	r3, [fp, #-68]
	ldr	r2, [fp, #-76]
	add	r3, r2, r3
	str	r3, [fp, #-80]
	ldr	r3, [fp, #-72]
	ldr	r2, [fp, #-76]
	add	r3, r2, r3
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-56]
	cmp	r3, #0
	beq	.L2377
	mov	r3, #0
	str	r3, [fp, #-40]
	b	.L2378
.L2395:
	mov	r3, #0
	str	r3, [fp, #-36]
	b	.L2379
.L2394:
	ldr	r3, [fp, #-40]
	str	r3, [fp, #-8]
	mov	r3, #0
	str	r3, [fp, #-44]
	b	.L2380
.L2389:
	sub	r3, fp, #4096
	sub	r3, r3, #4
	ldr	r2, [fp, #-8]
	ldr	r3, [r3, #-308]
	cmp	r2, r3
	blt	.L2381
	sub	r3, fp, #4096
	sub	r3, r3, #4
	ldr	r3, [r3, #-308]
	sub	r3, r3, #1
	b	.L2382
.L2381:
	ldr	r3, [fp, #-8]
.L2382:
	str	r3, [fp, #-88]
	movw	r3, #:lower16:stbi__flip_vertically_on_write
	movt	r3, #:upper16:stbi__flip_vertically_on_write
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L2383
	sub	r3, fp, #4096
	sub	r3, r3, #4
	ldr	r3, [r3, #-308]
	sub	r2, r3, #1
	ldr	r3, [fp, #-88]
	sub	r3, r2, r3
	b	.L2384
.L2383:
	ldr	r3, [fp, #-88]
.L2384:
	sub	r2, fp, #4096
	sub	r2, r2, #4
	ldr	r2, [r2, #-304]
	mul	r2, r2, r3
	sub	r3, fp, #4096
	sub	r3, r3, #4
	ldr	r3, [r3, #-312]
	mul	r3, r2, r3
	str	r3, [fp, #-92]
	ldr	r3, [fp, #-36]
	str	r3, [fp, #-12]
	b	.L2385
.L2388:
	sub	r3, fp, #4096
	sub	r3, r3, #4
	ldr	r2, [fp, #-12]
	ldr	r3, [r3, #-304]
	cmp	r2, r3
	blt	.L2386
	sub	r3, fp, #4096
	sub	r3, r3, #4
	ldr	r3, [r3, #-304]
	sub	r3, r3, #1
	b	.L2387
.L2386:
	ldr	r3, [fp, #-12]
.L2387:
	sub	r2, fp, #4096
	sub	r2, r2, #4
	ldr	r2, [r2, #-312]
	mul	r3, r2, r3
	ldr	r2, [fp, #-92]
	add	r3, r2, r3
	str	r3, [fp, #-96]
	ldr	r3, [fp, #-96]
	ldr	r2, [fp, #-76]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	vmov	s15, r3	@ int
	vcvt.f32.u32	s15, s15
	vstr.32	s15, [fp, #-100]
	ldr	r3, [fp, #-96]
	ldr	r2, [fp, #-80]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	vmov	s15, r3	@ int
	vcvt.f32.u32	s15, s15
	vstr.32	s15, [fp, #-104]
	ldr	r3, [fp, #-96]
	ldr	r2, [fp, #-84]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	vmov	s15, r3	@ int
	vcvt.f32.u32	s15, s15
	vstr.32	s15, [fp, #-108]
	vldr.32	s15, [fp, #-100]
	vldr.32	s14, .L2412
	vmul.f32	s14, s15, s14
	vldr.32	s15, [fp, #-104]
	vldr.32	s13, .L2412+4
	vmul.f32	s15, s15, s13
	vadd.f32	s14, s14, s15
	vldr.32	s15, [fp, #-108]
	vldr.32	s13, .L2412+8
	vmul.f32	s15, s15, s13
	vadd.f32	s15, s14, s15
	vldr.32	s14, .L2412+12
	vsub.f32	s15, s15, s14
	sub	r3, fp, #4
	sub	r3, r3, #3872
	sub	r3, r3, #4
	ldr	r2, [fp, #-44]
	lsl	r2, r2, #2
	add	r3, r3, r2
	vstr.32	s15, [r3]
	vldr.32	s15, [fp, #-100]
	vldr.32	s14, .L2412+16
	vmul.f32	s14, s15, s14
	vldr.32	s15, [fp, #-104]
	vldr.32	s13, .L2412+20
	vmul.f32	s15, s15, s13
	vsub.f32	s14, s14, s15
	vldr.32	s15, [fp, #-108]
	vmov.f32	s13, #5.0e-1
	vmul.f32	s15, s15, s13
	vadd.f32	s15, s14, s15
	sub	r3, fp, #4
	sub	r3, r3, #2848
	sub	r3, r3, #4
	ldr	r2, [fp, #-44]
	lsl	r2, r2, #2
	add	r3, r3, r2
	vstr.32	s15, [r3]
	vldr.32	s15, [fp, #-100]
	vmov.f32	s14, #5.0e-1
	vmul.f32	s14, s15, s14
	vldr.32	s15, [fp, #-104]
	vldr.32	s13, .L2412+24
	vmul.f32	s15, s15, s13
	vsub.f32	s14, s14, s15
	vldr.32	s15, [fp, #-108]
	vldr.32	s13, .L2412+28
	vmul.f32	s15, s15, s13
	vsub.f32	s15, s14, s15
	sub	r3, fp, #4
	sub	r3, r3, #1824
	sub	r3, r3, #4
	ldr	r2, [fp, #-44]
	lsl	r2, r2, #2
	add	r3, r3, r2
	vstr.32	s15, [r3]
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-44]
	add	r3, r3, #1
	str	r3, [fp, #-44]
.L2385:
	ldr	r3, [fp, #-36]
	add	r3, r3, #15
	ldr	r2, [fp, #-12]
	cmp	r2, r3
	ble	.L2388
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L2380:
	ldr	r3, [fp, #-40]
	add	r3, r3, #15
	ldr	r2, [fp, #-8]
	cmp	r2, r3
	ble	.L2389
	sub	r2, fp, #3872
	sub	r2, r2, #4
	sub	r2, r2, #4
	sub	ip, fp, #808
	sub	r1, fp, #804
	sub	r3, fp, #4096
	sub	r3, r3, #4
	mov	r0, r3
	movw	r3, #:lower16:YAC_HT.11584
	movt	r3, #:upper16:YAC_HT.11584
	str	r3, [sp, #16]
	movw	r3, #:lower16:YDC_HT.11582
	movt	r3, #:upper16:YDC_HT.11582
	str	r3, [sp, #12]
	ldr	r3, [fp, #-24]
	str	r3, [sp, #8]
	sub	r3, fp, #392
	str	r3, [sp, #4]
	mov	r3, #16
	str	r3, [sp]
	mov	r3, r2
	mov	r2, ip
	ldr	r0, [r0, #-300]
	bl	stbiw__jpg_processDU
	str	r0, [fp, #-24]
	sub	r3, fp, #3872
	sub	r3, r3, #4
	sub	r3, r3, #4
	add	r3, r3, #32
	sub	ip, fp, #808
	sub	r1, fp, #804
	sub	r2, fp, #4096
	sub	r2, r2, #4
	mov	r0, r2
	movw	r2, #:lower16:YAC_HT.11584
	movt	r2, #:upper16:YAC_HT.11584
	str	r2, [sp, #16]
	movw	r2, #:lower16:YDC_HT.11582
	movt	r2, #:upper16:YDC_HT.11582
	str	r2, [sp, #12]
	ldr	r2, [fp, #-24]
	str	r2, [sp, #8]
	sub	r2, fp, #392
	str	r2, [sp, #4]
	mov	r2, #16
	str	r2, [sp]
	mov	r2, ip
	ldr	r0, [r0, #-300]
	bl	stbiw__jpg_processDU
	str	r0, [fp, #-24]
	sub	r3, fp, #3872
	sub	r3, r3, #4
	sub	r3, r3, #4
	add	r3, r3, #512
	sub	ip, fp, #808
	sub	r1, fp, #804
	sub	r2, fp, #4096
	sub	r2, r2, #4
	mov	r0, r2
	movw	r2, #:lower16:YAC_HT.11584
	movt	r2, #:upper16:YAC_HT.11584
	str	r2, [sp, #16]
	movw	r2, #:lower16:YDC_HT.11582
	movt	r2, #:upper16:YDC_HT.11582
	str	r2, [sp, #12]
	ldr	r2, [fp, #-24]
	str	r2, [sp, #8]
	sub	r2, fp, #392
	str	r2, [sp, #4]
	mov	r2, #16
	str	r2, [sp]
	mov	r2, ip
	ldr	r0, [r0, #-300]
	bl	stbiw__jpg_processDU
	str	r0, [fp, #-24]
	sub	r3, fp, #3872
	sub	r3, r3, #4
	sub	r3, r3, #4
	add	r3, r3, #544
	sub	ip, fp, #808
	sub	r1, fp, #804
	sub	r2, fp, #4096
	sub	r2, r2, #4
	mov	r0, r2
	movw	r2, #:lower16:YAC_HT.11584
	movt	r2, #:upper16:YAC_HT.11584
	str	r2, [sp, #16]
	movw	r2, #:lower16:YDC_HT.11582
	movt	r2, #:upper16:YDC_HT.11582
	str	r2, [sp, #12]
	ldr	r2, [fp, #-24]
	str	r2, [sp, #8]
	sub	r2, fp, #392
	str	r2, [sp, #4]
	mov	r2, #16
	str	r2, [sp]
	mov	r2, ip
	ldr	r0, [r0, #-300]
	bl	stbiw__jpg_processDU
	str	r0, [fp, #-24]
	mov	r3, #0
	str	r3, [fp, #-48]
	mov	r3, #0
	str	r3, [fp, #-44]
	b	.L2390
.L2393:
	mov	r3, #0
	str	r3, [fp, #-52]
	b	.L2391
.L2413:
	.align	2
.L2412:
	.word	1050220167
	.word	1058424226
	.word	1038710997
	.word	1124073472
	.word	-1104360914
	.word	1051302633
	.word	1054236297
	.word	1034323419
	.word	std_dc_luminance_nrcodes.11574+1
	.word	std_ac_luminance_nrcodes.11576+1
	.word	std_dc_chrominance_nrcodes.11578+1
	.word	std_ac_chrominance_nrcodes.11580+1
.L2392:
	ldr	r3, [fp, #-48]
	lsl	r2, r3, #4
	ldr	r3, [fp, #-52]
	add	r3, r2, r3
	lsl	r3, r3, #1
	str	r3, [fp, #-112]
	sub	r3, fp, #4
	sub	r3, r3, #2848
	sub	r3, r3, #4
	ldr	r2, [fp, #-112]
	lsl	r2, r2, #2
	add	r3, r3, r2
	vldr.32	s14, [r3]
	ldr	r3, [fp, #-112]
	add	r2, r3, #1
	sub	r3, fp, #4
	sub	r3, r3, #2848
	sub	r3, r3, #4
	lsl	r2, r2, #2
	add	r3, r3, r2
	vldr.32	s15, [r3]
	vadd.f32	s14, s14, s15
	ldr	r3, [fp, #-112]
	add	r2, r3, #16
	sub	r3, fp, #4
	sub	r3, r3, #2848
	sub	r3, r3, #4
	lsl	r2, r2, #2
	add	r3, r3, r2
	vldr.32	s15, [r3]
	vadd.f32	s14, s14, s15
	ldr	r3, [fp, #-112]
	add	r2, r3, #17
	sub	r3, fp, #4
	sub	r3, r3, #2848
	sub	r3, r3, #4
	lsl	r2, r2, #2
	add	r3, r3, r2
	vldr.32	s15, [r3]
	vadd.f32	s15, s14, s15
	vmov.f32	s14, #2.5e-1
	vmul.f32	s15, s15, s14
	sub	r3, fp, #4096
	sub	r3, r3, #4
	mov	r2, r3
	ldr	r3, [fp, #-44]
	lsl	r3, r3, #2
	add	r3, r2, r3
	sub	r3, r3, #292
	vstr.32	s15, [r3]
	sub	r3, fp, #4
	sub	r3, r3, #1824
	sub	r3, r3, #4
	ldr	r2, [fp, #-112]
	lsl	r2, r2, #2
	add	r3, r3, r2
	vldr.32	s14, [r3]
	ldr	r3, [fp, #-112]
	add	r2, r3, #1
	sub	r3, fp, #4
	sub	r3, r3, #1824
	sub	r3, r3, #4
	lsl	r2, r2, #2
	add	r3, r3, r2
	vldr.32	s15, [r3]
	vadd.f32	s14, s14, s15
	ldr	r3, [fp, #-112]
	add	r2, r3, #16
	sub	r3, fp, #4
	sub	r3, r3, #1824
	sub	r3, r3, #4
	lsl	r2, r2, #2
	add	r3, r3, r2
	vldr.32	s15, [r3]
	vadd.f32	s14, s14, s15
	ldr	r3, [fp, #-112]
	add	r2, r3, #17
	sub	r3, fp, #4
	sub	r3, r3, #1824
	sub	r3, r3, #4
	lsl	r2, r2, #2
	add	r3, r3, r2
	vldr.32	s15, [r3]
	vadd.f32	s15, s14, s15
	vmov.f32	s14, #2.5e-1
	vmul.f32	s15, s15, s14
	sub	r3, fp, #4096
	sub	r3, r3, #4
	mov	r2, r3
	ldr	r3, [fp, #-44]
	lsl	r3, r3, #2
	add	r3, r2, r3
	sub	r3, r3, #36
	vstr.32	s15, [r3]
	ldr	r3, [fp, #-52]
	add	r3, r3, #1
	str	r3, [fp, #-52]
	ldr	r3, [fp, #-44]
	add	r3, r3, #1
	str	r3, [fp, #-44]
.L2391:
	ldr	r3, [fp, #-52]
	cmp	r3, #7
	ble	.L2392
	ldr	r3, [fp, #-48]
	add	r3, r3, #1
	str	r3, [fp, #-48]
.L2390:
	ldr	r3, [fp, #-48]
	cmp	r3, #7
	ble	.L2393
	sub	r2, fp, #4352
	sub	r2, r2, #4
	sub	r2, r2, #36
	sub	ip, fp, #808
	sub	r1, fp, #804
	sub	r3, fp, #4096
	sub	r3, r3, #4
	mov	r0, r3
	movw	r3, #:lower16:UVAC_HT.11585
	movt	r3, #:upper16:UVAC_HT.11585
	str	r3, [sp, #16]
	movw	r3, #:lower16:UVDC_HT.11583
	movt	r3, #:upper16:UVDC_HT.11583
	str	r3, [sp, #12]
	ldr	r3, [fp, #-28]
	str	r3, [sp, #8]
	sub	r3, fp, #648
	str	r3, [sp, #4]
	mov	r3, #8
	str	r3, [sp]
	mov	r3, r2
	mov	r2, ip
	ldr	r0, [r0, #-300]
	bl	stbiw__jpg_processDU
	str	r0, [fp, #-28]
	sub	r2, fp, #4096
	sub	r2, r2, #4
	sub	r2, r2, #36
	sub	ip, fp, #808
	sub	r1, fp, #804
	sub	r3, fp, #4096
	sub	r3, r3, #4
	mov	r0, r3
	movw	r3, #:lower16:UVAC_HT.11585
	movt	r3, #:upper16:UVAC_HT.11585
	str	r3, [sp, #16]
	movw	r3, #:lower16:UVDC_HT.11583
	movt	r3, #:upper16:UVDC_HT.11583
	str	r3, [sp, #12]
	ldr	r3, [fp, #-32]
	str	r3, [sp, #8]
	sub	r3, fp, #648
	str	r3, [sp, #4]
	mov	r3, #8
	str	r3, [sp]
	mov	r3, r2
	mov	r2, ip
	ldr	r0, [r0, #-300]
	bl	stbiw__jpg_processDU
	str	r0, [fp, #-32]
	ldr	r3, [fp, #-36]
	add	r3, r3, #16
	str	r3, [fp, #-36]
.L2379:
	sub	r3, fp, #4096
	sub	r3, r3, #4
	ldr	r2, [fp, #-36]
	ldr	r3, [r3, #-304]
	cmp	r2, r3
	blt	.L2394
	ldr	r3, [fp, #-40]
	add	r3, r3, #16
	str	r3, [fp, #-40]
.L2378:
	sub	r3, fp, #4096
	sub	r3, r3, #4
	ldr	r2, [fp, #-40]
	ldr	r3, [r3, #-308]
	cmp	r2, r3
	blt	.L2395
	b	.L2396
.L2377:
	mov	r3, #0
	str	r3, [fp, #-40]
	b	.L2397
.L2410:
	mov	r3, #0
	str	r3, [fp, #-36]
	b	.L2398
.L2409:
	ldr	r3, [fp, #-40]
	str	r3, [fp, #-8]
	mov	r3, #0
	str	r3, [fp, #-44]
	b	.L2399
.L2408:
	sub	r3, fp, #4096
	sub	r3, r3, #4
	ldr	r2, [fp, #-8]
	ldr	r3, [r3, #-308]
	cmp	r2, r3
	blt	.L2400
	sub	r3, fp, #4096
	sub	r3, r3, #4
	ldr	r3, [r3, #-308]
	sub	r3, r3, #1
	b	.L2401
.L2400:
	ldr	r3, [fp, #-8]
.L2401:
	str	r3, [fp, #-116]
	movw	r3, #:lower16:stbi__flip_vertically_on_write
	movt	r3, #:upper16:stbi__flip_vertically_on_write
	ldr	r3, [r3]
	cmp	r3, #0
	beq	.L2402
	sub	r3, fp, #4096
	sub	r3, r3, #4
	ldr	r3, [r3, #-308]
	sub	r2, r3, #1
	ldr	r3, [fp, #-116]
	sub	r3, r2, r3
	b	.L2403
.L2402:
	ldr	r3, [fp, #-116]
.L2403:
	sub	r2, fp, #4096
	sub	r2, r2, #4
	ldr	r2, [r2, #-304]
	mul	r2, r2, r3
	sub	r3, fp, #4096
	sub	r3, r3, #4
	ldr	r3, [r3, #-312]
	mul	r3, r2, r3
	str	r3, [fp, #-120]
	ldr	r3, [fp, #-36]
	str	r3, [fp, #-12]
	b	.L2404
.L2407:
	sub	r3, fp, #4096
	sub	r3, r3, #4
	ldr	r2, [fp, #-12]
	ldr	r3, [r3, #-304]
	cmp	r2, r3
	blt	.L2405
	sub	r3, fp, #4096
	sub	r3, r3, #4
	ldr	r3, [r3, #-304]
	sub	r3, r3, #1
	b	.L2406
.L2405:
	ldr	r3, [fp, #-12]
.L2406:
	sub	r2, fp, #4096
	sub	r2, r2, #4
	ldr	r2, [r2, #-312]
	mul	r3, r2, r3
	ldr	r2, [fp, #-120]
	add	r3, r2, r3
	str	r3, [fp, #-124]
	ldr	r3, [fp, #-124]
	ldr	r2, [fp, #-76]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	vmov	s15, r3	@ int
	vcvt.f32.u32	s15, s15
	vstr.32	s15, [fp, #-128]
	ldr	r3, [fp, #-124]
	ldr	r2, [fp, #-80]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	vmov	s15, r3	@ int
	vcvt.f32.u32	s15, s15
	vstr.32	s15, [fp, #-132]
	ldr	r3, [fp, #-124]
	ldr	r2, [fp, #-84]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	vmov	s15, r3	@ int
	vcvt.f32.u32	s15, s15
	vstr.32	s15, [fp, #-136]
	vldr.32	s15, [fp, #-128]
	vldr.32	s14, .L2414
	vmul.f32	s14, s15, s14
	vldr.32	s15, [fp, #-132]
	vldr.32	s13, .L2414+4
	vmul.f32	s15, s15, s13
	vadd.f32	s14, s14, s15
	vldr.32	s15, [fp, #-136]
	vldr.32	s13, .L2414+8
	vmul.f32	s15, s15, s13
	vadd.f32	s15, s14, s15
	vldr.32	s14, .L2414+12
	vsub.f32	s15, s15, s14
	sub	r3, fp, #4
	sub	r3, r3, #3872
	sub	r3, r3, #4
	ldr	r2, [fp, #-44]
	lsl	r2, r2, #2
	add	r3, r3, r2
	vstr.32	s15, [r3]
	vldr.32	s15, [fp, #-128]
	vldr.32	s14, .L2414+16
	vmul.f32	s14, s15, s14
	vldr.32	s15, [fp, #-132]
	vldr.32	s13, .L2414+20
	vmul.f32	s15, s15, s13
	vsub.f32	s14, s14, s15
	vldr.32	s15, [fp, #-136]
	vmov.f32	s13, #5.0e-1
	vmul.f32	s15, s15, s13
	vadd.f32	s15, s14, s15
	sub	r3, fp, #4
	sub	r3, r3, #2848
	sub	r3, r3, #4
	ldr	r2, [fp, #-44]
	lsl	r2, r2, #2
	add	r3, r3, r2
	vstr.32	s15, [r3]
	vldr.32	s15, [fp, #-128]
	vmov.f32	s14, #5.0e-1
	vmul.f32	s14, s15, s14
	vldr.32	s15, [fp, #-132]
	vldr.32	s13, .L2414+24
	vmul.f32	s15, s15, s13
	vsub.f32	s14, s14, s15
	vldr.32	s15, [fp, #-136]
	vldr.32	s13, .L2414+28
	vmul.f32	s15, s15, s13
	vsub.f32	s15, s14, s15
	sub	r3, fp, #4
	sub	r3, r3, #1824
	sub	r3, r3, #4
	ldr	r2, [fp, #-44]
	lsl	r2, r2, #2
	add	r3, r3, r2
	vstr.32	s15, [r3]
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-44]
	add	r3, r3, #1
	str	r3, [fp, #-44]
.L2404:
	ldr	r3, [fp, #-36]
	add	r3, r3, #7
	ldr	r2, [fp, #-12]
	cmp	r2, r3
	ble	.L2407
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L2399:
	ldr	r3, [fp, #-40]
	add	r3, r3, #7
	ldr	r2, [fp, #-8]
	cmp	r2, r3
	ble	.L2408
	sub	r2, fp, #3872
	sub	r2, r2, #4
	sub	r2, r2, #4
	sub	ip, fp, #808
	sub	r1, fp, #804
	sub	r3, fp, #4096
	sub	r3, r3, #4
	mov	r0, r3
	movw	r3, #:lower16:YAC_HT.11584
	movt	r3, #:upper16:YAC_HT.11584
	str	r3, [sp, #16]
	movw	r3, #:lower16:YDC_HT.11582
	movt	r3, #:upper16:YDC_HT.11582
	str	r3, [sp, #12]
	ldr	r3, [fp, #-24]
	str	r3, [sp, #8]
	sub	r3, fp, #392
	str	r3, [sp, #4]
	mov	r3, #8
	str	r3, [sp]
	mov	r3, r2
	mov	r2, ip
	ldr	r0, [r0, #-300]
	bl	stbiw__jpg_processDU
	str	r0, [fp, #-24]
	sub	r2, fp, #2848
	sub	r2, r2, #4
	sub	r2, r2, #4
	sub	ip, fp, #808
	sub	r1, fp, #804
	sub	r3, fp, #4096
	sub	r3, r3, #4
	mov	r0, r3
	movw	r3, #:lower16:UVAC_HT.11585
	movt	r3, #:upper16:UVAC_HT.11585
	str	r3, [sp, #16]
	movw	r3, #:lower16:UVDC_HT.11583
	movt	r3, #:upper16:UVDC_HT.11583
	str	r3, [sp, #12]
	ldr	r3, [fp, #-28]
	str	r3, [sp, #8]
	sub	r3, fp, #648
	str	r3, [sp, #4]
	mov	r3, #8
	str	r3, [sp]
	mov	r3, r2
	mov	r2, ip
	ldr	r0, [r0, #-300]
	bl	stbiw__jpg_processDU
	str	r0, [fp, #-28]
	sub	r2, fp, #1824
	sub	r2, r2, #4
	sub	r2, r2, #4
	sub	ip, fp, #808
	sub	r1, fp, #804
	sub	r3, fp, #4096
	sub	r3, r3, #4
	mov	r0, r3
	movw	r3, #:lower16:UVAC_HT.11585
	movt	r3, #:upper16:UVAC_HT.11585
	str	r3, [sp, #16]
	movw	r3, #:lower16:UVDC_HT.11583
	movt	r3, #:upper16:UVDC_HT.11583
	str	r3, [sp, #12]
	ldr	r3, [fp, #-32]
	str	r3, [sp, #8]
	sub	r3, fp, #648
	str	r3, [sp, #4]
	mov	r3, #8
	str	r3, [sp]
	mov	r3, r2
	mov	r2, ip
	ldr	r0, [r0, #-300]
	bl	stbiw__jpg_processDU
	str	r0, [fp, #-32]
	ldr	r3, [fp, #-36]
	add	r3, r3, #8
	str	r3, [fp, #-36]
.L2398:
	sub	r3, fp, #4096
	sub	r3, r3, #4
	ldr	r2, [fp, #-36]
	ldr	r3, [r3, #-304]
	cmp	r2, r3
	blt	.L2409
	ldr	r3, [fp, #-40]
	add	r3, r3, #8
	str	r3, [fp, #-40]
.L2397:
	sub	r3, fp, #4096
	sub	r3, r3, #4
	ldr	r2, [fp, #-40]
	ldr	r3, [r3, #-308]
	cmp	r2, r3
	blt	.L2410
.L2396:
	sub	r2, fp, #808
	sub	r1, fp, #804
	sub	r3, fp, #4096
	sub	r3, r3, #4
	mov	r0, r3
	movw	r3, #:lower16:fillBits.11612
	movt	r3, #:upper16:fillBits.11612
	ldr	r0, [r0, #-300]
	bl	stbiw__jpg_writeBits
	sub	r3, fp, #4096
	sub	r3, r3, #4
	mov	r1, #255
	ldr	r0, [r3, #-300]
	bl	stbiw__putc
	sub	r3, fp, #4096
	sub	r3, r3, #4
	mov	r1, #217
	ldr	r0, [r3, #-300]
	bl	stbiw__putc
	mov	r3, #1
.L2411:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L2415:
	.align	2
.L2414:
	.word	1050220167
	.word	1058424226
	.word	1038710997
	.word	1124073472
	.word	-1104360914
	.word	1051302633
	.word	1054236297
	.word	1034323419
	.size	stbi_write_jpg_core, .-stbi_write_jpg_core
	.align	2
	.global	stbi_write_jpg_to_func
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi_write_jpg_to_func, %function
stbi_write_jpg_to_func:
	@ args = 12, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #32
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	str	r3, [fp, #-28]
	sub	r3, fp, #12
	ldr	r2, [fp, #-20]
	ldr	r1, [fp, #-16]
	mov	r0, r3
	bl	stbi__start_write_callbacks
	sub	r0, fp, #12
	ldr	r3, [fp, #12]
	str	r3, [sp, #4]
	ldr	r3, [fp, #8]
	str	r3, [sp]
	ldr	r3, [fp, #4]
	ldr	r2, [fp, #-28]
	ldr	r1, [fp, #-24]
	bl	stbi_write_jpg_core
	mov	r3, r0
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi_write_jpg_to_func, .-stbi_write_jpg_to_func
	.align	2
	.global	stbi_write_jpg
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	stbi_write_jpg, %function
stbi_write_jpg:
	@ args = 8, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #40
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	str	r2, [fp, #-32]
	str	r3, [fp, #-36]
	sub	r3, fp, #16
	ldr	r1, [fp, #-24]
	mov	r0, r3
	bl	stbi__start_write_file
	mov	r3, r0
	cmp	r3, #0
	beq	.L2419
	sub	r0, fp, #16
	ldr	r3, [fp, #8]
	str	r3, [sp, #4]
	ldr	r3, [fp, #4]
	str	r3, [sp]
	ldr	r3, [fp, #-36]
	ldr	r2, [fp, #-32]
	ldr	r1, [fp, #-28]
	bl	stbi_write_jpg_core
	str	r0, [fp, #-8]
	sub	r3, fp, #16
	mov	r0, r3
	bl	stbi__end_write_file
	ldr	r3, [fp, #-8]
	b	.L2421
.L2419:
	mov	r3, #0
.L2421:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	stbi_write_jpg, .-stbi_write_jpg
	.section	.rodata
	.align	2
.LC31:
	.ascii	"Please provide the input image location and output "
	.ascii	"image location as arguments\000"
	.align	2
.LC32:
	.ascii	"Please provide only the input and output image loca"
	.ascii	"tions as arguments\000"
	.align	2
.LC33:
	.ascii	"The image failed to load\000"
	.align	2
.LC34:
	.ascii	"Input image loaded from '%s'\012\000"
	.align	2
.LC35:
	.ascii	"Unexpected image dimensions width=%d, height=%d\012"
	.ascii	"Expected 1280x1024\012\000"
	.align	2
.LC36:
	.ascii	"Completed RGB->YCC conversion\000"
	.align	2
.LC37:
	.ascii	"Completed YCC->RGB conversion\000"
	.align	2
.LC38:
	.ascii	"Freed memory allocated for YCC image\000"
	.align	2
.LC39:
	.ascii	"Freed memory allocated for input RGB image\000"
	.align	2
.LC40:
	.ascii	"Output RGB image written to '%s'\012\000"
	.align	2
.LC41:
	.ascii	"Freed memory allocated for output RGB image\000"
	.text
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #48
	str	r0, [fp, #-40]
	str	r1, [fp, #-44]
	ldr	r3, [fp, #-40]
	cmp	r3, #2
	bgt	.L2423
	movw	r0, #:lower16:.LC31
	movt	r0, #:upper16:.LC31
	bl	puts
	mov	r0, #1
	bl	exit
.L2423:
	ldr	r3, [fp, #-40]
	cmp	r3, #3
	ble	.L2424
	movw	r0, #:lower16:.LC32
	movt	r0, #:upper16:.LC32
	bl	puts
	mov	r0, #1
	bl	exit
.L2424:
	ldr	r3, [fp, #-44]
	ldr	r3, [r3, #4]
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-44]
	ldr	r3, [r3, #8]
	str	r3, [fp, #-12]
	sub	r0, fp, #36
	sub	r2, fp, #32
	sub	r1, fp, #28
	mov	r3, #3
	str	r3, [sp]
	mov	r3, r0
	ldr	r0, [fp, #-8]
	bl	stbi_load
	str	r0, [fp, #-16]
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	bne	.L2425
	movw	r0, #:lower16:.LC33
	movt	r0, #:upper16:.LC33
	bl	printf
	mov	r0, #1
	bl	exit
.L2425:
	ldr	r1, [fp, #-8]
	movw	r0, #:lower16:.LC34
	movt	r0, #:upper16:.LC34
	bl	printf
	ldr	r3, [fp, #-28]
	cmp	r3, #1280
	bne	.L2426
	ldr	r3, [fp, #-32]
	cmp	r3, #1024
	beq	.L2427
.L2426:
	ldr	r3, [fp, #-28]
	ldr	r2, [fp, #-32]
	mov	r1, r3
	movw	r0, #:lower16:.LC35
	movt	r0, #:upper16:.LC35
	bl	printf
	mov	r0, #1
	bl	exit
.L2427:
	ldr	r3, [fp, #-28]
	ldr	r2, [fp, #-32]
	mov	r1, r3
	ldr	r0, [fp, #-16]
	bl	rgb_to_ycc
	str	r0, [fp, #-20]
	movw	r0, #:lower16:.LC36
	movt	r0, #:upper16:.LC36
	bl	puts
	ldr	r0, [fp, #-20]
	bl	ycc_to_rgb
	str	r0, [fp, #-24]
	movw	r0, #:lower16:.LC37
	movt	r0, #:upper16:.LC37
	bl	puts
	ldr	r0, [fp, #-20]
	bl	ycc_image_free
	movw	r0, #:lower16:.LC38
	movt	r0, #:upper16:.LC38
	bl	puts
	ldr	r0, [fp, #-16]
	bl	stbi_image_free
	movw	r0, #:lower16:.LC39
	movt	r0, #:upper16:.LC39
	bl	puts
	ldr	r1, [fp, #-28]
	ldr	r2, [fp, #-32]
	ldr	r0, [fp, #-36]
	mov	r3, #100
	str	r3, [sp, #4]
	ldr	r3, [fp, #-24]
	str	r3, [sp]
	mov	r3, r0
	ldr	r0, [fp, #-12]
	bl	stbi_write_jpg
	ldr	r1, [fp, #-12]
	movw	r0, #:lower16:.LC40
	movt	r0, #:upper16:.LC40
	bl	printf
	ldr	r0, [fp, #-24]
	bl	free
	movw	r0, #:lower16:.LC41
	movt	r0, #:upper16:.LC41
	bl	puts
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	main, .-main
	.section	.rodata
	.align	2
	.type	tag.9071, %object
	.size	tag.9071, 5
tag.9071:
	.byte	74
	.byte	70
	.byte	73
	.byte	70
	.byte	0
	.align	2
	.type	tag.9077, %object
	.size	tag.9077, 6
tag.9077:
	.byte	65
	.byte	100
	.byte	111
	.byte	98
	.byte	101
	.byte	0
	.align	2
	.type	rgb.9122, %object
	.size	rgb.9122, 3
rgb.9122:
	.byte	82
	.byte	71
	.byte	66
	.align	2
	.type	length_dezigzag.9476, %object
	.size	length_dezigzag.9476, 19
length_dezigzag.9476:
	.byte	16
	.byte	17
	.byte	18
	.byte	0
	.byte	8
	.byte	7
	.byte	9
	.byte	6
	.byte	10
	.byte	5
	.byte	11
	.byte	4
	.byte	12
	.byte	3
	.byte	13
	.byte	2
	.byte	14
	.byte	1
	.byte	15
	.align	2
	.type	png_sig.9585, %object
	.size	png_sig.9585, 8
png_sig.9585:
	.byte	-119
	.byte	80
	.byte	78
	.byte	71
	.byte	13
	.byte	10
	.byte	26
	.byte	10
	.data
	.align	2
	.type	mul_table.9984, %object
	.size	mul_table.9984, 36
mul_table.9984:
	.word	0
	.word	255
	.word	85
	.word	73
	.word	17
	.word	33
	.word	65
	.word	129
	.word	1
	.align	2
	.type	shift_table.9985, %object
	.size	shift_table.9985, 36
shift_table.9985:
	.word	0
	.word	0
	.word	0
	.word	1
	.word	0
	.word	2
	.word	4
	.word	6
	.word	0
	.section	.rodata
	.align	2
	.type	__PRETTY_FUNCTION__.10967, %object
	.size	__PRETTY_FUNCTION__.10967, 15
__PRETTY_FUNCTION__.10967:
	.ascii	"stbiw__writefv\000"
	.align	2
	.type	__PRETTY_FUNCTION__.11137, %object
	.size	__PRETTY_FUNCTION__.11137, 22
__PRETTY_FUNCTION__.11137:
	.ascii	"stbiw__write_run_data\000"
	.align	2
	.type	__PRETTY_FUNCTION__.11144, %object
	.size	__PRETTY_FUNCTION__.11144, 23
__PRETTY_FUNCTION__.11144:
	.ascii	"stbiw__write_dump_data\000"
	.align	2
	.type	__PRETTY_FUNCTION__.11233, %object
	.size	__PRETTY_FUNCTION__.11233, 15
__PRETTY_FUNCTION__.11233:
	.ascii	"stbiw__sbgrowf\000"
	.align	2
	.type	__PRETTY_FUNCTION__.11296, %object
	.size	__PRETTY_FUNCTION__.11296, 19
__PRETTY_FUNCTION__.11296:
	.ascii	"stbi_zlib_compress\000"
	.data
	.align	2
	.type	lengthc.11269, %object
	.size	lengthc.11269, 60
lengthc.11269:
	.short	3
	.short	4
	.short	5
	.short	6
	.short	7
	.short	8
	.short	9
	.short	10
	.short	11
	.short	13
	.short	15
	.short	17
	.short	19
	.short	23
	.short	27
	.short	31
	.short	35
	.short	43
	.short	51
	.short	59
	.short	67
	.short	83
	.short	99
	.short	115
	.short	131
	.short	163
	.short	195
	.short	227
	.short	258
	.short	259
	.align	2
	.type	lengtheb.11270, %object
	.size	lengtheb.11270, 29
lengtheb.11270:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	3
	.byte	3
	.byte	3
	.byte	3
	.byte	4
	.byte	4
	.byte	4
	.byte	4
	.byte	5
	.byte	5
	.byte	5
	.byte	5
	.byte	0
	.align	2
	.type	distc.11271, %object
	.size	distc.11271, 62
distc.11271:
	.short	1
	.short	2
	.short	3
	.short	4
	.short	5
	.short	7
	.short	9
	.short	13
	.short	17
	.short	25
	.short	33
	.short	49
	.short	65
	.short	97
	.short	129
	.short	193
	.short	257
	.short	385
	.short	513
	.short	769
	.short	1025
	.short	1537
	.short	2049
	.short	3073
	.short	4097
	.short	6145
	.short	8193
	.short	12289
	.short	16385
	.short	24577
	.short	-32768
	.align	2
	.type	disteb.11272, %object
	.size	disteb.11272, 30
disteb.11272:
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	1
	.byte	1
	.byte	2
	.byte	2
	.byte	3
	.byte	3
	.byte	4
	.byte	4
	.byte	5
	.byte	5
	.byte	6
	.byte	6
	.byte	7
	.byte	7
	.byte	8
	.byte	8
	.byte	9
	.byte	9
	.byte	10
	.byte	10
	.byte	11
	.byte	11
	.byte	12
	.byte	12
	.byte	13
	.byte	13
	.align	2
	.type	crc_table.11328, %object
	.size	crc_table.11328, 1024
crc_table.11328:
	.word	0
	.word	1996959894
	.word	-301047508
	.word	-1727442502
	.word	124634137
	.word	1886057615
	.word	-379345611
	.word	-1637575261
	.word	249268274
	.word	2044508324
	.word	-522852066
	.word	-1747789432
	.word	162941995
	.word	2125561021
	.word	-407360249
	.word	-1866523247
	.word	498536548
	.word	1789927666
	.word	-205950648
	.word	-2067906082
	.word	450548861
	.word	1843258603
	.word	-187386543
	.word	-2083289657
	.word	325883990
	.word	1684777152
	.word	-43845254
	.word	-1973040660
	.word	335633487
	.word	1661365465
	.word	-99664541
	.word	-1928851979
	.word	997073096
	.word	1281953886
	.word	-715111964
	.word	-1570279054
	.word	1006888145
	.word	1258607687
	.word	-770865667
	.word	-1526024853
	.word	901097722
	.word	1119000684
	.word	-608450090
	.word	-1396901568
	.word	853044451
	.word	1172266101
	.word	-589951537
	.word	-1412350631
	.word	651767980
	.word	1373503546
	.word	-925412992
	.word	-1076862698
	.word	565507253
	.word	1454621731
	.word	-809855591
	.word	-1195530993
	.word	671266974
	.word	1594198024
	.word	-972236366
	.word	-1324619484
	.word	795835527
	.word	1483230225
	.word	-1050600021
	.word	-1234817731
	.word	1994146192
	.word	31158534
	.word	-1731059524
	.word	-271249366
	.word	1907459465
	.word	112637215
	.word	-1614814043
	.word	-390540237
	.word	2013776290
	.word	251722036
	.word	-1777751922
	.word	-519137256
	.word	2137656763
	.word	141376813
	.word	-1855689577
	.word	-429695999
	.word	1802195444
	.word	476864866
	.word	-2056965928
	.word	-228458418
	.word	1812370925
	.word	453092731
	.word	-2113342271
	.word	-183516073
	.word	1706088902
	.word	314042704
	.word	-1950435094
	.word	-54949764
	.word	1658658271
	.word	366619977
	.word	-1932296973
	.word	-69972891
	.word	1303535960
	.word	984961486
	.word	-1547960204
	.word	-725929758
	.word	1256170817
	.word	1037604311
	.word	-1529756563
	.word	-740887301
	.word	1131014506
	.word	879679996
	.word	-1385723834
	.word	-631195440
	.word	1141124467
	.word	855842277
	.word	-1442165665
	.word	-586318647
	.word	1342533948
	.word	654459306
	.word	-1106571248
	.word	-921952122
	.word	1466479909
	.word	544179635
	.word	-1184443383
	.word	-832445281
	.word	1591671054
	.word	702138776
	.word	-1328506846
	.word	-942167884
	.word	1504918807
	.word	783551873
	.word	-1212326853
	.word	-1061524307
	.word	-306674912
	.word	-1698712650
	.word	62317068
	.word	1957810842
	.word	-355121351
	.word	-1647151185
	.word	81470997
	.word	1943803523
	.word	-480048366
	.word	-1805370492
	.word	225274430
	.word	2053790376
	.word	-468791541
	.word	-1828061283
	.word	167816743
	.word	2097651377
	.word	-267414716
	.word	-2029476910
	.word	503444072
	.word	1762050814
	.word	-144550051
	.word	-2140837941
	.word	426522225
	.word	1852507879
	.word	-19653770
	.word	-1982649376
	.word	282753626
	.word	1742555852
	.word	-105259153
	.word	-1900089351
	.word	397917763
	.word	1622183637
	.word	-690576408
	.word	-1580100738
	.word	953729732
	.word	1340076626
	.word	-776247311
	.word	-1497606297
	.word	1068828381
	.word	1219638859
	.word	-670225446
	.word	-1358292148
	.word	906185462
	.word	1090812512
	.word	-547295293
	.word	-1469587627
	.word	829329135
	.word	1181335161
	.word	-882789492
	.word	-1134132454
	.word	628085408
	.word	1382605366
	.word	-871598187
	.word	-1156888829
	.word	570562233
	.word	1426400815
	.word	-977650754
	.word	-1296233688
	.word	733239954
	.word	1555261956
	.word	-1026031705
	.word	-1244606671
	.word	752459403
	.word	1541320221
	.word	-1687895376
	.word	-328994266
	.word	1969922972
	.word	40735498
	.word	-1677130071
	.word	-351390145
	.word	1913087877
	.word	83908371
	.word	-1782625662
	.word	-491226604
	.word	2075208622
	.word	213261112
	.word	-1831694693
	.word	-438977011
	.word	2094854071
	.word	198958881
	.word	-2032938284
	.word	-237706686
	.word	1759359992
	.word	534414190
	.word	-2118248755
	.word	-155638181
	.word	1873836001
	.word	414664567
	.word	-2012718362
	.word	-15766928
	.word	1711684554
	.word	285281116
	.word	-1889165569
	.word	-127750551
	.word	1634467795
	.word	376229701
	.word	-1609899400
	.word	-686959890
	.word	1308918612
	.word	956543938
	.word	-1486412191
	.word	-799009033
	.word	1231636301
	.word	1047427035
	.word	-1362007478
	.word	-640263460
	.word	1088359270
	.word	936918000
	.word	-1447252397
	.word	-558129467
	.word	1202900863
	.word	817233897
	.word	-1111625188
	.word	-893730166
	.word	1404277552
	.word	615818150
	.word	-1160759803
	.word	-841546093
	.word	1423857449
	.word	601450431
	.word	-1285129682
	.word	-1000256840
	.word	1567103746
	.word	711928724
	.word	-1274298825
	.word	-1022587231
	.word	1510334235
	.word	755167117
	.align	2
	.type	mapping.11358, %object
	.size	mapping.11358, 20
mapping.11358:
	.word	0
	.word	1
	.word	2
	.word	3
	.word	4
	.align	2
	.type	firstmap.11359, %object
	.size	firstmap.11359, 20
firstmap.11359:
	.word	0
	.word	1
	.word	0
	.word	5
	.word	6
	.section	.rodata
	.align	2
	.type	__PRETTY_FUNCTION__.11432, %object
	.size	__PRETTY_FUNCTION__.11432, 22
__PRETTY_FUNCTION__.11432:
	.ascii	"stbi_write_png_to_mem\000"
	.align	2
	.type	YQT.11586, %object
	.size	YQT.11586, 256
YQT.11586:
	.word	16
	.word	11
	.word	10
	.word	16
	.word	24
	.word	40
	.word	51
	.word	61
	.word	12
	.word	12
	.word	14
	.word	19
	.word	26
	.word	58
	.word	60
	.word	55
	.word	14
	.word	13
	.word	16
	.word	24
	.word	40
	.word	57
	.word	69
	.word	56
	.word	14
	.word	17
	.word	22
	.word	29
	.word	51
	.word	87
	.word	80
	.word	62
	.word	18
	.word	22
	.word	37
	.word	56
	.word	68
	.word	109
	.word	103
	.word	77
	.word	24
	.word	35
	.word	55
	.word	64
	.word	81
	.word	104
	.word	113
	.word	92
	.word	49
	.word	64
	.word	78
	.word	87
	.word	103
	.word	121
	.word	120
	.word	101
	.word	72
	.word	92
	.word	95
	.word	98
	.word	112
	.word	100
	.word	103
	.word	99
	.align	2
	.type	UVQT.11587, %object
	.size	UVQT.11587, 256
UVQT.11587:
	.word	17
	.word	18
	.word	24
	.word	47
	.word	99
	.word	99
	.word	99
	.word	99
	.word	18
	.word	21
	.word	26
	.word	66
	.word	99
	.word	99
	.word	99
	.word	99
	.word	24
	.word	26
	.word	56
	.word	99
	.word	99
	.word	99
	.word	99
	.word	99
	.word	47
	.word	66
	.word	99
	.word	99
	.word	99
	.word	99
	.word	99
	.word	99
	.word	99
	.word	99
	.word	99
	.word	99
	.word	99
	.word	99
	.word	99
	.word	99
	.word	99
	.word	99
	.word	99
	.word	99
	.word	99
	.word	99
	.word	99
	.word	99
	.word	99
	.word	99
	.word	99
	.word	99
	.word	99
	.word	99
	.word	99
	.word	99
	.word	99
	.word	99
	.word	99
	.word	99
	.word	99
	.word	99
	.word	99
	.word	99
	.align	2
	.type	aasf.11588, %object
	.size	aasf.11588, 32
aasf.11588:
	.word	1077216499
	.word	1081808063
	.word	1080853343
	.word	1079302960
	.word	1077216499
	.word	1074674138
	.word	1069805333
	.word	1061668290
	.align	2
	.type	head0.11609, %object
	.size	head0.11609, 25
head0.11609:
	.byte	-1
	.byte	-40
	.byte	-1
	.byte	-32
	.byte	0
	.byte	16
	.byte	74
	.byte	70
	.byte	73
	.byte	70
	.byte	0
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	1
	.byte	0
	.byte	1
	.byte	0
	.byte	0
	.byte	-1
	.byte	-37
	.byte	0
	.byte	-124
	.byte	0
	.align	2
	.type	std_dc_luminance_nrcodes.11574, %object
	.size	std_dc_luminance_nrcodes.11574, 17
std_dc_luminance_nrcodes.11574:
	.byte	0
	.byte	0
	.byte	1
	.byte	5
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.align	2
	.type	std_dc_luminance_values.11575, %object
	.size	std_dc_luminance_values.11575, 12
std_dc_luminance_values.11575:
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.byte	8
	.byte	9
	.byte	10
	.byte	11
	.align	2
	.type	std_ac_luminance_nrcodes.11576, %object
	.size	std_ac_luminance_nrcodes.11576, 17
std_ac_luminance_nrcodes.11576:
	.byte	0
	.byte	0
	.byte	2
	.byte	1
	.byte	3
	.byte	3
	.byte	2
	.byte	4
	.byte	3
	.byte	5
	.byte	5
	.byte	4
	.byte	4
	.byte	0
	.byte	0
	.byte	1
	.byte	125
	.align	2
	.type	std_ac_luminance_values.11577, %object
	.size	std_ac_luminance_values.11577, 162
std_ac_luminance_values.11577:
	.byte	1
	.byte	2
	.byte	3
	.byte	0
	.byte	4
	.byte	17
	.byte	5
	.byte	18
	.byte	33
	.byte	49
	.byte	65
	.byte	6
	.byte	19
	.byte	81
	.byte	97
	.byte	7
	.byte	34
	.byte	113
	.byte	20
	.byte	50
	.byte	-127
	.byte	-111
	.byte	-95
	.byte	8
	.byte	35
	.byte	66
	.byte	-79
	.byte	-63
	.byte	21
	.byte	82
	.byte	-47
	.byte	-16
	.byte	36
	.byte	51
	.byte	98
	.byte	114
	.byte	-126
	.byte	9
	.byte	10
	.byte	22
	.byte	23
	.byte	24
	.byte	25
	.byte	26
	.byte	37
	.byte	38
	.byte	39
	.byte	40
	.byte	41
	.byte	42
	.byte	52
	.byte	53
	.byte	54
	.byte	55
	.byte	56
	.byte	57
	.byte	58
	.byte	67
	.byte	68
	.byte	69
	.byte	70
	.byte	71
	.byte	72
	.byte	73
	.byte	74
	.byte	83
	.byte	84
	.byte	85
	.byte	86
	.byte	87
	.byte	88
	.byte	89
	.byte	90
	.byte	99
	.byte	100
	.byte	101
	.byte	102
	.byte	103
	.byte	104
	.byte	105
	.byte	106
	.byte	115
	.byte	116
	.byte	117
	.byte	118
	.byte	119
	.byte	120
	.byte	121
	.byte	122
	.byte	-125
	.byte	-124
	.byte	-123
	.byte	-122
	.byte	-121
	.byte	-120
	.byte	-119
	.byte	-118
	.byte	-110
	.byte	-109
	.byte	-108
	.byte	-107
	.byte	-106
	.byte	-105
	.byte	-104
	.byte	-103
	.byte	-102
	.byte	-94
	.byte	-93
	.byte	-92
	.byte	-91
	.byte	-90
	.byte	-89
	.byte	-88
	.byte	-87
	.byte	-86
	.byte	-78
	.byte	-77
	.byte	-76
	.byte	-75
	.byte	-74
	.byte	-73
	.byte	-72
	.byte	-71
	.byte	-70
	.byte	-62
	.byte	-61
	.byte	-60
	.byte	-59
	.byte	-58
	.byte	-57
	.byte	-56
	.byte	-55
	.byte	-54
	.byte	-46
	.byte	-45
	.byte	-44
	.byte	-43
	.byte	-42
	.byte	-41
	.byte	-40
	.byte	-39
	.byte	-38
	.byte	-31
	.byte	-30
	.byte	-29
	.byte	-28
	.byte	-27
	.byte	-26
	.byte	-25
	.byte	-24
	.byte	-23
	.byte	-22
	.byte	-15
	.byte	-14
	.byte	-13
	.byte	-12
	.byte	-11
	.byte	-10
	.byte	-9
	.byte	-8
	.byte	-7
	.byte	-6
	.align	2
	.type	std_dc_chrominance_nrcodes.11578, %object
	.size	std_dc_chrominance_nrcodes.11578, 17
std_dc_chrominance_nrcodes.11578:
	.byte	0
	.byte	0
	.byte	3
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.align	2
	.type	std_dc_chrominance_values.11579, %object
	.size	std_dc_chrominance_values.11579, 12
std_dc_chrominance_values.11579:
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.byte	4
	.byte	5
	.byte	6
	.byte	7
	.byte	8
	.byte	9
	.byte	10
	.byte	11
	.align	2
	.type	std_ac_chrominance_nrcodes.11580, %object
	.size	std_ac_chrominance_nrcodes.11580, 17
std_ac_chrominance_nrcodes.11580:
	.byte	0
	.byte	0
	.byte	2
	.byte	1
	.byte	2
	.byte	4
	.byte	4
	.byte	3
	.byte	4
	.byte	7
	.byte	5
	.byte	4
	.byte	4
	.byte	0
	.byte	1
	.byte	2
	.byte	119
	.align	2
	.type	std_ac_chrominance_values.11581, %object
	.size	std_ac_chrominance_values.11581, 162
std_ac_chrominance_values.11581:
	.byte	0
	.byte	1
	.byte	2
	.byte	3
	.byte	17
	.byte	4
	.byte	5
	.byte	33
	.byte	49
	.byte	6
	.byte	18
	.byte	65
	.byte	81
	.byte	7
	.byte	97
	.byte	113
	.byte	19
	.byte	34
	.byte	50
	.byte	-127
	.byte	8
	.byte	20
	.byte	66
	.byte	-111
	.byte	-95
	.byte	-79
	.byte	-63
	.byte	9
	.byte	35
	.byte	51
	.byte	82
	.byte	-16
	.byte	21
	.byte	98
	.byte	114
	.byte	-47
	.byte	10
	.byte	22
	.byte	36
	.byte	52
	.byte	-31
	.byte	37
	.byte	-15
	.byte	23
	.byte	24
	.byte	25
	.byte	26
	.byte	38
	.byte	39
	.byte	40
	.byte	41
	.byte	42
	.byte	53
	.byte	54
	.byte	55
	.byte	56
	.byte	57
	.byte	58
	.byte	67
	.byte	68
	.byte	69
	.byte	70
	.byte	71
	.byte	72
	.byte	73
	.byte	74
	.byte	83
	.byte	84
	.byte	85
	.byte	86
	.byte	87
	.byte	88
	.byte	89
	.byte	90
	.byte	99
	.byte	100
	.byte	101
	.byte	102
	.byte	103
	.byte	104
	.byte	105
	.byte	106
	.byte	115
	.byte	116
	.byte	117
	.byte	118
	.byte	119
	.byte	120
	.byte	121
	.byte	122
	.byte	-126
	.byte	-125
	.byte	-124
	.byte	-123
	.byte	-122
	.byte	-121
	.byte	-120
	.byte	-119
	.byte	-118
	.byte	-110
	.byte	-109
	.byte	-108
	.byte	-107
	.byte	-106
	.byte	-105
	.byte	-104
	.byte	-103
	.byte	-102
	.byte	-94
	.byte	-93
	.byte	-92
	.byte	-91
	.byte	-90
	.byte	-89
	.byte	-88
	.byte	-87
	.byte	-86
	.byte	-78
	.byte	-77
	.byte	-76
	.byte	-75
	.byte	-74
	.byte	-73
	.byte	-72
	.byte	-71
	.byte	-70
	.byte	-62
	.byte	-61
	.byte	-60
	.byte	-59
	.byte	-58
	.byte	-57
	.byte	-56
	.byte	-55
	.byte	-54
	.byte	-46
	.byte	-45
	.byte	-44
	.byte	-43
	.byte	-42
	.byte	-41
	.byte	-40
	.byte	-39
	.byte	-38
	.byte	-30
	.byte	-29
	.byte	-28
	.byte	-27
	.byte	-26
	.byte	-25
	.byte	-24
	.byte	-23
	.byte	-22
	.byte	-14
	.byte	-13
	.byte	-12
	.byte	-11
	.byte	-10
	.byte	-9
	.byte	-8
	.byte	-7
	.byte	-6
	.align	2
	.type	head2.11610, %object
	.size	head2.11610, 14
head2.11610:
	.byte	-1
	.byte	-38
	.byte	0
	.byte	12
	.byte	3
	.byte	1
	.byte	0
	.byte	2
	.byte	17
	.byte	3
	.byte	17
	.byte	0
	.byte	63
	.byte	0
	.align	2
	.type	YDC_HT.11582, %object
	.size	YDC_HT.11582, 1024
YDC_HT.11582:
	.short	0
	.short	2
	.short	2
	.short	3
	.short	3
	.short	3
	.short	4
	.short	3
	.short	5
	.short	3
	.short	6
	.short	3
	.short	14
	.short	4
	.short	30
	.short	5
	.short	62
	.short	6
	.short	126
	.short	7
	.short	254
	.short	8
	.short	510
	.short	9
	.space	976
	.align	2
	.type	YAC_HT.11584, %object
	.size	YAC_HT.11584, 1024
YAC_HT.11584:
	.short	10
	.short	4
	.short	0
	.short	2
	.short	1
	.short	2
	.short	4
	.short	3
	.short	11
	.short	4
	.short	26
	.short	5
	.short	120
	.short	7
	.short	248
	.short	8
	.short	1014
	.short	10
	.short	-126
	.short	16
	.short	-125
	.short	16
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	12
	.short	4
	.short	27
	.short	5
	.short	121
	.short	7
	.short	502
	.short	9
	.short	2038
	.short	11
	.short	-124
	.short	16
	.short	-123
	.short	16
	.short	-122
	.short	16
	.short	-121
	.short	16
	.short	-120
	.short	16
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	28
	.short	5
	.short	249
	.short	8
	.short	1015
	.short	10
	.short	4084
	.short	12
	.short	-119
	.short	16
	.short	-118
	.short	16
	.short	-117
	.short	16
	.short	-116
	.short	16
	.short	-115
	.short	16
	.short	-114
	.short	16
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	58
	.short	6
	.short	503
	.short	9
	.short	4085
	.short	12
	.short	-113
	.short	16
	.short	-112
	.short	16
	.short	-111
	.short	16
	.short	-110
	.short	16
	.short	-109
	.short	16
	.short	-108
	.short	16
	.short	-107
	.short	16
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	59
	.short	6
	.short	1016
	.short	10
	.short	-106
	.short	16
	.short	-105
	.short	16
	.short	-104
	.short	16
	.short	-103
	.short	16
	.short	-102
	.short	16
	.short	-101
	.short	16
	.short	-100
	.short	16
	.short	-99
	.short	16
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	122
	.short	7
	.short	2039
	.short	11
	.short	-98
	.short	16
	.short	-97
	.short	16
	.short	-96
	.short	16
	.short	-95
	.short	16
	.short	-94
	.short	16
	.short	-93
	.short	16
	.short	-92
	.short	16
	.short	-91
	.short	16
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	123
	.short	7
	.short	4086
	.short	12
	.short	-90
	.short	16
	.short	-89
	.short	16
	.short	-88
	.short	16
	.short	-87
	.short	16
	.short	-86
	.short	16
	.short	-85
	.short	16
	.short	-84
	.short	16
	.short	-83
	.short	16
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	250
	.short	8
	.short	4087
	.short	12
	.short	-82
	.short	16
	.short	-81
	.short	16
	.short	-80
	.short	16
	.short	-79
	.short	16
	.short	-78
	.short	16
	.short	-77
	.short	16
	.short	-76
	.short	16
	.short	-75
	.short	16
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	504
	.short	9
	.short	32704
	.short	15
	.short	-74
	.short	16
	.short	-73
	.short	16
	.short	-72
	.short	16
	.short	-71
	.short	16
	.short	-70
	.short	16
	.short	-69
	.short	16
	.short	-68
	.short	16
	.short	-67
	.short	16
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	505
	.short	9
	.short	-66
	.short	16
	.short	-65
	.short	16
	.short	-64
	.short	16
	.short	-63
	.short	16
	.short	-62
	.short	16
	.short	-61
	.short	16
	.short	-60
	.short	16
	.short	-59
	.short	16
	.short	-58
	.short	16
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	506
	.short	9
	.short	-57
	.short	16
	.short	-56
	.short	16
	.short	-55
	.short	16
	.short	-54
	.short	16
	.short	-53
	.short	16
	.short	-52
	.short	16
	.short	-51
	.short	16
	.short	-50
	.short	16
	.short	-49
	.short	16
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	1017
	.short	10
	.short	-48
	.short	16
	.short	-47
	.short	16
	.short	-46
	.short	16
	.short	-45
	.short	16
	.short	-44
	.short	16
	.short	-43
	.short	16
	.short	-42
	.short	16
	.short	-41
	.short	16
	.short	-40
	.short	16
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	1018
	.short	10
	.short	-39
	.short	16
	.short	-38
	.short	16
	.short	-37
	.short	16
	.short	-36
	.short	16
	.short	-35
	.short	16
	.short	-34
	.short	16
	.short	-33
	.short	16
	.short	-32
	.short	16
	.short	-31
	.short	16
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	2040
	.short	11
	.short	-30
	.short	16
	.short	-29
	.short	16
	.short	-28
	.short	16
	.short	-27
	.short	16
	.short	-26
	.short	16
	.short	-25
	.short	16
	.short	-24
	.short	16
	.short	-23
	.short	16
	.short	-22
	.short	16
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	-21
	.short	16
	.short	-20
	.short	16
	.short	-19
	.short	16
	.short	-18
	.short	16
	.short	-17
	.short	16
	.short	-16
	.short	16
	.short	-15
	.short	16
	.short	-14
	.short	16
	.short	-13
	.short	16
	.short	-12
	.short	16
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	2041
	.short	11
	.short	-11
	.short	16
	.short	-10
	.short	16
	.short	-9
	.short	16
	.short	-8
	.short	16
	.short	-7
	.short	16
	.short	-6
	.short	16
	.short	-5
	.short	16
	.short	-4
	.short	16
	.short	-3
	.short	16
	.short	-2
	.short	16
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.align	2
	.type	UVDC_HT.11583, %object
	.size	UVDC_HT.11583, 1024
UVDC_HT.11583:
	.short	0
	.short	2
	.short	1
	.short	2
	.short	2
	.short	2
	.short	6
	.short	3
	.short	14
	.short	4
	.short	30
	.short	5
	.short	62
	.short	6
	.short	126
	.short	7
	.short	254
	.short	8
	.short	510
	.short	9
	.short	1022
	.short	10
	.short	2046
	.short	11
	.space	976
	.align	2
	.type	UVAC_HT.11585, %object
	.size	UVAC_HT.11585, 1024
UVAC_HT.11585:
	.short	0
	.short	2
	.short	1
	.short	2
	.short	4
	.short	3
	.short	10
	.short	4
	.short	24
	.short	5
	.short	25
	.short	5
	.short	56
	.short	6
	.short	120
	.short	7
	.short	500
	.short	9
	.short	1014
	.short	10
	.short	4084
	.short	12
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	11
	.short	4
	.short	57
	.short	6
	.short	246
	.short	8
	.short	501
	.short	9
	.short	2038
	.short	11
	.short	4085
	.short	12
	.short	-120
	.short	16
	.short	-119
	.short	16
	.short	-118
	.short	16
	.short	-117
	.short	16
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	26
	.short	5
	.short	247
	.short	8
	.short	1015
	.short	10
	.short	4086
	.short	12
	.short	32706
	.short	15
	.short	-116
	.short	16
	.short	-115
	.short	16
	.short	-114
	.short	16
	.short	-113
	.short	16
	.short	-112
	.short	16
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	27
	.short	5
	.short	248
	.short	8
	.short	1016
	.short	10
	.short	4087
	.short	12
	.short	-111
	.short	16
	.short	-110
	.short	16
	.short	-109
	.short	16
	.short	-108
	.short	16
	.short	-107
	.short	16
	.short	-106
	.short	16
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	58
	.short	6
	.short	502
	.short	9
	.short	-105
	.short	16
	.short	-104
	.short	16
	.short	-103
	.short	16
	.short	-102
	.short	16
	.short	-101
	.short	16
	.short	-100
	.short	16
	.short	-99
	.short	16
	.short	-98
	.short	16
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	59
	.short	6
	.short	1017
	.short	10
	.short	-97
	.short	16
	.short	-96
	.short	16
	.short	-95
	.short	16
	.short	-94
	.short	16
	.short	-93
	.short	16
	.short	-92
	.short	16
	.short	-91
	.short	16
	.short	-90
	.short	16
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	121
	.short	7
	.short	2039
	.short	11
	.short	-89
	.short	16
	.short	-88
	.short	16
	.short	-87
	.short	16
	.short	-86
	.short	16
	.short	-85
	.short	16
	.short	-84
	.short	16
	.short	-83
	.short	16
	.short	-82
	.short	16
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	122
	.short	7
	.short	2040
	.short	11
	.short	-81
	.short	16
	.short	-80
	.short	16
	.short	-79
	.short	16
	.short	-78
	.short	16
	.short	-77
	.short	16
	.short	-76
	.short	16
	.short	-75
	.short	16
	.short	-74
	.short	16
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	249
	.short	8
	.short	-73
	.short	16
	.short	-72
	.short	16
	.short	-71
	.short	16
	.short	-70
	.short	16
	.short	-69
	.short	16
	.short	-68
	.short	16
	.short	-67
	.short	16
	.short	-66
	.short	16
	.short	-65
	.short	16
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	503
	.short	9
	.short	-64
	.short	16
	.short	-63
	.short	16
	.short	-62
	.short	16
	.short	-61
	.short	16
	.short	-60
	.short	16
	.short	-59
	.short	16
	.short	-58
	.short	16
	.short	-57
	.short	16
	.short	-56
	.short	16
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	504
	.short	9
	.short	-55
	.short	16
	.short	-54
	.short	16
	.short	-53
	.short	16
	.short	-52
	.short	16
	.short	-51
	.short	16
	.short	-50
	.short	16
	.short	-49
	.short	16
	.short	-48
	.short	16
	.short	-47
	.short	16
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	505
	.short	9
	.short	-46
	.short	16
	.short	-45
	.short	16
	.short	-44
	.short	16
	.short	-43
	.short	16
	.short	-42
	.short	16
	.short	-41
	.short	16
	.short	-40
	.short	16
	.short	-39
	.short	16
	.short	-38
	.short	16
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	506
	.short	9
	.short	-37
	.short	16
	.short	-36
	.short	16
	.short	-35
	.short	16
	.short	-34
	.short	16
	.short	-33
	.short	16
	.short	-32
	.short	16
	.short	-31
	.short	16
	.short	-30
	.short	16
	.short	-29
	.short	16
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	2041
	.short	11
	.short	-28
	.short	16
	.short	-27
	.short	16
	.short	-26
	.short	16
	.short	-25
	.short	16
	.short	-24
	.short	16
	.short	-23
	.short	16
	.short	-22
	.short	16
	.short	-21
	.short	16
	.short	-20
	.short	16
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	16352
	.short	14
	.short	-19
	.short	16
	.short	-18
	.short	16
	.short	-17
	.short	16
	.short	-16
	.short	16
	.short	-15
	.short	16
	.short	-14
	.short	16
	.short	-13
	.short	16
	.short	-12
	.short	16
	.short	-11
	.short	16
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	1018
	.short	10
	.short	32707
	.short	15
	.short	-10
	.short	16
	.short	-9
	.short	16
	.short	-8
	.short	16
	.short	-7
	.short	16
	.short	-6
	.short	16
	.short	-5
	.short	16
	.short	-4
	.short	16
	.short	-3
	.short	16
	.short	-2
	.short	16
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.align	2
	.type	fillBits.11612, %object
	.size	fillBits.11612, 4
fillBits.11612:
	.short	127
	.short	7
	.ident	"GCC: (GNU) 8.2.1 20180801 (Red Hat 8.2.1-2)"
	.section	.note.GNU-stack,"",%progbits
