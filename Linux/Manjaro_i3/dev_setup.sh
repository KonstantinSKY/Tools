#!/bin/bash

. exe.lib

#directories
PROJECT_DIR=$PROJECTS_PATH/Project

#repos
PROJECT_REPO=git@github.com:KonstantinSKY/Project.git

#scripts
docker=$TOOLS_PATH/docker/install.sh
vscode=$TOOLS_PATH/vscode/install.manjaro.sh
python=$TOOLS_PATH/python/eco_install.manjaro.sh
js=$TOOLS_PATH/js/eco_install.manjaro.sh

h1 DEVELOPER SETUP
h2 Getting Start Web Project
clone "$PROJECT_REPO" "$PROJECT_DIR"

h1 Docker
run $docker "Docker Installation and first setting"

h1 VSCODE
run $vscode "VS Code editor installation"

h1 PYTHON
run $python "Python Eco system instalation and setup"

h1 JavaScript
run $js "JavaScript Eco system instalation and setup"

h1 PYCHARM
h1 etc
