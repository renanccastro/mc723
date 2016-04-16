#Exercício 3
| NOME | RA |
|:-:|:------:|
| Renan Camargo de Castro | 147775 |

##Introdução
Nesse exercício, iremos analisar e utilizar um simulador do mips feito com archc/systemc para contar os CPIs.
Após montado toda a estrutura, contar com o simulador do mips compilado e todos os paths corretos, foi realizado algumas experiências.

##Hello World
Para testar a execução e ver o funcionamento, foi feito o programa mais simples em C e compilado com o gcc do arm, foi rodado no mips.x, que é o simulador.
Os resultados foram os seguintes:
~~~bash
-bash-4.3$ ./mips.x --load=hello_world.mips

        SystemC 2.3.1-Accellera --- Apr  8 2016 08:47:14
        Copyright (c) 1996-2014 by all Contributors,
        ALL RIGHTS RESERVED
ArchC: Reading ELF application file: hello_world.mips
ArchC: -------------------- Starting Simulation --------------------

Hello World
ArchC: -------------------- Simulation Finished --------------------

Info: /OSCI/SystemC: Simulation stopped by user.
ArchC: Simulation statistics
    Times: 0.00 user, 0.00 system, 0.00 real
    Number of instructions executed: 2726
    Simulation speed: (too fast to be precise)

~~~

Após isso, para entender melhor o funcionamento e analisar a quantidade de instruções de ADD, fiz as seguintes alterações nos arquivos do simulador:

##Execução


Executando e modificando:

~~~bash
-bash-4.3$ mips-newlib-elf-objdump -d hello_world.mips | grep ' add '
-bash-4.3$ ./mips.x --load=hello_world.mips

        SystemC 2.3.1-Accellera --- Apr  8 2016 08:47:14
        Copyright (c) 1996-2014 by all Contributors,
        ALL RIGHTS RESERVED
ArchC: Reading ELF application file: hello_world.mips
ArchC: -------------------- Starting Simulation --------------------

Hello World
ArchC: -------------------- Simulation Finished --------------------
quantidade de adds 0

Info: /OSCI/SystemC: Simulation stopped by user.
ArchC: Simulation statistics
    Times: 0.00 user, 0.00 system, 0.00 real
    Number of instructions executed: 2726
    Simulation speed: (too fast to be precise)

~~~