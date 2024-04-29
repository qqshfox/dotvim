return {
  'windwp/nvim-autopairs',
  event = "InsertEnter",
  dependencies = {
    'nvim-treesitter/nvim-treesitter',
    'hrsh7th/nvim-cmp',
  },
  config = function()
    require('nvim-autopairs').setup({ check_ts = true })

    local cmp_autopairs = require('nvim-autopairs.completion.cmp')
    local cmp = require('cmp')
    cmp.event:on('confirm_done', cmp_autopairs.on_confirm_done())

    require('nvim-treesitter.configs').setup({
      autopairs = { enable = true },
    })
  end
}
