-- Mappings
vim.keymap.set("i", "jk", "<esc>", { noremap = true })

-- Splits mappings
vim.keymap.set("n", "|", "<cmd>vsplit<CR>")
vim.keymap.set("n", "\\", "<cmd>split<CR>")

-- Move cursor between windows
vim.keymap.set("n", "<c-h>", "<cmd>wincmd h<CR>")
vim.keymap.set("n", "<c-j>", "<cmd>wincmd j<CR>")
vim.keymap.set("n", "<c-k>", "<cmd>wincmd k<CR>")
vim.keymap.set("n", "<c-l>", "<cmd>wincmd l<CR>")

-- Bring search results to midscreen
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Move selected line / block of text in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Yank to system clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])

-- Paste without yanking to current register
vim.keymap.set("x", "<leader>p", [["_dP]])
