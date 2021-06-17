#!/bin/bash 

#USAGE: sh detdist-mod.sh list-of-files geometry-file

na=$(echo "$1" | cut -f 1 -d '.')
ge=$(echo "$2" | cut -f 1 -d '.')

DETDISTMINUS=9200 # Given in milimeters
DETDISTPLUS=9400



for len in `seq $DETDISTMINUS 10 $DETDISTPLUS` # Steps of 100 micrometres
        do
                sed 's/clen.*/clen = 0.0'$len'/' $ge.geom > $na-$len.geom
        done

for filename in $na-*.geom
        do
                sh <<EOF
#!/bin/bash

NPROC=$(grep proc /proc/cpuinfo | wc -l )

indexamajig -j 20 -i $1 -g $filename -o $filename.stream --indexing=xgandalf-latt-cell --peaks=peakfinder8 --threshold=40 -p rc.cell --int-radius=3,4,6 --integration=rings-grad --max-res=3000 --min-snr=5 --tolerance=2,2,2,2,2,2 --no-retry --no-multi --check-peaks > $filename.log 2>&1
EOF
        done
