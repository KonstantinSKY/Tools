#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description :                                                            #
############################################################################

echo Creating slink to Pyccharm settings

ln -sv $PWD/pycharm_settings.zip ~/.config/JetBrains/PyCharmCE2022.3/settings.zip
readlink ~/.config/JetBrains/PyCharmCE2022.3/settings.zip
