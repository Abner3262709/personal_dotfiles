" general configurations "
""""""""""""""""""""""""""
set nocompatible               " disable comp mode with vi

set runtimepath+=~/.vim/config " setting this
runtime basic.vim              " as the
runtime plugins.vim            " the primary
runtime bindings.vim           " file

set history=1000               " setting the history lenght

set encoding=utf-8             " setting the file codification

set noswapfile                 " disabling
set nobackup                   " swap files and
set nowritebackup              " backup files

set bufhidden=hide             " hidding obsolete buffers

"set lazyredraw                 " dont update the screen when using macros

set shortmess+=I               " disabling the welcome page

filetype on                    " applying custom
filetype plugin on             " plugins for
filetype plugin indent on      " each language

set viminfofile=~/.vim/viminfo


nnoremap <leader> r :source ~/.vim/vimrc <CR> " temporary 




" set expandtab
"set shiftwidth=4
"set tabstop=4
"set autoindent

set backspace=indent,eol,start " allow backspacing over everything in insert mode.


" visuals of the editor "
"""""""""""""""""""""""""

syntax on " enabling the syntax highlight


set textwidth=80

set nowrap

set ai
set si


set showmatch " highlighting the pairs s2
set matchpairs+=<:>


"set list

"set listchars=tab:\•\ 
"set listchars+=trail:•
"set fillchars=eob:\ 
"set fillchars+=vert:\ 


" vertical highlight
set cursorcolumn                     " vertical
highlight cursorcolumn ctermfg=8     " highlight

set number relativenumber            " display the
highlight linenr ctermfg=8           " line numbers

set showcmd
set cmdheight=1
set showtabline=1

" lock camera in the middle
set scrolloff=25


" custom commands "
"""""""""""""""""""
command	Ntp set buftype=nofile | set bufhidden=hide | setlocal noswapfile "notepad
