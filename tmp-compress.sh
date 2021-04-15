#!/bin/bash
#
# Script to compres a list of folders for backup on tape
#
path='/volume_b/volume_c/stanford2' # Without the final '/'
for i in $(cat tmp-compressionList.lst)
do
	echo "Compressing: ${i}"
	tar cvfj $path/$i.tar.bz2 $path/$i/ > $path/$i.tar.bz2.log 2> $path/$i.tar.bz2.err
	echo "Job finished, files generated: `ls ${path}/${i}.*`"
done
