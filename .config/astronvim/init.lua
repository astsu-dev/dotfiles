local config = {
  colorscheme = "catppuccin-latte",
  options = {
    opt = {
      wrap = true
    },
  },
  mappings = {
    n = {
      ["<Tab>"] = { "<cmd>BufferLineCycleNext<cr>", desc = "Next buffer" },
      ["<S-Tab>"] = { "<cmd>BufferLineCyclePrev<cr>", desc = "Prev buffer" },
      ["<C-Bslash>"] = { "<cmd>ToggleTerm<cr>", desc = "Toggle term" },
    },
  },
  lsp = {
    formatting = {
      disabled = {
        "tsserver",
      },
    },
  },
  plugins = {
    init = {
      {
        "catppuccin/nvim",
        as = "catppuccin",
        config = function()
          require("catppuccin").setup { transparent_background = true }
        end,
      },
      {
        "ray-x/lsp_signature.nvim",
        event = "BufRead",
        config = function()
          require("lsp_signature").setup()
        end,
      },
      {
        "iamcco/markdown-preview.nvim",
        run = function() vim.fn["mkdp#util#install"]() end,
      }
    },
    treesitter = {
      rainbow = {
        enable = false
      },
      ensure_installed = { "lua", "python", "javascript", "typescript", "rust", "c",
        "html", "css", "json", "dockerfile", "prisma", "markdown", "yaml", "bash", "fish", }
    }
  },
}

return config
