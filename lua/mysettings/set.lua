vim.opt.number = true -- set numbered lines
vim.opt.relativenumber = true -- set relative number
vim.opt.showmode = false -- don't show mode

vim.opt.tabstop = 4 -- tab width
vim.opt.softtabstop = 4 -- tab width
vim.opt.shiftwidth = 4 -- tab width
vim.opt.expandtab = true -- use spaces instead of tabs

vim.opt.smartindent = true -- autoindent new lines

vim.opt.wrap = false -- don't wrap lines

vim.opt.swapfile = false -- don't create swap files
vim.opt.backup = false -- don't create backup files
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir" -- set undodir
vim.opt.undofile = true -- enable undofile

-- vim.opt.hlsearch = true -- highlight search results
vim.opt.incsearch = true -- incremental search

vim.opt.termguicolors = true -- enable true colors

vim.opt.scrolloff = 7 -- minimum number of lines to keep above and below the cursor
vim.opt.sidescrolloff = 15 -- minimum number of columns to keep to the left and right of the cursor
vim.opt.signcolumn = "yes" -- always show sign column
vim.opt.isfname:append("@-@") -- allow @ in filenames

vim.opt.updatetime = 50 -- set updatetime to 50ms

vim.opt.clipboard = "unnamedplus" -- use system clipboard

vim.opt.colorcolumn = "80" -- set color column to 80

-- command to always have space at the end of the file
vim.api.nvim_create_autocmd({ "CursorMoved", "CursorMovedI", "BufEnter" }, {
	group = vim.api.nvim_create_augroup("ScrollOffEOF", {}),
	callback = function()
		local win_h = vim.api.nvim_win_get_height(0)
		local off = math.min(vim.o.scrolloff, math.floor(win_h / 2))
		local dist = vim.fn.line("$") - vim.fn.line(".")
		local rem = vim.fn.line("w$") - vim.fn.line("w0") + 1
		if dist < off and win_h - rem + dist < off then
			local view = vim.fn.winsaveview()
			view.topline = view.topline + off - (win_h - rem + dist)
			vim.fn.winrestview(view)
		end
	end,
})
