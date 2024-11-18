local copilot = require("copilot")

copilot.setup({
	panel = {
		enabled = false,
	},
	suggestion = {
		enabled = true,
		auto_trigger = true,
		keymap = {
			accept = "<C-\\>",
			prev = "<C-[>",
			next = "<C-]>",
		},
	},
	filetypes = {
		["*"] = false,
		python = true,
		typescript = true,
		javascript = true,
		typescriptreact = true,
		javascriptreact = true,
		html = true,
		css = true,
		markdown = true,
		lua = true,
	},
})
