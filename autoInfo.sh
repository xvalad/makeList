#!/bin/sh
###############################################################################
#
# (c) 2020 Adams Vallejos <adams.vallejos@gu.se>
#
###############################################################################
# USAGE: ssh backup
#	 cd /backupStatus
#	 ./autoInfo DEPTH	# DEPTH of folders to go into
###############################################################################
#
date
infoPath='/home/adams/backupStatus/backupInfo/'

# Remove today's file or skip if non existing
rm ${infoPath}backupStatus_`date +%F`.txt || true 

# Create and name a file according to the date
date >> ${infoPath}backupStatus_`date +%F`.txt

# create a header with information of volumes and apped to file
df -h /volume_* --output=target,size,pcent,avail >> ${infoPath}/backupStatus_`date +%F`.txt

# Print out a two-level tree of the files in the volumes with size
echo '\n CONTENT:' >> ${infoPath}/backupStatus_`date +%F`.txt
for i in /volume_*
#	do tree -dDt -L $1 $i >> ${infoPath}/backupStatus_`date +%F`.txt
	do tree -fD $i --du -h | sed 's/├\|─\|│\|└/ /g' >> ${infoPath}/backupStatus_`date +%F`.txt
done
date
