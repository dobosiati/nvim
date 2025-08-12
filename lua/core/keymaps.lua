local map = vim.keymap.set
local opts = { noremap = true, silent = true }

-- Leader key
vim.g.mapleader = " "
vim.g.maplocalleader = ","

-- General
map("n", "<leader>s", ":w<CR>", opts)        -- Save
map("n", "<leader>q", ":bd<CR>", opts)       -- Buffer delete
map("n", "qq", ":qa<CR>", opts)              -- Quit
map("n", "<leader>h", ":nohlsearch<CR>", opts) -- Clear search highlight
map("n", "<leader>c", ":close<CR>", opts)    -- Close current split
map("n", "<Esc>", "<cmd>noh<CR>", opts)      -- Escape clears highlight

-- Window navigation
map("n", "<C-h>", "<C-w>h", opts)
map("n", "<C-j>", "<C-w>j", opts)
map("n", "<C-k>", "<C-w>k", opts)
map("n", "<C-l>", "<C-w>l", opts)

-- Resize windows
map("n", "<C-Up>", ":resize +2<CR>", opts)
map("n", "<C-Down>", ":resize -2<CR>", opts)
map("n", "<C-Left>", ":vertical resize -2<CR>", opts)
map("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Buffer navigation
map("n", "<Tab>", ":bnext<CR>", opts)
map("n", "<S-Tab>", ":bprevious<CR>", opts)
map("n", "<leader>bd", ":bdelete<CR>", opts)

-- Quick escape from insert mode
map("i", "jk", "<ESC>", opts)

-- Visual Mode
map("v", "<", "<gv", opts)
map("v", ">", ">gv", opts)

-- Move selected lines up/down
map("v", "J", ":m '>+1<CR>gv=gv", opts)
map("v", "K", ":m '<-2<CR>gv=gv", opts)

-- Plugin-related (these work if you have the plugins installed)
map("n", "<leader>e", ":NvimTreeToggle<CR>", opts)        -- File explorer
map("n", "<leader>ff", ":Telescope find_files<CR>", opts) -- Find files
map("n", "<leader>fg", ":Telescope live_grep<CR>", opts)  -- Grep
map("n", "<leader>fb", ":Telescope buffers<CR>", opts)    -- List buffers
map("n", "<leader>fo", function() require("telescope.builtin").oldfiles({ only_cwd = true }) end, opts)    -- List buffers
map("n", "<leader>gs", ":LazyGit<CR>", opts)              -- LazyGit

-- Diagnostics (LSP)
map("n", "[d", vim.diagnostic.goto_prev, opts)
map("n", "]d", vim.diagnostic.goto_next, opts)
map("n", "<leader>dl", vim.diagnostic.setloclist, opts)

-- Select word
map("n", "<leader>w", "viw", opts)
