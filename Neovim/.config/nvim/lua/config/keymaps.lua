-- spacebar leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

---===---
local keymap = vim.keymap

-- buffers
--keymap.set("n", "<leader>n", ":bn<cr>")
--keymap.set("n", "<leader>p", ":bp<cr>")
--keymap.set("n", "<leader>x", ":bd<cr>")

-- there are builtin keymaps for this now, but I like that it shows
keymap.set("n", "]d", vim.diagnostic.goto_next)
keymap.set("n", "[d", vim.diagnostic.goto_prev)

-- basic movement keybinds
keymap.set("n", "<c-j>", "<c-w><c-j>")
keymap.set("n", "<c-k>", "<c-w><c-k>")
keymap.set("n", "<c-l>", "<c-w><c-l>")
keymap.set("n", "<c-h>", "<c-w><c-h>")

-- center cursor
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set("n", "n", "nzz") -- center next-searching 
keymap.set("n", "N", "nzz")

-- paste our contents without replace what’s in the register
keymap.set("x", "<leader>p", "\"_dP", { desc = "Paste without updating register" })

-- keep indenting or outdenting without needing to reselect
keymap.set("v", "<", "<gv", { desc = "Stay in visual mode during outdent" })
keymap.set("v", ">", ">gv", { desc = "Stay in visual mode during indent" })

-- Easily hit escape in terminal mode.
--vim.keymap.set("t", "<esc><esc>", "<c-\\><c-n>")

-- Open a terminal at the bottom of the screen with a fixed height.
vim.keymap.set("n", "<leader>st", function()
  vim.cmd.new()
  vim.cmd.wincmd "J"
  vim.api.nvim_win_set_height(0, 12)
  vim.wo.winfixheight = true
  vim.cmd.term()
end)













































