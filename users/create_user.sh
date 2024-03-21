#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description :                                                            #
############################################################################

source ../exe.sh
start $0

h1 Create and add new User

passwd=/etc/passwd

h2 Showing existing users $passwd
exe "cat $passwd"

h2 Enter the user name:
read username

h2 Creating new user $username
exe "sudo user add -m -s /bin/bash $username"

h2 Showing User in $passwd file
exe "cat $passwd | grep $username"

h2 Showing Home directory:
exe "ls -la /home/"

h2 Entering password fo user $username
exe "sudo passwd $username"

end $0

