
-- Mode completion options
vim.cmd [[
set completeopt=menu,menuone,noselect
]]

-- Custom completion options
local cmp = require("cmp")
local luasnip = require("luasnip")

cmp.setup({
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body)
        end,
    },
    mapping = {
        ['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
        ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
        ['<C-Space>'] = cmp.mapping(cmp.mapping.complete(), { 'i', 'c' }),
        ['<C-y>'] = cmp.config.disable,
        ['<C-h>'] = cmp.mapping({
            i = cmp.mapping.abort(),
            c = cmp.mapping.close(),
        }),
        ['<C-l>'] = cmp.mapping(function(fallback)
            if luasnip.expandable() then
                luasnip.expand()
            elseif cmp.visible() then
                cmp.confirm({ select = true })
            end
        end, { "i", "s" }),
        ['<C-j>'] = cmp.mapping(function(fallback)
            if luasnip.jumpable(1) then
                luasnip.jump(1)
            elseif cmp.visible() then
                cmp.select_next_item()
            -- else
            --     fallback()
            end
        end, { "i", "s" }),
        ['<C-k>'] = cmp.mapping(function(fallback)
            if luasnip.jumpable(-1) then
                luasnip.jump(-1)
            elseif cmp.visible() then
                cmp.select_prev_item()
            -- else
            --     fallback()
            end
        end, { "i", "s" }),
    },
    sources = {
        { name = 'luasnip'},
        { name = "buffer", keyword_length = 5 },
        { name = "path" },
    }
})

-- Load snippets
require("luasnip.loaders.from_snipmate").lazy_load()
