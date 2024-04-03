#!/bin/bash
############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description :                                                            #
############################################################################

source "$EXE"
start "$0"

h1 pyenv setting script

h2 Installed Python versions:
exe "pyenv versions"

h2 Checking availiable Python versions...
exe "pyenv install -l"

h2 Installing last version and setting it as global....
exe "pyenv install; pyenv global; pyenv versions"

h2 Entering additional Python version
exe "echo Enter version number:"
number=result

echo "Additional Python version installing ..."
exe "pyenv install $number; pyenv global $number; pyenv versions"

end "$0"
