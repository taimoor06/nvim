vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.opt.clipboard = 'unnamedplus'
vim.opt.syntax = 'enable'
vim.opt.path:append('**')
vim.opt.wildmenu = true
vim.opt.fileencoding = 'utf-8'
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.laststatus=2
vim.opt.conceallevel = 2
vim.opt.spelllang = { "en_us" }
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.title = true
vim.opt.backspace = "2"
vim.opt.showcmd = true
vim.opt.autowrite = true
vim.opt.autoread = true
vim.opt.hlsearch = true
vim.opt.laststatus = 3

vim.o.termguicolors = true
vim.o.background = "dark"
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.softtabstop = 4
vim.o.expandtab = true
vim.o.autoindent = true
vim.o.smartindent = true
vim.o.cursorline = false

vim.g.netrw_banner = 0

-- Highlight on yank
vim.api.nvim_create_autocmd("TextYankPost", {
  group = vim.api.nvim_create_augroup("lazyvim_" .. "highlight_yank", { clear = true }),
  callback = function()
    (vim.hl or vim.highlight).on_yank()
  end,
})
