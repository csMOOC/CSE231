// test for range analysis, use a nested function
#include <stdio.h>

void nested(int start, int end) {
    while (++ start < end) {
        end --;
    }
}

int RA() {
    int i = 0;
    while (++i < 100) {
        int j = i << 1;
        int k = 0;
        while (++k < j) {
            nested(0, k);
        }
    }
    return i;
}

int main()
{
    printf("%d\n", RA());
    return 0;
}
