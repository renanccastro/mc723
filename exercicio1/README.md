# Exercício 1

### Introdução
Neste exercício foi feita a medição de desempenho de um programa que verifica se um número é primo da forma mais simples, testando parelização e também otimização com flags de compilação.

### Otimização pelo compilador
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

Podemos ainda editar o programa fonte para receber o número como entrada nos parâmetro de chamada. Para essa modificação medimos o tempo com somente um arquivo e com dois:
```sh
bash-4.3$ gcc primo.c -o primo -march=native -O1
bash-4.3$ ./average_time.sh primo 104395301
104395301 é primo.
...
real	0m26.271s
user	0m26.167s
sys	    0m0.051s
```

```sh
bash-4.3$ make
bash-4.3$ ./average_time.sh primo 104395301
104395301 é primo.
...
real	0m26.101s
user	0m26.012s
sys	    0m0.051s
```
Houve um aumento esperado no tempo de execução devido ao uso de uma função em c para parsear a string de parametro.



#### Bibliografia
* https://gcc.gnu.org/onlinedocs/gcc/Optimize-Options.html
* https://gcc.gnu.org/onlinedocs/gcc-4.5.3/gcc/i386-and-x86_002d64-Options.html




