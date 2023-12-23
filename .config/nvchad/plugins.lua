local plugins = {
	{
		"neovim/nvim-lspconfig",
		dependencies = {
			"jose-elias-alvarez/null-ls.nvim",
			config = function()
				require("custom.configs.null-ls")
			end,
		},
		config = function()
			require("plugins.configs.lspconfig")
			require("custom.configs.lspconfig")
		end,
	},
	{
		"williamboman/mason.nvim",
		opts = {
			ensure_installed = {
				"lua-language-server",
				"typescript-language-server",
				"pyright",
				"stylua",
				"eslint-lsp",
				"ruff-lsp",
			},
		},
	},
	{
		"nvim-treesitter/nvim-treesitter",
		opts = {
			ensure_installed = {
				"javascript",
				"typescript",
				"tsx",
				"jsdoc",
				"python",
				"vim",
				"lua",
				"html",
				"css",
				"json",
				"yaml",
				"toml",
				"bash",
			},
		},
	},
	{
		"nvim-tree/nvim-tree.lua",
		opts = {
			view = {
				adaptive_size = true,
			},
		},
	},
	{
		"zbirenbaum/copilot.lua",
		cmd = "Copilot",
		event = "InsertEnter",
		ft = { "javascript", "typescript", "tsx", "python", "lua" },
		config = function()
			require("custom.configs.copilot")
		end,
	},
	{
		"NvChad/nvterm",
		opts = {
			terminals = {
				type_opts = {
					float = {
						row = 0.075,
						col = 0.1,
						width = 0.8,
						height = 0.8,
					},
				},
			},
		},
	},
}

return plugins
