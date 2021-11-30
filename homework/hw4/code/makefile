# makefile for perimeter.asm
task: main.c task_functions.o movies/movie.c movies/game_movie.c movies/cartoon.c movies/documentary.c container/container.c
	gcc -g -o task main.c task_functions.o movies/movie.c movies/game_movie.c movies/cartoon.c movies/documentary.c container/container.c -no-pie
task_functions.o: task_functions.asm
	nasm -f elf64 -g -F dwarf task_functions.asm -l task_functions.lst
