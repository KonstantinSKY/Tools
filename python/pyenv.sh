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

h2 Entering additional Python version
exe "read -p 'Enter Python version number:' -r" --result
number=$result

echo "Additional Python version installing ..."
exe "pyenv install $number; pyenv global $number; pyenv versions"

end
