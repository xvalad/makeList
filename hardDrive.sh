#!/bin/bash
# USAGE	sudo su
#		./hardDrive.sh NAME-TAG
#
du -sh /media/adams/* >> ~/backupStatus/externalDrives/$1.txt
find /media/adams/* -type f >> ~/backupStatus/externalDrives/$1.txt