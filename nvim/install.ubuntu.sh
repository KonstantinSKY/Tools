#!/bin/bash


echo "Install and setup nvim and plugins for ubuntu server"
path=$PWD
. upd.sh
echo Uninstalling vim if it exists
sudo apt remove vim

echo "Installing Neovim..."
sudo apt install neovim

echo "Installing vim-plug  for neovim..."

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

read -p "Any key for setup nvim and install plugins" anykey
echo Starting setup_nvim.sh
. $path/setup_nvim.sh
