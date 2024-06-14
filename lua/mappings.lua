require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", "<Tab>", ":bnext<CR>")
map("n", "<S-Tab>", ":bprevious<CR>")

map("n", "\\", ":NvimTreeToggle<CR>")
-- map("n", "<leader>e", "")
map("n", "<leader><leader>", ":Telescope buffers<CR>", { noremap = true, silent = true })

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")
map("n", "<leader>'", ":w<CR>:!python3 %<CR>", { noremap = true, silent = true })
map("v", "J", ":m '>+1<CR>gv=gv", { noremap = true, silent = true })
map("v", "K", ":m '<-2<CR>gv=gv", { noremap = true, silent = true })

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")
