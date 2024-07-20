vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>")
vim.keymap.set("n", "<C-s>", ":wa<CR>")
vim.keymap.set("n", "<C-q>", ":wqa<CR>")
vim.keymap.set("n", "<leader>.", ":t.<CR>")
vim.keymap.set("n", "<leader>n", ":bnext<CR>")
vim.keymap.set("n", "<leader>p", ":bprevious<CR>")
vim.keymap.set("n", "<leader><tab>", ":bnext<CR>")

vim.keymap.set("n", "<leader>v", ":VimwikiIndex<CR>")
-- Telescope

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
