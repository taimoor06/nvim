return { "ellisonleao/gruvbox.nvim", priority = 1000 ,
config = function()
  require("gruvbox").setup({
    italic = {
      strings = false,
      emphasis = false,
      comments = false,
      operators = false,
      folds = false,
    },
    transparent_mode = false,
  })
  vim.cmd.colorscheme("gruvbox")
end
}
