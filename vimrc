set nocompatible
filetype off
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'AutoClose'
Bundle 'pangloss/vim-javascript'
Bundle 'kchmck/vim-coffee-script'
Bundle 'thoughtbot/vim-rspec'
Bundle 'tpope/vim-fugitive'
Bundle 'scrooloose/nerdtree'

syntax enable
filetype plugin indent on

set background=dark
colorscheme solarized

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
set tabstop=2
set encoding=utf-8
set number
set numberwidth=4

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

" RSpec.vim mappings
nnoremap <Leader>rt :call RunCurrentSpecFile()<CR>
nnoremap <Leader>rs :call RunNearestSpec()<CR>
nnoremap <Leader>rl :call RunLastSpec()<CR>
nnoremap <Leader>ra :call RunAllSpecs()<CR>

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

" Fugitive maps
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gc :Gcommit<CR>
nnoremap <leader>gb :Gblame<CR>
vnoremap <leader>gb :Gblame<CR>
