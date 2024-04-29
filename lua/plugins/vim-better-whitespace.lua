return {
  'ntpeters/vim-better-whitespace',
  init = function()
    vim.g.better_whitespace_enabled = false
    vim.g.strip_whitespace_on_save = true
    vim.g.strip_whitespace_confirm = false
  end,
}
