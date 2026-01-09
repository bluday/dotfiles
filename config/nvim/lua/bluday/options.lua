local INDENT_WIDTH = 4

local global  = vim.g
local options = vim.opt

-- General
options.background    = dark
options.fileformat    = "unix"
options.number        = true
options.swapfile      = false
options.termguicolors = true
options.visualbell    = true
options.wrap          = false

options.fillchars:append({ vert = " " })

-- Spaces versus tabs
options.expandtab   = true
options.shiftwidth  = INDENT_WIDTH
options.softtabstop = INDENT_WIDTH
options.tabstop     = INDENT_WIDTH

-- Disable netrw in favor of `nvim-tree`
global.loaded_netrw       = 1
global.loaded_netrwPlugin = 1

global.mapleader      = " "
global.maplocalleader = "\\"

-- Neovide
if global.neovide then
    global.neovide_floating_shadow      = false
    global.neovide_remember_window_size = true
end
