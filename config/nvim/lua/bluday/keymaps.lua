local map = vim.keymap.set

local telescope_builtin = require("telescope.builtin")

map("n", "<Space>",   "<Nop>")
map("n", "<leader>e", "<cmd>NvimTreeToggle<CR>")
map("n", "<leader>ff", telescope_builtin.find_files)
map("n", "<leader>t", "<cmd>term<CR>")
map("n", "<leader>x", "<cmd>qa!<CR>")
map("n", "<leader>z", "<cmd>ZenMode<CR")
map("n", "<Tab>",     "<cmd>bn<CR>")
map("n", "<S-Tab>",   "<cmd>bp<CR>")

map("t", "<leader>t", "<C-\\><C-n>")

if vim.g.neovide then
    map({ "n", "v" }, "<C-+>", ":lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor + 0.1<CR>")
    map({ "n", "v" }, "<C-->", ":lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor - 0.1<CR>")
    map({ "n", "v" }, "<C-0>", ":lua vim.g.neovide_scale_factor = 1<CR>")
end
