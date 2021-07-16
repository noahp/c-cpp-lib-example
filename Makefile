OBJS = lib.c.o lib.cpp.o

main: main.c liblib.a
	gcc $^ -lstdc++ -o main

%.c.o: %.c
	gcc -c $^ -o $@
%.cpp.o: %.cpp
	g++ -std=c++20 -c $^ -o $@

liblib.a: $(OBJS)
	ar rcs $@ $^
