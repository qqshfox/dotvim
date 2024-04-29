return {
  'kyazdani42/nvim-tree.lua',
  event = 'VeryLazy',
  dependencies = {
    'kyazdani42/nvim-web-devicons',
  },
  opts = function(_, opts)
    opts.termguicolors = true
  end,
  config = function()
    local function on_attach(bufnr)
      local api = require('nvim-tree.api')

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
  end,
  keys = {
    { '<leader>n',  '<cmd>NvimTreeToggle<CR>' },
    { '<leader>fn', '<cmd>NvimTreeFindFile<CR>' },
  },
}
