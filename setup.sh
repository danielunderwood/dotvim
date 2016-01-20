#!/bin/bash

# Copy .vimrc to home
if [ -e ~/.vimrc ];
then
	echo "$HOME/.vimrc exists. Moving to $HOME.vimrc.old"
	mv ~/.vimrc ~/.vimrc.old
fi

echo "Copying .vimrc to $HOME"
cp .vimrc ~

# Clone vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Vundle setup
vim +PluginInstall +qall

# Compile YCM
python ~/.vim/bundle/YouCompleteMe/install.py \
	--clang-completer --racer-completer
