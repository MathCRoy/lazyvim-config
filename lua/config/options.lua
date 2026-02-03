-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

-- Imported from IdeaVim
vim.opt.ignorecase = true      -- Case-insensitive search...
vim.opt.smartcase = true       -- ...unless there's an uppercase letter
vim.opt.incsearch = true       -- Show matches as you type
vim.opt.scrolloff = 5          -- Keep cursor 5 lines from top/bottom
vim.opt.sidescrolloff = 5      -- Same for horizontal
vim.opt.clipboard = "unnamedplus"
vim.opt.timeoutlen = 300

-- Absolute line numbers
vim.opt.relativenumber = false
vim.opt.number = true

