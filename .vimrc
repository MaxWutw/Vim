" =============================================================================
" Basic Settings
" =============================================================================
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

" Search & Theme
set hlsearch
set ignorecase
set incsearch
set smartcase
colorscheme habamax

" Code Logic
syntax on
filetype on
filetype indent on
filetype plugin on 

" =============================================================================
" Ctags
" =============================================================================
set tags=./tags;,tags;

" =============================================================================
" Cscope
" =============================================================================
function! LoadCscope()
    let db = findfile("cscope.out", ".;")
    if (!empty(db))
        let db_path = fnamemodify(db, ':p')
        let db_dir = fnamemodify(db, ':p:h')
        
        set nocscopeverbose
        exe "cs add " . db_path . " " . db_dir
        set cscopeverbose
    endif
endfunction

au VimEnter * call LoadCscope()

" Cscope
nmap <C-\>s :cs find s <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>g :cs find g <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>c :cs find c <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>t :cs find t <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>e :cs find e <C-R>=expand("<cword>")<CR><CR>
nmap <C-\>f :cs find f <C-R>=expand("<cfile>")<CR><CR>
nmap <C-\>d :cs find d <C-R>=expand("<cword>")<CR><CR>

" =============================================================================
" Plugins
" =============================================================================
call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdtree'
Plug 'jiangmiao/auto-pairs'
call plug#end()
