#include "stdio.h"
#include<iostream>

int main() {
	int a = 1;
	int b = 2;
	int o = b;
	int *c = &a;
	int **d = &c;
	int *f = &o;
	f = *d;
	return 0;
}
