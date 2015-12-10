// test for range analysis, using recursive calls
#include <stdio.h>

int recur(int k) {
    while (k > 0) {
        return recur(k - 1) + k;
    }
    return 0;
}

int RA() {
    int i = 0;
    while (++i < 100) {
        int j = i << 1;
        int k = 0;
        while (++k < j) {
            recur(k);
        }
    }
    return i;
}

int main()
{
    printf("%d\n", RA());
    return 0;
}