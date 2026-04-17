return {
	"folke/which-key.nvim",
	event = "VeryLazy",
	opts = {
		spec = {
    	  { '<leader>s', group = '[S]earch' },
    	  { '<leader>c', group = '[C]ode' },
    	  { '<leader>g', group = '[G]it' },
    	  { '<leader>g', group = '[G]it' },
    	  { '<leader>t', group = '[T]oggles' },
    	  { '<leader>w', group = '[W]indow' },
    	},
	},
	keys = {
		{
			"<leader>?",
			function()
				require("which-key").show({ global = false })
			end,
			desc = "Buffer Local Keymaps (which-key)",
		},
	},
}
