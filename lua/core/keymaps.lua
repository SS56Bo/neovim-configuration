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
vim.keymap.set('n', '<leader>sn', '<Esc><cmd>noautocmd w <CR>', opts)

-- QUIT NEOVIM
vim.keymap.set('n', '<C-q>', '<Esc><cmd> q <CR>', opts)

-- VERTICAL SCROLL AND CENTER
vim.keymap.set('n', '<C-d>', '<C-d>zz', opts)
vim.keymap.set('n', '<C-u>', '<C-u>zz', opts)

-- FIND AND CENTER
vim.keymap.set('n', 'n', 'nzzzv', opts)
vim.keymap.set('n', 'N', 'Nzzzv', opts)

-- RESIZE WITH ARROWS
vim.keymap.set('n', '<Up>', ':resize -2<CR>', opts)
vim.keymap.set('n', '<Down>', ':resize +2<CR>', opts)
vim.keymap.set('n', '<Left>', ':vertical resize -2<CR>', opts)
vim.keymap.set('n', '<Right>', ':vertical resize +2<CR>', opts)

-- BUFFER
vim.keymap.set('n', '<Tab>', ':bnext<CR>', opts)
vim.keymap.set('n', '<S-Tab>', ':bprevious<CR>', opts)
vim.keymap.set('n', '<leader>X', ':Bdelete!<CR>', opts)  -- Close Buffer
vim.keymap.set('n', '<leader>b', '<cmd> enew <CR>', opts) -- New Buffer

-- Window Management
vim.keymap.set('n', '<leader>v', '<C-w>v', opts)  -- Split window vertically
vim.keymap.set('n', '<leader>h', '<C-w>s', opts) -- Split window horizontally
vim.keymap.set('n', '<leader>se', '<C-w>=', opts) -- make split equal width
vim.keymap.set('n', '<leader>xs', ':close<CR>', opts) -- Close current split window

-- Navigate between Splits
vim.keymap.set('n', '<C-k>', ':wincmd k<CR>', opts)
vim.keymap.set('n', '<C-j>', ':wincmd j<CR>', opts)
vim.keymap.set('n', '<C-h>', ':wincmd h<CR>', opts)
vim.keymap.set('n', '<C-l>', ':wincmd l<CR>', opts)

-- TABS
vim.keymap.set('n', '<leader>to', ':tabnew<CR>', opts) -- open new tab
vim.keymap.set('n', '<leader>tx', ':tabclose<CR>', opts) -- close current tab
vim.keymap.set('n', '<leader>tn', ':tabn<CR>', opts) --  go to next tab
vim.keymap.set('n', '<leader>tp', ':tabp<CR>', opts) --  go to previous tab

-- delete single character without copying into register
vim.keymap.set('n', 'x', '"_x', opts)

-- Toggle line wrapping
vim.keymap.set('n', '<leader>lw', '<cmd>set wrap!<CR>', opts)

-- Stay in indent mode
vim.keymap.set('v', '<', '<gv', opts)
vim.keymap.set('v', '>', '>gv', opts)

-- Keep last yanked when pasting
vim.keymap.set('v', 'p', '"_dP', opts)

-- YANK TO SYSTEM CLIPBOARD
vim.keymap.set('n', '<leader>y', '+yy', opts)
vim.keymap.set('n', '<leader>p', '"+p', opts)

