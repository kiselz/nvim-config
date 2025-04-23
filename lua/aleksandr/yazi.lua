local Yazi = require('yazi')

Yazi.setup({})
vim.keymap.set("n", "<leader>-", function()
	Yazi.yazi()
end)
