#include <stdio.h>

struct S{
	double d; int b; char c;
};

int main(void) {
	unsigned char bad_buff[sizeof(struct S)];
	_Alignas(struct S) unsigned char good_buff[sizeof(struct S)];

	printf("%d\n", (int)sizeof(bad_buff));
	printf("%d\n", (int)sizeof(good_buff));
}
