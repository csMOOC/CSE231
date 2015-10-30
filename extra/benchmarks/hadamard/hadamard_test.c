#include <stdio.h>
#include <stdlib.h>
#include "hadamard.h"

int main() {
    FILE *fp = fopen("out.dat", "w");

    DTYPE input[128];
    int i;
    for (i = 0; i < 128; i++) {
        input[i] = i;
    }

    DTYPE output[128];

    fastWalshTransform(output, input, 7);

    int j;
    for (j = 0; j < 128; j++) {
        fprintf(fp, "%d\n", output[j]);
    }

    fclose(fp);

    if (system("diff -w out.dat out.gold.dat")) {
      fprintf(stdout, "*********************************************\n");
      fprintf(stdout, "FAIL: Output DOES NOT match the golden output\n");
      fprintf(stdout, "*********************************************\n");
      return 1;
    } else {
      fprintf(stdout, "*******************************************\n");
      fprintf(stdout, "PASS: The output matches the golden output!\n");
      fprintf(stdout, "*******************************************\n");
      return 0;
    }
}