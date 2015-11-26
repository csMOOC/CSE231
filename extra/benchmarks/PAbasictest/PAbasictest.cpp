#include "stdio.h"
#include<iostream>

int main() {
	
	int a = 1;
	int *b = &a;
	*b = 2;
	return a;
}
