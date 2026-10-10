local prettier = { "prettierd", "prettier", stop_after_first = true }
local biome = { "biome-check" }

require("conform").setup({
	formatters_by_ft = {
		c = { "clang-format" },
		lua = { "stylua" },
		python = { "ruff_fix", "ruff_format", "ruff_organize_imports" },
		toml = { "taplo" },
		json = biome,
		javascript = biome,
		javascriptreact = biome,
		typescript = biome,
		typescriptreact = biome,
		css = biome,
		scss = biome,
		less = biome,
		html = prettier,
		markdown = prettier,
	},
	format_on_save = {
		-- These options will be passed to conform.format()
		timeout_ms = 750,
		lsp_format = "fallback",
	},
})
