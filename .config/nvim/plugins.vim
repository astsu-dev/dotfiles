call plug#begin('~/.vim/plugged')

Plug 'neovim/nvim-lspconfig' " LSP

" Autocompletion
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'hrsh7th/cmp-buffer'
Plug 'hrsh7th/cmp-path'
Plug 'hrsh7th/cmp-cmdline'
Plug 'hrsh7th/nvim-cmp'
Plug 'ray-x/lsp_signature.nvim' " Function signatures

Plug 'vim-airline/vim-airline' " Status line
Plug 'tpope/vim-commentary' " Comment lines
Plug 'jiangmiao/auto-pairs' " Autoclose brackets
Plug 'airblade/vim-gitgutter' " Git diff in sign column
Plug 'mattn/emmet-vim' " HTML emmet

" Explorer
Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'kyazdani42/nvim-tree.lua'

Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  } " Markdown preview

" Syntax highlighting
Plug 'tomlion/vim-solidity'
Plug 'edgedb/edgedb-vim'

" Colorschemes
Plug 'fxn/vim-monochrome'
Plug 'ghifarit53/tokyonight-vim'
Plug 'logico/typewriter'

call plug#end()

