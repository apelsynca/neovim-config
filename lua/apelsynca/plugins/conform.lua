local prettier = { "prettierd", "prettier", stop_after_first = true }

require("conform").setup({
	formatters_by_ft = {
		lua = { "stylua" },
		python = { "ruff_fix", "ruff_format", "ruff_organize_imports" },
		toml = { "taplo" },
		json = { "jq" },
		javascript = prettier,
		javascriptreact = prettier,
		typescript = prettier,
		typescriptreact = prettier,
		css = prettier,
		scss = prettier,
		less = prettier,
		html = prettier,
		markdown = prettier,
	},
	format_on_save = {
		-- These options will be passed to conform.format()
		timeout_ms = 750,
		lsp_format = "fallback",
	},
})
