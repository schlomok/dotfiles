#!/bin/sh

# vimrc
echo "Installing vimrc"

if [ -d "$HOME/.vim_runtime" ]; then
    cd ~/.vim_runtime && git pull
else
    git clone https://github.com/schlomok/vimrc.git ~/.vim_runtime
fi
sh ~/.vim_runtime/install_awesome_vimrc.sh

# zsh

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
sed -i.bak 's/\$schlomok\_userpath/'$(whoami)'/g' zsh/.zshrc && 
rm zsh/.zshrc.bak;
cp zsh/.zshrc zsh/.zshrc.custom $HOME/

# gem

cp gem/.gemrc $HOME/.gemrc

# tmux

