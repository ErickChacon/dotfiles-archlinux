require("tmux").setup({
    copy_sync = {
        enable = false,
    },
    navigation = {
        cycle_navigation = false,
        enable_default_keybindings = true,
    },
    resize = {
        enable_default_keybindings = false,
        resize_step_x = 5,
        resize_step_y = 5,
    }
})

local keymaps = require("tmux.keymaps")
keymaps.register("n", {
    ["<C-a>h"] = [[<cmd>lua require('tmux').resize_left()<cr>]],
    ["<C-a>j"] = [[<cmd>lua require('tmux').resize_bottom()<cr>]],
    ["<C-a>k"] = [[<cmd>lua require('tmux').resize_top()<cr>]],
    ["<C-a>l"] = [[<cmd>lua require('tmux').resize_right()<cr>]],
})
