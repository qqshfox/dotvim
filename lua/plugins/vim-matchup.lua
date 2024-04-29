return {
  'andymass/vim-matchup',
  dependencies = {
    'nvim-treesitter/nvim-treesitter',
  },
  event = 'VimEnter',
  config = function()
    require'nvim-treesitter.configs'.setup {
      matchup = { enable = true },
    }
  end,
}
