vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup {
    renderer = {
        icons = {
            web_devicons = {
                file = {
                    color = false,
                    enable = true
                },
                folder = {
                    color = false,
                    enable = true
                }
            }
        },
    },
    sort = {
        sorter = "case_sensitive" 
    },
    sync_root_with_cwd = true,
    view = {
        width = 32,
        side = "left",
        signcolumn = "no"
    },
}
