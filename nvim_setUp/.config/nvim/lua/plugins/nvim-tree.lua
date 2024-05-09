local keymap = vim.keymap

return {
    "nvim-tree/nvim-tree.lua",
    lazy = false,
    config = function()
        keymap.set("n", "<leader>e", ":NvimTreeFindFileToggle<cr>")
        require("nvim-tree").setup({
            filters = {
                dotfiles = false,
            },
            view = {
                adaptive_size = true,
            },
        })
    end,
}
