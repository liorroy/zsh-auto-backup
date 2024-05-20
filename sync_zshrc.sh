#fswatch -o $HOME/.zshrc $HOME/.zsh/ | xargs -n1 -I{} echo "file changed"
#old - simply runs fswatch on the .zshrc file when running the script (don't forgt chmod +x <script_name>.sh


#!/bin/zsh
DIR_PATH=`dirname "$0"`
fswatch -o $HOME/.zshrc $HOME/.zsh/ | xargs -n1 zsh $DIR_PATH/commit_changes.sh
#now sync_zshrc.sh will execute commit_changes.sh when there are new changes.

#Because I place two scripts in the same directory, so I use dirname "$0" to get the absolute path of the directory that contains commit_changes.sh. You have to replace the path if you store them in different locations.
