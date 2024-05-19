require("config.launch")
require("config.options")
require("config.keymaps")
require("config.autocmds")
--  comment to unplug-ins

-- other stuffs
spec("plugins.colorscheme")
spec("plugins.others")
-- file navigation
spec("plugins.telescope")
spec("plugins.harpoon")
spec("plugins.nvim-tree")
-- lsp
spec("plugins.completion")
spec("plugins.mason")
spec("plugins.tree-sitter")
spec("plugins.lsp")

--obsidian note-taking
spec("plugins.obsidian")

require("config.nvim-lazy")
