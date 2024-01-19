#!/bin/sh

if [ -e "$HOME/.vimrc" ]; then
    cp -r $HOME/.vimrc .

    git add .vimrc commit.sh install.sh
    git commit -a -m "speedie-vim | Add new config"
    git push
fi
