--M for module
local M = {
	-- colorscheme
	"rebelot/kanagawa.nvim",
	--immediately settup
	lazy = false,
	priority = 1000,
}

function M.config()
		vim.cmd.colorscheme "kanagawa-wave"
end

return M
--
