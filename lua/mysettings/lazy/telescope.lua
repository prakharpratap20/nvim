return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.5",

	dependencies = {
		"nvim-lua/plenary.nvim",
	},

	config = function()
		require("telescope").setup({})

		local builtin = require("telescope.builtin")
		vim.keymap.set("n", "<leader>ff", builtin.find_files, {}) -- Find files using Telescope
		vim.keymap.set("n", "<leader>fg", builtin.live_grep, {}) -- Live grep using Telescope
		vim.keymap.set("n", "<leader>fb", builtin.buffers, {}) -- List buffers using Telescope
		vim.keymap.set("n", "<leader>fh", builtin.help_tags, {}) -- Help tags using Telescope
	end,
}
