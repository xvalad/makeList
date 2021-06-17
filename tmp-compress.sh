#!/bin/bash
#
# Script to compres a list of folders for backup on tape
#
path='/volume_b/volume_c/westenhoff_beamtimes' # Without the final '/'
for i in $(cat tmp-compressionList.lst)
do
	echo "Compressing: ${i}"
	tar -cvjf $path/$i.tar.bz2 --remove-files $path/$i/ > $path/$i.tar.bz2.log 2> $path/$i.tar.bz2.err
	echo "Job finished, files generated: `ls ${path}/${i}.*`"
done
