-- automatically add identation level after pressing enter 
-- to type like this: <div> <CR> + coc added 1 identation level <CR> </div>
vim.keymap.set("i", "<Enter>", "getline(line('.'))[col('.')-1] == '<' ? '<Enter><C-o>O' : '<Enter>'", { expr=true, buffer=true })
