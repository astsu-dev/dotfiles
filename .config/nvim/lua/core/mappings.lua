vim.g.mapleader = " "

vim.keymap.set("i", "jk", "<esc>", { noremap = true })

-- Splits
vim.keymap.set("n", "|", "<cmd>vsplit<CR>")
vim.keymap.set("n", "\\", "<cmd>split<CR>")

-- Move cursor between windows
vim.keymap.set("n", "<c-h>", "<cmd>wincmd h<CR>")
vim.keymap.set("n", "<c-j>", "<cmd>wincmd j<CR>")
vim.keymap.set("n", "<c-k>", "<cmd>wincmd k<CR>")
vim.keymap.set("n", "<c-l>", "<cmd>wincmd l<CR>")

-- Buffers
vim.keymap.set("n", "<leader>c", "<cmd>bd | bp<CR>") -- Close current buffer

-- Other
vim.keymap.set("n", "<leader>h", "<cmd>noh<CR>") -- Clear highlights
