local configs = require("plugins.configs.lspconfig")
local on_attach = configs.on_attach
local capabilities = configs.capabilities

---@diagnostic disable-next-line: different-requires
local lspconfig = require("lspconfig")
-- Does not contain lua because it is configured with NvChad by default
local servers = { "tsserver", "pyright", "eslint" }
local servers_with_formatting = { "ruff_lsp" }

-- Setup servers without formatting
for _, lsp in ipairs(servers) do
	lspconfig[lsp].setup({
		on_attach = on_attach,
		capabilities = capabilities,
	})
end

-- Setup servers with formatting
for _, lsp in ipairs(servers_with_formatting) do
	lspconfig[lsp].setup({
		on_attach = function(client, bufnr)
			on_attach(client, bufnr)
			client.server_capabilities.documentFormattingProvider = true
			client.server_capabilities.documentRangeFormattingProvider = true
		end,
		capabilities = capabilities,
	})
end
