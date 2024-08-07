return {
	"github/copilot.vim",
	event = "BufRead",

	config = function()
		vim.g.copilot_keymap = 0
	end,
}
