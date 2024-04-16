#!/bin/bash
############################################################################
# Script name : setup_git.sh                 Date   : 11/02/22             #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description : Setup git                                                  #
############################################################################
. "$EXE"

# Variables from env
name=$USER_NAME
# shellcheck disable=SC2153
email=$EMAIL

echo Setting for git client...

h2 Checking if git installed...
exe "git -v; which git"

h2 Show git configs:
exe "git config --list"

h2 User Name and email
[ ! "$name" ] && read -p -r "Enter the name:" name
[ ! "$email" ] && read -p -r "Enter the email:" email

echo name: "$name"
echo email: "$email"

h2 Setting user name
exe "git config --global user.name $name && git config user.name"

h2 Setting email Your new email address: "$email"
exe "git config --global user.email $email && git config user.email"

h2 Setting push behavior
exe "git config --global push.default simple"

h2 Setting default branch as main
exe "git config --global init.defaultBranch main"

h2 Setting default pull.rebase = false
exe "git config --global pull.rebase false"

h2 No addIgnoreFile Advice
exe "git config advice.addIgnoredFile false"

h1 Show config:
exe "git config --list"
end
