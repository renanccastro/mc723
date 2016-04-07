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
set xrange [-100:5000]
set yrange [-0.001:0.003]
set title "Miss Rate x Block Size - L1 Instructions"

plot "<sort -g -k1 experimentos/block_size/gcc_f2b_l1iblocksize.data" using 1:2 title "gcc" with linespoints pt 7, \
    "<sort -g -k1 experimentos/block_size/gzip_f2b_l1iblocksize.data" using 1:2 title "gzip" with linespoints pt 7, \
    "<sort -g -k1 experimentos/block_size/mgrid_f2b_l1iblocksize.data" using 1:2 title "mgrid" with linespoints pt 7, \
    "<sort -g -k1 experimentos/block_size/swim_f2b_l1iblocksize.data" using 1:2 title "swim" with linespoints pt 7, \
