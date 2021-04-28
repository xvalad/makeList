#!/bin/bash
#  Prints "date" "cpu cuota percentage"
# Maximum 20 CPUS allowed per user
# Returns date & CPUs used
SERVER=$(hostname)
CPUS=$(lscpu | grep "^CPU(s):" | awk '{print $2}')
DATE=$(date +"%Y/%m/%d-%H:%M")
VARIABLE=$(top -b -n 1 -u "$USERNAME" | awk 'NR>7 { sum += $9/100; } END { print sum; }')
for USER in $(who | awk '{print $1}' | sort -u)
do
	if [ "$USER" = "bruno" ]; then continue; fi
	if [ "$USER" = "ladm" ]; then continue; fi
 	if [ $(VARIABLE) -lt 6 ]; then 
 		# echo `date "+%y/%m/%d %H:%M:%S"`" $USER "$VARIABLE # >> /home/adams/backupStatus/cpuActivity/userActivity/$SERVER-usage-$USER.csv
 		echo "case a"
 	elif [ $VARIABLE -lt 6 ]; then
 		echo "case b"
	else
		echo "none"
	fi
done
