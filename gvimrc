set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
"""""""""""""""""""" VUNDLE AREA"""""""""""""""""""""""
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-fugitive'
Plugin 'bling/vim-airline'

call vundle#end()            " required
""""""""""""""""""VUNDLE END"""""""""""""""""""""""""""
filetype plugin indent on    " required
set backspace=2
set noundofile
set nobackup

"spacing and tab
set tabstop=4 	    "tabspace
set shiftwidth=4    "when > used to tab it use 4 width of space
set autoindent      "autoindent when enter new blok
set expandtab 	    "this will change 1 tab = 4 space

set belloff=all     "no beeping
set number  " enable line numbering   

set background=dark
syntax on
colorscheme afterglow

"maximize start gvim works well for linux
if has("gui_running")
  " GUI is running or is about to start.
  " Maximize gvim window (for an alternative on Windows, see simalt below).
  set lines=999 columns=999
else
  " This is console Vim.
  if exists("+lines")
    set lines=50
  endif
  if exists("+columns")
    set columns=100
  endif
endif

