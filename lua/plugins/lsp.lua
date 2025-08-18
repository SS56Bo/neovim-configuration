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
            "j-hui/fidget.nvim",
            opts = {
                notification = {
                    window = {
                      winblend = 0, -- Background color opacity in the notification window
                    },
                },
            },
        },
        {
            'mason-org/mason-lspconfig.nvim',
             config = function()
                require("mason-lspconfig").setup({
                    ensure_installed = { 
                        "lua_ls", 
                        "bashls",
                        "cmake",
                        "jsonls",
                        "html",
                        "clangd",
                        "java_language_server",
                        "rust_analyzer",
                        "ts_ls",
                        "pylsp",
                        "harper_ls",
                        "tinymist",
                    }
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
