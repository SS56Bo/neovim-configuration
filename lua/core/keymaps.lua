- Set Leader Key
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
vim.keymap.set('n', '<C-d>', '<C-d>zz', opts)
vim.keymap.set('n', '<C-u>', '<C-u>zz', opts)

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
vim.keymap.set('n', '<leader>X', ':Bdelete!<CR>', opts)  -- Close Buffer
vim.keymap.set('n', '<leader>b', '<cmd> enew <CR>', opts) -- New Buffer

-- Window Management
vim.keymap.set('n', '<leader>v', '<C-w>v', opts)  -- Split window vertically
vim.keymap.set('n', '<leader>h', '<C-w>s', opts) -- Split window horizontally
vim.keymap.set('n', '<leader>se', '<C-w>=', opts) -- make split equal width
vim.keymap.set('n', '<leader>xs>', ':close<CR>', opts) -- Close current split window

-- Navigate between Splits
vim.keymap.set('n', '<C-k>', ':wincmd k<CR>', opts)
vim.keymap.set('n', '<C-j>', ':wincmd j<CR>', opts)
vim.keymap.set('n', '<C-h>', ':wincmd h<CR>', opts)
vim.keymap.set('n', '<C-l>', ':wincmd l<CR>', opts)






