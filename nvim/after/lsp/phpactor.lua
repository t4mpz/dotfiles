local util = require "lspconfig.util"

return {
	cmd = { "phpactor", "language-server" },
	filetypes = { "php" },
	root_markers = { "composer.json", "composer.json" },
	workspace_required = true,
	init_options = {
		["language_server_phpstan.enabled"] = false,
		["language_server_psalm.enabled"] = false,
		["symfony.enabled"] = false
	}
}

