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
:set softtabstop=0 
:set expandtab 
:set shiftwidth=2 
:set smarttab

" Make backspace behave normally
set backspace=indent,eol,start

" ignore node_modules and DS_Store files
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git|resources|vendor'

let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
if executable('ag')
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

let g:ctrlp_max_files=0

" tree view
map <C-n> :NERDTreeToggle<CR>

" runtime path for ctrl-p
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_max_files=0

" pathogen to install packages
execute pathogen#infect()

" theme
colorscheme onedark
" colorscheme crunchbang
" set background=light
" colorscheme solarized

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


" .swp files are annoying
set backup
set backupdir=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set backupskip=/tmp/*,/private/tmp/*
set directory=~/.vim-tmp,~/.tmp,~/tmp,/var/tmp,/tmp
set writebackup

" set relative number as default
set relativenumber

" toggle between number and relativenumber
function! ToggleNumber()
  if(&relativenumber == 1)
    set norelativenumber
    set number
  else
    set relativenumber
  endif
endfunc

" Use .js highlighting in .jsx
let g:jsx_ext_required = 0

" Run last command in tmux pain using Leader r
nnoremap <Leader>r :call <SID>TmuxRepeat()<CR>

" Autocomplete with Tab
function! Tab_Or_Complete()
  if col('.')>1 && strpart( getline('.'), col('.')-2, 3 ) =~ '^\w'
    return "\<C-N>"
  else
    return "\<Tab>"
  endif
endfunction
:inoremap <Tab> <C-R>=Tab_Or_Complete()<CR>
:set dictionary="/usr/dict/words"

" treat all numerals as decimal
set nrformats=

" matching def/ends in ruby
runtime macros/matchit.vim

function! Resize80Cols()
  vertical resize 80  
endfunction

" Better splits
nnoremap <C-J> <C-W><C-J>:call Resize80Cols()<CR>
nnoremap <C-K> <C-W><C-K>:call Resize80Cols()<CR>
nnoremap <C-L> <C-W><C-L>:call Resize80Cols()<CR>
nnoremap <C-H> <C-W><C-H>:call Resize80Cols()<CR>

