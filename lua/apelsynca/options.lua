local o = vim.opt

o.wrap = false
o.swapfile = false -- Don't create swap files

vim.g.mapleader = " "
vim.g.maplocalleader = " "

o.termguicolors = true
o.number = true
o.relativenumber = true
o.undofile = true

o.expandtab = true
o.shiftwidth = 2
o.tabstop = 2
o.softtabstop = 2
o.smartindent = true
o.autoindent = true

o.splitright = true
o.splitbelow = true

-- visual settings
o.showmatch = true -- Hightlight matching brackets
o.cursorline = false

o.ignorecase = true
o.smartcase = true
o.hlsearch = true
o.incsearch = true

-- Behaviour settings
o.mouse = "a"
o.encoding = "UTF-8" -- Set default encoding
o.signcolumn = "yes"
o.clipboard = "unnamedplus"

o.termguicolors = true

o.cmdheight = 0 -- hiddes command line unless used (carefull!, people say it is bad todo that...)
