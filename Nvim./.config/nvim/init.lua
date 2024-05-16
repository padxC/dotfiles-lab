require("config.launch")
require("config.options")
require("config.keymaps")
require("config.autocmds")
--  comment to unplug-ins

spec("plugins.whichkey")

-- other stuffs
spec("plugins.colorscheme")
spec("plugins.others")
-- file navigation
spec("plugins.telescope")
spec("plugins.harpoon")
spec("plugins.nvim-tree")

spec("plugins.mason")
spec("plugins.tree-sitter")
spec("plugins.lsp")

require("config.nvim-lazy")
