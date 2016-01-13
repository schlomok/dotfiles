# My .dotfiles

## Installation

To install, run the following command:

`sh -c "$(curl https://raw.githubusercontent.com/schlomok/dotfiles/master/install.sh)"`

## .vimrc

My [.vimrc](https://github.com/schlomok/vimrc) is hosted at a different 
repository because it is much larger than a singular file. It is a fork of 
[amix/vimrc](https://github.com/amix/vimrc).

## zsh

I use [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh) for my zsh needs.
The .zshrc file associated assumes that oh-my-zsh is already installed. The
installer script will install oh-my-zsh for you. 

The .zshrc also includes an RVM path. This maintains the assumption you are 
installing RVM, but if not, feel completely free to remove the line.

Also, please note that if you choose to manually copy the .zshrc, there are two
changes you'll need to note:

1. It's split into two files.
    * .zshrc is intended to be replacement **after** oh-my-zsh has been installed.
    * .zshrc.custom is sourced by .zshrc
2. You need to change the variable `$shlomok_userpath` in .zshrc with your own
   username. This can be done with the following command:
    * `sed -i.bak 's/\$schlomok\_userpath/'$(whoami)'/g' .zshrc; rm .zshrc.bak`

## tmux

## Todo

* tmux
    - Include tmux configurations
* General
    - Create individual installers for each different configuration. 
    - Create general flags for each configuration (basic, extended).
