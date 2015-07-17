#include <stdlib.h>
#include <stdio.h>

__global__ void run(void)
{
	int cid = threadIdx.x;
	int val = 0;
	while(val<(cid+10)){
		// do some "work" so the loop can't be compiled away
		val++;
		if(val == cid){
			val = 0;
		}
	}
}
int main(int argc, char** argv) 
{
	for(;;){
		run<<<1024,1024>>>();
		cudaError_t err = cudaThreadSynchronize();
	}

	return 0;
}