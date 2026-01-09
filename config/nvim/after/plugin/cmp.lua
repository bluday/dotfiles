local cmp = require("cmp")

cmp.setup {
    mapping = {
        ["<C-b>"]     = cmp.mapping.scroll_docs(-4),
        ["<C-e>"]     = cmp.mapping.abort(),
        ["<C-f>"]     = cmp.mapping.scroll_docs(4),
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<CR>"]      = cmp.mapping.confirm({ select = true })
    },
    snippet = {
        expand = function(args)
            vim.fn["vsnip#anonymous"](args.body)
        end
    },
    sources = {
        { name = "nvim_lsp" },
        { name = "vsnip" },
        { name = "path" },
        { name = "buffer" }
    }
}
