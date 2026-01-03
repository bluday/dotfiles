local cmp = require("cmp")

cmp.setup({
    snippet = {
        expand = function(args)
            vim.fn["vsnip#anonymous"](args.body)

            -- vim.snippet.expand(args.body) -- For native neovim snippets (Neovim v0.10+)
        end
    },
    window = {
        -- completion    = cmp.config.window.bordered(),
        -- documentation = cmp.config.window.bordered()
    },
    mapping = cmp.mapping.preset.insert({
        ["<C-b>"]     = cmp.mapping.scroll_docs(-4),
        ["<C-f>"]     = cmp.mapping.scroll_docs(4),
        ["<C-Space>"] = cmp.mapping.complete(),
        ["<C-e>"]     = cmp.mapping.abort(),
        -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
        ["<CR>"] = cmp.mapping.confirm({ select = true })
    }),
    sources = cmp.config.sources(
        {
            { name = "nvim_lsp" },
            { name = "vsnip" }
        },
        {
            { name = "buffer" }
        }
    )
})
