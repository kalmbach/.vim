set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'pangloss/vim-javascript'
Bundle 'kchmck/vim-coffee-script'
Bundle 'scrooloose/nerdtree'

syntax enable
filetype plugin indent on

" set background=dark
" colorscheme solarized

set history=10
set autoindent
set smartindent
set autoread
set ruler
set backspace=eol,start,indent
set ignorecase
set incsearch
set smartcase
set hlsearch

set list
set listchars=trail:·
set modelines=5
set nowrap
set encoding=utf-8
set number
set numberwidth=4

set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2

set showmatch

set noerrorbells
set novisualbell

set nobackup
set nowb
set noswapfile
set noeol

set nocursorline

let mapleader=","

" Clear the search highlight
nnoremap <leader><space> :noh<cr>

" Move between splits
nnoremap <C-h> <C-W>h
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-l> <C-W>l

" Disable arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>

" Switch between buffers
noremap <tab> :bn<CR>
noremap <S-tab> :bp<CR>
set hidden
