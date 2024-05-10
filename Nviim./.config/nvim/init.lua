require("config.launch")
require("config.options")
require("config.keymaps")
require("config.autocmds")
--  comment to unplug-ins
spec("plugins.colorscheme")
spec("plugins.others")
spec("plugins.tree-sitter")
spec("plugins.telescope")
spec("plugins.nvim-tree")
spec("plugins.whichkey")


require("config.nvim-lazy")
