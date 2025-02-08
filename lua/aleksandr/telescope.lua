local builtin = require('telescope.builtin')

-- all files
vim.keymap.set('n', '<Space>pf', builtin.find_files, { desc="Search project files" })
-- only files tracked by git
vim.keymap.set('n', '<C-p>', builtin.git_files, { desc="Search for files tracked by git" })
-- search inside files
vim.keymap.set('n', '<Space>sf', function()
	builtin.grep_string({ search = vim.fn.input("Grep > ") })
end, { desc = "Seach inside files" })
