filetype off
call pathogen#helptags()
call pathogen#runtime_append_all_bundles()
filetype plugin indent on

autocmd! BufNewFile,BufReadPre,FileReadPre *.rb so ~/.vim/ruby.vim

set nocompatible

syntax on

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
set undodir=/home/dougvk/undofiles

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
nnoremap <leader>q :q<CR>
nnoremap <leader>gd :Gdiff<CR>
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gc :Gcommit
nnoremap <leader>gr :Gread
nnoremap <leader>R :RainbowParenthesesToggle<CR>

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

nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

set laststatus=2                                  " Always show status.
set statusline=                                   " Reset status.
set statusline+=%<\                               " Cut at start.
set statusline+=%2*[%n%H%M%R%W]%*\                " Flags and buffer number.
set statusline+=%-40f\                            " Path.
set statusline+=%=%1*%{fugitive#statusline()}%*\  " Git branch.
set statusline+=%=%1*%y%*%*\                      " File type.
set statusline+=%10((%l,%c)%)\                    " Line and column numbers.
set statusline+=%P                                " Percentage of file.

if has("autocmd")
    au FocusLost * :wa
    au BufEnter * lcd %:p:h
endif

map <C-J> :m +1<CR>                " Move line down.
map <C-K> :m -2<CR>                " Move line up.
