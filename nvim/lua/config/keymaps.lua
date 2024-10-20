-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.api.nvim_set_keymap

keymap("i", "jj", "<Esc>", {})

keymap("n", "<Left>", "<C-w>h", {})
keymap("n", "<Down>", "<C-w>j", {})
keymap("n", "<Up>", "<C-w>k", {})
keymap("n", "<Right>", "<C-w>l", {})

keymap("n", "<D-s>", "<cmd>w<cr><esc>", { desc = "Save file" })
keymap("i", "<D-s>", "<cmd>w<cr><esc>", { desc = "Save file" })

keymap("n", "<D-z>", "u", { desc = "Undo" })
keymap("n", "<D-S-z>", "<C-r>", { desc = "Redo" })
keymap("n", "<D-f>", "/", { desc = "Search in file" })
