
local M = {
  "nvim-telescope/telescope.nvim",
  dependencies = { { "nvim-telescope/telescope-fzf-native.nvim", build = "make", lazy = true } },
}

function M.config()
  -- Key mappings for Telescope
  vim.api.nvim_set_keymap("n", "<leader>sb", "<cmd>Telescope buffers previewer=false<cr>", { noremap = true, silent = true, desc = "[S]earch Buffers" })
  vim.api.nvim_set_keymap("n", "<leader>sf", "<cmd>Telescope find_files<cr>", { noremap = true, silent = true, desc = "[S]earch Files" })
  vim.api.nvim_set_keymap("n", "<leader>sg", "<cmd>Telescope live_grep<cr>", { noremap = true, silent = true, desc = "[S]earch Words" })
  vim.api.nvim_set_keymap("n", "<leader>sh", "<cmd>Telescope help_tags<cr>", { noremap = true, silent = true, desc = "[S]earch Helps" })
  vim.api.nvim_set_keymap("n", "<leader>sr", "<cmd>Telescope oldfiles<cr>", { noremap = true, silent = true, desc = "[S]earch [R]ecent Files" })

  local icons = require "plugins.icons"
  local actions = require "telescope.actions"

  require("telescope").setup {
    defaults = {
      prompt_prefix = icons.ui.Telescope .. " ",
      selection_caret = icons.ui.Forward .. " ",
      entry_prefix = "   ",
      initial_mode = "insert",
      selection_strategy = "reset",
      path_display = { "smart" },
      color_devicons = true,
      vimgrep_arguments = {
        "rg",
        "--color=never",
        "--no-heading",
        "--with-filename",
        "--line-number",
        "--column",
        "--smart-case",
        "--hidden",
        "--glob=!.git/",
      },
      mappings = {
        i = {
          ["<C-c>"] = actions.close,
        },
      },
    },
    pickers = {
      live_grep = {
        theme = "dropdown",
      },
      grep_string = {
        theme = "dropdown",
      },
      find_files = {
        theme = "dropdown",
        previewer = false,
      },
      buffers = {
        theme = "dropdown",
        previewer = false,
        initial_mode = "normal",
        mappings = {
          i = { -- delete buffer
            ["<dd>"] = actions.delete_buffer,
          },
          n = {
            ["<dd>"] = actions.delete_buffer,
          },
        },
      },
      planets = {
        show_pluto = true,
        show_moon = true,
      },
      colorscheme = {
        enable_preview = true,
      },
      lsp_references = {
        theme = "dropdown",
        initial_mode = "normal",
      },
      lsp_definitions = {
        theme = "dropdown",
        initial_mode = "normal",
      },
      lsp_declarations = {
        theme = "dropdown",
        initial_mode = "normal",
      },
      lsp_implementations = {
        theme = "dropdown",
        initial_mode = "normal",
      },
    },
    extensions = {
      fzf = {
        fuzzy = true, -- false will only do exact matching
        override_generic_sorter = true, -- override the generic sorter
        override_file_sorter = true, -- override the file sorter
        case_mode = "smart_case", -- or "ignore_case" or "respect_case"
      },
    },
  }
end

return M
