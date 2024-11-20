local gitsigns = require("gitsigns")

gitsigns.setup({
	on_attach = function(bufnr)
		local opts = { buffer = bufnr }
		vim.keymap.set("n", "<leader>gl", gitsigns.blame_line, opts)
		vim.keymap.set("n", "<leader>gd", gitsigns.diffthis, opts)
	end,
})
