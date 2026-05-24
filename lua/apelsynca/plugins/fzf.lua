require("fzf-lua").setup({
	keymap = {
		fzf = {
			["ctrl-q"] = "select-all+accept",
		},
	},
})

local map = vim.keymap.set

map("n", "<leader>ff", "<cmd>FzfLua files<cr>", { desc = "Find files" })
map("n", "<leader>fw", "<cmd>FzfLua live_grep<cr>", { desc = "Find live grep" })
map("n", "<leader>fb", "<cmd>FzfLua buffers<cr>", { desc = "Find open buffers" })
map("n", "<leader>fr", "<cmd>FzfLua resume<cr>", { desc = "Resume last picker" })
map("n", "<leader>fh", "<cmd>FzfLua helptags<cr>", { desc = "Find in help docs" })
map("n", "<leader>fc", "<cmd>FzfLua colorschemes<cr>")
