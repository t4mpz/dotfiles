function tampagit
	git config --local user.name t4mpz
	git config --local user.email tampinha1527@gmail.com
end

function giugit
	git config --local user.name giulliano
	git config --local user.email giulliano.scatalon@gmail.com
end

function fish_prompt
	set_color yellow
	echo -n (date "+%H:%M") (pwd) (git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/') '短 :3 ><> '
end

function aliases
	test -e .aliases.fish && source .aliases.fish
end

function fish_greeting
	aliases
end

function ignore
	test -e .gitignore || begin; printf "Didn't create a gitignore huh silly?"; touch .gitignore; end
	printf "\n%s\n" $argv[1] >> .gitignore
end

function iso_auth
	# First argument the cksum from the iso file
	# Second arg the expected response
	test $argv[1] = $argv[2] || printf "Owo wtf the iso file isn't valid check the iso installation"
end

function decaia
	if test -n $argv[1]
		docker compose down -f $argv[1] --remove-orphans
		docker compose down -vf $argv[1]
	else
		docker compose down --remove-orphans
		docker compose down -v
	end
	docker stop (docker ps -aq)
end

function add2vtol
	echo $argv[1] | tee -a $VTOL_LINKS_PATH >> /dev/null
end

function clearvtollist
	set --local vt $VTOL_LINKS_PATH
	rm $VTOL_LINKS_PATH
	set -x VTOL_LINKS_PATH $vt
	touch $VTOL_LINKS_PATH
end

abbr code "codium"
abbr fetch "uwufetch -d femboyos -i $HOME/Documentos/schulenaber/(random choice (ls $HOME/Documentos/schulenaber/))"

abbr sl "echo \"You misspelled it u silly :3\""
abbr up "brave -r https://archlinux.org/ && yay"
abbr trolha "ls -trolha"
abbr reload "source /home/tampinha/.config/fish/config.fish"
abbr ms "random choice"
abbr fuckingstupidcoorporatefaglanguage "go"
abbr listgits "grep -i 'Host github-' ~/.ssh/config | sed 's/Host //g'"
abbr sucumba "docker network rm (docker network ls -q)"
abbr cl "xclip -selection clipboard"
abbr bt "bluetoothctl"
abbr t "touch"
abbr lsvtolmusic "cat $VTOL_LINKS_PATH"
abbr coding "kitten icat $HOME/Documentos/schulenaber/coding.jpg"

set -x BUN_INSTALL "$HOME/.bun"
set -x PATH "$BUN_INSTALL/bin:$PATH"
set -x TODO_PATH "/home/tampinha/.todo"
set -x VTOL_LINKS_PATH "/home/tampinha/.linkslistvtol"



if status is-interactive
    # Commands to run in interactive sessions can go here
end
