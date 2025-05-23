return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.8",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},

	config = function()
		require("telescope").setup({
			pickers = {
				find_files = {
					find_command = { "rg", "--files", "--hidden", "--glob", "!**/.git/*" },
				},
			},
		})

		local builtin = require("telescope.builtin")
		vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
		vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
		vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
		vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })
		vim.keymap.set("n", "<leader>fc", builtin.git_commits, { desc = "Telescope commits" })
		vim.keymap.set("n", "<leader>fb", builtin.git_branches, { desc = "Telescope branches" })
	end,
}
