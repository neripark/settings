nnoremap ' :
:set term=xterm-256color
:syntax on

" vscode vimで効かないため合わせるため保留
" inoremap <C-d> <Del>
inoremap <C-b> <Left>
inoremap <C-f> <Right>
inoremap <C-y> <C-d>

nnoremap <C-e> $
nnoremap <C-a> ^
nnoremap Y y$

" auto complete pair 
inoremap ( ()<ESC>i
inoremap <expr> ) ClosePair(')')
inoremap { {}<ESC>i
inoremap <expr> } ClosePair('}')
inoremap [ []<ESC>i
inoremap <expr> ] ClosePair(']')
function ClosePair(char)
    if getline('.')[col('.') - 1] == a:char
        return "\<Right>"
    else
        return a:char
    endif
endf

" 保留
" nnoremap gy "0P

" tab 2
set expandtab
set tabstop=2
set shiftwidth=2

" share clipboard vim and MacOS.
" set clipboard+=unnamed,autoselect
set clipboard=unnamed

" smart indent
set smartindent

" display row no
set number

set t_Co=256

" swp file save directory.
set directory=~/.vim/tmp

" バックスペースが効かない事象を解決
set backspace=indent,eol,start

