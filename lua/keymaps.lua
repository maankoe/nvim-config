vim.keymap.set("x", "p", [["_dP]], {desc = "replace without losing yank"})
--vim,keymap.set({"n", "v"}, "<leader>d", [["_d]], {desc = "delete without yanking"})

vim.keymap.set("i", "<C-c>", "<Esc>")
vim.keymap.set("n", "<C-c>", ":nohl<CR>", {desc = "clear search without highlighting", silent = true})

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", {desc = "move selected lines up"})
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", {desc = "move selected ines down"})

vim.keymap.set("v", ">", ">gv", {desc = "indent and keep selection"})
vim.keymap.set("v", "<", "<gv", {desc = "unindent and keep selection"})

vim.keymap.set("n", "J", "mz`z", {desc = "join lines and keep cursor position"})

vim.keymap.set("n", "<C-d>", "<C-d>zz", {desc = "move down page and vertical center"})
vim.keymap.set("n", "<C-u>", "<C-u>zz", {desc = "move up page and vertical center"})

vim.keymap.set("n", "n", "nzzzv", {desc = "search and vertical center"})
vim.keymap.set("n", "N", "Nzzzv", {desc = "previous search and vertical center"})

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], {desc = "replace word at cursor throughout file"})

vim.keymap.set("n", "<leader>X", "<cmd>!chmod +x %<CR>", {desc = "chmod +x", silent = true})
vim.keymap.set("n", "<leader>re", "<cmd>restart<cr>", {desc = "restart nvim"})

vim.keymap.set("n", "<leader>st", function()
	vim.cmd.vnew()
	vim.cmd.term()
	vim.cmd.wincmd("J")
	vim.api.nvim_win_set_height(0, 15)
end)

