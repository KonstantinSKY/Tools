#!/bin/bash


echo "Setup nvim and plugins ..."

echo "Setup vim.init and creating symbolic link ..."

mkdir -vp ~/.config/nvim/
rm -iv ~/.config/nvim/init.vim
ln -s ~/Tools/nvim/init.vim ~/.config/nvim/init.vim

echo "Install Plugins ..."
nvim -c 'PlugInstall' -c ':x' -c ':x'
