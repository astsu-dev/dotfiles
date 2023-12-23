local lsp_zero = require("lsp-zero")
local lspconfig = require("lspconfig")
local telescope_builtin = require("telescope.builtin")

---@diagnostic disable-next-line: unused-local
lsp_zero.on_attach(function(client, bufnr)
  local opts = { buffer = bufnr, remap = false }

  vim.keymap.set("n", "gd", function()
    vim.lsp.buf.definition()
  end, opts)

  vim.keymap.set("n", "<leader>lr", function()
    vim.lsp.buf.rename()
  end, opts)

  vim.keymap.set("n", "K", function()
    vim.lsp.buf.hover()
  end, opts)

  vim.keymap.set("n", "<leader>ld", function()
    vim.diagnostic.open_float()
  end, opts)

  vim.keymap.set("n", "<leader>lD", function()
    telescope_builtin.diagnostics({ bufnr = 0 })
  end, opts)

  vim.keymap.set("n", "<leader>la", function()
    vim.lsp.buf.code_action()
  end, opts)

  vim.keymap.set("n", "<leader>lf", function()
    vim.lsp.buf.format({ async = true })
  end, opts)

  vim.keymap.set("n", "<leader>lR", function()
    telescope_builtin.lsp_references()
  end, opts)
end)

local disable_client_formatting = function(client)
  client.server_capabilities.documentFormattingProvider = false
  client.server_capabilities.documentFormattingRangeProvider = false
end

require("mason").setup({})
require("mason-lspconfig").setup({
  ensure_installed = {
    "tsserver",
    "pyright",
    "ruff_lsp",
    "eslint",
    "lua_ls",
  },
  handlers = {
    lsp_zero.default_setup,
    tsserver = function()
      lspconfig.tsserver.setup({
        on_init = disable_client_formatting,
      })
    end,
    lua_ls = function()
      -- Use lsp-zero lua_ls configuration to disable errors in lua files
      local lua_ls_opts = lsp_zero.nvim_lua_ls()
      lspconfig.lua_ls.setup(lua_ls_opts)
    end,
  },
})
