#include "hadamard.h"

unsigned int fastWalshTransform(DTYPE h_Output[128], DTYPE h_Input[128], DTYPE log2N){
    const DTYPE N = 1 << log2N;
    DTYPE pos;
    for(pos = 0; pos < N; pos++) h_Output[pos] = h_Input[pos];

    //Cycle through stages with different butterfly strides
    DTYPE stride;
    for(stride = N >> 1; stride >= 1; stride >>= 1){
        //Cycle through subvectors of (2 * stride) elements
        DTYPE base;
        for(base = 0; base < N; base += stride << 1) {
            //Butterfly index within subvector of (2 * stride) size
            DTYPE j;
            for(j = 0; j < stride; j++){
                DTYPE i0 = base + j +      0;
                DTYPE i1 = base + j + stride;
                DTYPE T1 = h_Output[i0];
                DTYPE T2 = h_Output[i1];
                h_Output[i1] = T1 - T2;
                h_Output[i0] = T1 + T2;
            }
        }
    }
    return 0;
} 
