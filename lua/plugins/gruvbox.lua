return {
    "ellisonleao/gruvbox.nvim",
    config = function ()
        require('gruvbox').setup{}
        vim.o.background = "dark" -- or "light" for light mode
        vim.cmd([[colorscheme gruvbox]])
    end
}
