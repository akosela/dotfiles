set nocompatible
set bg=light
set showmode
set noprompt
set autoindent
set noruler
set nuw=1
set t_ti= t_te=
set t_md=
set t_Co=256
set noloadplugins
set ts=2
set sts=2
set shiftwidth=2
set expandtab
map f !}fmt -w79
map z :w<CR> :set nu<CR> :$r !cc %<CR><CR>
map Z :!./a.out<CR>
map t :set nonu<CR>
map T :set nu<CR>
noremap Q :set nu<CR> Q
filetype on
hi LineNr cterm=NONE ctermfg=grey
autocmd FileType conf,gitconfig
  \ syn match com /#.*$/ |
  \ hi com ctermfg=darkblue
autocmd FileType sh
  \ syn match v /$#.*/ |
  \ syn match shebang /#!/ |
  \ syn match com /#.*$/ |
  \ syn match space_err display excludenl /\s\+$/ |
  \ hi shebang cterm=NONE |
  \ hi space_err ctermbg=red |
  \ hi com ctermfg=darkblue |
  \ hi v cterm=NONE |
autocmd FileType c
  \ syn match com /\/\/.*$/ |
  \ syn region com start=/\/\*/ end=/\*\// |
  \ syn match space_err display excludenl "\s\+$" |
  \ hi space_err ctermbg=red |
  \ hi com ctermfg=darkblue |
autocmd FileType yaml
  \ syn match item /.\+\w\+:$/ contains=com |
  \ syn match item2 /.\+\w\+: / contains=com |
  \ syn match com /#.*$/ |
  \ hi item ctermfg=24 |
  \ hi item2 ctermfg=24 |
  \ hi com ctermfg=darkgrey
autocmd FileType make
  \ setlocal noexpandtab ts=8 sts=8
autocmd FileType asm
  \ setlocal noexpandtab ts=8 sts=8 |
  \ syn match num /\v\$[0-9A-Fa-f]+/ |
  \ syn match op /\t.\{3}/ contains=com |
  \ syn match com /;.*$/ |
  \ hi num ctermfg=darkyellow |
  \ hi op ctermfg=darkmagenta |
  \ hi com ctermfg=darkgray

if $_ == "/usr/bin/ex"
  set nu
endif
let g:loaded_matchparen=1
