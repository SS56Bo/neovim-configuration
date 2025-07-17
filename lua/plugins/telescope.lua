return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = { 
        'nvim-lua/plenary.nvim',
        {
            'nvim-telescope/telescope-fzf-native.nvim',
            build = 'make',
            cond = function()
                return vim.fn.executable 'make' == 1
            end
        },
        {
            'nvim-telescope/telescope-ui-select.nvim'
        },
        {
            'nvim-tree/nvim-web-devicons', enabled = vim.g.have_nerd_font
        }
    },
    config = function()
        require('telescope').setup {
            extensions = {},
            defaults = {
                mappings = {
                    i = {
                        ['<C-k>'] = require('telescope.actions').move_selection_previous,
                        ['<C-j>'] = require('telescope.actions').move_selection_next,
                        ['<C-l>'] = require('telescope.actions').select_default,  -- open file
                    }
                },
            },
        }
    end
}
