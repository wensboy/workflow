# ====================== #
# ====================== #
# ====== workflow ====== #
# ====================== #
# ====================== #

load_nvm(){
	export NVM_DIR="$HOME/github/.nvm"
	[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
	[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
}

load_zsh_plugin(){
	source $HOME/github/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
	source $HOME/github/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
}

load_alias(){
	alias cls=clear
	alias sr=source
	alias code=codium
	alias ls='ls --color=auto'
    alias nvim='~/Downloads/nvim-x86_64/nvim-linux-x86_64/bin/nvim'
}

load_env(){
	export STARSHIP_CONFIG=$HOME/.config/starship/starship.toml
	export STARSHIP_CACHE=$HOME/.config/starship/cache
	export PATH=$PATH:/usr/local/go/bin
	export PATH=$PATH:$(go env GOPATH)/bin
    export PATH=$PATH:/usr/local/lua-language-server/bin
}

load_keybinds(){
	bindkey '^[[1;5D' backward-word
	bindkey '^[[1;5C' forward-word
}

main(){
	# alias settings
	load_alias
	# zsh settings
	load_zsh_plugin
	# nvm and node
	load_nvm
	# env settings
	load_env
	# key bindings
	load_keybinds
	# starship
	eval "$(starship init zsh)"
}

main
