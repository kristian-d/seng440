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
	.fpu neon
	.type	rgb_to_ycc, %function
rgb_to_ycc:
	@ args = 0, pretend = 0, frame = 1160
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #1152
	sub	sp, sp, #8
	str	r0, [fp, #-1152]
	str	r1, [fp, #-1156]
	str	r2, [fp, #-1160]
	ldr	r3, [fp, #-1160]
	ldr	r2, [fp, #-1156]
	mul	r3, r2, r3
	mov	r0, r3
	bl	malloc
	mov	r3, r0
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-1160]
	ldr	r2, [fp, #-1156]
	mul	r3, r2, r3
	lsr	r3, r3, #2
	mov	r0, r3
	bl	malloc
	mov	r3, r0
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-1160]
	ldr	r2, [fp, #-1156]
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
	ldr	r2, [fp, #-1160]
	str	r2, [r3, #16]
	ldr	r3, [fp, #-32]
	ldr	r2, [fp, #-1156]
	str	r2, [r3, #12]
	ldr	r3, [fp, #-1160]
	ldr	r2, [fp, #-1156]
	mul	r2, r2, r3
	ldr	r3, [fp, #-32]
	str	r2, [r3, #20]
	ldr	r3, [fp, #-1160]
	ldr	r2, [fp, #-1156]
	mul	r3, r2, r3
	add	r2, r3, #3
	cmp	r3, #0
	movlt	r3, r2
	movge	r3, r3
	asr	r3, r3, #2
	mov	r2, r3
	ldr	r3, [fp, #-32]
	str	r2, [r3, #24]
	ldr	r3, [fp, #-1160]
	ldr	r2, [fp, #-1156]
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
	mov	r3, #66
	strb	r3, [fp, #-313]
	sub	r3, fp, #312
	sub	r3, r3, #1
	ldrsb	r3, [r3]
	vdup.8	d16, r3
	vstr	d16, [fp, #-44]
	mvn	r3, #126
	strb	r3, [fp, #-312]
	sub	r3, fp, #312
	ldrsb	r3, [r3]
	vdup.8	d16, r3
	vstr	d16, [fp, #-52]
	mov	r3, #25
	strb	r3, [fp, #-311]
	sub	r3, fp, #308
	sub	r3, r3, #3
	ldrsb	r3, [r3]
	vdup.8	d16, r3
	vstr	d16, [fp, #-60]
	sub	r3, fp, #4
	sub	r3, r3, #304
	sub	r3, r3, #2
	movw	r2, #28710
	strh	r2, [r3]	@ movhi
	sub	r3, fp, #4
	sub	r3, r3, #304
	sub	r3, r3, #2
	ldrsh	r3, [r3]
	vdup.16	d16, r3
	vstr	d16, [fp, #-308]
	vldr	d16, [fp, #-308]
	vstr	d16, [fp, #-68]
	sub	r3, fp, #4
	sub	r3, r3, #288
	sub	r3, r3, #2
	movw	r2, #24138
	strh	r2, [r3]	@ movhi
	sub	r3, fp, #4
	sub	r3, r3, #288
	sub	r3, r3, #2
	ldrsh	r3, [r3]
	vdup.16	d16, r3
	vstr	d16, [fp, #-292]
	vldr	d16, [fp, #-292]
	vstr	d16, [fp, #-76]
	sub	r3, fp, #4
	sub	r3, r3, #272
	sub	r3, r3, #2
	movw	r2, #4720
	strh	r2, [r3]	@ movhi
	sub	r3, fp, #4
	sub	r3, r3, #272
	sub	r3, r3, #2
	ldrsh	r3, [r3]
	vdup.16	d16, r3
	vstr	d16, [fp, #-276]
	vldr	d16, [fp, #-276]
	vstr	d16, [fp, #-84]
	movw	r3, #65535
	movt	r3, 1
	str	r3, [fp, #-264]
	ldr	r3, [fp, #-264]
	vdup.32	q8, r3
	vstr	d16, [fp, #-260]
	vstr	d17, [fp, #-252]
	vldr	d16, [fp, #-260]
	vldr	d17, [fp, #-252]
	vstr	d16, [fp, #-100]
	vstr	d17, [fp, #-92]
	mvn	r3, #0
	strh	r3, [fp, #-242]	@ movhi
	ldrh	r3, [fp, #-242]	@ movhi
	vdup.16	q8, r3
	vstr	d16, [fp, #-116]
	vstr	d17, [fp, #-108]
	mov	r3, #1
	movt	r3, 65535
	str	r3, [fp, #-240]
	ldr	r3, [fp, #-240]
	vdup.32	q8, r3
	vstr	d16, [fp, #-236]
	vstr	d17, [fp, #-228]
	vldr	d16, [fp, #-236]
	vldr	d17, [fp, #-228]
	vstr	d16, [fp, #-132]
	vstr	d17, [fp, #-124]
	mov	r3, #16
	strb	r3, [fp, #-214]
	ldrsb	r3, [fp, #-214]
	vdup.8	d16, r3
	vstr	d16, [fp, #-140]
	mvn	r3, #127
	strb	r3, [fp, #-213]
	ldrb	r3, [fp, #-213]
	vdup.8	d16, r3
	vstr	d16, [fp, #-148]
	mov	r3, #0
	str	r3, [fp, #-8]
	mov	r3, #0
	str	r3, [fp, #-12]
	ldr	r2, [fp, #-1156]
	mov	r3, r2
	lsl	r3, r3, #1
	add	r3, r3, r2
	str	r3, [fp, #-152]
	ldr	r3, [fp, #-1160]
	ldr	r2, [fp, #-152]
	mul	r3, r2, r3
	str	r3, [fp, #-156]
	mov	r3, #0
	str	r3, [fp, #-16]
	b	.L18
.L53:
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-152]
	add	r3, r2, r3
	str	r3, [fp, #-160]
	b	.L19
.L43:
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-1152]
	add	r3, r2, r3
	str	r3, [fp, #-924]
	ldr	r3, [fp, #-924]
	vld3.8	{d16-d18}, [r3]
	sub	r3, fp, #4
	sub	r3, r3, #1136
	sub	r3, r3, #8
	vst1.64	{d16-d18}, [r3:64]
	sub	r3, fp, #4
	sub	r3, r3, #1136
	sub	r3, r3, #8
	vld1.64	{d16-d18}, [r3:64]
	sub	r3, fp, #4
	sub	r3, r3, #1088
	sub	r3, r3, #8
	vst1.64	{d16-d18}, [r3:64]
	sub	r3, fp, #4
	sub	r3, r3, #916
	mov	r2, #128
	strh	r2, [r3]	@ movhi
	sub	r3, fp, #4
	sub	r3, r3, #916
	ldrsh	r3, [r3]
	vdup.16	q8, r3
	vstr	d16, [fp, #-180]
	vstr	d17, [fp, #-172]
	sub	r3, fp, #4
	sub	r3, r3, #912
	sub	r3, r3, #2
	mov	r2, #128
	strh	r2, [r3]	@ movhi
	sub	r3, fp, #4
	sub	r3, r3, #912
	sub	r3, r3, #2
	ldrh	r3, [r3]	@ movhi
	vdup.16	q8, r3
	vstr	d16, [fp, #-196]
	vstr	d17, [fp, #-188]
	sub	r3, fp, #4
	sub	r3, r3, #1088
	sub	r3, r3, #8
	vldr	d18, [r3]
	vldr	d16, [fp, #-180]
	vldr	d17, [fp, #-172]
	vstr	d16, [fp, #-900]
	vstr	d17, [fp, #-892]
	vstr	d18, [fp, #-908]
	vldr	d16, [fp, #-44]
	vstr	d16, [fp, #-916]
	vldr	d16, [fp, #-900]
	vldr	d17, [fp, #-892]
	vldr	d18, [fp, #-908]
	vldr	d19, [fp, #-916]
	vmlal.u8	q8, d18, d19
	vstr	d16, [fp, #-180]
	vstr	d17, [fp, #-172]
	sub	r3, fp, #4
	sub	r3, r3, #1088
	sub	r3, r3, #8
	vldr	d18, [r3, #8]
	vldr	d16, [fp, #-180]
	vldr	d17, [fp, #-172]
	vstr	d16, [fp, #-868]
	vstr	d17, [fp, #-860]
	vstr	d18, [fp, #-876]
	vldr	d16, [fp, #-52]
	vstr	d16, [fp, #-884]
	vldr	d16, [fp, #-868]
	vldr	d17, [fp, #-860]
	vldr	d18, [fp, #-876]
	vldr	d19, [fp, #-884]
	vmlal.u8	q8, d18, d19
	vstr	d16, [fp, #-180]
	vstr	d17, [fp, #-172]
	sub	r3, fp, #4
	sub	r3, r3, #1088
	sub	r3, r3, #8
	vldr	d18, [r3, #16]
	vldr	d16, [fp, #-180]
	vldr	d17, [fp, #-172]
	vstr	d16, [fp, #-836]
	vstr	d17, [fp, #-828]
	vstr	d18, [fp, #-844]
	vldr	d16, [fp, #-60]
	vstr	d16, [fp, #-852]
	vldr	d16, [fp, #-836]
	vldr	d17, [fp, #-828]
	vldr	d18, [fp, #-844]
	vldr	d19, [fp, #-852]
	vmlal.u8	q8, d18, d19
	vstr	d16, [fp, #-180]
	vstr	d17, [fp, #-172]
	sub	r3, fp, #4
	sub	r3, r3, #1088
	sub	r3, r3, #8
	vldr	d17, [r3]
	sub	r3, fp, #4
	sub	r3, r3, #1088
	sub	r3, r3, #8
	vldr	d16, [r3]
	vstr	d17, [fp, #-812]
	vstr	d16, [fp, #-820]
	vldr	d16, [fp, #-812]
	vldr	d17, [fp, #-820]
	vsri.8	d16, d17, #8
	sub	r3, fp, #4
	sub	r3, r3, #1088
	sub	r3, r3, #8
	vstr	d16, [r3]
	sub	r3, fp, #4
	sub	r3, r3, #1088
	sub	r3, r3, #8
	vldr	d17, [r3, #8]
	sub	r3, fp, #4
	sub	r3, r3, #1088
	sub	r3, r3, #8
	vldr	d16, [r3, #8]
	vstr	d17, [fp, #-796]
	vstr	d16, [fp, #-804]
	vldr	d16, [fp, #-796]
	vldr	d17, [fp, #-804]
	vsri.8	d16, d17, #8
	sub	r3, fp, #4
	sub	r3, r3, #1088
	sub	r3, r3, #8
	vstr	d16, [r3, #8]
	sub	r3, fp, #4
	sub	r3, r3, #1088
	sub	r3, r3, #8
	vldr	d17, [r3, #16]
	sub	r3, fp, #4
	sub	r3, r3, #1088
	sub	r3, r3, #8
	vldr	d16, [r3, #16]
	vstr	d17, [fp, #-780]
	vstr	d16, [fp, #-788]
	vldr	d16, [fp, #-780]
	vldr	d17, [fp, #-788]
	vsri.8	d16, d17, #8
	sub	r3, fp, #4
	sub	r3, r3, #1088
	sub	r3, r3, #8
	vstr	d16, [r3, #16]
	sub	r3, fp, #4
	sub	r3, r3, #1088
	sub	r3, r3, #8
	vldr	d16, [r3]
	vstr	d16, [fp, #-764]
	vldr	d16, [fp, #-68]
	vstr	d16, [fp, #-772]
	vldr	d16, [fp, #-764]
	vldr	d17, [fp, #-772]
	vmull.u8	q8, d16, d17
	vstr	d16, [fp, #-756]
	vstr	d17, [fp, #-748]
	vldr	d16, [fp, #-756]
	vldr	d17, [fp, #-748]
	vmov	q9, q8  @ v8hi
	vldr	d16, [fp, #-196]
	vldr	d17, [fp, #-188]
	vstr	d16, [fp, #-708]
	vstr	d17, [fp, #-700]
	vstr	d18, [fp, #-724]
	vstr	d19, [fp, #-716]
	vldr	d16, [fp, #-100]
	vldr	d17, [fp, #-92]
	vstr	d16, [fp, #-740]
	vstr	d17, [fp, #-732]
	vldr	d16, [fp, #-708]
	vldr	d17, [fp, #-700]
	vldr	d20, [fp, #-724]
	vldr	d21, [fp, #-716]
	vldr	d18, [fp, #-740]
	vldr	d19, [fp, #-732]
	vmla.i16	q8, q10, q9
	vstr	d16, [fp, #-196]
	vstr	d17, [fp, #-188]
	sub	r3, fp, #4
	sub	r3, r3, #1088
	sub	r3, r3, #8
	vldr	d16, [r3, #8]
	vstr	d16, [fp, #-684]
	vldr	d16, [fp, #-76]
	vstr	d16, [fp, #-692]
	vldr	d16, [fp, #-684]
	vldr	d17, [fp, #-692]
	vmull.u8	q8, d16, d17
	vstr	d16, [fp, #-676]
	vstr	d17, [fp, #-668]
	vldr	d16, [fp, #-676]
	vldr	d17, [fp, #-668]
	vmov	q9, q8  @ v8hi
	vldr	d16, [fp, #-196]
	vldr	d17, [fp, #-188]
	vstr	d16, [fp, #-628]
	vstr	d17, [fp, #-620]
	vstr	d18, [fp, #-644]
	vstr	d19, [fp, #-636]
	vldr	d16, [fp, #-116]
	vldr	d17, [fp, #-108]
	vstr	d16, [fp, #-660]
	vstr	d17, [fp, #-652]
	vldr	d16, [fp, #-628]
	vldr	d17, [fp, #-620]
	vldr	d20, [fp, #-644]
	vldr	d21, [fp, #-636]
	vldr	d18, [fp, #-660]
	vldr	d19, [fp, #-652]
	vmla.i16	q8, q10, q9
	vstr	d16, [fp, #-196]
	vstr	d17, [fp, #-188]
	sub	r3, fp, #4
	sub	r3, r3, #1088
	sub	r3, r3, #8
	vldr	d16, [r3, #16]
	vstr	d16, [fp, #-604]
	vldr	d16, [fp, #-84]
	vstr	d16, [fp, #-612]
	vldr	d16, [fp, #-604]
	vldr	d17, [fp, #-612]
	vmull.u8	q8, d16, d17
	vstr	d16, [fp, #-596]
	vstr	d17, [fp, #-588]
	vldr	d16, [fp, #-596]
	vldr	d17, [fp, #-588]
	vmov	q9, q8  @ v8hi
	vldr	d16, [fp, #-196]
	vldr	d17, [fp, #-188]
	vstr	d16, [fp, #-548]
	vstr	d17, [fp, #-540]
	vstr	d18, [fp, #-564]
	vstr	d19, [fp, #-556]
	vldr	d16, [fp, #-132]
	vldr	d17, [fp, #-124]
	vstr	d16, [fp, #-580]
	vstr	d17, [fp, #-572]
	vldr	d16, [fp, #-548]
	vldr	d17, [fp, #-540]
	vldr	d20, [fp, #-564]
	vldr	d21, [fp, #-556]
	vldr	d18, [fp, #-580]
	vldr	d19, [fp, #-572]
	vmla.i16	q8, q10, q9
	vstr	d16, [fp, #-196]
	vstr	d17, [fp, #-188]
	vldr	d16, [fp, #-180]
	vldr	d17, [fp, #-172]
	vstr	d16, [fp, #-532]
	vstr	d17, [fp, #-524]
	vldr	d16, [fp, #-532]
	vldr	d17, [fp, #-524]
	vshrn.i16	d16, q8, #8
	vstr	d16, [fp, #-508]
	vldr	d16, [fp, #-140]
	vstr	d16, [fp, #-516]
	vldr	d17, [fp, #-508]
	vldr	d16, [fp, #-516]
	vadd.i8	d16, d17, d16
	vstr	d16, [fp, #-204]
	vldr	d16, [fp, #-196]
	vldr	d17, [fp, #-188]
	vstr	d16, [fp, #-500]
	vstr	d17, [fp, #-492]
	vldr	d16, [fp, #-500]
	vldr	d17, [fp, #-492]
	vshrn.i16	d16, q8, #8
	vstr	d16, [fp, #-476]
	vldr	d16, [fp, #-148]
	vstr	d16, [fp, #-484]
	vldr	d17, [fp, #-476]
	vldr	d16, [fp, #-484]
	vadd.i8	d16, d17, d16
	vstr	d16, [fp, #-468]
	vldr	d16, [fp, #-468]
	vstr	d16, [fp, #-212]
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-20]
	add	r3, r2, r3
	str	r3, [fp, #-448]
	vldr	d16, [fp, #-204]
	vstr	d16, [fp, #-460]
	vldr	d16, [fp, #-460]
	ldr	r3, [fp, #-448]
	vst1.8	{d16}, [r3]
	ldr	r3, [fp, #-8]
	add	r3, r3, #8
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-12]
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	str	r3, [fp, #-432]
	vldr	d16, [fp, #-212]
	vstr	d16, [fp, #-444]
	vldr	d16, [fp, #-444]
	ldr	r3, [fp, #-432]
	vst1.8	{d16[0]}, [r3]
	ldr	r3, [fp, #-12]
	add	r2, r3, #1
	str	r2, [fp, #-12]
	mov	r2, r3
	ldr	r3, [fp, #-28]
	add	r3, r3, r2
	str	r3, [fp, #-416]
	vldr	d16, [fp, #-212]
	vstr	d16, [fp, #-428]
	vldr	d16, [fp, #-428]
	ldr	r3, [fp, #-416]
	vst1.8	{d16[1]}, [r3]
	ldr	r3, [fp, #-12]
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	str	r3, [fp, #-400]
	vldr	d16, [fp, #-212]
	vstr	d16, [fp, #-412]
	vldr	d16, [fp, #-412]
	ldr	r3, [fp, #-400]
	vst1.8	{d16[2]}, [r3]
	ldr	r3, [fp, #-12]
	add	r2, r3, #1
	str	r2, [fp, #-12]
	mov	r2, r3
	ldr	r3, [fp, #-28]
	add	r3, r3, r2
	str	r3, [fp, #-384]
	vldr	d16, [fp, #-212]
	vstr	d16, [fp, #-396]
	vldr	d16, [fp, #-396]
	ldr	r3, [fp, #-384]
	vst1.8	{d16[3]}, [r3]
	ldr	r3, [fp, #-12]
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	str	r3, [fp, #-368]
	vldr	d16, [fp, #-212]
	vstr	d16, [fp, #-380]
	vldr	d16, [fp, #-380]
	ldr	r3, [fp, #-368]
	vst1.8	{d16[4]}, [r3]
	ldr	r3, [fp, #-12]
	add	r2, r3, #1
	str	r2, [fp, #-12]
	mov	r2, r3
	ldr	r3, [fp, #-28]
	add	r3, r3, r2
	str	r3, [fp, #-352]
	vldr	d16, [fp, #-212]
	vstr	d16, [fp, #-364]
	vldr	d16, [fp, #-364]
	ldr	r3, [fp, #-352]
	vst1.8	{d16[5]}, [r3]
	ldr	r3, [fp, #-12]
	ldr	r2, [fp, #-24]
	add	r3, r2, r3
	str	r3, [fp, #-336]
	vldr	d16, [fp, #-212]
	vstr	d16, [fp, #-348]
	vldr	d16, [fp, #-348]
	ldr	r3, [fp, #-336]
	vst1.8	{d16[6]}, [r3]
	ldr	r3, [fp, #-12]
	add	r2, r3, #1
	str	r2, [fp, #-12]
	mov	r2, r3
	ldr	r3, [fp, #-28]
	add	r3, r3, r2
	str	r3, [fp, #-320]
	vldr	d16, [fp, #-212]
	vstr	d16, [fp, #-332]
	vldr	d16, [fp, #-332]
	ldr	r3, [fp, #-320]
	vst1.8	{d16[7]}, [r3]
	ldr	r3, [fp, #-16]
	add	r3, r3, #24
	str	r3, [fp, #-16]
.L19:
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-160]
	cmp	r2, r3
	blt	.L43
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-152]
	add	r3, r2, r3
	str	r3, [fp, #-160]
	b	.L44
.L52:
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-1152]
	add	r3, r2, r3
	str	r3, [fp, #-1076]
	ldr	r3, [fp, #-1076]
	vld3.8	{d16-d18}, [r3]
	sub	r3, fp, #4
	sub	r3, r3, #1120
	vst1.64	{d16-d18}, [r3:64]
	sub	r3, fp, #4
	sub	r3, r3, #1120
	vld1.64	{d16-d18}, [r3:64]
	sub	r3, fp, #4
	sub	r3, r3, #1088
	sub	r3, r3, #8
	vst1.64	{d16-d18}, [r3:64]
	sub	r3, fp, #4
	sub	r3, r3, #1056
	sub	r3, r3, #10
	mov	r2, #128
	strh	r2, [r3]	@ movhi
	sub	r3, fp, #4
	sub	r3, r3, #1056
	sub	r3, r3, #10
	ldrsh	r3, [r3]
	vdup.16	q8, r3
	vstr	d16, [fp, #-180]
	vstr	d17, [fp, #-172]
	sub	r3, fp, #4
	sub	r3, r3, #1088
	sub	r3, r3, #8
	vldr	d18, [r3]
	sub	r3, fp, #4
	sub	r3, r3, #1040
	sub	r3, r3, #8
	vldr	d16, [fp, #-180]
	vldr	d17, [fp, #-172]
	vst1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #4
	sub	r3, r3, #1056
	vstr	d18, [r3]
	sub	r3, fp, #4
	sub	r3, r3, #1056
	sub	r3, r3, #8
	vldr	d16, [fp, #-44]
	vstr	d16, [r3]
	sub	r3, fp, #4
	sub	r3, r3, #1040
	sub	r3, r3, #8
	vld1.64	{d16-d17}, [r3:64]
	sub	r3, fp, #4
	sub	r3, r3, #1056
	vldr	d18, [r3]
	sub	r3, fp, #4
	sub	r3, r3, #1056
	sub	r3, r3, #8
	vldr	d19, [r3]
	vmlal.u8	q8, d18, d19
	vstr	d16, [fp, #-180]
	vstr	d17, [fp, #-172]
	sub	r3, fp, #4
	sub	r3, r3, #1088
	sub	r3, r3, #8
	vldr	d18, [r3, #8]
	vldr	d16, [fp, #-180]
	vldr	d17, [fp, #-172]
	vstr	d16, [fp, #-1020]
	vstr	d17, [fp, #-1012]
	sub	r3, fp, #4
	sub	r3, r3, #1024
	vstr	d18, [r3]
	sub	r3, fp, #4
	sub	r3, r3, #1024
	sub	r3, r3, #8
	vldr	d16, [fp, #-52]
	vstr	d16, [r3]
	vldr	d16, [fp, #-1020]
	vldr	d17, [fp, #-1012]
	sub	r3, fp, #4
	sub	r3, r3, #1024
	vldr	d18, [r3]
	sub	r3, fp, #4
	sub	r3, r3, #1024
	sub	r3, r3, #8
	vldr	d19, [r3]
	vmlal.u8	q8, d18, d19
	vstr	d16, [fp, #-180]
	vstr	d17, [fp, #-172]
	sub	r3, fp, #4
	sub	r3, r3, #1088
	sub	r3, r3, #8
	vldr	d18, [r3, #16]
	vldr	d16, [fp, #-180]
	vldr	d17, [fp, #-172]
	vstr	d16, [fp, #-988]
	vstr	d17, [fp, #-980]
	vstr	d18, [fp, #-996]
	vldr	d16, [fp, #-60]
	vstr	d16, [fp, #-1004]
	vldr	d16, [fp, #-988]
	vldr	d17, [fp, #-980]
	vldr	d18, [fp, #-996]
	vldr	d19, [fp, #-1004]
	vmlal.u8	q8, d18, d19
	vstr	d16, [fp, #-180]
	vstr	d17, [fp, #-172]
	vldr	d16, [fp, #-180]
	vldr	d17, [fp, #-172]
	vstr	d16, [fp, #-972]
	vstr	d17, [fp, #-964]
	vldr	d16, [fp, #-972]
	vldr	d17, [fp, #-964]
	vshrn.i16	d16, q8, #8
	vstr	d16, [fp, #-948]
	vldr	d16, [fp, #-140]
	vstr	d16, [fp, #-956]
	vldr	d17, [fp, #-948]
	vldr	d16, [fp, #-956]
	vadd.i8	d16, d17, d16
	vstr	d16, [fp, #-204]
	ldr	r3, [fp, #-8]
	ldr	r2, [fp, #-20]
	add	r3, r2, r3
	str	r3, [fp, #-928]
	vldr	d16, [fp, #-204]
	vstr	d16, [fp, #-940]
	vldr	d16, [fp, #-940]
	ldr	r3, [fp, #-928]
	vst1.8	{d16}, [r3]
	ldr	r3, [fp, #-8]
	add	r3, r3, #8
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-16]
	add	r3, r3, #24
	str	r3, [fp, #-16]
.L44:
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-160]
	cmp	r2, r3
	blt	.L52
.L18:
	ldr	r2, [fp, #-16]
	ldr	r3, [fp, #-156]
	cmp	r2, r3
	blt	.L53
	ldr	r3, [fp, #-32]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	rgb_to_ycc, .-rgb_to_ycc
	.ident	"GCC: (GNU) 8.2.1 20180801 (Red Hat 8.2.1-2)"
	.section	.note.GNU-stack,"",%progbits
