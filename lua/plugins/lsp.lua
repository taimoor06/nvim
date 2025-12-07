return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile"},
  config = function()
    vim.api.nvim_create_autocmd('LspAttach', {
      callback = function(args)
        local bufnr = args.buf
        vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, { buffer = bufnr })
        vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { buffer = bufnr })
        vim.keymap.set("n", "gd", vim.lsp.buf.definition, { buffer = bufnr })
        vim.keymap.set("n", "gi", vim.lsp.buf.implementation, { buffer = bufnr })
        vim.keymap.set("n", "K", vim.lsp.buf.hover, { buffer = bufnr })
      end,
    })

    vim.lsp.config['lua_ls'] = {
      settings = {
        Lua = {
          runtime = {
            version = "LuaJIT",
          },
          format = {
            enable = false,
          },
          hint = {
            enable = false,
          },
          diagnostics = {
            globals = { "vim" },
            disable = { "unused-local" },
          },
          workspace = {
            checkThirdParty = false,
            library = {
              [vim.fn.expand("$VIMRUNTIME/lua")] = true,
              [vim.fn.stdpath("config") .. "/lua"] = true,
            },
          },
          telemetry = {
            enable = false,
          },
        },
      },
    }
    vim.lsp.enable("pylsp")
    vim.lsp.enable('clangd')
    vim.lsp.enable("rust_analyzer")
    vim.lsp.enable('lua_ls')
    vim.lsp.enable('bashls')
  end
}
