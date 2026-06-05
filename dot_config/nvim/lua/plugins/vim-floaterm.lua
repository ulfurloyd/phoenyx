return {
	'voldikss/vim-floaterm',
},

vim.keymap.set('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = "Exit terminal mode" }),
vim.keymap.set('n', '<leader>tt', ':FloatermToggle<CR>', { desc = "Toggle floating [t]erminal" })
