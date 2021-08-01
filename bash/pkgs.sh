#!/bin/bash
#######   Multi-Package Installer   #######
#######  Colors and Formatting      #######
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
underline=$(echo -en "\e[4m")

#######  Add User-Group and PPA  #######
echo "${bold}${purple}Do You want to add ppa's and User Group for Razer and Lutris? (Y/n) (Select yes if you want to add the software later)"
echo "${normal}"
read input
answer=$(echo $input | tr '[A-S]' '[a-z]')
#######  While Loop to Force Correct Answers #######
while [ "$answer" != "y" -a "$answer" != "yes" -a "$answer" != "n" -a "$answer" != "no" ]; do
    echo "${bold}${red}${underline}Answer Yes or No"
    echo "${normal}"
    read input
    answer=$(echo $input | tr '[A-Z]' '[a-z]')
done
#######  if Statement Execution #######
if [ "$answer" = "y" -o "$answer" = "yes" ]; then
    echo "$(sudo gpasswd -a $USER plugdev)"
    echo "${bold}${purple}Adding PPA's"
    echo "${normal}"
    echo "$(sudo add-apt-repository ppa:rvm/smplayer -y)"
    echo "$(sudo add-apt-get -V-repository ppa:polychromatic/stable -y)"
    echo "$(sudo add-apt-get -V-repository ppa:openrazer/stable -y)"
    echo "$(sudo add-apt-get -V-repository ppa:lutris-team/lutris -y) ; $(clear)"
elif [ "$answer" = "n" -o "$answer" = "no" ]; then
    echo "${bold}${red}Skipping PPA's and User Add"
    echo "${normal}"
fi
#######  Starting Update  #######
echo "${bold}${blue}/---------- Updating ------------/"
echo "${normal}"
echo $(sleep 1)
echo "$(sudo apt-get update)"
echo $(clear)

#######   Base Packages Question   #######
echo "${bold}${purple}Install Normal Packages? (y/n)"
echo "${normal}"
read input
answer=$(echo $input | tr '[A-Z]' '[a-z]')
#######  While Loop to Force Correct Answers #######
while [ "$answer" != "y" -a "$answer" != "yes" -a "$answer" != "n" -a "$answer" != "no" ]; do
    echo "${bold}${red}${underline}Answer Yes or No"
    echo "${normal}"
    read input
    answer=$(echo $input | tr '[A-Z]' '[a-z]')
done
#######  if Statement Execution #######
if [ "$answer" = "y" -o "$answer" = "yes" ]; then
    echo "${bold}${green}/---------- Installing Basic Packages -----------/"
    echo "${normal}"
    echo "$(sudo apt-get install virtualbox snapd firefox)"
elif [ "$answer" = "n" -o "$answer" = "no" ]; then
    echo "${bold}${red}Skipping Packages"
    echo "${normal}"
fi
#######   Office Packages Question   #######
echo "${bold}${purple}Install Office Packages? (y/n)"
echo "${normal}"
read input
answer=$(echo $input | tr '[A-Z]' '[a-z]')
#######  While Loop to Force Correct Answers #######
while [ "$answer" != "y" -a "$answer" != "yes" -a "$answer" != "n" -a "$answer" != "no" ]; do
    echo "${bold}${red}${underline}Answer Yes or No"
    echo "${normal}"
    read input
    answer=$(echo $input | tr '[A-Z]' '[a-z]')
done
#######  if Statement Execution #######
if [ "$answer" = "y" -o "$answer" = "yes" ]; then
    echo "${bold}${green}/---------- Installing Office Suite -----------/"
    echo "${normal}"
    echo "$(sudo apt-get install libreoffice scribus scribus-template calibre evolution calligra)"

elif [ "$answer" = "n" -o "$answer" = "no" ]; then
    echo "${bold}${red}Skipping Packages"
    echo "${normal}"
fi
#######  Razer Packages Question   #######
echo "${bold}${purple}Install Open Razer Software? (y/n)"
echo "${normal}"
read input
answer=$(echo $input | tr '[A-Z]' '[a-z]')
#######  While Loop to Force Correct Answers #######
while [ "$answer" != "y" -a "$answer" != "yes" -a "$answer" != "n" -a "$answer" != "no" ]; do
    echo "${bold}${red}${underline}Answer Yes or No"
    echo "${normal}"
    read input
    answer=$(echo $input | tr '[A-Z]' '[a-z]')
done
#######  if Statement Execution #######
if [ "$answer" = "y" -o "$answer" = "yes" ]; then
    echo "${bold}${green}/---------- Installing Open Razer -----------/"
    echo "${normal}"
    echo "$(sudo apt-get install openrazer-meta)"
    echo "$(sudo apt-get install polychromatic)"

elif [ "$answer" = "n" -o "$answer" = "no" ]; then
    echo "${bold}${red}Skipping Packages"
    echo "${normal}"
fi
#######   Audio / Video Packages Question   #######
echo "${bold}${purple}Install Audio/Video Packages? (y/n)"
echo "${normal}"
read input
answer=$(echo $input | tr '[A-Z]' '[a-z]')
#######  While Loop to Force Correct Answers #######
while [ "$answer" != "y" -a "$answer" != "yes" -a "$answer" != "n" -a "$answer" != "no" ]; do
    echo "${bold}${red}${underline}Answer Yes or No"
    echo "${normal}"
    read input
    answer=$(echo $input | tr '[A-Z]' '[a-z]')
done
#######  if Statement Execution #######
if [ "$answer" = "y" -o "$answer" = "yes" ]; then
    echo "${bold}${green}/---------- Installing Audio/Visual Packages-----------/"
    echo "${normal}"
    echo "$(sudo apt-get install kdenlive pithos smplayer smplayer-themes smtube gimp blender)"
elif [ "$answer" = "n" -o "$answer" = "no" ]; then
    echo "${bold}${red}Skipping Packages"
    echo "${normal}"
fi
#######   Game Packages Question   #######
echo "${bold}${purple}Install Game Packages? (y/n)"
echo "${normal}"
read input
answer=$(echo $input | tr '[A-Z]' '[a-z]')
#######  While Loop to Force Correct Answers #######
while [ "$answer" != "y" -a "$answer" != "yes" -a "$answer" != "n" -a "$answer" != "no" ]; do
    echo "${bold}${red}${underline}Answer Yes or No"
    echo "${normal}"
    read input
    answer=$(echo $input | tr '[A-Z]' '[a-z]')
done
#######  if Statement Execution #######
if [ "$answer" = "y" -o "$answer" = "yes" ]; then
    echo "${bold}${green}/---------- Installing Game Packages-----------/"
    echo "${normal}"
    echo "$(sudo apt-get install steam gbrainy 0ad supertux supertuxkart kdegames lutris)"

elif [ "$answer" = "n" -o "$answer" = "no" ]; then
    echo "${bold}${red}Skipping Packages"
    echo "${normal}"
fi
#######  Programming Packages Question   #######
echo "${bold}${purple}Do you want to add Programming and Python Apps? (y/n)"
echo "${normal}"
read input
answer=$(echo $input | tr '[A-Z]' '[a-z]')
#######  While Loop to Force Correct Answers #######
while [ "$answer" != "y" -a "$answer" != "yes" -a "$answer" != "n" -a "$answer" != "no" ]; do
    echo "${bold}${red}${underline}Answer Yes or No"
    echo "${normal}"
    read input
    answer=$(echo $input | tr '[A-Z]' '[a-z]')
done
#######  if Statement Execution #######
if [ "$answer" = "y" -o "$answer" = "yes" ]; then
    echo "${bold}${green}/---------- Programing Packages -----------/"
    echo "${normal}"
    echo "$(sudo apt-get install python3-pip git firefox-dev)"
    echo "$(pip install autopep8 pandas jupyterlab viola pylint scipy matplotlib seaborn)"
    echo "$(snap install code --classic)"
    echo "$(snap install chromium)"
elif [ "$answer" = "n" -o "$answer" = "no" ]; then
    echo "${bold}${red}Skipping Packages"
    echo "${normal}"
fi
#######  Pentesting Packages Question   #######
echo "${bold}${purple}Do you want to Install Pendtesting Apps? (y/n)"
echo "${normal}"
read input
answer=$(echo $input | tr '[A-Z]' '[a-z]')
#######  While Loop to Force Correct Answers #######
while [ "$answer" != "y" -a "$answer" != "yes" -a "$answer" != "n" -a "$answer" != "no" ]; do
    echo "${bold}${red}${underline}Answer Yes or No"
    echo "${normal}"
    read input
    answer=$(echo $input | tr '[A-Z]' '[a-z]')
done
#######  if Statement Execution #######
if [ "$answer" = "y" -o "$answer" = "yes" ]; then
    echo "${bold}${green}/---------- Pentesting Packages -----------/"
    echo "${normal}"
    echo "$(sudo apt-get install openvpn forensics-full nmap zmap hashcat john hydra nikto)"
elif [ "$answer" = "n" -o "$answer" = "no" ]; then
    echo "${bold}${red}Skipping Packages"
    echo "${normal}"
fi
#######  Finishing Update & Upgrade  #######
echo "${bold}${purple}Do you want to Update and Upgrade? (y/n)"
echo "${normal}"
read input
answer=$(echo $input | tr '[A-Z]' '[a-z]')
#######  While Loop to Force Correct Answers #######
while [ "$answer" != "y" -a "$answer" != "yes" -a "$answer" != "n" -a "$answer" != "no" ]; do
    echo "${bold}${red}${underline}Answer Yes or No"
    echo "${normal}"
    read input
    answer=$(echo $input | tr '[A-Z]' '[a-z]')
done
#######  if Statement Execution #######
if [ "$answer" = "y" -o "$answer" = "yes" ]; then
    echo "${bold}${blue}/---------- Update/Upgrade & Autoremove ------------/"
    echo "${normal}"
    echo "$(sudo apt-get update && sudo apt-get upgrade && sudo apt-get autoremove)"
elif [ "$answer" = "n" -o "$answer" = "no" ]; then
    echo "${bold}${red}Skipping Update/Upgrade"
    echo "${normal}"
fi

###### Out of Repo Programs ######
echo "${bold}${orange}---------------------------"
echo "${green}Out of Repo Program URLS :"
echo "${orange}---------------------------"
echo "${bold}${orange}RealVNC "
echo ""${normal}"${red}${underline}https://www.realvnc.com/download/file/viewer.files/VNC-Viewer-6.20.113-Linux-x64.deb "
echo "${bold}${orange}Exodus Wallet "
echo ""${normal}"${red}${underline}https://www.exodus.com/download/ "
echo "${bold}${orange}BurpSuite "
echo ""${normal}"${underline}${red}https://portswigger.net/burp/communitydownload "
echo "${bold}${orange}MetaSploit "
echo ""${normal}"${underline}${red}https://github.com/rapid7/metasploit-framework/wiki/Nightly-Installers "
echo "${bold}${red}/---------- Now Install your Downloaded Packages -------------/"
echo "${normal}"
echo "$(cd ~/Downloads/)"
$SHELL
