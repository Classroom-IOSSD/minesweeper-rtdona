all : main

main : conio.o minesweeper.o
	gcc -o main conio.o minesweeper.o

conio.o : conio.c conio.h
	gcc -c conio.c

minesweeper.o : minesweeper.c conio.h
	gcc -c minesweeper.c

clean :
	rm -f *.o main
