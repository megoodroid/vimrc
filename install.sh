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

git clone https://github.com/jiangmiao/auto-pairs.git ~/.vim/bundle/auto-pairs --depth 1
git clone https://github.com/ctrlpvim/ctrlp.vim.git ~/.vim/bundle/ctrlp.vim --depth 1
git clone https://github.com/scrooloose/nerdcommenter.git ~/.vim/bundle/nerdcommenter --depth 1
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree --depth 1
git clone https://github.com/leafgarland/typescript-vim.git ~/.vim/bundle/typescript-vim --depth 1
git clone https://github.com/neoclide/vim-jsx-improve.git ~/.vim/bundle/vim-jsx-improve

