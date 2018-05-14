
set nocompatible              " be iMproved, required
filetype off                  " required
set noundofile
set nobackup
set nowritebackup
set noswapfile
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
Plugin 'danilo-augusto/vim-afterglow'
Plugin 'jceb/vim-orgmode'
call vundle#end()            " required
""""""""""""""""""VUNDLE END"""""""""""""""""""""""""""

filetype plugin indent on    " required
syntax on
set backspace=2

set belloff=all     "no beeping
set number  " enable line numbering   

set background=dark

colorscheme afterglow "no
set showcmd "this will show command in line

" Make vim use the system clipboard:
set clipboard^=unnamed,unnamedplus

set colorcolumn=80 " verticle line for danger zone
highlight ColorColumn ctermbg=red guibg=red

"++++++++++++++++++++++mapping only area+++++++++++++++"
imap <C-j> <Up>
imap <C-h> <Left>
imap <C-k> <Down>
imap <C-l> <Right>

" ctrl+shift+p to run current python file
map <C-S-p> :!python %<CR>
map <C-b> :!bash<CR>
" normal copy/paste
vmap <C-c> y<Esc>i
vmap <C-x> d<Esc>i
imap <C-v> <Esc>pi
imap <C-y> <Esc>ddi
map <C-z> <Esc>
imap <C-z> <Esc>ui
" Select all text
nmap <C-a> ggVG

"++++++++++++++++++++++ends++++++++++++++++++++++++++++"


"++++++++++++++++++++folding++++++++++++++++++++++++++++
"this will save and load fold when closing
"augroup AutoSaveFolds
"  autocmd BufWinLeave * mkview
"  autocmd BufWinEnter * silent loadview
"augroup END

"setlocal foldmethod=expr
"setlocal foldexpr=(getline(v:lnum)=~'^$')?-1:((indent(v:lnum)<indent(v:lnum+1))?('>'.indent(v:lnum+1)):indent(v:lnum))
"set foldtext=getline(v:foldstart)
"set fillchars=fold:\ "(there's a space after that \)
"highlight Folded ctermfg=DarkGreen ctermbg=Black

"+++++++++++++++++++end-folding+++++++++++++++++++++++++


"maximize start gvim works well for linux
if has('win32')
    au GUIEnter * simalt ~x
else
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
endif
