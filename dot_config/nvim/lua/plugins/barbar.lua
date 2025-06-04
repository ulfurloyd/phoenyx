return {
    'romgrk/barbar.nvim',
    dependencies = {
        'lewis6991/gitsigns.nvim', -- OPTIONAL: for git status
        'nvim-tree/nvim-web-devicons', -- OPTIONAL: for file icons
    },
    -- config = function()
    --     require('barbar').setup()
    -- end,
    init = function() vim.g.barbar_auto_setup = false end,
    opts = {
        animation = true,
    },
}
