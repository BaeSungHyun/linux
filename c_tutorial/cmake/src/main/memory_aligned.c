// similar to malloc function, except that it requires to define an alignment as well as a 
// size for the allocated object.
// void* aligned_alloc(size_t alignment, size_t size); stricter alignment
//
// calloc : allocated storabe for an array of nmemb objects, each of whose size is 'size' bytes
// void* calloc (size_t nmemb, size_t size); Initialize the storage to all zero-valued bytes.
//
// realloc : increases or decreases the size of previously allocated storage. 
// It takes a pointer to some memory allocated by an earlier call to 'aligned_alloc', 'malloc', 
// 'realloc' (or a null pointer) and a size.
// void* realloc(void* ptr, size_t size);
// implementation of realloc : calls malloc to allocate new storage, and then copies the contents 
// 	of the old storage to the new storage up to minimum of the old and new sizes.
// 	If the newly allocated storage is larger than the old contents, realloc leaves the addition
// 	storage unintialized.
//
// Need to always check realloc didn't fail.


#include <stdio.h>
#include <stdlib.h>

int main(void) {
	void *p2;
	void *p = malloc(100);
	int nsize = 0;

	if ((nsize ==0) || (p2 = realloc(p, nsize)) == NULL) {
		free(p);
		printf("oops\n");
		return NULL;
	}
	// malloc succeed.
	p = p2; // pointer p now points to  newly allocated memory that pointer p2 points at
	printf("reached normal");

	free(p);
	p = NULL;
	// recommended to allocate NULL to freed memory to prevent double free happening

	return 0;
}
