#!/bin/bash

# Clone vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Vundle setup
vim +PluginInstall +qall

# Compile YCM
python ~/.vim/bundle/YouCompleteMe/install.py \
	--clang-completer --racer-completer
