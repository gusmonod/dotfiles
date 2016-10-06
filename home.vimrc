set nocompatible
"
"" Vundle config
"" -------------
"filetype off " required
"
"" set the runtime path to include Vundle and initialize
"set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin()
"
"" let Vundle manage Vundle, required
"Plugin 'gmarik/Vundle.vim'
"
"" +---------+
"" | Plugins |
"" +---------+
"
"" multiple cursors in vim ;-)
"Plugin 'terryma/vim-multiple-cursors'
""Plugin 'kristijanhusak/vim-multiple-cursors/'
"
"" markdown plugin + dependencies
"Plugin 'godlygeek/tabular'
"Plugin 'plasticboy/vim-markdown'
"
"call vundle#end() " required
"" -------------
" End of Vundle

" Tab set to 2 spaces
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent

" Do not fold (hide) by default
set nofoldenable

" Show line numbers
set number

" Show ruler
set ruler

" Syntax coloring
syntax on

" Search with smartcase
set ignorecase smartcase " Both must be on

filetype plugin indent on " must be last line

