local INDENT_WIDTH = 4

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
vim.o.shiftwidth = INDENT_WIDTH
vim.o.tabstop    = INDENT_WIDTH

if vim.g.neovide then
    vim.g.neovide_floating_shadow      = false
    vim.g.neovide_remember_window_size = true
end
