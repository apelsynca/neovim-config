require("nvim-treesitter-textobjects").setup({})

vim.keymap.set("n", "<leader>w", function()
	require("nvim-treesitter-textobjects.swap").swap_next("@parameter.inner")
end)

vim.keymap.set("n", "<leader>W", function()
	require("nvim-treesitter-textobjects.swap").swap_previous("@parameter.inner")
end)

-- @parameter.outer
