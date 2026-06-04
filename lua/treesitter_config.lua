
require("nvim-treesitter").install({ 'python', 'java', 'rust', 'bash', 'markdown', 'lua' }):wait(30000)

vim.api.nvim_create_autocmd( "FileType", {
	pattern = "python",
	callback = function()
		vim.treesitter.start()
	end,
})

vim.api.nvim_create_autocmd( "FileType", {
	pattern = "java",
	callback = function()
		vim.treesitter.start()
	end,
})

vim.api.nvim_create_autocmd( "FileType", {
	pattern = "rust",
	callback = function()
		vim.treesitter.start()
	end,
})

vim.api.nvim_create_autocmd( "FileType", {
	pattern = "bash",
	callback = function()
		vim.treesitter.start()
	end,
})

vim.api.nvim_create_autocmd( "FileType", {
	pattern = "markdown",
	callback = function()
		vim.treesitter.start()
	end,
})

vim.api.nvim_create_autocmd( "FileType", {
	pattern = "lua",
	callback = function()
		vim.treesitter.start()
	end,
})

vim.api.nvim_create_autocmd( "FileType", {
	pattern = "lua",
	callback = function()
		vim.treesitter.start()
	end,
})
