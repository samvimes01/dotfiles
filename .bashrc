# Interactive bash configuration
[[ $- != *i* ]] && return

# History
HISTSIZE=20000
HISTFILESIZE=20000
HISTCONTROL=ignoreboth:erasedups
shopt -s histappend

# Keybindings
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

# GPG
export GPG_TTY=$(tty)

# Aliases
. ~/dotfiles/.aliases
[ -f ~/dotfiles/.aliases_local ] && . ~/dotfiles/.aliases_local

# Tool integrations (if available)
command -v fzf >/dev/null && eval "$(fzf --bash)"
command -v zoxide >/dev/null && eval "$(zoxide init bash)"
command -v mise >/dev/null && eval "$(mise activate bash)"
command -v starship >/dev/null && eval "$(starship init bash)"
