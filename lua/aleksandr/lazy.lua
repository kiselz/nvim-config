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
	"SmiteshP/nvim-navic",
	"windwp/nvim-ts-autotag",
	"Mofiqul/dracula.nvim",
	{ "rose-pine/neovim", name = "rose-pine" },
	"christoomey/vim-tmux-navigator",
	"terrortylor/nvim-comment",
	-- "JoosepAlviste/nvim-ts-context-commentstring",
	
	{
		"SmiteshP/nvim-navbuddy",
		dependencies = {
			"SmiteshP/nvim-navic",
			"MunifTanjim/nui.nvim"
		},
		opts = { lsp = { auto_attach = true } }
	},
	
	{
		'windwp/nvim-autopairs',
		event = "InsertEnter",
		config = true
	},
	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		---@module "ibl"
		---@type ibl.config
		opts = {},
	},
	'folke/zen-mode.nvim',
	'ray-x/lsp_signature.nvim',
	'lewis6991/gitsigns.nvim',
	"supermaven-inc/supermaven-nvim",
	{
		"mikavilpas/yazi.nvim",
		dependencies = {
			-- check the installation instructions at
			-- https://github.com/folke/snacks.nvim
			"folke/snacks.nvim"
		},
	},
	"github/copilot.vim",
	"nvim-lualine/lualine.nvim",
	-- lsp stuff below
	{'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},
	'neovim/nvim-lspconfig',
	'hrsh7th/cmp-nvim-lsp',
	'hrsh7th/nvim-cmp',
	'L3MON4D3/LuaSnip',
	-- avante stuff below
	{
	  "yetone/avante.nvim",
	  event = "VeryLazy",
	  lazy = false,
	  version = false, -- set this to "*" if you want to always pull the latest change, false to update on release
	  opts = {
		-- add any opts here
	  },
	  -- if you want to build from source then do `make BUILD_FROM_SOURCE=true`
	  build = "make",
	  -- build = "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false" -- for windows
	  dependencies = {
		"stevearc/dressing.nvim",
		"nvim-lua/plenary.nvim",
		"MunifTanjim/nui.nvim",
		--- The below dependencies are optional,
		"hrsh7th/nvim-cmp", -- autocompletion for avante commands and mentions
		"nvim-tree/nvim-web-devicons", -- or echasnovski/mini.icons
		"zbirenbaum/copilot.lua", -- for providers='copilot'
		{
		  -- support for image pasting
		  "HakonHarnes/img-clip.nvim",
		  event = "VeryLazy",
		  opts = {
			-- recommended settings
			default = {
			  embed_image_as_base64 = false,
			  prompt_for_file_name = false,
			  drag_and_drop = {
				insert_mode = true,
			  },
			  -- required for Windows users
			  use_absolute_path = true,
			},
		  },
		},
		{
		  -- Make sure to set this up properly if you have lazy=true
		  'MeanderingProgrammer/render-markdown.nvim',
		  opts = {
			file_types = { "markdown", "Avante" },
		  },
		  ft = { "markdown", "Avante" },
		},
	  },
	}
})
