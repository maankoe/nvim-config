vim.api.nvim_create_user_command("PackAdd", function(opts)
    vim.pack.add(opts.fargs)
end, {nargs = "+", desc = "Add plugins (:PackAdd user/repo1 user/repo2"})

vim.api.nvim_create_user_command("PackDel", function(opts)
    vim.pack.del(opts.fargs)
end, {nargs = "+", desc = "Delete plugins (:PackDel plugin1 plugin2"})

vim.api.nvim_create_user_command("PackUpdate", function(opts)
    if opts.args:match("%S") then
        local plugins = vim.split(opts.args, "%s+", {trimempty = true})
        vim.pack.update(plugins)
    else
        vim.pack.update()
    end
end, {nargs="*", desc="Update plugins"})

vim.api.nvim_create_user_command("PackCheck", function()
    local non_active = vim.iter(vim.pack.get())
        :filter(function(x) return not x.active end)
        :map(function(x) return x.spec.name end)
        :totable()
    if #non_active == 0 then
        vim.notify("No non-active plugins found!", vim.log.levels.INFO)
        return
    end
end, {desc="Check if any plugins are inactive"})

