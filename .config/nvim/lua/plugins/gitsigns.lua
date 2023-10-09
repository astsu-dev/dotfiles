return {
	"lewis6991/gitsigns.nvim",
	event = { "BufReadPre", "BufNewFile" },
	config = function()
		local border = "single"

		require("gitsigns").setup({
			preview_config = {
				border = border,
			},
			on_attach = function()
				local gs = package.loaded.gitsigns

				vim.keymap.set("n", "<leader>gl", function()
					gs.blame_line()
				end)
			end,
		})
	end,
}
