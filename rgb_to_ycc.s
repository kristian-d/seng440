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
	@ args = 0, pretend = 0, frame = 72
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #72
	str	r0, [fp, #-64]
	str	r1, [fp, #-68]
	str	r2, [fp, #-72]
	ldr	r3, [fp, #-72]
	ldr	r2, [fp, #-68]
	mul	r3, r2, r3
	mov	r0, r3
	bl	malloc
	mov	r3, r0
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-72]
	ldr	r2, [fp, #-68]
	mul	r3, r2, r3
	lsr	r3, r3, #2
	mov	r0, r3
	bl	malloc
	mov	r3, r0
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-72]
	ldr	r2, [fp, #-68]
	mul	r3, r2, r3
	lsr	r3, r3, #2
	mov	r0, r3
	bl	malloc
	mov	r3, r0
	str	r3, [fp, #-40]
	mov	r0, #36
	bl	malloc
	mov	r3, r0
	str	r3, [fp, #-44]
	ldr	r3, [fp, #-44]
	ldr	r2, [fp, #-32]
	str	r2, [r3]
	ldr	r3, [fp, #-44]
	ldr	r2, [fp, #-36]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-44]
	ldr	r2, [fp, #-40]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-44]
	ldr	r2, [fp, #-72]
	str	r2, [r3, #16]
	ldr	r3, [fp, #-44]
	ldr	r2, [fp, #-68]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-72]
	ldr	r2, [fp, #-68]
	mul	r2, r2, r3
	ldr	r3, [fp, #-44]
	str	r2, [r3, #20]
	ldr	r3, [fp, #-72]
	ldr	r2, [fp, #-68]
	mul	r3, r2, r3
	add	r2, r3, #3
	cmp	r3, #0
	movlt	r3, r2
	movge	r3, r3
	asr	r3, r3, #2
	mov	r2, r3
	ldr	r3, [fp, #-44]
	str	r2, [r3, #24]
	ldr	r3, [fp, #-72]
	ldr	r2, [fp, #-68]
	mul	r3, r2, r3
	add	r2, r3, #3
	cmp	r3, #0
	movlt	r3, r2
	movge	r3, r3
	asr	r3, r3, #2
	mov	r2, r3
	ldr	r3, [fp, #-44]
	str	r2, [r3, #28]
	ldr	r3, [fp, #-44]
	ldr	r2, [r3, #20]
	ldr	r3, [fp, #-44]
	ldr	r3, [r3, #24]
	add	r2, r2, r3
	ldr	r3, [fp, #-44]
	ldr	r3, [r3, #28]
	add	r2, r2, r3
	ldr	r3, [fp, #-44]
	str	r2, [r3, #32]
	ldr	r3, [fp, #-72]
	ldr	r2, [fp, #-68]
	mul	r2, r2, r3
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	str	r3, [fp, #-48]
	ldr	r2, [fp, #-68]
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	str	r3, [fp, #-52]
	mov	r3, #0
	str	r3, [fp, #-8]
	mov	r3, #0
	str	r3, [fp, #-12]
	mov	r3, #0
	str	r3, [fp, #-16]
	mov	r3, #0
	str	r3, [fp, #-20]
	b	.L2
.L7:
	ldr	r3, [fp, #-20]
	str	r3, [fp, #-24]
	b	.L3
.L4:
	ldr	r3, [fp, #-24]
	ldr	r2, [fp, #-64]
	add	r3, r2, r3
	ldrb	r3, [r3]
	strb	r3, [fp, #-53]
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	ldr	r2, [fp, #-64]
	add	r3, r2, r3
	ldrb	r3, [r3]
	strb	r3, [fp, #-54]
	ldr	r3, [fp, #-24]
	add	r3, r3, #2
	ldr	r2, [fp, #-64]
	add	r3, r2, r3
	ldrb	r3, [r3]
	strb	r3, [fp, #-55]
	ldrb	r2, [fp, #-53]	@ zero_extendqisi2
	movw	r3, #51904
	movt	r3, 65
	mul	r2, r3, r2
	ldrb	r1, [fp, #-54]	@ zero_extendqisi2
	movw	r3, #1572
	movt	r3, 129
	mul	r3, r3, r1
	add	r2, r2, r3
	ldrb	r1, [fp, #-55]	@ zero_extendqisi2
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
	ldr	r3, [fp, #-32]
	add	r3, r3, r1
	add	r2, r2, #16
	uxtb	r2, r2
	strb	r2, [r3]
	ldrb	r2, [fp, #-53]	@ zero_extendqisi2
	movw	r3, #7340
	movt	r3, 65498
	mul	r2, r3, r2
	ldrb	r1, [fp, #-54]	@ zero_extendqisi2
	movw	r3, #33030
	movt	r3, 65461
	mul	r3, r3, r1
	add	r2, r2, r3
	ldrb	r1, [fp, #-55]	@ zero_extendqisi2
	movw	r3, #25166
	movt	r3, 112
	mul	r3, r3, r1
	add	r3, r2, r3
	add	r3, r3, #8388608
	asr	r3, r3, #24
	uxtb	r2, r3
	ldr	r3, [fp, #-12]
	add	r1, r3, #1
	str	r1, [fp, #-12]
	mov	r1, r3
	ldr	r3, [fp, #-36]
	add	r3, r3, r1
	sub	r2, r2, #128
	uxtb	r2, r2
	strb	r2, [r3]
	ldrb	r2, [fp, #-53]	@ zero_extendqisi2
	movw	r3, #25166
	movt	r3, 112
	mul	r2, r3, r2
	ldrb	r1, [fp, #-54]	@ zero_extendqisi2
	movw	r3, #51905
	movt	r3, 65441
	mul	r3, r3, r1
	add	r2, r2, r3
	ldrb	r1, [fp, #-55]	@ zero_extendqisi2
	movw	r3, #54002
	movt	r3, 65517
	mul	r3, r3, r1
	add	r3, r2, r3
	add	r3, r3, #8388608
	asr	r3, r3, #24
	uxtb	r2, r3
	ldr	r3, [fp, #-16]
	add	r1, r3, #1
	str	r1, [fp, #-16]
	mov	r1, r3
	ldr	r3, [fp, #-40]
	add	r3, r3, r1
	sub	r2, r2, #128
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [fp, #-24]
	add	r3, r3, #3
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-24]
	ldr	r2, [fp, #-64]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	movw	r3, #51904
	movt	r3, 65
	mul	r2, r3, r2
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	ldr	r1, [fp, #-64]
	add	r3, r1, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	movw	r3, #1572
	movt	r3, 129
	mul	r3, r3, r1
	add	r2, r2, r3
	ldr	r3, [fp, #-24]
	add	r3, r3, #2
	ldr	r1, [fp, #-64]
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
	ldr	r3, [fp, #-32]
	add	r3, r3, r1
	add	r2, r2, #16
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [fp, #-24]
	add	r3, r3, #3
	str	r3, [fp, #-24]
.L3:
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-52]
	add	r3, r2, r3
	ldr	r2, [fp, #-24]
	cmp	r2, r3
	blt	.L4
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-52]
	add	r3, r2, r3
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-20]
	str	r3, [fp, #-28]
	b	.L5
.L6:
	ldr	r3, [fp, #-28]
	ldr	r2, [fp, #-64]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	movw	r3, #51904
	movt	r3, 65
	mul	r2, r3, r2
	ldr	r3, [fp, #-28]
	add	r3, r3, #1
	ldr	r1, [fp, #-64]
	add	r3, r1, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	movw	r3, #1572
	movt	r3, 129
	mul	r3, r3, r1
	add	r2, r2, r3
	ldr	r3, [fp, #-28]
	add	r3, r3, #2
	ldr	r1, [fp, #-64]
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
	ldr	r3, [fp, #-32]
	add	r3, r3, r1
	add	r2, r2, #16
	uxtb	r2, r2
	strb	r2, [r3]
	ldr	r3, [fp, #-28]
	add	r3, r3, #3
	str	r3, [fp, #-28]
.L5:
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-52]
	add	r3, r2, r3
	ldr	r2, [fp, #-28]
	cmp	r2, r3
	blt	.L6
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-52]
	add	r3, r2, r3
	str	r3, [fp, #-20]
.L2:
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-48]
	cmp	r2, r3
	blt	.L7
	ldr	r3, [fp, #-44]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	rgb_to_ycc, .-rgb_to_ycc
	.align	2
	.global	ycc_to_rgb
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	ycc_to_rgb, %function
ycc_to_rgb:
	@ args = 0, pretend = 0, frame = 40
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #40
	str	r0, [fp, #-40]
	ldr	r3, [fp, #-40]
	ldr	r3, [r3, #16]
	ldr	r2, [fp, #-40]
	ldr	r2, [r2, #12]
	mul	r2, r2, r3
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	mov	r0, r3
	bl	malloc
	mov	r3, r0
	str	r3, [fp, #-16]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L10
.L19:
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L11
.L18:
	ldr	r3, [fp, #-40]
	ldr	r3, [r3, #12]
	ldr	r2, [fp, #-8]
	mul	r2, r2, r3
	ldr	r3, [fp, #-12]
	add	r2, r2, r3
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-40]
	ldr	r3, [r3]
	ldr	r2, [fp, #-40]
	ldr	r2, [r2, #12]
	ldr	r1, [fp, #-8]
	mul	r1, r1, r2
	ldr	r2, [fp, #-12]
	add	r2, r1, r2
	add	r3, r3, r2
	ldrb	r3, [r3]
	strb	r3, [fp, #-21]
	ldr	r3, [fp, #-40]
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-8]
	lsr	r1, r3, #31
	add	r3, r1, r3
	asr	r3, r3, #1
	mov	r1, r3
	ldr	r3, [fp, #-40]
	ldr	r3, [r3, #12]
	mul	r3, r3, r1
	lsr	r1, r3, #31
	add	r3, r1, r3
	asr	r3, r3, #1
	mov	r0, r3
	ldr	r3, [fp, #-12]
	lsr	r1, r3, #31
	add	r3, r1, r3
	asr	r3, r3, #1
	add	r3, r0, r3
	add	r3, r2, r3
	ldrb	r3, [r3]
	strb	r3, [fp, #-22]
	ldr	r3, [fp, #-40]
	ldr	r2, [r3, #8]
	ldr	r3, [fp, #-8]
	lsr	r1, r3, #31
	add	r3, r1, r3
	asr	r3, r3, #1
	mov	r1, r3
	ldr	r3, [fp, #-40]
	ldr	r3, [r3, #12]
	mul	r3, r3, r1
	lsr	r1, r3, #31
	add	r3, r1, r3
	asr	r3, r3, #1
	mov	r0, r3
	ldr	r3, [fp, #-12]
	lsr	r1, r3, #31
	add	r3, r1, r3
	asr	r3, r3, #1
	add	r3, r0, r3
	add	r3, r2, r3
	ldrb	r3, [r3]
	strb	r3, [fp, #-23]
	ldrb	r3, [fp, #-21]	@ zero_extendqisi2
	sub	r2, r3, #16
	movw	r3, #40894
	movt	r3, 18
	mul	r2, r3, r2
	ldrb	r3, [fp, #-23]	@ zero_extendqisi2
	sub	r1, r3, #128
	movw	r3, #35127
	movt	r3, 25
	mul	r3, r3, r1
	add	r3, r2, r3
	add	r3, r3, #524288
	asr	r3, r3, #20
	str	r3, [fp, #-28]
	ldrb	r3, [fp, #-21]	@ zero_extendqisi2
	sub	r2, r3, #16
	movw	r3, #40894
	movt	r3, 18
	mul	r2, r3, r2
	ldrb	r3, [fp, #-23]	@ zero_extendqisi2
	sub	r1, r3, #128
	movw	r3, #65012
	movt	r3, 65522
	mul	r3, r3, r1
	add	r2, r2, r3
	ldrb	r3, [fp, #-22]	@ zero_extendqisi2
	sub	r1, r3, #128
	movw	r3, #48759
	movt	r3, 65529
	mul	r3, r3, r1
	add	r3, r2, r3
	add	r3, r3, #524288
	asr	r3, r3, #20
	str	r3, [fp, #-32]
	ldrb	r3, [fp, #-21]	@ zero_extendqisi2
	sub	r2, r3, #16
	movw	r3, #20447
	movt	r3, 9
	mul	r2, r3, r2
	ldrb	r3, [fp, #-22]	@ zero_extendqisi2
	sub	r1, r3, #128
	movw	r3, #9437
	movt	r3, 16
	mul	r3, r3, r1
	add	r3, r2, r3
	add	r3, r3, #262144
	asr	r3, r3, #19
	str	r3, [fp, #-36]
	ldr	r3, [fp, #-28]
	cmp	r3, #255
	bgt	.L12
	ldr	r3, [fp, #-28]
	bic	r3, r3, r3, asr #31
	uxtb	r1, r3
	b	.L13
.L12:
	mov	r1, #255
.L13:
	ldr	r3, [fp, #-20]
	ldr	r2, [fp, #-16]
	add	r3, r2, r3
	mov	r2, r1
	strb	r2, [r3]
	ldr	r3, [fp, #-32]
	cmp	r3, #255
	bgt	.L14
	ldr	r3, [fp, #-32]
	bic	r3, r3, r3, asr #31
	uxtb	r1, r3
	b	.L15
.L14:
	mov	r1, #255
.L15:
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	ldr	r2, [fp, #-16]
	add	r3, r2, r3
	mov	r2, r1
	strb	r2, [r3]
	ldr	r3, [fp, #-36]
	cmp	r3, #255
	bgt	.L16
	ldr	r3, [fp, #-36]
	bic	r3, r3, r3, asr #31
	uxtb	r1, r3
	b	.L17
.L16:
	mov	r1, #255
.L17:
	ldr	r3, [fp, #-20]
	add	r3, r3, #2
	ldr	r2, [fp, #-16]
	add	r3, r2, r3
	mov	r2, r1
	strb	r2, [r3]
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L11:
	ldr	r3, [fp, #-40]
	ldr	r3, [r3, #12]
	ldr	r2, [fp, #-12]
	cmp	r2, r3
	blt	.L18
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L10:
	ldr	r3, [fp, #-40]
	ldr	r3, [r3, #16]
	ldr	r2, [fp, #-8]
	cmp	r2, r3
	blt	.L19
	ldr	r3, [fp, #-16]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	ycc_to_rgb, .-ycc_to_rgb
	.align	2
	.global	ycc_image_free
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	ycc_image_free, %function
ycc_image_free:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	ldr	r3, [fp, #-8]
	ldr	r3, [r3]
	mov	r0, r3
	bl	free
	ldr	r3, [fp, #-8]
	ldr	r3, [r3, #4]
	mov	r0, r3
	bl	free
	ldr	r3, [fp, #-8]
	ldr	r3, [r3, #8]
	mov	r0, r3
	bl	free
	ldr	r0, [fp, #-8]
	bl	free
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	ycc_image_free, .-ycc_image_free
	.section	.rodata
	.align	2
.LC0:
	.ascii	"Debugging YCC image...\000"
	.align	2
.LC1:
	.ascii	"YCC image stats:\012\011pixel_count=%d\012\011width"
	.ascii	"=%d\012\011height=%d\012\011y_bytes=%d\012\011cb_by"
	.ascii	"tes=%d\012\011cr_bytes=%d\012\011total_bytes=%d\012"
	.ascii	"\011y_max=%ld\012\011y_min=%ld\012\011cb_max=%ld\012"
	.ascii	"\011cb_min=%ld\012\011cr_max=%ld\012\011cr_max=%ld\012"
	.ascii	"\000"
	.align	2
.LC2:
	.ascii	"First row of Y:\000"
	.align	2
.LC3:
	.ascii	"%d \000"
	.align	2
.LC4:
	.ascii	"\012First row of Cb:\000"
	.align	2
.LC5:
	.ascii	"\012First row of Cr:\000"
	.align	2
.LC6:
	.ascii	"\012Finished debug.\000"
	.text
	.align	2
	.global	ycc_image_debug
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	ycc_image_debug, %function
ycc_image_debug:
	@ args = 0, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, fp, lr}
	add	fp, sp, #12
	sub	sp, sp, #96
	str	r0, [fp, #-64]
	movw	r0, #:lower16:.LC0
	movt	r0, #:upper16:.LC0
	bl	puts
	mvn	r3, #-2147483648
	str	r3, [fp, #-16]
	mov	r3, #-2147483648
	str	r3, [fp, #-20]
	mvn	r3, #-2147483648
	str	r3, [fp, #-24]
	mov	r3, #-2147483648
	str	r3, [fp, #-28]
	mvn	r3, #-2147483648
	str	r3, [fp, #-32]
	mov	r3, #-2147483648
	str	r3, [fp, #-36]
	mov	r3, #0
	str	r3, [fp, #-40]
	b	.L23
.L26:
	ldr	r3, [fp, #-64]
	ldr	r2, [r3]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [fp, #-16]
	cmp	r3, r2
	ble	.L24
	ldr	r3, [fp, #-64]
	ldr	r2, [r3]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [fp, #-16]
.L24:
	ldr	r3, [fp, #-64]
	ldr	r2, [r3]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [fp, #-20]
	cmp	r3, r2
	bge	.L25
	ldr	r3, [fp, #-64]
	ldr	r2, [r3]
	ldr	r3, [fp, #-40]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [fp, #-20]
.L25:
	ldr	r3, [fp, #-40]
	add	r3, r3, #1
	str	r3, [fp, #-40]
.L23:
	ldr	r3, [fp, #-64]
	ldr	r3, [r3, #16]
	ldr	r2, [fp, #-64]
	ldr	r2, [r2, #12]
	mul	r3, r2, r3
	ldr	r2, [fp, #-40]
	cmp	r2, r3
	blt	.L26
	mov	r3, #0
	str	r3, [fp, #-44]
	b	.L27
.L32:
	ldr	r3, [fp, #-64]
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [fp, #-24]
	cmp	r3, r2
	ble	.L28
	ldr	r3, [fp, #-64]
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [fp, #-24]
.L28:
	ldr	r3, [fp, #-64]
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [fp, #-28]
	cmp	r3, r2
	bge	.L29
	ldr	r3, [fp, #-64]
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [fp, #-28]
.L29:
	ldr	r3, [fp, #-64]
	ldr	r2, [r3, #8]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [fp, #-32]
	cmp	r3, r2
	ble	.L30
	ldr	r3, [fp, #-64]
	ldr	r2, [r3, #8]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [fp, #-32]
.L30:
	ldr	r3, [fp, #-64]
	ldr	r2, [r3, #8]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r3
	ldr	r3, [fp, #-36]
	cmp	r3, r2
	bge	.L31
	ldr	r3, [fp, #-64]
	ldr	r2, [r3, #8]
	ldr	r3, [fp, #-44]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [fp, #-36]
.L31:
	ldr	r3, [fp, #-44]
	add	r3, r3, #1
	str	r3, [fp, #-44]
.L27:
	ldr	r3, [fp, #-64]
	ldr	r3, [r3, #16]
	ldr	r2, [fp, #-64]
	ldr	r2, [r2, #12]
	mul	r3, r2, r3
	add	r2, r3, #3
	cmp	r3, #0
	movlt	r3, r2
	movge	r3, r3
	asr	r3, r3, #2
	mov	r2, r3
	ldr	r3, [fp, #-44]
	cmp	r3, r2
	blt	.L32
	ldr	r3, [fp, #-64]
	ldr	r3, [r3, #16]
	ldr	r2, [fp, #-64]
	ldr	r2, [r2, #12]
	mul	lr, r2, r3
	ldr	r3, [fp, #-64]
	ldr	r4, [r3, #12]
	ldr	r3, [fp, #-64]
	ldr	r5, [r3, #16]
	ldr	r3, [fp, #-64]
	ldr	r3, [r3, #20]
	ldr	r2, [fp, #-64]
	ldr	r2, [r2, #24]
	ldr	r1, [fp, #-64]
	ldr	r1, [r1, #28]
	ldr	r0, [fp, #-64]
	ldr	r0, [r0, #32]
	ldr	ip, [fp, #-32]
	str	ip, [sp, #36]
	ldr	ip, [fp, #-36]
	str	ip, [sp, #32]
	ldr	ip, [fp, #-24]
	str	ip, [sp, #28]
	ldr	ip, [fp, #-28]
	str	ip, [sp, #24]
	ldr	ip, [fp, #-16]
	str	ip, [sp, #20]
	ldr	ip, [fp, #-20]
	str	ip, [sp, #16]
	str	r0, [sp, #12]
	str	r1, [sp, #8]
	str	r2, [sp, #4]
	str	r3, [sp]
	mov	r3, r5
	mov	r2, r4
	mov	r1, lr
	movw	r0, #:lower16:.LC1
	movt	r0, #:upper16:.LC1
	bl	printf
	movw	r0, #:lower16:.LC2
	movt	r0, #:upper16:.LC2
	bl	puts
	mov	r3, #0
	str	r3, [fp, #-48]
	b	.L33
.L34:
	ldr	r3, [fp, #-64]
	ldr	r2, [r3]
	ldr	r3, [fp, #-48]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	movw	r0, #:lower16:.LC3
	movt	r0, #:upper16:.LC3
	bl	printf
	ldr	r3, [fp, #-48]
	add	r3, r3, #1
	str	r3, [fp, #-48]
.L33:
	ldr	r3, [fp, #-64]
	ldr	r3, [r3, #12]
	ldr	r2, [fp, #-48]
	cmp	r2, r3
	blt	.L34
	movw	r0, #:lower16:.LC4
	movt	r0, #:upper16:.LC4
	bl	puts
	mov	r3, #0
	str	r3, [fp, #-52]
	b	.L35
.L36:
	ldr	r3, [fp, #-64]
	ldr	r2, [r3, #4]
	ldr	r3, [fp, #-52]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	movw	r0, #:lower16:.LC3
	movt	r0, #:upper16:.LC3
	bl	printf
	ldr	r3, [fp, #-52]
	add	r3, r3, #1
	str	r3, [fp, #-52]
.L35:
	ldr	r3, [fp, #-64]
	ldr	r3, [r3, #12]
	lsr	r2, r3, #31
	add	r3, r2, r3
	asr	r3, r3, #1
	mov	r2, r3
	ldr	r3, [fp, #-52]
	cmp	r3, r2
	blt	.L36
	movw	r0, #:lower16:.LC5
	movt	r0, #:upper16:.LC5
	bl	puts
	mov	r3, #0
	str	r3, [fp, #-56]
	b	.L37
.L38:
	ldr	r3, [fp, #-64]
	ldr	r2, [r3, #8]
	ldr	r3, [fp, #-56]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	movw	r0, #:lower16:.LC3
	movt	r0, #:upper16:.LC3
	bl	printf
	ldr	r3, [fp, #-56]
	add	r3, r3, #1
	str	r3, [fp, #-56]
.L37:
	ldr	r3, [fp, #-64]
	ldr	r3, [r3, #12]
	lsr	r2, r3, #31
	add	r3, r2, r3
	asr	r3, r3, #1
	mov	r2, r3
	ldr	r3, [fp, #-56]
	cmp	r3, r2
	blt	.L38
	movw	r0, #:lower16:.LC6
	movt	r0, #:upper16:.LC6
	bl	puts
	nop
	sub	sp, fp, #12
	@ sp needed
	pop	{r4, r5, fp, pc}
	.size	ycc_image_debug, .-ycc_image_debug
	.section	.rodata
	.align	2
.LC7:
	.ascii	"0x%02x%02x%02x \000"
	.text
	.align	2
	.global	rgb_image_print_hex
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	rgb_image_print_hex, %function
rgb_image_print_hex:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #32
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	str	r2, [fp, #-32]
	mov	r3, #0
	str	r3, [fp, #-16]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L40
.L43:
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-28]
	mul	r2, r2, r3
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	str	r3, [fp, #-16]
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L41
.L42:
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	add	r3, r3, #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	add	r3, r3, #2
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r0
	movw	r0, #:lower16:.LC7
	movt	r0, #:upper16:.LC7
	bl	printf
	ldr	r3, [fp, #-12]
	add	r3, r3, #3
	str	r3, [fp, #-12]
.L41:
	ldr	r2, [fp, #-28]
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	ldr	r2, [fp, #-12]
	cmp	r2, r3
	blt	.L42
	mov	r0, #10
	bl	putchar
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L40:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-32]
	cmp	r2, r3
	blt	.L43
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	rgb_image_print_hex, .-rgb_image_print_hex
	.section	.rodata
	.align	2
.LC8:
	.ascii	"(%d,%d,%d) \000"
	.text
	.align	2
	.global	rgb_image_print
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	rgb_image_print, %function
rgb_image_print:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #32
	str	r0, [fp, #-24]
	str	r1, [fp, #-28]
	str	r2, [fp, #-32]
	mov	r3, #0
	str	r3, [fp, #-16]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L45
.L48:
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-28]
	mul	r2, r2, r3
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	str	r3, [fp, #-16]
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L46
.L47:
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	add	r3, r3, #1
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r0, r3
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	add	r3, r3, #2
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r2, r0
	movw	r0, #:lower16:.LC8
	movt	r0, #:upper16:.LC8
	bl	printf
	ldr	r3, [fp, #-12]
	add	r3, r3, #3
	str	r3, [fp, #-12]
.L46:
	ldr	r2, [fp, #-28]
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	ldr	r2, [fp, #-12]
	cmp	r2, r3
	blt	.L47
	mov	r0, #10
	bl	putchar
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L45:
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	ble	.L48
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	rgb_image_print, .-rgb_image_print
	.section	.rodata
	.align	2
.LC9:
	.ascii	"(%d->%d,%d->%d,%d->%d) \000"
	.align	2
.LC10:
	.ascii	"pixel row=%d column=%d\000"
	.align	2
.LC11:
	.ascii	"max_error_red=%d max_error_green=%d max_error_blue="
	.ascii	"%d\012\000"
	.text
	.align	2
	.global	rgb_image_compare
	.syntax unified
	.arm
	.fpu vfpv3-d16
	.type	rgb_image_compare, %function
rgb_image_compare:
	@ args = 4, pretend = 0, frame = 72
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #88
	str	r0, [fp, #-64]
	str	r1, [fp, #-68]
	str	r2, [fp, #-72]
	str	r3, [fp, #-76]
	mov	r3, #0
	str	r3, [fp, #-32]
	mov	r3, #0
	str	r3, [fp, #-8]
	mov	r3, #0
	str	r3, [fp, #-12]
	mov	r3, #0
	str	r3, [fp, #-16]
	mov	r3, #0
	str	r3, [fp, #-20]
	mov	r3, #0
	str	r3, [fp, #-24]
	b	.L50
.L63:
	ldr	r3, [fp, #-24]
	ldr	r2, [fp, #-72]
	mul	r2, r2, r3
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	str	r3, [fp, #-32]
	mov	r3, #0
	str	r3, [fp, #-28]
	b	.L51
.L61:
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-28]
	add	r3, r2, r3
	ldr	r2, [fp, #-64]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [fp, #-36]
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-28]
	add	r3, r2, r3
	ldr	r2, [fp, #-68]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [fp, #-40]
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-28]
	add	r3, r2, r3
	add	r3, r3, #1
	ldr	r2, [fp, #-64]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [fp, #-44]
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-28]
	add	r3, r2, r3
	add	r3, r3, #1
	ldr	r2, [fp, #-68]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [fp, #-48]
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-28]
	add	r3, r2, r3
	add	r3, r3, #2
	ldr	r2, [fp, #-64]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [fp, #-52]
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-28]
	add	r3, r2, r3
	add	r3, r3, #2
	ldr	r2, [fp, #-68]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	str	r3, [fp, #-56]
	ldr	r2, [fp, #-36]
	ldr	r3, [fp, #-40]
	sub	r3, r2, r3
	ldr	r2, [fp, #-12]
	cmp	r2, r3
	bge	.L52
	mov	r3, #1
	str	r3, [fp, #-8]
	ldr	r2, [fp, #-36]
	ldr	r3, [fp, #-40]
	sub	r3, r2, r3
	str	r3, [fp, #-12]
	b	.L53
.L52:
	ldr	r2, [fp, #-40]
	ldr	r3, [fp, #-36]
	sub	r3, r2, r3
	ldr	r2, [fp, #-12]
	cmp	r2, r3
	bge	.L53
	mov	r3, #1
	str	r3, [fp, #-8]
	ldr	r2, [fp, #-40]
	ldr	r3, [fp, #-36]
	sub	r3, r2, r3
	str	r3, [fp, #-12]
.L53:
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	sub	r3, r2, r3
	ldr	r2, [fp, #-16]
	cmp	r2, r3
	bge	.L54
	mov	r3, #1
	str	r3, [fp, #-8]
	ldr	r2, [fp, #-44]
	ldr	r3, [fp, #-48]
	sub	r3, r2, r3
	str	r3, [fp, #-16]
	b	.L55
.L54:
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	sub	r3, r2, r3
	ldr	r2, [fp, #-16]
	cmp	r2, r3
	bge	.L55
	mov	r3, #1
	str	r3, [fp, #-8]
	ldr	r2, [fp, #-48]
	ldr	r3, [fp, #-44]
	sub	r3, r2, r3
	str	r3, [fp, #-16]
.L55:
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-56]
	sub	r3, r2, r3
	ldr	r2, [fp, #-20]
	cmp	r2, r3
	bge	.L56
	mov	r3, #1
	str	r3, [fp, #-8]
	ldr	r2, [fp, #-52]
	ldr	r3, [fp, #-56]
	sub	r3, r2, r3
	str	r3, [fp, #-20]
	b	.L57
.L56:
	ldr	r2, [fp, #-56]
	ldr	r3, [fp, #-52]
	sub	r3, r2, r3
	ldr	r2, [fp, #-20]
	cmp	r2, r3
	bge	.L57
	mov	r3, #1
	str	r3, [fp, #-8]
	ldr	r2, [fp, #-56]
	ldr	r3, [fp, #-52]
	sub	r3, r2, r3
	str	r3, [fp, #-20]
.L57:
	ldr	r3, [fp, #4]
	cmp	r3, #0
	bne	.L58
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	beq	.L59
.L58:
	ldr	r3, [fp, #-56]
	str	r3, [sp, #8]
	ldr	r3, [fp, #-52]
	str	r3, [sp, #4]
	ldr	r3, [fp, #-48]
	str	r3, [sp]
	ldr	r3, [fp, #-44]
	ldr	r2, [fp, #-40]
	ldr	r1, [fp, #-36]
	movw	r0, #:lower16:.LC9
	movt	r0, #:upper16:.LC9
	bl	printf
.L59:
	ldr	r3, [fp, #-8]
	cmp	r3, #0
	beq	.L60
	ldr	r3, [fp, #4]
	cmp	r3, #0
	bne	.L60
	ldr	r2, [fp, #-28]
	ldr	r1, [fp, #-24]
	movw	r0, #:lower16:.LC10
	movt	r0, #:upper16:.LC10
	bl	printf
	mov	r0, #10
	bl	putchar
.L60:
	mov	r3, #0
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-28]
	add	r3, r3, #3
	str	r3, [fp, #-28]
.L51:
	ldr	r2, [fp, #-72]
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	ldr	r2, [fp, #-28]
	cmp	r2, r3
	blt	.L61
	ldr	r3, [fp, #4]
	cmp	r3, #0
	beq	.L62
	mov	r0, #10
	bl	putchar
.L62:
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
.L50:
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-76]
	cmp	r2, r3
	blt	.L63
	ldr	r3, [fp, #-20]
	ldr	r2, [fp, #-16]
	ldr	r1, [fp, #-12]
	movw	r0, #:lower16:.LC11
	movt	r0, #:upper16:.LC11
	bl	printf
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	rgb_image_compare, .-rgb_image_compare
	.ident	"GCC: (GNU) 8.2.1 20180801 (Red Hat 8.2.1-2)"
	.section	.note.GNU-stack,"",%progbits
