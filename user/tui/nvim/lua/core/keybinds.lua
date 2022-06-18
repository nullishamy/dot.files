local map = require("utils").map

--Remap space as leader key
map("", "<Space>", "<Nop>", { silent = true })
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Quick exit from insert mode
map("i", "jk", "<Esc>")

-- Jump 10 lines at a time
map("", "<S-j>", "<cmd>+10<cr>", { silent = true })
map("", "<S-k>", "<cmd>-10<cr>", { silent = true })

-- Disable arrow keys to force hjkl usage
map("n", "<Up>", "<Nop>")
map("n", "<Down>", "<Nop>")
map("n", "<Left>", "<Nop>")
map("n", "<Right>", "<Nop>")

map("n", "<Leader>d", ":nohlsearch<cr>")

-- Buffer controls
map("", "<C-h>", ":BufferLineCyclePrev<cr>")
map("", "<C-l>", ":BufferLineCycleNext<cr>")
map("", "<Leader>q", ":bp<bar>sp<bar>bn<bar>bd<cr>")

-- Navigation  controls
map('', '<Leader>f', ':Telescope find_files<CR>')
map('n', '<Leader>o', ':Telescope buffers<CR>')
map('n', '<Leader>g', ':NvimTreeOpen<CR>')

-- Reload configuration without restart nvim
map('n', '<leader>r', ':so %<CR>')

-- Hard close vim with ctrl q + q
map('n', '<C-q>q', ':qa!<CR>')

-- Terminal
map('n', '<C-t>', ':term<CR>', { noremap = true })  -- open
map('t', '<C-Esc>', '<C-\\><C-n>')                  -- exit

-- Trouble
map('', '<Leader>e', '<cmd>TroubleRefresh<cr>')
map('n', '<Leader>t', '<cmd>Trouble workspace_diagnostics<cr>')