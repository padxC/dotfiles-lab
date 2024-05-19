
local M = {
  "epwalsh/obsidian.nvim",
  version = "*",
  event = "VeryLazy",
  ft = "markdown",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
}

function M.config()
  require("obsidian").setup({
    workspaces = {
      {
        name = "2nd dimension",
        path = "/home/hiiii/2nd Dimension",
      },
    },
    notes_subdir = "1- Main Notes",
    new_notes_location = "notes_subdir",
    disable_frontmatter = true,
    templates = {
      folder = "5- Templates",
      date_format = "%y-%m-%d",
      time_format = "%H:%M:%S",
    },
    completion = {
      nvim_cmp = true,
      min_chars = 2,
    }
  })

  -- Setup key mappings
  local opts = { noremap = true, silent = true }
  vim.api.nvim_set_keymap('n', '<leader>oo', '<cmd>ObsidianOpen<CR>', opts)
  vim.api.nvim_set_keymap('n', '<leader>ot', '<cmd>ObsidianTemplate<CR>', opts)
  vim.api.nvim_set_keymap('n', '<leader>on', '<cmd>ObsidianNew<CR>', opts)
end

return M
