set terminal png
set output "l1-dassoc.png"
set xrange [-100:520]
set yrange [-0.005:0.006]
set title "Miss Rate x Cache Associativity - L1 Data"

plot "<sort -g -k1 experimentos/assoc/gcc_f2b_l1dassociativity.data" using 1:2 title "gcc" with linespoints pt 7, \
    "<sort -g -k1 experimentos/assoc/gzip_f2b_l1dassociativity.data" using 1:2 title "gzip" with linespoints pt 7, \
    "<sort -g -k1 experimentos/assoc/mgrid_f2b_l1dassociativity.data" using 1:2 title "mgrid" with linespoints pt 7, \
    "<sort -g -k1 experimentos/assoc/swim_f2b_l1dassociativity.data" using 1:2 title "swim" with linespoints pt 7, \


set terminal png
set output "l1-iassoc.png"
set xrange [-100:520]
set yrange [-0.005:0.006]
set title "Miss Rate x Cache Associativity - L1 Instructions"

plot "<sort -g -k1 experimentos/assoc/gcc_f2b_l1iassociativity.data" using 1:2 title "gcc" with linespoints pt 7, \
    "<sort -g -k1 experimentos/assoc/gzip_f2b_l1iassociativity.data" using 1:2 title "gzip" with linespoints pt 7, \
    "<sort -g -k1 experimentos/assoc/mgrid_f2b_l1iassociativity.data" using 1:2 title "mgrid" with linespoints pt 7, \
    "<sort -g -k1 experimentos/assoc/swim_f2b_l1iassociativity.data" using 1:2 title "swim" with linespoints pt 7, \

set terminal png
set output "l1d_block_size.png"
set xrange [-100:1050]
set yrange [-0.005:0.28]
set title "Miss Rate x Block Size - L1 Data"

plot "<sort -g -k1 experimentos/block_size/gcc_f2b_l1dblocksize.data" using 1:2 title "gcc" with linespoints pt 7, \
    "<sort -g -k1 experimentos/block_size/gzip_f2b_l1dblocksize.data" using 1:2 title "gzip" with linespoints pt 7, \
    "<sort -g -k1 experimentos/block_size/mgrid_f2b_l1dblocksize.data" using 1:2 title "mgrid" with linespoints pt 7, \
    "<sort -g -k1 experimentos/block_size/swim_f2b_l1dblocksize.data" using 1:2 title "swim" with linespoints pt 7, \


set terminal png
set output "l1i_block_size.png"
set xrange [-100:1500]
set yrange [-0.001:0.003]
set title "Miss Rate x Block Size - L1 Instructions"

plot "<sort -g -k1 experimentos/block_size/gcc_f2b_l1iblocksize.data" using 1:2 title "gcc" with linespoints pt 7, \
    "<sort -g -k1 experimentos/block_size/gzip_f2b_l1iblocksize.data" using 1:2 title "gzip" with linespoints pt 7, \
    "<sort -g -k1 experimentos/block_size/mgrid_f2b_l1iblocksize.data" using 1:2 title "mgrid" with linespoints pt 7, \
    "<sort -g -k1 experimentos/block_size/swim_f2b_l1iblocksize.data" using 1:2 title "swim" with linespoints pt 7, \

set terminal png
set output "l1d_size.png"
set xrange [-100:5000]
set yrange [-0.005:0.3]
set title "Miss Rate x Cache Size(K) - L1 Data"

plot "<sort -g -k1 experimentos/size/gcc_f2b_l1dsize.data" using 1:2 title "gcc" with linespoints pt 7, \
    "<sort -g -k1 experimentos/size/gzip_f2b_l1dsize.data" using 1:2 title "gzip" with linespoints pt 7, \
    "<sort -g -k1 experimentos/size/mgrid_f2b_l1dsize.data" using 1:2 title "mgrid" with linespoints pt 7, \
    "<sort -g -k1 experimentos/size/swim_f2b_l1dsize.data" using 1:2 title "swim" with linespoints pt 7, \


set terminal png
set output "l1i_size.png"
set xrange [-100:5000]
set yrange [-0.005:0.12]
set title "Miss Rate x Cache Size(K) - L1 Instructions"

plot "<sort -g -k1 experimentos/size/gcc_f2b_l1isize.data" using 1:2 title "gcc" with linespoints pt 7, \
    "<sort -g -k1 experimentos/size/gzip_f2b_l1isize.data" using 1:2 title "gzip" with linespoints pt 7, \
    "<sort -g -k1 experimentos/size/mgrid_f2b_l1isize.data" using 1:2 title "mgrid" with linespoints pt 7, \
    "<sort -g -k1 experimentos/size/swim_f2b_l1isize.data" using 1:2 title "swim" with linespoints pt 7, \
