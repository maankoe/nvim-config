
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

require("keymaps")
require("options")
require("highlight_config")
require("commands")
require("lsp_config")

require("treesitter_config")
require("telescope_config")
require("undotree_config")
require("git_config")
require("mininvim_config")
require("harpoon_config")

