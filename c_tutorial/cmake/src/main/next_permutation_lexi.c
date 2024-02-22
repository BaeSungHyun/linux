#include <stdio.h>

void swap(char*, char*);

void next(size_t s, char input[s]) {
	int j = s - 2;
	while (input[j] > input[j + 1]) 
		j--;
	int k = s - 1;
	while (input[j] > input[k])
		k--;	
	swap(&input[j], &input[k]);
	int r = s - 1;
	int t = j + 1;

	while (r > t) {
		swap(&input[r], &input[t]);
		r--;
		t++;
	}
}

int main(void) {
	char input[8]; // abcdefg+ null
	const size_t inputSize = 7;

	scanf("%s", input);

	next(inputSize, input);

	printf("%s\n", input); 
}

