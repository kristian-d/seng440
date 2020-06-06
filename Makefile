arm-gcc:
	/opt/arm/4.3.2/bin/arm-linux-gcc -S main.c rgb_to_ycc.c -lm -o main -Wall

gcc:
	gcc main.c rgb_to_ycc.c -lm -o main -Wall
