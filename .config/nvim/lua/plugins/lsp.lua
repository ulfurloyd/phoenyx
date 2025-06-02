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

        -- server configs (whenever needed)
    end
}
