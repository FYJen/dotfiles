set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim

"Vundle Vim setup
call vundle#begin()

" Plugin section
Plugin 'VundleVim/Vundle.vim'
Plugin 'altercation/vim-colors-solarized'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'myusuf3/numbers.vim'

call vundle#end()

filetype plugin indent on

" Enable syntax highlighting
syntax enable

" Show line numbers
set number

" Override : with ;
nnoremap ; :

" Disable arrow keys
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Vim split mapping
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Set split direction
set splitright

" Show a visual line under the cursor's current line
set cursorline

set background=dark

" solarized options 
colorscheme solarized

"""""""""""""
" Powerline "
"""""""""""""
set laststatus=2
set ttimeoutlen=50
let g:airline_theme = 'powerlineish'
let g:airline#extensions#hunks#enabled=1
let g:airline#extensions#branch#enabled=1
"truncate long branch names to a fixed length
let g:airline#extensions#branch#displayed_head_limit = 10
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
    let g:airline_symbols.space = "\ua0"

"""""""""""""""""""""""""
" Python specific setup "
"""""""""""""""""""""""""

" Set tabs to have 4 spaces
set ts=4

" Indent when moving to the next line while writing code
set autoindent

" Expand tabs into spaces
set expandtab

" Show the matching part of the pair for [] {} and ()
set showmatch

" Enable all Python syntax highlighting features
let python_highlight_all = 1

" When using the >> or << commands, shift lines by 4 spaces
set shiftwidth=4

" Store the file in a unix format
set fileformat=unix

" UTF-8 file encoding
set encoding=utf-8

" 80-char ruler
set colorcolumn=80
