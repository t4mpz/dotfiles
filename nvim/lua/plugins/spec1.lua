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
}
