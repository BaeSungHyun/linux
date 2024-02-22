#include <stdio.h>

void swap(int* pa, int* pb) {
	int temp = *pa;
	*pa = *pb;
	*pb = temp;
}

int main(void) {
	int s = 17;
	int b = 21;

	printf("Original Value : a = %d, b = %d\n", s, b);
	swap(&s, &b);

	printf("Swapped Value : a = %d, b = %d\n", s, b);
}
