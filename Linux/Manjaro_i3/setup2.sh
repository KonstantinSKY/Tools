#!/bin/bash

# shellcheck disable=SC1091
source "$HOME"/.exe

h1 Manjaro I3 Setup 2

packages=$TOOLS_PATH/packages/Manjaro

h1 Packages INSTALLATION and UPDATE
h2 Running Enabling AUR script
exe "bash $packages/aur.sh"

h2 Running Updating System Packages
exe "bash $packages/update.sh"

# Install and Setup Application
collection="$packages/first.list"
h2 Installing first required package collection from "$collection"
exe "bash $packages/install.sh $collection"

h2 Running Megasync Instalation Script
exe "bash $TOOLS_PATH/megasync/install.manjaro.sh"

h1 ssh directory symbolic link
h2 Backing up .shh
backup "$HOME/.ssh"
h2 Removing .ssh
exe "rm -r $HOME/.ssh"
slink "$HOME"/Work/Security/ssh "$HOME"/.ssh

h2 Checkind GitHub ssh access
exe "ssh -T git@github.com"

h2 Checkind GitLab ssh access
exe "ssh -T git@gitlab.com"

clone .password-store
h2 Checking pass
exe "pass"

h2 Security and Pass

h2 SSH

h2 Git

h2 Fonts

h2 Python

h2 JavaScript

h2 Installing Packages

h2 Installing Others

end
