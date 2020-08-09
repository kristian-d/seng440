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
	.file	"rgb_to_ycc_neon.c"
	.text
	.align	2
	.global	rgb_to_ycc
	.arch armv7-a
	.syntax unified
	.arm
	.fpu neon
	.type	rgb_to_ycc, %function
rgb_to_ycc:
	@ args = 0, pretend = 0, frame = 992
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	vpush.64	{d8, d9, d10, d11, d12, d13, d14, d15}
	add	fp, sp, #68
	sub	sp, sp, #992
	str	r0, [fp, #-1048]
	str	r1, [fp, #-1052]
	str	r2, [fp, #-1056]
	ldr	r3, [fp, #-1056]
	ldr	r2, [fp, #-1052]
	mul	r3, r2, r3
	mov	r0, r3
	bl	malloc
	mov	r3, r0
	str	r3, [fp, #-84]
	ldr	r3, [fp, #-1056]
	ldr	r2, [fp, #-1052]
	mul	r3, r2, r3
	lsr	r3, r3, #2
	mov	r0, r3
	bl	malloc
	mov	r3, r0
	str	r3, [fp, #-88]
	ldr	r3, [fp, #-1056]
	ldr	r2, [fp, #-1052]
	mul	r3, r2, r3
	lsr	r3, r3, #2
	mov	r0, r3
	bl	malloc
	mov	r3, r0
	str	r3, [fp, #-92]
	mov	r0, #36
	bl	malloc
	mov	r3, r0
	str	r3, [fp, #-96]
	ldr	r3, [fp, #-96]
	ldr	r2, [fp, #-84]
	str	r2, [r3]
	ldr	r3, [fp, #-96]
	ldr	r2, [fp, #-88]
	str	r2, [r3, #4]
	ldr	r3, [fp, #-96]
	ldr	r2, [fp, #-92]
	str	r2, [r3, #8]
	ldr	r3, [fp, #-96]
	ldr	r2, [fp, #-1056]
	str	r2, [r3, #16]
	ldr	r3, [fp, #-96]
	ldr	r2, [fp, #-1052]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1056]
	ldr	r2, [fp, #-1052]
	mul	r2, r2, r3
	ldr	r3, [fp, #-96]
	str	r2, [r3, #20]
	ldr	r3, [fp, #-1056]
	ldr	r2, [fp, #-1052]
	mul	r3, r2, r3
	add	r2, r3, #3
	cmp	r3, #0
	movlt	r3, r2
	movge	r3, r3
	asr	r3, r3, #2
	mov	r2, r3
	ldr	r3, [fp, #-96]
	str	r2, [r3, #24]
	ldr	r3, [fp, #-1056]
	ldr	r2, [fp, #-1052]
	mul	r3, r2, r3
	add	r2, r3, #3
	cmp	r3, #0
	movlt	r3, r2
	movge	r3, r3
	asr	r3, r3, #2
	mov	r2, r3
	ldr	r3, [fp, #-96]
	str	r2, [r3, #28]
	ldr	r3, [fp, #-96]
	ldr	r2, [r3, #20]
	ldr	r3, [fp, #-96]
	ldr	r3, [r3, #24]
	add	r2, r2, r3
	ldr	r3, [fp, #-96]
	ldr	r3, [r3, #28]
	add	r2, r2, r3
	ldr	r3, [fp, #-96]
	str	r2, [r3, #32]
	mov	r3, #66
	strb	r3, [fp, #-209]
	ldrsb	r3, [fp, #-209]
	vdup.8	d16, r3
	vmov	d22, d16  @ v8qi
	mvn	r3, #126
	strb	r3, [fp, #-208]
	ldrsb	r3, [fp, #-208]
	vdup.8	d16, r3
	vmov	d23, d16  @ v8qi
	mov	r3, #25
	strb	r3, [fp, #-207]
	ldrsb	r3, [fp, #-207]
	vdup.8	d16, r3
	vmov	d24, d16  @ v8qi
	movw	r3, #28710
	strh	r3, [fp, #-206]	@ movhi
	ldrsh	r3, [fp, #-206]
	vdup.16	d16, r3
	vstr	d16, [fp, #-204]
	vldr	d16, [fp, #-204]
	vmov	d26, d16  @ v8qi
	movw	r3, #24138
	strh	r3, [fp, #-190]	@ movhi
	ldrsh	r3, [fp, #-190]
	vdup.16	d16, r3
	vstr	d16, [fp, #-188]
	vldr	d16, [fp, #-188]
	vmov	d27, d16  @ v8qi
	movw	r3, #4720
	strh	r3, [fp, #-174]	@ movhi
	ldrsh	r3, [fp, #-174]
	vdup.16	d16, r3
	vstr	d16, [fp, #-172]
	vldr	d16, [fp, #-172]
	vmov	d28, d16  @ v8qi
	movw	r3, #65535
	movt	r3, 1
	str	r3, [fp, #-160]
	ldr	r3, [fp, #-160]
	vdup.32	q8, r3
	vstr	d16, [fp, #-156]
	vstr	d17, [fp, #-148]
	vldr	d16, [fp, #-156]
	vldr	d17, [fp, #-148]
	vmov	q6, q8  @ v8hi
	mvn	r3, #0
	strh	r3, [fp, #-138]	@ movhi
	ldrh	r3, [fp, #-138]	@ movhi
	vdup.16	q8, r3
	vmov	q7, q8  @ v8hi
	mov	r3, #1
	movt	r3, 65535
	str	r3, [fp, #-136]
	ldr	r3, [fp, #-136]
	vdup.32	q8, r3
	vstr	d16, [fp, #-132]
	vstr	d17, [fp, #-124]
	vldr	d16, [fp, #-132]
	vldr	d17, [fp, #-124]
	vmov	q15, q8  @ v8hi
	mov	r3, #16
	strb	r3, [fp, #-110]
	ldrsb	r3, [fp, #-110]
	vdup.8	d16, r3
	vmov	d25, d16  @ v8qi
	mvn	r3, #127
	strb	r3, [fp, #-109]
	ldrb	r3, [fp, #-109]
	vdup.8	d16, r3
	vmov	d29, d16  @ v8qi
	mov	r3, #0
	str	r3, [fp, #-72]
	mov	r3, #0
	str	r3, [fp, #-76]
	ldr	r2, [fp, #-1052]
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	str	r3, [fp, #-100]
	ldr	r3, [fp, #-1056]
	ldr	r2, [fp, #-100]
	mul	r3, r2, r3
	str	r3, [fp, #-104]
	mov	r3, #0
	str	r3, [fp, #-80]
	b	.L18
.L53:
	ldr	r2, [fp, #-80]
	ldr	r3, [fp, #-100]
	add	r3, r2, r3
	str	r3, [fp, #-108]
	b	.L19
.L43:
	ldr	r3, [fp, #-80]
	ldr	r2, [fp, #-1048]
	add	r3, r2, r3
	str	r3, [fp, #-820]
	ldr	r3, [fp, #-820]
	vld3.8	{d16-d18}, [r3]
	sub	r3, fp, #68
	sub	r3, r3, #976
	vst1.64	{d16-d18}, [r3:64]
	sub	r3, fp, #68
	sub	r3, r3, #976
	vld1.64	{d16-d18}, [r3:64]
	sub	r3, fp, #68
	sub	r3, r3, #928
	vst1.64	{d16-d18}, [r3:64]
	sub	r3, fp, #68
	sub	r3, r3, #748
	mov	r2, #128
	strh	r2, [r3]	@ movhi
	sub	r3, fp, #68
	sub	r3, r3, #748
	ldrsh	r3, [r3]
	vdup.16	q8, r3
	vmov	q4, q8  @ v8hi
	sub	r3, fp, #68
	sub	r3, r3, #744
	sub	r3, r3, #2
	mov	r2, #128
	strh	r2, [r3]	@ movhi
	sub	r3, fp, #68
	sub	r3, r3, #744
	sub	r3, r3, #2
	ldrh	r3, [r3]	@ movhi
	vdup.16	q8, r3
	vmov	q5, q8  @ v8hi
	sub	r3, fp, #68
	sub	r3, r3, #928
	vldr	d16, [r3]
	vstr	d8, [fp, #-796]
	vstr	d9, [fp, #-788]
	vstr	d16, [fp, #-804]
	vmov	d16, d22  @ v8qi
	vstr	d16, [fp, #-812]
	vldr	d16, [fp, #-796]
	vldr	d17, [fp, #-788]
	vldr	d18, [fp, #-804]
	vldr	d19, [fp, #-812]
	vmlal.u8	q8, d18, d19
	vmov	q4, q8  @ v8hi
	sub	r3, fp, #68
	sub	r3, r3, #928
	vldr	d16, [r3, #8]
	vstr	d8, [fp, #-764]
	vstr	d9, [fp, #-756]
	vstr	d16, [fp, #-772]
	vmov	d16, d23  @ v8qi
	vstr	d16, [fp, #-780]
	vldr	d16, [fp, #-764]
	vldr	d17, [fp, #-756]
	vldr	d18, [fp, #-772]
	vldr	d19, [fp, #-780]
	vmlal.u8	q8, d18, d19
	vmov	q4, q8  @ v8hi
	sub	r3, fp, #68
	sub	r3, r3, #928
	vldr	d16, [r3, #16]
	vstr	d8, [fp, #-732]
	vstr	d9, [fp, #-724]
	vstr	d16, [fp, #-740]
	vmov	d16, d24  @ v8qi
	vstr	d16, [fp, #-748]
	vldr	d16, [fp, #-732]
	vldr	d17, [fp, #-724]
	vldr	d18, [fp, #-740]
	vldr	d19, [fp, #-748]
	vmlal.u8	q8, d18, d19
	vmov	q4, q8  @ v8hi
	sub	r3, fp, #68
	sub	r3, r3, #928
	vldr	d17, [r3]
	sub	r3, fp, #68
	sub	r3, r3, #928
	vldr	d16, [r3]
	vstr	d17, [fp, #-708]
	vstr	d16, [fp, #-716]
	vldr	d16, [fp, #-708]
	vldr	d17, [fp, #-716]
	vsri.8	d16, d17, #8
	sub	r3, fp, #68
	sub	r3, r3, #928
	vstr	d16, [r3]
	sub	r3, fp, #68
	sub	r3, r3, #928
	vldr	d17, [r3, #8]
	sub	r3, fp, #68
	sub	r3, r3, #928
	vldr	d16, [r3, #8]
	vstr	d17, [fp, #-692]
	vstr	d16, [fp, #-700]
	vldr	d16, [fp, #-692]
	vldr	d17, [fp, #-700]
	vsri.8	d16, d17, #8
	sub	r3, fp, #68
	sub	r3, r3, #928
	vstr	d16, [r3, #8]
	sub	r3, fp, #68
	sub	r3, r3, #928
	vldr	d17, [r3, #16]
	sub	r3, fp, #68
	sub	r3, r3, #928
	vldr	d16, [r3, #16]
	vstr	d17, [fp, #-676]
	vstr	d16, [fp, #-684]
	vldr	d16, [fp, #-676]
	vldr	d17, [fp, #-684]
	vsri.8	d16, d17, #8
	sub	r3, fp, #68
	sub	r3, r3, #928
	vstr	d16, [r3, #16]
	sub	r3, fp, #68
	sub	r3, r3, #928
	vldr	d16, [r3]
	vstr	d16, [fp, #-660]
	vmov	d16, d26  @ v8qi
	vstr	d16, [fp, #-668]
	vldr	d16, [fp, #-660]
	vldr	d17, [fp, #-668]
	vmull.u8	q8, d16, d17
	vstr	d16, [fp, #-652]
	vstr	d17, [fp, #-644]
	vldr	d16, [fp, #-652]
	vldr	d17, [fp, #-644]
	vstr	d10, [fp, #-604]
	vstr	d11, [fp, #-596]
	vstr	d16, [fp, #-620]
	vstr	d17, [fp, #-612]
	vstr	d12, [fp, #-636]
	vstr	d13, [fp, #-628]
	vldr	d16, [fp, #-604]
	vldr	d17, [fp, #-596]
	vldr	d20, [fp, #-620]
	vldr	d21, [fp, #-612]
	vldr	d18, [fp, #-636]
	vldr	d19, [fp, #-628]
	vmla.i16	q8, q10, q9
	vmov	q5, q8  @ v8hi
	sub	r3, fp, #68
	sub	r3, r3, #928
	vldr	d16, [r3, #8]
	vstr	d16, [fp, #-580]
	vmov	d16, d27  @ v8qi
	vstr	d16, [fp, #-588]
	vldr	d16, [fp, #-580]
	vldr	d17, [fp, #-588]
	vmull.u8	q8, d16, d17
	vstr	d16, [fp, #-572]
	vstr	d17, [fp, #-564]
	vldr	d16, [fp, #-572]
	vldr	d17, [fp, #-564]
	vstr	d10, [fp, #-524]
	vstr	d11, [fp, #-516]
	vstr	d16, [fp, #-540]
	vstr	d17, [fp, #-532]
	vstr	d14, [fp, #-556]
	vstr	d15, [fp, #-548]
	vldr	d16, [fp, #-524]
	vldr	d17, [fp, #-516]
	vldr	d20, [fp, #-540]
	vldr	d21, [fp, #-532]
	vldr	d18, [fp, #-556]
	vldr	d19, [fp, #-548]
	vmla.i16	q8, q10, q9
	vmov	q5, q8  @ v8hi
	sub	r3, fp, #68
	sub	r3, r3, #928
	vldr	d16, [r3, #16]
	vstr	d16, [fp, #-500]
	vmov	d16, d28  @ v8qi
	vstr	d16, [fp, #-508]
	vldr	d16, [fp, #-500]
	vldr	d17, [fp, #-508]
	vmull.u8	q8, d16, d17
	vstr	d16, [fp, #-492]
	vstr	d17, [fp, #-484]
	vldr	d16, [fp, #-492]
	vldr	d17, [fp, #-484]
	vstr	d10, [fp, #-444]
	vstr	d11, [fp, #-436]
	vstr	d16, [fp, #-460]
	vstr	d17, [fp, #-452]
	vmov	q8, q15  @ v8hi
	vstr	d16, [fp, #-476]
	vstr	d17, [fp, #-468]
	vldr	d16, [fp, #-444]
	vldr	d17, [fp, #-436]
	vldr	d20, [fp, #-460]
	vldr	d21, [fp, #-452]
	vldr	d18, [fp, #-476]
	vldr	d19, [fp, #-468]
	vmla.i16	q8, q10, q9
	vmov	q5, q8  @ v8hi
	vstr	d8, [fp, #-428]
	vstr	d9, [fp, #-420]
	vldr	d16, [fp, #-428]
	vldr	d17, [fp, #-420]
	vshrn.i16	d16, q8, #8
	vstr	d16, [fp, #-404]
	vmov	d16, d25  @ v8qi
	vstr	d16, [fp, #-412]
	vldr	d17, [fp, #-404]
	vldr	d16, [fp, #-412]
	vadd.i8	d16, d17, d16
	vmov	d9, d16  @ v8qi
	vstr	d10, [fp, #-396]
	vstr	d11, [fp, #-388]
	vldr	d16, [fp, #-396]
	vldr	d17, [fp, #-388]
	vshrn.i16	d16, q8, #8
	vstr	d16, [fp, #-372]
	vmov	d16, d29  @ v8qi
	vstr	d16, [fp, #-380]
	vldr	d17, [fp, #-372]
	vldr	d16, [fp, #-380]
	vadd.i8	d16, d17, d16
	vstr	d16, [fp, #-364]
	vldr	d16, [fp, #-364]
	vmov	d8, d16  @ v8qi
	ldr	r3, [fp, #-72]
	ldr	r2, [fp, #-84]
	add	r3, r2, r3
	str	r3, [fp, #-344]
	vstr	d9, [fp, #-356]
	vldr	d16, [fp, #-356]
	ldr	r3, [fp, #-344]
	vst1.8	{d16}, [r3]
	ldr	r3, [fp, #-72]
	add	r3, r3, #8
	str	r3, [fp, #-72]
	ldr	r3, [fp, #-76]
	ldr	r2, [fp, #-88]
	add	r3, r2, r3
	str	r3, [fp, #-328]
	vstr	d8, [fp, #-340]
	vldr	d16, [fp, #-340]
	ldr	r3, [fp, #-328]
	vst1.8	{d16[0]}, [r3]
	ldr	r3, [fp, #-76]
	add	r2, r3, #1
	str	r2, [fp, #-76]
	mov	r2, r3
	ldr	r3, [fp, #-92]
	add	r3, r3, r2
	str	r3, [fp, #-312]
	vstr	d8, [fp, #-324]
	vldr	d16, [fp, #-324]
	ldr	r3, [fp, #-312]
	vst1.8	{d16[1]}, [r3]
	ldr	r3, [fp, #-76]
	ldr	r2, [fp, #-88]
	add	r3, r2, r3
	str	r3, [fp, #-296]
	vstr	d8, [fp, #-308]
	vldr	d16, [fp, #-308]
	ldr	r3, [fp, #-296]
	vst1.8	{d16[2]}, [r3]
	ldr	r3, [fp, #-76]
	add	r2, r3, #1
	str	r2, [fp, #-76]
	mov	r2, r3
	ldr	r3, [fp, #-92]
	add	r3, r3, r2
	str	r3, [fp, #-280]
	vstr	d8, [fp, #-292]
	vldr	d16, [fp, #-292]
	ldr	r3, [fp, #-280]
	vst1.8	{d16[3]}, [r3]
	ldr	r3, [fp, #-76]
	ldr	r2, [fp, #-88]
	add	r3, r2, r3
	str	r3, [fp, #-264]
	vstr	d8, [fp, #-276]
	vldr	d16, [fp, #-276]
	ldr	r3, [fp, #-264]
	vst1.8	{d16[4]}, [r3]
	ldr	r3, [fp, #-76]
	add	r2, r3, #1
	str	r2, [fp, #-76]
	mov	r2, r3
	ldr	r3, [fp, #-92]
	add	r3, r3, r2
	str	r3, [fp, #-248]
	vstr	d8, [fp, #-260]
	vldr	d16, [fp, #-260]
	ldr	r3, [fp, #-248]
	vst1.8	{d16[5]}, [r3]
	ldr	r3, [fp, #-76]
	ldr	r2, [fp, #-88]
	add	r3, r2, r3
	str	r3, [fp, #-232]
	vstr	d8, [fp, #-244]
	vldr	d16, [fp, #-244]
	ldr	r3, [fp, #-232]
	vst1.8	{d16[6]}, [r3]
	ldr	r3, [fp, #-76]
	add	r2, r3, #1
	str	r2, [fp, #-76]
	mov	r2, r3
	ldr	r3, [fp, #-92]
	add	r3, r3, r2
	str	r3, [fp, #-216]
	vstr	d8, [fp, #-228]
	vldr	d16, [fp, #-228]
	ldr	r3, [fp, #-216]
	vst1.8	{d16[7]}, [r3]
	ldr	r3, [fp, #-80]
	add	r3, r3, #24
	str	r3, [fp, #-80]
.L19:
	ldr	r2, [fp, #-80]
	ldr	r3, [fp, #-108]
	cmp	r2, r3
	blt	.L43
	ldr	r2, [fp, #-80]
	ldr	r3, [fp, #-100]
	add	r3, r2, r3
	str	r3, [fp, #-108]
	b	.L44
.L52:
	ldr	r3, [fp, #-80]
	ldr	r2, [fp, #-1048]
	add	r3, r2, r3
	str	r3, [fp, #-972]
	ldr	r3, [fp, #-972]
	vld3.8	{d16-d18}, [r3]
	sub	r3, fp, #68
	sub	r3, r3, #952
	vst1.64	{d16-d18}, [r3:64]
	sub	r3, fp, #68
	sub	r3, r3, #952
	vld1.64	{d16-d18}, [r3:64]
	sub	r3, fp, #68
	sub	r3, r3, #928
	vst1.64	{d16-d18}, [r3:64]
	sub	r3, fp, #68
	sub	r3, r3, #896
	sub	r3, r3, #2
	mov	r2, #128
	strh	r2, [r3]	@ movhi
	sub	r3, fp, #68
	sub	r3, r3, #896
	sub	r3, r3, #2
	ldrsh	r3, [r3]
	vdup.16	q8, r3
	vmov	q4, q8  @ v8hi
	sub	r3, fp, #68
	sub	r3, r3, #928
	vldr	d16, [r3]
	vstr	d8, [fp, #-948]
	vstr	d9, [fp, #-940]
	vstr	d16, [fp, #-956]
	vmov	d16, d22  @ v8qi
	vstr	d16, [fp, #-964]
	vldr	d16, [fp, #-948]
	vldr	d17, [fp, #-940]
	vldr	d18, [fp, #-956]
	vldr	d19, [fp, #-964]
	vmlal.u8	q8, d18, d19
	vmov	q4, q8  @ v8hi
	sub	r3, fp, #68
	sub	r3, r3, #928
	vldr	d16, [r3, #8]
	vstr	d8, [fp, #-916]
	vstr	d9, [fp, #-908]
	vstr	d16, [fp, #-924]
	vmov	d16, d23  @ v8qi
	vstr	d16, [fp, #-932]
	vldr	d16, [fp, #-916]
	vldr	d17, [fp, #-908]
	vldr	d18, [fp, #-924]
	vldr	d19, [fp, #-932]
	vmlal.u8	q8, d18, d19
	vmov	q4, q8  @ v8hi
	sub	r3, fp, #68
	sub	r3, r3, #928
	vldr	d16, [r3, #16]
	vstr	d8, [fp, #-884]
	vstr	d9, [fp, #-876]
	vstr	d16, [fp, #-892]
	vmov	d16, d24  @ v8qi
	vstr	d16, [fp, #-900]
	vldr	d16, [fp, #-884]
	vldr	d17, [fp, #-876]
	vldr	d18, [fp, #-892]
	vldr	d19, [fp, #-900]
	vmlal.u8	q8, d18, d19
	vmov	q4, q8  @ v8hi
	vstr	d8, [fp, #-868]
	vstr	d9, [fp, #-860]
	vldr	d16, [fp, #-868]
	vldr	d17, [fp, #-860]
	vshrn.i16	d16, q8, #8
	vstr	d16, [fp, #-844]
	vmov	d16, d25  @ v8qi
	vstr	d16, [fp, #-852]
	vldr	d17, [fp, #-844]
	vldr	d16, [fp, #-852]
	vadd.i8	d16, d17, d16
	vmov	d9, d16  @ v8qi
	ldr	r3, [fp, #-72]
	ldr	r2, [fp, #-84]
	add	r3, r2, r3
	str	r3, [fp, #-824]
	vstr	d9, [fp, #-836]
	vldr	d16, [fp, #-836]
	ldr	r3, [fp, #-824]
	vst1.8	{d16}, [r3]
	ldr	r3, [fp, #-72]
	add	r3, r3, #8
	str	r3, [fp, #-72]
	ldr	r3, [fp, #-80]
	add	r3, r3, #24
	str	r3, [fp, #-80]
.L44:
	ldr	r2, [fp, #-80]
	ldr	r3, [fp, #-108]
	cmp	r2, r3
	blt	.L52
.L18:
	ldr	r2, [fp, #-80]
	ldr	r3, [fp, #-104]
	cmp	r2, r3
	blt	.L53
	ldr	r3, [fp, #-96]
	mov	r0, r3
	sub	sp, fp, #68
	@ sp needed
	vldm	sp!, {d8-d15}
	pop	{fp, pc}
	.size	rgb_to_ycc, .-rgb_to_ycc
	.ident	"GCC: (GNU) 8.2.1 20180801 (Red Hat 8.2.1-2)"
	.section	.note.GNU-stack,"",%progbits
