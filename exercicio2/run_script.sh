
#!/bin/bash
location='/Users/renancastro/Documents/Faculdade/1s2016/mnt/home/staff/lucas/mc723/traces'
programs=('164.gzip.f2b' '168.wupwise.f2b' '171.swim.f2b' '172.mgrid.f2b' '173.applu.f2b' '176.gcc.f2b')
names=('gzip_f2b' 'wupwise_f2b' 'swim_f2b' 'mgrid_f2b' 'applu_f2b' 'gcc_f2b')

for i in ${programs[@]}; do
        su $login -c "scp $httpd_conf_new ${i}:${httpd_conf_path}"
        su $login -c "ssh $i sudo /usr/local/apache/bin/apachectl graceful"

done

for(i in programs){
	dineroIV -informat s -trname vortex_f2b -maxtrace 101 -l1-isize 16K -l1-dsize 16K -l1-ibsize 32 -l1-dbsize 32

}