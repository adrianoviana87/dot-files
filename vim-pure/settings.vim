" ****** Usability ******
set nocompatible
set encoding=utf-8
set history=1000
set backspace=indent,eol,start
set showcmd
set showmode
set autoread
set hidden




" ****** UI ******
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
set shortmess+=I


" Status line
set laststatus=2




" ****** Insert mode ******
inoremap <c-J> <esc>




" ****** Spell checking ******
set spell
set spelllang=en
" set spelllang=en,pt




" ****** File explorer ******
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_winsize = 30
let g:netrw_banner = 0




" ****** Backup ******
set directory=$HOME/.vim/swp//
set backupdir==~/.vim/.backup//
set nowb
set undodir=~/.vim/undodir
set undofile




" ****** Indentation ******
set autoindent
filetype plugin indent on
filetype indent on
set tabstop=2
set shiftwidth=2
set expandtab
set nowrap




" ****** Search ******
set incsearch
set hlsearch
set ignorecase
set smartcase




" ****** Text rendering ******
set linebreak
" The number of screen lines to keep above and below the cursor
set scrolloff=3
" The number of screen columns to keep to the left and right of the cursor
set sidescrolloff=5
syntax enable




" ****** Misc ******

" Display a confirmation dialog when closing an unsaved file
set confirm


" ****** Plugins ******
call plug#begin('~/dot-files/vim-pure/plugged')

Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-surround'
Plug 'junegunn/fzf', { 'dir': '~/git-repos/fzf', 'do': './install --all' }
Plug 'vim-airline/vim-airline'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-commentary'
Plug 'w0rp/ale'
Plug 'editorconfig/editorconfig-vim'
Plug 'Shougo/deoplete.nvim'
Plug 'roxma/nvim-yarp'
Plug 'roxma/vim-hug-neovim-rpc'
Plug 'jiangmiao/auto-pairs'

call plug#end()




" ****** NERDTree ******
nnoremap <c-n> :NERDTreeToggle<cr>
let NERDTreeMinimalUI=1




" ****** FZF (fuzzy finder) ******
nnoremap <c-p> :FZF<cr>




" ****** Airline (Statusline) *****
let g:airline_powerline_fonts = 1




" ****** Deoplete (autocomplete) *****
let g:deoplete#enable_at_startup = 1
