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
keymap.set("n", "n", "nzz") -- center next-searching 
keymap.set("n", "N", "nzz")
keymap.set("n", "*", "*zz")
keymap.set("n", "#", "#zz")


-- paste our contents without replace what’s in the register
keymap.set("x", "<leader>p", "\"_dP", { desc = "Paste without updating register" })

-- keep indenting or outdenting without needing to reselect
keymap.set("v", "<", "<gv", { desc = "Stay in visual mode during outdent" })
keymap.set("v", ">", ">gv", { desc = "Stay in visual mode during indent" })














































