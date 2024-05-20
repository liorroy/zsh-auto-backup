#!/bin/zsh
fswatch -o $HOME/.zshrc $HOME/.zsh/ | xargs -n1 -I{} echo "file changed"
