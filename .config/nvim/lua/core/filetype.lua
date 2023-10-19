vim.filetype.add({
	-- Detect and apply filetypes based on certain patterns of the filenames
	pattern = {
		-- INFO: Match filenames like - ".env.example", ".env.local" and so on
		["%.env%.[%w_.-]+"] = "sh",
	},
})
