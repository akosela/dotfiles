set showmode
set noprompt
set autoindent
set noruler
set nuw=1
set sts=2
set shiftwidth=2
set expandtab
map f !}fmt -s -w79
map z :w<CR> :set nu<CR> :$r !cc %<CR><CR>
map Z :!./a.out<CR>
map t :set nonu<CR>
map T :set nu<CR>
noremap Q :set nu<CR> Q
hi LineNr term=NONE

if $_ == "/usr/bin/ex"
	set nu
endif
