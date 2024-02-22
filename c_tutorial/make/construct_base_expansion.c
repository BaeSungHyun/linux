#include <stdio.h>

int convert(int base, int n) {
	int quotient = n;
	int exp = 1;
	int answer = 0;

	while (quotient != 0) {
		answer += (exp) * (quotient % base); 
		exp *= 10;
		quotient /= base;
	}

	return answer;
}

int main(void) {
	int number, base;
	printf("Enter number and base separated with one spacebar. ");
	scanf("%d %d", &number, &base);

	printf("%d\n", convert(base, number));

	return 0;
}
