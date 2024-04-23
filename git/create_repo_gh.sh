#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description :                                                            #
############################################################################
. exe.lib

h1 new GitHub Private repository

h2 Showing existing GitHub repo list
exe "gh repo list --limit 100"

read_if_not "$1"
repo_name="$result"

h2 "Creating new repo at GitHub private directly and clone to $(pwd) directory"
exe "gh repo create $repo_name --private --clone"

h2 Showing created repo in GitHub list ...
exe "gh repo list | grep '$1'"

end
