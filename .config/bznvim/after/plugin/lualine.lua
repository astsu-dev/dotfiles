require("lualine").setup({
  options = {
    theme = "gruvbox",
  },
  sections = {
    lualine_a = { { "mode", icons_enabled = false } },
    lualine_b = {
      {
        "branch",
      },
      "diff",
      {
        "diagnostics",
        icons_enabled = false,
      },
      "filename",
    },
    lualine_c = {},
    lualine_x = {},
    lualine_y = {},
    lualine_z = { "location" }
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = { "filename" },
    lualine_x = { "location" },
    lualine_y = {},
    lualine_z = {}
  },
})
