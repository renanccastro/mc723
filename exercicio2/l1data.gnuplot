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
