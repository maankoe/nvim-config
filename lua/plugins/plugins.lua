return {
	{
		"neovim/nvim-lspconfig",
		dependencies={
			{
				"folke/lazydev.nvim",
				ft = "lua", -- only load on lua files
				opts = {
					library = {
						-- See the configuration section for more details
						-- Load luvit types when the `vim.uv` word is found
						{ path = "${3rd}/luv/library", words = { "vim%.uv" } },
					},
				},
			},
		},
	},
	{
		'echasnovski/mini.nvim',
		config = function() require("mininvim_config") end,
	},
	{
		'nvim-telescope/telescope.nvim', version = '*',
    		dependencies = {
        		'nvim-lua/plenary.nvim',
        		-- optional but recommended
        		{ 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
		},
		config = function() require("telescope_config") end,
	},
	{
		'nvim-treesitter/nvim-treesitter',
		lazy = false,
		build = ':TSUpdate',
		config = function() require('treesitter_config') end,
	},
	{
		"folke/tokyonight.nvim",
		lazy = false,
		config = function() require("tokyonight_config") end,
	},
	{ 
		"folke/tokyonight.nvim",
		config = function() require("tokyonight_config") end,
	},
	{
		"folke/tokyonight.nvim",
		config = function() require("tokyonight_config") end,
	},
	{
		"folke/tokyonight.nvim",
		config = function() require("tokyonight_config") end,
	},
	{
		'mbbill/undotree',
		config = function() require("undotree_config") end,
	},
	{
		'tpope/vim-fugitive',
		config = function() require("git_config") end,
	},
	{
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function() require("harpoon_config") end,
		enabled = false,
	},
}
