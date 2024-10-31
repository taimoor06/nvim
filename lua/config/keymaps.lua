vim.keymap.set('n', '<leader>a', ':norm gg ^V G<CR>')
vim.keymap.set('n', '<leader>z', ':cd %:p:h<CR>')

vim.cmd("noremap <C-d> <C-d>zz")
vim.cmd("noremap <C-u> <C-u>zz")

vim.keymap.set('n', '<C-n>', ':cd %:p:h | :30Lexplore<CR>', {silent = true})
vim.keymap.set("n", '<leader>h', ':nohl<CR>', {silent = true})
