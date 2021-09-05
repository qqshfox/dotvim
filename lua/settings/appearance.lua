---@diagnostic disable: undefined-global
local opt = vim.opt

opt.title = true

opt.number = true

opt.scrolloff = 3

opt.termguicolors = true

opt.guifont = 'Hack Nerd Font:h14'

opt.list = true
opt.listchars.tab = '▸ '
opt.listchars.trail = '⋅'
opt.listchars.extends = '❯'
opt.listchars.precedes = '❮'

opt.laststatus = 2

opt.cursorline = true
vim.api.nvim_command([[
autocmd WinEnter * setlocal cursorline
autocmd WinLeave * setlocal nocursorline
]])

opt.textwidth = 110
opt.colorcolumn = '+1,+41'

opt.completeopt:remove 'preview'
