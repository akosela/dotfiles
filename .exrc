set nocompatible
set bg=dark
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
  \ hi com ctermfg=lightblue
autocmd FileType sh
  \ syn match numbers /[0-9]*/ |
  \ syn match v /$#.*/ |
  \ syn match shebang /#!/ |
  \ syn match func /^.*()/ |
  \ syn match com /#.*$/ |
  \ syn match space_err display excludenl /\s\+$/ |
  \ hi shebang cterm=NONE |
  \ hi space_err ctermbg=red |
  \ hi com ctermfg=lightblue |
  \ hi v cterm=NONE |
  \ hi numbers ctermfg=white |
  \ hi func ctermfg=white
autocmd FileType c
  \ syn match numbers /[0-9]*/ |
  \ syn match com /\/\/.*$/ |
  \ syn region com start=/\/\*/ end=/\*\// |
  \ syn match space_err display excludenl "\s\+$" |
  \ syn match string /".*"/ |
  \ syn match string /'.*'/ |
  \ syn match string /<.*>/ |
  \ hi string ctermfg=white |
  \ hi space_err ctermbg=red |
  \ hi com ctermfg=lightblue |
  \ hi numbers ctermfg=white |
autocmd FileType yaml
  \ syn match item /\w\+:/ |
  \ syn match com /#.*$/ |
  \ syn match var /{{.*}}/ |
  \ hi com ctermfg=red |
  \ hi item ctermfg=lightblue |
  \ hi var ctermfg=white

if $_ == "/usr/bin/ex"
  set nu
endif
let g:loaded_matchparen=1
