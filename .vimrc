set number
syntax on

set encoding=UTF-8

let g:gruvbox_italic=1

" -----    general configuration 	    --------

" -----        key mapping starts here      --------

inoremap jj <esc>

nnoremap <S-h> 10h
nnoremap <S-k> 10k
nnoremap <S-l> 10l
nnoremap <S-j> 10j

vnoremap <S-h> 10h
vnoremap <S-k> 10k
vnoremap <S-l> 10l
vnoremap <S-j> 10j

nnoremap <C-d> yyp 
nnoremap <cr> o<esc>

set expandtab
set tabstop=2
set shiftwidth=2

" -----        key mapping 		    --------

" --- change cursor for better recognizing modes----

let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"
