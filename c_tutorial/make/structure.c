#include <stdio.h>
#include <string.h>

struct sigrecord {
	int signum;
	char signame[20];
	char sigdesc [100];
} sigline, *sigline_p; // define object and pointer

// Structures are useful for declaring collections of related objects and may be used to represent
// things.

int main(void) {
	sigline.signum = 5;
	strcpy(sigline.signame, "SIGINT");
	strcpy(sigline.sigdesc, "Interrupt from keyboard");

	printf("%s\n", sigline.signame);
	printf("%s\n", sigline.sigdesc);
	
	sigline_p = &sigline;

	strcpy(sigline_p->signame, "SIGINT2");
	strcpy(sigline_p->sigdesc, "Interrupt version 2");
	
	printf("%s\n", sigline_p->signame);
	printf("%s\n", sigline_p->sigdesc);
}
