-- define common options
local opts = {
    noremap = true,             -- non-recursive
    silent = true,              -- do not show messages
}

-----------------
-- Normal Mode --
-----------------
-- This is the basic structure of keymaps
-- vim.keymap.set('mode', 'new keymap', 'original command/function', opts)

-- window navigation
-- vim.keymap.set('n', '<C-h>', '<C-w>h', opts)
-- vim.keymap.set('n', '<C-j>', '<C-w>j', opts)
-- vim.keymap.set('n', '<C-k>', '<C-w>k', opts)
-- vim.keymap.set('n', '<C-l>', '<C-w>l', opts)

-- tabs
-- vim.keymap.set('n', '<leader><tab>n', '<cmd>tabnew<cr>', opts)
-- vim.keymap.set('n', '<tab>n', ':tabnext<CR>', opts)
-- vim.keymap.set('n', '<tab>p', ':tabprev<CR>', opts)
-- vim.keymap.set('n', '<tab>c', ':tabclose<CR>', opts)


------------------------
-- Plugin Keybindings --
------------------------

-- oil
vim.keymap.set('n', '-', ':Oil<CR>', opts)
-- lazygit
vim.keymap.set('n', '<leader>gg', ':LazyGit<CR>', opts)
-- transparent
vim.keymap.set('n', '<leader>tp', ':TransparentToggle<CR>', opts)
-- neotree
vim.keymap.set("n", "<leader>tn", ":Neotree toggle<CR>", opts)
