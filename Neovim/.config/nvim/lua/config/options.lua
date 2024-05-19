---===---
local opt = vim.opt

-- scrolling & appearance
opt.number = true -- enable line numbers
opt.relativenumber = true -- relative line numbers
opt.scrolloff = 8
opt.signcolumn = "yes"
--opt.colorcolumn = "80"
--opt.guicursor = " "

-- tabs & indentation
opt.tabstop = 2
opt.shiftwidth = 2
opt.softtabstop = 2
opt.expandtab = true -- convert tabs to spaces
opt.smartindent = true
--opt.autoindent = true -- copy indent from current line when starting new one
opt.wrap = false -- let the line go, stop initializing new line when get out of view

-- search & settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- include mixed case
--opt.hlsearch = false -- hightlight
opt.incsearch = true

-- behaviour
--opt.hidden = true
--opt.errorbells = false
opt.swapfile = false
opt.backup = false
opt.undofile = true
opt.mouse:append("a")

---
opt.inccommand = "split"

-- clipboard
opt.clipboard = "unnamedplus" -- use system clipboard as default register

-- split windows
opt.splitright = true -- split vertical window >
opt.splitbelow = true

-- for obsidian, markdown files
opt.conceallevel = 2
