return {
  'nvim-treesitter/nvim-treesitter',
  event = 'VeryLazy',
  build = ':TSUpdate',
  main = 'nvim-treesitter.configs',
  opts = {
    ensure_installed = { "lua", "vim", "vimdoc", "java", "python" },
    highlight = { enable = true },
  },
}
