#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description : Remote clone Tools repo                                    #
############################################################################

Tools_repo=git@github.com:KonstantinSKY/Tools.git
Tools_path=~/Tools
echo Remote clone Tools repository
. get_hostname.sh

echo Any key if u sure to start clone $Tools_repo at $hostname
read anykey

ssh $hostname << EOF
echo Inside the $hostname
echo Logining to gh with token,,,
cd ~ 

echo Cloning $Tools_repo ...
echo "yes" | git clone $Tools_repo
ls $Tools_path

ls $Tools_path/

EOF
echo Returned to local host
echo Done
