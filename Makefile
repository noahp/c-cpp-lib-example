main: main.c liblib.a
	gcc $^ -lstdc++ -o main

lib.o: lib.c
	gcc -c $^ -o $@
lib.opp: lib.cpp
	g++ -std=c++20 -c lib.cpp -o lib.opp

liblib.a: lib.o lib.opp
	ar rcs $@ $^
