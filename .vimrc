" Basic
set tabstop=4
set nu
set clipboard=unnamed
set cursorline
set showtabline=2
set splitbelow

set ruler
set nowrap
set showcmd
set scrolloff=3

" Theme
colorscheme habamax

" Search
set hlsearch
set ignorecase
set incsearch
set smartcase

" Code
syntax on
filetype on
filetype indent on
filetype plugin on 

" Color
"
"


" plugins
call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'
call plug#end()
