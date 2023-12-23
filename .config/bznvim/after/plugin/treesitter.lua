local configs = require("nvim-treesitter.configs")

configs.setup({
  ensure_installed = {
    "javascript",
    "typescript",
    "lua",
    "python",
    "json",
    "yaml",
  },
  auto_install = false,
  sync_install = false,
  highlight = { enable = true },
  indent = { enable = true },
})
