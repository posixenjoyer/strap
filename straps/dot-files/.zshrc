export DISPLAY=:0

if [[ -v $SSH_AUTH_SOCK || -z "$SSH_AUTH_SOCK" ]]; then
	if ! pgrep -u "$USER" ssh-agent >& /dev/null;  then
		eval `ssh-agent`
	fi
plugins=(git)
ssh-add ~/.ssh/id_ed25519_2
fi

bindkey -s ^f "tmux-sessionizer\n"


AddToPath() {
	export PATH=${PATH}:$1
}
AddToPath $HOME/.local/scripts

HISTFILE=$HOME/.zsh_history
HISTSIZE=250000
SAVEHIST=250000
setopt SHARE_HISTORY

[[ -f $HOME/.fzf.zsh ]] && source ~/.fzf.zsh
