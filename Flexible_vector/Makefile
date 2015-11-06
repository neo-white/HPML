#CXX i?= g++
CXX = mpicxx
CFLAGS = -Wall -g -Wconversion -O3 -fPIC -leng -lmex -lmx
SHVER = 2
OS = $(shell uname)


main: main.cpp Flexible_vector.o
	$(CXX) $(CFLAGS) main.cpp Flexible_vector.o -o main -lm
Flexible_vector.o: Flexible_vector.cpp Flexible_vector.h
	$(CXX) $(CFLAGS) -c Flexible_vector.cpp
clean:
	rm -f *~ Flexible_vector.o main 
