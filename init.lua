require 'core.options'
require 'core.keymaps'

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
	{   
		"nvim-neo-tree/neo-tree.nvim",   
		branch = "v3.x",   
		dependencies = {     
	        	"nvim-lua/plenary.nvim",     
			"nvim-tree/nvim-web-devicons", 
			-- not strictly required, but recommended     
			"MunifTanjim/nui.nvim",
		}
	},
	-- {
  	-- 	"folke/tokyonight.nvim",
  	-- 	lazy = false,
  	-- 	priority = 1000,
  	-- 	opts = {},
	-- },
	{ 
		"EdenEast/nightfox.nvim",
		lazy=false,
		priority = 1000,
		opts={}
 	} 
})

vim.cmd('colorscheme terafox')
