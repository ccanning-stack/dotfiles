return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local mode_colors = {
      n = "#82aaff",      -- Normal: blue
      i = "#c3e88d",      -- Insert: green
      v = "#ffcb6b",      -- Visual: orange
      V = "#c792ea",      -- V-Line: purple
      ["\22"] = "#c792ea", -- V-Block: purple
    }

    require("lualine").setup({
      options = {
        theme = "auto",
        component_separators = "",
        section_separators = { left = "", right = "" },
        globalstatus = true,
      },
      sections = {
        lualine_a = {
          {
            "mode",
            fmt = function(str) return " " .. str .. " " end,
            color = function()
              return { bg = mode_colors[vim.fn.mode()] or "#82aaff", fg = "#1e1e1e", gui = "bold" }
            end,
          },
        },
        lualine_b = { "branch" },
        lualine_c = { { "filename", path = 1 } },
        lualine_x = { "encoding", "fileformat" },
        lualine_y = {},
        lualine_z = {},
      },
    })
  end,
}
