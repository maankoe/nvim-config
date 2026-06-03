
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

vim.opt.number = true
vim.opt.relativenumber = true

require("plugins.lazy")

vim.lsp.enable("lua_ls")
