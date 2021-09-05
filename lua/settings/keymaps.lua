---@diagnostic disable: undefined-global
vim.g.mapleader = ','

local opts = { noremap = true, silent = true }

-- Save Shift
vim.api.nvim_set_keymap('n', ';', ':', { noremap = true })
vim.api.nvim_set_keymap('n', ';;', ':!', { noremap = true })

-- Movements
vim.api.nvim_set_keymap('n', '<UP>', 'g<UP>', opts)
vim.api.nvim_set_keymap('n', '<DOWN>', 'g<DOWN>', opts)

vim.api.nvim_set_keymap('n', '<C-h>', '<cmd>wincmd h<CR>', opts)
vim.api.nvim_set_keymap('n', '<C-j>', '<cmd>wincmd j<CR>', opts)
vim.api.nvim_set_keymap('n', '<C-k>', '<cmd>wincmd k<CR>', opts)
vim.api.nvim_set_keymap('n', '<C-l>', '<cmd>wincmd l<CR>', opts)

vim.api.nvim_set_keymap('i', '<C-a>', '<C-O>^', opts)
vim.api.nvim_set_keymap('i', '<C-e>', '<END>', opts)
vim.api.nvim_set_keymap('i', '<C-b>', '<LEFT>', opts)
vim.api.nvim_set_keymap('i', '<C-f>', '<RIGHT>', opts)
vim.api.nvim_set_keymap('i', '<C-h>', '<BACKSPACE>', opts)
vim.api.nvim_set_keymap('i', '<C-d>', '<DELETE>', opts)

vim.api.nvim_set_keymap('c', '<C-a>', '<HOME>', { noremap = true })
vim.api.nvim_set_keymap('c', '<C-e>', '<END>', { noremap = true })
vim.api.nvim_set_keymap('c', '<C-p>', '<UP>', { noremap = true })
vim.api.nvim_set_keymap('c', '<C-n>', '<DOWN>', { noremap = true })
vim.api.nvim_set_keymap('c', '<C-b>', '<LEFT>', { noremap = true })
vim.api.nvim_set_keymap('c', '<C-f>', '<RIGHT>', { noremap = true })
vim.api.nvim_set_keymap('c', '<C-h>', '<BACKSPACE>', { noremap = true })
vim.api.nvim_set_keymap('c', '<C-d>', '<DELETE>', { noremap = true })

-- Search
vim.api.nvim_set_keymap('n', '<leader><space>', '<cmd>noh<CR>', opts)

-- Disable help
vim.api.nvim_set_keymap('i', '<F1>', '<NOP>', opts)
vim.api.nvim_set_keymap('n', '<F1>', '<NOP>', opts)
vim.api.nvim_set_keymap('v', '<F1>', '<NOP>', opts)

-- Save
vim.api.nvim_set_keymap('n', '<leader>w', '<cmd>w<CR>', opts)
vim.api.nvim_command("command! W exec 'w !sudo tee % > /dev/null' | e!")

-- Tabs
vim.api.nvim_set_keymap('n', '<S-h>', 'gT', opts)
vim.api.nvim_set_keymap('n', '<S-l>', 'gt', opts)
vim.api.nvim_set_keymap('n', '<C-t>', '<cmd>tabnew<CR>', opts)

-- Format
vim.api.nvim_set_keymap('v', '<', '<gv', opts)
vim.api.nvim_set_keymap('v', '>', '>gv', opts)

-- resize
vim.api.nvim_set_keymap('n', '<M-[>', '<cmd>exe "vertical resize " . (winwidth(0) * 2 / 3)<CR>', opts)
vim.api.nvim_set_keymap('n', '<M-]>', '<cmd>exe "vertical resize " . (winwidth(0) * 3 / 2)<CR>', opts)
vim.api.nvim_set_keymap('n', '<M-{>', '<cmd>exe "resize " . (winheight(0) * 2 / 3)<CR>', opts)
vim.api.nvim_set_keymap('n', '<M-}>', '<cmd>exe "resize " . (winheight(0) * 3 / 2)<CR>', opts)
