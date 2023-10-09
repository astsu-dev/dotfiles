return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    require("catppuccin").setup({
      flavour = "macchiato",
      custom_highlights = function(colors)
        return {
          NormalFloat = { bg = colors.none },
          Pmenu = { bg = colors.none },
        }
      end
    })
    vim.cmd.colorscheme "catppuccin"
  end
}
