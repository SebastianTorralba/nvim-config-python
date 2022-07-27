set encoding=utf-8
set number relativenumber
set noswapfile
set scrolloff=7
set backspace=indent,eol,start
set tabstop=4
set softtabstop=4
set expandtab
set autoindent
set fileformat=unix
let mapleader=' '
syntax enable

call plug#begin('~/.vim/plugged')
Plug 'morhetz/gruvbox'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
"Plug 'norcalli/nvim-colorizer.lua'
Plug 'davidhalter/jedi-vim'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'sirver/ultisnips'
call plug#end()

colorscheme gruvbox
set bg=dark

let g:airline_theme='gruvbox'

if (has("termguicolors"))
	set termguicolors
endif

"lua require 'colorizer'.setup()

nmap <C-_> <Plug>NERDCommenterToggle
vmap <C-_> <Plug>NERDCommenterToggle<CR>gv

let NERDTreeQuitOnOpen=1
nmap <F2> :NERDTreeToggle<CR>

let g:airline#extensions#tabline#enabled=1
let g:airline#extensions#tabline#fnamemode=':t'

nmap <leader>1 :bp<CR>
nmap <leader>2 :bn<CR>
nmap<C-w> :bd<CR>



