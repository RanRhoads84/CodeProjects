#!/bin/bash

# Up -- Debian/Ubuntu Update Tool (Totally stole from joe)
# Advanced command utility to fully update the system: Adding option "--clean" will
# remove orphaned packages and auto-clean the apt cache.
#
#
#
# Here we go!
#
# Text Color and Formating aliases
# Format:
# $echo "{color}Text To Display"

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

# Show Program Name

echo "${bold}${aqua}Up--Debian/Ubuntu Update Tool (V1)"
echo "${normal}"

# Check for less utility and install if needed:
echo "${bold}${orange}Checking for Less!"
echo "${normal}"

dpkg -l | grep -qw less || sudo apt install less -yyq

# Set BASH to quit script and exit on errors:

set -e

# Functions:

update() {
    echo "${bold}${green}Starting system update, hold on!"
    echo "${normal}"
    sudo apt update
    sudo apt upgrade -yy

}

clean() {
    echo "${Bold}${blue}Hold on, gotta get the broom...."
    echo "${normal}"
    sudo apt autoclean

}

remove() {

    echo "${bold}"
    echo "${orange}Removing Orphaned packages....."
    echo "${normal}"
    sudo apt autoremove
}

leave() {

    echo "${blink}"
    echo "${Green}--------------------------"
    echo "${red}---- Update Complete -----"
    echo "${green}--------------------------"
    echo "${normal}"
    exit

}

up-help() {

    cat >>_EOF_

    ############################################################################################
    # Up is a tool that automates the update process for Debian and Ubuntu based Linux systems #
    #                                                                                          #
    #  Commands:                                                                               #
    #  	up = Full System update                                                                #
    #                                                                                          #
    # 	Running "up" with no options will update te apt cache and then perform a               #
    #  	full distribution update automatically.                                                #
    #  	                                                                                       #
    #  	up -clean = Full System update with cleanup.                                           #
    #  	                                                                                       #
    #  	Adding the "-clean" option will invoke the apt commands to search for and              #
    #  	remove locally cached packages that are no longer in the repositories and              #
    #  	remove orphaned packages that are no longer needed by programs.                        #
    #  	                                                                                       #
    #  	up -remove = full system update with orphaned packages removed.                        #
    #  	                                                                                       #
    #  	The "-remove" option only removes orphaned packages, leaving the cache alone.          #
    #  	                                                                                       #
    #  	up -help = Shows this Help page.                                                       #
    #  	                                                                                       #
    #                                                                                          #
    # Written by Joe Collins (www.ezeelinux.com) (GNU/General Public License Version 2.0)      #
    #                                                                                          #
    #                                                                                          #
    # Disclaimer:                                                                              #
    # THIS SOFTWARE IS PROVIDED BY EZEELINUX “AS IS” AND ANY EXPRESS OR IMPLIED                #
    # WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF                     #
    # MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO               #
    # EVENT SHALL EZEELINUX BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL,           #
    # EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO,                      #
    # PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR           #
    # BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER            #
    # IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)               #
    # ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE               #
    # POSSIBILITY OF SUCH DAMAGE.                                                              #
    ############################################################################################
    _EOF_

}

# Execution

# Update and Clean:

if [ "$1" == "-clean" ]; then
    remove
    clean
    leave
fi

# Update and remove orphaned packages:

if [ "$1" == "-remove" ]; then
    remove
    leave
fi

if [ "$1" == "-help" ]; then
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
