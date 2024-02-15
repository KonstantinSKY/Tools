#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description :                                                            #
############################################################################

source ~/Tools/exe.sh

echo pyenv setting script
echo
echo Installed Python versions:

pyenv versions
echo

echo Checking availiable version...
exe "pyenv install -l"

echo Installing last version ....
exe "pyenv install; pyenv global; pyenv versions"


echo Installing additional Python version
read -p "Enter version number:" number

echo "Additional version installing ..."
exe "pyenv install $number; pyenv global $number; pyenv versions"


echo pyennv setting script finished.
