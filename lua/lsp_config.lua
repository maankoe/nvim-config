
vim.lsp.config("lua_ls", {
  cmd = { "lua-language-server" },
  filetypes = { "lua" },
})
vim.lsp.enable("lua_ls")
vim.lsp.enable('basedpyright')
vim.lsp.enable("rust_analyzer")


vim.o.complete = ".,o" -- use buffer and omnifunc
vim.o.completeopt = "fuzzy,menuone,popup,noinsert"
vim.o.autocomplete = true
vim.o.pumheight = 7


-- Disable <enter> select for autocomplete popup
vim.keymap.set('i', '<CR>', function()
  if vim.fn.pumvisible() == 1 then
    -- <C-e> clears the completion menu; <CR> then creates the new line safely
    return '<C-e><CR>' 
  else
    return '<CR>' -- Acts as a standard newline if menu is closed
  end
end, { expr = true, noremap = true, silent = true })

-- Enable <tab> select for autocomplete popup
vim.keymap.set('i', '<Tab>', function()
  if vim.fn.pumvisible() == 1 then
    return '<C-y>'
  else
    return '<Tab>'
  end
end, { expr = true, noremap = true })


vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(ev)
    vim.lsp.completion.enable(true, ev.data.client_id, ev.buf, {
      -- Optional formating of items
      convert = function(item)
        -- Remove leading misc chars for abbr name,
        -- and cap field to 25 chars
        --local abbr = item.label
        --abbr = abbr:match("[%w_.]+.*") or abbr
        --abbr = #abbr > 25 and abbr:sub(1, 24) .. "…" or abbr
        --
        -- Remove return value
        --local menu = ""

        -- Only show abbr name, remove leading misc chars (bullets etc.),
        -- and cap field to 15 chars
        local abbr = item.label
        abbr = abbr:gsub("%b()", ""):gsub("%b{}", "")
        abbr = abbr:match("[%w_.]+.*") or abbr
        abbr = #abbr > 15 and abbr:sub(1, 14) .. "…" or abbr

        -- Cap return value field to 15 chars
        local menu = item.detail or ""
        menu = #menu > 15 and menu:sub(1, 14) .. "…" or menu

        return { abbr = abbr, menu = menu }
      end,
    })
  end,
})
