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
Plugin 'ervandew/supertab'
call vundle#end()            " required
""""""""""""""""""VUNDLE END"""""""""""""""""""""""""""
filetype plugin indent on    " required
syntax on

if has('win32')
    set guifont=Lucida_Console:h11
endif

"toggle between insert and nomal mode with Ctrl+space
nnoremap <C-space> i
imap <C-space> <Esc>

"spacing and tab
set backspace=2
set tabstop=4 	    "tabspace
set shiftwidth=4    "when > used to tab it use 4 width of space
set autoindent      "autoindent when enter new blok
set expandtab 	    "this will change 1 tab = 4 space

set belloff=all     "no beeping
set number  " enable line numbering   

"set background=dark
colorscheme afterglow 
set showcmd "this will show command in line

" Make vim use the system clipboard:
set clipboard^=unnamed,unnamedplus

" verticle line for danger zone
set colorcolumn=80 
highlight ColorColumn ctermbg=red guibg=red

"following line will disable Syntaxt check
"gvim load both vimrc and gvimrc so toggle 2 times :(
"autocmd VimEnter * SyntasticToggleMode 

" This will wrap line over when pressing left or right 
" <> for insert mode [] for normal mod and h,l for h l keys
set whichwrap+=<,>,h,l,[,]

"++++++++++++++++++++++mapping only area+++++++++++++++"
imap <C-j> <Up>
imap <C-h> <Left>
imap <C-k> <Down>
imap <C-l> <Right>

" ctrl+shift+p to run current python file
map <C-S-p> :w<CR> :!python %<CR>
if has('win32')
    map <C-b> :silent !cmd.exe<CR>
else
    map <C-b> :silent !gnome-terminal<CR>
endif
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
