#include <stdlib.h>
#include <stdio.h>
#define LOCK_ADDRESS 0x6400001;
#define MAX_SUM 50000
volatile int id = 0;

volatile int *lock = (volatile int *) LOCK_ADDRESS;
void AcquireLock(){while(*lock);}
void ReleaseLock(){*lock = 0;}

int main(){
	int procNumber;
	AcquireLock();
	procNumber = id;
	id++;
	ReleaseLock();
	
	AcquireLock();
	printf("proc %d: entrou na regiao critica\n", procNumber);
	ReleaseLock();
	return 0;
}
