vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.cmd("filetype plugin on")
vim.opt.syntax = 'enable'
vim.opt.mouse = ''
vim.opt.path:append('**')
vim.opt.wildmenu = true
vim.opt.fileencoding = 'utf-8'
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.clipboard = 'unnamedplus'
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

vim.opt.fillchars:append { eob = ' ' }
vim.o.termguicolors = true
vim.o.background = "dark"
vim.o.tabstop = 4
vim.o.shiftwidth = 4
vim.o.softtabstop = 4
vim.o.autoindent = true
vim.o.smartindent = true
vim.opt.colorcolumn = "80"
vim.o.cursorline = false

vim.opt.rtp:append("~/.config/nvim/colors/gruvbox.nvim")
vim.cmd("colorscheme gruvbox")
