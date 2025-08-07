local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup

-- Create a group to avoid duplication
local MyAutoGroup = augroup("MyAutoGroup", { clear = true })

-- Highlight on yank
autocmd("TextYankPost", {
  group = MyAutoGroup,
  pattern = "*",
  callback = function()
    vim.highlight.on_yank({ timeout = 200 })
  end,
})

-- Remove trailing whitespace on save
autocmd("BufWritePre", {
  group = MyAutoGroup,
  pattern = "*",
  callback = function()
    vim.cmd([[%s/\s\+$//e]])
  end,
})

-- Automatically resize splits when window is resized
autocmd("VimResized", {
  group = MyAutoGroup,
  callback = function()
    vim.cmd("tabdo wincmd =")
  end,
})

-- Show cursor line only in active window
autocmd({ "InsertLeave", "WinEnter" }, {
  group = MyAutoGroup,
  callback = function()
    vim.opt.cursorline = true
  end,
})

autocmd({ "InsertEnter", "WinLeave" }, {
  group = MyAutoGroup,
  callback = function()
    vim.opt.cursorline = false
  end,
})

-- 2-space indent for JavaScript/JSON
autocmd("FileType", {
  group = MyAutoGroup,
  pattern = { "javascript", "json" },
  callback = function()
    vim.bo.shiftwidth = 2
    vim.bo.tabstop = 2
  end,
})

-- Disable line numbers in terminal mode
autocmd("TermOpen", {
  group = MyAutoGroup,
  callback = function()
    vim.wo.number = false
    vim.wo.relativenumber = false
  end,
})

-- Automatically close NvimTree when it's the last window
autocmd("BufEnter", {
  group = MyAutoGroup,
  callback = function()
    if
      vim.bo.filetype == "NvimTree"
      and #vim.api.nvim_list_wins() == 1
    then
      vim.cmd("quit")
    end
  end,
})

