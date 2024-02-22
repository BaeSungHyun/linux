#include <stdio.h>
#include <stdlib.h>

typedef struct {
	size_t num;
	int data[]; // flexible size array
} widget;

void *func(size_t array_size) {
	widget *p = (widget *)malloc(sizeof(widget) + sizeof(int) * array_size);
	if (p == NULL) {
		return NULL;
	}

	p->num = array_size = array_size;
	for (size_t i = 0; i < p->num; i++) {
		p->data[i] = i;
	}

	for (size_t i = 0; i < p->num; i++) {
		printf("%d\n", p->data[i]);
	}

	printf("size of struct: %d + %d = %d\n", sizeof(size_t), sizeof(void*), sizeof(*p));
	free(p);
	p = NULL;
}

int main(void) {
	size_t size;
	scanf("%d", &size);
	func(size);

	return 0;
}
