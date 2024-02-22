#include <stdio.h>

int f(void) {
	// --- snip ---
	return 0;
}

// function as parameter
void g(int (*func)(void)) {
	// --- snip ---
	if (func() != 0) 
		printf("g failed\n");
	else 
		printf("Succedded\n");
}

int main(void) {
	g(f);
}

