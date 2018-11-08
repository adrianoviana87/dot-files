" Usability
set nocompatible
set encoding=utf-8
set history=1000
set backspace=indent,eol,start
set showcmd
set showmode
set autoread
set hidden




" UI
set number
set relativenumber
set wildmenu
set background=dark
set title
color desert
set cursorline
" Always show cursor position
set ruler
set noerrorbells
set visualbell
set mouse=a


" Status line
set laststatus=2
" Tail of the filename
set statusline=%t
" File format
set statusline+=%{&ff}
" Help file flag
set statusline+=%h
" Modified flag
set statusline+=%m
" Read only flag
set statusline+=%r
" File type
set statusline+=%y
" Cursor column
set statusline+=%c,
" Cursor line/total lines
set statusline+=%l/%L
" Percent through file
set statusline+=\ %P




" Insert mode
inoremap <c-J> <esc>




" Spell checking
set spell
set spelllang=en
" set spelllang=en,pt




" File explorer
nnoremap <c-n> :Lexplore<cr>
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_winsize = 30




" Backup
set directory=$HOME/.vim/swp//
set backupdir==~/.vim/.backup//
set nowb
set undodir=~/.vim/undodir
set undofile




" Indentation
set autoindent
filetype plugin indent on
filetype indent on
set tabstop=2
set shiftwidth=2
set expandtab
set nowrap




" Search
set incsearch
set hlsearch
set ignorecase
set smartcase




" Text rendering
set linebreak
" The number of screen lines to keep above and below the cursor
set scrolloff=3
" The number of screen columns to keep to the left and right of the cursor
set sidescrolloff=5
syntax enable




" Misc

" Display a confirmation dialog when closing an unsaved file
set confirm

