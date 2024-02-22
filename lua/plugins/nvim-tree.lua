---@diagnostic disable: undefined-global
return function()
  vim.opt.termguicolors = true

  local function opts(desc)
    return { desc = "nvim-tree: " .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
  end

  local function on_attach(bufnr)
    local api = require "nvim-tree.api"

    api.config.mappings.default_on_attach(bufnr)
  end

  require("nvim-tree").setup {
    on_attach = on_attach,

    git = {
      ignore = true,
    },
    hijack_cursor = false,
    open_on_tab = true,
    filters = {
      dotfiles = true,
    },
  }

  vim.keymap.set('n', '<leader>n',  '<cmd>NvimTreeToggle<CR>',   opts('Toggle'))
  vim.keymap.set('n', '<leader>fn', '<cmd>NvimTreeFindFile<CR>', opts('Find'))
end
