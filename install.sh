#!/bin/bash
DIR=$(cd "$(dirname $0)" && pwd)

if [ -f ~/.vimrc ]; then
    mv ~/.vimrc ~/.vimrc.$RANDOM
fi

if [ -d ~/.vim ]; then
    mv ~/.vim ~/.vim.$RANDOM
fi

ln -sf $DIR/vimrc ~/.vimrc
ln -sf $DIR/vim ~/.vim
