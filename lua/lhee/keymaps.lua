local opts = { noremap = true, silent = true }
-- Shorten function name
local keymap = vim.api.nvim_set_keymap

-- Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- Normal --
-- Splitting Windows
keymap("n", "<leader>hs", ":split<cr>", opts)
keymap("n", "<leader>vs", ":vertical split<cr>", opts)

-- Better Window Navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize with arrow
keymap("n", "<C-Up>", ":resize -2<cr>", opts)
keymap("n", "<C-Down>", ":resize +2<cr>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<cr>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<cr>", opts)

-- Navigate buffers
keymap("n", "<S-l>", ":bnext<cr>", opts)
keymap("n", "<S-h>", ":bprevious<cr>", opts)

-- Moving Lines
-- We use the plugin move.nvim
keymap("n", "<A-j>", ":MoveLine(1)<cr>", opts)
keymap("n", "<A-k>", ":MoveLine(-1)<cr>", opts)

-- Quicker Exit and save
keymap("n", "<leader>wq", ":wq<cr>", opts)

-- Visual --
-- Stay in indent mode
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- Moving Blocks of Code
-- We use the plugin move.nvim
keymap("v", "<A-j>", ":MoveBlock(1)<cr>", opts)
keymap("v", "<A-k>", ":MoveBlock(-1)<cr>", opts)

-- Telescope --
keymap("n", "<leader>ff", "<cmd>Telescope find_files<cr>", opts)
keymap("n", "<leader>lg", "<cmd>Telescope live_grep<cr>", opts)

-- Nvimtree --
keymap("n", "<leader>e", ":NvimTreeToggle<cr>", opts)

-- LspInstallInfo --
keymap("n", "<leader>lii", ":LspInstallInfo<cr>", opts)
