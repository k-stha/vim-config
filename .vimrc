if has("win32")
  set runtimepath^=~\AppData\Local\nvim runtimepath+=~\AppData\Local\nvim\after
else
  set runtimepath^=~/.config/nvim runtimepath+=~/.config/nvim/after
endif

let &packpath = &runtimepath

if has('win32')
  source $HOME\AppData\Local\nvim\init.vim
else
  source $HOME/.config/nvim/init.vim
endif

syntax on
set nocompatible
set encoding=utf-8
filetype plugin indent on
set background=dark
set backspace=indent,eol,start
set autoindent smarttab
set hlsearch incsearch
set wildmenu
set ruler laststatus=2
set shortmess-=S
