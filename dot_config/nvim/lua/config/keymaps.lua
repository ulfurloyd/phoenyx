-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')

-- Diagnostic keymaps
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })

-- Keybinds to make split navigation easier.
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.hl.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.hl.on_yank()
  end,
})

-- tabs
vim.keymap.set('n', '<tab>n', '<cmd>tabnew<cr>', { desc = 'Create a new tab' })
vim.keymap.set('n', '<tab>l', ':tabnext<CR>', { desc = 'Goto previous tab' })
vim.keymap.set('n', '<tab>h', ':tabprev<CR>', { desc = 'Goto previous tab' })
vim.keymap.set('n', '<tab>c', ':tabclose<CR>', { desc = 'Close current tab' })

------------------------
-- Plugin Keybindings --
------------------------

-- oil
vim.keymap.set('n', '-', ':Oil<CR>')
-- lazygit
vim.keymap.set('n', '<leader>gg', ':LazyGit<CR>')
