---@type ChadrcConfig
local M = {}

M.ui = {
  theme = "catppuccin",
  extended_integrations = {
    "alpha",
    "dap",
    "hop",
    "todo",
    "navic",
    "notify",
    "lspsaga",
    "trouble",
    "bufferline",
    "codeactionmenu",
    "rainbowdelimiters",
  },
  transparency = true,
}

M.mappings = {
  general = {
    i = {
      ["jk"] = { "<ESC>", "escape insert mode", opts = { nowait = true } },
    },
  },
  tabufline = {
    n = {
      ["<S-l>"] = {
        function()
          require("nvchad.tabufline").tabuflineNext()
        end,
        "Next buffer",
      },
      ["<S-h>"] = {
        function()
          require("nvchad.tabufline").tabuflinePrev()
        end,
        "Previous buffer",
      },
      ["<leader>c"] = {
        function()
          require("nvchad.tabufline").close_buffer()
        end,
        "Close buffer",
      },
    },
  },
  nvimtree = {
    n = {
      ["<leader>e"] = { "<cmd> NvimTreeToggle <CR>", "Toggle nvimtree" },
    },
  },
  nvterm = {
    t = {
      -- toggle in terminal mode
      ["<F7>"] = {
        function()
          require("nvterm.terminal").toggle "float"
        end,
        "Toggle floating term",
      },
    },

    n = {
      -- toggle in normal mode
      ["<F7>"] = {
        function()
          require("nvterm.terminal").toggle "float"
        end,
        "Toggle floating term",
      },
    },
  },
  disabled = {
    n = {
      ["<tab>"] = "",
      ["<S-tab>"] = "",
      ["<leader>x"] = "",
      ["<C-n>"] = "",
      ["<A-i>"] = "",
      ["<A-h>"] = "",
      ["<A-v>"] = "",
    },
    t = {
      ["<A-i>"] = "",
      ["<A-h>"] = "",
      ["<A-v>"] = "",
    },
  },
}

M.plugins = "custom.plugins"

return M
