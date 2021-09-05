return function()
  local opts = { noremap = true, silent = true }

  vim.api.nvim_set_keymap('n', '<leader>ff', '<cmd>Telescope find_files<cr>', opts)
  vim.api.nvim_set_keymap('n', '<leader>fg', '<cmd>Telescope live_grep<cr>', opts)
  vim.api.nvim_set_keymap('n', '<leader>fb', '<cmd>Telescope buffers<cr>', opts)
  vim.api.nvim_set_keymap('n', '<leader>fh', '<cmd>Telescope help_tags<cr>', opts)
  vim.api.nvim_set_keymap('n', '<leader>fc', '<cmd>Telescope commands<cr>', opts)
end
