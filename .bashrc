#!/bin/bash
#/.bashrc
#                       ██████   █████  ███████ ██   ██
#                       ██   ██ ██   ██ ██      ██   ██
#                       ██████  ███████ ███████ ███████
#                       ██   ██ ██   ██      ██ ██   ██
#                       ██████  ██   ██ ███████ ██   ██
#################################################################################################
#########  Colorize and add text parameters  ####################################################
#################################################################################################

#	Colors:

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
export LD_PRELOAD=""
export JAVA_HOME=/usr/lib/jvm/default
export ANDROID_HOME=/opt/android-sdk
export LC_ALL=C
export EDITOR=nano
export VISUAL=geany
export TERM=xterm

###################################################################################################
########## Include my private bin dir if it exists: ###############################################

if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

###################################################################################################
########## fix for Tilix ##########################################################################

if [ $TILIX_ID ] || [ $VTE_VERSION ]; then
        source /etc/profile.d/vte.sh
fi

###################################################################################################
########## source files ###########################################################################

[ -r /usr/share/bash-completion/completions ] &&
  . /usr/share/bash-completion/completions/*

#################################################################################################
#########    ALIAS    ###########################################################################
#################################################################################################
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
echo "${txtbld}d88PPPo 888      ,8b.     doooooo 888  ,dP d88PPPo 888   88 888888888   ,d8PPPP"${txtrst}
echo "${txtbld}888ooo8 888      88*8o    d88     888o8P*  888ooo8 888ooo88    *88d     d88ooo "${txtrst}
echo "${txtbld}888   8 888      88PPY8.  d88     888 Y8L  888   8       88   *888    ,88*     "${txtrst}
echo "${txtbld}888PPPP 888PPPPP 8b   *Y* d888888 888  *8p 888PPPP PPPPPP8P *88p      88bdPPP  "${txtrst}
echo "${txtbld} "${txtrst}
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

