# sets the compiler -- just switch clang, gcc
CC=clang
# compile flags 'I.' includes the current directory in the header file search path
CFLAGS=-I.
BUILD=./build

INPUT=function_pointer

# 'target01' target compiles the 'hello.o' object file into an executable
# -o : Place the primary output in the next keyword after '-o'
$(INPUT): $(INPUT).o
	$(CC) -o $(BUILD)/output $(BUILD)/$(INPUT).o $(CFLAGS)

# 'target01.o' target compiles the 'hello.c' source file into an object file
# -c : Compile or assemble the source files, but do not link. Returns object file for each source file
$(INPUT).o: $(INPUT).c
	$(CC) -c -o ./build/$(INPUT).o $(INPUT).c $(CFLAGS)

# 'clean' target deletes the compiled files to clean up the directory
clean:
	rm -f *.o $(BUILD)/$(INPUT)
