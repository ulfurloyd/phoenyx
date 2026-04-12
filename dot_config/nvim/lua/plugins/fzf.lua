return {
	"ibhagwan/fzf-lua",
	dependencies = { "nvim-mini/mini.icons" },
	---@module "fzf-lua"
	---@type fzf-lua.Config|{}
	---@diagnostic disable: missing-fields
	opts = {},
	keys = {
		{ "<leader><leader>", "<cmd>FzfLua buffers<CR>", desc = "List Open Buffers" },
		{ "<leader>sf", "<cmd>FzfLua files<CR>", desc = "[S]earch [F]iles" },
		{ "<leader>sg", "<cmd>FzfLua live_grep<CR>", desc = "[S]earch by [G]rep" },
		{ "<leader>sw", "<cmd>FzfLua lgrep_curbuf<CR>", desc = "[S]earch [W]ithin file by grep" },
		{ "<leader>sr", "<cmd>FzfLua oldfiles<CR>", desc = "[S]earch [R]ecent files" },
		{ "<leader>sc", "<cmd>FzfLua files cwd=~/.local/share/chezmoi<CR>", desc = "[S]earch [C]onfig directory" },
		{ "<leader>sh", "<cmd>FzfLua helptags<CR>", desc = "[S]earch [H]elp tags" },
		{ "<leader>st", "<cmd>FzfLua tabs<CR>", desc = "[S]earch [T]abs" },
		{ "<leader>sb", "<cmd>FzfLua builtin<CR>", desc = "[S]earch fzf [B]uiltins" },
	},
	lazy = false,
	---@diagnostic enable: missing-fields
}
