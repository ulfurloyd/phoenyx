-- define common options
local opts = {
    noremap = true,             -- non-recursive
    silent = true,              -- do not show messages
}

-----------------
-- Normal Mode --
-----------------

-- window navigation
vim.keymap.set('n', '<C-h>', '<C-w>h', opts)
vim.keymap.set('n', '<C-j>', '<C-w>j', opts)
vim.keymap.set('n', '<C-k>', '<C-w>k', opts)
vim.keymap.set('n', '<C-l>', '<C-w>l', opts)

-- tabs
vim.keymap.set('n', '<Tab>N', ':tabnew<CR>', opts)
vim.keymap.set('n', '<Tab>n', ':tabnext<CR>', opts)
vim.keymap.set('n', '<Tab>p', ':tabprev<CR>', opts)
vim.keymap.set('n', '<Tab>c', ':tabclose<CR>', opts)

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
