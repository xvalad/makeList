#!/bin/bash 

#USAGE: sh detdist-find.sh list-of-files geometry-file

na=$(echo "$1" | cut -f 1 -d '.')
ge=$(echo "$2" | cut -f 1 -d '.')

DETDISTMINUS=5050 # Given in milimeters
DETDISTPLUS=5150



for len in `seq $DETDISTMINUS 10 $DETDISTPLUS` # Steps of 100 micrometres
        do
                sed 's/clen.*/clen = 0.0'$len'/' $ge.geom > $na-$len.geom
        done

for filename in $na-*.geom
        do
                sh <<EOF
#!/bin/bash

NPROC=$(grep proc /proc/cpuinfo | wc -l )

indexamajig -j 10 -i $1 -g $filename -o $filename.stream --indexing=dirax,mosflm  --peaks=peakfinder8 --threshold=50 -p CO_CcO_50ns_light.cell --int-radius=3,4,5 --min-snr=5 > $filename.log 2>&1
EOF
        done
