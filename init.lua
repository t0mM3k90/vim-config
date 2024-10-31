require('plugins')
require('options')
require('commands')
require('keymaps')
require('colorschemes')

-- ############################## PLUGIN CONFIGS ##############################
require('config.vim-airline')
--require('config.lualine')
require('config.nvim-lsp')
require('config.nvim-cmp')
require('config.nvim-treesitter')
require('config.outline')

-- ############################## DISABLE HEALTHCHECK-WARNINGS ##############################
vim.g.loaded_perl_provider = 0
vim.g.loaded_node_provider = 0
vim.g.loaded_ruby_provider = 0
