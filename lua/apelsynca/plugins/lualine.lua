local gruvbox_theme_custom = require("lualine.themes.gruvbox")
gruvbox_theme_custom.normal.c.bg = "none"
gruvbox_theme_custom.insert.c.bg = "none"
gruvbox_theme_custom.visual.c.bg = "none"
gruvbox_theme_custom.command.c.bg = "none"

local diff = {
	"diff",
	colored = true,
}

local filename = {
	"filename",
	file_status = true,
	path = 0,
}

require("lualine").setup({
	icons_enabled = true,
	sections = {
		lualine_a = { "mode" },
		lualine_b = {},
		lualine_c = {
			filename,
		},
		lualine_x = { "filetype" },
		lualine_y = { diff },
		lualine_z = { "location", { require("opencode").statusline } },
	},
	options = {
		theme = gruvbox_theme_custom,
		section_separators = "",
		component_separators = "",
	},
})
