return {
  'scalameta/nvim-metals',
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  ft = {
    'scala',
    'sbt',
  },
  config = function()
    vim.opt_global.shortmess:remove("F")

    vim.cmd [[augroup lsp]]
    vim.cmd [[au!]]
    vim.cmd [[au FileType scala,sbt lua require("metals").initialize_or_attach({})]]
    vim.cmd [[augroup end]]
  end,
}
