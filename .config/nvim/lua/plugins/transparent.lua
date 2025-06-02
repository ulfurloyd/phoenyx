return {
    'xiyaowong/transparent.nvim',
    config = function()
        vim.keymap.set('n', '<leader>tt', '<Cmd>TransparentToggle<cr>', {desc = "Toggle Transparency" })
    end
}
