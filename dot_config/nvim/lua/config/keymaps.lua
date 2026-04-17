vim.keymap.set('n', '-', '<cmd>Oil --float<CR>', { desc = "Open Oil file manager" })

-- window keybindings
vim.keymap.set('n', '<leader>wv', '<C-w>v<CR>', { desc = "Window: Open [v]ertical split" })
vim.keymap.set('n', '<leader>ws', '<C-w>s<CR>', { desc = "Window: Open horizontal [s]plit" })
vim.keymap.set('n', '<leader>wc', '<C-w>c<CR>', { desc = "Window: [c]lose split" })
vim.keymap.set('n', '<leader>wr', '<C-w>r<CR>', { desc = "Window: [r]otate windows downwards/righwards" })
