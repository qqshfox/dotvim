---@diagnostic disable: undefined-global
local opt = vim.opt

opt.joinspaces = false
opt.mouse = 'a'
opt.wildignore:append {'*.pyc', '*.o', '*.obj', '*.svn', '*.swp', '*.class', '*.hg', '*.DS_Store', '*.min.*', '__pycache__'}
opt.completeopt:remove 'menu'
opt.completeopt:append 'menuone'

-- Cases
opt.ignorecase = true
opt.smartcase = true

-- Splits
opt.splitbelow = true
opt.splitright = true

-- Tabs
opt.expandtab = true
opt.shiftwidth = 2
opt.smarttab = true
opt.softtabstop = 2
opt.tabstop = 2

-- Persisent undo
opt.undodir = vim.fn.stdpath('data') .. '/undo'
opt.undofile = true
