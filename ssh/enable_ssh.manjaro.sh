#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description : Enable OpenSSH daemon for Manjaro                          #
############################################################################


source ../exe.sh

start $0
h1 Enable openssh for Manjaro Linux

h2 Checking openssh  status
exe "which ssh && systemctl status sshd"

h2 Starting sshd
exe "sudo systemctl start sshd"

h2 Enabling sshd
exe "sudo systemctl enable sshd"

h2 Checking openssh  status
exe "systemctl status sshd"

h2 Showing IP v4
exe "ip a | grep 'inet '"

end $0

