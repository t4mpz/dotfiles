return {
	{
		"EdenEast/nightfox.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			vim.cmd([[colorscheme carbonfox]])
		end,
	},
	{
		"mason-org/mason.nvim",
		opts = {},
	},
	{
		"nvim-tree/nvim-tree.lua",
		lazy = false,
	},
	{
		"nvim-telescope/telescope.nvim",
		lazy = false,
	},
	{
		"xiyaowong/transparent.nvim",
		lazy = false,
	},
	{
		"hrsh7th/nvim-cmp",
		lazy = false,
	},
	{
		"hrsh7th/cmp-nvim-lsp",
		lazy = false
	},
	{
		"mason-org/mason-lspconfig.nvim",
		opts = {},
		dependencies = {
			{ "mason-org/mason.nvim", opts = {} },
			"neovim/nvim-lspconfig",
		},
	}
}
