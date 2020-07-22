default:
	gcc main.c rgb_ycc_utils.c rgb_to_ycc.c -lm -o main -Wall

arm: main

main: rgb_to_ycc.arm_neon.s
	gcc main.c rgb_ycc_utils.c rgb_to_ycc.arm_neon.s -lm -o main -Wall

rgb_to_ycc.arm_neon.s:
	gcc -mfpu=neon -S rgb_to_ycc.c -o rgb_to_ycc.arm_neon.s

clean:
	rm ./rgb_to_ycc.arm_neon.s
