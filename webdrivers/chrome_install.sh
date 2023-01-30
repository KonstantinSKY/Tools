#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description :                                                            #
############################################################################

#ver='108.0.5359.71'
ver='109.0.5414.74'

echo Chromedriver installing
echo google chrome version:

google-chrome-stable --version
echo Will be install chromedriver version: $ver
google-chrome-stable https://chromedriver.chromium.org/downloads
echo getting file from https://chromedriver
wget https://chromedriver.storage.googleapis.com/$ver/chromedriver_linux64.zip

unzip chromedriver_linux64.zip
sudo chmod +x chromedriver
sudo mv chromedriver /usr/local/share/chromedriver
sudo ln -s /usr/local/share/chromedriver /usr/bin/chromedriver

chromedriver --version
rm chromedriver_linux64.zip

