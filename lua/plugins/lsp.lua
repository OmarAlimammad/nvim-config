return {
    {
        'williamboman/mason.nvim',
        config = function()
            require('mason').setup()
        end
    },
    {
        'williamboman/mason-lspconfig.nvim',
        config = function()
            require('mason-lspconfig').setup({
                ensure_installed = { 'clangd', 'pyright', 'lua_ls' }
            })
        end
    },
    {
        'neovim/nvim-lspconfig',
        config = function()
            local capabilities = vim.lsp.protocol.make_client_capabilities()
            capabilities.textDocument.completion.completionItem.snippetSupport = false

            require('lspconfig').lua_ls.setup({
                capabilities = capabilities
            })
            require('lspconfig').pyright.setup({
                capabilities = capabilities
            })
            require('lspconfig').clangd.setup({
                capabilities = capabilities,
                cmd = { 'clangd', '--header-insertion=never' }
            })
        end
    }
}
