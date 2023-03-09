#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description : Create new repository and directory                        #
############################################################################

license='GNU General Public Licence v3.0'

echo Creating new repo at Github
echo License: $license

gh repo list
echo Enter repo name
read repo
echo Enter repo description
read descr

echo Will be create new public repo at GitHub: $repo
echo Anykey for create new repository
read anykey

gh repo create $repo --public --add-readme -d "$descr"

echo all repos listing...
gh repo list