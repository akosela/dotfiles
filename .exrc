set showmode
set autoindent
set noprompt
set noruler
set nuw=1
map f !}fmt -s -72
map z :w<CR> :set nu<CR> :$r !cc %<CR><CR>
map Z :!./a.out<CR>
map T :set nu<CR>
map t :set nonu<CR>
noremap Q :set nu<CR> Q
hi LineNr term=NONE

if $_ == "/usr/bin/ex"
	set nu
endif
