local cmp = require("blink.cmp")

cmp.build():wait(60000)
cmp.setup({
	appearance = { nerd_font_variant = "mono" },
	completion = { menu = { auto_show = true } },
	keymap = { preset = "default" },

	fuzzy = {
		implementation = "prefer_rust_with_warning",
	},

	sources = { default = { "lsp", "path", "buffer", "snippets" } },
	snippets = {
		expand = function(snippet)
			require("luasnip").lsp_expand(snippet)
		end,
	},
})

vim.lsp.config["*"] = {
	capabilities = require("blink.cmp").get_lsp_capabilities(),
}
