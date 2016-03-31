#Projeto 1
| NOME | RA |
|:-:|:------:|
| Renan Camargo de Castro | 147775 |
##Análise de desempenho Geral
Para analisar o desempenho dos computadores, utilizamos a tabela preenchida do resultados dos benchmarks. É necessário dizer, que para uma medida efetiva do desempenho de todos, todos os computadores deveriam rodar todos os benchmarks, o que não aconteceu com os dados disponibilizados. Alguns, inclusive, só rodaram 2 ou até 1 benchmark, o que pode justificar a existência de dados expúrios na classificação.

Os critérios para a avaliação foram os seguintes, em ordem de importância:

_OBS: foi feito um sort incremental, no excel, com todas as colunas relacionadas ao tempo, sendo a considerada mais importante(ou primeira, na lista a seguir) colocada como primeiro no sort_

1.  **Benchmark com FFMPeg**: A escolha desse critério como sendo o mais importante, sai da utilização do computador como multimídia e sua capacidade de fazer encoding/decoding e transcoding de arquivos de vídeo. Por se tratar de um programa bem conceituado, a otimização dele é muito boa. Também se deve a uma experiência prática, visto que já observei muita diferença entre desempenho no encoding de vídeos de computadores.
2. **Benchmark com convolução**: Seguindo a mesma vertente da valorização do multimídia, faz o teste com operações matemáticas em manipulação de imagens.
3. **Benchmark com GENETIC**: Recria imagens com polígonos, logo é interessante da parte visual.
4. **Benchmark com GNUPLOT**: Geração de gráficos, deve incluir possivelmente a parte de cálculos e também a parte de gerar imagens.
5. **Benchmark com TCC**: Benchmark com compilador, usa intensivamente o processador para manipulação dos fontes e geração do binário.

Os outros benchmarks foram incluídos também para realizar o ranking, mas como critério de desempate e para também incluir aqueles computadores que foram testados somente com os outros benchmarks.

Logo, obtemos a seguinte tabela de ranks:

| #  | Descrição do computador                                                                                                    | Nº Máquina | 
|----|----------------------------------------------------------------------------------------------------------------------------|----|  
| 1  | Intel Core i7-Intel(R) Core(TM) i7-4700HQ CPU @ 2.40GHz x 4, 16GB DDR3, Ubuntu 14.04LTS, HD                                | 26 |
| 2  | Intel(R) Core(TM) i7-3612QM CPU @ 2.10GHz x 4, 8 threads, 8GB, 64-bit, SSD 32GB, HDD1TB (5400rpm), Debian                  | 14 |
| 3  | Intel® Core™ i7-3612QM CPU @ 2.10GHz × 8; Memory 8GB, SSD Kingston 240GB V300 Sata III; Ubuntu 15.04                       | 7  |
| 4  | Intel® Core™ i5-4590 CPU @ 3.30GHz × 4; Memory 8 GiB; 64-bit graph                                                         | 10 |
| 5  | Intel® Core™ i7-4702MQ CPU @ 2.20GHz × 8 (64 bits) Memory 8 GiB; Graphics Intel® Haswell Mobile ; Ubuntu 14.04             | 8  |
| 6  | Intel(R) Core(TM) i7-3610QM CPU 4 cores, 8 threads @ 2.30GHz @ L1 256 KB / L2 1024 KB / L3 6144 KB                         | 13 |
| 7  | Intel(R) Core(TM) i7-3740QM CPU @ 2.70GHz @ 2 CORES @ Virtual Machine                                                      | 16 |
| 8  | Intel Core i5-5200U CPU 2.20GHz x 4 L1 32KiB L2 256KiB L3 3MiB Memory 8GiB DDR3 Disk 1TB WDC WD10JPVX-22J Ubuntu 14.04 LTS | 30 |
| 9  | Intel(R) Core(TM) i7-4510U CPU @ 2.00GHz x 2, 4 threads, 64-bit; Memory 8 GB DDR3; HD SATA 5400rpm;Ubuntu 15.10            | 6  |
| 10 | AMD PhenonII, 4 cores, 3.2MHz; 10GB, ddr3, 1.333 MHz; hdd sata3, 7200rpm, 32MB buffer                                      | 24 |
| 11 | Intel(R) Core(TM)2 Quad CPU Q8400 @ 2.66GHz; Memory 4GB, Fedora release 21                                                 | 18 |
| 12 | Intel® Core™2 Duo CPU T6500 @ 2.10GHz × 2, 4GB RAM                                                                         | 3  |
| 13 | Intel Core i7-2630QM CPU @2.00GHz Memory 4GiB Linux Mint                                                                   | 15 |
| 14 | Intel® Core™ i7 × 4; Memory 8 GiB;                                                                                         | 5  |
| 15 | Intel Core i7 @ 2.3GHz; 8 GB 1600 MHz DDR3                                                                                 | 12 |
| 16 | Intel® Core™ i5-4590 CPU @ 3.30GHz × 4; Memory 8 GiB; 64-bit graph                                                         | 9  |
| 17 | Intel Core i7-4700HQ CPU @ 2.4GHz, 16GB DDR3, Ubuntu 14.04LTS, HDD 5400RPM                                                 | 28 |
| 18 | Intel(R) Core(TM) i7-2670QM CPU @ 2.20GHz x4, 8GB DDR 1333Mhz ,Ubuntu 14.04LTS 32bits,HDD                                  | 23 |
| 19 | Intel® Core™ i5-4200U CPU @ 1.60GHz × 4 ; Memory 3,8 GiB; Ubuntu 15.04 64-bit;                                             | 31 |
| 20 | Intel(R) Core(TM) i3-3110M CPU @ 2.40GHz 3072 KB Cache, 4GB RAM DDR3, 5400rpm SATA                                         | 4  |
| 21 | Raspberry Pi, 900MHz quad-core ARM Cortex-A7 CPU, 1GB RAM, 32GB SD Card                                                    | 25 |
| 22 | Intel(R) Core(TM) i5-2450M @ 2.5GHZ; Memory 6GB                                                                            | 21 |
| 23 | Intel® Core™2 Quad CPU Q8400 @ 2.66GHz × 4 Intel® Q45/Q43, 3.8GB RAM                                                       | 19 |
| 24 | Intel(R) Core(TM)2 Quad CPU Q8400 @ 2.66GHz                                                                                | 17 |
| 25 | Intel(R) Core(TM)2 Quad CPU Q8400 @ 2.66GHz, Memory 4GB                                                                    | 20 |
| 26 | Intel Atom Processor D4xx/D5xx/N4xx/N5xx DMI Bridge                                                                        |    |
| 27 | Intel(R) Core(TM) i7-4510U CPU @ 2.00GHz; Memory 16 GB; Ubuntu 14.04.4                                                     | 30 |
| 28 | Intel(R) Core(TM) i7-4750HQ CPU @ 2.00GHz; Memory 8 GB 1600 MHz DDR3; Mac OS X El Capitan (version 10.11.4)                | 29 |
| 29 | Intel® Core™2 Quad CPU Q8400 @ 2.66GHz × 4 Intel® Q45/Q43                                                                  | 11 |
| 30 | Intel® Core™2 Quad CPU Q8400 @ 2.66GHz × 4 Intel® Q45/Q43 × 3.8GB RAM                                                      | 22 |

Se pegarmos, por exemplo, os dois primeiros processadores, e olharmos um benchmark conceituado, como o GeekBench, vemos que o desempenho(nesse benchmark) do 4700HQ é realmente maior que o 3612QM:
**10370	vs 8516 (Intel Core i7-3612QM)**.

Esses dados corroboram a tabela.

##Análise de desempenho dos 3 computadores utilizados
Agora, para uma análise mais detalhada e certa, podemos utilizar os computadores nos quais medimos os benchmarks da parte 2 do projeto.
Esses computadores são:

| ID | Nome              | Descrição da Máquina                                                                                  |
|----|-------------------|-------------------------------------------------------------------------------------------------------|
| 14 | Renan Castro      | Intel(R) Core(TM) i7-3740QM CPU @ 2.70GHz @ 2 CORES @ Virtual Machine                                 |
| 15 | Gabriel Magalhães | Intel® Core™ i7-3612QM CPU @ 2.10GHz × 8; Memory 8GB, SSD Kingston 240GB V300 Sata III;  Ubuntu 15.04 |
| 16 | Victor Souza      | Intel(R) Core(TM)2 Quad CPU Q8400  @ 2.66GHz; Memory 4GB, Fedora release 21                           |

Para analisar esses 3 computadores, vamos utilizar os 3 seguintes benchmarks:

1.  **Benchmark com FFMPeg**: A escolha desse critério como sendo o mais importante, sai da utilização do computador como multimídia e sua capacidade de fazer encoding/decoding e transcoding de arquivos de vídeo. Por se tratar de um programa bem conceituado, a otimização dele é muito boa. Também se deve a uma experiência prática, visto que já observei muita diferença entre desempenho no encoding de vídeos de computadores.
2. **Benchmark com convolução**: Seguindo a mesma vertente da valorização do multimídia, faz o teste com operações matemáticas em manipulação de imagens.
3. **Benchmark com TCC**: Benchmark com compilador, usa intensivamente o processador para manipulação dos fontes e geração do binário.

Para comparar, demos um peso diferente para cada um desses benchmarks, de acordo com a sua importância relativa.
Temos os seguintes resultados:

| Descrição                                                                                               | Nº Máquina  | FFMpeg(p3)(s) | Convolução(p2)(s) | TCC(1)(s)   | Média Ponderada |
|-------------------------------------------------------------------------------------------------------|----|-----------|---------------|----------|-----------------|
| Intel® Core™ i7-3612QM CPU @ 2.10GHz × 8; Memory 8GB, SSD Kingston 240GB V300 Sata III;  Ubuntu 15.04 | 15 | 18,19     | 7,6           | 31,2481  | **9,50635**         |
| Intel(R) Core(TM) i7-3740QM CPU @ 2.70GHz @ 2 CORES @ Virtual Machine                                 | 14 | 29,73     | 89,6          | 21,2748  | **23,43413**        |
| Intel(R) Core(TM)2 Quad CPU Q8400  @ 2.66GHz; Memory 4GB, Fedora release 21                           | 16 | 32,83     | 123,7         | 133,3945 | **48,32075**       |

Vemos que o último computador teve um desempenho bem ruim, comparativamente, pois sua CPU já é bem antiga.

Já o segundo, o i7 3740QM, teve seu desempenho reduzido, pois foi rodado o programa em uma máquina virtual com recursos como cores e outros reduzidos. Logo, o paralelismo é bem importante para o desempenho, não só a frequência do processador.

Podemos concluir, que o computador mais bem avaliado por esse benchmark, possui melhor desempenho nas funções multimídia, mas não necessariamente é o que possui melhor desempenho em tudo(vide teste com TCC).