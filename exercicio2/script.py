import os
from subprocess import PIPE, Popen


def cmdline(command):
    process = Popen(
        args=command,
        stdout=PIPE,
        shell=True
    )
    return process.communicate()[0]

if __name__ == "__main__":
    # parameters=["-maxtrace", "20", -l1-isize 16K -l1-dsize 16K -l1-ibsize 32 -l1-dbsize 32]
    
    location='/Users/renancastro/Documents/Faculdade/1s2016/mnt/home/staff/lucas/mc723/traces'
    programs=['164.gzip.f2b','168.wupwise.f2b','171.swim.f2b','172.mgrid.f2b','173.applu.f2b','176.gcc.f2b']
    names=['gzip_f2b','wupwise_f2b','swim_f2b','mgrid_f2b','applu_f2b','gcc_f2b']
    
    #Primeiro comparamos o tamanho da cache, e descobrimos o com menor tempo!
    poweroftwo = [ 2**j for j in range(0,12) ]
    poweroftwofrom4 = [ 2**j for j in range(4,12) ]
    f = open('cache_size.data', 'a')
    ibsize=32
    dbsize=32
    for idx, val in enumerate(programs):
        for cacheisize in poweroftwofrom4:
            for cachedsize in poweroftwo:
                os.chdir("%s/%s" % (location,val))
                output=cmdline(("dineroIV -informat s -trname %s -maxtrace 20 "
                                     "-l1-isize %dK -l1-dsize %dK "
                                     "-l1-ibsize %d -l1-dbsize %d "
                                     "| grep \"Demand miss rate\" | awk -F ' ' '{print $4}' "
                                     "| xargs -n2") %
                                     (names[idx], cacheisize, cachedsize, ibsize,dbsize))
                print cacheisize, " ", cachedsize," ",output
                print >> f, cacheisize, " ", cachedsize," ",output
                # dineroIV -informat s -trname vortex_f2b -maxtrace 101 -l1-isize 16K -l1-dsize 16K -l1-ibsize 32 -l1-dbsize 32
            
        
    f.close()
            
        
    
    