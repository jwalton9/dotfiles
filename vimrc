" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'L9'

" Appearance

Plugin 'dracula/vim'
Plugin 'itchyny/lightline.vim'

" FileSystem

Plugin 'scrooloose/nerdtree'
Plugin 'junegunn/fzf.vim'
Plugin 'tpope/vim-eunuch'

" Git Integration

Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'

" Languages

Plugin 'sheerun/vim-polyglot'

" Editor

Plugin 'editorconfig/editorconfig-vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-surround'
Plugin 'Raimondi/delimitMate'
Plugin 'w0rp/ale'

call vundle#end()

set number
syntax on
set nocompatible
filetype plugin indent on

let g:mapleader = '\'

" Split Navigation

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" FZF Config
set rtp+=/usr/local/opt/fzf
nnoremap <expr> <C-P> fugitive#is_git_dir(fugitive#extract_git_dir(getcwd())) ? ':GFiles <CR>' : ':Files <CR>'

" NERDTree Helpers

map <Tab> :NERDTreeToggle<CR>

" DelimitMate Config

let delimitMate_expand_cr = 1

color dracula
