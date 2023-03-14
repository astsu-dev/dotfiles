local config = {
    colorscheme = "catppuccin-latte",
    options = {
        opt = {
            wrap = true,
        },
    },
    mappings = {
        n = {
            ["L"] = { function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end,
                desc = "Next buffer" },
            ["H"] = { function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end,
                desc = "Previous buffer" },
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
            run = function() vim.fn["mkdp#util#install"]() end,
        }
    },
}

return config
