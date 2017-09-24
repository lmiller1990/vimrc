" show line numbers
set number

" syntax highlighting
syntax on
"
" Enable file type detection and do language-dependent indenting.
filetype plugin indent on

" set leader to ,
let mapleader = ','

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

" move vertically by visual line
nnoremap j gj
nnoremap k gk

" move to beginning/end of line
nnoremap B ^
nnoremap E $
"
" " $/^ doesn't do anything
nnoremap $ <nop>
nnoremap ^ <nop>"

" toggle gundo
nnoremap <leader>u :GundoToggle<CR>

" .swp files are annoying
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

" toggle between number and relativenumber
function! ToggleNumber()
	if(&relativenumber == 1)
		set norelativenumber
		set number
	else
		set relativenumber
	endif
endfunc
