// C defines four storage durations : static , thread , automatic , allocated
// automatic : just normal scope variables
// static : permanent variables
// thread : concurrent
// allocated : dynamically, heap

// Use dynamically allocated memory, when size of the memory requried is known at runtime.


// Memory Management Functions
// malloc , aligned_alloc , calloc , realloc , reallocarray


#include <stdio.h>
#include <stdlib.h>
#include <string.h>

typedef struct {
	char c[10];
	int i;
	double d;
} widget;

int main(void) {
	printf("%d\n", (int)sizeof(widget));
	
	widget w = {"abc", 9, 3.2};
	
	void *p = malloc(sizeof(widget)); // p has no type

	memcpy(p, &w, sizeof(widget)); // p now has type
	printf("p.i = %d\n", ((widget*)p)->i);


	// Reading Uninitialized Memory is not recommend
	char *str = (char *)malloc(16);
	str[15] = '\0'; // null character 
			// if the below sourcing string is less than 15 bytes, don't need above line

	if (str) {
		strncpy(str, "123456789abcdef", 15);
		printf("str = %s.\n", str);
		free(str);i
		return EXIT_SUCCESS;
	}
	return EXIT_FAILURE;
}
