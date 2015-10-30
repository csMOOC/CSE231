#include "stdio.h"

unsigned int gcd (unsigned int n1, unsigned int n2) {
    return (n2 == 0) ? n1 : gcd(n2, n1 % n2);
}

int main() {
    printf("%d\n", gcd(72, 32));
    return 0;
}
