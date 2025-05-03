export DISPLAY=:0

plugins=(git)
bindkey -s ^f "tmux-sessionizer\n"
bindkey '^r' fzf-history-widget

AddToPath() {
	export PATH=${PATH}:$1
}
AddToPath $HOME/.local/scripts

HISTFILE=$HOME/.zsh_history
HISTSIZE=250000
SAVEHIST=250000
setopt SHARE_HISTORY

[[ -f $HOME/.fzf.zsh ]] && source ~/.fzf.zsh
GIT_USER=posixnejoyer
export POWERLEVEL9K_DISABLE_CONFIGURATION_WIZARD=true
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
