return {
	"reybits/ts-forge.nvim",
	config = function()
		require("ts-forge").setup({
			auto_install = true,
			ensure_installed = {
				"bash",
				"c",
				"cpp",
				"json",
				"lua",
				"markdown",
				"markdown_inline",
				"python",
				"yaml",
			},
		})
	end,
}
