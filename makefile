all:
	gcc main.c -o hello
run: all
	./hello