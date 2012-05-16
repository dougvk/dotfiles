filetype off
call pathogen#infect()
call pathogen#helptags()
filetype plugin indent on
syntax on

autocmd! BufNewFile,BufReadPre,FileReadPre *.rb so ~/.vim/ruby.vim

set nocompatible

let mapleader=","

nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

set hidden

set modelines=0
set textwidth=80

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
set undodir=/Users/dougvk/undofiles

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

nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>a :Ack
nnoremap <leader>e :copen<CR>
nnoremap <leader>wq :wq<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>gd :Gdiff<CR>
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gc :Gcommit
nnoremap <leader>gr :Gread

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <silent> <F12> :NERDTreeToggle<cr>
inoremap <silent> <F12> <ESC>:NERDTreeToggle<cr>
nnoremap <silent> <F3> :YRShow<cr>
inoremap <silent> <F3> <ESC>:YRShow<cr>
let NERDTreeIgnore=['.vim$', '\~$', '.*\.pyc$', 'pip-log\.txt$']

cmap w!! w !sudo tee % >/dev/null

nnoremap <leader>s <C-w>v<C-w>l

if &t_Co > 256 || has('gui_running')
    colorscheme mustang
endif

set laststatus=2                                  " Always show status.
set statusline=                                   " Reset status.
set statusline+=%<\                               " Cut at start.
set statusline+=%2*[%n%H%M%R%W]%*\                " Flags and buffer number.
set statusline+=%-40f\                            " Path.
set statusline+=%=%1*%{fugitive#statusline()}%*\  " Git branch.
set statusline+=%=%1*%y%*%*\                      " File type.
set statusline+=%10((%l,%c)%)\                    " Line and column numbers.
set statusline+=%P                                " Percentage of file.

" pymode settings
let g:pymode_utils_whitespaces = 0
let g:pymode_syntax_space_errors = 0
let g:session_autoload = 1

" yankring settings
let g:yankring_history_dir = '/Users/dougvk/undofiles'

" mru settings
let MRU_Max_Entries = 50
map <leader>m :MRU<CR>
