" Keymaps
inoremap jk <esc>
let mapleader=" "

set splitright

" Tabs
set tabstop=4
set shiftwidth=4
set smarttab
set expandtab " Spaces instead tabs
set autoindent

" Words wrap
set wrap
set linebreak

" Line number
set number
set relativenumber
set ruler
set colorcolumn=80

" Encoding
set ff=unix
set fileencodings=utf8,cp1251
set encoding=utf-8

" Disable sound
set novisualbell
set t_vb=
set visualbell t_vb=

" Disable file backup, swap
set nobackup
set noswapfile

" FuzzyFind
set path+=**
set wildmenu

" Default explorer
let g:netrw_banner=0       " Disable annoying banner
let g:netrw_browse_split=4 " Open in prior window
let g:netrw_altv=1         " Open splits to the right
let g:netrw_liststyle=3    " Tree view

" Clipboard
set clipboard=unnamed
"" WSL clipboard (uncomment if use wsl)
""" Copy (write) highlighted text to .vimbuffer
""" vmap <c-c> y:new ~/.vimbuffer<cr>vgp:x<cr> \| :!cat ~/.vimbuffer \| clip.exe <cr><cr>
""" Paste from buffer
""" map <c-v> :r ~/.vimbuffer<cr>

