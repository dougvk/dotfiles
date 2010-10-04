filetype off
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()
filetype plugin indent on

set nocompatible

syntax on

let mapleader=","

nmap <silent> <leader>ev :e $MYVIMRC<CR>

set hidden

set modelines=0

set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

set nobackup
set noswapfile

set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set showcmd
set hidden
set wildmenu
set wildmode=list:longest
set wildignore=*.swp,*.bak,*.pyc,*.o
set visualbell
set cursorline
set ttyfast
set ruler
set backspace=indent,eol,start
set laststatus=2
set relativenumber
set undofile

nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
nnoremap <tab> %
vnoremap <tab> %

inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

nnoremap <leader>t :tabnew<CR>

nnoremap ; :

nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>a :Ack
nnoremap <leader>m :make<CR>
nnoremap <leader>e :copen<CR>
nnoremap <leader>wq :wq<CR>

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

map <F12> :NERDTreeToggle<cr>
let NERDTreeIgnore=['.vim$', '\~$', '.*\.pyc$', 'pip-log\.txt$']

cmap w!! w !sudo tee % >/dev/null

nnoremap <leader>s <C-w>v<C-w>l

if &t_Co > 256 || has('gui_running')
    colorscheme mustang
endif

nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
