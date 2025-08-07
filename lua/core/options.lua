local opt = vim.opt

-- 🔢 UI & Visuals
vim.opt.number = true            -- Show absolute line numbers
vim.opt.relativenumber = true    -- Show relative line numbers
vim.opt.cursorline = true        -- Highlight current line
vim.opt.signcolumn = "yes"       -- Always show sign column (for git/LSP info)
vim.opt.termguicolors = true     -- Enable 24-bit RGB colors
vim.opt.wrap = false             -- Don't wrap long lines
vim.opt.scrolloff = 8            -- Keep 8 lines visible above/below cursor
vim.opt.sidescrolloff = 8        -- Same for horizontal scroll

-- 📝 Editing Behavior
vim.opt.expandtab = true         -- Use spaces instead of tabs
vim.opt.tabstop = 4              -- Number of spaces a tab counts for
vim.opt.shiftwidth = 4           -- Indent size when using >> or <<
vim.opt.smartindent = true       -- Smart auto-indenting on new lines
vim.opt.autoindent = true        -- Copy indent from current line
vim.opt.smartcase = true         -- Case-sensitive only if capital letters used
vim.opt.ignorecase = true        -- Case-insensitive search by default

-- 📁 Files & Backup
vim.opt.swapfile = false         -- Don't use swapfiles
vim.opt.backup = false           -- Don't create backup files
vim.opt.undofile = true          -- Save undo history to disk
vim.opt.writebackup = false      -- Don't allow editing while backup is written

-- 🔍 Search
vim.opt.incsearch = true         -- Show matches as you type
vim.opt.hlsearch = true          -- Highlight all matches after search

-- 🖱️ Mouse & Clipboard
vim.opt.mouse = "a"              -- Enable mouse in all modes
vim.opt.clipboard = "unnamedplus" -- Use system clipboard by default

-- ⏱️ Performance
vim.opt.updatetime = 250         -- Faster completion (default is 4000ms)
vim.opt.timeoutlen = 300         -- Time to wait for mapped sequence

--🚦 Split Behavior
vim.opt.splitright = true        -- Vertical splits to the right
vim.opt.splitbelow = true        -- Horizontal splits below

-- 🧼 Whitespace & UI Characters
vim.opt.list = false              -- Show invisible characters
vim.opt.listchars = { tab = "→ ", trail = "·", space = "·" }
vim.opt.fillchars = { eob = " " } -- Hide ~ on empty lines
