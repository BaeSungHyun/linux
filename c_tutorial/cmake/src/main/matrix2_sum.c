#include <stdio.h>
#include <stdlib.h>

// Original : int matrix_sum(int m[][cols]) -> cols size fixed
int matrix_sum(size_t rows, size_t cols, int m[rows][cols]) {
	int total = 0;

	for (size_t r = 0; r < rows; r++) {
		for (size_t c = 0; c < cols; c++) {
			total += m[r][c];
		}
	}	
	return total;
}

int main(void) {
	int matrix[10][10];

	for (size_t i = 0; i < 100; i++) {
		matrix[i / 10][i % 10] = i;
	}
	
	int ans = matrix_sum(10, 10, matrix); // pay attention to parameter forms
	printf("%d\n", ans);
}
