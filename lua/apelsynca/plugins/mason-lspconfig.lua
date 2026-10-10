require("mason-lspconfig").setup({
	automatic_enable = false,
	ensure_installed = {
		"lua_ls",
		"ruff",
		"pyright",
		"vtsls",
		"biome",
		"taplo",
		"emmet_language_server",
		"html",
		"cssls",
		"tailwindcss",
	},
})
