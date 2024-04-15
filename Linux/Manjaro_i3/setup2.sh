#!/bin/bash

# shellcheck disable=SC1091
source "$HOME"/.exe

h1 Manjaro  I3 Setup 2

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


h2 SSH

h2 Git ana GH_cli

h2 Pass setting


h2 Security and Pass

h2 SSH

h2 Git

h2 Fonts

h2 Python

h2 JavaScript

h2 Installing Packages

h2 Installing Others

end

