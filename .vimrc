" Start pathogen
filetype off
call pathogen#infect()
call pathogen#helptags()
filetype plugin indent on
syntax on

autocmd VimEnter,BufNewFile,BufReadPost * silent! call HardMode()

" see my ruby.vim file -- enable this for ruby syntax highlighting
" autocmd! BufNewFile,BufReadPre,FileReadPre *.rb so ~/.vim/ruby.vim

" ensures vim defaults are used, not vi
set nocompatible

" set the leader key to ','
let mapleader=","

" commands to edit vimrc quickly
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>

" ensures out-of-focus buffers are kept open and not lost
set hidden

" affects status at bottom
set modelines=0

" ensures a single line of text/code stops at column 79 (PEP8 standard)
" set textwidth=79

" tab == 4 spaces
" and any indentation is 4 spaces
set tabstop=4
set softtabstop=4
set expandtab
set shiftwidth=4

" don't back up files and don't create swap files
" instead, keep a global undo file
set nobackup
set noswapfile

" various settings to make visually pleasing
set encoding=utf-8

" start scrolling when cursor is on antepenultimate line
set scrolloff=3

set laststatus=2                                  " status line height is 2
"set statusline=                                   " Reset status.
"set statusline+=%<\                               " Cut at start.
"set statusline+=%2*[%n%H%M%R%W]%*\                " Flags and buffer number.
"set statusline+=%-40f\                            " Path.
"set statusline+=%=%1*%{fugitive#statusline()}%*\  " Git branch.
"set statusline+=%=%1*%y%*%*\                      " File type.
"set statusline+=%10((%l,%c)%)\                    " Line and column numbers.
"set statusline+=%P                                " Percentage of file.

" smoother changes
set ttyfast

" show whether in command/visual/insert mode at bottom
set showmode

" show info about current command in status bar
set showcmd

" turn off sounds
set visualbell

" show status line
set cursorline

" show current cursor position in status line
set ruler

" backspace goes back one tab (4 spaces)
set backspace=indent,eol,start

" after curly brace or colon, tab next line deeper
set autoindent

" command line completion in vim
set wildmenu
set wildmode=list:longest
set wildignore=*.swp,*.bak,*.pyc,*.o

" create global undofile
set undofile
set undodir=/Users/dougvk/undofiles

" various commands having to do with searching/matching text
nnoremap / /\v
vnoremap / /\v
set ignorecase
set smartcase
set gdefault
set incsearch
set showmatch
set hlsearch
nnoremap <leader><space> :noh<cr>
autocmd InsertEnter * :setlocal nohlsearch
autocmd InsertLeave * :setlocal hlsearch

" in command and visual modes, tab will cycle between curly braces
nnoremap <tab> %
vnoremap <tab> %

" not sure why this is here
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" ,t opens tab
nnoremap <leader>t :tabnew<CR>

" ,o and ,c opens/closes all folds
nnoremap <leader>o zR
nnoremap <leader>c zM

" map a bunch of leader keys to vim commands
" remove trailing whitespace
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>

" write file
nnoremap <leader>w :w<CR>

" use ack
nnoremap <leader>a :Ack

" open and write/quit
nnoremap <leader>e :copen<CR>
nnoremap <leader>wq :wq<CR>
nnoremap <leader>q :q<CR>

" git shortcuts
nnoremap <leader>gd :Gdiff<CR>
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gc :Gcommit
nnoremap <leader>gr :Gread

" easy window navigation
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" write to read-only file
cmap w!! %!sudo tee > /dev/null %

" trying to wean myself off of anti-pattern
"nnoremap jj <Esc>
inoremap kj <Esc>

" Skipping lines when wrap is set
nnoremap j gj
nnoremap k gk

" remap beginning and end of line to keys I don't use
map H ^
map L $
nnoremap <C-j> :bp<CR>
nnoremap <C-k> :bn<CR>

" NERDTree for file exploration
nnoremap <silent> <F12> :NERDTreeToggle<cr>
inoremap <silent> <F12> <ESC>:NERDTreeToggle<cr>
let NERDTreeIgnore=['.vim$', '\~$', '.*\.pyc$', 'pip-log\.txt$']

" this should write a file even if sudo access is required
"cmap w!! w !sudo tee % >/dev/null

" not sure what this does
"nnoremap <leader>s <C-w>v<C-w>l

colorscheme smyck

" pymode plugin settings
let g:pymode_utils_whitespaces = 0
let g:pymode_syntax_space_errors = 0
let g:session_autoload = 1
let g:pymode_lint_write = 1
let g:pymode_lint_checker = "pylint,pep8,mccabe"
let g:pymode_lint_ignore = "E501,E302,W291,W293,W391"

" Command-T plugin settings
" let g:CommandTMaxHeight = 15
" let g:CommandTMaxFiles = 100000
" set wildignore+=*.git,*.pyc
" nnoremap <leader>d :CommandTFlush<CR>
" nnoremap <leader>f :CommandT<CR>

" Ctrl-P plugin settings
:let g:ctrlp_map = '<Leader>f'
:let g:ctrlp_match_window_bottom = 0
:let g:ctrlp_match_window_reversed = 0
:let g:ctrlp_custom_ignore = '\v\~$|\.(o|swp|pyc|wav|mp3|ogg|blend)$|(^|[/\\]).(hg|git|bzr)($|[/\\])|__init__\.py'
:let g:ctrlp_working_path_mode = 'c'
:let g:ctrlp_dotfiles = 0
nnoremap <leader>b :CtrlPBuffer<CR>

" relative line numbers for jumping around
" use <NUMBER>G to jump to line numbers, instead
set rnu

" powerline settings
set rtp+=~/.vim/bundle/powerline/powerline/bindings/vim
