#!/bin/bash

bold=$(echo -en "\e[1m")
green=$(echo -en "\e[32m")
normal=$(echo -en "\e[0m")

#pip installs for VSCode
echo "${bold}"
echo "${green}PiP Installs"
echo "${normal}"

pip install scipy
pip install matplotlib
pip install seaborn
pip install pylint
pip install autopep8
pip install pandas
pip install jupyterlab
pip install voila
