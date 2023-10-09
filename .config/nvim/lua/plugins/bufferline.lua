return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = "nvim-tree/nvim-web-devicons",
  config = function()
    local macchiato = require("catppuccin.palettes").get_palette("macchiato")

    require("bufferline").setup({
      options = {
        mode = "buffers",
        separator_style = "thin",
      },
      highlights = require("catppuccin.groups.integrations.bufferline").get(
        {
          custom = {
            macchiato = {
              fill = { bg = macchiato.mantle }
            }
          }
        }
      ),
    })

    -- Mappings
    vim.keymap.set("n", "<s-h>", "<cmd>BufferLineCyclePrev<CR>")
    vim.keymap.set("n", "<s-l>", "<cmd>BufferLineCycleNext<CR>")
  end,
}
