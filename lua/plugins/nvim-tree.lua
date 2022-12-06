---@diagnostic disable: undefined-global
return function()
  vim.opt.termguicolors = true

  local tree_cb = require'nvim-tree.config'.nvim_tree_callback

  require'nvim-tree'.setup {
    git = {
      ignore = true,
    },
    hijack_cursor = false,
    open_on_tab = true,
    filters = {
      dotfiles = true,
    },
  }

  vim.api.nvim_set_keymap('n', '<leader>n', '<cmd>NvimTreeToggle<CR>', { noremap = true, silent = true })
  vim.api.nvim_set_keymap('n', '<leader>fn', '<cmd>NvimTreeFindFile<CR>', { noremap = true, silent = true })
end
