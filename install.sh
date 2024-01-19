#!/bin/sh
echo 3; sleep 1; echo 2; sleep 1; echo 1; sleep 1

[ -e "$HOME/.vimrc" ] && cp $HOME/.vimrc /tmp/vim-backup

cp -r .vimrc ~/

echo "installed."
