#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description :                                                            #
############################################################################

version=3.11.3
archive=Python-$version.tgz

cd /usr/src
sudo wget https://www.python.org/ftp/python/$version/$archive
sudo tar xzf $archive
cd Python-$version
ls
sudo ./configure --enable-optimizations
sudo make altinstall
#python3.10 --version
