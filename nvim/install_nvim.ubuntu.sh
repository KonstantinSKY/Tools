#!/bin/bash


echo "Install and setup nvim and plugins for ubuntu server"
echo "Installing Neovim..."

sudo apt update && apt upgade
sudo apt install neovim

echo "Installing vim-plug  for neovim..."

sh -c curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim -Q-create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

read "Any key for setup nvim and install plugins" anykey
. setup_nvim.sh
