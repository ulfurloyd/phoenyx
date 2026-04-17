return {
	"ibhagwan/fzf-lua",
	dependencies = { "nvim-mini/mini.icons" },
	---@module "fzf-lua"
	---@type fzf-lua.Config|{}
	---@diagnostic disable: missing-fields
	opts = {},
	keys = {
		{ "<leader><leader>", "<cmd>FzfLua buffers<CR>", desc = "List Open Buffers" },
		{ "<leader>sf", "<cmd>FzfLua files<CR>", desc = "Search [F]iles" },
		{ "<leader>sg", "<cmd>FzfLua live_grep<CR>", desc = "Search by [G]rep" },
		{ "<leader>sw", "<cmd>FzfLua lgrep_curbuf<CR>", desc = "Search [W]ithin file by grep" },
		{ "<leader>sr", "<cmd>FzfLua oldfiles<CR>", desc = "Search [R]ecent files" },
		{ "<leader>sc", "<cmd>FzfLua files cwd=~/.local/share/chezmoi<CR>", desc = "Search [C]onfig directory" },
		{ "<leader>sh", "<cmd>FzfLua helptags<CR>", desc = "Search [H]elp tags" },
		{ "<leader>st", "<cmd>FzfLua tabs<CR>", desc = "Search [T]abs" },
		{ "<leader>sb", "<cmd>FzfLua builtin<CR>", desc = "Search fzf [B]uiltins" },
	},
	lazy = false,
	---@diagnostic enable: missing-fields
}
