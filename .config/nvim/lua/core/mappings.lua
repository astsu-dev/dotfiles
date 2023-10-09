vim.g.mapleader = " "

vim.keymap.set("i", "jk", "<esc>", { noremap = true })

-- Splits
vim.keymap.set("n", "|", ":vsplit<CR>")
vim.keymap.set("n", "\\", ":split<CR>")

-- Move cursor between windows
vim.keymap.set("n", "<c-h>", ":wincmd h<CR>")
vim.keymap.set("n", "<c-j>", ":wincmd j<CR>")
vim.keymap.set("n", "<c-k>", ":wincmd k<CR>")
vim.keymap.set("n", "<c-l>", ":wincmd l<CR>")

-- Buffers
vim.keymap.set("n", "<leader>c", "<cmd>bd | bp<CR>") -- Close current buffer
