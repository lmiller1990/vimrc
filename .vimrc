  "A minima minimal vimrc for new vim users to start with.
"
" Referenced here: http://vimuniversity.com/samples/your-first-vimrc-should-be-nearly-empty
"
" Original Author:       Bram Moolenaar <Bram@vim.org>
" Made more minimal by:  Ben Orenstein
" Modified by :          Ben McCormick
" Last change:           2014 June 8
"
" To use it, copy it to
"  for Unix based systems (including OSX and Linux):  ~/.vimrc
"  for Windows :  $VIM\_vimrc
"
"  If you don't understand a setting in here, just type ':h setting'.

" Use Vim settings, rather than Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
autocmd FileType c# setlocal shiftwidth=4 softtabstop=4 expandtab
autocmd BufNewFile,BufRead *.cs set formatprg=astyle\ -T4pb
set timeoutlen=1000 ttimeoutlen=0

set nocompatible
set backupcopy=yes

set nrformats=
" Make backspace behave in a sane manner.
set backspace=indent,eol,start

" Switch syntax highlighting on
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

set t_Co=256
syntax on
set background=dark
" Enable file type detection and do language-dependent indenting.
filetype plugin indent on

" Show line numbers
set number

" Allow hidden buffers, don't limit to 1 file per window/split
set hidden

:set expandtab
:set tabstop=2
:retab
:set shiftwidth=2

nnoremap <silent> [b :bprevious<CR>
nnoremap <silent> ]b :bnext<CR>
nnoremap <silent> [B :bfirst<CR>
nnoremap <silent> ]B :blast<CR>

set runtimepath^=~/.vim/bundle/ctrlp.vim

autocmd FileType vue setlocal shiftwidth=2 tabstop=2

autocmd FileType ruby setlocal shiftwidth=2 tabstop=2

execute pathogen#infect()

colorscheme neodark
