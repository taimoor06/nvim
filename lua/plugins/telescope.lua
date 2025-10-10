return {
    'nvim-telescope/telescope.nvim',
    dependencies = { 'nvim-lua/plenary.nvim' },
    keys = {
        { '<leader>ff', function() require('telescope.builtin').find_files() end, desc = 'Find Files' },
        { '<leader>fg', function() require('telescope.builtin').live_grep() end, desc = 'Live Grep' },
        { '<leader>fb', function() require('telescope.builtin').buffers() end, desc = 'Buffers' },
        { '<leader>fh', function() require('telescope.builtin').help_tags() end, desc = 'Help Tags' },
        { 'z=', function() require('telescope.builtin').spell_suggest() end, desc = 'Spell Suggest' }
    },
}
