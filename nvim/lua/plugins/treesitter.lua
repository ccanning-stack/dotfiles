return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
print("nvim-treesitter plugin config ran")
    local ok, configs = pcall(require, "nvim-treesitter.configs")
    if not ok then
      return
    end
    configs.setup({
      ensure_installed = { "c", "lua", "vim", "query", "javascript", "java" },
      highlight = { enable = false },
      indent = { enable = true },
    })
  end,
}
