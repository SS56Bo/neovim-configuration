require 'core.options'
require 'core.keymaps'
vim.opt.termguicolors = true

-- FOR LAZY.VIM INITIAL SETUP
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not(vim.uv or vim.loop).fs_stat(lazypath) then 
	local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
	local out = vim.fn.system {'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath}
	if vim.v.shell_error ~= 0 then 
		error('Error cloning lazy git\n' .. out)
	end
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
    require 'plugins.neotree',  -- Neotree setup
    require 'plugins.colortheme', -- Color theme setup
    require 'plugins.bufferline', -- bufferline setup
    require 'plugins.lualine', -- statusline setup
    require 'plugins.autocompletion', -- automcpletion setup [more setup required]
    require 'plugins.treesitter', -- treesitter setup
    require 'plugins.telescope', -- telescope setup
    require 'plugins.lsp', -- lsp plugin
    require 'plugins.autoformat' -- autoformat plugin
})

vim.cmd('colorscheme duskfox')
