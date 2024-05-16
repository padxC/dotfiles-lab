-- others
local M = {
  "nvim-lua/plenary.nvim",
  "nvim-tree/nvim-web-devicons",
  "ThePrimeagen/vim-be-good",
  event = "VeryLazy",
}

function M.config()
  require "nvim-web-devicons"
end

return M

