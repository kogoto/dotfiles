#!/usr/bin/env bash

[ ! -d ~/.oh-my-zsh ] && git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh
[ ! -d ~/.vim/bundle ] && git clone https://github.com/Shougo/neobundle.vim ~/.vim/bundle/neobundle.vim

DOT_FILES=( .vimrc .zshrc )

for file in ${DOT_FILES[@]}
do
    ln -sf $HOME/dotfiles/$file $HOME/$file
done
