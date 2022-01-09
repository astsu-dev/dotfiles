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
Plug 'preservim/nerdtree' " Explorer

Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  } " Markdown preview

" Colorschemes
Plug 'fxn/vim-monochrome'
Plug 'ghifarit53/tokyonight-vim'
Plug 'logico/typewriter'

call plug#end()


" Keymaps
inoremap jk <esc>
let mapleader=" "

" Theme
syntax on
let g:tokyonight_style = 'night' " Available: night, storm
let g:airline_theme = 'tokyonight'
let g:tokyonight_enable_italic = 0
let g:tokyonight_transparent_background = 1
colorscheme tokyonight

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

" File browsing
"" netrw
let g:netrw_banner=0        " Disable annoying banner
let g:netrw_browse_split=4  " Open in prior window
let g:netrw_altv=1          " Open splits to the right
let g:netrw_liststyle=3     " Tree view
"" NERDTree
let NERDTreeMinimalUI=1
""" Ignore showing some files and directories
let NERDTreeIgnore = ['__pycache__', '.mypy_cache', '\.pyc$', '\.egg-info$']
""" Start NERDTree and leave the cursor in it.
" autocmd VimEnter * NERDTree
""" NERDTree keymaps
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-b> :NERDTree<CR>
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" Clipboard
set clipboard=unnamed
" WSL clipboard
" Copy (write) highlighted text to .vimbuffer
vmap <c-c> y:new ~/.vimbuffer<cr>vgp:x<cr> \| :!cat ~/.vimbuffer \| clip.exe <cr><cr>
" Paste from buffer
map <c-v> :r ~/.vimbuffer<cr>


" Functions
:function PyBlackFormat()
:  exec '!black' shellescape(@%, 1)
:  redraw
:endfunction


" Commands
:command Fmt :call PyBlackFormat()


" LSP config
lua << EOF
local nvim_lsp = require('lspconfig')

-- Use an on_attach function to only map the following keys
-- after the language server attaches to the current buffer
local on_attach = function(client, bufnr)

  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  -- Enable completion triggered by <c-x><c-o>
  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

  -- Mappings.
  local opts = { noremap=true, silent=true }

  -- See `:help vim.lsp.*` for documentation on any of the below functions
  buf_set_keymap('n', 'gD', '<cmd>lua vim.lsp.buf.declaration()<CR>', opts)
  buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
  buf_set_keymap('n', 'K', '<cmd>lua vim.lsp.buf.hover()<CR>', opts)
  buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  buf_set_keymap('n', '<C-k>', '<cmd>lua vim.lsp.buf.signature_help()<CR>', opts)
  buf_set_keymap('n', '<space>wa', '<cmd>lua vim.lsp.buf.add_workspace_folder()<CR>', opts)
  buf_set_keymap('n', '<space>wr', '<cmd>lua vim.lsp.buf.remove_workspace_folder()<CR>', opts)
  buf_set_keymap('n', '<space>wl', '<cmd>lua print(vim.inspect(vim.lsp.buf.list_workspace_folders()))<CR>', opts)
  buf_set_keymap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
  buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
  buf_set_keymap('n', '<space>ca', '<cmd>lua vim.lsp.buf.code_action()<CR>', opts)
  buf_set_keymap('n', 'gr', '<cmd>lua vim.lsp.buf.references()<CR>', opts)
  buf_set_keymap('n', '<space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
  buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
  buf_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
  buf_set_keymap('n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
  buf_set_keymap('n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)

end

-- Use a loop to conveniently call 'setup' on multiple servers and
-- map buffer local keybindings when the language server attaches
local servers = { 'pyright' }
for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup {
    on_attach = on_attach,
    flags = {
      debounce_text_changes = 150,
    }
  }
end
EOF


" Autocompletion config
set completeopt=menu,menuone,noselect

lua <<EOF
local cmp = require'cmp'
local lsp_signature = require'lsp_signature'
local nvim_lsp = require'lspconfig'

cmp.setup({
mapping = {
  ['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
  ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
  ['<C-y>'] = cmp.config.disable, -- Specify `cmp.config.disable` if you want to remove the default `<C-y>` mapping.
  ['<C-e>'] = cmp.mapping({
    i = cmp.mapping.abort(),
    c = cmp.mapping.close(),
  }),
  ['<C-Space>'] = cmp.mapping.confirm({ select = true }),
},
sources = cmp.config.sources({
  { name = 'nvim_lsp' },
}, {
  { name = 'buffer' },
})
})

-- Function signatures
local on_attach = function(client, bufnr)
lsp_signature.on_attach({
  bind = true,
  handler_opts = {
    border = "none",
    hint_prefix = "λ "
  }
})
end

local servers = { 'pyright' }
for _, lsp in ipairs(servers) do
  nvim_lsp[lsp].setup {
    on_attach = on_attach
  }
end
EOF
