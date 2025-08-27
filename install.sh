#!/bin/sh

# Backup existing vimrc
if [ -f ~/.vimrc ]; then
	mv ~/.vimrc ~/.vimrc.old
fi

# Install vim-plug if it is not installed.
if [ ! -f ~/.vim/autoload/plug.vim ]; then
	curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
fi

mv ./init.vim ~/.vimrc
