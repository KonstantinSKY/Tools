#!/bin/bash


echo "Install and setup nvim and plugins for ubuntu server"

. upd.sh

echo "Installing Neovim..."
sudo apt install neovim

echo "Installing vim-plug  for neovim..."

curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

#echo Set vimrc with 8 colors
#cp init.vim.8_colors init.vim

read -p "Any key for setup nvim and install plugins" anykey
echo Starting setup_nvim.sh
. $PWD/setup_nvim.sh
