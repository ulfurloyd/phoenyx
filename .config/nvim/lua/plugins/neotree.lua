return {
    'nvim-neo-tree/neo-tree.nvim',
    branch = "v3.x",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvim-tree/nvim-web-devicons",
        "MunifTanjim/nui.nvim",
    },
    lazy = false,
    ---@module "neo-tree"
    ---@type neotree.Config?
    config = function()
        require("neo-tree").setup({
            close_if_last_window = true,
            popup_border_style = "NC",
            enable_git_status = true,
            enable_diagnostics = true,
            default_component_configs = {
                indent = {
                    indent_size = 2,
                    padding = 1,
                    with_markers = true,
                },
            },
            window = {
                position = left,
                width = 30,
            },
        })
        vim.keymap.set('n', '<leader>tn', '<Cmd>Neotree toggle<CR>', { desc = "Toggle Neotree" })
    end,
}
