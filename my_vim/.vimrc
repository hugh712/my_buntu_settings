

"below for Vundle

set nocompatible   " be iMproved, required

filetype plugin indent on    " required

"upper for Vundle

"Tab 長度為 4
set tabstop=4

"自動縮排長度為 4
set shiftwidth=4

"文字編輯使用utf-8
set enc=utf8

"語法上色
syntax on

"for high light search
set hlsearch

"show number line
se nu

"minimum nr. of lines above and below the curse
set scrolloff=3

"highlight the screen light of  current 
set cursorline

"自動縮排位元數
set tabstop=2
set shiftwidth=2

"switch on file type detected
filetype on  
filetype plugin on

"keyboard mapping for pastetoggle
set pastetoggle=<F2>

"keyboard mapping for Tlist
map <f9> :Tlist<CR>

"keyboard mapping for Explore"
map <f3> :Explore<CR>

"keyboard mapping for unite.vim
nnoremap <C-f> :Unite -start-insert file<CR>
nnoremap <C-b> :Unite buffer<CR>
nnoremap <C-c> :cs find c <C-R>=expand("<cword>")<CR><CR>


"for neocomplacache enable
let g:neocomplcache_enable_at_startup = 1 
let g:netrw_liststyle = 3

colo elflord
