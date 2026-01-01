local map = vim.keymap.set

local telescope_builtin = require("telescope.builtin")

map("n", "<Space>",   "<Nop>")
map("n", "<leader>e", "<Cmd>NvimTreeToggle<CR>")
map("n", "<leader>ff", telescope_builtin.find_files)
map("n", "<leader>s", "<Cmd>w<CR>")
map("n", "<leader>t", "<Cmd>term<CR>")
map("n", "<leader>x", "<Cmd>qa!<CR>")
map("n", "<leader>z", "<Cmd>ZenMode<CR>")
map("n", "<Tab>",     "<Cmd>bn<CR>")
map("n", "<S-Tab>",   "<Cmd>bp<CR>")

map("t", "<leader>t", "<C-\\><C-n>")

if vim.g.neovide then
    map({ "n", "v" }, "<C-+>", ":lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor + 0.1<CR>")
    map({ "n", "v" }, "<C-->", ":lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor - 0.1<CR>")
    map({ "n", "v" }, "<C-0>", ":lua vim.g.neovide_scale_factor = 1<CR>")
end
