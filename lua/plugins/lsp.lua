---@diagnostic disable: undefined-global
return function()
  vim.opt.hidden = true

  local function setup_servers()
    require'lspinstall'.setup()

    local lsp_config = require 'lspconfig'
    local lsp_signature = require 'lsp_signature'

    local on_attach = function(client, bufnr)
      local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
      local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

      -- Enable completion triggered by <c-x><c-o>
      buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

      -- Mappings.
      local opts = { noremap = true, silent = true }

      buf_set_keymap('n', '<leader>ca', '<cmd>Lspsaga code_action<CR>', opts)
      buf_set_keymap('v', '<leader>ca', '<cmd>Lspsaga range_code_action<CR>', opts)
      buf_set_keymap('n', 'gh', '<cmd>Lspsaga lsp_finder<CR>', opts)
      buf_set_keymap('n', 'gi', '<cmd>Lspsaga implement<CR>', opts)
      buf_set_keymap('n', 'gd', '<cmd>Lspsaga preview_definition<CR>', opts)
      buf_set_keymap('n', 'gr', '<cmd>Lspsaga rename<CR>', opts)
      buf_set_keymap('n', 'K', '<cmd>Lspsaga hover_doc<CR>', opts)
      buf_set_keymap('n', '<M-k>', '<cmd>Lspsaga signature_help<CR>', opts)
      buf_set_keymap('i', '<M-k>', '<cmd>Lspsaga signature_help<CR>', opts)

      buf_set_keymap('n', '<space>e', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<CR>', opts)
      buf_set_keymap('n', '[d', '<cmd>lua vim.lsp.diagnostic.goto_prev()<CR>', opts)
      buf_set_keymap('n', ']d', '<cmd>lua vim.lsp.diagnostic.goto_next()<CR>', opts)
      buf_set_keymap('n', '<space>q', '<cmd>lua vim.lsp.diagnostic.set_loclist()<CR>', opts)
      buf_set_keymap('n', '<space>f', '<cmd>lua vim.lsp.buf.formatting()<CR>', opts)

      lsp_signature.on_attach()

      vim.cmd [[autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()]]
    end

    local servers = require'lspinstall'.installed_servers()
    for _, server in pairs(servers) do
      lsp_config[server].setup{
        on_attach = on_attach,
      }
    end

    lsp_config.pylsp.setup{
      on_attach = on_attach,
      settings = {
        pylsp = {
          configurationSources = { 'flake8' },
        },
      },
    }
  end

  setup_servers()

  -- Automatically reload after `:LspInstall <server>` so we don't have to restart neovim
  require'lspinstall'.post_install_hook = function ()
    setup_servers() -- reload installed servers
    vim.cmd("bufdo e") -- this triggers the FileType autocmd that starts the server
  end
end
