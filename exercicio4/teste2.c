#include <stdio.h>
#define LOCK_ADDRESS 0x6400000
#define ACQUIRE_GLOBAL_LOCK while(*((int*)LOCK_ADDRESS))
#define RELEASE_GLOBAL_LOCK *((int*)LOCK_ADDRESS)=0


volatile int *lock = (volatile int *) LOCK_ADDRESS;

void AcquireLock(){
	while(*lock);
}
void ReleaseLock(){
	*lock = 0;
}

volatile int procCounter = 0;
void RecursiveHello(int n, int procNumber){
  if(n){
    printf("Hi from processor %d!\n", procNumber);
    RecursiveHello(n - 1, procNumber);
  }
}
int main(int ac, char *av[]){
  int procNumber, i;
  AcquireLock();
  procNumber = procCounter;
  procCounter++;
  ReleaseLock();
  if(procNumber % 2) {
    for (i=0;i<100000;i++);
  }
  RecursiveHello(10, procNumber);
  exit(0);
  return 0; 
}
