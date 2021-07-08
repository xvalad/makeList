#!/bin/sh

# Ubuntu 20.04.2 LTS
# Nvidia drivers (Optimus)
# Automatic

# Appearance > dark mode
# Install gnome-tweaks
# minimise on click
gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'minimize'
# Personalize top bar

# Move show-applications button to top
# Install dconf org > gnome > shell > extensions > dash-to-dock > show-apps-at-top

# Brave
sudo apt install apt-transport-https curl
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser


# Teamviewer
# https://www.teamviewer.com/en/download/linux/

#zoom
# https://zoom.us/download

# vscode
# https://code.visualstudio.com/download

# Anaconda
# https://repo.anaconda.com/archive/
bash ~/Downloads/Anaconda3-2020.02-Linux-x86_64.sh


# Sublime
# https://www.sublimetext.com/download

wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo apt-get install apt-transport-https
echo "deb https://download.sublimetext.com/ apt/stable/" | sudo tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install sublime-text

# git

sudo apt install git-all
git config --global user.name "xvalad"
git config --global user.email adamsxvallejos@gmail.com
git config --global core.editor nano
git config --list --show-origin


reboot

# simplenote

# Java
sudo apt install default-jre -y

# r
# julia
# matlab - run online
# fortran
# c
# cpp

# .ssh/config
touch .ssh/config


Host maxiv
	HostName sftp.maxiv.lu.se
	User avallejos

Host backup
	HostName backup.lundberg.gu.se
	User adams

Host hebbe1
	HostName hebbe1.c3se.chalmers.se
	User vadams

Host hebbe2
	HostName hebbe2.c3se.chalmers.se
	User vadams

Host hub19
	HostName hub19.lundberg.gu.se
	User adams

Host calc1
	HostName calc1.lundberg.gu.se
	User adams

Host hop
	HostName hop.psi.ch
	User ext-vallejos_a

Host *
	IdentitiesOnly=yes


# .bashrc

alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias ls='ls --color=force'
alias ll='ls -l --color=force'
alias gitp='git add . && git commit -m "Updated: `date`" && git push'
alias git='cat ~/xvalad/.token && git'


# Possible Issues


# If hard disks are not shown change
# 'SATA Operation' in the BIOS from 'RAID On' to 'AHCI'

