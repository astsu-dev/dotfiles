local neotree = require("neo-tree")

neotree.setup({
	filesystem = {
		follow_current_file = {
			enabled = true,
		},
	},
})

vim.keymap.set("n", "<leader>e", "<cmd>Neotree left toggle<CR>")
