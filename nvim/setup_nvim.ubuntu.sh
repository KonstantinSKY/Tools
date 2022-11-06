#!/bin/bash

. colors.sh

echo_g "Install and setup nvim and plugins"
echo_g "Installing Neovim..."

#update.sh
#sudo pacman -S neovim
sudo apt update && apt upgade
sudo apt install neovim


echo_g "Set vim.init and create symbolic link"
exit 

mkdir -vp ~/.config/nvim/
rm -iv ~/.config/nvim/init.vim
ln -s ~/Tools/nvim/init.vim ~/.config/nvim/init.vim

echo_g "Install plugin manager ..."
sudo pamac install neovim-plug

echo "Install Plugins ..."
nvim -c 'PlugInstall' -c ':x' -c ':x'
