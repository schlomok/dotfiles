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
echo "Installing .zshrc"

sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)";
curl https://raw.githubusercontent.com/schlomok/dotfiles/master/zsh/.zshrc -o /tmp/.zshrc;
sed -i.bak 's/\$schlomok\_userpath/'$(whoami)'/g' /tmp/.zshrc;
cp /tmp/.zshrc $HOME/.zshrc
touch $HOME/.zshrc.custom

# gem
echo "Installing .gemrc"

curl https://raw.githubusercontent.com/schlomok/dotfiles/master/gem/.gemrc -o $HOME/.gemrc;

# tmux
echo "Installing .tmux.conf"

curl https://raw.githubusercontent.com/schlomok/dotfiles/master/tmux/.tmux.conf -o $HOME/.tmux.conf;

# Conclusion

zsh $HOME/.zshrc
