#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description : Send start kit of utils                                    #
############################################################################

echo Copy start files to remote host
. get_hostname.sh

echo Hostname: $hostname

ssh $hostname "mkdir -p ~/StartUtils"
scp -v gen_ssh_key.sh $hostname:StartUtils/gen_ssh_key.sh
scp -v ~/Tools/git/install.ubuntu.sh $hostname:StartUtils/install_git.ubuntu.sh
scp -v ~/Tools/git/install.manjaro.sh $hostname:StartUtils/install_git.manjaro.sh
scp -v ~/Tools/git/add_key_gh.sh $hostname:StartUtils/add_key_gh.sh

ssh $hostname

