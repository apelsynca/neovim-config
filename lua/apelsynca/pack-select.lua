require("apelsynca.plugins.conform")
require("apelsynca.plugins.fzf")
require("apelsynca.plugins.lazygit")
require("apelsynca.plugins.lualine")
require("apelsynca.plugins.mason")
require("apelsynca.plugins.oil")
require("apelsynca.plugins.surround")
require("apelsynca.plugins.luasnippets")
require("apelsynca.plugins.blink")
require("apelsynca.plugins.ts-autotag")
require("apelsynca.plugins.colorizer")
require("apelsynca.plugins.textobjects")
require("apelsynca.plugins.opencode")

require("nvim-autopairs").setup({
	disable_filetype = { "TelescopePrompt", "spectre_panel", "snacks_picker_input" },
})

require("gruvbox").setup({
	transparent_mode = true,
})
vim.cmd.colorscheme("gruvbox")
