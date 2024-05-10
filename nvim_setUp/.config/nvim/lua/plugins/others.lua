-- others
local M = {
  "nvim-tree/nvim-web-devicons",
  "ThePrimeagen/vim-be-good",
  "nvim-lua/plenary.nvim",
  event = "VeryLazy",
}

function M.config()
  require "nvim-web-devicons"
end

return M

