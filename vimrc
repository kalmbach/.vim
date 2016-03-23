set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'kchmck/vim-coffee-script'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'scrooloose/syntastic'
Plugin 'wfleming/vim-codeclimate'

call vundle#end()
filetype plugin indent on

syntax enable
set t_Co=256

set background=dark
let g:solarized_termcolors=256
colorscheme tropikos

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

set laststatus=2

let g:syntastic_check_on_open = 1

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.notexists = '∄'
let g:airline_symbols.whitespace = 'Ξ'

let g:airline_theme='dark'
let g:airline#extensions#default#section_truncate_width = {}
let g:airline#extensions#default#layout = [
      \ [ 'a', 'b', 'c' ],
      \ [ 'z', 'error', 'warning' ]
      \ ]

let mapleader=","

" Clear the search highlight
nnoremap <leader><space> :noh<cr>

" Move between splits
nnoremap <C-h> <C-W>h
nnoremap <C-j> <C-W>j
nnoremap <C-k> <C-W>k
nnoremap <C-l> <C-W>l

" Open new split panes to right and bottom
set splitbelow
set splitright

" Disable arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>

" Switch between buffers
noremap <tab> :bn<CR>
noremap <S-tab> :bp<CR>
set hidden

" Deactivate Ex-mode
map Q <nop>

" Deactivate recording
map q <nop>

" Deactivate keyword lookup
map K <nop>

" CodeClimate analyze
nnoremap <leader>af :CodeClimateAnalyzeCurrentFile<cr>

highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%101v.\+/
