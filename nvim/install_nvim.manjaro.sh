#!/bin/bash


echo_g "Install and setup nvim and plugins"
echo_g "Installing Neovim..."

update.sh
sudo pacman -S neovim

echo_g "Set vim.init and create symbolic link"


echo_g "Install plugin manager ..."
sudo pamac install neovim-plug

