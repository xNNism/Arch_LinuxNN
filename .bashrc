#!/bin/bash
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
PS1='[\u@\h \W]\$ '
S1='[\u@\h \W]\$ '
#
Red=$(tput setaf 1) # red
Grn=$(tput setaf 2) # green
Cya=$(tput setaf 6) # cyan
Blu=$(tput setaf 4) # blue
Prpl=$(tput setaf 125) # purple
White=$(tput setaf 7) # white
Yellow=$(tput setaf 11) # yellow
txtbld=$(tput bold) # Bold
BldRed=${txtbld}$(tput setaf 1) # red
bldgrn=${txtbld}$(tput setaf 2) # green
bldblu=${txtbld}$(tput setaf 4) # blue
bldcya=${txtbld}$(tput setaf 6) # cyan
BldWhite=${txtbld}$(tput setaf 7) # white
BldYellow=${txtbld}$(tput setaf 11) # yellow
txtrst=$(tput sgr0) # Reset
###################################################################
# lolcat <filename> for gayness
##################################################################
#########  EXPORTS    ############################################
##################################################################
#
export LANG=en_US.UTF-8
export LANGUAGE=en_US.UTF-8
export LC_ALL=en_US.UTF-8
#
export EDITOR=nano
export VISUAL=geany
export TERM=terminator
export MAKEFLAGS='-j 12'

# Building Android
##################################################################
export ANDROID_HOME=/opt/android-sdk
export LANG=C
export PATH=~/bin:$PATH
export PATH=$PATH:/opt/android-sdk/tools/
export PATH=$PATH:/opt/android-sdk/platform-tools/
export USE_CCACHE=1
export CCACHE_DIR=~/.ccache
export JAVA_HOME=/usr/lib/jvm/default
# export JAVA_HOME=/usr/lib/jvm/default-runtime
#
###################################################################
export PATH=/usr/local/bin:$PATH
if [[ -d "$HOME/bin" ]] ; then
  PATH="$HOME/bin:$PATH"
fi
###################################################################
# make multiple shells share the same history file
export HISTSIZE=1000            # bash history will save N commands
export HISTFILESIZE=${HISTSIZE} # bash will remember N commands
export HISTCONTROL=ignoreboth   # ingore duplicates and spaces
export HISTIGNORE='&:ls:ll:la:cd:exit:clear:history'

####################    bash options       #######################
##################################################################
shopt -s cdspell                 # Correct cd typos
shopt -s checkwinsize            # Update windows size on command
shopt -s histappend              # Append History instead of overwriting file
shopt -s cmdhist                 # Bash attempts to save all lines of a multiple-line command in the same history entry
shopt -s expand_aliases
shopt -s extglob                 # Extended pattern
shopt -s no_empty_cmd_completion # No empty completion

complete -cf sudo
if [[ -f /etc/bash_completion ]]; then
  . /etc/bash_completion
fi
##################################################################
#########    ALIAS    ############################################
##################################################################
alias showmatrix='ncmatrix -b -f -s -C white -I enp14s0 -R red -T red'
alias speedtest='speedtest-cli'
# spark when clear
alias clear='clear; archey3 -c white'
alias make='make -j12'
#
alias ls='ls --color=auto'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'

##################################################################
#########    FUNCTIONS    ########################################
##################################################################
top10() { history | awk '{a[$2]++ } END{for(i in a){print a[i] " " i}}' | sort -rn | head; }
#
###################################################################

# Show Systeminformation
archey3 -c white
