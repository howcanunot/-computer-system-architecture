#!/bin/sh

# Compile and strip
gcc -march=native -masm=intel -fno-asynchronous-unwind-tables -fno-jump-tables -fno-stack-protector -fno-inline-small-functions -s -c main.c -o main.obj
strip -x -R .note.gnu.property -R .note.gnu.build-id main.obj

# Converting to nasm
./objconv -fnasm main.obj

# CRLF to LF
dos2unix main.asm

# Pretty
sed -i -e 's/align=[0-9]*//g' -e 's/[a-z]*execute//g' -e 's/default rel//g' -e 's/: function//g' -e 's/extern _GLOBAL_OFFSET_TABLE_//g' main.asm

nasm -felf64 -o main.obj main.asm
gcc -no-pie main.obj -o main -lm