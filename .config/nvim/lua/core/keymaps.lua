local map = require("helpers.keys").map

-- Quick access to some common actions
map("n", "<leader>w", "<cmd>update<cr>", "Write")

map("n", "<leader>p", "\"+p", "Write")

-- Diagnostic keymaps
map('n', 'gx', vim.diagnostic.open_float, "Show diagnostics under cursor")

map("n", "j", "gj", "Go to beginning of line")
map("n", "k", "gk", "Go to beginning of line")
map("n", "gj", "j", "Go to beginning of line")
map("n", "gk", "k", "Go to beginning of line")

-- Easier access to beginning and end of lines
map("n", "<M-h>", "^", "Go to beginning of line")
map("n", "<M-l>", "$", "Go to end of line")

-- Better window navigation
map("n", "s", "<C-w>", "Window prefix")
map("n", "<C-h>", "<C-w><C-h>", "Navigate windows to the left")
map("n", "<C-j>", "<C-w><C-j>", "Navigate windows down")
map("n", "<C-k>", "<C-w><C-k>", "Navigate windows up")
map("n", "<C-l>", "<C-w><C-l>", "Navigate windows to the right")
map("n", "<Tab>", "<C-w>w", "Window prefix")

-- Move with shift-arrows
map("n", "<S-Left>", "<C-w><S-h>", "Move window to the left")
map("n", "<S-Down>", "<C-w><S-j>", "Move window down")
map("n", "<S-Up>", "<C-w><S-k>", "Move window up")
map("n", "<S-Right>", "<C-w><S-l>", "Move window to the right")

-- Resize with arrows
map("n", "<C-Up>", ":resize +2<CR>")
map("n", "<C-Down>", ":resize -2<CR>")
map("n", "<C-Left>", ":vertical resize +2<CR>")
map("n", "<C-Right>", ":vertical resize -2<CR>")

map("n", "[t", "gT", "Tab previous")
map("n", "]t", "gt", "Tab next")
-- Deleting buffers
local buffers = require("helpers.buffers")
map("n", "<leader>db", buffers.delete_this, "Current buffer")
map("n", "<leader>do", buffers.delete_others, "Other buffers")
map("n", "<leader>da", buffers.delete_all, "All buffers")

-- Stay in indent mode
map("v", "<", "<gv")
map("v", ">", ">gv")

map("n", "Y", "y$")
map("n", "gV", "`[v`]")
map("v", "#", "y/<C-R>\"<CR>")

-- Clear after search
map("n", "<Esc><Esc>", "<cmd>nohl<cr>", "Clear highlights")
