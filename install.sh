#!/bin/bash

#################################################################################################
#########  Colorize and add text parameters  ####################################################
#################################################################################################
#
#	 Colors:
#
#  BLACK=	'\e[0;30m'
#  RED=		'\e[0;31m'
#  GREEN=	'\e[0;32m'
#  YELLOW=	'\e[0;33m'
#  BLUE=	'\e[0;34m'
#  MAGENT=	'\e[0;35m'
#  CYAN=	'\e[0;36m'
#  WHITE=	'\e[0;37m'
#  LIGHTBLACK=	'\e[1;30m'
#  LIGHTRED=	'\e[1;31m'
#  LIGHTGREEN=	'\e[1;32m'
#  LIGHTYELLOW=	'\e[1;33m'
#  LIGHTBLUE=	'\e[1;34m'
#  LIGHTMAGENT= '\e[1;35m'
#  LIGHTCYAN=	'\e[1;36m'
#  LIGHTWHITE=	'\e[1;37m'
#
##  SET COLORS  ########################################################################
red=$(tput setaf 1) # red
grn=$(tput setaf 2) # green
cya=$(tput setaf 6) # cyan
txtbld=$(tput bold) # Bold
bldred=${txtbld}$(tput setaf 1) # red
bldgrn=${txtbld}$(tput setaf 2) # green
bldblu=${txtbld}$(tput setaf 4) # blue
bldcya=${txtbld}$(tput setaf 6) # cyan
txtrst=$(tput sgr0) # Reset
#######################################################################################
echo
echo
echo "###########################################################"
echo "##                                                       ##"
echo "##         ██████   █████  ███████ ██   ██               ##"
echo "##         ██   ██ ██   ██ ██      ██   ██               ##"
echo "##         ██████  ███████ ███████ ███████               ##"
echo "##         ██   ██ ██   ██      ██ ██   ██               ##"
echo "##  SMALL  ██████  ██   ██ ███████ ██   ██  SCRIPT       ##"
echo "##                                                       ##"
echo "##        ...TO SETUP USER SPECIFIC FILES...             ##"
echo "##                                                       ##"
echo "##                                                       ##"
echo "##                                                       ##"
echo "${txtbld}##-------------------------------------------------------${txtrst}##"
echo "##                                                       ##"
echo "##  1. - Hostfile                                        ##"
echo "##         from github.com/StevenBlack/hosts            ##"
echo "##         (fakenews + gambling)                        ##"
echo "##                                                       ##"
echo "##  2. - Customized .bashrc                              ##"
echo "##                                                       ##"
echo "##  3. - Fonts:                                          ##"
echo "##         Nerdfonts-Complete                           ##"
echo "##                                                       ##"
echo "##  4. - Themes:                                         ##"
echo "##         Matcha-aliz                                  ##"
echo "##         Matcha-azul                                  ##"
echo "##         Numix                                        ##"
echo "##         Vertex                                       ##"
echo "##         xNNism-v2                                    ##"
echo "##                                                       ##"
echo "##  5. - Icons:                                          ##"
echo "##         Adwaita                                       ##"
echo "##         xcursor-breeze                                ##"
echo "##         xcursor-breeze-snow                           ##"
echo "##         Sardi-Ghost-Flexible                          ##"
echo "##                                                       ##"
echo "##  6. - GFX:                                            ##"



sleep 3
echo
##  HOSTSFILE  #######################################################################################
echo "${txtbld}----------------------------------------------------------------${txtrst}"
echo "${red}## download and install hostsfile (blocking fakenews + gambling)...${txtrst}"
echo
echo
sleep 2
sudo wget https://raw.githubusercontent.com/StevenBlack/hosts/master/alternates/fakenews-gambling/hosts
sudo cp $PWD/hosts /etc/hosts
sleep 1
echo
echo "${grn}...done!${txtrst}"

sleep 2

##  .BASHRC ############################################################################################
echo
echo
echo "${txtbld}-------------------------------------------------------------${txtrst}"
echo "${red}## setting new .bashrc...${txtrst}"
echo
echo
cp $PWD/.bashrc ~/.bashrc
sudo cp .bashrc /root/.bashrc
sleep 1
echo
echo "${grn}...done!${txtrst}"
sleep 2

##  FONTS  ##############################################################################################
echo
echo
echo "${txtbld}-------------------------------------------------------------${txtrst}"
echo "${red}## Copying Fonts/ to /usr/share/fonts...${txtrst}"
echo
echo
sudo cp -r $PWD/Fonts/* /usr/share/fonts/
sleep 1
echo
echo "${grn}...done!${txtrst}"
sleep 2

##  THEMES  ##############################################################################################
echo
echo
echo "${txtbld}-------------------------------------------------------------${txtrst}"
echo "${red}## Copying Themes/ to /usr/share/themes...${txtrst}"
echo
echo
sudo cp -r $PWD/Themes/* /usr/share/themes/
sleep 1
echo
echo "${grn}...done!${txtrst}"
sleep 2

##  ICONS  ################################################################################################
echo
echo
echo "${txtbld}-------------------------------------------------------------${txtrst}"
echo "${red}## Copying Icons/ to /usr/share/icons...${txtrst}"
echo
echo
sudo cp -r $PWD/Icons/* /usr/share/icons/
sleep 1
echo
echo "${grn}...done!${txtrst}"
sleep 2
echo
echo
echo
echo "${bldgrn}## Script finished, exiting now!${txtrst}"
echo "${txtbld}-------------------------------------------------------------${txtrst}"
echo
sleep 4

## END OF SCRIPT ################################################################################################
exit
