" show line numbers
set number

" syntax highlighting
syntax on
"
" Enable file type detection and do language-dependent indenting.
filetype plugin indent on

" two spaces
:set tabstop=2
:set shiftwidth=2

" Make backspace behave normally
set backspace=indent,eol,start

" ignore node_modules and DS_Store files
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

" tree view
map <C-n> :NERDTreeToggle<CR>

" runtime path for ctrl-p
set runtimepath^=~/.vim/bundle/ctrlp.vim

" pathogen to install packages
execute pathogen#infect()

" theme
colors dues

" when opening a new tab, immediately show fuzzy finder
nnoremap tt :tabe<CR><bar>:CtrlP<CR>

" tab and backspace to move through tabs quickly
nnoremap <tab> gt
noremap <space><tab> gT

" reduce escape sequence timeout length to 100ms
set ttimeoutlen=100
