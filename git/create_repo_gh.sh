#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description :                                                            #
############################################################################
source ~/Tools/exe.sh


echo Create new GitHub Public repo...
echo Repos list:
exe "gh repo list --limit 100"



if [ $# -lt 1 ]; then
    	repo_name=""
	else
		repo_name="$1 --private --clone"
fi

echo "Creating new repo"
exe "gh repo create $repo_name"

echo Done
