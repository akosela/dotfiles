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
map f !}fmt -w79
map z :w<CR> :set nu<CR> :$r !cc %<CR><CR>
map Z :!./a.out<CR>
map t :set nonu<CR>
map T :set nu<CR>
noremap Q :set nu<CR> Q
filetype on
hi LineNr cterm=NONE ctermfg=grey
autocmd FileType sh
	\ syn match com /#.*$/ |
	\ syn match shebang /#!/ |
	\ syn match space_err display excludenl "\s\+$" |
	\ hi shebang cterm=NONE |
	\ hi space_err ctermbg=red |
	\ hi com ctermfg=lightblue
autocmd FileType c
	\ syn match com /\/\/.*$/ |
	\ syn region com start=/\/\*/ end=/\*\// |
	\ syn match space_err display excludenl "\s\+$" |
	\ syn match string /".*"/ |
	\ syn match string /'.*'/ |
	\ syn match string /<.*>/ |
	\ hi string ctermfg=white |
	\ hi space_err ctermbg=red |
	\ hi com ctermfg=lightblue
autocmd FileType yaml setlocal sts=2 shiftwidth=2 expandtab
autocmd FileType yaml
	\ syn match item /.*: / |
	\ syn match var /{{.*}}/ |
	\ syn match com /#.*$/ |
	\ hi com ctermfg=red |
	\ hi item ctermfg=lightblue |
	\ hi var ctermfg=white

if $_ == "/usr/bin/ex"
	set nu
endif
let g:loaded_matchparen=1
