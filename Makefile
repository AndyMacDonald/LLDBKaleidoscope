CPPFLAGS="-I/usr/local/opt/llvm/include"
LDFLAGS=-L/usr/local/opt/llvm/lib -Wl,-search_paths_first -Wl,-headerpad_max_install_names
SYSTEM_LIBS=-lLLVMCore -lLLVMBinaryFormat -lLLVMSupport -lLLVMDemangle
CORE_LIBS=-lz -lcurses -lm -lxml2

toy: toy.cpp
	clang++ toy.cpp -g -o toy -Wall -Wextra -pedantic -std=c++1y $(CPPFLAGS) $(LDFLAGS) $(SYSTEM_LIBS) $(CORE_LIBS)

run: toy
	./toy
