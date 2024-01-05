#!/bin/bash

############################################################################
# Script name :                              Date   :                      #
# Author      : Stan SKY                     E-mail : sky012877@gmail.com  #
# Description :                                                            #
############################################################################

pipx install poetry

poetry completions bash >> ~/.bash_completion
poetry completions zsh > ~/.zfunc/_poetry
