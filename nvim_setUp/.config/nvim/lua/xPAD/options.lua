
local opt = vim.opt

opt.nu = true -- enable line numbers
opt.relativenumber = true -- relative line numbers

-- tabs & indentation
opt.autoindent = true -- copy indent from current line when starting new one

-- search & settings
opt.ignorecase = true -- ignore case when searching
opt.smartcase = true -- include mixed case

-- clipboard
opt.clipboard = "unnamedplus" -- use system clipboard as default register

-- split windows
opt.splitright = true -- split vertical window >
opt.splitbelow = true 
