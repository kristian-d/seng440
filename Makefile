default:
	gcc main.c rgb_ycc_utils.c rgb_to_ycc.c -lm -o main -Wall

arm: main

arm-neon: main-neon

arm-hardware:
	gcc -S rgb_to_ycc_hardware.c -o rgb_to_ycc.arm_hardware.s

main: rgb_to_ycc.arm.s
	gcc main.c rgb_ycc_utils.c rgb_to_ycc.arm.s -lm -o main -Wall

main-neon: rgb_to_ycc.arm_neon.s
	gcc main_neon.c rgb_ycc_utils.c rgb_to_ycc.arm_neon.s -lm -o main-neon -Wall

rgb_to_ycc.arm.s:
	gcc -S rgb_to_ycc.c -o rgb_to_ycc.arm.s

rgb_to_ycc.arm_neon.s:
	gcc -mfpu=neon -S rgb_to_ycc_neon.c -o rgb_to_ycc.arm_neon.s
	
clean:
	rm -f ./main
	rm -f ./main-neon
	rm -f ./rgb_to_ycc.arm.s
	rm -f ./rgb_to_ycc.arm_neon.s
	rm -f ./rgb_to_ycc.arm_hardware.s