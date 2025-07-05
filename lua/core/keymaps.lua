-- Set Leader Key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Disable Spacebar key's default behaviour
vim.keymap.set({'n', 'v'}, '<Space>', '<Nop>', {silent = true})

-- FOR CONCISE BEHAVIOUR
local opts = {noremap = true, silent = true}

-- FOR SETTING UP SAVE FILE USING CTRL + S

