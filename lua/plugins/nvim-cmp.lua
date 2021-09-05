---@diagnostic disable: undefined-global
return function()
  local cmp = require 'cmp'
  local lspkind = require 'lspkind'
  local keymap = require 'cmp.utils.keymap'

  vim.opt.completeopt:remove 'longest'

  local check_back_space = function()
    local col = vim.fn.col('.') - 1
    return col == 0 or vim.fn.getline('.'):sub(col, col):match('%s')
  end

  cmp.setup {
    formatting = {
      format = function(entry, vim_item)
        -- fancy icons
        vim_item.kind = lspkind.presets.default[vim_item.kind]

        -- set a name for each source
        vim_item.menu = ({
          nvim_lsp = "[LSP]",
          buffer = "[Buffer]",
          path = "[Path]",
          calc = "[Calc]",
          vsnip = "[Vsnip]",
        })[entry.source.name]

        return vim_item
      end,
    },
    snippet = {
      expand = function(args)
        vim.fn['vsnip#anonymous'](args.body)
      end
    },
    mapping = {
      ['<Tab>'] = cmp.mapping(function(fallback)
        if vim.fn.pumvisible() == 1 then
          vim.fn.feedkeys(keymap.t '<C-n>', 'n')
        elseif vim.fn['vsnip#available']() == 1 then
          vim.fn.feedkeys(keymap.t '<Plug>(vsnip-expand-or-jump)', '')
        elseif check_back_space() then
          vim.fn.feedkeys(keymap.t '<Tab>', 'n')
        else
          fallback()
        end
      end, {
        'i',
        's',
      }),
      ['<S-Tab>'] = cmp.mapping(function(fallback)
        if vim.fn.pumvisible() == 1 then
          vim.fn.feedkeys(keymap.t '<C-p>', 'n')
        elseif vim.fn['vsnip#available']() == 1 then
          vim.fn.feedkeys(keymap.t '<Plug>(vsnip-jump-prev)', '')
        elseif check_back_space() then
          vim.fn.feedkeys(keymap.t '<S-Tab>', 'n')
        else
          fallback()
        end
      end, {
        'i',
        's',
      }),
    },
    documentation = {
      border = { "╭", "─", "╮", "│", "╯", "─", "╰", "│" },
    },
    sources = {
      { name = 'nvim_lsp' },
      { name = 'buffer' },
      { name = 'path' },
      { name = 'calc' },
      { name = 'vsnip' },
    },
  }
end
