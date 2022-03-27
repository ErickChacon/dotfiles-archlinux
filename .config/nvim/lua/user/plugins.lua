-- Reload neovim when plugins.lua file is modified
vim.cmd [[
augroup packer_user_config
  autocmd!
  autocmd BufWritePost plugins.lua source <afile> | PackerCompile
augroup end
]]

-- Plugins
return require('packer').startup(function()

    -- Package manager
    use 'wbthomason/packer.nvim'

    -- Aesthetics
    use 'edkolev/tmuxline.vim'
    use {'chentau/marks.nvim', config = function() require('user.marks') end }
    use 'ntpeters/vim-better-whitespace'

    -- Colorschemes
    use 'morhetz/gruvbox'

    -- Comment
    use {'numToStr/Comment.nvim', config = function() require('Comment').setup() end }

    -- Completion
    use 'jpalardy/vim-slime'
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/nvim-cmp'

    -- Snippets
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'
    use 'honza/vim-snippets'

    -- Motions
    use 'tpope/vim-surround'

    -- Languages
    use 'JuliaEditorSupport/julia-vim'

    -- Note taking
    use 'dkarter/bullets.vim'

    -- Tmux
    use {'aserowy/tmux.nvim', config = function() require('user.tmux') end}

end)

