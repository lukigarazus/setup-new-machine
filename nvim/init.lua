-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

keymap = vim.api.nvim_set_keymap

keymap("i", "jj", "<Esc>", {})

vim.g.copilot_assume_mapped = true
