toy: toy.cpp
	clang toy.cpp -g -o toy -Wall -Wextra -pedantic -std=c++1y

run: toy
	./toy
