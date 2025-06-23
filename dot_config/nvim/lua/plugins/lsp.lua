return {
    'neovim/nvim-lspconfig',
    config = function()
        -- enabling servers
        vim.lsp.enable('bashls')
        vim.lsp.enable('clangd')
        vim.lsp.enable('cssls')
        vim.lsp.enable('emmet_ls')
        vim.lsp.enable('fish_lsp')
        vim.lsp.enable('lua_ls')
        vim.lsp.enable('nushell')
        vim.lsp.enable('pylsp')
        vim.lsp.enable('qmlls')

        -- server configs
        require("lspconfig").qmlls.setup {
            cmd = { "qmlls6", "-E" }
        }

        -- keymaps
        vim.keymap.set('n', '<leader>cr', vim.lsp.buf.rename, {desc = " Rename Symbol"})
        vim.keymap.set('n', '<leader>ca', vim.lsp.buf.code_action, {desc = " Code Actions"})
        vim.keymap.set('n', '<leader>cs', vim.lsp.buf.document_symbol, {desc = " Document Symbols"})

    end
}
