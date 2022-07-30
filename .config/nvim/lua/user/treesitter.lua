require('nvim-treesitter.configs').setup({
    ensure_installed = {"bash", "julia", "latex", "lua", "markdown", "python", "r", "vim"},
    sync_install = false,
    ignore_install = { "gleam" },

    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },

    indent = {
        enable = true,
    }
})
