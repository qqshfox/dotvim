return {
  'andymass/vim-matchup',
  dependencies = {
    'nvim-treesitter/nvim-treesitter',
  },
  event = 'VimEnter',
  config = function()
    require'nvim-treesitter'.setup {
      matchup = { enable = true },
    }
  end,
}
