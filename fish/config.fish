function tampagit
	git config --local user.name t4mpz
	git config --local user.email tampinha1527@gmail.com
end

function giugit
	git config --local user.name giulliano
	git config --local user.email giulliano.scatalon@gmail.com
end

alias code "codium"
alias fecth "uwufetch -d femboyos -i $HOME/Imagens/csmajor.png"
alias sl "echo \"You misspelled it u silly :3\""

set -x BUN_INSTALL "$HOME/.bun"
set -x PATH "$BUN_INSTALL/bin:$PATH"




if status is-interactive
    # Commands to run in interactive sessions can go here
end
