vim.pack.add({
	-- colorschemes
	"https://github.com/ellisonleao/gruvbox.nvim",
	"https://github.com/ThorstenRhau/token",
	"https://github.com/oskarnurm/koda.nvim",

	"https://github.com/stevearc/oil.nvim",
	"https://github.com/nvim-lualine/lualine.nvim",
	"https://github.com/ibhagwan/fzf-lua",
	"https://github.com/kylechui/nvim-surround",
	"https://github.com/kdheepak/lazygit.nvim",
	"https://github.com/lewis6991/gitsigns.nvim",
	"https://github.com/mason-org/mason.nvim",
	"https://github.com/stevearc/conform.nvim",
	"https://github.com/windwp/nvim-autopairs",
	{ src = "https://github.com/nvim-tree/nvim-web-devicons", tag = "nerd-v3.2-compat" },
	"https://github.com/neovim/nvim-lspconfig",
	"https://github.com/folke/which-key.nvim",
	"https://github.com/saghen/blink.lib",
	{ src = "https://github.com/saghen/blink.cmp" },
	"https://github.com/L3MON4D3/LuaSnip",
	"https://github.com/rafamadriz/friendly-snippets",
	"https://github.com/windwp/nvim-ts-autotag",
	"https://github.com/nvim-treesitter/nvim-treesitter",
	"https://github.com/nvim-treesitter/nvim-treesitter-textobjects",
	"https://github.com/MeanderingProgrammer/render-markdown.nvim",
	"https://github.com/catgoose/nvim-colorizer.lua",
	"https://github.com/winston0410/range-highlight.nvim",
	"https://github.com/sindrets/diffview.nvim",
	{
		src = "https://github.com/nickjvandyke/opencode.nvim",
		version = vim.version.range("*"),
	},

	"https://github.com/nvim-lua/plenary.nvim",
	{
		src = "https://github.com/folke/todo-comments.nvim",
		dependencies = { "nvim-lua/plenary.nvim" },
	},
})

-- command to update
vim.api.nvim_create_user_command("PackUpdate", function()
	vim.pack.update()
end, {})

-- also list of shit that should be installed from Mason
-- NOT web:
-- clang-format clang stylua ruff taplo pyright
-- web:
-- prettierd eslint-lsp emmet-language-server typescript-language-server tailwindcss-language-server
