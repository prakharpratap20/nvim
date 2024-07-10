return {
	"m4xshen/autoclose.nvim",
	lazy = true,
	event = {
		"InsertEnter",
	},
	config = function()
		require("autoclose").setup({
			keys = {
				-- ["$"] = { escape = true, close = true, pair = "$$", disabled_filetypes = {} },
			},
		})
	end,
}
