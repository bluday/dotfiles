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
        number = false,
        side = "left",
        signcolumn = "no",
        width = 32
    }
}
