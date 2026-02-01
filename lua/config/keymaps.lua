-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local map = vim.keymap.set

-- Escape with jk/kj (insert mode only)
map("i", "jk", "<Esc>", { desc = "Escape" })
map("i", "JK", "<Esc>", { desc = "Escape" })
map("i", "kj", "<Esc>", { desc = "Escape" })
map("i", "KJ", "<Esc>", { desc = "Escape" })

-- Replacing stuff without yanking it (paste over and delete to black hole register)
map("n", "<leader>rw", '"_diwP', { desc = "Replace word" })
map("n", "<leader>rW", '"_diWP', { desc = "Replace WORD" })
map("n", "<leader>rp", '"_dipP', { desc = "Replace paragraph" })
map("n", "<leader>r(", '"_di(P', { desc = "Replace in ()" })
map("n", "<leader>r{", '"_di{P', { desc = "Replace in {}" })
map("n", "<leader>r[", '"_di[P', { desc = "Replace in []" })

-- Visual mode paste without overwriting register
map("v", "p", '"_dP', { desc = "Paste without yanking" })

-- Add empty lines without entering insert mode
map("n", "<leader>o", "o<Esc>", { desc = "Add line below" })
map("n", "<leader>O", "O<Esc>", { desc = "Add line above" })

-- Jump to next/previous method (Neovim equivalent of IdeaVim MethodDown/Up)
map("n", "<leader>pm", "]m", { desc = "Next method" })
map("n", "<leader>nm", "[m", { desc = "Previous method" })

-- Ctrl+l cycles between splits
map("n", "<C-l>", "<C-w>w", { desc = "Cycle between splits" })

-- Ctrl+Shift+L creates vertical split
map("n", "<C-S-l>", "<cmd>vsplit<cr>", { desc = "Vertical split" })

-- Move current buffer to the other split
map("n", "<leader>wm", function()
  local buf = vim.api.nvim_get_current_buf()
  vim.cmd("wincmd w")           -- go to other split
  vim.api.nvim_set_current_buf(buf)  -- open buffer there
  vim.cmd("wincmd w")           -- go back
  vim.cmd("bnext")              -- show different buffer in original split
end, { desc = "Move buffer to other split" })

-- Shift+Arrow to switch buffers
map("n", "<S-Left>", "<cmd>bprevious<cr>", { desc = "Previous buffer" })
map("n", "<S-Right>", "<cmd>bnext<cr>", { desc = "Next buffer" })

-- Ctrl+Alt+C copies current file path
map("n", "<C-A-c>", function()
  local path = vim.fn.expand("%:p")
  vim.fn.setreg("+", path)
  print("Copied: " .. path)
end, { desc = "Copy file path" })

-- Ctrl+Escape clears all splits except buffers
map("n", "<C-Esc>", function()
  pcall(vim.cmd, "Neotree close")
  pcall(vim.cmd, "DBUIClose")
  pcall(vim.cmd, "only")
end, { desc = "Clear all panels" })

-- Ctrl+/ to toggle comment (like IntelliJ)
map("n", "<C-/>", "gcc", { desc = "Toggle comment", remap = true })
map("v", "<C-/>", "gc", { desc = "Toggle comment", remap = true })

-- Alt+F12 to toggle floating terminal
map("n", "<A-F12>", function()
  Snacks.terminal()
end, { desc = "Toggle terminal" })
map("t", "<A-F12>", "<cmd>close<cr>", { desc = "Close terminal" })

-- "if" text object = inner file (select entire file)
map({ "o", "x" }, "if", ":<C-u>normal! ggVG<CR>", { silent = true, desc = "Inner file" })
