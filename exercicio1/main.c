#include <stdio.h>
#include <stdlib.h>
#include "calc_primo.c"

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
