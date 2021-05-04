syntax on

set showmatch
set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set relativenumber
set incsearch

filetype plugin on

"
" Give more space for displaying messages.
set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=50

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c


call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'andrewstuart/vim-kubernetes'
Plug 'ekalinin/dockerfile.vim'
Plug 'hashivim/vim-terraform'
Plug 'stephpy/vim-yaml'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }

call plug#end()

colorscheme peachpuff

if executable('rg')
    let g:rg_derive_root='true'
endif

" REMAPS
" 
" Set map leader to space
let mapleader = " "
nnoremap <leader>w :w<cr>
nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>j 20j
nnoremap <leader>k 20k
nnoremap <leader>q :q!<cr>
nnoremap <leader>ww <C-w>w
nnoremap <leader>gl :GoLint<cr> :GoErrCheck<cr> :GoVet<cr>
nnoremap <leader>gc :Gcommit
nnoremap o o<Esc>
nnoremap O O<Esc>
nnoremap <leader>gp :Gpush
nnoremap d "_d
vnoremap d "_d

let g:netrw_browse_split = 2
let g:netrw_banner = 0
let g:netrw_winsize = 25

