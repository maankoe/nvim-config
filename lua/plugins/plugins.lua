return {
	{ 
		"folke/tokyonight.nvim",
		config = function() vim.cmd.colorscheme = "tokyonight" end,
	},
	{
		'echasnovski/mini.nvim',
		config = function() require("mininvim") end,
	},
	{
		'nvim-telescope/telescope.nvim', version = '*',
    		dependencies = {
        		'nvim-lua/plenary.nvim',
        		-- optional but recommended
        		{ 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
		},
		config = function() require("telescope") end,
	},
	{
		'nvim-treesitter/nvim-treesitter',
		lazy = false,
		build = ':TSUpdate',
		config = function() require('treesitter') end,
	},
	{
		'mbbill/undotree',
		config = function() require("undotree") end,
	},
	{
		'tpope/vim-fugitive',
		config = function() require("git") end,
	},
	{
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function() require("harpoon_config") end
	},
}
