local config = {
    colorscheme = "catppuccin-macchiato",
    options = {
        opt = {
            wrap = true,
        },
        g = {
            copilot_no_tab_map = true,
            copilot_assume_mapped = true,
        },
    },
    mappings = {
        n = {
            ["L"] = { function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
                desc = "Next buffer" },
            ["H"] = { function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
                desc = "Previous buffer" },
        },
        i = {
            ["<C-\\>"] = { 'copilot#Accept("")', silent = true, expr = true, noremap = true, replace_keycodes = false },
        }
    },
    lsp = {
        formatting = {
            disabled = {
                "tsserver",
                "html",
            },
        },
    },
    plugins = {
        {
            "catppuccin/nvim",
            as = "catppuccin",
            lazy = false,
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
            ft = "markdown",
            build = function()
              vim.fn["mkdp#util#install"]()
            end,
        },
        {
            "rcarriga/nvim-notify",
            enabled = false,
        },
        {
            "github/copilot.vim",
            lazy = false,
        }
    }
}

return config
