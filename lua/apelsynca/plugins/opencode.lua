vim.g.opencode_opts = {
	-- Your configuration, if any; goto definition on the type for details
}

-- Recommended/example keymaps
vim.keymap.set({ "n", "x" }, "<S-a>", function()
	require("opencode").ask("@this: ")
end, { desc = "Ask OpenCode…" })
vim.keymap.set({ "n", "x" }, "<C-x>", function()
	require("opencode").select()
end, { desc = "Select OpenCode…" })
vim.keymap.set({ "n", "x" }, "go", function()
	return require("opencode").operator("@this ")
end, { desc = "Append range to OpenCode", expr = true })
vim.keymap.set({ "n" }, "goo", function()
	return require("opencode").operator("@this ") .. "_"
end, { desc = "Append line to OpenCode", expr = true })
