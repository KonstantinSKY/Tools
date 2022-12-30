#!/bin/bash


echo "Install and setup nvim and plugins for Manjaro desktop Linux"
echo "Installing Neovim..."

update.sh
sudo pacman -S neovim

echo "Installing vim-plug pluging manager for neovim ..."

sudo pamac install neovim-plug

echo Set vimrc with 256 colors
cp init.vim.256_colors init.vim

read -p "Any key for setup nvim and install plugins" anykey
echo Starting setup_nvim.sh
. setup_nvim.sh

