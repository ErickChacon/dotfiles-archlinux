require("tmux").setup({
    copy_sync = {
        enable = false,
    },
    navigation = {
        cycle_navigation = false,
        enable_default_keybindings = false,
    },
    resize = {
        enable_default_keybindings = false,
        resize_step_x = 5,
        resize_step_y = 5,
    }
})

local keymaps = require("tmux.keymaps")
keymaps.register("n", {
    ["<C-h>"] = [[<cmd>lua require('tmux').resize_left()<cr>]],
    ["<C-j>"] = [[<cmd>lua require('tmux').resize_bottom()<cr>]],
    ["<C-k>"] = [[<cmd>lua require('tmux').resize_top()<cr>]],
    ["<C-l>"] = [[<cmd>lua require('tmux').resize_right()<cr>]],
    ["<C-w>h"] = [[<cmd>lua require('tmux').move_left()<cr>]],
    ["<C-w>j"] = [[<cmd>lua require('tmux').move_bottom()<cr>]],
    ["<C-w>k"] = [[<cmd>lua require('tmux').move_top()<cr>]],
    ["<C-w>l"] = [[<cmd>lua require('tmux').move_right()<cr>]],
})
