
#!/bin/bash
location='/Users/renancastro/Documents/Faculdade/1s2016/teste/home/staff/lucas/mc723/traces'
programs=('168.wupwise.f2b' '164.gzip.f2b' '171.swim.f2b' '172.mgrid.f2b' '173.applu.f2b' '176.gcc.f2b' '171.swim.f2b' '171.swim.f2b')
names=('wupwise_f2b' 'gzip_f2b'  'swim_f2b' 'mgrid_f2b' 'applu_f2b' 'gcc_f2b' 'swim_f2b' 'swim_f2b')


K=32
L=32
k=1024
for (( i=5; i<8; i+=2 ));
do
  for (( j=1; j<=4096; j*=2 ));
  do
    cd $location/${programs[$i]}
    dineroIV -informat s -trname ${names[$i]} -maxtrace 20 \
             -l1-isize ${j}K -l1-dsize ${k}K \
             -l1-ibsize $K \
             -l1-dbsize $L | grep "Demand miss rate" | \
             awk -F ' ' '{print $4}' | sed -n 1p | awk '{print "'"$j"'", $0}' \
             >> /Users/renancastro/Documents/Faculdade/1s2016/${names[$i]}_l1isize.data &
  done
  for (( j=1; j<=4096; j*=2 ));
  do
    cd $location/${programs[$i]}
    dineroIV -informat s -trname ${names[$i]} -maxtrace 20 \
             -l1-isize ${k}K -l1-dsize ${j}K \
             -l1-ibsize $K \
             -l1-dbsize $L | grep "Demand miss rate" | \
             awk -F ' ' '{print $4}' | sed -n 2p | awk '{print "'"$j"'", $0}' \
             >> /Users/renancastro/Documents/Faculdade/1s2016/${names[$i]}_l1dsize.data &
  done


done
