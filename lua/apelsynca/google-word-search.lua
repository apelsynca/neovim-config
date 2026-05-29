local function google_word_search()
	-- Save current unnamed register content
	local old_reg = vim.fn.getreg('"')
	local old_reg_type = vim.fn.getregtype('"')

	-- Yank visual selection to unnamed register
	vim.cmd('normal! "vy"')
	local text = vim.fn.getreg('"')

	-- Restore the register
	vim.fn.setreg('"', old_reg, old_reg_type)

	-- Trim whitespace
	text = text:gsub("^%s+", ""):gsub("%s+$", "")
	if text == "" then
		return
	end

	local encoded = vim.uri_encode(text, "UTF-8")
	local url = "https://www.google.com/search?q=" .. encoded

	vim.ui.open(url)
end

vim.keymap.set("v", "gM", google_word_search, { desc = "Search visual selection on Google" })
