#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description : Create new repository and directory                        #
############################################################################
. exe.lib

license='GNU General Public Licence v3.0'

h1 new Github repository

h2 Showing github repos
exe "gh repo list --limit 100"

read -p -r "Enter repo name:" repo
read -p -r "Enter repo description" descr

h2 Creation new public repo at GitHub: "$repo"

gh repo create "$repo" --public --add-readme -d "$descr"

echo all repos listing...
gh repo list
echo Creating link to .gitignore
ln -s "$TOOLS_PATH"/git/gitignore "$repo"/.gitignore

echo "$repo" repository work directory:
cd $repo || exit
ls -la
ln -s "$TOOLS_PATH"/git/gitignore "$repo"/.gitignore
end