

"below for Vundle

set nocompatible   " be iMproved, required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
" " alternatively, pass a path where Vundle should install plugins
" "let path = '~/some/path/here'
" "call vundle#rc(path)

" let Vundle manage Vundle, required
Plugin 'gmarik/vundle'
Plugin 'taglist.vim'
Plugin 'ctags.vim'
Plugin 'cscope.vim'
Plugin 'snipMate'
Plugin 'neocomplcache'
Plugin 'powerline/powerline'
"Plugin 'unite.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
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
