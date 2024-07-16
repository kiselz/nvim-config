-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- key remap
vim.keymap.set("n", "<C-s>", "<C-w>w") -- switch between open tabs
vim.keymap.set("n", "<C-e>", ":NvimTreeToggle<Return>") -- toggle nvim tree
vim.keymap.set("n", "<C-w>", ":q<Return>") -- close current tab

