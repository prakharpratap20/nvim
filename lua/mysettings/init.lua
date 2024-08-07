require("mysettings.set") -- Set global options
require("mysettings.remap") -- Set key mappings
require("mysettings.lazy_init") -- Lazy load plugins

local augroup = vim.api.nvim_create_augroup
local prime = augroup("mysettings", {})

local autocmd = vim.api.nvim_create_autocmd
local yank_group = augroup("HighlightYank", {})

-- Reload configuration
function R(name)
	require("plenary.reload").reload_module(name)
end

-- Automatically open Netrw when starting Neovim without arguments
vim.api.nvim_create_autocmd("VimEnter", {
	callback = function()
		if vim.fn.argc() == 0 then
			vim.cmd("Ex")
		end
	end,
})
vim.g.netrw_browse_split = 0 -- open in the same window
vim.g.netrw_banner = 0 -- disable banner
vim.g.netrw_winsize = 25 -- set window size to 25

-- highlight on yank
autocmd("TextYankPost", {
	group = yank_group,
	pattern = "*",
	callback = function()
		vim.highlight.on_yank({
			higroup = "IncSearch",
			timeout = 50,
		})
	end,
})

-- remove trailing whitespace on save
autocmd({ "BufWritePre" }, {
	group = prime,
	pattern = "*",
	command = [[%s/\s\+$//e]],
})

-- set filetype based on file extension
autocmd("LspAttach", {
	group = prime,
	callback = function(e)
		local opts = { buffer = e.buf }
		vim.keymap.set("n", "gd", function()
			vim.lsp.buf.definition()
		end, opts)
		vim.keymap.set("n", "K", function()
			vim.lsp.buf.hover()
		end, opts)
		vim.keymap.set("n", "<leader>vws", function()
			vim.lsp.buf.workspace_symbol()
		end, opts)
		vim.keymap.set("n", "<leader>vd", function()
			vim.diagnostic.open_float()
		end, opts)
		vim.keymap.set("n", "<leader>vca", function()
			vim.lsp.buf.code_action()
		end, opts)
		vim.keymap.set("n", "<leader>vrr", function()
			vim.lsp.buf.references()
		end, opts)
		vim.keymap.set("n", "<leader>vrn", function()
			vim.lsp.buf.rename()
		end, opts)
		vim.keymap.set("i", "<C-h>", function()
			vim.lsp.buf.signature_help()
		end, opts)
		vim.keymap.set("n", "]d", function()
			vim.diagnostic.goto_next()
		end, opts)
		vim.keymap.set("n", "[d", function()
			vim.diagnostic.goto_prev()
		end, opts)
	end,
})

-- function to clear command line after some command
vim.api.nvim_create_autocmd("BufWritePost", {
	callback = function()
		vim.defer_fn(function()
			vim.cmd("echon ''")
		end, 500) -- Delay in milliseconds
	end,
})
