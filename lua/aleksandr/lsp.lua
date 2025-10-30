local lsp_zero = require('lsp-zero')
local builtin = require('telescope.builtin')
local lspconfig = require('lspconfig')
local navic = require('nvim-navic')
local cmp_nvim_lsp = require('cmp_nvim_lsp')
local cwd = vim.fn.getcwd()

-- Reserve a space in the gutter
-- This will avoid an annoying layout shift in the screen
vim.opt.signcolumn = 'yes'


-- Add cmp_nvim_lsp capabilities settings to lspconfig
-- This should be executed before you configure any language server
local lspconfig_defaults = lspconfig.util.default_config
lspconfig_defaults.capabilities = vim.tbl_deep_extend(
  'force',
  lspconfig_defaults.capabilities,
  cmp_nvim_lsp.default_capabilities()
)


vim.api.nvim_create_autocmd('LspAttach', {
	desc = 'LSP Actions',
	callback = function(args)
		-- vim.keymap.set('n', 'gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>')
		-- vim.keymap.set('n', 'gr', '<cmd>lua telescope.lsp_references<cr>')
		local bufnr = args.buf

		vim.keymap.set('n', 'gd', vim.lsp.buf.definition, { desc="Go to defintion" })
		vim.keymap.set('n', 'gD', "<cmd>tab split | lua vim.lsp.buf.definition()<CR>", { desc="Go to defintion in a new tab" })
		vim.keymap.set('n', 'gr', builtin.lsp_references, { desc="Open a telescope window with references"} )

		vim.keymap.set('n', '<leader>wa', vim.lsp.buf.add_workspace_folder)
		vim.keymap.set('n', '<leader>wr', vim.lsp.buf.remove_workspace_folder)
		vim.keymap.set('n', '<leader>wl', function()
			print(vim.inspect(vim.lsp.buf.list_workspace_folders()))
		end, opts)
		vim.keymap.set('n', '<leader>d', vim.diagnostic.open_float, opts)
		vim.keymap.set('n', '<leader>cd', vim.diagnostic.show, opts)
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

-- enabling lsp servers
vim.lsp.enable('pyright')
vim.lsp.enable('ts_ls')
vim.lsp.enable('gopls')
vim.lsp.enable('emmet_language_server')


-- toggle lsp signature when typing
vim.keymap.set({ 'n' }, '<Leader>k', function()
	require('lsp_signature').toggle_float_win()
end, { silent = true, noremap = true, desc = 'toggle signature' })

