#!/bin/bash

dir=$PWD
echo Adding .gitignore to $dir ...
tail -n +11 ~/Tools/git/gitignore.sh > $dir/.gitignore
echo gitignore file:
cat $dir/.gitignore
echo
exit

# gitignore file

.idea
.gitignore
venv/
__pycache__/
logs/
security.py
DB/
TODO
