vim.g.mapleader = " "

-- remove highlighting
vim.keymap.set("n", "<leader>h", ":noh<Return>", {desc = "Remove Highlighting"})
-- increase current buffer's width (ALT + ])
vim.keymap.set("n", "‘", "2<C-w>>")
-- redude current buffer's width (ALT + [)
vim.keymap.set("n", "“", "2<C-w><") 
-- move current line up (ALT + K) 
vim.keymap.set("n", "˚", ":m -2<Return>")  
-- move current line down (ALT + J) 
vim.keymap.set("n", "∆", ":m +1<Return>")  
-- exit from insert mode by pressing Alt+q
vim.keymap.set("i", "œ", "<Esc>")
