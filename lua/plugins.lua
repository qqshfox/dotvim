---@diagnostic disable: undefined-global
return require('packer').startup(function(use)
  use {
    'wbthomason/packer.nvim',
    config = function()
      vim.cmd([[
        augroup packer_user_config
          autocmd!
          autocmd BufWritePost plugins.lua source <afile> | PackerCompile
        augroup end
      ]])
    end
  }

  use {
    'andymass/vim-matchup',
    requires = 'nvim-treesitter/nvim-treesitter',
    event = 'VimEnter',
    config = function()
      require'nvim-treesitter.configs'.setup {
        matchup = { enable = true },
      }
    end
  }

  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate',
    config = function()
      require'nvim-treesitter.configs'.setup {
        ensure_installed = 'maintained',
        highlight = { enable = true },
      }
    end
  }

  use {
    'lewis6991/gitsigns.nvim',
    requires = 'nvim-lua/plenary.nvim',
    config = function() require('gitsigns').setup() end
  }

  use {
    'kyazdani42/nvim-tree.lua',
    requires = 'kyazdani42/nvim-web-devicons',
    config = require 'plugins/nvim-tree',
  }

  use {
    'shadmansaleh/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true},
    config = function()
      require('lualine').setup {
        options = { theme = 'seoul256' }
      }
    end
  }

  use {
    'kabouzeid/nvim-lspinstall',
    requires = {
      'neovim/nvim-lspconfig',
      'glepnir/lspsaga.nvim',
    },
    config = require 'plugins/lsp'
  }

  use {
    'qqshfox/lspsaga.nvim',
    branch = 'tabnew',
    requires = 'neovim/nvim-lspconfig',
    config = function()
      vim.opt.hidden = true

      require 'lspsaga'.init_lsp_saga {
        finder_action_keys = {
          open = '<CR>',
          quit = '<ESC>',
        },
        code_action_keys = {
          quit = '<ESC>',
        },
        rename_action_keys = {
          quit = '<ESC>',
        },
      }
    end
  }

  use {
    'onsails/lspkind-nvim',
    config = function() require('lspkind').init{} end
  }

  use { 'hrsh7th/vim-vsnip', requires = 'rafamadriz/friendly-snippets' }

  use {
    'hrsh7th/nvim-cmp',
    requires = {
      'hrsh7th/cmp-buffer',
      'hrsh7th/cmp-nvim-lsp',
      'hrsh7th/cmp-path',
      'hrsh7th/cmp-calc',
      'hrsh7th/cmp-vsnip',
      'onsails/lspkind-nvim'
    },
    config = require 'plugins/nvim-cmp'
  }

  use 'ray-x/lsp_signature.nvim'

  use 'mhinz/vim-startify'

  use {
    'norcalli/nvim-base16.lua',
    config = function()
      local base16 = require 'base16'
      base16(base16.themes.ocean, true)
    end
  }

  use {
    'lukas-reineke/indent-blankline.nvim',
    requires = 'nvim-treesitter/nvim-treesitter',
    config = function()
      require('indent_blankline').setup {
        bufname_exclude = {'startify', 'NvimTree'},
        buftype_exclude = {'help', 'terminal'},
        context_patterns = {'class', 'function', 'method', '^if', 'for', 'while', 'try', 'with'},
        show_current_context = true,
        use_treesitter = true,
      }
    end
  }

  use 'farmergreg/vim-lastplace'

  use {
    'nvim-telescope/telescope.nvim',
    requires = 'nvim-lua/plenary.nvim',
    config = require 'plugins/telescope',
  }

  use 'b3nj5m1n/kommentary'

  use {
    'jdhao/better-escape.vim',
    event = 'InsertEnter',
    setup = function()
      vim.g.better_escape_shortcut = 'jj'
      vim.g.better_escape_interval = 200
    end
  }

  use 'editorconfig/editorconfig-vim'

  use {
    'folke/trouble.nvim',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function()
      require('trouble').setup {}
      vim.api.nvim_set_keymap('n', '<leader>xx', '<cmd>TroubleToggle<CR>', { silent = true, noremap = true })
    end
  }

  use {
    'windwp/nvim-autopairs',
    requires = 'nvim-treesitter/nvim-treesitter',
    config = function()
      require('nvim-autopairs').setup { check_ts = true }
      require('nvim-autopairs.completion.cmp').setup({
        map_cr = true,
        map_complete = true,
      })
      require'nvim-treesitter.configs'.setup {
        autopairs = { enable = true },
      }
    end
  }

  use {
    'ntpeters/vim-better-whitespace',
    config = function()
      vim.g.better_whitespace_enabled = false
      vim.g.strip_whitespace_on_save = true
      vim.g.strip_whitespace_confirm = false
    end
  }

  use {
    'blackCauldron7/surround.nvim',
    config = function()
      require'surround'.setup { mappings_style = 'surround' }
    end
  }

  use { 'Vimjas/vim-python-pep8-indent', ft = 'python' }

  use {
    'tpope/vim-fugitive',
    config = function()
      vim.api.nvim_set_keymap('n', '<leader>gr', '<cmd>Git grep <cword><CR>', { silent = true, noremap = true })
    end
  }

  use {
    'beauwilliams/focus.nvim',
    config = function()
      require("focus").setup()
      vim.api.nvim_set_keymap('n', '<leader>F', '<cmd>FocusToggle<CR>', { silent = true, noremap = true })
    end
  }

  use { 'rust-lang/rust.vim', ft = 'rust' }

  use {
    'folke/persistence.nvim',
    event = 'BufReadPre',
    module = 'persistence',
    config = function()
      require('persistence').setup({
        dir = vim.fn.stdpath('data') .. '/session/'
      })
    end,
  }
end)
