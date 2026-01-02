return {
  "neovim/nvim-lspconfig",

  config = function()
    local home = vim.loop.os_homedir()

    -- Safe root_dir wrapper
    local function safe_luaroot(fname)
      if type(fname) ~= "string" then
        return vim.fn.stdpath("config")  -- fallback to ~/.config/nvim
      end

      local root = vim.fs.root(fname, {
        ".luarc.json",
        ".luarc.jsonc",
        ".git",
        "lua",
      }) or vim.fs.dirname(fname)

      if root == home then
        return vim.fn.stdpath("config")
      end

      return root
    end

    -- lua_ls config using Neovim 0.11 API
    vim.lsp.config("lua_ls", {
      root_dir = safe_luaroot,
      settings = {
        Lua = {
          workspace = {
            checkThirdParty = false,
            library = {
              vim.fn.expand("$VIMRUNTIME/lua"),
              vim.fn.stdpath("config") .. "/lua",
            },
          },
          diagnostics = {
            globals = { "vim" },
          },
        },
      },
    })

    -- enable all servers at once
    vim.lsp.enable({
      "lua_ls",
      "clangd",
      "ts_ls",
      "jdtls",
      "pyright",
      "rust_analyzer",
      "gopls",
      "html",
      "cssls",
      "yamlls",
      "bashls",
      "dockerls",
      "terraformls",
      "jsonls",
    })
  end,
}
