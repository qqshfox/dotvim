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
        ensure_installed = { "lua", "vim", "vimdoc" },
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
    'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true},
    config = function()
      require('lualine').setup {
        options = { theme = 'seoul256' }
      }
    end
  }

  use {
    'williamboman/nvim-lsp-installer',
    requires = {
      'neovim/nvim-lspconfig',
      'nvimdev/lspsaga.nvim',
    },
    config = require 'plugins/lsp'
  }

  use {
    'nvimdev/lspsaga.nvim',
    opt = true,
    event = "LspAttach",
    requires = {
        {"nvim-tree/nvim-web-devicons"},
        --Please make sure you install markdown and markdown_inline parser
        {"nvim-treesitter/nvim-treesitter"}
    },
    config = function()
      require("lspsaga").setup({})
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

  use {
    'ray-x/lsp_signature.nvim',
    config = function() require('lsp_signature').setup() end
  }

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
    requires = {
      'nvim-treesitter/nvim-treesitter',
      'hrsh7th/nvim-cmp',
    },
    config = function()
      require('nvim-autopairs').setup { check_ts = true }

      local cmp_autopairs = require('nvim-autopairs.completion.cmp')
      local cmp = require('cmp')
      cmp.event:on( 'confirm_done', cmp_autopairs.on_confirm_done({  map_char = { tex = '' } }))

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
    'ur4ltz/surround.nvim',
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

  use {
    'scalameta/nvim-metals',
    requires = "nvim-lua/plenary.nvim",
    config = function()
      vim.opt_global.shortmess:remove("F")

      vim.cmd [[augroup lsp]]
      vim.cmd [[au!]]
      vim.cmd [[au FileType scala,sbt lua require("metals").initialize_or_attach({})]]
      vim.cmd [[augroup end]]
    end,
  }
end)
