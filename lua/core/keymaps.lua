-- Set Leader Key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Disable Spacebar key's default behaviour
vim.keymap.set({'n', 'v'}, '<Space>', '<Nop>', {silent = true})

-- FOR CONCISE BEHAVIOUR
local opts = {noremap = true, silent = true}

-- SAVE FILE USING CTRL + S
vim.keymap.set('n', '<C-s>', '<Esc><cmd> w <CR>', opts)

-- SAVE FILE WITHOUT AUTO-FORMATTING
vim.keymap.set('n', '<leader>sn', '<cmd>noautocmd w <CR>', opts)

-- VERTICAL SCROLL AND CENTER
vim.keymap.set('n', '<C-w>', '<C-d>zz', opts)
vim.keymap.set('n', '<C-s>', '<C-u>zz', opts)

-- FIND AND CENTER
vim.keymap.set('n', 'n', 'nzzzv', opts)
vim.keymap.set('n', 'N', 'Nzzzv', opts)

-- RESIZE WITH ARROWS
vim.keymap.set('n', '<Up>', 'resize -2<CR>', opts)
vim.keymap.set('n', '<Down>', 'resize +2<CR>', opts)
vim.keymap.set('n', '<Left>', 'vertical resize -2<CR>', opts)
vim.keymap.set('n', '<Right>', 'vertical resize +2<CR>', opts)

-- BUFFER
vim.keymap.set('n', '<Tab>', ':bnext<CR>', opts)
vim.keymap.set('n', '<S-Tab>', ':bprevious<CR>', opts)
vim.keymap.set('n', '<leader>X', ':Bdelete!<CR>', opts)
