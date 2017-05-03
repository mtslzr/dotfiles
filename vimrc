" vim-plug
call plug#begin('~/.vim/plugged')
Plug 'altercation/vim-colors-solarized'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'klen/python-mode'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
call plug#end()

" CtrlP Settings
let g:ctrlp_map = '<c-p>'

" NERDTree Settings
map <C-n> :NERDTreeToggle<CR>
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" PyMode Settings
let g:pymode = 1
let g:pymode_options = 1

" User Settings
filetype indent on
nnoremap <leader><space> :nohlsearch<CR>
set cursorline
set encoding=utf-8
set expandtab
set hlsearch
set incsearch
set nowrap
set number
set pastetoggle=<leader>p
set shiftwidth=4
set showmatch
set softtabstop=4
set tabstop=4
set wildmenu
syntax on

" Colorscheme
if has('gui_running')
    colorscheme solarized
    set background=dark
endif
