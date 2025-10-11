local indent_width = 4

vim.opt.background = dark
vim.opt.number = true
vim.opt.swapfile = false
vim.opt.termguicolors = true
vim.opt.wrap = false

vim.opt.fillchars:append { vert = " " }

-- Tabs versus spaces
vim.opt.expandtab = true
vim.opt.shiftwidth = indent_width
vim.opt.tabstop = indent_width
