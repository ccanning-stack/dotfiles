return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,

  config = function()
    require("catppuccin").setup({
      flavour = "mocha", -- latte, frappe, macchiato, mocha
      integrations = {
        treesitter = true,
        native_lsp = {
          enabled = true,
        },
        -- enable any of these if you use them:
        -- cmp = true,
        -- gitsigns = true,
        -- telescope = true,
        -- which_key = true,
        -- indent_blankline = { enabled = true },
      },
    })

    vim.cmd.colorscheme("catppuccin-mocha")
  end,
}
