# makefile for perimeter.asm
task: main.c quick_sort.o movies/movie.c movies/game_movie.c movies/cartoon.c movies/documentary.c container/container.c
	gcc -g -o task main.c quick_sort.o movies/movie.c movies/game_movie.c movies/cartoon.c movies/documentary.c container/container.c -no-pie
quick_sort.o: task_functions.asm
	nasm -f elf64 -g -F dwarf quick_sort.asm -l quick_sort.lst
