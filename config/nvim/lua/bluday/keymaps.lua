local telescope_builtin = require("telescope.builtin")

local defaults = { noremap = true, silent = true }

local map = vim.keymap.set

map("n", "<Space>", "<Nop>", defaults)

map("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", defaults)

map("n", "<leader>ff", telescope_builtin.find_files, defaults)

map("n", "<leader>t", "<cmd>term<CR>", defaults)

map("n", "<leader>x", "<cmd>qa!<CR>", defaults)

map("n", "<leader>z", "<cmd>ZenMode<CR>", defaults)

map("n", "<Tab>",   "<cmd>bn<CR>", defaults)
map("n", "<S-Tab>", "<cmd>bp<CR>", defaults)

map("t", "<leader>t", "<C-\\><C-n>", defaults)
