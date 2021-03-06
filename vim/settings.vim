scriptencoding utf-8
set encoding=utf8
set nocompatible              " be iMproved, required
if has('nvim') " NEOVIM - Use VimPlug
  if has('win32') || has('win64')
    let g:python3_host_prog='C:/Python36/python.exe'
    let g:python_host_prog='C:/Python27/python.exe'
    let g:ruby_host_prog = 'ruby C:/Ruby24/lib/ruby/gems/2.4.0/gems/neovim-0.7.1/bin/neovim-ruby-host'
  endif

  call plug#begin('~/dot-files/vim/plugged')
  " list of plugins
  Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
  Plug 'zchee/deoplete-clang'
  Plug 'jansenm/vim-cmake'
  Plug 'richq/vim-cmake-completion'
  Plug 'mhartington/oceanic-next' "Color Scheme
  Plug 'vim-airline/vim-airline'
  Plug 'ryanoasis/vim-devicons'
  Plug 'scrooloose/nerdtree'
  Plug 'tpope/vim-fugitive'
  Plug 'shougo/denite.nvim'
  Plug 'chemzqm/denite-extra'
  Plug 'herringtondarkholme/yats.vim'
  Plug 'othree/html5.vim'
  Plug 'fszymanski/deoplete-emoji'
  Plug 'OmniSharp/omnisharp-vim'
  " Installs vim-dispatch (required to launch OmniSharp server)
  Plug 'tpope/vim-dispatch'
  " Installs this source
  " Plug 'neoclide/coc.nvim', {'do': { -> coc#util#install()}}
  Plug 'tpope/vim-projectionist'
  Plug 'sirver/ultisnips'
  Plug 'shougo/vimproc.vim'
  Plug 'herringtondarkholme/yats.vim'
  Plug 'mhartington/nvim-typescript'
  Plug 'tomasiser/vim-code-dark'
  Plug 'Shougo/neomru.vim'
  Plug 'oranget/vim-csharp'
  Plug 'neoclide/denite-git'
  Plug 'rafi/awesome-vim-colorschemes'
  Plug 'w0rp/ale'
  Plug 'mattn/emmet-vim'
  Plug 'skywind3000/asyncrun.vim'
  Plug 'majutsushi/tagbar'
  Plug 'chriskempson/base16-vim'
  Plug 'mxw/vim-jsx'
  Plug 'pangloss/vim-javascript'
  Plug 'vim-scripts/grep.vim'
  Plug 'tpope/vim-commentary'
  Plug 'posva/vim-vue'
  Plug 'https://gitlab.com/Lenovsky/nuake.git'
  call plug#end()
  if (has("termguicolors"))
    set termguicolors
  endif

else " VIM - Use Vundle
  set pythonthreehome=C:\Python37
  set pythonthreedll=C:\Python37\Python37.dll
  filetype off                  " required

  " set the runtime path to include Vundle and initialize

  set rtp+=$HOME/dot-files/vim/vundle/Vundle.vim/
  call vundle#begin('$HOME/.vim/vundle/')

  " let Vundle manage Vundle, required
  Plugin 'VundleVim/Vundle.vim'
  " All of your Plugins must be added before the following line
  Plugin 'shougo/vimproc.vim'
  Plugin 'leafgarland/typescript-vim'
  Plugin 'scrooloose/syntastic'
  Plugin 'quramy/vim-js-pretty-template'
  Plugin 'scrooloose/nerdtree'
  Plugin 'alvan/vim-closetag'
  Plugin 'ctrlpvim/ctrlp.vim'
  Plugin 'vim-airline/vim-airline'
  Plugin 'vim-airline/vim-airline-themes'
  Plugin 'enricobacis/vim-airline-clock'
  Plugin 'tpope/vim-dispatch'
  Plugin 'omnisharp/omnisharp-vim'
  Plugin 'othree/html5.vim'
  Plugin 'ryanoasis/vim-devicons'
  Plugin 'editorconfig/editorconfig-vim'
  Plugin 'SQLComplete.vim'
  Plugin 'mattn/emmet-vim'
  Plugin 'tpope/vim-fugitive'
  Plugin 'michalliu/jsruntime.vim'
  Plugin 'michalliu/sourcebeautify.vim'
  Plugin 'reewr/vim-monokai-phoenix'
  Plugin 'oranget/vim-csharp'
  Plugin 'joonty/vim-do'
  Plugin 'sirver/ultisnips'
  Plugin 'joonty/vdebug'
  Plugin 'dbext.vim'
  Plugin 'chriskempson/base16-vim'
  Plugin 'tomasiser/vim-code-dark'
  Plugin 'tpope/vim-projectionist'
  Plugin 'matze/vim-move'
  Plugin 'skywind3000/asyncrun.vim'
  Plugin 'ajh17/vimcompletesme'
  Plugin 'darthmall/vim-vue'
  call vundle#end()            " required
endif

let configBasePath = fnamemodify(expand("$HOME") . '/dot-files/vim/configs', ":p") . '/'

execute "source " . configBasePath . "001-core.vim"
execute "source " . configBasePath . "002-ui.vim"
execute "source " . configBasePath . "003-utils.vim"
execute "source " . configBasePath . "004-status-line.vim"
execute "source " . configBasePath . "005-autocomplete.vim"
execute "source " . configBasePath . "006-nerdtree.vim"
execute "source " . configBasePath . "007-fuzzy-finder.vim"
execute "source " . configBasePath . "008-typescript.vim"
execute "source " . configBasePath . "009-csharp.vim"
execute "source " . configBasePath . "010-dev-icons.vim"
execute "source " . configBasePath . "011-database.vim"
execute "source " . configBasePath . "012-projectionist.vim"
execute "source " . configBasePath . "013-emmet.vim"
execute "source " . configBasePath . "996-linter.vim"
execute "source " . configBasePath . "998-auto-commands.vim"
execute "source " . configBasePath . "999-mappings.vim"
execute "source " . configBasePath . "999-colors.vim"

