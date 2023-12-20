-- install Packer automatically

local ensure_packer = function()
	local fn = vim.fn
	local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
	if fn.empty(fn.glob(install_path)) > 0 then
		fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
		vim.cmd [[packadd packer.nvim]]
		return true
	end
	return false
end
local packer_bootstrap = ensure_packer()


-- reload configurations if plugins.lua is being modified

vim.cmd([[
	augroup packer_user_config
		autocmd!
		autocmd BufWritePost plugins.lua source <afile> | PackerSync
	augroup end
]])



return require('packer').startup(function(use)
	use 'wbthomason/packer.nvim'
	-- install plugins here: "use ..."
	use 'catppuccin/nvim'	

	use 'vim-airline/vim-airline'
	use {'vim-airline/vim-airline-themes', after = 'vim-airline' }

	use 'tpope/vim-fugitive'

	use 'nvim-neo-tree/neo-tree.nvim'
	use {'nvim-lua/plenary.nvim', after = 'neo-tree.nvim' }
	use {'nvim-tree/nvim-web-devicons', after = 'neo-tree.nvim' }
	use {'MunifTanjim/nui.nvim', after = 'neo-tree.nvim' }

	use 'junegunn/fzf'
	use {'junegunn/fzf.vim', after = 'fzf'}

	use 'neovim/nvim-lspconfig'

	use 'hrsh7th/nvim-cmp'
	use {'hrsh7th/cmp-nvim-lsp', after = 'nvim-cmp' }
	use {'hrsh7th/cmp-buffer', after = 'nvim-cmp' }
	use {'hrsh7th/cmp-path', after = 'nvim-cmp' }

	if packer_bootstrap then
		require('packer').sync()
	end
end)
