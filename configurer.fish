#!/usr/bin/fish

set FISH_CONFIG_PATH "$HOME/.config/fish/config.fish"
set BASHRC_PATH "$HOME/.bashrc"


switch $argv[1] 
	case 'fish'
		echo 'funfa'
	case '*'
		echo 'escolhe outra'
end

