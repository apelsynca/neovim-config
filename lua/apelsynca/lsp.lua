vim.lsp.enable({
	"lua_ls",
	"ruff",
	"pyright",
	"vtsls",
	"biome",
	"taplo",
	"emmet_language_server",
	"html",
	"cssls",
	"eslint",
	"clangd",
	"rust_analyzer",
	"tailwindcss",
})

-- server_lspconfig_name = server executable
local optional_lsp_servers = {
	bashls = "bash-language-server",
	yamlls = "yaml-language-server",
	typos_lsp = "typos-lsp",
}

for server_name, server_exe in pairs(optional_lsp_servers) do
	if vim.fn.executable(server_exe) > 0 then
		vim.lsp.enable(server_name)
	else
		local msg = string.format(
			"Executable '%s' for LSP server '%s' not found! LSP Server will not be enabled",
			server_exe,
			server_name
		)
		vim.notify(msg, vim.log.levels.WARN, { title = "Nvim-config" })
	end
end

-- Command like it was before
vim.api.nvim_create_user_command("LspInfo", "checkhealth vim.lsp", {
	desc = "Show LSP Info",
})

vim.api.nvim_create_user_command("LspRestart", "lsp restart", {
	desc = "Restart LSP",
})
