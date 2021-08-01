#~bin/bash

# Up -- Debian/Ubuntu Update Tool (Totally stole from joe)
# Advanced command utility to fully update the system: Adding option "--clean" will
# remove orphaned packages and auto-clean the apt cache.


# Set BASH to quit script and exit on errors:

set -e

# Functions:

update() {

echo "Starting system update, hold on!"
sudo apt update 
sudo apt upgrade -yy

}

clean() {

echo "Hold on, gotta get the broom...."
sudo apt autoremove -yy
sudo apt autoclean

{

leave() {

echo "--------------------------"
echo "---- Update Complete -----"
echo "--------------------------"
exit

}

up-help() {

cat << _EOF_

 Up is a tool that automates the update process for Debian and Ubuntu based Linux systems
 
  Commands:
  	up = Full System update
  	
  	Running "up" with no ooptions will update te apt cache and then perform a
  	full distribution update automatically.
  	
  	up -clean = Full System update with cleanup.
  	
  	Adding the "-clean" option will invoke the apt commands to search for and 
  	remove locally cached packages that are no longer in the reposotores and 
  	remove orphaned packages that are no longer needed by programs.
  	
  	up -help = Shows this Help page.
  	

Written by Joe Collins (www.ezeelinux.com) (GNU/General Public License Version 2.0)

_EOF_

}

# Execution

# Show Program Name

echo "Up -- Debian/Ubuntu Update Tool (V1)"

# Update and Clean:

if [ "$1" == "-clean" ]; then
    update
    clean
    leave
fi    

if [ "$1" == "-help" ] ; then
    up-help
    exit
fi    

# Check for Invalid argument

if [ -n "$1" ]; then
    echo "Up Error: Invalid argument. Try 'up -help' for more info." >&2
    exit 1
fi

update
leave

