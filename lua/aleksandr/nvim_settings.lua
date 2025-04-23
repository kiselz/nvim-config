-- tab is equal to 4 spaces, not fucking 8
vim.opt.tabstop=4 
vim.opt.shiftwidth=4

-- enable line numbering
vim.wo.number = true

vim.g.mapleader = " "
-- navic status line
vim.o.statusline = "%f %{%v:lua.require'nvim-navic'.get_location()%}"
-- enable true colors
vim.opt.termguicolors = true

-- vim.keymap.set("n", "<Leader>n", "<Nop>", { silent = true, remap = false })
-- vim.keymap.set("n", "<Leader>nb", "<Nop>", { silent = true, remap = false })
vim.keymap.set("n", "<Space>nb", ":Navbuddy<Return>", {desc = "Show nav buddy menu"})


-- remove highlighting
vim.keymap.set("n", "<Space>h", ":noh<Return>", {desc = "Remove Highlighting"})

-- resizing window

-- increase current buffer's width (ALT + ])
vim.keymap.set("n", "‘", "2<C-w>>")
vim.keymap.set("n", "<M-]>", "2<C-w>>")
-- redude current buffer's width (ALT + [)
vim.keymap.set("n", "“", "2<C-w><") 
vim.keymap.set("n", "<M-[>", "2<C-w><") 
-- increase current buffer's height (ALT + =)
vim.keymap.set("n", "≠", "<C-w>+")
vim.keymap.set("n", "<M-=>", "<C-w>+")
-- redude current buffer's height (ALT + -)
vim.keymap.set("n", "–", "<C-w>-") 
vim.keymap.set("n", "<M-->", "<C-w>-") 


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
