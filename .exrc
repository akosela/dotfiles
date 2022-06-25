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
syn match com /^".*$/
syn match com /#.*$/
syn match com /\/\/.*$/
syn region com start=/\/\*/ end=/\*\//
syn match shebang /#!/
syn match space_err display excludenl "\s\+$"
syn match string /".*"/
syn match string /'.*'/
syn match string /<.*>/
syn match preprocessor /#include/
syn match preprocessor /#pragma/
syn match preprocessor /#define/
syn match preprocessor /#error/
syn match preprocessor /#warning/
syn match preprocessor /#undef/
syn match preprocessor /#if/
syn match preprocessor /#else/
syn match preprocessor /#elif/
syn match preprocessor /#endif/
syn match preprocessor /#ifdef/
syn match preprocessor /#ifndef/
syn match preprocessor /#line/
hi LineNr cterm=NONE ctermfg=grey
hi com ctermfg=lightblue
hi shebang cterm=NONE
hi space_err ctermbg=red
hi string ctermfg=white
hi preprocessor ctermfg=cyan
filetype on
autocmd FileType yaml setlocal sts=2 shiftwidth=2 expandtab

if $_ == "/usr/bin/ex"
	set nu
endif
let g:loaded_matchparen=1
