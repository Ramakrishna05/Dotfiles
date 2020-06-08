filetype plugin indent on
syntax enable

set noerrorbells
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

" set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

call plug#begin('~/.vim/plugged')

Plug 'gruvbox-community/gruvbox'
Plug 'vim-utils/vim-man'
Plug 'ycm-core/YouCompleteMe', { 'do': './install.py' }
Plug 'junegunn/goyo.vim'

call plug#end()

colorscheme gruvbox

" Enable autocompletion:
set wildmode=longest,list,full
