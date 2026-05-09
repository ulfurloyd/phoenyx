return {
	"stevearc/conform.nvim",
	event = { "BufWritePre", "BufNewFile" },
	cmd = { "ConformInfo" },
	keys = { {
		"<leader>cf",
		function()
			require("conform").format()
		end,
		desc = "[C]ode: [f]ormat file",
	} },
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			bash = { "shfmt" },
			go = { "gofmt" },
		},
		format_on_save = {
			timeout_ms = 500,
			lsp_format = "fallback",
		},
	},
}
