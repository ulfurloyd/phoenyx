return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			bash = { "shfmt" },
		},
		format_on_save = {
			timeout_ms = 500,
			lsp_format = "fallback",
		},
	},
	keys = {
		vim.keymap.set("n", "<leader>cf", function()
			require("conform").format()
		end, { desc = "[C]ode: [f]ormat file" }),
	},
}
