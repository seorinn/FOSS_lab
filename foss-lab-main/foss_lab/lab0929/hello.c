#include <stdio.h>

int main(){
	int a;
	fscanf(stdin, "%d", &a);
	fprintf(stdout, "STDOUT: Hello Seorin %d \n", a);
	fprintf(stderr, "STDERR: Hello Seorin %d \n", a); return a;
}
