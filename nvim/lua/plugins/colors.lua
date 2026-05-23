return {
  "nickkadutskyi/jb.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("jb").setup()
    vim.cmd.colorscheme("jb")
  end,
}
