#include <stdio.h>
#include <stdlib.h>

// in c, void -> no parameter
// function() -> indicates no parameter or more than one parameter
int main(void) {
	if (puts("Hello, world!") == EOF) { // 'puts' fail and return EOF
		return EXIT_SUCCESS;
	}

	return EXIT_SUCCESS;
}
