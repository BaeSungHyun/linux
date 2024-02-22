#include <stdio.h>
#include <stdlib.h>
// file mode options
// r 
// w
// a
// rb
// wb
// ab
// r+
// w+
// a+
// r+b or rb+
// w+b or wb+
// a+b or ab+

int main(void) {
	// Never copy a FILE object
	FILE my_stdout = *stdout;
	if (fputs("Hello, World!\n", &my_stdout) == EOF) {
		return EXIT_FAILURE;
	}
	return EXIT_SUCCESS;
}
