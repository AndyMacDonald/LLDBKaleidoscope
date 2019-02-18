LDFLAGS="-L/usr/local/opt/llvm/lib -Wl,-rpath,/usr/local/opt/llvm/lib"
CPPFLAGS="-I/usr/local/opt/llvm/include"

toy: toy.cpp
	clang++ toy.cpp -g -o toy -Wall -Wextra -pedantic -std=c++1y $(CPPFLAGS)

run: toy
	./toy
