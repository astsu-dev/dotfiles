local configs = require("nvim-treesitter.configs")

configs.setup({
  ensure_installed = {
    "javascript",
    "typescript",
    "jsdoc",
    "lua",
    "python",
    "json",
    "yaml",
    "html",
    "css",
    "toml",
  },
  auto_install = false,
  sync_install = false,
  highlight = { enable = true },
  indent = { enable = true },
})
