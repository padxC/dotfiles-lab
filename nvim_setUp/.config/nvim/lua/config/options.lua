---===---
local opt = vim.opt

-- appearance
opt.nu = true -- enable line numbers
opt.relativenumber = true -- relative line numbers
opt.scrolloff = 10
--opt.guicursor =

-- tabs & indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
vim.opt.expandtab = true -- convert tabs to spaces
opt.smartindent = true
opt.autoindent = true -- copy indent from current line when starting new one
opt.wrap = false -- let the line go, stop initializing new line when get out of view

-- search & settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- include mixed case
--opt.hlsearch = false -- hightlight

-- behaviour
--opt.hidden = true
--opt.errorbells = false
--opt.swapfile = false
--opt.backup = false
opt.mouse:append("a")

-- clipboard
opt.clipboard = "unnamedplus" -- use system clipboard as default register

-- split windows
opt.splitright = true -- split vertical window >
opt.splitbelow = true
