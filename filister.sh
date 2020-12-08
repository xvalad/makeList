#!/usr/bin/bash

# Choose the name of your list
zenity --entry --title "List name" --text "Please choose a name for your list:"

# Add .lst extension

# Choose files from GUI
zenity --file-selection --multiple --filename "${PWD}/" --separator=$'\n'

# Add more files
zenity --question --text "Do you want to add more files?" --no-wrap --ok-label "Yes" --cancel-label "No" --title "Add more files"
