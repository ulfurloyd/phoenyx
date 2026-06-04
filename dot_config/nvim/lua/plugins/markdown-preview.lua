return {
	"iamcco/markdown-preview.nvim",
	cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
	build = "cd app && yarn install",
	init = function()
		vim.g.mkdp_filetypes = { "markdown" }
	end,
	ft = { "markdown" },
},
	vim.keymap.set("n", "<leader>tm", "<cmd>MarkdownPreviewToggle<cr>", { desc = "Toggle [m]arkdown Preview" })
