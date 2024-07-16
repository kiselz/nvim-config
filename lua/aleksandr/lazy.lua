local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
	"nvim-tree/nvim-web-devicons",
	{
		"nvim-tree/nvim-tree.lua",
		version = "*",
		lazy = false,
		dependencies = {
			"nvim-tree/nvim-web-devicons",
		},
 		config = function()
   			require("nvim-tree").setup {}
 		end,
	},
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
	},
	{
		'nvim-telescope/telescope.nvim',
		dependencies = {
			'nvim-lua/plenary.nvim'
		},
	},
	"rebelot/kanagawa.nvim",
	"nvim-treesitter/nvim-treesitter",
	"windwp/nvim-ts-autotag",
	"Mofiqul/dracula.nvim",
	"christoomey/vim-tmux-navigator",
	"m4xshen/autoclose.nvim",
	-- lsp stuff below
	{'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
	'neovim/nvim-lspconfig',
	'hrsh7th/cmp-nvim-lsp',
	'hrsh7th/nvim-cmp',
	'L3MON4D3/LuaSnip',
	"williamboman/mason.nvim",
    	"williamboman/mason-lspconfig.nvim",
})
