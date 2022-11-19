local config = {
  colorscheme = "catppuccin-macchiato",
  mappings = {
    n = {
      ["<Tab>"] = { "<cmd>BufferLineCycleNext<cr>", desc = "Next buffer" },
      ["<S-Tab>"] = { "<cmd>BufferLineCyclePrev<cr>", desc = "Prev buffer" },
    }
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
    },
  },
}

return config
