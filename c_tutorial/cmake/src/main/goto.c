// begin here
// Any statment can be preceded by a label, which is an identifier followed by a colon
// 'goto' statement causes a jump to the statement prefixed by the named label in the enclosing
// function. The jump is unconditional, meaning it happens every time the 'goto' is executed.
//
// 
// One of the good usage of 'goto' would be nested if statements

#include <stdio.h>
#include <stdlib.h>

int do_something(void) {
	FILE *file1, *file2;
	int *obj;
	int ret_val = 0; // Initially assume a successful return value
	
	file1 = fopen("a_file", "w");
	if (file1 == NULL) {
		ret_val = -1;
		goto FAIL_FILE1;
	}

	file2 = fopen("another_file", "w");
	if (file2 == NULL) {
		ret_val = -1;
		goto FAIL_FILE2;
	}

	obj = malloc(sizeof(int));

	if (obj == NULL) {
		ret_val = -1;
		goto FAIL_OBJ;
	}

	// Operate on allocated resources
	
	// Clean up everything
	
	free(obj);
	printf("freed obj\n");
	FAIL_OBJ:
		fclose(file2);
		printf("closed file2\n");
	FAIL_FILE2:
		fclose(file1);
		printf("closed file1\n");
	FAIL_FILE1:
		printf("Nothing done\n");
		return ret_val;
}

int main(void) {
	printf(do_something());
}


	
