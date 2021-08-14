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

#######  Add User-Group and PPA and Repos #######
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
    sudo gpasswd -a $USER plugdev
    echo "${bold}${purple}Adding PPA's"
    echo "${normal}"
    sudo add-apt-repository ppa:rvm/smplayer -y
    sudo add-apt-repository ppa:polychromatic/stable -y
    sudo add-apt-repository ppa:openrazer/stable -y
    sudo add-apt-repository ppa:lutris-team/lutris -y
    echo $(clear)
elif [ "$answer" = "n" -o "$answer" = "no" ]; then
    echo "${bold}${red}Skipping PPA's and User Add"
    echo "${normal}"
fi
#######  Starting Update  #######
echo "${bold}${blue}/---------- Updating ------------/"
echo "${normal}"
sleep 1
sudo apt-get update
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
    sudo apt-get install virtualbox snapd flatpak gnome-software-plugin-flatpak -yy
    flatpak remote-add --if-not-exist flathub https://flathub.org/repo/flathub.flatpakrepo
    flatpak install flathub org.mozilla.firefox
    sudo snap install chromium
    sudo snap install code --classic
    sudo snap install remmina
    sudo snap install gotop
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
    sudo apt-get install libreoffice scribus scribus-template calibre evolution calligra -yy

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
    sudo apt-get install openrazer-meta polychromatic -yy

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
    sudo apt-get install kdenlive pithos smplayer smplayer-themes smtube gimp blender -yy
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
    sudo apt-get install steam gbrainy 0ad supertux supertuxkart kdegames lutris -yy

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
    sudo apt-get install python3-pip git -yy
    sudo pip install autopep8 pandas jupyterlab viola pylint scipy matplotlib seaborn
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
    sudo apt-get install openvpn forensics-full nmap zmap hashcat john hydra nikto -yy
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
    sudo apt-get update && sudo apt-get upgrade && sudo apt-get autoremove -yy
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

#######  Reboot  #######
echo "${bold}${purple}Do you want to Reboot nao to activate changes? (y/n)"
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
    reboot
elif [ "$answer" = "n" -o "$answer" = "no" ]; then
    echo "${bold}${red}Skipping Reboot"
    echo "${normal}"
fi

exit
