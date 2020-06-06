main: main.s rgb_to_ycc.s
	/opt/arm/4.3.2/bin/arm-linux-gcc main.s rgb_to_ycc.s -lm -o main -Wall

main.asm:
	/opt/arm/4.3.2/bin/arm-linux-gcc -S main.c -o main.s

rgb_to_ycc.asm:
	/opt/arm/4.3.2/bin/arm-linux-gcc -S rgb_to_ycc.c -o rgb_to_ycc.s

main-gcc:
	gcc main.c rgb_to_ycc.c -lm -o main -Wall
