#include <stdio.h>
#define LOCK_ADDRESS 0x6400000;
#define MAX_SUM 5000000
volatile int *lockG = (volatile int *) LOCK_ADDRESS;
void AcquireLock(){while(*lockG);}
void ReleaseLock(){*lockG = 0;}
void ReleaseLocalLock(volatile int *lock){AcquireLock();*lock=0;ReleaseLock();}
void AcquireLocalLock(volatile int *lock){AcquireLock();while(*lock)*lock=1;ReleaseLock();}

volatile int printed = 0, id=0, ready=0;
volatile unsigned long long int sum1 = 0, sum2 = 0;
int main0(int procNumber, int ac, char *av[]) {
	unsigned long long int i;
	for( i = 0 ; i < MAX_SUM/2; i++){
		sum1+=i;
	}
	AcquireLock();
	ready++;
	ReleaseLock();
}
int main1(int procNumber, int ac, char *av[]) {
	unsigned long long int i;
	for( i = MAX_SUM/2 ; i <= MAX_SUM; i++){
		sum2+=i;
	}
	AcquireLock();
	ready++;
	ReleaseLock();
}

int main(int ac, char *av[]) {
	int i, procNumber;
	AcquireLock();
	procNumber = id++;
	printf("processador %d\n",procNumber);	  
	ReleaseLock();

	if(procNumber == 0) main0(procNumber, ac, av);
	else main1(procNumber, ac, av);
	while(ready < 2);
	AcquireLock();
	if(printed==0){
		printf("output from processor %d: %llu\n", procNumber, sum1+sum2);
		printed=1;
	}	
	ReleaseLock();
	return 0;
}

