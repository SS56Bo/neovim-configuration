return {
    'neovim/nvim-lspconfig',
    dependencies = {
        { 'mason-org/mason.nvim', config = true},
        'mason-org/mason-lspconfig.nvim',
        'WhoIsSethDaniel/mason-tool-installer.nvim',
         -- mason-tool-installer:
        -- - Installs LSPs, linters, formatters, etc. by their Mason package name.
        -- - We use it to ensure all desired tools are present.
        -- - The `ensure_installed` list works with mason-lspconfig to resolve LSP names like "lua_ls".
        {'j-hui/fidget.nvim', opts = {}},
        -- Allows extra capabilities provided by nvim-cmp
        'hrsh7th/cmp-nvim-lsp'
    },
    
    -- config = function()

    -- end
}