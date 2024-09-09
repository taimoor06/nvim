return {
	'nvim-telescope/telescope.nvim',
	event = { "VeryLazy" };
	dependencies = {
		'nvim-lua/plenary.nvim',
		event = "VeryLazy",
	},
	config = function ()
		require('telescope').setup()

		-- Telescope keybindings
		local builtin = require('telescope.builtin')
		vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
		vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
		vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
		vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
		vim.keymap.set("n", "z=", ":lua require'telescope.builtin'.spell_suggest{}<cr>")
	end
}
