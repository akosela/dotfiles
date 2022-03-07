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
map f !}fmt -s -w79
map z :w<CR> :set nu<CR> :$r !cc %<CR><CR>
map Z :!./a.out<CR>
map t :set nonu<CR>
map T :set nu<CR>
noremap Q :set nu<CR> Q
hi LineNr term=NONE
filetype on
autocmd FileType yaml syntax on setlocal sts=2 shiftwidth=2 expandtab
autocmd FileType c,cpp,go,sh syntax on

if $_ == "/usr/bin/ex"
	set nu
endif
let g:loaded_matchparen=1
