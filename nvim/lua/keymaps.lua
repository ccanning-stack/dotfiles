local diag_float_open = false
local diag_float_win = nil

vim.keymap.set("n", "<leader>e", function()
  if diag_float_open and diag_float_win and vim.api.nvim_win_is_valid(diag_float_win) then
    vim.api.nvim_win_close(diag_float_win, true)
    diag_float_open = false
    diag_float_win = nil
  else
    diag_float_win = vim.diagnostic.open_float(nil, { focus = true })
    diag_float_open = true
  end
end, { desc = "Toggle diagnostic float" })
