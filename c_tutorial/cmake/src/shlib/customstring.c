#include <stdio.h>
#include <uchar.h>

void dataSize(void){
	char16_t a = "k";
	char32_t b = "k";
	printf("%d %d\n", sizeof(a), sizeof(b));
}
