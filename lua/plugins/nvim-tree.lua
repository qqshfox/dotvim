---@diagnostic disable: undefined-global
return function()
  vim.opt.termguicolors = true

  local function setup(opts)
    for opt, value in pairs(opts) do
      if type(value) == 'boolean' then
        value = value and 1 or 0
      end
      vim.g['nvim_tree_' .. opt] = value
    end
  end

  local tree_cb = require'nvim-tree.config'.nvim_tree_callback

  local mappings = require'nvim-tree.view'.View.mappings

  local function getIndex(tab, val)
    local index = nil
    for i, v in ipairs(tab) do
      if (v.key == val) then
        index = i
      end
    end
    return index
  end
  local function removeKey(tab, key)
    table.remove(tab, getIndex(tab, key))
  end

  removeKey(mappings, 'I')
  removeKey(mappings, 'H')

  setup {
    icons = { default = '' },
    gitignore = true,
  }

  require'nvim-tree'.setup {
    auto_close = true,
    hide_dotfiles = true,
    hijack_cursor = false,
    open_on_tab = true,
    view = {
      mappings = {
        list = {
          { key = 'I', cb = tree_cb('toggle_dotfiles') },
          { key = 'i', cb = tree_cb('toggle_ignored') },
          { key = 'u', cb = tree_cb('dir_up') },
        },
      },
    },
  }

  vim.api.nvim_set_keymap('n', '<leader>n', '<cmd>NvimTreeToggle<CR>', { noremap = true, silent = true })
  vim.api.nvim_set_keymap('n', '<leader>fn', '<cmd>NvimTreeFindFile<CR>', { noremap = true, silent = true })
end
