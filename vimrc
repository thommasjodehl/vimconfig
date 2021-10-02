set nocompatible " be IMproved, required
filetype off     " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'mhinz/vim-grepper'
Plugin 'romainl/vim-qf'
Plugin 'ludovicchabant/vim-gutentags'

call vundle#end()         " required
filetype plugin indent on " required

set relativenumber
set number
set nowrap

syntax enable
set listchars=tab:»\ ,eol:¬
set list!

" CtrlP settings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_working_path_mode = 0

" Tab settings
set expandtab
set shiftwidth=3
set softtabstop=3

" Disable auto indent
filetype indent off

" In file search settings, if uppercase letters is used,
" the search is case sensitive.
set smartcase
set ignorecase " this is needed if smartcase is supposed to work

" Airline plugin settings
set laststatus=2

" Leader assignment
let mapleader = "\<Space>"

" vim-grepper settings
nnoremap <Leader>g :Grepper -tool ag<cr>
nmap gs <plug>(GrepperOperator)
xmap gs <plug>(GrepperOperator)

" vim-qf settings
"" Allows search results in the quickfix window to be opened in a new tab by t
let g:qf_mapping_ack_style = 1

" Gutentags settings
set statusline+=%{gutentags#statusline()}
"" Specifies that the root of the project is where a .gutctags file is found.
"" Make sure to put this at the root of every project!
let g:gutentags_project_root = ['.gutctags']
let g:gutentags_add_default_project_roots = 0