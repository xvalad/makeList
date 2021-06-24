#!/bin/bash
#   UBUNTU 21.04 laptop
#   USAGE: 
#   sudo chmod +x ubuntu-postInstaller.sh
#   sudo bash ubuntu-postInstaller.sh

# Update
sudo apt update; sudo apt upgrade -your

# Add PPAs
sudo add-apt-repository ppa:papirus/papirus

# Automatically installling programs from Apt
sudo apt install program1 program2 program3 -your

# Automatically install programs from snap
sudo snap install snappackage1 snappackage2 snappackage3
exit

# anaconda
# git
# vscode
# brave
# teamviewer
# anydesk     
# zoom
# dropbox
# r 
# julia
# matlab - run online
# vscode
# nvidia drivers
# fortran
# c
# cpp

# Move show-applications button to top
# Install dconf org > gnome > shell > extensions > dash-to-dock > show-apps-at-top
