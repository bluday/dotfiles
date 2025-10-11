require("bufferline").setup {
    options = {
        color_icons = false,
        hover = {
            enabled = true,
            delay = 200,
            reveal = {"close"}
        },
        mode = "buffers",
        offsets = {
            {
                filetype = "NvimTree",
                text_align = "left",
                separator = true
            }
        },
        separator_style = "thin",
        themable = false,
        truncate_names = true
    }
}
