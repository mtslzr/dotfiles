" Plugins
call plug#begin('~/.vim/plugged')
Plug 'jwalton512/vim-blade'
Plug 'scrooloose/nerdtree'
call plug#end()

" NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
map <C-n> :NERDTreeToggle<CR>

" Personal Settings
colorscheme slate
filetype plugin indent on
set expandtab
set nowrap
set number
set pastetoggle=<F10>
set shiftwidth=4
set tabstop=4
syntax on
