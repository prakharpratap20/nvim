vim.g.mapleader = " "

-- Add your custom mappings here

local map = vim.keymap.set
local opts = { noremap = true, silent = true }

map("n", "<leader>e", vim.cmd.Ex)

map("n", "<leader>x", ":bdelete<CR>", opts)

-- Navigation between buffers
map("n", "<Tab>", ":bnext<CR>", opts)
map("n", "<S-Tab>", ":bprevious<CR>", opts)

-- Command mode
map("n", ";", ":", { desc = "CMD enter command mode" })

-- Escape in insert mode
map("i", "jk", "<ESC>")

-- Run Python file
map("n", "<leader>'", ":w<CR>:!python3 %<CR>", opts)

-- Move lines in visual mode
map("v", "J", ":m '>+1<CR>gv=gv", opts)
map("v", "K", ":m '<-2<CR>gv=gv", opts)

-- Custom mappings for terminal commands
-- Open terminal in vertical split occupying half the screen
map("n", "<leader>v", ":VTerm<CR>", opts)

-- Custom commands to open terminal splits
vim.cmd([[
  command! VTerm :vsp | :wincmd l | :resize 50% | :terminal
]])


-- Select a word
map("n", "<leader><leader>", "viw")
