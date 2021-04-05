#!/bin/bash
SERVER=$(hostname)
for i in `who | cut -f 1 -d' ' | sort | uniq`
do
	USERNAME="$i"
	echo $(date +%Y-%m-%dT%H:%M:%S)","$(top -b -n 1 -u "$USERNAME" | awk 'NR>7 { sum += $9; } END { print sum; }') >> cpuusage-$SERVER-$USERNAME.csv
done
