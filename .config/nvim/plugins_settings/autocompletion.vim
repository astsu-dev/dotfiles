set completeopt=menu,menuone,noselect

lua << EOF
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
