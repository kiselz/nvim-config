local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)

-- here you can setup the language servers
require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {
	  'pyright', 'quick_lint_js', 'clangd', 'cssls', 'html', 'tsserver',
	  'golangci_lint_ls'
  },
  handlers = {
    function(server_name)
      require('lspconfig')[server_name].setup({})
    end,
  },
})

vim.api.nvim_create_autocmd('LspAttach', {
	desc = 'LSP Actions',
	callback = function()
		-- vim.keymap.set('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>')
	end
})
