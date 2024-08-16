-- Load the lazy plugin and setup the configuration
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

-- Install lazy.nvim if it doesn't exist
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable", -- latest stable release
		lazypath, -- Install to lazy.nvim
	})
end
vim.opt.rtp:prepend(lazypath) -- Add to runtimepath

require("lazy").setup({
	spec = "mysettings.lazy", -- Path to your lazy settings
	change_detection = { notify = true }, -- Enable change detection
})
