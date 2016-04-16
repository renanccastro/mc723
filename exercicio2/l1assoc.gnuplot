set terminal png
set output "l1-dassoc.png"
set xrange [-100:520]
set yrange [-0.005:0.006]
set title "Miss Rate x Block Size - L1 Data"

plot "<sort -g -k1 experimentos/assoc/gcc_f2b_l1dassociativity.data" using 1:2 title "gcc" with linespoints pt 7, \
    "<sort -g -k1 experimentos/assoc/gzip_f2b_l1dassociativity.data" using 1:2 title "gzip" with linespoints pt 7, \
    "<sort -g -k1 experimentos/assoc/mgrid_f2b_l1dassociativity.data" using 1:2 title "mgrid" with linespoints pt 7, \
    "<sort -g -k1 experimentos/assoc/swim_f2b_l1dassociativity.data" using 1:2 title "swim" with linespoints pt 7, \


set terminal png
set output "l1-iassoc.png"
set xrange [-100:520]
set yrange [-0.005:0.006]
set title "Miss Rate x Block Size - L1 Instructions"

plot "<sort -g -k1 experimentos/assoc/gcc_f2b_l1iassociativity.data" using 1:2 title "gcc" with linespoints pt 7, \
    "<sort -g -k1 experimentos/assoc/gzip_f2b_l1iassociativity.data" using 1:2 title "gzip" with linespoints pt 7, \
    "<sort -g -k1 experimentos/assoc/mgrid_f2b_l1iassociativity.data" using 1:2 title "mgrid" with linespoints pt 7, \
    "<sort -g -k1 experimentos/assoc/swim_f2b_l1iassociativity.data" using 1:2 title "swim" with linespoints pt 7, \
