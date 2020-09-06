call plug#begin('~/.vim/plugged')

"Git
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'xuyuanp/nerdtree-git-plugin'

"Navigation
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

"Editor
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'tpope/vim-surround'

"Languages
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'jparise/vim-graphql'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'peitalin/vim-jsx-typescript'
Plug 'styled-components/vim-styled-components', { 'branch': 'main' }

"Themes
Plug 'dracula/vim', { 'as': 'dracula' }

call plug#end()

set nu
set nocompatible
set expandtab
set shiftwidth=2

syntax on
syntax sync minlines=256

filetype on
filetype plugin indent on

"NERDTree
nnoremap <silent> <C-b> :NERDTreeToggle<CR>

let g:NERDTrimTrailingWhitespace = 1
let g:NERDDefaultAlign = 'left'
let g:NERDTreeIgnore=['node_modules']

"FZF
nnoremap <silent> <C-p> ':GFiles <CR>'

let g:coc_global_extensions = [
\ 'coc-tsserver',
\ 'coc-prettier',
\ 'coc-eslint'
\ ]

colorscheme dracula
