
vim.api.nvim_create_autocmd('PackChanged', {
	desc = 'telescope: build extensions and setup it up in order',
	callback = function(ev)
		local name, kind = ev.data.spec.name, ev.data.kind
		if name == 'telescope-fzf-native.nvim' and (kind == 'install' or kind == 'update') then
			vim.system({ 'make' }, { cwd = ev.data.path })
		end
	end,
})


vim.pack.add({
	'https://github.com/nvim-lua/plenary.nvim',
	'https://github.com/nvim-telescope/telescope.nvim',
	'https://github.com/nvim-telescope/telescope-fzf-native.nvim',
})

require('telescope').load_extension 'fzf'

require('telescope').setup {
    defaults = require('telescope.themes').get_ivy(),
	extensions = {
	fzf = {
			fuzzy = true,
	    	override_generic_sorter = true,
			override_file_sorter = true,
			case_mode = 'smart_case',
		},
	},
}

-- For references, go to :Telescope builtin
-- <C-/> in view to see other <C- commands

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


