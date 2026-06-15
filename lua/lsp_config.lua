
vim.pack.add({"https://github.com/neovim/nvim-lspconfig"})

--vim.o.complete = ".,o"
vim.opt.complete:append("o")
vim.o.completeopt = "fuzzy,menuone,popup,noselect"
vim.o.autocomplete = true
vim.o.pumheight = 7

vim.lsp.config("lua_ls", {
    cmd = { "lua-language-server" },
    filetypes = { "lua" },
})
vim.lsp.enable("lua_ls")
vim.lsp.enable('basedpyright')
vim.lsp.enable("rust_analyzer")

vim.api.nvim_create_autocmd("LspAttach", {
    callback = function(ev)
        local client = assert(vim.lsp.get_client_by_id(ev.data.client_id))
        if client:supports_method("textDocument/completion") then 
            vim.lsp.completion.enable(true, client.id, ev.buf, {autotrigger = true})
        end
    end,
})

-- Disable <enter> select for autocomplete popup
-- vim.keymap.set('i', '<CR>', function()
--    if vim.fn.pumvisible() == 1 then
--        -- <C-e> clears the completion menu; <CR> then creates the new line safely
--        return '<C-e><CR>' 
--    else
--       return '<CR>' -- Acts as a standard newline if menu is closed
--    end
--end, { expr = true, noremap = true, silent = true })

-- Enable <tab> select for autocomplete popup
--vim.keymap.set('i', '<Tab>', function()
--    if vim.fn.pumvisible() == 1 then
--        return '<C-y>'
--    else
--        return '<Tab>'
--    end
--end, { expr = true, noremap = true })

