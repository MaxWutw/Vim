" Basic
set nu
set clipboard=unnamed
set cursorline
set showtabline=2
set splitbelow
set ruler
set nowrap
set showcmd
set scrolloff=3

" Indent
set autoindent
set smartindent
set cindent
set shiftwidth=4
set tabstop=4
set noexpandtab


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

" auto pairs
" inoremap { {}<Left>
" inoremap [ []<Left>
" inoremap ( ()<Left>



" plugins
call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'
Plug 'jiangmiao/auto-pairs'
call plug#end()
