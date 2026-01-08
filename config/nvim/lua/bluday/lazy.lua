local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local out = vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "--branch=stable",
        "https://github.com/folke/lazy.nvim.git",
        lazypath
    })

    if vim.v.shell_error ~= 0 then
        vim.api.nvim_echo({ { "Error:\n", "ErrorMsg" } }, true, {})

        vim.fn.getchar()

        os.exit(1)
    end
end

vim.opt.rtp:prepend(lazypath)

vim.g.mapleader      = " "
vim.g.maplocalleader = "\\"

require("lazy").setup {
    spec = {
        {
            "akinsho/bufferline.nvim",
            dependencies = {
                "projekt0n/github-nvim-theme"
            }
        },
        {
            "neovim/nvim-lspconfig",
            dependencies = {
                "hrsh7th/cmp-nvim-lsp",
                "hrsh7th/cmp-buffer",
                "hrsh7th/cmp-path",
                "hrsh7th/cmp-cmdline",
                "hrsh7th/nvim-cmp",
                "hrsh7th/cmp-vsnip",
                "hrsh7th/vim-vsnip"
            }
        },
        {
            "GustavEikaas/easy-dotnet.nvim",
            dependencies = {
                "nvim-lua/plenary.nvim",
                "nvim-telescope/telescope.nvim"
            }
        },
        {
            "tpope/vim-fugitive"
        },
        {
            "projekt0n/github-nvim-theme",
            name = "github-theme",
            lazy = false
        },
        {
            "onsails/lspkind.nvim"
        },
        {
            "nvim-lualine/lualine.nvim",
            dependencies = {
                "nvim-tree/nvim-web-devicons"
            }
        },
        {
            "L3MON4D3/LuaSnip",
            build   = "make install_jsregexp",
            version = "v2.*"
        },
        {
            "mfussenegger/nvim-dap"
        },
        {
            "nvim-tree/nvim-tree.lua",
            dependencies = {
                "nvim-tree/nvim-web-devicons"
            }
        },
        {
            "mrcjkb/rustaceanvim",
            lazy    = false,
            version = "^6"
        },
        {
            "nvim-telescope/telescope.nvim",
            dependencies = {
                "nvim-lua/plenary.nvim"
            },
            tag = "0.1.8"
        },
        {
            "akinsho/toggleterm.nvim",
            config  = true,
            version = "*"
        },
        {
            "xiyaowong/transparent.nvim",
            lazy = true
        },
        {
            "Mofiqul/vscode.nvim"
        },
        {
            "folke/zen-mode.nvim"
        }
    }
}
