#!/bin/bash
##################################################
#
# (c) 2020 Adams Vallejos <adams.vallejos@gu.se>
#
##################################################
# USAGE:ssh in to backup and execute
#       chmod +x makeList
#       ./makeList

FILENAME=$(zenity --entry --title "List name" --text "Please choose a filename (.lst):")
if [ -e $FILENAME.lst ]
then
    zenity --warning --text="Aborting, file exists."
    exit
else
    touch $FILENAME.lst
fi

zenity --file-selection --multiple --filename "${HOME}/${USER}" --separator=$'\n' >> $FILENAME.lst

# Add more files
while zenity --question --text "Do you want to add more files?" --no-wrap --ok-label "Yes" --cancel-label "No" --title "Add more files"
do
    zenity --file-selection --multiple --filename "${HOME}/${USER}" --separator=$'\n' >> $FILENAME.lst
done

zenity --info --title="Job finished" --text="List '$FILENAME.lst' successfully created!" --width 250

