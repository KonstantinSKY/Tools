#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description :                                                            #
############################################################################
source ~/Tools/exe.sh
start $0

h1 new GitHub Private repository

h2 Showing existing GitHub repo list
exe "gh repo list --limit 100"



if [ $# -lt 1 ]; then
    	repo_name=""
	else
		repo_name="$1 --private --clone"
fi

h2 "Creating new repo at GitHub directly and clone to $(pwd) directory"
exe "gh repo create $repo_name"


h2 Showing created repo in GitHub list ...
exe "gh repo list | grep '$1'"

end $0
