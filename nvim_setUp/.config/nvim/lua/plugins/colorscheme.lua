return {
	-- colorscheme
	"rebelot/kanagawa.nvim",
	--immediately settup
	lazy = false,
	priority = 1000,
	config = function()
		vim.cmd("colorscheme kanagawa-wave")
	end,
}

--
