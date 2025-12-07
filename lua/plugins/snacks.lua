return {
    "folke/snacks.nvim",
    event = { "BufReadPre", "BufNewFile"},
    opts = {
        bigfile = { enabled = true },
        -- indent = { enabled = true },
        notifier = {
            enabled = true,
            timeout = 3000,
        },
        picker = {
            enabled = true,
            layout = {
                preset = "telescope",
                preview = false
            }
        },
        quickfile = { enabled = true },
    },
    keys = {
        -- find
        { "<leader>fb", function() Snacks.picker.buffers() end, desc = "Buffers" },
        { "<leader>fc", function() Snacks.picker.files({ cwd = vim.fn.stdpath("config") }) end, desc = "Find Config File" },
        { "<leader>fg", function () Snacks.picker.grep() end  },
        { "<leader>ff", function() Snacks.picker.files() end, desc = "Find Files" },
        { "<leader>fr", function() Snacks.picker.recent() end, desc = "Recent" },
        { "<leader><space>", function() Snacks.picker.smart() end },
        { "<leader>fh", function () Snacks.picker.help() end },
        { "<leader>ci", function () Snacks.picker.icons() end },
    },
}
