" ****** Important ******
set nocompatible




" ****** multi-byte characters ******
set encoding=utf-8




" ****** command line editing ******
set history=1000
set wildmenu
set wildignorecase
set wildignore+=node_modues/**




" ****** editing text ******
set backspace=indent,eol,start
set undodir=~/vimundo
set undofile




" ****** messages and info ******
set showcmd
set shortmess+=I
set showmode
set ruler " Always show cursor position
set noerrorbells
set visualbell
set confirm " Display a confirmation dialog when closing an unsaved file




" ****** reading and writing files ******
set autoread
set nowb
set backupdir==~/vimbackup//




" ****** multiple windows ******
set hidden
set equalalways	" make all windows the same size when adding/removing windows
set laststatus=2



" ****** displaying text ******
set number
set relativenumber
set nowrap
set linebreak
set scrolloff=3 " The number of screen lines to keep above and below the cursor
set sidescrolloff=5 " The number of screen columns to keep to the left and right of the cursor




" ****** syntax, highlighting and spelling ******
syntax enable
set nospell
set spelllang=en
set background=dark
set cursorline
filetype plugin indent on
filetype indent on
color desert
set hlsearch




" ****** terminal ******
set title




" ****** using the mouse ******
set mouse=a




" ****** gui ******
set guifont=Consolas\ NF:h12




" ****** Insert mode ******
inoremap <c-J> <esc>




" ****** Normal mode *********
nnoremap ; :

" go to previous next error
nnoremap <down> :cnext<cr>

" go to previous error
nnoremap <up> :cprev<cr>

" go to first error
nnoremap <left> :cfirst<cr>

" go to last error
nnoremap <right> :clast<cr>




" ****** Terminal mode *******
tnoremap <c-j> <c-\><c-n>




" ****** File explorer ******
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_winsize = 30
let g:netrw_banner = 0
nnoremap <c-n> :Lexplore<cr>




" ****** the swap file ******
set directory=$HOME/vimswp//





" ****** tabs and indenting ******
set autoindent
set tabstop=2
set shiftwidth=2
set expandtab




" ****** moving around, searching and patterns ******
set incsearch " show match for partly typed search command
set magic	" change the way backslashes are used in search patterns  
set ignorecase
set smartcase
set path+=**




" ****** Plugins ******
call plug#begin('~/dot-files/vim-pure/plugged')

Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'w0rp/ale'
Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}

call plug#end()




" ****** ALE ******
let g:ale_linters = {
\ 'typescript': ['eslint'],
\ 'javascript': ['eslint']
\}




" ****** status line ******
set laststatus=2
set statusline=
set statusline+=%9*
set statusline+=%6*
set statusline+=\ 
set statusline+=%{StatuslineMode()}
set statusline+=\ 
set statusline+=%5*
set statusline+=
set statusline+=%6*
set statusline+=
set statusline+=\ 
set statusline+=%t
set statusline+=\ 
set statusline+=%5*
set statusline+=
set statusline+=%6*
set statusline+=
set statusline+=\ 
set statusline+=%{MyStatusReadOnly()}
set statusline+=\ 
set statusline+=%5*
set statusline+=
set statusline+=%6*
set statusline+=
set statusline+=\ 
set statusline+=%{MyStatusModified()}
set statusline+=\ 
set statusline+=%5*
set statusline+=
set statusline+=%6*
set statusline+=
set statusline+=%y
set statusline+=%5*
set statusline+=
set statusline+=%=
set statusline+=
set statusline+=%5*
set statusline+=%6*
set statusline+=\ 
set statusline+=
set statusline+=%l
set statusline+=/
set statusline+=%L
set statusline+=\ 
set statusline+=
set statusline+=%5*
set statusline+=
set statusline+=%6*
set statusline+=\ 
set statusline+=%P
set statusline+=\ 
set statusline+=
set statusline+=%5*
set statusline+=
set statusline+=%6*
set statusline+=\ 
set statusline+=%{MyStatusLinter()}
set statusline+=\ 
hi User9 ctermbg=black ctermfg=white guibg=black guifg=white
hi User6 ctermbg=white ctermfg=black guibg=white guifg=black
hi User5 ctermbg=black ctermfg=white guibg=black guifg=white

function! MyStatusLinter() abort
    let l:counts = ale#statusline#Count(bufnr(''))

    let l:all_errors = l:counts.error + l:counts.style_error
    let l:all_non_errors = l:counts.total - l:all_errors

    return l:counts.total == 0 ? '' : printf(
    \   ' %d  %d',
    \   all_non_errors,
    \   all_errors
    \)
endfunction

function! MyStatusReadOnly() abort
  if &readonly || !&modifiable
    return ''
  else
    return ''
endfunction

function! MyStatusModified() abort
  if &modified
    return ''
  else
    return ''
endfunction

function! StatuslineMode()
  let l:mode=mode()
  if l:mode==#"n"
    " normal
    return ""
  elseif l:mode==?"v"
    " visual
    return ""
  elseif l:mode==#"i"
    " insert
    return ""
  elseif l:mode==#"R"
    " replace
    return ""
  elseif l:mode==?"s"
    " select
    return ""
  elseif l:mode==#"t"
    " terminal
    return ""
  elseif l:mode==#"c"
    " command
    return ""
  elseif l:mode==#"!"
    " shell
    return ""
  endif
endfunction




" ******* vuejs ******
augroup VueJsFiletypeGroup
    autocmd!
    au BufNewFile,BufRead *.vue set filetype=vue
augroup END
