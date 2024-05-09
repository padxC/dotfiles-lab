local keymap = vim.keymap

return {
	"nvim-tree/nvim-tree.lua",
	lazy = false,
	requires = {
		"nvim-tree/nvim-web-devicons",
	},
	config = function()
		vim.cmd([[hi NvimTreeNormal guibg=NONE ctermbg=None]])

		keymap.set("n", "<leader>e", ":NvimTreeFindFileToggle<cr>")

		require("nvim-tree").setup({})
	end,
}
