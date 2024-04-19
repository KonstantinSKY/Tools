#!/bin/bash

. exe.lib

#scripts
docker=$TOOLS_PATH/docker/install.sh
vscode=$TOOLS_PATH/vscode/install.manjaro.sh
h1 DEVELOPER SETUP

h1 Docker
run $docker "Docker Installation  and first setting" 

h1 VSCODE
run $vscode "VS Code editor installation"

h1 PYCHARM

h1 PYTHON

h1 JavaScript

h1 etc
