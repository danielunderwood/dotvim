set nocompatible              " be iMproved, required
filetype off                  " required

set shell=/bin/bash
set number
syntax on
set colorcolumn=80
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'xolox/vim-misc'
Plugin 'xolox/vim-easytags'
Plugin 'Valloric/YouCompleteMe'
Plugin 'scrooloose/syntastic'
Plugin 'kien/ctrlp.vim'
Plugin 'whatyouhide/vim-gotham'
Plugin 'lervag/vimtex'
Plugin 'airblade/vim-gitgutter'
Plugin 'tpope/vim-fugitive'
Plugin 'LaTeX-Box-Team/LaTeX-Box'
Plugin 'jalcine/cmake.vim'
Plugin 'bling/vim-airline'
Plugin 'tpope/vim-sleuth'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Tab Navigation
map <C-up> :tabr<cr>
map <C-down> :tabl<cr>
map <C-left> :tabp<cr>
map <C-right> :tabn<cr>
imap <F4> <C-o>:update<CR><C-o>\ll

" Save
map <C-s> :w

if $COLORTERM == 'gnome-terminal'
  set t_Co=256
endif

" Airline always show
set laststatus=2

colorscheme default

" YCM Settings
let g:ycm_complete_in_comments = 1
let g:ycm_collect_identifiers_from_comments_and_strings = 1
let g:ycm_collect_identifiers_from_tags_files = 1
let g:ycm_seed_identifiers_with_syntax = 1
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
