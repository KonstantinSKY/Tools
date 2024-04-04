#!/bin/bash
source "$EXE"
start "$0"

#Scripts
upd=$TOOLS_PATH/pkgs/upd.sh
pyenv_sh=$TOOLS_PATH/python/pyenv.sh

h1 Python Ecosystem

h2 Python3 versions and which:
exe "python3 --version; which pyhton3" -n

echo Python versions and which:
exe "python --version; which pyhton" -n

h2 "Update and upgrade system packages"
exe "sh $upd"

h2 "Checking for python installing version ..."
exe "python -V" -n

h1 pyennv

h2 pyenv checking version if already installed ...
exe "pyenv --version" -n

h2 "installing Xcode Command Line Tools ..."
exe "sudo pacman -S --needed --noconfirm base-devel openssl zlib xz tk"

h2 "Cloning and Instaling pyenv ..."
exe "git clone https://github.com/pyenv/pyenv.git ~/.pyenv; pyenv --version"

h2 pyenv Running for install python new version
exe "sh $pyenv_sh"

h2 pip installing
exe "python -m ensurepip --upgrade; python -m pip --version"

h2 pipx installing
exe "sudo pacman -S python-pipx; pipx --version"

h2 poetry installing
exe "pipx install poetry; poetry --version"

h2 pip-review installing
exe "pipx install pip-review"

h2 Running pip-review and ubdating modules
exe "pip-review --auto"
end "$0"
