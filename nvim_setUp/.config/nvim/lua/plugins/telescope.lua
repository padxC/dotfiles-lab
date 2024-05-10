local keymap = vim.keymap

local config = function()
	local telescope = require("telescope")
	telescope.setup({
		defaults = {
			mappings = {
				i = {
					["<C-n>"] = "move_selection_next",
					["<C-p>"] = "move_selection_previous",
				},
			},
		},
		pickers = {
			find_files = {
				theme = "dropdown",
				previewer = false,
				hidden = false,
			},
			live_grep = {
				theme = "dropdown",
				previewer = true,
			},
			buffers = {
				theme = "dropdown",
				previewer = false,
			},
		},
	})

	-- Set up key mappings after telescope.setup
	keymap.set("n", "<leader>ff", ":Telescope find_files<cr>")
	keymap.set("n", "<leader>f.", ":Telescope oldfiles<cr>")
	-- keymap.set("n", "<leader>fp", ":Telescope git_files<cr>")
	keymap.set("n", "<leader>fg", ":Telescope live_grep<cr>")
	keymap.set("n", "<leader>fw", ":Telescope grep_string<cr>") --[F]ind current [W]ord
	keymap.set("n", "<leader>fd", ":Telescope diagnostics<cr>")
	keymap.set("n", "<leader>fb", ":Telescope buffers<cr>")
end

return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.3",
	lazy = false,
	dependencies = { "nvim-lua/plenary.nvim" },
	config = config,
}
