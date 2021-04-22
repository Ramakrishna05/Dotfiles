"Plug-ins
call plug#begin('~/.vim/plugged')
" Tools
    Plug 'junegunn/goyo.vim'
    Plug 'junegunn/fzf'
    Plug 'junegunn/fzf.vim'
    Plug 'vifm/vifm.vim'
    Plug 'junegunn/limelight.vim'
    " Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'ctrlpvim/ctrlp.vim'
    Plug 'vim-utils/vim-man'
    Plug 'scrooloose/nerdtree'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
" Syntax
    Plug 'tpope/vim-markdown'
    Plug 'ap/vim-css-color' "Displays a preview of colors with CSS
    " Plug 'vim-scripts/fountain.vim'
    " Plug 'Vimjas/vim-python-pep8-indent'
    Plug 'vim-scripts/indentpython.vim'
    Plug 'vim-syntastic/syntastic'
    " Plug 'nvie/vim-flake8'
    Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins'}
" Color-schemes
    Plug 'gruvbox-community/gruvbox'
    Plug 'dylanaraps/wal.vim' "My wallpaper dependant theme
call plug#end()

" colorscheme gruvbox
set background=dark
let g:airline_theme='violet'
let g:airline_powerline_fonts=1
hi Search guibg=Grey guifg=Cyan
hi cursorcolumn guibg=Grey
colorscheme wal
let g:limelight_conceal_ctermfg = 'gray'
let g:limelight_conceal_ctermfg = 240
let g:limelight_conceal_guifg = 'DarkGray'
let g:limelight_conceal_guifg = '#777777'

" let g:python_highlight_all=1
" let g:semshi

"General Settings
set encoding=UTF-8
filetype plugin indent on  "Enabling Plugin & Indent
syntax on  "Turning Syntax on
set autoread wildmode=longest,list,full
" set spell spelllang=en_us
set backspace=indent,eol,start confirm
set shiftwidth=4 autoindent smartindent tabstop=4 softtabstop=4 expandtab
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o
set hls is ic
set laststatus=2 cmdheight=1
au BufRead,BufNewFile *.fountain set filetype=fountain
set splitbelow splitright
set nobackup nowritebackup
set number relativenumber
set noerrorbells
" set nocompatible
set noswapfile
set nowrap
set cursorline cursorcolumn
set termguicolors

" using system clipboard
set clipboard+=unnamedplus

" remove trailing whitespace on save
autocmd BufWritePre * %s/\s\+$//e

" Leader
let mapleader=","

" playing with keymapping
" map - ddp
" map + ddkP
" v inside word Uppercase it change to next word put in insert(append) mode
inoremap <C-u> <esc>viwUwa
inoremap <C-j> <esc>ddpi
inoremap <C-k> <esc>ddkPi
inoremap jj <esc>

" spelling
map <leader>s :setlocal spell! spelllang=en_us<CR>

" enable and disable auto indent
map <leader>i :setlocal autoindent<CR>
map <leader>I :setlocal noautoindent<CR>

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
nnoremap <leader>sv :source ~/.config/nvim/init.vim<CR>

" cursor default
" set guicursor=
