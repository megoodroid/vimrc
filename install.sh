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

PLUGINS=(
"jiangmiao/auto-pairs" 
"ctrlpvim/ctrlp.vim"
"scrooloose/nerdcommenter"
"scrooloose/nerdtree"
"leafgarland/typescript-vim"
"pangloss/vim-javascript"
"neoclide/vim-jsx-improve"
"mattn/emmet-vim"
)

for p in ${PLUGINS[@]}
do
    echo "git clone https://github.com/$p.git ~/.vim/bundle/${p#*/} --depth 1"
    git clone https://github.com/$p.git ~/.vim/bundle/${p#*/} --depth 1
done
