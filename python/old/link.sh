#!/bin/bash

version="3.11"
path=/usr/local/bin
cd /usr/bin/
sudo ln -sf $path/pydoc$version pydoc
sudo ln -sf $path/python$version python
sudo ln -sf $path/python$version-config python-config
#sudo ln -s $path/pip$version pip

ls -a --color | grep python

cd -
echo check python
python --version
echo check python3
python3 --version
echo check python3
py --version


