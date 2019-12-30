#include "stdio.h"
#include "cudaProj1.h"

__global__
void Kernel() {
    int i = threadIdx.x;
    if (i==2) {
        printf("Testing debugging!\n");
    }
    printf("in Kernel %d.\n", i);
}

cudaProj1::cudaProj1(/* args */)
{
}

cudaProj1::~cudaProj1()
{
}

void cudaProj1::startKernel() {
    Kernel<<<1,3>>>();
    cudaDeviceSynchronize();
}