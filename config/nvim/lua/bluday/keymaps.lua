local map = vim.keymap.set

map("n", "<S-Tab>",    "<Cmd>bp<CR>")
map("n", "<Space>",    "<Nop>")
map("n", "<Tab>",      "<Cmd>bn<CR>")
map("n", "<leader>e",  "<Cmd>NvimTreeToggle<CR>")
map("n", "<leader>ff", "<Cmd>Telescope find_files<CR>")
map("n", "<leader>s",  "<Cmd>w<CR>")
-- map("n", "<leader>tt", "<Cmd>ToggleTerm<CR>")
map("n", "<leader>x",  "<Cmd>qa!<CR>")
map("n", "<leader>z",  "<Cmd>ZenMode<CR>")

if vim.g.neovide then
    local scale_factor_modes = { "n", "v", "t" }

    map(scale_factor_modes, "<C-+>", ":lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor + 0.1<CR>")
    map(scale_factor_modes, "<C-->", ":lua vim.g.neovide_scale_factor = vim.g.neovide_scale_factor - 0.1<CR>")
    map(scale_factor_modes, "<C-0>", ":lua vim.g.neovide_scale_factor = 1<CR>")
end
