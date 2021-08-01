#!/bin/bash

# Script to install packages in one go after a fresh OS install
# on a debian (apt) based system.
# Comment out or add any packages as needed.
#
#    Enjoy

# Colors and Formatting
bold=$(echo -en "\e[1m")
normal=$(echo -en "\e[0m")
red=$(echo -en "\e[31m")
green=$(echo -en "\e[32m")
orange=$(echo -en "\e[33m")
blue=$(echo -en "\e[34m")
purple=$(echo -en "\e[35m")
aqua=$(echo -en "\e[36m")
default=$(echo -en "\e[39m")
DEFAULT=$(echo -en "\e[49m")

# Post fresh install programs
echo "${bold}"
echo "${blue}Program Installs"
echo "${normal}"

#Devlopment Programs
sudo apt update
sudo apt install wget -yy
sudo apt install git -yy
sudo apt install curl -yy
sudo apt install python-pip -yy
sudo apt install python3 -yy

########     CyberSec Programs
# sudo apt install nmap

# #Desktop Programs
# #sudo apt install libreoffice -yy
# #sudo apt install chrome-gnome-shell -yy
# sudo apt install gnome-tweaks -yy
# sudo apt install gnome-tweak-tool -yy
# #sudo apt install xscreensaver -yy
# #sudo apt install xscreensaver-gl -yy
# #sudo apt install xscreensaver-gl-extra -yy
# #sudo apt install steam-installer -yy
# sudo apt install pithos -yy
# #sudo apt install vlc -yy
# #sudo apt install thunderbird
# #sudo apt install wine -yy

# #Backup Utlities
# sudo apt install timeshift -yy

# #Remote access and cloud service
# sudo apt install samba -yy

# #Local File Database Update
# #echo "${bold}"
# #echo "${orange}Updating Locate Database"
# #echo "${normal}"
# #sudo updatedb

# Finished
echo "${bold}"
echo "${Green}--------------------------"
echo "${red}----Install Complete------"
echo "${green}--------------------------"
echo "${normal}"

# Out of Repo Programs
echo "${bold}"
echo "${red}---------------------------"
echo "${orange}Off Repo Program URLS:"
echo "${red}---------------------------"
echo "${normal}VSCode"
echo "${orange}https://go.microsoft.com/fwlink/?LinkID=760868 "
echo "${normal}RealVNC "
echo "${orange}https://www.realvnc.com/download/file/viewer.files/VNC-Viewer-6.20.113-Linux-x64.deb "
#echo "${orange} "
echo "${normal}Good Bye"
exit
