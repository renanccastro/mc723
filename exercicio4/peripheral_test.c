#include <stdio.h>
#define LOCK_ADDRESS 0x6400000
#define ACQUIRE_LOCK while(*((int*)LOCK_ADDRESS))
#define RELEASE_LOCK *((int*)LOCK_ADDRESS)=0
int main(){

	ACQUIRE_LOCK;
	printf("hello World\n");
	RELEASE_LOCK;
	
	return 0;
}

