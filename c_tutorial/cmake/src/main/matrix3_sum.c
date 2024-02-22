#include <stdio.h>
#include <stdlib.h>

int matrix3_sum(size_t d1, size_t d2, size_t d3, int m[][d2][d3]) {
	int total = 0;
	
	for (int i = 0; i < d1; i++) {
		for (int j = 0; j < d2; j++) {
			for (int k = 0; k < d3; k++) {
				total += m[i][j][k];
			}
		}
	}

	return total;
}

int main(void) {
	int m[10][10][10];

	for (int i = 0; i < 10; i++) {
		for (int j = 0; j < 10; j++) {
			for (int k = 0; k < 10; k++) {
				m[i][j][k] = i * j * k;
			}
		}
	}
	
	printf("%d\n", matrix3_sum(10, 10, 10, m));

}
