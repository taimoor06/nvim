vim.keymap.set('n', '<leader>a', ':norm gg ^V G<CR>', {silent=true})
vim.keymap.set('n', '<leader>z', ':cd %:p:h<CR>', {silent=true})

vim.cmd("noremap <C-d> <C-d>zz")
vim.cmd("noremap <C-u> <C-u>zz")

vim.keymap.set('n', '<C-n>', ':cd %:p:h | :30Lexplore<CR>', {silent = true})
vim.keymap.set("n", '<leader>h', ':nohl<CR>', {silent = true})
vim.keymap.set('n', '<leader>rr', ':restart<CR>', {silent = true})

vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Move Lines
vim.keymap.set("n", "<A-j>", "<cmd>execute 'move .+' . v:count1<cr>==" )
vim.keymap.set("n", "<A-k>", "<cmd>execute 'move .-' . (v:count1 + 1)<cr>==" )
vim.keymap.set("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi" )
vim.keymap.set("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi" )
vim.keymap.set("v", "<A-j>", ":<C-u>execute \"'<,'>move '>+\" . v:count1<cr>gv=gv" )
vim.keymap.set("v", "<A-k>", ":<C-u>execute \"'<,'>move '<-\" . (v:count1 + 1)<cr>gv=gv" )

vim.keymap.set("n", "<C-\\>", ":sp | :startinsert | :terminal<CR>" )
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>")

vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

vim.keymap.set("n", "<TAB>", ":bn<CR>")
vim.keymap.set("n", "<S-TAB>", ":bp<CR>")
vim.keymap.set("n", "<leader>bd", ":bd<CR>") -- from Doom Emacs
