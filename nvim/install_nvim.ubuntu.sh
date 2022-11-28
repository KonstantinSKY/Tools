#!/bin/bash


echo "Install and setup nvim and plugins for ubuntu server"
echo "Installing Neovim..."

sudo apt update && sudo apt upgrade
sudo apt install neovim

echo "Installing vim-plug  for neovim..."

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

read -p "Any key for setup nvim and install plugins" anykey

echo Starting setup_nvim.sh
. setup_nvim.sh
