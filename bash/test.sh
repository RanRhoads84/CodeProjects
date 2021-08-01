#! /bin/bash
#
#######  Colors and Formatting
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

echo -n "This is a question (y/n)"
read input
answer=$(echo $input | tr '[A-Z]' '[a-z]')
#######  While Loop to Force Correct Answers #######
while [ "$answer" != "y" -a "$answer" != "yes" -a "$answer" != "\r" -a "$answer" != "n" -a "$answer" != "no" ]; do
    echo "Answer Yes or No"
    read input
    answer=$(echo $input | tr '[A-Z]' '[a-z]')
done
#######  if Statement Execution #######
if [ $answer = "y" -o $answer = "yes" ]; then
    echo "${bold}${green}Installing Pentesting Apps"
    echo $(sleep 1)
    echo "${normal}"
    echo "$(sudo apt-get install)"
elif [ $answer = "n" -o $answer = "no" ]; then
    echo "${bold}${red}Skipping Packages"
    echo "${normal}"
fi
# echo "${bold}${orange}this is a question 2 (y/n)"
# read input
# answer=$(echo $input | tr '[A-Z' '[a-z]')

# if [ $answer = "y" -o $answer = "yes" ]; then
#     echo "${green}Installing Pentesting Apps"
#     echo "${normal}
#     $(sudo apt-get install)"
# elif [ $answer = "n" -o $answer = "no"]; then
#     echo "${bold}${red}Skipping Packages 2"
#     echo "${normal}"
# fi

# echo "${bold}${orange}this is a question 3 (y/n)"
# read input
# answer=$(echo $input | tr '[A-Z' '[a-z]')

# if [ $answer = "y" -o $answer = "yes" ]; then
#     echo "${bold}${green}Installing Pentesting Apps
#     echo ${normal}
#     $(sudo apt-get install)"
# elif [ $answer = "n"-o $answer = "no"]; then
#     echo "${bold}${red}Skipped Install"
#     echo "${normal}"
#     exit
# fi
