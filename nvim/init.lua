vim.g.mapleader = " "
vim.opt.number = true
vim.opt.relativenumber = true
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.o.expandtab = true
vim.o.smarttab = true
vim.o.softtabstop = 2
vim.o.shiftwidth = 2

require("config.lazy")

require('mason').setup()

local function open_nvim_tree ()
	require("nvim-tree.api").tree.open()
end

local function toggle_nvim_tree ()
	require("nvim-tree.api").tree.toggle({
		open = true
	})
end

local function focus_nvim_tree ()
	require("nvim-tree.api").tree.focus()
end

local function close_nvim_tree ()
	require("nvim-tree.api").tree.close()
end

require("nvim-tree").setup({
	filters = {
		git_ignored = false,
	}
})


vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = open_nvim_tree })
local telescope = require("telescope.builtin")
local cmp = require("cmp")
local capabilities = require("cmp_nvim_lsp").default_capabilities()

require('mason-lspconfig').setup({
	ensure_installed = { 
		'clangd',
		'phpactor',
	},
	capabilities = capabilities
})
require('rust-tools').setup({
	server = {
		on_attach = function(_, bufnr)
			vim.keymap.set('n', '<C-space>', rt.hover_actions.hover_actions, { buffer = bufnr })
			vim.keymap.set('n', '<C>p', rt.code_action_group.code_action.group, { buffer = bufnr })
		end,
	}
})



vim.lsp.config['rust_analyzer'] = {
	settings = {
		['rust-analyzer'] = {
			check = {
				command = 'clippy',
			},
			inlayHints = {
				enable = true,
			},
		},
	},
}

vim.o.shell = "fish"

vim.keymap.set('n', '<Leader>ff', '<cmd>Telescope find_files no_ignore=true hidden=true<cr>', { desc = 'Telescope the files UwU' })
vim.keymap.set('n', '<Leader>fg', telescope.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<Leader>fb', telescope.buffers, { desc = 'Telescope buffers' })
vim.keymap.set({'n', 'v'}, '<leader>fw', telescope.grep_string);


vim.keymap.set('n', '<Leader>tt', toggle_nvim_tree, { desc = 'Toggles the nvim tree' })
vim.keymap.set('n', '<Leader>tf', focus_nvim_tree, { desc = 'Focus on opened nvim tree' })
vim.keymap.set('n', '<Leader>tc', close_nvim_tree, { desc = 'Closes nvim tree' })

vim.keymap.set('n', '<Leader>T', '<cmd>split | term<cr>', { desc = 'Opens nvim terminal' })

vim.keymap.set('n', '<C-/>', '<cmd>set @/*=""<cr>', { desc = 'Cleans search buffer' })

vim.keymap.set('n', '<Leader>ll', '<cmd>VimtexView<cr>', { buffer = true })

vim.lsp.config['lua_ls'] = {
	filetypes = { 'lua' },
	cmd = { 'lua-language-server'},
	root_markers = { { '.luarc.json', '.luarc.jsonc' }, '.git' },
}
vim.lsp.config['clangd'] = {}

vim.lsp.config['texlab'] = {
  settings = {
    texlab = {
      build = {
        onSave = true,
      },
      forwardSearch = {
        executable = 'zathura',
        args = { '--synctex-forward', '%l:1:%p', '%o'},
      },
    },
  },
}

vim.lsp.enable('lua_ls')
vim.lsp.enable('texlab')
vim.lsp.enable('rust-analyzer')
vim.lsp.enable('gopls')
vim.lsp.enable({"phpactor"})
vim.lsp.enable('julials')

vim.g.vimtex_view_general_viewer = 'zathura'

vim.diagnostic.config({ virtual_text = true })

cmp.setup({
	sources = cmp.config.sources({
		{ name = "nvim_lsp" },
		{ name = "buffer" },
		{ name = "path" },
	})
})

vim.lsp.config['rust-analyzer'] = {}


if not vim.g.transparent_enabled then vim.cmd("TransparentEnable") end
require("nightfox").setup({
	transparent = vim.g.transparent_enabled,
	styles = {
		sidebars = "transparent",
		floats   = "transparent",
	},
	modules = {
		nvimtree = {
			enable = true,
		},
	},
})

vim.opt.number = true


