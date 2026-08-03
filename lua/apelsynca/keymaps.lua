local map = vim.keymap.set

map("n", "<leader>x", "<CMD>bd<CR>", { desc = "close buffer" })

map("n", "<Esc>", "<CMD>nohl<CR>", { desc = "Clear search hl", silent = true })

map("n", ";", ":")

-- Move lines up/down (basically mini move)
map("n", "<A-Down>", ":m .+1<CR>", { desc = "Move line down", silent = true })
map("n", "<A-j>", ":m .+1<CR>", { desc = "Move line down", silent = true })
map("n", "<A-Up>", ":m .-2<CR>", { desc = "Move line up", silent = true })
map("n", "<A-k>", ":m .-2<CR>", { desc = "Move line up", silent = true })
map("i", "<A-Down>", "<Esc>:m .+1<CR>==gi", { desc = "Move line down", silent = true })
map("i", "<A-j>", "<Esc>:m .+1<CR>==gi", { desc = "Move line down", silent = true })
map("i", "<A-Up>", "<Esc>:m .-2<CR>==gi", { desc = "Move line up", silent = true })
map("i", "<A-k>", "<Esc>:m .-2<CR>==gi", { desc = "Move line up", silent = true })
map("v", "<A-Down>", ":m '>+1<CR>gv=gv", { desc = "Move line down", silent = true })
map("v", "<A-j>", ":m '>+1<CR>gv=gv", { desc = "Move line down", silent = true })
map("v", "<A-Up>", ":m '<-2<CR>gv=gv", { desc = "Move line up", silent = true })
map("v", "<A-k>", ":m '<-2<CR>gv=gv", { desc = "Move line up", silent = true })

-- Delete text without coping to clipboard
map({ "n", "x" }, "x", '"_x')
map({ "n", "x" }, "X", '"_X')
