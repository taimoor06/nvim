vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.g.netrw_banner = 0					-- gets rid of the annoying banner for netrw
vim.g.netrw_browse_split=4				-- open in prior window
vim.g.netrw_altv = 1					-- change from left splitting to right splitting
vim.g.netrw_liststyle=3

vim.g.loaded_gzip = 1
vim.g.loaded_tar = 1
vim.g.loaded_tarPlugin = 1
vim.g.loaded_zipPlugin = 1
vim.g.loaded_2html_plugin = 1
vim.g.loaded_spec = 1

vim.opt.laststatus=1
vim.opt.conceallevel = 3
vim.opt.spelllang = { "en_us" }
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.clipboard = 'unnamedplus'
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.syntax = "ON"
vim.opt.title = true
vim.opt.backspace = "2"
vim.opt.showcmd = true
vim.opt.autowrite = true
vim.opt.autoread = true
vim.opt.hlsearch = true
vim.o.termguicolors = false
vim.o.background = "light"
vim.o.cursorline = false

vim.cmd("colorscheme vim")
vim.cmd("let g:vimwiki_ext2syntax = {'.Rmd': 'markdown', '.rmd': 'markdown','.md': 'markdown', '.markdown': 'markdown', '.mdown': 'markdown'}")
vim.cmd("let g:vimwiki_list = [{'path': '~/.local/share/nvim/vimwiki', 'syntax': 'markdown', 'ext': '.md'}]")

vim.cmd("highlight Folded guibg=#3C3836")
