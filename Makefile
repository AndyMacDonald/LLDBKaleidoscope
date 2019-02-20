CPPFLAGS="-I/usr/local/opt/llvm@6/include"
LDFLAGS=-L/usr/local/opt/llvm@6/lib -Wl,-search_paths_first -Wl,-headerpad_max_install_names
SYSTEM_LIBS=-lz -lcurses -lm -lxml2
CORE_LIBS=-lLLVMCore -lLLVMBinaryFormat -lLLVMSupport -lLLVMDemangle
JIT_LIBS=-lLLVMMCJIT -lLLVMExecutionEngine -lLLVMTarget -lLLVMAnalysis -lLLVMProfileData -lLLVMRuntimeDyld -lLLVMObject -lLLVMMCParser -lLLVMBitReader -lLLVMMC -lLLVMCore -lLLVMBinaryFormat -lLLVMSupport -lLLVMDemangle
NATIVE_LIBS=-lLLVMX86Disassembler -lLLVMX86AsmParser -lLLVMX86CodeGen -lLLVMGlobalISel -lLLVMSelectionDAG -lLLVMAsmPrinter -lLLVMDebugInfoCodeView -lLLVMDebugInfoMSF -lLLVMCodeGen -lLLVMTarget -lLLVMScalarOpts -lLLVMInstCombine -lLLVMTransformUtils -lLLVMBitWriter -lLLVMAnalysis -lLLVMProfileData -lLLVMX86Desc -lLLVMObject -lLLVMMCParser -lLLVMBitReader -lLLVMMCDisassembler -lLLVMX86Info -lLLVMX86AsmPrinter -lLLVMMC -lLLVMX86Utils -lLLVMCore -lLLVMBinaryFormat -lLLVMSupport -lLLVMDemangle

toy: toy.cpp KaleidoscopeJIT.h
	clang++ toy.cpp -g -o toy -Wall -Wextra -pedantic -Wno-unused-parameter -std=c++1y $(CPPFLAGS) $(LDFLAGS) $(SYSTEM_LIBS) $(CORE_LIBS) $(JIT_LIBS) $(NATIVE_LIBS)

run: toy
	./toy
