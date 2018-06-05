#!/bin/sh

ln -s ~/.vim/bundle/flw.vim/vimrc ~/.vimrc || exit

# 安装 Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall

# 安装 YouCompleteMe 后端程序，
# 这里编译可能会失败，失败时你可以重新编译，
# 建议只选用你需要的 completer 可以减少不必要的失败。
# 更多信息请参考 YouCompleteMe 社区
(cd ~/.vim/bundle/YouCompleteMe; ./install.py --all)
