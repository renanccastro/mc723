#include <stdio.h>
#define LOCK_ADDRESS 0x6400000
#define ACQUIRE_LOCK while(*(globalLock))
#define RELEASE_LOCK *(globalLock)=0
volatile int * globalLock = (int*) LOCK_ADDRESS;
int main(){

	ACQUIRE_LOCK;
	printf("hello World\n");
	RELEASE_LOCK;
	
	return 0;
}

