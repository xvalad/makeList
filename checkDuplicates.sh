#!/bin/bash

volB='/volume_b/volume_c/'
volC='/volume_c/'

for file in "$volB"*
	do echo "$file"
# 	do sudo difcmp ${volB}${file} ${volC}${file} # > duplicates.txt
done
