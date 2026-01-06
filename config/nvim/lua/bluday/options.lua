local constants = require("constants")

vim.o.background    = dark
vim.o.fileformat    = "unix"
vim.o.number        = true
vim.o.swapfile      = false
vim.o.termguicolors = true
vim.o.visualbell    = true
vim.o.wrap          = false

vim.opt.fillchars:append {
    vert = " "
}

vim.o.expandtab  = true
vim.o.shiftwidth = constants.INDENT_WIDTH
vim.o.tabstop    = constants.INDENT_WIDTH

vim.g.loaded_netrw       = 1
vim.g.loaded_netrwPlugin = 1

if vim.g.neovide then
    vim.g.neovide_floating_shadow      = false
    vim.g.neovide_remember_window_size = true
end
