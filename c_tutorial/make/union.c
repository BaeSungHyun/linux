#include <stdio.h>

union {
	struct {
		int type;
	} n;
	struct {
		int type;
		int intnode;
	} ni;
	struct {
		int type;
		double doublenode;
	} nf;
} u;

struct {
	int x;
} temp;

int main(void) {
	printf("%d\n", sizeof(int));
	printf("%d\n", sizeof(double));
	printf("%d\n", sizeof(temp));
	printf("%d\n", (int)sizeof(u));
}
