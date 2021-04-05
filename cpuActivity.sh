#!/bin/bash
HOSTNAME=`hostname`
echo "`date +%D`,`date +%T`,`uptime`" >> ~/backupStatus/cpuActivity/${HOSTNAME}Activity.csv
