#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description : for colorize text string                                   #
############################################################################


# echo colors variables

cg="\033[32m" # Green
cb="\033[34m" # Blue
cr="\033[31m" # Red
cy="\033[33m" # Yellow
cv="\033[35m" # Violet
cn="\033[0m"  # no color

# Short functions for color string
echo_g(){ echo -e "$cg$1$cn"; }
