#!/bin/bash
# shellcheck disable=SC1091
. exe.lib

h1 Deleting repository from Github...

if [ "$1" ]; then
	repo=$1
else
	gh repo list --limit 100
	echo Enter repo name for deleting:
	read -r repo
fi

echo Will be deleting the repository from GitHub !permanently and forever!: "$repo"
echo Enter "YES" if you for deleting "$repo" forever
read -r yes
if [ ! "YES" == "$(echo "$yes" | tr '[:lower:]' '[:upper:]')" ]; then
	echo "Exiting"
	exit
fi

echo Deleting...

gh repo delete "$repo" --yes

gh repo list --limit 100

end
