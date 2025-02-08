local cmp = require('cmp')
local luasnip = require('luasnip')


cmp.setup({
	snippet = {

	},
	window = {
		completion = cmp.config.window.bordered(),
		documentation = cmp.config.window.bordered(),
	},
	mapping = {
		['<CR>'] = cmp.mapping.confirm({select=false})
	},
})
 
