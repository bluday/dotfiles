require("bufferline").setup {
    options = {
        color_icons = false,
        hover = {
            delay = 200,
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
        themable = true,
        truncate_names = true
    }
}
