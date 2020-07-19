default:
	gcc main.c rgb_ycc_utils.c rgb_to_ycc.c -lm -o main -Wall

arm: main

main: rgb_to_ycc.s
	gcc main.c rgb_ycc_utils.c rgb_to_ycc.s -lm -o main -Wall

rgb_to_ycc.s:
	gcc -S rgb_to_ycc.c -o rgb_to_ycc.s
