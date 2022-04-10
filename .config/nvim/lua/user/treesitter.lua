require('nvim-treesitter.configs').setup({
    -- One of "all", "maintained" (parsers with maintainers), or a list of languages
    ensure_installed = "maintained",
    sync_install = false,

    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
        -- disable = { "r" }
    },

    indent = {
        enable = true,
    }
})
