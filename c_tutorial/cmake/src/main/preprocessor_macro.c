#include <stdio.h>

// Only way to redefine macro, is to #undef and then #define again.


// Any parameter in the replacement list preceded by a # token is replaced with 
// a string literal preprocessing token that contains the text of the argument processing tokens.
#define STRINGIZE(x) #x

// Generic Selection Expressions : _Generic
//
// Predefined Macros
// __DATE__
// __TIME__
// __FILE__
// __LINE__
// __STDC__
// __STDC_HOSTED__
// __STDC_VERSION__
// __STDC_ISO_10646__
// __STDC_UTF_16__
// __STDC_UTF_32__
// __STDC_NO_ATOMICS__
// __STDC_NO_COMPLEX__
// __STDC_NO_THREADS__
// __STDC_NO_VLA__


#ifdef ARRAY_SIZE
int array[ARRAY_SIZE];

int main(void) {
	for (int i = 0; i < ARRAY_SIZE; i++) {
		array[i] = i;
	}
	
	for (int i = 0; i < ARRAY_SIZE; i++) {
		printf("%d\n", array[i]);
	}

	const char *str = STRINGIZE(12);
	printf("%s", str);
}
#endif
