#!/bin/bash
############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description :                                                            #
############################################################################

. exe.lib

h1 Python Versions pyenv manager

h2 Showing installed Python versions:
exe "pyenv versions"

h2 Checking availiable Python versions...
exe "pyenv install -l"

# h2 Installing last version and setting it as global....
# exe "pyenv install; pyenv global; pyenv versions"

read -p 'Enter Python version number for instalation: ' -r number

h2 "Additional Python version installing ..."
exe "pyenv install $number" 

h2 "Set Version $number as global in pyenv" 
exe "pyenv global $number; pyenv versions"

end
