#!/bin/bash

#################################################################################################
#########  Colorize and add text parameters  ####################################################
#################################################################################################

red=$(tput setaf 1) # red
grn=$(tput setaf 2) # green
cya=$(tput setaf 6) # cyan
txtbld=$(tput bold) # Bold
bldred=${txtbld}$(tput setaf 1) # red
bldgrn=${txtbld}$(tput setaf 2) # green
bldblu=${txtbld}$(tput setaf 4) # blue
bldcya=${txtbld}$(tput setaf 6) # cyan
txtrst=$(tput sgr0) # Reset

sleep 2
echo " ${bldred}Copy pacman.conf to /etc/..."${txtrst}
sudo cp pacman.conf /etc/pacman.conf

sleep 2
echo " ${bldred}Add and sign graysky's key..."${txtrst}
sudo pacman-key -r 5EE46C4C && pacman-key --lsign-key 5EE46C4C

sleep 2
echo " ${bldred}Install Backarch Repo..."${txtrst}
sleep 2
curl -O https://blackarch.org/strap.sh
chmod +x strap.sh
sudo ./strap.sh

sleep 2
echo " ${bldred}Update and Upgrade ArchLinux..."${txtrst}
sudo pacman -Sy && sudo pacman -Syu
sudo rm -r strap.sh

sleep 2
echo " ${bldred}...Done!"${txtrst}
