-- Set Leader Key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Disable Spacebar key's default behaviour
vim.keymap.set({'n', 'v'}, '<Space>', '<Nop>', {silent = true})

-- FOR CONCISE BEHAVIOUR
local opts = {noremap = true, silent = true}

-- SAVE FILE USING CTRL + S
vim.keymap.set('n', '<C-s>', '<cmd> w <CR>', opts)

-- SAVE FILE WITHOUT AUTO-FORMATTING
vim.keymap.set('n', '<leader>sn', '<cmd>noautocmd w <CR>', opts)