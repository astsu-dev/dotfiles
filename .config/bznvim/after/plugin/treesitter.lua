local configs = require("nvim-treesitter.configs")
local parser_config = require("nvim-treesitter.parsers").get_parser_configs()

-- Adds filetype recognition for .tact files
parser_config.tact = {
	install_info = {
		url = "~/.local/git/tree-sitter-tact", -- a path to the cloned repo
		files = { "src/parser.c" },
		branch = "main",
		generate_requires_npm = false,
		requires_generate_from_grammar = false,
	},
}
-- Adds filetype recognition for .tact files
vim.filetype.add({
	extension = {
		tact = "tact",
	},
})

configs.setup({
	ensure_installed = {
		"javascript",
		"typescript",
		"tsx",
		"jsdoc",
		"lua",
		"python",
		"json",
		"yaml",
		"html",
		"css",
		"toml",
		"go",
		"tact",
		"vimdoc",
	},
	auto_install = false,
	sync_install = false,
	highlight = { enable = true },
	indent = { enable = true },
})

require("nvim-ts-autotag").setup()
