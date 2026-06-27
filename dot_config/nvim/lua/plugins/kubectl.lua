return {
	"Ramilito/kubectl.nvim",
	dependencies = "saghen/blink.download",
	version = "2.*",
	cmd = { "Kubectl" },
	config = function()
		require("kubectl").setup()
	end,
	keys = {
		{ "<leader>nk", '<cmd>lua require("kubectl").toggle()<cr>', { desc = "Nvim: [k]ubectl" } },
	},
}
