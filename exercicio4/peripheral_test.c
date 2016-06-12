#include <stdio.h>
#define LOCK_ADDRESS 0x6400000
volatile int procCounter = 0;
volatile int *lock = (volatile int *) LOCK_ADDRESS;

void AcquireLock(){
	while(*lock);
}
void ReleaseLock(){
	*lock = 0;
}


int main(){
	int procNumber;
	AcquireLock();
	procNumber = procCounter;
	procCounter++;
	ReleaseLock();


	AcquireLock();
	//printf("Lock: %d from proc: %d", lock, procNumber);
	printf("testest"); 
	ReleaseLock();
	
	return 0;
}

