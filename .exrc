set showmode
set noprompt
set autoindent
set noruler
set nuw=1
map f !}fmt -s -w79
map z :w<CR> :set nu<CR> :$r !cc %<CR><CR>
map Z :!./a.out<CR>
map t :set nonu<CR>
map T :set nu<CR>
noremap Q :set nu<CR> Q
hi LineNr term=NONE
filetype on
autocmd FileType yaml setlocal sts=2 shiftwidth=2 expandtab

if $_ == "/usr/bin/ex"
	set nu
endif
