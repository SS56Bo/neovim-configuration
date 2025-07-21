return {
    'neovim/nvim-lspconfig',
    dependencies = {
        { 
            'mason-org/mason.nvim',
             config = function()
                    require("mason").setup()
             end
        },
        {
            'mason-org/mason-lspconfig.nvim',

            config = function()
                require("mason-lspconfig").setup({
                    ensure_installed = { "lua_ls" }
                })
            end
        },
        {
            'nvim-telescope/telescope-ui-select.nvim',
            config = function()
                require("telescope").setup {
                    extensions = {
                        ["ui-select"] = {
                            require("telescope.themes").get_dropdown {
                            
                            }
                        }
                    }
                }
                require("telescope").load_extension("ui-select")
            end
        },
    },
    config = function()
        local lspconfig = require("lspconfig")
        lspconfig.lua_ls.setup({})
        vim.keymap.set('n', 'K', vim.lsp.buf.hover, {})
        vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, {})
        vim.keymap.set({'n', 'v'}, '<leader>ca', vim.lsp.buf.code_action, {})
    end
}
