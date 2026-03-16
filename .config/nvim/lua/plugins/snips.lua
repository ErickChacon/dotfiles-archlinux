return {
    { 'L3MON4D3/LuaSnip',
    config = function() require('luasnip').config.set_config({
        history = false, region_check_events = "InsertEnter", })
    end },
    { 'saadparwaiz1/cmp_luasnip' },
    { 'ErickChacon/vim-snippets' },
}

