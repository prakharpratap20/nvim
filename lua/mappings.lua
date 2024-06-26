require "nvchad.mappings"

-- Add your custom mappings here

local map = vim.keymap.set

-- Navigation between buffers
map("n", "<Tab>", ":bnext<CR>")
map("n", "<S-Tab>", ":bprevious<CR>")

-- Toggle NvimTree
map("n", "\\", ":NvimTreeToggle<CR>")

-- Telescope buffers
map("n", "<leader><leader>", ":Telescope buffers<CR>", { noremap = true, silent = true })

-- Command mode
map("n", ";", ":", { desc = "CMD enter command mode" })

-- Escape in insert mode
map("i", "jk", "<ESC>")

-- Run Python file
map("n", "<leader>'", ":w<CR>:!python3 %<CR>", { noremap = true, silent = true })

-- Move lines in visual mode
map("v", "J", ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
map("v", "K", ":m '<-2<CR>gv=gv", { noremap = true, silent = true })

-- Custom mappings for terminal commands
-- Open terminal in vertical split occupying half the screen
map("n", "<leader>v", ":VTerm<CR>", { noremap = true, silent = true })

-- Open terminal in horizontal split occupying half the screen
map("n", "<leader>h", ":HTerm<CR>", { noremap = true, silent = true })

-- Custom commands to open terminal splits
vim.cmd [[
  command! VTerm :vsp | :wincmd l | :resize 50% | :terminal
]]

vim.cmd [[
  command! HTerm :sp | :wincmd j | :resize 50% | :terminal
]]
