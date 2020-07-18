main: main.s rgb_to_ycc.s
	gcc main.s rgb_to_ycc.s -lm -o main -Wall

main.s:
	gcc -S main.c -o main.s

rgb_to_ycc.s:
	gcc -S rgb_to_ycc.c -o rgb_to_ycc.s

main-gcc:
	gcc main.c rgb_to_ycc.c -lm -o main -Wall
