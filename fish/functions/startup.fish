# This is the base main startup function :P
# This function is called first thing in the config.fish file >w<
# always define stuffy stuff here inside the function and only specific variables
# and constants on top-levl UoU
#

set -l USING_NODE_VERSION '24.4.0'
set -l NODE_SYSTEM_EXPECTED_VERSION '22.17.0'

function fish_startup
	test (nvm current) = 'system' & (node --version) = NODE_SYSTEM_EXPECTED_VERSION && nvm use USING_NODE_VERSION >> /dev/null
end

