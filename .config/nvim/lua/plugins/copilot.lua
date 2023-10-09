return {
	"zbirenbaum/copilot.lua",
	event = "InsertEnter",
	config = function()
		require("copilot").setup({
			suggestion = {
				auto_trigger = true,
				keymap = {
					accept = "<C-\\>",
					next = "<C-]>",
					prev = "<C-[>",
					dismiss = false,
					accept_word = false,
					accept_line = false,
				},
			},
		})
	end,
}
