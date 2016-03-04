
#include <stdio.h>
#include <stdlib.h>

int primo(int n)
{
  int i;
  if(n == 2)
      return 1;
  if(!(n % 2))
    return 0;

  for(i = 3; i < n; i +=2)
    if (n % i == 0)
      return 0;
  
  return 1;
}

main(int argc, char **argv)
{
  int n = atoi(argv[1]);
  int nprimos = 0;

  for(int i = 1; i< n; i++){
    if (primo(i)){

        nprimos++;
    }
  }

  printf("%d números são primos no intervalo: [1-n).\n", nprimos);
}

