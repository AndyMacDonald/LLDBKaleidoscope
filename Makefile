CPPFLAGS="-I/usr/local/opt/llvm/include"
LDFLAGS=-L/usr/local/opt/llvm/lib -Wl,-search_paths_first -Wl,-headerpad_max_install_names
SYSTEM_LIBS=-lLLVMCore -lLLVMBinaryFormat -lLLVMSupport -lLLVMDemangle
CORE_LIBS=-lz -lcurses -lm -lxml2
JIT_LIBS=-lLLVMOrcJIT -lLLVMMCJIT -lLLVMExecutionEngine -lLLVMTarget -lLLVMAnalysis -lLLVMProfileData -lLLVMRuntimeDyld -lLLVMObject -lLLVMMCParser -lLLVMBitReader -lLLVMMC -lLLVMDebugInfoCodeView -lLLVMDebugInfoMSF -lLLVMCore -lLLVMBinaryFormat -lLLVMSupport -lLLVMDemangle
NATIVE_LIBS=-lLLVMX86Disassembler -lLLVMX86AsmParser -lLLVMX86CodeGen -lLLVMGlobalISel -lLLVMSelectionDAG -lLLVMAsmPrinter -lLLVMCodeGen -lLLVMScalarOpts -lLLVMInstCombine -lLLVMAggressiveInstCombine -lLLVMTransformUtils -lLLVMBitWriter -lLLVMX86Desc -lLLVMMCDisassembler -lLLVMX86Info -lLLVMX86AsmPrinter -lLLVMX86Utils -lLLVMMCJIT -lLLVMExecutionEngine -lLLVMTarget -lLLVMAnalysis -lLLVMProfileData -lLLVMRuntimeDyld -lLLVMObject -lLLVMMCParser -lLLVMBitReader -lLLVMMC -lLLVMDebugInfoCodeView -lLLVMDebugInfoMSF -lLLVMCore -lLLVMBinaryFormat -lLLVMSupport -lLLVMDemangle

toy: toy.cpp
	clang++ toy.cpp -g -o toy -Wall -Wextra -pedantic -Wno-unused-parameter -std=c++1y $(CPPFLAGS) $(LDFLAGS) $(SYSTEM_LIBS) $(CORE_LIBS) $(JIT_LIBS) $(NATIVE_LIBS)

run: toy
	./toy
