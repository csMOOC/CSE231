// basic test for range analysis
#include <stdio.h>

int RA() {
    int i = 0;
    while (++i < 100) {
        int j = i << 1;
        int k = 0;
        // while (++k < j) {}
    }
    return i;
}

int main()
{
    printf("%d\n", RA());
    return 0;
}