#!/bin/zsh

cd `dirname "$0"`
#we might execute the script outside thezsh-backup folder, so we might copy the files to the wrong location, using dirname will ensure that you will copy them to the same directory with commit_changes.sh script.

cp $HOME/.zshrc .
cp -R $HOME/.zsh .

git add --all
git commit -m "Sync zsh configs"
git push origin

