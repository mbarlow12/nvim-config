-- recommended globals
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- [[ Basic Keymaps ]]
-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local map = vim.keymap.set

if vim.g.vscode then
  -- VSCode extension
  -- Remap for dealing with word wrap
  map("n", "k", "v:count == 0 ? 'gk' : 'k'", { desc = "Down", expr = true, silent = true })
  map("n", "j", "v:count == 0 ? 'gj' : 'j'", { desc = "Up", expr = true, silent = true })
else
  -- ordinary Neovim
end

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
