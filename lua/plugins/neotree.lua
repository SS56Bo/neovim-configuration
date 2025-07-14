return {
   "nvim-neo-tree/neo-tree.nvim",   
	branch = "v3.x",   
	dependencies = {     
	    "nvim-lua/plenary.nvim",     
		"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended     
		"MunifTanjim/nui.nvim",
	},
    lazy = false,
    opts = {},

    config = function()
        vim.keymap.set('n', '<leader>e', '<cmd>Neotree toggle position=left<CR>', { noremap = true, silent = true })  -- Open file explorer
    end,
}
