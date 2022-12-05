#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description : Pip-review install util                                    #
############################################################################


echo Installing pip-review ...
python -m pip install pip-review
echo Updating python modules ...
pip-review --auto

echo Done!

