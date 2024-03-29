require('nvim-treesitter.configs').setup({
    ensure_installed = {
        "bash", "julia", "latex", "lua", "markdown", "markdown_inline", "python", "r", "vim", "yaml"
    },
    sync_install = false,

    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },

    indent = {
        enable = true,
    }
})
