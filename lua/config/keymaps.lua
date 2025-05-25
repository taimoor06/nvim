vim.keymap.set('n', '<leader>a', ':norm gg ^V G<CR>')
vim.keymap.set('n', '<leader>z', ':cd %:p:h<CR>')

vim.cmd("noremap <C-d> <C-d>zz")
vim.cmd("noremap <C-u> <C-u>zz")

vim.keymap.set('n', '<C-n>', ':cd %:p:h | :30Lexplore<CR>', {silent = true})
vim.keymap.set("n", '<leader>h', ':nohl<CR>', {silent = true})

vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Move Lines
vim.keymap.set("n", "<A-j>", "<cmd>execute 'move .+' . v:count1<cr>==" )
vim.keymap.set("n", "<A-k>", "<cmd>execute 'move .-' . (v:count1 + 1)<cr>==" )
vim.keymap.set("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi" )
vim.keymap.set("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi" )
vim.keymap.set("v", "<A-j>", ":<C-u>execute \"'<,'>move '>+\" . v:count1<cr>gv=gv" )
vim.keymap.set("v", "<A-k>", ":<C-u>execute \"'<,'>move '<-\" . (v:count1 + 1)<cr>gv=gv" )
