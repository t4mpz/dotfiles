

vim.g.mapleader = "\\"
require("config.lazy")
require('mason').setup()

local telescope = require("telescope.builtin")
local cmp = require("cmp")
local capabilities = require("cmp_nvim_lsp").default_capabilities()

require('mason-lspconfig').setup({
	ensure_installed = { 'clangd' },
	capabilities = capabilities
})


vim.g.mapleader = "\\"
vim.keymap.set('n', '<Leader>ff', telescope.find_files, { desc = 'Telescope the files UwU' })
vim.keymap.set('n', '<Leader>fg', telescope.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<Leader>fb', telescope.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<Leader>fh', telescope.help_tags, { desc = 'Telescope help' })

vim.lsp.config['lua_ls'] = {
	filetypes = { 'lua' },
	cmd = { 'lua-language-server'},
	root_markers = { { '.luarc.json', '.luarc.jsonc' }, '.git' },
}
vim.lsp.config['clangd'] = {}

vim.lsp.enable('lua_ls')
vim.lsp.enable('rust-analyzer')
vim.lsp.enable('gopls')

cmp.setup({
	sources = cmp.config.sources({
		{ name = "nvim_lsp" },
		{ name = "buffer" },
		{ name = "path" },
	})
})


if not vim.g.transparent_enabled then vim.cmd("TransparentEnable") end
require("nightfox").setup({
	transparent = vim.g.transparent_enabled,
	styles = {
		sidebars = "transparent",
		floats   = "transparent",
	},
})



