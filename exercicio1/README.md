# Exercício 1
Nome: Renan Camargo de Castro
RA:147775
## Introdução
Neste exercício foi feita a medição de desempenho de um programa que verifica se um número é primo da forma mais simples, testando parelização e também otimização com flags de compilação.

## Otimização pelo compilador
Inicialmente foi feita a tentativa de se compilar o programa inicial pouco performático sem nenhuma tag de otimização no GCC. Os tempos foram medidos com a ferramenta 'time'. Como os tempos de execução podem variar muito de uma execução para outra por uma série de fatores, fica mais fácil comparar o tempo dos programas na média. Para isso foi feito um script em bash que roda o programa 100 vezes e calcula o tempo total. Com isso em mãos, é só dividir por 100 os respectivos tempos e temos uma média do tempo de execução do programa. Isso nos permite comparar melhor a performance dos programas. O script está no repositório sobre o nome "average_time.sh". Os resultados são mostrados abaixo(as saídas foram truncadas para melhor visualização):
```sh
bash-4.3$ gcc primo.c -o primo
bash-4.3$ ./average_time.sh primo
104395301 é primo.
...
real	0m30.127s
user	0m30.028s
sys	    0m0.045s
```
O arquivo gerado tem tamanho 8536B.
Depois, adicionando somente as tags de otimização temos os seguintes desempenhos:
* -O0: Com essa flag o compilador não faz otimizações no programa, mas diminui o tempo de compilação e "capacita" o programa para debugging. Essa flag é colocada como default, logo é o mesmo que não colocá-la. O arquivo gerado tem tamanho 8536B.
```sh
bash-4.3$ gcc primo.c -o primo -O0
bash-4.3$ ./average_time.sh primo
104395301 é primo.
...
real	0m30.206s
user	0m30.129s
sys 	0m0.042s
```

* -O1: Com essa tag de otimização, o compilador faz uma série de otimizações no código em busca de menor tempo de execução e também de menor tamanho do executável. Pode gastar mais tempo e memória para compilar. O tamanho do executável é 8536B.
```sh
bash-4.3$ gcc primo.c -o primo -O1
bash-4.3$ ./average_time.sh primo
104395301 é primo.
...
real	0m25.998s
user	0m25.915s
sys	    0m0.051s
```
* -O2: Adiciona mais otimização além das -O1
```sh
bash-4.3$ gcc primo.c -o primo -O2
bash-4.3$ ./average_time.sh primo
104395301 é primo.
...
real	0m28.856s
user	0m28.780s
sys	    0m0.042s
```
* -O3: Adiciona mais otimizações, além das -O2. 
```sh
bash-4.3$ gcc primo.c -o primo -O3
bash-4.3$ ./average_time.sh primo
104395301 é primo.
...
real	0m28.652s
user	0m28.577s
sys	    0m0.039s
```

É possível ver que a -O1 teve um menor tempo de execução do programa.
Também é possível utilizar outras tags que melhoram a performance, como por exemplo a -march e -mtune, que melhoram a performance em troca de compatibilidade com outros processadores. Com essas flags o compilador utiliza as peculiaridades de cada processador informado na tag para gerar um binário mais rápido. A opção -march=native detecta automaticamente o processador e seta de acordo, já seta também a opção -mtune para equivalente.
* -march=native: Nesse caso, testei dois casos. O caso sem flag alguma e o caso com a flag mais performática para o programa(no caso -O1). O resultado foi:
```sh
bash-4.3$ gcc primo.c -o primo -march=native -O1
bash-4.3$ ./average_time.sh primo
104395301 é primo.
...
real	0m25.812s
user	0m25.732s
sys	    0m0.045s
```
```sh
bash-4.3$ gcc primo.c -o primo -march=native
bash-4.3$ ./average_time.sh primo
104395301 é primo.
...
real	0m29.968s
user	0m29.885s
sys	    0m0.050s
```
É  possível ver que houve uma melhora na performance, embora tenha sido mínima.
Também podemos partir o arquivo em dois, dividindo em main.c e calc_primo.c, onde os arquivos contém as respectivas funções. Foi criado um Makefile e rodado com a tag mais performática: -O1 -march=native
```sh
bash-4.3$ make
bash-4.3$ ./average_time.sh primo
104395301 é primo.
...
real	0m25.747s
user	0m25.673s
sys	    0m0.042s
```

É possível perceber que o programa gastou um pouco de tempo a menos, mas a diferença é insignificante..Era esperado que o gasto de tempo fosse parecido, pois o linking só toma tempo na parte de compilação. Após a compilação os arquivos se tornam um só binário.

### Quantidade de primos no intervalo
Podemos ainda editar o programa fonte para receber um número n como entrada no parâmetro de chamada e devolver a quantidade de números primos no intervalo de 0 a n. Para essa modificação medimos o tempo com somente um arquivo e com dois:
OBS: Foi medido apenas para os primeiros 50.000 primos, pois os números depois resultariam em tempo de execução muito longo.
```sh
bash-4.3$ gcc primo.c -o primo -march=native -O1
bash-4.3$ ./average_time.sh primo 50000
5134 números são primos no intervalo: [1-n).
...
real	0m30.179s
user	0m30.065s
sys 	0m0.072s

```

```sh
bash-4.3$ make
bash-4.3$ ./average_time.sh primo 50000
5134 números são primos no intervalo: [1-n).
...
real	0m30.059s
user	0m29.975s
sys 	0m0.051s

```
Novamente, temos uma diferença muito pequena nos tempos de execução.
### Melhorando o programa
Podemos melhorar o algoritmo não testando os números pares. A função em C fica:
```c
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
```
Nessa caso cortamos em 2 a necessidade de verificar os números.

### Achando gargalos com GProf
Compilamos o programa com -O1 e verificamos com o GProf a área de menor eficiência do nosso programa.
Fica claro pela table a seguir que as chamadas à função 'primo' precisam ser otimizadas, pois todo o tempo gasto do tempo de execução do programa é na função primo. Olhamos isso pela coluna self/children.

```
index % time    self  children    called        name
                0.24    0.00   49999/49999      main [2]
[1]    100.0    0.24    0.00   49999            primo [1]
-----------------------------------------------
                                                <spontaneous>
[2]    100.0    0.00    0.24                    main [2]
                0.24    0.00   49999/49999      primo [1]
-----------------------------------------------
```
### Paralelismo
Podemos melhorar a eficiência do código paralelizando as chamadas à função 'primo'. Para isso utilizamos a biblioteca OpenMP e utilizamos o pragma 'omp parallel for' para paralelizar o for. Mas ainda existia um problema. A variável de count do loop ficava com valores expúrios, pois todas as threads tentavam incrementá-las ao mesmo tempo. A solução era utilizar uma variável do tipo atomic. Para isso o openmp possui o pragma 'omp atomic'. O código da função main ficou:
```c
main(int argc, char **argv)
{
  int n = atoi(argv[1]);
  int nprimos = 0;
  #pragma omp parallel for
  for(int i = 1; i< n; i++){
    if (primo(i)){
        #pragma omp atomic
        nprimos++;
    }
  }

  printf("%d números são primos no intervalo: [1-n).\n", nprimos);
}
```
Os tempos foram os seguintes:
* Com paralelismo:
```sh
bash-4.3$ gcc primo.c -o primo -march=native -O1 -fopenmp
bash-4.3$ ./average_time.sh primo 50000
5134 números são primos no intervalo: [1-n).
...
real	0m6.641s
user	0m15.880s
sys	    0m0.071s

```

* Sem paralelismo:
```sh
bash-4.3$ make
bash-4.3$ ./average_time.sh primo 50000
5134 números são primos no intervalo: [1-n).
...
real	0m15.265s
user	0m15.174s
sys	    0m0.047s

```
É notório o grande ganho de performance com o paralelismo. Nesse caso o openmp cria uma thread para cada iteração do laço, aumentando muito a performance do programa. O ganho de performance foi de aproximadamente 129%.


### Bibliografia
* https://gcc.gnu.org/onlinedocs/gcc/Optimize-Options.html
* https://gcc.gnu.org/onlinedocs/gcc-4.5.3/gcc/i386-and-x86_002d64-Options.html
* https://gcc.gnu.org/onlinedocs/gcc/ARM-Options.html
* http://bisqwit.iki.fi/story/howto/openmp/#LoopDirectiveFor




