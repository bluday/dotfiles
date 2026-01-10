require("bufferline").setup {
    options = {
        color_icons = false,
        hover = {
            delay = 0,
            enabled = true,
            reveal = { "close" }
        },
        mode = "buffers",
        offsets = {
            {
                filetype = "NvimTree",
                separator = false,
                text_align = "left"
            }
        },
        separator_style = "thin",
        themable = false,
        truncate_names = true
    }
}
