-- general
lvim.log.level = "warn"
lvim.format_on_save = true
lvim.colorscheme = "catppuccin-macchiato"
lvim.transparent_window = true
vim.opt.relativenumber = true
vim.opt.wrap = true

-- keymappings [view all the defaults by pressing <leader>Lk]
lvim.leader = "space"
-- add your own keymapping
lvim.keys.normal_mode["<C-s>"] = ":w<cr>"
lvim.keys.insert_mode["jk"] = "<esc>"
lvim.keys.normal_mode["<Tab>"] = ":BufferLineCycleNext<cr>"
lvim.keys.normal_mode["<S-Tab>"] = ":BufferLineCyclePrev<cr>"

-- TODO: User Config for predefined plugins
-- After changing plugin config exit and reopen LunarVim, Run :PackerInstall :PackerCompile
lvim.builtin.alpha.active = true
lvim.builtin.alpha.mode = "dashboard"
lvim.builtin.terminal.active = true
lvim.builtin.nvimtree.setup.view.side = "left"
lvim.builtin.nvimtree.setup.renderer.icons.show.git = false

-- if you don't want all the parsers change this to a table of the ones you want
lvim.builtin.treesitter.ensure_installed = {
  "bash",
  "c",
  "javascript",
  "json",
  "lua",
  "python",
  "typescript",
  "tsx",
  "css",
  "rust",
  "java",
  "yaml",
}

lvim.builtin.treesitter.ignore_install = { "haskell" }
lvim.builtin.treesitter.highlight.enable = true

-- Language servers
require("lvim.lsp.manager").setup("emmet_ls")
require("lvim.lsp.manager").setup("tailwindcss")

-- Formatters
local formatters = require "lvim.lsp.null-ls.formatters"
formatters.setup {
  { command = "black" },
  { command = "isort" },
  { command = "prettier" },
}

-- Additional Plugins
lvim.plugins = {
  { "catppuccin/nvim", as = "catppuccin" },
  {
    "iamcco/markdown-preview.nvim",
    run = function() vim.fn["mkdp#util#install"]() end,
  },
  {
    "ray-x/lsp_signature.nvim",
    config = function() require "lsp_signature".on_attach() end,
    event = "BufRead"
  }
}
