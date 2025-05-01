#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

if [[ -v $SSH_AUTH_SOCK || -z "$SSH_AUTH_SOCK" ]]; then
	eval "$(ssh-agent)"
	ssh-add ~/.ssh/id_ed25519_2
fi

export DISPLAY=:0

AddToPath() {
	export PATH=${PATH}:$1
}
