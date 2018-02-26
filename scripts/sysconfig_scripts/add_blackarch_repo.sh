#!/bin/sh

#########################################################
# Run https://blackarch.org/strap.sh as root            #
#########################################################
curl -O https://blackarch.org/strap.sh

###################
# Set execute bit #
###################
chmod +x strap.sh

###################
# Run strap.sh	  #	
###################
sudo ./strap.sh
