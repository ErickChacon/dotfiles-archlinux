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

    -- Tree-sitter: highlighting and indentation
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}

    -- Comment (better experience with nvim-treesitter), sorround, bullets
    use {'numToStr/Comment.nvim', config = function() require('Comment').setup() end}
    use 'tpope/vim-surround'
    use 'dkarter/bullets.vim'

    -- Completion
    use 'hrsh7th/cmp-buffer'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/nvim-cmp'

    -- Snippets
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'
    use 'honza/vim-snippets'

    -- Fuzzy finder
    use {'nvim-telescope/telescope.nvim',
        requires = {'nvim-lua/plenary.nvim'}
    }

    -- Aesthetics and colorschemes
    use 'edkolev/tmuxline.vim'
    use {'chentau/marks.nvim', config = function() require('user.marks') end}
    use 'ntpeters/vim-better-whitespace'
    use 'morhetz/gruvbox'

    -- Repl and navigation
    use 'jpalardy/vim-slime'
    use {'aserowy/tmux.nvim', config = function() require('user.tmux') end}
    use 'ton/vim-bufsurf'
    use {'jghauser/follow-md-links.nvim',
        requires = {'nvim-treesitter/nvim-treesitter'}
    }

    -- Languages
    use 'JuliaEditorSupport/julia-vim'
end)

