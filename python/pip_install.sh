#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description :                                                            #
############################################################################

echo Installing and updating pip...
. pip_install.sh

python -m ensurepip
python -m ensurepip --upgrade
python -m pip -version

echo Installing pip-review
python -m pip install pip-review
pip-review --auto

echo Done!

