require("config.lazy")
vim.g.mapleader = "\\"

local builtin = require("telescope.builtin")
vim.keymap.set('n', '<Leader>ff', builtin.find_files, { desc = 'Telescope the files UwU' })
vim.keymap.set('n', '<Leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<Leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<Leader>fh', builtin.help_tags, { desc = 'Telescope help' })
