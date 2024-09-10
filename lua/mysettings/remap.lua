vim.g.mapleader = " " -- Set leader key to space

-- Add your custom mappings here

local map = vim.keymap.set -- Set key mappings
-- noremap: Do not remap the right-hand side of the mappings
-- silent: Do not echo the command in the command line
local opts = { noremap = true, silent = true } -- Options for key mappings

map("n", "<leader>e", vim.cmd.Ex, opts) -- Open command mode
map("n", "<leader>x", ":bdelete<CR>", opts) -- Close buffer
map("n", "<Tab>", ":bnext<CR>", opts) -- Next buffer
map("n", "<S-Tab>", ":bprevious<CR>", opts) -- Previous buffer
map("n", ";", ":", { desc = "CMD enter command mode" }) -- Enter command mode
map("i", "jk", "<ESC>", opts) -- Exit insert mode
map("v", "J", ":m '>+1<CR>gv=gv", opts) -- Move line down in visual mode
map("v", "K", ":m '<-2<CR>gv=gv", opts) -- Move line up in visual mode
map("n", "<leader><leader>", "viw") -- Select word under cursor
map("n", "<leader>sp", ":set spell!<CR>", opts) -- Toggle spell check

-- Custom mappings for terminal commands
-- Open terminal in vertical split occupying half the screen
map("n", "<leader>v", ":VTerm<CR>", opts)

-- Custom commands to open terminal splits
vim.cmd([[
  command! VTerm :vsp | :wincmd l | :resize 50% | :terminal
]])

map("n", "<leader>p", ":w<CR>:!python3 %<CR>", opts) -- Run python script
-- map("n", "<leader>c", ":w<CR>:!gcc % -o %:r<CR>:!%:r<CR>", opts) -- Compile C program
-- map("n", "<leader>c", ":w<CR>:!gcc % -o %:r<CR>", opts) -- Compile C program
-- map("n", "<leader>cpp", ":w<CR>:!g++ % -o %:r<CR>", opts) -- Compile C++ program
-- map("n", "<leader>java", ":w<CR>:!javac %<CR>:!java %:r<CR>", opts) -- Compile and run Java program
-- map("n", "<leader>sh", ":w<CR>:!bash %<CR>", opts) -- Run bash script
-- map("n", "<leader>js", ":w<CR>:!node %<CR>", opts) -- Run JavaScript script
-- map("n", "<leader>rb", ":w<CR>:!ruby %<CR>", opts) -- Run Ruby script
