nnoremap ; :
nnoremap : ;
:set term=xterm-256color
:syntax on

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

" tab 2
set expandtab
set tabstop=2
set shiftwidth=2

" share clipboard vim and MacOS.
set clipboard+=unnamed
