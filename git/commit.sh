#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description : Helper for GIT. Add, commit, push in one                   #
############################################################################

. \colors.sh

git status

[[ ! `git status -s` ]] && exit || echo -------------------

echo -e "$cv Press Enter for 'Git add *' bun for exit :$cn"
read add
[[ ! $add ]] && echo "Adding all files" || exit
git add -v *

git status -s

echo -e "$cg  Committing and Pushing ...$cn"
echo -e "$cv Enter commit message for git commit -m $cn"
read msg
[[ ! $msg ]] && git commit -m 'NO MESSAGE' || git commit -m "$msg"

git push
git status





