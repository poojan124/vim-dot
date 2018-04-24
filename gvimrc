set nocompatible              " be iMproved, required
filetype off                  " required
set noundofile
set nobackup
set nowritebackup

" set the runtime path to include Vundle and initialize
"""""""""""""""""""" VUNDLE AREA"""""""""""""""""""""""
if has('win32')
	set rtp+=$HOME/.vim/bundle/Vundle.vim/
	call vundle#begin('$HOME/.vim/bundle/')
else
	set rtp+=~/.vim/bundle/Vundle.vim
	call vundle#begin()
endif

Plugin 'VundleVim/Vundle.vim'
Plugin 'hdima/python-syntax'
Plugin 'scrooloose/syntastic'
Plugin 'tpope/vim-fugitive'
Plugin 'bling/vim-airline'
Plugin 'danilo-augusto/vim-afterglow'
Plugin 'jceb/vim-orgmode'
call vundle#end()            " required
""""""""""""""""""VUNDLE END"""""""""""""""""""""""""""

filetype plugin indent on    " required
syntax on
set backspace=2

"spacing and tab
set tabstop=4 	    "tabspace
set shiftwidth=4    "when > used to tab it use 4 width of space
set autoindent      "autoindent when enter new blok
set expandtab 	    "this will change 1 tab = 4 space

set belloff=all     "no beeping
set number  " enable line numbering   

set background=dark

colorscheme afterglow "no

set nobackup
set nowritebackup

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
