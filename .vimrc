" leader
let mapleader = ","

" using system clipboard
set clipboard+=unnamedplus

" remove trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e

" basic settings
filetype plugin indent on
syntax on

set noerrorbells
set nocompatible
set number
set relativenumber
set smartindent
set noswapfile
set nowrap
set tabstop=4
set shiftwidth=4
set expandtab
set encoding=utf-8
set incsearch
set cursorline
set cursorcolumn
set termguicolors

" set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.vim/plugged')

Plug 'gruvbox-community/gruvbox'
Plug 'vim-utils/vim-man'
" Plug 'ycm-core/YouCompleteMe', { 'do': './install.py' }
Plug 'junegunn/goyo.vim'

call plug#end()

colorscheme gruvbox
set background=dark

" Enable autocompletion:
set wildmode=longest,list,full

" playing with keymapping
" map - ddp
" map + ddkP
" v inside word Uppercase it change to next word put in insert(append) mode
inoremap <C-u> <esc>viwUwa
inoremap <C-j> <esc>ddpi
inoremap <C-k> <esc>ddkPi

" enable spell checking, <leader>s for spell check, enabling spell check locally
map <leader>s :setlocal spell! spelllang=en_us<CR>

" enable and disable auto indent
map <leader>i :setlocal autoindent<CR>
map <leader>I :setlocal noautoindent<CR>

" fixing the splits
set splitbelow splitright

" split screen shortcuts
nnoremap <leader>h :split<Space>
nnoremap <leader>v :vsplit<Space>

" split naviagion shortcuts
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" alias to write and quit and quit witout saving
nnoremap <leader>q :q<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>x :x<CR>

" alias to source ~/.vimrc
nnoremap <leader>sv :source ~/.vimrc<CR>
