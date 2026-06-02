return {
	{ 
		"folke/tokyonight.nvim",
		config = function() 
			vim.cmd.colorscheme "tokyonight" 
		end
	},
	{
		'echasnovski/mini.nvim',
		config = function()
			local statusline = require 'mini.statusline'
			statusline.setup { use_icons = true }
		end
	},
	{
		'nvim-telescope/telescope.nvim', version = '*',
    		dependencies = {
        		'nvim-lua/plenary.nvim',
        		-- optional but recommended
        		{ 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
		}
	},
	{
		'nvim-treesitter/nvim-treesitter',
		lazy = false,
		build = ':TSUpdate',
		config = function()
			require("nvim-treesitter").install({ 'python', 'java', 'rust', 'bash', 'markdown', 'lua' }):wait(30000)
		end,
	},
	{
		'mbbill/undotree',
	},
	{
		'tpope/vim-fugitive',
	}
}
