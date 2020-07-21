default:
	gcc main.c rgb_ycc_utils.c rgb_to_ycc.c -lm -o main -Wall

arm: main

main: rgb_to_ycc.arm.s
	gcc main.c rgb_ycc_utils.c rgb_to_ycc.arm.s -lm -o main -Wall

rgb_to_ycc.arm.s:
	gcc -mfpu=neon -S rgb_to_ycc.c -o rgb_to_ycc.arm.s
