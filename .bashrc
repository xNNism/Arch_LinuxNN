#!/bin/bash
#/.bashrc
#################################################################################################
#################################################################################################
#																								#
# @@@@@@@  @@@       @@@@@@   @@@@@@@ @@@  @@@ @@@@@@@  @@@ @@@ @@@@@@@ @@@@@@@      	®2017	#
# @@!  @@@ @@!      @@!  @@@ !@@      @@!  !@@ @@!  @@@ @@! !@@   @@!   @@!     				#
# @!@!@!@  @!!      @!@!@!@! !@!      @!@@!@!  @!@!@!@   !@!@!    @!!   @!!!:!  				#
# !!:  !!! !!:      !!:  !!! :!!      !!: :!!  !!:  !!!   !!:     !!:   !!:     				#
# :: : ::  : ::.: :  :   : :  :: :: :  :   ::: :: : ::    .:       :    : :: :::				#
#                                                                               				#
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

#################################################################################################
######### User Info #############################################################################
export USERNAME="xNNism"
export NICKNAME="xNN"


#################################################################################################
#########  EXPORTS    ###########################################################################
#################################################################################################

export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
export JAVA_HOME=/usr/lib/jvm/default
export PATH=~/bin:$PATH
export ANDROID_HOME=/opt/android-sdk
export LC_ALL=C
export EDITOR=nano
export VISUAL=geany
export TERM=terminator

##################################################################################################
######### If not running interactively, don't do anythin  ########################################

[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

###################################################################################################
########## Include my private bin dir if it exists: ###############################################

if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

#################################################################################################
#########    ALIAS    ###########################################################################
#################################################################################################
alias dd='dd status=progress'
alias showmatrix='ncmatrix -b -f -s -C white -I enp14s0 -R red -T red'
alias speedtest='speedtest-cli'
alias make='make -j12'
#
alias ls='ls --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'


#################################################################################################
#########  Welcome Script  ######################################################################
#################################################################################################
## DEPENDENCIES:
## https://github.com/aureooms/myip

######## variables: #############################################################################
cpu_type=$(lscpu | grep "Model name:" | cut -c 24-)
cpu_cores=$(lscpu | grep "^CPU(s)" | cut -c 24-)
block_dev=$(echo -e "${Yellow}Block Devices: \n${Green}$(lsblk | grep "sd." | awk '{print "'${Red}'> '${Green}'"$1" '${Yellow}'Type: '${Green}'"$6" '${Yellow}'Size: '${Green}'"$4" '${Green}'"$7}' | column -t | sed 's/>/    >/')")
kversion=$(uname -srm)
shell="$SHELL"
# private_ip=$(echo -e "$(myip private | head -2 | tail -1)")
# public_ip=$(echo -e "$(myip public | head -2 | tail -1)")
gpu_temp=$(echo -e "$(sensors | grep "temp1:" | cut -c 16-22)")
cpu_temp=$(echo -e "$(sensors | grep "Package id 0:" | cut -c 17-23)")
# cpu_clock=$(echo -e "$(cpuinfo | grep "Hz Actual:"| cut -c 11-15)")
# wthr=$(echo -e "$(wego -f emoji -d 1 -location 48.703098,-9.654100 | cut -f 15-)")
# btc=$(curl https://www.bitstamp.net/api/v2/ticker/btceur/ 2>/dev/null  | sed  's/\,/\n/g' | grep last | awk  -F':' '{print $2}'  | sed 's/\"//g')
# echo "${red}|btc:${txtrst}$btc€"

######## TERMINAL OUTPUT: #############################################################################
echo
echo "${txtbld} ________  ___       ________  ________  ___  __    ________      ___    ___ _________  _______      ®2017"${txtrst}
echo "${txtbld}|\   __  \|\  \     |\   __  \|\   ____\|\  \|\  \ |\   __  \    |\  \  /  /|\___   ___\\  ___ \      "${txtrst}
echo "${txtbld}\ \  \|\ /\ \  \    \ \  \|\  \ \  \___|\ \  \/  /|\ \  \|\ /_   \ \  \/  / ||___ \  \_\ \   __/|     "${txtrst}
echo "${txtbld} \ \   __  \ \  \    \ \   __  \ \  \    \ \   ___  \ \   __  \   \ \    / /     \ \  \ \ \  \_|/__   "${txtrst}
echo "${txtbld}  \ \  \|\  \ \  \____\ \  \ \  \ \  \____\ \  \\ \  \ \  \|\  \   \/  /  /       \ \  \ \ \  \_|\ \  "${txtrst}
echo "${txtbld}   \ \_______\ \_______\ \__\ \__\ \_______\ \__\\ \__\ \_______\__/  / /          \ \__\ \ \_______\ "${txtrst}
echo "${txtbld}    \|_______|\|_______|\|__|\|__|\|_______|\|__| \|__|\|_______|\___/ /            \|__|  \|_______| "${txtrst}
echo "${txtbld}                                                                \|___|/                               "${txtrst}
echo "${txtbld}"${txtrst}
echo "${red}**************************************************************************************"${txtrst}
echo "${txtbld}                                                               	 "${txtrst}
echo "${txtbld}                               ${red}-${txtrst}BLACKBYTE-INC.NET${red}-${txtrst}                                   "${txtrst}
echo "${txtbld} "${txtrst}
echo "             ${red}|${txtrst} $kversion ${txtrst} ${red}|${txtrst} CPU: $cpu_temp${red} ${red}|${txtrst} GPU: $gpu_temp${red} ${red}|${txtrst} "${txtrst}
echo "${red}${txtrst} 		"${txtrst}
echo "${red}**************************************************************************************"${txtrst}
echo


#################################################################################################
#########      END        #######################################################################
#################################################################################################

#=== sysidk set-up
# (please leave '#===' lines) last updated Thu Feb  1 07:48:37 CET 2018
source "/home/xnn/.sysidk/sysidk.rc"
#=== end of sysidk set-up
