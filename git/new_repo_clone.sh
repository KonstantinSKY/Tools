#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description : Create new repository and directory                        #
############################################################################

dir=$PWD
license='GNU General Public Licence v3.0'

echo Creating new repo at Github and clone to $dir
echo License: $license

gh repo list
echo Enter repo name
read repo
echo Enter repo description
read descr

echo Will be create new public repo at GitHub: $dir/$repo
echo Anykey for create new repository
read anykey

gh repo create $repo --public --clone --add-readme -l $license -d "$descr"
ls -la

echo all repos listing...
gh repo list
