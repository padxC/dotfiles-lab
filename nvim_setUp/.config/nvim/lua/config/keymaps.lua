-- spacebar leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

---===---
local keymap = vim.keymap

-- buffers
keymap.set("n", "<leader>n", ":bn<cr>")
keymap.set("n", "<leader>p", ":bp<cr>")
keymap.set("n", "<leader>x", ":bd<cr>")

-- center cursor
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set("n", "n", "nzzzv") -- center next-searching 
keymap.set("n", "N", "nzzzv")

