#!/bin/bash
#
# Script to compres a list of folders for bacup on tape
#
path='/volume_b/volume_c' # Without the final '/'
for i in $(less tmp-compress.lst)
do
	echo "Compressing: ${i}"
	tar cvfj $i.tar.bz2 $path/$i/ > $i.tar.bz2.log 2> $i.tar.bz2.err
	echo "Job finished, files generated: `ls ${i}.*`"
done
