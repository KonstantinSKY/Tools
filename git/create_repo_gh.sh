#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description :                                                            #
############################################################################
source ~/Tools/exe.sh
start $0

echo Create new GitHub Public repo...
echo Showing existing repo list ...
exe "gh repo list --limit 100"



if [ $# -lt 1 ]; then
    	repo_name=""
	else
		repo_name="$1 --private --clone"
fi

echo "Creating new repo"
exe "gh repo create $repo_name"

end $0
