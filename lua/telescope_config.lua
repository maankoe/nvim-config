-- For references, go to :Telescope builtin
-- <C-/> in view to see other <C- commands

require("telescope").setup {
	pickers = {
		find_files = {
			theme = "ivy"
		}
	}
}


local builtin = require('telescope.builtin')

vim.keymap.set('n', '<leader>ff', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fg', builtin.git_files, { desc = 'Telescope find git files' })
vim.keymap.set('n', '<leader>fd', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })
vim.keymap.set('n', '<leader>fz', function() builtin.grep_string({ search = vim.fn.input("Grep > ") }) end)

vim.keymap.set('n', '<leader>fr', builtin.lsp_references)
vim.keymap.set('n', '<leader>fs', builtin.lsp_definitions)

vim.keymap.set('n', '<leader>fn', function() builtin.find_files { cwd = vim.fn.stdpath("config") } end)


