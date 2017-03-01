set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'bling/vim-airline'
Plugin 'scrooloose/nerdtree'
Plugin 'jiangmiao/auto-pairs'
Plugin 'scrooloose/syntastic'
Plugin 'pangloss/vim-javascript'
Plugin 'kchmck/vim-coffee-script'
Plugin 'mxw/vim-jsx'

Plugin 'jacoborus/tender.vim'

call vundle#end()
filetype plugin indent on

syntax enable
let t_Co=256

set background=dark
colorscheme tender

" set airline theme
let g:airline_theme = 'tender'

" Allow powerline symbols to show up
let g:airline_powerline_fonts=1
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'

let g:airline_symbols = {}
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

let g:airline#extensions#default#section_truncate_width = {}
let g:airline#extensions#default#layout = [
  \ [ 'a', 'b', 'c'  ],
  \ [ 'z', 'error', 'warning'  ]
  \ ]

" configure syntastic syntax checking to check on open as well as save
let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute \"ng-"]
let g:syntastic_mode_map = { 'mode': 'active', 'active_filetypes': ['javascript'], 'passive_filetypes': [] }

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" Syntastic will search for an .eslintrc in your project, otherwise it defaults
autocmd FileType javascript let b:syntastic_checkers = findfile('.eslintrc', '.;') != '' ? ['eslint'] : ['standard']

" these 2 lines check to see if eslint is installed via local npm and runs that before going global
let s:eslint_path = system('PATH=$(npm bin):$PATH && which eslint')
let b:syntastic_javascript_eslint_exec = substitute(s:eslint_path, '^\n*\s*\(.\{-}\)\n*\s*$', '\1', '')

" Allow highlighting of HTML within Javascript (for React)
let g:javascript_enable_domhtmlcss = 1
let g:jsx_ext_required = 0

" Leader - ( Spacebar )
let mapleader = " "

set backspace=2    " Backspace deletes like most programs in insert mode
set nobackup
set nowritebackup
set noswapfile
set history=10

" indentation
set autoindent
set smartindent
set backspace=eol,start,indent

set ruler          " show the cursor position all the time
set nocursorline
set showcmd        " display incomplete command
set laststatus=2   " Always display the status line
set autowrite      " Automatically :write before running commands
set autoread       " Reload files changed outside vim

" Trigger autoread when changing buffers or coming back to vim in terminal
au FocusGained,BufEnter * :silent! !

set novisualbell     " stop beeping
set noerrorbells

set wildmenu
set wildmode=list:longest,full

" Make searching better
set gdefault       " never have to type /g at the end of search / replace again
set ignorecase     " case insensitive searching (unless specified)
set smartcase
set hlsearch
nnoremap <silent> <leader>, :noh<cr> " Stop highlight after searching
set incsearch
set showmatch

" Softtabs, 2 spaces
set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2

" characters display
set list
set listchars=tab:»·,trail:·,nbsp:·
set modelines=5
set nowrap
set encoding=utf-8

" Numbers
set number
set numberwidth=4

" Open new split panes to right and bottom
set splitbelow
set splitright

" HTML Editing
set matchpairs+=<:>

" Treat <li> and <p> tags like block tags
let g:html_indent_tags = 'li\|p'

" scrolling
set scrolloff=8
set sidescrolloff=15
set sidescroll=1

" window movement
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l

" Disable arrow keys
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>

" buffer movement
noremap <tab> :bn<CR>
noremap <S-tab> :bp<CR>
set hidden

" Deactivate recording
map q <nop>

" System clipboard copy & paste
set pastetoggle=<F2>  " To preserve indentation

" remove trailing spaces on ruby and javascript files
autocmd BufWritePre *.js %s/\s\+$//e
autocmd BufWritePre *.rb %s/\s\+$//e
