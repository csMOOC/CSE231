#include "stdio.h"
#include<iostream>

int main() {
	
	int a = 1;
	int b = 2;
	int *c = &a;
	c = &b;
	return 0;
}
