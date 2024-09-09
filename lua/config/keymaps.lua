vim.keymap.set("n", "<C-q>", ":wqa<CR>")
vim.keymap.set('n', '<leader>a', ':norm gg ^V G<CR>')
vim.keymap.set('n', '<leader>z', ':cd %:p:h<CR>')
vim.keymap.set("n", "<C-.>", ":cd ")
vim.keymap.set("n", "<C-/>", ":find ")
vim.keymap.set('n', '<c-;>', ':terminal<CR>', { noremap = true, silent = true })
vim.keymap.set("n", '<leader><leader>', ":cd ")

vim.api.nvim_set_keymap('t', '<C-w>', [[<C-\><C-n>]], { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-Tab>', ':bnext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('t', '<C-Tab>', '<C-\\><C-n>:bnext<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<C-S-Tab>', ':bprevious<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('t', '<C-S-Tab>', '<C-\\><C-n>:bprevious<CR>', { noremap = true, silent = true })


vim.cmd("noremap <C-d> <C-d>zz")
vim.cmd("noremap <C-u> <C-u>zz")
