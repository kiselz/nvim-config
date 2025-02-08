local lsp_zero = require('lsp-zero')
local builtin = require('telescope.builtin')
local lspconfig = require('lspconfig')
local mason = require('mason')
local mason_lspconfig = require('mason-lspconfig')
local navic = require('nvim-navic')
local cwd = vim.fn.getcwd()


lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)


-- here you can setup the language servers
mason.setup({})
mason_lspconfig.setup({
  ensure_installed = {
	  'pyright', 'clangd', 'html', 'tsserver', 'eslint',
	  'gopls', 'cssls', 'css_variables', 'templ', 'jsonls'
  },

})

mason_lspconfig.setup_handlers({
	function (server_name)
		lspconfig[server_name].setup {
			on_attach = function(client, bufnr)
				navic.attach(client, bufnr)
			end
		}
	end
})

vim.api.nvim_create_autocmd('LspAttach', {
	desc = 'LSP Actions',
	callback = function(args)
		-- vim.keymap.set('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>')
		-- vim.keymap.set('n', 'gr', '<cmd>lua telescope.lsp_references<cr>')
		local bufnr = args.buf

		vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc="Go to defintion" })
		vim.keymap.set('n', 'gr', builtin.lsp_references, { desc="Open a telescope window with references"} )

		vim.keymap.set('n', '<leader>wa', vim.lsp.buf.add_workspace_folder)
		vim.keymap.set('n', '<leader>wr', vim.lsp.buf.remove_workspace_folder)
		vim.keymap.set('n', '<leader>wl', function()
			print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
		end, opts)
		vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float, opts)
		vim.keymap.set('n', '<leader>D', vim.lsp.buf.type_definition, opts)
		vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)
		vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, opts)
		vim.keymap.set('n', '<leader>f', function()
			vim.lsp.buf.format { async = true }
		end)

		-- lsp signature
		require('lsp_signature').on_attach({
			-- setup options goes here
		}, bufnr)
	end
})

-- toggle lsp signature when typing
vim.keymap.set({ 'n' }, '<Leader>k', function()
	require('lsp_signature').toggle_float_win()
end, { silent = true, noremap = true, desc = 'toggle signature' })

