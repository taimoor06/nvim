return {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile"},
    config = function()
        -- Modern approach for Neovim 0.11+  
        vim.api.nvim_create_autocmd('LspAttach', {
            callback = function(args)
                local bufnr = args.buf
                vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { buffer = bufnr })
                vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { buffer = bufnr })
                vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = bufnr })
                vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { buffer = bufnr })
                vim.keymap.set("n", "gr", require("telescope.builtin").lsp_references, { buffer = bufnr })
                vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = bufnr })
            end,
        })

        -- Configure servers with custom settings  
        vim.lsp.config('lua_ls', { settings = {  
            Lua = 
            {
                runtime = { version = 'LuaJIT' },  
                diagnostics = { globals = { 'vim', 'require' } },  
                workspace = { library = vim.api.nvim_get_runtime_file("", true) },  
                telemetry = { enable = false },  
            },  
        },  
    })  

    vim.lsp.enable('clangd')

    -- Enable the servers  
    vim.lsp.enable('lua_ls')
    vim.lsp.enable('bashls')
end
}

