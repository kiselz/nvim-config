-- tab is equal to 4 spaces, not fucking 8
vim.opt.tabstop=4 
vim.opt.shiftwidth=4

-- enable line numbering
-- vim.wo.number = true

-- enable relative line numbering
vim.cmd("set number relativenumber")

vim.g.mapleader = " "
-- navic status line
vim.o.statusline = "%f %{%v:lua.require'nvim-navic'.get_location()%}"

-- enable true colors
vim.opt.termguicolors = true

-- vim.keymap.set("n", "<Leader>n", "<Nop>", { silent = true, remap = false })
-- vim.keymap.set("n", "<Leader>nb", "<Nop>", { silent = true, remap = false })
vim.keymap.set("n", "<leader>nb", ":Navbuddy<Return>", {desc = "Show nav buddy menu"})


-- remove highlighting
vim.keymap.set("n", "<leader>h", ":noh<Return>", {desc = "Remove Highlighting"})

-- exit from terminal mode by pressing esc
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", {desc = "Exit terminal mode"})

-- resizing window
vim.keymap.set("n", "<Up>", "<Cmd>resize +2<CR>", { desc = "Increase window height" })
vim.keymap.set("n", "<Down>", "<Cmd>resize -2<CR>", { desc = "Decrease window height" })
vim.keymap.set("n", "<Left>", "<Cmd>vertical resize -2<CR>", { desc = "Increase window width" })
vim.keymap.set("n", "<Right>", "<Cmd>vertical resize +2<CR>", { desc = "Decrease window width" })

-- splits
vim.keymap.set("n", "<leader>_", "<C-w>s", { desc = "Split below" })
vim.keymap.set("n", "<leader>|", "<C-w>v", { desc = "Split right" })


-- move current line (or current selection) up (ALT + K) 
vim.keymap.set("n", "˚", ":m -2<Return>")  
vim.keymap.set("n", "<M-k>", ":m -2<Return>")  
vim.keymap.set("v", "˚", ":m -2<Return>gv=gv")  
vim.keymap.set("v", "<M-k>", ":m -2<Return>gv=gv")  
-- move current line (or current selection) down (ALT + J) 
vim.keymap.set("n", "∆", ":m +1<Return>")  
vim.keymap.set("n", "<M-j>", ":m +1<Return>")  
vim.keymap.set("v", "∆", ":m +1<Return>gv=gv")  
vim.keymap.set("v", "<M-j>", ":m +1<Return>gv=gv")  
-- exit from insert mode and visual mode by pressing Alt+q
vim.keymap.set({"i", "v"}, "œ", "<Esc>")
vim.keymap.set({"i", "v"}, "<M-q>", "<Esc>")

-- copy a selected content to the system clipboard register
vim.keymap.set("v", "<C-c>", "\"+y")

-- ident to the right in insert mode (ALT + >)
vim.keymap.set("i", "≥", "<C-t>")
vim.keymap.set("i", "<M-.>", "<C-t>")
-- ident to the left in insert mode (ALT + <)
vim.keymap.set("i", "≤", "<C-d>")
vim.keymap.set("i", "<M-,>", "<C-d>")

-- delete a word in insert mode (ALT + d)
vim.keymap.set("i", "∂", "<C-w>")
vim.keymap.set("i", "<M-d>", "<C-w>")


-- remap with tabs
vim.keymap.set("n", "te", ":tabedit<Return>")
vim.keymap.set("n", "tc", ":tabclose<Return>")
-- this binding triggers also <C-i> binding for no conrete reason 
vim.keymap.set("n", "<leader><tab>", ":tabnext<Return>")
vim.keymap.set("n", "<leader><s-tab>", ":tabprev<Return>")

-- move tabs
vim.keymap.set("n", "<leader><Left>", ":-tabm<Return>")  -- move to the left
vim.keymap.set("n", "<leader><Right>", ":+tabm<Return>") -- move to the right
vim.keymap.set("n", "<leader>0", ":0tabm<Return>")       -- move to the first tab

