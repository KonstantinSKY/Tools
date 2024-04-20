#!/bin/bash
. exe.lib

#dirs
pyenv_dir="$HOME/.pyenv"

#Scripts
pyenv_scr=$TOOLS_PATH/python/pyenv.sh

#Repos
pyenv_repo="https://github.com/pyenv/pyenv.git"

h1 Python Ecosystem

h2 Python3 versions and which:
exe "python3 --version; which pyhton3" -n

h2 Python versions and which:
exe "python --version; which pyhton" -n

h2 "Checking for python installing version ..."
exe "python -V" -n

h1 pyennv

h2 pyenv checking version if already installed ...
exe "pyenv --version" -n

h2 "installing Xcode Command Line Tools ..."
exe "sudo pacman -S --needed --noconfirm base-devel openssl zlib xz tk"

h2 "Cloning and Instaling pyenv ..."
clone $pyenv_repo "$pyenv_dir"

h2 Restart system
exe "su $USER"

ls -la "$pyenv_dir"
pyenv --version

h1 Add Python versions to pyenv
run "$pyenv_scr" "New python version installing"

h1 "pip & pipx"

h2 pip installing
exe "python -m ensurepip --upgrade; pip --version"

h2 pipx installing
add python-pipx

echo "pipx version:"; pipx --version

h1 poetry

h2 poetry installing
exe "pipx install poetry; poetry --version"

h2 pip-review installing
exe "pipx install pip-review"

h2 Running pip-review and updating modules
exe "pip-review --auto; pip-review --auto"

end
