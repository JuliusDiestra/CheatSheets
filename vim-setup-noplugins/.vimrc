" Syntax highlights
syntax on
" CHECK for this
set nocompatible
" Provides tab-completition for all file-related tasks
set path+=**
" Enables a menu at the bottom of the vim window
set wildmenu
" No sound
set noerrorbells
" Tabs settings
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
" Show complete line, do not split a long line. 
set nowrap
" Show line numbers
set number
" Set relative number. Note: This is not for me :(
" set relativenumber

" Searching without problems without casesensitive
set ignorecase
set smartcase
" Do not keep history
set nobackup
set noswapfile
" Save undo after file closese in .vim/undodir
set undodir=~/.vim/undodir
set undofile
" Enable incremental search: Use / and the highlights will move as you increase words
set incsearch
" More space to display messages
set cmdheight=2

set backspace=indent,eol,start

" Set autocomplete tabnine
set rtp+=~/.vim/tabnine-vim

" YAML file configuration : auto-identation
augroup yaml_fix
    autocmd!
    autocmd FileType yaml,yml setlocal ts=2 sts=2 sw=2 expandtab indentkeys-=0# indentkeys-=<:>
augroup END
