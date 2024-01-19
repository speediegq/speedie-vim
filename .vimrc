" speedie's vim configuration
" purely for productivity, no bloat

syntax on

set rnu
set mouse=a
set clipboard=unnamedplus
set title
set hidden
set smarttab
set autoindent
set expandtab
set noswapfile
set nocursorline
set laststatus=0
set undolevels=10000
set softtabstop=4
set shiftwidth=4
set tabstop=4
set spelllang=en_us
set spellsuggest=best,5
set foldmethod=indent
set laststatus=0

set termguicolors
set t_Co=256
set t_ut=
set background=dark
colorscheme elflord

autocmd BufReadPre *.md set spell
autocmd BufWritePre * %s/\s\+$//e
autocmd BufWritePre * %s/\t/    /e
autocmd BufWritePre Makefile %s/    /\t/e

highlight Normal ctermfg=grey ctermbg=lightgray guifg=#ffffff guibg=#222222
highlight EndOfBuffer ctermfg=grey ctermbg=lightgray guifg=#ffffff guibg=#222222
highlight Folded ctermfg=grey ctermbg=lightgray guifg=#afeeee guibg=#333333

filetype plugin indent on

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
nnoremap <C-s> :split<cr>
nnoremap <C-w> :vsplit<cr>
nnoremap <C-q> :only<cr>
nnoremap <C-t> :term<cr>

nnoremap <F2> :set spell!<cr>
nnoremap <F3> :set spelllang=en_us<cr>
nnoremap <F4> :set spelllang=sv_se<cr>
nnoremap <F7> :silent execute '!setxkbmap us'<cr>
nnoremap <F8> :silent execute '!setxkbmap se'<cr>
nnoremap <C-e> [s1z=
nnoremap <C-r> 1z=

nnoremap H :vertical resize -10<cr>
nnoremap J :resize -10<cr>
nnoremap K :resize +10<cr>
nnoremap L :vertical resize +10<cr>

nnoremap d "_d
xnoremap d "_d
xnoremap p "_dP
nnoremap c "_c

let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
