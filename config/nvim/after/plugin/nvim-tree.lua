vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("nvim-tree").setup {
    renderer = {
        icons = {
            web_devicons = {
                file = {
                    color = true,
                    enable = true
                },
                folder = {
                    color = true,
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
        side = "left",
        signcolumn = "no",
        width = 32
    },
}
