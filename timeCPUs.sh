#!/bin/bash
HOSTNAME=`hostname`
NPROC=$(grep proc /proc/cpuinfo | wc -l )
file="timeCPU_$HOSTNAME.dat"
rm -f $file
for i in $(eval echo {$NPROC..1..-3}) # `seq $NPROC`
do
        start=$(date +%s)
        indexamajig -i files.lst -g 5HT2B-Liu-2013-predrefine.geom --peaks=hdf5 --int-radius=3,4,5 -o tutorial_$HOSTNAME.stream --indexing=mosflm -p 5HT2B.cell -j ${i}
        end=$(date +%s)
        elapsed=$((end-start))
        echo -e "$i\t$elapsed" >> $file
done
