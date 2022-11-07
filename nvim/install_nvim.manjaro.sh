#!/bin/bash


echo "Install and setup nvim and plugins for Manjaro desktop Linux"
echo "Installing Neovim..."

update.sh
sudo pacman -S neovim

echo "Installing vim-plug pluging manager for neovim ..."

sudo pamac install neovim-plug

read "Any key for setup nvim and install plugins" anykey
.setup_nvim.sh

