vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.opt.clipboard = 'unnamedplus'
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.laststatus=3
vim.opt.conceallevel = 2
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.hlsearch = true
vim.opt.laststatus = 3

vim.o.termguicolors = true
vim.o.background = "dark"
vim.o.tabstop = 2
vim.o.shiftwidth = 2
vim.o.softtabstop = 2
vim.o.expandtab = true
vim.o.autoindent = true
vim.o.smartindent = true
vim.o.cursorline = false
vim.o.splitbelow = true
vim.o.splitright = true

vim.g.netrw_banner = 0
vim.diagnostic.config({
  virtual_text = true,  -- show inline messages
  signs = true,         -- show signs in the gutter
  underline = true,     -- underline problematic text
  update_in_insert = false, -- don't update diagnostics while typing
  severity_sort = true,     -- sort diagnostics by severity
})

-- Highlight on yank
vim.api.nvim_create_autocmd("TextYankPost", {
  group = vim.api.nvim_create_augroup("lazyvim_" .. "highlight_yank", { clear = true }),
  callback = function()
    (vim.hl or vim.highlight).on_yank()
  end,
})
