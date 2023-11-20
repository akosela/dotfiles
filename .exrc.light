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
syntax on
hi LineNr cterm=NONE ctermfg=grey
autocmd FileType yaml
  \ syn match item /.\+\w\+:$/ contains=com |
  \ syn match item2 /.\+\w\+: / contains=com |
  \ syn match com /.#.*$/ |
  \ syn match com /^#.*$/ |
  \ hi item ctermfg=darkblue |
  \ hi item2 ctermfg=darkblue |
  \ hi com ctermfg=black
autocmd FileType vim
  \ set filetype=text |
  \ syn match com /^".*$/ |
  \ hi com ctermfg=darkblue

if $_ == "/usr/bin/ex"
  set nu
endif
let g:loaded_matchparen=1
