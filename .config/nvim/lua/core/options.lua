vim.opt.scrolloff = 5
vim.opt.wrap = true

-- Line numbers
vim.opt.number = true
vim.opt.relativenumber = true

-- Splits
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Tabs
vim.opt.expandtab = true
vim.opt.shiftwidth = 2
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.smartindent = true

vim.opt.signcolumn = "yes"
vim.opt.fillchars = {
    vert = "│",
    fold = "⠀",
    eob = " ", -- suppress ~ at EndOfBuffer
    -- diff = "⣿", -- alternatives = ⣿ ░ ─ ╱
    msgsep = "‾",
    foldopen = "▾",
    foldsep = "│",
    foldclose = "▸"
}

vim.opt.shell = "/opt/homebrew/bin/fish"
vim.opt.mouse = "a"
vim.opt.mousefocus = true
vim.opt.clipboard = "unnamedplus"

vim.opt.termguicolors = true
