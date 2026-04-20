return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	---@type snacks.Config
	opts = {
		bigfile = { enabled = true },
		dashboard = {
			enabled = true,
			width = 80,
			sections = {
				{
					pane = 2,
					section = "header",
				},
				{ section = "keys", gap = 1, padding = 1 },
				{ icon = " ", title = "Recent Files", section = "recent_files", indent = 2, padding = { 2, 2 } },
				{ section = "startup" },
			},
			preset = {
				header = [[
             ▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄▄          
           ▄▀            ▄       ▀▄        
           █  ▄    ▄              █        
           █            ▄█▄▄  ▄   █ ▄▄▄    
    ▄▄▄▄▄  █      ▀    ▀█  ▀▄     █▀▀ ██   
    ██▄▀██▄█   ▄       ██    ▀▀▀▀▀    ██   
     ▀██▄▀██        ▀ ██▀             ▀██  
       ▀████ ▀    ▄   ██   ▄█    ▄ ▄█  ██  
          ▀█    ▄     ██    ▄   ▄  ▄   ██  
          ▄█▄           ▀▄  ▀▀▀▀▀▀▀▀  ▄▀   
         █▀▀█████████▀▀▀▀████████████▀     
         ████▀  ███▀      ▀███  ▀██▀       
			    ]],
			    keys = {
                    { icon = " ", key = "f", desc = "Find File", action = ":lua Snacks.dashboard.pick('files')" },
                    { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
                    { icon = " ", key = "g", desc = "Find Text", action = ":lua Snacks.dashboard.pick('live_grep')" },
                    { icon = " ", key = "r", desc = "Recent Files", action = ":lua Snacks.dashboard.pick('oldfiles')" },
					{ icon = " ", key = "c", desc = "Config", action = ":lua Snacks.dashboard.pick('files', {cdw = '~/.local/share/chezmoi/dot_config/nvim'})" },
                    { icon = " ", key = "s", desc = "Restore Session", section = "session" },
					{ icon = " ", key = "G", desc = "Neogit", action = ":Neogit" },
                    { icon = "󰒲 ", key = "L", desc = "Lazy", action = ":Lazy", enabled = package.loaded.lazy ~= nil },
                    { icon = " ", key = "q", desc = "Quit", action = ":qa" },
				},
			},
		},
		explorer = { enabled = true },
		indent = { enabled = true },
		input = { enabled = true },
		picker = {
			enabled = true,
			layout = {
				cycle = false,
			},
		},
		notifier = { enabled = true },
		quickfile = { enabled = true },
		scope = { enabled = true },
		scroll = { enabled = true },
		statuscolumn = { enabled = true },
		words = { enabled = true },
	},
	keys = {
		{ "\\", function() require("snacks").explorer() end, desc = "Open Snacks explorer" },
		{ "<leader>gg", function() require("snacks").lazygit() end, desc = "Snacks LazyGit"},
		{ "<leader>gl", function() require("snacks").lazygit.log() end, desc = "Snacks LazyGit Log"},
	},
}
