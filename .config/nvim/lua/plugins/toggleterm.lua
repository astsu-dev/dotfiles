return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		require("toggleterm").setup({
			open_mapping = [[<F7>]],
			direction = "float",
		})

		-- Mappings
		-- vim.keymap.set("n", "<F7>", "<cmd>ToggleTerm direction=float<CR>")
	end,
}
