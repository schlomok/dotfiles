#!/bin/sh

echo "Installing vimrc"

if [ -d "$HOME/.vim_runtime" ]; then
    cd ~/.vim_runtime && git pull
else
    git clone https://github.com/schlomok/vimrc.git ~/.vim_runtime
fi
sh ~/.vim_runtime/install_awesome_vimrc.sh
