local cmp = require("cmp")

cmp.register_source(
    "easy-dotnet",
    require("easy-dotnet").package_completion_source
)

cmp.setup {
    snippet = {
        expand = function(args)
            vim.fn["vsnip#anonymous"](args.body)

            require('luasnip').lsp_expand(args.body)

            vim.snippet.expand(args.body)
        end
    },
    window = {
        completion    = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered()
    },
    mapping = cmp.mapping.preset.insert({
        ["<C-b>"]     = cmp.mapping.scroll_docs(-4),
        ["<C-e>"]     = cmp.mapping.abort(),
        ["<C-f>"]     = cmp.mapping.scroll_docs(4),
        ["<C-Space>"] = cmp.mapping.complete(),
        --
        -- Accept currently selected item.
        --
        -- Set `select` to `false` to only confirm explicitly selected items.
        --
        ["<CR>"] = cmp.mapping.confirm({ select = true })
    }),
    sources = cmp.config.sources(
        {
            { name = "nvim_lsp" },
            { name = "vsnip" },
            { name = "luasnip" },
            { name = "easy-dotnet" }
        },
        {
            { name = "buffer" }
        }
    )
}
