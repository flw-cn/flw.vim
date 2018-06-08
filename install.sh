#!/bin/sh

ln -s ~/.vim/bundle/flw.vim/vimrc ~/.vimrc || exit

# 安装 vim-plug
git clone https://github.com/junegunn/vim-plug.git ~/.vim/bundle/vim-plug
vim +PlugInstall +qall
